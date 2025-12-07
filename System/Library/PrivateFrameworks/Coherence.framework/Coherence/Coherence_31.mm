Swift::Bool __swiftcall CRStruct_9.needToFinalizeTimestamps()()
{
  v2 = v0;
  v3 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v57 = v56 - v4;
  v86 = swift_getAssociatedTypeWitness();
  v61 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v60 = v56 - v5;
  v87 = swift_getAssociatedTypeWitness();
  v63 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v62 = v56 - v6;
  v89 = swift_getAssociatedTypeWitness();
  v65 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v64 = v56 - v7;
  v91 = swift_getAssociatedTypeWitness();
  v67 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v66 = v56 - v8;
  v93 = swift_getAssociatedTypeWitness();
  v69 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v68 = v56 - v9;
  v95 = swift_getAssociatedTypeWitness();
  v71 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v70 = v56 - v10;
  v96 = swift_getAssociatedTypeWitness();
  v73 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v72 = v56 - v11;
  v98 = swift_getAssociatedTypeWitness();
  v84 = *(v98 - 8);
  v12 = MEMORY[0x1EEE9AC00](v98);
  v83 = v56 - v13;
  v97 = v3;
  (*(v3 + 160))(v100, v2, v3, v12);
  v74 = v100[1];
  v81 = v100[4];
  v82 = v100[2];
  v79 = v100[7];
  v80 = v100[5];
  v94 = v100[8];
  v92 = v100[11];
  v77 = v100[13];
  v78 = v100[10];
  v90 = v100[14];
  v88 = v100[17];
  v75 = v100[19];
  v76 = v100[16];
  v14 = v100[23];
  v15 = v100[20];
  v16 = v100[26];
  sub_1AE23DB8C();
  v99[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v99[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v99[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v99[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v99[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v99[5] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v99[6] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v99[7] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v99[8] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v18 = *(TupleTypeMetadata - 8);
  (*(v18 + 16))(v99, v100, TupleTypeMetadata);

  v56[1] = v16;

  v59 = v14;

  v74 = v15;

  v19 = v83;
  swift_getAtKeyPath();

  v20 = v98;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = (*(*(AssociatedConformanceWitness + 16) + 56))(v20);
  (*(v84 + 8))(v19, v20);
  if (v22 & 1) != 0 || (v23 = v72, swift_getAtKeyPath(), v24 = v96, v25 = swift_getAssociatedConformanceWitness(), v26 = (*(*(v25 + 16) + 56))(v24), (*(v73 + 8))(v23, v24), (v26))
  {
    (*(v18 + 8))(v100, TupleTypeMetadata);
  }

  else
  {
    v98 = TupleTypeMetadata;
    v27 = v70;
    swift_getAtKeyPath();
    v28 = v95;
    v29 = swift_getAssociatedConformanceWitness();
    v30 = (*(*(v29 + 16) + 56))(v28);
    (*(v71 + 8))(v27, v28);
    if ((v30 & 1) == 0)
    {
      v31 = v68;
      swift_getAtKeyPath();
      v32 = v93;
      v33 = swift_getAssociatedConformanceWitness();
      v34 = (*(*(v33 + 16) + 56))(v32);
      (*(v69 + 8))(v31, v32);
      if ((v34 & 1) == 0)
      {
        v35 = v66;
        swift_getAtKeyPath();
        v36 = v91;
        v37 = swift_getAssociatedConformanceWitness();
        v38 = (*(*(v37 + 16) + 56))(v36);
        (*(v67 + 8))(v35, v36);
        if ((v38 & 1) == 0)
        {
          v39 = v64;
          swift_getAtKeyPath();
          v40 = v89;
          v41 = swift_getAssociatedConformanceWitness();
          v42 = (*(*(v41 + 16) + 56))(v40);
          (*(v65 + 8))(v39, v40);
          if ((v42 & 1) == 0)
          {
            v43 = v62;
            swift_getAtKeyPath();
            v44 = v87;
            v45 = swift_getAssociatedConformanceWitness();
            v46 = (*(*(v45 + 16) + 56))(v44);
            (*(v63 + 8))(v43, v44);
            if ((v46 & 1) == 0)
            {
              v47 = v60;
              swift_getAtKeyPath();
              v48 = v86;
              v49 = swift_getAssociatedConformanceWitness();
              v50 = (*(*(v49 + 16) + 56))(v48);
              (*(v61 + 8))(v47, v48);
              if ((v50 & 1) == 0)
              {
                v53 = v57;
                swift_getAtKeyPath();
                v54 = AssociatedTypeWitness;
                v55 = swift_getAssociatedConformanceWitness();
                v51 = (*(*(v55 + 16) + 56))(v54);
                (*(v18 + 8))(v100, v98);
                (*(v58 + 8))(v53, v54);
                return v51 & 1;
              }
            }
          }
        }
      }
    }

    (*(v18 + 8))(v100, v98);
  }

  v51 = 1;
  return v51 & 1;
}

uint64_t CRStruct_9.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 8) + 160))(&v45, a2);
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v44[0] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v44[1] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v44[2] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v44[3] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v44[4] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v44[5] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v44[6] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v44[7] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v44[8] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v40 = *(TupleTypeMetadata - 8);
  v42 = *(v40 + 16);
  v42(v44, &v45, TupleTypeMetadata);

  v3 = swift_modifyAtWritableKeyPath();
  v4 = *(swift_getAssociatedConformanceWitness() + 16);
  v5 = *(v4 + 64);
  v6 = swift_checkMetadataState();
  v5(a1, v6, v4);
  v3(v44, 0);

  v42(v44, &v45, TupleTypeMetadata);

  v7 = swift_modifyAtWritableKeyPath();
  v8 = *(swift_getAssociatedConformanceWitness() + 16);
  v9 = *(v8 + 64);
  v10 = swift_checkMetadataState();
  v9(a1, v10, v8);
  v7(v44, 0);

  v42(v44, &v45, TupleTypeMetadata);

  v11 = swift_modifyAtWritableKeyPath();
  v12 = *(swift_getAssociatedConformanceWitness() + 16);
  v13 = *(v12 + 64);
  v14 = swift_checkMetadataState();
  v13(a1, v14, v12);
  v11(v44, 0);

  v42(v44, &v45, TupleTypeMetadata);

  v15 = swift_modifyAtWritableKeyPath();
  v16 = *(swift_getAssociatedConformanceWitness() + 16);
  v17 = *(v16 + 64);
  v18 = swift_checkMetadataState();
  v17(a1, v18, v16);
  v15(v44, 0);

  v42(v44, &v45, TupleTypeMetadata);

  v19 = swift_modifyAtWritableKeyPath();
  v20 = *(swift_getAssociatedConformanceWitness() + 16);
  v21 = *(v20 + 64);
  v22 = swift_checkMetadataState();
  v21(a1, v22, v20);
  v19(v44, 0);

  v42(v44, &v45, TupleTypeMetadata);

  v23 = swift_modifyAtWritableKeyPath();
  v24 = *(swift_getAssociatedConformanceWitness() + 16);
  v25 = *(v24 + 64);
  v26 = swift_checkMetadataState();
  v25(a1, v26, v24);
  v23(v44, 0);

  v42(v44, &v45, TupleTypeMetadata);

  v27 = swift_modifyAtWritableKeyPath();
  v28 = *(swift_getAssociatedConformanceWitness() + 16);
  v29 = *(v28 + 64);
  v30 = swift_checkMetadataState();
  v29(a1, v30, v28);
  v27(v44, 0);

  v42(v44, &v45, TupleTypeMetadata);

  v31 = swift_modifyAtWritableKeyPath();
  v32 = *(swift_getAssociatedConformanceWitness() + 16);
  v33 = *(v32 + 64);
  v34 = swift_checkMetadataState();
  v33(a1, v34, v32);
  v31(v44, 0);

  v42(v44, &v45, TupleTypeMetadata);

  v35 = swift_modifyAtWritableKeyPath();
  v36 = *(swift_getAssociatedConformanceWitness() + 16);
  v37 = *(v36 + 64);
  v38 = swift_checkMetadataState();
  v37(a1, v38, v36);
  v35(v44, 0);

  return (*(v40 + 8))(&v45, TupleTypeMetadata);
}

uint64_t CRStruct_9.minEncodingVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v80 = a3;
  v4 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = v49 - v5;
  v78 = swift_getAssociatedTypeWitness();
  v54 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v53 = v49 - v6;
  v81 = swift_getAssociatedTypeWitness();
  v57 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v56 = v49 - v7;
  v82 = swift_getAssociatedTypeWitness();
  v60 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v59 = v49 - v8;
  v83 = swift_getAssociatedTypeWitness();
  v63 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v62 = v49 - v9;
  v84 = swift_getAssociatedTypeWitness();
  v66 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v65 = v49 - v10;
  v85 = swift_getAssociatedTypeWitness();
  v69 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v68 = v49 - v11;
  v86 = swift_getAssociatedTypeWitness();
  v72 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v71 = v49 - v12;
  v87 = swift_getAssociatedTypeWitness();
  v75 = *(v87 - 8);
  v13 = MEMORY[0x1EEE9AC00](v87);
  v74 = v49 - v14;
  v76 = v4;
  v77 = a1;
  (*(v4 + 160))(v99, a1, v4, v13);
  v73 = v99[2];
  v70 = v99[5];
  v67 = v99[8];
  v64 = v99[11];
  v61 = v99[14];
  v58 = v99[17];
  v55 = v99[20];
  v52 = v99[23];
  v49[1] = v99[26];
  v15 = (*(*(v76 + 8) + 24))(v77);
  sub_1AE21FFB0(v15, &v98);

  v16 = v98;
  if (v98 > 2u)
  {
    goto LABEL_29;
  }

  v17 = v74;
  swift_getAtKeyPath();
  v18 = v87;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(*(AssociatedConformanceWitness + 16) + 8) + 24))(&TupleTypeMetadata2, v18);
  (*(v75 + 8))(v17, v18);
  if (TupleTypeMetadata2 > v16)
  {
    v16 = TupleTypeMetadata2;
  }

  v98 = v16;
  if (TupleTypeMetadata2 > 2u)
  {
    goto LABEL_29;
  }

  v20 = v71;
  swift_getAtKeyPath();
  v21 = v86;
  v22 = swift_getAssociatedConformanceWitness();
  (*(*(*(v22 + 16) + 8) + 24))(&TupleTypeMetadata2, v21);
  (*(v72 + 8))(v20, v21);
  if (TupleTypeMetadata2 > v16)
  {
    v16 = TupleTypeMetadata2;
  }

  v98 = v16;
  if (v16 > 2)
  {
    goto LABEL_29;
  }

  v23 = v68;
  swift_getAtKeyPath();
  v24 = v85;
  v25 = swift_getAssociatedConformanceWitness();
  (*(*(*(v25 + 16) + 8) + 24))(&TupleTypeMetadata2, v24);
  (*(v69 + 8))(v23, v24);
  if (TupleTypeMetadata2 > v16)
  {
    v16 = TupleTypeMetadata2;
  }

  v98 = v16;
  if (TupleTypeMetadata2 > 2u)
  {
    goto LABEL_29;
  }

  v26 = v65;
  swift_getAtKeyPath();
  v27 = v84;
  v28 = swift_getAssociatedConformanceWitness();
  (*(*(*(v28 + 16) + 8) + 24))(&TupleTypeMetadata2, v27);
  (*(v66 + 8))(v26, v27);
  if (TupleTypeMetadata2 > v16)
  {
    v16 = TupleTypeMetadata2;
  }

  v98 = v16;
  if (v16 > 2)
  {
    goto LABEL_29;
  }

  v29 = v62;
  swift_getAtKeyPath();
  v30 = v83;
  v31 = swift_getAssociatedConformanceWitness();
  (*(*(*(v31 + 16) + 8) + 24))(&TupleTypeMetadata2, v30);
  (*(v63 + 8))(v29, v30);
  if (TupleTypeMetadata2 > v16)
  {
    v16 = TupleTypeMetadata2;
  }

  v98 = v16;
  if (TupleTypeMetadata2 > 2u)
  {
    goto LABEL_29;
  }

  v32 = v59;
  swift_getAtKeyPath();
  v33 = v82;
  v34 = swift_getAssociatedConformanceWitness();
  (*(*(*(v34 + 16) + 8) + 24))(&TupleTypeMetadata2, v33);
  (*(v60 + 8))(v32, v33);
  if (TupleTypeMetadata2 > v16)
  {
    v16 = TupleTypeMetadata2;
  }

  v98 = v16;
  if (v16 > 2)
  {
    goto LABEL_29;
  }

  v35 = v56;
  swift_getAtKeyPath();
  v36 = v81;
  v37 = swift_getAssociatedConformanceWitness();
  (*(*(*(v37 + 16) + 8) + 24))(&TupleTypeMetadata2, v36);
  (*(v57 + 8))(v35, v36);
  if (TupleTypeMetadata2 > v16)
  {
    v16 = TupleTypeMetadata2;
  }

  v98 = v16;
  if (TupleTypeMetadata2 >= 3u)
  {
LABEL_29:
    LOBYTE(v42) = v16;
    v98 = v16;
LABEL_30:
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v90 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v91 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v92 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v93 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v94 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v95 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v96 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v97 = swift_getTupleTypeMetadata2();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    result = (*(*(TupleTypeMetadata - 8) + 8))(v99, TupleTypeMetadata);
    goto LABEL_31;
  }

  v38 = v53;
  swift_getAtKeyPath();
  v39 = v16;
  v40 = v78;
  v41 = swift_getAssociatedConformanceWitness();
  (*(*(*(v41 + 16) + 8) + 24))(&TupleTypeMetadata2, v40);
  (*(v54 + 8))(v38, v40);
  if (TupleTypeMetadata2 > v39)
  {
    v39 = TupleTypeMetadata2;
  }

  v98 = v39;
  v42 = v39;
  if (v39 > 2)
  {
    goto LABEL_30;
  }

  v43 = v50;
  swift_getAtKeyPath();
  v44 = AssociatedTypeWitness;
  v45 = swift_getAssociatedConformanceWitness();
  (*(*(*(v45 + 16) + 8) + 24))(&v88, v44);
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v90 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v91 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v92 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v93 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v94 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v95 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v96 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v97 = swift_getTupleTypeMetadata2();
  v46 = swift_getTupleTypeMetadata();
  (*(*(v46 - 8) + 8))(v99, v46);
  result = (*(v51 + 8))(v43, v44);
  if (v88 > v42)
  {
    LOBYTE(v42) = v88;
  }

LABEL_31:
  *v80 = v42;
  return result;
}

