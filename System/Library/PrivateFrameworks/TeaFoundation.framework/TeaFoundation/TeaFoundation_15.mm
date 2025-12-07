uint64_t sub_1BF136028(unint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v95 = a6;
  v96 = a7;
  v93 = a4;
  v94 = a5;
  v92 = a3;
  v108 = a2;
  v78 = a1;
  v75 = a10;
  v73 = a9;
  v76 = a11;
  v87 = a15;
  v90 = a16;
  v79 = *a2;
  v80 = *a3;
  v81 = *a4;
  v82 = *a5;
  v83 = *a6;
  v84 = *a7;
  v89 = *(a16 - 8);
  v77 = *(v89 + 64);
  v88 = a13;
  MEMORY[0x1EEE9AC00](a1, a2);
  v91 = &v64 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *(v16 - 8);
  v74 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v20;
  v65 = a14;
  v21 = *(a14 - 8);
  v68 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v25;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29, v30);
  v70 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v31;
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v36 = MEMORY[0x1EEE9AC00](v34, v35);
  v69 = &v64 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v36);
  v66 = v27;
  (*(v27 + 16))(&v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v73, v88);
  v67 = v21;
  (*(v21 + 16))(v25, v75, a14);
  v37 = v86;
  v38 = v20;
  v39 = v87;
  (*(v86 + 16))(v38, v76, v87);
  v41 = v89;
  v40 = v90;
  (*(v89 + 16))(v91, v78, v90);
  v76 = (*(v32 + 80) + 144) & ~*(v32 + 80);
  v42 = (v33 + *(v27 + 80) + v76) & ~*(v27 + 80);
  v43 = (v28 + *(v21 + 80) + v42) & ~*(v21 + 80);
  v44 = (v68 + *(v37 + 80) + v43) & ~*(v37 + 80);
  v78 = (v74 + *(v41 + 80) + v44) & ~*(v41 + 80);
  v45 = swift_allocObject();
  v46 = v79;
  v47 = v88;
  *(v45 + 2) = v85;
  *(v45 + 3) = v47;
  v48 = v65;
  *(v45 + 4) = v65;
  *(v45 + 5) = v39;
  *(v45 + 6) = v40;
  v49 = *(v46 + 80);
  *(v45 + 7) = v49;
  v50 = v92;
  v80 = *(v80 + 80);
  *(v45 + 8) = v80;
  v51 = v93;
  v81 = *(v81 + 80);
  *(v45 + 9) = v81;
  v52 = v94;
  v82 = *(v82 + 80);
  *(v45 + 10) = v82;
  v53 = v95;
  v83 = *(v83 + 80);
  *(v45 + 11) = v83;
  v54 = v96;
  v55 = *(v84 + 80);
  *(v45 + 12) = v55;
  *(v45 + 13) = v50;
  *(v45 + 14) = v51;
  *(v45 + 15) = v52;
  *(v45 + 16) = v53;
  *(v45 + 17) = v54;
  (*(v32 + 32))(&v45[v76], v69);
  (*(v66 + 32))(&v45[v42], v70, v47);
  (*(v67 + 32))(&v45[v43], v71, v48);
  v56 = &v45[v44];
  v57 = v87;
  (*(v86 + 32))(v56, v72, v87);
  v58 = v90;
  (*(v89 + 32))(&v45[v78], v91, v90);

  v97 = v85;
  v98 = v47;
  v99 = v48;
  v100 = v57;
  v101 = v58;
  v102 = v49;
  v103 = v80;
  v104 = v81;
  v105 = v82;
  v106 = v83;
  v107 = v55;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v60 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v60, sub_1BF142040, v45, TupleTypeMetadata);
  v62 = v61;

  return v62;
}

uint64_t sub_1BF136788(unint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v78 = a8;
  v100 = a5;
  v101 = a6;
  v98 = a3;
  v99 = a4;
  v113 = a2;
  v82 = a1;
  v80 = a10;
  v77 = a9;
  v81 = a11;
  v95 = a17;
  v84 = *a2;
  v85 = *a3;
  v86 = *a4;
  v87 = *a5;
  v88 = *a6;
  v94 = *(a17 - 8);
  v83 = *(v94 + 64);
  v91 = a15;
  v75 = a16;
  MEMORY[0x1EEE9AC00](v83, a2);
  v97 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = *(v18 - 8);
  v79 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v17, v19);
  v96 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = *(v21 - 8);
  v76 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v22, v23);
  v93 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a14;
  v25 = *(a14 - 8);
  v71 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v29;
  v69 = a13;
  v30 = *(a13 - 8);
  v70 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v34;
  v89 = a12;
  v35 = *(a12 - 8);
  v36 = *(v35 + 64);
  v39 = MEMORY[0x1EEE9AC00](v37, v38);
  v72 = &v65 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v39);
  v67 = v30;
  (*(v30 + 16))(v34, v78, a13);
  v68 = v25;
  (*(v25 + 16))(v29, v77, a14);
  v40 = v90;
  (*(v90 + 16))(v93, v80, v91);
  v41 = v92;
  v42 = v75;
  (*(v92 + 16))(v96, v81, v75);
  v43 = v94;
  v44 = v95;
  (*(v94 + 16))(v97, v82, v95);
  v77 = (*(v35 + 80) + 136) & ~*(v35 + 80);
  v45 = (v36 + *(v30 + 80) + v77) & ~*(v30 + 80);
  v78 = (v70 + *(v25 + 80) + v45) & ~*(v25 + 80);
  v80 = (v71 + *(v40 + 80) + v78) & ~*(v40 + 80);
  v82 = (v76 + *(v41 + 80) + v80) & ~*(v41 + 80);
  v81 = (v79 + *(v43 + 80) + v82) & ~*(v43 + 80);
  v46 = swift_allocObject();
  v47 = v84;
  v48 = v69;
  *(v46 + 2) = v89;
  *(v46 + 3) = v48;
  v49 = v66;
  v50 = v91;
  *(v46 + 4) = v66;
  *(v46 + 5) = v50;
  *(v46 + 6) = v42;
  *(v46 + 7) = v44;
  v51 = *(v47 + 80);
  *(v46 + 8) = v51;
  v52 = v98;
  v85 = *(v85 + 80);
  *(v46 + 9) = v85;
  v53 = v99;
  v86 = *(v86 + 80);
  *(v46 + 10) = v86;
  v54 = v100;
  v87 = *(v87 + 80);
  *(v46 + 11) = v87;
  v55 = v101;
  v56 = *(v88 + 80);
  *(v46 + 12) = v56;
  *(v46 + 13) = v52;
  *(v46 + 14) = v53;
  *(v46 + 15) = v54;
  *(v46 + 16) = v55;
  (*(v35 + 32))(&v46[v77], v72);
  v57 = v48;
  (*(v67 + 32))(&v46[v45], v73, v48);
  (*(v68 + 32))(&v46[v78], v74, v49);
  v58 = v50;
  (*(v90 + 32))(&v46[v80], v93, v50);
  (*(v92 + 32))(&v46[v82], v96, v42);
  v59 = v95;
  (*(v94 + 32))(&v46[v81], v97, v95);

  v102 = v89;
  v103 = v57;
  v104 = v49;
  v105 = v58;
  v106 = v42;
  v107 = v59;
  v108 = v51;
  v109 = v85;
  v110 = v86;
  v111 = v87;
  v112 = v56;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v61 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v61, sub_1BF1421F0, v46, TupleTypeMetadata);
  v63 = v62;

  return v63;
}

uint64_t sub_1BF136FEC(unint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, uint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v90 = a8;
  v88 = a7;
  v112 = a4;
  v113 = a5;
  v111 = a3;
  v126 = a2;
  v94 = a1;
  v91 = a10;
  v89 = a9;
  v93 = a11;
  v104 = a17;
  v109 = a18;
  v96 = *a2;
  v97 = *a3;
  v98 = *a4;
  v99 = *a5;
  v107 = *(a18 - 8);
  v95 = *(v107 + 64);
  v106 = a15;
  v102 = a16;
  MEMORY[0x1EEE9AC00](v95, a2);
  v114 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = *(v19 - 8);
  v92 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v18, v20);
  v110 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = *(v22 - 8);
  v87 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v23, v24);
  v108 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v26 - 8);
  v86 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v28, v29);
  v105 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a14;
  v31 = *(a14 - 8);
  v82 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v74 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v35;
  v80 = a13;
  v36 = *(a13 - 8);
  v79 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v74 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v40;
  v81 = v41;
  v101 = *(v41 - 8);
  v42 = *(v101 + 64);
  v45 = MEMORY[0x1EEE9AC00](v43, v44);
  v83 = &v74 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v46 + 16))(v45);
  v75 = v36;
  (*(v36 + 16))(v40, v88, a13);
  v76 = v31;
  (*(v31 + 16))(v35, v90, a14);
  v77 = v27;
  (*(v27 + 16))(v105, v89, v106);
  v47 = v100;
  v48 = v102;
  (*(v100 + 16))(v108, v91, v102);
  v49 = v103;
  (*(v103 + 16))(v110, v93, v104);
  v50 = v107;
  v51 = v109;
  (*(v107 + 16))(v114, v94, v109);
  v88 = (*(v101 + 80) + 128) & ~*(v101 + 80);
  v89 = (v42 + *(v36 + 80) + v88) & ~*(v36 + 80);
  v90 = (v79 + *(v31 + 80) + v89) & ~*(v31 + 80);
  v91 = (v82 + *(v27 + 80) + v90) & ~*(v27 + 80);
  v52 = (v86 + *(v47 + 80) + v91) & ~*(v47 + 80);
  v94 = (v87 + *(v49 + 80) + v52) & ~*(v49 + 80);
  v93 = (v92 + *(v50 + 80) + v94) & ~*(v50 + 80);
  v53 = swift_allocObject();
  v54 = v96;
  v55 = v81;
  v56 = v80;
  *(v53 + 2) = v81;
  *(v53 + 3) = v56;
  v57 = v78;
  v58 = v106;
  *(v53 + 4) = v78;
  *(v53 + 5) = v58;
  v59 = v104;
  *(v53 + 6) = v48;
  *(v53 + 7) = v59;
  *(v53 + 8) = v51;
  v60 = *(v54 + 80);
  *(v53 + 9) = v60;
  v61 = v111;
  v97 = *(v97 + 80);
  *(v53 + 10) = v97;
  v62 = v112;
  v98 = *(v98 + 80);
  *(v53 + 11) = v98;
  v63 = v113;
  v99 = *(v99 + 80);
  *(v53 + 12) = v99;
  *(v53 + 13) = v61;
  *(v53 + 14) = v62;
  *(v53 + 15) = v63;
  v64 = v55;
  (*(v101 + 32))(&v53[v88], v83);
  (*(v75 + 32))(&v53[v89], v84, v56);
  (*(v76 + 32))(&v53[v90], v85, v57);
  v65 = v58;
  (*(v77 + 32))(&v53[v91], v105, v58);
  v66 = &v53[v52];
  v67 = v102;
  (*(v100 + 32))(v66, v108, v102);
  (*(v103 + 32))(&v53[v94], v110, v59);
  v68 = v109;
  (*(v107 + 32))(&v53[v93], v114, v109);

  v115 = v64;
  v116 = v56;
  v117 = v57;
  v118 = v65;
  v119 = v67;
  v120 = v59;
  v121 = v68;
  v122 = v60;
  v123 = v97;
  v124 = v98;
  v125 = v99;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v70 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v70, sub_1BF1423EC, v53, TupleTypeMetadata);
  v72 = v71;

  return v72;
}

uint64_t sub_1BF137948(unint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v89 = a8;
  v87 = a7;
  v85 = a6;
  v117 = a4;
  v115 = a3;
  v129 = a2;
  v94 = a1;
  v90 = a10;
  v88 = a9;
  v92 = a11;
  v108 = a15;
  v111 = a16;
  v91 = a19;
  v96 = *a2;
  v97 = *a3;
  v98 = *a4;
  v113 = *(a19 - 8);
  v95 = *(v113 + 64);
  v105 = a17;
  v110 = a18;
  MEMORY[0x1EEE9AC00](a1, v95);
  v116 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = *(v20 - 8);
  v93 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v21, v19);
  v114 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = *(v23 - 8);
  v86 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v24, v25);
  v112 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = *(v27 - 8);
  v84 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v28, v29);
  v109 = &v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v31 - 8);
  v83 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v33, v34);
  v106 = &v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a14;
  v36 = *(a14 - 8);
  v79 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v40;
  v99 = a13;
  v103 = *(a13 - 8);
  v41 = v103;
  v77 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v75 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v45;
  v100 = a12;
  v102 = *(a12 - 8);
  v46 = *(v102 + 64);
  v49 = MEMORY[0x1EEE9AC00](v47, v48);
  v80 = &v75 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v50 + 16))(v49);
  (*(v41 + 16))(v45, v85, a13);
  v75 = v36;
  (*(v36 + 16))(v40, v87, a14);
  v76 = v32;
  (*(v32 + 16))(v106, v89, v108);
  v51 = v101;
  (*(v101 + 16))(v109, v88, v111);
  v52 = v104;
  v53 = v105;
  (*(v104 + 16))(v112, v90, v105);
  v54 = v107;
  (*(v107 + 16))(v114, v92, v110);
  v55 = v113;
  v56 = v91;
  (*(v113 + 16))(v116, v94, v91);
  v87 = (*(v102 + 80) + 120) & ~*(v102 + 80);
  v88 = (v46 + *(v103 + 80) + v87) & ~*(v103 + 80);
  v89 = (v77 + *(v36 + 80) + v88) & ~*(v36 + 80);
  v90 = (v79 + *(v32 + 80) + v89) & ~*(v32 + 80);
  v92 = (v83 + *(v51 + 80) + v90) & ~*(v51 + 80);
  v57 = (v84 + *(v52 + 80) + v92) & ~*(v52 + 80);
  v94 = (v86 + *(v54 + 80) + v57) & ~*(v54 + 80);
  v93 = (v93 + *(v55 + 80) + v94) & ~*(v55 + 80);
  v58 = swift_allocObject();
  v59 = v96;
  v60 = v99;
  *(v58 + 2) = v100;
  *(v58 + 3) = v60;
  v61 = v78;
  v62 = v108;
  *(v58 + 4) = v78;
  *(v58 + 5) = v62;
  v63 = v111;
  *(v58 + 6) = v111;
  *(v58 + 7) = v53;
  v64 = v110;
  *(v58 + 8) = v110;
  *(v58 + 9) = v56;
  v65 = *(v59 + 80);
  *(v58 + 10) = v65;
  v66 = v115;
  v97 = *(v97 + 80);
  *(v58 + 11) = v97;
  v67 = v117;
  v98 = *(v98 + 80);
  *(v58 + 12) = v98;
  *(v58 + 13) = v66;
  *(v58 + 14) = v67;
  (*(v102 + 32))(&v58[v87], v80);
  (*(v103 + 32))(&v58[v88], v81, v60);
  (*(v75 + 32))(&v58[v89], v82, v61);
  (*(v76 + 32))(&v58[v90], v106, v62);
  (*(v101 + 32))(&v58[v92], v109, v63);
  v68 = &v58[v57];
  v69 = v105;
  (*(v104 + 32))(v68, v112, v105);
  (*(v107 + 32))(&v58[v94], v114, v64);
  (*(v113 + 32))(&v58[v93], v116, v56);

  v118 = v100;
  v119 = v99;
  v120 = v61;
  v121 = v62;
  v122 = v63;
  v123 = v69;
  v124 = v64;
  v125 = v56;
  v126 = v65;
  v127 = v97;
  v128 = v98;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v71 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v71, sub_1BF142640, v58, TupleTypeMetadata);
  v73 = v72;

  return v73;
}

uint64_t sub_1BF138380(unint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v99 = a8;
  v96 = a7;
  v95 = a6;
  v94 = a5;
  v127 = a3;
  v140 = a2;
  v104 = a1;
  v100 = a10;
  v98 = a9;
  v102 = a11;
  v117 = a15;
  v120 = a19;
  v121 = a16;
  v101 = a20;
  v106 = *a2;
  v107 = *a3;
  v122 = *(a20 - 8);
  v105 = *(v122 + 64);
  v124 = a17;
  v116 = a18;
  MEMORY[0x1EEE9AC00](a1, v105);
  v128 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = *(v21 - 8);
  v103 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v22, v20);
  v126 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = *(v24 - 8);
  v97 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v125 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = *(v28 - 8);
  v93 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v29, v30);
  v123 = &v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = *(v32 - 8);
  v92 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v33, v34);
  v119 = &v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v36 - 8);
  v91 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v82 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v41;
  v85 = a14;
  v114 = *(a14 - 8);
  v42 = v114;
  v86 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v82 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v46;
  v108 = a13;
  v113 = *(a13 - 8);
  v47 = v113;
  v84 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v82 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v51;
  v110 = a12;
  v112 = *(a12 - 8);
  v52 = *(v112 + 64);
  v55 = MEMORY[0x1EEE9AC00](v53, v54);
  v87 = &v82 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v56 + 16))(v55);
  (*(v47 + 16))(v51, v94, a13);
  (*(v42 + 16))(v46, v95, a14);
  v57 = v37;
  v83 = v37;
  (*(v37 + 16))(v41, v96, v117);
  v58 = v109;
  (*(v109 + 16))(v119, v99, v121);
  v59 = v111;
  (*(v111 + 16))(v123, v98, v124);
  v60 = v115;
  v61 = v116;
  (*(v115 + 16))(v125, v100, v116);
  v62 = v118;
  (*(v118 + 16))(v126, v102, v120);
  v63 = v122;
  v64 = v101;
  (*(v122 + 16))(v128, v104, v101);
  v95 = (*(v112 + 80) + 112) & ~*(v112 + 80);
  v96 = (v52 + *(v113 + 80) + v95) & ~*(v113 + 80);
  v98 = (v84 + *(v114 + 80) + v96) & ~*(v114 + 80);
  v99 = (v86 + *(v57 + 80) + v98) & ~*(v57 + 80);
  v100 = (v91 + *(v58 + 80) + v99) & ~*(v58 + 80);
  v102 = (v92 + *(v59 + 80) + v100) & ~*(v59 + 80);
  v65 = (v93 + *(v60 + 80) + v102) & ~*(v60 + 80);
  v104 = (v97 + *(v62 + 80) + v65) & ~*(v62 + 80);
  v103 = (v103 + *(v63 + 80) + v104) & ~*(v63 + 80);
  v66 = swift_allocObject();
  v67 = v106;
  v68 = v108;
  *(v66 + 2) = v110;
  *(v66 + 3) = v68;
  v69 = v85;
  v70 = v117;
  *(v66 + 4) = v85;
  *(v66 + 5) = v70;
  v71 = v121;
  v72 = v124;
  *(v66 + 6) = v121;
  *(v66 + 7) = v72;
  *(v66 + 8) = v61;
  v73 = v120;
  *(v66 + 9) = v120;
  *(v66 + 10) = v64;
  v106 = *(v67 + 80);
  *(v66 + 11) = v106;
  v74 = v127;
  v107 = *(v107 + 80);
  *(v66 + 12) = v107;
  *(v66 + 13) = v74;
  (*(v112 + 32))(&v66[v95], v87);
  (*(v113 + 32))(&v66[v96], v88, v68);
  (*(v114 + 32))(&v66[v98], v89, v69);
  (*(v83 + 32))(&v66[v99], v90, v70);
  (*(v109 + 32))(&v66[v100], v119, v71);
  (*(v111 + 32))(&v66[v102], v123, v72);
  v75 = &v66[v65];
  v76 = v116;
  (*(v115 + 32))(v75, v125, v116);
  (*(v118 + 32))(&v66[v104], v126, v73);
  (*(v122 + 32))(&v66[v103], v128, v64);

  v129 = v110;
  v130 = v108;
  v131 = v69;
  v132 = v70;
  v133 = v71;
  v134 = v72;
  v135 = v76;
  v136 = v73;
  v137 = v64;
  v138 = v106;
  v139 = v107;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v78 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v78, sub_1BF1428E0, v66, TupleTypeMetadata);
  v80 = v79;

  return v80;
}

uint64_t sub_1BF138E8C(unint64_t a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v105 = a8;
  v103 = a7;
  v102 = a6;
  v100 = a5;
  v99 = a4;
  v137 = a2;
  v110 = a1;
  v107 = a10;
  v104 = a9;
  v108 = a11;
  v122 = a15;
  v125 = a16;
  v129 = a17;
  v131 = a18;
  v134 = a21;
  v112 = *a2;
  v132 = *(a21 - 8);
  v111 = *(v132 + 64);
  v149 = a19;
  v128 = a20;
  MEMORY[0x1EEE9AC00](a1, v111);
  v136 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = *(v22 - 8);
  v109 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v23, v21);
  v135 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = *(v25 - 8);
  v106 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v26, v27);
  v133 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = *(v29 - 8);
  v101 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v30, v31);
  v130 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = *(v33 - 8);
  v98 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v34, v35);
  v126 = &v89 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = *(v37 - 8);
  v97 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v38, v39);
  v124 = &v89 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = *(v41 - 8);
  v42 = v120;
  v96 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v89 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v46;
  v90 = a14;
  v119 = *(a14 - 8);
  v47 = v119;
  v91 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v89 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v51;
  v114 = a13;
  v118 = *(a13 - 8);
  v52 = v118;
  v89 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v89 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v56;
  v115 = v57;
  v117 = *(v57 - 8);
  v58 = *(v117 + 64);
  v61 = MEMORY[0x1EEE9AC00](v59, v60);
  v92 = &v89 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v62 + 16))(v61);
  (*(v52 + 16))(v56, v99, a13);
  (*(v47 + 16))(v51, v100, a14);
  (*(v42 + 16))(v46, v102, v122);
  v63 = v113;
  (*(v113 + 16))(v124, v103, v125);
  v64 = v116;
  (*(v116 + 16))(v126, v105, v129);
  v65 = v121;
  (*(v121 + 16))(v130, v104, v131);
  v66 = v123;
  (*(v123 + 16))(v133, v107, v149);
  v67 = v127;
  v68 = v128;
  (*(v127 + 16))(v135, v108, v128);
  v69 = v132;
  v70 = v134;
  (*(v132 + 16))(v136, v110, v134);
  v99 = (*(v117 + 80) + 104) & ~*(v117 + 80);
  v100 = (v58 + *(v118 + 80) + v99) & ~*(v118 + 80);
  v102 = (v89 + *(v119 + 80) + v100) & ~*(v119 + 80);
  v103 = (v91 + *(v120 + 80) + v102) & ~*(v120 + 80);
  v104 = (v96 + *(v63 + 80) + v103) & ~*(v63 + 80);
  v105 = (v97 + *(v64 + 80) + v104) & ~*(v64 + 80);
  v107 = (v98 + *(v65 + 80) + v105) & ~*(v65 + 80);
  v108 = (v101 + *(v66 + 80) + v107) & ~*(v66 + 80);
  v110 = (v106 + *(v67 + 80) + v108) & ~*(v67 + 80);
  v109 = (v109 + *(v69 + 80) + v110) & ~*(v69 + 80);
  v71 = swift_allocObject();
  v72 = v114;
  *(v71 + 2) = v115;
  *(v71 + 3) = v72;
  v73 = v90;
  v74 = v122;
  *(v71 + 4) = v90;
  *(v71 + 5) = v74;
  v75 = v125;
  v76 = v129;
  *(v71 + 6) = v125;
  *(v71 + 7) = v76;
  v77 = v131;
  v78 = v149;
  *(v71 + 8) = v131;
  *(v71 + 9) = v78;
  *(v71 + 10) = v68;
  *(v71 + 11) = v70;
  v112 = *(v112 + 80);
  *(v71 + 12) = v112;
  (*(v117 + 32))(&v71[v99], v92);
  (*(v118 + 32))(&v71[v100], v93, v72);
  (*(v119 + 32))(&v71[v102], v94, v73);
  (*(v120 + 32))(&v71[v103], v95, v74);
  (*(v113 + 32))(&v71[v104], v124, v75);
  v79 = v76;
  (*(v116 + 32))(&v71[v105], v126, v76);
  v80 = v77;
  (*(v121 + 32))(&v71[v107], v130, v77);
  v81 = v149;
  (*(v123 + 32))(&v71[v108], v133, v149);
  v82 = v128;
  (*(v127 + 32))(&v71[v110], v135, v128);
  v83 = v134;
  (*(v132 + 32))(&v71[v109], v136, v134);
  v138 = v115;
  v139 = v114;
  v140 = v73;
  v141 = v74;
  v142 = v75;
  v143 = v79;
  v144 = v80;
  v145 = v81;
  v146 = v82;
  v147 = v83;
  v148 = v112;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v85 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v85, sub_1BF142BD4, v71, TupleTypeMetadata);
  v87 = v86;

  return v87;
}

uint64_t sub_1BF139A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v25 = TupleTypeMetadata[12];
  v26 = TupleTypeMetadata[16];
  v28 = TupleTypeMetadata[20];
  v29 = TupleTypeMetadata[24];
  v31 = TupleTypeMetadata[28];
  v33 = TupleTypeMetadata[32];
  v35 = TupleTypeMetadata[36];
  v37 = TupleTypeMetadata[40];
  v39 = TupleTypeMetadata[44];
  v41 = TupleTypeMetadata[48];
  (*(*(a13 - 8) + 16))(a9, a2, a13);
  (*(*(a14 - 8) + 16))(a9 + v25, a3, a14);
  (*(*(a15 - 8) + 16))(a9 + v26, a4, a15);
  (*(*(a16 - 8) + 16))(a9 + v28, a5, a16);
  (*(*(a17 - 8) + 16))(a9 + v29, a6, a17);
  (*(*(a18 - 8) + 16))(a9 + v31, a7, a18);
  (*(*(a19 - 8) + 16))(a9 + v33, a8);
  (*(*(a20 - 8) + 16))(a9 + v35, a10);
  (*(*(a21 - 8) + 16))(a9 + v37, a11);
  (*(*(a22 - 8) + 16))(a9 + v39, a12);
  return (*(*(a23 - 8) + 16))(a9 + v41, a1);
}

