uint64_t CRStruct_9.encodeFields(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v99 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v66 = &v64 - v5;
  v102 = swift_getAssociatedTypeWitness();
  v70 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v69 = &v64 - v6;
  v103 = swift_getAssociatedTypeWitness();
  v73 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v72 = &v64 - v7;
  v104 = swift_getAssociatedTypeWitness();
  v76 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v75 = &v64 - v8;
  v105 = swift_getAssociatedTypeWitness();
  v79 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v78 = &v64 - v9;
  v106 = swift_getAssociatedTypeWitness();
  v82 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v81 = &v64 - v10;
  v107 = swift_getAssociatedTypeWitness();
  v85 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v83 = &v64 - v11;
  v123 = swift_getAssociatedTypeWitness();
  v86 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v95 = &v64 - v12;
  v152 = swift_getAssociatedTypeWitness();
  v98 = *(v152 - 8);
  v13 = MEMORY[0x1EEE9AC00](v152);
  v97 = &v64 - v14;
  v109 = v4;
  (*(v4 + 160))(&TupleTypeMetadata2, a2, v4, v13);
  v96 = TupleTypeMetadata2;
  v121 = v128;
  v122 = v126;
  v110 = v129;
  v119 = v132;
  v120 = v131;
  v117 = v135;
  v118 = v134;
  v115 = v138;
  v116 = v137;
  v113 = v141;
  v114 = v140;
  v111 = v144;
  v112 = v143;
  v15 = v147;
  v16 = v149;
  v17 = v150;
  v151[0] = TupleTypeMetadata2;
  v151[1] = v125;
  v18 = v125;
  v151[2] = v126;
  v87 = v127;
  v151[3] = v127;
  v151[4] = v128;
  v151[5] = v129;
  v84 = v130;
  v151[6] = v130;
  v151[7] = v131;
  v151[8] = v132;
  v80 = v133;
  v151[9] = v133;
  v151[10] = v134;
  v151[11] = v135;
  v77 = v136;
  v151[12] = v136;
  v151[13] = v137;
  v151[14] = v138;
  v74 = v139;
  v151[15] = v139;
  v151[16] = v140;
  v151[17] = v141;
  v71 = v142;
  v151[18] = v142;
  v151[19] = v143;
  v151[20] = v144;
  v68 = v145;
  v151[21] = v145;
  v151[22] = v146;
  v19 = v146;
  v151[23] = v147;
  v65 = v148;
  v151[24] = v148;
  v151[25] = v149;
  v151[26] = v150;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v125 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v126 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v127 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v128 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v129 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v130 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v131 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v132 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v21 = *(TupleTypeMetadata - 8);
  v22 = *(v21 + 16);
  v108 = TupleTypeMetadata;
  v90 = v22;
  v91 = v21 + 16;
  (v22)(&TupleTypeMetadata2, v151);

  v94 = v17;

  v88 = v16;

  v92 = v15;

  v93 = v19;

  v23 = v97;
  swift_getAtKeyPath();

  v89 = a2;
  v24 = v152;
  v25 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
  v26 = v96;
  v96 = v18;
  v27 = v100;
  sub_1ADDFD59C(v23, v26, v18, v24, v25);
  if (v27)
  {
    (*(v21 + 8))(v151, v108);
    v28 = *(v98 + 8);
    v29 = v23;
  }

  else
  {
    v31 = v86;
    v100 = v21;
    (*(v98 + 8))(v23, v24);
    v32 = v108;
    v90(&TupleTypeMetadata2, v151, v108);
    v33 = v121;

    v34 = v95;
    swift_getAtKeyPath();

    v35 = v123;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v34, v87, v33, v35, *(*(AssociatedConformanceWitness + 16) + 8));
    (*(v31 + 8))(v95, v123);
    v90(&TupleTypeMetadata2, v151, v32);
    v37 = v120;

    v38 = v83;
    swift_getAtKeyPath();

    v39 = v107;
    v40 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v38, v84, v37, v39, *(*(v40 + 16) + 8));
    (*(v85 + 8))(v38, v39);
    v90(&TupleTypeMetadata2, v151, v108);
    v41 = v118;

    v42 = v81;
    swift_getAtKeyPath();

    v43 = v106;
    v44 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v42, v80, v41, v43, *(*(v44 + 16) + 8));
    (*(v82 + 8))(v42, v43);
    v90(&TupleTypeMetadata2, v151, v108);
    v45 = v116;

    v46 = v78;
    swift_getAtKeyPath();

    v47 = v105;
    v48 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v46, v77, v45, v47, *(*(v48 + 16) + 8));
    (*(v79 + 8))(v46, v47);
    v90(&TupleTypeMetadata2, v151, v108);
    v49 = v114;

    v50 = v75;
    swift_getAtKeyPath();

    v51 = v104;
    v52 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v50, v74, v49, v51, *(*(v52 + 16) + 8));
    (*(v76 + 8))(v50, v51);
    v90(&TupleTypeMetadata2, v151, v108);
    v53 = v112;

    v54 = v72;
    swift_getAtKeyPath();

    v55 = v103;
    v56 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v54, v71, v53, v55, *(*(v56 + 16) + 8));
    (*(v73 + 8))(v54, v55);
    v90(&TupleTypeMetadata2, v151, v108);
    v57 = v93;

    v58 = v69;
    swift_getAtKeyPath();

    v59 = v102;
    v60 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v58, v68, v57, v59, *(*(v60 + 16) + 8));
    (*(v70 + 8))(v58, v59);
    v90(&TupleTypeMetadata2, v151, v108);
    v61 = v88;

    v62 = v66;
    swift_getAtKeyPath();

    v24 = AssociatedTypeWitness;
    v63 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v62, v65, v61, v24, *(*(v63 + 16) + 8));
    (*(v100 + 8))(v151, v108);
    v28 = *(v67 + 8);
    v29 = v62;
  }

  return v28(v29, v24);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRStruct_10_Final.decode(fields:)(Swift::OpaquePointer fields)
{
  v3 = v1;
  rawValue = fields._rawValue;
  v4 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v102[1] = v102 - v5;
  v121 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v121);
  v102[2] = v102 - v6;
  v122 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v122);
  v102[3] = v102 - v7;
  v123 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v123);
  v102[4] = v102 - v8;
  v124 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v124);
  v104 = v102 - v9;
  v125 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v125);
  v106 = v102 - v10;
  v126 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v126);
  v108 = v102 - v11;
  v127 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v127);
  v110 = v102 - v12;
  v128 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v128);
  v112 = v102 - v13;
  v129 = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x1EEE9AC00](v129);
  v114 = v102 - v15;
  v16 = *(v4 + 176);
  v131 = v4;
  v16(&TupleTypeMetadata2, v3, v4, v14);
  v134 = v157;
  v139 = v163;
  v140 = v160;
  v136 = v164;
  v137 = v161;
  v154 = v166;
  v155 = v158;
  v138 = v170;
  v148 = v169;
  v149 = v172;
  v135 = v175;
  v151 = v176;
  v146 = v167;
  v147 = v178;
  v152 = v179;
  v153 = v173;
  v17 = v181;
  v18 = v182;
  v19 = v184;
  v20 = v185;
  v118 = TupleTypeMetadata2;
  v186[0] = TupleTypeMetadata2;
  v186[1] = v157;
  v186[2] = v158;
  v116 = v162;
  v117 = v159;
  v186[3] = v159;
  v186[4] = v160;
  v186[5] = v161;
  v186[6] = v162;
  v186[7] = v163;
  v186[8] = v164;
  v115 = v165;
  v186[9] = v165;
  v186[10] = v166;
  v186[11] = v167;
  v113 = v168;
  v186[12] = v168;
  v186[13] = v169;
  v186[14] = v170;
  v111 = v171;
  v186[15] = v171;
  v186[16] = v172;
  v186[17] = v173;
  v109 = v174;
  v186[18] = v174;
  v186[19] = v175;
  v186[20] = v176;
  v107 = v177;
  v186[21] = v177;
  v186[22] = v178;
  v186[23] = v179;
  v105 = v180;
  v186[24] = v180;
  v186[25] = v181;
  v186[26] = v182;
  v103 = v183;
  v186[27] = v183;
  v186[28] = v184;
  v186[29] = v185;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v157 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v158 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v159 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v160 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v161 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v162 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v163 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v164 = swift_getTupleTypeMetadata2();
  v130 = v3;
  sub_1AE23DB8C();
  v165 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v119 = *(TupleTypeMetadata - 8);
  v22 = *(v119 + 16);
  v150 = TupleTypeMetadata;
  v144 = v22;
  v145 = v119 + 16;
  (v22)(&TupleTypeMetadata2, v186);

  v133 = v20;

  v143 = v19;

  v141 = v18;

  v142 = v17;

  if (rawValue[2])
  {
    sub_1ADDD7A10(v118, v134);
    v24 = v23;

    if (v24)
    {
      v144(&TupleTypeMetadata2, v186, v150);

      v25 = v129;
      v26 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v27 = *(v26 + 8);

      v29 = v132;
      v27(v28, v25, v26);
      if (v29)
      {
        v30 = v150;
        v31 = v119;
LABEL_69:

        (*(v31 + 8))(v186, v30);
        return;
      }

      v132 = 0;
      swift_setAtWritableKeyPath();

      v144(&TupleTypeMetadata2, v186, v150);
    }

    else
    {
      v144(&TupleTypeMetadata2, v186, v150);
    }
  }

  else
  {

    v144(&TupleTypeMetadata2, v186, v150);
  }

  if (rawValue[2])
  {
    v32 = sub_1ADDD7A10(v117, v140);
    v34 = v33;

    if (v34)
    {
      v129 = *(rawValue[7] + 8 * v32);
      v144(&TupleTypeMetadata2, v186, v150);

      v35 = v128;
      v36 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v37 = *(v36 + 8);

      v39 = v132;
      v37(v38, v35, v36);
      if (v39)
      {
        v30 = v150;
LABEL_68:
        v31 = v119;
        goto LABEL_69;
      }

      v132 = 0;
      swift_setAtWritableKeyPath();

      v144(&TupleTypeMetadata2, v186, v150);
    }

    else
    {
      v144(&TupleTypeMetadata2, v186, v150);
    }
  }

  else
  {

    v144(&TupleTypeMetadata2, v186, v150);
  }

  if (rawValue[2])
  {
    sub_1ADDD7A10(v116, v139);
    v41 = v40;

    if (v41)
    {
      v144(&TupleTypeMetadata2, v186, v150);

      v42 = v127;
      v43 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v44 = *(v43 + 8);

      v46 = v132;
      v44(v45, v42, v43);
      if (v46)
      {
        v30 = v150;
        v31 = v119;
        goto LABEL_69;
      }

      v132 = 0;
      swift_setAtWritableKeyPath();
    }
  }

  else
  {
  }

  v144(&TupleTypeMetadata2, v186, v150);

  if (rawValue[2])
  {
    v47 = sub_1ADDD7A10(v115, v154);
    v49 = v48;

    if (v49)
    {
      v129 = *(rawValue[7] + 8 * v47);
      v30 = v150;
      v144(&TupleTypeMetadata2, v186, v150);

      v50 = v126;
      v51 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v52 = *(v51 + 8);

      v54 = v132;
      v52(v53, v50, v51);
      if (v54)
      {
        goto LABEL_68;
      }

      v132 = 0;
      swift_setAtWritableKeyPath();

      v144(&TupleTypeMetadata2, v186, v150);
    }

    else
    {
      v144(&TupleTypeMetadata2, v186, v150);
    }
  }

  else
  {

    v144(&TupleTypeMetadata2, v186, v150);
  }

  if (rawValue[2])
  {
    sub_1ADDD7A10(v113, v148);
    v56 = v55;

    if (v56)
    {
      v144(&TupleTypeMetadata2, v186, v150);

      v57 = v125;
      v58 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v59 = *(v58 + 8);

      v61 = v132;
      v59(v60, v57, v58);
      if (v61)
      {
        v30 = v150;
        goto LABEL_68;
      }

      v132 = 0;
      swift_setAtWritableKeyPath();

      v144(&TupleTypeMetadata2, v186, v150);
    }

    else
    {
      v144(&TupleTypeMetadata2, v186, v150);
    }
  }

  else
  {

    v144(&TupleTypeMetadata2, v186, v150);
  }

  v62 = v147;

  if (rawValue[2])
  {
    sub_1ADDD7A10(v111, v149);
    v64 = v63;

    if (v64)
    {
      v144(&TupleTypeMetadata2, v186, v150);

      v65 = v124;
      v66 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v67 = *(v66 + 8);

      v69 = v132;
      v67(v68, v65, v66);
      if (v69)
      {
        v30 = v150;
        goto LABEL_68;
      }

      v132 = 0;
      swift_setAtWritableKeyPath();

      v62 = v147;
      v144(&TupleTypeMetadata2, v186, v150);
    }

    else
    {
      v62 = v147;
      v144(&TupleTypeMetadata2, v186, v150);
    }
  }

  else
  {

    v144(&TupleTypeMetadata2, v186, v150);
  }

  if (rawValue[2])
  {
    sub_1ADDD7A10(v109, v135);
    v71 = v70;

    if (v71)
    {
      v144(&TupleTypeMetadata2, v186, v150);

      v72 = v147;

      v73 = v123;
      v74 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v75 = *(v74 + 8);

      v77 = v132;
      v75(v76, v73, v74);
      if (v77)
      {
        v30 = v150;
        goto LABEL_68;
      }

      v132 = 0;
      swift_setAtWritableKeyPath();

      v62 = v72;
      v144(&TupleTypeMetadata2, v186, v150);
    }

    else
    {
      v62 = v147;
      v144(&TupleTypeMetadata2, v186, v150);
    }
  }

  else
  {

    v144(&TupleTypeMetadata2, v186, v150);
  }

  if (rawValue[2])
  {
    sub_1ADDD7A10(v107, v62);
    v79 = v78;

    if (v79)
    {
      v144(&TupleTypeMetadata2, v186, v150);

      v80 = v122;
      v81 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v82 = *(v81 + 8);

      v84 = v132;
      v82(v83, v80, v81);
      if (v84)
      {
        v30 = v150;
        goto LABEL_68;
      }

      v132 = 0;
      swift_setAtWritableKeyPath();
    }
  }

  else
  {
  }

  v144(&TupleTypeMetadata2, v186, v150);

  if (rawValue[2])
  {
    v85 = sub_1ADDD7A10(v105, v142);
    v87 = v86;

    if ((v87 & 1) == 0)
    {
      v93 = v144;
      goto LABEL_65;
    }

    v129 = *(rawValue[7] + 8 * v85);
    v144(&TupleTypeMetadata2, v186, v150);

    v88 = v121;
    v89 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v90 = *(v89 + 8);

    v92 = v132;
    v90(v91, v88, v89);
    if (v92)
    {
      v30 = v150;
      goto LABEL_68;
    }

    v132 = 0;
    swift_setAtWritableKeyPath();
  }

  else
  {
  }

  v93 = v144;
LABEL_65:
  v94 = v150;
  v93(&TupleTypeMetadata2, v186, v150);

  if (rawValue[2])
  {
    sub_1ADDD7A10(v103, v143);
    v96 = v95;

    if (v96)
    {
      v30 = v150;
      v144(&TupleTypeMetadata2, v186, v150);

      v97 = AssociatedTypeWitness;
      v98 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v99 = *(v98 + 8);

      v101 = v132;
      v99(v100, v97, v98);
      if (v101)
      {
        goto LABEL_68;
      }

      swift_setAtWritableKeyPath();
      (*(v119 + 8))(v186, v30);
    }

    else
    {
      (*(v119 + 8))(v186, v150);
    }
  }

  else
  {
    (*(v119 + 8))(v186, v94);
  }
}

void sub_1AE057C64(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, __n128))
{
  MEMORY[0x1EEE9AC00](a1);
  v17 = (&v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v11 + 64))
  {
    v21 = v15;
    v22 = v14;
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    sub_1ADDE78C8();
    sub_1AE04ABE8(v19, a1, a2, a3, a4, a5, v17);

    if (!v5)
    {
      (*(v21 + 32))(v22, v17, a2);
    }
  }

  else
  {
    sub_1ADE42E40(v11, v12, v13);
    swift_allocError();
    *v20 = 0xD000000000000014;
    *(v20 + 8) = 0x80000001AE25FB50;
    *(v20 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t CRStruct_10_Final.encodeFields(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v99 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v66 = &v65 - v5;
  v102 = swift_getAssociatedTypeWitness();
  v70 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v69 = &v65 - v6;
  v103 = swift_getAssociatedTypeWitness();
  v73 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v72 = &v65 - v7;
  v104 = swift_getAssociatedTypeWitness();
  v76 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v75 = &v65 - v8;
  v105 = swift_getAssociatedTypeWitness();
  v79 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v78 = &v65 - v9;
  v106 = swift_getAssociatedTypeWitness();
  v82 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v81 = &v65 - v10;
  v107 = swift_getAssociatedTypeWitness();
  v85 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v84 = &v65 - v11;
  v108 = swift_getAssociatedTypeWitness();
  v88 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v86 = &v65 - v12;
  v130 = swift_getAssociatedTypeWitness();
  v89 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v95 = &v65 - v13;
  v162 = swift_getAssociatedTypeWitness();
  v98 = *(v162 - 8);
  v14 = MEMORY[0x1EEE9AC00](v162);
  v96 = &v65 - v15;
  v129 = v4;
  v16 = *(v4 + 176);
  v111 = a2;
  v16(&TupleTypeMetadata2, a2, v4, v14);
  v97 = TupleTypeMetadata2;
  v127 = v135;
  v128 = v133;
  v112 = v138;
  v113 = v132;
  v125 = v139;
  v126 = v136;
  v123 = v142;
  v124 = v141;
  v121 = v145;
  v122 = v144;
  v119 = v148;
  v120 = v147;
  v117 = v151;
  v118 = v150;
  v115 = v154;
  v116 = v153;
  v114 = v156;
  v17 = v157;
  v110 = v159;
  v161[0] = TupleTypeMetadata2;
  v18 = v132;
  v161[1] = v132;
  v161[2] = v133;
  v90 = v134;
  v161[3] = v134;
  v161[4] = v135;
  v161[5] = v136;
  v87 = v137;
  v161[6] = v137;
  v161[7] = v138;
  v161[8] = v139;
  v83 = v140;
  v161[9] = v140;
  v161[10] = v141;
  v161[11] = v142;
  v80 = v143;
  v161[12] = v143;
  v161[13] = v144;
  v161[14] = v145;
  v77 = v146;
  v161[15] = v146;
  v161[16] = v147;
  v161[17] = v148;
  v74 = v149;
  v161[18] = v149;
  v161[19] = v150;
  v161[20] = v151;
  v71 = v152;
  v161[21] = v152;
  v161[22] = v153;
  v161[23] = v154;
  v68 = v155;
  v161[24] = v155;
  v161[25] = v156;
  v161[26] = v157;
  v65 = v158;
  v161[27] = v158;
  v161[28] = v159;
  v19 = v160;
  v161[29] = v160;
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v132 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v133 = swift_getTupleTypeMetadata2();
  v20 = v96;
  sub_1AE23DB8C();
  v134 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v135 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v136 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v137 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v138 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v139 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v140 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v22 = *(TupleTypeMetadata - 8);
  v23 = *(v22 + 16);
  v109 = TupleTypeMetadata;
  v91 = v23;
  v92 = v22 + 16;
  (v23)(&TupleTypeMetadata2, v161);

  v94 = v19;

  v93 = v17;

  swift_getAtKeyPath();

  v24 = v162;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = v100;
  sub_1ADDFD59C(v20, v97, v18, v24, *(*(AssociatedConformanceWitness + 16) + 8));
  if (v26)
  {
    (*(v22 + 8))(v161, v109);
    return (*(v98 + 8))(v20, v24);
  }

  else
  {
    v100 = v22;
    (*(v98 + 8))(v20, v24);
    v28 = v109;
    v91(&TupleTypeMetadata2, v161, v109);
    v29 = v127;

    v30 = v95;
    swift_getAtKeyPath();

    v31 = v130;
    v32 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v30, v90, v29, v31, *(*(v32 + 16) + 8));
    (*(v89 + 8))(v95, v130);
    v91(&TupleTypeMetadata2, v161, v28);
    v33 = v112;

    v34 = v86;
    swift_getAtKeyPath();

    v35 = v108;
    v36 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v34, v87, v33, v35, *(*(v36 + 16) + 8));
    (*(v88 + 8))(v34, v35);
    v91(&TupleTypeMetadata2, v161, v109);
    v37 = v124;

    v38 = v84;
    swift_getAtKeyPath();

    v39 = v107;
    v40 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v38, v83, v37, v39, *(*(v40 + 16) + 8));
    (*(v85 + 8))(v38, v39);
    v91(&TupleTypeMetadata2, v161, v109);
    v41 = v122;

    v42 = v81;
    swift_getAtKeyPath();

    v43 = v106;
    v44 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v42, v80, v41, v43, *(*(v44 + 16) + 8));
    (*(v82 + 8))(v42, v43);
    v91(&TupleTypeMetadata2, v161, v109);
    v45 = v120;

    v46 = v78;
    swift_getAtKeyPath();

    v47 = v105;
    v48 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v46, v77, v45, v47, *(*(v48 + 16) + 8));
    (*(v79 + 8))(v46, v47);
    v91(&TupleTypeMetadata2, v161, v109);
    v49 = v118;

    v50 = v75;
    swift_getAtKeyPath();

    v51 = v104;
    v52 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v50, v74, v49, v51, *(*(v52 + 16) + 8));
    (*(v76 + 8))(v50, v51);
    v91(&TupleTypeMetadata2, v161, v109);
    v53 = v116;

    v54 = v72;
    swift_getAtKeyPath();

    v55 = v103;
    v56 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v54, v71, v53, v55, *(*(v56 + 16) + 8));
    (*(v73 + 8))(v54, v55);
    v91(&TupleTypeMetadata2, v161, v109);
    v57 = v114;

    v58 = v69;
    swift_getAtKeyPath();

    v59 = v102;
    v60 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v58, v68, v57, v59, *(*(v60 + 16) + 8));
    (*(v70 + 8))(v58, v59);
    v91(&TupleTypeMetadata2, v161, v109);
    v61 = v110;

    v62 = v66;
    swift_getAtKeyPath();

    v63 = AssociatedTypeWitness;
    v64 = swift_getAssociatedConformanceWitness();
    sub_1ADDFD59C(v62, v65, v61, v63, *(*(v64 + 16) + 8));
    (*(v100 + 8))(v161, v109);
    return (*(v67 + 8))(v62, v63);
  }
}

uint64_t CRStruct_1.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v22[1] = a4;
  v9 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  (*(*(a2 - 8) + 16))(a4, v5, a2, v15);
  (*(v9 + 32))(a2, v9);
  v22[2] = v16;

  swift_getAtKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(a1, AssociatedTypeWitness);
  (*(v11 + 8))(v13, AssociatedTypeWitness);
  swift_setAtWritableKeyPath();

  v18 = *(v9 + 8);
  v19 = (*(v18 + 24))(a2, v18);
  v20 = sub_1AE156B60(v19, a1);

  (*(v18 + 32))(v20, a2, v18);
}

uint64_t CRStruct_1.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  if (a1)
  {
    v15 = a1;
  }

  else
  {
    v15 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v24 = v15;
  (*(*(a2 - 8) + 16))(a4, v4, a2, v14);
  v23[0] = a4;
  v16 = *(v8 + 32);

  v16(a2, v8);
  v23[1] = v17;

  swift_getAtKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(&v24, AssociatedTypeWitness);
  (*(v10 + 8))(v12, AssociatedTypeWitness);
  swift_setAtWritableKeyPath();

  v19 = *(v8 + 8);
  v20 = (*(v19 + 24))(a2, v19);
  v21 = sub_1AE156B60(v20, &v24);

  (*(v19 + 32))(v21, a2, v19);
}

uint64_t CRStruct_1.merge(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, _WORD *a4@<X8>)
{
  v23 = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v22 - v9;
  (*(v5 + 32))(a2, v5, v8);
  v22[1] = v11;
  if (qword_1ED9670C0 != -1)
  {
    swift_once();
  }

  *(&v26 + 3) = word_1ED96F220;
  BYTE5(v26) = byte_1ED96F222;

  swift_getAtKeyPath();
  v12 = swift_modifyAtWritableKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 8))(&v26, v10, AssociatedTypeWitness);
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  v12(&v24, 0);

  v24 = v26;
  v25 = BYTE2(v26);
  v14 = &v24;
  MergeResult.merge(_:)(v14);
  v15 = *(v5 + 8);
  v16 = (*(v15 + 24))(a2, v15);
  v17 = (*(v15 + 40))(&v24, a2, v15);
  sub_1AE21F75C(v16, &v26);

  v17(&v24, 0);
  v24 = v26;
  v25 = BYTE2(v26);
  v18 = &v24;
  MergeResult.merge(_:)(v18);
  (*(v15 + 64))(a2, v15);

  v20 = BYTE5(v26);
  v21 = v23;
  *v23 = *(&v26 + 3);
  *(v21 + 2) = v20;
  return result;
}

uint64_t CRStruct_1.newRefs(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v24 - v11;
  (*(v4 + 32))(a2, v4, v10);
  v24[2] = v13;
  v25 = MEMORY[0x1E69E7CD0];

  swift_getAtKeyPath();

  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = (*(AssociatedConformanceWitness + 64))(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v16 = *(v6 + 8);
  v16(v8, AssociatedTypeWitness);
  v16(v12, AssociatedTypeWitness);
  sub_1AE00F014(v15);
  v17 = *(v4 + 8);
  v18 = *(v17 + 24);
  v19 = v18(a2, v17);
  v20 = v18(a2, v17);
  sub_1AE2200E4(v20, v19);
  v22 = v21;

  sub_1AE00F014(v22);

  return v25;
}

uint64_t CRStruct_1.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a1;
  v47 = a2;
  v50 = a5;
  v6 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v45 = *(swift_getAssociatedConformanceWitness() + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v40 = &v38 - v8;
  v9 = *(AssociatedTypeWitness - 8);
  v43 = AssociatedTypeWitness;
  v44 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v38 - v11;
  v12 = swift_checkMetadataState();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  v19 = sub_1AE23D7CC();
  v42 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v26 = *(v6 + 32);
  v48 = v6;
  v49 = a3;
  v26(a3, v6, v23);

  swift_getAtKeyPath();

  swift_getAtKeyPath();

  (*(v45 + 40))(v15, v47, v12);

  v27 = *(v13 + 8);
  v27(v15, v12);
  v28 = v18;
  v29 = v42;
  v27(v28, v12);
  v31 = v43;
  v30 = v44;
  (*(v29 + 32))(v21, v25, v19);
  if ((*(v30 + 48))(v21, 1, v31) == 1)
  {
    (*(v29 + 8))(v21, v19);
    v32 = swift_getAssociatedTypeWitness();
    return (*(*(v32 - 8) + 56))(v50, 1, 1, v32);
  }

  else
  {
    v34 = *(v30 + 32);
    v35 = v39;
    v34(v39, v21, v31);
    v34(v40, v35, v31);
    v36 = swift_getAssociatedTypeWitness();
    v37 = v50;
    swift_dynamicCast();
    return (*(*(v36 - 8) + 56))(v37, 0, 1, v36);
  }
}

uint64_t CRStruct_1.hasDelta(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  (*(v6 + 32))(a2, v6, v12);
  v29 = v15;

  v27 = v3;
  swift_getAtKeyPath();

  v28 = a1;
  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = (*(AssociatedConformanceWitness + 88))(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  v18 = *(v8 + 8);
  v18(v10, AssociatedTypeWitness);
  v18(v14, AssociatedTypeWitness);
  if (v17)
  {
    v19 = 1;
  }

  else
  {
    v20 = *(v6 + 8);
    v21 = *(v20 + 24);
    v22 = v21(a2, v20);
    v23 = v21(a2, v20);
    sub_1AE21FE14(v23, v22);
    v19 = v24;
  }

  return v19 & 1;
}

uint64_t CRStruct_1.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[0] = a1;
  v17[1] = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v17 - v12;
  (*(v5 + 32))(a2, v5, v11);

  swift_getAtKeyPath();

  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 72))(v9, AssociatedTypeWitness, AssociatedConformanceWitness);

  v15 = *(v7 + 8);
  v15(v9, AssociatedTypeWitness);
  return (v15)(v13, AssociatedTypeWitness);
}

uint64_t CRStruct_1.apply(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 8) + 32))(a2, *(a3 + 8));

  v4 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 80);
  v7 = swift_checkMetadataState();
  v6(a1, v7, AssociatedConformanceWitness);
  v4(&v9, 0);
}

uint64_t CRStruct_1.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 8) + 32))(a2, *(a3 + 8));

  v4 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v5 = *(swift_getAssociatedConformanceWitness() + 16);
  v6 = *(v5 + 64);
  v7 = swift_checkMetadataState();
  v6(a1, v7, v5);
  v4(&v9, 0);
}

uint64_t CRStruct_1.minEncodingVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v14 = a3;
  v4 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v14 - v8;
  (*(v4 + 32))(a1, v4, v7);
  v10 = (*(*(v4 + 8) + 24))(a1);
  sub_1AE21FFB0(v10, &v15 + 1);

  v11 = BYTE1(v15);
  if (BYTE1(v15) > 2u)
  {
  }

  else
  {
    swift_getAtKeyPath();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(*(AssociatedConformanceWitness + 16) + 8) + 24))(&v15, AssociatedTypeWitness);

    result = (*(v6 + 8))(v9, AssociatedTypeWitness);
    if (v15 > v11)
    {
      LOBYTE(v11) = v15;
    }
  }

  *v14 = v11;
  return result;
}