uint64_t CRStruct_9<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v108 = a8;
  v112 = a7;
  v116 = a6;
  v119 = a5;
  v125 = a4;
  v142 = a1;
  v13 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v95 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v94 = &v90 - v14;
  v127 = swift_getAssociatedTypeWitness();
  v98 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v97 = &v90 - v15;
  v128 = swift_getAssociatedTypeWitness();
  v101 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v100 = &v90 - v16;
  v129 = swift_getAssociatedTypeWitness();
  v104 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v103 = &v90 - v17;
  v130 = swift_getAssociatedTypeWitness();
  v107 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v106 = &v90 - v18;
  v132 = swift_getAssociatedTypeWitness();
  v111 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v110 = &v90 - v19;
  v134 = swift_getAssociatedTypeWitness();
  v115 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v114 = &v90 - v20;
  v136 = swift_getAssociatedTypeWitness();
  v118 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v133 = &v90 - v21;
  v141 = swift_getAssociatedTypeWitness();
  v124 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v122 = &v90 - v22;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCF60, &unk_1AE252450);
  v131 = *(v138 - 8);
  v23 = MEMORY[0x1EEE9AC00](v138);
  v147 = &v90 - v24;
  v25 = *(v13 + 160);
  v92 = v13;
  v25(&TupleTypeMetadata2, a2, v13, v23);
  v123 = TupleTypeMetadata2;
  v159 = v161;
  v139 = v162;
  v137 = v165;
  v148 = v168;
  v149 = v167;
  v145 = v170;
  v146 = v164;
  v150 = v173;
  v151 = v171;
  v158 = v176;
  v152 = v174;
  v153 = v177;
  v157 = v179;
  v154 = v180;
  v156 = v182;
  v155 = v183;
  v187[0] = TupleTypeMetadata2;
  v187[1] = v161;
  v187[2] = v162;
  v117 = v163;
  v187[3] = v163;
  v187[4] = v164;
  v187[5] = v165;
  v113 = v166;
  v187[6] = v166;
  v187[7] = v167;
  v187[8] = v168;
  v109 = v169;
  v187[9] = v169;
  v187[10] = v170;
  v187[11] = v171;
  v105 = v172;
  v187[12] = v172;
  v187[13] = v173;
  v187[14] = v174;
  v102 = v175;
  v187[15] = v175;
  v187[16] = v176;
  v187[17] = v177;
  v99 = v178;
  v187[18] = v178;
  v187[19] = v179;
  v187[20] = v180;
  v96 = v181;
  v187[21] = v181;
  v187[22] = v182;
  v187[23] = v183;
  v93 = v184;
  v187[24] = v184;
  v187[25] = v185;
  v140 = v185;
  v187[26] = v186;
  v143 = v186;
  v26 = __swift_project_boxed_opaque_existential_1(v142, v142[3]);
  sub_1AE048F10(v26, v27, v28);
  sub_1AE23E3CC();
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v161 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v162 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v163 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v164 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v165 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v166 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v167 = swift_getTupleTypeMetadata2();
  v91 = a2;
  sub_1AE23DB8C();
  v168 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v121 = *(TupleTypeMetadata - 1);
  v30 = v121 + 16;
  v31 = *(v121 + 16);
  v31(&TupleTypeMetadata2, v187, TupleTypeMetadata);

  v32 = v122;
  swift_getAtKeyPath();

  v142 = TupleTypeMetadata;
  v135 = v30;
  v120 = v31;
  v31(&TupleTypeMetadata2, v187, TupleTypeMetadata);
  v33 = v141;
  v34 = v147;

  v35 = v138;

  TupleTypeMetadata2 = v123;
  v161 = v159;
  v36 = v144;
  sub_1AE23DD5C();
  v144 = v36;
  if (v36)
  {
    (*(v121 + 8))(v187, v142);

    (*(v124 + 8))(v32, v33);
    return (*(v131 + 8))(v34, v35);
  }

  (*(v124 + 8))(v32, v33);
  v38 = v120;
  v120(&TupleTypeMetadata2, v187, v142);

  swift_getAtKeyPath();

  v38(&TupleTypeMetadata2, v187, v142);

  TupleTypeMetadata2 = v117;
  v161 = v146;
  v39 = v138;
  v40 = v136;
  v41 = v144;
  sub_1AE23DD5C();
  v42 = v142;
  v144 = v41;
  if (v41)
  {
    (*(v121 + 8))(v187, v142);

    (*(v118 + 8))(v133, v40);
    return (*(v131 + 8))(v34, v39);
  }

  (*(v118 + 8))(v133, v40);
  v43 = v120;
  v120(&TupleTypeMetadata2, v187, v42);

  v44 = v114;
  swift_getAtKeyPath();

  v43(&TupleTypeMetadata2, v187, v42);

  v45 = v138;

  v46 = v147;

  TupleTypeMetadata2 = v113;
  v161 = v149;
  v47 = v134;
  v48 = v144;
  sub_1AE23DD5C();
  v49 = v131;
  v144 = v48;
  if (v48)
  {
    (*(v121 + 8))(v187, v142);

    (*(v115 + 8))(v44, v47);
    return (*(v49 + 8))(v46, v45);
  }

  (*(v115 + 8))(v44, v47);
  v50 = v120;
  v120(&TupleTypeMetadata2, v187, v142);

  v51 = v110;
  swift_getAtKeyPath();

  v50(&TupleTypeMetadata2, v187, v142);

  v39 = v138;

  v34 = v147;

  TupleTypeMetadata2 = v109;
  v52 = v144;
  v161 = v145;
  v53 = v132;
  sub_1AE23DD5C();
  v144 = v52;
  if (v52)
  {
    (*(v121 + 8))(v187, v142);

    v54 = v111;
LABEL_13:
    (*(v54 + 8))(v51, v53);
    return (*(v131 + 8))(v34, v39);
  }

  (*(v111 + 8))(v51, v53);
  v55 = v120;
  v120(&TupleTypeMetadata2, v187, v142);

  v51 = v106;
  swift_getAtKeyPath();

  v55(&TupleTypeMetadata2, v187, v142);

  v39 = v138;

  v34 = v147;

  TupleTypeMetadata2 = v105;
  v161 = v150;
  v53 = v130;
  v56 = v144;
  sub_1AE23DD5C();
  v144 = v56;
  if (v56)
  {
    (*(v121 + 8))(v187, v142);

    v54 = v107;
    goto LABEL_13;
  }

  v141 = a9;

  (*(v107 + 8))(v51, v53);
  v57 = v120;
  v120(&TupleTypeMetadata2, v187, v142);

  v58 = v103;
  swift_getAtKeyPath();

  v57(&TupleTypeMetadata2, v187, v142);
  v59 = v138;

  v60 = v147;

  TupleTypeMetadata2 = v102;
  v161 = v158;
  v61 = v129;
  v62 = v144;
  sub_1AE23DD5C();
  v144 = v62;
  if (v62)
  {
    (*(v121 + 8))(v187, v142);

    v63 = v104;
LABEL_18:
    (*(v63 + 8))(v58, v61);
    return (*(v131 + 8))(v60, v59);
  }

  v141 = a10;

  (*(v104 + 8))(v58, v61);
  v64 = v120;
  v120(&TupleTypeMetadata2, v187, v142);

  v58 = v100;
  swift_getAtKeyPath();

  v64(&TupleTypeMetadata2, v187, v142);
  v59 = v138;

  v60 = v147;

  TupleTypeMetadata2 = v99;
  v161 = v157;
  v61 = v128;
  v65 = v144;
  sub_1AE23DD5C();
  v144 = v65;
  if (v65)
  {
    (*(v121 + 8))(v187, v142);

    v63 = v101;
    goto LABEL_18;
  }

  v141 = a11;

  (*(v101 + 8))(v58, v61);
  v66 = v120;
  v120(&TupleTypeMetadata2, v187, v142);

  v67 = v97;
  swift_getAtKeyPath();

  v66(&TupleTypeMetadata2, v187, v142);

  v39 = v138;

  v34 = v147;

  TupleTypeMetadata2 = v96;
  v161 = v156;
  v68 = v127;
  v69 = v144;
  sub_1AE23DD5C();
  v144 = v69;
  if (v69)
  {
    (*(v121 + 8))(v187, v142);

    (*(v98 + 8))(v67, v68);
    return (*(v131 + 8))(v34, v39);
  }

  v141 = a12;

  (*(v98 + 8))(v67, v68);
  v70 = v120;
  v120(&TupleTypeMetadata2, v187, v142);

  v71 = v94;
  swift_getAtKeyPath();

  v70(&TupleTypeMetadata2, v187, v142);
  v59 = v138;

  v72 = v71;

  v60 = v147;

  TupleTypeMetadata2 = v93;
  v161 = v140;
  v73 = AssociatedTypeWitness;
  v74 = v144;
  sub_1AE23DD5C();
  v144 = v74;
  if (v74)
  {
    (*(v121 + 8))(v187, v142);

    (*(v95 + 8))(v72, v73);
    return (*(v131 + 8))(v60, v59);
  }

  (*(v95 + 8))(v72, v73);
  result = (*(*(v92 + 8) + 24))(v91);
  v76 = 0;
  v77 = result + 64;
  v78 = result;
  v79 = 1 << *(result + 32);
  v80 = -1;
  if (v79 < 64)
  {
    v80 = ~(-1 << v79);
  }

  v81 = v80 & *(result + 64);
  v82 = (v79 + 63) >> 6;
  v83 = v142;
  if (v81)
  {
    while (1)
    {
      v84 = v76;
LABEL_31:
      v85 = __clz(__rbit64(v81)) | (v84 << 6);
      v86 = (*(v78 + 48) + 16 * v85);
      v87 = *v86;
      v88 = v86[1];
      v187[29] = *(*(v78 + 56) + 8 * v85);
      TupleTypeMetadata2 = v87;
      v161 = v88;
      sub_1AE048F64(result, v83, v75);

      v89 = v144;
      sub_1AE23DD5C();
      v144 = v89;
      if (v89)
      {
        break;
      }

      v81 &= v81 - 1;

      v76 = v84;
      v83 = v142;
      if (!v81)
      {
        goto LABEL_28;
      }
    }

    (*(v121 + 8))(v187, v142);

    (*(v131 + 8))(v147, v138);
  }

  else
  {
LABEL_28:
    while (1)
    {
      v84 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        break;
      }

      if (v84 >= v82)
      {
        (*(v121 + 8))(v187, v83);

        return (*(v131 + 8))(v147, v138);
      }

      v81 = *(v77 + 8 * v84);
      ++v76;
      if (v81)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CRStruct_10_Final.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v137 = a1;
  v135 = a4;
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v124 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v122 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v123 = &v93 - v11;
  v133 = swift_getAssociatedTypeWitness();
  v121 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v119 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v120 = &v93 - v14;
  v132 = swift_getAssociatedTypeWitness();
  v118 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v116 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v117 = &v93 - v17;
  v131 = swift_getAssociatedTypeWitness();
  v114 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v112 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v113 = &v93 - v20;
  v130 = swift_getAssociatedTypeWitness();
  v111 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v109 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v110 = &v93 - v23;
  v129 = swift_getAssociatedTypeWitness();
  v108 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v106 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v107 = &v93 - v26;
  v128 = swift_getAssociatedTypeWitness();
  v105 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v103 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v104 = &v93 - v29;
  v127 = swift_getAssociatedTypeWitness();
  v102 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v100 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v101 = &v93 - v32;
  v126 = swift_getAssociatedTypeWitness();
  v99 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v97 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v98 = &v93 - v35;
  v125 = swift_getAssociatedTypeWitness();
  v96 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v94 = &v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v95 = &v93 - v39;
  (*(*(a2 - 8) + 16))(a4, v5, a2, v38);
  v136 = v8;
  v40 = *(v8 + 176);
  v139 = a2;
  v40(v163, a2, v8);
  v161 = v163[1];
  v154 = v163[7];
  v155 = v163[4];
  v147 = v163[5];
  v148 = v163[8];
  v140 = v163[10];
  v144 = v163[11];
  v151 = v163[13];
  v152 = v163[2];
  v159 = v163[14];
  v149 = v163[15];
  v160 = v163[17];
  v142 = v163[18];
  v157 = v163[19];
  v150 = v163[20];
  v156 = v163[22];
  v153 = v163[23];
  v41 = v163[25];
  v42 = v163[26];
  v158 = v163[16];
  v143 = v163[28];
  v145 = v163[29];
  sub_1AE23DB8C();
  v162[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v162[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v162[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v162[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v162[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v162[5] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v162[6] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v162[7] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v162[8] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v162[9] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v115 = *(TupleTypeMetadata - 8);
  v44 = *(v115 + 16);
  v141 = TupleTypeMetadata;
  v142 = v115 + 16;
  v149 = v44;
  v44(v162, v163, TupleTypeMetadata);

  v138 = v42;

  v149(v162, v163, v141);

  v146 = v41;

  v45 = v94;
  swift_getAtKeyPath();

  v46 = v125;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(v137, v46);
  (*(v96 + 8))(v45, v46);
  swift_setAtWritableKeyPath();

  v48 = v141;
  v49 = v149;
  v149(v162, v163, v141);

  v49(v162, v163, v48);

  v50 = v97;
  swift_getAtKeyPath();

  v51 = v126;
  v52 = swift_getAssociatedConformanceWitness();
  (*(*(v52 + 16) + 24))(v137, v51);
  (*(v99 + 8))(v50, v51);
  swift_setAtWritableKeyPath();

  v53 = v48;
  v54 = v149;
  v149(v162, v163, v53);

  v54(v162, v163, v141);

  v55 = v100;
  swift_getAtKeyPath();

  v56 = v127;
  v57 = swift_getAssociatedConformanceWitness();
  (*(*(v57 + 16) + 24))(v137, v56);
  (*(v102 + 8))(v55, v56);
  swift_setAtWritableKeyPath();

  v149(v162, v163, v141);

  v149(v162, v163, v141);

  v58 = v103;
  swift_getAtKeyPath();

  v59 = v128;
  v60 = swift_getAssociatedConformanceWitness();
  (*(*(v60 + 16) + 24))(v137, v59);
  (*(v105 + 8))(v58, v59);
  swift_setAtWritableKeyPath();

  v149(v162, v163, v141);

  v149(v162, v163, v141);

  v61 = v106;
  swift_getAtKeyPath();

  v62 = v129;
  v63 = swift_getAssociatedConformanceWitness();
  (*(*(v63 + 16) + 24))(v137, v62);
  (*(v108 + 8))(v61, v62);
  swift_setAtWritableKeyPath();

  v64 = v141;
  v65 = v149;
  v149(v162, v163, v141);

  v65(v162, v163, v64);

  v66 = v109;
  swift_getAtKeyPath();

  v67 = v130;
  v68 = swift_getAssociatedConformanceWitness();
  (*(*(v68 + 16) + 24))(v137, v67);
  (*(v111 + 8))(v66, v67);
  swift_setAtWritableKeyPath();

  v69 = v141;
  v149(v162, v163, v141);

  v149(v162, v163, v69);

  v70 = v112;
  swift_getAtKeyPath();

  v71 = v131;
  v72 = swift_getAssociatedConformanceWitness();
  (*(*(v72 + 16) + 24))(v137, v71);
  (*(v114 + 8))(v70, v71);
  swift_setAtWritableKeyPath();

  v149(v162, v163, v69);

  v73 = v69;
  v74 = v149;
  v149(v162, v163, v73);

  v75 = v116;
  swift_getAtKeyPath();

  v76 = v132;
  v77 = swift_getAssociatedConformanceWitness();
  (*(*(v77 + 16) + 24))(v137, v76);
  (*(v118 + 8))(v75, v76);
  swift_setAtWritableKeyPath();

  v78 = v141;
  v74(v162, v163, v141);

  v74(v162, v163, v78);

  v79 = v119;
  swift_getAtKeyPath();

  v80 = v133;
  v81 = swift_getAssociatedConformanceWitness();
  (*(*(v81 + 16) + 24))(v137, v80);
  (*(v121 + 8))(v79, v80);
  swift_setAtWritableKeyPath();

  v82 = v141;
  v149(v162, v163, v141);

  v149(v162, v163, v82);

  v83 = v122;
  swift_getAtKeyPath();

  v84 = v136;
  v85 = v139;
  v86 = AssociatedTypeWitness;
  v87 = swift_getAssociatedConformanceWitness();
  v88 = v137;
  (*(*(v87 + 16) + 24))(v137, v86);
  (*(v124 + 8))(v83, v86);
  swift_setAtWritableKeyPath();

  v89 = *(v84 + 8);
  v90 = (*(v89 + 24))(v85, v89);
  v91 = sub_1AE156B60(v90, v88);

  (*(v89 + 32))(v91, v85, v89);
  return (*(v115 + 8))(v163, v141);
}

uint64_t CRStruct_10_Final.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v120 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v119 = v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v118 = v90 - v12;
  v129 = swift_getAssociatedTypeWitness();
  v117 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v116 = v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v115 = v90 - v15;
  v128 = swift_getAssociatedTypeWitness();
  v114 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v113 = v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v112 = v90 - v18;
  v127 = swift_getAssociatedTypeWitness();
  v110 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v109 = v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v108 = v90 - v21;
  v126 = swift_getAssociatedTypeWitness();
  v107 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v106 = v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v105 = v90 - v24;
  v125 = swift_getAssociatedTypeWitness();
  v104 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v103 = v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v102 = v90 - v27;
  v124 = swift_getAssociatedTypeWitness();
  v101 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v100 = v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v99 = v90 - v30;
  v123 = swift_getAssociatedTypeWitness();
  v98 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v97 = v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v96 = v90 - v33;
  v122 = swift_getAssociatedTypeWitness();
  v95 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v94 = v90 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v93 = v90 - v36;
  v121 = swift_getAssociatedTypeWitness();
  v92 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v91 = v90 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39.n128_f64[0] = MEMORY[0x1EEE9AC00](v38);
  v90[1] = v90 - v40;
  if (a1)
  {
    v41 = a1;
  }

  else
  {
    v41 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v160[0] = v41;
  (*(*(a2 - 8) + 16))(a4, v5, a2, v39);
  v132 = a4;
  v133 = v9;
  v131 = v5;
  v42 = *(v9 + 176);

  v42(v159, a2, v9);
  v157 = v159[4];
  TupleTypeMetadata = v159[6];
  v155 = v159[7];
  v152 = v159[8];
  v147 = v159[9];
  v150 = v159[5];
  v151 = v159[10];
  v140 = v159[11];
  v141 = v159[2];
  v135 = a2;
  v142 = v159[14];
  v138 = v159[13];
  v139 = v159[16];
  v134 = v159[17];
  v144 = v159[19];
  v149 = v159[22];
  v43 = v159[1];
  v136 = v159[26];
  v137 = v159[20];
  v154 = v159[23];
  v148 = v159[25];
  v143 = v159[28];
  v145 = v159[29];
  sub_1AE23DB8C();
  v158[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v158[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v158[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v158[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v158[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v158[5] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v158[6] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v158[7] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v158[8] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v158[9] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v111 = *(TupleTypeMetadata - 8);
  v146 = *(v111 + 16);
  v147 = v111 + 16;
  v146(v158, v159, TupleTypeMetadata);
  v153 = v43;

  v146(v158, v159, TupleTypeMetadata);

  v44 = v91;
  swift_getAtKeyPath();

  v45 = v121;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(v160, v45);
  (*(v92 + 8))(v44, v45);
  swift_setAtWritableKeyPath();

  v47 = v146;
  v146(v158, v159, TupleTypeMetadata);

  v47(v158, v159, TupleTypeMetadata);

  v48 = v94;
  swift_getAtKeyPath();

  v49 = v122;
  v50 = swift_getAssociatedConformanceWitness();
  (*(*(v50 + 16) + 24))(v160, v49);
  (*(v95 + 8))(v48, v49);
  swift_setAtWritableKeyPath();

  v146(v158, v159, TupleTypeMetadata);

  v146(v158, v159, TupleTypeMetadata);

  v51 = v97;
  swift_getAtKeyPath();

  v52 = v123;
  v53 = swift_getAssociatedConformanceWitness();
  (*(*(v53 + 16) + 24))(v160, v52);
  (*(v98 + 8))(v51, v52);
  swift_setAtWritableKeyPath();

  v146(v158, v159, TupleTypeMetadata);

  v146(v158, v159, TupleTypeMetadata);

  v54 = v100;
  swift_getAtKeyPath();

  v55 = v124;
  v56 = swift_getAssociatedConformanceWitness();
  (*(*(v56 + 16) + 24))(v160, v55);
  (*(v101 + 8))(v54, v55);
  swift_setAtWritableKeyPath();

  v57 = TupleTypeMetadata;
  v58 = v146;
  v146(v158, v159, TupleTypeMetadata);

  v58(v158, v159, v57);

  v59 = v103;
  swift_getAtKeyPath();

  v60 = v125;
  v61 = swift_getAssociatedConformanceWitness();
  (*(*(v61 + 16) + 24))(v160, v60);
  (*(v104 + 8))(v59, v60);
  swift_setAtWritableKeyPath();

  v62 = v146;
  v146(v158, v159, TupleTypeMetadata);

  v62(v158, v159, TupleTypeMetadata);

  v63 = v106;
  swift_getAtKeyPath();

  v64 = v126;
  v65 = swift_getAssociatedConformanceWitness();
  (*(*(v65 + 16) + 24))(v160, v64);
  (*(v107 + 8))(v63, v64);
  swift_setAtWritableKeyPath();

  v66 = TupleTypeMetadata;
  v146(v158, v159, TupleTypeMetadata);

  v146(v158, v159, v66);

  v67 = v109;
  swift_getAtKeyPath();

  v68 = v127;
  v69 = swift_getAssociatedConformanceWitness();
  (*(*(v69 + 16) + 24))(v160, v68);
  (*(v110 + 8))(v67, v68);
  swift_setAtWritableKeyPath();

  v70 = TupleTypeMetadata;
  v146(v158, v159, TupleTypeMetadata);

  v71 = v70;
  v72 = v146;
  v146(v158, v159, v71);

  v73 = v113;
  swift_getAtKeyPath();

  v74 = v128;
  v75 = swift_getAssociatedConformanceWitness();
  (*(*(v75 + 16) + 24))(v160, v74);
  (*(v114 + 8))(v73, v74);
  swift_setAtWritableKeyPath();

  v72(v158, v159, TupleTypeMetadata);

  v146(v158, v159, TupleTypeMetadata);

  v76 = v116;
  swift_getAtKeyPath();

  v77 = v129;
  v78 = swift_getAssociatedConformanceWitness();
  (*(*(v78 + 16) + 24))(v160, v77);
  (*(v117 + 8))(v76, v77);
  swift_setAtWritableKeyPath();

  v79 = TupleTypeMetadata;
  v80 = v146;
  v146(v158, v159, TupleTypeMetadata);

  v80(v158, v159, v79);

  v81 = v119;
  swift_getAtKeyPath();

  v82 = v133;
  v83 = v135;
  v84 = AssociatedTypeWitness;
  v85 = swift_getAssociatedConformanceWitness();
  (*(*(v85 + 16) + 24))(v160, v84);
  (*(v120 + 8))(v81, v84);
  swift_setAtWritableKeyPath();

  v86 = *(v82 + 8);
  v87 = (*(v86 + 24))(v83, v86);
  v88 = sub_1AE156B60(v87, v160);

  (*(v86 + 32))(v88, v83, v86);
  return (*(v111 + 8))(v159, TupleTypeMetadata);
}

uint64_t static CRStruct_10_Final.fieldKeys.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 176))(v28);
  v4 = v28[0];
  v5 = v28[3];
  v26 = v28[4];
  v18 = v28[7];
  v6 = v28[6];
  v7 = v28[9];
  v25 = v28[1];
  v8 = v28[12];
  v22 = v28[13];
  v23 = v28[10];
  v24 = v28[16];
  v10 = v28[15];
  v11 = v28[18];
  v19 = v28[19];
  v12 = v28[21];
  v13 = v28[24];
  v14 = v28[27];
  v20 = v28[28];
  v21 = v28[22];
  v17 = v28[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AE252440;
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v27[0] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v27[1] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v27[2] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v27[3] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v27[4] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v27[5] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v27[6] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v27[7] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v27[8] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v27[9] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v9 = *(TupleTypeMetadata - 8);
  v15 = *(v9 + 16);
  v15(v27, v28, TupleTypeMetadata);

  *(v16 + 32) = v4;
  *(v16 + 40) = v25;
  v15(v27, v28, TupleTypeMetadata);

  *(v16 + 48) = v5;
  *(v16 + 56) = v26;
  v15(v27, v28, TupleTypeMetadata);

  *(v16 + 64) = v6;
  *(v16 + 72) = v18;
  v15(v27, v28, TupleTypeMetadata);

  *(v16 + 80) = v7;
  *(v16 + 88) = v23;
  v15(v27, v28, TupleTypeMetadata);

  *(v16 + 96) = v8;
  *(v16 + 104) = v22;
  v15(v27, v28, TupleTypeMetadata);

  *(v16 + 112) = v10;
  *(v16 + 120) = v24;
  v15(v27, v28, TupleTypeMetadata);

  *(v16 + 128) = v11;
  *(v16 + 136) = v19;
  v15(v27, v28, TupleTypeMetadata);

  *(v16 + 144) = v12;
  *(v16 + 152) = v21;
  v15(v27, v28, TupleTypeMetadata);

  *(v16 + 160) = v13;
  *(v16 + 168) = v17;
  v15(v27, v28, TupleTypeMetadata);

  *(v16 + 176) = v14;
  *(v16 + 184) = v20;
  (*(v9 + 8))(v28, TupleTypeMetadata);
  return v16;
}

uint64_t CRStruct_10_Final.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v125 = a1;
  v113 = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v112 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v111 = &v91 - v6;
  v123 = swift_getAssociatedTypeWitness();
  v110 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v109 = &v91 - v7;
  v121 = swift_getAssociatedTypeWitness();
  v108 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v106 = &v91 - v8;
  v120 = swift_getAssociatedTypeWitness();
  v105 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v104 = &v91 - v9;
  v119 = swift_getAssociatedTypeWitness();
  v103 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v102 = &v91 - v10;
  v118 = swift_getAssociatedTypeWitness();
  v101 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v100 = &v91 - v11;
  v117 = swift_getAssociatedTypeWitness();
  v99 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v98 = &v91 - v12;
  v116 = swift_getAssociatedTypeWitness();
  v97 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v96 = &v91 - v13;
  v115 = swift_getAssociatedTypeWitness();
  v95 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v94 = &v91 - v14;
  v114 = swift_getAssociatedTypeWitness();
  v93 = *(v114 - 8);
  v15 = MEMORY[0x1EEE9AC00](v114);
  v92 = &v91 - v16;
  v17 = *(v5 + 176);
  v128 = a2;
  v124 = v5;
  v17(v155, a2, v5, v15);
  v143 = v155[3];
  v144 = v155[0];
  v135 = v155[6];
  v18 = v155[22];
  v137 = v155[1];
  v140 = v155[5];
  v141 = v155[2];
  v148 = v155[7];
  v149 = v155[4];
  v130 = v155[8];
  v131 = v155[20];
  v145 = v155[13];
  v146 = v155[10];
  v133 = v155[25];
  v134 = v155[11];
  v147 = v155[14];
  v138 = v155[17];
  v139 = v155[16];
  v19 = v155[19];
  v132 = v155[23];
  v127 = v155[26];
  v20 = v155[28];
  v21 = v155[29];
  if (qword_1ED9670C0 != -1)
  {
    swift_once();
  }

  v153 = word_1ED96F220;
  v154 = byte_1ED96F222;
  sub_1AE23DB8C();
  v150[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v150[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v150[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v150[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v150[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v150[5] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v150[6] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v150[7] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v150[8] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v150[9] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v107 = *(TupleTypeMetadata - 8);
  v23 = *(v107 + 16);
  v135 = v107 + 16;
  v143 = TupleTypeMetadata;
  v23(v150, v155, TupleTypeMetadata);
  v144 = v23;

  v126 = v21;

  v142 = v20;

  v136 = v18;

  v129 = v19;

  v23(v150, v155, TupleTypeMetadata);

  v24 = v92;
  swift_getAtKeyPath();

  v25 = swift_modifyAtWritableKeyPath();
  v26 = v114;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 8))(&v151, v24, v26);
  (*(v93 + 8))(v24, v26);
  v25(v150, 0);

  LOWORD(v150[0]) = v151;
  BYTE2(v150[0]) = v152;
  v28 = v150;
  MergeResult.merge(_:)(v28);
  v144(v150, v155, v143);

  v144(v150, v155, v143);

  v29 = v94;
  swift_getAtKeyPath();

  v30 = swift_modifyAtWritableKeyPath();
  v31 = v115;
  v32 = swift_getAssociatedConformanceWitness();
  (*(*(v32 + 8) + 8))(&v151, v29, v31);
  (*(v95 + 8))(v29, v31);
  v30(v150, 0);

  LOWORD(v150[0]) = v151;
  BYTE2(v150[0]) = v152;
  v33 = v150;
  MergeResult.merge(_:)(v33);
  v144(v150, v155, v143);

  v144(v150, v155, v143);

  v34 = v96;
  swift_getAtKeyPath();

  v35 = swift_modifyAtWritableKeyPath();
  v36 = v116;
  v37 = swift_getAssociatedConformanceWitness();
  (*(*(v37 + 8) + 8))(&v151, v34, v36);
  (*(v97 + 8))(v34, v36);
  v35(v150, 0);

  LOWORD(v150[0]) = v151;
  BYTE2(v150[0]) = v152;
  v38 = v150;
  MergeResult.merge(_:)(v38);
  v39 = v143;
  v40 = v144;
  v144(v150, v155, v143);

  v40(v150, v155, v39);

  v41 = v98;
  swift_getAtKeyPath();

  v42 = swift_modifyAtWritableKeyPath();
  v43 = v117;
  v44 = swift_getAssociatedConformanceWitness();
  (*(*(v44 + 8) + 8))(&v151, v41, v43);
  (*(v99 + 8))(v41, v43);
  v42(v150, 0);

  LOWORD(v150[0]) = v151;
  BYTE2(v150[0]) = v152;
  v45 = v150;
  MergeResult.merge(_:)(v45);
  v144(v150, v155, v143);

  v144(v150, v155, v143);

  v46 = v100;
  swift_getAtKeyPath();

  v47 = swift_modifyAtWritableKeyPath();
  v48 = v118;
  v49 = swift_getAssociatedConformanceWitness();
  (*(*(v49 + 8) + 8))(&v151, v46, v48);
  (*(v101 + 8))(v46, v48);
  v47(v150, 0);

  LOWORD(v150[0]) = v151;
  BYTE2(v150[0]) = v152;
  v50 = v150;
  MergeResult.merge(_:)(v50);
  v51 = v143;
  v52 = v144;
  v144(v150, v155, v143);

  v52(v150, v155, v51);

  v53 = v102;
  swift_getAtKeyPath();

  v54 = swift_modifyAtWritableKeyPath();
  v55 = v119;
  v56 = swift_getAssociatedConformanceWitness();
  (*(*(v56 + 8) + 8))(&v151, v53, v55);
  (*(v103 + 8))(v53, v55);
  v54(v150, 0);

  LOWORD(v150[0]) = v151;
  BYTE2(v150[0]) = v152;
  v57 = v150;
  MergeResult.merge(_:)(v57);
  v144(v150, v155, v143);

  v144(v150, v155, v143);

  v58 = v104;
  swift_getAtKeyPath();

  v59 = swift_modifyAtWritableKeyPath();
  v60 = v120;
  v61 = swift_getAssociatedConformanceWitness();
  (*(*(v61 + 8) + 8))(&v151, v58, v60);
  (*(v105 + 8))(v58, v60);
  v59(v150, 0);

  LOWORD(v150[0]) = v151;
  BYTE2(v150[0]) = v152;
  v62 = v150;
  MergeResult.merge(_:)(v62);
  v144(v150, v155, v143);

  v144(v150, v155, v143);

  v63 = v106;
  swift_getAtKeyPath();

  v64 = swift_modifyAtWritableKeyPath();
  v65 = v121;
  v66 = swift_getAssociatedConformanceWitness();
  (*(*(v66 + 8) + 8))(&v151, v63, v65);
  (*(v108 + 8))(v63, v65);
  v64(v150, 0);

  LOWORD(v150[0]) = v151;
  BYTE2(v150[0]) = v152;
  v67 = v150;
  MergeResult.merge(_:)(v67);
  v69 = v143;
  v68 = v144;
  v144(v150, v155, v143);

  v68(v150, v155, v69);

  v70 = v109;
  swift_getAtKeyPath();

  v71 = swift_modifyAtWritableKeyPath();
  v72 = v123;
  v73 = swift_getAssociatedConformanceWitness();
  (*(*(v73 + 8) + 8))(&v151, v70, v72);
  (*(v110 + 8))(v70, v72);
  v71(v150, 0);

  LOWORD(v150[0]) = v151;
  BYTE2(v150[0]) = v152;
  v74 = v150;
  MergeResult.merge(_:)(v74);
  v75 = v143;
  v144(v150, v155, v143);

  v144(v150, v155, v75);

  v76 = v111;
  swift_getAtKeyPath();

  v77 = swift_modifyAtWritableKeyPath();
  v78 = v124;
  v79 = v128;
  v80 = AssociatedTypeWitness;
  v81 = swift_getAssociatedConformanceWitness();
  (*(*(v81 + 8) + 8))(&v151, v76, v80);
  (*(v112 + 8))(v76, v80);
  v77(v150, 0);

  LOWORD(v150[0]) = v151;
  BYTE2(v150[0]) = v152;
  v82 = v150;
  MergeResult.merge(_:)(v82);
  v83 = *(v78 + 8);
  v84 = (*(v83 + 24))(v79, v83);
  v85 = (*(v83 + 40))(v150, v79, v83);
  sub_1AE21F75C(v84, &v151);

  v85(v150, 0);
  LOWORD(v150[0]) = v151;
  BYTE2(v150[0]) = v152;
  v86 = v150;
  MergeResult.merge(_:)(v86);
  (*(v83 + 64))(v79, v83);
  result = (*(v107 + 8))(v155, v143);
  v88 = HIBYTE(v153);
  v89 = v154;
  v90 = v113;
  *v113 = v153;
  v90[1] = v88;
  v90[2] = v89;
  return result;
}

uint64_t CRStruct_10_Final.newRefs(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v161 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v139 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v138 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v159 = &v119 - v7;
  v156 = swift_getAssociatedTypeWitness();
  v137 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v136 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v158 = &v119 - v10;
  v155 = swift_getAssociatedTypeWitness();
  v135 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v133 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v154 = &v119 - v13;
  v153 = swift_getAssociatedTypeWitness();
  v132 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v131 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v152 = &v119 - v16;
  v151 = swift_getAssociatedTypeWitness();
  v130 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v129 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v150 = &v119 - v19;
  v148 = swift_getAssociatedTypeWitness();
  v128 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v127 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v149 = &v119 - v22;
  v146 = swift_getAssociatedTypeWitness();
  v126 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v125 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v147 = &v119 - v25;
  v145 = swift_getAssociatedTypeWitness();
  v124 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v123 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v144 = &v119 - v28;
  v143 = swift_getAssociatedTypeWitness();
  v122 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v121 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v142 = &v119 - v31;
  v141 = swift_getAssociatedTypeWitness();
  v120 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v119 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v140 = &v119 - v35;
  v160 = v4;
  v36 = *(v4 + 176);
  v162 = a2;
  v36(v188, a2, v4, v34);
  v172 = v188[2];
  v173 = v188[4];
  v171 = v188[5];
  v185 = v188[7];
  v169 = v188[8];
  v164 = v188[11];
  v181 = v188[13];
  v182 = v188[10];
  v184 = v188[14];
  v174 = v188[17];
  v175 = v188[16];
  v179 = v188[18];
  v183 = v188[19];
  v176 = v188[20];
  v177 = v188[1];
  v168 = v188[21];
  v170 = v188[22];
  v37 = v188[23];
  v178 = v188[25];
  v163 = v188[26];
  v166 = v188[28];
  v180 = v188[29];
  v187 = MEMORY[0x1E69E7CD0];
  sub_1AE23DB8C();
  v186[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v186[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v186[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v186[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v186[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v186[5] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v186[6] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v186[7] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v186[8] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v186[9] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v134 = *(TupleTypeMetadata - 8);
  v168 = *(v134 + 16);
  v179 = v134 + 16;
  v168(v186, v188, TupleTypeMetadata);

  v167 = v37;

  swift_getAtKeyPath();

  v168(v186, v188, TupleTypeMetadata);

  v38 = v119;
  swift_getAtKeyPath();

  v39 = v141;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = v140;
  v42 = (*(AssociatedConformanceWitness + 64))(v38, v39, AssociatedConformanceWitness);
  v43 = *(v120 + 8);
  v43(v38, v39);
  v43(v41, v39);
  sub_1AE00F014(v42);
  v44 = TupleTypeMetadata;
  v168(v186, v188, TupleTypeMetadata);

  swift_getAtKeyPath();

  v168(v186, v188, v44);

  v45 = v121;
  swift_getAtKeyPath();

  v46 = v143;
  v47 = swift_getAssociatedConformanceWitness();
  v48 = v142;
  v49 = (*(v47 + 64))(v45, v46, v47);
  v50 = *(v122 + 8);
  v50(v45, v46);
  v50(v48, v46);
  sub_1AE00F014(v49);
  v51 = TupleTypeMetadata;
  v52 = v168;
  v168(v186, v188, TupleTypeMetadata);

  swift_getAtKeyPath();

  v52(v186, v188, v51);

  v53 = v123;
  swift_getAtKeyPath();

  v54 = v145;
  v55 = swift_getAssociatedConformanceWitness();
  v56 = v144;
  v57 = (*(v55 + 64))(v53, v54, v55);
  v58 = *(v124 + 8);
  v58(v53, v54);
  v58(v56, v54);
  sub_1AE00F014(v57);
  v59 = v168;
  v168(v186, v188, TupleTypeMetadata);

  swift_getAtKeyPath();

  v59(v186, v188, TupleTypeMetadata);

  v60 = v125;
  swift_getAtKeyPath();

  v61 = v146;
  v62 = swift_getAssociatedConformanceWitness();
  v63 = v147;
  v64 = (*(v62 + 64))(v60, v61, v62);
  v65 = *(v126 + 8);
  v65(v60, v61);
  v65(v63, v61);
  sub_1AE00F014(v64);
  v66 = TupleTypeMetadata;
  v168(v186, v188, TupleTypeMetadata);

  swift_getAtKeyPath();

  v168(v186, v188, v66);

  v67 = v127;
  swift_getAtKeyPath();

  v68 = v148;
  v69 = swift_getAssociatedConformanceWitness();
  v70 = v149;
  v71 = (*(v69 + 64))(v67, v68, v69);
  v72 = *(v128 + 8);
  v72(v67, v68);
  v72(v70, v68);
  sub_1AE00F014(v71);
  v73 = v168;
  v168(v186, v188, TupleTypeMetadata);

  swift_getAtKeyPath();

  v73(v186, v188, TupleTypeMetadata);

  v74 = v129;
  swift_getAtKeyPath();

  v75 = v151;
  v76 = swift_getAssociatedConformanceWitness();
  v77 = v74;
  v78 = v150;
  v79 = (*(v76 + 64))(v74, v75, v76);
  v80 = *(v130 + 8);
  v80(v77, v75);
  v80(v78, v75);
  sub_1AE00F014(v79);
  v81 = TupleTypeMetadata;
  v82 = v168;
  v168(v186, v188, TupleTypeMetadata);

  swift_getAtKeyPath();

  v82(v186, v188, v81);

  v83 = v131;
  swift_getAtKeyPath();

  v84 = v153;
  v85 = swift_getAssociatedConformanceWitness();
  v86 = v152;
  v87 = (*(v85 + 64))(v83, v84, v85);
  v88 = *(v132 + 8);
  v88(v83, v84);
  v88(v86, v84);
  sub_1AE00F014(v87);
  v168(v186, v188, TupleTypeMetadata);

  swift_getAtKeyPath();

  v89 = TupleTypeMetadata;
  v168(v186, v188, TupleTypeMetadata);

  v90 = v133;
  swift_getAtKeyPath();

  v91 = v155;
  v92 = swift_getAssociatedConformanceWitness();
  v93 = v154;
  v94 = (*(v92 + 64))(v90, v91, v92);
  v95 = *(v135 + 8);
  v95(v90, v91);
  v95(v93, v91);
  sub_1AE00F014(v94);
  v96 = v168;
  v168(v186, v188, v89);

  swift_getAtKeyPath();

  v96(v186, v188, TupleTypeMetadata);

  v97 = v136;
  swift_getAtKeyPath();

  v98 = v156;
  v99 = swift_getAssociatedConformanceWitness();
  v100 = v158;
  v101 = (*(v99 + 64))(v97, v98, v99);
  v102 = *(v137 + 8);
  v102(v97, v98);
  v102(v100, v98);
  sub_1AE00F014(v101);
  v103 = TupleTypeMetadata;
  v168(v186, v188, TupleTypeMetadata);

  swift_getAtKeyPath();

  v168(v186, v188, v103);

  v104 = v138;
  swift_getAtKeyPath();

  v105 = v160;
  v106 = v162;
  v107 = AssociatedTypeWitness;
  v108 = swift_getAssociatedConformanceWitness();
  v109 = v159;
  v110 = (*(v108 + 64))(v104, v107, v108);
  v111 = *(v139 + 8);
  v111(v104, v107);
  v111(v109, v107);
  sub_1AE00F014(v110);
  v112 = *(v105 + 8);
  v113 = *(v112 + 24);
  v114 = v113(v106, v112);
  v115 = v113(v106, v112);
  sub_1AE2200E4(v115, v114);
  v117 = v116;

  sub_1AE00F014(v117);
  (*(v134 + 8))(v188, TupleTypeMetadata);
  return v187;
}

uint64_t CRStruct_10_Final.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v237 = a2;
  v236 = a1;
  v190 = a5;
  v6 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v261 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v262 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v263 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v264 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v265 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v266 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v267 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v268 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v269 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v270 = sub_1AE23D7CC();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v148 = &v138 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v185 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v184 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v182 = &v138 - v10;
  v183 = *(swift_getAssociatedConformanceWitness() + 16);
  v139 = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  v188 = *(v11 - 8);
  v189 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v225 = &v138 - v12;
  v220 = swift_getAssociatedTypeWitness();
  v181 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v180 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v223 = &v138 - v15;
  v179 = *(swift_getAssociatedConformanceWitness() + 16);
  v140 = swift_getAssociatedTypeWitness();
  v205 = sub_1AE23D7CC();
  v187 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v227 = &v138 - v16;
  v221 = swift_getAssociatedTypeWitness();
  v178 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v175 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v222 = &v138 - v19;
  v174 = *(swift_getAssociatedConformanceWitness() + 16);
  v141 = swift_getAssociatedTypeWitness();
  v204 = sub_1AE23D7CC();
  v186 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v228 = &v138 - v20;
  v219 = swift_getAssociatedTypeWitness();
  v172 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v171 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v218 = &v138 - v23;
  v170 = *(swift_getAssociatedConformanceWitness() + 16);
  v142 = swift_getAssociatedTypeWitness();
  v203 = sub_1AE23D7CC();
  v202 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v229 = &v138 - v24;
  v217 = swift_getAssociatedTypeWitness();
  v168 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v167 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v216 = &v138 - v27;
  v166 = *(swift_getAssociatedConformanceWitness() + 16);
  v143 = swift_getAssociatedTypeWitness();
  v28 = sub_1AE23D7CC();
  v200 = *(v28 - 8);
  v201 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v230 = &v138 - v29;
  v215 = swift_getAssociatedTypeWitness();
  v164 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v163 = &v138 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v214 = &v138 - v32;
  v162 = *(swift_getAssociatedConformanceWitness() + 16);
  v144 = swift_getAssociatedTypeWitness();
  v33 = sub_1AE23D7CC();
  v198 = *(v33 - 8);
  v199 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v231 = &v138 - v34;
  v213 = swift_getAssociatedTypeWitness();
  v161 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v160 = &v138 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v212 = &v138 - v37;
  v159 = *(swift_getAssociatedConformanceWitness() + 16);
  v145 = swift_getAssociatedTypeWitness();
  v38 = sub_1AE23D7CC();
  v196 = *(v38 - 8);
  v197 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v232 = &v138 - v39;
  v211 = swift_getAssociatedTypeWitness();
  v158 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v157 = &v138 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v210 = &v138 - v42;
  v156 = *(swift_getAssociatedConformanceWitness() + 16);
  v146 = swift_getAssociatedTypeWitness();
  v43 = sub_1AE23D7CC();
  v194 = *(v43 - 8);
  v195 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v233 = &v138 - v44;
  v208 = swift_getAssociatedTypeWitness();
  v155 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v154 = &v138 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v209 = &v138 - v47;
  v153 = *(swift_getAssociatedConformanceWitness() + 16);
  v147 = swift_getAssociatedTypeWitness();
  v48 = sub_1AE23D7CC();
  v192 = *(v48 - 8);
  v193 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v234 = &v138 - v49;
  v206 = swift_getAssociatedTypeWitness();
  v152 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v151 = &v138 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v207 = &v138 - v52;
  v150 = *(swift_getAssociatedConformanceWitness() + 16);
  v173 = swift_getAssociatedTypeWitness();
  v53 = sub_1AE23D7CC();
  v176 = *(v53 - 8);
  v177 = v53;
  v54 = MEMORY[0x1EEE9AC00](v53);
  v226 = &v138 - v55;
  v56 = *(v6 + 176);
  v191 = v6;
  v56(&v261, a3, v6, v54);
  v254 = v261;
  v235 = v262;
  v242 = v263;
  v249 = v265;
  v255 = v266;
  v259 = v268;
  v248 = v269;
  v257 = v271;
  v250 = v272;
  v244 = v273;
  v253 = v274;
  v239 = v275;
  v243 = v276;
  v252 = v277;
  v258 = v278;
  v169 = v279;
  v251 = v280;
  v238 = v282;
  v256 = v284;
  v57 = v287;
  v245 = v281;
  v247 = v283;
  v240 = v285;
  v246 = v286;
  sub_1AE23DB8C();
  v260[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v260[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v260[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v260[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v260[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v260[5] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v260[6] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v260[7] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v260[8] = swift_getTupleTypeMetadata2();
  v165 = a3;
  sub_1AE23DB8C();
  v260[9] = swift_getTupleTypeMetadata2();
  v243 = swift_getTupleTypeMetadata();
  v169 = *(v243 - 8);
  v244 = *(v169 + 16);
  v254 = v169 + 16;
  v244(v260, &v261, v243);

  v241 = v57;

  swift_getAtKeyPath();

  v244(v260, &v261, v243);

  v58 = v151;
  swift_getAtKeyPath();

  v59 = v207;
  v60 = v206;
  (*(v150 + 40))(v58, v237, v206);
  v61 = *(v152 + 8);
  v61(v58, v60);
  v61(v59, v60);
  v62 = v244;
  v244(v260, &v261, v243);

  swift_getAtKeyPath();

  v62(v260, &v261, v243);

  v63 = v154;
  swift_getAtKeyPath();

  v64 = v209;
  v65 = v208;
  (*(v153 + 40))(v63, v237, v208);
  v66 = *(v155 + 8);
  v66(v63, v65);
  v66(v64, v65);
  v67 = v243;
  v244(v260, &v261, v243);

  swift_getAtKeyPath();

  v244(v260, &v261, v67);

  v68 = v157;
  swift_getAtKeyPath();

  v69 = v210;
  v70 = v211;
  (*(v156 + 40))(v68, v237, v211);
  v71 = *(v158 + 8);
  v71(v68, v70);
  v71(v69, v70);
  v244(v260, &v261, v243);

  swift_getAtKeyPath();

  v244(v260, &v261, v243);

  v72 = v160;
  swift_getAtKeyPath();

  v73 = v72;
  v74 = v212;
  v75 = v213;
  (*(v159 + 40))(v72, v237, v213);
  v76 = *(v161 + 8);
  v76(v73, v75);
  v76(v74, v75);
  v77 = v243;
  v78 = v244;
  v244(v260, &v261, v243);

  swift_getAtKeyPath();

  v78(v260, &v261, v77);

  v79 = v163;
  swift_getAtKeyPath();

  v80 = v79;
  v81 = v214;
  v82 = v215;
  (*(v162 + 40))(v79, v237, v215);
  v83 = *(v164 + 8);
  v83(v80, v82);
  v83(v81, v82);
  v84 = v244;
  v244(v260, &v261, v243);

  swift_getAtKeyPath();

  v84(v260, &v261, v243);

  v85 = v167;
  swift_getAtKeyPath();

  v86 = v85;
  v87 = v216;
  v88 = v217;
  (*(v166 + 40))(v85, v237, v217);
  v89 = *(v168 + 8);
  v89(v86, v88);
  v89(v87, v88);
  v244(v260, &v261, v243);

  swift_getAtKeyPath();

  v90 = v244;
  v244(v260, &v261, v243);

  v91 = v171;
  swift_getAtKeyPath();

  v92 = v218;
  v93 = v219;
  (*(v170 + 40))(v91, v237, v219);
  v94 = *(v172 + 8);
  v94(v91, v93);
  v94(v92, v93);
  v95 = v243;
  v90(v260, &v261, v243);

  swift_getAtKeyPath();

  v244(v260, &v261, v95);

  v96 = v175;
  swift_getAtKeyPath();

  v97 = v222;
  v98 = v221;
  (*(v174 + 40))(v96, v237, v221);
  v99 = *(v178 + 8);
  v99(v96, v98);
  v99(v97, v98);
  v100 = v243;
  v101 = v244;
  v244(v260, &v261, v243);

  swift_getAtKeyPath();

  v101(v260, &v261, v100);

  v102 = v180;
  swift_getAtKeyPath();

  v103 = v223;
  v104 = v220;
  (*(v179 + 40))(v102, v237, v220);
  v105 = *(v181 + 8);
  v105(v102, v104);
  v105(v103, v104);
  v106 = v243;
  v244(v260, &v261, v243);

  v107 = v182;
  swift_getAtKeyPath();

  v244(v260, &v261, v106);

  v108 = v184;
  swift_getAtKeyPath();

  v109 = AssociatedTypeWitness;
  (*(v183 + 40))(v108, v237, AssociatedTypeWitness);
  (*(v169 + 8))(&v261, v106);
  v110 = *(v185 + 8);
  v110(v108, v109);
  v110(v107, v109);
  if ((*(*(v173 - 8) + 48))(v226, 1) == 1 && (*(*(v147 - 8) + 48))(v234, 1) == 1 && (*(*(v146 - 8) + 48))(v233, 1) == 1 && (*(*(v145 - 8) + 48))(v232, 1) == 1 && (*(*(v144 - 8) + 48))(v231, 1) == 1 && (*(*(v143 - 8) + 48))(v230, 1) == 1 && (*(*(v142 - 8) + 48))(v229, 1) == 1 && (*(*(v141 - 8) + 48))(v228, 1) == 1 && (*(*(v140 - 8) + 48))(v227, 1) == 1 && (*(*(v139 - 8) + 48))(v225, 1) == 1)
  {
    (*(v176 + 8))(v226, v177);
    v111 = swift_getAssociatedTypeWitness();
    (*(*(v111 - 8) + 56))(v190, 1, 1, v111);
    v113 = v188;
    v112 = v189;
    v114 = v225;
    v115 = v186;
    v116 = v187;
    v117 = v202;
    v118 = v200;
    v119 = v193;
    v120 = v194;
    v121 = v192;
  }

  else
  {
    v122 = v148;
    v123 = TupleTypeMetadata[12];
    v124 = TupleTypeMetadata[16];
    v125 = TupleTypeMetadata[20];
    v126 = TupleTypeMetadata[24];
    v127 = TupleTypeMetadata[28];
    v128 = TupleTypeMetadata[32];
    v129 = TupleTypeMetadata[36];
    v258 = TupleTypeMetadata[40];
    v259 = TupleTypeMetadata[44];
    (*(v176 + 32))(v148, v226, v177);
    (*(v192 + 16))(&v122[v123], v234, v193);
    (*(v194 + 16))(&v122[v124], v233, v195);
    (*(v196 + 16))(&v122[v125], v232, v197);
    (*(v198 + 16))(&v122[v126], v231, v199);
    (*(v200 + 16))(&v122[v127], v230, v201);
    (*(v202 + 16))(&v122[v128], v229, v203);
    v115 = v186;
    (*(v186 + 16))(&v122[v129], v228, v204);
    v116 = v187;
    (*(v187 + 16))(&v122[v258], v227, v205);
    v113 = v188;
    v130 = v189;
    v131 = v225;
    (*(v188 + 16))(&v122[v259], v225, v189);
    v132 = swift_getAssociatedTypeWitness();
    v133 = v190;
    v119 = v193;
    v120 = v194;
    swift_dynamicCast();
    v134 = *(*(v132 - 8) + 56);
    v135 = v133;
    v118 = v200;
    v136 = v132;
    v121 = v192;
    v134(v135, 0, 1, v136);
    v114 = v131;
    v112 = v130;
    v117 = v202;
  }

  (*(v113 + 8))(v114, v112);
  (*(v116 + 8))(v227, v205);
  (*(v115 + 8))(v228, v204);
  (*(v117 + 8))(v229, v203);
  (*(v118 + 8))(v230, v201);
  (*(v198 + 8))(v231, v199);
  (*(v196 + 8))(v232, v197);
  (*(v120 + 8))(v233, v195);
  return (*(v121 + 8))(v234, v119);
}

uint64_t CRStruct_10_Final.hasDelta(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v155 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v115 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v114 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v118 = &v113 - v7;
  v146 = swift_getAssociatedTypeWitness();
  v117 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v116 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v113 - v10;
  v147 = swift_getAssociatedTypeWitness();
  v120 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v119 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v124 = &v113 - v13;
  v148 = swift_getAssociatedTypeWitness();
  v123 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v122 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v127 = &v113 - v16;
  v149 = swift_getAssociatedTypeWitness();
  v126 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v125 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v130 = &v113 - v19;
  v150 = swift_getAssociatedTypeWitness();
  v129 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v128 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v133 = &v113 - v22;
  v151 = swift_getAssociatedTypeWitness();
  v132 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v131 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v136 = &v113 - v25;
  v152 = swift_getAssociatedTypeWitness();
  v135 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v134 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v139 = &v113 - v28;
  v153 = swift_getAssociatedTypeWitness();
  v138 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v137 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v143 = &v113 - v31;
  v162 = swift_getAssociatedTypeWitness();
  v142 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v141 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v161 = &v113 - v35;
  v160 = v4;
  v36 = *(v4 + 176);
  v158 = a2;
  v36(v182, a2, v4, v34);
  v168 = v182[4];
  v159 = v182[5];
  v156 = v182[7];
  v173 = v182[8];
  v174 = v182[1];
  v163 = v182[2];
  v164 = v182[10];
  v166 = v182[12];
  v171 = v182[11];
  v172 = v182[14];
  v154 = v182[15];
  v180 = v182[16];
  v175 = v182[13];
  v176 = v182[17];
  v179 = v182[19];
  v177 = v182[20];
  v178 = v182[22];
  v165 = v182[23];
  v169 = v182[28];
  v170 = v182[25];
  v167 = v182[26];
  v157 = v182[29];
  sub_1AE23DB8C();
  v181[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v181[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v181[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v181[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v181[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v181[5] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v181[6] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v181[7] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v181[8] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v181[9] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v144 = *(TupleTypeMetadata - 8);
  v38 = v144 + 16;
  v39 = *(v144 + 16);
  v39(v181, v182, TupleTypeMetadata);

  swift_getAtKeyPath();

  v166 = TupleTypeMetadata;
  v154 = v38;
  v140 = v39;
  v39(v181, v182, TupleTypeMetadata);

  v40 = v141;
  swift_getAtKeyPath();

  v41 = v162;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = v161;
  LOBYTE(TupleTypeMetadata) = (*(AssociatedConformanceWitness + 88))(v40, v41, AssociatedConformanceWitness);
  v44 = *(v142 + 8);
  v44(v40, v41);
  v44(v43, v41);
  if ((TupleTypeMetadata & 1) != 0
    || (v45 = v140, v140(v181, v182, v166), , , , , , , , , , , , , , , , , , , , swift_getAtKeyPath(), , v45(v181, v182, v166), , , , , , , , , , , , , , , , , , , , v46 = v137, swift_getAtKeyPath(), , v47 = v153, v48 = swift_getAssociatedConformanceWitness(), v49 = v143, LOBYTE(v45) = (*(v48 + 88))(v46, v47, v48), v50 = *(v138 + 8), v50(v46, v47), v50(v49, v47), (v45 & 1) != 0)
    || (v51 = v140, v140(v181, v182, v166), , , , , , , , , , , , , , , , , , , , swift_getAtKeyPath(), , v51(v181, v182, v166), , , , , , , , , , , , , , , , , , , , v52 = v134, swift_getAtKeyPath(), , v53 = v152, v54 = swift_getAssociatedConformanceWitness(), v55 = v139, LOBYTE(v51) = (*(v54 + 88))(v52, v53, v54), v56 = *(v135 + 8), v56(v52, v53), v56(v55, v53), (v51 & 1) != 0)
    || (v57 = v140, v140(v181, v182, v166), , , , , , , , , , , , , , , , , , , , swift_getAtKeyPath(), , v57(v181, v182, v166), , , , , , , , , , , , , , , , , , , , v58 = v131, swift_getAtKeyPath(), , v59 = v151, v60 = swift_getAssociatedConformanceWitness(), v61 = v136, LOBYTE(v57) = (*(v60 + 88))(v58, v59, v60), v62 = *(v132 + 8), v62(v58, v59), v62(v61, v59), (v57 & 1) != 0)
    || (v63 = v140, v140(v181, v182, v166), , , , , , , , , , , , , , , , , , , , swift_getAtKeyPath(), , v63(v181, v182, v166), , , , , , , , , , , , , , , , , , , , v64 = v128, swift_getAtKeyPath(), , v65 = v150, v66 = swift_getAssociatedConformanceWitness(), v67 = v133, LOBYTE(v63) = (*(v66 + 88))(v64, v65, v66), v68 = *(v129 + 8), v68(v64, v65), v68(v67, v65), (v63 & 1) != 0)
    || (v69 = v140, v140(v181, v182, v166), , , , , , , , , , , , , , , , , , , , swift_getAtKeyPath(), , v69(v181, v182, v166), , , , , , , , , , , , , , , , , , , , v70 = v125, swift_getAtKeyPath(), , v71 = v149, v72 = swift_getAssociatedConformanceWitness(), v73 = v130, v74 = (*(v72 + 88))(v70, v71, v72), v75 = *(v126 + 8), v75(v70, v71), v75(v73, v71), (v74 & 1) != 0)
    || (v76 = v140, v140(v181, v182, v166), , , , , , , , , , , , , , , , , , , , swift_getAtKeyPath(), , v76(v181, v182, v166), , , , , , , , , , , , , , , , , , , , v77 = v122, swift_getAtKeyPath(), , v78 = v148, v79 = swift_getAssociatedConformanceWitness(), v80 = v127, v81 = (*(v79 + 88))(v77, v78, v79), v82 = *(v123 + 8), v82(v77, v78), v82(v80, v78), (v81 & 1) != 0)
    || (v83 = v140, v140(v181, v182, v166), , , , , , , , , , , , , , , , , , , , swift_getAtKeyPath(), , v83(v181, v182, v166), , , , , , , , , , , , , , , , , , , , v84 = v119, swift_getAtKeyPath(), , v85 = v147, v86 = swift_getAssociatedConformanceWitness(), v87 = v124, v88 = (*(v86 + 88))(v84, v85, v86), v89 = *(v120 + 8), v89(v84, v85), v89(v87, v85), (v88 & 1) != 0)
    || (v90 = v140, v140(v181, v182, v166), , , , , , , , , , , , , , , , , , , , swift_getAtKeyPath(), , v90(v181, v182, v166), , , , , , , , , , , , , , , , , , , , v91 = v116, swift_getAtKeyPath(), , v92 = v146, v93 = swift_getAssociatedConformanceWitness(), v94 = v121, v95 = (*(v93 + 88))(v91, v92, v93), v96 = *(v117 + 8), v96(v91, v92), v96(v94, v92), (v95 & 1) != 0))
  {
    v97 = v166;
  }

  else
  {
    v100 = v166;
    v101 = v140;
    v140(v181, v182, v166);

    swift_getAtKeyPath();

    v97 = v100;
    v101(v181, v182, v100);

    v102 = v158;

    v103 = v114;
    swift_getAtKeyPath();

    v104 = AssociatedTypeWitness;
    v105 = swift_getAssociatedConformanceWitness();
    v106 = v118;
    LOBYTE(v100) = (*(v105 + 88))(v103, v104, v105);
    v107 = *(v115 + 8);
    v107(v103, v104);
    v107(v106, v104);
    if ((v100 & 1) == 0)
    {
      v108 = *(v160 + 8);
      v109 = *(v108 + 24);
      v110 = v109(v102, v108);
      v111 = v109(v102, v108);
      sub_1AE21FE14(v111, v110);
      v98 = v112;

      goto LABEL_12;
    }
  }

  v98 = 1;
LABEL_12:
  (*(v144 + 8))(v182, v97);
  return v98 & 1;
}

uint64_t CRStruct_10_Final.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v219 = a1;
  v176 = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v171 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v169 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v167 = &v127 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v127 = swift_getAssociatedTypeWitness();
  v209 = sub_1AE23D7CC();
  v175 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v211 = &v127 - v9;
  v197 = swift_getAssociatedTypeWitness();
  v166 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v165 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v200 = &v127 - v12;
  v164 = swift_getAssociatedConformanceWitness();
  v128 = swift_getAssociatedTypeWitness();
  v181 = sub_1AE23D7CC();
  v174 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v206 = &v127 - v13;
  v196 = swift_getAssociatedTypeWitness();
  v162 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v160 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v198 = &v127 - v16;
  v159 = swift_getAssociatedConformanceWitness();
  v129 = swift_getAssociatedTypeWitness();
  v205 = sub_1AE23D7CC();
  v173 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v212 = &v127 - v17;
  v195 = swift_getAssociatedTypeWitness();
  v157 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v156 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v194 = &v127 - v20;
  v155 = swift_getAssociatedConformanceWitness();
  v130 = swift_getAssociatedTypeWitness();
  v208 = sub_1AE23D7CC();
  v172 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v218 = &v127 - v21;
  v193 = swift_getAssociatedTypeWitness();
  v153 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v152 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v192 = &v127 - v24;
  v151 = swift_getAssociatedConformanceWitness();
  v131 = swift_getAssociatedTypeWitness();
  v207 = sub_1AE23D7CC();
  v170 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v213 = &v127 - v25;
  v191 = swift_getAssociatedTypeWitness();
  v150 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v149 = &v127 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v190 = &v127 - v28;
  v148 = swift_getAssociatedConformanceWitness();
  v132 = swift_getAssociatedTypeWitness();
  v204 = sub_1AE23D7CC();
  v180 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v214 = &v127 - v29;
  v189 = swift_getAssociatedTypeWitness();
  v147 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v146 = &v127 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v188 = &v127 - v32;
  v145 = swift_getAssociatedConformanceWitness();
  v133 = swift_getAssociatedTypeWitness();
  v203 = sub_1AE23D7CC();
  v179 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v215 = &v127 - v33;
  v187 = swift_getAssociatedTypeWitness();
  v144 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v143 = &v127 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v186 = &v127 - v36;
  v142 = swift_getAssociatedConformanceWitness();
  v134 = swift_getAssociatedTypeWitness();
  v202 = sub_1AE23D7CC();
  v178 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v216 = &v127 - v37;
  v185 = swift_getAssociatedTypeWitness();
  v141 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v140 = &v127 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v184 = &v127 - v40;
  v139 = swift_getAssociatedConformanceWitness();
  v135 = swift_getAssociatedTypeWitness();
  v201 = sub_1AE23D7CC();
  v177 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v217 = &v127 - v41;
  v182 = swift_getAssociatedTypeWitness();
  v138 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v137 = &v127 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v183 = &v127 - v44;
  v136 = swift_getAssociatedConformanceWitness();
  v158 = swift_getAssociatedTypeWitness();
  v163 = sub_1AE23D7CC();
  v161 = *(v163 - 8);
  v45 = MEMORY[0x1EEE9AC00](v163);
  v210 = &v127 - v46;
  (*(v5 + 176))(v253, a2, v5, v45);
  v235 = v253[1];
  v228 = v253[2];
  v237 = v253[3];
  v240 = v253[4];
  v227 = v253[5];
  v239 = v253[7];
  v221 = v253[8];
  v230 = v253[10];
  v238 = v253[11];
  v242 = v253[13];
  v224 = v253[14];
  v232 = v253[16];
  v229 = v253[17];
  TupleTypeMetadata = v253[18];
  v220 = v253[21];
  v223 = v253[28];
  v47 = v253[19];
  v233 = v253[20];
  v225 = v253[22];
  v241 = v253[23];
  v231 = v253[25];
  v236 = v253[26];
  v48 = v253[29];
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v244 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v245 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v246 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v247 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v248 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v249 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v250 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v251 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v252 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v154 = *(TupleTypeMetadata - 8);
  v220 = *(v154 + 16);
  v237 = v154 + 16;
  v220(&TupleTypeMetadata2, v253, TupleTypeMetadata);

  v222 = v48;

  v234 = v47;

  swift_getAtKeyPath();

  v220(&TupleTypeMetadata2, v253, TupleTypeMetadata);

  v49 = v137;
  swift_getAtKeyPath();

  v50 = v182;
  v51 = v183;
  (*(v136 + 72))(v49, v182);
  v52 = *(v138 + 8);
  v52(v49, v50);
  v52(v51, v50);
  v53 = TupleTypeMetadata;
  v54 = v220;
  v220(&TupleTypeMetadata2, v253, TupleTypeMetadata);

  swift_getAtKeyPath();

  v54(&TupleTypeMetadata2, v253, v53);

  v55 = v140;
  swift_getAtKeyPath();

  v57 = v184;
  v56 = v185;
  (*(v139 + 72))(v55, v185);
  v58 = *(v141 + 8);
  v58(v55, v56);
  v58(v57, v56);
  v220(&TupleTypeMetadata2, v253, TupleTypeMetadata);

  swift_getAtKeyPath();

  v220(&TupleTypeMetadata2, v253, TupleTypeMetadata);

  v59 = v143;
  swift_getAtKeyPath();

  v60 = v186;
  v61 = v187;
  (*(v142 + 72))(v59, v187);
  v62 = *(v144 + 8);
  v62(v59, v61);
  v62(v60, v61);
  v63 = v220;
  v220(&TupleTypeMetadata2, v253, TupleTypeMetadata);

  swift_getAtKeyPath();

  v63(&TupleTypeMetadata2, v253, TupleTypeMetadata);

  v64 = v146;
  swift_getAtKeyPath();

  v66 = v188;
  v65 = v189;
  (*(v145 + 72))(v64, v189);
  v67 = *(v147 + 8);
  v67(v64, v65);
  v67(v66, v65);
  v68 = TupleTypeMetadata;
  v220(&TupleTypeMetadata2, v253, TupleTypeMetadata);

  swift_getAtKeyPath();

  v69 = v68;
  v70 = v220;
  v220(&TupleTypeMetadata2, v253, v69);

  v71 = v149;
  swift_getAtKeyPath();

  v73 = v190;
  v72 = v191;
  (*(v148 + 72))(v71, v191);
  v74 = *(v150 + 8);
  v74(v71, v72);
  v74(v73, v72);
  v70(&TupleTypeMetadata2, v253, TupleTypeMetadata);

  swift_getAtKeyPath();

  v220(&TupleTypeMetadata2, v253, TupleTypeMetadata);

  v75 = v152;
  swift_getAtKeyPath();

  v76 = v192;
  v77 = v193;
  (*(v151 + 72))(v75, v193);
  v78 = *(v153 + 8);
  v78(v75, v77);
  v78(v76, v77);
  v79 = TupleTypeMetadata;
  v80 = v220;
  v220(&TupleTypeMetadata2, v253, TupleTypeMetadata);

  swift_getAtKeyPath();

  v80(&TupleTypeMetadata2, v253, v79);

  v81 = v156;
  swift_getAtKeyPath();

  v82 = v194;
  v83 = v195;
  (*(v155 + 72))(v81, v195);
  v84 = *(v157 + 8);
  v84(v81, v83);
  v84(v82, v83);
  v85 = TupleTypeMetadata;
  v86 = v220;
  v220(&TupleTypeMetadata2, v253, TupleTypeMetadata);

  swift_getAtKeyPath();

  v86(&TupleTypeMetadata2, v253, v85);

  v87 = v160;
  swift_getAtKeyPath();

  v88 = v198;
  v89 = v196;
  (*(v159 + 72))(v87, v196);
  v90 = *(v162 + 8);
  v90(v87, v89);
  v90(v88, v89);
  v220(&TupleTypeMetadata2, v253, TupleTypeMetadata);

  swift_getAtKeyPath();

  v91 = v220;
  v220(&TupleTypeMetadata2, v253, TupleTypeMetadata);

  v92 = v165;
  swift_getAtKeyPath();

  v93 = v200;
  v94 = v197;
  (*(v164 + 72))(v92, v197);
  v95 = *(v166 + 8);
  v95(v92, v94);
  v95(v93, v94);
  v96 = TupleTypeMetadata;
  v91(&TupleTypeMetadata2, v253, TupleTypeMetadata);

  v97 = v167;
  swift_getAtKeyPath();

  v220(&TupleTypeMetadata2, v253, v96);

  v98 = v169;
  swift_getAtKeyPath();

  v99 = AssociatedTypeWitness;
  (*(AssociatedConformanceWitness + 72))(v98, AssociatedTypeWitness);
  (*(v154 + 8))(v253, v96);
  v100 = *(v171 + 8);
  v100(v98, v99);
  v100(v97, v99);
  v101 = v218;
  if ((*(*(v158 - 8) + 48))(v210, 1) == 1 && (*(*(v135 - 8) + 48))(v217, 1) == 1 && (*(*(v134 - 8) + 48))(v216, 1) == 1 && (*(*(v133 - 8) + 48))(v215, 1) == 1 && (*(*(v132 - 8) + 48))(v214, 1) == 1 && (*(*(v131 - 8) + 48))(v213, 1) == 1 && (*(*(v130 - 8) + 48))(v101, 1) == 1 && (*(*(v129 - 8) + 48))(v212, 1) == 1 && (*(*(v128 - 8) + 48))(v206, 1) == 1 && (*(*(v127 - 8) + 48))(v211, 1) == 1)
  {
    v102 = v163;
    (*(v161 + 8))(v210, v163);
    TupleTypeMetadata2 = v102;
    v244 = v201;
    v245 = v202;
    v246 = v203;
    v247 = v204;
    v103 = v207;
    v248 = v207;
    v104 = v208;
    v249 = v208;
    v250 = v205;
    v105 = v181;
    v251 = v181;
    v252 = v209;
    v106 = swift_getTupleTypeMetadata();
    (*(*(v106 - 8) + 56))(v176, 1, 1, v106);
    v108 = v174;
    v107 = v175;
    v109 = v206;
    v111 = v172;
    v110 = v173;
    v112 = v170;
  }

  else
  {
    v113 = v163;
    TupleTypeMetadata2 = v163;
    v114 = v201;
    v244 = v201;
    v115 = v202;
    v245 = v202;
    v116 = v203;
    v246 = v203;
    v117 = v204;
    v247 = v204;
    v248 = v207;
    v249 = v208;
    v118 = v205;
    v250 = v205;
    v251 = v181;
    v252 = v209;
    v119 = swift_getTupleTypeMetadata();
    v120 = v119[12];
    v235 = v119[16];
    v236 = v119[20];
    v237 = v119[24];
    v238 = v119[28];
    v239 = v119[32];
    v240 = v119[36];
    v241 = v119[40];
    v242 = v119[44];
    v121 = v176;
    (*(v161 + 32))(v176, v210, v113);
    (*(v177 + 16))(v121 + v120, v217, v114);
    v122 = v118;
    (*(v178 + 16))(v121 + v235, v216, v115);
    (*(v179 + 16))(v121 + v236, v215, v116);
    (*(v180 + 16))(v121 + v237, v214, v117);
    v112 = v170;
    (*(v170 + 16))(v121 + v238, v213, v207);
    v111 = v172;
    (*(v172 + 16))(v121 + v239, v218, v208);
    v110 = v173;
    (*(v173 + 16))(v121 + v240, v212, v122);
    v108 = v174;
    v109 = v206;
    v105 = v181;
    (*(v174 + 16))(v121 + v241, v206, v181);
    v107 = v175;
    (*(v175 + 16))(v121 + v242, v211, v209);
    v123 = *(*(v119 - 1) + 56);
    v124 = v121;
    v103 = v207;
    v125 = v119;
    v104 = v208;
    v123(v124, 0, 1, v125);
  }

  (*(v107 + 8))(v211, v209);
  (*(v108 + 8))(v109, v105);
  (*(v110 + 8))(v212, v205);
  (*(v111 + 8))(v218, v104);
  (*(v112 + 8))(v213, v103);
  (*(v180 + 8))(v214, v204);
  (*(v179 + 8))(v215, v203);
  (*(v178 + 8))(v216, v202);
  return (*(v177 + 8))(v217, v201);
}

double CRStruct_10_Final.apply(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v296 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v205 = swift_getAssociatedTypeWitness();
  v268 = sub_1AE23D7CC();
  v253 = *(v268 - 8);
  MEMORY[0x1EEE9AC00](v268);
  v235 = &v190 - v5;
  v242 = swift_getAssociatedTypeWitness();
  v234 = swift_getAssociatedConformanceWitness();
  v204 = swift_getAssociatedTypeWitness();
  v262 = sub_1AE23D7CC();
  v248 = *(v262 - 8);
  MEMORY[0x1EEE9AC00](v262);
  v233 = &v190 - v6;
  v241 = swift_getAssociatedTypeWitness();
  v232 = swift_getAssociatedConformanceWitness();
  v203 = swift_getAssociatedTypeWitness();
  v267 = sub_1AE23D7CC();
  v259 = *(v267 - 8);
  MEMORY[0x1EEE9AC00](v267);
  v231 = &v190 - v7;
  v240 = swift_getAssociatedTypeWitness();
  v229 = swift_getAssociatedConformanceWitness();
  v202 = swift_getAssociatedTypeWitness();
  v266 = sub_1AE23D7CC();
  v258 = *(v266 - 8);
  MEMORY[0x1EEE9AC00](v266);
  v227 = &v190 - v8;
  v239 = swift_getAssociatedTypeWitness();
  v224 = swift_getAssociatedConformanceWitness();
  v201 = swift_getAssociatedTypeWitness();
  v265 = sub_1AE23D7CC();
  v257 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v223 = &v190 - v9;
  v238 = swift_getAssociatedTypeWitness();
  v221 = swift_getAssociatedConformanceWitness();
  v200 = swift_getAssociatedTypeWitness();
  v264 = sub_1AE23D7CC();
  v256 = *(v264 - 8);
  MEMORY[0x1EEE9AC00](v264);
  v220 = &v190 - v10;
  v244 = swift_getAssociatedTypeWitness();
  v218 = swift_getAssociatedConformanceWitness();
  v199 = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  v252 = v11;
  v255 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v217 = &v190 - v12;
  v245 = swift_getAssociatedTypeWitness();
  v215 = swift_getAssociatedConformanceWitness();
  v198 = swift_getAssociatedTypeWitness();
  v13 = sub_1AE23D7CC();
  v251 = v13;
  v261 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v214 = &v190 - v14;
  v246 = swift_getAssociatedTypeWitness();
  v211 = swift_getAssociatedConformanceWitness();
  v197 = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v254 = v15;
  v260 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v210 = &v190 - v16;
  v247 = swift_getAssociatedTypeWitness();
  v208 = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedTypeWitness();
  v299 = sub_1AE23D7CC();
  v300 = v15;
  v301 = v13;
  v302 = v11;
  v303 = v264;
  v304 = v265;
  v305 = v266;
  v306 = v267;
  v307 = v262;
  v308 = v268;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v297 = sub_1AE23D7CC();
  v250 = *(v297 - 8);
  MEMORY[0x1EEE9AC00](v297);
  v230 = &v190 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v228 = &v190 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v225 = &v190 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v222 = &v190 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v219 = &v190 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v216 = &v190 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v213 = &v190 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v212 = &v190 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v209 = &v190 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v207 = &v190 - v36;
  v196 = v17;
  v249 = sub_1AE23D7CC();
  v263 = *(v249 - 8);
  v37 = MEMORY[0x1EEE9AC00](v249);
  v237 = &v190 - v38;
  (*(v4 + 176))(&v299, a2, v4, v37);
  v287 = v299;
  v295 = v300;
  v286 = v302;
  v294 = v303;
  v284 = v304;
  v278 = v305;
  v293 = v306;
  v283 = v307;
  v277 = v308;
  v292 = v309;
  v282 = v310;
  v291 = v311;
  v281 = v312;
  v290 = v313;
  v280 = v314;
  v289 = v315;
  v279 = v316;
  v288 = v317;
  v39 = v318;
  v40 = v319;
  v41 = v320;
  v42 = v321;
  v43 = v322;
  v285 = v301;
  v44 = TupleTypeMetadata;
  sub_1AE23DB8C();
  v298[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v298[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v298[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v298[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v298[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v298[5] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v298[6] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v298[7] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v298[8] = swift_getTupleTypeMetadata2();
  v45 = v250;
  sub_1AE23DB8C();
  v298[9] = swift_getTupleTypeMetadata2();
  v46 = swift_getTupleTypeMetadata();
  v226 = *(v46 - 8);
  v47 = *(v226 + 16);
  v287 = v46;
  v276 = v226 + 16;
  v275 = v47;
  (v47)(v298, &v299);

  v286 = v43;

  v277 = v42;

  v269 = v41;
  v48 = v267;

  v278 = v40;

  v270 = v39;

  v49 = *(v45 + 16);
  v50 = v207;
  v274 = v45 + 16;
  v273 = v49;
  v49(v207, v296, v297);
  v51 = *(v44 - 1);
  v272 = *(v51 + 48);
  v271 = v51 + 48;
  v52 = v272(v50, 1, v44);
  v53 = v268;
  v54 = v266;
  v55 = v265;
  v56 = v264;
  if (v52 == 1)
  {
    (*(v45 + 8))(v50, v297);
    (*(*(v196 - 8) + 56))(v237, 1, 1);
    v57 = v45;
  }

  else
  {
    v58 = v44[12];
    v195 = v44[16];
    v196 = v58;
    v59 = v44[20];
    v193 = v44[24];
    v194 = v59;
    v60 = v44[28];
    v191 = v44[32];
    v192 = v60;
    v190 = v44[36];
    v61 = v44[40];
    v62 = v44[44];
    (*(v263 + 32))(v237, v50, v249);
    (*(v253 + 8))(&v50[v62], v53);
    (*(v248 + 8))(&v50[v61], v262);
    (*(v259 + 8))(&v50[v190], v48);
    (*(v258 + 8))(&v50[v191], v54);
    v63 = v55;
    v57 = v250;
    (*(v257 + 8))(&v50[v192], v63);
    (*(v256 + 8))(&v50[v193], v56);
    (*(v255 + 8))(&v50[v194], v252);
    (*(v261 + 8))(&v50[v195], v251);
    (*(v260 + 8))(&v50[v196], v254);
  }

  v64 = swift_modifyAtWritableKeyPath();
  v65 = v237;
  (*(v208 + 80))(v237, v247);
  v67 = v263 + 8;
  v66 = *(v263 + 8);
  v68 = v65;
  v69 = v249;
  v66(v68, v249);
  v64(v298, 0);

  v275(v298, &v299, v287);

  v70 = v209;
  v273(v209, v296, v297);
  v71 = v272(v70, 1, v44);
  v263 = v67;
  v247 = v66;
  if (v71 == 1)
  {
    (*(v57 + 8))(v70, v297);
    v72 = v210;
    (*(*(v197 - 8) + 56))(v210, 1, 1);
    v73 = v260;
  }

  else
  {
    v74 = v44[12];
    v237 = v44[16];
    v75 = v44[20];
    v207 = v44[24];
    v208 = v75;
    v76 = v44[28];
    v196 = v44[32];
    v197 = v76;
    v77 = v44[36];
    v78 = v44[40];
    v79 = v69;
    v80 = v66;
    v81 = v44[44];
    v73 = v260;
    v82 = v210;
    (*(v260 + 32))(v210, &v70[v74], v254);
    (*(v253 + 8))(&v70[v81], v268);
    (*(v248 + 8))(&v70[v78], v262);
    (*(v259 + 8))(&v70[v77], v267);
    (*(v258 + 8))(&v70[v196], v266);
    (*(v257 + 8))(&v70[v197], v265);
    (*(v256 + 8))(&v207[v70], v264);
    (*(v255 + 8))(&v70[v208], v252);
    (*(v261 + 8))(&v237[v70], v251);
    v80(v70, v79);
    v72 = v82;
  }

  v83 = swift_modifyAtWritableKeyPath();
  (*(v211 + 80))(v72, v246);
  v84 = *(v73 + 8);
  v84(v72, v254);
  v83(v298, 0);

  v275(v298, &v299, v287);

  v85 = v212;
  v273(v212, v296, v297);
  v86 = v272(v85, 1, v44);
  v260 = v73 + 8;
  v246 = v84;
  if (v86 == 1)
  {
    (*(v250 + 8))(v85, v297);
    v87 = v214;
    (*(*(v198 - 8) + 56))(v214, 1, 1);
    v88 = v251;
    v89 = v261;
  }

  else
  {
    v237 = v44[12];
    v90 = v44[16];
    v91 = v44[20];
    v210 = v44[24];
    v211 = v91;
    v92 = v44[28];
    v208 = v44[32];
    v209 = v92;
    v93 = v44[36];
    v94 = v44[40];
    v95 = v44[44];
    v89 = v261;
    v87 = v214;
    v88 = v251;
    (*(v261 + 32))(v214, &v85[v90], v251);
    (*(v253 + 8))(&v85[v95], v268);
    (*(v248 + 8))(&v85[v94], v262);
    (*(v259 + 8))(&v85[v93], v267);
    (*(v258 + 8))(&v85[v208], v266);
    (*(v257 + 8))(&v209[v85], v265);
    (*(v256 + 8))(&v210[v85], v264);
    (*(v255 + 8))(&v85[v211], v252);
    v84(&v237[v85], v254);
    v247(v85, v249);
  }

  v96 = swift_modifyAtWritableKeyPath();
  (*(v215 + 80))(v87, v245);
  v97 = *(v89 + 8);
  v97(v87, v88);
  v96(v298, 0);

  v275(v298, &v299, v287);

  v98 = v213;
  v273(v213, v296, v297);
  v99 = v272(v98, 1, v44);
  v261 = v89 + 8;
  v245 = v97;
  if (v99 == 1)
  {
    (*(v250 + 8))(v98, v297);
    v100 = v217;
    (*(*(v199 - 8) + 56))(v217, 1, 1);
    v101 = v252;
    v102 = v255;
  }

  else
  {
    v237 = v44[12];
    v103 = v44[16];
    v104 = v44[20];
    v214 = v44[24];
    v215 = v103;
    v105 = v44[28];
    v211 = v44[32];
    v212 = v105;
    v106 = v44[36];
    v107 = v44[40];
    v108 = v44[44];
    v102 = v255;
    v100 = v217;
    v101 = v252;
    (*(v255 + 32))(v217, &v98[v104], v252);
    (*(v253 + 8))(&v98[v108], v268);
    (*(v248 + 8))(&v98[v107], v262);
    (*(v259 + 8))(&v98[v106], v267);
    (*(v258 + 8))(&v98[v211], v266);
    (*(v257 + 8))(&v212[v98], v265);
    (*(v256 + 8))(&v214[v98], v264);
    v97(&v98[v215], v251);
    v246(&v237[v98], v254);
    v247(v98, v249);
  }

  v109 = swift_modifyAtWritableKeyPath();
  (*(v218 + 80))(v100, v244);
  v110 = *(v102 + 8);
  v110(v100, v101);
  v109(v298, 0);

  v275(v298, &v299, v287);

  v111 = v216;
  v273(v216, v296, v297);
  v112 = v272(v111, 1, v44);
  v255 = v102 + 8;
  v244 = v110;
  if (v112 == 1)
  {
    (*(v250 + 8))(v111, v297);
    v113 = v220;
    (*(*(v200 - 8) + 56))(v220, 1, 1);
    v114 = v264;
    v115 = v256;
  }

  else
  {
    v237 = v44[12];
    v116 = v44[16];
    v217 = v44[20];
    v218 = v116;
    v117 = v44[24];
    v118 = v44[28];
    v214 = v44[32];
    v215 = v118;
    v213 = v44[36];
    v119 = v44[40];
    v120 = v110;
    v121 = v44[44];
    v115 = v256;
    v113 = v220;
    v114 = v264;
    (*(v256 + 32))(v220, &v111[v117], v264);
    (*(v253 + 8))(&v111[v121], v268);
    (*(v248 + 8))(&v111[v119], v262);
    (*(v259 + 8))(&v213[v111], v267);
    (*(v258 + 8))(&v214[v111], v266);
    (*(v257 + 8))(&v111[v215], v265);
    v120(&v217[v111], v252);
    v245(&v111[v218], v251);
    v246(&v237[v111], v254);
    v247(v111, v249);
  }

  v122 = swift_modifyAtWritableKeyPath();
  (*(v221 + 80))(v113, v238);
  v123 = *(v115 + 8);
  v123(v113, v114);
  v122(v298, 0);

  v275(v298, &v299, v287);

  v124 = v219;
  v273(v219, v296, v297);
  v125 = v272(v124, 1, v44);
  v256 = v115 + 8;
  v238 = v123;
  if (v125 == 1)
  {
    (*(v250 + 8))(v124, v297);
    v126 = v223;
    (*(*(v201 - 8) + 56))(v223, 1, 1);
    v127 = v265;
    v128 = v257;
  }

  else
  {
    v237 = v44[12];
    v129 = v44[16];
    v220 = v44[20];
    v221 = v129;
    v130 = v44[24];
    v131 = v44[28];
    v217 = v44[32];
    v218 = v130;
    v216 = v44[36];
    v132 = v44[40];
    v133 = v44[44];
    v128 = v257;
    v126 = v223;
    v134 = v265;
    (*(v257 + 32))(v223, &v124[v131], v265);
    (*(v253 + 8))(&v124[v133], v268);
    (*(v248 + 8))(&v124[v132], v262);
    (*(v259 + 8))(&v216[v124], v267);
    (*(v258 + 8))(&v217[v124], v266);
    v123(&v124[v218], v264);
    v244(&v220[v124], v252);
    v245(&v124[v221], v251);
    v246(&v237[v124], v254);
    v135 = v124;
    v127 = v134;
    v247(v135, v249);
  }

  v136 = swift_modifyAtWritableKeyPath();
  (*(v224 + 80))(v126, v239);
  v137 = *(v128 + 8);
  v137(v126, v127);
  v136(v298, 0);

  v275(v298, &v299, v287);

  v138 = v222;
  v273(v222, v296, v297);
  v139 = v272(v138, 1, v44);
  v257 = v128 + 8;
  v239 = v137;
  if (v139 == 1)
  {
    (*(v250 + 8))(v138, v297);
    v140 = v227;
    (*(*(v202 - 8) + 56))(v227, 1, 1);
    v141 = v266;
    v142 = v258;
  }

  else
  {
    v237 = v44[12];
    v143 = v44[16];
    v223 = v44[20];
    v224 = v143;
    v144 = v44[24];
    v220 = v44[28];
    v221 = v144;
    v145 = v44[32];
    v219 = v44[36];
    v146 = v44[40];
    v147 = v44[44];
    v142 = v258;
    v140 = v227;
    v148 = v266;
    (*(v258 + 32))(v227, &v138[v145], v266);
    (*(v253 + 8))(&v138[v147], v268);
    (*(v248 + 8))(&v138[v146], v262);
    (*(v259 + 8))(&v219[v138], v267);
    v137(&v220[v138], v265);
    v238(&v138[v221], v264);
    v244(&v223[v138], v252);
    v245(&v138[v224], v251);
    v246(&v237[v138], v254);
    v149 = v138;
    v141 = v148;
    v247(v149, v249);
  }

  v150 = swift_modifyAtWritableKeyPath();
  (*(v229 + 80))(v140, v240);
  v151 = *(v142 + 8);
  v151(v140, v141);
  v150(v298, 0);

  v275(v298, &v299, v287);

  v152 = v225;
  v273(v225, v296, v297);
  v153 = v272(v152, 1, v44);
  v258 = v142 + 8;
  v240 = v151;
  if (v153 == 1)
  {
    (*(v250 + 8))(v152, v297);
    v154 = v231;
    (*(*(v203 - 8) + 56))(v231, 1, 1);
    v155 = v268;
    v156 = v259;
    v157 = v262;
  }

  else
  {
    v237 = v44[12];
    v229 = v44[16];
    v227 = v44[20];
    v158 = v44[24];
    v223 = v44[28];
    v224 = v158;
    v159 = v44[32];
    v160 = v44[40];
    v161 = v44[44];
    v156 = v259;
    v154 = v231;
    (*(v259 + 32))(v231, &v152[v44[36]], v267);
    v162 = &v152[v161];
    v155 = v268;
    (*(v253 + 8))(v162, v268);
    v163 = &v152[v160];
    v157 = v262;
    (*(v248 + 8))(v163, v262);
    v151(&v152[v159], v266);
    v239(&v223[v152], v265);
    v238(&v152[v224], v264);
    v244(&v227[v152], v252);
    v245(&v152[v229], v251);
    v246(&v237[v152], v254);
    v247(v152, v249);
  }

  v164 = swift_modifyAtWritableKeyPath();
  (*(v232 + 80))(v154, v241);
  v165 = v154;
  v166 = v267;
  v241 = *(v156 + 8);
  v241(v165, v267);
  v164(v298, 0);

  v275(v298, &v299, v287);

  v167 = v228;
  v273(v228, v296, v297);
  v168 = v272(v167, 1, v44);
  v259 = v156 + 8;
  if (v168 == 1)
  {
    v169 = v297;
    (*(v250 + 8))(v167, v297);
    v170 = v233;
    (*(*(v204 - 8) + 56))(v233, 1, 1);
    v171 = v248;
  }

  else
  {
    v237 = v44[12];
    v172 = v44[16];
    v231 = v44[20];
    v232 = v172;
    v173 = v155;
    v174 = v166;
    v229 = v44[24];
    v227 = v44[28];
    v225 = v44[32];
    v175 = v44[36];
    v176 = v44[44];
    v171 = v248;
    v170 = v233;
    (*(v248 + 32))(v233, &v167[v44[40]], v262);
    (*(v253 + 8))(&v167[v176], v173);
    v177 = &v167[v175];
    v157 = v262;
    v241(v177, v174);
    v240(&v225[v167], v266);
    v239(&v227[v167], v265);
    v238(&v167[v229], v264);
    v244(&v231[v167], v252);
    v245(&v167[v232], v251);
    v246(&v237[v167], v254);
    v247(v167, v249);
    v169 = v297;
  }

  v178 = swift_modifyAtWritableKeyPath();
  (*(v234 + 80))(v170, v242);
  v179 = *(v171 + 8);
  v179(v170, v157);
  v178(v298, 0);

  v275(v298, &v299, v287);

  v180 = v230;
  v273(v230, v296, v169);
  if (v272(v180, 1, v44) == 1)
  {
    (*(v250 + 8))(v180, v169);
    v181 = v235;
    (*(*(v205 - 8) + 56))(v235, 1, 1);
    v182 = v268;
    v183 = v253;
  }

  else
  {
    v297 = v44[12];
    v296 = v44[16];
    v295 = v44[20];
    v294 = v44[24];
    v293 = v44[28];
    v292 = v44[32];
    v184 = v44[36];
    v185 = v44[40];
    v183 = v253;
    v186 = &v180[v44[44]];
    v187 = v235;
    v182 = v268;
    (*(v253 + 32))(v235, v186, v268);
    v179(&v180[v185], v157);
    v241(&v180[v184], v267);
    v240(&v180[v292], v266);
    v239(&v180[v293], v265);
    v181 = v187;
    v238(&v180[v294], v264);
    v244(&v180[v295], v252);
    v245(&v180[v296], v251);
    v246(&v180[v297], v254);
    v247(v180, v249);
  }

  v188 = swift_modifyAtWritableKeyPath();
  (*(AssociatedConformanceWitness + 80))(v181, AssociatedTypeWitness);
  (*(v183 + 8))(v181, v182);
  v188(v298, 0);
  (*(v226 + 8))(&v299, v287);

  return result;
}

uint64_t CRStruct_10_Final.visitReferences(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v103 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v76 = &v76 - v5;
  v106 = swift_getAssociatedTypeWitness();
  v79 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v78 = &v76 - v6;
  v107 = swift_getAssociatedTypeWitness();
  v81 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v80 = &v76 - v7;
  v108 = swift_getAssociatedTypeWitness();
  v83 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v82 = &v76 - v8;
  v109 = swift_getAssociatedTypeWitness();
  v85 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v84 = &v76 - v9;
  v110 = swift_getAssociatedTypeWitness();
  v87 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v86 = &v76 - v10;
  v111 = swift_getAssociatedTypeWitness();
  v89 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v88 = &v76 - v11;
  v112 = swift_getAssociatedTypeWitness();
  v91 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v90 = &v76 - v12;
  v113 = swift_getAssociatedTypeWitness();
  v93 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v92 = &v76 - v13;
  v131 = swift_getAssociatedTypeWitness();
  v102 = *(v131 - 8);
  v14 = MEMORY[0x1EEE9AC00](v131);
  v100 = v4;
  v101 = &v76 - v15;
  v16 = *(v4 + 176);
  v98 = a2;
  v16(v133, a2, v4, v14);
  v117 = v133[1];
  v99 = v133[2];
  v129 = v133[5];
  v130 = v133[4];
  v127 = v133[8];
  v128 = v133[7];
  v125 = v133[11];
  v126 = v133[10];
  v123 = v133[14];
  v124 = v133[13];
  v121 = v133[17];
  v122 = v133[16];
  v119 = v133[20];
  v120 = v133[19];
  v104 = v133[21];
  v118 = v133[22];
  v97 = v133[24];
  v115 = v133[25];
  v116 = v133[23];
  v114 = v133[26];
  v17 = v98;
  v18 = v133[28];
  v19 = v133[29];
  sub_1AE23DB8C();
  v132[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v132[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v132[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v132[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v132[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v132[5] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v132[6] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v132[7] = swift_getTupleTypeMetadata2();
  v20 = v100;
  sub_1AE23DB8C();
  v132[8] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v132[9] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v104 = *(TupleTypeMetadata - 8);
  v94 = *(v104 + 16);
  v95 = v104 + 16;
  v94(v132, v133, TupleTypeMetadata);

  v97 = v19;

  v96 = v18;

  v22 = v101;
  swift_getAtKeyPath();

  v23 = v20;
  v24 = v131;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = v103;
  (*(*(AssociatedConformanceWitness + 16) + 48))(v103, v24);
  (*(v102 + 8))(v22, v24);
  v27 = v26[3];
  v28 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v27);
  if (((*(v28 + 8))(v27, v28) & 1) == 0)
  {
    v94(v132, v133, TupleTypeMetadata);

    v29 = v92;
    swift_getAtKeyPath();

    v30 = v113;
    v31 = swift_getAssociatedConformanceWitness();
    (*(*(v31 + 16) + 48))(v26, v30);
    (*(v93 + 8))(v29, v30);
    v32 = v26[3];
    v33 = v26[4];
    __swift_project_boxed_opaque_existential_1(v26, v32);
    if (((*(v33 + 8))(v32, v33) & 1) == 0)
    {
      v94(v132, v133, TupleTypeMetadata);

      v34 = v90;
      swift_getAtKeyPath();

      v35 = v112;
      v36 = swift_getAssociatedConformanceWitness();
      (*(*(v36 + 16) + 48))(v26, v35);
      (*(v91 + 8))(v34, v35);
      v37 = v26[3];
      v38 = v26[4];
      __swift_project_boxed_opaque_existential_1(v26, v37);
      if (((*(v38 + 8))(v37, v38) & 1) == 0)
      {
        v94(v132, v133, TupleTypeMetadata);

        v39 = v88;
        swift_getAtKeyPath();

        v40 = v111;
        v41 = swift_getAssociatedConformanceWitness();
        (*(*(v41 + 16) + 48))(v26, v40);
        (*(v89 + 8))(v39, v40);
        v42 = v26[3];
        v43 = v26[4];
        __swift_project_boxed_opaque_existential_1(v26, v42);
        if (((*(v43 + 8))(v42, v43) & 1) == 0)
        {
          v94(v132, v133, TupleTypeMetadata);

          v44 = v86;
          swift_getAtKeyPath();

          v45 = v110;
          v46 = swift_getAssociatedConformanceWitness();
          (*(*(v46 + 16) + 48))(v26, v45);
          (*(v87 + 8))(v44, v45);
          v47 = v26[3];
          v48 = v26[4];
          __swift_project_boxed_opaque_existential_1(v26, v47);
          if (((*(v48 + 8))(v47, v48) & 1) == 0)
          {
            v94(v132, v133, TupleTypeMetadata);

            v49 = v84;
            swift_getAtKeyPath();

            v50 = v109;
            v51 = swift_getAssociatedConformanceWitness();
            (*(*(v51 + 16) + 48))(v26, v50);
            (*(v85 + 8))(v49, v50);
            v52 = v26[3];
            v53 = v26[4];
            __swift_project_boxed_opaque_existential_1(v26, v52);
            if (((*(v53 + 8))(v52, v53) & 1) == 0)
            {
              v94(v132, v133, TupleTypeMetadata);

              v54 = v82;
              swift_getAtKeyPath();

              v55 = v108;
              v56 = swift_getAssociatedConformanceWitness();
              (*(*(v56 + 16) + 48))(v26, v55);
              (*(v83 + 8))(v54, v55);
              v57 = v26[3];
              v58 = v26[4];
              __swift_project_boxed_opaque_existential_1(v26, v57);
              if (((*(v58 + 8))(v57, v58) & 1) == 0)
              {
                v94(v132, v133, TupleTypeMetadata);

                v59 = v80;
                swift_getAtKeyPath();

                v60 = v107;
                v61 = swift_getAssociatedConformanceWitness();
                (*(*(v61 + 16) + 48))(v26, v60);
                (*(v81 + 8))(v59, v60);
                v62 = v26[3];
                v63 = v26[4];
                __swift_project_boxed_opaque_existential_1(v26, v62);
                if (((*(v63 + 8))(v62, v63) & 1) == 0)
                {
                  v94(v132, v133, TupleTypeMetadata);

                  v64 = v78;
                  swift_getAtKeyPath();

                  v65 = v106;
                  v66 = swift_getAssociatedConformanceWitness();
                  (*(*(v66 + 16) + 48))(v26, v65);
                  (*(v79 + 8))(v64, v65);
                  v67 = v26[3];
                  v68 = v26[4];
                  __swift_project_boxed_opaque_existential_1(v26, v67);
                  if (((*(v68 + 8))(v67, v68) & 1) == 0)
                  {
                    v94(v132, v133, TupleTypeMetadata);

                    v69 = v76;
                    swift_getAtKeyPath();

                    v70 = AssociatedTypeWitness;
                    v71 = swift_getAssociatedConformanceWitness();
                    (*(*(v71 + 16) + 48))(v26, v70);
                    (*(v77 + 8))(v69, v70);
                    v72 = v26[3];
                    v73 = v26[4];
                    __swift_project_boxed_opaque_existential_1(v26, v72);
                    if (((*(v73 + 8))(v72, v73) & 1) == 0)
                    {
                      v74 = (*(*(v23 + 8) + 24))(v17);
                      sub_1ADDDC764(v26, v74);
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

  return (*(v104 + 8))(v133, TupleTypeMetadata);
}

Swift::Bool __swiftcall CRStruct_10_Final.needToFinalizeTimestamps()()
{
  v2 = v0;
  v3 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v61 = &v61 - v4;
  v96 = swift_getAssociatedTypeWitness();
  v64 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v63 = &v61 - v5;
  v98 = swift_getAssociatedTypeWitness();
  v66 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v65 = &v61 - v6;
  v100 = swift_getAssociatedTypeWitness();
  v68 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v67 = &v61 - v7;
  v102 = swift_getAssociatedTypeWitness();
  v70 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v69 = &v61 - v8;
  v104 = swift_getAssociatedTypeWitness();
  v72 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v71 = &v61 - v9;
  v106 = swift_getAssociatedTypeWitness();
  v74 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v73 = &v61 - v10;
  v108 = swift_getAssociatedTypeWitness();
  v76 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v75 = &v61 - v11;
  v109 = swift_getAssociatedTypeWitness();
  v78 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v77 = &v61 - v12;
  v110 = swift_getAssociatedTypeWitness();
  v94 = *(v110 - 8);
  v13 = MEMORY[0x1EEE9AC00](v110);
  v93 = &v61 - v14;
  v81 = v2;
  v82 = v3;
  (*(v3 + 176))(v112, v2, v3, v13);
  v83 = v112[1];
  v91 = v112[4];
  v92 = v112[2];
  v89 = v112[7];
  v90 = v112[5];
  v107 = v112[8];
  v79 = v112[9];
  v80 = v112[6];
  v105 = v112[11];
  v87 = v112[13];
  v88 = v112[10];
  v103 = v112[14];
  v101 = v112[17];
  v85 = v112[19];
  v86 = v112[16];
  v99 = v112[20];
  v84 = v112[22];
  v97 = v112[23];
  v15 = v112[26];
  v16 = v112[29];
  sub_1AE23DB8C();
  v111[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v111[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v111[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v111[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v111[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v111[5] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v111[6] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v111[7] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v111[8] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v111[9] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v18 = *(TupleTypeMetadata - 8);
  (*(v18 + 16))(v111, v112, TupleTypeMetadata);

  v80 = v16;

  v83 = v15;

  v19 = v93;
  swift_getAtKeyPath();

  v20 = v110;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = v19;
  LOBYTE(v19) = (*(*(AssociatedConformanceWitness + 16) + 56))(v20);
  (*(v94 + 8))(v22, v20);
  if (v19 & 1) != 0 || (v23 = v77, swift_getAtKeyPath(), v24 = v109, v25 = swift_getAssociatedConformanceWitness(), v26 = (*(*(v25 + 16) + 56))(v24), (*(v78 + 8))(v23, v24), (v26) || (v27 = v75, swift_getAtKeyPath(), v28 = v108, v29 = swift_getAssociatedConformanceWitness(), v30 = (*(*(v29 + 16) + 56))(v28), (*(v76 + 8))(v27, v28), (v30))
  {
    (*(v18 + 8))(v112, TupleTypeMetadata);
  }

  else
  {
    v110 = TupleTypeMetadata;
    v33 = v73;
    swift_getAtKeyPath();
    v34 = v106;
    v35 = swift_getAssociatedConformanceWitness();
    v36 = (*(*(v35 + 16) + 56))(v34);
    (*(v74 + 8))(v33, v34);
    if (v36)
    {
      (*(v18 + 8))(v112, v110);
    }

    else
    {
      v37 = v71;
      swift_getAtKeyPath();
      v38 = v104;
      v39 = swift_getAssociatedConformanceWitness();
      v40 = (*(*(v39 + 16) + 56))(v38);
      (*(v72 + 8))(v37, v38);
      v41 = v18;
      if ((v40 & 1) == 0)
      {
        v42 = v69;
        swift_getAtKeyPath();
        v43 = v102;
        v44 = swift_getAssociatedConformanceWitness();
        v45 = (*(*(v44 + 16) + 56))(v43);
        (*(v70 + 8))(v42, v43);
        if ((v45 & 1) == 0)
        {
          v46 = v67;
          swift_getAtKeyPath();
          v47 = v100;
          v48 = swift_getAssociatedConformanceWitness();
          v49 = (*(*(v48 + 16) + 56))(v47);
          (*(v68 + 8))(v46, v47);
          if ((v49 & 1) == 0)
          {
            v50 = v65;
            swift_getAtKeyPath();
            v51 = v98;
            v52 = swift_getAssociatedConformanceWitness();
            v53 = (*(*(v52 + 16) + 56))(v51);
            (*(v66 + 8))(v50, v51);
            if ((v53 & 1) == 0)
            {
              v54 = v63;
              swift_getAtKeyPath();
              v55 = v96;
              v56 = swift_getAssociatedConformanceWitness();
              v57 = (*(*(v56 + 16) + 56))(v55);
              (*(v64 + 8))(v54, v55);
              if ((v57 & 1) == 0)
              {
                v58 = v61;
                swift_getAtKeyPath();
                v59 = AssociatedTypeWitness;
                v60 = swift_getAssociatedConformanceWitness();
                v31 = (*(*(v60 + 16) + 56))(v59);
                (*(v41 + 8))(v112, v110);
                (*(v62 + 8))(v58, v59);
                return v31 & 1;
              }
            }
          }
        }
      }

      (*(v41 + 8))(v112, v110);
    }
  }

  v31 = 1;
  return v31 & 1;
}

uint64_t CRStruct_10_Final.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 8) + 176))(&v50, a2);
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v49[0] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v49[1] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v49[2] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v49[3] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v49[4] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v49[5] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v49[6] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v49[7] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v49[8] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v49[9] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v45 = *(TupleTypeMetadata - 8);
  v47 = TupleTypeMetadata;
  v48 = *(v45 + 16);
  v48(v49, &v50, TupleTypeMetadata);

  v4 = swift_modifyAtWritableKeyPath();
  v5 = *(swift_getAssociatedConformanceWitness() + 16);
  v6 = *(v5 + 64);
  v7 = swift_checkMetadataState();
  v6(a1, v7, v5);
  v4(v49, 0);

  v48(v49, &v50, v47);

  v8 = swift_modifyAtWritableKeyPath();
  v9 = *(swift_getAssociatedConformanceWitness() + 16);
  v10 = *(v9 + 64);
  v11 = swift_checkMetadataState();
  v10(a1, v11, v9);
  v8(v49, 0);

  v48(v49, &v50, v47);

  v12 = swift_modifyAtWritableKeyPath();
  v13 = *(swift_getAssociatedConformanceWitness() + 16);
  v14 = *(v13 + 64);
  v15 = swift_checkMetadataState();
  v14(a1, v15, v13);
  v12(v49, 0);

  v48(v49, &v50, v47);

  v16 = swift_modifyAtWritableKeyPath();
  v17 = *(swift_getAssociatedConformanceWitness() + 16);
  v18 = *(v17 + 64);
  v19 = swift_checkMetadataState();
  v18(a1, v19, v17);
  v16(v49, 0);

  v48(v49, &v50, v47);

  v20 = swift_modifyAtWritableKeyPath();
  v21 = *(swift_getAssociatedConformanceWitness() + 16);
  v22 = *(v21 + 64);
  v23 = swift_checkMetadataState();
  v22(a1, v23, v21);
  v20(v49, 0);

  v48(v49, &v50, v47);

  v24 = swift_modifyAtWritableKeyPath();
  v25 = *(swift_getAssociatedConformanceWitness() + 16);
  v26 = *(v25 + 64);
  v27 = swift_checkMetadataState();
  v26(a1, v27, v25);
  v24(v49, 0);

  v48(v49, &v50, v47);

  v28 = swift_modifyAtWritableKeyPath();
  v29 = *(swift_getAssociatedConformanceWitness() + 16);
  v30 = *(v29 + 64);
  v31 = swift_checkMetadataState();
  v30(a1, v31, v29);
  v28(v49, 0);

  v48(v49, &v50, v47);

  v32 = swift_modifyAtWritableKeyPath();
  v33 = *(swift_getAssociatedConformanceWitness() + 16);
  v34 = *(v33 + 64);
  v35 = swift_checkMetadataState();
  v34(a1, v35, v33);
  v32(v49, 0);

  v48(v49, &v50, v47);

  v36 = swift_modifyAtWritableKeyPath();
  v37 = *(swift_getAssociatedConformanceWitness() + 16);
  v38 = *(v37 + 64);
  v39 = swift_checkMetadataState();
  v38(a1, v39, v37);
  v36(v49, 0);

  v48(v49, &v50, v47);

  v40 = swift_modifyAtWritableKeyPath();
  v41 = *(swift_getAssociatedConformanceWitness() + 16);
  v42 = *(v41 + 64);
  v43 = swift_checkMetadataState();
  v42(a1, v43, v41);
  v40(v49, 0);

  return (*(v45 + 8))(&v50, v47);
}

uint64_t CRStruct_10_Final.minEncodingVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v82 = a3;
  v4 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v53 = v52 - v5;
  v80 = swift_getAssociatedTypeWitness();
  v57 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v56 = v52 - v6;
  v79 = swift_getAssociatedTypeWitness();
  v60 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v59 = v52 - v7;
  v78 = swift_getAssociatedTypeWitness();
  v63 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v62 = v52 - v8;
  v83 = swift_getAssociatedTypeWitness();
  v66 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v65 = v52 - v9;
  v84 = swift_getAssociatedTypeWitness();
  v69 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v68 = v52 - v10;
  v85 = swift_getAssociatedTypeWitness();
  v72 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v71 = v52 - v11;
  v86 = swift_getAssociatedTypeWitness();
  v75 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v74 = v52 - v12;
  v87 = swift_getAssociatedTypeWitness();
  v77 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v76 = v52 - v13;
  v88 = swift_getAssociatedTypeWitness();
  v14 = *(v88 - 8);
  v15 = MEMORY[0x1EEE9AC00](v88);
  v17 = v52 - v16;
  (*(v4 + 176))(v101, a1, v4, v15);
  v70 = v101[11];
  v64 = v101[17];
  v58 = v101[23];
  v73 = v101[8];
  v67 = v101[14];
  v61 = v101[20];
  v55 = v101[26];
  v52[1] = v101[29];
  v18 = (*(*(v4 + 8) + 24))(a1);
  sub_1AE21FFB0(v18, &v100);

  v19 = v100;
  if (v100 > 2u)
  {
    goto LABEL_32;
  }

  swift_getAtKeyPath();
  v20 = v88;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(*(AssociatedConformanceWitness + 16) + 8) + 24))(&TupleTypeMetadata2, v20);
  (*(v14 + 8))(v17, v20);
  if (TupleTypeMetadata2 > v19)
  {
    v19 = TupleTypeMetadata2;
  }

  v100 = v19;
  if (TupleTypeMetadata2 >= 3u)
  {
LABEL_32:
    v100 = v19;
LABEL_33:
    v100 = v19;
LABEL_34:
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v91 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v92 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v93 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v94 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v95 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v96 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v97 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v98 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v99 = swift_getTupleTypeMetadata2();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    result = (*(*(TupleTypeMetadata - 8) + 8))(v101, TupleTypeMetadata);
    goto LABEL_35;
  }

  v22 = v76;
  swift_getAtKeyPath();
  v23 = v87;
  v24 = swift_getAssociatedConformanceWitness();
  (*(*(*(v24 + 16) + 8) + 24))(&TupleTypeMetadata2, v23);
  (*(v77 + 8))(v22, v23);
  if (TupleTypeMetadata2 > v19)
  {
    v19 = TupleTypeMetadata2;
  }

  v100 = v19;
  v25 = v78;
  v26 = v79;
  v27 = v83;
  if (v19 > 2)
  {
    goto LABEL_33;
  }

  v28 = v74;
  swift_getAtKeyPath();
  v29 = v86;
  v30 = swift_getAssociatedConformanceWitness();
  (*(*(*(v30 + 16) + 8) + 24))(&TupleTypeMetadata2, v29);
  (*(v75 + 8))(v28, v29);
  if (TupleTypeMetadata2 > v19)
  {
    v19 = TupleTypeMetadata2;
  }

  v100 = v19;
  if (TupleTypeMetadata2 > 2u)
  {
    goto LABEL_33;
  }

  v31 = v71;
  swift_getAtKeyPath();
  v32 = v85;
  v33 = swift_getAssociatedConformanceWitness();
  (*(*(*(v33 + 16) + 8) + 24))(&TupleTypeMetadata2, v32);
  (*(v72 + 8))(v31, v32);
  if (TupleTypeMetadata2 > v19)
  {
    v19 = TupleTypeMetadata2;
  }

  v100 = v19;
  if (v19 > 2)
  {
    goto LABEL_33;
  }

  v34 = v68;
  swift_getAtKeyPath();
  v35 = v84;
  v36 = swift_getAssociatedConformanceWitness();
  (*(*(*(v36 + 16) + 8) + 24))(&TupleTypeMetadata2, v35);
  (*(v69 + 8))(v34, v35);
  if (TupleTypeMetadata2 > v19)
  {
    v19 = TupleTypeMetadata2;
  }

  v100 = v19;
  if (TupleTypeMetadata2 > 2u)
  {
    goto LABEL_33;
  }

  v37 = v65;
  swift_getAtKeyPath();
  v38 = swift_getAssociatedConformanceWitness();
  (*(*(*(v38 + 16) + 8) + 24))(&TupleTypeMetadata2, v27);
  (*(v66 + 8))(v37, v27);
  if (TupleTypeMetadata2 > v19)
  {
    v19 = TupleTypeMetadata2;
  }

  v100 = v19;
  if (v19 > 2)
  {
    goto LABEL_33;
  }

  v39 = v62;
  swift_getAtKeyPath();
  v40 = swift_getAssociatedConformanceWitness();
  (*(*(*(v40 + 16) + 8) + 24))(&TupleTypeMetadata2, v25);
  (*(v63 + 8))(v39, v25);
  if (TupleTypeMetadata2 > v19)
  {
    v19 = TupleTypeMetadata2;
  }

  v100 = v19;
  if (TupleTypeMetadata2 > 2u)
  {
    goto LABEL_33;
  }

  v41 = v59;
  swift_getAtKeyPath();
  v42 = swift_getAssociatedConformanceWitness();
  (*(*(*(v42 + 16) + 8) + 24))(&TupleTypeMetadata2, v26);
  (*(v60 + 8))(v41, v26);
  if (TupleTypeMetadata2 > v19)
  {
    v19 = TupleTypeMetadata2;
  }

  v100 = v19;
  if (v19 >= 3)
  {
    goto LABEL_33;
  }

  v43 = v56;
  swift_getAtKeyPath();
  v44 = v80;
  v45 = swift_getAssociatedConformanceWitness();
  (*(*(*(v45 + 16) + 8) + 24))(&TupleTypeMetadata2, v44);
  (*(v57 + 8))(v43, v44);
  if (TupleTypeMetadata2 > v19)
  {
    v19 = TupleTypeMetadata2;
  }

  v100 = v19;
  if (TupleTypeMetadata2 > 2u)
  {
    goto LABEL_34;
  }

  v46 = v53;
  swift_getAtKeyPath();
  v47 = AssociatedTypeWitness;
  v48 = swift_getAssociatedConformanceWitness();
  (*(*(*(v48 + 16) + 8) + 24))(&v89, v47);
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v91 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v92 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v93 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v94 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v95 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v96 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v97 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v98 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v99 = swift_getTupleTypeMetadata2();
  v49 = swift_getTupleTypeMetadata();
  (*(*(v49 - 8) + 8))(v101, v49);
  result = (*(v54 + 8))(v46, v47);
  if (v89 > v19)
  {
    LOBYTE(v19) = v89;
  }

LABEL_35:
  *v82 = v19;
  return result;
}

uint64_t CRStruct_10_Final<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char *a10, char *a11, char *a12, char *a13)
{
  v137 = a4;
  v153 = a1;
  v126 = a8;
  v130 = a7;
  v133 = a6;
  v106 = a5;
  v14 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v107 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v105 = &v102 - v15;
  v141 = swift_getAssociatedTypeWitness();
  v110 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v109 = &v102 - v16;
  v142 = swift_getAssociatedTypeWitness();
  v113 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v112 = &v102 - v17;
  v143 = swift_getAssociatedTypeWitness();
  v116 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v115 = &v102 - v18;
  v144 = swift_getAssociatedTypeWitness();
  v119 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v118 = &v102 - v19;
  v145 = swift_getAssociatedTypeWitness();
  v122 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v121 = &v102 - v20;
  v147 = swift_getAssociatedTypeWitness();
  v125 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v124 = &v102 - v21;
  v149 = swift_getAssociatedTypeWitness();
  v129 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v128 = &v102 - v22;
  v151 = swift_getAssociatedTypeWitness();
  v132 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v148 = &v102 - v23;
  v156 = swift_getAssociatedTypeWitness();
  v136 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v157 = &v102 - v24;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCF60, &unk_1AE252450);
  v146 = *(v161 - 8);
  v25 = MEMORY[0x1EEE9AC00](v161);
  v163 = &v102 - v26;
  v27 = *(v14 + 176);
  v139 = a2;
  v103 = v14;
  v27(&TupleTypeMetadata2, a2, v14, v25);
  v177 = v179;
  v162 = v182;
  v152 = v183;
  v154 = v180;
  v155 = v185;
  v166 = v186;
  v167 = v188;
  v158 = TupleTypeMetadata2;
  v159 = v189;
  v165 = v191;
  v168 = v192;
  v176 = v194;
  v169 = v195;
  v175 = v197;
  v170 = v198;
  v174 = v200;
  v171 = v201;
  v173 = v203;
  v164 = v206;
  v172 = v207;
  v208[0] = TupleTypeMetadata2;
  v208[1] = v179;
  v208[2] = v180;
  v131 = v181;
  v208[3] = v181;
  v208[4] = v182;
  v208[5] = v183;
  v127 = v184;
  v208[6] = v184;
  v208[7] = v185;
  v208[8] = v186;
  v123 = v187;
  v208[9] = v187;
  v208[10] = v188;
  v208[11] = v189;
  v120 = v190;
  v208[12] = v190;
  v208[13] = v191;
  v208[14] = v192;
  v117 = v193;
  v208[15] = v193;
  v208[16] = v194;
  v208[17] = v195;
  v114 = v196;
  v208[18] = v196;
  v208[19] = v197;
  v208[20] = v198;
  v111 = v199;
  v208[21] = v199;
  v208[22] = v200;
  v208[23] = v201;
  v108 = v202;
  v208[24] = v202;
  v208[25] = v203;
  v208[26] = v204;
  v160 = v204;
  v104 = v205;
  v208[27] = v205;
  v208[28] = v206;
  v208[29] = v207;
  v28 = __swift_project_boxed_opaque_existential_1(v153, v153[3]);
  sub_1AE048F10(v28, v29, v30);
  sub_1AE23E3CC();
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v179 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v180 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v181 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v182 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v183 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v184 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v185 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v186 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v187 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v135 = *(TupleTypeMetadata - 1);
  v32 = v135 + 16;
  v33 = *(v135 + 16);
  v33(&TupleTypeMetadata2, v208, TupleTypeMetadata);

  swift_getAtKeyPath();

  v153 = TupleTypeMetadata;
  v150 = v32;
  v134 = v33;
  v33(&TupleTypeMetadata2, v208, TupleTypeMetadata);
  v34 = v156;
  v35 = v163;

  TupleTypeMetadata2 = v158;
  v179 = v177;
  v36 = v157;
  v37 = v138;
  sub_1AE23DD5C();
  if (v37)
  {
    (*(v135 + 8))(v208, v153);

    (*(v136 + 8))(v36, v34);
    return (*(v146 + 8))(v35, v161);
  }

  (*(v136 + 8))(v36, v34);
  v39 = v153;
  v40 = v134;
  v134(&TupleTypeMetadata2, v208, v153);

  v158 = 0;

  swift_getAtKeyPath();

  v40(&TupleTypeMetadata2, v208, v39);

  TupleTypeMetadata2 = v131;
  v41 = v161;
  v179 = v162;
  v42 = v151;
  v43 = v163;
  v44 = v158;
  sub_1AE23DD5C();
  if (v44)
  {
    (*(v135 + 8))(v208, v153);

    (*(v132 + 8))(v148, v42);
    v45 = *(v146 + 8);
    v46 = v43;
    return v45(v46, v41);
  }

  (*(v132 + 8))(v148, v42);
  v47 = v134;
  v134(&TupleTypeMetadata2, v208, v153);

  v158 = 0;

  v48 = v128;
  swift_getAtKeyPath();

  v47(&TupleTypeMetadata2, v208, v153);

  v49 = v163;

  v50 = v161;

  TupleTypeMetadata2 = v127;
  v179 = v155;
  v51 = v149;
  v52 = v158;
  sub_1AE23DD5C();
  v53 = v146;
  if (v52)
  {
    (*(v135 + 8))(v208, v153);

    (*(v129 + 8))(v48, v51);
    return (*(v53 + 8))(v49, v50);
  }

  (*(v129 + 8))(v48, v51);
  v54 = v134;
  v134(&TupleTypeMetadata2, v208, v153);

  v158 = 0;

  v55 = v124;
  swift_getAtKeyPath();

  v54(&TupleTypeMetadata2, v208, v153);

  v56 = v163;

  v57 = v55;
  v58 = v161;

  TupleTypeMetadata2 = v123;
  v179 = v167;
  v59 = v147;
  v60 = v158;
  sub_1AE23DD5C();
  if (v60)
  {
    (*(v135 + 8))(v208, v153);

    v61 = v125;
LABEL_14:
    (*(v61 + 8))(v57, v59);
    return (*(v146 + 8))(v56, v58);
  }

  v158 = 0;
  v157 = a9;

  (*(v125 + 8))(v57, v59);
  v62 = v134;
  v134(&TupleTypeMetadata2, v208, v153);

  v57 = v121;
  swift_getAtKeyPath();

  v62(&TupleTypeMetadata2, v208, v153);

  v58 = v161;

  v56 = v163;

  TupleTypeMetadata2 = v120;
  v179 = v165;
  v59 = v145;
  v63 = v158;
  sub_1AE23DD5C();
  if (v63)
  {
    (*(v135 + 8))(v208, v153);

    v61 = v122;
    goto LABEL_14;
  }

  v158 = 0;
  v157 = a10;

  (*(v122 + 8))(v57, v59);
  v64 = v134;
  v134(&TupleTypeMetadata2, v208, v153);

  v57 = v118;
  swift_getAtKeyPath();

  v64(&TupleTypeMetadata2, v208, v153);

  v58 = v161;

  v56 = v163;

  TupleTypeMetadata2 = v117;
  v179 = v176;
  v59 = v144;
  v65 = v158;
  sub_1AE23DD5C();
  if (v65)
  {
    (*(v135 + 8))(v208, v153);

    v61 = v119;
    goto LABEL_14;
  }

  v158 = 0;
  v157 = a11;

  (*(v119 + 8))(v57, v59);
  v66 = v134;
  v134(&TupleTypeMetadata2, v208, v153);

  v67 = v115;
  swift_getAtKeyPath();

  v66(&TupleTypeMetadata2, v208, v153);
  v41 = v161;

  v68 = v163;

  TupleTypeMetadata2 = v114;
  v179 = v175;
  v69 = v143;
  v70 = v158;
  sub_1AE23DD5C();
  if (v70)
  {
    (*(v135 + 8))(v208, v153);

    v71 = v116;
LABEL_19:
    (*(v71 + 8))(v67, v69);
    v45 = *(v146 + 8);
    v46 = v68;
    return v45(v46, v41);
  }

  v158 = 0;
  v157 = a12;

  (*(v116 + 8))(v67, v69);
  v72 = v134;
  v134(&TupleTypeMetadata2, v208, v153);

  v67 = v112;
  swift_getAtKeyPath();

  v72(&TupleTypeMetadata2, v208, v153);
  v41 = v161;

  v68 = v163;

  TupleTypeMetadata2 = v111;
  v179 = v174;
  v69 = v142;
  v73 = v158;
  sub_1AE23DD5C();
  if (v73)
  {
    (*(v135 + 8))(v208, v153);

    v71 = v113;
    goto LABEL_19;
  }

  v158 = 0;
  v157 = a13;

  (*(v113 + 8))(v67, v69);
  v74 = v134;
  v134(&TupleTypeMetadata2, v208, v153);

  v75 = v109;
  swift_getAtKeyPath();

  v74(&TupleTypeMetadata2, v208, v153);

  v76 = v161;

  v77 = v163;

  TupleTypeMetadata2 = v108;
  v179 = v173;
  v78 = v141;
  v79 = v158;
  sub_1AE23DD5C();
  if (v79)
  {
    (*(v135 + 8))(v208, v153);

    (*(v110 + 8))(v75, v78);
    return (*(v146 + 8))(v77, v76);
  }

  else
  {

    (*(v110 + 8))(v75, v78);
    v80 = v134;
    v134(&TupleTypeMetadata2, v208, v153);

    v158 = 0;

    v81 = v105;
    swift_getAtKeyPath();

    v80(&TupleTypeMetadata2, v208, v153);
    v82 = v161;

    v83 = v81;
    v84 = v163;

    TupleTypeMetadata2 = v104;
    v179 = v164;
    v85 = AssociatedTypeWitness;
    v86 = v158;
    sub_1AE23DD5C();
    if (v86)
    {
      (*(v135 + 8))(v208, v153);

      (*(v107 + 8))(v83, v85);
      return (*(v146 + 8))(v84, v82);
    }

    else
    {

      (*(v107 + 8))(v83, v85);
      result = (*(*(v103 + 8) + 24))(v139);
      v89 = result;
      v90 = 0;
      v91 = result + 64;
      v92 = 1 << *(result + 32);
      v93 = -1;
      if (v92 < 64)
      {
        v93 = ~(-1 << v92);
      }

      v94 = v93 & *(result + 64);
      v95 = (v92 + 63) >> 6;
      v158 = 0;
      if (v94)
      {
        while (1)
        {
          v96 = v90;
LABEL_31:
          v97 = __clz(__rbit64(v94)) | (v96 << 6);
          v98 = (*(v89 + 48) + 16 * v97);
          v99 = *v98;
          v100 = v98[1];
          v208[32] = *(*(v89 + 56) + 8 * v97);
          TupleTypeMetadata2 = v99;
          v179 = v100;
          sub_1AE048F64(result, v87, v88);

          v101 = v158;
          sub_1AE23DD5C();
          if (v101)
          {
            break;
          }

          v94 &= v94 - 1;

          v90 = v96;
          v158 = 0;
          if (!v94)
          {
            goto LABEL_28;
          }
        }

        (*(v135 + 8))(v208, v153);

        (*(v146 + 8))(v163, v161);
      }

      else
      {
LABEL_28:
        while (1)
        {
          v96 = v90 + 1;
          if (__OFADD__(v90, 1))
          {
            break;
          }

          if (v96 >= v95)
          {
            (*(v135 + 8))(v208, v153);

            return (*(v146 + 8))(v163, v161);
          }

          v94 = *(v91 + 8 * v96);
          ++v90;
          if (v94)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1AE0E0D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1AE0496D8(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t CRStructMergeableDelta_1.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a4, 1, 1, AssociatedTypeWitness);
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 40);

  return v8(a4, a1, v7);
}

BOOL CRStructMergeableDelta_1.merge(delta:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = AssociatedTypeWitness;
  v7 = swift_getAssociatedTypeWitness();
  v8 = sub_1AE23D7CC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v42 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v35 - v16;
  v17 = *(a2 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v17 + 16);
  v40 = v3;
  v22(v21, v3, a2, v19);
  v23 = CRStructMergeableDelta_1.canMerge(delta:)(a1, a2);
  (*(v17 + 8))(v21, a2);
  if (v23)
  {
    v24 = *(v9 + 16);
    v24(v14, a1, v8);
    v25 = *(v42 + 48);
    if (v25(v14, 1, v7) == 1)
    {
      (*(v9 + 8))(v14, v8);
    }

    else
    {
      v36 = *(v42 + 32);
      v37 = v42 + 32;
      v36(v41, v14, v7);
      v26 = v40;
      v24(v11, v40, v8);
      v27 = v25(v11, 1, v7);
      v28 = *(v9 + 8);
      v28(v11, v8);
      if (v27 == 1)
      {
        v28(v26, v8);
        v36(v26, v41, v7);
        (*(v42 + 56))(v26, 0, 1, v7);
      }

      else
      {
        v29 = v42;
        if (v25(v26, 1, v7))
        {
          v30 = *(v29 + 8);
          v31 = v41;
        }

        else
        {
          v32 = swift_getAssociatedConformanceWitness();
          v33 = v41;
          (*(v32 + 16))(v41, v7, v32);
          v30 = *(v29 + 8);
          v31 = v33;
        }

        v30(v31, v7);
      }
    }
  }

  return v23;
}

BOOL CRStructMergeableDelta_1.canMerge(delta:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23[0] = swift_getAssociatedConformanceWitness();
  v23[1] = AssociatedTypeWitness;
  v4 = swift_getAssociatedTypeWitness();
  v5 = sub_1AE23D7CC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v23 - v10;
  v12 = *(v4 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v24 = v23 - v15;
  v16 = *(v6 + 16);
  v16(v11, a1, v5, v14);
  v17 = *(v12 + 48);
  if (v17(v11, 1, v4) == 1)
  {
    v8 = v11;
LABEL_5:
    (*(v6 + 8))(v8, v5);
    return 1;
  }

  (*(v12 + 32))(v24, v11, v4);
  (v16)(v8, v23[2], v5);
  if (v17(v8, 1, v4) == 1)
  {
    (*(v12 + 8))(v24, v4);
    goto LABEL_5;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = v24;
  v21 = (*(AssociatedConformanceWitness + 24))(v24, v4, AssociatedConformanceWitness);
  v22 = *(v12 + 8);
  v22(v20, v4);
  v22(v8, v4);
  return (v21 & 1) != 0;
}

uint64_t CRStructMergeableDelta_1.visitReferences(_:)(void *a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1AE23D7CC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  (*(v6 + 16))(&v15 - v8, v2, v5, v7);
  v10 = *(AssociatedTypeWitness - 8);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) != 1)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
    v6 = v10;
    v5 = AssociatedTypeWitness;
  }

  (*(v6 + 8))(v9, v5);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  return (*(v13 + 8))(v12, v13);
}

void CRStructMergeableDelta_1.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v86 = AssociatedTypeWitness;
  v12 = swift_getAssociatedTypeWitness();
  v13 = sub_1AE23D7CC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v93 = v77 - v23;
  if (!*(v11 + 64))
  {
    sub_1ADE42E40(v19, v20, v21);
    swift_allocError();
    *v31 = 0xD000000000000014;
    *(v31 + 8) = 0x80000001AE25FB50;
    *(v31 + 16) = 0;
    swift_willThrow();

    return;
  }

  v82 = v4;
  v78 = v22;
  v84 = v19;
  type metadata accessor for CRDecoder.CRDTContainer();
  inited = swift_initStackObject();
  *(inited + 16) = v11;
  *(inited + 24) = 0;
  *(inited + 32) = 1;
  v91 = v11;

  sub_1ADDE78C8();
  v26 = *(v25 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  v83 = v14;
  v87 = v12;
  v80 = v16;
  v81 = a4;
  if ((~v26 & 0xF000000000000007) != 0)
  {
    v28 = MEMORY[0x1E69E7CC0];
    v29 = MEMORY[0x1E69E7CC0];
    if ((v26 & 0xF000000000000000) == 0x3000000000000000)
    {
      v30 = (v26 & 0xFFFFFFFFFFFFFFFLL);
      v27 = v30[2];
      v28 = v30[3];
      v29 = v30[4];
    }
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
    v29 = MEMORY[0x1E69E7CC0];
  }

  v89 = v29;
  v90 = v28;

  v79 = (*(v9 + 32))(a2, v9);
  v92 = v32;
  v88 = v33;
  v34 = *(v27 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  if (v34)
  {
    v77[1] = a2;
    v77[2] = a3;
    v95 = MEMORY[0x1E69E7CC0];

    sub_1ADE6F0BC(0, v34, 0);
    v36 = 0;
    v35 = v95;
    v37 = *(v27 + 16);
    if (v37 >= v34)
    {
      v37 = v34;
    }

    v94 = v37;
    v38 = v91;
    while (v94 != v36)
    {
      if (v36 >= *(v27 + 16))
      {
        goto LABEL_34;
      }

      v39 = *(v27 + 8 * v36 + 32);
      v40 = *(v38 + 32);
      v41 = *(v40 + 16);
      if (v41)
      {
        v42 = v39 >= v41;
      }

      else
      {
        v42 = 1;
      }

      if (v42)
      {
        swift_bridgeObjectRelease_n();

        sub_1ADE42E40(v50, v51, v52);
        swift_allocError();
        *v53 = 0xD000000000000015;
        *(v53 + 8) = 0x80000001AE25FCF0;
        *(v53 + 16) = 0;
        swift_willThrow();

        return;
      }

      v43 = v27;
      v44 = v40 + 16 * v39;
      v45 = *(v44 + 32);
      v46 = *(v44 + 40);
      v95 = v35;
      v48 = *(v35 + 16);
      v47 = *(v35 + 24);

      if (v48 >= v47 >> 1)
      {
        sub_1ADE6F0BC((v47 > 1), v48 + 1, 1);
        v38 = v91;
        v35 = v95;
      }

      *(v35 + 16) = v48 + 1;
      v49 = (v35 + 24 * v48);
      v49[5] = v46;
      v49[6] = v36;
      v49[4] = v45;
      ++v36;
      v27 = v43;
      if (v34 == v36)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_22:
  if (*(v35 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7D0, &qword_1AE252460);
    v54 = sub_1AE23DCDC();
  }

  else
  {
    v54 = MEMORY[0x1E69E7CC8];
  }

  v95 = v54;

  v56 = v82;
  sub_1AE156D10(v55, 1, &v95);
  if (v56)
  {
    goto LABEL_37;
  }

  v57 = v95;
  v58 = *(*(v87 - 8) + 56);
  v58(v93, 1, 1);
  if (!*(v57 + 16) || (v94 = v58, v59 = v92, , v60 = sub_1ADDD7A10(v79, v59), v62 = v61, , (v62 & 1) == 0))
  {

    goto LABEL_32;
  }

  v63 = *(*(v57 + 56) + 8 * v60);

  if ((v63 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v63 < *(v90 + 16))
  {
    type metadata accessor for CRDecoder();
    swift_allocObject();
    v64 = v91;

    v66 = sub_1ADDE77B4(v65, v64);

    v67 = v87;
    v68 = swift_getAssociatedConformanceWitness();
    v69 = v78;
    (*(*(v68 + 8) + 8))(v66, v67);
    v75 = v83;
    v74 = v84;
    v76 = v93;
    (*(v83 + 8))(v93, v84);
    (v94)(v69, 0, 1, v67);
    (*(v75 + 32))(v76, v69, v74);
LABEL_32:
    v71 = v83;
    v70 = v84;
    v72 = v80;
    v73 = v93;
    (*(v83 + 16))(v80, v93, v84);
    CRStructMergeableDelta_1.init(_:)(v72, v81);

    (*(v71 + 8))(v73, v70);
    return;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  swift_unexpectedError();
  __break(1u);
}

uint64_t CRStructMergeableDelta_1.encode(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(*(a2 + 24) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1AE23D7CC();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - v9;
  v34 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - v12;
  result = sub_1ADDFCC74(v14, v15, v16);
  if (!v2)
  {
    v18 = result;
    v29[0] = v13;
    v29[1] = AssociatedConformanceWitness;
    v30 = 0;
    type metadata accessor for CREncoder.CRDTKeyedContainer();
    inited = swift_initStackObject();
    *(inited + 16) = v18;
    *(inited + 24) = a1;
    v29[2] = inited;
    swift_beginAccess();
    swift_retain_n();

    sub_1ADDFCE90(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    swift_endAccess();

    v20 = (*(v5 + 32))(v4, v5);
    v22 = v21;
    v24 = v31;
    v23 = v32;
    (*(v31 + 16))(v10, v33, v32);
    v25 = v34;
    if ((*(v34 + 48))(v10, 1, AssociatedTypeWitness) == 1)
    {

      return (*(v24 + 8))(v10, v23);
    }

    else
    {
      v26 = v29[0];
      (*(v25 + 32))(v29[0], v10, AssociatedTypeWitness);
      v27 = swift_getAssociatedConformanceWitness();
      v28 = v30;
      sub_1ADDFD59C(v26, v20, v22, AssociatedTypeWitness, *(v27 + 8));
      if (v28)
      {
        swift_setDeallocating();
      }

      return (*(v25 + 8))(v26, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t CRStructMergeableDelta_2.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a5, 1, 1, AssociatedTypeWitness);
  v11 = *(type metadata accessor for CRStructMergeableDelta_2(0, a3, a4, v10) + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v13 = sub_1AE23D7CC();
  (*(*(v13 - 8) + 40))(a5, a1, v13);
  v14 = sub_1AE23D7CC();
  v15 = *(*(v14 - 8) + 40);

  return v15(a5 + v11, a2, v14);
}

BOOL CRStructMergeableDelta_2.merge(delta:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v77 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v66 = AssociatedTypeWitness;
  v6 = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v67 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v69 = v61 - v10;
  v76 = v6;
  v73 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v72 = v61 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v63 = swift_getAssociatedConformanceWitness();
  v64 = v13;
  v14 = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v61 - v20;
  v75 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v68 = v61 - v23;
  v24 = *(a2 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v24 + 16);
  v74 = v3;
  v30 = v3;
  v31 = v77;
  v29(v28, v30, a2, v26);
  v32 = CRStructMergeableDelta_2.canMerge(delta:)(v31, a2);
  (*(v24 + 8))(v28, a2);
  if (v32)
  {
    v62 = v32;
    v33 = *(v16 + 16);
    v33(v21, v31, v15);
    v34 = *(v75 + 48);
    if (v34(v21, 1, v14) == 1)
    {
      (*(v16 + 8))(v21, v15);
    }

    else
    {
      v61[0] = *(v75 + 32);
      v61[1] = v75 + 32;
      (v61[0])(v68, v21, v14);
      v35 = v74;
      v33(v18, v74, v15);
      v36 = v34(v18, 1, v14);
      v37 = *(v16 + 8);
      v37(v18, v15);
      if (v36 == 1)
      {
        v37(v35, v15);
        (v61[0])(v35, v68, v14);
        (*(v75 + 56))(v35, 0, 1, v14);
      }

      else
      {
        v38 = v75;
        if (v34(v35, 1, v14))
        {
          (*(v38 + 8))(v68, v14);
        }

        else
        {
          v39 = swift_getAssociatedConformanceWitness();
          v40 = v68;
          (*(v39 + 16))(v68, v14, v39);
          (*(v38 + 8))(v40, v14);
        }
      }
    }

    v42 = v72;
    v41 = v73;
    v44 = v70;
    v43 = v71;
    v45 = v69;
    v46 = *(v70 + 16);
    v46(v69, v77 + *(a2 + 36), v71);
    v47 = *(v41 + 48);
    if (v47(v45, 1, v76) == 1)
    {
      (*(v44 + 8))(v45, v43);
LABEL_13:
      LOBYTE(v32) = v62;
      return v32;
    }

    v48 = v45;
    v49 = v76;
    v75 = *(v41 + 32);
    (v75)(v42, v48, v76);
    v77 = *(a2 + 36);
    v50 = v67;
    v46(v67, &v74[v77], v43);
    v51 = v47(v50, 1, v49);
    v52 = *(v44 + 8);
    v52(v50, v43);
    if (v51 == 1)
    {
      v53 = v77;
      v54 = v74;
      v52(&v74[v77], v43);
      v55 = v76;
      (v75)(&v54[v53], v72, v76);
      (*(v73 + 56))(&v54[v53], 0, 1, v55);
      goto LABEL_13;
    }

    v57 = v47(&v74[v77], 1, v76);
    LOBYTE(v32) = v62;
    if (v57)
    {
      (*(v73 + 8))(v72, v76);
    }

    else
    {
      v58 = v76;
      v59 = swift_getAssociatedConformanceWitness();
      v60 = v72;
      (*(v59 + 16))(v72, v58, v59);
      (*(v73 + 8))(v60, v58);
    }
  }

  return v32;
}

BOOL CRStructMergeableDelta_2.canMerge(delta:)(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43[1] = swift_getAssociatedConformanceWitness();
  v43[2] = AssociatedTypeWitness;
  v4 = swift_getAssociatedTypeWitness();
  v5 = sub_1AE23D7CC();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v44 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = v43 - v8;
  v51 = v4;
  v47 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = v43 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v43[3] = swift_getAssociatedConformanceWitness();
  v43[4] = v11;
  v12 = swift_getAssociatedTypeWitness();
  v13 = sub_1AE23D7CC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v43 - v18;
  v20 = *(v12 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v53 = v43 - v23;
  v24 = *(v14 + 16);
  v46 = a1;
  v24(v19, a1, v13, v22);
  v25 = *(v20 + 48);
  if (v25(v19, 1, v12) == 1)
  {
    v16 = v19;
  }

  else
  {
    (*(v20 + 32))(v53, v19, v12);
    (v24)(v16, v52, v13);
    if (v25(v16, 1, v12) != 1)
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v36 = v53;
      v37 = (*(AssociatedConformanceWitness + 24))(v53, v12, AssociatedConformanceWitness);
      v38 = *(v20 + 8);
      v38(v36, v12);
      v38(v16, v12);
      v26 = v54;
      if ((v37 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_6;
    }

    (*(v20 + 8))(v53, v12);
  }

  v26 = v54;
  (*(v14 + 8))(v16, v13);
LABEL_6:
  v28 = v49;
  v27 = v50;
  v29 = v48;
  v30 = *(v48 + 16);
  v30(v26, v46 + *(v50 + 36), v49);
  v31 = v47;
  v32 = *(v47 + 48);
  v33 = v51;
  if (v32(v26, 1, v51) == 1)
  {
LABEL_9:
    (*(v29 + 8))(v26, v28);
    return 1;
  }

  (*(v31 + 32))(v45, v26, v33);
  v26 = v44;
  v30(v44, v52 + *(v27 + 36), v28);
  if (v32(v26, 1, v33) == 1)
  {
    (*(v31 + 8))(v45, v33);
    goto LABEL_9;
  }

  v39 = swift_getAssociatedConformanceWitness();
  v40 = v45;
  v41 = (*(v39 + 24))(v45, v33, v39);
  v42 = *(v31 + 8);
  v42(v40, v33);
  v42(v26, v33);
  return (v41 & 1) != 0;
}

uint64_t CRStructMergeableDelta_2.visitReferences(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28[0] = swift_getAssociatedConformanceWitness();
  v28[1] = AssociatedTypeWitness;
  v6 = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v28 - v8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  v16 = *(v12 + 16);
  v32 = v3;
  v16(v28 - v14, v3, v11, v13);
  v17 = *(v10 - 8);
  if ((*(v17 + 48))(v15, 1, v10) != 1)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(a1, v10, AssociatedConformanceWitness);
    v12 = v17;
    v11 = v10;
  }

  (*(v12 + 8))(v15, v11);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  result = (*(v20 + 8))(v19, v20);
  if ((result & 1) == 0)
  {
    v23 = v29;
    v22 = v30;
    (*(v29 + 16))(v9, v32 + *(v31 + 36), v30);
    v24 = *(v6 - 8);
    if ((*(v24 + 48))(v9, 1, v6) != 1)
    {
      v25 = swift_getAssociatedConformanceWitness();
      (*(v25 + 32))(a1, v6, v25);
      v23 = v24;
      v22 = v6;
    }

    (*(v23 + 8))(v9, v22);
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    return (*(v27 + 8))(v26, v27);
  }

  return result;
}

void CRStructMergeableDelta_2.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v114 = a4;
  v115 = a3;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v106 = AssociatedTypeWitness;
  v121 = swift_getAssociatedTypeWitness();
  v8 = sub_1AE23D7CC();
  v119 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v113 = v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v97 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v122 = v97 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v123 = a2;
  v16 = a1;
  v108 = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedTypeWitness();
  v18 = sub_1AE23D7CC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v124 = v97 - v28;
  if (!*(v16 + 64))
  {
    sub_1ADE42E40(v24, v25, v26);
    swift_allocError();
    *v36 = 0xD000000000000014;
    *(v36 + 8) = 0x80000001AE25FB50;
    *(v36 + 16) = 0;
    swift_willThrow();

    return;
  }

  v99 = v27;
  v100 = v15;
  type metadata accessor for CRDecoder.CRDTContainer();
  inited = swift_initStackObject();
  *(inited + 16) = v16;
  *(inited + 24) = 0;
  *(inited + 32) = 1;
  v132 = v16;

  sub_1ADDE78C8();
  v31 = *(v30 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  v107 = v19;
  v109 = v17;
  v103 = v21;
  if ((~v31 & 0xF000000000000007) != 0)
  {
    v33 = MEMORY[0x1E69E7CC0];
    v34 = MEMORY[0x1E69E7CC0];
    if ((v31 & 0xF000000000000000) == 0x3000000000000000)
    {
      v35 = (v31 & 0xFFFFFFFFFFFFFFFLL);
      v32 = v35[2];
      v33 = v35[3];
      v34 = v35[4];
    }
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
    v34 = MEMORY[0x1E69E7CC0];
  }

  v110 = v34;
  v118 = v33;

  (*(v6 + 48))(&v126);
  v37 = v127;
  v102 = v126;
  v112 = v128;
  v98 = v129;
  v116 = v130;
  v111 = v131;
  v38 = *(v32 + 16);
  v39 = MEMORY[0x1E69E7CC0];
  v104 = v18;
  v117 = v127;
  if (v38)
  {
    v101 = v8;
    v126 = MEMORY[0x1E69E7CC0];

    sub_1ADE6F0BC(0, v38, 0);
    v40 = 0;
    v41 = v126;
    v42 = *(v32 + 16);
    if (v42 >= v38)
    {
      v42 = v38;
    }

    v125 = v42;
    while (v125 != v40)
    {
      if (v40 >= *(v32 + 16))
      {
        goto LABEL_42;
      }

      v43 = *(v32 + 8 * v40 + 32);
      v44 = *(v132 + 32);
      v45 = *(v44 + 16);
      if (v45)
      {
        v46 = v43 >= v45;
      }

      else
      {
        v46 = 1;
      }

      if (v46)
      {
        swift_bridgeObjectRelease_n();

        sub_1ADE42E40(v54, v55, v56);
        swift_allocError();
        *v57 = 0xD000000000000015;
        *(v57 + 8) = 0x80000001AE25FCF0;
        *(v57 + 16) = 0;
        swift_willThrow();

        return;
      }

      v47 = v12;
      v48 = v44 + 16 * v43;
      v50 = *(v48 + 32);
      v49 = *(v48 + 40);
      v126 = v41;
      v51 = *(v41 + 16);
      v52 = *(v41 + 24);

      if (v51 >= v52 >> 1)
      {
        sub_1ADE6F0BC((v52 > 1), v51 + 1, 1);
        v41 = v126;
      }

      *(v41 + 16) = v51 + 1;
      v53 = (v41 + 24 * v51);
      v53[5] = v49;
      v53[6] = v40;
      v53[4] = v50;
      ++v40;
      v12 = v47;
      if (v38 == v40)
      {

        v39 = v41;
        v8 = v101;
        v37 = v117;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_22:
  if (*(v39 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7D0, &qword_1AE252460);
    v58 = sub_1AE23DCDC();
  }

  else
  {
    v58 = MEMORY[0x1E69E7CC8];
  }

  v59 = v121;
  v125 = v32;
  v126 = v58;

  v61 = v120;
  sub_1AE156D10(v60, 1, &v126);
  if (v61)
  {
    goto LABEL_47;
  }

  v62 = v126;
  v120 = *(*(v109 - 8) + 56);
  v120(v124, 1, 1);
  v63 = *(v59 - 8);
  v64 = *(v63 + 56);
  v97[1] = v63 + 56;
  v64(v122, 1, 1, v59);
  if (!*(v62 + 16))
  {
    v75 = v104;
    goto LABEL_39;
  }

  v97[0] = v64;

  v65 = sub_1ADDD7A10(v102, v37);
  v67 = v66;

  if ((v67 & 1) == 0)
  {
    v75 = v104;
    if (*(v62 + 16))
    {
      goto LABEL_33;
    }

LABEL_39:
    v120 = 0;
    v96 = v8;

    v81 = v119;
    goto LABEL_40;
  }

  v68 = *(*(v62 + 56) + 8 * v65);
  if ((v68 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v101 = v8;
  if (v68 >= *(v118 + 16))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();
  v69 = v132;

  v71 = sub_1ADDE77B4(v70, v69);

  v72 = v109;
  v73 = swift_getAssociatedConformanceWitness();
  v74 = v99;
  (*(*(v73 + 8) + 8))(v71, v72);
  v87 = v107;
  v88 = v104;
  (*(v107 + 8))(v124, v104);
  (v120)(v74, 0, 1, v72);
  v75 = v88;
  (*(v87 + 32))(v124, v74, v88);
  v8 = v101;
  if (!*(v62 + 16))
  {
    goto LABEL_39;
  }

LABEL_33:
  v76 = v116;

  v77 = sub_1ADDD7A10(v98, v76);
  v79 = v78;

  if ((v79 & 1) == 0)
  {
    goto LABEL_39;
  }

  v80 = *(*(v62 + 56) + 8 * v77);

  if ((v80 & 0x8000000000000000) != 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v81 = v119;
  if (v80 < *(v118 + 16))
  {
    type metadata accessor for CRDecoder();
    swift_allocObject();
    v82 = v132;

    v84 = sub_1ADDE77B4(v83, v82);

    v85 = v121;
    v86 = swift_getAssociatedConformanceWitness();
    (*(*(v86 + 8) + 8))(v84, v85);
    v120 = 0;
    v95 = v122;
    (*(v81 + 8))(v122, v8);
    (v97[0])(v12, 0, 1, v85);
    v96 = v8;
    (*(v81 + 32))(v95, v12, v8);
LABEL_40:
    v89 = v107;
    v90 = v103;
    v91 = v124;
    (*(v107 + 16))(v103, v124, v75);
    v92 = v75;
    v93 = v113;
    v94 = v122;
    (*(v81 + 16))(v113, v122, v96);
    CRStructMergeableDelta_2.init(_:_:)(v90, v93, v123, v115, v114);

    (*(v81 + 8))(v94, v96);
    (*(v89 + 8))(v91, v92);
    return;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  swift_unexpectedError();
  __break(1u);
}

uint64_t CRStructMergeableDelta_2.encode(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v65 = a2;
  v5 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = AssociatedTypeWitness;
  v7 = swift_getAssociatedTypeWitness();
  v58 = sub_1AE23D7CC();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v68 = &v50 - v8;
  v62 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v50 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  v14 = sub_1AE23D7CC();
  v63 = *(v14 - 8);
  v64 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v50 - v15;
  v66 = v13;
  v70 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  v19 = a1;
  v20 = v72;
  result = sub_1ADDFCC74(v21, v22, v23);
  if (!v20)
  {
    v25 = result;
    v51 = v12;
    v52 = v18;
    v53 = v11;
    v54 = v7;
    v72 = 0;
    type metadata accessor for CREncoder.CRDTKeyedContainer();
    inited = swift_initStackObject();
    *(inited + 16) = v25;
    *(inited + 24) = v19;
    swift_beginAccess();
    swift_retain_n();

    sub_1ADDFCE90(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    swift_endAccess();

    (*(v5 + 48))(v71, v4, v5);
    v27 = v71[0];
    v28 = v71[1];
    v29 = v71[2];
    v50 = v71[3];
    v56 = v71[4];
    v55 = v71[5];
    v31 = v63;
    v30 = v64;
    v32 = v69;
    v33 = v67;
    (*(v63 + 16))(v69, v67, v64);
    v34 = v32;
    v35 = v66;
    if ((*(v70 + 48))(v34, 1, v66) == 1)
    {
      v51 = v29;
      v53 = v28;
      (*(v31 + 8))(v69, v30);
      v36 = v65;
      v37 = v68;
    }

    else
    {
      v38 = v52;
      (*(v70 + 32))(v52, v69, v35);
      v39 = swift_getAssociatedConformanceWitness();
      v40 = v72;
      sub_1ADDFD59C(v38, v27, v28, v35, *(v39 + 8));
      v72 = v40;
      v36 = v65;
      v37 = v68;
      if (v40)
      {
        swift_setDeallocating();

        return (*(v70 + 8))(v38, v35);
      }

      v51 = v29;
      v53 = v28;
      (*(v70 + 8))(v38, v35);
    }

    v41 = *(v36 + 36);
    v42 = v57;
    v43 = v58;
    (*(v57 + 16))(v37, v33 + v41, v58);
    v44 = v62;
    v45 = v54;
    v46 = (*(v62 + 48))(v37, 1, v54);
    v47 = v61;
    if (v46 == 1)
    {

      return (*(v42 + 8))(v37, v43);
    }

    else
    {
      (*(v44 + 32))(v61, v37, v45);
      v48 = swift_getAssociatedConformanceWitness();
      v49 = v72;
      sub_1ADDFD59C(v47, v50, v56, v45, *(v48 + 8));
      v72 = v49;
      if (v49)
      {
        swift_setDeallocating();
      }

      return (*(v44 + 8))(v47, v45);
    }
  }

  return result;
}

uint64_t CRStructMergeableDelta_3.init(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a6, 1, 1, AssociatedTypeWitness);
  v11 = type metadata accessor for CRStructMergeableDelta_3(0, a4, a5, v10);
  v12 = *(v11 + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  (*(*(v13 - 8) + 56))(a6 + v12, 1, 1, v13);
  v14 = *(v11 + 40);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedTypeWitness();
  (*(*(v15 - 8) + 56))(a6 + v14, 1, 1, v15);
  v16 = sub_1AE23D7CC();
  (*(*(v16 - 8) + 40))(a6, a1, v16);
  v17 = sub_1AE23D7CC();
  (*(*(v17 - 8) + 40))(a6 + v12, a2, v17);
  v18 = sub_1AE23D7CC();
  v19 = *(*(v18 - 8) + 40);

  return v19(a6 + v14, a3, v18);
}

BOOL CRStructMergeableDelta_3.merge(delta:)(uint64_t a1, uint64_t a2)
{
  v105 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = swift_getAssociatedTypeWitness();
  v5 = sub_1AE23D7CC();
  v95 = *(v5 - 8);
  v96 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v100 = &v77 - v8;
  v98 = v4;
  v101 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v97 = &v77 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v83 = swift_getAssociatedConformanceWitness();
  v84 = v11;
  v12 = swift_getAssociatedTypeWitness();
  v13 = sub_1AE23D7CC();
  v91 = *(v13 - 8);
  v92 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v90 = &v77 - v16;
  v94 = v12;
  v99 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v93 = &v77 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v81 = swift_getAssociatedConformanceWitness();
  v82 = v19;
  v20 = swift_getAssociatedTypeWitness();
  v21 = sub_1AE23D7CC();
  v103 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v77 - v24;
  v26 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v89 = &v77 - v28;
  v29 = *(a2 - 8);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v33, v104, a2, v31);
  v34 = v105;
  v35 = CRStructMergeableDelta_3.canMerge(delta:)(v105, a2);
  (*(v29 + 8))(v33, a2);
  if (!v35)
  {
    return v35;
  }

  v80 = v35;
  v102 = a2;
  v79 = AssociatedTypeWitness;
  v36 = *(v103 + 16);
  v36(v25, v34, v21);
  v37 = *(v26 + 48);
  if (v37(v25, 1, v20) == 1)
  {
    (*(v103 + 8))(v25, v21);
  }

  else
  {
    v78 = *(v26 + 32);
    v78(v89, v25, v20);
    v38 = v86;
    v39 = v104;
    v36(v86, v104, v21);
    v40 = v37(v38, 1, v20);
    v41 = *(v103 + 8);
    v41(v38, v21);
    if (v40 != 1)
    {
      v43 = v89;
      v44 = v37(v39, 1, v20);
      v42 = v102;
      if (!v44)
      {
        v45 = swift_getAssociatedConformanceWitness();
        (*(v45 + 16))(v43, v20, v45);
        v42 = v102;
      }

      (*(v26 + 8))(v43, v20);
      goto LABEL_10;
    }

    v41(v39, v21);
    v78(v39, v89, v20);
    (*(v26 + 56))(v39, 0, 1, v20);
  }

  v42 = v102;
LABEL_10:
  v47 = v99;
  v46 = v100;
  v48 = v94;
  v50 = v91;
  v49 = v92;
  v51 = v90;
  v52 = *(v91 + 16);
  v52(v90, v105 + *(v42 + 36), v92);
  v53 = *(v47 + 48);
  if (v53(v51, 1, v48) == 1)
  {
    (*(v50 + 8))(v51, v49);
    v54 = v101;
    v55 = v102;
  }

  else
  {
    v94 = *(v47 + 32);
    v94(v93, v51, v48);
    v56 = v104;
    v103 = *(v102 + 36);
    v57 = v87;
    v52(v87, &v104[v103], v49);
    v58 = v53(v57, 1, v48);
    v59 = *(v50 + 8);
    v59(v57, v49);
    if (v58 == 1)
    {
      v60 = v103;
      v59(&v56[v103], v49);
      v94(&v56[v60], v93, v48);
      (*(v99 + 56))(&v56[v60], 0, 1, v48);
    }

    else if (v53(&v56[v103], 1, v48))
    {
      (*(v99 + 8))(v93, v48);
    }

    else
    {
      v61 = swift_getAssociatedConformanceWitness();
      v62 = v93;
      (*(v61 + 16))(v93, v48, v61);
      (*(v99 + 8))(v62, v48);
    }

    v54 = v101;
    v55 = v102;
    v46 = v100;
  }

  v63 = v98;
  v64 = v95;
  v65 = v96;
  v66 = *(v95 + 16);
  v66(v46, v105 + *(v55 + 40), v96);
  v67 = *(v54 + 48);
  if (v67(v46, 1, v63) == 1)
  {
    (*(v64 + 8))(v46, v65);
  }

  else
  {
    v103 = *(v54 + 32);
    (v103)(v97, v46, v63);
    v68 = *(v55 + 40);
    v69 = v104;
    v105 = v68;
    v70 = v88;
    v66(v88, &v104[v68], v65);
    v71 = v67(v70, 1, v63);
    v72 = *(v64 + 8);
    v72(v70, v65);
    if (v71 == 1)
    {
      v73 = v105;
      v72(&v69[v105], v65);
      (v103)(&v69[v73], v97, v63);
      (*(v101 + 56))(&v69[v73], 0, 1, v63);
    }

    else if (v67(&v69[v105], 1, v63))
    {
      (*(v101 + 8))(v97, v63);
    }

    else
    {
      v74 = swift_getAssociatedConformanceWitness();
      v75 = v97;
      (*(v74 + 16))(v97, v63, v74);
      (*(v101 + 8))(v75, v63);
    }
  }

  LOBYTE(v35) = v80;
  return v35;
}

BOOL CRStructMergeableDelta_3.canMerge(delta:)(uint64_t a1, uint64_t a2)
{
  v86 = a1;
  v77 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68[1] = swift_getAssociatedConformanceWitness();
  v68[2] = AssociatedTypeWitness;
  v3 = swift_getAssociatedTypeWitness();
  v76 = sub_1AE23D7CC();
  v82 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v70 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v74 = v68 - v6;
  v78 = v3;
  v75 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v69 = v68 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v68[3] = swift_getAssociatedConformanceWitness();
  v68[4] = v9;
  v10 = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  v84 = *(v11 - 8);
  v85 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v71 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v80 = v68 - v14;
  v73 = v10;
  v72 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v81 = v68 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v68[5] = swift_getAssociatedConformanceWitness();
  v68[6] = v17;
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_1AE23D7CC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v68 - v24;
  v26 = *(v18 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v79 = v68 - v29;
  v30 = *(v20 + 16);
  v30(v25, v86, v19, v28);
  v31 = *(v26 + 48);
  if (v31(v25, 1, v18) == 1)
  {
    v22 = v25;
LABEL_5:
    v32 = v85;
    v33 = v80;
    (*(v20 + 8))(v22, v19);
    v34 = v81;
    goto LABEL_6;
  }

  (*(v26 + 32))(v79, v25, v18);
  (v30)(v22, v83, v19);
  if (v31(v22, 1, v18) == 1)
  {
    (*(v26 + 8))(v79, v18);
    goto LABEL_5;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = v79;
  v57 = (*(AssociatedConformanceWitness + 24))(v79, v18, AssociatedConformanceWitness);
  v58 = *(v26 + 8);
  v58(v56, v18);
  v58(v22, v18);
  v32 = v85;
  v33 = v80;
  v34 = v81;
  if ((v57 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v35 = v77;
  v36 = *(v84 + 16);
  v36(v33, v86 + *(v77 + 36), v32);
  v38 = v72;
  v37 = v73;
  v39 = *(v72 + 48);
  if (v39(v33, 1, v73) == 1)
  {
    v40 = v33;
    v41 = v78;
    v42 = v76;
  }

  else
  {
    (*(v38 + 32))(v34, v33, v37);
    v43 = v34;
    v44 = v38;
    v45 = v71;
    v36(v71, v83 + *(v35 + 36), v32);
    v40 = v45;
    v46 = v39(v45, 1, v37);
    v47 = v37;
    v41 = v78;
    v42 = v76;
    if (v46 != 1)
    {
      v59 = swift_getAssociatedConformanceWitness();
      v60 = v43;
      v61 = v43;
      v62 = v40;
      v63 = (*(v59 + 24))(v60, v47, v59);
      v64 = *(v44 + 8);
      v64(v61, v47);
      v64(v62, v47);
      v49 = v74;
      v50 = v75;
      v48 = v82;
      if ((v63 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v44 + 8))(v43, v47);
  }

  v48 = v82;
  v49 = v74;
  (*(v84 + 8))(v40, v85);
  v50 = v75;
LABEL_11:
  v51 = *(v48 + 16);
  v51(v49, v86 + *(v35 + 40), v42);
  v52 = *(v50 + 48);
  if (v52(v49, 1, v41) == 1)
  {
LABEL_14:
    (*(v48 + 8))(v49, v42);
    return 1;
  }

  v53 = v69;
  (*(v50 + 32))(v69, v49, v41);
  v49 = v70;
  v51(v70, v83 + *(v35 + 40), v42);
  if (v52(v49, 1, v41) == 1)
  {
    (*(v50 + 8))(v53, v41);
    v48 = v82;
    goto LABEL_14;
  }

  v65 = swift_getAssociatedConformanceWitness();
  v66 = (*(v65 + 24))(v53, v41, v65);
  v67 = *(v50 + 8);
  v67(v53, v41);
  v67(v49, v41);
  return (v66 & 1) != 0;
}

uint64_t CRStructMergeableDelta_3.visitReferences(_:)(void *a1, uint64_t a2)
{
  v43 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36[0] = swift_getAssociatedConformanceWitness();
  v36[1] = AssociatedTypeWitness;
  v40 = swift_getAssociatedTypeWitness();
  v4 = sub_1AE23D7CC();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v39 = v36 - v5;
  v6 = swift_getAssociatedTypeWitness();
  v36[2] = swift_getAssociatedConformanceWitness();
  v36[3] = v6;
  v7 = swift_getAssociatedTypeWitness();
  v8 = sub_1AE23D7CC();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v36 - v9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v36 - v15;
  (*(v13 + 16))(v36 - v15, v44, v12, v14);
  v17 = *(v11 - 8);
  if ((*(v17 + 48))(v16, 1, v11) != 1)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(a1, v11, AssociatedConformanceWitness);
    v13 = v17;
    v12 = v11;
  }

  (*(v13 + 8))(v16, v12);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  result = (*(v20 + 8))(v19, v20);
  if ((result & 1) == 0)
  {
    v23 = v41;
    v22 = v42;
    (*(v41 + 16))(v10, v44 + *(v43 + 36), v42);
    v24 = *(v7 - 8);
    if ((*(v24 + 48))(v10, 1, v7) != 1)
    {
      v25 = swift_getAssociatedConformanceWitness();
      (*(v25 + 32))(a1, v7, v25);
      v23 = v24;
      v22 = v7;
    }

    (*(v23 + 8))(v10, v22);
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    result = (*(v27 + 8))(v26, v27);
    if ((result & 1) == 0)
    {
      v29 = v37;
      v28 = v38;
      v30 = v39;
      (*(v37 + 16))(v39, v44 + *(v43 + 40), v38);
      v31 = v40;
      v32 = *(v40 - 8);
      if ((*(v32 + 48))(v30, 1, v40) != 1)
      {
        v33 = swift_getAssociatedConformanceWitness();
        (*(v33 + 32))(a1, v31, v33);
        v29 = v32;
        v28 = v31;
      }

      (*(v29 + 8))(v30, v28);
      v34 = a1[3];
      v35 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v34);
      return (*(v35 + 8))(v34, v35);
    }
  }

  return result;
}

void CRStructMergeableDelta_3.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v152 = a4;
  v153 = a3;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v136 = AssociatedTypeWitness;
  v163 = swift_getAssociatedTypeWitness();
  v162 = sub_1AE23D7CC();
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v151 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v137 = &v127 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v166 = &v127 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v138 = swift_getAssociatedConformanceWitness();
  v140 = v13;
  v164 = swift_getAssociatedTypeWitness();
  v14 = sub_1AE23D7CC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v150 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v139 = &v127 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v167 = &v127 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v168 = a2;
  v22 = a1;
  v142 = swift_getAssociatedConformanceWitness();
  v143 = v21;
  v23 = swift_getAssociatedTypeWitness();
  v24 = sub_1AE23D7CC();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  v169 = &v127 - v33;
  if (!*(v22 + 64))
  {
    sub_1ADE42E40(v28, v29, v30);
    swift_allocError();
    *v41 = 0xD000000000000014;
    *(v41 + 8) = 0x80000001AE25FB50;
    *(v41 + 16) = 0;
    swift_willThrow();

    return;
  }

  v132 = v32;
  v145 = v23;
  v134 = v31;
  v157 = v28;
  type metadata accessor for CRDecoder.CRDTContainer();
  inited = swift_initStackObject();
  *(inited + 16) = v22;
  *(inited + 24) = 0;
  *(inited + 32) = 1;
  v165 = v22;

  sub_1ADDE78C8();
  v36 = *(v35 + 16);
  v37 = MEMORY[0x1E69E7CC0];
  v156 = v14;
  v141 = v15;
  if ((~v36 & 0xF000000000000007) != 0)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v39 = MEMORY[0x1E69E7CC0];
    if ((v36 & 0xF000000000000000) == 0x3000000000000000)
    {
      v40 = (v36 & 0xFFFFFFFFFFFFFFFLL);
      v37 = v40[2];
      v38 = v40[3];
      v39 = v40[4];
    }
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
    v39 = MEMORY[0x1E69E7CC0];
  }

  v146 = v39;
  v158 = v38;

  (*(v6 + 64))(&v170);
  v42 = v171;
  v133 = v170;
  v149 = v172;
  v131 = v173;
  v155 = v174;
  v148 = v175;
  v130 = v176;
  v154 = v177;
  v147 = v178;
  v43 = *(v37 + 16);
  v44 = MEMORY[0x1E69E7CC0];
  v144 = v25;
  v160 = v171;
  if (v43)
  {
    v170 = MEMORY[0x1E69E7CC0];

    sub_1ADE6F0BC(0, v43, 0);
    v45 = 0;
    v44 = v170;
    v46 = *(v37 + 16);
    if (v46 >= v43)
    {
      v46 = v43;
    }

    v179 = v46;
    v47 = v165;
    while (v179 != v45)
    {
      if (v45 >= *(v37 + 16))
      {
        goto LABEL_48;
      }

      v48 = *(v37 + 8 * v45 + 32);
      v49 = *(v47 + 32);
      v50 = *(v49 + 16);
      if (v50)
      {
        v51 = v48 >= v50;
      }

      else
      {
        v51 = 1;
      }

      if (v51)
      {
        swift_bridgeObjectRelease_n();

        sub_1ADE42E40(v58, v59, v60);
        swift_allocError();
        *v61 = 0xD000000000000015;
        *(v61 + 8) = 0x80000001AE25FCF0;
        *(v61 + 16) = 0;
        swift_willThrow();

        return;
      }

      v52 = v49 + 16 * v48;
      v54 = *(v52 + 32);
      v53 = *(v52 + 40);
      v170 = v44;
      v55 = *(v44 + 16);
      v56 = *(v44 + 24);

      if (v55 >= v56 >> 1)
      {
        sub_1ADE6F0BC((v56 > 1), v55 + 1, 1);
        v47 = v165;
        v44 = v170;
      }

      *(v44 + 16) = v55 + 1;
      v57 = (v44 + 24 * v55);
      v57[5] = v53;
      v57[6] = v45;
      v57[4] = v54;
      if (v43 == ++v45)
      {

        v25 = v144;
        v42 = v160;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_22:
  if (*(v44 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7D0, &qword_1AE252460);
    v62 = sub_1AE23DCDC();
  }

  else
  {
    v62 = MEMORY[0x1E69E7CC8];
  }

  v63 = v163;
  v179 = v37;
  v170 = v62;

  v65 = v159;
  sub_1AE156D10(v64, 1, &v170);
  v66 = v164;
  if (v65)
  {
    goto LABEL_55;
  }

  v67 = v170;
  v68 = *(*(v145 - 8) + 56);
  v68(v169, 1, 1);
  v69 = *(v66 - 8);
  v159 = *(v69 + 56);
  v129 = v69 + 56;
  v159(v167, 1, 1, v66);
  v70 = *(v63 - 8);
  v71 = *(v70 + 56);
  v72 = v70 + 56;
  v71(v166, 1, 1, v63);
  if (!*(v67 + 16))
  {
    goto LABEL_36;
  }

  v127 = v72;
  v128 = v71;

  v73 = sub_1ADDD7A10(v133, v42);
  v75 = v74;

  if (v75)
  {
    v76 = *(*(v67 + 56) + 8 * v73);
    if ((v76 & 0x8000000000000000) != 0)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v76 >= *(v158 + 16))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();
    v77 = v165;

    v79 = sub_1ADDE77B4(v78, v77);

    v80 = v145;
    v81 = swift_getAssociatedConformanceWitness();
    v82 = v132;
    (*(*(v81 + 8) + 8))(v79, v80);
    v83 = v169;
    v84 = v157;
    (*(v25 + 8))(v169, v157);
    (v68)(v82, 0, 1, v80);
    (*(v25 + 32))(v83, v82, v84);
  }

  if (!*(v67 + 16))
  {
LABEL_36:
    v97 = v156;
    v89 = v141;
LABEL_37:
    v164 = 0;

LABEL_38:
    v98 = v144;
    v99 = v134;
    (*(v144 + 16))(v134, v169, v157);
    v100 = v150;
    v101 = v167;
    (*(v89 + 16))(v150, v167, v97);
    v102 = v89;
    v103 = v161;
    v104 = v151;
    v105 = v166;
    v106 = v162;
    (*(v161 + 16))(v151, v166, v162);
    CRStructMergeableDelta_3.init(_:_:_:)(v99, v100, v104, v168, v153, v152);

    (*(v103 + 8))(v105, v106);
    (*(v102 + 8))(v101, v156);
    (*(v98 + 8))(v169, v157);
    return;
  }

  v85 = v155;

  v86 = sub_1ADDD7A10(v131, v85);
  v88 = v87;

  v89 = v141;
  if (v88)
  {
    v90 = *(*(v67 + 56) + 8 * v86);
    if ((v90 & 0x8000000000000000) != 0)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v90 >= *(v158 + 16))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();
    v91 = v165;

    v93 = sub_1ADDE77B4(v92, v91);

    v94 = v164;
    v95 = swift_getAssociatedConformanceWitness();
    v96 = v139;
    (*(*(v95 + 8) + 8))(v93, v94);
    v107 = v141;
    v108 = v167;
    v109 = v156;
    (*(v141 + 8))(v167, v156);
    v110 = v94;
    v89 = v107;
    v159(v96, 0, 1, v110);
    (*(v107 + 32))(v108, v96, v109);
  }

  if (!*(v67 + 16))
  {
    v97 = v156;
    goto LABEL_37;
  }

  v111 = v154;

  v112 = sub_1ADDD7A10(v130, v111);
  v114 = v113;

  if ((v114 & 1) == 0)
  {
    v164 = 0;

    goto LABEL_46;
  }

  v115 = *(*(v67 + 56) + 8 * v112);

  if ((v115 & 0x8000000000000000) != 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v116 = v137;
  if (v115 < *(v158 + 16))
  {
    type metadata accessor for CRDecoder();
    swift_allocObject();
    v117 = v165;

    v119 = sub_1ADDE77B4(v118, v117);

    v120 = v163;
    v121 = swift_getAssociatedConformanceWitness();
    (*(*(v121 + 8) + 8))(v119, v120);
    v164 = 0;
    v122 = v89;
    v123 = v161;
    v124 = v166;
    v125 = v162;
    (*(v161 + 8))(v166, v162);
    v128(v116, 0, 1, v120);
    v126 = v123;
    v89 = v122;
    (*(v126 + 32))(v124, v116, v125);
LABEL_46:
    v97 = v156;
    goto LABEL_38;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  swift_unexpectedError();
  __break(1u);
}

uint64_t CRStructMergeableDelta_3.encode(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v90 = a2;
  v5 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v82 = AssociatedTypeWitness;
  v7 = swift_getAssociatedTypeWitness();
  v80 = sub_1AE23D7CC();
  v89 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v63 - v8;
  v78 = v7;
  v83 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v63 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v76 = swift_getAssociatedConformanceWitness();
  v87 = v11;
  v12 = swift_getAssociatedTypeWitness();
  v86 = sub_1AE23D7CC();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v63 - v13;
  v88 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v63 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedTypeWitness();
  v94 = sub_1AE23D7CC();
  v91 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v63 - v19;
  v92 = v18;
  v96 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - v21;
  v23 = v98;
  result = sub_1ADDFCC74(v24, v25, v26);
  if (!v23)
  {
    v28 = result;
    v69 = v17;
    v71 = v16;
    v70 = v22;
    v72 = v12;
    v98 = 0;
    type metadata accessor for CREncoder.CRDTKeyedContainer();
    inited = swift_initStackObject();
    *(inited + 16) = v28;
    *(inited + 24) = a1;
    swift_beginAccess();
    swift_retain_n();

    sub_1ADDFCE90(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    swift_endAccess();

    (*(v5 + 64))(v97, v4, v5);
    v30 = v97[0];
    v31 = v97[1];
    v32 = v97[2];
    v65 = v97[3];
    v74 = v97[4];
    v73 = v97[5];
    v33 = v97[7];
    v64 = v97[6];
    v34 = v97[8];
    v35 = v91;
    v36 = v95;
    v37 = v93;
    (*(v91 + 16))(v95, v93, v94);
    v38 = v36;
    v39 = v92;
    if ((*(v96 + 48))(v38, 1, v92) == 1)
    {
      v66 = v34;
      v67 = v33;
      v68 = v32;
      v71 = inited;
      v69 = v31;
      (*(v35 + 8))(v95, v94);
    }

    else
    {
      v40 = v37;
      v41 = v70;
      (*(v96 + 32))(v70, v95, v39);
      v42 = swift_getAssociatedConformanceWitness();
      v43 = v98;
      sub_1ADDFD59C(v41, v30, v31, v39, *(v42 + 8));
      v98 = v43;
      if (v43)
      {
        swift_setDeallocating();

        return (*(v96 + 8))(v41, v39);
      }

      v66 = v34;
      v67 = v33;
      v68 = v32;
      v71 = inited;
      v69 = v31;
      (*(v96 + 8))(v41, v39);
      v37 = v40;
    }

    v44 = v90;
    v45 = v85;
    v46 = v37 + *(v90 + 36);
    v47 = v84;
    v48 = v86;
    (*(v85 + 16))(v84, v46, v86);
    v49 = v88;
    v50 = v72;
    v51 = (*(v88 + 48))(v47, 1, v72);
    v52 = v89;
    if (v51 == 1)
    {
      (*(v45 + 8))(v47, v48);
    }

    else
    {
      v53 = v77;
      (*(v49 + 32))(v77, v47, v50);
      v54 = swift_getAssociatedConformanceWitness();
      v55 = v98;
      sub_1ADDFD59C(v53, v65, v74, v50, *(v54 + 8));
      v98 = v55;
      if (v55)
      {
        swift_setDeallocating();

        return (*(v49 + 8))(v53, v50);
      }

      (*(v49 + 8))(v53, v50);
    }

    v56 = v79;
    v57 = v80;
    (*(v52 + 16))(v79, v93 + *(v44 + 40), v80);
    v58 = v83;
    v59 = v78;
    if ((*(v83 + 48))(v56, 1, v78) == 1)
    {

      return (*(v52 + 8))(v56, v57);
    }

    else
    {
      v60 = v75;
      (*(v58 + 32))(v75, v56, v59);
      v61 = swift_getAssociatedConformanceWitness();
      v62 = v98;
      sub_1ADDFD59C(v60, v64, v67, v59, *(v61 + 8));
      v98 = v62;
      if (v62)
      {
        swift_setDeallocating();
      }

      return (*(v58 + 8))(v60, v59);
    }
  }

  return result;
}

uint64_t CRStructMergeableDelta_4.init(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a7, 1, 1, AssociatedTypeWitness);
  v12 = type metadata accessor for CRStructMergeableDelta_4(0, a5, a6, v11);
  v13 = v12[9];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedTypeWitness();
  (*(*(v14 - 8) + 56))(a7 + v13, 1, 1, v14);
  v15 = v12[10];
  v25 = v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedTypeWitness();
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  v17 = v12[11];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedTypeWitness();
  (*(*(v18 - 8) + 56))(a7 + v17, 1, 1, v18);
  v19 = sub_1AE23D7CC();
  (*(*(v19 - 8) + 40))(a7, a1, v19);
  v20 = sub_1AE23D7CC();
  (*(*(v20 - 8) + 40))(a7 + v13, a2, v20);
  v21 = sub_1AE23D7CC();
  (*(*(v21 - 8) + 40))(a7 + v25, a3, v21);
  v22 = sub_1AE23D7CC();
  v23 = *(*(v22 - 8) + 40);

  return v23(a7 + v17, a4, v22);
}

BOOL CRStructMergeableDelta_4.merge(delta:)(uint64_t a1, uint64_t a2)
{
  v142 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v115 = AssociatedTypeWitness;
  v4 = swift_getAssociatedTypeWitness();
  v131 = sub_1AE23D7CC();
  v137 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v119 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v130 = &v106 - v7;
  v138 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v132 = &v106 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v112 = swift_getAssociatedConformanceWitness();
  v113 = v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v126 = *(v12 - 8);
  v127 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v118 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v135 = &v106 - v15;
  v129 = v11;
  v136 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v128 = &v106 - v17;
  v18 = swift_getAssociatedTypeWitness();
  v110 = swift_getAssociatedConformanceWitness();
  v111 = v18;
  v19 = swift_getAssociatedTypeWitness();
  v140 = sub_1AE23D7CC();
  v123 = *(v140 - 1);
  MEMORY[0x1EEE9AC00](v140);
  v117 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v122 = &v106 - v22;
  v125 = v19;
  v134 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v124 = &v106 - v24;
  v25 = swift_getAssociatedTypeWitness();
  v108 = swift_getAssociatedConformanceWitness();
  v109 = v25;
  v26 = swift_getAssociatedTypeWitness();
  v27 = sub_1AE23D7CC();
  v139 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v116 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v106 - v30;
  v32 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v121 = &v106 - v34;
  v35 = *(a2 - 8);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v106 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v39, v141, a2, v37);
  v40 = v142;
  v41 = CRStructMergeableDelta_4.canMerge(delta:)(v142, a2);
  (*(v35 + 8))(v39, a2);
  if (!v41)
  {
    return v41;
  }

  v133 = a2;
  v120 = v4;
  v42 = *(v139 + 16);
  v42(v31, v40, v27);
  v43 = *(v32 + 48);
  v44 = v43(v31, 1, v26);
  v107 = v41;
  if (v44 == 1)
  {
    (*(v139 + 8))(v31, v27);
  }

  else
  {
    v45 = v32;
    v106 = *(v32 + 32);
    v106(v121, v31, v26);
    v46 = v116;
    v47 = v141;
    v42(v116, v141, v27);
    v48 = v43(v46, 1, v26);
    v49 = *(v139 + 8);
    v49(v46, v27);
    if (v48 != 1)
    {
      v56 = v43(v47, 1, v26);
      v50 = v133;
      v52 = v142;
      v57 = v140;
      if (v56)
      {
        (*(v45 + 8))(v121, v26);
      }

      else
      {
        v58 = swift_getAssociatedConformanceWitness();
        v59 = v121;
        (*(v58 + 16))(v121, v26, v58);
        v50 = v133;
        (*(v45 + 8))(v59, v26);
      }

      v51 = v134;
      v53 = v135;
      v55 = v123;
      v54 = v57;
      goto LABEL_11;
    }

    v49(v47, v27);
    v106(v47, v121, v26);
    (*(v45 + 56))(v47, 0, 1, v26);
  }

  v50 = v133;
  v51 = v134;
  v52 = v142;
  v53 = v135;
  v54 = v140;
  v55 = v123;
LABEL_11:
  v60 = v55[2];
  v61 = v122;
  v60(v122, v52 + v50[9], v54);
  v62 = *(v51 + 48);
  v63 = v125;
  if (v62(v61, 1, v125) == 1)
  {
    (v55[1])(v61, v140);
    v64 = v126;
    v65 = v127;
    v66 = v142;
    v67 = v136;
    v68 = v137;
  }

  else
  {
    v123 = *(v51 + 32);
    (v123)(v124, v61, v63);
    v69 = v50[9];
    v70 = v140;
    v71 = v141;
    v139 = v69;
    v72 = v117;
    v60(v117, &v141[v69], v140);
    v73 = v62(v72, 1, v63);
    v74 = v55[1];
    v74(v72, v70);
    if (v73 == 1)
    {
      v75 = v139;
      v74(&v71[v139], v140);
      (v123)(&v71[v75], v124, v63);
      (*(v134 + 56))(&v71[v75], 0, 1, v63);
      v50 = v133;
      v53 = v135;
      v67 = v136;
      v64 = v126;
      v66 = v142;
    }

    else
    {
      v76 = v62(&v71[v139], 1, v63);
      v64 = v126;
      v66 = v142;
      if (v76)
      {
        (*(v134 + 8))(v124, v63);
      }

      else
      {
        v77 = swift_getAssociatedConformanceWitness();
        v78 = v124;
        (*(v77 + 16))(v124, v63, v77);
        (*(v134 + 8))(v78, v63);
      }

      v50 = v133;
      v53 = v135;
      v67 = v136;
    }

    v68 = v137;
    v65 = v127;
  }

  v79 = *(v64 + 16);
  v79(v53, v66 + v50[10], v65);
  v80 = v129;
  v140 = *(v67 + 48);
  if ((v140)(v53, 1, v129) == 1)
  {
    (*(v64 + 8))(v53, v65);
    v81 = v138;
  }

  else
  {
    v139 = *(v67 + 32);
    (v139)(v128, v53, v80);
    v82 = v50[10];
    v83 = v141;
    v84 = v118;
    v79(v118, &v141[v82], v65);
    v85 = (v140)(v84, 1, v80);
    v86 = *(v64 + 8);
    v86(v84, v65);
    v87 = &v83[v82];
    if (v85 == 1)
    {
      v86(v87, v65);
      (v139)(&v83[v82], v128, v80);
      (*(v136 + 56))(&v83[v82], 0, 1, v80);
    }

    else if ((v140)(v87, 1, v80))
    {
      (*(v136 + 8))(v128, v80);
    }

    else
    {
      v88 = swift_getAssociatedConformanceWitness();
      v89 = v128;
      (*(v88 + 16))(v128, v80, v88);
      (*(v136 + 8))(v89, v80);
    }

    v50 = v133;
    v68 = v137;
    v81 = v138;
  }

  v90 = *(v68 + 16);
  v91 = v130;
  v92 = v131;
  v90(v130, v142 + v50[11], v131);
  v93 = *(v81 + 48);
  v94 = v120;
  if (v93(v91, 1, v120) == 1)
  {
    (*(v68 + 8))(v91, v92);
  }

  else
  {
    v140 = *(v81 + 32);
    (v140)(v132, v91, v94);
    v95 = v50[11];
    v96 = v141;
    v142 = v95;
    v97 = v119;
    v90(v119, &v141[v95], v92);
    v98 = v93(v97, 1, v94);
    v99 = *(v68 + 8);
    v99(v97, v92);
    if (v98 == 1)
    {
      v100 = v142;
      v99(&v96[v142], v92);
      v101 = v120;
      (v140)(&v96[v100], v132, v120);
      (*(v138 + 56))(&v96[v100], 0, 1, v101);
    }

    else
    {
      v102 = v120;
      if (v93(&v96[v142], 1, v120))
      {
        (*(v138 + 8))(v132, v102);
      }

      else
      {
        v103 = swift_getAssociatedConformanceWitness();
        v104 = v132;
        (*(v103 + 16))(v132, v102, v103);
        (*(v138 + 8))(v104, v102);
      }
    }
  }

  LOBYTE(v41) = v107;
  return v41;
}

BOOL CRStructMergeableDelta_4.canMerge(delta:)(uint64_t a1, uint64_t a2)
{
  v109 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v89[0] = swift_getAssociatedConformanceWitness();
  v89[1] = AssociatedTypeWitness;
  v4 = swift_getAssociatedTypeWitness();
  v104 = sub_1AE23D7CC();
  v96 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v91 = v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v98 = v89 - v7;
  v103 = v4;
  v99 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v90 = v89 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v89[2] = swift_getAssociatedConformanceWitness();
  v89[3] = v10;
  v11 = swift_getAssociatedTypeWitness();
  v108 = sub_1AE23D7CC();
  v110 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v93 = v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v101 = v89 - v14;
  v97 = v11;
  v102 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v92 = v89 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v89[4] = swift_getAssociatedConformanceWitness();
  v89[5] = v17;
  v18 = swift_getAssociatedTypeWitness();
  v113 = sub_1AE23D7CC();
  v111 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v95 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v100 = v89 - v21;
  v107 = v18;
  v106 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v94 = v89 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v89[6] = swift_getAssociatedConformanceWitness();
  v89[7] = v24;
  v25 = swift_getAssociatedTypeWitness();
  v26 = sub_1AE23D7CC();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v89 - v31;
  v33 = *(v25 - 8);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v105 = v89 - v36;
  v37 = *(v27 + 16);
  v114 = a1;
  v37(v32, a1, v26, v35);
  v38 = *(v33 + 48);
  if (v38(v32, 1, v25) == 1)
  {
    v29 = v32;
LABEL_5:
    v39 = v113;
    v40 = v106;
    (*(v27 + 8))(v29, v26);
    v41 = v107;
    goto LABEL_6;
  }

  (*(v33 + 32))(v105, v32, v25);
  (v37)(v29, v112, v26);
  if (v38(v29, 1, v25) == 1)
  {
    (*(v33 + 8))(v105, v25);
    goto LABEL_5;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v77 = v105;
  v78 = (*(AssociatedConformanceWitness + 24))(v105, v25, AssociatedConformanceWitness);
  v79 = *(v33 + 8);
  v79(v77, v25);
  v79(v29, v25);
  v40 = v106;
  v41 = v107;
  v39 = v113;
  if ((v78 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v42 = v109;
  v43 = *(v111 + 16);
  v44 = v100;
  v43(v100, v114 + *(v109 + 36), v39);
  v45 = *(v40 + 48);
  if (v45(v44, 1, v41) == 1)
  {
    v46 = v44;
    v48 = v102;
    v47 = v103;
LABEL_10:
    v55 = v101;
    (*(v111 + 8))(v46, v113);
    v56 = v108;
    goto LABEL_11;
  }

  v49 = v44;
  v50 = v94;
  (*(v40 + 32))(v94, v49, v41);
  v51 = v112 + v42[9];
  v52 = v95;
  v43(v95, v51, v39);
  v46 = v52;
  v53 = v45(v52, 1, v41);
  v54 = v103;
  if (v53 == 1)
  {
    (*(v40 + 8))(v50, v41);
    v48 = v102;
    v47 = v54;
    v42 = v109;
    goto LABEL_10;
  }

  v80 = swift_getAssociatedConformanceWitness();
  v81 = (*(v80 + 24))(v50, v41, v80);
  v82 = *(v40 + 8);
  v82(v50, v41);
  v82(v52, v41);
  v55 = v101;
  v48 = v102;
  v47 = v54;
  v56 = v108;
  v42 = v109;
  if ((v81 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v57 = *(v110 + 16);
  v57(v55, v114 + v42[10], v56);
  v58 = *(v48 + 48);
  v59 = v97;
  if (v58(v55, 1, v97) == 1)
  {
    v60 = v55;
  }

  else
  {
    v61 = v55;
    v62 = v92;
    (*(v48 + 32))(v92, v61, v59);
    v63 = v56;
    v64 = v93;
    v57(v93, v112 + v42[10], v63);
    v60 = v64;
    if (v58(v64, 1, v59) != 1)
    {
      v83 = swift_getAssociatedConformanceWitness();
      v84 = (*(v83 + 24))(v62, v59, v83);
      v85 = *(v48 + 8);
      v85(v62, v59);
      v85(v64, v59);
      v65 = v98;
      v66 = v99;
      v67 = v104;
      if ((v84 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    (*(v48 + 8))(v62, v59);
    v56 = v108;
  }

  (*(v110 + 8))(v60, v56);
  v65 = v98;
  v66 = v99;
  v67 = v104;
LABEL_16:
  v68 = v96;
  v69 = *(v96 + 16);
  v69(v65, v114 + v42[11], v67);
  v70 = *(v66 + 48);
  if (v70(v65, 1, v47) == 1)
  {
LABEL_19:
    (*(v68 + 8))(v65, v67);
    return 1;
  }

  v71 = v65;
  v72 = v42;
  v73 = v90;
  (*(v66 + 32))(v90, v71, v47);
  v74 = v112 + v72[11];
  v65 = v91;
  v69(v91, v74, v67);
  if (v70(v65, 1, v47) == 1)
  {
    (*(v66 + 8))(v73, v47);
    v67 = v104;
    goto LABEL_19;
  }

  v86 = swift_getAssociatedConformanceWitness();
  v87 = (*(v86 + 24))(v73, v47, v86);
  v88 = *(v66 + 8);
  v88(v73, v47);
  v88(v65, v47);
  return (v87 & 1) != 0;
}

uint64_t CRStructMergeableDelta_4.visitReferences(_:)(void *a1, int *a2)
{
  v3 = v2;
  v64 = a1;
  v62 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50[0] = swift_getAssociatedConformanceWitness();
  v50[1] = AssociatedTypeWitness;
  v54 = swift_getAssociatedTypeWitness();
  v5 = sub_1AE23D7CC();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v53 = v50 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v50[2] = swift_getAssociatedConformanceWitness();
  v50[3] = v7;
  v60 = swift_getAssociatedTypeWitness();
  v8 = sub_1AE23D7CC();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v59 = v50 - v9;
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = v10;
  v11 = swift_getAssociatedTypeWitness();
  v61 = sub_1AE23D7CC();
  v12 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v14 = v50 - v13;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedTypeWitness();
  v16 = sub_1AE23D7CC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v50 - v19;
  v21 = *(v17 + 16);
  v63 = v3;
  v21(v50 - v19, v3, v16, v18);
  v22 = *(v15 - 8);
  if ((*(v22 + 48))(v20, 1, v15) == 1)
  {
    v23 = v64;
  }

  else
  {
    v24 = swift_getAssociatedConformanceWitness();
    v25 = v64;
    (*(v24 + 32))(v64, v15, v24);
    v17 = v22;
    v16 = v15;
    v23 = v25;
  }

  (*(v17 + 8))(v20, v16);
  v26 = v23[3];
  v27 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v26);
  result = (*(v27 + 8))(v26, v27);
  if ((result & 1) == 0)
  {
    v29 = v61;
    (*(v12 + 16))(v14, v63 + v62[9], v61);
    v30 = *(v11 - 8);
    if ((*(v30 + 48))(v14, 1, v11) != 1)
    {
      v31 = swift_getAssociatedConformanceWitness();
      (*(v31 + 32))(v23, v11, v31);
      v12 = v30;
      v29 = v11;
    }

    (*(v12 + 8))(v14, v29);
    v32 = v23[3];
    v33 = v23[4];
    __swift_project_boxed_opaque_existential_1(v23, v32);
    result = (*(v33 + 8))(v32, v33);
    if ((result & 1) == 0)
    {
      v35 = v57;
      v34 = v58;
      v36 = v59;
      (*(v57 + 16))(v59, v63 + v62[10], v58);
      v37 = v60;
      v38 = *(v60 - 8);
      if ((*(v38 + 48))(v36, 1, v60) != 1)
      {
        v39 = swift_getAssociatedConformanceWitness();
        (*(v39 + 32))(v23, v37, v39);
        v35 = v38;
        v34 = v37;
      }

      (*(v35 + 8))(v36, v34);
      v40 = v23[3];
      v41 = v23[4];
      __swift_project_boxed_opaque_existential_1(v23, v40);
      result = (*(v41 + 8))(v40, v41);
      if ((result & 1) == 0)
      {
        v43 = v51;
        v42 = v52;
        v44 = v53;
        (*(v51 + 16))(v53, v63 + v62[11], v52);
        v45 = v54;
        v46 = *(v54 - 8);
        if ((*(v46 + 48))(v44, 1, v54) != 1)
        {
          v47 = swift_getAssociatedConformanceWitness();
          (*(v47 + 32))(v23, v45, v47);
          v43 = v46;
          v42 = v45;
        }

        (*(v43 + 8))(v44, v42);
        v48 = v23[3];
        v49 = v23[4];
        __swift_project_boxed_opaque_existential_1(v23, v48);
        return (*(v49 + 8))(v48, v49);
      }
    }
  }

  return result;
}

void CRStructMergeableDelta_4.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v181 = a4;
  v182 = a3;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v202 = AssociatedTypeWitness;
  v196 = swift_getAssociatedTypeWitness();
  v193 = sub_1AE23D7CC();
  v191 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v180 = v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v171 = v152 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v208 = v152 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v172 = swift_getAssociatedConformanceWitness();
  v203 = v13;
  v198 = swift_getAssociatedTypeWitness();
  v14 = sub_1AE23D7CC();
  v194 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v179 = v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v173 = v152 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v212 = v152 - v19;
  v20 = swift_getAssociatedTypeWitness();
  v174 = swift_getAssociatedConformanceWitness();
  v204 = v20;
  v21 = swift_getAssociatedTypeWitness();
  v201 = sub_1AE23D7CC();
  v195 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v178 = v152 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v175 = v152 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v213 = v152 - v26;
  v27 = swift_getAssociatedTypeWitness();
  v28 = a1;
  v176 = swift_getAssociatedConformanceWitness();
  v205 = v27;
  v29 = swift_getAssociatedTypeWitness();
  v30 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v32);
  v40 = v152 - v39;
  if (*(v28 + 64))
  {
    v161 = v38;
    v183 = v29;
    v164 = v37;
    v187 = v36;
    v188 = v33;
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = v28;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    v199 = v28;

    sub_1ADDE78C8();
    v43 = *(v42 + 16);
    v44 = MEMORY[0x1E69E7CC0];
    v186 = v14;
    v177 = v21;
    if ((~v43 & 0xF000000000000007) != 0)
    {
      v45 = MEMORY[0x1E69E7CC0];
      v46 = MEMORY[0x1E69E7CC0];
      if ((v43 & 0xF000000000000000) == 0x3000000000000000)
      {
        v47 = (v43 & 0xFFFFFFFFFFFFFFFLL);
        v44 = v47[2];
        v45 = v47[3];
        v46 = v47[4];
      }
    }

    else
    {
      v45 = MEMORY[0x1E69E7CC0];
      v46 = MEMORY[0x1E69E7CC0];
    }

    v185 = v46;
    v190 = v45;

    (*(v6 + 80))(&TupleTypeMetadata2, a2, v6);
    v206 = v219;
    v207 = v222;
    v168 = TupleTypeMetadata2;
    v227[0] = TupleTypeMetadata2;
    v227[1] = v216;
    v197 = v216;
    v227[2] = v217;
    v227[3] = v218;
    v165 = v218;
    v227[4] = v219;
    v227[5] = v220;
    v210 = v220;
    v163 = v221;
    v227[6] = v221;
    v227[7] = v222;
    v200 = v223;
    v227[8] = v223;
    v227[9] = v224;
    v162 = v224;
    v211 = v225;
    v227[10] = v225;
    v227[11] = v226;
    v209 = v226;
    v49 = *(v44 + 16);
    v50 = MEMORY[0x1E69E7CC0];
    v189 = v40;
    v184 = a2;
    v169 = v217;
    if (v49)
    {
      v228 = MEMORY[0x1E69E7CC0];

      sub_1ADE6F0BC(0, v49, 0);
      v51 = 0;
      v50 = v228;
      v52 = *(v44 + 16);
      if (v52 >= v49)
      {
        v52 = v49;
      }

      v214 = v52;
      v53 = v199;
      while (v214 != v51)
      {
        if (v51 >= *(v44 + 16))
        {
          goto LABEL_65;
        }

        v54 = *(v44 + 8 * v51 + 32);
        v55 = *(v53 + 32);
        v56 = *(v55 + 16);
        if (v56)
        {
          v57 = v54 >= v56;
        }

        else
        {
          v57 = 1;
        }

        if (v57)
        {
          swift_bridgeObjectRelease_n();

          sub_1ADE42E40(v64, v65, v66);
          swift_allocError();
          *v67 = 0xD000000000000015;
          *(v67 + 8) = 0x80000001AE25FCF0;
          *(v67 + 16) = 0;
          swift_willThrow();

          sub_1AE23DB8C();
          TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v216 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v217 = swift_getTupleTypeMetadata2();
          sub_1AE23DB8C();
          v218 = swift_getTupleTypeMetadata2();
          TupleTypeMetadata = swift_getTupleTypeMetadata();
          (*(*(TupleTypeMetadata - 8) + 8))(v227, TupleTypeMetadata);
          goto LABEL_22;
        }

        v58 = v55 + 16 * v54;
        v60 = *(v58 + 32);
        v59 = *(v58 + 40);
        v228 = v50;
        v62 = *(v50 + 16);
        v61 = *(v50 + 24);

        if (v62 >= v61 >> 1)
        {
          sub_1ADE6F0BC((v61 > 1), v62 + 1, 1);
          v53 = v199;
          v50 = v228;
        }

        *(v50 + 16) = v62 + 1;
        v63 = (v50 + 24 * v62);
        v63[5] = v59;
        v63[6] = v51;
        v63[4] = v60;
        if (v49 == ++v51)
        {

          v40 = v189;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

LABEL_23:
    v69 = *(v50 + 16);
    v167 = v44;
    if (v69)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7D0, &qword_1AE252460);
      v70 = sub_1AE23DCDC();
    }

    else
    {
      v70 = MEMORY[0x1E69E7CC8];
    }

    v71 = v198;
    TupleTypeMetadata2 = v70;

    v73 = v192;
    sub_1AE156D10(v72, 1, &TupleTypeMetadata2);
    v214 = v73;
    if (v73)
    {
      goto LABEL_74;
    }

    v74 = TupleTypeMetadata2;
    v75 = *(v183 - 8);
    v159 = *(v75 + 56);
    v158 = v75 + 56;
    v159(v40, 1, 1);
    v76 = *(v177 - 8);
    v157 = *(v76 + 56);
    v156 = v76 + 56;
    v157(v213, 1, 1);
    v77 = *(v71 - 8);
    v155 = *(v77 + 56);
    v154 = v77 + 56;
    v155(v212, 1, 1, v71);
    v78 = *(v196 - 8);
    v153 = *(v78 + 56);
    v152[1] = v78 + 56;
    v153(v208, 1, 1);
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v216 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v217 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v218 = swift_getTupleTypeMetadata2();
    v79 = swift_getTupleTypeMetadata();
    v166 = *(v79 - 8);
    v80 = *(v166 + 16);
    v80(&TupleTypeMetadata2, v227, v79);

    v81 = *(v74 + 16);
    v192 = v79;
    v160 = v80;
    if (v81)
    {
      v82 = sub_1ADDD7A10(v168, v197);
      v84 = v83;

      if (v84)
      {
        v85 = *(*(v74 + 56) + 8 * v82);
        if ((v85 & 0x8000000000000000) != 0)
        {
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        if (v85 >= *(v190 + 16))
        {
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();
        v86 = v199;

        v88 = sub_1ADDE77B4(v87, v86);

        v89 = v183;
        v90 = swift_getAssociatedConformanceWitness();
        v91 = v161;
        v92 = v214;
        (*(*(v90 + 8) + 8))(v88, v89);
        if (v92)
        {
          goto LABEL_49;
        }

        v93 = v187;
        v94 = *(v187 + 8);
        v214 = 0;
        v95 = v189;
        v96 = v188;
        v94(v189, v188);
        (v159)(v91, 0, 1, v89);
        (*(v93 + 32))(v95, v91, v96);
        v40 = v95;
        v79 = v192;
        v80 = v160;
        v160(&TupleTypeMetadata2, v227, v192);
LABEL_35:

        if (*(v74 + 16))
        {
          v97 = sub_1ADDD7A10(v165, v206);
          v99 = v98;

          if (v99)
          {
            v100 = *(*(v74 + 56) + 8 * v97);
            if ((v100 & 0x8000000000000000) != 0)
            {
LABEL_68:
              __break(1u);
              goto LABEL_69;
            }

            if (v100 >= *(v190 + 16))
            {
LABEL_69:
              __break(1u);
              goto LABEL_70;
            }

            type metadata accessor for CRDecoder();
            swift_allocObject();
            v101 = v199;

            v103 = sub_1ADDE77B4(v102, v101);

            v104 = v177;
            v105 = swift_getAssociatedConformanceWitness();
            v106 = v175;
            v107 = v214;
            (*(*(v105 + 8) + 8))(v103, v104);
            if (v107)
            {
              goto LABEL_49;
            }

            v108 = v195;
            v109 = *(v195 + 8);
            v214 = 0;
            v110 = v213;
            v109(v213, v201);
            (v157)(v106, 0, 1, v104);
            (*(v108 + 32))(v110, v106, v201);
            v40 = v189;
            v79 = v192;
            v80 = v160;
          }

          else
          {
            v79 = v192;
          }
        }

        else
        {
        }

        v80(&TupleTypeMetadata2, v227, v79);

        if (*(v74 + 16))
        {
          v111 = sub_1ADDD7A10(v163, v207);
          v113 = v112;

          if (v113)
          {
            v114 = *(*(v74 + 56) + 8 * v111);
            if ((v114 & 0x8000000000000000) != 0)
            {
LABEL_70:
              __break(1u);
              goto LABEL_71;
            }

            v115 = v173;
            if (v114 >= *(v190 + 16))
            {
LABEL_71:
              __break(1u);
              goto LABEL_72;
            }

            type metadata accessor for CRDecoder();
            swift_allocObject();
            v116 = v199;

            v118 = sub_1ADDE77B4(v117, v116);

            v119 = v198;
            v120 = swift_getAssociatedConformanceWitness();
            v121 = v214;
            (*(*(v120 + 8) + 8))(v118, v119);
            if (v121)
            {
LABEL_49:

              (*(v166 + 8))(v227, v192);
              (*(v191 + 8))(v208, v193);
LABEL_50:
              (*(v194 + 8))(v212, v186);
              (*(v195 + 8))(v213, v201);
              (*(v187 + 8))(v189, v188);
              return;
            }

            v122 = v194;
            v123 = *(v194 + 8);
            v214 = 0;
            v124 = v212;
            v125 = v115;
            v126 = v186;
            v123(v212, v186);
            v155(v125, 0, 1, v119);
            (*(v122 + 32))(v124, v125, v126);
            v40 = v189;
            v79 = v192;
          }
        }

        else
        {
        }

        v160(&TupleTypeMetadata2, v227, v79);

        if (*(v74 + 16))
        {
          v127 = sub_1ADDD7A10(v162, v211);
          v129 = v128;

          if (v129)
          {
            v130 = v214;
            v131 = *(*(v74 + 56) + 8 * v127);

            if ((v131 & 0x8000000000000000) != 0)
            {
LABEL_72:
              __break(1u);
              goto LABEL_73;
            }

            v132 = v191;
            v133 = v196;
            v134 = v171;
            if (v131 >= *(v190 + 16))
            {
LABEL_73:
              __break(1u);
LABEL_74:
              swift_unexpectedError();
              __break(1u);
              return;
            }

            type metadata accessor for CRDecoder();
            swift_allocObject();
            v135 = v199;

            v137 = sub_1ADDE77B4(v136, v135);

            v138 = swift_getAssociatedConformanceWitness();
            (*(*(v138 + 8) + 8))(v137, v133);
            if (v130)
            {

              (*(v166 + 8))(v227, v192);
              (*(v132 + 8))(v208, v193);
              goto LABEL_50;
            }

            v214 = 0;
            v149 = v208;
            v150 = v193;
            (*(v132 + 8))(v208, v193);
            (v153)(v134, 0, 1, v133);
            v151 = v134;
            v139 = v132;
            (*(v132 + 32))(v149, v151, v150);
            v40 = v189;
LABEL_62:
            v140 = v186;
            v141 = v164;
            (*(v187 + 16))(v164, v40, v188);
            v142 = v195;
            v143 = v178;
            (*(v195 + 16))(v178, v213, v201);
            v144 = v194;
            v145 = v179;
            (*(v194 + 16))(v179, v212, v140);
            v146 = v180;
            v147 = v208;
            v148 = v193;
            (*(v139 + 16))(v180, v208, v193);
            CRStructMergeableDelta_4.init(_:_:_:_:)(v141, v143, v145, v146, v184, v182, v181);

            (*(v166 + 8))(v227, v192);
            (*(v139 + 8))(v147, v148);
            (*(v144 + 8))(v212, v186);
            (*(v142 + 8))(v213, v201);
            (*(v187 + 8))(v189, v188);
            return;
          }
        }

        else
        {
        }

        v139 = v191;
        goto LABEL_62;
      }
    }

    else
    {
    }

    v80(&TupleTypeMetadata2, v227, v79);
    goto LABEL_35;
  }

  sub_1ADE42E40(v33, v34, v35);
  swift_allocError();
  *v48 = 0xD000000000000014;
  *(v48 + 8) = 0x80000001AE25FB50;
  *(v48 + 16) = 0;
  swift_willThrow();
LABEL_22:
}

uint64_t CRStructMergeableDelta_4.encode(to:)(uint64_t a1, uint64_t a2)
{
  v121 = a2;
  v3 = *(a2 + 16);
  v4 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v95 = AssociatedTypeWitness;
  v6 = swift_getAssociatedTypeWitness();
  v111 = sub_1AE23D7CC();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v99 = &v82 - v7;
  v112 = v6;
  v100 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v96 = &v82 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v97 = swift_getAssociatedConformanceWitness();
  v98 = v10;
  v11 = swift_getAssociatedTypeWitness();
  v105 = sub_1AE23D7CC();
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v82 - v12;
  v106 = v11;
  v108 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v82 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v101 = swift_getAssociatedConformanceWitness();
  v102 = v15;
  v16 = swift_getAssociatedTypeWitness();
  v115 = sub_1AE23D7CC();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v82 - v17;
  v117 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v116 = &v82 - v19;
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedTypeWitness();
  v118 = sub_1AE23D7CC();
  v122 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v123 = &v82 - v23;
  v119 = v22;
  v124 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v82 - v25;
  v27 = v126;
  result = sub_1ADDFCC74(v28, v29, v30);
  if (!v27)
  {
    v32 = result;
    v85 = v21;
    v86 = v20;
    v87 = v26;
    v126 = 0;
    type metadata accessor for CREncoder.CRDTKeyedContainer();
    inited = swift_initStackObject();
    *(inited + 16) = v32;
    *(inited + 24) = a1;
    swift_beginAccess();
    swift_retain_n();

    sub_1ADDFCE90(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    swift_endAccess();

    (*(v4 + 80))(v125, v3, v4);
    v34 = v125[0];
    v35 = v125[1];
    v92 = v125[2];
    v84 = v125[3];
    v94 = v125[4];
    v91 = v125[5];
    v83 = v125[6];
    v93 = v125[7];
    v36 = v125[9];
    v90 = v125[8];
    v37 = v125[11];
    v89 = v125[10];
    v38 = v123;
    v39 = v120;
    v40 = v118;
    (*(v122 + 16))(v123, v120, v118);
    v41 = v38;
    v42 = v119;
    v43 = (*(v124 + 48))(v41, 1, v119);
    v88 = v35;
    if (v43 == 1)
    {
      v86 = v36;
      (*(v122 + 8))(v123, v40);
    }

    else
    {
      v44 = v87;
      (*(v124 + 32))(v87, v123, v42);
      v45 = swift_getAssociatedConformanceWitness();
      v46 = v126;
      sub_1ADDFD59C(v44, v34, v35, v42, *(v45 + 8));
      v126 = v46;
      if (v46)
      {
        swift_setDeallocating();

        return (*(v124 + 8))(v44, v42);
      }

      v86 = v36;
      (*(v124 + 8))(v44, v42);
    }

    v124 = v37;
    v47 = v121;
    v48 = v114;
    v49 = v113;
    v50 = v115;
    (*(v114 + 16))(v113, v39 + *(v121 + 36), v115);
    v51 = v117;
    v52 = v16;
    v53 = (*(v117 + 48))(v49, 1, v16);
    v54 = v116;
    if (v53 == 1)
    {
      (*(v48 + 8))(v49, v50);
    }

    else
    {
      (*(v51 + 32))(v116, v49, v52);
      v55 = swift_getAssociatedConformanceWitness();
      v56 = v126;
      sub_1ADDFD59C(v54, v84, v94, v52, *(v55 + 8));
      v126 = v56;
      if (v56)
      {
        swift_setDeallocating();

        return (*(v51 + 8))(v54, v52);
      }

      (*(v51 + 8))(v54, v52);
    }

    v57 = v107;
    v58 = v103;
    v59 = v104;
    v60 = v39;
    v61 = v39 + *(v47 + 40);
    v62 = v105;
    (*(v104 + 16))(v103, v61, v105);
    v63 = v108;
    v64 = v106;
    v65 = (*(v108 + 48))(v58, 1, v106);
    v66 = v58;
    v67 = v112;
    if (v65 == 1)
    {
      (*(v59 + 8))(v66, v62);
      v68 = v111;
      v69 = v110;
    }

    else
    {
      (*(v63 + 32))(v57, v66, v64);
      v70 = swift_getAssociatedConformanceWitness();
      v71 = v126;
      sub_1ADDFD59C(v57, v83, v93, v64, *(v70 + 8));
      v126 = v71;
      v72 = v64;
      v68 = v111;
      v69 = v110;
      if (v71)
      {
        swift_setDeallocating();

        return (*(v63 + 8))(v57, v72);
      }

      (*(v63 + 8))(v57, v72);
      v67 = v112;
    }

    v73 = v60 + *(v121 + 44);
    v74 = v99;
    (*(v69 + 16))(v99, v73, v68);
    v75 = v100;
    v76 = (*(v100 + 48))(v74, 1, v67);
    v77 = v67;
    v78 = v89;
    if (v76 == 1)
    {

      return (*(v69 + 8))(v74, v68);
    }

    else
    {
      v79 = v96;
      (*(v75 + 32))(v96, v74, v77);
      v80 = swift_getAssociatedConformanceWitness();
      v81 = v126;
      sub_1ADDFD59C(v79, v86, v78, v77, *(v80 + 8));
      v126 = v81;
      if (v81)
      {
        swift_setDeallocating();
      }

      return (*(v75 + 8))(v79, v77);
    }
  }

  return result;
}

uint64_t CRStructMergeableDelta_5.init(_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a8, 1, 1, AssociatedTypeWitness);
  v12 = type metadata accessor for CRStructMergeableDelta_5(0, a6, a7, v11);
  v13 = v12[9];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v28 = swift_getAssociatedTypeWitness();
  (*(*(v28 - 8) + 56))(a8 + v13, 1, 1, v28);
  v14 = v12[10];
  v29 = v14;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedTypeWitness();
  (*(*(v15 - 8) + 56))(a8 + v14, 1, 1, v15);
  v16 = v12[11];
  v27 = v16;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedTypeWitness();
  (*(*(v17 - 8) + 56))(a8 + v16, 1, 1, v17);
  v18 = v12[12];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedTypeWitness();
  (*(*(v19 - 8) + 56))(a8 + v18, 1, 1, v19);
  v20 = sub_1AE23D7CC();
  (*(*(v20 - 8) + 40))(a8, a1, v20);
  v21 = sub_1AE23D7CC();
  (*(*(v21 - 8) + 40))(a8 + v13, a2, v21);
  v22 = sub_1AE23D7CC();
  (*(*(v22 - 8) + 40))(a8 + v29, a3, v22);
  v23 = sub_1AE23D7CC();
  (*(*(v23 - 8) + 40))(a8 + v27, a4, v23);
  v24 = sub_1AE23D7CC();
  v25 = *(*(v24 - 8) + 40);

  return v25(a8 + v18, a5, v24);
}

BOOL CRStructMergeableDelta_5.merge(delta:)(uint64_t a1, int *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v133 = AssociatedTypeWitness;
  v5 = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v152 = *(v6 - 8);
  v153 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v137 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v151 = &v122 - v9;
  v155 = v5;
  v160 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v154 = &v122 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v130 = swift_getAssociatedConformanceWitness();
  v131 = v12;
  v13 = swift_getAssociatedTypeWitness();
  v159 = sub_1AE23D7CC();
  v148 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v136 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v147 = &v122 - v16;
  v150 = v13;
  v163 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v149 = &v122 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v128 = swift_getAssociatedConformanceWitness();
  v129 = v19;
  v20 = swift_getAssociatedTypeWitness();
  v144 = sub_1AE23D7CC();
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v135 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v157 = &v122 - v23;
  v146 = v20;
  v158 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v145 = &v122 - v25;
  v26 = swift_getAssociatedTypeWitness();
  v126 = swift_getAssociatedConformanceWitness();
  v127 = v26;
  v27 = swift_getAssociatedTypeWitness();
  v164 = sub_1AE23D7CC();
  v140 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v134 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v139 = &v122 - v30;
  v142 = v27;
  v156 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v141 = &v122 - v32;
  v33 = swift_getAssociatedTypeWitness();
  v124 = swift_getAssociatedConformanceWitness();
  v125 = v33;
  v34 = a1;
  v35 = swift_getAssociatedTypeWitness();
  v36 = sub_1AE23D7CC();
  v162 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v122 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v122 - v40;
  v42 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v138 = &v122 - v44;
  v45 = *(a2 - 1);
  v47 = MEMORY[0x1EEE9AC00](v46);
  v49 = &v122 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 16))(v49, v166, a2, v47);
  v50 = CRStructMergeableDelta_5.canMerge(delta:)(v34, a2);
  (*(v45 + 8))(v49, a2);
  if (v50)
  {
    v123 = v50;
    v161 = a2;
    v51 = *(v162 + 16);
    v165 = v34;
    v51(v41, v34, v36);
    v52 = *(v42 + 48);
    if (v52(v41, 1, v35) == 1)
    {
      (*(v162 + 8))(v41, v36);
      v53 = v161;
    }

    else
    {
      v122 = *(v42 + 32);
      v122(v138, v41, v35);
      v54 = v166;
      v51(v38, v166, v36);
      v55 = v52(v38, 1, v35);
      v56 = *(v162 + 8);
      v56(v38, v36);
      if (v55 == 1)
      {
        v56(v54, v36);
        v122(v54, v138, v35);
        (*(v42 + 56))(v54, 0, 1, v35);
        v53 = v161;
      }

      else
      {
        v57 = v52(v54, 1, v35);
        v53 = v161;
        if (v57)
        {
          (*(v42 + 8))(v138, v35);
        }

        else
        {
          v58 = swift_getAssociatedConformanceWitness();
          v59 = v138;
          (*(v58 + 16))(v138, v35, v58);
          v53 = v161;
          (*(v42 + 8))(v59, v35);
        }
      }
    }

    v60 = v157;
    v61 = v140;
    v62 = v139;
    v63 = *(v140 + 16);
    v63(v139, v165 + v53[9], v164);
    v64 = v156;
    v65 = *(v156 + 48);
    v66 = v142;
    if (v65(v62, 1, v142) == 1)
    {
      (*(v61 + 8))(v62, v164);
      v67 = v163;
      v68 = v146;
      v69 = v143;
      v70 = v158;
    }

    else
    {
      v140 = *(v64 + 32);
      (v140)(v141, v62, v66);
      v71 = v166;
      v162 = v53[9];
      v72 = v134;
      v73 = v164;
      v63(v134, &v166[v162], v164);
      v74 = v65(v72, 1, v66);
      v75 = *(v61 + 8);
      v75(v72, v73);
      if (v74 == 1)
      {
        v76 = v162;
        v75(&v71[v162], v164);
        (v140)(&v71[v76], v141, v66);
        (*(v156 + 56))(&v71[v76], 0, 1, v66);
      }

      else if (v65(&v71[v162], 1, v66))
      {
        (*(v156 + 8))(v141, v66);
      }

      else
      {
        v77 = swift_getAssociatedConformanceWitness();
        v78 = v141;
        (*(v77 + 16))(v141, v66, v77);
        (*(v156 + 8))(v78, v66);
      }

      v53 = v161;
      v67 = v163;
      v60 = v157;
      v70 = v158;
      v68 = v146;
      v69 = v143;
    }

    v79 = *(v69 + 16);
    v80 = v144;
    v79(v60, v165 + v53[10], v144);
    v164 = *(v70 + 48);
    if ((v164)(v60, 1, v68) == 1)
    {
      (*(v69 + 8))(v60, v80);
    }

    else
    {
      v162 = *(v70 + 32);
      (v162)(v145, v60, v68);
      v81 = v53[10];
      v82 = v166;
      v83 = v135;
      v79(v135, &v166[v81], v80);
      v84 = (v164)(v83, 1, v68);
      v85 = *(v69 + 8);
      v85(v83, v80);
      v86 = &v82[v81];
      if (v84 == 1)
      {
        v85(v86, v80);
        (v162)(&v82[v81], v145, v68);
        (*(v158 + 56))(&v82[v81], 0, 1, v68);
      }

      else if ((v164)(v86, 1, v68))
      {
        (*(v158 + 8))(v145, v68);
      }

      else
      {
        v87 = swift_getAssociatedConformanceWitness();
        v88 = v145;
        (*(v87 + 16))(v145, v68, v87);
        (*(v158 + 8))(v88, v68);
      }

      v53 = v161;
      v67 = v163;
    }

    v90 = v147;
    v89 = v148;
    v91 = v159;
    v92 = *(v148 + 16);
    v92(v147, v165 + v53[11], v159);
    v93 = *(v67 + 48);
    v94 = v150;
    if (v93(v90, 1, v150) == 1)
    {
      (*(v89 + 8))(v90, v91);
    }

    else
    {
      v162 = *(v67 + 32);
      (v162)(v149, v90, v94);
      v95 = v166;
      v164 = v53[11];
      v96 = v136;
      v97 = v159;
      v92(v136, &v166[v164], v159);
      v98 = v93(v96, 1, v94);
      v99 = *(v89 + 8);
      v99(v96, v97);
      if (v98 == 1)
      {
        v100 = v164;
        v99(&v95[v164], v97);
        (v162)(&v95[v100], v149, v94);
        (*(v163 + 56))(&v95[v100], 0, 1, v94);
      }

      else if (v93(&v95[v164], 1, v94))
      {
        (*(v163 + 8))(v149, v94);
      }

      else
      {
        v101 = swift_getAssociatedConformanceWitness();
        v102 = v149;
        (*(v101 + 16))(v149, v94, v101);
        (*(v163 + 8))(v102, v94);
      }

      v53 = v161;
    }

    v103 = v155;
    v105 = v151;
    v104 = v152;
    v106 = *(v152 + 16);
    v107 = v153;
    v106(v151, v165 + v53[12], v153);
    v108 = v160;
    v109 = *(v160 + 48);
    if (v109(v105, 1, v103) == 1)
    {
      (*(v104 + 8))(v105, v107);
    }

    else
    {
      v110 = v108 + 32;
      v111 = *(v108 + 32);
      v112 = v104;
      v164 = v111;
      v165 = v110;
      v111(v154, v105, v103);
      v113 = v53[12];
      v114 = v166;
      v115 = v137;
      v106(v137, &v166[v113], v107);
      v116 = v109(v115, 1, v103);
      v117 = *(v112 + 8);
      v117(v115, v107);
      v118 = &v114[v113];
      if (v116 == 1)
      {
        v117(v118, v107);
        (v164)(&v114[v113], v154, v103);
        (*(v160 + 56))(&v114[v113], 0, 1, v103);
      }

      else if (v109(v118, 1, v103))
      {
        (*(v160 + 8))(v154, v103);
      }

      else
      {
        v119 = swift_getAssociatedConformanceWitness();
        v120 = v154;
        (*(v119 + 16))(v154, v103, v119);
        (*(v160 + 8))(v120, v103);
      }
    }

    LOBYTE(v50) = v123;
  }

  return v50;
}

BOOL CRStructMergeableDelta_5.canMerge(delta:)(uint64_t a1, int *a2)
{
  v130 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v108[1] = swift_getAssociatedConformanceWitness();
  v108[2] = AssociatedTypeWitness;
  v4 = swift_getAssociatedTypeWitness();
  v119 = sub_1AE23D7CC();
  v131 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v110 = v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v117 = v108 - v7;
  v133 = v4;
  v118 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v109 = v108 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v108[3] = swift_getAssociatedConformanceWitness();
  v108[4] = v10;
  v11 = swift_getAssociatedTypeWitness();
  v125 = sub_1AE23D7CC();
  v132 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v112 = v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v121 = v108 - v14;
  v116 = v11;
  v122 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v111 = v108 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v108[5] = swift_getAssociatedConformanceWitness();
  v108[6] = v17;
  v18 = swift_getAssociatedTypeWitness();
  v136 = sub_1AE23D7CC();
  v134 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v114 = v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v123 = v108 - v21;
  v124 = v18;
  v120 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v113 = v108 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v108[7] = swift_getAssociatedConformanceWitness();
  v108[8] = v24;
  v25 = swift_getAssociatedTypeWitness();
  v26 = sub_1AE23D7CC();
  v137 = *(v26 - 8);
  v138 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v115 = v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v127 = v108 - v29;
  v129 = v25;
  v128 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v135 = v108 - v31;
  v32 = swift_getAssociatedTypeWitness();
  v108[9] = swift_getAssociatedConformanceWitness();
  v108[10] = v32;
  v33 = swift_getAssociatedTypeWitness();
  v34 = sub_1AE23D7CC();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = v108 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = v108 - v39;
  v41 = *(v33 - 8);
  v43 = MEMORY[0x1EEE9AC00](v42);
  v126 = v108 - v44;
  v45 = *(v35 + 16);
  v140 = a1;
  v45(v40, a1, v34, v43);
  v46 = *(v41 + 48);
  if (v46(v40, 1, v33) == 1)
  {
    v37 = v40;
LABEL_5:
    v47 = v129;
    v48 = v130;
    v49 = v138;
    v50 = v128;
    v51 = v135;
    (*(v35 + 8))(v37, v34);
    v52 = v127;
    goto LABEL_6;
  }

  (*(v41 + 32))(v126, v40, v33);
  (v45)(v37, v139, v34);
  if (v46(v37, 1, v33) == 1)
  {
    (*(v41 + 8))(v126, v33);
    goto LABEL_5;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v91 = v126;
  v92 = (*(AssociatedConformanceWitness + 24))(v126, v33, AssociatedConformanceWitness);
  v93 = *(v41 + 8);
  v93(v91, v33);
  v93(v37, v33);
  v47 = v129;
  v48 = v130;
  v49 = v138;
  v52 = v127;
  v50 = v128;
  v51 = v135;
  if ((v92 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v53 = *(v137 + 16);
  v53(v52, v140 + v48[9], v49);
  v54 = *(v50 + 48);
  v55 = v54(v52, 1, v47);
  v56 = v52;
  v57 = v48;
  if (v55 == 1)
  {
    v58 = v48;
    v59 = v56;
LABEL_10:
    v62 = v136;
    v63 = v123;
    (*(v137 + 8))(v59, v138);
    v64 = v58;
    v65 = v124;
    goto LABEL_11;
  }

  v60 = v49;
  (*(v50 + 32))(v51, v56, v47);
  v58 = v57;
  v61 = v115;
  v53(v115, v139 + v57[9], v60);
  v59 = v61;
  if (v54(v61, 1, v47) == 1)
  {
    (*(v50 + 8))(v135, v47);
    goto LABEL_10;
  }

  v94 = swift_getAssociatedConformanceWitness();
  v95 = v135;
  v96 = (*(v94 + 24))(v135, v47, v94);
  v97 = *(v50 + 8);
  v97(v95, v47);
  v97(v61, v47);
  v62 = v136;
  v63 = v123;
  v65 = v124;
  v64 = v57;
  if ((v96 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v66 = *(v134 + 16);
  v66(v63, v140 + v64[10], v62);
  v67 = v120;
  v68 = *(v120 + 48);
  if (v68(v63, 1, v65) == 1)
  {
    v69 = v63;
LABEL_15:
    v73 = v122;
    v74 = v125;
    (*(v134 + 8))(v69, v136);
    v75 = v121;
    goto LABEL_16;
  }

  v70 = v113;
  (*(v67 + 32))(v113, v63, v65);
  v71 = v67;
  v72 = v114;
  v66(v114, v139 + v64[10], v62);
  v69 = v72;
  if (v68(v72, 1, v65) == 1)
  {
    (*(v71 + 8))(v70, v65);
    goto LABEL_15;
  }

  v98 = swift_getAssociatedConformanceWitness();
  v99 = (*(v98 + 24))(v70, v65, v98);
  v100 = *(v71 + 8);
  v100(v70, v65);
  v100(v72, v65);
  v75 = v121;
  v73 = v122;
  v74 = v125;
  if ((v99 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v76 = *(v132 + 16);
  v76(v75, v140 + v64[11], v74);
  v77 = *(v73 + 48);
  v78 = v116;
  if (v77(v75, 1, v116) == 1)
  {
    v79 = v75;
  }

  else
  {
    v80 = v111;
    (*(v73 + 32))(v111, v75, v78);
    v81 = v112;
    v76(v112, v139 + v64[11], v74);
    v79 = v81;
    if (v77(v81, 1, v78) != 1)
    {
      v101 = swift_getAssociatedConformanceWitness();
      v102 = (*(v101 + 24))(v80, v78, v101);
      v103 = *(v73 + 8);
      v103(v80, v78);
      v103(v81, v78);
      v82 = v118;
      v83 = v119;
      v84 = v117;
      if ((v102 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_21;
    }

    (*(v73 + 8))(v80, v78);
    v74 = v125;
  }

  v82 = v118;
  (*(v132 + 8))(v79, v74);
  v83 = v119;
  v84 = v117;
LABEL_21:
  v85 = *(v131 + 16);
  v85(v84, v140 + v64[12], v83);
  v86 = *(v82 + 48);
  if (v86(v84, 1, v133) == 1)
  {
LABEL_24:
    (*(v131 + 8))(v84, v83);
    return 1;
  }

  v87 = v109;
  v88 = v133;
  (*(v82 + 32))(v109, v84, v133);
  v84 = v110;
  v85(v110, v139 + v64[12], v83);
  if (v86(v84, 1, v88) == 1)
  {
    (*(v82 + 8))(v87, v133);
    goto LABEL_24;
  }

  v104 = v133;
  v105 = swift_getAssociatedConformanceWitness();
  v106 = (*(v105 + 24))(v87, v104, v105);
  v107 = *(v82 + 8);
  v107(v87, v104);
  v107(v84, v104);
  return (v106 & 1) != 0;
}

uint64_t CRStructMergeableDelta_5.visitReferences(_:)(void *a1, int *a2)
{
  v3 = v2;
  v81 = a1;
  v79 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61[1] = swift_getAssociatedConformanceWitness();
  v61[2] = AssociatedTypeWitness;
  v65 = swift_getAssociatedTypeWitness();
  v5 = sub_1AE23D7CC();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v64 = v61 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v61[3] = swift_getAssociatedConformanceWitness();
  v61[4] = v7;
  v71 = swift_getAssociatedTypeWitness();
  v8 = sub_1AE23D7CC();
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v70 = v61 - v9;
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v67 = v10;
  v77 = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  v74 = *(v11 - 8);
  v75 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v76 = v61 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v72 = swift_getAssociatedConformanceWitness();
  v73 = v13;
  v14 = swift_getAssociatedTypeWitness();
  v78 = sub_1AE23D7CC();
  v15 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v17 = v61 - v16;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_1AE23D7CC();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v61 - v22;
  v24 = *(v20 + 16);
  v80 = v3;
  v24(v61 - v22, v3, v19, v21);
  v25 = *(v18 - 8);
  if ((*(v25 + 48))(v23, 1, v18) == 1)
  {
    v26 = v81;
  }

  else
  {
    v27 = swift_getAssociatedConformanceWitness();
    v28 = v81;
    (*(v27 + 32))(v81, v18, v27);
    v20 = v25;
    v19 = v18;
    v26 = v28;
  }

  (*(v20 + 8))(v23, v19);
  v29 = v26[3];
  v30 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v29);
  result = (*(v30 + 8))(v29, v30);
  if ((result & 1) == 0)
  {
    v32 = v78;
    (*(v15 + 16))(v17, v80 + v79[9], v78);
    v33 = *(v14 - 8);
    if ((*(v33 + 48))(v17, 1, v14) != 1)
    {
      v34 = swift_getAssociatedConformanceWitness();
      (*(v34 + 32))(v26, v14, v34);
      v15 = v33;
      v32 = v14;
    }

    (*(v15 + 8))(v17, v32);
    v35 = v26[3];
    v36 = v26[4];
    __swift_project_boxed_opaque_existential_1(v26, v35);
    result = (*(v36 + 8))(v35, v36);
    if ((result & 1) == 0)
    {
      v38 = v74;
      v37 = v75;
      v39 = v76;
      (*(v74 + 16))(v76, v80 + v79[10], v75);
      v40 = v77;
      v41 = *(v77 - 8);
      if ((*(v41 + 48))(v39, 1, v77) != 1)
      {
        v42 = swift_getAssociatedConformanceWitness();
        (*(v42 + 32))(v26, v40, v42);
        v38 = v41;
        v37 = v40;
      }

      (*(v38 + 8))(v39, v37);
      v43 = v26[3];
      v44 = v26[4];
      __swift_project_boxed_opaque_existential_1(v26, v43);
      result = (*(v44 + 8))(v43, v44);
      if ((result & 1) == 0)
      {
        v46 = v68;
        v45 = v69;
        v47 = v70;
        (*(v68 + 16))(v70, v80 + v79[11], v69);
        v48 = v71;
        v49 = *(v71 - 8);
        if ((*(v49 + 48))(v47, 1, v71) != 1)
        {
          v50 = swift_getAssociatedConformanceWitness();
          (*(v50 + 32))(v26, v48, v50);
          v46 = v49;
          v45 = v48;
        }

        (*(v46 + 8))(v47, v45);
        v51 = v26[3];
        v52 = v26[4];
        __swift_project_boxed_opaque_existential_1(v26, v51);
        result = (*(v52 + 8))(v51, v52);
        if ((result & 1) == 0)
        {
          v54 = v62;
          v53 = v63;
          v55 = v64;
          (*(v62 + 16))(v64, v80 + v79[12], v63);
          v56 = v65;
          v57 = *(v65 - 8);
          if ((*(v57 + 48))(v55, 1, v65) != 1)
          {
            v58 = swift_getAssociatedConformanceWitness();
            (*(v58 + 32))(v26, v56, v58);
            v54 = v57;
            v53 = v56;
          }

          (*(v54 + 8))(v55, v53);
          v59 = v26[3];
          v60 = v26[4];
          __swift_project_boxed_opaque_existential_1(v26, v59);
          return (*(v60 + 8))(v59, v60);
        }
      }
    }
  }

  return result;
}