uint64_t *combine<A, B, C, D, E, F, G, H, I, J, K, L>(_:_:_:_:_:_:_:_:_:_:_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = *a1;
  v18 = swift_allocObject();
  v18[2] = *(v17 + 80);
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = a6;
  v18[8] = a7;
  v18[9] = a8;
  v18[10] = a9;
  v18[11] = a10;
  v18[12] = a11;
  v18[13] = a12;

  OUTLINED_FUNCTION_102();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v20 = sub_1BF014EDC();
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)(v21, v22, v23, TupleTypeMetadata);
  OUTLINED_FUNCTION_155();

  return a1;
}

uint64_t sub_1BF13A114(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13)
{
  v52 = a8;
  v51 = a7;
  v81 = a12;
  v67 = a10;
  v68 = a11;
  v53 = a9;
  v65 = *a2;
  v66 = a2;
  v13 = *a3;
  v15 = *a4;
  v62 = *a5;
  v63 = v15;
  v61 = *a6;
  v60 = *a7;
  v58 = *a8;
  v56 = *a9;
  v54 = *a10;
  v57 = *a11;
  v59 = *a12;
  v19 = *(a13 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](a1, a2);
  v55 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21);
  v50 = (*(v19 + 80) + 192) & ~*(v19 + 80);
  v22 = swift_allocObject();
  v23 = v65;
  *(v22 + 2) = a13;
  v49 = a13;
  v65 = *(v23 + 80);
  v24 = v13;
  *(v22 + 3) = v65;
  v25 = a3;
  v64 = *(v24 + 80);
  v26 = v63;
  *(v22 + 4) = v64;
  v27 = a4;
  v63 = *(v26 + 80);
  v28 = v62;
  *(v22 + 5) = v63;
  v29 = a5;
  v62 = *(v28 + 80);
  v30 = v61;
  *(v22 + 6) = v62;
  v31 = a6;
  v61 = *(v30 + 80);
  v32 = v60;
  *(v22 + 7) = v61;
  v33 = v51;
  v60 = *(v32 + 80);
  v34 = v58;
  *(v22 + 8) = v60;
  v35 = v52;
  v58 = *(v34 + 80);
  v36 = v56;
  *(v22 + 9) = v58;
  v37 = v53;
  v56 = *(v36 + 80);
  v38 = v54;
  *(v22 + 10) = v56;
  v39 = v67;
  v54 = *(v38 + 80);
  v40 = v57;
  *(v22 + 11) = v54;
  v41 = v68;
  v57 = *(v40 + 80);
  v42 = v59;
  *(v22 + 12) = v57;
  v43 = v81;
  v59 = *(v42 + 80);
  *(v22 + 13) = v59;
  *(v22 + 14) = v25;
  *(v22 + 15) = v27;
  *(v22 + 16) = v29;
  *(v22 + 17) = v31;
  *(v22 + 18) = v33;
  *(v22 + 19) = v35;
  *(v22 + 20) = v37;
  *(v22 + 21) = v39;
  *(v22 + 22) = v41;
  *(v22 + 23) = v43;
  (*(v19 + 32))(&v22[v50], v55, a13);

  v69 = v49;
  v70 = v65;
  v71 = v64;
  v72 = v63;
  v73 = v62;
  v74 = v61;
  v75 = v60;
  v76 = v58;
  v77 = v56;
  v78 = v54;
  v79 = v57;
  v80 = v59;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v45 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v45, sub_1BF13AB38, v22, TupleTypeMetadata);
  v47 = v46;

  return v47;
}

uint64_t sub_1BF13A5D8(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v57 = a8;
  v55 = a7;
  v53 = a6;
  v50 = a4;
  v47 = a3;
  v44 = a1;
  v77 = a11;
  v63 = a9;
  v64 = a10;
  v49 = *a2;
  v62 = a2;
  v48 = *a3;
  v51 = *a4;
  v52 = *a5;
  v54 = *a6;
  v56 = *a7;
  v15 = *a9;
  v58 = *a8;
  v59 = v15;
  v16 = *a11;
  v60 = *a10;
  v61 = v16;
  v42 = a14;
  v17 = *(a14 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](a1, a12);
  v46 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a13 - 8);
  v20 = *(v19 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v45 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v23);
  (*(v17 + 16))(&v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v44, a14);
  v43 = (*(v19 + 80) + 184) & ~*(v19 + 80);
  v44 = (v20 + *(v17 + 80) + v43) & ~*(v17 + 80);
  v24 = swift_allocObject();
  v25 = v49;
  v41 = a13;
  *(v24 + 2) = a13;
  *(v24 + 3) = a14;
  v49 = *(v25 + 80);
  *(v24 + 4) = v49;
  v26 = v47;
  v48 = *(v48 + 80);
  *(v24 + 5) = v48;
  v27 = v50;
  v51 = *(v51 + 80);
  *(v24 + 6) = v51;
  v28 = a5;
  v52 = *(v52 + 80);
  *(v24 + 7) = v52;
  v29 = v53;
  v54 = *(v54 + 80);
  *(v24 + 8) = v54;
  v30 = v55;
  v56 = *(v56 + 80);
  *(v24 + 9) = v56;
  v31 = v57;
  v58 = *(v58 + 80);
  *(v24 + 10) = v58;
  v33 = v63;
  v32 = v64;
  v59 = *(v59 + 80);
  *(v24 + 11) = v59;
  v60 = *(v60 + 80);
  *(v24 + 12) = v60;
  v34 = v77;
  v61 = *(v61 + 80);
  *(v24 + 13) = v61;
  *(v24 + 14) = v26;
  *(v24 + 15) = v27;
  *(v24 + 16) = v28;
  *(v24 + 17) = v29;
  *(v24 + 18) = v30;
  *(v24 + 19) = v31;
  *(v24 + 20) = v33;
  *(v24 + 21) = v32;
  *(v24 + 22) = v34;
  (*(v19 + 32))(&v24[v43], v45, a13);
  v35 = v42;
  (*(v17 + 32))(&v24[v44], v46, v42);

  v65 = v41;
  v66 = v35;
  v67 = v49;
  v68 = v48;
  v69 = v51;
  v70 = v52;
  v71 = v54;
  v72 = v56;
  v73 = v58;
  v74 = v59;
  v75 = v60;
  v76 = v61;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v37 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v37, sub_1BF13B1D0, v24, TupleTypeMetadata);
  v39 = v38;

  return v39;
}

uint64_t sub_1BF13AB38()
{
  OUTLINED_FUNCTION_84_1();
  OUTLINED_FUNCTION_83_1();
  return sub_1BF13A5D8(v2, v3, v4, v5, v6, v7, v8, v0[20], v0[21], v0[22], v0[23], v0 + v1, v9, v10);
}

uint64_t sub_1BF13ABA4(unint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v67 = a7;
  v68 = a8;
  v59 = a6;
  v57 = a5;
  v55 = a4;
  v53 = a3;
  v83 = a2;
  v51 = a1;
  v47 = a12;
  v66 = a15;
  v69 = a9;
  v70 = a10;
  v52 = *a2;
  v54 = *a3;
  v56 = *a4;
  v58 = *a5;
  v60 = *a6;
  v61 = *a7;
  v62 = *a8;
  v63 = *a9;
  v64 = *a10;
  v15 = *(a15 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](a1, a11);
  v50 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a14 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v49 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v48 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v26);
  (*(v17 + 16))(&v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v47, a14);
  v46 = v15;
  v27 = v66;
  (*(v15 + 16))(&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v51, v66);
  v28 = (*(v22 + 80) + 176) & ~*(v22 + 80);
  v47 = (v23 + *(v17 + 80) + v28) & ~*(v17 + 80);
  v51 = (v18 + *(v15 + 80) + v47) & ~*(v15 + 80);
  v29 = swift_allocObject();
  v30 = v52;
  *(v29 + 2) = v65;
  *(v29 + 3) = a14;
  *(v29 + 4) = v27;
  v52 = *(v30 + 80);
  *(v29 + 5) = v52;
  v31 = v53;
  v54 = *(v54 + 80);
  *(v29 + 6) = v54;
  v32 = v55;
  v56 = *(v56 + 80);
  *(v29 + 7) = v56;
  v33 = v57;
  v58 = *(v58 + 80);
  *(v29 + 8) = v58;
  v34 = v59;
  v60 = *(v60 + 80);
  *(v29 + 9) = v60;
  v35 = v67;
  v61 = *(v61 + 80);
  *(v29 + 10) = v61;
  v36 = v68;
  v62 = *(v62 + 80);
  *(v29 + 11) = v62;
  v37 = v69;
  v63 = *(v63 + 80);
  *(v29 + 12) = v63;
  v38 = v70;
  v64 = *(v64 + 80);
  *(v29 + 13) = v64;
  *(v29 + 14) = v31;
  *(v29 + 15) = v32;
  *(v29 + 16) = v33;
  *(v29 + 17) = v34;
  *(v29 + 18) = v35;
  *(v29 + 19) = v36;
  *(v29 + 20) = v37;
  *(v29 + 21) = v38;
  (*(v22 + 32))(&v29[v28], v48);
  (*(v17 + 32))(&v29[v47], v49, a14);
  v39 = v66;
  (*(v46 + 32))(&v29[v51], v50, v66);

  v71 = v65;
  v72 = a14;
  v73 = v39;
  v74 = v52;
  v75 = v54;
  v76 = v56;
  v77 = v58;
  v78 = v60;
  v79 = v61;
  v80 = v62;
  v81 = v63;
  v82 = v64;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v41 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v41, sub_1BF13B994, v29, TupleTypeMetadata);
  v43 = v42;

  return v43;
}

uint64_t sub_1BF13B1D0()
{
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_163();
  return sub_1BF13ABA4(v0, v1, v2, v3, v4, v5, v6, v7, v12, v14, v13, v8, v9, v10, v11);
}

uint64_t sub_1BF13B288(unint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v80 = a7;
  v81 = a8;
  v79 = a6;
  v68 = a5;
  v78 = a4;
  v65 = a3;
  v95 = a2;
  v63 = a1;
  v61 = a12;
  v60 = a11;
  v56 = a15;
  v76 = a16;
  v82 = a9;
  v64 = *a2;
  v66 = *a3;
  v67 = *a4;
  v69 = *a5;
  v70 = *a6;
  v71 = *a7;
  v72 = *a8;
  v73 = *a9;
  v75 = *(a16 - 8);
  v62 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](a1, a10);
  v77 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v59 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a14;
  v22 = *(a14 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24, v25);
  v58 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v57 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v31);
  (*(v22 + 16))(&v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v60, a14);
  v55 = v18;
  v32 = v56;
  (*(v18 + 16))(&v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v61, v56);
  v34 = v75;
  v33 = v76;
  (*(v75 + 16))(v77, v63, v76);
  v60 = (*(v27 + 80) + 168) & ~*(v27 + 80);
  v61 = (v28 + *(v22 + 80) + v60) & ~*(v22 + 80);
  v63 = (v23 + *(v18 + 80) + v61) & ~*(v18 + 80);
  v35 = (v19 + *(v34 + 80) + v63) & ~*(v34 + 80);
  v36 = swift_allocObject();
  v37 = v64;
  v38 = v54;
  *(v36 + 2) = v74;
  *(v36 + 3) = v38;
  *(v36 + 4) = v32;
  *(v36 + 5) = v33;
  v64 = *(v37 + 80);
  *(v36 + 6) = v64;
  v39 = v65;
  v66 = *(v66 + 80);
  *(v36 + 7) = v66;
  v40 = v78;
  v67 = *(v67 + 80);
  *(v36 + 8) = v67;
  v41 = v68;
  v69 = *(v69 + 80);
  *(v36 + 9) = v69;
  v42 = v79;
  v70 = *(v70 + 80);
  *(v36 + 10) = v70;
  v43 = v80;
  v71 = *(v71 + 80);
  *(v36 + 11) = v71;
  v44 = v81;
  v72 = *(v72 + 80);
  *(v36 + 12) = v72;
  v45 = v82;
  v73 = *(v73 + 80);
  *(v36 + 13) = v73;
  *(v36 + 14) = v39;
  *(v36 + 15) = v40;
  *(v36 + 16) = v41;
  *(v36 + 17) = v42;
  *(v36 + 18) = v43;
  *(v36 + 19) = v44;
  *(v36 + 20) = v45;
  (*(v27 + 32))(&v36[v60], v57);
  (*(v22 + 32))(&v36[v61], v58, v38);
  (*(v55 + 32))(&v36[v63], v59, v32);
  v46 = &v36[v35];
  v47 = v76;
  (*(v75 + 32))(v46, v77, v76);

  v83 = v74;
  v84 = v38;
  v85 = v32;
  v86 = v47;
  v87 = v64;
  v88 = v66;
  v89 = v67;
  v90 = v69;
  v91 = v70;
  v92 = v71;
  v93 = v72;
  v94 = v73;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v49 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v49, sub_1BF13C25C, v36, TupleTypeMetadata);
  v51 = v50;

  return v51;
}

uint64_t sub_1BF13B994()
{
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_26_9();
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_117_1();
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_163();
  return sub_1BF13B288(v0, v1, v2, v3, v4, v5, v6, v7, v15, v14, v13, v8, v9, v10, v11, v12);
}

uint64_t sub_1BF13BA88(unint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v96 = a7;
  v97 = a8;
  v93 = a5;
  v94 = a6;
  v91 = a3;
  v92 = a4;
  v110 = a2;
  v77 = a1;
  v76 = a12;
  v75 = a11;
  v73 = a10;
  v89 = a17;
  v79 = *a2;
  v80 = *a3;
  v81 = *a4;
  v82 = *a5;
  v83 = *a6;
  v84 = *a7;
  v85 = *a8;
  v88 = *(a17 - 8);
  v78 = *(v88 + 64);
  v87 = a16;
  MEMORY[0x1EEE9AC00](a1, a9);
  v95 = &v64 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *(v17 - 8);
  v74 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  v90 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a15;
  v21 = *(a15 - 8);
  v69 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v25;
  v65 = a14;
  v26 = *(a14 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28, v29);
  v71 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v30;
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  v70 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v35);
  v67 = v26;
  (*(v26 + 16))(&v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v73, a14);
  v68 = v21;
  (*(v21 + 16))(v25, v75, a15);
  v36 = v86;
  v37 = v87;
  (*(v86 + 16))(v90, v76, v87);
  v38 = v88;
  v39 = v89;
  (*(v88 + 16))(v95, v77, v89);
  v76 = (*(v31 + 80) + 160) & ~*(v31 + 80);
  v40 = (v32 + *(v26 + 80) + v76) & ~*(v26 + 80);
  v41 = (v27 + *(v21 + 80) + v40) & ~*(v21 + 80);
  v42 = (v69 + *(v36 + 80) + v41) & ~*(v36 + 80);
  v77 = (v74 + *(v38 + 80) + v42) & ~*(v38 + 80);
  v43 = swift_allocObject();
  v44 = v79;
  v45 = v66;
  v46 = v65;
  *(v43 + 2) = v66;
  *(v43 + 3) = v46;
  v47 = v64;
  *(v43 + 4) = v64;
  *(v43 + 5) = v37;
  *(v43 + 6) = v39;
  v48 = *(v44 + 80);
  *(v43 + 7) = v48;
  v49 = v91;
  v80 = *(v80 + 80);
  *(v43 + 8) = v80;
  v50 = v92;
  v81 = *(v81 + 80);
  *(v43 + 9) = v81;
  v51 = v93;
  v82 = *(v82 + 80);
  *(v43 + 10) = v82;
  v52 = v94;
  v83 = *(v83 + 80);
  *(v43 + 11) = v83;
  v53 = v96;
  v84 = *(v84 + 80);
  *(v43 + 12) = v84;
  v54 = v97;
  v85 = *(v85 + 80);
  *(v43 + 13) = v85;
  *(v43 + 14) = v49;
  *(v43 + 15) = v50;
  *(v43 + 16) = v51;
  *(v43 + 17) = v52;
  *(v43 + 18) = v53;
  *(v43 + 19) = v54;
  v55 = v45;
  (*(v31 + 32))(&v43[v76], v70);
  (*(v67 + 32))(&v43[v40], v71, v46);
  (*(v68 + 32))(&v43[v41], v72, v47);
  v56 = &v43[v42];
  v57 = v87;
  (*(v86 + 32))(v56, v90, v87);
  v58 = v89;
  (*(v88 + 32))(&v43[v77], v95, v89);

  v98 = v55;
  v99 = v46;
  v100 = v47;
  v101 = v57;
  v102 = v58;
  v103 = v48;
  v104 = v80;
  v105 = v81;
  v106 = v82;
  v107 = v83;
  v108 = v84;
  v109 = v85;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v60 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v60, sub_1BF13CC98, v43, TupleTypeMetadata);
  v62 = v61;

  return v62;
}

uint64_t sub_1BF13C25C()
{
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_0_71();
  v4 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  OUTLINED_FUNCTION_83_1();
  return sub_1BF13BA88(v8, v9, v10, v11, v12, v13, v14, *(v0 + 160), v0 + v7, v0 + v6, v0 + v4, v0 + v5, v15, v16, v17, v18, v19);
}

uint64_t sub_1BF13C3BC(unint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v105 = a6;
  v106 = a7;
  v103 = a4;
  v104 = a5;
  v89 = a3;
  v119 = a2;
  v86 = a1;
  v85 = a12;
  v83 = a11;
  v81 = a10;
  v80 = a9;
  v98 = a17;
  v84 = a18;
  v88 = *a2;
  v90 = *a3;
  v91 = *a4;
  v92 = *a5;
  v93 = *a6;
  v94 = *a7;
  v100 = *(a18 - 8);
  v87 = *(v100 + 64);
  v96 = a16;
  MEMORY[0x1EEE9AC00](v87, a2);
  v102 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *(v19 - 8);
  v82 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v18, v20);
  v101 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *(v22 - 8);
  v79 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v23, v24);
  v99 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a15;
  v26 = *(a15 - 8);
  v75 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v30;
  v71 = a14;
  v31 = *(a14 - 8);
  v73 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v67 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v35;
  v74 = a13;
  v36 = *(a13 - 8);
  v37 = *(v36 + 64);
  v40 = MEMORY[0x1EEE9AC00](v38, v39);
  v76 = &v67 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v36;
  (*(v36 + 16))(v40);
  v70 = v31;
  (*(v31 + 16))(v35, v80, a14);
  v72 = v26;
  (*(v26 + 16))(v30, v81, a15);
  v41 = v95;
  (*(v95 + 16))(v99, v83, v96);
  v42 = v97;
  v43 = v98;
  (*(v97 + 16))(v101, v85, v98);
  v44 = v100;
  v45 = v84;
  (*(v100 + 16))(v102, v86, v84);
  v80 = (*(v36 + 80) + 152) & ~*(v36 + 80);
  v46 = (v37 + *(v31 + 80) + v80) & ~*(v31 + 80);
  v81 = (v73 + *(v26 + 80) + v46) & ~*(v26 + 80);
  v83 = (v75 + *(v41 + 80) + v81) & ~*(v41 + 80);
  v86 = (v79 + *(v42 + 80) + v83) & ~*(v42 + 80);
  v85 = (v82 + *(v44 + 80) + v86) & ~*(v44 + 80);
  v47 = swift_allocObject();
  v48 = v88;
  v49 = v74;
  v50 = v71;
  *(v47 + 2) = v74;
  *(v47 + 3) = v50;
  v51 = v68;
  v52 = v96;
  *(v47 + 4) = v68;
  *(v47 + 5) = v52;
  *(v47 + 6) = v43;
  *(v47 + 7) = v45;
  v53 = v45;
  v54 = *(v48 + 80);
  *(v47 + 8) = v54;
  v55 = v89;
  v90 = *(v90 + 80);
  *(v47 + 9) = v90;
  v56 = v103;
  v91 = *(v91 + 80);
  *(v47 + 10) = v91;
  v57 = v104;
  v92 = *(v92 + 80);
  *(v47 + 11) = v92;
  v58 = v105;
  v93 = *(v93 + 80);
  *(v47 + 12) = v93;
  v59 = v106;
  v94 = *(v94 + 80);
  *(v47 + 13) = v94;
  *(v47 + 14) = v55;
  *(v47 + 15) = v56;
  *(v47 + 16) = v57;
  *(v47 + 17) = v58;
  *(v47 + 18) = v59;
  v60 = v49;
  (*(v69 + 32))(&v47[v80], v76);
  (*(v70 + 32))(&v47[v46], v77, v50);
  (*(v72 + 32))(&v47[v81], v78, v51);
  (*(v95 + 32))(&v47[v83], v99, v52);
  v61 = v98;
  (*(v97 + 32))(&v47[v86], v101, v98);
  (*(v100 + 32))(&v47[v85], v102, v53);

  v107 = v60;
  v108 = v50;
  v109 = v51;
  v110 = v52;
  v111 = v61;
  v112 = v53;
  v113 = v54;
  v114 = v90;
  v115 = v91;
  v116 = v92;
  v117 = v93;
  v118 = v94;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v63 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v63, sub_1BF13D800, v47, TupleTypeMetadata);
  v65 = v64;

  return v65;
}

uint64_t sub_1BF13CC98()
{
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_0_71();
  v4 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  OUTLINED_FUNCTION_8_30();
  v7 = (v4 + v6 + *(v5 + 80)) & ~*(v5 + 80);
  OUTLINED_FUNCTION_83_1();
  return sub_1BF13C3BC(v11, v12, v13, v14, v15, v16, v17, v0 + v9, v0 + v8, v0 + v4, v0 + v7, v0 + v10, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1BF13CE40(unint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v85 = a8;
  v112 = a5;
  v113 = a6;
  v110 = a3;
  v111 = a4;
  v126 = a2;
  v90 = a1;
  v89 = a12;
  v87 = a11;
  v86 = a10;
  v84 = a9;
  v104 = a16;
  v108 = a19;
  v92 = *a2;
  v93 = *a3;
  v94 = *a4;
  v95 = *a5;
  v96 = *a6;
  v106 = *(a19 - 8);
  v91 = *(v106 + 64);
  v99 = a17;
  v103 = a18;
  MEMORY[0x1EEE9AC00](a1, v91);
  v109 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = *(v20 - 8);
  v88 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v21, v19);
  v107 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = *(v23 - 8);
  v83 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v24, v25);
  v105 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v27 - 8);
  v82 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v29, v30);
  v101 = &v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a15;
  v32 = *(a15 - 8);
  v78 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v36;
  v77 = a14;
  v37 = *(a14 - 8);
  v76 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v72 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v41;
  v97 = a13;
  v100 = *(a13 - 8);
  v42 = *(v100 + 64);
  v45 = MEMORY[0x1EEE9AC00](v43, v44);
  v79 = &v72 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v46 + 16))(v45);
  v72 = v37;
  (*(v37 + 16))(v41, v85, a14);
  v73 = v32;
  (*(v32 + 16))(v36, v84, a15);
  v75 = v28;
  (*(v28 + 16))(v101, v86, v104);
  v47 = v98;
  v48 = v99;
  (*(v98 + 16))(v105, v87, v99);
  v49 = v102;
  (*(v102 + 16))(v107, v89, v103);
  v50 = v106;
  v51 = v108;
  (*(v106 + 16))(v109, v90, v108);
  v84 = (*(v100 + 80) + 144) & ~*(v100 + 80);
  v85 = (v42 + *(v37 + 80) + v84) & ~*(v37 + 80);
  v52 = (v76 + *(v32 + 80) + v85) & ~*(v32 + 80);
  v86 = (v78 + *(v28 + 80) + v52) & ~*(v28 + 80);
  v87 = (v82 + *(v47 + 80) + v86) & ~*(v47 + 80);
  v90 = (v83 + *(v49 + 80) + v87) & ~*(v49 + 80);
  v89 = (v88 + *(v50 + 80) + v90) & ~*(v50 + 80);
  v53 = swift_allocObject();
  v54 = v92;
  v55 = v77;
  *(v53 + 2) = v97;
  *(v53 + 3) = v55;
  v56 = v74;
  v57 = v104;
  *(v53 + 4) = v74;
  *(v53 + 5) = v57;
  v58 = v103;
  *(v53 + 6) = v48;
  *(v53 + 7) = v58;
  *(v53 + 8) = v51;
  v59 = *(v54 + 80);
  *(v53 + 9) = v59;
  v60 = v110;
  v93 = *(v93 + 80);
  *(v53 + 10) = v93;
  v61 = v111;
  v94 = *(v94 + 80);
  *(v53 + 11) = v94;
  v62 = v112;
  v95 = *(v95 + 80);
  *(v53 + 12) = v95;
  v63 = v113;
  v96 = *(v96 + 80);
  *(v53 + 13) = v96;
  *(v53 + 14) = v60;
  *(v53 + 15) = v61;
  *(v53 + 16) = v62;
  *(v53 + 17) = v63;
  (*(v100 + 32))(&v53[v84], v79);
  (*(v72 + 32))(&v53[v85], v80, v55);
  (*(v73 + 32))(&v53[v52], v81, v56);
  v64 = v57;
  (*(v75 + 32))(&v53[v86], v101, v57);
  v65 = v99;
  (*(v98 + 32))(&v53[v87], v105, v99);
  (*(v102 + 32))(&v53[v90], v107, v58);
  v66 = v108;
  (*(v106 + 32))(&v53[v89], v109, v108);

  v114 = v97;
  v115 = v55;
  v116 = v56;
  v117 = v64;
  v118 = v65;
  v119 = v58;
  v120 = v66;
  v121 = v59;
  v122 = v93;
  v123 = v94;
  v124 = v95;
  v125 = v96;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v68 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v68, sub_1BF13E4AC, v53, TupleTypeMetadata);
  v70 = v69;

  return v70;
}