uint64_t CRStruct_1<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v46 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCF60, &unk_1AE252450);
  v48 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - v11;
  v13 = *(v6 + 32);
  v41 = v6;
  v42 = a2;
  v43 = v13(a2, v6, v10);
  v15 = v14;
  v17 = v16;
  v18 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE048F10(v18, v19, v20);
  sub_1AE23E3CC();

  swift_getAtKeyPath();

  v49 = v43;
  v50 = v15;
  v21 = v12;
  v22 = AssociatedTypeWitness;
  v23 = v47;
  sub_1AE23DD5C();
  if (v23)
  {

    (*(v45 + 8))(v8, v22);
    (*(v48 + 8))(v21, v9);
  }

  else
  {
    v43 = v17;
    v46 = v21;
    v47 = v9;
    (*(v45 + 8))(v8, v22);
    v45 = v15;

    result = (*(*(v41 + 8) + 24))(v42);
    v27 = result;
    v28 = 0;
    v29 = result + 64;
    v30 = 1 << *(result + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(result + 64);
    v33 = (v30 + 63) >> 6;
    for (i = v48; v32; i = v48)
    {
      v35 = v28;
LABEL_10:
      v36 = __clz(__rbit64(v32)) | (v35 << 6);
      v37 = (*(v27 + 48) + 16 * v36);
      v38 = *v37;
      v39 = v37[1];
      v51 = *(*(v27 + 56) + 8 * v36);
      v49 = v38;
      v50 = v39;
      sub_1AE048F64(result, v25, v26);

      sub_1AE23DD5C();
      v32 &= v32 - 1;

      v28 = v35;
    }

    while (1)
    {
      v35 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v35 >= v33)
      {

        return (*(i + 8))(v46, v47);
      }

      v32 = *(v29 + 8 * v35);
      ++v28;
      if (v32)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CRStruct_2.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a1;
  v28[1] = a4;
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v36 = AssociatedTypeWitness;
  v37 = v9;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v31 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v34 = v28 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v29 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(*(a2 - 8) + 16))(a4, v4, a2, v17);
  (*(v7 + 48))(v38, a2, v7);
  v18 = v38[2];
  v35 = v38[1];
  v33 = v38[4];

  v28[0] = v4;
  swift_getAtKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = v32;
  (*(*(AssociatedConformanceWitness + 16) + 24))(v32, v13);
  (*(v29 + 8))(v15, v13);
  v30 = v18;
  swift_setAtWritableKeyPath();

  v21 = v31;
  swift_getAtKeyPath();
  v22 = v36;
  v23 = swift_getAssociatedConformanceWitness();
  (*(*(v23 + 16) + 24))(v20, v22);
  (*(v37 + 8))(v21, v22);
  swift_setAtWritableKeyPath();

  v24 = *(v7 + 8);
  v25 = (*(v24 + 24))(a2, v24);
  v26 = sub_1AE156B60(v25, v20);

  (*(v24 + 32))(v26, a2, v24);
}

uint64_t CRStruct_2.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v36 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v34 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v33 = &v29 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v30 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  if (a1)
  {
    v19 = a1;
  }

  else
  {
    v19 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v38 = v19;
  (*(*(a2 - 8) + 16))(a4, v5, a2, v18);
  v29 = a4;
  v20 = *(v9 + 48);

  v20(v37, a2, v9);
  v31 = v37[4];
  v32 = v37[1];

  swift_getAtKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(&v38, v14);
  (*(v30 + 8))(v16, v14);
  swift_setAtWritableKeyPath();

  v22 = v34;
  swift_getAtKeyPath();
  v23 = v36;
  v24 = swift_getAssociatedConformanceWitness();
  (*(*(v24 + 16) + 24))(&v38, v23);
  (*(v35 + 8))(v22, v23);
  swift_setAtWritableKeyPath();

  v25 = *(v9 + 8);
  v26 = (*(v25 + 24))(a2, v25);
  v27 = sub_1AE156B60(v26, &v38);

  (*(v25 + 32))(v27, a2, v25);
}

uint64_t CRStruct_2.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _WORD *a4@<X8>)
{
  v36 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  v33 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v31 = v30 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v30 - v12;
  (*(v6 + 48))(&v37 + 6, a2, v6, v11);
  v14 = v40;
  v34 = v41;
  v35 = v39;
  v30[2] = v42;
  if (qword_1ED9670C0 != -1)
  {
    swift_once();
  }

  *(&v37 + 3) = word_1ED96F220;
  BYTE5(v37) = byte_1ED96F222;

  v30[0] = a1;
  swift_getAtKeyPath();
  v15 = swift_modifyAtWritableKeyPath();
  v30[1] = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 8))(&v37, v13, v9);
  (*(v10 + 8))(v13, v9);
  v15(&v37 + 6, 0);

  HIWORD(v37) = v37;
  v38 = BYTE2(v37);
  v17 = &v37 + 6;
  MergeResult.merge(_:)(v17);

  v18 = v31;
  swift_getAtKeyPath();
  v19 = swift_modifyAtWritableKeyPath();
  v20 = v33;
  v21 = swift_getAssociatedConformanceWitness();
  (*(*(v21 + 8) + 8))(&v37, v18, v20);
  (*(v32 + 8))(v18, v20);
  v19(&v37 + 6, 0);

  HIWORD(v37) = v37;
  v38 = BYTE2(v37);
  v22 = &v37 + 6;
  MergeResult.merge(_:)(v22);
  v23 = *(v6 + 8);
  v24 = (*(v23 + 24))(a2, v23);
  v25 = (*(v23 + 40))(&v37 + 6, a2, v23);
  sub_1AE21F75C(v24, &v37);

  v25(&v37 + 6, 0);
  HIWORD(v37) = v37;
  v38 = BYTE2(v37);
  v26 = &v37 + 6;
  MergeResult.merge(_:)(v26);
  (*(v23 + 64))(a2, v23);

  v28 = BYTE5(v37);
  v29 = v36;
  *v36 = *(&v37 + 3);
  *(v29 + 2) = v28;
  return result;
}

uint64_t CRStruct_2.newRefs(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v36 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v16 = *(v4 + 48);
  v36 = a2;
  v37 = v4;
  v16(v45, a2, v4, v13);
  v41 = v45[4];
  v42 = v45[1];
  v45[0] = MEMORY[0x1E69E7CD0];

  swift_getAtKeyPath();

  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = (*(AssociatedConformanceWitness + 64))(v11, v8, AssociatedConformanceWitness);
  v19 = *(v9 + 8);
  v19(v11, v8);
  v19(v15, v8);
  sub_1AE00F014(v18);

  v20 = v38;
  swift_getAtKeyPath();

  v21 = v39;
  swift_getAtKeyPath();

  v23 = v36;
  v22 = v37;
  v24 = AssociatedTypeWitness;
  v25 = swift_getAssociatedConformanceWitness();
  v26 = v21;
  v27 = (*(v25 + 64))(v21, v24, v25);
  v28 = *(v43 + 8);
  v28(v26, v24);
  v28(v20, v24);
  sub_1AE00F014(v27);
  v29 = *(v22 + 8);
  v30 = *(v29 + 24);
  v31 = v30(v23, v29);
  v32 = v30(v23, v29);
  sub_1AE2200E4(v32, v31);
  v34 = v33;

  sub_1AE00F014(v34);

  return v45[0];
}

uint64_t CRStruct_2.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a1;
  v60 = a2;
  v67 = a5;
  v6 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v57 = *(swift_getAssociatedConformanceWitness() + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  v58 = *(swift_getAssociatedConformanceWitness() + 16);
  v45 = swift_getAssociatedTypeWitness();
  v8 = sub_1AE23D7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v46 = &v44 - v9;
  v54 = swift_checkMetadataState();
  v56 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v44 - v12;
  v64 = v8;
  v62 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v44 - v14;
  v15 = swift_checkMetadataState();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  v63 = v7;
  v55 = *(v7 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v48 = &v44 - v24;
  v25 = *(v6 + 48);
  v65 = v6;
  v66 = a3;
  v25(v68, a3, v6, v23);
  v50 = v68[1];
  v49 = v68[4];

  swift_getAtKeyPath();

  swift_getAtKeyPath();

  v26 = v60;
  (*(v57 + 40))(v18, v60, v15);
  v27 = *(v16 + 8);
  v27(v18, v15);
  v27(v21, v15);
  v28 = v51;

  v29 = v52;
  swift_getAtKeyPath();

  v30 = v53;
  swift_getAtKeyPath();

  v31 = v29;
  v32 = v54;
  (*(v58 + 40))(v30, v26, v54);

  v33 = *(v56 + 8);
  v33(v30, v32);
  v34 = v32;
  v35 = v48;
  v33(v31, v34);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v35, 1) == 1 && (*(*(v45 - 8) + 48))(v28, 1) == 1)
  {
    (*(v55 + 8))(v35, v63);
    v36 = swift_getAssociatedTypeWitness();
    (*(*(v36 - 8) + 56))(v67, 1, 1, v36);
    v37 = v64;
    v38 = v62;
  }

  else
  {
    v39 = *(TupleTypeMetadata2 + 48);
    v40 = v46;
    (*(v55 + 32))(v46, v35, v63);
    v38 = v62;
    v37 = v64;
    (*(v62 + 16))(&v40[v39], v28, v64);
    v41 = swift_getAssociatedTypeWitness();
    v42 = v67;
    swift_dynamicCast();
    (*(*(v41 - 8) + 56))(v42, 0, 1, v41);
  }

  return (*(v38 + 8))(v28, v37);
}

uint64_t CRStruct_2.hasDelta(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v36 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v33 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  (*(v4 + 48))(v40, a2, v4, v14);
  v37 = v40[1];
  v38 = v40[4];

  swift_getAtKeyPath();

  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = (*(AssociatedConformanceWitness + 88))(v12, v9, AssociatedConformanceWitness);
  v19 = *(v10 + 8);
  v19(v12, v9);
  v19(v16, v9);
  if (v18 & 1) != 0 || (, v20 = v33, swift_getAtKeyPath(), , , v21 = v34, swift_getAtKeyPath(), , v22 = v36, v23 = swift_getAssociatedConformanceWitness(), v24 = (*(v23 + 88))(v21, v22, v23), v25 = *(v35 + 8), v25(v21, v22), v25(v20, v22), (v24))
  {

    v26 = 1;
  }

  else
  {
    v27 = *(v4 + 8);
    v28 = *(v27 + 24);
    v29 = v28(a2, v27);
    v30 = v28(a2, v27);
    sub_1AE21FE14(v30, v29);
    v26 = v31;
  }

  return v26 & 1;
}

uint64_t CRStruct_2.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a1;
  v51 = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v47 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v35 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v35 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v39 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v17 = swift_getAssociatedConformanceWitness();
  v40 = swift_getAssociatedTypeWitness();
  v44 = sub_1AE23D7CC();
  v41 = *(v44 - 8);
  v18 = MEMORY[0x1EEE9AC00](v44);
  v36 = &v35 - v19;
  (*(v5 + 48))(v53, a2, v5, v18);
  v38 = v53[1];
  v37 = v53[4];

  swift_getAtKeyPath();

  swift_getAtKeyPath();

  (*(v17 + 72))(v13, v11, v17);
  v20 = *(v39 + 8);
  v20(v13, v11);
  v20(v16, v11);

  v21 = v42;
  swift_getAtKeyPath();

  v22 = v47;
  swift_getAtKeyPath();

  v23 = AssociatedTypeWitness;
  (*(AssociatedConformanceWitness + 72))(v22, AssociatedTypeWitness);

  v24 = *(v48 + 8);
  v24(v22, v23);
  v25 = v21;
  v26 = v36;
  v24(v25, v23);
  if ((*(*(v40 - 8) + 48))(v26, 1) == 1 && (*(*(v35 - 8) + 48))(v52, 1) == 1)
  {
    (*(v41 + 8))(v26, v44);
    v27 = v50;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(TupleTypeMetadata2 - 8) + 56))(v51, 1, 1, TupleTypeMetadata2);
    v29 = v49;
  }

  else
  {
    v30 = v44;
    v27 = v50;
    v31 = swift_getTupleTypeMetadata2();
    v32 = *(v31 + 48);
    v33 = v51;
    (*(v41 + 32))(v51, v26, v30);
    v29 = v49;
    (*(v49 + 16))(v33 + v32, v52, v27);
    (*(*(v31 - 8) + 56))(v33, 0, 1, v31);
  }

  return (*(v29 + 8))(v52, v27);
}

uint64_t CRStruct_2.apply(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v66 = AssociatedTypeWitness;
  v51 = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v68 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v49 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v56 = swift_getAssociatedConformanceWitness();
  v57 = v9;
  v49 = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  v11 = v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = sub_1AE23D7CC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v67 = *(v10 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v49 - v21;
  (*(v5 + 48))(v69, a2, v5, v20);
  v23 = v14;
  v24 = TupleTypeMetadata2;
  v25 = v69[2];
  v60 = v69[4];
  v61 = v69[1];
  v59 = v69[5];
  v26 = *(v23 + 16);
  v62 = a1;
  v55 = v26;
  v26(v18, a1, v13);
  v27 = *(v24 - 8);
  v54 = *(v27 + 48);
  v53 = v27 + 48;
  v28 = v54(v18, 1, v24);
  v64 = v11;
  v50 = v23;
  v52 = v24;
  if (v28 == 1)
  {
    v29 = v10;
    v30 = *(v23 + 8);

    v30(v18, v13);
    (*(*(v49 - 8) + 56))(v22, 1, 1);
  }

  else
  {
    v31 = *(v24 + 48);
    (*(v67 + 32))(v22, v18, v10);
    v29 = v10;
    v32 = *(v68 + 8);

    v32(&v18[v31], v11);
  }

  v33 = swift_modifyAtWritableKeyPath();
  v34 = v56;
  v35 = *(v56 + 80);
  v36 = swift_checkMetadataState();
  v35(v22, v36, v34);
  v37 = *(v67 + 8);
  v37(v22, v29);
  v33(v69, 0);
  v67 = v25;

  v38 = v58;
  v55(v58, v62, v13);
  v39 = v52;
  if (v54(v38, 1, v52) == 1)
  {
    v40 = *(v50 + 8);

    v40(v38, v13);
    v41 = v63;
    (*(*(v51 - 8) + 56))(v63, 1, 1);
    v42 = v64;
    v43 = v68;
  }

  else
  {
    v43 = v68;
    v41 = v63;
    v42 = v64;
    (*(v68 + 32))(v63, &v38[*(v39 + 48)], v64);

    v37(v38, v29);
  }

  v44 = swift_modifyAtWritableKeyPath();
  v45 = AssociatedConformanceWitness;
  v46 = *(AssociatedConformanceWitness + 80);
  v47 = swift_checkMetadataState();
  v46(v41, v47, v45);
  (*(v43 + 8))(v41, v42);
  v44(v69, 0);
}

Swift::Bool __swiftcall CRStruct_2.needToFinalizeTimestamps()()
{
  v3 = v0;
  v4 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v19 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  (*(v4 + 48))(v25, v3, v4, v9);
  v23 = v25[4];
  v24 = v25[1];

  v20 = v2;
  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = (*(*(AssociatedConformanceWitness + 16) + 56))(v7);
  (*(v8 + 8))(v11, v7);
  if (v13)
  {

    v14 = 1;
  }

  else
  {
    v15 = v19;
    swift_getAtKeyPath();
    v16 = v22;
    v17 = swift_getAssociatedConformanceWitness();
    v14 = (*(*(v17 + 16) + 56))(v16);

    (*(v21 + 8))(v15, v16);
  }

  return v14 & 1;
}

uint64_t CRStruct_2.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 8) + 48))(&v14, a2, *(a3 + 8));

  v12 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 16);
  v5 = *(v4 + 64);
  v6 = swift_checkMetadataState();
  v5(a1, v6, v4);
  v12(&v14, 0);

  v7 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 16);
  v9 = *(v8 + 64);
  v10 = swift_checkMetadataState();
  v9(a1, v10, v8);
  v7(&v14, 0);
}

uint64_t CRStruct_2.minEncodingVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v24 = a3;
  v4 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v19 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  (*(v4 + 48))(&v26[1], a1, v4, v9);
  v25 = *&v26[17];
  v22 = *&v26[33];
  v23 = *&v26[9];
  v12 = (*(*(v4 + 8) + 24))(a1);
  sub_1AE21FFB0(v12, &v26[1]);

  v13 = v26[1];
  if (v26[1] > 2u)
  {
    goto LABEL_8;
  }

  swift_getAtKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(*(AssociatedConformanceWitness + 16) + 8) + 24))(v26, v7);
  (*(v8 + 8))(v11, v7);
  if (v26[0] > v13)
  {
    v13 = v26[0];
  }

  v26[1] = v13;
  if (v26[0] > 2u)
  {
LABEL_8:
  }

  else
  {
    v15 = v19;
    swift_getAtKeyPath();
    v16 = v21;
    v17 = swift_getAssociatedConformanceWitness();
    (*(*(*(v17 + 16) + 8) + 24))(v26, v16);

    result = (*(v20 + 8))(v15, v16);
    if (v26[0] > v13)
    {
      LOBYTE(v13) = v26[0];
    }
  }

  *v24 = v13;
  return result;
}

uint64_t CRStruct_2<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v51 = a4;
  v46 = a5;
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v48 = &v42 - v8;
  v49 = swift_getAssociatedTypeWitness();
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCF60, &unk_1AE252450);
  v53 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - v13;
  v15 = *(v7 + 48);
  v42 = v7;
  v43 = a2;
  v15(&v56, a2, v7, v12);
  v17 = v56;
  v16 = v57;
  v18 = v58;
  v44 = v59;
  v54 = v61;
  v55 = v60;
  v19 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE048F10(v19, v20, v21);
  sub_1AE23E3CC();

  swift_getAtKeyPath();

  v56 = v17;
  v57 = v16;
  v22 = v14;
  v23 = v49;
  v24 = v52;
  sub_1AE23DD5C();
  if (v24)
  {

    (*(v50 + 8))(v10, v23);
    return (*(v53 + 8))(v22, v11);
  }

  else
  {
    (*(v50 + 8))(v10, v23);

    swift_getAtKeyPath();

    v56 = v44;
    v57 = v55;

    v25 = AssociatedTypeWitness;
    sub_1AE23DD5C();
    v49 = v18;
    v50 = v16;
    v51 = v22;
    v52 = v11;

    (*(v45 + 8))(v48, v25);
    result = (*(*(v42 + 8) + 24))(v43);
    v29 = result;
    v30 = 0;
    v31 = result + 64;
    v32 = 1 << *(result + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(result + 64);
    for (i = (v32 + 63) >> 6; v34; v30 = v36)
    {
      v36 = v30;
LABEL_11:
      v38 = __clz(__rbit64(v34)) | (v36 << 6);
      v39 = (*(v29 + 48) + 16 * v38);
      v40 = *v39;
      v41 = v39[1];
      v62 = *(*(v29 + 56) + 8 * v38);
      v56 = v40;
      v57 = v41;
      sub_1AE048F64(result, v27, v28);

      sub_1AE23DD5C();
      v34 &= v34 - 1;
    }

    v37 = v53;
    while (1)
    {
      v36 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v36 >= i)
      {

        return (*(v37 + 8))(v51, v52);
      }

      v34 = *(v31 + 8 * v36);
      ++v30;
      if (v34)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CRStruct_3.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a1;
  v38[1] = a4;
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v50 = AssociatedTypeWitness;
  v51 = v9;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v48 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v49 = v38 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v42 = v13;
  v43 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v39 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v40 = v38 - v17;
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v24 = *(*(a2 - 8) + 16);
  v52 = v4;
  v24(a4, v4, a2, v23);
  (*(v7 + 64))(v53, a2, v7);
  v25 = v53[2];
  v46 = v53[4];
  v47 = v53[1];
  v45 = v53[7];
  v38[2] = v53[8];

  swift_getAtKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = v44;
  (*(*(AssociatedConformanceWitness + 16) + 24))(v44, v18);
  (*(v19 + 8))(v21, v18);
  v41 = v25;
  swift_setAtWritableKeyPath();

  v28 = v39;
  swift_getAtKeyPath();
  v29 = v42;
  v30 = swift_getAssociatedConformanceWitness();
  (*(*(v30 + 16) + 24))(v27, v29);
  (*(v43 + 8))(v28, v29);
  swift_setAtWritableKeyPath();

  v31 = v48;
  swift_getAtKeyPath();
  v32 = v50;
  v33 = swift_getAssociatedConformanceWitness();
  (*(*(v33 + 16) + 24))(v27, v32);
  (*(v51 + 8))(v31, v32);
  swift_setAtWritableKeyPath();

  v34 = *(v7 + 8);
  v35 = (*(v34 + 24))(a2, v34);
  v36 = sub_1AE156B60(v35, v27);

  (*(v34 + 32))(v36, a2, v34);
}

uint64_t CRStruct_3.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v50 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v48 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v37 - v13;
  v45 = swift_getAssociatedTypeWitness();
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v40 = &v37 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v38 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v20);
  if (a1)
  {
    v22 = a1;
  }

  else
  {
    v22 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v52[0] = v22;
  (*(*(a2 - 8) + 16))(a4, v5, a2, v21);
  v37 = a4;
  v23 = *(v9 + 64);

  v23(v51, a2, v9);
  v24 = v51[2];
  v46 = v51[1];
  v44 = v51[4];
  v42 = v51[7];

  swift_getAtKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(v52, v17);
  (*(v38 + 8))(v19, v17);
  v39 = v24;
  swift_setAtWritableKeyPath();

  v26 = v41;
  swift_getAtKeyPath();
  v27 = v9;
  v28 = v45;
  v29 = swift_getAssociatedConformanceWitness();
  (*(*(v29 + 16) + 24))(v52, v28);
  (*(v43 + 8))(v26, v28);
  swift_setAtWritableKeyPath();

  v30 = v48;
  swift_getAtKeyPath();
  v31 = v50;
  v32 = swift_getAssociatedConformanceWitness();
  (*(*(v32 + 16) + 24))(v52, v31);
  (*(v49 + 8))(v30, v31);
  swift_setAtWritableKeyPath();

  v33 = *(v9 + 8);
  v34 = (*(*(v27 + 8) + 24))(a2, *(v27 + 8));
  v35 = sub_1AE156B60(v34, v52);

  (*(v33 + 32))(v35, a2, v33);
}

uint64_t CRStruct_3.merge(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, _WORD *a4@<X8>)
{
  v48 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v36 - v7;
  v38 = swift_getAssociatedTypeWitness();
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v9 = &v36 - v8;
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  (*(v6 + 64))(&v49 + 6, a2, v6, v12);
  v15 = v52;
  v46 = v51;
  v44 = v53;
  v41 = v55;
  v42 = v54;
  v40 = v56;
  if (qword_1ED9670C0 != -1)
  {
    swift_once();
  }

  *(&v49 + 3) = word_1ED96F220;
  BYTE5(v49) = byte_1ED96F222;

  swift_getAtKeyPath();
  v16 = swift_modifyAtWritableKeyPath();
  v36 = v4;
  v17 = v16;
  v39 = v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 8))(&v49, v14, v10);
  (*(v11 + 8))(v14, v10);
  v17(&v49 + 6, 0);

  HIWORD(v49) = v49;
  v50 = BYTE2(v49);
  v19 = &v49 + 6;
  MergeResult.merge(_:)(v19);

  swift_getAtKeyPath();
  v20 = swift_modifyAtWritableKeyPath();
  v21 = v38;
  v22 = swift_getAssociatedConformanceWitness();
  (*(*(v22 + 8) + 8))(&v49, v9, v21);
  (*(v37 + 8))(v9, v21);
  v20(&v49 + 6, 0);

  HIWORD(v49) = v49;
  v50 = BYTE2(v49);
  v23 = &v49 + 6;
  MergeResult.merge(_:)(v23);

  v24 = v43;
  swift_getAtKeyPath();
  v25 = swift_modifyAtWritableKeyPath();
  v26 = AssociatedTypeWitness;
  v27 = swift_getAssociatedConformanceWitness();
  (*(*(v27 + 8) + 8))(&v49, v24, v26);
  (*(v45 + 8))(v24, v26);
  v25(&v49 + 6, 0);

  HIWORD(v49) = v49;
  v50 = BYTE2(v49);
  v28 = &v49 + 6;
  MergeResult.merge(_:)(v28);
  v29 = *(v6 + 8);
  v30 = (*(v29 + 24))(a2, v29);
  v31 = (*(v29 + 40))(&v49 + 6, a2, v29);
  sub_1AE21F75C(v30, &v49);

  v31(&v49 + 6, 0);
  HIWORD(v49) = v49;
  v50 = BYTE2(v49);
  v32 = &v49 + 6;
  MergeResult.merge(_:)(v32);
  (*(v29 + 64))(a2, v29);

  v34 = BYTE5(v49);
  v35 = v48;
  *v48 = *(&v49 + 3);
  *(v35 + 2) = v34;
  return result;
}

uint64_t CRStruct_3.newRefs(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v63 = AssociatedTypeWitness;
  v64 = v6;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v60 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v50 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v55 = v10;
  v56 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v50 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v50 - v21;
  v23 = *(v4 + 64);
  v52 = v4;
  v23(v67, a2, v4, v20);
  v57 = v67[2];
  v61 = v67[4];
  v62 = v67[1];
  v66 = v67[5];
  v59 = v67[7];
  v67[0] = MEMORY[0x1E69E7CD0];

  swift_getAtKeyPath();

  swift_getAtKeyPath();

  v51 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = (*(AssociatedConformanceWitness + 64))(v18, v15, AssociatedConformanceWitness);
  v26 = *(v16 + 8);
  v26(v18, v15);
  v26(v22, v15);
  sub_1AE00F014(v25);

  v27 = v53;
  swift_getAtKeyPath();

  v28 = v54;
  swift_getAtKeyPath();

  v29 = v52;
  v30 = v55;
  v31 = swift_getAssociatedConformanceWitness();
  v32 = v28;
  v33 = (*(v31 + 64))(v28, v30, v31);
  v34 = *(v56 + 8);
  v34(v32, v30);
  v34(v27, v30);
  sub_1AE00F014(v33);

  v35 = v58;
  swift_getAtKeyPath();

  v36 = v60;
  swift_getAtKeyPath();

  v37 = v29;
  v38 = v51;
  v39 = v63;
  v40 = swift_getAssociatedConformanceWitness();
  v41 = (*(v40 + 64))(v36, v39, v40);
  v42 = *(v64 + 8);
  v42(v36, v39);
  v42(v35, v39);
  sub_1AE00F014(v41);
  v43 = *(v37 + 8);
  v44 = *(v43 + 24);
  v45 = v44(v38, v43);
  v46 = v44(v38, v43);
  sub_1AE2200E4(v46, v45);
  v48 = v47;

  sub_1AE00F014(v48);

  return v67[0];
}

uint64_t CRStruct_3.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v90 = a2;
  v80 = a1;
  v89 = a5;
  v6 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v76 = *(swift_getAssociatedConformanceWitness() + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  v78 = *(swift_getAssociatedConformanceWitness() + 16);
  v59 = swift_getAssociatedTypeWitness();
  v8 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  v79 = *(swift_getAssociatedConformanceWitness() + 16);
  v58 = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v60 = &v58 - v10;
  v75 = swift_checkMetadataState();
  v77 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v58 - v13;
  v85 = v9;
  v83 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v58 - v15;
  v70 = swift_checkMetadataState();
  v71 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v58 - v18;
  v86 = v8;
  v81 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v65 = &v58 - v20;
  v21 = swift_checkMetadataState();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v58 - v26;
  v84 = v7;
  v74 = *(v7 - 8);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v63 = &v58 - v30;
  v31 = *(v6 + 64);
  v87 = v6;
  v88 = a3;
  v31(v91, a3, v6, v29);
  v69 = v91[1];
  v66 = v91[4];
  v64 = v91[7];

  swift_getAtKeyPath();

  swift_getAtKeyPath();

  v32 = v90;
  (*(v76 + 40))(v24, v90, v21);
  v33 = *(v22 + 8);
  v33(v24, v21);
  v33(v27, v21);

  v34 = v62;
  swift_getAtKeyPath();

  v35 = v67;
  swift_getAtKeyPath();

  v36 = v65;
  v37 = v32;
  v38 = v34;
  v39 = v70;
  (*(v78 + 40))(v35, v37, v70);
  v40 = *(v71 + 8);
  v40(v35, v39);
  v40(v38, v39);

  v41 = v72;
  swift_getAtKeyPath();

  v42 = v73;
  swift_getAtKeyPath();

  v43 = v68;
  v44 = v75;
  (*(v79 + 40))(v42, v90, v75);

  v45 = *(v77 + 8);
  v45(v42, v44);
  v45(v41, v44);
  v46 = v63;
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v63, 1) == 1 && (*(*(v59 - 8) + 48))(v36, 1) == 1 && (*(*(v58 - 8) + 48))(v43, 1) == 1)
  {
    (*(v74 + 8))(v46, v84);
    v47 = swift_getAssociatedTypeWitness();
    (*(*(v47 - 8) + 56))(v89, 1, 1, v47);
    v49 = v85;
    v48 = v86;
    v50 = v83;
    v51 = v81;
  }

  else
  {
    v52 = *(TupleTypeMetadata3 + 48);
    v53 = *(TupleTypeMetadata3 + 64);
    v54 = v60;
    (*(v74 + 32))(v60, v46, v84);
    v51 = v81;
    v48 = v86;
    (*(v81 + 16))(&v54[v52], v36, v86);
    v50 = v83;
    v49 = v85;
    (*(v83 + 16))(&v54[v53], v43, v85);
    v55 = swift_getAssociatedTypeWitness();
    v56 = v89;
    swift_dynamicCast();
    (*(*(v55 - 8) + 56))(v56, 0, 1, v55);
  }

  (*(v50 + 8))(v43, v49);
  return (*(v51 + 8))(v36, v48);
}