uint64_t sub_1BF13D800()
{
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_0_71();
  v4 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  OUTLINED_FUNCTION_8_30();
  v7 = (v4 + v6 + *(v5 + 80)) & ~*(v5 + 80);
  OUTLINED_FUNCTION_8_30();
  v9 = *(v8 + 80);
  return sub_1BF13CE40(v15, v0[14], v0[15], v0[16], v0[17], v0[18], v0 + v13, v0 + v14, v0 + v4, v0 + v7, v0 + ((v7 + v10 + v9) & ~v9), v0 + ((((v7 + v10 + v9) & ~v9) + *(v11 + 64) + *(*(v12 - 8) + 80)) & ~*(*(v12 - 8) + 80)), v17, v18, v19, v20, v21, v12, v16);
}

uint64_t sub_1BF13DA08(unint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5, uint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v95 = a8;
  v92 = a7;
  v122 = a4;
  v123 = a5;
  v121 = a3;
  v137 = a2;
  v100 = a1;
  v99 = a12;
  v97 = a11;
  v96 = a10;
  v93 = a9;
  v113 = a16;
  v114 = a19;
  v118 = a20;
  v102 = *a2;
  v103 = *a3;
  v104 = *a4;
  v105 = *a5;
  v117 = *(a20 - 8);
  v101 = *(v117 + 64);
  v116 = a17;
  v90 = a18;
  MEMORY[0x1EEE9AC00](a13, v101);
  v124 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = *(v21 - 8);
  v98 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v22, v20);
  v120 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = *(v24 - 8);
  v94 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v119 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = *(v28 - 8);
  v91 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v29, v30);
  v115 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v32 - 8);
  v89 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v34, v35);
  v111 = &v79 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a15;
  v37 = *(a15 - 8);
  v85 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v79 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v41;
  v84 = a14;
  v109 = *(a14 - 8);
  v42 = v109;
  v82 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v79 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v46;
  v106 = v47;
  v108 = *(v47 - 8);
  v48 = *(v108 + 64);
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v86 = &v79 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v51 + 16))(v50);
  (*(v42 + 16))(v46, v92, a14);
  v80 = v37;
  (*(v37 + 16))(v41, v95, a15);
  v81 = v33;
  (*(v33 + 16))(v111, v93, v113);
  v52 = v107;
  (*(v107 + 16))(v115, v96, v116);
  v53 = v110;
  v54 = v90;
  (*(v110 + 16))(v119, v97, v90);
  v55 = v112;
  (*(v112 + 16))(v120, v99, v114);
  v57 = v117;
  v56 = v118;
  (*(v117 + 16))(v124, v100, v118);
  v92 = (*(v108 + 80) + 136) & ~*(v108 + 80);
  v93 = (v48 + *(v109 + 80) + v92) & ~*(v109 + 80);
  v95 = (v82 + *(v37 + 80) + v93) & ~*(v37 + 80);
  v96 = (v85 + *(v33 + 80) + v95) & ~*(v33 + 80);
  v97 = (v89 + *(v52 + 80) + v96) & ~*(v52 + 80);
  v99 = (v91 + *(v53 + 80) + v97) & ~*(v53 + 80);
  v100 = (v94 + *(v55 + 80) + v99) & ~*(v55 + 80);
  v98 = (v98 + *(v57 + 80) + v100) & ~*(v57 + 80);
  v58 = swift_allocObject();
  v59 = v102;
  v60 = v84;
  *(v58 + 2) = v106;
  *(v58 + 3) = v60;
  v61 = v83;
  v62 = v113;
  *(v58 + 4) = v83;
  *(v58 + 5) = v62;
  v63 = v116;
  *(v58 + 6) = v116;
  *(v58 + 7) = v54;
  v64 = v114;
  *(v58 + 8) = v114;
  *(v58 + 9) = v56;
  v65 = *(v59 + 80);
  *(v58 + 10) = v65;
  v66 = v121;
  v103 = *(v103 + 80);
  *(v58 + 11) = v103;
  v67 = v122;
  v104 = *(v104 + 80);
  *(v58 + 12) = v104;
  v68 = v123;
  v105 = *(v105 + 80);
  *(v58 + 13) = v105;
  *(v58 + 14) = v66;
  *(v58 + 15) = v67;
  *(v58 + 16) = v68;
  (*(v108 + 32))(&v58[v92], v86);
  (*(v109 + 32))(&v58[v93], v87, v60);
  (*(v80 + 32))(&v58[v95], v88, v61);
  v69 = v62;
  (*(v81 + 32))(&v58[v96], v111, v62);
  v70 = v63;
  (*(v107 + 32))(&v58[v97], v115, v63);
  v71 = v54;
  (*(v110 + 32))(&v58[v99], v119, v54);
  v72 = v64;
  (*(v112 + 32))(&v58[v100], v120, v64);
  v73 = v118;
  (*(v117 + 32))(&v58[v98], v124, v118);

  v125 = v106;
  v126 = v60;
  v127 = v61;
  v128 = v69;
  v129 = v70;
  v130 = v71;
  v131 = v72;
  v132 = v73;
  v133 = v65;
  v134 = v103;
  v135 = v104;
  v136 = v105;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v75 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v75, sub_1BF13F27C, v58, TupleTypeMetadata);
  v77 = v76;

  return v77;
}

uint64_t sub_1BF13E4AC()
{
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_0_71();
  v4 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  OUTLINED_FUNCTION_8_30();
  v7 = (v4 + v6 + *(v5 + 80)) & ~*(v5 + 80);
  OUTLINED_FUNCTION_8_30();
  v10 = (v7 + v9 + *(v8 + 80)) & ~*(v8 + 80);
  OUTLINED_FUNCTION_100_0();
  v13 = (v10 + v12 + *(v11 + 80)) & ~*(v11 + 80);
  return sub_1BF13DA08(v18, v0[14], v0[15], v0[16], v0[17], v0 + v16, v0 + v17, v0 + v4, v0 + v7, v0 + v10, v0 + v13, v0 + ((v13 + *(v14 + 64) + *(*(v15 - 8) + 80)) & ~*(*(v15 - 8) + 80)), v20, v21, v22, v23, v24, v25, v15, v19);
}

uint64_t sub_1BF13E700(unint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v98 = a8;
  v96 = a7;
  v95 = a6;
  v128 = a3;
  v129 = a4;
  v143 = a2;
  v104 = a1;
  v102 = a12;
  v101 = a11;
  v100 = a10;
  v97 = a9;
  v117 = a16;
  v121 = a17;
  v124 = a18;
  v125 = a21;
  v106 = *a2;
  v107 = *a3;
  v108 = *a4;
  v123 = *(a21 - 8);
  v105 = *(v123 + 64);
  v93 = a19;
  v120 = a20;
  MEMORY[0x1EEE9AC00](a1, v105);
  v130 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = *(v22 - 8);
  v103 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v23, v21);
  v127 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = *(v25 - 8);
  v99 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v26, v27);
  v126 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = *(v29 - 8);
  v94 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v30, v31);
  v122 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = *(v33 - 8);
  v92 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v34, v35);
  v118 = &v83 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v37 - 8);
  v91 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v83 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v42;
  v85 = a15;
  v115 = *(a15 - 8);
  v43 = v115;
  v86 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v83 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v47;
  v109 = a14;
  v114 = *(a14 - 8);
  v48 = v114;
  v84 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v83 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v52;
  v111 = a13;
  v113 = *(a13 - 8);
  v53 = *(v113 + 64);
  v56 = MEMORY[0x1EEE9AC00](v54, v55);
  v87 = &v83 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v57 + 16))(v56);
  (*(v48 + 16))(v52, v95, a14);
  (*(v43 + 16))(v47, v96, a15);
  v83 = v38;
  (*(v38 + 16))(v42, v98, v117);
  v58 = v110;
  (*(v110 + 16))(v118, v97, v121);
  v59 = v112;
  (*(v112 + 16))(v122, v100, v124);
  v60 = v116;
  v61 = v93;
  (*(v116 + 16))(v126, v101, v93);
  v62 = v119;
  (*(v119 + 16))(v127, v102, v120);
  v63 = v123;
  v64 = v125;
  (*(v123 + 16))(v130, v104, v125);
  v95 = (*(v113 + 80) + 128) & ~*(v113 + 80);
  v96 = (v53 + *(v114 + 80) + v95) & ~*(v114 + 80);
  v97 = (v84 + *(v115 + 80) + v96) & ~*(v115 + 80);
  v98 = (v86 + *(v38 + 80) + v97) & ~*(v38 + 80);
  v100 = (v91 + *(v58 + 80) + v98) & ~*(v58 + 80);
  v101 = (v92 + *(v59 + 80) + v100) & ~*(v59 + 80);
  v102 = (v94 + *(v60 + 80) + v101) & ~*(v60 + 80);
  v104 = (v99 + *(v62 + 80) + v102) & ~*(v62 + 80);
  v103 = (v103 + *(v63 + 80) + v104) & ~*(v63 + 80);
  v65 = swift_allocObject();
  v66 = v106;
  v67 = v109;
  *(v65 + 2) = v111;
  *(v65 + 3) = v67;
  v68 = v85;
  v69 = v117;
  *(v65 + 4) = v85;
  *(v65 + 5) = v69;
  v70 = v121;
  v71 = v124;
  *(v65 + 6) = v121;
  *(v65 + 7) = v71;
  v72 = v120;
  *(v65 + 8) = v61;
  *(v65 + 9) = v72;
  *(v65 + 10) = v64;
  v73 = *(v66 + 80);
  *(v65 + 11) = v73;
  v74 = v128;
  v107 = *(v107 + 80);
  *(v65 + 12) = v107;
  v75 = v129;
  v108 = *(v108 + 80);
  *(v65 + 13) = v108;
  *(v65 + 14) = v74;
  *(v65 + 15) = v75;
  (*(v113 + 32))(&v65[v95], v87);
  (*(v114 + 32))(&v65[v96], v88, v67);
  (*(v115 + 32))(&v65[v97], v89, v68);
  (*(v83 + 32))(&v65[v98], v90, v69);
  v76 = v70;
  (*(v110 + 32))(&v65[v100], v118, v70);
  (*(v112 + 32))(&v65[v101], v122, v71);
  (*(v116 + 32))(&v65[v102], v126, v61);
  (*(v119 + 32))(&v65[v104], v127, v72);
  v77 = v125;
  (*(v123 + 32))(&v65[v103], v130, v125);

  v131 = v111;
  v132 = v109;
  v133 = v68;
  v134 = v69;
  v135 = v76;
  v136 = v71;
  v137 = v61;
  v138 = v72;
  v139 = v77;
  v140 = v73;
  v141 = v107;
  v142 = v108;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v79 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v79, sub_1BF140190, v65, TupleTypeMetadata);
  v81 = v80;

  return v81;
}

uint64_t sub_1BF13F27C()
{
  OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_0_71();
  v4 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  OUTLINED_FUNCTION_8_30();
  v7 = (v4 + v6 + *(v5 + 80)) & ~*(v5 + 80);
  OUTLINED_FUNCTION_8_30();
  v12 = (v7 + v9 + *(v8 + 80)) & ~*(v8 + 80);
  v13 = (v12 + *(v10 + 64) + *(*(v11 - 8) + 80)) & ~*(*(v11 - 8) + 80);
  OUTLINED_FUNCTION_8_30();
  v16 = (v13 + v15 + *(v14 + 80)) & ~*(v14 + 80);
  return sub_1BF13E700(v21, v0[14], v0[15], v0[16], v0 + v19, v0 + v20, v0 + v4, v0 + v7, v0 + v12, v0 + v13, v0 + v16, v0 + ((v16 + *(v17 + 64) + *(*(v18 - 8) + 80)) & ~*(*(v18 - 8) + 80)), v24, v25, v26, v27, v28, v29, v22, v18, v23);
}

uint64_t sub_1BF13F52C(unint64_t a1, void *a2, void *a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v106 = a8;
  v104 = a7;
  v102 = a6;
  v101 = a5;
  v135 = a3;
  v137 = a2;
  v112 = a1;
  v110 = a12;
  v109 = a11;
  v107 = a10;
  v105 = a9;
  v122 = a16;
  v125 = a17;
  v131 = a18;
  v128 = a21;
  v132 = a22;
  v114 = *a2;
  v115 = *a3;
  v130 = *(a22 - 8);
  v113 = *(v130 + 64);
  v152 = a19;
  v100 = a20;
  MEMORY[0x1EEE9AC00](a1, v113);
  v136 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = *(v23 - 8);
  v111 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v24, v22);
  v134 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = *(v26 - 8);
  v108 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v27, v28);
  v133 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = *(v30 - 8);
  v103 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v31, v32);
  v129 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = *(v34 - 8);
  v99 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v35, v36);
  v126 = &v88 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = *(v38 - 8);
  v98 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v39, v40);
  v124 = &v88 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v42 - 8);
  v93 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v88 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v47;
  v91 = a15;
  v120 = *(a15 - 8);
  v48 = v120;
  v92 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v88 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v52;
  v116 = a14;
  v119 = *(a14 - 8);
  v53 = v119;
  v90 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v88 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v57;
  v117 = a13;
  v118 = *(a13 - 8);
  v58 = *(v118 + 64);
  v61 = MEMORY[0x1EEE9AC00](v59, v60);
  v94 = &v88 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v62 + 16))(v61);
  (*(v53 + 16))(v57, v101, a14);
  (*(v48 + 16))(v52, v102, a15);
  v89 = v43;
  (*(v43 + 16))(v47, v104, v122);
  (*(v138 + 16))(v124, v106, v125);
  (*(v139 + 16))(v126, v105, v131);
  v63 = v121;
  (*(v121 + 16))(v129, v107, v152);
  v64 = v123;
  v65 = v100;
  (*(v123 + 16))(v133, v109, v100);
  v66 = v127;
  v67 = v128;
  (*(v127 + 16))(v134, v110, v128);
  v68 = v130;
  v69 = v132;
  (*(v130 + 16))(v136, v112, v132);
  v101 = (*(v118 + 80) + 120) & ~*(v118 + 80);
  v102 = (v58 + *(v119 + 80) + v101) & ~*(v119 + 80);
  v104 = (v90 + *(v120 + 80) + v102) & ~*(v120 + 80);
  v105 = (v92 + *(v43 + 80) + v104) & ~*(v43 + 80);
  v106 = (v93 + *(v138 + 80) + v105) & ~*(v138 + 80);
  v107 = (v98 + *(v139 + 80) + v106) & ~*(v139 + 80);
  v109 = (v99 + *(v63 + 80) + v107) & ~*(v63 + 80);
  v110 = (v103 + *(v64 + 80) + v109) & ~*(v64 + 80);
  v112 = (v108 + *(v66 + 80) + v110) & ~*(v66 + 80);
  v111 = (v111 + *(v68 + 80) + v112) & ~*(v68 + 80);
  v70 = swift_allocObject();
  v71 = v114;
  v72 = v116;
  *(v70 + 2) = v117;
  *(v70 + 3) = v72;
  v73 = v91;
  v74 = v122;
  *(v70 + 4) = v91;
  *(v70 + 5) = v74;
  v75 = v125;
  v76 = v131;
  *(v70 + 6) = v125;
  *(v70 + 7) = v76;
  *(v70 + 8) = v152;
  *(v70 + 9) = v65;
  *(v70 + 10) = v67;
  *(v70 + 11) = v69;
  v114 = *(v71 + 80);
  *(v70 + 12) = v114;
  v77 = v135;
  v115 = *(v115 + 80);
  *(v70 + 13) = v115;
  *(v70 + 14) = v77;
  (*(v118 + 32))(&v70[v101], v94);
  (*(v119 + 32))(&v70[v102], v95, v72);
  (*(v120 + 32))(&v70[v104], v96, v73);
  (*(v89 + 32))(&v70[v105], v97, v74);
  (*(v138 + 32))(&v70[v106], v124, v75);
  v78 = v76;
  (*(v139 + 32))(&v70[v107], v126, v76);
  v79 = v152;
  (*(v121 + 32))(&v70[v109], v129, v152);
  v80 = v65;
  (*(v123 + 32))(&v70[v110], v133, v65);
  v81 = v128;
  (*(v127 + 32))(&v70[v112], v134, v128);
  v82 = v132;
  (*(v130 + 32))(&v70[v111], v136, v132);

  v140 = v117;
  v141 = v116;
  v142 = v73;
  v143 = v74;
  v144 = v75;
  v145 = v78;
  v146 = v79;
  v147 = v80;
  v148 = v81;
  v149 = v82;
  v150 = v114;
  v151 = v115;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v84 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v84, sub_1BF1411BC, v70, TupleTypeMetadata);
  v86 = v85;

  return v86;
}

uint64_t sub_1BF140190()
{
  OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_0_71();
  v4 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  OUTLINED_FUNCTION_8_30();
  v7 = (v4 + v6 + *(v5 + 80)) & ~*(v5 + 80);
  OUTLINED_FUNCTION_8_30();
  v12 = (((v7 + v9 + *(v8 + 80)) & ~*(v8 + 80)) + *(v10 + 64) + *(*(v11 - 8) + 80)) & ~*(*(v11 - 8) + 80);
  OUTLINED_FUNCTION_8_30();
  v15 = (v12 + v14 + *(v13 + 80)) & ~*(v13 + 80);
  OUTLINED_FUNCTION_8_30();
  v18 = (v15 + v17 + *(v16 + 80)) & ~*(v16 + 80);
  v48 = v20;
  v49 = v21;
  v46 = v23;
  v47 = v22;
  v44 = v24;
  v45 = v25;
  v42 = v26;
  v43 = v27;
  v40 = v28;
  v41 = v29;
  v39 = v0 + ((v18 + *(v19 + 64) + *(*(v20 - 8) + 80)) & ~*(*(v20 - 8) + 80));
  OUTLINED_FUNCTION_147_0();
  return sub_1BF13F52C(v30, v31, v32, v33, v34, v35, v36, v37, v0 + v12, v0 + v15, v0 + v18, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
}

uint64_t sub_1BF140480(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v109 = a8;
  v107 = a7;
  v106 = a6;
  v104 = a5;
  v103 = a4;
  v145 = a2;
  v116 = a1;
  v114 = a12;
  v112 = a11;
  v111 = a10;
  v108 = a9;
  v131 = a16;
  v134 = a17;
  v137 = a18;
  v139 = a19;
  v141 = a20;
  v113 = a23;
  v120 = *a2;
  v135 = *(a23 - 8);
  v119 = *(v135 + 64);
  v147 = a21;
  v160 = a22;
  MEMORY[0x1EEE9AC00](a16, v119);
  v144 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = *(v24 - 8);
  v118 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v25, v23);
  v143 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = *(v27 - 8);
  v117 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v28, v29);
  v142 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = *(v31 - 8);
  v115 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v32, v33);
  v140 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = *(v35 - 8);
  v110 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v36, v37);
  v138 = &v94 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = *(v39 - 8);
  v105 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v40, v41);
  v136 = &v94 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = *(v43 - 8);
  v102 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v44, v45);
  v133 = &v94 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = *(v47 - 8);
  v48 = v129;
  v101 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v47, v49);
  v51 = &v94 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v51;
  v123 = a15;
  v52 = *(a15 - 8);
  v96 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v94 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v56;
  v125 = a14;
  v128 = *(a14 - 8);
  v57 = v128;
  v94 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v58, v59);
  v61 = &v94 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v61;
  v126 = v62;
  v127 = *(v62 - 8);
  v63 = *(v127 + 64);
  v66 = MEMORY[0x1EEE9AC00](v64, v65);
  v97 = &v94 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v67 + 16))(v66);
  (*(v57 + 16))(v61, v103, a14);
  v68 = v52;
  v95 = v52;
  (*(v52 + 16))(v56, v104, a15);
  (*(v48 + 16))(v51, v106, v131);
  (*(v146 + 16))(v133, v107, v134);
  v69 = v122;
  (*(v122 + 16))(v136, v109, v137);
  v70 = v124;
  (*(v124 + 16))(v138, v108, v139);
  v71 = v121;
  (*(v121 + 16))(v140, v111, v141);
  v72 = v130;
  (*(v130 + 16))(v142, v112, v147);
  v73 = v132;
  (*(v132 + 16))(v143, v114, v160);
  v74 = v135;
  v75 = v113;
  (*(v135 + 16))(v144, v116, v113);
  v114 = (*(v127 + 80) + 112) & ~*(v127 + 80);
  v116 = (v63 + *(v128 + 80) + v114) & ~*(v128 + 80);
  v106 = (v94 + *(v68 + 80) + v116) & ~*(v68 + 80);
  v107 = (v96 + *(v129 + 80) + v106) & ~*(v129 + 80);
  v108 = (v101 + *(v146 + 80) + v107) & ~*(v146 + 80);
  v109 = (v102 + *(v69 + 80) + v108) & ~*(v69 + 80);
  v111 = (v105 + *(v70 + 80) + v109) & ~*(v70 + 80);
  v112 = (v110 + *(v71 + 80) + v111) & ~*(v71 + 80);
  v115 = (v115 + *(v72 + 80) + v112) & ~*(v72 + 80);
  v117 = (v117 + *(v73 + 80) + v115) & ~*(v73 + 80);
  v118 = (v118 + *(v74 + 80) + v117) & ~*(v74 + 80);
  v76 = swift_allocObject();
  v77 = v125;
  *(v76 + 2) = v126;
  *(v76 + 3) = v77;
  v78 = v123;
  v79 = v131;
  *(v76 + 4) = v123;
  *(v76 + 5) = v79;
  v80 = v134;
  v81 = v137;
  *(v76 + 6) = v134;
  *(v76 + 7) = v81;
  v82 = v139;
  v83 = v141;
  *(v76 + 8) = v139;
  *(v76 + 9) = v83;
  v84 = v160;
  *(v76 + 10) = v147;
  *(v76 + 11) = v84;
  *(v76 + 12) = v75;
  v120 = *(v120 + 80);
  *(v76 + 13) = v120;
  (*(v127 + 32))(&v76[v114], v97);
  (*(v128 + 32))(&v76[v116], v98, v77);
  (*(v95 + 32))(&v76[v106], v99, v78);
  (*(v129 + 32))(&v76[v107], v100, v79);
  (*(v146 + 32))(&v76[v108], v133, v80);
  (*(v122 + 32))(&v76[v109], v136, v81);
  v85 = v82;
  (*(v124 + 32))(&v76[v111], v138, v82);
  v86 = v83;
  (*(v121 + 32))(&v76[v112], v140, v83);
  v87 = v147;
  (*(v130 + 32))(&v76[v115], v142, v147);
  v88 = v160;
  (*(v132 + 32))(&v76[v117], v143, v160);
  (*(v135 + 32))(&v76[v118], v144, v75);
  v148 = v126;
  v149 = v125;
  v150 = v123;
  v151 = v79;
  v152 = v80;
  v153 = v81;
  v154 = v85;
  v155 = v86;
  v156 = v87;
  v157 = v88;
  v158 = v75;
  v159 = v120;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v90 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v90, sub_1BF1418E4, v76, TupleTypeMetadata);
  v92 = v91;

  return v92;
}

uint64_t sub_1BF1411BC()
{
  OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_137();
  v4 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  OUTLINED_FUNCTION_112_0();
  v7 = (v4 + v6 + *(v5 + 80)) & ~*(v5 + 80);
  OUTLINED_FUNCTION_112_0();
  v12 = (((v7 + v9 + *(v8 + 80)) & ~*(v8 + 80)) + *(v10 + 64) + *(*(v11 - 8) + 80)) & ~*(*(v11 - 8) + 80);
  OUTLINED_FUNCTION_161();
  v15 = (v12 + v14 + *(v13 + 80)) & ~*(v13 + 80);
  OUTLINED_FUNCTION_161();
  v18 = (v15 + v17 + *(v16 + 80)) & ~*(v16 + 80);
  OUTLINED_FUNCTION_161();
  v21 = (v18 + v20 + *(v19 + 80)) & ~*(v19 + 80);
  v53 = v23;
  v54 = v24;
  v51 = v25;
  v52 = v26;
  v49 = v27;
  v50 = v28;
  v47 = v29;
  v48 = v30;
  v45 = v31;
  v46 = v32;
  v43 = v0 + ((v21 + *(v22 + 64) + *(*(v23 - 8) + 80)) & ~*(*(v23 - 8) + 80));
  v44 = v33;
  OUTLINED_FUNCTION_172();
  return sub_1BF140480(v34, v35, v36, v37, v38, v39, v40, v41, v0 + v15, v0 + v18, v0 + v21, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
}

uint64_t sub_1BF141508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v27 = TupleTypeMetadata[12];
  v28 = TupleTypeMetadata[16];
  v30 = TupleTypeMetadata[20];
  v31 = TupleTypeMetadata[24];
  v33 = TupleTypeMetadata[28];
  v35 = TupleTypeMetadata[32];
  v37 = TupleTypeMetadata[36];
  v39 = TupleTypeMetadata[40];
  v41 = TupleTypeMetadata[44];
  v42 = TupleTypeMetadata[48];
  v44 = TupleTypeMetadata[52];
  (*(*(a14 - 8) + 16))(a9, a2, a14);
  (*(*(a15 - 8) + 16))(a9 + v27, a3, a15);
  (*(*(a16 - 8) + 16))(a9 + v28, a4, a16);
  (*(*(a17 - 8) + 16))(a9 + v30, a5, a17);
  (*(*(a18 - 8) + 16))(a9 + v31, a6, a18);
  (*(*(a19 - 8) + 16))(a9 + v33, a7, a19);
  (*(*(a20 - 8) + 16))(a9 + v35, a8);
  (*(*(a21 - 8) + 16))(a9 + v37, a10);
  (*(*(a22 - 8) + 16))(a9 + v39, a11);
  (*(*(a23 - 8) + 16))(a9 + v41, a12);
  (*(*(a24 - 8) + 16))(a9 + v42, a13);
  return (*(*(a25 - 8) + 16))(a9 + v44, a1);
}