uint64_t CRStruct_3.hasDelta(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v60 = a1;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v45 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v45 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - v20;
  (*(v6 + 64))(v61, a2, v6, v19);
  v22 = v61[5];
  v56 = v61[1];
  v57 = v61[7];
  v58 = v61[4];
  v59 = v61[8];

  v54 = v4;
  swift_getAtKeyPath();

  swift_getAtKeyPath();

  v55 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(a2) = (*(AssociatedConformanceWitness + 88))(v17, v14, AssociatedConformanceWitness);
  v24 = *(v15 + 8);
  v24(v17, v14);
  v24(v21, v14);
  if (a2 & 1) != 0 || (, v25 = v50, swift_getAtKeyPath(), , , v26 = v51, swift_getAtKeyPath(), , v27 = v53, v28 = swift_getAssociatedConformanceWitness(), v29 = (*(v28 + 88))(v26, v27, v28), v30 = *(v52 + 8), v30(v26, v27), v30(v25, v27), (v29) || (v53 = v22, , v33 = v46, swift_getAtKeyPath(), , , v34 = v47, swift_getAtKeyPath(), , v35 = AssociatedTypeWitness, v36 = swift_getAssociatedConformanceWitness(), v37 = (*(v36 + 88))(v34, v35, v36), v38 = *(v48 + 8), v38(v34, v35), v38(v33, v35), (v37))
  {

    v31 = 1;
  }

  else
  {
    v39 = *(v6 + 8);
    v40 = *(v39 + 24);
    v41 = v55;
    v42 = v40(v55, v39);
    v43 = v40(v41, v39);
    sub_1AE21FE14(v43, v42);
    v31 = v44;
  }

  return v31 & 1;
}

uint64_t CRStruct_3.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a1;
  v75 = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v69 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v48 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v49 = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v48 - v10;
  v59 = swift_getAssociatedTypeWitness();
  v62 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v48 - v13;
  v57 = swift_getAssociatedConformanceWitness();
  v50 = swift_getAssociatedTypeWitness();
  v14 = sub_1AE23D7CC();
  v71 = *(v14 - 8);
  v72 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v48 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v51 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  v22 = swift_getAssociatedConformanceWitness();
  v58 = swift_getAssociatedTypeWitness();
  v64 = sub_1AE23D7CC();
  v63 = *(v64 - 8);
  v23 = MEMORY[0x1EEE9AC00](v64);
  v52 = &v48 - v24;
  (*(v5 + 64))(v77, a2, v5, v23);
  v55 = v77[1];
  v54 = v77[4];
  v53 = v77[7];

  swift_getAtKeyPath();

  swift_getAtKeyPath();

  (*(v22 + 72))(v18, v16, v22);
  v25 = *(v51 + 8);
  v25(v18, v16);
  v25(v21, v16);

  v26 = v56;
  swift_getAtKeyPath();

  v27 = v60;
  swift_getAtKeyPath();

  v28 = v59;
  (*(v57 + 72))(v27, v59);
  v29 = *(v62 + 8);
  v29(v27, v28);
  v29(v26, v28);

  v30 = v66;
  swift_getAtKeyPath();

  v31 = v69;
  swift_getAtKeyPath();

  v32 = AssociatedTypeWitness;
  v33 = v61;
  (*(AssociatedConformanceWitness + 72))(v31, AssociatedTypeWitness);

  v34 = *(v70 + 8);
  v35 = v32;
  v36 = v52;
  v34(v31, v35);
  v34(v30, v35);
  if ((*(*(v58 - 8) + 48))(v36, 1) == 1 && (*(*(v50 - 8) + 48))(v76, 1) == 1 && (*(*(v49 - 8) + 48))(v33, 1) == 1)
  {
    (*(v63 + 8))(v36, v64);
    v37 = v72;
    v38 = v74;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    (*(*(TupleTypeMetadata3 - 8) + 56))(v75, 1, 1, TupleTypeMetadata3);
    v40 = v73;
    v41 = v71;
  }

  else
  {
    v42 = v64;
    v37 = v72;
    v38 = v74;
    v43 = swift_getTupleTypeMetadata3();
    v44 = *(v43 + 48);
    v45 = *(v43 + 64);
    v46 = v75;
    (*(v63 + 32))(v75, v36, v42);
    v41 = v71;
    (*(v71 + 16))(v46 + v44, v76, v37);
    v40 = v73;
    (*(v73 + 16))(v46 + v45, v33, v38);
    (*(*(v43 - 8) + 56))(v46, 0, 1, v43);
  }

  (*(v40 + 8))(v33, v38);
  return (*(v41 + 8))(v76, v37);
}

uint64_t CRStruct_3.apply(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v98 = AssociatedTypeWitness;
  v82 = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v80 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v94 = swift_getAssociatedConformanceWitness();
  v95 = v10;
  v81 = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  v99 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v80 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v84 = swift_getAssociatedConformanceWitness();
  v92 = v13;
  v14 = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v100 = v11;
  v109 = v7;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v17 = sub_1AE23D7CC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v85 = &v80 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v80 - v23;
  v107 = v15;
  v25 = *(v15 - 8);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v80 - v28;
  v30 = *(v5 + 64);
  v31 = v5;
  v33 = v32;
  v30(v111, a2, v31, v27);
  v34 = v18;
  v35 = v111[2];
  v93 = v111[1];
  v91 = v111[4];
  v110 = v111[5];
  v89 = v111[7];
  v88 = v111[8];
  v36 = *(v34 + 16);
  v108 = a1;
  v105 = v36;
  v106 = v34 + 16;
  v36(v24, a1, v33);
  v37 = *(TupleTypeMetadata3 - 8);
  v38 = *(v37 + 48);
  v103 = v37 + 48;
  v104 = v38;
  v39 = v38(v24, 1, TupleTypeMetadata3);
  v101 = v8;
  v86 = v34;
  v102 = v33;
  if (v39 == 1)
  {
    v40 = *(v34 + 8);

    v40(v24, v33);
    (*(*(v14 - 8) + 56))(v29, 1, 1, v14);
  }

  else
  {
    v41 = *(TupleTypeMetadata3 + 48);
    v42 = *(TupleTypeMetadata3 + 64);
    (*(v25 + 32))(v29, v24, v107);
    v43 = *(v8 + 8);

    v43(&v24[v42], v109);
    (*(v99 + 8))(&v24[v41], v100);
  }

  v44 = TupleTypeMetadata3;
  v45 = swift_modifyAtWritableKeyPath();
  v46 = v84;
  v47 = *(v84 + 80);
  v48 = swift_checkMetadataState();
  v47(v29, v48, v46);
  v49 = *(v25 + 8);
  v50 = v107;
  v49(v29, v107);
  v45(v111, 0);
  v92 = v35;

  v51 = v85;
  v105(v85, v108, v102);
  v52 = v104(v51, 1, v44);
  v84 = v25 + 8;
  v80 = v49;
  v83 = v44;
  if (v52 == 1)
  {
    v53 = *(v86 + 8);

    v54 = v102;
    v53(v51, v102);
    v55 = v54;
    v56 = v90;
    (*(*(v81 - 8) + 56))(v90, 1, 1);
    v57 = v100;
    v58 = v99;
  }

  else
  {
    v59 = *(v44 + 48);
    v81 = *(v44 + 64);
    v58 = v99;
    v56 = v90;
    v57 = v100;
    (*(v99 + 32))(v90, &v51[v59], v100);
    v60 = *(v101 + 8);

    v60(&v51[v81], v109);
    v49(v51, v50);
    v55 = v102;
  }

  v61 = swift_modifyAtWritableKeyPath();
  v62 = v94;
  v63 = *(v94 + 80);
  v64 = swift_checkMetadataState();
  v63(v56, v64, v62);
  v65 = *(v58 + 8);
  v65(v56, v57);
  v61(v111, 0);

  v66 = v87;
  v105(v87, v108, v55);
  v67 = v83;
  if (v104(v66, 1, v83) == 1)
  {
    v68 = *(v86 + 8);

    v68(v66, v55);
    v69 = v96;
    (*(*(v82 - 8) + 56))(v96, 1, 1);
    v70 = v101;
    v71 = v109;
  }

  else
  {
    v72 = v57;
    v73 = *(v67 + 48);
    v74 = *(v67 + 64);
    v70 = v101;
    v69 = v96;
    v71 = v109;
    (*(v101 + 32))(v96, &v66[v74], v109);

    v65(&v66[v73], v72);
    v80(v66, v107);
  }

  v75 = swift_modifyAtWritableKeyPath();
  v76 = AssociatedConformanceWitness;
  v77 = *(AssociatedConformanceWitness + 80);
  v78 = swift_checkMetadataState();
  v77(v69, v78, v76);
  (*(v70 + 8))(v69, v71);
  v75(v111, 0);
}

uint64_t CRStruct_3.visitReferences(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  v34 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v32 = &v31 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v31 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  (*(v6 + 64))(v43, a2, v6, v13);
  v42 = v43[4];
  v40 = v43[1];
  v41 = v43[7];
  v39 = v43[8];

  v38 = v3;
  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 48))(a1, v11);
  (*(v12 + 8))(v15, v11);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  if ((*(v18 + 8))(v17, v18) & 1) != 0 || (, v19 = v35, swift_getAtKeyPath(), , v20 = v37, v21 = swift_getAssociatedConformanceWitness(), (*(*(v21 + 16) + 48))(a1, v20), (*(v36 + 8))(v19, v20), v22 = a1[3], v23 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v22), ((*(v23 + 8))(v22, v23)) || (, v25 = v32, swift_getAtKeyPath(), , v26 = v34, v27 = swift_getAssociatedConformanceWitness(), (*(*(v27 + 16) + 48))(a1, v26), (*(v33 + 8))(v25, v26), v28 = a1[3], v29 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v28), ((*(v29 + 8))(v28, v29)))
  {
  }

  else
  {
    v30 = (*(*(v6 + 8) + 24))(a2);
    sub_1ADDDC764(a1, v30);
  }
}

Swift::Bool __swiftcall CRStruct_3.needToFinalizeTimestamps()()
{
  v2 = v0;
  v3 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v26 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = &v24 - v5;
  v6 = swift_getAssociatedTypeWitness();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  (*(v3 + 64))(v33, v2, v3, v11);
  v31 = v33[1];
  v32 = v33[4];
  v29 = v33[8];
  v30 = v33[7];

  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = (*(*(AssociatedConformanceWitness + 16) + 56))(v9);
  (*(v10 + 8))(v13, v9);
  if (v15 & 1) != 0 || (swift_getAtKeyPath(), v16 = v28, v17 = swift_getAssociatedConformanceWitness(), v18 = (*(*(v17 + 16) + 56))(v16), (*(v27 + 8))(v8, v16), (v18))
  {

    v19 = 1;
  }

  else
  {
    v20 = v24;
    swift_getAtKeyPath();
    v21 = v26;
    v22 = swift_getAssociatedConformanceWitness();
    v19 = (*(*(v22 + 16) + 56))(v21);

    (*(v25 + 8))(v20, v21);
  }

  return v19 & 1;
}

uint64_t CRStruct_3.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 8) + 64))(&v17, a2, *(a3 + 8));

  v15 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v4 = *(swift_getAssociatedConformanceWitness() + 16);
  v5 = *(v4 + 64);
  v6 = swift_checkMetadataState();
  v5(a1, v6, v4);
  v15(&v17, 0);

  v16 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 16);
  v8 = *(v7 + 64);
  v9 = swift_checkMetadataState();
  v8(a1, v9, v7);
  v16(&v17, 0);

  v10 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v11 = *(swift_getAssociatedConformanceWitness() + 16);
  v12 = *(v11 + 64);
  v13 = swift_checkMetadataState();
  v12(a1, v13, v11);
  v10(&v17, 0);
}

uint64_t CRStruct_3.minEncodingVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v35 = a3;
  v5 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v28 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v26 = &v25 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - v14;
  (*(v5 + 64))(v38 + 1, a1, v5, v13);
  v33 = *(&v38[4] + 1);
  v34 = *(&v38[1] + 1);
  v36 = *(&v38[5] + 1);
  v37 = *(&v38[2] + 1);
  v31 = *(&v38[8] + 1);
  v32 = *(&v38[7] + 1);
  v16 = *(*(v5 + 8) + 24);
  v30 = v3;
  v17 = v16(a1);
  sub_1AE21FFB0(v17, v38 + 1);

  v18 = BYTE1(v38[0]);
  if (BYTE1(v38[0]) > 2u)
  {
    goto LABEL_11;
  }

  swift_getAtKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(*(AssociatedConformanceWitness + 16) + 8) + 24))(v38, v11);
  (*(v12 + 8))(v15, v11);
  if (LOBYTE(v38[0]) > v18)
  {
    v18 = LOBYTE(v38[0]);
  }

  BYTE1(v38[0]) = v18;
  if (LOBYTE(v38[0]) > 2u)
  {
    goto LABEL_11;
  }

  swift_getAtKeyPath();
  v20 = swift_getAssociatedConformanceWitness();
  (*(*(*(v20 + 16) + 8) + 24))(v38, v8);
  (*(v29 + 8))(v10, v8);
  if (LOBYTE(v38[0]) > v18)
  {
    v18 = LOBYTE(v38[0]);
  }

  BYTE1(v38[0]) = v18;
  if (v18 > 2)
  {
LABEL_11:
  }

  else
  {
    v21 = v26;
    swift_getAtKeyPath();
    v22 = v28;
    v23 = swift_getAssociatedConformanceWitness();
    (*(*(*(v23 + 16) + 8) + 24))(v38, v22);

    result = (*(v27 + 8))(v21, v22);
    if (LOBYTE(v38[0]) > v18)
    {
      LOBYTE(v18) = v38[0];
    }
  }

  *v35 = v18;
  return result;
}

uint64_t CRStruct_3<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v46 = a6;
  v53 = a5;
  v56 = a4;
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v47 = &v44 - v9;
  v54 = swift_getAssociatedTypeWitness();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v44 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v55 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCF60, &unk_1AE252450);
  v58 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v16;
  v18 = *(v8 + 64);
  v44 = a2;
  v18(&v66, a2, v8, v15);
  v64 = v67;
  v65 = v66;
  v19 = v68;
  v50 = v69;
  v60 = v71;
  v61 = v70;
  v45 = v72;
  v59 = v73;
  v63 = v74;
  v20 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE048F10(v20, v21, v22);
  sub_1AE23E3CC();

  swift_getAtKeyPath();

  v66 = v65;
  v67 = v64;
  v65 = v14;
  v23 = v57;
  sub_1AE23DD5C();
  if (v23)
  {

    (*(v55 + 8))(v13, v11);
    return (*(v58 + 8))(v17, v65);
  }

  else
  {
    v57 = v8;
    (*(v55 + 8))(v13, v11);

    v24 = v51;
    swift_getAtKeyPath();

    v66 = v50;
    v67 = v61;

    v25 = v54;
    sub_1AE23DD5C();

    (*(v52 + 8))(v24, v25);

    v27 = v47;
    swift_getAtKeyPath();

    v66 = v45;
    v67 = v59;

    sub_1AE23DD5C();
    v55 = v19;
    v56 = v17;

    (*(v48 + 8))(v27, AssociatedTypeWitness);
    result = (*(*(v57 + 8) + 24))(v44);
    v30 = result;
    v31 = 0;
    v32 = result + 64;
    v33 = 1 << *(result + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(result + 64);
    v36 = (v33 + 63) >> 6;
    while (1)
    {
      v62 = 0;
      if (!v35)
      {
        break;
      }

      v37 = v31;
LABEL_12:
      v39 = __clz(__rbit64(v35)) | (v37 << 6);
      v40 = (*(v30 + 48) + 16 * v39);
      v41 = *v40;
      v42 = v40[1];
      v75 = *(*(v30 + 56) + 8 * v39);
      v66 = v41;
      v67 = v42;
      sub_1AE048F64(result, v28, v29);

      v43 = v62;
      sub_1AE23DD5C();
      if (v43)
      {

        (*(v58 + 8))(v56, v65);
      }

      v35 &= v35 - 1;

      v31 = v37;
    }

    v38 = v58;
    while (1)
    {
      v37 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v37 >= v36)
      {

        return (*(v38 + 8))(v56, v65);
      }

      v35 = *(v32 + 8 * v37);
      ++v31;
      if (v35)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CRStruct_4.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v80 = a1;
  v79 = a4;
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v64 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v50 - v11;
  v57 = swift_getAssociatedTypeWitness();
  v63 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v50 - v14;
  v55 = swift_getAssociatedTypeWitness();
  v59 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v58 = &v50 - v17;
  v51 = swift_getAssociatedTypeWitness();
  v54 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v53 = &v50 - v21;
  (*(*(a2 - 8) + 16))(a4, v5, a2, v20);
  v78 = v8;
  (*(v8 + 80))(v82, a2, v8);
  v22 = v82[1];
  v73 = v82[2];
  v69 = v82[4];
  v75 = v82[5];
  v68 = v82[7];
  v76 = v82[8];
  v23 = v82[10];
  v24 = v82[11];
  sub_1AE23DB8C();
  v81[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v81[1] = swift_getTupleTypeMetadata2();
  v77 = a2;
  sub_1AE23DB8C();
  v81[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v81[3] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v60 = *(TupleTypeMetadata - 8);
  v26 = *(v60 + 16);
  v71 = TupleTypeMetadata;
  v26(v81, v82, TupleTypeMetadata);
  v72 = v22;

  v74 = v24;

  v67 = v23;

  v26(v81, v82, TupleTypeMetadata);

  v27 = v52;
  swift_getAtKeyPath();

  v28 = v51;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(v80, v28);
  (*(v54 + 8))(v27, v28);
  swift_setAtWritableKeyPath();

  v30 = v71;
  v26(v81, v82, v71);

  v26(v81, v82, v30);

  v31 = v56;
  swift_getAtKeyPath();

  v32 = v55;
  v33 = swift_getAssociatedConformanceWitness();
  (*(*(v33 + 16) + 24))(v80, v32);
  (*(v59 + 8))(v31, v32);
  swift_setAtWritableKeyPath();

  v34 = v71;
  v50 = v26;
  v26(v81, v82, v71);

  v26(v81, v82, v34);

  v35 = v61;
  swift_getAtKeyPath();

  v36 = v57;
  v37 = swift_getAssociatedConformanceWitness();
  (*(*(v37 + 16) + 24))(v80, v36);
  (*(v63 + 8))(v35, v36);
  swift_setAtWritableKeyPath();

  v38 = v71;
  v39 = v50;
  v50(v81, v82, v71);

  v39(v81, v82, v38);

  v40 = v64;
  swift_getAtKeyPath();

  v41 = v78;
  v42 = v77;
  v43 = AssociatedTypeWitness;
  v44 = swift_getAssociatedConformanceWitness();
  v45 = v80;
  (*(*(v44 + 16) + 24))(v80, v43);
  (*(v66 + 8))(v40, v43);
  swift_setAtWritableKeyPath();

  v46 = *(v41 + 8);
  v47 = (*(v46 + 24))(v42, v46);
  v48 = sub_1AE156B60(v47, v45);

  (*(v46 + 32))(v48, v42, v46);
  return (*(v60 + 8))(v82, v38);
}

uint64_t CRStruct_4.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v73 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v57 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v71 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v69 = &v57 - v17;
  v80 = swift_getAssociatedTypeWitness();
  v67 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v65 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v64 = &v57 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v62 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v61 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v23);
  v60 = &v57 - v25;
  if (a1)
  {
    v26 = a1;
  }

  else
  {
    v26 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v92 = v26;
  (*(*(a2 - 8) + 16))(a4, v5, a2, v24);
  v89 = a4;
  v88 = v5;
  v27 = *(v9 + 80);

  v27(v91, a2, v9);
  v85 = v91[1];
  v81 = v91[2];
  v84 = v91[4];
  v79 = v91[5];
  v82 = v91[7];
  v87 = v9;
  v28 = v91[10];
  v29 = v91[11];
  v30 = v91[8];
  sub_1AE23DB8C();
  v90[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v90[1] = swift_getTupleTypeMetadata2();
  v86 = a2;
  sub_1AE23DB8C();
  v90[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v90[3] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v63 = v14;
  v32 = TupleTypeMetadata;
  v68 = *(TupleTypeMetadata - 8);
  v66 = AssociatedTypeWitness;
  v33 = v68 + 16;
  v34 = *(v68 + 16);
  v76 = TupleTypeMetadata;
  v34(v90, v91, TupleTypeMetadata);
  v59 = v33;
  v58 = v21;

  v83 = v29;

  v77 = v28;

  v78 = v30;

  v34(v90, v91, v32);

  v35 = v61;
  swift_getAtKeyPath();

  v36 = v58;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(&v92, v36);
  (*(v62 + 8))(v35, v36);
  swift_setAtWritableKeyPath();

  v38 = v76;
  v75 = v34;
  v34(v90, v91, v76);

  v34(v90, v91, v38);

  v39 = v65;
  swift_getAtKeyPath();

  v40 = v80;
  v41 = swift_getAssociatedConformanceWitness();
  (*(*(v41 + 16) + 24))(&v92, v40);
  (*(v67 + 8))(v39, v40);
  swift_setAtWritableKeyPath();

  v42 = v75;
  v75(v90, v91, v38);

  v42(v90, v91, v38);

  v43 = v70;
  swift_getAtKeyPath();

  v44 = v63;
  v45 = swift_getAssociatedConformanceWitness();
  (*(*(v45 + 16) + 24))(&v92, v44);
  (*(v71 + 8))(v43, v44);
  swift_setAtWritableKeyPath();

  v46 = v76;
  v47 = v75;
  v75(v90, v91, v76);

  v47(v90, v91, v46);

  v48 = v73;
  swift_getAtKeyPath();

  v49 = v87;
  v50 = v86;
  v51 = v66;
  v52 = swift_getAssociatedConformanceWitness();
  (*(*(v52 + 16) + 24))(&v92, v51);
  (*(v74 + 8))(v48, v51);
  swift_setAtWritableKeyPath();

  v53 = *(v49 + 8);
  v54 = (*(v53 + 24))(v50, v53);
  v55 = sub_1AE156B60(v54, &v92);

  (*(v53 + 32))(v55, v50, v53);
  return (*(v68 + 8))(v91, v46);
}

uint64_t CRStruct_4.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _WORD *a4@<X8>)
{
  v85 = a1;
  v72 = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v71 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v70 = &v57 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v69 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v57 - v9;
  v74 = swift_getAssociatedTypeWitness();
  v65 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v64 = &v57 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v62 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v61 = &v57 - v13;
  v14 = *(v5 + 80);
  v84 = v5;
  v14(&v87[3], a2, v5, v12);
  v15 = *&v87[7];
  v75 = *&v87[11];
  v82 = *&v87[19];
  v81 = *&v87[23];
  v80 = *&v87[31];
  v16 = *&v87[35];
  v17 = *&v87[43];
  v18 = *&v87[47];
  if (qword_1ED9670C0 != -1)
  {
    swift_once();
  }

  *(&v87[1] + 1) = word_1ED96F220;
  HIBYTE(v87[2]) = byte_1ED96F222;
  sub_1AE23DB8C();
  v86[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v86[1] = swift_getTupleTypeMetadata2();
  v83 = a2;
  sub_1AE23DB8C();
  v86[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v86[3] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v67 = *(TupleTypeMetadata - 8);
  v63 = v8;
  v66 = AssociatedTypeWitness;
  v21 = v67 + 16;
  v20 = *(v67 + 16);
  v58 = v11;
  v22 = TupleTypeMetadata;
  v20(v86, &v87[3]);
  v59 = v21;
  v76 = v20;
  v77 = v15;

  v79 = v18;

  v73 = v17;

  (v20)(v86, &v87[3], v22);

  v23 = v61;
  swift_getAtKeyPath();

  v24 = swift_modifyAtWritableKeyPath();
  v25 = v58;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 8))(v87, v23, v25);
  (*(v62 + 8))(v23, v25);
  v24(v86, 0);

  LOWORD(v86[0]) = v87[0];
  BYTE2(v86[0]) = v87[1];
  v27 = v86;
  MergeResult.merge(_:)(v27);
  v78 = v22;
  v28 = v76;
  v76(v86, &v87[3], v22);

  v60 = v16;

  v28(v86, &v87[3], v22);

  v29 = v64;
  swift_getAtKeyPath();

  v30 = swift_modifyAtWritableKeyPath();
  v31 = v74;
  v32 = swift_getAssociatedConformanceWitness();
  (*(*(v32 + 8) + 8))(v87, v29, v31);
  (*(v65 + 8))(v29, v31);
  v30(v86, 0);

  LOWORD(v86[0]) = v87[0];
  BYTE2(v86[0]) = v87[1];
  v33 = v86;
  MergeResult.merge(_:)(v33);
  v34 = v78;
  v35 = v76;
  v76(v86, &v87[3], v78);

  v35(v86, &v87[3], v34);

  v36 = v68;
  swift_getAtKeyPath();

  v37 = swift_modifyAtWritableKeyPath();
  v38 = v63;
  v39 = swift_getAssociatedConformanceWitness();
  (*(*(v39 + 8) + 8))(v87, v36, v38);
  (*(v69 + 8))(v36, v38);
  v37(v86, 0);

  LOWORD(v86[0]) = v87[0];
  BYTE2(v86[0]) = v87[1];
  v40 = v86;
  MergeResult.merge(_:)(v40);
  v41 = v78;
  v42 = v76;
  v76(v86, &v87[3], v78);

  v42(v86, &v87[3], v41);

  v43 = v70;
  swift_getAtKeyPath();

  v44 = swift_modifyAtWritableKeyPath();
  v45 = v84;
  v46 = v83;
  v47 = v66;
  v48 = swift_getAssociatedConformanceWitness();
  (*(*(v48 + 8) + 8))(v87, v43, v47);
  (*(v71 + 8))(v43, v47);
  v44(v86, 0);

  LOWORD(v86[0]) = v87[0];
  BYTE2(v86[0]) = v87[1];
  v49 = v86;
  MergeResult.merge(_:)(v49);
  v50 = *(v45 + 8);
  v51 = (*(v50 + 24))(v46, v50);
  v52 = (*(v50 + 40))(v86, v46, v50);
  sub_1AE21F75C(v51, v87);

  v52(v86, 0);
  LOWORD(v86[0]) = v87[0];
  BYTE2(v86[0]) = v87[1];
  v53 = v86;
  MergeResult.merge(_:)(v53);
  (*(v50 + 64))(v46, v50);
  result = (*(v67 + 8))(&v87[3], v78);
  v55 = HIBYTE(v87[2]);
  v56 = v72;
  *v72 = *(&v87[1] + 1);
  *(v56 + 2) = v55;
  return result;
}

uint64_t CRStruct_4.newRefs(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v75 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v63 - v7;
  v82 = swift_getAssociatedTypeWitness();
  v73 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v71 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v63 - v10;
  v67 = swift_getAssociatedTypeWitness();
  v69 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v63 - v13;
  v64 = swift_getAssociatedTypeWitness();
  v66 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v79 = &v63 - v17;
  v90 = v4;
  (*(v4 + 80))(v96, a2, v4, v16);
  v18 = v96[1];
  v89 = v96[2];
  v93 = v96[5];
  v88 = v96[7];
  v87 = v96[8];
  v19 = v96[10];
  v20 = v96[11];
  v84 = v96[4];
  v95 = MEMORY[0x1E69E7CD0];
  sub_1AE23DB8C();
  v94[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v94[1] = swift_getTupleTypeMetadata2();
  v91 = a2;
  sub_1AE23DB8C();
  v94[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v94[3] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v72 = *(TupleTypeMetadata - 8);
  v22 = v72 + 16;
  v23 = *(v72 + 16);
  v23(v94, v96, TupleTypeMetadata);
  v83 = v23;
  v86 = v18;

  v78 = v20;

  v85 = v19;

  swift_getAtKeyPath();

  v23(v94, v96, TupleTypeMetadata);

  v24 = v65;
  swift_getAtKeyPath();

  v25 = v64;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = v79;
  v28 = (*(AssociatedConformanceWitness + 64))(v24, v25, AssociatedConformanceWitness);
  v29 = *(v66 + 8);
  v29(v24, v25);
  v29(v27, v25);
  sub_1AE00F014(v28);
  v77 = TupleTypeMetadata;
  v30 = v83;
  v63 = v22;
  v83(v94, v96, TupleTypeMetadata);

  swift_getAtKeyPath();

  v30(v94, v96, TupleTypeMetadata);

  v31 = v68;
  swift_getAtKeyPath();

  v32 = v67;
  v33 = swift_getAssociatedConformanceWitness();
  v34 = v80;
  v35 = (*(v33 + 64))(v31, v32, v33);
  v36 = *(v69 + 8);
  v36(v31, v32);
  v36(v34, v32);
  sub_1AE00F014(v35);
  v37 = v77;
  v38 = v83;
  v83(v94, v96, v77);

  v39 = v70;
  swift_getAtKeyPath();

  v38(v94, v96, v37);

  v40 = v71;
  swift_getAtKeyPath();

  v41 = v82;
  v42 = swift_getAssociatedConformanceWitness();
  v43 = (*(v42 + 64))(v40, v41, v42);
  v44 = *(v73 + 8);
  v44(v40, v41);
  v44(v39, v41);
  sub_1AE00F014(v43);
  v45 = v77;
  v46 = v83;
  v83(v94, v96, v77);

  v47 = v74;
  swift_getAtKeyPath();

  v46(v94, v96, v45);

  v48 = v75;
  swift_getAtKeyPath();

  v49 = v90;
  v50 = v91;
  v51 = AssociatedTypeWitness;
  v52 = swift_getAssociatedConformanceWitness();
  v53 = v47;
  v54 = (*(v52 + 64))(v48, v51, v52);
  v55 = *(v76 + 8);
  v55(v48, v51);
  v55(v53, v51);
  sub_1AE00F014(v54);
  v56 = *(v49 + 8);
  v57 = *(v56 + 24);
  v58 = v57(v50, v56);
  v59 = v57(v50, v56);
  sub_1AE2200E4(v59, v58);
  v61 = v60;

  sub_1AE00F014(v61);
  (*(v72 + 8))(v96, v45);
  return v95;
}

uint64_t CRStruct_4.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v136 = a2;
  v135 = a1;
  v116 = a5;
  v6 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v138 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v139 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v140 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v141 = sub_1AE23D7CC();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v85 = &v81 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v109 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v106 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v81 - v10;
  v105 = *(swift_getAssociatedConformanceWitness() + 16);
  v82 = swift_getAssociatedTypeWitness();
  v113 = sub_1AE23D7CC();
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v130 = &v81 - v11;
  v122 = swift_getAssociatedTypeWitness();
  v103 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v100 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v98 = &v81 - v14;
  v99 = *(swift_getAssociatedConformanceWitness() + 16);
  v83 = swift_getAssociatedTypeWitness();
  v111 = sub_1AE23D7CC();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v131 = &v81 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v96 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v95 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v92 = &v81 - v19;
  v94 = *(swift_getAssociatedConformanceWitness() + 16);
  v90 = v16;
  v84 = swift_getAssociatedTypeWitness();
  v108 = sub_1AE23D7CC();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v125 = &v81 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v91 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v89 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v121 = &v81 - v24;
  v88 = *(swift_getAssociatedConformanceWitness() + 16);
  v87 = v21;
  v97 = swift_getAssociatedTypeWitness();
  v102 = sub_1AE23D7CC();
  v101 = *(v102 - 8);
  v25 = MEMORY[0x1EEE9AC00](v102);
  v124 = &v81 - v26;
  v27 = *(v6 + 80);
  v114 = v6;
  v27(&v138, a3, v6, v25);
  v28 = v139;
  v29 = v140;
  v134 = v142;
  v129 = v143;
  v30 = v144;
  v120 = v145;
  v31 = v146;
  v32 = v147;
  sub_1AE23DB8C();
  v137[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v137[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v137[2] = swift_getTupleTypeMetadata2();
  v115 = a3;
  sub_1AE23DB8C();
  v137[3] = swift_getTupleTypeMetadata2();
  v33 = swift_getTupleTypeMetadata();
  v93 = *(v33 - 8);
  v34 = *(v93 + 16);
  v128 = v93 + 16;
  v132 = v33;
  v34(v137, &v138, v33);
  v127 = v34;
  v126 = v28;

  v133 = v31;

  v117 = v30;

  swift_getAtKeyPath();

  v34(v137, &v138, v33);

  v35 = v89;
  swift_getAtKeyPath();

  v36 = v121;
  v37 = v87;
  (*(v88 + 40))(v35, v136, v87);
  v38 = *(v91 + 8);
  v38(v35, v37);
  v38(v36, v37);
  v39 = v132;
  v127(v137, &v138, v132);

  v118 = v29;

  v119 = v32;

  v40 = v92;
  swift_getAtKeyPath();

  v41 = v39;
  v42 = v127;
  v127(v137, &v138, v41);

  v43 = v95;
  swift_getAtKeyPath();

  v44 = v43;
  v45 = v90;
  (*(v94 + 40))(v43, v136, v90);
  v46 = *(v96 + 8);
  v46(v44, v45);
  v46(v40, v45);
  v47 = v132;
  v42(v137, &v138, v132);

  v48 = v98;
  swift_getAtKeyPath();

  v42(v137, &v138, v47);

  v49 = v100;
  swift_getAtKeyPath();

  v50 = v48;
  v51 = v122;
  (*(v99 + 40))(v49, v136, v122);
  v52 = *(v103 + 8);
  v52(v49, v51);
  v52(v50, v51);
  v53 = v132;
  v54 = v127;
  v127(v137, &v138, v132);

  v55 = v104;
  swift_getAtKeyPath();

  v54(v137, &v138, v53);
  v56 = v125;

  v57 = v106;
  v58 = v56;
  swift_getAtKeyPath();

  v59 = AssociatedTypeWitness;
  (*(v105 + 40))(v57, v136, AssociatedTypeWitness);
  (*(v93 + 8))(&v138, v132);
  v60 = *(v109 + 8);
  v60(v57, v59);
  v61 = v55;
  v62 = v124;
  v60(v61, v59);
  if ((*(*(v97 - 8) + 48))(v62, 1) == 1 && (*(*(v84 - 8) + 48))(v58, 1) == 1 && (*(*(v83 - 8) + 48))(v131, 1) == 1 && (*(*(v82 - 8) + 48))(v130, 1) == 1)
  {
    (*(v101 + 8))(v62, v102);
    v63 = swift_getAssociatedTypeWitness();
    (*(*(v63 - 8) + 56))(v116, 1, 1, v63);
    v64 = v113;
    v65 = v58;
    v66 = v112;
    v67 = v111;
    v68 = v110;
    v69 = v108;
    v70 = v107;
  }

  else
  {
    v71 = TupleTypeMetadata[12];
    v72 = TupleTypeMetadata[16];
    v73 = TupleTypeMetadata[20];
    v74 = v85;
    (*(v101 + 32))(v85, v62, v102);
    v70 = v107;
    v69 = v108;
    (*(v107 + 16))(&v74[v71], v58, v108);
    v68 = v110;
    v67 = v111;
    (*(v110 + 16))(&v74[v72], v131, v111);
    v66 = v112;
    v75 = &v74[v73];
    v64 = v113;
    (*(v112 + 16))(v75, v130, v113);
    v76 = swift_getAssociatedTypeWitness();
    v77 = v116;
    swift_dynamicCast();
    v78 = *(*(v76 - 8) + 56);
    v79 = v76;
    v65 = v125;
    v78(v77, 0, 1, v79);
  }

  (*(v66 + 8))(v130, v64);
  (*(v68 + 8))(v131, v67);
  return (*(v70 + 8))(v65, v69);
}

uint64_t CRStruct_4.hasDelta(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v64 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v64 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v68 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v64 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v73 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v64 - v16;
  v78 = swift_getAssociatedTypeWitness();
  v80 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v77 = &v64 - v20;
  v91 = v4;
  (*(v4 + 80))(v95, a2, v4, v19);
  v21 = v95[2];
  v89 = v95[4];
  v88 = v95[5];
  v85 = v95[10];
  v84 = v95[11];
  v90 = v95[1];
  v87 = v95[7];
  v86 = v95[8];
  sub_1AE23DB8C();
  v94[0] = swift_getTupleTypeMetadata2();
  v74 = v13;
  sub_1AE23DB8C();
  v94[1] = swift_getTupleTypeMetadata2();
  v69 = v9;
  sub_1AE23DB8C();
  v94[2] = swift_getTupleTypeMetadata2();
  v66 = AssociatedTypeWitness;
  sub_1AE23DB8C();
  v94[3] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v83 = *(TupleTypeMetadata - 8);
  v24 = v83 + 16;
  v23 = *(v83 + 16);
  v23(v94, v95, TupleTypeMetadata);

  v25 = v77;
  swift_getAtKeyPath();

  v93 = TupleTypeMetadata;
  v82 = v23;
  v23(v94, v95, TupleTypeMetadata);
  v26 = a2;

  v27 = v79;
  swift_getAtKeyPath();
  v76 = v21;

  v28 = v78;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = v27;
  LOBYTE(v27) = (*(AssociatedConformanceWitness + 88))(v27, v28, AssociatedConformanceWitness);
  v31 = *(v80 + 8);
  v31(v30, v28);
  v31(v25, v28);
  if (v27)
  {
    goto LABEL_3;
  }

  v80 = v24;
  v32 = v93;
  v33 = v82;
  v82(v94, v95, v93);

  v71 = v26;
  swift_getAtKeyPath();

  v33(v94, v95, v32);

  v34 = v72;
  swift_getAtKeyPath();

  v35 = v74;
  v36 = swift_getAssociatedConformanceWitness();
  v37 = v81;
  v38 = (*(v36 + 88))(v34, v35, v36);
  v39 = *(v73 + 8);
  v39(v34, v35);
  v39(v37, v35);
  if (v38)
  {
    goto LABEL_3;
  }

  v43 = v82;
  v82(v94, v95, v93);

  swift_getAtKeyPath();

  v43(v94, v95, v93);

  v44 = v67;
  swift_getAtKeyPath();

  v45 = v93;
  v46 = v69;
  v47 = swift_getAssociatedConformanceWitness();
  v48 = v75;
  v49 = (*(v47 + 88))(v44, v46, v47);
  v50 = *(v68 + 8);
  v50(v44, v46);
  v50(v48, v46);
  if (v49)
  {
    v40 = 1;
    v41 = v45;
    goto LABEL_5;
  }

  v82(v94, v95, v45);

  swift_getAtKeyPath();

  v82(v94, v95, v45);

  v51 = v64;
  swift_getAtKeyPath();

  v52 = v91;
  v53 = v71;
  v54 = v66;
  v55 = swift_getAssociatedConformanceWitness();
  v56 = v70;
  v57 = (*(v55 + 88))(v51, v54, v55);
  v58 = *(v65 + 8);
  v58(v51, v54);
  v58(v56, v54);
  if (v57)
  {
LABEL_3:
    v40 = 1;
  }

  else
  {
    v59 = *(v52 + 8);
    v60 = *(v59 + 24);
    v61 = v60(v53, v59);
    v62 = v60(v53, v59);
    sub_1AE21FE14(v62, v61);
    v40 = v63;
  }

  v41 = v93;
LABEL_5:
  (*(v83 + 8))(v95, v41);
  return v40 & 1;
}

uint64_t CRStruct_4.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v120 = a1;
  v102 = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v97 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v94 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v72 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v72 = swift_getAssociatedTypeWitness();
  v101 = sub_1AE23D7CC();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v114 = &v72 - v9;
  v108 = swift_getAssociatedTypeWitness();
  v89 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v88 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v72 - v12;
  v87 = swift_getAssociatedConformanceWitness();
  v73 = swift_getAssociatedTypeWitness();
  v99 = sub_1AE23D7CC();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v115 = &v72 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v84 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v72 - v17;
  v82 = swift_getAssociatedConformanceWitness();
  v78 = v14;
  v74 = swift_getAssociatedTypeWitness();
  v96 = sub_1AE23D7CC();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v111 = &v72 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v79 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v77 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v107 = &v72 - v22;
  v76 = swift_getAssociatedConformanceWitness();
  v75 = v19;
  v85 = swift_getAssociatedTypeWitness();
  v91 = sub_1AE23D7CC();
  v90 = *(v91 - 8);
  v23 = MEMORY[0x1EEE9AC00](v91);
  v109 = &v72 - v24;
  (*(v5 + 80))(v126, a2, v5, v23);
  v25 = v126[2];
  v119 = v126[4];
  v118 = v126[5];
  v121 = v126[7];
  v117 = v126[8];
  v26 = v126[10];
  v27 = v126[1];
  v28 = v126[11];
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v123 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v124 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v125 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v81 = *(TupleTypeMetadata - 8);
  v30 = v81 + 16;
  v29 = *(v81 + 16);
  v29(&TupleTypeMetadata2, v126, TupleTypeMetadata);
  v104 = v30;
  v103 = v29;
  v112 = v27;

  v113 = v26;

  swift_getAtKeyPath();

  v29(&TupleTypeMetadata2, v126, TupleTypeMetadata);

  v31 = v28;

  v32 = v77;
  swift_getAtKeyPath();

  v33 = v107;
  v34 = v75;
  (*(v76 + 72))(v32, v75);
  v35 = *(v79 + 8);
  v35(v32, v34);
  v35(v33, v34);
  v36 = TupleTypeMetadata;
  v37 = v103;
  v103(&TupleTypeMetadata2, v126, TupleTypeMetadata);

  v105 = v25;

  v106 = v31;

  v38 = v80;
  swift_getAtKeyPath();

  v37(&TupleTypeMetadata2, v126, v36);

  v39 = v83;
  swift_getAtKeyPath();

  v40 = v39;
  v41 = v78;
  (*(v82 + 72))(v39, v78);
  v42 = *(v84 + 8);
  v42(v40, v41);
  v42(v38, v41);
  v43 = TupleTypeMetadata;
  v44 = v103;
  v103(&TupleTypeMetadata2, v126, TupleTypeMetadata);

  v45 = v86;
  swift_getAtKeyPath();

  v44(&TupleTypeMetadata2, v126, v43);

  v46 = v88;
  swift_getAtKeyPath();

  v47 = v45;
  v48 = v108;
  (*(v87 + 72))(v46, v108);
  v49 = *(v89 + 8);
  v49(v46, v48);
  v49(v47, v48);
  v50 = TupleTypeMetadata;
  v44(&TupleTypeMetadata2, v126, TupleTypeMetadata);

  v51 = v92;
  swift_getAtKeyPath();

  v44(&TupleTypeMetadata2, v126, v50);

  v52 = v94;
  swift_getAtKeyPath();

  v53 = v52;
  v54 = AssociatedTypeWitness;
  (*(AssociatedConformanceWitness + 72))(v52, AssociatedTypeWitness);
  (*(v81 + 8))(v126, v50);
  v55 = *(v97 + 8);
  v55(v53, v54);
  v55(v51, v54);
  v56 = v109;
  if ((*(*(v85 - 8) + 48))() == 1 && (*(*(v74 - 8) + 48))(v111, 1) == 1 && (*(*(v73 - 8) + 48))(v115, 1) == 1 && (*(*(v72 - 8) + 48))(v114, 1) == 1)
  {
    v57 = v91;
    (*(v90 + 8))(v56, v91);
    TupleTypeMetadata2 = v57;
    v58 = v96;
    v123 = v96;
    v59 = v99;
    v124 = v99;
    v60 = v101;
    v125 = v101;
    v61 = swift_getTupleTypeMetadata();
    (*(*(v61 - 8) + 56))(v102, 1, 1, v61);
    v62 = v100;
    v63 = v111;
    v64 = v98;
    v65 = v95;
  }

  else
  {
    v66 = v91;
    TupleTypeMetadata2 = v91;
    v58 = v96;
    v123 = v96;
    v63 = v111;
    v59 = v99;
    v124 = v99;
    v60 = v101;
    v125 = v101;
    v67 = swift_getTupleTypeMetadata();
    v68 = v67[12];
    v69 = v67[16];
    v121 = v67[20];
    v70 = v102;
    (*(v90 + 32))(v102, v56, v66);
    v65 = v95;
    (*(v95 + 16))(v70 + v68, v63, v58);
    v64 = v98;
    (*(v98 + 16))(v70 + v69, v115, v59);
    v62 = v100;
    (*(v100 + 16))(v70 + v121, v114, v60);
    (*(*(v67 - 1) + 56))(v70, 0, 1, v67);
  }

  (*(v62 + 8))(v114, v60);
  (*(v64 + 8))(v115, v59);
  return (*(v65 + 8))(v63, v58);
}

uint64_t CRStruct_4.apply(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v127 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v106 = AssociatedTypeWitness;
  v91 = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v125 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v104 = &v88 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v102 = swift_getAssociatedConformanceWitness();
  v103 = v8;
  v90 = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v111 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v88 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v96 = swift_getAssociatedConformanceWitness();
  v97 = v11;
  v89 = swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v126 = v12;
  v124 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v88 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v93 = swift_getAssociatedConformanceWitness();
  v98 = v14;
  v15 = swift_getAssociatedTypeWitness();
  v128 = sub_1AE23D7CC();
  v129 = v12;
  v112 = v9;
  v130 = v9;
  v131 = v6;
  v114 = v6;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v17 = sub_1AE23D7CC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v100 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v95 = &v88 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v92 = &v88 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v88 - v25;
  v113 = sub_1AE23D7CC();
  v27 = *(v113 - 8);
  v28 = MEMORY[0x1EEE9AC00](v113);
  v30 = &v88 - v29;
  v31 = *(v4 + 80);
  v32 = v4;
  v33 = v125;
  v31(&v128, a2, v32, v28);
  v35 = v129;
  v34 = v130;
  v120 = v133;
  v121 = v132;
  v110 = v134;
  v119 = v135;
  v99 = v136;
  v109 = v137;

  v122 = v34;

  v123 = v35;
  v36 = v126;

  v37 = *(v18 + 16);
  v118 = v18 + 16;
  v117 = v37;
  v37(v26, v127, v17);
  v38 = *(TupleTypeMetadata - 1);
  v116 = *(v38 + 48);
  v115 = v38 + 48;
  v39 = v116(v26, 1, TupleTypeMetadata);
  v107 = v18;
  v108 = v17;
  if (v39 == 1)
  {
    (*(v18 + 8))(v26, v17);
    (*(*(v15 - 8) + 56))(v30, 1, 1, v15);
  }

  else
  {
    v40 = TupleTypeMetadata[12];
    v41 = TupleTypeMetadata[16];
    v42 = TupleTypeMetadata[20];
    (*(v27 + 32))(v30, v26, v113);
    (*(v33 + 8))(&v26[v42], v114);
    (*(v111 + 8))(&v26[v41], v112);
    (*(v124 + 8))(&v26[v40], v36);
  }

  v43 = swift_modifyAtWritableKeyPath();
  v44 = v93;
  v45 = *(v93 + 80);
  v46 = swift_checkMetadataState();
  v45(v30, v46, v44);
  v47 = *(v27 + 8);
  v48 = v113;
  v47(v30, v113);
  v43(&v128, 0);

  v49 = v92;
  v50 = v108;
  v117(v92, v127, v108);
  v51 = v116(v49, 1, TupleTypeMetadata);
  v98 = v27 + 8;
  v93 = v47;
  if (v51 == 1)
  {
    (*(v107 + 8))(v49, v50);
    v52 = v94;
    (*(*(v89 - 8) + 56))(v94, 1, 1);
    v53 = v124;
  }

  else
  {
    v54 = v48;
    v55 = TupleTypeMetadata[16];
    v56 = TupleTypeMetadata[20];
    v53 = v124;
    v52 = v94;
    (*(v124 + 32))(v94, &v49[TupleTypeMetadata[12]], v126);
    (*(v125 + 8))(&v49[v56], v114);
    (*(v111 + 8))(&v49[v55], v112);
    v47(v49, v54);
  }

  v57 = swift_modifyAtWritableKeyPath();
  v58 = v96;
  v59 = *(v96 + 80);
  v60 = swift_checkMetadataState();
  v59(v52, v60, v58);
  v61 = *(v53 + 8);
  v61(v52, v126);
  v57(&v128, 0);

  v62 = v95;
  v117(v95, v127, v50);
  v63 = v116(v62, 1, TupleTypeMetadata);
  v124 = v53 + 8;
  v97 = v61;
  if (v63 == 1)
  {
    (*(v107 + 8))(v62, v50);
    v64 = v101;
    (*(*(v90 - 8) + 56))(v101, 1, 1);
    v65 = v112;
    v66 = v111;
  }

  else
  {
    v67 = TupleTypeMetadata[12];
    v68 = TupleTypeMetadata[20];
    v69 = v61;
    v66 = v111;
    v64 = v101;
    v65 = v112;
    (*(v111 + 32))(v101, &v62[TupleTypeMetadata[16]], v112);
    (*(v125 + 8))(&v62[v68], v114);
    v69(&v62[v67], v126);
    (v93)(v62, v113);
  }

  v70 = swift_modifyAtWritableKeyPath();
  v71 = v102;
  v72 = *(v102 + 80);
  v73 = swift_checkMetadataState();
  v72(v64, v73, v71);
  v74 = *(v66 + 8);
  v74(v64, v65);
  v70(&v128, 0);

  v75 = v100;
  v76 = v108;
  v117(v100, v127, v108);
  if (v116(v75, 1, TupleTypeMetadata) == 1)
  {
    (*(v107 + 8))(v75, v76);
    v77 = v104;
    (*(*(v91 - 8) + 56))(v104, 1, 1);
    v78 = v114;
    v79 = v125;
  }

  else
  {
    v80 = TupleTypeMetadata[12];
    v81 = TupleTypeMetadata[16];
    v79 = v125;
    v82 = v104;
    v78 = v114;
    (*(v125 + 32))(v104, &v75[TupleTypeMetadata[20]], v114);
    v74(&v75[v81], v65);
    v97(&v75[v80], v126);
    v77 = v82;
    (v93)(v75, v113);
  }

  v83 = swift_modifyAtWritableKeyPath();
  v84 = AssociatedConformanceWitness;
  v85 = *(AssociatedConformanceWitness + 80);
  v86 = swift_checkMetadataState();
  v85(v77, v86, v84);
  (*(v79 + 8))(v77, v78);
  v83(&v128, 0);
}

Swift::Bool __swiftcall CRStruct_4.needToFinalizeTimestamps()()
{
  v2 = v0;
  v3 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v31 = v30 - v4;
  v36 = swift_getAssociatedTypeWitness();
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v34 = v30 - v5;
  v6 = swift_getAssociatedTypeWitness();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v37 = v30 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v30 - v11;
  (*(v3 + 80))(v45, v2, v3, v10);
  v14 = v45[1];
  v13 = v45[2];
  v42 = v45[7];
  v43 = v45[8];
  v44 = v45[5];
  v40 = v45[4];
  v41 = v45[10];

  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = (*(*(AssociatedConformanceWitness + 16) + 56))(v8);
  (*(v9 + 8))(v12, v8);
  if (v16 & 1) != 0 || (v30[0] = v13, v30[1] = v14, v17 = v37, swift_getAtKeyPath(), v18 = v39, v19 = swift_getAssociatedConformanceWitness(), v20 = (*(*(v19 + 16) + 56))(v18), (*(v38 + 8))(v17, v18), (v20) || (v21 = v34, swift_getAtKeyPath(), v22 = v36, v23 = swift_getAssociatedConformanceWitness(), v24 = (*(*(v23 + 16) + 56))(v22), (*(v35 + 8))(v21, v22), (v24))
  {

    v25 = 1;
  }

  else
  {
    v27 = v31;
    swift_getAtKeyPath();
    v28 = AssociatedTypeWitness;
    v29 = swift_getAssociatedConformanceWitness();
    v25 = (*(*(v29 + 16) + 56))(v28);

    (*(v32 + 8))(v27, v28);
  }

  return v25 & 1;
}

uint64_t CRStruct_4.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 8) + 80))(&v22, a2, *(a3 + 8));

  v4 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v5 = *(swift_getAssociatedConformanceWitness() + 16);
  v6 = *(v5 + 64);
  v7 = swift_checkMetadataState();
  v6(a1, v7, v5);
  v4(&v22, 0);

  v8 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 16);
  v10 = *(v9 + 64);
  v11 = swift_checkMetadataState();
  v10(a1, v11, v9);
  v8(&v22, 0);

  v20 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getAssociatedConformanceWitness() + 16);
  v13 = *(v12 + 64);
  v14 = swift_checkMetadataState();
  v13(a1, v14, v12);
  v20(&v22, 0);

  v15 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v16 = *(swift_getAssociatedConformanceWitness() + 16);
  v17 = *(v16 + 64);
  v18 = swift_checkMetadataState();
  v17(a1, v18, v16);
  v15(&v22, 0);
}

uint64_t CRStruct_4.minEncodingVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v42 = a3;
  v5 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v29 = &v28 - v6;
  v34 = swift_getAssociatedTypeWitness();
  v33 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v32 = &v28 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  (*(v5 + 80))(v46 + 1, a1, v5, v13);
  v40 = *(&v46[4] + 1);
  v41 = *(&v46[1] + 1);
  v44 = *(&v46[5] + 1);
  v45 = *(&v46[2] + 1);
  v43 = *(&v46[8] + 1);
  v38 = *(&v46[10] + 1);
  v39 = *(&v46[7] + 1);
  v37 = *(&v46[11] + 1);
  v16 = *(*(v5 + 8) + 24);
  v36 = v3;
  v17 = v16(a1);
  sub_1AE21FFB0(v17, v46 + 1);

  v18 = BYTE1(v46[0]);
  if (BYTE1(v46[0]) > 2u)
  {
    goto LABEL_14;
  }

  swift_getAtKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(*(AssociatedConformanceWitness + 16) + 8) + 24))(v46, v11);
  (*(v12 + 8))(v15, v11);
  if (LOBYTE(v46[0]) > v18)
  {
    v18 = LOBYTE(v46[0]);
  }

  BYTE1(v46[0]) = v18;
  if (LOBYTE(v46[0]) > 2u)
  {
    goto LABEL_14;
  }

  swift_getAtKeyPath();
  v20 = swift_getAssociatedConformanceWitness();
  (*(*(*(v20 + 16) + 8) + 24))(v46, v8);
  (*(v35 + 8))(v10, v8);
  if (LOBYTE(v46[0]) > v18)
  {
    v18 = LOBYTE(v46[0]);
  }

  BYTE1(v46[0]) = v18;
  if (v18 > 2)
  {
    goto LABEL_14;
  }

  v21 = v32;
  swift_getAtKeyPath();
  v22 = v34;
  v23 = swift_getAssociatedConformanceWitness();
  (*(*(*(v23 + 16) + 8) + 24))(v46, v22);
  (*(v33 + 8))(v21, v22);
  if (LOBYTE(v46[0]) > v18)
  {
    v18 = LOBYTE(v46[0]);
  }

  BYTE1(v46[0]) = v18;
  if (LOBYTE(v46[0]) > 2u)
  {
LABEL_14:
  }

  else
  {
    v24 = v29;
    swift_getAtKeyPath();
    v25 = AssociatedTypeWitness;
    v26 = swift_getAssociatedConformanceWitness();
    (*(*(*(v26 + 16) + 8) + 24))(v46, v25);

    result = (*(v30 + 8))(v24, v25);
    if (LOBYTE(v46[0]) > v18)
    {
      LOBYTE(v18) = v46[0];
    }
  }

  *v42 = v18;
  return result;
}