uint64_t sub_1BF1418E4@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_140_0();
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_139_0();
  v7 = (v6 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v10 = (v7 + *(v8 + 64) + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  v11 = *(*(v9 - 8) + 64);
  OUTLINED_FUNCTION_159();
  v13 = v12;
  v15 = (v10 + v11 + *(v14 + 80)) & ~*(v14 + 80);
  v19 = (v15 + *(v16 + 64) + *(*(v17 - 8) + 80)) & ~*(*(v17 - 8) + 80);
  v20 = (v19 + *(*(v17 - 8) + 64) + *(*(v18 - 8) + 80)) & ~*(*(v18 - 8) + 80);
  v22 = (v20 + *(*(v18 - 8) + 64) + *(*(v21 - 8) + 80)) & ~*(*(v21 - 8) + 80);
  v24 = (v22 + *(*(v21 - 8) + 64) + *(*(v23 - 8) + 80)) & ~*(*(v23 - 8) + 80);
  v25 = *(v12 - 8);
  v26 = (v24 + *(*(v23 - 8) + 64) + *(v25 + 80)) & ~*(v25 + 80);
  v28 = (v26 + *(v25 + 64) + *(*(v27 - 8) + 80)) & ~*(*(v27 - 8) + 80);
  return sub_1BF141508(v31, v1 + v30, v1 + v7, v1 + v10, v1 + v15, v1 + v19, v1 + v20, v1 + v22, a1, v1 + v24, v1 + v26, v1 + v28, v1 + ((v28 + *(*(v27 - 8) + 64) + *(*(v29 - 8) + 80)) & ~*(*(v29 - 8) + 80)), v33, v34, v35, v36, v17, v18, v21, v23, v13, v27, v29, v32);
}

uint64_t sub_1BF141CDC()
{
  OUTLINED_FUNCTION_84_1();
  OUTLINED_FUNCTION_109_0();
  return sub_1BF134EFC(v2, v3, v4, v5, v6, v7, v8, v0[19], v0[20], v0[21], v0 + v1, v9, v10);
}

uint64_t sub_1BF141D44()
{
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_109_0();
  OUTLINED_FUNCTION_163();
  return sub_1BF1353E8(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13, v8, v9, v10, v11);
}

uint64_t sub_1BF141DF4()
{
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_26_9();
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_117_1();
  OUTLINED_FUNCTION_109_0();
  OUTLINED_FUNCTION_163();
  return sub_1BF1359A4(v0, v1, v2, v3, v4, v5, v6, v7, v14, v13, v8, v9, v10, v11, v12);
}

uint64_t sub_1BF141EEC()
{
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_0_71();
  OUTLINED_FUNCTION_109_0();
  return sub_1BF136028(v5, v6, v7, v8, v9, v10, v11, v0 + v2, v0 + v3, v0 + v1, v0 + v4, v12, v13, v14, v15, v16);
}

uint64_t sub_1BF142040()
{
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_0_71();
  OUTLINED_FUNCTION_100_0();
  v4 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  return sub_1BF136788(v9, v0[13], v0[14], v0[15], v0[16], v0[17], v0 + v7, v0 + v8, v0 + v3, v0 + v4, v0 + ((v4 + *(v5 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80)), v10, v11, v12, v13, v6, v14);
}

uint64_t sub_1BF1421F0()
{
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_0_71();
  OUTLINED_FUNCTION_100_0();
  v4 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  OUTLINED_FUNCTION_8_30();
  v7 = (v4 + v6 + *(v5 + 80)) & ~*(v5 + 80);
  return sub_1BF136FEC(v13, v0[13], v0[14], v0[15], v0[16], v0 + v10, v0 + v11, v0 + v12, v0 + v4, v0 + v7, v0 + ((v7 + *(v8 + 64) + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80)), v15, v16, v17, v18, v19, v9, v14);
}

uint64_t sub_1BF1423EC()
{
  OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_0_71();
  v6 = (((v3 + v2 + *(v1 + 80)) & ~*(v1 + 80)) + *(v4 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  OUTLINED_FUNCTION_8_30();
  v9 = (v6 + v8 + *(v7 + 80)) & ~*(v7 + 80);
  OUTLINED_FUNCTION_8_30();
  v12 = (v9 + v11 + *(v10 + 80)) & ~*(v10 + 80);
  return sub_1BF137948(v18, v0[13], v0[14], v0[15], v0 + v15, v0 + v16, v0 + v17, v0 + v6, v0 + v9, v0 + v12, v0 + ((v12 + *(v13 + 64) + *(*(v14 - 8) + 80)) & ~*(*(v14 - 8) + 80)), v20, v21, v22, v23, v24, v25, v14, v19);
}

uint64_t sub_1BF142640()
{
  OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_0_71();
  v6 = (((v3 + v2 + *(v1 + 80)) & ~*(v1 + 80)) + *(v4 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  OUTLINED_FUNCTION_8_30();
  v9 = (v6 + v8 + *(v7 + 80)) & ~*(v7 + 80);
  OUTLINED_FUNCTION_8_30();
  v12 = (v9 + v11 + *(v10 + 80)) & ~*(v10 + 80);
  OUTLINED_FUNCTION_8_30();
  v15 = (v12 + v14 + *(v13 + 80)) & ~*(v13 + 80);
  return sub_1BF138380(v21, *(v0 + 104), *(v0 + 112), v0 + v18, v0 + v19, v0 + v20, v0 + v6, v0 + v9, v0 + v12, v0 + v15, v0 + ((v15 + *(v16 + 64) + *(*(v17 - 8) + 80)) & ~*(*(v17 - 8) + 80)), v23, v24, v25, v26, v27, v28, v29, v17, v22);
}

uint64_t sub_1BF1428E0()
{
  OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_43_4();
  v6 = (((v3 + v2 + *(v1 + 80)) & ~*(v1 + 80)) + *(v4 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  OUTLINED_FUNCTION_112_0();
  v9 = (v6 + v8 + *(v7 + 80)) & ~*(v7 + 80);
  OUTLINED_FUNCTION_138_0();
  v12 = (v9 + v11 + *(v10 + 80)) & ~*(v10 + 80);
  OUTLINED_FUNCTION_138_0();
  v15 = (v12 + v14 + *(v13 + 80)) & ~*(v13 + 80);
  OUTLINED_FUNCTION_138_0();
  v18 = (v15 + v17 + *(v16 + 80)) & ~*(v16 + 80);
  v48 = v20;
  v49 = v21;
  v46 = v23;
  v47 = v22;
  v44 = v24;
  v45 = v25;
  v42 = v26;
  v43 = v27;
  v40 = v28;
  v41 = v29;
  v39 = v0 + ((v18 + *(v19 + 64) + *(*(v20 - 8) + 80)) & ~*(*(v20 - 8) + 80));
  OUTLINED_FUNCTION_147_0();
  return sub_1BF138E8C(v30, v31, v32, v33, v34, v35, v36, v37, v0 + v15, v0 + v18, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
}

uint64_t sub_1BF142BD4()
{
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_140_0();
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_139_0();
  v5 = v4 + v2 + *(v3 + 80);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_166();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_159();
  v13 = (v9 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v16 = (v13 + *(v14 + 64) + *(*(v15 - 8) + 80)) & ~*(*(v15 - 8) + 80);
  v18 = (v16 + *(*(v15 - 8) + 64) + *(*(v17 - 8) + 80)) & ~*(*(v17 - 8) + 80);
  v20 = (v18 + *(*(v17 - 8) + 64) + *(*(v19 - 8) + 80)) & ~*(*(v19 - 8) + 80);
  v22 = *(*(v21 - 8) + 80);
  v24 = (v20 + *(*(v19 - 8) + 64) + v22) & ~v22;
  return sub_1BF139A8C(v27, v0 + v25, v0 + v26, v0 + v5, v0 + v9, v0 + v13, v0 + v16, v0 + v18, v29, v0 + v20, v0 + v24, v0 + ((v24 + *(*(v21 - 8) + 64) + *(*(v23 - 8) + 80)) & ~*(*(v23 - 8) + 80)), v30, v31, v32, v33, v34, v15, v17, v19, v21, v23, v28);
}

uint64_t sub_1BF142F40()
{
  OUTLINED_FUNCTION_84_1();
  OUTLINED_FUNCTION_154();
  return sub_1BF1308D8(v2, v3, v4, v5, v6, v7, v8, *(v0 + 144), *(v0 + 152), v0 + v1, v9, v10);
}

uint64_t sub_1BF142FA0()
{
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_154();
  return sub_1BF130D58(v3, v4, v5, v6, v7, v8, v9, *(v0 + 144), v0 + v2, v0 + v1, v10, v11, v12);
}

uint64_t sub_1BF14305C()
{
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_154();
  return sub_1BF131280(v4, v5, v6, v7, v8, v9, v10, v0 + v1, v0 + v3, v0 + v2, v11, v12, v13, v14);
}

uint64_t sub_1BF143160()
{
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_0_71();
  v4 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  return sub_1BF131880(v8, v0[12], v0[13], v0[14], v0[15], v0[16], v0 + v7, v0 + v3, v0 + v4, v0 + ((v4 + *(v5 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80)), v9, v10, v11, v6, v12);
}

uint64_t sub_1BF1432C0()
{
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_0_71();
  OUTLINED_FUNCTION_8_30();
  v4 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  return sub_1BF131F94(v9, v0[12], v0[13], v0[14], v0[15], v0 + v7, v0 + v8, v0 + v3, v0 + v4, v0 + ((v4 + *(v5 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80)), v10, v11, v12, v13, v6, v14);
}

uint64_t sub_1BF143464()
{
  OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_0_71();
  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_8_30();
  v4 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  return sub_1BF132784(v10, v0[12], v0[13], v0[14], v0 + v7, v0 + v8, v0 + v9, v0 + v3, v0 + v4, v0 + ((v4 + *(v5 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80)), v11, v12, v13, v14, v15, v6, v16);
}

uint64_t sub_1BF143660()
{
  OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_0_71();
  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_8_30();
  v4 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  OUTLINED_FUNCTION_8_30();
  v7 = (v4 + v6 + *(v5 + 80)) & ~*(v5 + 80);
  return sub_1BF133064(v14, *(v0 + 96), *(v0 + 104), v0 + v10, v0 + v11, v0 + v12, v0 + v13, v0 + v4, v0 + v7, v0 + ((v7 + *(v8 + 64) + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80)), v16, v17, v18, v19, v20, v21, v9, v15);
}

uint64_t sub_1BF1438A4()
{
  OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_137();
  v4 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  OUTLINED_FUNCTION_137();
  v7 = (v4 + v6 + *(v5 + 80)) & ~*(v5 + 80);
  OUTLINED_FUNCTION_137();
  v9 = *(v8 + 80);
  return sub_1BF133A24(v17, *(v0 + 96), v0 + v13, v0 + v14, v0 + v15, v0 + v16, v0 + v4, v0 + v7, v0 + ((v7 + v10 + v9) & ~v9), v0 + ((((v7 + v10 + v9) & ~v9) + *(v11 + 64) + *(*(v12 - 8) + 80)) & ~*(*(v12 - 8) + 80)), v19, v20, v21, v22, v23, v24, v25, v12, v18);
}

uint64_t sub_1BF143B48()
{
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_140_0();
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_139_0();
  v7 = (((v4 + v2 + *(v3 + 80)) & ~*(v3 + 80)) + *(v5 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  OUTLINED_FUNCTION_159();
  v13 = (((((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80)) + *(v10 + 64) + *(*(v11 - 8) + 80)) & ~*(*(v11 - 8) + 80)) + *(*(v11 - 8) + 64) + *(*(v12 - 8) + 80)) & ~*(*(v12 - 8) + 80);
  v41 = v14;
  v42 = v15;
  v39 = v11;
  v40 = v12;
  v37 = v16;
  v38 = v17;
  v35 = v18;
  v36 = v19;
  v33 = v20;
  v34 = v21;
  v32 = v0 + ((v13 + *(*(v12 - 8) + 64) + *(*(v14 - 8) + 80)) & ~*(*(v14 - 8) + 80));
  OUTLINED_FUNCTION_172();
  return sub_1BF1344C8(v22, v23, v24, v25, v26, v27, v28, v29, v30, v0 + v13, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
}

uint64_t sub_1BF143E50()
{
  OUTLINED_FUNCTION_84_1();
  OUTLINED_FUNCTION_164();
  return sub_1BF12D160(v2, v3, v4, v5, v6, v0[15], v0[16], v0[17], v0 + v1, v7, v8);
}

uint64_t sub_1BF143EB4()
{
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_164();
  return sub_1BF12D558(v3, v4, v5, v6, v7, *(v0 + 120), *(v0 + 128), v0 + v1, v0 + v2, v8, v9, v10);
}

uint64_t sub_1BF143F60()
{
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_26_9();
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_117_1();
  OUTLINED_FUNCTION_164();
  return sub_1BF12DA18(v4, v5, v6, v7, v8, *(v0 + 120), v0 + v1, v0 + v2, v0 + v3, v9, v10, v11, v12);
}

uint64_t sub_1BF144058()
{
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_0_71();
  OUTLINED_FUNCTION_164();
  return sub_1BF12DFB8(v5, v6, v7, v8, v9, v0 + v1, v0 + v2, v0 + v4, v0 + v3, v10, v11, v12, v13, v14);
}

uint64_t sub_1BF1441A4()
{
  OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_0_71();
  OUTLINED_FUNCTION_8_30();
  v4 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  return sub_1BF12E64C(v9, v0[11], v0[12], v0[13], v0 + v7, v0 + v8, v0 + v3, v0 + v4, v0 + ((v4 + *(v5 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80)), v10, v11, v12, v13, v6, v14);
}

uint64_t sub_1BF14433C()
{
  OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_0_71();
  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_8_30();
  v2 = *(v1 + 80);
  return sub_1BF12EDCC(v10, *(v0 + 88), *(v0 + 96), v0 + v6, v0 + v7, v0 + v8, v0 + v9, v0 + ((v9 + v3 + v2) & ~v2), v0 + ((((v9 + v3 + v2) & ~v2) + *(v4 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80)), v11, v12, v13, v14, v15, v5, v16);
}

uint64_t sub_1BF144520()
{
  OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_89_1();
  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_43_4();
  v6 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  v7 = (v6 + *(v4 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  return sub_1BF12F648(v12, *(v0 + 88), v0 + v9, v0 + v10, v0 + v11, v0 + v3, v0 + v6, v0 + v7, v0 + ((v7 + *(*(v5 - 8) + 64) + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80)), v14, v15, v16, v17, v18, v5, v8, v13);
}

uint64_t sub_1BF144768()
{
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_140_0();
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_139_0();
  v5 = v4 + v2 + *(v3 + 80);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_166();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_159();
  v41 = v14;
  v42 = v15;
  v39 = v17;
  v40 = v16;
  v37 = v18;
  v38 = v19;
  v35 = v20;
  v36 = v21;
  v33 = v0 + ((((v9 + v11 + *(v12 + 80)) & ~*(v12 + 80)) + *(v13 + 64) + *(*(v14 - 8) + 80)) & ~*(*(v14 - 8) + 80));
  v34 = v22;
  OUTLINED_FUNCTION_147_0();
  return sub_1BF12FF9C(v23, v24, v25, v26, v27, v28, v29, v30, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
}

uint64_t sub_1BF144A5C()
{
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_105_1();
  return sub_1BF12AA18(v3, v0[10], v0[11], v0[12], v0[13], v0[14], v0 + v1, v0 + v2, v4, v5, v6);
}

uint64_t sub_1BF144B0C()
{
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_26_9();
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_117_1();
  return sub_1BF12AE6C(v4, v0[10], v0[11], v0[12], v0[13], v0 + v1, v0 + v2, v0 + v3, v5, v6, v7, v8);
}

uint64_t sub_1BF144C00()
{
  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_0_71();
  v2 = *(v1 + 80);
  return sub_1BF12B3A8(v8, v0[10], v0[11], v0[12], v0 + v6, v0 + v7, v0 + ((v7 + v3 + v2) & ~v2), v0 + ((((v7 + v3 + v2) & ~v2) + *(v4 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80)), v9, v10, v11, v5, v12);
}

uint64_t sub_1BF144D50()
{
  OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_8_30();
  OUTLINED_FUNCTION_0_71();
  v6 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  v7 = (v6 + *(v4 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  return sub_1BF12B9DC(v10, *(v0 + 80), *(v0 + 88), v0 + v9, v0 + v3, v0 + v6, v0 + v7, v0 + ((v7 + *(*(v5 - 8) + 64) + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80)), v11, v12, v13, v5, v8, v14);
}

uint64_t sub_1BF144EE8()
{
  OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_69_2();
  OUTLINED_FUNCTION_69_2();
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_69_2();
  v4 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  return sub_1BF12C104(v10, *(v0 + 80), v0 + v7, v0 + v8, v0 + v9, v0 + v3, v0 + v4, v0 + ((v4 + *(v5 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80)), v11, v12, v13, v14, v15, v6, v16);
}

uint64_t sub_1BF1450D4()
{
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_140_0();
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_139_0();
  v5 = (v4 + v2 + *(v3 + 80)) & ~*(v3 + 80);
  return sub_1BF12C91C(v12, v0 + v8, v0 + v9, v0 + v10, v0 + v11, v0 + v4, v0 + v5, v0 + ((v5 + *(v6 + 64) + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80)), v14, v15, v16, v17, v18, v19, v20, v7, v13);
}

uint64_t sub_1BF145388()
{
  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_73_2();
  return sub_1BF128990(v4, *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), v0 + v3, v0 + ((v3 + *(v1 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80)), v5, v2, v6);
}

uint64_t sub_1BF145438()
{
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_80_2();
  return sub_1BF128DA0(v6, *(v0 + 72), *(v0 + 80), *(v0 + 88), v0 + v5, v0 + (v3 & ~v4), v0 + (((v3 & ~v4) + *(v1 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80)), v7, v8, v2, v9);
}

uint64_t sub_1BF145534()
{
  OUTLINED_FUNCTION_26_9();
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_67_2();
  v4 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  return sub_1BF129294(v8, *(v0 + 72), *(v0 + 80), v0 + v7, v0 + v3, v0 + v4, v0 + ((v4 + *(v5 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80)), v9, v10, v11, v6, v12);
}

uint64_t sub_1BF145680()
{
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_0_71();
  v4 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  return sub_1BF129860(v9, *(v0 + 72), v0 + v7, v0 + v8, v0 + v3, v0 + v4, v0 + ((v4 + *(v5 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80)), v10, v11, v12, v13, v6, v14);
}

uint64_t sub_1BF14581C()
{
  OUTLINED_FUNCTION_146_0();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_156();
  v4 = (v3 + v2 + *(v1 + 80)) & ~*(v1 + 80);
  return sub_1BF129F24(v10, v0 + v7, v0 + v8, v0 + v9, v0 + v3, v0 + v4, v0 + ((v4 + *(v5 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80)), v11, v12, v13, v14, v15, v16, v6, v17);
}

uint64_t sub_1BF145A70()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_12_3();
  return sub_1BF127808(v4, *(v0 + 56), *(v0 + 64), v0 + v3, v0 + ((v3 + *(v1 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80)), v5, v2, v6);
}

uint64_t sub_1BF145B10()
{
  OUTLINED_FUNCTION_18_10();
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_76_2();
  return sub_1BF127B90(v5, *(v0 + 56), v0 + v3, v0 + v4, v0 + ((v4 + *(v1 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80)), v6, v7, v2, v8);
}

uint64_t sub_1BF145C08()
{
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_169();
  v4 = (v3 + *(v1 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  return sub_1BF127FE4(v7, v0 + v6, v0 + v3, v0 + v4, v0 + ((v4 + *(*(v2 - 8) + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80)), v8, v9, v2, v10, v5, v11);
}

uint64_t sub_1BF145DAC()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_12_3();
  return sub_1BF126C98(v4, *(v0 + 48), v0 + v3, v0 + ((v3 + *(v1 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80)), v5, v2, v6);
}

uint64_t sub_1BF145E4C()
{
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_168();
  return sub_1BF126FEC(v5, v0 + v3, v0 + v4, v0 + ((v4 + *(v1 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80)), v6, v7, v2, v8, v9);
}

id OUTLINED_FUNCTION_160()
{

  return sub_1BF014EDC();
}

uint64_t sub_1BF146224(uint64_t a1, void (*a2)(double), uint64_t a3, uint64_t a4)
{
  v6 = sub_1BF17AE6C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v13 - v10;
  a2(v9);
  return (*(v7 + 40))(a1, v11, v6);
}

uint64_t sub_1BF146334()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v7 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = sub_1BF1465A8;
  }

  else
  {
    v8 = sub_1BF14649C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1BF14649C()
{
  OUTLINED_FUNCTION_5();
  sub_1BF17A75C();
  *(v0 + 80) = sub_1BF17A74C();
  v2 = sub_1BF17A6AC();

  return MEMORY[0x1EEE6DFA0](sub_1BF14652C, v2, v1);
}

uint64_t sub_1BF14652C()
{
  v1 = *(v0 + 24);

  v1(v2);

  OUTLINED_FUNCTION_9();

  return v3();
}

uint64_t syncOnMain(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  v5 = sub_1BF17AD5C();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_1BF0AAA74;
  v9[5] = v6;
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_0_72();
  v9[2] = v7;
  v9[3] = &block_descriptor_18;
  v8 = _Block_copy(v9);

  dispatch_sync(v5, v8);

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF146700()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v8;
  *(v8 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BF1468B0, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_9();

    return v6();
  }
}

uint64_t sub_1BF1468B0()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t dispatch thunk of ContextType.useOptional<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 24))(a1, a2, a3, a4);
}

{
  return (*(a5 + 32))(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ContextType.useOptional<A>(_:for:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 72))(a1, a2, a3, a4, a5, a6);
}

{
  return (*(a7 + 80))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1BF1469C0()
{
  v1 = *(v0 + 16);

  v1(&v4, v2);

  return v4;
}

id sub_1BF146A08()
{
  v1 = type metadata accessor for BridgedContext();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC13TeaFoundation14BridgedContext_context] = v0;
  v4.receiver = v2;
  v4.super_class = v1;

  return objc_msgSendSuper2(&v4, sel_init);
}

void sub_1BF146A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &a9 - v33;
  OUTLINED_FUNCTION_2_3();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  OUTLINED_FUNCTION_2_0();
  v41 = v40 - v39;
  (*(v30 + 16))(v34, v27, v28);
  OUTLINED_FUNCTION_13_22(v34);
  if (v42)
  {
    (*(v30 + 8))(v34, v28);
  }

  else
  {
    (*(v36 + 32))(v41, v34, v23);
    sub_1BF00B614(v41, v25);
    (*(v36 + 8))(v41, v23);
  }

  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF146C00(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (result)
  {
    v7 = swift_unknownObjectRetain();
    a4(v7, a2, a3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BF146C6C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_35(a1, a2);
  toKey<A>(type:name:)();
  sub_1BF0093DC();
}

void sub_1BF146CD8()
{
  OUTLINED_FUNCTION_32();
  v23 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v22 - v12;
  OUTLINED_FUNCTION_2_3();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  (*(v9 + 16))(v13, v6, v7);
  OUTLINED_FUNCTION_13_22(v13);
  if (v21)
  {
    (*(v9 + 8))(v13, v7);
  }

  else
  {
    (*(v15 + 32))(v20, v13, v2);
    sub_1BF0301F8(v20, v4);
    (*(v15 + 8))(v20, v2);
  }

  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF146E8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result)
  {
    v11 = swift_unknownObjectRetain();
    a6(v11, a2, a3, a4, a5);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BF147080(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7C98] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BF1470D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1BF185530;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t PromiseDeduper.__allocating_init(options:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  PromiseDeduper.init(options:)(a1, v3, v4, v5);
  return v2;
}

TeaFoundation::PromiseDeduperFlags sub_1BF1471AC@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = PromiseDeduperFlags.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BF1471EC@<X0>(uint64_t *a1@<X8>)
{
  result = PromiseDeduperFlags.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BF147214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = a4[6];
  v15 = a4[7];
  __swift_project_boxed_opaque_existential_1(a4 + 3, v16);
  (*(v15 + 8))(v16, v15);
  swift_beginAccess();
  v17 = sub_1BF089924(a1, a4[2]);
  if (v17)
  {
    v18 = v17;
    swift_endAccess();
    v19 = a4[6];
    v20 = a4[7];
    __swift_project_boxed_opaque_existential_1(a4 + 3, v19);
    OUTLINED_FUNCTION_4_35();
    v21(v19, v20);
    if (a3)
    {
      if (qword_1ED8EF4B0 != -1)
      {
        OUTLINED_FUNCTION_0_74(&qword_1ED8EF4B0);
      }

      v22 = sub_1BF1797FC();
      __swift_project_value_buffer(v22, qword_1ED8F52B0);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v23 = sub_1BF1797DC();
      v24 = sub_1BF17ACDC();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = OUTLINED_FUNCTION_70();
        v57 = OUTLINED_FUNCTION_44_0();
        *(v25 + 4) = OUTLINED_FUNCTION_5_36(4.8149e-34, v57, v26, v27, v28, v29, v30, v31, v32, v53, v54);
        _os_log_impl(&dword_1BEFE0000, v23, v24, "Using existing Promise for key: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v57);
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_28();
      }
    }

    else
    {
    }
  }

  else
  {
    swift_endAccess();
    if (a3)
    {
      if (qword_1ED8EF4B0 != -1)
      {
        OUTLINED_FUNCTION_0_74(&qword_1ED8EF4B0);
      }

      v33 = sub_1BF1797FC();
      __swift_project_value_buffer(v33, qword_1ED8F52B0);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v34 = sub_1BF1797DC();
      v35 = sub_1BF17ACDC();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = OUTLINED_FUNCTION_70();
        v58 = OUTLINED_FUNCTION_44_0();
        *(v36 + 4) = OUTLINED_FUNCTION_5_36(4.8149e-34, v58, v37, v38, v39, v40, v41, v42, v43, v53, a7);
        _os_log_impl(&dword_1BEFE0000, v34, v35, "Creating new Promise for key: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v58);
        a7 = v55;
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_28();
      }
    }

    a5(a7);
    OUTLINED_FUNCTION_58();
    v44 = swift_allocObject();
    *(v44 + 16) = a8;
    *(v44 + 24) = a9;
    v45 = qword_1ED8F0210;

    if (v45 != -1)
    {
      OUTLINED_FUNCTION_2_35(&qword_1ED8F0210);
    }

    v46 = off_1ED8F0218;
    v18 = sub_1BF0DAFF4();

    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v56 = a4[2];
    sub_1BF082D70();
    a4[2] = v56;
    swift_endAccess();
    v47 = a4[6];
    v48 = a4[7];
    __swift_project_boxed_opaque_existential_1(a4 + 3, v47);
    OUTLINED_FUNCTION_4_35();
    v49(v47, v48);
    OUTLINED_FUNCTION_58();
    v50 = swift_allocObject();
    *(v50 + 16) = a4;
    *(v50 + 24) = a1;

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF09A64C();

    OUTLINED_FUNCTION_58();
    v51 = swift_allocObject();
    *(v51 + 16) = a4;
    *(v51 + 24) = a1;

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BEFF77FC(v46, sub_1BF0E30D4, v51);
  }

  return v18;
}

uint64_t sub_1BF1476C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[6];
  v5 = a2[7];
  v6 = *a2;
  __swift_project_boxed_opaque_existential_1(a2 + 3, v4);
  (*(v5 + 8))(v4, v5);
  v7 = a2[8];
  if ((v7 & 1) == 0 && (!v7 || (v7 & 2) != 0))
  {
    swift_beginAccess();
    type metadata accessor for Promise(255, *(v6 + 88), v8, v9);
    sub_1BF179E9C();
    sub_1BF179D7C();
    swift_endAccess();
  }

  return sub_1BF0304EC(a2);
}

uint64_t PromiseDeduper.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  return v0;
}

uint64_t PromiseDeduper.__deallocating_deinit()
{
  PromiseDeduper.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

unint64_t sub_1BF147868()
{
  result = qword_1EBDCC3A8;
  if (!qword_1EBDCC3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC3A8);
  }

  return result;
}

unint64_t sub_1BF1478C0()
{
  result = qword_1EBDCC3B0;
  if (!qword_1EBDCC3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC3B0);
  }

  return result;
}

BOOL sub_1BF147940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  v9[0] = a5;
  v9[1] = a6;
  v9[2] = a7;
  v9[3] = a8;
  return (static Version.< infix(_:_:)(v10, v9, a3, a4, a5, a6, a7, a8) & 1) == 0;
}

BOOL sub_1BF147980()
{
  OUTLINED_FUNCTION_4_36();
  v8 = OUTLINED_FUNCTION_1_58(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14);
  return (static VersionQualifier.< infix(_:_:)(v8, v9) & 1) == 0;
}

BOOL sub_1BF1479F4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  return !static VersionNumber.< infix(_:_:)(&v4, &v3);
}

BOOL sub_1BF147A64(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  return static VersionNumber.< infix(_:_:)(&v3, &v4);
}

void __swiftcall Version.init(base:qualifier:)(TeaFoundation::Version *__return_ptr retstr, TeaFoundation::VersionNumber base, TeaFoundation::VersionQualifier_optional *qualifier)
{
  rawValue = qualifier->value.version.value.numbers._rawValue;
  retstr->base.numbers._rawValue = *base.numbers._rawValue;
  retstr->qualifier.value.name = qualifier->value.name;
  retstr->qualifier.value.version.value.numbers._rawValue = rawValue;
}

void __swiftcall Version.init(_:_:_:)(TeaFoundation::Version *__return_ptr retstr, Swift::OpaquePointer a2, Swift::String a3, Swift::OpaquePointer_optional a4)
{
  retstr->base.numbers = a2;
  retstr->qualifier.value.name = a3;
  retstr->qualifier.value.version.value.numbers._rawValue = a4.value._rawValue;
}

void __swiftcall Version.init(_:)(TeaFoundation::Version_optional *__return_ptr retstr, Swift::String a2)
{
  sub_1BF024410(a2._countAndFlagsBits, a2._object, v4);

  v3 = v4[1];
  *&retstr->value.base.numbers._rawValue = v4[0];
  *&retstr->value.qualifier.value.name._object = v3;
}

uint64_t RangeReplaceableCollection<>.applyChanges<A, B>(_:elementConstructor:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v104 = a3;
  v103 = a2;
  v129 = a1;
  v109 = a10;
  v121 = a7;
  v13 = *(a7 + 8);
  v127 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_3();
  v128 = v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_1_16();
  v98 = v17;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v18, v19);
  v112 = &v94 - v20;
  v105 = a5;
  OUTLINED_FUNCTION_2_3();
  v126 = v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_1_16();
  v120 = v24;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v25, v26);
  v102 = &v94 - v27;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v28, v29);
  v101 = &v94 - v30;
  v111 = a8;
  v32 = type metadata accessor for CollectionChange(255, a5, a8, v31);
  v96 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v95 = v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v94 - v36;
  OUTLINED_FUNCTION_2_3();
  v122 = v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  OUTLINED_FUNCTION_1_16();
  v130 = v41;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v94 - v44;
  v108 = a9;
  v46 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_3();
  v117 = v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  OUTLINED_FUNCTION_1_16();
  v119 = v50;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v51, v52);
  v118 = &v94 - v53;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v94 - v56;
  sub_1BF17ABAC();
  v110 = a6;
  v58 = v105;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v129 = 0;
  v124 = (v122 + 2);
  v125 = (v122 + 4);
  v123 = (v126 + 4);
  v97 = (v128 + 2);
  v99 = (v128 + 1);
  ++v126;
  ++v122;
  v128 = (v117 + 8);
  v115 = (v117 + 32);
  v116 = (v117 + 16);
  v107 = v13;
  v106 = v37;
  v117 = AssociatedConformanceWitness;
  v114 = v45;
  v113 = v57;
  while (1)
  {
    sub_1BF17AB3C();
    if (__swift_getEnumTagSinglePayload(v37, 1, v32) == 1)
    {
      v91 = OUTLINED_FUNCTION_5_38();
      v92(v91);
      return (*(v95 + 8))(v37, v96);
    }

    (*v125)(v45, v37, v32);
    (*v124)(v130, v45, v32);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v72 = v101;
      (*v123)(v101, v130, v58);
      v103(v72);
      sub_1BF17AC0C();
      v71 = v72;
      goto LABEL_15;
    }

    v61 = v127;
    if (EnumCaseMultiPayload != 1)
    {
      break;
    }

    v62 = v102;
    v63 = (*v123)(v102, v130, v58);
    MEMORY[0x1EEE9AC00](v63, v64);
    *(&v94 - 8) = v61;
    *(&v94 - 7) = v58;
    v65 = v121;
    *(&v94 - 6) = v110;
    *(&v94 - 5) = v65;
    OUTLINED_FUNCTION_3_43(&v94);
    *(v67 - 16) = *(v66 - 256);
    *(v67 - 8) = v62;
    v68 = v129;
    sub_1BF17AABC();
    v129 = v68;
    if (v132 != 1)
    {
      OUTLINED_FUNCTION_4_37();
      v70 = *(v69 - 256);
      sub_1BF17AC2C();
      (*v99)(v70, AssociatedTypeWitness);
    }

    v71 = v62;
    v37 = v106;
LABEL_14:
    v45 = v114;
    v57 = v113;
LABEL_15:
    (*v126)(v71, v58);
    (*v116)(v119, v57, v46);
    v88 = v118;
    sub_1BF17AB8C();
    (*v122)(v45, v32);
    v89 = OUTLINED_FUNCTION_5_38();
    v90(v89);
    (*v115)(v57, v88, v46);
  }

  v73 = *(v130 + *(swift_getTupleTypeMetadata2() + 48));
  (*v123)(v120);
  v74 = sub_1BF17AA2C();
  if (v73 < v74)
  {
    MEMORY[0x1EEE9AC00](v74, v75);
    *(&v94 - 8) = v61;
    *(&v94 - 7) = v76;
    v77 = v121;
    *(&v94 - 6) = v110;
    *(&v94 - 5) = v77;
    OUTLINED_FUNCTION_3_43(&v94);
    v79 = *(v78 - 256);
    v80 = v120;
    *(v81 - 16) = v79;
    *(v81 - 8) = v80;
    v82 = v129;
    sub_1BF17AABC();
    v129 = v82;
    if (v132 == 1)
    {
      v71 = v120;
    }

    else
    {
      OUTLINED_FUNCTION_4_37();
      v84 = *(v83 - 256);
      sub_1BF17AC2C();
      v85 = AssociatedTypeWitness;
      (*v97)(v98, v84, AssociatedTypeWitness);
      v131 = v73;
      v86 = v84;
      v37 = v106;
      v87 = v120;
      sub_1BF17AC1C();
      (*v99)(v86, v85);
      v71 = v87;
    }

    v58 = v105;
    goto LABEL_14;
  }

  (*v122)(v114, v32);
  (*v128)(v113, v46);
  return (*v126)(v120, v58);
}

uint64_t sub_1BF148544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = v11(AssociatedTypeWitness, a9);
  v15 = v14;
  if (v13 == (*(a7 + 8))(a4, a7) && v15 == v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1BF17B86C();
  }

  return v18 & 1;
}

uint64_t RangeReplaceableCollection<>.applyChanges<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return RangeReplaceableCollection<>.applyChanges<A, B>(_:elementConstructor:)(a1, sub_1BF1487D4, v14, a2, AssociatedTypeWitness, a3, a4, a6, a5, a6);
}

uint64_t sub_1BF14874C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a3, a1, AssociatedTypeWitness);
}

uint64_t sub_1BF1487E4(uint64_t a1)
{
  TupleTypeMetadata2 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_1BF148880(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v4 <= v3)
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1BF1489AC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v5)
  {
    v5 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t SafeishArray.encode(to:)(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_20(a1);
  v2 = sub_1BF17BBFC();
  OUTLINED_FUNCTION_23_9(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v15);
  sub_1BF17A65C();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_31(&v15, v11, WitnessTable);

  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t SafeishSet.encode(to:)(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_20(a1);
  v2 = sub_1BF17BBFC();
  OUTLINED_FUNCTION_23_9(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v15);
  sub_1BF17A9AC();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_31(&v15, v11, WitnessTable);

  return __swift_destroy_boxed_opaque_existential_1(v14);
}

void SafeishDictionary.init(from:)()
{
  OUTLINED_FUNCTION_25_11();
  v121 = v0;
  v124 = v1;
  v3 = v2;
  v119 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v102 = v11;
  OUTLINED_FUNCTION_20_16();
  v109 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v101 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_4_1();
  v108 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v111 = &v94 - v19;
  v127 = v6;
  v118 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v107 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v112 = v23;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v24, v25);
  v123 = &v94 - v26;
  OUTLINED_FUNCTION_2_3();
  v114 = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_4_1();
  v106 = v30 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v122 = &v94 - v34;
  v104 = v8;
  v36 = type metadata accessor for SafeishCodingKey(0, v8, v3, v35);
  OUTLINED_FUNCTION_1();
  v125 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40, v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v94 - v44;
  WitnessTable = swift_getWitnessTable();
  v115 = type metadata accessor for SafeishKeyedDecodingContainer(0, v36, WitnessTable, v47);
  OUTLINED_FUNCTION_1();
  v126 = v48;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v94 - v51;
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v53 = v121;
  Decoder.safeishContainer<A>(keyedBy:)();
  if (v53)
  {
LABEL_2:
    __swift_destroy_boxed_opaque_existential_1(v10);
LABEL_6:
    OUTLINED_FUNCTION_24_1();
    return;
  }

  v54 = v112;
  v120 = v45;
  v121 = 0;
  v95 = v39;
  v105 = &v94 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v10;
  v55 = v104;
  swift_getTupleTypeMetadata2();
  sub_1BF17A56C();
  v131 = sub_1BF179DAC();
  v56 = v115;
  SafeishKeyedDecodingContainer.allKeys.getter(v115);
  sub_1BF17A5AC();

  v103 = sub_1BF179E9C();
  sub_1BF179D9C();
  v57 = SafeishKeyedDecodingContainer.allKeys.getter(v56);
  v58 = sub_1BF17A4EC();
  v130 = v58;
  v59 = v52;
  if (v58 == sub_1BF17A5AC())
  {
    v60 = v126;
LABEL_5:

    (*(v60 + 8))(v59, v115);
    *v102 = v131;
    __swift_destroy_boxed_opaque_existential_1(v96);
    goto LABEL_6;
  }

  v119 = (v125 + 16);
  v116 = (v54 + 2);
  v117 = (v125 + 32);
  v113 = (v114 + 4);
  v100 = v118 + 4;
  v99 = (v114 + 2);
  v98 = v118 + 2;
  v97 = v118 + 1;
  ++v114;
  v118 = (v125 + 8);
  v101 += 8;
  v112 = v54 + 1;
  v62 = v110;
  v61 = v111;
  v63 = v105;
  v128 = v52;
  while (1)
  {
    v64 = v55;
    v65 = sub_1BF17A58C();
    sub_1BF17A51C();
    if (v65)
    {
      v66 = v120;
      (*(v125 + 16))(v120, v57 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v58, v36);
      goto LABEL_10;
    }

    v89 = sub_1BF17B23C();
    v66 = v120;
    if (v95 != 8)
    {
      break;
    }

    v129 = v89;
    (*v119)(v120, &v129, v36);
    swift_unknownObjectRelease();
LABEL_10:
    v55 = v64;
    sub_1BF17A62C();
    (*v117)(v63, v66, v36);
    v67 = v63;
    v68 = v123;
    (*v116)(v123, v67, v62);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v68, 1, v64);
    v70 = v127;
    if (EnumTagSinglePayload == 1)
    {
      (*v118)(v67, v36);
      (*v112)(v68, v62);
      v63 = v67;
    }

    else
    {
      (*v113)(v122, v68, v55);
      v71 = v121;
      SafeishKeyedDecodingContainer.decode<A>(_:forKey:)(v70, v67, v115);
      v63 = v67;
      if (v71)
      {

        v90 = OUTLINED_FUNCTION_22_13();
        v91(v90);
        v92 = OUTLINED_FUNCTION_5_39();
        v93(v92);

        (*(v126 + 8))(v128, v115);
        v10 = v96;
        goto LABEL_2;
      }

      v121 = 0;
      if (__swift_getEnumTagSinglePayload(v61, 1, v70) == 1)
      {
        v72 = OUTLINED_FUNCTION_22_13();
        v73(v72);
        v74 = OUTLINED_FUNCTION_5_39();
        v75(v74);
        OUTLINED_FUNCTION_16_19();
        v77 = v61;
        v78 = v109;
      }

      else
      {
        OUTLINED_FUNCTION_16_19();
        v79 = v107;
        v80(v107, v61, v70);
        OUTLINED_FUNCTION_16_19();
        v81 = v122;
        v82(v106, v122, v55);
        OUTLINED_FUNCTION_16_19();
        v83 = v108;
        v84(v108, v79, v70);
        __swift_storeEnumTagSinglePayload(v83, 0, 1, v70);
        v61 = v111;
        sub_1BF179EBC();
        OUTLINED_FUNCTION_16_19();
        v85 = v79;
        v62 = v110;
        v86(v85, v70);
        v87 = v81;
        v63 = v105;
        (*v114)(v87, v55);
        v77 = OUTLINED_FUNCTION_5_39();
      }

      v76(v77, v78);
    }

    v60 = v126;
    v59 = v128;
    v88 = sub_1BF17A5AC();
    v58 = v130;
    if (v130 == v88)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

void Decoder.safeishContainer<A>(keyedBy:)()
{
  OUTLINED_FUNCTION_25_11();
  v9 = v1;
  OUTLINED_FUNCTION_20_16();
  sub_1BF17B63C();
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v8 - v4;
  v6 = sub_1BF17BBCC();
  v7 = Dictionary<>.disableSafeishSafety.getter(v6);

  sub_1BF17BBDC();
  if (!v0)
  {
    SafeishKeyedDecodingContainer.init(safe:container:)((v7 & 1) == 0, v5, v9);
  }

  OUTLINED_FUNCTION_24_1();
}

uint64_t SafeishKeyedDecodingContainer.decode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_38(a1, a2, a3);
  OUTLINED_FUNCTION_7_31();
  sub_1BF17B5FC();
  if (!v3)
  {
    return OUTLINED_FUNCTION_9_27();
  }

  OUTLINED_FUNCTION_19_14();
  if (v4)
  {
    OUTLINED_FUNCTION_10_30();

    return OUTLINED_FUNCTION_2_59();
  }

  else
  {
    v5 = sub_1BF14A42C();
    v6 = OUTLINED_FUNCTION_26_10(&type metadata for SafeishError, v5);
    return OUTLINED_FUNCTION_18_11(v6, v7);
  }
}

uint64_t SafeishDictionary.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *v2;
  OUTLINED_FUNCTION_15_20(a1);
  sub_1BF17BBFC();
  v8 = v3;
  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_1BF179E9C();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_31(&v8, v5, WitnessTable);

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_1BF149960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_20_16();
  v11 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_4_3();
  v17 = type metadata accessor for SafeishCodingKey(0, a3, a4, v16);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_13_23();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, a3);
  v22 = v6 + *(v17 + 40);
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = (v6 + *(v17 + 36));
  *v23 = a1;
  v23[1] = a2;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF17B7FC();
  (*(v13 + 40))(v6, v5, v11);
  (*(v19 + 16))(a5, v6, v17);
  __swift_storeEnumTagSinglePayload(a5, 0, 1, v17);
  return (*(v19 + 8))(v6, v17);
}

uint64_t sub_1BF149B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v10 = type metadata accessor for SafeishCodingKey(255, a2, a3, a5);
  v11 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_2_3();
  v17 = v16;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_13_23();
  v20 = sub_1BF17B6FC();
  sub_1BF149960(v20, v21, a2, a3, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v10))
  {
    (*(v13 + 8))(v5, v11);
    v22 = 1;
  }

  else
  {
    v23 = *(v17 + 32);
    v23(v6, v5, v10);
    v24 = v6 + *(v10 + 40);
    *v24 = a1;
    *(v24 + 8) = 0;
    v23(a4, v6, v10);
    v22 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a4, v22, 1, v10);
}

uint64_t sub_1BF149D0C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v2;
}

uint64_t sub_1BF149D70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BF149DC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SafeishKeyedDecodingContainer.init(safe:container:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a5@<X8>)
{
  *a5 = a1;
  v7 = OUTLINED_FUNCTION_20_16();
  v10 = *(type metadata accessor for SafeishKeyedDecodingContainer(v7, v8, v9, v9) + 36);
  v11 = sub_1BF17B63C();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a5[v10], a2, v11);
}

void sub_1BF149F08(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_1ED8ED798 != -1)
  {
    swift_once();
  }

  v4 = sub_1BF1797FC();
  __swift_project_value_buffer(v4, qword_1ED8F5268);
  v5 = a2;
  oslog = sub_1BF1797DC();
  v6 = sub_1BF17ACBC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    v10 = sub_1BF17BD4C();
    v12 = sub_1BF01A7AC(v10, v11, &v16);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    v13 = a2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_1BEFE0000, oslog, v6, "Ignoring failure to decode %{public}s, error=%{public}@", v7, 0x16u);
    sub_1BF085B60(v8);
    MEMORY[0x1BFB547B0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFB547B0](v9, -1, -1);
    MEMORY[0x1BFB547B0](v7, -1, -1);
  }
}

uint64_t SafeishKeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_38(a1, a2, a3);
  OUTLINED_FUNCTION_7_31();
  result = sub_1BF17B5BC();
  if (v3)
  {
    OUTLINED_FUNCTION_19_14();
    if (v5)
    {
      OUTLINED_FUNCTION_10_30();

      return OUTLINED_FUNCTION_2_59();
    }

    else
    {
      v6 = sub_1BF14A42C();
      v7 = OUTLINED_FUNCTION_26_10(&type metadata for SafeishError, v6);
      return OUTLINED_FUNCTION_18_11(v7, v8);
    }
  }

  return result;
}

uint64_t SafeishSingleValueDecodingContainer.decode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_11_23();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  OUTLINED_FUNCTION_21_13();
  sub_1BF17B8DC();
  if (!v3)
  {
    return OUTLINED_FUNCTION_9_27();
  }

  OUTLINED_FUNCTION_19_14();
  if (v6)
  {
    OUTLINED_FUNCTION_10_30();

    return OUTLINED_FUNCTION_2_59();
  }

  else
  {
    v7 = sub_1BF14A42C();
    v8 = OUTLINED_FUNCTION_26_10(&type metadata for SafeishError, v7);
    return OUTLINED_FUNCTION_18_11(v8, v9);
  }
}

uint64_t sub_1BF14A220(void *a1)
{
  sub_1BF14AC18(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF14AC74();
  sub_1BF17BC1C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1BF14A358@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF14A200();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BF14A384(uint64_t a1)
{
  v2 = sub_1BF14AC74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF14A3C0(uint64_t a1)
{
  v2 = sub_1BF14AC74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1BF14A42C()
{
  result = qword_1EBDCC3B8;
  if (!qword_1EBDCC3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC3B8);
  }

  return result;
}

unint64_t sub_1BF14A480()
{
  result = qword_1ED8EB138;
  if (!qword_1ED8EB138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EB138);
  }

  return result;
}

uint64_t sub_1BF14A528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF14A57C(uint64_t a1)
{
  result = sub_1BF17B63C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BF14A630(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1BF14A670(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BF14A6C8(uint64_t a1)
{
  sub_1BF17AE6C();
  if (v1 <= 0x3F)
  {
    sub_1BF14AB80();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BF14A758(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_31:
    if (v6 < 0x7FFFFFFF)
    {
      v18 = *(((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }

    else
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(result, v5, v4);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
    v10 = (a2 - v7 + 255) >> 8;
    if (v9 <= 3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 2:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v9);
        if (!v14)
        {
          goto LABEL_31;
        }

LABEL_27:
        v15 = (v14 - 1) << (8 * v9);
        if (v9 <= 3)
        {
          v16 = *result;
        }

        else
        {
          v15 = 0;
          v16 = *result;
        }

        result = v7 + (v16 | v15) + 1;
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_1BF14A8E8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(v7 - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 < a3)
  {
    v13 = (a3 - v10 + 255) >> 8;
    if (v12 <= 3)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 3:
LABEL_59:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (a2)
        {
LABEL_34:
          if (v9 < 0x7FFFFFFF)
          {
            v21 = (&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v21 = a2 & 0x7FFFFFFF;
              v21[1] = 0;
            }

            else
            {
              v21[1] = a2 - 1;
            }
          }

          else if (v9 >= a2)
          {
            v22 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v22, v8, v7);
          }

          else
          {
            if (v11 <= 3)
            {
              v18 = ~(-1 << (8 * v11));
            }

            else
            {
              v18 = -1;
            }

            if (v11)
            {
              v19 = v18 & (~v9 + a2);
              if (v11 <= 3)
              {
                v20 = v11;
              }

              else
              {
                v20 = 4;
              }

              bzero(a1, v11);
              switch(v20)
              {
                case 2:
                  *a1 = v19;
                  break;
                case 3:
                  *a1 = v19;
                  a1[2] = BYTE2(v19);
                  break;
                case 4:
                  *a1 = v19;
                  break;
                default:
                  *a1 = v19;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v10 + a2;
    bzero(a1, v12);
    if (v12 <= 3)
    {
      v17 = (v16 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v12 > 3)
    {
      *a1 = v16;
    }

    else
    {
      *a1 = v16;
    }

    switch(v6)
    {
      case 1:
        a1[v12] = v17;
        break;
      case 2:
        *&a1[v12] = v17;
        break;
      case 3:
        goto LABEL_59;
      case 4:
        *&a1[v12] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_1BF14AB80()
{
  if (!qword_1EBDCA940)
  {
    v0 = sub_1BF17AE6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCA940);
    }
  }
}

void sub_1BF14AC18(uint64_t a1)
{
  if (!qword_1EBDCC3C0)
  {
    sub_1BF14AC74();
    v1 = sub_1BF17B6CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDCC3C0);
    }
  }
}

unint64_t sub_1BF14AC74()
{
  result = qword_1EBDCC3C8;
  if (!qword_1EBDCC3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC3C8);
  }

  return result;
}

unint64_t sub_1BF14ACDC()
{
  result = qword_1EBDCC3D0;
  if (!qword_1EBDCC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC3D0);
  }

  return result;
}

unint64_t sub_1BF14AD34()
{
  result = qword_1EBDCC3D8[0];
  if (!qword_1EBDCC3D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDCC3D8);
  }

  return result;
}

uint64_t TrieNode.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  type metadata accessor for TrieNode(255, a1, a2, a3);
  swift_getTupleTypeMetadata2();
  sub_1BF17A56C();
  result = sub_1BF179DAC();
  *(v8 + 16) = result;
  *a4 = v8 | 0x8000000000000000;
  return result;
}

uint64_t TrieNode.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](v1);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF14AEE0(uint64_t a1)
{
  sub_1BF17BB6C();
  TrieNode.Error.hash(into:)();
  return sub_1BF17BB9C();
}

uint64_t TrieNode.insert<A>(_:keyPath:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BF14AFAC(a4, a5);
  sub_1BF14B098(a1, v7, v8, v9, v10, a3);
  return swift_unknownObjectRelease();
}

uint64_t sub_1BF14AFAC(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v4);
  swift_getAssociatedTypeWitness();
  return sub_1BF17B08C();
}

uint64_t sub_1BF14B098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v47 = a1;
  v12 = a6[2];
  v48 = *(v12 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](a1, a2);
  v45 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v50 = &v42 - v16;
  v52 = v17;
  v53 = v18;
  v54 = v19;
  v55 = v20;
  v46 = v20;
  sub_1BF17B07C();
  swift_getWitnessTable();
  if (sub_1BF17AB6C())
  {
    type metadata accessor for TrieNode.Error(0, v12, a6[3], a6[4]);
    swift_getWitnessTable();
    swift_allocError();
    *v21 = 0;
    return swift_willThrow();
  }

  v22 = *v6;
  if ((*v6 & 0x8000000000000000) == 0)
  {
    type metadata accessor for TrieNode.Error(0, v12, a6[3], a6[4]);
    swift_getWitnessTable();
    swift_allocError();
    *v23 = 1;
    return swift_willThrow();
  }

  v44 = v6;
  v56 = *((v22 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v25 = a2;
  v26 = v12;
  v27 = sub_1BF14C494(v50, v25, a3, a4, v46, v12);
  v29 = v28;
  v52 = v27;
  v53 = v30;
  v43 = v30;
  v46 = v31;
  v54 = v31;
  v55 = v28;
  v32 = sub_1BF17AB6C();
  sub_1BF179EAC();
  v33 = v51;
  if ((~v51 & 0xF000000000000007) != 0)
  {
    v36 = v49;
    if ((v32 & 1) == 0)
    {
      v52 = v51;

      sub_1BF14B098(v47, v27, v43, v46, v29, a6);
      if (v36)
      {
        swift_unknownObjectRelease();
        sub_1BF14C6E4(v33);
        goto LABEL_16;
      }

      v49 = v27;

      sub_1BF14C6E4(v33);
LABEL_13:
      v40 = v48;
      v41 = v50;
      (*(v48 + 16))(v45, v50, v26);
      v51 = v52;
      sub_1BF179E9C();

      sub_1BF179EBC();
      swift_unknownObjectRelease();

      (*(v40 + 8))(v41, v26);
      result = swift_allocObject();
      *(result + 16) = v56;
      *v44 = result | 0x8000000000000000;
      return result;
    }

    sub_1BF14C6E4(v51);
LABEL_12:
    v49 = v27;

    v37 = a6[3];
    v38 = swift_allocBox();
    (*(*(v37 - 8) + 16))(v39, v47, v37);
    v52 = v38;
    goto LABEL_13;
  }

  v34 = v49;
  if (v32)
  {
    goto LABEL_12;
  }

  v35 = swift_allocObject();
  swift_getTupleTypeMetadata2();
  sub_1BF17A56C();
  *(v35 + 16) = sub_1BF179DAC();
  v52 = v35 | 0x8000000000000000;
  sub_1BF14B098(v47, v27, v43, v46, v29, a6);
  if (!v34)
  {
    v49 = v27;

    goto LABEL_13;
  }

  swift_unknownObjectRelease();
LABEL_16:

  (*(v48 + 8))(v50, v26);
}

uint64_t TrieNode.findValue<A>(keyPath:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *x8_0@<X8>)
{
  v7 = sub_1BF14AFAC(a3, a4);
  sub_1BF14B614(v7, v8, v9, v10, a2, x8_0);

  return swift_unknownObjectRelease();
}

uint64_t sub_1BF14B614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v7 = a5;
  v49 = *(*(a5 + 16) - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 24);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v6;
  v50 = v18;
  v51 = v19;
  if ((v23 & 0x8000000000000000) == 0)
  {
    v47 = v7;
    v48 = v12;
    v24 = a6;
    v25 = v18;
    v26 = v20;
    v27 = v19;
    v28 = swift_projectBox();
    (*(v15 + 16))(v22, v28, v14);
    v52 = v25;
    v53 = v27;
    v45 = v26;
    v46 = a3;
    v54 = a3;
    v55 = a4;
    sub_1BF17B07C();
    swift_getWitnessTable();
    if (sub_1BF17AB6C())
    {
      (*(v15 + 32))(v24, v22, v14);
      v29 = v24;
      v30 = 0;
      return __swift_storeEnumTagSinglePayload(v29, v30, 1, v14);
    }

    (*(v15 + 8))(v22, v14);
    a6 = v24;
    v7 = v47;
    v12 = v48;
    v20 = v45;
    a3 = v46;
    v18 = v50;
    v19 = v51;
  }

  v52 = v18;
  v53 = v19;
  v54 = a3;
  v55 = a4;
  v31 = v20;
  sub_1BF17B07C();
  swift_getWitnessTable();
  if ((sub_1BF17AB6C() & 1) == 0 && v23 < 0)
  {
    v48 = a6;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v33 = a3;
    v34 = v31;
    v35 = sub_1BF14C494(v12, v50, v51, v33, a4, v31);
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_1BF179EAC();

    v42 = v12;
    v43 = v52;
    if ((~v52 & 0xF000000000000007) != 0)
    {
      sub_1BF14B614(v35, v37, v39, v41, v7, v48);
      swift_unknownObjectRelease();
      (*(v49 + 8))(v42, v34);
      return sub_1BF14C6E4(v43);
    }

    (*(v49 + 8))(v42, v34);
    swift_unknownObjectRelease();
    v29 = v48;
  }

  else
  {
    v29 = a6;
  }

  v30 = 1;
  return __swift_storeEnumTagSinglePayload(v29, v30, 1, v14);
}

Swift::Void __swiftcall TrieNode.removeAll()()
{

  v1 = swift_allocObject();
  swift_getTupleTypeMetadata2();
  sub_1BF17A56C();
  *(v1 + 16) = sub_1BF179DAC();
  *v0 = v1 | 0x8000000000000000;
}

uint64_t TrieNode.removeValue<A>(keyPath:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1BF14AFAC(a3, a4);
  sub_1BF14BA8C(v5, v6, v7, v8, a2);
  return swift_unknownObjectRelease();
}

uint64_t sub_1BF14BA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12 = a5[2];
  MEMORY[0x1EEE9AC00](a1, a2);
  MEMORY[0x1EEE9AC00](v13, v14);
  v18 = *v5;
  if ((*v5 & 0x8000000000000000) == 0)
  {
    type metadata accessor for TrieNode.Error(0, v12, a5[3], a5[4]);
    swift_getWitnessTable();
    swift_allocError();
    *v19 = 2;
    return swift_willThrow();
  }

  v41 = v17;
  v45 = v6;
  v46 = &v38 - v15;
  v43 = v5;
  v44 = v16;
  v52 = *((v18 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v48 = a1;
  v49 = a2;
  v50 = a3;
  v51 = a4;
  sub_1BF17B07C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  WitnessTable = swift_getWitnessTable();
  if (sub_1BF17AB6C())
  {
    type metadata accessor for TrieNode.Error(0, v12, a5[3], a5[4]);
    swift_getWitnessTable();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
  }

  v22 = v46;
  v23 = sub_1BF14C494(v46, a1, a2, a3, a4, v12);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v40 = a5[4];
  sub_1BF179EAC();
  if ((~v48 & 0xF000000000000007) == 0)
  {
    (*(v44 + 8))(v22, v12);

    return swift_unknownObjectRelease();
  }

  v47 = v48;
  v48 = v23;
  v39 = v23;
  v49 = v25;
  v50 = v27;
  v51 = v29;
  v30 = sub_1BF17AB6C();
  if (v47 < 0)
  {
    v33 = v45;
    v31 = v43;
    if ((v30 & 1) == 0)
    {
      sub_1BF14BA8C(v39, v25, v27, v29, a5);
      if (v33)
      {
        (*(v44 + 8))(v46, v12);
        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      v31 = v43;

      v35 = v47;
      v48 = v47;
      if (sub_1BF14C46C(a5) >= 1)
      {
        v36 = v44;
        v37 = v46;
        (*(v44 + 16))(v41, v46, v12);
        v48 = v35;
        sub_1BF179E9C();

        sub_1BF179EBC();
        swift_unknownObjectRelease();
        (*(v36 + 8))(v37, v12);
        goto LABEL_13;
      }

LABEL_12:
      sub_1BF179E9C();
      v34 = v46;
      sub_1BF179D7C();
      swift_unknownObjectRelease();
      sub_1BF14C6E4(v48);
      (*(v44 + 8))(v34, v12);
LABEL_13:

      result = swift_allocObject();
      *(result + 16) = v52;
      *v31 = result | 0x8000000000000000;
      return result;
    }

LABEL_11:

    goto LABEL_12;
  }

  v31 = v43;
  if (v30)
  {
    goto LABEL_11;
  }

  type metadata accessor for TrieNode.Error(0, v12, a5[3], v40);
  swift_getWitnessTable();
  swift_allocError();
  *v32 = 2;
  swift_willThrow();
  swift_unknownObjectRelease();
  (*(v44 + 8))(v46, v12);
LABEL_16:
}

uint64_t TrieNode.traverse(_:_:depth:)(void (*a1)(void, void), uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v70 = a3;
  v71 = a5;
  v74 = a4;
  v10 = *(a6 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = sub_1BF17AE6C();
  MEMORY[0x1EEE9AC00](v15, v16);
  MEMORY[0x1EEE9AC00](v18, v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a6 + 24);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v29 = v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *v6;
  if (*v6 < 0)
  {
    v76 = v25;
    v67 = v27;
    v73 = TupleTypeMetadata2;
    v62 = v26;
    v63 = a2;
    v64 = a1;
    v33 = *((v30 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v34 = *(v33 + 64);
    v68 = v33 + 64;
    v69 = v23;
    v35 = 1 << *(v33 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & v34;
    v38 = (v35 + 63) >> 6;
    v58[1] = v11 + 16;
    v59 = v33;
    v75 = (v11 + 32);
    v66 = (v24 + 32);
    v39 = __OFADD__(v71, 1);
    v65 = v39;
    v60 = (v11 + 8);
    v61 = v71 + 1;
    result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v40 = 0;
    v41 = v10;
    v42 = v13;
    v72 = v13;
    while (1)
    {
      v43 = v69;
      v44 = v76;
      if (!v37)
      {
        break;
      }

      v45 = v40;
LABEL_16:
      v48 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v49 = v48 | (v45 << 6);
      v50 = v59;
      (*(v11 + 16))(v42, *(v59 + 48) + *(v11 + 72) * v49, v41);
      v51 = *(*(v50 + 56) + 8 * v49);
      v52 = *(v73 + 48);
      v53 = v42;
      v47 = v73;
      (*(v11 + 32))(v43, v53, v41);
      *(v43 + v52) = v51;
      __swift_storeEnumTagSinglePayload(v43, 0, 1, v47);

      v46 = v74;
      v44 = v76;
LABEL_17:
      (*v66)(v44, v43, v67);
      if (__swift_getEnumTagSinglePayload(v44, 1, v47) == 1)
      {
      }

      v54 = v11;
      v55 = *(v44 + *(v47 + 48));
      v42 = v72;
      (*v75)(v72, v44, v41);
      v56 = v41;
      v57 = v70;
      result = v70(v42, v71);
      v77 = v55;
      if (v65)
      {
        goto LABEL_24;
      }

      TrieNode.traverse(_:_:depth:)(v64, v63, v57, v46, v61, v62);
      (*v60)(v42, v56);

      v41 = v56;
      v11 = v54;
    }

    v47 = v73;
    v46 = v74;
    while (1)
    {
      v45 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v45 >= v38)
      {
        __swift_storeEnumTagSinglePayload(v69, 1, 1, v73);
        v37 = 0;
        goto LABEL_17;
      }

      v37 = *(v68 + 8 * v45);
      ++v40;
      if (v37)
      {
        v40 = v45;
        v42 = v72;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    v31 = swift_projectBox();
    (*(v20 + 16))(v29, v31, v19);
    a1(v29, v71);
    return (*(v20 + 8))(v29, v19);
  }

  return result;
}

uint64_t sub_1BF14C46C(uint64_t a1)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {
    return sub_1BF179DFC();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF14C494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1BF17B02C();
  sub_1BF17B09C();
  sub_1BF17B07C();
  swift_getWitnessTable();
  sub_1BF084344();
  swift_unknownObjectRetain();
  sub_1BF17AB8C();
  return v7;
}

uint64_t sub_1BF14C5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_1BF14C600(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BF14C6E4(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t String.write(to:)(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_8_32(a1, a2);
  v4 = sub_1BF01A91C(v2, v3);
  v12 = OUTLINED_FUNCTION_5_40(v4, v5, v6, v7, v8, v9, v10, v11, v4[2], v16);
  v14 = v13;
  sub_1BF17939C();
  sub_1BF014E18(v12, v14);
  sub_1BF0E3740(v4);
}

uint64_t Dictionary<>.write(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v31 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_32(a1, a2);
  v21 = sub_1BF179DFC();
  v15 = sub_1BF088784(&v21, v22);
  v17 = v16;
  sub_1BF17939C();
  sub_1BF014E18(v15, v17);
  v21 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v29 = a9;
  v30 = a1;
  sub_1BF179E9C();
  swift_getWitnessTable();
  return sub_1BF17A41C();
}

void static Dictionary<>.read(from:)()
{
  OUTLINED_FUNCTION_25_11();
  v56 = v1;
  v57 = v2;
  v55 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1BF17AE6C();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v44 - v12;
  OUTLINED_FUNCTION_2_3();
  v49 = v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_2_3();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_4_1();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v44 - v29;
  v31 = sub_1BF05FFE8(v9);
  if (v0)
  {
    goto LABEL_11;
  }

  v45 = v21;
  v54 = v9;
  if (v31 < 0)
  {
    v37 = sub_1BF0E5CAC();
    OUTLINED_FUNCTION_26_10(&type metadata for BinaryDecoder.Error, v37);
    v36 = 1;
    goto LABEL_6;
  }

  v32 = v54;
  v53 = v31;
  v33 = MEMORY[0x1BFB51150](*v54, v54[1]);
  if (v33 < v53)
  {
    v34 = sub_1BF0E5CAC();
    OUTLINED_FUNCTION_26_10(&type metadata for BinaryDecoder.Error, v34);
    v36 = 2;
LABEL_6:
    *v35 = v36;
    swift_willThrow();
    goto LABEL_11;
  }

  v51 = v5;
  v38 = 0;
  sub_1BF179CEC();
  v39 = v56;
  v52 = v56 + 8;
  v48 = (v45 + 16);
  v47 = (v49 + 16);
  v46 = (v49 + 8);
  v49 = v45 + 8;
  v50 = v57 + 8;
  while (v53 != v38)
  {
    if (__OFADD__(v38, 1))
    {
      __break(1u);
      return;
    }

    (*(v39 + 8))(v32, v7);
    v40 = v32;
    v41 = v51;
    (*(v57 + 8))(v40, v51);
    (*v48)(v26, v30, v7);
    (*v47)(v13, v19, v41);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v41);
    sub_1BF179E9C();
    sub_1BF179EBC();
    (*v46)(v19, v41);
    v42 = OUTLINED_FUNCTION_7_32();
    v43(v42);
    ++v38;
    v39 = v56;
    v32 = v54;
  }

LABEL_11:
  OUTLINED_FUNCTION_24_1();
}

uint64_t Array<A>.write(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_32(a1, a2);
  v3 = sub_1BF17A5AC();
  v6 = OUTLINED_FUNCTION_10_31(v3, v4, v5);
  v8 = v7;
  sub_1BF17939C();
  sub_1BF014E18(v6, v8);
  sub_1BF17A65C();
  WitnessTable = swift_getWitnessTable();
  return OUTLINED_FUNCTION_4_38(WitnessTable, v10);
}

void sub_1BF14CE10(void *a1@<X8>)
{
  static Array<A>.read(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1BF14CE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = (*(a7 + 8))(a2, a3, a7, a4, a5, a6);
  if (!v9)
  {
    swift_getTupleTypeMetadata2();
    return (*(a9 + 8))(a2, a4, a9);
  }

  return result;
}

void sub_1BF14CF38(void *a1@<X8>)
{
  static Dictionary<>.read(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t Set<>.write(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8_32(a1, a2);
  v4 = sub_1BF17A92C();
  v7 = OUTLINED_FUNCTION_10_31(v4, v5, v6);
  v9 = v8;
  sub_1BF17939C();
  sub_1BF014E18(v7, v9);
  sub_1BF17A9AC();
  WitnessTable = swift_getWitnessTable();
  return OUTLINED_FUNCTION_4_38(WitnessTable, v11);
}

void static Set<>.read(from:)()
{
  OUTLINED_FUNCTION_25_11();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_4_1();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v35 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v35 - v22;
  v25 = sub_1BF05FFE8(v24);
  if (v0)
  {
    goto LABEL_7;
  }

  if (v25 < 0)
  {
    v30 = sub_1BF0E5CAC();
    OUTLINED_FUNCTION_26_10(&type metadata for BinaryDecoder.Error, v30);
    v29 = 1;
    goto LABEL_6;
  }

  v38 = v25;
  v26 = MEMORY[0x1BFB51150](*v8, v8[1]);
  if (v26 < v38)
  {
    v27 = sub_1BF0E5CAC();
    OUTLINED_FUNCTION_26_10(&type metadata for BinaryDecoder.Error, v27);
    v29 = 2;
LABEL_6:
    *v28 = v29;
    swift_willThrow();
    goto LABEL_7;
  }

  v36 = v8;
  v35[1] = v4;
  v31 = 0;
  sub_1BF179D1C();
  v37 = v2;
  v35[2] = v2 + 8;
  v32 = (v10 + 16);
  v33 = (v10 + 8);
  while (v38 != v31)
  {
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      return;
    }

    (*(v37 + 8))(v36, v6);
    (*v32)(v15, v23, v6);
    sub_1BF17A9AC();
    sub_1BF17A94C();
    v34 = *v33;
    (*v33)(v19, v6);
    v34(v23, v6);
    ++v31;
  }

LABEL_7:
  OUTLINED_FUNCTION_24_1();
}

void sub_1BF14D300(void *a1@<X8>)
{
  static Set<>.read(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t Optional<A>.write(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v15 + 16))(v14, v16, v12);
  if (__swift_getEnumTagSinglePayload(v14, 1, v6) == 1)
  {
    v25 = 0;
    v17 = sub_1BF088784(&v25, &v26);
    v19 = v18;
    sub_1BF17939C();
    return sub_1BF014E18(v17, v19);
  }

  else
  {
    (*(v7 + 32))(v9, v14, v6);
    v26 = 1;
    v21 = sub_1BF088784(&v26, &v27);
    v23 = v22;
    sub_1BF17939C();
    sub_1BF014E18(v21, v23);
    (*(a4 + 8))(a1, v6, a4);
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t Date.write(to:)(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = sub_1BF17944C();
  v10 = OUTLINED_FUNCTION_5_40(v1, v2, v3, v4, v5, v6, v7, v8, v9, v14);
  v12 = v11;
  sub_1BF17939C();
  return sub_1BF014E18(v10, v12);
}

uint64_t sub_1BF14D6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  v8 = *(a2 + 16);
  result = v7(a1, v8, a4);
  if (!v4)
  {
    return v7(a1, v8, a4);
  }

  return result;
}

void sub_1BF14D788()
{
  OUTLINED_FUNCTION_25_11();
  v44 = v1;
  v45 = v2;
  v4 = v3;
  v46 = v5;
  v7 = v6;
  v9 = v8;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2_3();
  v42 = v11;
  v43 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  OUTLINED_FUNCTION_4_1();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v39 - v18;
  OUTLINED_FUNCTION_2_3();
  v47 = v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_4_1();
  v48 = (v23 - v24);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v39 - v28;
  v30 = *(v4 + 8);
  v30(v9, v7, v4, v27);
  if (v0)
  {
    goto LABEL_4;
  }

  v41 = v19;
  v49 = v15;
  (v30)(v9, v7, v4);
  v31 = sub_1BF179FAC();
  v32 = v47;
  if (v31)
  {
    v33 = *(v47 + 32);
    v34 = v41;
    v33(v41, v29, v7);
    v35 = v43;
    v33(&v34[*(v43 + 48)], v48, v7);
    v40 = v33;
    v36 = v42;
    (*(v42 + 16))(v49, v34, v35);
    v39 = *(v35 + 48);
    v33(v45, v49, v7);
    v48 = *(v32 + 8);
    v48(&v49[v39], v7);
    (*(v36 + 32))(v49, v34, v35);
    v37 = *(v35 + 48);
    v38 = v44(0, v7, v46);
    v40(&v45[*(v38 + 36)], &v49[v37], v7);
    v48(v49, v7);
LABEL_4:
    OUTLINED_FUNCTION_24_1();
    return;
  }

  __break(1u);
}

uint64_t static Locale.read(from:)(uint64_t *a1)
{
  result = static String.read(from:)(a1);
  if (!v1)
  {
    return sub_1BF17950C();
  }

  return result;
}

uint64_t sub_1BF14DCDC(uint64_t a1, uint64_t (*a2)(void))
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2();
  v4 = sub_1BF01A91C(v2, v3);
  v12 = OUTLINED_FUNCTION_5_40(v4, v5, v6, v7, v8, v9, v10, v11, v4[2], v16);
  v14 = v13;
  sub_1BF17939C();
  sub_1BF014E18(v12, v14);
  sub_1BF0E3740(v4);
}

uint64_t sub_1BF14DDFC@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  sub_1BF0150C8(0, a2, a3);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v21 - v15;
  result = static String.read(from:)(a1);
  if (!v6)
  {
    a4(result);

    v18 = a5(0);
    if (__swift_getEnumTagSinglePayload(v16, 1, v18) == 1)
    {
      sub_1BF14E03C(v16, a2, a3);
      v19 = sub_1BF0E5CAC();
      OUTLINED_FUNCTION_26_10(&type metadata for BinaryDecoder.Error, v19);
      *v20 = 1;
      return swift_willThrow();
    }

    else
    {
      return (*(*(v18 - 8) + 32))(a6, v16, v18);
    }
  }

  return result;
}

uint64_t sub_1BF14E03C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BF0150C8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BF14E0C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void sub_1BF14E100(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_41();
  v4 = *(v3 + 80);
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_4_39();
  UnfairLock.lock()();
  sub_1BF005128(v2);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v4);
  v8 = OUTLINED_FUNCTION_59_0();
  v9(v8);
  if (EnumTagSinglePayload == 1)
  {

    v10 = OUTLINED_FUNCTION_41_0();
    sub_1BF14E0C8(v10, v11);
  }

  sub_1BF032AC0(v12);
  OUTLINED_FUNCTION_55();
}

TeaFoundation::LazyOptions sub_1BF14E23C@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = LazyOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BF14E27C@<X0>(uint64_t *a1@<X8>)
{
  result = LazyOptions.rawValue.getter();
  *a1 = result;
  return result;
}

void UnsafeLazy.pipe(_:)()
{
  OUTLINED_FUNCTION_32();
  v44 = v1;
  v45 = v2;
  v46 = *v0;
  v3 = v46;
  v4 = *(v46 + 80);
  OUTLINED_FUNCTION_2_3();
  v43 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v10 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v42 - v13;
  v17 = type metadata accessor for UnsafeLazy.Loader(0, v4, v15, v16);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_4_1();
  v24 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (&v42 - v27);
  v29 = *(v3 + 88);
  OUTLINED_FUNCTION_3_5(&v0[v29], &v47);
  (*(v19 + 16))(v28, &v0[v29], v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v36 = v43;
      v42 = *(v43 + 32);
      v42(v14, v28, v4);
      (*(v36 + 16))(v10, v14, v4);
      v37 = (*(v36 + 80) + 24) & ~*(v36 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = v4;
      v42((v38 + v37), v10, v4);
      *v24 = sub_1BF14F44C;
      v24[1] = v38;
      v39 = v45;
      v24[2] = v44;
      v24[3] = v39;
      swift_storeEnumTagMultiPayload();

      sub_1BF0590BC(v24);
      v40 = OUTLINED_FUNCTION_26_11();
      v41(v40);
      goto LABEL_7;
    }

    v31 = swift_allocObject();
    v32 = v44;
    v33 = v45;
    *(v31 + 16) = v4;
    *(v31 + 24) = v32;
    *(v31 + 32) = v33;
    v34 = *v28;
    *(v31 + 40) = v28[1];
    *v24 = v34;
    v24[2] = sub_1BF14F43C;
    v24[3] = v31;
  }

  else
  {
    *v24 = *v28;
    v35 = v45;
    v24[2] = v44;
    v24[3] = v35;
  }

  swift_storeEnumTagMultiPayload();

  sub_1BF0590BC(v24);
LABEL_7:
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF14E638(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(v9);
  a2(v11);
  return (*(v8 + 8))(v11, a6);
}

void UnsafeLazy.loadedValue.getter(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = type metadata accessor for UnsafeLazy.Loader(0, v7, a1, a2);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_13_24();
  v13 = *(v6 + 88);
  OUTLINED_FUNCTION_3_5(v3 + v13, v18);
  (*(v10 + 16))(v4, v3 + v13, v8);
  OUTLINED_FUNCTION_41_0();
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    OUTLINED_FUNCTION_20();
    (*(v17 + 32))(a3, v4, v7);
    v16 = 0;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_41_0();
    v15(v14);
    v16 = 1;
  }

  __swift_storeEnumTagSinglePayload(a3, v16, 1, v7);
  OUTLINED_FUNCTION_55();
}

void UnsafeLazy.onLoad(_:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_29();
  v6 = *(v5 + 80);
  v7 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v26[-1] - v12;
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v26[-1] - v16;
  UnsafeLazy.loadedValue.getter(v18, v19, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    (*(v9 + 8))(v13, v7);
    OUTLINED_FUNCTION_14_0();
    v20 = swift_allocObject();
    v20[2] = v6;
    v20[3] = v4;
    v20[4] = v2;
    v26[3] = sub_1BF14FA94;
    v26[4] = v20;
    OUTLINED_FUNCTION_7_2(v0 + *(*v0 + 96), v26);
    OUTLINED_FUNCTION_3_44();
    swift_getFunctionTypeMetadata1();
    sub_1BF17A65C();

    sub_1BF17A5DC();
    swift_endAccess();
  }

  else
  {
    v21 = OUTLINED_FUNCTION_59_0();
    v22(v21);
    v4(v17);
    v23 = OUTLINED_FUNCTION_26_11();
    v24(v23);
  }

  OUTLINED_FUNCTION_26_2();
}

uint64_t ReferenceCountedLazy.__allocating_init(lock:options:loadBlock:)()
{
  OUTLINED_FUNCTION_12_23();
  v2 = OUTLINED_FUNCTION_23_10();
  ReferenceCountedLazy.init(lock:options:loadBlock:)(v2, v3, v4, v0);
  return v1;
}

uint64_t ReferenceCountedLazy.init(lock:options:loadBlock:)(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_83_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_29();
  *(v4 + *(v13 + 120)) = 0;
  OUTLINED_FUNCTION_29();
  sub_1BEFE87B0(a1, v4 + *(v14 + 104));
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  OUTLINED_FUNCTION_29();
  *(v4 + *(v15 + 112)) = v8;
  return v4;
}

void ReferenceCountedLazy.increase()()
{
  OUTLINED_FUNCTION_32();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_5_41();
  v6 = *(v5 + 80);
  v7 = OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_4_39();
  v13 = (v0 + *(v12 + 104));
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v14 = OUTLINED_FUNCTION_22_14();
  v15(v14);
  OUTLINED_FUNCTION_4_0();
  v17 = *(v16 + 120);
  v18 = *(v0 + v17);
  v19 = __CFADD__(v18, 1);
  v20 = (v18 + 1);
  if (!v19)
  {
    *(v0 + v17) = v20;
    OUTLINED_FUNCTION_4_0();
    v22 = *(v21 + 96);
    OUTLINED_FUNCTION_3_5(v2 + v22, &v32);
    (*(v9 + 16))(v1, v2 + v22, v7);
    OUTLINED_FUNCTION_32_10(v1);
    if (v23)
    {
      v24 = OUTLINED_FUNCTION_59_0();
      v25(v24);
      OUTLINED_FUNCTION_4_0();
      v27 = *(v2 + *(v26 + 112));
      if ((v27 & 1) != 0 || (v27 & 2) == 0 || [objc_opt_self() isMainThread])
      {
        sub_1BF14EDF8(1, v2, v4);
LABEL_9:
        OUTLINED_FUNCTION_26_2();
        return;
      }

      sub_1BEFF6E88();
      v31 = sub_1BF17AD5C();
      OUTLINED_FUNCTION_19_15();
    }

    else
    {
      OUTLINED_FUNCTION_20();
      (*(v28 + 32))(v4, v1, v6);
    }

    v29 = v13[3];
    v30 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v29);
    (*(v30 + 16))(v29, v30);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1BF14EDF8@<X0>(char a1@<W0>, void (**a2)(double)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a2 + 10);
  v7 = sub_1BF17AE6C();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v18 - v11;
  a2[2](v10);
  (*(*(v6 - 8) + 16))(v12, a3, v6);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v6);
  v13 = *(*a2 + 12);
  swift_beginAccess();
  (*(v8 + 40))(a2 + v13, v12, v7);
  result = swift_endAccess();
  if (a1)
  {
    v15 = a2 + *(*a2 + 13);
    v16 = *(v15 + 3);
    v17 = *(v15 + 4);
    __swift_project_boxed_opaque_existential_1(v15, v16);
    return (*(v17 + 16))(v16, v17);
  }

  return result;
}

Swift::Void __swiftcall ReferenceCountedLazy.decrease()()
{
  v1 = v0;
  OUTLINED_FUNCTION_5_41();
  v3 = *(v2 + 80);
  v4 = OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v27[-v9 - 8];
  v11 = (v0 + *(v0 + 104));
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v13 + 8))(v12, v13);
  OUTLINED_FUNCTION_4_0();
  v15 = *(v14 + 120);
  v16 = *(v0 + v15);
  v17 = v16 != 0;
  v18 = v16 - 1;
  if (v17)
  {
    *(v0 + v15) = v18;
    if (v18)
    {
      OUTLINED_FUNCTION_55();

      sub_1BF14F154(v19);
    }

    else
    {
      OUTLINED_FUNCTION_83_0();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v3);
      OUTLINED_FUNCTION_4_0();
      v25 = *(v24 + 96);
      OUTLINED_FUNCTION_7_2(v1 + v25, v27);
      (*(v6 + 40))(v1 + v25, v10, v4);
      swift_endAccess();
      sub_1BF14F154(v1);
      OUTLINED_FUNCTION_55();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BF14F154(uint64_t a1)
{
  v1 = (a1 + *(*a1 + 104));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 16))(v2, v3);
}

void ReferenceCountedLazy.value(_:)(void (*a1)(char *))
{
  OUTLINED_FUNCTION_29();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_2_3();
  v5 = v4;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v10 - v8;
  ReferenceCountedLazy.increase()();
  a1(v9);
  ReferenceCountedLazy.decrease()();
  (*(v5 + 8))(v9, v3);
  OUTLINED_FUNCTION_55();
}

char *ReferenceCountedLazy.deinit()
{

  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 96);
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_29();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v4 + 104)));
  return v0;
}

void *sub_1BF14F358()
{
  v1 = v0;
  v2 = *v0;

  OUTLINED_FUNCTION_4_0();
  type metadata accessor for Result(255, *(v2 + 80), v3, v4);
  sub_1BF17AE6C();
  sub_1BF1797AC();
  v5 = sub_1BF1797BC();
  sub_1BF073074(v5);
  return v1;
}

unint64_t sub_1BF14F4C0()
{
  result = qword_1EBDCC550;
  if (!qword_1EBDCC550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC550);
  }

  return result;
}

unint64_t sub_1BF14F518()
{
  result = qword_1EBDCC558[0];
  if (!qword_1EBDCC558[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDCC558);
  }

  return result;
}

uint64_t sub_1BF14F5FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF14F63C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1BF14F6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Result(255, *(a1 + 80), a3, a4);
  sub_1BF17AE6C();
  result = sub_1BF1797AC();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF14F7AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 32;
  if (*(v3 + 64) > 0x20uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1BF14F8D0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x20)
  {
    v5 = 32;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t Weak.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Weak.init(_:)(a1);
  return v2;
}

uint64_t Weak.init(_:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t Array<A>.removeDeallocatedValues()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  swift_getWitnessTable();
  v4 = sub_1BF17B31C();

  *v3 = v4;
  return result;
}

BOOL sub_1BF14FC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a2, a3);
  if (v3)
  {
    swift_unknownObjectRelease();
  }

  return v3 != 0;
}

void ObservableProperty.eagerObserve<A>(disposeOn:block:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v0;
  v23 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_29();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_2_3();
  v9 = v8;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_5_42();
  sub_1BF179C5C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_2_0();
  v16 = (v15 - v14);
  v17 = sub_1BEFF6E88();
  *v16 = sub_1BF17AD5C();
  v18 = OUTLINED_FUNCTION_16_20();
  v19(v18);
  sub_1BF179C8C();
  v20 = OUTLINED_FUNCTION_14_25();
  v21(v20);
  if (v17)
  {
    ObservableProperty.observe<A>(disposeOn:block:)();
    v22 = *(*v2 + 96);
    OUTLINED_FUNCTION_3_33(v2 + v22);
    (*(v9 + 16))(v1, v2 + v22, v7);
    v23(v5, v1);
    (*(v9 + 8))(v1, v7);
    OUTLINED_FUNCTION_26_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BF14FEF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a1;
  v7 = *(**a1 + 96);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a4, v6 + v7, v5);
}

uint64_t sub_1BF14FF88(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1, a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return ObservableProperty.wrappedValue.setter(v3);
}

uint64_t sub_1BF150048(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BF03C9AC(a2);
  }

  return result;
}

uint64_t (*ObservableProperty.wrappedValue.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_2(v1 + *(v3 + 96), a1);
  return sub_1BF15010C;
}

uint64_t sub_1BF15010C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BF03C44C();
  }

  return result;
}

void ObservableProperty.observe<A>(disposeOn:block:)()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v9 = sub_1BF179C5C();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_2_0();
  v16 = (v15 - v14);
  sub_1BEFF6E88();
  *v16 = sub_1BF17AD5C();
  (*(v11 + 104))(v16, *MEMORY[0x1E69E8020], v9);
  v17 = sub_1BF179C8C();
  (*(v11 + 8))(v16, v9);
  if (v17)
  {
    OUTLINED_FUNCTION_27();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = *(v8 + 80);
    v19[3] = v3;
    v19[4] = v18;
    v19[5] = v7;
    v19[6] = v5;
    v22[0] = sub_1BF1503A0;
    v22[1] = v19;
    OUTLINED_FUNCTION_7_2((v1 + 2), &v21);
    OUTLINED_FUNCTION_3_44();
    FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
    OUTLINED_FUNCTION_21_15(FunctionTypeMetadata1);

    OUTLINED_FUNCTION_20_17(v22);
    swift_endAccess();

    OUTLINED_FUNCTION_26_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BF15032C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a3();
    return swift_unknownObjectRelease();
  }

  return result;
}

void ObservableProperty.eagerObserve(block:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_29();
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_12_12();
  sub_1BF179C5C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_2_0();
  v17 = (v16 - v15);
  v18 = sub_1BEFF6E88();
  *v17 = sub_1BF17AD5C();
  v19 = OUTLINED_FUNCTION_17_15();
  v20(v19);
  sub_1BF179C8C();
  v21 = OUTLINED_FUNCTION_13_25();
  v22(v21);
  if (v18)
  {
    ObservableProperty.observe(block:)(v6, v4);
    v23 = *(*v2 + 96);
    OUTLINED_FUNCTION_3_33(v2 + v23);
    (*(v10 + 16))(v1, v2 + v23, v8);
    v6(v1);
    (*(v10 + 8))(v1, v8);
    OUTLINED_FUNCTION_26_2();
  }

  else
  {
    __break(1u);
  }
}

void ObservableProperty.eagerObserveUntil(block:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_29();
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_12_12();
  sub_1BF179C5C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_2_0();
  v17 = (v16 - v15);
  v18 = sub_1BEFF6E88();
  *v17 = sub_1BF17AD5C();
  v19 = OUTLINED_FUNCTION_17_15();
  v20(v19);
  sub_1BF179C8C();
  v21 = OUTLINED_FUNCTION_13_25();
  v22(v21);
  if (v18)
  {
    v23 = *(*v2 + 96);
    OUTLINED_FUNCTION_3_33(v2 + v23);
    (*(v10 + 16))(v1, v2 + v23, v8);
    v6(v29, v1);
    (*(v10 + 8))(v1, v8);
    if ((v29[0] & 1) == 0)
    {
      OUTLINED_FUNCTION_27();
      v24 = swift_allocObject();
      type metadata accessor for ObservableProperty.Token(0, v8, v25, v26);
      *(v24 + 16) = sub_1BF02DF00();
      OUTLINED_FUNCTION_85();
      v27 = swift_allocObject();
      v27[2] = v8;
      v27[3] = v24;
      v27[4] = v6;
      v27[5] = v4;
      v30[0] = sub_1BF150D88;
      v30[1] = v27;
      OUTLINED_FUNCTION_7_2(v2 + 16, v29);
      OUTLINED_FUNCTION_3_44();
      FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
      OUTLINED_FUNCTION_21_15(FunctionTypeMetadata1);

      OUTLINED_FUNCTION_20_17(v30);
      swift_endAccess();
    }

    OUTLINED_FUNCTION_26_2();
  }

  else
  {
    __break(1u);
  }
}

void ObservableProperty.map<A>(_:)()
{
  OUTLINED_FUNCTION_32();
  v3 = v0;
  v5 = v4;
  v31 = v6;
  v32 = v7;
  OUTLINED_FUNCTION_29();
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_2_3();
  v11 = v10;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_12_12();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_42();
  sub_1BF179C5C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_2_0();
  v20 = (v19 - v18);
  v21 = sub_1BEFF6E88();
  *v20 = sub_1BF17AD5C();
  v22 = OUTLINED_FUNCTION_16_20();
  v23(v22);
  sub_1BF179C8C();
  v24 = OUTLINED_FUNCTION_14_25();
  v25(v24);
  if (v21)
  {
    type metadata accessor for ObservableProperty(0, v5, v26, v27);
    v28 = *(*v3 + 96);
    OUTLINED_FUNCTION_3_33(v3 + v28);
    (*(v11 + 16))(v1, v3 + v28, v9);
    v31(v1);
    (*(v11 + 8))(v1, v9);
    v29 = ObservableProperty.__allocating_init(wrappedValue:)(v2);
    OUTLINED_FUNCTION_85();
    v30 = swift_allocObject();
    v30[2] = v9;
    v30[3] = v29;
    v30[4] = v31;
    v30[5] = v32;

    ObservableProperty.eagerObserve<A>(disposeOn:block:)();

    OUTLINED_FUNCTION_26_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BF150A60(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v10 - v5;
  v8(v7, v4);
  sub_1BF03C9AC(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t ObservablePropertyUntilResult.hashValue.getter()
{
  v1 = *v0;
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](v1);
  return sub_1BF17BB9C();
}

unint64_t sub_1BF150BF0()
{
  result = qword_1EBDCC5E0[0];
  if (!qword_1EBDCC5E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDCC5E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ObservablePropertyUntilResult(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t ObjectReuseProtector.Errors.hashValue.getter()
{
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](0);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF150E30(uint64_t a1)
{
  sub_1BF17BB6C();
  ObjectReuseProtector.Errors.hash(into:)();
  return sub_1BF17BB9C();
}

uint64_t ObjectReuseProtector.__allocating_init()()
{
  OUTLINED_FUNCTION_19();
  v0 = swift_allocObject();
  ObjectReuseProtector.init()();
  return v0;
}

void sub_1BF150E9C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {

LABEL_7:
    a4(Strong);
    return;
  }

  v12 = v11;
  v13 = sub_1BF0575F4();
  v14 = [v13 objectForKey_];

  if (v14)
  {
    sub_1BEFF9AF8(0, &qword_1ED8EF730, 0x1E69E58C0);
    if (sub_1BF17ADEC())
    {
      a7(a1);

      swift_unknownObjectRelease();

      return;
    }
  }

  (a4)();

  swift_unknownObjectRelease();
}

uint64_t ObjectReuseProtector.__deallocating_deinit()
{
  ObjectReuseProtector.deinit();
  v0 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

_BYTE *sub_1BF151098(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t ObservableResolver.__allocating_init(_:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1BEFE87B0(a1, v2 + 16);
  return v2;
}

uint64_t ObservableResolver.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t ObservableResolver.resolve<A>(_:with:)()
{
  OUTLINED_FUNCTION_1_60();
  v0 = OUTLINED_FUNCTION_0_76();
  return v1(v0);
}

uint64_t ObservableResolver.resolve<A>(_:name:)()
{
  OUTLINED_FUNCTION_1_60();
  v0 = OUTLINED_FUNCTION_0_76();
  return v1(v0);
}

uint64_t ObservableResolver.resolve<A>(_:name:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = v6[5];
  v14 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v13);
  return (*(v14 + 56))(a1, a2, a3, a4, a5, a6, v13, v14);
}

uint64_t ObservableResolver.bridgedResolver.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t Stack.init()@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1BF17A56C();
  *a2 = result;
  return result;
}

uint64_t Stack.isEmpty.getter()
{
  OUTLINED_FUNCTION_2_60();
  sub_1BF17A65C();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  return sub_1BF17AB6C() & 1;
}

uint64_t Stack.pop()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_60();
  v3 = *(v2 + 16);
  sub_1BF17A65C();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  if (sub_1BF17AB6C())
  {
    v4 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_0_77();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1BF17AC5C();
    v4 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v4, 1, v3);
}

uint64_t Stack.peek()()
{
  OUTLINED_FUNCTION_2_60();
  sub_1BF17A65C();
  OUTLINED_FUNCTION_0_77();
  swift_getWitnessTable();
  return sub_1BF179F6C();
}

uint64_t Stack.remove(at:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_60();
  v5 = Stack.startIndex.getter(v4);
  result = Stack.endIndex.getter(a2);
  if (result < v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (v5 > a1 || result <= a1)
  {
    goto LABEL_10;
  }

  sub_1BF17A65C();

  return sub_1BF17A5FC();
}

Swift::Void __swiftcall Stack.removeAll()()
{
  sub_1BEFF4CFC();
  sub_1BF17A65C();

  sub_1BF17A63C();
}

Swift::Int sub_1BF151834@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = Stack.index(after:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BF151860@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *v2;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v5 = Stack.startIndex.getter(a1);

  a2[1] = v5;
  return result;
}

uint64_t sub_1BF1518B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1BF151908(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t sub_1BF15195C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_1BF0898B4(a3, a4, *v5);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BF0201A4();
    v9 = v13;
  }

  v10 = *(v9 + 16);
  if (v10 >= *(v9 + 24) >> 1)
  {
    sub_1BF0201A4();
    v9 = v14;
  }

  *(v9 + 16) = v10 + 1;
  v11 = v9 + 16 * v10;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *v5;
  result = sub_1BF082CB0();
  *v5 = v15;
  return result;
}

uint64_t URLHandlerMatch.Values.vals(_:)()
{
  if (*(*v0 + 16) && (sub_1BF014CA8(), (v1 & 1) != 0))
  {
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t URLHandlerMatch.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BF17923C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t URLHandlerMatch.pattern.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for URLHandlerMatch(0) + 20);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0x50uLL);
  return sub_1BF11D1E4(__dst, &v5);
}

uint64_t URLHandlerMatch.values.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for URLHandlerMatch(0) + 24));

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t URLHandlerMatch.Values.subscript.getter()
{
  v1 = *v0;
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1BF014CA8();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(v1 + 56) + 8 * v2);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = *(v4 + 32);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v5;
}

Swift::String_optional __swiftcall URLHandlerMatch.Values.val(_:)(Swift::String a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = sub_1BF014CA8(), (v4 & 1) != 0) && (v5 = *(*(v2 + 56) + 8 * v3), v5[2]))
  {
    v6 = v5[4];
    v7 = v5[5];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = v6;
  v9 = v7;
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

uint64_t type metadata accessor for URLHandlerMatch(uint64_t a1)
{
  result = qword_1ED8EC068;
  if (!qword_1ED8EC068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF151D1C(uint64_t a1)
{
  result = sub_1BF17923C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BF151DB0(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_1_61(v2 + 56, a2);
  v4 = *(v2 + 56);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 56) = v6;
  }

  return result;
}

uint64_t BackgroundNetworkSession.__allocating_init(session:urlSessionDelegate:)(__int128 *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_60();
  v4 = swift_allocObject();
  sub_1BEFE87B0(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t BackgroundNetworkSession.init(session:urlSessionDelegate:)(__int128 *a1, uint64_t a2)
{
  sub_1BEFE87B0(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t BackgroundNetworkSession.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t BackgroundNetworkSession.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t StubNetworkProxy.data.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_4(v2 + 16, a2);
  v3 = *(v2 + 16);
  sub_1BF00F5E0(v3, *(v2 + 24));
  return v3;
}

uint64_t StubNetworkProxy.data.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_61(v2 + 16, a2);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1BF00F5F4(v5, v6);
}

void *StubNetworkProxy.response.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_4(v2 + 32, a2);
  v3 = *(v2 + 32);
  v4 = v3;
  return v3;
}

void StubNetworkProxy.response.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_61(v2 + 32, a2);
  v4 = *(v2 + 32);
  *(v2 + 32) = a1;
}

void *StubNetworkProxy.metrics.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_4(v2 + 40, a2);
  v3 = *(v2 + 40);
  v4 = v3;
  return v3;
}

void StubNetworkProxy.metrics.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_61(v2 + 40, a2);
  v4 = *(v2 + 40);
  *(v2 + 40) = a1;
}

void *StubNetworkProxy.error.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_4(v2 + 48, a2);
  v3 = *(v2 + 48);
  v4 = v3;
  return v3;
}

void StubNetworkProxy.error.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_61(v2 + 48, a2);
  v4 = *(v2 + 48);
  *(v2 + 48) = a1;
}

uint64_t StubNetworkProxy.__allocating_init(data:response:metrics:error:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  OUTLINED_FUNCTION_60();
  v10 = swift_allocObject();
  StubNetworkProxy.init(data:response:metrics:error:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t UniqueParentChildCollection.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF179EAC();
}

uint64_t UniqueParentChildCollection.subscript.getter(uint64_t a1, void *a2)
{
  (*(a2[8] + 8))(a2[3]);
  sub_1BF179EAC();
}

uint64_t UniqueParentChildCollection.init()@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1BF179CEC();
  *a2 = result;
  return result;
}

uint64_t sub_1BF15245C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v32 = *MEMORY[0x1E69E9840];
  sub_1BF014DC0(a3, a4);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v17 = sub_1BF178F3C();
      if (!v17)
      {
        goto LABEL_14;
      }

      v21 = sub_1BF178F5C();
      if (__OFSUB__(a1, v21))
      {
LABEL_26:
        __break(1u);
      }

      v17 += a1 - v21;
LABEL_14:
      v20 = (a1 >> 32) - a1;
LABEL_15:
      v22 = sub_1BF178F4C();
      if (v22 >= v20)
      {
        v23 = v20;
      }

      else
      {
        v23 = v22;
      }

      v24 = (v23 + v17);
      if (v17)
      {
        v10 = v24;
      }

      else
      {
        v10 = 0;
      }

      v11 = v17;
      v12 = a3;
      v13 = a4;
      v14 = a5;
LABEL_22:
      sub_1BF153004(v11, v10, v12, v13, v14);
LABEL_23:
      sub_1BF014E18(a3, a4);
      return sub_1BF014E18(a3, a4);
    case 2uLL:
      v16 = *(a1 + 16);
      v15 = *(a1 + 24);
      v17 = sub_1BF178F3C();
      if (!v17)
      {
        goto LABEL_6;
      }

      v18 = sub_1BF178F5C();
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_25;
      }

      v17 += v16 - v18;
LABEL_6:
      v19 = __OFSUB__(v15, v16);
      v20 = v15 - v16;
      if (!v19)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_9:
      sub_1BF014DC0(a3, a4);
      sub_1BF153078(0, 0, a3, a4, a5);
      goto LABEL_23;
    case 3uLL:
      goto LABEL_9;
    default:
      v26 = a1;
      v27 = a2;
      v28 = BYTE2(a2);
      v29 = BYTE3(a2);
      v30 = BYTE4(a2);
      v31 = BYTE5(a2);
      v10 = &v26 + BYTE6(a2);
      v11 = &v26;
      v12 = a3;
      v13 = a4;
      v14 = a5;
      goto LABEL_22;
  }
}

void sub_1BF1526B0(uint64_t a1)
{
  v3 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native() || a1 > *(v3 + 24) >> 1)
  {
    sub_1BF06022C();
    v3 = v4;
  }

  *v1 = v3;
}

Swift::String __swiftcall String.uppercasedWithPreferredLocale()()
{
  v3 = v1;
  v4 = v0;
  v5 = MEMORY[0x1E6969770];
  sub_1BF056800(0, &qword_1ED8EE408, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  OUTLINED_FUNCTION_3_47();
  v8 = sub_1BF1795CC();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF1528C4();
  v21[0] = v4;
  v21[1] = v3;
  (*(v10 + 16))(v2, v14, v8);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v8);
  sub_1BF013170();
  v15 = sub_1BF17AF3C();
  v17 = v16;
  sub_1BF1529A8(v2, &qword_1ED8EE408, v5);
  (*(v10 + 8))(v14, v8);
  v18 = v15;
  v19 = v17;
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t sub_1BF1528C4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 preferredLocalizations];

  v2 = sub_1BF17A4DC();
  if (*(v2 + 16))
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    return sub_1BF17950C();
  }

  else
  {

    return sub_1BF17955C();
  }
}

uint64_t sub_1BF1529A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BF056800(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::String __swiftcall String.normalized()()
{
  v2 = v1;
  v3 = v0;
  sub_1BF056F4C(0, &qword_1ED8EF220, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF1805A0;
  *(inited + 32) = 543516788;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 2122092;
  *(inited + 56) = 0xE300000000000000;
  *(inited + 64) = 2123116;
  *(inited + 72) = 0xE300000000000000;
  sub_1BF17A15C();
  for (i = 0; ; i += 16)
  {
    if (i == 48)
    {

      swift_setDeallocating();
      sub_1BF057128();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      goto LABEL_7;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    if (sub_1BF17A2AC())
    {
      break;
    }
  }

  swift_setDeallocating();
  sub_1BF057128();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = sub_1BF17A1BC();

  v7 = sub_1BF0BA008(v6, v3, v2);
  v3 = MEMORY[0x1BFB51F50](v7);
  v2 = v8;

LABEL_7:
  v9 = v3;
  v10 = v2;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

Swift::String __swiftcall String.sha1Hash()()
{
  v2 = v1;
  v3 = v0;
  v59 = *MEMORY[0x1E69E9840];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v4 = sub_1BF088840(v3, v2);
  v6 = v5;
  v7 = sub_1BF17A57C();
  *(v7 + 16) = 20;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  v58 = v7;
  v8 = OUTLINED_FUNCTION_49();
  sub_1BF014DC0(v8, v9);
  v10 = OUTLINED_FUNCTION_49();
  sub_1BF15245C(v10, v11, v4, v6, v12);
  v13 = MEMORY[0x1BFB51140](v58 + 32, *(v58 + 16));
  v15 = v14 >> 62;
  v16 = MEMORY[0x1E69E7CC0];
  v17 = v13;
  v18 = v14;
  v19 = HIDWORD(v13);
  v20 = BYTE6(v14);
  switch(v14 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(v13), v13))
      {
        goto LABEL_43;
      }

      v21 = HIDWORD(v13) - v13;
LABEL_6:
      if (!v21)
      {
        goto LABEL_35;
      }

      v57 = MEMORY[0x1E69E7CC0];
      v50 = v13;
      sub_1BF00DD60();
      v17 = v50;
      v49 = v20;
      v48 = v19;
      if (v15)
      {
        if (v15 == 2)
        {
          v24 = *(v50 + 16);
        }

        else
        {
          v24 = v50;
        }
      }

      else
      {
        v24 = 0;
      }

      if (v21 < 0)
      {
        goto LABEL_42;
      }

      v16 = v57;
      break;
    case 2uLL:
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      v21 = v22 - v23;
      if (!__OFSUB__(v22, v23))
      {
        goto LABEL_6;
      }

      goto LABEL_44;
    case 3uLL:
      goto LABEL_35;
    default:
      v21 = BYTE6(v14);
      goto LABEL_6;
  }

  do
  {
    if (v15 == 1)
    {
      if (v24 < v50 || v24 >= v50 >> 32)
      {
        goto LABEL_38;
      }

      v27 = sub_1BF178F3C();
      if (!v27)
      {
        goto LABEL_45;
      }

      v28 = v27;
      v29 = sub_1BF178F5C();
      v30 = v24 - v29;
      if (__OFSUB__(v24, v29))
      {
        goto LABEL_40;
      }

LABEL_31:
      v25 = *(v28 + v30);
      v17 = v50;
      goto LABEL_32;
    }

    if (v15)
    {
      if (v24 < *(v17 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
      }

      if (v24 >= *(v17 + 24))
      {
        goto LABEL_39;
      }

      v31 = sub_1BF178F3C();
      if (!v31)
      {
        goto LABEL_46;
      }

      v28 = v31;
      v32 = sub_1BF178F5C();
      v30 = v24 - v32;
      if (__OFSUB__(v24, v32))
      {
        goto LABEL_41;
      }

      goto LABEL_31;
    }

    if (v24 >= v49)
    {
      goto LABEL_37;
    }

    LOBYTE(v51) = v17;
    *(&v51 + 1) = *(&v50 + 1);
    BYTE3(v51) = BYTE3(v50);
    BYTE4(v51) = v48;
    *(&v51 + 5) = *(&v50 + 5);
    HIBYTE(v51) = HIBYTE(v50);
    v52 = v18;
    v53 = BYTE2(v18);
    v54 = BYTE3(v18);
    v55 = BYTE4(v18);
    v56 = BYTE5(v18);
    v25 = *(&v51 + v24);
LABEL_32:
    sub_1BF056800(0, &qword_1ED8EE998, sub_1BF05A928, MEMORY[0x1E69E6F90]);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1BF17DEF0;
    *(v33 + 56) = MEMORY[0x1E69E7508];
    *(v33 + 64) = MEMORY[0x1E69E7558];
    *(v33 + 32) = v25;
    v34 = sub_1BF17A0FC();
    v36 = v35;
    v57 = v16;
    v37 = *(v16 + 16);
    if (v37 >= *(v16 + 24) >> 1)
    {
      sub_1BF00DD60();
      v17 = v50;
      v16 = v57;
    }

    *(v16 + 16) = v37 + 1;
    v38 = v16 + 16 * v37;
    *(v38 + 32) = v34;
    *(v38 + 40) = v36;
    ++v24;
    --v21;
  }

  while (v21);
LABEL_35:
  v51 = v16;
  sub_1BF056F4C(0, &qword_1ED8EE9D0, MEMORY[0x1E69E62F8]);
  sub_1BF01B738();
  v39 = v17;
  v40 = sub_1BF179F7C();
  v42 = v41;
  v43 = OUTLINED_FUNCTION_49();
  sub_1BF014E18(v43, v44);
  sub_1BF014E18(v39, v18);

  v45 = v40;
  v46 = v42;
  result._object = v46;
  result._countAndFlagsBits = v45;
  return result;
}

unsigned __int8 *sub_1BF153004(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = MEMORY[0x1BFB51150](a3, a4);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (!(result >> 32))
    {
      sub_1BF1526B0(0);
      return CC_SHA1(a1, v8, (*a5 + 32));
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF153078(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v10 = WORD2(a2);
  v9 = a2;
  sub_1BF153004(&v8, &v8 + BYTE6(a2), a3, a4, a5);
  return sub_1BF014E18(a3, a4);
}

uint64_t static BinaryEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = xmmword_1BF17EBD0;
  (*(a4 + 8))(&v6, a2, a4);
  result = v6;
  if (v4)
  {
    return sub_1BF014E18(v6, *(&v6 + 1));
  }

  return result;
}

BOOL static SemVer.matches(requirement:with:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = a2[2];
  if (!v3)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_0_79();
      return static SemVer.matchesGreaterMinor(requirement:with:)(v15, v16);
    }

    v21 = *a2;
    v22 = v2;
    return static SemVer.matches(requirement:with:)(&v22, &v21);
  }

  if (!v4)
  {
    return 0;
  }

  v5 = a1[1];
  v6 = a1[3];
  v7 = a2[1];
  v8 = a2[3];
  if (!v6)
  {
    OUTLINED_FUNCTION_0_79();
    if (static SemVer.matches(requirement:with:)(v17, v18))
    {
      v19 = v5 == v7 && v3 == v4;
      if (v19 || (OUTLINED_FUNCTION_1_62() & 1) != 0)
      {
        return v8 == 0;
      }
    }

    return 0;
  }

  OUTLINED_FUNCTION_0_79();
  v11 = static VersionNumber.== infix(_:_:)(v9, v10);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  if (v5 == v7 && v3 == v4)
  {
    if (v8)
    {
LABEL_23:
      v21 = v8;
      v22 = v6;
      return static SemVer.matches(requirement:with:)(&v22, &v21);
    }

    return 0;
  }

  v13 = OUTLINED_FUNCTION_1_62();
  v14 = 0;
  if ((v13 & 1) != 0 && v8)
  {
    goto LABEL_23;
  }

  return v14;
}

BOOL static SemVer.matches(requirement:with:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_1BF17B86C(), v6 = 0, (v5 & 1) != 0))
  {
    v6 = (v2 | v3) == 0;
    if (v2 && v3)
    {
      v8 = v3;
      v9 = v2;
      return static SemVer.matches(requirement:with:)(&v9, &v8);
    }
  }

  return v6;
}

{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v5 = *(v2 + 32);
    v6 = v3[2];
    if (!v6)
    {
      if (!v5)
      {
LABEL_11:
        v8 = 0;
        v7 = 0;
        if (v4 >= 2)
        {
          goto LABEL_12;
        }

        return v8 >= v7;
      }

      return 0;
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v8 = 0;
    v6 = v3[2];
    if (!v6)
    {
      return v8 >= v7;
    }
  }

  if (v5 != v3[4])
  {
    return 0;
  }

  if (v6 < 2)
  {
    goto LABEL_11;
  }

  v8 = v3[5];
  if (v4 > 1)
  {
LABEL_12:
    v7 = *(v2 + 40);
    return v8 >= v7;
  }

  v7 = 0;
  return v8 >= v7;
}

BOOL static SemVer.matchesGreaterMinor(requirement:with:)(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v5 = *(v2 + 32);
    v6 = v3[2];
    if (!v6)
    {
      if (!v5)
      {
LABEL_11:
        v8 = 0;
        v7 = 0;
        if (v4 >= 2)
        {
          goto LABEL_12;
        }

        return v7 < v8;
      }

      return 0;
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v8 = 0;
    v6 = v3[2];
    if (!v6)
    {
      return v7 < v8;
    }
  }

  if (v5 != v3[4])
  {
    return 0;
  }

  if (v6 < 2)
  {
    goto LABEL_11;
  }

  v8 = v3[5];
  if (v4 > 1)
  {
LABEL_12:
    v7 = *(v2 + 40);
    return v7 < v8;
  }

  v7 = 0;
  return v7 < v8;
}

_BYTE *storeEnumTagSinglePayload for SemVer(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t Collection<>.insertionIndex(of:orderBy:)(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v32 - v16;
  result = sub_1BF17AA2C();
  v19 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if ((v19 & 0x8000000000000000) == 0)
  {
    v32[1] = AssociatedTypeWitness;
    v33 = a1;
    v34 = a2;
    v35 = a3;
    v20 = 0;
    v32[0] = v13 + 16;
    v21 = (v13 + 8);
    v40 = v5;
    v41 = a4;
    v39 = a5;
    v22 = AssociatedTypeWitness;
    while (1)
    {
      v23 = v20 + v19;
      if (__OFADD__(v20, v19))
      {
        break;
      }

      v37 = v19;
      v38 = v20;
      v24 = v23 / 2;
      v43 = v23 / 2;
      v25 = sub_1BF17ABFC();
      v36 = *v32[0];
      v36(v17);
      v25(v42, 0);
      v27 = v33;
      v26 = v34;
      v28 = v34(v17, v33);
      v29 = *v21;
      result = (*v21)(v17, v22);
      if (v28)
      {
        v20 = v24 + 1;
        v19 = v37;
      }

      else
      {
        v43 = v24;
        v30 = sub_1BF17ABFC();
        v36(v17);
        v30(v42, 0);
        v31 = v26(v27, v17);
        result = v29(v17, v22);
        v20 = v38;
        if ((v31 & 1) == 0)
        {
          return v24;
        }

        v19 = v24 - 1;
      }

      v24 = v20;
      if (v19 < v20)
      {
        return v24;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  return 0;
}

uint64_t Collection<>.chunk(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BF17AA2C();
  if (a1 < 0)
  {
    __break(1u);
  }

  else if (a1)
  {
    v14[7] = 0;
    v14[8] = result;
    v14[9] = a1;
    MEMORY[0x1EEE9AC00](result, v8);
    v14[2] = a2;
    v14[3] = a3;
    v14[4] = a1;
    v14[5] = v3;
    sub_1BF1547F4(0, &qword_1ED8ED6F0, MEMORY[0x1E69E6570], MEMORY[0x1E69E7C20]);
    v10 = v9;
    swift_getAssociatedTypeWitness();
    v11 = sub_1BF17A65C();
    v12 = sub_1BF153A8C();
    return sub_1BF03CFB4(sub_1BF153A68, v14, v10, v11, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  }

  __break(1u);
  return result;
}

void sub_1BF1538F8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v9);
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = *a1;
  v11 = __OFADD__(v10, a2);
  v12 = v10 + a2;
  if (v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = sub_1BF17AA2C();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  if (v14 >= v10)
  {
    sub_1BF17ABEC();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    *a5 = sub_1BF17A67C();
    return;
  }

LABEL_10:
  __break(1u);
}

unint64_t sub_1BF153A8C()
{
  result = qword_1ED8ED6F8;
  if (!qword_1ED8ED6F8)
  {
    sub_1BF1547F4(255, &qword_1ED8ED6F0, MEMORY[0x1E69E6570], MEMORY[0x1E69E7C20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8ED6F8);
  }

  return result;
}

uint64_t Collection<>.subcollectionPermutations.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1();
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  (*(v11 + 16))(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v9);
  v27 = a1;
  v28 = a2;
  v29 = a3;
  v34 = sub_1BF17A3DC();
  swift_getAssociatedTypeWitness();
  sub_1BF17A65C();
  swift_getWitnessTable();
  sub_1BF17A01C();

  v13 = v30;
  v12 = v31;
  v15 = v32;
  v14 = v33;
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  result = sub_1BF153F10(v13, v12, v15, v14, a1, a2, a3);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v26[0] = v26;
    v30 = 0;
    v31 = result;
    MEMORY[0x1EEE9AC00](result, v18);
    v26[1] = v13;
    v26[-10] = a1;
    v26[-9] = a2;
    v26[-8] = a3;
    v26[-7] = v13;
    v26[-6] = v12;
    v26[-5] = v15;
    v26[-4] = v14;
    v26[-3] = sub_1BF154058;
    v26[-2] = v16;
    sub_1BF1547F4(0, &qword_1ED8EF238, MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v20 = v19;
    swift_getAssociatedTypeWitness();
    v21 = sub_1BF17A65C();
    v22 = sub_1BF1542FC();
    v30 = sub_1BEFF5EDC(sub_1BF1542BC, &v26[-12], v20, v21, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
    MEMORY[0x1EEE9AC00](v30, v24);
    v26[-4] = a1;
    v26[-3] = a2;
    v26[-2] = a3;
    sub_1BF17A65C();
    swift_getWitnessTable();
    v25 = sub_1BF17B31C();
    swift_unknownObjectRelease();

    return v25;
  }

  return result;
}

uint64_t sub_1BF153F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[10] = a1;
  v17[11] = a2;
  v17[12] = a3;
  v17[13] = a4;
  v17[6] = a5;
  v17[7] = a6;
  v17[8] = a7;
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v17[5] = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  v7 = sub_1BF17B07C();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1BEFF5EDC(sub_1BF1548C4, v17, v7, MEMORY[0x1E69E6530], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);

  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = (v10 + 32);
    v14 = 1;
    while (1)
    {
      v15 = *v13++;
      v16 = v14 * v15;
      if ((v14 * v15) >> 64 != (v14 * v15) >> 63)
      {
        break;
      }

      v14 = v16;
      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = 1;
LABEL_7:

    return v16;
  }

  return result;
}

uint64_t sub_1BF154064@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  result = sub_1BF17AA2C();
  *a3 = result;
  return result;
}

uint64_t sub_1BF1540C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v24 = *a1;
  swift_getAssociatedTypeWitness();
  v15 = sub_1BF17B07C();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1BFB52170](v47, v15, WitnessTable);
  v45 = v47[0];
  v46 = v47[1];
  v35 = a8;
  v36 = a10;
  v37 = a11;
  v38 = a6;
  v39 = a7;
  v40 = a2;
  v41 = a3;
  v42 = a4;
  v43 = a5;
  v44 = v24;
  v29 = a8;
  v30 = a10;
  v31 = a11;
  v32 = sub_1BF154790;
  v33 = &v34;
  v17 = sub_1BF17B4FC();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v21 = sub_1BEFF5EDC(sub_1BF1547CC, v28, v17, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
  result = swift_unknownObjectRelease();
  *a9 = v21;
  return result;
}

unint64_t sub_1BF1542FC()
{
  result = qword_1ED8EAE38;
  if (!qword_1ED8EAE38)
  {
    sub_1BF1547F4(255, &qword_1ED8EF238, MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    sub_1BF036B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EAE38);
  }

  return result;
}

uint64_t sub_1BF1543A0@<X0>(uint64_t result@<X0>, uint64_t (*a2)()@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  swift_getAssociatedTypeWitness();
  sub_1BF17B07C();
  sub_1BF1547F4(0, &qword_1ED8EADF8, MEMORY[0x1E69E6548], MEMORY[0x1E69E6D08]);
  swift_getWitnessTable();
  sub_1BF154848();
  sub_1BF17A00C();
  v13 = a2();
  result = swift_unknownObjectRelease();
  v14 = floor(a8 / v13);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = sub_1BF17AA2C();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v14 != 0x8000000000000000 || result != -1)
  {
    v16 = sub_1BF17ABFC();
    v18 = v17;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 16))(a7, v18, AssociatedTypeWitness);
    return v16(v20, 0);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1BF154600(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v7, &a1[*(TupleTypeMetadata2 + 48)]);
}

BOOL sub_1BF1546A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_1BF17A65C();
  swift_getWitnessTable();
  return (sub_1BF17AB6C() & 1) == 0;
}

void sub_1BF1547F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = (a4)(0, MEMORY[0x1E69E6530], a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1BF154848()
{
  result = qword_1ED8EAE00;
  if (!qword_1ED8EAE00)
  {
    sub_1BF1547F4(255, &qword_1ED8EADF8, MEMORY[0x1E69E6548], MEMORY[0x1E69E6D08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EAE00);
  }

  return result;
}

uint64_t XPCArgument.name.getter()
{
  v1 = *v0;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

uint64_t XPCArgument.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  result = a3();
  a4[2] = result;
  return result;
}

uint64_t sub_1BF154990(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1BEFF79E8();
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  if (v9 != 2 || v7 > 1)
  {
    sub_1BF08A4A8(v7, v8, v9);
LABEL_6:

    v5 = a1;
    goto LABEL_7;
  }

  sub_1BF17A6EC();
  sub_1BF0D03D0();
  swift_allocError();
  sub_1BF179D0C();
LABEL_7:
  sub_1BF17A6DC();
  return sub_1BF17A6BC();
}

uint64_t sub_1BF154A98(uint64_t a1, uint64_t a2)
{
  sub_1BF17A6EC();
  sub_1BF0D03D0();
  swift_allocError();
  sub_1BF179D0C();
  sub_1BEFF79E8();
  sub_1BF17A6DC();
  return sub_1BF17A6BC();
}

uint64_t Promise.resolveAsyncWithEagerCancellation()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_8(sub_1BF154B6C);
}

uint64_t sub_1BF154B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4[4] + 80);
  type metadata accessor for OnlyOnceDeferredPromise(0, v5, a3, a4);
  v6 = OnlyOnceDeferredPromise.__allocating_init()();
  v4[5] = v6;
  v7 = sub_1BF041694();
  sub_1BF04F448();

  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  v4[6] = v8;
  *v8 = v9;
  v8[1] = sub_1BF072ACC;
  v10 = v4[2];

  return MEMORY[0x1EEE6DE18](v10, &unk_1BF1890B8, v6, j___s13TeaFoundation23OnlyOnceDeferredPromiseC6cancelyyF_0, v6, 0, 0, v5);
}