uint64_t CRStruct_4<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v57 = a7;
  v62 = a6;
  v66 = a5;
  v72 = a4;
  v9 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v56 = &v53 - v10;
  v79 = swift_getAssociatedTypeWitness();
  v61 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v60 = &v53 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v64 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v53 - v13;
  v88 = swift_getAssociatedTypeWitness();
  v71 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v70 = &v53 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCF60, &unk_1AE252450);
  v75 = *(v84 - 8);
  v15 = MEMORY[0x1EEE9AC00](v84);
  v83 = &v53 - v16;
  v17 = *(v9 + 80);
  v54 = v9;
  v17(&TupleTypeMetadata2, a2, v9, v15);
  v69 = TupleTypeMetadata2;
  v82 = v93;
  v87 = v95;
  v81 = v96;
  v90 = v98;
  v80 = v99;
  v85 = v102;
  v103[0] = TupleTypeMetadata2;
  v103[1] = v92;
  v89 = v92;
  v103[2] = v93;
  v103[3] = v94;
  v63 = v94;
  v103[4] = v95;
  v103[5] = v96;
  v59 = v97;
  v103[6] = v97;
  v103[7] = v98;
  v103[8] = v99;
  v103[9] = v100;
  v55 = v100;
  v103[10] = v101;
  v103[11] = v102;
  v86 = v101;
  v18 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE048F10(v18, v19, v20);
  sub_1AE23E3CC();
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = v12;
  sub_1AE23DB8C();
  v92 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v93 = swift_getTupleTypeMetadata2();
  v53 = a2;
  sub_1AE23DB8C();
  v94 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v74 = *(TupleTypeMetadata - 8);
  v23 = v74 + 16;
  v22 = *(v74 + 16);
  v22(&TupleTypeMetadata2, v103, TupleTypeMetadata);

  v24 = v70;
  swift_getAtKeyPath();

  v76 = TupleTypeMetadata;
  v68 = v22;
  v67 = v23;
  v22(&TupleTypeMetadata2, v103, TupleTypeMetadata);

  v25 = v83;

  v26 = v88;

  TupleTypeMetadata2 = v69;
  v27 = v84;
  v92 = v89;
  v28 = v73;
  sub_1AE23DD5C();
  if (v28)
  {
    (*(v74 + 8))(v103, v76);

    (*(v71 + 8))(v24, v26);
    return (*(v75 + 8))(v25, v27);
  }

  else
  {

    (*(v71 + 8))(v24, v26);
    v30 = v76;
    v68(&TupleTypeMetadata2, v103, v76);

    swift_getAtKeyPath();

    v68(&TupleTypeMetadata2, v103, v30);

    v31 = v87;

    TupleTypeMetadata2 = v63;
    v92 = v31;
    v32 = v65;
    sub_1AE23DD5C();

    (*(v64 + 8))(v78, v32);
    v33 = v68;
    v68(&TupleTypeMetadata2, v103, v30);

    v34 = v60;
    swift_getAtKeyPath();

    v33(&TupleTypeMetadata2, v103, v30);

    TupleTypeMetadata2 = v59;
    v92 = v90;
    v35 = v79;
    sub_1AE23DD5C();

    (*(v61 + 8))(v34, v35);
    v68(&TupleTypeMetadata2, v103, v30);

    v36 = v56;
    swift_getAtKeyPath();

    v68(&TupleTypeMetadata2, v103, v30);

    TupleTypeMetadata2 = v55;
    v92 = v86;
    v37 = AssociatedTypeWitness;
    sub_1AE23DD5C();

    (*(v58 + 8))(v36, v37);
    result = (*(*(v54 + 8) + 24))(v53);
    v40 = 0;
    v42 = result + 64;
    v41 = *(result + 64);
    v90 = result;
    v43 = 1 << *(result + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & v41;
    v46 = (v43 + 63) >> 6;
    if ((v44 & v41) != 0)
    {
      do
      {
        v47 = v40;
LABEL_11:
        v49 = __clz(__rbit64(v45)) | (v47 << 6);
        v50 = (*(v90 + 48) + 16 * v49);
        v51 = *v50;
        v52 = v50[1];
        v103[14] = *(*(v90 + 56) + 8 * v49);
        TupleTypeMetadata2 = v51;
        v92 = v52;
        sub_1AE048F64(result, v38, v39);

        sub_1AE23DD5C();
        v45 &= v45 - 1;

        v40 = v47;
      }

      while (v45);
    }

    v48 = v75;
    while (1)
    {
      v47 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v47 >= v46)
      {
        (*(v74 + 8))(v103, v76);

        return (*(v48 + 8))(v83, v84);
      }

      v45 = *(v42 + 8 * v47);
      ++v40;
      if (v45)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CRStruct_5.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v97 = a1;
  v96 = a4;
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v76 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v59 - v11;
  v79 = swift_getAssociatedTypeWitness();
  v75 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v73 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v59 - v14;
  v66 = swift_getAssociatedTypeWitness();
  v71 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v59 - v17;
  v64 = swift_getAssociatedTypeWitness();
  v68 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v67 = &v59 - v20;
  v60 = swift_getAssociatedTypeWitness();
  v63 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v62 = &v59 - v24;
  (*(*(a2 - 8) + 16))(a4, v5, a2, v23);
  v95 = v8;
  (*(v8 + 96))(v99, a2, v8);
  v25 = v99[1];
  v90 = v99[2];
  v94 = v99[4];
  v89 = v99[5];
  v88 = v99[7];
  v93 = v99[8];
  v83 = v99[10];
  v26 = v99[11];
  v27 = v99[13];
  v28 = v99[14];
  sub_1AE23DB8C();
  v98[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v98[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v98[2] = swift_getTupleTypeMetadata2();
  v92 = a2;
  sub_1AE23DB8C();
  v98[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v98[4] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v72 = *(TupleTypeMetadata - 8);
  v29 = *(v72 + 16);
  v85 = v72 + 16;
  v29(v98, v99, TupleTypeMetadata);
  v84 = v29;

  v87 = v28;

  v81 = v27;

  v86 = v26;

  v29(v98, v99, TupleTypeMetadata);

  v30 = v61;
  swift_getAtKeyPath();

  v31 = v60;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(v97, v31);
  (*(v63 + 8))(v30, v31);
  swift_setAtWritableKeyPath();

  v33 = TupleTypeMetadata;
  v34 = v84;
  v84(v98, v99, TupleTypeMetadata);

  v82 = v25;

  v34(v98, v99, v33);

  v35 = v65;
  swift_getAtKeyPath();

  v36 = v64;
  v37 = swift_getAssociatedConformanceWitness();
  (*(*(v37 + 16) + 24))(v97, v36);
  (*(v68 + 8))(v35, v36);
  swift_setAtWritableKeyPath();

  v38 = v84;
  v84(v98, v99, v33);

  v38(v98, v99, TupleTypeMetadata);

  v39 = v69;
  swift_getAtKeyPath();

  v40 = v66;
  v41 = swift_getAssociatedConformanceWitness();
  (*(*(v41 + 16) + 24))(v97, v40);
  (*(v71 + 8))(v39, v40);
  swift_setAtWritableKeyPath();

  v42 = TupleTypeMetadata;
  v43 = v84;
  v84(v98, v99, TupleTypeMetadata);

  v43(v98, v99, v42);

  v44 = v73;
  swift_getAtKeyPath();

  v45 = v79;
  v46 = swift_getAssociatedConformanceWitness();
  (*(*(v46 + 16) + 24))(v97, v45);
  (*(v75 + 8))(v44, v45);
  swift_setAtWritableKeyPath();

  v47 = TupleTypeMetadata;
  v48 = v84;
  v84(v98, v99, TupleTypeMetadata);

  v48(v98, v99, v47);

  v49 = v76;
  swift_getAtKeyPath();

  v50 = v95;
  v51 = v92;
  v52 = AssociatedTypeWitness;
  v53 = swift_getAssociatedConformanceWitness();
  v54 = v97;
  (*(*(v53 + 16) + 24))(v97, v52);
  (*(v78 + 8))(v49, v52);
  swift_setAtWritableKeyPath();

  v55 = *(v50 + 8);
  v56 = (*(v55 + 24))(v51, v55);
  v57 = sub_1AE156B60(v56, v54);

  (*(v55 + 32))(v57, v51, v55);
  return (*(v72 + 8))(v99, v47);
}

uint64_t CRStruct_5.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v79 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v78 = v62 - v12;
  v81 = swift_getAssociatedTypeWitness();
  v77 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v76 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v75 = v62 - v15;
  v82 = swift_getAssociatedTypeWitness();
  v73 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v72 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v71 = v62 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v70 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v69 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v68 = v62 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v67 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v66 = v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.n128_f64[0] = MEMORY[0x1EEE9AC00](v25);
  v65 = v62 - v27;
  if (a1)
  {
    v28 = a1;
  }

  else
  {
    v28 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v102[0] = v28;
  (*(*(a2 - 8) + 16))(a4, v5, a2, v26);
  v96 = a4;
  v97 = v5;
  v29 = *(v9 + 96);

  v29(v101, a2, v9);
  v30 = v101[1];
  v98 = v101[4];
  v87 = v101[5];
  v92 = v101[7];
  v93 = v101[2];
  v95 = v9;
  v91 = v101[8];
  v85 = v101[10];
  v31 = v101[13];
  v32 = v101[14];
  v33 = v101[11];
  v63 = v23;
  sub_1AE23DB8C();
  v100[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v100[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v100[2] = swift_getTupleTypeMetadata2();
  v94 = a2;
  sub_1AE23DB8C();
  v100[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v100[4] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v74 = *(TupleTypeMetadata - 8);
  v88 = *(v74 + 16);
  v89 = v74 + 16;
  v99 = TupleTypeMetadata;
  v88(v100, v101, TupleTypeMetadata);
  v64 = v19;
  v90 = v30;

  v86 = v32;

  v84 = v31;

  v88(v100, v101, TupleTypeMetadata);

  v35 = v66;
  swift_getAtKeyPath();

  v36 = v63;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(v102, v36);
  (*(v67 + 8))(v35, v36);
  swift_setAtWritableKeyPath();

  v38 = v88;
  v88(v100, v101, v99);

  v38(v100, v101, v99);

  v39 = v69;
  swift_getAtKeyPath();

  v40 = v64;
  v41 = swift_getAssociatedConformanceWitness();
  (*(*(v41 + 16) + 24))(v102, v40);
  (*(v70 + 8))(v39, v40);
  swift_setAtWritableKeyPath();

  v42 = v99;
  v43 = v88;
  v88(v100, v101, v99);

  v62[1] = v33;

  v43(v100, v101, v42);

  v44 = v72;
  swift_getAtKeyPath();

  v45 = v82;
  v46 = swift_getAssociatedConformanceWitness();
  (*(*(v46 + 16) + 24))(v102, v45);
  (*(v73 + 8))(v44, v45);
  swift_setAtWritableKeyPath();

  v47 = v88;
  v88(v100, v101, v42);

  v47(v100, v101, v99);

  v48 = v76;
  swift_getAtKeyPath();

  v49 = v81;
  v50 = swift_getAssociatedConformanceWitness();
  (*(*(v50 + 16) + 24))(v102, v49);
  (*(v77 + 8))(v48, v49);
  swift_setAtWritableKeyPath();

  v51 = v99;
  v52 = v88;
  v88(v100, v101, v99);

  v52(v100, v101, v51);

  v53 = v79;
  swift_getAtKeyPath();

  v55 = v94;
  v54 = v95;
  v56 = AssociatedTypeWitness;
  v57 = swift_getAssociatedConformanceWitness();
  (*(*(v57 + 16) + 24))(v102, v56);
  (*(v80 + 8))(v53, v56);
  swift_setAtWritableKeyPath();

  v58 = *(v54 + 8);
  v59 = (*(v58 + 24))(v55, v58);
  v60 = sub_1AE156B60(v59, v102);

  (*(v58 + 32))(v60, v55, v58);
  return (*(v74 + 8))(v101, v99);
}

uint64_t static CRStruct_5.fieldKeys.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 96))(v14);
  v3 = v14[0];
  v2 = v14[1];
  v4 = v14[3];
  v5 = v14[4];
  v6 = v14[7];
  v11 = v14[6];
  v7 = v14[10];
  v8 = v14[13];
  v12 = v14[9];
  v13 = v14[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AE2427F0;

  *(v9 + 32) = v3;
  *(v9 + 40) = v2;

  *(v9 + 48) = v4;
  *(v9 + 56) = v5;

  *(v9 + 64) = v11;
  *(v9 + 72) = v6;

  *(v9 + 80) = v12;
  *(v9 + 88) = v7;

  *(v9 + 96) = v13;
  *(v9 + 104) = v8;

  return v9;
}

uint64_t CRStruct_5.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v97 = a1;
  v80 = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v78 = &v65 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v77 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v65 - v9;
  v82 = swift_getAssociatedTypeWitness();
  v73 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v72 = &v65 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v70 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v65 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v68 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v67 = &v65 - v15;
  v16 = *(v5 + 96);
  v17 = a2;
  v96 = v5;
  v16(&v99[3], a2, v5, v14);
  v18 = *&v99[7];
  v95 = *&v99[11];
  v94 = *&v99[19];
  v85 = *&v99[23];
  v91 = *&v99[31];
  v84 = *&v99[35];
  v90 = *&v99[43];
  v19 = *&v99[47];
  v20 = *&v99[55];
  v21 = *&v99[59];
  if (qword_1ED9670C0 != -1)
  {
    swift_once();
  }

  *(&v99[1] + 1) = word_1ED96F220;
  HIBYTE(v99[2]) = byte_1ED96F222;
  v65 = v13;
  sub_1AE23DB8C();
  v98[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v98[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v98[2] = swift_getTupleTypeMetadata2();
  v93 = v17;
  sub_1AE23DB8C();
  v98[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v98[4] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v75 = *(TupleTypeMetadata - 8);
  v74 = AssociatedTypeWitness;
  v71 = v8;
  v23 = v75 + 16;
  v22 = *(v75 + 16);
  v66 = v11;
  v22(v98, &v99[3], TupleTypeMetadata);
  v86 = v23;
  v88 = v18;

  v89 = v21;

  v92 = v19;

  v22(v98, &v99[3], TupleTypeMetadata);
  v24 = v22;

  v25 = v65;

  v26 = v67;
  swift_getAtKeyPath();

  v27 = swift_modifyAtWritableKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 8))(v99, v26, v25);
  (*(v68 + 8))(v26, v25);
  v27(v98, 0);

  LOWORD(v98[0]) = v99[0];
  BYTE2(v98[0]) = v99[1];
  v29 = v98;
  MergeResult.merge(_:)(v29);
  v30 = TupleTypeMetadata;
  v24(v98, &v99[3], TupleTypeMetadata);

  v83 = v20;

  v24(v98, &v99[3], v30);

  v31 = v69;
  swift_getAtKeyPath();

  v32 = swift_modifyAtWritableKeyPath();
  v33 = v66;
  v34 = swift_getAssociatedConformanceWitness();
  (*(*(v34 + 8) + 8))(v99, v31, v33);
  (*(v70 + 8))(v31, v33);
  v32(v98, 0);

  LOWORD(v98[0]) = v99[0];
  BYTE2(v98[0]) = v99[1];
  v35 = v98;
  MergeResult.merge(_:)(v35);
  v36 = TupleTypeMetadata;
  v81 = v24;
  v24(v98, &v99[3], TupleTypeMetadata);

  v24(v98, &v99[3], v36);

  v37 = v72;
  swift_getAtKeyPath();

  v38 = swift_modifyAtWritableKeyPath();
  v39 = v82;
  v40 = swift_getAssociatedConformanceWitness();
  (*(*(v40 + 8) + 8))(v99, v37, v39);
  (*(v73 + 8))(v37, v39);
  v38(v98, 0);

  LOWORD(v98[0]) = v99[0];
  BYTE2(v98[0]) = v99[1];
  v41 = v98;
  MergeResult.merge(_:)(v41);
  v42 = v81;
  v81(v98, &v99[3], v36);

  v42(v98, &v99[3], v36);

  v43 = v76;
  swift_getAtKeyPath();

  v44 = swift_modifyAtWritableKeyPath();
  v45 = v71;
  v46 = swift_getAssociatedConformanceWitness();
  (*(*(v46 + 8) + 8))(v99, v43, v45);
  (*(v77 + 8))(v43, v45);
  v44(v98, 0);

  LOWORD(v98[0]) = v99[0];
  BYTE2(v98[0]) = v99[1];
  v47 = v98;
  MergeResult.merge(_:)(v47);
  v48 = TupleTypeMetadata;
  v49 = v81;
  v81(v98, &v99[3], TupleTypeMetadata);

  v49(v98, &v99[3], v48);

  v50 = v78;
  swift_getAtKeyPath();

  v51 = swift_modifyAtWritableKeyPath();
  v52 = v96;
  v53 = v93;
  v54 = v74;
  v55 = swift_getAssociatedConformanceWitness();
  (*(*(v55 + 8) + 8))(v99, v50, v54);
  (*(v79 + 8))(v50, v54);
  v51(v98, 0);

  LOWORD(v98[0]) = v99[0];
  BYTE2(v98[0]) = v99[1];
  v56 = v98;
  MergeResult.merge(_:)(v56);
  v57 = *(v52 + 8);
  v58 = (*(v57 + 24))(v53, v57);
  v59 = (*(v57 + 40))(v98, v53, v57);
  sub_1AE21F75C(v58, v99);

  v59(v98, 0);
  LOWORD(v98[0]) = v99[0];
  BYTE2(v98[0]) = v99[1];
  v60 = v98;
  MergeResult.merge(_:)(v60);
  (*(v57 + 64))(v53, v57);
  result = (*(v75 + 8))(&v99[3], v48);
  v62 = v99[2];
  v63 = HIBYTE(v99[2]);
  v64 = v80;
  *v80 = HIBYTE(v99[1]);
  v64[1] = v62;
  v64[2] = v63;
  return result;
}

uint64_t CRStruct_5.newRefs(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v83 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v90 = &v70 - v7;
  v77 = swift_getAssociatedTypeWitness();
  v82 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v81 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v70 - v10;
  v75 = swift_getAssociatedTypeWitness();
  v79 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v70 - v13;
  v73 = swift_getAssociatedTypeWitness();
  v76 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v70 - v16;
  v70 = swift_getAssociatedTypeWitness();
  v72 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v85 = &v70 - v20;
  v103 = v4;
  (*(v4 + 96))(v109, a2, v4, v19);
  v106 = v109[2];
  v93 = v109[4];
  v101 = v109[5];
  v92 = v109[7];
  v97 = v109[8];
  v99 = v109[10];
  v94 = v109[11];
  v21 = v109[13];
  v22 = v109[1];
  v100 = v109[14];
  v108 = MEMORY[0x1E69E7CD0];
  sub_1AE23DB8C();
  v107[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v107[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v107[2] = swift_getTupleTypeMetadata2();
  v96 = a2;
  sub_1AE23DB8C();
  v107[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v107[4] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v80 = *(TupleTypeMetadata - 8);
  v23 = v80 + 16;
  v95 = *(v80 + 16);
  v95(v107, v109, TupleTypeMetadata);
  v102 = v23;
  v91 = v22;

  v98 = v21;

  swift_getAtKeyPath();

  v95(v107, v109, TupleTypeMetadata);

  v24 = v71;
  swift_getAtKeyPath();

  v25 = v70;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = v85;
  v28 = (*(AssociatedConformanceWitness + 64))(v24, v25, AssociatedConformanceWitness);
  v29 = *(v72 + 8);
  v29(v24, v25);
  v29(v27, v25);
  sub_1AE00F014(v28);
  v30 = TupleTypeMetadata;
  v31 = v95;
  v95(v107, v109, TupleTypeMetadata);

  swift_getAtKeyPath();

  v31(v107, v109, v30);

  v32 = v74;
  swift_getAtKeyPath();

  v33 = v73;
  v34 = swift_getAssociatedConformanceWitness();
  v35 = v86;
  v36 = (*(v34 + 64))(v32, v33, v34);
  v37 = *(v76 + 8);
  v37(v32, v33);
  v37(v35, v33);
  sub_1AE00F014(v36);
  v38 = TupleTypeMetadata;
  v39 = v95;
  v95(v107, v109, TupleTypeMetadata);

  swift_getAtKeyPath();

  v39(v107, v109, v38);

  v40 = v78;
  swift_getAtKeyPath();

  v41 = v75;
  v42 = swift_getAssociatedConformanceWitness();
  v43 = v87;
  v44 = (*(v42 + 64))(v40, v41, v42);
  v45 = *(v79 + 8);
  v45(v40, v41);
  v45(v43, v41);
  sub_1AE00F014(v44);
  v46 = v95;
  v95(v107, v109, TupleTypeMetadata);

  swift_getAtKeyPath();

  v46(v107, v109, TupleTypeMetadata);

  v47 = v81;
  swift_getAtKeyPath();

  v48 = v77;
  v49 = swift_getAssociatedConformanceWitness();
  v50 = v88;
  v51 = (*(v49 + 64))(v47, v48, v49);
  v52 = *(v82 + 8);
  v52(v47, v48);
  v52(v50, v48);
  sub_1AE00F014(v51);
  v53 = TupleTypeMetadata;
  v54 = v95;
  v95(v107, v109, TupleTypeMetadata);

  swift_getAtKeyPath();

  v54(v107, v109, v53);

  v55 = v83;
  swift_getAtKeyPath();

  v56 = v103;
  v57 = v96;
  v58 = AssociatedTypeWitness;
  v59 = swift_getAssociatedConformanceWitness();
  v60 = v90;
  v61 = (*(v59 + 64))(v55, v58, v59);
  v62 = *(v84 + 8);
  v62(v55, v58);
  v62(v60, v58);
  sub_1AE00F014(v61);
  v63 = *(v56 + 8);
  v64 = *(v63 + 24);
  v65 = v64(v57, v63);
  v66 = v64(v57, v63);
  sub_1AE2200E4(v66, v65);
  v68 = v67;

  sub_1AE00F014(v68);
  (*(v80 + 8))(v109, v53);
  return v108;
}

uint64_t CRStruct_5.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v160 = a2;
  v161 = a1;
  v136 = a5;
  v6 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v165 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v166 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v167 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v168 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v169 = sub_1AE23D7CC();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v102 = &v98 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v127 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v126 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v124 = &v98 - v10;
  v125 = *(swift_getAssociatedConformanceWitness() + 16);
  v98 = swift_getAssociatedTypeWitness();
  v133 = sub_1AE23D7CC();
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v150 = &v98 - v11;
  v141 = swift_getAssociatedTypeWitness();
  v123 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v122 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v144 = &v98 - v14;
  v121 = *(swift_getAssociatedConformanceWitness() + 16);
  v99 = swift_getAssociatedTypeWitness();
  v131 = sub_1AE23D7CC();
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v147 = &v98 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v117 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v116 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v114 = &v98 - v19;
  v115 = *(swift_getAssociatedConformanceWitness() + 16);
  v109 = v16;
  v100 = swift_getAssociatedTypeWitness();
  v129 = sub_1AE23D7CC();
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v146 = &v98 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v112 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v111 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v140 = &v98 - v24;
  v110 = *(swift_getAssociatedConformanceWitness() + 16);
  v107 = v21;
  v101 = swift_getAssociatedTypeWitness();
  v138 = sub_1AE23D7CC();
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v145 = &v98 - v25;
  v26 = swift_getAssociatedTypeWitness();
  v108 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v106 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v139 = &v98 - v29;
  v105 = *(swift_getAssociatedConformanceWitness() + 16);
  v104 = v26;
  v118 = swift_getAssociatedTypeWitness();
  v120 = sub_1AE23D7CC();
  v119 = *(v120 - 8);
  v30 = MEMORY[0x1EEE9AC00](v120);
  v142 = &v98 - v31;
  v32 = *(v6 + 96);
  v134 = v6;
  v32(&v165, a3, v6, v30);
  v33 = v166;
  v159 = v167;
  v158 = v169;
  v162 = v170;
  v157 = v171;
  v156 = v172;
  v155 = v173;
  v34 = v174;
  v151 = v175;
  v35 = v176;
  sub_1AE23DB8C();
  v164[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v164[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v164[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v164[3] = swift_getTupleTypeMetadata2();
  v135 = a3;
  sub_1AE23DB8C();
  v164[4] = swift_getTupleTypeMetadata2();
  v154 = swift_getTupleTypeMetadata();
  v113 = *(v154 - 8);
  v36 = v113 + 16;
  v163 = *(v113 + 16);
  (v163)(v164, &v165, v154);
  v153 = v33;

  v148 = v35;

  v152 = v34;

  swift_getAtKeyPath();

  (v163)(v164, &v165, v154);
  v149 = v36;

  v37 = v106;
  swift_getAtKeyPath();

  v38 = v139;
  v39 = v104;
  (*(v105 + 40))(v37, v160, v104);
  v40 = *(v108 + 8);
  v40(v37, v39);
  v40(v38, v39);
  v41 = v154;
  v42 = v163;
  (v163)(v164, &v165, v154);

  swift_getAtKeyPath();

  v42(v164, &v165, v41);

  v43 = v111;
  swift_getAtKeyPath();

  v44 = v43;
  v45 = v43;
  v46 = v140;
  v47 = v107;
  (*(v110 + 40))(v44, v160, v107);
  v48 = *(v112 + 8);
  v48(v45, v47);
  v48(v46, v47);
  v49 = v154;
  v50 = v163;
  (v163)(v164, &v165, v154);

  v51 = v114;
  swift_getAtKeyPath();

  v50(v164, &v165, v49);

  v52 = v116;
  swift_getAtKeyPath();

  v53 = v51;
  v54 = v109;
  (*(v115 + 40))(v52, v160, v109);
  v55 = *(v117 + 8);
  v55(v52, v54);
  v55(v53, v54);
  v56 = v154;
  (v163)(v164, &v165, v154);

  swift_getAtKeyPath();

  (v163)(v164, &v165, v56);

  v57 = v122;
  swift_getAtKeyPath();

  v58 = v144;
  v59 = v141;
  (*(v121 + 40))(v57, v160, v141);
  v60 = *(v123 + 8);
  v60(v57, v59);
  v60(v58, v59);
  v61 = v154;
  v62 = v163;
  (v163)(v164, &v165, v154);

  v63 = v124;
  swift_getAtKeyPath();

  v62(v164, &v165, v61);

  v64 = v147;

  v65 = v145;

  v66 = v126;
  swift_getAtKeyPath();
  v67 = v146;

  v68 = v63;
  v69 = AssociatedTypeWitness;
  (*(v125 + 40))(v66, v160, AssociatedTypeWitness);
  (*(v113 + 8))(&v165, v61);
  v70 = *(v127 + 8);
  v71 = v66;
  v72 = v142;
  v70(v71, v69);
  v70(v68, v69);
  if ((*(*(v118 - 8) + 48))(v72, 1) == 1 && (*(*(v101 - 8) + 48))(v65, 1) == 1 && (*(*(v100 - 8) + 48))(v67, 1) == 1 && (*(*(v99 - 8) + 48))(v64, 1) == 1 && (*(*(v98 - 8) + 48))(v150, 1) == 1)
  {
    (*(v119 + 8))(v72, v120);
    v73 = swift_getAssociatedTypeWitness();
    (*(*(v73 - 8) + 56))(v136, 1, 1, v73);
    v74 = v133;
    v75 = v64;
    v76 = v132;
    v77 = v67;
    v78 = v131;
    v79 = v130;
    v80 = v129;
    v81 = v65;
    v82 = v128;
    v83 = v138;
  }

  else
  {
    v84 = TupleTypeMetadata[12];
    v85 = TupleTypeMetadata[16];
    v86 = TupleTypeMetadata[20];
    v163 = TupleTypeMetadata[24];
    v87 = v102;
    (*(v119 + 32))(v102, v72, v120);
    (*(v137 + 16))(&v87[v84], v65, v138);
    v82 = v128;
    v88 = v129;
    (*(v128 + 16))(&v87[v85], v67, v129);
    v89 = v64;
    v79 = v130;
    v78 = v131;
    (*(v130 + 16))(&v87[v86], v89, v131);
    v76 = v132;
    v90 = v133;
    (*(v132 + 16))(&v163[v87], v150, v133);
    v91 = swift_getAssociatedTypeWitness();
    v92 = v136;
    v77 = v146;
    v80 = v88;
    v75 = v147;
    swift_dynamicCast();
    v93 = *(*(v91 - 8) + 56);
    v94 = v92;
    v81 = v145;
    v95 = v91;
    v83 = v138;
    v93(v94, 0, 1, v95);
    v74 = v90;
  }

  v96 = v137;
  (*(v76 + 8))(v150, v74);
  (*(v79 + 8))(v75, v78);
  (*(v82 + 8))(v77, v80);
  return (*(v96 + 8))(v81, v83);
}

uint64_t CRStruct_5.hasDelta(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v102 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v74 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v73 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v78 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v73 - v11;
  v98 = swift_getAssociatedTypeWitness();
  v82 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v81 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v73 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v85 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v84 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v93 = &v73 - v18;
  v90 = swift_getAssociatedTypeWitness();
  v92 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v89 = &v73 - v22;
  v103 = v4;
  (*(v4 + 96))(v112, a2, v4, v21);
  v23 = v112[1];
  v106 = v112[2];
  v107 = v112[4];
  v110 = v112[5];
  v109 = v112[7];
  v108 = v112[11];
  v24 = v112[14];
  v105 = v112[8];
  v101 = v112[10];
  v104 = v112[13];
  sub_1AE23DB8C();
  v111[0] = swift_getTupleTypeMetadata2();
  v86 = v15;
  sub_1AE23DB8C();
  v111[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v111[2] = swift_getTupleTypeMetadata2();
  v79 = v8;
  v25 = v23;
  sub_1AE23DB8C();
  v111[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v111[4] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v94 = *(TupleTypeMetadata - 8);
  v28 = v94 + 16;
  v27 = *(v94 + 16);
  v27(v111, v112, TupleTypeMetadata);

  v29 = v89;
  swift_getAtKeyPath();

  v96 = TupleTypeMetadata;
  v100 = v28;
  v88 = v27;
  v27(v111, v112, TupleTypeMetadata);
  v95 = v25;

  v99 = v24;
  v30 = a2;

  v31 = v91;
  swift_getAtKeyPath();

  v32 = v90;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(a2) = (*(AssociatedConformanceWitness + 88))(v31, v32, AssociatedConformanceWitness);
  v34 = *(v92 + 8);
  v34(v31, v32);
  v34(v29, v32);
  if (a2)
  {
    goto LABEL_2;
  }

  v37 = v96;
  v38 = v30;
  v39 = v88;
  v88(v111, v112, v96);

  v83 = v38;

  swift_getAtKeyPath();

  v39(v111, v112, v37);

  v40 = v84;
  swift_getAtKeyPath();

  v41 = v37;
  v42 = v86;
  v43 = swift_getAssociatedConformanceWitness();
  v44 = v93;
  LOBYTE(v38) = (*(v43 + 88))(v40, v42, v43);
  v45 = *(v85 + 8);
  v45(v40, v42);
  v45(v44, v42);
  if (v38)
  {
    v35 = 1;
    v36 = v41;
    goto LABEL_10;
  }

  v46 = v88;
  v88(v111, v112, v41);

  swift_getAtKeyPath();

  v46(v111, v112, v41);

  v47 = v81;
  swift_getAtKeyPath();

  v48 = v98;
  v49 = swift_getAssociatedConformanceWitness();
  v50 = v87;
  v51 = (*(v49 + 88))(v47, v48, v49);
  v52 = *(v82 + 8);
  v52(v47, v48);
  v52(v50, v48);
  v36 = v41;
  if (v51)
  {
    v35 = 1;
    goto LABEL_10;
  }

  v53 = v88;
  v88(v111, v112, v41);

  v54 = v76;
  swift_getAtKeyPath();

  v53(v111, v112, v41);

  v55 = v77;
  swift_getAtKeyPath();

  v56 = v79;
  v57 = swift_getAssociatedConformanceWitness();
  v58 = (*(v57 + 88))(v55, v56, v57);
  v59 = *(v78 + 8);
  v59(v55, v56);
  v59(v54, v56);
  if (v58)
  {
    v35 = 1;
    v36 = v41;
    goto LABEL_10;
  }

  v61 = v88;
  v88(v111, v112, v41);

  swift_getAtKeyPath();

  v61(v111, v112, v41);

  v62 = v74;
  swift_getAtKeyPath();
  v63 = v83;

  v64 = AssociatedTypeWitness;
  v65 = swift_getAssociatedConformanceWitness();
  v66 = v80;
  LOBYTE(v61) = (*(v65 + 88))(v62, v64, v65);
  v67 = *(v75 + 8);
  v67(v62, v64);
  v67(v66, v64);
  if (v61)
  {
LABEL_2:
    v35 = 1;
  }

  else
  {
    v68 = *(v103 + 8);
    v69 = *(v68 + 24);
    v70 = v69(v63, v68);
    v71 = v69(v63, v68);
    sub_1AE21FE14(v71, v70);
    v35 = v72;
  }

  v36 = v96;
LABEL_10:
  (*(v94 + 8))(v112, v36);
  return v35 & 1;
}

uint64_t CRStruct_5.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v145 = a1;
  v122 = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v115 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v114 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v111 = &v86 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v87 = swift_getAssociatedTypeWitness();
  v121 = sub_1AE23D7CC();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v133 = &v86 - v9;
  v126 = swift_getAssociatedTypeWitness();
  v110 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v109 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v127 = &v86 - v12;
  v106 = swift_getAssociatedConformanceWitness();
  v88 = swift_getAssociatedTypeWitness();
  v119 = sub_1AE23D7CC();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v134 = &v86 - v13;
  v125 = swift_getAssociatedTypeWitness();
  v104 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v103 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v101 = &v86 - v16;
  v102 = swift_getAssociatedConformanceWitness();
  v89 = swift_getAssociatedTypeWitness();
  v117 = sub_1AE23D7CC();
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v129 = &v86 - v17;
  v18 = swift_getAssociatedTypeWitness();
  v99 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v96 = &v86 - v21;
  v97 = swift_getAssociatedConformanceWitness();
  v94 = v18;
  v90 = swift_getAssociatedTypeWitness();
  v123 = sub_1AE23D7CC();
  v112 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v130 = &v86 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v95 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v93 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v124 = &v86 - v26;
  v92 = swift_getAssociatedConformanceWitness();
  v91 = v23;
  v105 = swift_getAssociatedTypeWitness();
  v108 = sub_1AE23D7CC();
  v107 = *(v108 - 8);
  v27 = MEMORY[0x1EEE9AC00](v108);
  v132 = &v86 - v28;
  (*(v5 + 96))(v153, a2, v5, v27);
  v29 = v153[2];
  v139 = v153[4];
  v143 = v153[5];
  v147 = v153[7];
  v142 = v153[8];
  v31 = v153[13];
  v30 = v153[14];
  v32 = v153[1];
  v144 = v153[10];
  v33 = v153[11];
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v149 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v150 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v151 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v152 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v100 = *(TupleTypeMetadata - 8);
  v34 = v100 + 16;
  v141 = *(v100 + 16);
  v141(&TupleTypeMetadata2, v153, TupleTypeMetadata);
  v137 = v34;
  v131 = v32;

  v135 = v30;

  v138 = v31;

  v136 = v33;

  v146 = v29;
  swift_getAtKeyPath();

  v141(&TupleTypeMetadata2, v153, TupleTypeMetadata);

  v35 = v93;
  swift_getAtKeyPath();

  v36 = v124;
  v37 = v91;
  (*(v92 + 72))(v35, v91);
  v38 = *(v95 + 8);
  v38(v35, v37);
  v38(v36, v37);
  v39 = TupleTypeMetadata;
  v40 = v141;
  v141(&TupleTypeMetadata2, v153, TupleTypeMetadata);

  v41 = v96;
  swift_getAtKeyPath();

  v40(&TupleTypeMetadata2, v153, v39);

  v42 = v98;
  swift_getAtKeyPath();

  v43 = v94;
  (*(v97 + 72))(v42, v94);
  v44 = *(v99 + 8);
  v44(v42, v43);
  v44(v41, v43);
  v45 = TupleTypeMetadata;
  v46 = v141;
  v141(&TupleTypeMetadata2, v153, TupleTypeMetadata);

  v47 = v101;
  swift_getAtKeyPath();

  v46(&TupleTypeMetadata2, v153, v45);

  v48 = v103;
  swift_getAtKeyPath();

  v49 = v125;
  (*(v102 + 72))(v48, v125);
  v50 = *(v104 + 8);
  v50(v48, v49);
  v50(v47, v49);
  v51 = TupleTypeMetadata;
  v46(&TupleTypeMetadata2, v153, TupleTypeMetadata);

  swift_getAtKeyPath();

  v141(&TupleTypeMetadata2, v153, v51);

  v52 = v109;
  swift_getAtKeyPath();

  v53 = v127;
  v54 = v126;
  (*(v106 + 72))(v52, v126);
  v55 = *(v110 + 8);
  v55(v52, v54);
  v55(v53, v54);
  v56 = TupleTypeMetadata;
  v57 = v141;
  v141(&TupleTypeMetadata2, v153, TupleTypeMetadata);

  v58 = v111;
  swift_getAtKeyPath();

  v57(&TupleTypeMetadata2, v153, v56);

  v59 = v130;

  v60 = v114;
  swift_getAtKeyPath();

  v61 = AssociatedTypeWitness;
  (*(AssociatedConformanceWitness + 72))(v60, AssociatedTypeWitness);
  (*(v100 + 8))(v153, v56);
  v62 = *(v115 + 8);
  v62(v60, v61);
  v62(v58, v61);
  if ((*(*(v105 - 8) + 48))(v132, 1) == 1 && (*(*(v90 - 8) + 48))(v59, 1) == 1 && (*(*(v89 - 8) + 48))(v129, 1) == 1 && (*(*(v88 - 8) + 48))(v134, 1) == 1 && (*(*(v87 - 8) + 48))(v133, 1) == 1)
  {
    v63 = v108;
    (*(v107 + 8))(v132, v108);
    TupleTypeMetadata2 = v63;
    v64 = v123;
    v149 = v123;
    v65 = v117;
    v150 = v117;
    v66 = v119;
    v151 = v119;
    v67 = v121;
    v152 = v121;
    v68 = swift_getTupleTypeMetadata();
    (*(*(v68 - 8) + 56))(v122, 1, 1, v68);
    v69 = v120;
    v70 = v118;
    v71 = v59;
    v72 = v116;
    v73 = v129;
    v74 = v112;
  }

  else
  {
    v75 = v108;
    TupleTypeMetadata2 = v108;
    v76 = v123;
    v149 = v123;
    v65 = v117;
    v150 = v117;
    v66 = v119;
    v151 = v119;
    v77 = v121;
    v152 = v121;
    v78 = swift_getTupleTypeMetadata();
    v79 = v78[12];
    v80 = v78[16];
    v146 = v78[20];
    v147 = v78[24];
    v81 = v122;
    (*(v107 + 32))(v122, v132, v75);
    v74 = v112;
    (*(v112 + 16))(v81 + v79, v59, v76);
    v72 = v116;
    v73 = v129;
    (*(v116 + 16))(v81 + v80, v129, v65);
    v70 = v118;
    (*(v118 + 16))(v81 + v146, v134, v66);
    v69 = v120;
    (*(v120 + 16))(v81 + v147, v133, v77);
    v82 = *(*(v78 - 1) + 56);
    v83 = v81;
    v71 = v130;
    v84 = v78;
    v67 = v77;
    v64 = v123;
    v82(v83, 0, 1, v84);
  }

  (*(v69 + 8))(v133, v67);
  (*(v70 + 8))(v134, v66);
  (*(v72 + 8))(v73, v65);
  return (*(v74 + 8))(v71, v64);
}

uint64_t CRStruct_5.apply(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v165 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v138 = AssociatedTypeWitness;
  v120 = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v151 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v136 = &v115 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v134 = swift_getAssociatedConformanceWitness();
  v135 = v8;
  v119 = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v155 = v9;
  v144 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v133 = &v115 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v129 = swift_getAssociatedConformanceWitness();
  v130 = v11;
  v118 = swift_getAssociatedTypeWitness();
  v12 = sub_1AE23D7CC();
  v150 = v12;
  v154 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v128 = &v115 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v125 = swift_getAssociatedConformanceWitness();
  v126 = v14;
  v117 = swift_getAssociatedTypeWitness();
  v15 = sub_1AE23D7CC();
  v153 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v123 = &v115 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v122 = swift_getAssociatedConformanceWitness();
  v139 = v17;
  v18 = swift_getAssociatedTypeWitness();
  v166 = sub_1AE23D7CC();
  v167 = v15;
  v168 = v12;
  v169 = v9;
  v152 = v6;
  v170 = v6;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v20 = sub_1AE23D7CC();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v132 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v127 = &v115 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v124 = &v115 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v115 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v115 - v31;
  v116 = v18;
  v146 = sub_1AE23D7CC();
  v160 = *(v146 - 8);
  v33 = MEMORY[0x1EEE9AC00](v146);
  v35 = &v115 - v34;
  (*(v4 + 96))(&v166, a2, v4, v33);
  v36 = v167;
  v37 = v168;
  v161 = v171;
  v162 = v170;
  v149 = v172;
  v148 = v173;
  v142 = v174;
  v147 = v175;
  v131 = v176;
  v140 = v177;

  v163 = v37;

  v164 = v36;
  v38 = v21;
  v39 = v155;

  v40 = *(v38 + 16);
  v159 = v38 + 16;
  v158 = v40;
  v40(v32, v165, v20);
  v41 = *(TupleTypeMetadata - 1);
  v157 = *(v41 + 48);
  v156 = v41 + 48;
  v42 = v157(v32, 1, TupleTypeMetadata);
  v43 = v150;
  v143 = v15;
  v141 = v38;
  v145 = v20;
  if (v42 == 1)
  {
    (*(v38 + 8))(v32, v20);
    (*(*(v116 - 8) + 56))(v35, 1, 1);
  }

  else
  {
    v116 = TupleTypeMetadata[12];
    v44 = TupleTypeMetadata[16];
    v45 = TupleTypeMetadata[20];
    v46 = TupleTypeMetadata[24];
    (*(v160 + 32))(v35, v32, v146);
    (*(v151 + 8))(&v32[v46], v152);
    (*(v144 + 8))(&v32[v45], v39);
    (*(v154 + 8))(&v32[v44], v43);
    (*(v153 + 8))(&v32[v116], v15);
  }

  v47 = swift_modifyAtWritableKeyPath();
  v48 = v122;
  v49 = *(v122 + 80);
  v50 = swift_checkMetadataState();
  v49(v35, v50, v48);
  v51 = v160 + 8;
  v52 = *(v160 + 8);
  v53 = v35;
  v54 = v146;
  v52(v53, v146);
  v47(&v166, 0);

  v55 = v145;
  v158(v29, v165, v145);
  v56 = v157(v29, 1, TupleTypeMetadata);
  v160 = v51;
  v139 = v52;
  if (v56 == 1)
  {
    (*(v141 + 8))(v29, v55);
    v57 = v123;
    (*(*(v117 - 8) + 56))(v123, 1, 1);
    v58 = v143;
    v59 = v153;
  }

  else
  {
    v60 = TupleTypeMetadata[12];
    v122 = TupleTypeMetadata[16];
    v61 = TupleTypeMetadata[20];
    v62 = TupleTypeMetadata[24];
    v59 = v153;
    v57 = v123;
    v58 = v143;
    (*(v153 + 32))(v123, &v29[v60], v143);
    (*(v151 + 8))(&v29[v62], v152);
    (*(v144 + 8))(&v29[v61], v155);
    (*(v154 + 8))(&v29[v122], v150);
    v52(v29, v54);
  }

  v63 = swift_modifyAtWritableKeyPath();
  v64 = v125;
  v65 = *(v125 + 80);
  v66 = swift_checkMetadataState();
  v65(v57, v66, v64);
  v67 = v57;
  v68 = *(v59 + 8);
  v68(v67, v58);
  v63(&v166, 0);

  v69 = v124;
  v70 = v145;
  v158(v124, v165, v145);
  v71 = v157(v69, 1, TupleTypeMetadata);
  v153 = v59 + 8;
  v121 = TupleTypeMetadata;
  if (v71 == 1)
  {
    (*(v141 + 8))(v69, v70);
    v72 = v128;
    (*(*(v118 - 8) + 56))(v128, 1, 1);
    v73 = v150;
    v74 = v154;
  }

  else
  {
    v75 = TupleTypeMetadata[12];
    v76 = TupleTypeMetadata[16];
    v77 = TupleTypeMetadata[20];
    v78 = TupleTypeMetadata[24];
    v74 = v154;
    v72 = v128;
    v73 = v150;
    (*(v154 + 32))(v128, &v69[v76]);
    (*(v151 + 8))(&v69[v78], v152);
    (*(v144 + 8))(&v69[v77], v155);
    v68(&v69[v75], v58);
    v139(v69, v146);
  }

  v128 = v68;
  v79 = swift_modifyAtWritableKeyPath();
  v80 = v129;
  v81 = *(v129 + 80);
  v82 = swift_checkMetadataState();
  v81(v72, v82, v80);
  v83 = v72;
  v84 = v73;
  v130 = *(v74 + 8);
  v130(v83, v73);
  v79(&v166, 0);

  v85 = v127;
  v86 = v145;
  v158(v127, v165, v145);
  v87 = v121;
  v88 = v157(v85, 1, v121);
  v154 = v74 + 8;
  if (v88 == 1)
  {
    (*(v141 + 8))(v85, v86);
    v89 = v133;
    (*(*(v119 - 8) + 56))(v133, 1, 1);
    v90 = v144;
    v91 = v86;
  }

  else
  {
    v92 = v84;
    v91 = v86;
    v93 = v87[12];
    v94 = v87[16];
    v95 = v87[24];
    v90 = v144;
    v89 = v133;
    (*(v144 + 32))(v133, &v85[v87[20]], v155);
    (*(v151 + 8))(&v85[v95], v152);
    v130(&v85[v94], v92);
    (v128)(&v85[v93], v143);
    v139(v85, v146);
  }

  v96 = swift_modifyAtWritableKeyPath();
  v97 = v134;
  v98 = *(v134 + 80);
  v99 = swift_checkMetadataState();
  v98(v89, v99, v97);
  v100 = *(v90 + 8);
  v101 = v89;
  v102 = v155;
  v100(v101, v155);
  v96(&v166, 0);

  v103 = v132;
  v158(v132, v165, v91);
  if (v157(v103, 1, v87) == 1)
  {
    (*(v141 + 8))(v103, v91);
    v104 = v136;
    (*(*(v120 - 8) + 56))(v136, 1, 1);
    v105 = v152;
    v106 = v151;
  }

  else
  {
    v165 = v87[12];
    v107 = v87[16];
    v108 = v87[20];
    v106 = v151;
    v109 = &v103[v87[24]];
    v104 = v136;
    v105 = v152;
    (*(v151 + 32))(v136, v109, v152);
    v100(&v103[v108], v102);
    v130(&v103[v107], v150);
    (v128)(&v103[v165], v143);
    v139(v103, v146);
  }

  v110 = swift_modifyAtWritableKeyPath();
  v111 = AssociatedConformanceWitness;
  v112 = *(AssociatedConformanceWitness + 80);
  v113 = swift_checkMetadataState();
  v112(v104, v113, v111);
  (*(v106 + 8))(v104, v105);
  v110(&v166, 0);
}

uint64_t CRStruct_5.visitReferences(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v83 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v55 = &v54 - v5;
  v77 = swift_getAssociatedTypeWitness();
  v58 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v57 = &v54 - v6;
  v78 = swift_getAssociatedTypeWitness();
  v60 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v59 = &v54 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v62 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v54 - v9;
  v72 = swift_getAssociatedTypeWitness();
  v74 = *(v72 - 8);
  v10 = MEMORY[0x1EEE9AC00](v72);
  v73 = &v54 - v11;
  (*(v4 + 96))(v85, a2, v4, v10);
  v12 = v85[1];
  v71 = v85[2];
  v82 = v85[4];
  v81 = v85[5];
  v80 = v85[7];
  v79 = v85[8];
  v13 = v85[10];
  v14 = v85[11];
  v16 = v85[13];
  v15 = v85[14];
  sub_1AE23DB8C();
  v84[0] = swift_getTupleTypeMetadata2();
  v63 = v8;
  sub_1AE23DB8C();
  v84[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v84[2] = swift_getTupleTypeMetadata2();
  v17 = v83;
  sub_1AE23DB8C();
  v84[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v84[4] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v75 = *(TupleTypeMetadata - 8);
  v19 = *(v75 + 16);
  v65 = v75 + 16;
  v64 = v19;
  v19(v84, v85, TupleTypeMetadata);
  v70 = v12;

  v69 = v15;

  v66 = v16;

  v67 = v14;

  v68 = v13;

  v20 = a2;

  v21 = v73;
  swift_getAtKeyPath();

  v22 = v72;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 48))(v17, v22);
  (*(v74 + 8))(v21, v22);
  v24 = v17[3];
  v25 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v24);
  v26 = v24;
  v27 = TupleTypeMetadata;
  if (((*(v25 + 8))(v26, v25) & 1) == 0)
  {
    v64(v84, v85, TupleTypeMetadata);

    v28 = v61;
    swift_getAtKeyPath();

    v29 = v63;
    v30 = swift_getAssociatedConformanceWitness();
    v31 = v83;
    (*(*(v30 + 16) + 48))(v83, v29);
    (*(v62 + 8))(v28, v29);
    v32 = v31[3];
    v33 = v31[4];
    __swift_project_boxed_opaque_existential_1(v31, v32);
    if (((*(v33 + 8))(v32, v33) & 1) == 0)
    {
      v64(v84, v85, v27);

      v34 = v59;
      swift_getAtKeyPath();

      v35 = v78;
      v36 = swift_getAssociatedConformanceWitness();
      v37 = v83;
      (*(*(v36 + 16) + 48))(v83, v35);
      (*(v60 + 8))(v34, v35);
      v38 = v37[3];
      v39 = v37[4];
      __swift_project_boxed_opaque_existential_1(v37, v38);
      if (((*(v39 + 8))(v38, v39) & 1) == 0)
      {
        v64(v84, v85, v27);

        v40 = v57;
        swift_getAtKeyPath();

        v41 = v77;
        v42 = swift_getAssociatedConformanceWitness();
        v43 = v83;
        (*(*(v42 + 16) + 48))(v83, v41);
        (*(v58 + 8))(v40, v41);
        v44 = v43[3];
        v45 = v43[4];
        __swift_project_boxed_opaque_existential_1(v43, v44);
        if (((*(v45 + 8))(v44, v45) & 1) == 0)
        {
          v64(v84, v85, v27);

          v46 = v55;
          swift_getAtKeyPath();

          v47 = AssociatedTypeWitness;
          v48 = swift_getAssociatedConformanceWitness();
          v49 = v83;
          (*(*(v48 + 16) + 48))(v83, v47);
          (*(v56 + 8))(v46, v47);
          v50 = v49[3];
          v51 = v49[4];
          __swift_project_boxed_opaque_existential_1(v49, v50);
          if (((*(v51 + 8))(v50, v51) & 1) == 0)
          {
            v52 = (*(*(v4 + 8) + 24))(v20);
            sub_1ADDDC764(v83, v52);
          }
        }
      }
    }
  }

  return (*(v75 + 8))(v85, v27);
}

Swift::Bool __swiftcall CRStruct_5.needToFinalizeTimestamps()()
{
  v2 = v0;
  v3 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = v34 - v4;
  v40 = swift_getAssociatedTypeWitness();
  v39 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v38 = v34 - v5;
  v43 = swift_getAssociatedTypeWitness();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v41 = v34 - v6;
  v46 = swift_getAssociatedTypeWitness();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = v34 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v34 - v11;
  (*(v3 + 96))(v54, v2, v3, v10);
  v13 = v54[1];
  v48 = v54[4];
  v52 = v54[8];
  v53 = v54[5];
  v50 = v54[10];
  v51 = v54[7];
  v47 = v54[11];
  v14 = v54[14];
  v49 = v54[13];

  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = (*(*(AssociatedConformanceWitness + 16) + 56))(v8);
  (*(v9 + 8))(v12, v8);
  if (v16 & 1) != 0 || (v34[0] = v14, v34[1] = v13, v17 = v44, swift_getAtKeyPath(), v18 = v46, v19 = swift_getAssociatedConformanceWitness(), v20 = (*(*(v19 + 16) + 56))(v18), (*(v45 + 8))(v17, v18), (v20) || (v21 = v41, swift_getAtKeyPath(), v22 = v43, v23 = swift_getAssociatedConformanceWitness(), v24 = (*(*(v23 + 16) + 56))(v22), (*(v42 + 8))(v21, v22), (v24) || (v25 = v38, swift_getAtKeyPath(), v26 = v40, v27 = swift_getAssociatedConformanceWitness(), v28 = (*(*(v27 + 16) + 56))(v26), (*(v39 + 8))(v25, v26), (v28))
  {

    v29 = 1;
  }

  else
  {
    v31 = v35;
    swift_getAtKeyPath();
    v32 = AssociatedTypeWitness;
    v33 = swift_getAssociatedConformanceWitness();
    v29 = (*(*(v33 + 16) + 56))(v32);

    (*(v36 + 8))(v31, v32);
  }

  return v29 & 1;
}

uint64_t CRStruct_5.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 8) + 96))(&v26, a2, *(a3 + 8));

  v4 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v5 = *(swift_getAssociatedConformanceWitness() + 16);
  v6 = *(v5 + 64);
  v7 = swift_checkMetadataState();
  v6(a1, v7, v5);
  v4(&v26, 0);

  v8 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 16);
  v10 = *(v9 + 64);
  v11 = swift_checkMetadataState();
  v10(a1, v11, v9);
  v8(&v26, 0);

  v12 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v13 = *(swift_getAssociatedConformanceWitness() + 16);
  v14 = *(v13 + 64);
  v15 = swift_checkMetadataState();
  v14(a1, v15, v13);
  v12(&v26, 0);

  v24 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v16 = *(swift_getAssociatedConformanceWitness() + 16);
  v17 = *(v16 + 64);
  v18 = swift_checkMetadataState();
  v17(a1, v18, v16);
  v24(&v26, 0);

  v19 = swift_modifyAtWritableKeyPath();
  swift_getAssociatedTypeWitness();
  v20 = *(swift_getAssociatedConformanceWitness() + 16);
  v21 = *(v20 + 64);
  v22 = swift_checkMetadataState();
  v21(a1, v22, v20);
  v19(&v26, 0);
}

uint64_t CRStruct_5.minEncodingVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v50 = a3;
  v5 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v33 = &v32 - v6;
  v38 = swift_getAssociatedTypeWitness();
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v32 - v7;
  v41 = swift_getAssociatedTypeWitness();
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v32 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v42 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  (*(v5 + 96))(&v55[1], a1, v5, v14);
  v49 = *&v55[9];
  v54 = *&v55[17];
  v48 = *&v55[33];
  v53 = *&v55[41];
  v47 = *&v55[57];
  v52 = *&v55[65];
  v46 = *&v55[81];
  v51 = *&v55[89];
  v45 = *&v55[105];
  v44 = *&v55[113];
  v17 = *(*(v5 + 8) + 24);
  v43 = v3;
  v18 = v17(a1);
  sub_1AE21FFB0(v18, &v55[1]);

  v19 = v55[1];
  if (v55[1] > 2u)
  {
    goto LABEL_17;
  }

  swift_getAtKeyPath();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(*(AssociatedConformanceWitness + 16) + 8) + 24))(v55, v12);
  (*(v13 + 8))(v16, v12);
  if (v55[0] > v19)
  {
    v19 = v55[0];
  }

  v55[1] = v19;
  if (v55[0] > 2u)
  {
    goto LABEL_17;
  }

  swift_getAtKeyPath();
  v21 = swift_getAssociatedConformanceWitness();
  (*(*(*(v21 + 16) + 8) + 24))(v55, v9);
  (*(v42 + 8))(v11, v9);
  if (v55[0] > v19)
  {
    v19 = v55[0];
  }

  v55[1] = v19;
  if (v19 > 2)
  {
    goto LABEL_17;
  }

  v22 = v39;
  swift_getAtKeyPath();
  v23 = v41;
  v24 = swift_getAssociatedConformanceWitness();
  (*(*(*(v24 + 16) + 8) + 24))(v55, v23);
  (*(v40 + 8))(v22, v23);
  if (v55[0] > v19)
  {
    v19 = v55[0];
  }

  v55[1] = v19;
  if (v55[0] > 2u)
  {
    goto LABEL_17;
  }

  v25 = v36;
  swift_getAtKeyPath();
  v26 = v38;
  v27 = swift_getAssociatedConformanceWitness();
  (*(*(*(v27 + 16) + 8) + 24))(v55, v26);
  (*(v37 + 8))(v25, v26);
  if (v55[0] > v19)
  {
    v19 = v55[0];
  }

  v55[1] = v19;
  if (v19 > 2)
  {
LABEL_17:
  }

  else
  {
    v28 = v33;
    swift_getAtKeyPath();
    v29 = AssociatedTypeWitness;
    v30 = swift_getAssociatedConformanceWitness();
    (*(*(*(v30 + 16) + 8) + 24))(v55, v29);

    result = (*(v34 + 8))(v28, v29);
    if (v55[0] > v19)
    {
      LOBYTE(v19) = v55[0];
    }
  }

  *v50 = v19;
  return result;
}

uint64_t CRStruct_5<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v65 = a8;
  v70 = a7;
  v74 = a6;
  v78 = a5;
  v84 = a4;
  v10 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v64 = &v60 - v11;
  v90 = swift_getAssociatedTypeWitness();
  v69 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v68 = &v60 - v12;
  v92 = swift_getAssociatedTypeWitness();
  v73 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v72 = &v60 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v76 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v91 = &v60 - v15;
  v80 = swift_getAssociatedTypeWitness();
  v83 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v60 - v16;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCF60, &unk_1AE252450);
  v87 = *(v94 - 8);
  v17 = MEMORY[0x1EEE9AC00](v94);
  v93 = &v60 - v18;
  v19 = *(v10 + 96);
  v62 = v10;
  v19(&TupleTypeMetadata2, a2, v10, v17);
  v81 = TupleTypeMetadata2;
  v105 = v107;
  v96 = v108;
  v102 = v110;
  v104 = v111;
  v99 = v113;
  v95 = v114;
  v98 = v116;
  v103 = v117;
  v121[0] = TupleTypeMetadata2;
  v121[1] = v107;
  v121[2] = v108;
  v121[3] = v109;
  v75 = v109;
  v121[4] = v110;
  v121[5] = v111;
  v71 = v112;
  v121[6] = v112;
  v121[7] = v113;
  v121[8] = v114;
  v121[9] = v115;
  v67 = v115;
  v121[10] = v116;
  v121[11] = v117;
  v63 = v118;
  v121[12] = v118;
  v121[13] = v119;
  v97 = v119;
  v121[14] = v120;
  v100 = v120;
  v20 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE048F10(v20, v21, v22);
  sub_1AE23E3CC();
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v77 = v14;
  sub_1AE23DB8C();
  v107 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v108 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v109 = swift_getTupleTypeMetadata2();
  v61 = a2;
  sub_1AE23DB8C();
  v110 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v86 = *(TupleTypeMetadata - 8);
  v24 = v86 + 16;
  v25 = *(v86 + 16);
  v25(&TupleTypeMetadata2, v121, TupleTypeMetadata);

  v26 = v82;
  swift_getAtKeyPath();

  v101 = TupleTypeMetadata;
  v89 = v24;
  v79 = v25;
  v25(&TupleTypeMetadata2, v121, TupleTypeMetadata);
  v27 = v93;

  v28 = v26;

  v29 = v80;
  v30 = v105;

  TupleTypeMetadata2 = v81;
  v31 = v94;
  v107 = v30;
  v32 = v85;
  sub_1AE23DD5C();
  if (v32)
  {
    (*(v86 + 8))(v121, v101);

    (*(v83 + 8))(v28, v29);
    return (*(v87 + 8))(v27, v31);
  }

  else
  {

    (*(v83 + 8))(v28, v29);
    v34 = v79;
    v79(&TupleTypeMetadata2, v121, v101);

    swift_getAtKeyPath();

    v34(&TupleTypeMetadata2, v121, v101);

    TupleTypeMetadata2 = v75;
    v107 = v102;
    v35 = v77;
    sub_1AE23DD5C();
    v36 = v101;

    (*(v76 + 8))(v91, v35);
    v37 = v79;
    v79(&TupleTypeMetadata2, v121, v36);

    v38 = v72;
    swift_getAtKeyPath();

    v37(&TupleTypeMetadata2, v121, v36);

    TupleTypeMetadata2 = v71;
    v107 = v99;
    v39 = v92;
    sub_1AE23DD5C();

    (*(v73 + 8))(v38, v39);
    v40 = v79;
    v79(&TupleTypeMetadata2, v121, v101);

    v41 = v68;
    swift_getAtKeyPath();

    v40(&TupleTypeMetadata2, v121, v101);

    TupleTypeMetadata2 = v67;
    v107 = v98;
    v42 = v90;
    sub_1AE23DD5C();

    (*(v69 + 8))(v41, v42);
    v43 = v79;
    v79(&TupleTypeMetadata2, v121, v101);

    v44 = v64;
    swift_getAtKeyPath();

    v43(&TupleTypeMetadata2, v121, v101);

    TupleTypeMetadata2 = v63;
    v107 = v97;
    v45 = AssociatedTypeWitness;
    sub_1AE23DD5C();

    (*(v66 + 8))(v44, v45);
    result = (*(*(v62 + 8) + 24))(v61);
    v47 = 0;
    v48 = result + 64;
    v49 = result;
    v50 = 1 << *(result + 32);
    v51 = -1;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    v52 = v51 & *(result + 64);
    v53 = (v50 + 63) >> 6;
    while (v52)
    {
      v54 = v47;
LABEL_12:
      v56 = __clz(__rbit64(v52)) | (v54 << 6);
      v57 = (*(v49 + 48) + 16 * v56);
      v58 = *v57;
      v59 = v57[1];
      v121[17] = *(*(v49 + 56) + 8 * v56);
      TupleTypeMetadata2 = v58;
      v107 = v59;
      sub_1AE048F64(result, v101, v46);

      sub_1AE23DD5C();
      v52 &= v52 - 1;

      v47 = v54;
    }

    v55 = v87;
    while (1)
    {
      v54 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v54 >= v53)
      {
        (*(v86 + 8))(v121, v101);

        return (*(v55 + 8))(v93, v94);
      }

      v52 = *(v48 + 8 * v54);
      ++v47;
      if (v52)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CRStruct_6.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v99 = a4;
  v100 = a1;
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v86 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v84 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v64 - v11;
  v88 = swift_getAssociatedTypeWitness();
  v83 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v81 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v64 - v14;
  v87 = swift_getAssociatedTypeWitness();
  v79 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v77 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v64 - v17;
  v72 = swift_getAssociatedTypeWitness();
  v76 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v75 = &v64 - v20;
  v69 = swift_getAssociatedTypeWitness();
  v73 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v71 = &v64 - v23;
  v65 = swift_getAssociatedTypeWitness();
  v68 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v67 = &v64 - v27;
  (*(*(a2 - 8) + 16))(a4, v5, a2, v26);
  v97 = v8;
  (*(v8 + 112))(v110, a2, v8);
  v28 = v110[1];
  v91 = v110[5];
  v92 = v110[4];
  v107 = v110[2];
  v108 = v110[10];
  v103 = v110[11];
  v104 = v110[7];
  v90 = v110[13];
  v95 = v110[14];
  v30 = v110[16];
  v29 = v110[17];
  v105 = v110[8];
  sub_1AE23DB8C();
  v109[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v109[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v109[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v109[3] = swift_getTupleTypeMetadata2();
  v98 = a2;
  sub_1AE23DB8C();
  v109[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v109[5] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v80 = *(TupleTypeMetadata - 8);
  v101 = *(v80 + 16);
  v102 = v80 + 16;
  v101(v109, v110, TupleTypeMetadata);
  v94 = v28;

  v93 = v29;

  v96 = v30;

  v101(v109, v110, TupleTypeMetadata);

  v31 = v66;
  swift_getAtKeyPath();

  v32 = v65;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(v100, v32);
  (*(v68 + 8))(v31, v32);
  swift_setAtWritableKeyPath();

  v34 = TupleTypeMetadata;
  v35 = v101;
  v101(v109, v110, TupleTypeMetadata);

  v35(v109, v110, v34);

  v36 = v70;
  swift_getAtKeyPath();

  v37 = v69;
  v38 = swift_getAssociatedConformanceWitness();
  (*(*(v38 + 16) + 24))(v100, v37);
  (*(v73 + 8))(v36, v37);
  swift_setAtWritableKeyPath();

  v39 = TupleTypeMetadata;
  v40 = v101;
  v101(v109, v110, TupleTypeMetadata);

  v40(v109, v110, v39);

  v41 = v74;
  swift_getAtKeyPath();

  v42 = v72;
  v43 = swift_getAssociatedConformanceWitness();
  (*(*(v43 + 16) + 24))(v100, v42);
  (*(v76 + 8))(v41, v42);
  swift_setAtWritableKeyPath();

  v44 = v101;
  v101(v109, v110, TupleTypeMetadata);

  v44(v109, v110, TupleTypeMetadata);

  v45 = v77;
  swift_getAtKeyPath();

  v46 = v87;
  v47 = swift_getAssociatedConformanceWitness();
  (*(*(v47 + 16) + 24))(v100, v46);
  (*(v79 + 8))(v45, v46);
  swift_setAtWritableKeyPath();

  v48 = TupleTypeMetadata;
  v49 = v101;
  v101(v109, v110, TupleTypeMetadata);

  v49(v109, v110, v48);

  v50 = v81;
  swift_getAtKeyPath();

  v51 = v88;
  v52 = swift_getAssociatedConformanceWitness();
  (*(*(v52 + 16) + 24))(v100, v51);
  (*(v83 + 8))(v50, v51);
  swift_setAtWritableKeyPath();

  v53 = TupleTypeMetadata;
  v101(v109, v110, TupleTypeMetadata);

  v101(v109, v110, v53);

  v54 = v84;
  swift_getAtKeyPath();

  v55 = v97;
  v56 = v98;
  v57 = AssociatedTypeWitness;
  v58 = swift_getAssociatedConformanceWitness();
  v59 = v100;
  (*(*(v58 + 16) + 24))(v100, v57);
  (*(v86 + 8))(v54, v57);
  swift_setAtWritableKeyPath();

  v60 = *(v55 + 8);
  v61 = (*(v60 + 24))(v56, v60);
  v62 = sub_1AE156B60(v61, v59);

  (*(v60 + 32))(v62, v56, v60);
  return (*(v80 + 8))(v110, TupleTypeMetadata);
}

uint64_t CRStruct_6.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v89 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v88 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v68 - v12;
  v90 = swift_getAssociatedTypeWitness();
  v86 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v85 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v68 - v15;
  v93 = swift_getAssociatedTypeWitness();
  v83 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v81 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v80 = &v68 - v18;
  v91 = swift_getAssociatedTypeWitness();
  v79 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v78 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v77 = &v68 - v21;
  v22 = swift_getAssociatedTypeWitness();
  v76 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v75 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v74 = &v68 - v25;
  v26 = swift_getAssociatedTypeWitness();
  v72 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v71 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29.n128_f64[0] = MEMORY[0x1EEE9AC00](v28);
  v70 = &v68 - v30;
  if (a1)
  {
    v31 = a1;
  }

  else
  {
    v31 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v115[0] = v31;
  (*(*(a2 - 8) + 16))(a4, v5, a2, v29);
  v107 = a4;
  v105 = v5;
  v32 = *(v9 + 112);

  v32(v114, a2, v9);
  v109 = v114[5];
  v110 = v114[4];
  v102 = v114[7];
  v103 = v114[2];
  v108 = v9;
  v111 = v114[8];
  v94 = v114[10];
  v98 = v114[13];
  v33 = v114[16];
  v34 = v114[17];
  v35 = v114[1];
  v95 = v114[11];
  v100 = v114[14];
  sub_1AE23DB8C();
  v113[0] = swift_getTupleTypeMetadata2();
  v73 = v22;
  sub_1AE23DB8C();
  v113[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v113[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v113[3] = swift_getTupleTypeMetadata2();
  v106 = a2;
  sub_1AE23DB8C();
  v113[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v113[5] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v82 = *(TupleTypeMetadata - 8);
  v96 = *(v82 + 16);
  v97 = v82 + 16;
  v69 = v26;
  v96(v113, v114, TupleTypeMetadata);
  v104 = v35;

  v99 = v33;

  v96(v113, v114, TupleTypeMetadata);

  v101 = v34;

  v36 = v71;
  swift_getAtKeyPath();

  v37 = v69;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 24))(v115, v37);
  (*(v72 + 8))(v36, v37);
  swift_setAtWritableKeyPath();

  v39 = v96;
  v96(v113, v114, TupleTypeMetadata);

  v39(v113, v114, TupleTypeMetadata);

  v40 = v75;
  swift_getAtKeyPath();

  v41 = v73;
  v42 = swift_getAssociatedConformanceWitness();
  (*(*(v42 + 16) + 24))(v115, v41);
  (*(v76 + 8))(v40, v41);
  swift_setAtWritableKeyPath();

  v43 = TupleTypeMetadata;
  v96(v113, v114, TupleTypeMetadata);

  v44 = v43;
  v45 = v96;
  v96(v113, v114, v44);

  v46 = v78;
  swift_getAtKeyPath();

  v47 = v91;
  v48 = swift_getAssociatedConformanceWitness();
  (*(*(v48 + 16) + 24))(v115, v47);
  (*(v79 + 8))(v46, v47);
  swift_setAtWritableKeyPath();

  v49 = TupleTypeMetadata;
  v45(v113, v114, TupleTypeMetadata);

  v45(v113, v114, v49);

  v50 = v81;
  swift_getAtKeyPath();

  v51 = v93;
  v52 = swift_getAssociatedConformanceWitness();
  (*(*(v52 + 16) + 24))(v115, v51);
  (*(v83 + 8))(v50, v51);
  swift_setAtWritableKeyPath();

  v53 = v96;
  v96(v113, v114, TupleTypeMetadata);

  v53(v113, v114, TupleTypeMetadata);

  v54 = v85;
  swift_getAtKeyPath();

  v55 = v90;
  v56 = swift_getAssociatedConformanceWitness();
  (*(*(v56 + 16) + 24))(v115, v55);
  (*(v86 + 8))(v54, v55);
  swift_setAtWritableKeyPath();

  v57 = TupleTypeMetadata;
  v58 = v96;
  v96(v113, v114, TupleTypeMetadata);

  v58(v113, v114, v57);

  v59 = v88;
  swift_getAtKeyPath();

  v60 = v108;
  v61 = v106;
  v62 = AssociatedTypeWitness;
  v63 = swift_getAssociatedConformanceWitness();
  (*(*(v63 + 16) + 24))(v115, v62);
  (*(v89 + 8))(v59, v62);
  swift_setAtWritableKeyPath();

  v64 = *(v60 + 8);
  v65 = (*(v64 + 24))(v61, v64);
  v66 = sub_1AE156B60(v65, v115);

  (*(v64 + 32))(v66, v61, v64);
  return (*(v82 + 8))(v114, v57);
}

uint64_t CRStruct_6.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v98 = a1;
  v85 = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v83 = &v68 - v6;
  v87 = swift_getAssociatedTypeWitness();
  v82 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v81 = &v68 - v7;
  v86 = swift_getAssociatedTypeWitness();
  v79 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v78 = &v68 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v77 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v68 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v75 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v68 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v71 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v70 = &v68 - v15;
  v16 = *(v5 + 112);
  v17 = a2;
  v97 = v5;
  v16((v108 + 6), a2, v5, v14);
  v99 = *(&v108[1] + 6);
  v100 = *(&v108[13] + 6);
  v105 = *(&v108[11] + 6);
  v106 = *(&v108[2] + 6);
  v95 = *(&v108[10] + 6);
  v96 = *(&v108[4] + 6);
  v102 = *(&v108[7] + 6);
  v103 = *(&v108[5] + 6);
  v101 = *(&v108[8] + 6);
  v94 = *(&v108[14] + 6);
  v18 = *(&v108[16] + 6);
  v19 = *(&v108[17] + 6);
  if (qword_1ED9670C0 != -1)
  {
    swift_once();
  }

  *(v108 + 3) = word_1ED96F220;
  BYTE5(v108[0]) = byte_1ED96F222;
  v69 = v13;
  sub_1AE23DB8C();
  v107[0] = swift_getTupleTypeMetadata2();
  v72 = v11;
  sub_1AE23DB8C();
  v107[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v107[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v107[3] = swift_getTupleTypeMetadata2();
  v92 = v17;
  sub_1AE23DB8C();
  v107[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v107[5] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v80 = *(TupleTypeMetadata - 8);
  v20 = *(v80 + 16);
  v91 = v80 + 16;
  v73 = v9;
  v20(v107, v108 + 6, TupleTypeMetadata);
  v90 = v20;

  v89 = v19;

  v93 = v18;

  v20(v107, v108 + 6, TupleTypeMetadata);

  v21 = v70;
  swift_getAtKeyPath();

  v22 = swift_modifyAtWritableKeyPath();
  v23 = v69;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 8))(v108, v21, v23);
  (*(v71 + 8))(v21, v23);
  v22(v107, 0);

  LOWORD(v107[0]) = v108[0];
  BYTE2(v107[0]) = BYTE2(v108[0]);
  v25 = v107;
  MergeResult.merge(_:)(v25);
  v26 = TupleTypeMetadata;
  v90(v107, v108 + 6, TupleTypeMetadata);

  v90(v107, v108 + 6, v26);

  v27 = v74;
  swift_getAtKeyPath();

  v28 = swift_modifyAtWritableKeyPath();
  v29 = v72;
  v30 = swift_getAssociatedConformanceWitness();
  (*(*(v30 + 8) + 8))(v108, v27, v29);
  (*(v75 + 8))(v27, v29);
  v28(v107, 0);

  LOWORD(v107[0]) = v108[0];
  BYTE2(v107[0]) = BYTE2(v108[0]);
  v31 = v107;
  MergeResult.merge(_:)(v31);
  v32 = TupleTypeMetadata;
  v33 = v90;
  v90(v107, v108 + 6, TupleTypeMetadata);

  v33(v107, v108 + 6, v32);

  v34 = v76;
  swift_getAtKeyPath();

  v35 = swift_modifyAtWritableKeyPath();
  v36 = v73;
  v37 = swift_getAssociatedConformanceWitness();
  (*(*(v37 + 8) + 8))(v108, v34, v36);
  (*(v77 + 8))(v34, v36);
  v35(v107, 0);

  LOWORD(v107[0]) = v108[0];
  BYTE2(v107[0]) = BYTE2(v108[0]);
  v38 = v107;
  MergeResult.merge(_:)(v38);
  v33(v107, v108 + 6, TupleTypeMetadata);

  v90(v107, v108 + 6, TupleTypeMetadata);

  v39 = v78;
  swift_getAtKeyPath();

  v40 = swift_modifyAtWritableKeyPath();
  v41 = v86;
  v42 = swift_getAssociatedConformanceWitness();
  (*(*(v42 + 8) + 8))(v108, v39, v41);
  (*(v79 + 8))(v39, v41);
  v40(v107, 0);

  LOWORD(v107[0]) = v108[0];
  BYTE2(v107[0]) = BYTE2(v108[0]);
  v43 = v107;
  MergeResult.merge(_:)(v43);
  v44 = TupleTypeMetadata;
  v45 = v90;
  v90(v107, v108 + 6, TupleTypeMetadata);

  v45(v107, v108 + 6, v44);
  v46 = v45;

  v47 = v81;
  swift_getAtKeyPath();

  v48 = swift_modifyAtWritableKeyPath();
  v49 = v87;
  v50 = swift_getAssociatedConformanceWitness();
  (*(*(v50 + 8) + 8))(v108, v47, v49);
  (*(v82 + 8))(v47, v49);
  v48(v107, 0);

  LOWORD(v107[0]) = v108[0];
  BYTE2(v107[0]) = BYTE2(v108[0]);
  v51 = v107;
  MergeResult.merge(_:)(v51);
  v52 = TupleTypeMetadata;
  v46(v107, v108 + 6, TupleTypeMetadata);

  v90(v107, v108 + 6, v52);

  v53 = v83;
  swift_getAtKeyPath();

  v54 = swift_modifyAtWritableKeyPath();
  v55 = v97;
  v56 = v92;
  v57 = AssociatedTypeWitness;
  v58 = swift_getAssociatedConformanceWitness();
  (*(*(v58 + 8) + 8))(v108, v53, v57);
  (*(v84 + 8))(v53, v57);
  v54(v107, 0);

  LOWORD(v107[0]) = v108[0];
  BYTE2(v107[0]) = BYTE2(v108[0]);
  v59 = v107;
  MergeResult.merge(_:)(v59);
  v60 = *(v55 + 8);
  v61 = (*(v60 + 24))(v56, v60);
  v62 = (*(v60 + 40))(v107, v56, v60);
  sub_1AE21F75C(v61, v108);

  v62(v107, 0);
  LOWORD(v107[0]) = v108[0];
  BYTE2(v107[0]) = BYTE2(v108[0]);
  v63 = v107;
  MergeResult.merge(_:)(v63);
  (*(v60 + 64))(v56, v60);
  result = (*(v80 + 8))(v108 + 6, TupleTypeMetadata);
  v65 = BYTE4(v108[0]);
  v66 = BYTE5(v108[0]);
  v67 = v85;
  *v85 = BYTE3(v108[0]);
  v67[1] = v65;
  v67[2] = v66;
  return result;
}

uint64_t CRStruct_6.newRefs(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v110 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v93 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v92 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v78 - v7;
  v99 = swift_getAssociatedTypeWitness();
  v91 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v90 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v100 = &v78 - v10;
  v97 = swift_getAssociatedTypeWitness();
  v88 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v87 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v78 - v13;
  v84 = swift_getAssociatedTypeWitness();
  v86 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v96 = &v78 - v16;
  v81 = swift_getAssociatedTypeWitness();
  v83 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v95 = &v78 - v19;
  v78 = swift_getAssociatedTypeWitness();
  v80 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v94 = &v78 - v23;
  v108 = v4;
  (*(v4 + 112))(v123, a2, v4, v22);
  v113 = v123[1];
  v114 = v123[4];
  v119 = v123[7];
  v105 = v123[8];
  v106 = v123[2];
  v112 = v123[10];
  v103 = v123[11];
  v115 = v123[5];
  v116 = v123[14];
  v104 = v123[13];
  v24 = v123[16];
  v25 = v123[17];
  v122 = MEMORY[0x1E69E7CD0];
  sub_1AE23DB8C();
  v121[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v121[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v121[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v121[3] = swift_getTupleTypeMetadata2();
  v109 = a2;
  sub_1AE23DB8C();
  v121[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v121[5] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v89 = *(TupleTypeMetadata - 8);
  v120 = *(v89 + 16);
  v117 = TupleTypeMetadata;
  v118 = v89 + 16;
  v120(v121, v123, TupleTypeMetadata);

  v107 = v25;

  v111 = v24;

  swift_getAtKeyPath();

  v120(v121, v123, v117);

  v27 = v79;
  swift_getAtKeyPath();

  v28 = v78;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = v94;
  v31 = (*(AssociatedConformanceWitness + 64))(v27, v28, AssociatedConformanceWitness);
  v32 = *(v80 + 8);
  v32(v27, v28);
  v32(v30, v28);
  sub_1AE00F014(v31);
  v33 = v117;
  v120(v121, v123, v117);

  swift_getAtKeyPath();

  v120(v121, v123, v33);

  v34 = v82;
  swift_getAtKeyPath();

  v35 = v81;
  v36 = swift_getAssociatedConformanceWitness();
  v37 = v95;
  v38 = (*(v36 + 64))(v34, v35, v36);
  v39 = *(v83 + 8);
  v39(v34, v35);
  v39(v37, v35);
  sub_1AE00F014(v38);
  v120(v121, v123, v117);

  swift_getAtKeyPath();

  v120(v121, v123, v117);

  v40 = v85;
  swift_getAtKeyPath();

  v41 = v84;
  v42 = swift_getAssociatedConformanceWitness();
  v43 = v40;
  v44 = v96;
  v45 = (*(v42 + 64))(v40, v41, v42);
  v46 = *(v86 + 8);
  v46(v43, v41);
  v46(v44, v41);
  sub_1AE00F014(v45);
  v47 = v117;
  v120(v121, v123, v117);

  swift_getAtKeyPath();

  v120(v121, v123, v47);

  v48 = v87;
  swift_getAtKeyPath();

  v49 = v97;
  v50 = swift_getAssociatedConformanceWitness();
  v51 = v98;
  v52 = (*(v50 + 64))(v48, v49, v50);
  v53 = *(v88 + 8);
  v53(v48, v49);
  v53(v51, v49);
  sub_1AE00F014(v52);
  v54 = v117;
  v55 = v120;
  v120(v121, v123, v117);

  swift_getAtKeyPath();

  v55(v121, v123, v54);

  v56 = v90;
  swift_getAtKeyPath();

  v57 = v99;
  v58 = swift_getAssociatedConformanceWitness();
  v59 = v100;
  v60 = (*(v58 + 64))(v56, v57, v58);
  v61 = *(v91 + 8);
  v61(v56, v57);
  v61(v59, v57);
  sub_1AE00F014(v60);
  v62 = v117;
  v120(v121, v123, v117);

  swift_getAtKeyPath();

  v120(v121, v123, v62);

  v63 = v92;
  swift_getAtKeyPath();

  v65 = v108;
  v64 = v109;
  v66 = AssociatedTypeWitness;
  v67 = swift_getAssociatedConformanceWitness();
  v68 = v102;
  v69 = (*(v67 + 64))(v63, v66, v67);
  v70 = *(v93 + 8);
  v70(v63, v66);
  v70(v68, v66);
  sub_1AE00F014(v69);
  v71 = *(v65 + 8);
  v72 = *(v71 + 24);
  v73 = v72(v64, v71);
  v74 = v72(v64, v71);
  sub_1AE2200E4(v74, v73);
  v76 = v75;

  sub_1AE00F014(v76);
  (*(v89 + 8))(v123, v117);
  return v122;
}

uint64_t CRStruct_6.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v174 = a2;
  v173 = a1;
  v148 = a5;
  v6 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v187 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v188 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v189 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v190 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v191 = sub_1AE23D7CC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v192 = sub_1AE23D7CC();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v114 = &v108 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v142 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v140 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v138 = &v108 - v10;
  v139 = *(swift_getAssociatedConformanceWitness() + 16);
  v109 = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  v145 = *(v11 - 8);
  v146 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v166 = &v108 - v12;
  v160 = swift_getAssociatedTypeWitness();
  v137 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v136 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v163 = &v108 - v15;
  v135 = *(swift_getAssociatedConformanceWitness() + 16);
  v110 = swift_getAssociatedTypeWitness();
  v153 = sub_1AE23D7CC();
  v144 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v167 = &v108 - v16;
  v159 = swift_getAssociatedTypeWitness();
  v132 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v129 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v161 = &v108 - v19;
  v128 = *(swift_getAssociatedConformanceWitness() + 16);
  v111 = swift_getAssociatedTypeWitness();
  v152 = sub_1AE23D7CC();
  v143 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v168 = &v108 - v20;
  v155 = swift_getAssociatedTypeWitness();
  v126 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v125 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v157 = &v108 - v23;
  v124 = *(swift_getAssociatedConformanceWitness() + 16);
  v112 = swift_getAssociatedTypeWitness();
  v141 = sub_1AE23D7CC();
  v151 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v165 = &v108 - v24;
  v25 = swift_getAssociatedTypeWitness();
  v123 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v122 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v156 = &v108 - v28;
  v29 = *(swift_getAssociatedConformanceWitness() + 16);
  v120 = v25;
  v121 = v29;
  v113 = swift_getAssociatedTypeWitness();
  v30 = sub_1AE23D7CC();
  v149 = *(v30 - 8);
  v150 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v164 = &v108 - v31;
  v32 = swift_getAssociatedTypeWitness();
  v119 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v118 = &v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v154 = &v108 - v35;
  v36 = *(swift_getAssociatedConformanceWitness() + 16);
  v116 = v32;
  v117 = v36;
  v131 = swift_getAssociatedTypeWitness();
  v37 = sub_1AE23D7CC();
  v133 = *(v37 - 8);
  v134 = v37;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v158 = &v108 - v39;
  v40 = *(v6 + 112);
  v147 = v6;
  v40(&v187, a3, v6, v38);
  v41 = v188;
  v179 = v189;
  v178 = v191;
  v177 = v192;
  v171 = v193;
  v172 = v194;
  v184 = v196;
  v176 = v197;
  v181 = v198;
  v42 = v199;
  v183 = v195;
  v175 = v200;
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
  v130 = a3;
  sub_1AE23DB8C();
  v186[5] = swift_getTupleTypeMetadata2();
  v185 = swift_getTupleTypeMetadata();
  v127 = *(v185 - 8);
  v43 = *(v127 + 16);
  v182 = v127 + 16;
  v170 = v43;
  v43(v186, &v187, v185);
  v169 = v41;

  v180 = v42;

  swift_getAtKeyPath();

  v170(v186, &v187, v185);

  v44 = v118;
  swift_getAtKeyPath();

  v45 = v116;
  v46 = v154;
  (*(v117 + 40))(v44, v174, v116);
  v47 = *(v119 + 8);
  v47(v44, v45);
  v47(v46, v45);
  v48 = v185;
  v49 = v170;
  v170(v186, &v187, v185);

  swift_getAtKeyPath();

  v49(v186, &v187, v48);

  v50 = v122;
  swift_getAtKeyPath();

  v51 = v120;
  v52 = v156;
  (*(v121 + 40))(v50, v174, v120);
  v53 = *(v123 + 8);
  v53(v50, v51);
  v53(v52, v51);
  v54 = v170;
  v170(v186, &v187, v185);

  swift_getAtKeyPath();

  v54(v186, &v187, v185);

  v55 = v125;
  swift_getAtKeyPath();

  v56 = v55;
  v57 = v157;
  v58 = v155;
  (*(v124 + 40))(v55, v174, v155);
  v59 = *(v126 + 8);
  v59(v56, v58);
  v59(v57, v58);
  v60 = v170;
  v170(v186, &v187, v185);

  swift_getAtKeyPath();

  v60(v186, &v187, v185);
  v61 = v60;

  v62 = v129;
  swift_getAtKeyPath();

  v63 = v161;
  v64 = v159;
  (*(v128 + 40))(v62, v174, v159);
  v65 = *(v132 + 8);
  v65(v62, v64);
  v65(v63, v64);
  v66 = v185;
  v61(v186, &v187, v185);

  swift_getAtKeyPath();

  v67 = v170;
  v170(v186, &v187, v66);

  v68 = v136;
  swift_getAtKeyPath();

  v69 = v68;
  v70 = v163;
  v71 = v160;
  (*(v135 + 40))(v68, v174, v160);
  v72 = *(v137 + 8);
  v72(v69, v71);
  v72(v70, v71);
  v73 = v185;
  v67(v186, &v187, v185);

  v74 = v138;
  swift_getAtKeyPath();

  v170(v186, &v187, v73);
  v75 = v164;

  v76 = v140;
  swift_getAtKeyPath();
  v77 = v75;

  v78 = v74;
  v79 = AssociatedTypeWitness;
  (*(v139 + 40))(v76, v174, AssociatedTypeWitness);
  (*(v127 + 8))(&v187, v185);
  v80 = *(v142 + 8);
  v80(v76, v79);
  v81 = v78;
  v82 = v165;
  v80(v81, v79);
  v83 = v158;
  if ((*(*(v131 - 8) + 48))() == 1 && (*(*(v113 - 8) + 48))(v77, 1) == 1 && (*(*(v112 - 8) + 48))(v82, 1) == 1 && (*(*(v111 - 8) + 48))(v168, 1) == 1 && (*(*(v110 - 8) + 48))(v167, 1) == 1 && (*(*(v109 - 8) + 48))(v166, 1) == 1)
  {
    (*(v133 + 8))(v83, v134);
    v84 = swift_getAssociatedTypeWitness();
    (*(*(v84 - 8) + 56))(v148, 1, 1, v84);
    v86 = v145;
    v85 = v146;
    v87 = v77;
    v88 = v82;
    v90 = v143;
    v89 = v144;
    v91 = v141;
    v92 = v150;
    v93 = v151;
    v94 = v149;
  }

  else
  {
    v95 = v114;
    v96 = TupleTypeMetadata[12];
    v97 = TupleTypeMetadata[16];
    v98 = TupleTypeMetadata[20];
    v99 = TupleTypeMetadata[24];
    v185 = TupleTypeMetadata[28];
    (*(v133 + 32))(v114, v83, v134);
    (*(v149 + 16))(&v95[v96], v77, v150);
    v100 = v141;
    (*(v151 + 16))(&v95[v97], v82, v141);
    v90 = v143;
    (*(v143 + 16))(&v95[v98], v168, v152);
    v89 = v144;
    (*(v144 + 16))(&v95[v99], v167, v153);
    v86 = v145;
    v101 = v146;
    (*(v145 + 16))(&v95[v185], v166, v146);
    v102 = swift_getAssociatedTypeWitness();
    v103 = v148;
    v91 = v100;
    v87 = v164;
    v88 = v165;
    swift_dynamicCast();
    v104 = *(*(v102 - 8) + 56);
    v105 = v103;
    v106 = v102;
    v94 = v149;
    v92 = v150;
    v104(v105, 0, 1, v106);
    v85 = v101;
    v93 = v151;
  }

  (*(v86 + 8))(v166, v85);
  (*(v89 + 8))(v167, v153);
  (*(v90 + 8))(v168, v152);
  (*(v93 + 8))(v88, v91);
  return (*(v94 + 8))(v87, v92);
}

uint64_t CRStruct_6.hasDelta(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v105 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v76 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v75 - v7;
  v100 = swift_getAssociatedTypeWitness();
  v80 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v79 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v75 - v10;
  v101 = swift_getAssociatedTypeWitness();
  v83 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v82 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v75 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v85 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v91 = &v75 - v17;
  v18 = swift_getAssociatedTypeWitness();
  v89 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v88 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v75 - v21;
  v94 = swift_getAssociatedTypeWitness();
  v96 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v107 = &v75 - v25;
  v106 = v4;
  (*(v4 + 112))(v120, a2, v4, v24);
  v26 = v120[1];
  v111 = v120[2];
  v104 = v120[5];
  v113 = v120[7];
  v114 = v120[4];
  v116 = v120[8];
  v117 = v120[10];
  v118 = v120[11];
  v112 = v120[13];
  v108 = v120[16];
  v109 = v120[14];
  v110 = v120[17];
  sub_1AE23DB8C();
  v119[0] = swift_getTupleTypeMetadata2();
  v90 = v18;
  sub_1AE23DB8C();
  v119[1] = swift_getTupleTypeMetadata2();
  v86 = v14;
  sub_1AE23DB8C();
  v119[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v119[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v119[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v119[5] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v98 = *(TupleTypeMetadata - 8);
  v29 = v98 + 16;
  v28 = *(v98 + 16);
  v28(v119, v120, TupleTypeMetadata);

  swift_getAtKeyPath();

  v115 = TupleTypeMetadata;
  v103 = v29;
  v92 = v28;
  v28(v119, v120, TupleTypeMetadata);
  v102 = v26;

  v30 = v95;
  swift_getAtKeyPath();

  v93 = a2;
  v31 = v94;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = v107;
  LOBYTE(a2) = (*(AssociatedConformanceWitness + 88))(v30, v31, AssociatedConformanceWitness);
  v34 = *(v96 + 8);
  v34(v30, v31);
  v34(v33, v31);
  if ((a2 & 1) != 0
    || (v35 = v92, v92(v119, v120, v115), , , , , , , , , , , , swift_getAtKeyPath(), , v35(v119, v120, v115), , , , , , , , , , , , v36 = v88, swift_getAtKeyPath(), , v37 = v90, v38 = swift_getAssociatedConformanceWitness(), v39 = v97, LOBYTE(v35) = (*(v38 + 88))(v36, v37, v38), v40 = *(v89 + 8), v40(v36, v37), v40(v39, v37), (v35 & 1) != 0)
    || (v41 = v92, v92(v119, v120, v115), , , , , , , , , , , , swift_getAtKeyPath(), , v41(v119, v120, v115), , , , , , , , , , , , v42 = v84, swift_getAtKeyPath(), , v43 = v86, v44 = swift_getAssociatedConformanceWitness(), v45 = v91, LOBYTE(v41) = (*(v44 + 88))(v42, v43, v44), v46 = *(v85 + 8), v46(v42, v43), v46(v45, v43), (v41 & 1) != 0)
    || (v47 = v92, v92(v119, v120, v115), , , , , , , , , , , , swift_getAtKeyPath(), , v47(v119, v120, v115), , , , , , , , , , , , v48 = v82, swift_getAtKeyPath(), , v49 = v101, v50 = swift_getAssociatedConformanceWitness(), v51 = v87, LOBYTE(v47) = (*(v50 + 88))(v48, v49, v50), v52 = *(v83 + 8), v52(v48, v49), v52(v51, v49), (v47 & 1) != 0)
    || (v53 = v92, v92(v119, v120, v115), , , , , , , , , , , , v54 = v78, swift_getAtKeyPath(), , v53(v119, v120, v115), , , , , , , , , , , , v55 = v79, swift_getAtKeyPath(), , v56 = v100, v57 = swift_getAssociatedConformanceWitness(), LOBYTE(v53) = (*(v57 + 88))(v55, v56, v57), v58 = *(v80 + 8), v58(v55, v56), v58(v54, v56), (v53 & 1) != 0))
  {
    v59 = v115;
  }

  else
  {
    v62 = v115;
    v63 = v92;
    v92(v119, v120, v115);

    swift_getAtKeyPath();

    v59 = v62;
    v63(v119, v120, v62);

    v64 = v76;
    swift_getAtKeyPath();

    v65 = AssociatedTypeWitness;
    v66 = swift_getAssociatedConformanceWitness();
    v67 = v81;
    LOBYTE(v62) = (*(v66 + 88))(v64, v65, v66);
    v68 = *(v77 + 8);
    v68(v64, v65);
    v68(v67, v65);
    if ((v62 & 1) == 0)
    {
      v69 = *(v106 + 8);
      v70 = *(v69 + 24);
      v71 = v93;
      v72 = v70(v93, v69);
      v73 = v70(v71, v69);
      sub_1AE21FE14(v73, v72);
      v60 = v74;

      goto LABEL_8;
    }
  }

  v60 = 1;
LABEL_8:
  (*(v98 + 8))(v120, v59);
  return v60 & 1;
}

uint64_t CRStruct_6.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v162 = a1;
  v136 = a4;
  v5 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v132 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v131 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v128 = &v101 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v101 = swift_getAssociatedTypeWitness();
  v152 = sub_1AE23D7CC();
  v135 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v154 = &v101 - v9;
  v144 = swift_getAssociatedTypeWitness();
  v126 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v125 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v146 = &v101 - v12;
  v124 = swift_getAssociatedConformanceWitness();
  v102 = swift_getAssociatedTypeWitness();
  v149 = sub_1AE23D7CC();
  v134 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v150 = &v101 - v13;
  v143 = swift_getAssociatedTypeWitness();
  v120 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v119 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v145 = &v101 - v16;
  v118 = swift_getAssociatedConformanceWitness();
  v103 = swift_getAssociatedTypeWitness();
  v148 = sub_1AE23D7CC();
  v133 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v155 = &v101 - v17;
  v142 = swift_getAssociatedTypeWitness();
  v116 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v115 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v141 = &v101 - v20;
  v114 = swift_getAssociatedConformanceWitness();
  v104 = swift_getAssociatedTypeWitness();
  v138 = sub_1AE23D7CC();
  v130 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v156 = &v101 - v21;
  v22 = swift_getAssociatedTypeWitness();
  v113 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v112 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v140 = &v101 - v25;
  v26 = swift_getAssociatedConformanceWitness();
  v110 = v22;
  v111 = v26;
  v105 = swift_getAssociatedTypeWitness();
  v137 = sub_1AE23D7CC();
  v127 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v151 = &v101 - v27;
  v28 = swift_getAssociatedTypeWitness();
  v109 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v108 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v139 = &v101 - v31;
  v32 = swift_getAssociatedConformanceWitness();
  v106 = v28;
  v107 = v32;
  v121 = swift_getAssociatedTypeWitness();
  v33 = sub_1AE23D7CC();
  v122 = *(v33 - 8);
  v123 = v33;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v153 = &v101 - v35;
  (*(v5 + 112))(v179, a2, v5, v34);
  v36 = v179[1];
  v168 = v179[2];
  v171 = v179[4];
  v167 = v179[5];
  v172 = v179[10];
  v160 = v179[11];
  v163 = v179[13];
  v164 = v179[8];
  v37 = v179[14];
  v38 = v179[16];
  v39 = v179[17];
  v170 = v179[7];
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v174 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v175 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v176 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v177 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v178 = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v117 = *(TupleTypeMetadata - 8);
  v40 = *(v117 + 16);
  v166 = v117 + 16;
  v169 = v40;
  v40(&TupleTypeMetadata2, v179, TupleTypeMetadata);
  v157 = v36;

  v161 = v39;

  v158 = v38;

  v41 = v37;

  swift_getAtKeyPath();

  v169(&TupleTypeMetadata2, v179, TupleTypeMetadata);

  v42 = v108;
  swift_getAtKeyPath();

  v43 = v106;
  v44 = v139;
  (*(v107 + 72))(v42, v106);
  v45 = *(v109 + 8);
  v45(v42, v43);
  v45(v44, v43);
  v46 = TupleTypeMetadata;
  v47 = v169;
  v169(&TupleTypeMetadata2, v179, TupleTypeMetadata);

  v159 = v41;

  swift_getAtKeyPath();

  v47(&TupleTypeMetadata2, v179, v46);

  v48 = v112;
  swift_getAtKeyPath();

  v49 = v110;
  v50 = v48;
  v51 = v140;
  (*(v111 + 72))(v48, v110);
  v52 = *(v113 + 8);
  v52(v50, v49);
  v52(v51, v49);
  v53 = TupleTypeMetadata;
  v169(&TupleTypeMetadata2, v179, TupleTypeMetadata);

  swift_getAtKeyPath();

  v169(&TupleTypeMetadata2, v179, v53);

  v54 = v115;
  swift_getAtKeyPath();

  v56 = v141;
  v55 = v142;
  (*(v114 + 72))(v54, v142);
  v57 = *(v116 + 8);
  v57(v54, v55);
  v57(v56, v55);
  v58 = v169;
  v169(&TupleTypeMetadata2, v179, TupleTypeMetadata);

  swift_getAtKeyPath();

  v58(&TupleTypeMetadata2, v179, TupleTypeMetadata);

  v59 = v119;
  swift_getAtKeyPath();

  v60 = v145;
  v61 = v143;
  (*(v118 + 72))(v59, v143);
  v62 = *(v120 + 8);
  v62(v59, v61);
  v62(v60, v61);
  v63 = TupleTypeMetadata;
  v169(&TupleTypeMetadata2, v179, TupleTypeMetadata);

  swift_getAtKeyPath();

  v64 = v169;
  v169(&TupleTypeMetadata2, v179, v63);

  v65 = v125;
  swift_getAtKeyPath();

  v66 = v146;
  v67 = v144;
  (*(v124 + 72))(v65, v144);
  v68 = *(v126 + 8);
  v68(v65, v67);
  v68(v66, v67);
  v69 = TupleTypeMetadata;
  v64(&TupleTypeMetadata2, v179, TupleTypeMetadata);

  v70 = v128;
  swift_getAtKeyPath();

  v169(&TupleTypeMetadata2, v179, v69);

  v71 = v151;

  v72 = v131;
  swift_getAtKeyPath();

  v73 = AssociatedTypeWitness;
  (*(AssociatedConformanceWitness + 72))(v72, AssociatedTypeWitness);
  (*(v117 + 8))(v179, v69);
  v74 = *(v132 + 8);
  v74(v72, v73);
  v74(v70, v73);
  if ((*(*(v121 - 8) + 48))(v153, 1) == 1 && (*(*(v105 - 8) + 48))(v71, 1) == 1 && (*(*(v104 - 8) + 48))(v156, 1) == 1 && (*(*(v103 - 8) + 48))(v155, 1) == 1 && (*(*(v102 - 8) + 48))(v150, 1) == 1 && (*(*(v101 - 8) + 48))(v154, 1) == 1)
  {
    v75 = v123;
    (*(v122 + 8))(v153, v123);
    TupleTypeMetadata2 = v75;
    v77 = v137;
    v76 = v138;
    v174 = v137;
    v175 = v138;
    v176 = v148;
    v177 = v149;
    v178 = v152;
    v78 = swift_getTupleTypeMetadata();
    (*(*(v78 - 8) + 56))(v136, 1, 1, v78);
    v80 = v134;
    v79 = v135;
    v81 = v150;
    v82 = v133;
    v83 = v71;
    v84 = v130;
    v85 = v127;
  }

  else
  {
    v86 = v71;
    v87 = v123;
    TupleTypeMetadata2 = v123;
    v88 = v137;
    v174 = v137;
    v175 = v138;
    v90 = v148;
    v89 = v149;
    v176 = v148;
    v177 = v149;
    v178 = v152;
    v91 = swift_getTupleTypeMetadata();
    v92 = v91[12];
    v93 = v91[16];
    v170 = v91[20];
    v171 = v91[24];
    v172 = v91[28];
    v94 = v136;
    (*(v122 + 32))(v136, v153, v87);
    v85 = v127;
    (*(v127 + 16))(v94 + v92, v86, v88);
    v84 = v130;
    v95 = v89;
    v96 = v138;
    (*(v130 + 16))(v94 + v93, v156, v138);
    v82 = v133;
    (*(v133 + 16))(v94 + v170, v155, v90);
    v80 = v134;
    v81 = v150;
    (*(v134 + 16))(v94 + v171, v150, v95);
    v79 = v135;
    (*(v135 + 16))(v94 + v172, v154, v152);
    v97 = *(*(v91 - 1) + 56);
    v98 = v94;
    v77 = v137;
    v99 = v91;
    v76 = v96;
    v83 = v151;
    v97(v98, 0, 1, v99);
  }

  (*(v79 + 8))(v154, v152);
  (*(v80 + 8))(v81, v149);
  (*(v82 + 8))(v155, v148);
  (*(v84 + 8))(v156, v76);
  return (*(v85 + 8))(v83, v77);
}

double CRStruct_6.apply(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v186 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v128 = swift_getAssociatedTypeWitness();
  v181 = sub_1AE23D7CC();
  v164 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v144 = &v122 - v5;
  v151 = swift_getAssociatedTypeWitness();
  v143 = swift_getAssociatedConformanceWitness();
  v127 = swift_getAssociatedTypeWitness();
  v163 = sub_1AE23D7CC();
  v154 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v142 = &v122 - v6;
  v150 = swift_getAssociatedTypeWitness();
  v140 = swift_getAssociatedConformanceWitness();
  v126 = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v158 = *(v7 - 8);
  v159 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v139 = &v122 - v8;
  v149 = swift_getAssociatedTypeWitness();
  v136 = swift_getAssociatedConformanceWitness();
  v125 = swift_getAssociatedTypeWitness();
  v9 = sub_1AE23D7CC();
  v162 = v9;
  v166 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v135 = &v122 - v10;
  v147 = swift_getAssociatedTypeWitness();
  v133 = swift_getAssociatedConformanceWitness();
  v124 = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  v161 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v131 = &v122 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v129 = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedTypeWitness();
  v189 = sub_1AE23D7CC();
  v190 = v11;
  v153 = v11;
  v191 = v9;
  v192 = v7;
  v193 = v163;
  v194 = v181;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v165 = sub_1AE23D7CC();
  v157 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v141 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v138 = &v122 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v134 = &v122 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v132 = &v122 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v130 = &v122 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v122 - v25;
  v123 = v14;
  v156 = sub_1AE23D7CC();
  v167 = *(v156 - 8);
  v27 = MEMORY[0x1EEE9AC00](v156);
  v146 = &v122 - v28;
  (*(v4 + 112))(&v189, a2, v4, v27);
  v29 = v190;
  v184 = v195;
  v185 = v193;
  v176 = v196;
  v177 = v194;
  v183 = v197;
  v175 = v198;
  v30 = v199;
  v31 = v200;
  v32 = v201;
  v33 = v202;
  v178 = v191;
  v148 = v13;
  sub_1AE23DB8C();
  v188[0] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v188[1] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v188[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v188[3] = swift_getTupleTypeMetadata2();
  v34 = v157;
  sub_1AE23DB8C();
  v188[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v188[5] = swift_getTupleTypeMetadata2();
  v35 = swift_getTupleTypeMetadata();
  v137 = *(v35 - 8);
  v36 = *(v137 + 16);
  v182 = v35;
  v171 = v36;
  v172 = v137 + 16;
  (v36)(v188, &v189);
  v179 = v29;

  v180 = v33;

  v173 = v32;

  v160 = v31;
  v37 = v165;

  v174 = v30;

  v38 = v34 + 16;
  v170 = *(v34 + 16);
  v170(v26, v186, v37);
  v39 = *(TupleTypeMetadata - 1);
  v40 = *(v39 + 48);
  v168 = v39 + 48;
  v169 = v40;
  v41 = (v40)(v26, 1);
  v42 = v181;
  v43 = v164;
  v44 = v159;
  v45 = v162;
  if (v41 == 1)
  {
    (*(v34 + 8))(v26, v37);
    (*(*(v123 - 8) + 56))(v146, 1, 1);
    v46 = v153;
  }

  else
  {
    v47 = TupleTypeMetadata[12];
    v48 = TupleTypeMetadata[16];
    v122 = TupleTypeMetadata[20];
    v123 = v48;
    v49 = TupleTypeMetadata[24];
    v50 = TupleTypeMetadata[28];
    (*(v167 + 32))(v146, v26, v156);
    (*(v43 + 8))(&v26[v50], v42);
    (*(v154 + 8))(&v26[v49], v163);
    (*(v158 + 8))(&v26[v122], v44);
    (*(v166 + 8))(&v26[v123], v45);
    v46 = v153;
    (*(v161 + 8))(&v26[v47], v153);
  }

  v51 = swift_modifyAtWritableKeyPath();
  v52 = v146;
  (*(v129 + 80))(v146, v148);
  v54 = v167 + 8;
  v53 = *(v167 + 8);
  v55 = v156;
  v53(v52, v156);
  v51(v188, 0);

  v171(v188, &v189, v182);

  v56 = v130;
  v57 = v165;
  v170(v130, v186, v165);
  v58 = v169(v56, 1, TupleTypeMetadata);
  v155 = v38;
  v167 = v54;
  v148 = v53;
  if (v58 == 1)
  {
    (*(v157 + 8))(v56, v57);
    v59 = v131;
    (*(*(v124 - 8) + 56))(v131, 1, 1);
    v60 = v161;
  }

  else
  {
    v61 = TupleTypeMetadata[12];
    v146 = TupleTypeMetadata[16];
    v129 = TupleTypeMetadata[20];
    v124 = TupleTypeMetadata[24];
    v62 = TupleTypeMetadata[28];
    v60 = v161;
    v63 = v131;
    (*(v161 + 32))(v131, &v56[v61], v46);
    v64 = &v56[v62];
    v65 = v53;
    v66 = v163;
    (*(v164 + 8))(v64, v181);
    (*(v154 + 8))(&v56[v124], v66);
    (*(v158 + 8))(&v56[v129], v159);
    (*(v166 + 8))(&v146[v56], v162);
    v65(v56, v55);
    v59 = v63;
  }

  v67 = swift_modifyAtWritableKeyPath();
  (*(v133 + 80))(v59, v147);
  v68 = *(v60 + 8);
  v68(v59, v46);
  v67(v188, 0);

  v171(v188, &v189, v182);

  v69 = v132;
  v70 = v165;
  v170(v132, v186, v165);
  v71 = v169(v69, 1, TupleTypeMetadata);
  v161 = v60 + 8;
  v147 = v68;
  if (v71 == 1)
  {
    (*(v157 + 8))(v69, v70);
    v72 = v135;
    (*(*(v125 - 8) + 56))(v135, 1, 1);
    v73 = v70;
    v74 = v158;
    v75 = v162;
    v76 = v166;
  }

  else
  {
    v77 = v46;
    v146 = TupleTypeMetadata[12];
    v78 = TupleTypeMetadata[16];
    v133 = TupleTypeMetadata[20];
    v79 = TupleTypeMetadata[24];
    v80 = TupleTypeMetadata[28];
    v76 = v166;
    v72 = v135;
    v81 = v162;
    (*(v166 + 32))(v135, &v69[v78], v162);
    (*(v164 + 8))(&v69[v80], v181);
    (*(v154 + 8))(&v69[v79], v163);
    v74 = v158;
    (*(v158 + 8))(&v69[v133], v159);
    v68(&v146[v69], v77);
    v73 = v165;
    v82 = v69;
    v75 = v81;
    v148(v82, v156);
  }

  v83 = swift_modifyAtWritableKeyPath();
  (*(v136 + 80))(v72, v149);
  v84 = *(v76 + 8);
  v84(v72, v75);
  v83(v188, 0);

  v171(v188, &v189, v182);

  v85 = v134;
  v170(v134, v186, v73);
  v86 = v169(v85, 1, TupleTypeMetadata);
  v87 = v73;
  v166 = v76 + 8;
  v149 = v84;
  if (v86 == 1)
  {
    (*(v157 + 8))(v85, v73);
    v88 = v139;
    (*(*(v126 - 8) + 56))(v139, 1, 1);
    v89 = v73;
    v90 = v159;
  }

  else
  {
    v91 = TupleTypeMetadata[12];
    v158 = TupleTypeMetadata[16];
    v92 = TupleTypeMetadata[24];
    v93 = TupleTypeMetadata[28];
    v88 = v139;
    v90 = v159;
    (*(v74 + 32))(v139, &v85[TupleTypeMetadata[20]], v159);
    v94 = &v85[v93];
    v89 = v87;
    (*(v164 + 8))(v94, v181);
    (*(v154 + 8))(&v85[v92], v163);
    v84(&v85[v158], v162);
    v147(&v85[v91], v153);
    v148(v85, v156);
  }

  v95 = swift_modifyAtWritableKeyPath();
  (*(v140 + 80))(v88, v150);
  v96 = *(v74 + 8);
  v96(v88, v90);
  v95(v188, 0);

  v171(v188, &v189, v182);

  v97 = v138;
  v170(v138, v186, v89);
  v98 = v169(v97, 1, TupleTypeMetadata);
  v158 = v74 + 8;
  v150 = v96;
  if (v98 == 1)
  {
    v99 = v157;
    (*(v157 + 8))(v97, v89);
    v100 = v142;
    (*(*(v127 - 8) + 56))(v142, 1, 1);
    v101 = v163;
    v102 = v154;
  }

  else
  {
    v103 = v90;
    v146 = TupleTypeMetadata[12];
    v104 = TupleTypeMetadata[16];
    v139 = TupleTypeMetadata[20];
    v140 = v104;
    v105 = TupleTypeMetadata[28];
    v102 = v154;
    v106 = v142;
    v101 = v163;
    (*(v154 + 32))(v142, &v97[TupleTypeMetadata[24]]);
    (*(v164 + 8))(&v97[v105], v181);
    v96(&v139[v97], v103);
    v100 = v106;
    v149(&v97[v140], v162);
    v147(&v146[v97], v153);
    v148(v97, v156);
    v99 = v157;
  }

  v107 = swift_modifyAtWritableKeyPath();
  (*(v143 + 80))(v100, v151);
  v108 = *(v102 + 8);
  v109 = v100;
  v110 = v101;
  v108(v109, v101);
  v107(v188, 0);

  v171(v188, &v189, v182);

  v111 = v141;
  v112 = v165;
  v170(v141, v186, v165);
  if (v169(v111, 1, TupleTypeMetadata) == 1)
  {
    (*(v99 + 8))(v111, v112);
    v113 = v144;
    (*(*(v128 - 8) + 56))(v144, 1, 1);
    v114 = v164;
    v115 = v181;
  }

  else
  {
    v186 = TupleTypeMetadata[12];
    v116 = TupleTypeMetadata[16];
    v117 = TupleTypeMetadata[20];
    v118 = TupleTypeMetadata[24];
    v114 = v164;
    v119 = v144;
    (*(v164 + 32))(v144, &v111[TupleTypeMetadata[28]], v181);
    v108(&v111[v118], v110);
    v115 = v181;
    v150(&v111[v117], v159);
    v149(&v111[v116], v162);
    v113 = v119;
    v147(&v111[v186], v153);
    v148(v111, v156);
  }

  v120 = swift_modifyAtWritableKeyPath();
  (*(AssociatedConformanceWitness + 80))(v113, AssociatedTypeWitness);
  (*(v114 + 8))(v113, v115);
  v120(v188, 0);
  (*(v137 + 8))(&v189, v182);

  return result;
}

uint64_t CRStruct_6.visitReferences(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v76 = a1;
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v54 = &v53 - v5;
  v79 = swift_getAssociatedTypeWitness();
  v57 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v56 = &v53 - v6;
  v80 = swift_getAssociatedTypeWitness();
  v59 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v58 = &v53 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v61 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v53 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v64 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v53 - v11;
  v73 = swift_getAssociatedTypeWitness();
  v75 = *(v73 - 8);
  v12 = MEMORY[0x1EEE9AC00](v73);
  v74 = &v53 - v13;
  (*(v4 + 112))(v90, a2, v4, v12);
  v14 = v90[1];
  v72 = v90[4];
  v87 = v90[7];
  v88 = v90[2];
  v85 = v90[10];
  v86 = v90[8];
  v83 = v90[13];
  v84 = v90[11];
  v81 = v90[5];
  v82 = v90[14];
  v16 = v90[16];
  v15 = v90[17];
  sub_1AE23DB8C();
  v89[0] = swift_getTupleTypeMetadata2();
  v65 = v10;
  sub_1AE23DB8C();
  v89[1] = swift_getTupleTypeMetadata2();
  v62 = v8;
  sub_1AE23DB8C();
  v89[2] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v89[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v89[4] = swift_getTupleTypeMetadata2();
  v17 = v76;
  sub_1AE23DB8C();
  v89[5] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v77 = *(TupleTypeMetadata - 8);
  v66 = *(v77 + 16);
  v67 = v77 + 16;
  v66(v89, v90, TupleTypeMetadata);
  v69 = v14;

  v70 = v15;

  v68 = v16;

  v19 = a2;

  v20 = v74;
  swift_getAtKeyPath();

  v71 = v4;
  v21 = v73;
  v22 = TupleTypeMetadata;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 48))(v17, v21);
  (*(v75 + 8))(v20, v21);
  v24 = v17[3];
  v25 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v24);
  if (((*(v25 + 8))(v24, v25) & 1) == 0)
  {
    v66(v89, v90, v22);

    v26 = v63;
    swift_getAtKeyPath();

    v27 = v65;
    v28 = swift_getAssociatedConformanceWitness();
    (*(*(v28 + 16) + 48))(v17, v27);
    (*(v64 + 8))(v26, v27);
    v29 = v17[3];
    v30 = v17[4];
    __swift_project_boxed_opaque_existential_1(v17, v29);
    if (((*(v30 + 8))(v29, v30) & 1) == 0)
    {
      v66(v89, v90, v22);

      v31 = v60;
      swift_getAtKeyPath();

      v32 = v62;
      v33 = swift_getAssociatedConformanceWitness();
      (*(*(v33 + 16) + 48))(v17, v32);
      (*(v61 + 8))(v31, v32);
      v34 = v17[3];
      v35 = v17[4];
      __swift_project_boxed_opaque_existential_1(v17, v34);
      if (((*(v35 + 8))(v34, v35) & 1) == 0)
      {
        v66(v89, v90, v22);

        v36 = v58;
        swift_getAtKeyPath();

        v37 = v80;
        v38 = swift_getAssociatedConformanceWitness();
        (*(*(v38 + 16) + 48))(v17, v37);
        (*(v59 + 8))(v36, v37);
        v39 = v17[3];
        v40 = v17[4];
        __swift_project_boxed_opaque_existential_1(v17, v39);
        if (((*(v40 + 8))(v39, v40) & 1) == 0)
        {
          v66(v89, v90, v22);

          v41 = v56;
          swift_getAtKeyPath();

          v42 = v79;
          v43 = swift_getAssociatedConformanceWitness();
          (*(*(v43 + 16) + 48))(v17, v42);
          (*(v57 + 8))(v41, v42);
          v44 = v17[3];
          v45 = v17[4];
          __swift_project_boxed_opaque_existential_1(v17, v44);
          if (((*(v45 + 8))(v44, v45) & 1) == 0)
          {
            v66(v89, v90, v22);

            v46 = v54;
            swift_getAtKeyPath();

            v47 = AssociatedTypeWitness;
            v48 = swift_getAssociatedConformanceWitness();
            (*(*(v48 + 16) + 48))(v17, v47);
            (*(v55 + 8))(v46, v47);
            v49 = v17[3];
            v50 = v17[4];
            __swift_project_boxed_opaque_existential_1(v17, v49);
            if (((*(v50 + 8))(v49, v50) & 1) == 0)
            {
              v51 = (*(*(v71 + 8) + 24))(v19);
              sub_1ADDDC764(v17, v51);
            }
          }
        }
      }
    }
  }

  return (*(v77 + 8))(v90, v22);
}

Swift::Bool __swiftcall CRStruct_6.needToFinalizeTimestamps()()
{
  v2 = v0;
  v3 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v44 = &v43 - v4;
  v68 = swift_getAssociatedTypeWitness();
  v47 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v46 = &v43 - v5;
  v6 = swift_getAssociatedTypeWitness();
  v49 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v43 - v7;
  v8 = swift_getAssociatedTypeWitness();
  v52 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v43 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v55 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v43 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v66 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v65 = &v43 - v14;
  (*(v3 + 112))(v72, v2, v3, v13);
  v63 = v72[4];
  v64 = v72[2];
  v61 = v72[7];
  v62 = v72[5];
  v60 = v72[10];
  v69 = v72[11];
  v70 = v72[8];
  v58 = v72[1];
  v59 = v72[13];
  v15 = v72[14];
  v16 = v72[17];
  v57 = v72[16];
  sub_1AE23DB8C();
  v71[0] = swift_getTupleTypeMetadata2();
  v56 = v10;
  sub_1AE23DB8C();
  v71[1] = swift_getTupleTypeMetadata2();
  v53 = v8;
  sub_1AE23DB8C();
  v71[2] = swift_getTupleTypeMetadata2();
  v50 = v6;
  sub_1AE23DB8C();
  v71[3] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v71[4] = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v71[5] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v18 = *(TupleTypeMetadata - 8);
  (*(v18 + 16))(v71, v72, TupleTypeMetadata);

  v43 = v16;

  v58 = v15;
  v19 = v3;

  v20 = v65;
  swift_getAtKeyPath();

  v64 = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(v16) = (*(*(AssociatedConformanceWitness + 16) + 56))(v12);
  (*(v66 + 8))(v20, v12);
  if (v16 & 1) != 0 || (v22 = v54, swift_getAtKeyPath(), v23 = v56, v24 = swift_getAssociatedConformanceWitness(), v25 = (*(*(v24 + 16) + 56))(v23), (*(v55 + 8))(v22, v23), (v25) || (v26 = v51, swift_getAtKeyPath(), v27 = v53, v28 = swift_getAssociatedConformanceWitness(), v29 = (*(*(v28 + 16) + 56))(v27), (*(v52 + 8))(v26, v27), (v29) || (v30 = v48, swift_getAtKeyPath(), v31 = v50, v32 = swift_getAssociatedConformanceWitness(), v33 = (*(*(v32 + 16) + 56))(v31), (*(v49 + 8))(v30, v31), (v33) || (v34 = v46, swift_getAtKeyPath(), v35 = v68, v36 = swift_getAssociatedConformanceWitness(), v37 = (*(*(v36 + 16) + 56))(v35), (*(v47 + 8))(v34, v35), (v37))
  {
    (*(v18 + 8))(v72, TupleTypeMetadata);
    v38 = 1;
  }

  else
  {
    v40 = v44;
    swift_getAtKeyPath();
    v41 = AssociatedTypeWitness;
    v42 = swift_getAssociatedConformanceWitness();
    v38 = (*(*(v42 + 16) + 56))(v41);
    (*(v18 + 8))(v72, TupleTypeMetadata);
    (*(v45 + 8))(v40, v41);
  }

  return v38 & 1;
}

uint64_t CRStruct_6.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 8) + 112))(&v33, a2, *(a3 + 8));
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v32[0] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v32[1] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v32[2] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v32[3] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v32[4] = swift_getTupleTypeMetadata2();
  swift_getAssociatedTypeWitness();
  sub_1AE23DB8C();
  v32[5] = swift_getTupleTypeMetadata2();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v28 = *(TupleTypeMetadata - 8);
  v29 = *(v28 + 16);
  v29(v32, &v33, TupleTypeMetadata);

  v3 = swift_modifyAtWritableKeyPath();
  v4 = *(swift_getAssociatedConformanceWitness() + 16);
  v5 = *(v4 + 64);
  v6 = swift_checkMetadataState();
  v5(a1, v6, v4);
  v3(v32, 0);

  v29(v32, &v33, TupleTypeMetadata);

  v7 = swift_modifyAtWritableKeyPath();
  v8 = *(swift_getAssociatedConformanceWitness() + 16);
  v9 = *(v8 + 64);
  v10 = swift_checkMetadataState();
  v9(a1, v10, v8);
  v7(v32, 0);

  v29(v32, &v33, TupleTypeMetadata);

  v11 = swift_modifyAtWritableKeyPath();
  v12 = *(swift_getAssociatedConformanceWitness() + 16);
  v13 = *(v12 + 64);
  v14 = swift_checkMetadataState();
  v13(a1, v14, v12);
  v11(v32, 0);

  v29(v32, &v33, TupleTypeMetadata);

  v15 = swift_modifyAtWritableKeyPath();
  v16 = *(swift_getAssociatedConformanceWitness() + 16);
  v17 = *(v16 + 64);
  v18 = swift_checkMetadataState();
  v17(a1, v18, v16);
  v15(v32, 0);

  v29(v32, &v33, TupleTypeMetadata);

  v19 = swift_modifyAtWritableKeyPath();
  v20 = *(swift_getAssociatedConformanceWitness() + 16);
  v21 = *(v20 + 64);
  v22 = swift_checkMetadataState();
  v21(a1, v22, v20);
  v19(v32, 0);

  v29(v32, &v33, TupleTypeMetadata);

  v23 = swift_modifyAtWritableKeyPath();
  v24 = *(swift_getAssociatedConformanceWitness() + 16);
  v25 = *(v24 + 64);
  v26 = swift_checkMetadataState();
  v25(a1, v26, v24);
  v23(v32, 0);

  return (*(v28 + 8))(&v33, TupleTypeMetadata);
}

uint64_t CRStruct_6.minEncodingVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v51 = a3;
  v4 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v37 = &v36 - v5;
  v49 = swift_getAssociatedTypeWitness();
  v41 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v40 = &v36 - v6;
  v52 = swift_getAssociatedTypeWitness();
  v44 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v43 = &v36 - v7;
  v53 = swift_getAssociatedTypeWitness();
  v47 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v46 = &v36 - v8;
  v54 = swift_getAssociatedTypeWitness();
  v48 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v10 = &v36 - v9;
  v55 = swift_getAssociatedTypeWitness();
  v11 = *(v55 - 8);
  v12 = MEMORY[0x1EEE9AC00](v55);
  v14 = &v36 - v13;
  (*(v4 + 112))(v64, a1, v4, v12);
  v45 = v64[8];
  v42 = v64[11];
  v39 = v64[14];
  v36 = v64[17];
  v15 = (*(*(v4 + 8) + 24))(a1);
  sub_1AE21FFB0(v15, &v63);

  v16 = v63;
  if (v63 > 2u)
  {
    goto LABEL_20;
  }

  swift_getAtKeyPath();
  v17 = v55;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(*(AssociatedConformanceWitness + 16) + 8) + 24))(&TupleTypeMetadata2, v17);
  (*(v11 + 8))(v14, v17);
  if (TupleTypeMetadata2 > v16)
  {
    v16 = TupleTypeMetadata2;
  }

  v63 = v16;
  if (TupleTypeMetadata2 > 2u)
  {
    goto LABEL_20;
  }

  swift_getAtKeyPath();
  v19 = v54;
  v20 = swift_getAssociatedConformanceWitness();
  (*(*(*(v20 + 16) + 8) + 24))(&TupleTypeMetadata2, v19);
  (*(v48 + 8))(v10, v19);
  if (TupleTypeMetadata2 > v16)
  {
    v16 = TupleTypeMetadata2;
  }

  v63 = v16;
  if (v16 > 2)
  {
    goto LABEL_20;
  }

  v21 = v46;
  swift_getAtKeyPath();
  v22 = v53;
  v23 = swift_getAssociatedConformanceWitness();
  (*(*(*(v23 + 16) + 8) + 24))(&TupleTypeMetadata2, v22);
  (*(v47 + 8))(v21, v22);
  if (TupleTypeMetadata2 > v16)
  {
    v16 = TupleTypeMetadata2;
  }

  v63 = v16;
  if (TupleTypeMetadata2 > 2u)
  {
    goto LABEL_20;
  }

  v24 = v43;
  swift_getAtKeyPath();
  v25 = v52;
  v26 = swift_getAssociatedConformanceWitness();
  (*(*(*(v26 + 16) + 8) + 24))(&TupleTypeMetadata2, v25);
  (*(v44 + 8))(v24, v25);
  if (TupleTypeMetadata2 > v16)
  {
    v16 = TupleTypeMetadata2;
  }

  v63 = v16;
  if (v16 >= 3)
  {
LABEL_20:
    v63 = v16;
LABEL_21:
    sub_1AE23DB8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v58 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v59 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v60 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v61 = swift_getTupleTypeMetadata2();
    sub_1AE23DB8C();
    v62 = swift_getTupleTypeMetadata2();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    result = (*(*(TupleTypeMetadata - 8) + 8))(v64, TupleTypeMetadata);
    goto LABEL_22;
  }

  v27 = v40;
  swift_getAtKeyPath();
  v28 = v49;
  v29 = swift_getAssociatedConformanceWitness();
  (*(*(*(v29 + 16) + 8) + 24))(&TupleTypeMetadata2, v28);
  (*(v41 + 8))(v27, v28);
  if (TupleTypeMetadata2 > v16)
  {
    v16 = TupleTypeMetadata2;
  }

  v63 = v16;
  if (TupleTypeMetadata2 > 2u)
  {
    goto LABEL_21;
  }

  v30 = v37;
  swift_getAtKeyPath();
  v31 = AssociatedTypeWitness;
  v32 = swift_getAssociatedConformanceWitness();
  (*(*(*(v32 + 16) + 8) + 24))(&v56, v31);
  sub_1AE23DB8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v58 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v59 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v60 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v61 = swift_getTupleTypeMetadata2();
  sub_1AE23DB8C();
  v62 = swift_getTupleTypeMetadata2();
  v33 = swift_getTupleTypeMetadata();
  (*(*(v33 - 8) + 8))(v64, v33);
  result = (*(v38 + 8))(v30, v31);
  if (v56 > v16)
  {
    LOBYTE(v16) = v56;
  }

LABEL_22:
  *v51 = v16;
  return result;
}