uint64_t sub_1BF154C8C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BF154CAC, 0, 0);
}

uint64_t sub_1BF154CAC()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[6];
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  v0[7] = v3;
  if (v3)
  {

    swift_task_alloc();
    OUTLINED_FUNCTION_7_1();
    v0[8] = v4;
    *v4 = v5;
    v4[1] = sub_1BF154D6C;
    v6 = v0[5];

    return Promise.resolveAsync()(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF154D6C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BF154E94, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_9();

    return v6();
  }
}

uint64_t sub_1BF154E94()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t sub_1BF154EF0()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1BF035DD4;

  return sub_1BF154C8C(v3, v0);
}

uint64_t sub_1BF154F88(void *a1)
{
  v3 = *(v1 + 16);
  sub_1BEFF79E8();
  v4 = *(sub_1BF17A6DC() - 8);
  v5 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_1BF154990(a1, v5, v3);
}

uint64_t sub_1BF155020()
{
  v1 = *(v0 + 16);
  sub_1BEFF79E8();
  v2 = *(sub_1BF17A6DC() - 8);
  v3 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_1BF154A98(v3, v1);
}

uint64_t ParentNetworkActivitySession.__allocating_init(parentActivity:)(void *a1)
{
  v2 = swift_allocObject();
  ParentNetworkActivitySession.init(parentActivity:)(a1);
  return v2;
}

uint64_t *ParentNetworkActivitySession.init(parentActivity:)(void *a1)
{
  swift_defaultActor_initialize();
  *(v1 + 128) = 0;
  sub_1BEFE6A78(a1, v15);
  type metadata accessor for NetworkActivitySession();
  v3 = swift_allocObject();
  v4 = v16;
  v5 = v17;
  __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  OUTLINED_FUNCTION_2_3();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8);
  v12 = sub_1BF105518(v10, 0, v3, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v15);
  *(v1 + 112) = v12;
  swift_getTupleTypeMetadata2();
  sub_1BF17A56C();
  v13 = sub_1BF179DAC();
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v1 + 120) = v13;
  return v1;
}

void *sub_1BF1552B4(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  sub_1BF00974C(0);
  v6 = OUTLINED_FUNCTION_68(v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = *(v3 + 80);
  OUTLINED_FUNCTION_2_3();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v29 - v16;
  sub_1BF1550A8();
  v18 = type metadata accessor for NetworkActivitySession();
  v19 = *(v3 + 96);
  sub_1BF179EAC();

  v20 = v33[0];
  if (!v33[0])
  {
    v21 = v1[14];
    v31 = *(v13 + 16);
    v29 = v13 + 16;
    v31(v17, a1, v11);
    v30 = a1;
    v22 = *(v4 + 104);

    v20 = sub_1BF1053C4(v17, v21, v18, v11, v22);
    v23 = sub_1BF17A77C();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v23);
    v24 = *(v4 + 88);
    v33[0] = v11;
    v33[1] = v24;
    v33[2] = v19;
    v33[3] = v22;
    v25 = type metadata accessor for ParentNetworkActivitySession(255, v33);
    v26 = OUTLINED_FUNCTION_2_61(v25);
    v27 = swift_allocObject();
    v27[2] = v1;
    v27[3] = v26;
    v27[4] = v20;
    v27[5] = v1;
    swift_retain_n();

    OUTLINED_FUNCTION_9_1();
    sub_1BF089AC0();

    v31(v17, v30, v11);
    v32 = v20;
    swift_beginAccess();
    sub_1BF179E9C();

    sub_1BF179EBC();
    swift_endAccess();
  }

  return v20;
}

uint64_t sub_1BF155588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  v7 = *(*a5 + 96);
  *(v5 + 16) = *(*a5 + 80);
  *(v5 + 32) = v7;
  type metadata accessor for ParentNetworkActivitySession(255, v5 + 16);
  *(v5 + 64) = swift_getWitnessTable();

  return MEMORY[0x1EEE6DFA0](sub_1BF15564C, a4, 0);
}

uint64_t sub_1BF15564C()
{
  OUTLINED_FUNCTION_5();
  *(*(v0 + 48) + 120) = *(v0 + 64);
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_9();

  return v1();
}

uint64_t sub_1BF1556C8(uint64_t a1)
{
  v2 = *(*(v1 + 16) + 112);
  *(v1 + 24) = v2;
  return OUTLINED_FUNCTION_0_80(a1, v2);
}

uint64_t sub_1BF1556E4()
{
  OUTLINED_FUNCTION_5();
  if (sub_1BF103860())
  {
    OUTLINED_FUNCTION_9();

    return v1();
  }

  else
  {
    v3 = *(v0 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1BF155778, v3, 0);
  }
}

uint64_t sub_1BF155778()
{
  OUTLINED_FUNCTION_5();
  sub_1BF103ADC();
  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t sub_1BF1557E8(uint64_t a1)
{
  v2 = *(*(v1 + 32) + 112);
  *(v1 + 40) = v2;
  return OUTLINED_FUNCTION_0_80(a1, v2);
}

uint64_t sub_1BF155804()
{
  OUTLINED_FUNCTION_5();
  v1 = sub_1BF10358C();
  if (v2 <= 0xFDu)
  {
    sub_1BF105358(v1, v2);
    OUTLINED_FUNCTION_9();

    return v5();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *v3 = v0;
    v3[1] = sub_1BF1558D4;

    return sub_1BF155E10();
  }
}

uint64_t sub_1BF1558D4()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*v0 + 32);
  v2 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *(v5 + 56) = v4;
  *(v5 + 25) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BF1559E4, v1, 0);
}

uint64_t sub_1BF1559E4()
{
  v32 = v0;
  v1 = *(v0 + 25);
  if (v1 <= 0xFD)
  {
    v13 = *(v0 + 25);
    if (qword_1EBDCAFD0 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EBDCAFD0);
      v13 = *(v0 + 25);
    }

    v14 = *(v0 + 56);
    v15 = sub_1BF1797FC();
    __swift_project_value_buffer(v15, qword_1EBDCBC28);

    sub_1BF156F3C(v14, v13);
    v16 = sub_1BF1797DC();
    v17 = sub_1BF17ACDC();

    sub_1BF105358(v14, v13);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 56);
      v19 = *(v0 + 40);
      v20 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v20 = 136315394;
      v21 = *(v19 + 136);
      v22 = *(v19 + 144);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v23 = sub_1BF01A7AC(v21, v22, &v31);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      *(v0 + 16) = v18;
      *(v0 + 24) = v1 & 1;
      sub_1BF104FB4(v18, v1 & 1);
      sub_1BF105080(0, v24, v25, v26);
      v27 = sub_1BF17A13C();
      v29 = sub_1BF01A7AC(v27, v28, &v31);

      *(v20 + 14) = v29;
      _os_log_impl(&dword_1BEFE0000, v16, v17, "Completing parent activity because all its children have completed, parentActivity=%s, result=%s", v20, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_28();
    }

    v30 = *(v0 + 40);

    return MEMORY[0x1EEE6DFA0](sub_1BF155D44, v30, 0);
  }

  else
  {
    if (qword_1EBDCAFD0 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EBDCAFD0);
    }

    v2 = sub_1BF1797FC();
    __swift_project_value_buffer(v2, qword_1EBDCBC28);

    v3 = sub_1BF1797DC();
    v4 = sub_1BF17ACDC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 40);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v31 = v7;
      *v6 = 136315138;
      v8 = *(v5 + 136);
      v9 = *(v5 + 144);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v10 = sub_1BF01A7AC(v8, v9, &v31);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1BEFE0000, v3, v4, "Not completing parent activity because not all of its children have completed yet, parentActivity=%s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_28();
    }

    OUTLINED_FUNCTION_9();

    return v11();
  }
}