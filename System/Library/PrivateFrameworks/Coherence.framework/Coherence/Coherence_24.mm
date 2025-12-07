double TaggedValue_6<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = a8;
  v62 = a7;
  v61 = a6;
  v69 = a4;
  v70 = a5;
  v68 = a3;
  v72 = a1;
  v60 = *(*(a2 + 56) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v59 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(*(v9 + 48) - 8);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 40);
  v56 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 32);
  v67 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 + 24);
  v66 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v26 + 16);
  v65 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v31 = v27;
  *(&v31 + 1) = v22;
  *&v32 = v17;
  *(&v32 + 1) = v13;
  v75 = v32;
  v74 = v31;
  v54 = v33;
  v76 = v33;
  v77 = v34;
  v64 = v34;
  v36 = v35[5];
  v78 = v35[4];
  v79 = v36;
  v80 = v35[6];
  v37 = type metadata accessor for TaggedValue_6.TaggedEnum(0, &v74);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v54 - v39;
  (*(v41 + 16))(&v54 - v39, v71, v37, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v46 = v66;
        (*(v66 + 32))(v25, v40, v22);
        sub_1AE23CBAC();
        (*(v46 + 8))(v25, v22);
      }

      else
      {
        v52 = v67;
        (*(v67 + 32))(v20, v40, v17);
        sub_1AE23CBAC();
        (*(v52 + 8))(v20, v17);
      }
    }

    else
    {
      v51 = v65;
      (*(v65 + 32))(v30, v40, v27);
      sub_1AE23CBAC();
      (*(v51 + 8))(v30, v27);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload != 5)
      {
        (*(**(v40 + 1) + 80))(v73);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
        swift_dynamicCast();
        __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
        sub_1AE23CBAC();
        __swift_destroy_boxed_opaque_existential_1(&v74);

        return result;
      }

      v47 = v60;
      v48 = v59;
      v49 = v40;
      v50 = v64;
      (*(v60 + 32))(v59, v49, v64);
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v43 = v56;
        v44 = v55;
        (*(v56 + 32))(v55, v40, v13);
        sub_1AE23CBAC();
        (*(v43 + 8))(v44, v13);
        return result;
      }

      v47 = v58;
      v48 = v57;
      v53 = v40;
      v50 = v54;
      (*(v58 + 32))(v57, v53, v54);
    }

    sub_1AE23CBAC();
    (*(v47 + 8))(v48, v50);
  }

  return result;
}

void TaggedValue_7.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v133 = a2;
  v143[0] = a2;
  v143[1] = a3;
  v134 = a3;
  v137 = a4;
  v143[2] = a4;
  v143[3] = a5;
  v135 = a5;
  v138 = a6;
  v143[4] = a6;
  v143[5] = a7;
  v136 = a7;
  v139 = a8;
  v143[6] = a8;
  v143[7] = a10;
  v126 = a10;
  v127 = a11;
  v143[8] = a11;
  v143[9] = a12;
  v129 = a12;
  v128 = a13;
  v143[10] = a13;
  v143[11] = a14;
  v131 = a14;
  v130 = a15;
  v143[12] = a15;
  v143[13] = a16;
  v132 = a16;
  v18 = type metadata accessor for TaggedValue_7.TaggedEnum(0, v143);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v122 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v122 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v122 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v122 - v30);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v122 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v43 = &v122 - v42;
  v44 = *(a1 + 72);
  if (!v44)
  {
    sub_1ADE42E40(v36, v37, v38);
    swift_allocError();
    *v53 = 0xD000000000000017;
    *(v53 + 8) = 0x80000001AE25FB70;
    *(v53 + 16) = 0;
    swift_willThrow();

    return;
  }

  v123 = v41;
  v122 = v40;
  v124 = v36;
  v125 = v39;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  v141 = a1;
  *(inited + 16) = a1;
  v46 = *(v44 + 16);
  v140 = a9;
  if ((~v46 & 0xF000000000000007) != 0 && ((v46 >> 59) & 0x1E | (v46 >> 2) & 1) == 0xB)
  {
    v47 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v47 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v48 = v47[2];
  if (v48 > 2)
  {
    if (v48 <= 4)
    {
      v49 = v141;
      if (v48 == 3)
      {
        v69 = *(v44 + 16);
        if ((~v69 & 0xF000000000000007) != 0)
        {
          v71 = v140;
          if (((v69 >> 59) & 0x1E | (v69 >> 2) & 1) == 0xB)
          {
            v70 = *((v69 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            v70 = &unk_1EB5B9140;
          }
        }

        else
        {
          v70 = &unk_1EB5B9140;
          v71 = v140;
        }

        swift_beginAccess();
        v91 = v70[3];
        if (v91)
        {
          v92 = v91;
        }

        else
        {
          type metadata accessor for Proto_Value._StorageClass();
          v92 = swift_initStaticObject();
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();

        v93 = sub_1ADE0262C(v92, v49);
        v94 = v142;
        (*(*(*(v128 + 8) + 8) + 8))(v93);
        if (!v94)
        {

          v95 = v124;
          swift_storeEnumTagMultiPayload();
          (*(v125 + 32))(v71, v28, v95);
          return;
        }
      }

      else
      {
        v50 = *(v44 + 16);
        if ((~v50 & 0xF000000000000007) != 0)
        {
          v52 = v140;
          if (((v50 >> 59) & 0x1E | (v50 >> 2) & 1) == 0xB)
          {
            v51 = *((v50 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            v51 = &unk_1EB5B9140;
          }
        }

        else
        {
          v51 = &unk_1EB5B9140;
          v52 = v140;
        }

        swift_beginAccess();
        v101 = v51[3];
        if (v101)
        {
          v102 = v101;
        }

        else
        {
          type metadata accessor for Proto_Value._StorageClass();
          v102 = swift_initStaticObject();
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();

        v103 = sub_1ADE0262C(v102, v49);
        v104 = v142;
        (*(*(*(v131 + 8) + 8) + 8))(v103);
        if (!v104)
        {

          v105 = v124;
          swift_storeEnumTagMultiPayload();
          (*(v125 + 32))(v52, v25, v105);
          return;
        }
      }

      goto LABEL_89;
    }

    v54 = v141;
    if (v48 != 5)
    {
      if (v48 == 6)
      {
        v60 = *(v44 + 16);
        if ((~v60 & 0xF000000000000007) != 0)
        {
          v62 = v140;
          if (((v60 >> 59) & 0x1E | (v60 >> 2) & 1) == 0xB)
          {
            v61 = *((v60 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            v61 = &unk_1EB5B9140;
          }
        }

        else
        {
          v61 = &unk_1EB5B9140;
          v62 = v140;
        }

        swift_beginAccess();
        v106 = v61[3];
        if (v106)
        {
          v107 = v106;
        }

        else
        {
          type metadata accessor for Proto_Value._StorageClass();
          v107 = swift_initStaticObject();
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();

        v108 = sub_1ADE0262C(v107, v54);
        v109 = v123;
        v110 = v142;
        (*(*(*(v132 + 8) + 8) + 8))(v108);
        if (!v110)
        {

          v111 = v124;
          swift_storeEnumTagMultiPayload();
          (*(v125 + 32))(v62, v109, v111);
          return;
        }

        goto LABEL_89;
      }

      goto LABEL_23;
    }

    v72 = *(v44 + 16);
    if ((~v72 & 0xF000000000000007) != 0)
    {
      v74 = v140;
      if (((v72 >> 59) & 0x1E | (v72 >> 2) & 1) == 0xB)
      {
        v73 = *((v72 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v73 = &unk_1EB5B9140;
      }
    }

    else
    {
      v73 = &unk_1EB5B9140;
      v74 = v140;
    }

    swift_beginAccess();
    v96 = v73[3];
    if (v96)
    {
      v97 = v96;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v97 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v98 = sub_1ADE0262C(v97, v54);
    v99 = v142;
    (*(*(*(v130 + 8) + 8) + 8))(v98);
    if (!v99)
    {

      v100 = v124;
      swift_storeEnumTagMultiPayload();
      (*(v125 + 32))(v74, v22, v100);
      return;
    }

    goto LABEL_89;
  }

  if (!v48)
  {
    v63 = *(v44 + 16);
    if ((~v63 & 0xF000000000000007) != 0)
    {
      v65 = v140;
      v66 = v141;
      if (((v63 >> 59) & 0x1E | (v63 >> 2) & 1) == 0xB)
      {
        v64 = *((v63 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v64 = &unk_1EB5B9140;
      }
    }

    else
    {
      v64 = &unk_1EB5B9140;
      v65 = v140;
      v66 = v141;
    }

    swift_beginAccess();
    v86 = v64[3];
    if (v86)
    {
      v87 = v86;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v87 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v88 = sub_1ADE0262C(v87, v66);
    v89 = v142;
    (*(*(*(v126 + 8) + 8) + 8))(v88);

    if (!v89)
    {

      v90 = v124;
      swift_storeEnumTagMultiPayload();
      (*(v125 + 32))(v65, v43, v90);
      return;
    }

    goto LABEL_58;
  }

  if (v48 == 1)
  {
    v75 = *(v44 + 16);
    if ((~v75 & 0xF000000000000007) != 0)
    {
      v77 = v140;
      if (((v75 >> 59) & 0x1E | (v75 >> 2) & 1) == 0xB)
      {
        v76 = *((v75 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v76 = &unk_1EB5B9140;
      }
    }

    else
    {
      v76 = &unk_1EB5B9140;
      v77 = v140;
    }

    swift_beginAccess();
    v117 = v76[3];
    if (v117)
    {
      v118 = v117;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v118 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();
    v119 = v141;

    v120 = sub_1ADE0262C(v118, v119);
    v121 = v142;
    (*(*(*(v127 + 8) + 8) + 8))(v120);

    if (!v121)
    {

      v83 = v124;
      swift_storeEnumTagMultiPayload();
      v84 = *(v125 + 32);
      v85 = v77;
      v116 = v34;
      goto LABEL_98;
    }

LABEL_58:

    return;
  }

  v54 = v141;
  if (v48 != 2)
  {
LABEL_23:
    v67 = *(v44 + 16);
    if ((~v67 & 0xF000000000000007) != 0 && ((v67 >> 59) & 0x1E | (v67 >> 2) & 1) == 0xB)
    {
      v68 = *((v67 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v68 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    v78 = v68[3];
    if (v78)
    {
      v79 = v78;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v79 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v80 = sub_1ADE0262C(v79, v54);
    v81 = v142;
    AnyCRValue.init(from:)(v80, &v144);

    if (v81)
    {
      goto LABEL_58;
    }

    v82 = v144;
    v31 = v122;
    *v122 = v48;
    v31[1] = v82;
    v83 = v124;
    swift_storeEnumTagMultiPayload();
    v84 = *(v125 + 32);
    v85 = v140;
    goto LABEL_91;
  }

  v55 = *(v44 + 16);
  if ((~v55 & 0xF000000000000007) != 0)
  {
    v57 = v140;
    v58 = v137;
    v59 = v129;
    if (((v55 >> 59) & 0x1E | (v55 >> 2) & 1) == 0xB)
    {
      v56 = *((v55 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v56 = &unk_1EB5B9140;
    }
  }

  else
  {
    v56 = &unk_1EB5B9140;
    v57 = v140;
    v58 = v137;
    v59 = v129;
  }

  swift_beginAccess();
  v112 = v56[3];
  if (v112)
  {
    v113 = v112;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v113 = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  v114 = sub_1ADE0262C(v113, v54);
  v115 = v142;
  (*(*(*(v59 + 8) + 8) + 8))(v114, v58);
  if (v115)
  {
LABEL_89:

    return;
  }

  v83 = v124;
  swift_storeEnumTagMultiPayload();
  v84 = *(v125 + 32);
  v85 = v57;
LABEL_91:
  v116 = v31;
LABEL_98:
  v84(v85, v116, v83);
}

double TaggedValue_7.encode(to:)(uint64_t a1, uint64_t a2)
{
  v214 = *(*(a2 + 64) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v213 = &v190 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = *(*(v4 + 56) - 8);
  MEMORY[0x1EEE9AC00](v5);
  v210 = &v190 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = *(*(v7 + 48) - 8);
  MEMORY[0x1EEE9AC00](v8);
  v207 = &v190 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 40);
  v205 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v204 = &v190 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 32);
  v203 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v202 = &v190 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = *(*(v17 + 24) - 8);
  MEMORY[0x1EEE9AC00](v18);
  v199 = &v190 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 16);
  v197 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v198 = &v190 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v24[10];
  v25 = v24[11];
  v28 = v24[12];
  v27 = v24[13];
  v30 = v24[14];
  v29 = v24[15];
  v215 = v31;
  *&v32 = v31;
  *(&v32 + 1) = *v33;
  *&v34 = v21;
  v201 = v35;
  *(&v34 + 1) = v35;
  v196 = v36;
  *&v37 = v36;
  v206 = v11;
  *(&v37 + 1) = v11;
  v216 = v37;
  v224[1] = v37;
  v217 = v34;
  v224[0] = v34;
  v209 = v38;
  *&v34 = v38;
  v212 = v39;
  *(&v34 + 1) = v39;
  v219 = v32;
  v224[3] = v32;
  v218 = v34;
  v224[2] = v34;
  v221 = v26;
  v225 = v26;
  v226 = v25;
  v220 = v25;
  v227 = v28;
  v228 = v27;
  v229 = v30;
  v230 = v29;
  v40 = type metadata accessor for TaggedValue_7.TaggedEnum(0, v224);
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = (&v190 - v42);
  v44 = v231;
  v48 = sub_1ADE71C08(v45, v46, v47);
  if (v44)
  {
    return result;
  }

  v190 = v21;
  v50 = v221;
  v191 = v28;
  v192 = v27;
  v193 = v30;
  v194 = v29;
  v231 = v48;
  v51 = a1;
  v195 = 0;
  (*(v41 + 16))(v43, v222, v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    v58 = v50;
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        (*(v214 + 32))(v213, v43, v215);
        v67 = v231;
        swift_beginAccess();
        v68 = *(*(v67 + 24) + 16);
        if ((~v68 & 0xF000000000000007) != 0 && ((v68 >> 59) & 0x1E | (v68 >> 2) & 1) == 0xB)
        {
          inited = *((v68 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          inited = swift_initStaticObject();
        }

        v116 = v194;
        v117 = v193;
        v118 = v192;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          inited = sub_1ADDE5178(inited);
        }

        swift_beginAccess();
        *(inited + 16) = 6;
        sub_1AE1B7530(inited);
        v119 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v119);
        v120 = v216;
        *(&v190 - 8) = v217;
        *(&v190 - 7) = v120;
        v121 = v219;
        *(&v190 - 6) = v218;
        *(&v190 - 5) = v121;
        v122 = v220;
        *(&v190 - 8) = v58;
        *(&v190 - 7) = v122;
        *(&v190 - 6) = v191;
        *(&v190 - 5) = v118;
        *(&v190 - 4) = v117;
        *(&v190 - 3) = v116;
        v123 = v213;
        *(&v190 - 2) = v213;
        *(&v190 - 1) = a1;
        v124 = v195;
        v125 = sub_1ADE6B938(sub_1ADFFACF8);
        if (v124)
        {
        }

        else
        {
          v175 = v125;
          swift_beginAccess();
          v176 = *(*(v67 + 24) + 16);
          if ((~v176 & 0xF000000000000007) != 0 && ((v176 >> 59) & 0x1E | (v176 >> 2) & 1) == 0xB)
          {
            v177 = *((v176 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v177 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v177 = sub_1ADDE5178(v177);
          }

          swift_beginAccess();
          *(v177 + 24) = v175;

          sub_1AE1B7530(v177);
          swift_endAccess();
        }

        (*(v214 + 8))(v123, v215);
      }

      else
      {
        v81 = *v43;
        v80 = v43[1];
        v82 = v231;
        swift_beginAccess();
        v83 = *(*(v82 + 24) + 16);
        if ((~v83 & 0xF000000000000007) != 0 && ((v83 >> 59) & 0x1E | (v83 >> 2) & 1) == 0xB)
        {
          v84 = *((v83 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v84 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v84 = sub_1ADDE5178(v84);
        }

        swift_beginAccess();
        *(v84 + 16) = v81;
        sub_1AE1B7530(v84);
        swift_endAccess();
        v161 = *(a1 + 112);
        v160 = *(a1 + 120);
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        v162 = v195;
        v163 = (*(*v80 + 152))(a1);
        if (v162)
        {
        }

        else
        {
          v186 = sub_1ADE71C08(v163, v164, v165);
          swift_beginAccess();
          v187 = *(v186 + 24);
          *(v51 + 112) = v161;

          *(v51 + 120) = v160;

          swift_beginAccess();
          v188 = *(*(v82 + 24) + 16);
          if ((~v188 & 0xF000000000000007) != 0 && ((v188 >> 59) & 0x1E | (v188 >> 2) & 1) == 0xB)
          {
            v189 = *((v188 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v189 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v189 = sub_1ADDE5178(v189);
          }

          swift_beginAccess();
          *(v189 + 24) = v187;

          sub_1AE1B7530(v189);
          swift_endAccess();
        }
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      (*(v208 + 32))(v207, v43, v209);
      v59 = v231;
      swift_beginAccess();
      v60 = *(*(v59 + 24) + 16);
      v61 = v191;
      if ((~v60 & 0xF000000000000007) != 0 && ((v60 >> 59) & 0x1E | (v60 >> 2) & 1) == 0xB)
      {
        v62 = *((v60 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v62 = swift_initStaticObject();
      }

      v96 = v194;
      v97 = v193;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v62 = sub_1ADDE5178(v62);
      }

      swift_beginAccess();
      *(v62 + 16) = 4;
      sub_1AE1B7530(v62);
      v98 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v98);
      v99 = v216;
      *(&v190 - 8) = v217;
      *(&v190 - 7) = v99;
      v100 = v219;
      *(&v190 - 6) = v218;
      *(&v190 - 5) = v100;
      v101 = v220;
      *(&v190 - 8) = v58;
      *(&v190 - 7) = v101;
      v102 = v192;
      *(&v190 - 6) = v61;
      *(&v190 - 5) = v102;
      *(&v190 - 4) = v97;
      *(&v190 - 3) = v96;
      v103 = v207;
      *(&v190 - 2) = v207;
      *(&v190 - 1) = a1;
      v104 = v195;
      v105 = sub_1ADE6B938(sub_1ADFFAD88);
      if (v104)
      {
      }

      else
      {
        v169 = v105;
        swift_beginAccess();
        v170 = *(*(v59 + 24) + 16);
        if ((~v170 & 0xF000000000000007) != 0 && ((v170 >> 59) & 0x1E | (v170 >> 2) & 1) == 0xB)
        {
          v171 = *((v170 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v171 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v171 = sub_1ADDE5178(v171);
        }

        swift_beginAccess();
        *(v171 + 24) = v169;

        sub_1AE1B7530(v171);
        swift_endAccess();
      }

      (*(v208 + 8))(v103, v209);
    }

    else
    {
      (*(v211 + 32))(v210, v43, v212);
      v73 = v231;
      swift_beginAccess();
      v74 = *(*(v73 + 24) + 16);
      v75 = v191;
      if ((~v74 & 0xF000000000000007) != 0 && ((v74 >> 59) & 0x1E | (v74 >> 2) & 1) == 0xB)
      {
        v76 = *((v74 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v76 = swift_initStaticObject();
      }

      v137 = v194;
      v138 = v193;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v76 = sub_1ADDE5178(v76);
      }

      swift_beginAccess();
      *(v76 + 16) = 5;
      sub_1AE1B7530(v76);
      v139 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v139);
      v140 = v216;
      *(&v190 - 8) = v217;
      *(&v190 - 7) = v140;
      v141 = v219;
      *(&v190 - 6) = v218;
      *(&v190 - 5) = v141;
      v142 = v220;
      *(&v190 - 8) = v58;
      *(&v190 - 7) = v142;
      v143 = v192;
      *(&v190 - 6) = v75;
      *(&v190 - 5) = v143;
      *(&v190 - 4) = v138;
      *(&v190 - 3) = v137;
      v144 = v210;
      *(&v190 - 2) = v210;
      *(&v190 - 1) = a1;
      v145 = v195;
      v146 = sub_1ADE6B938(sub_1ADFFAD40);
      if (v145)
      {
      }

      else
      {
        v180 = v146;
        swift_beginAccess();
        v181 = *(*(v73 + 24) + 16);
        if ((~v181 & 0xF000000000000007) != 0 && ((v181 >> 59) & 0x1E | (v181 >> 2) & 1) == 0xB)
        {
          v182 = *((v181 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v182 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v182 = sub_1ADDE5178(v182);
        }

        swift_beginAccess();
        *(v182 + 24) = v180;

        sub_1AE1B7530(v182);
        swift_endAccess();
      }

      (*(v211 + 8))(v144, v212);
    }
  }

  else
  {
    v53 = v50;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v54 = v197;
        (*(v197 + 32))(v198, v43, v190);
        v55 = v231;
        swift_beginAccess();
        v56 = *(*(v55 + 24) + 16);
        if ((~v56 & 0xF000000000000007) != 0 && ((v56 >> 59) & 0x1E | (v56 >> 2) & 1) == 0xB)
        {
          v57 = *((v56 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v57 = swift_initStaticObject();
        }

        v85 = v194;
        v86 = v193;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v57 = sub_1ADDE5178(v57);
        }

        swift_beginAccess();
        *(v57 + 16) = 0;
        v87 = v231;
        sub_1AE1B7530(v57);
        v88 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v88);
        v89 = v216;
        *(&v190 - 8) = v217;
        *(&v190 - 7) = v89;
        v90 = v219;
        *(&v190 - 6) = v218;
        *(&v190 - 5) = v90;
        v91 = v220;
        *(&v190 - 8) = v53;
        *(&v190 - 7) = v91;
        v92 = v192;
        *(&v190 - 6) = v191;
        *(&v190 - 5) = v92;
        *(&v190 - 4) = v86;
        *(&v190 - 3) = v85;
        v93 = v198;
        *(&v190 - 2) = v198;
        *(&v190 - 1) = a1;
        v94 = v195;
        v95 = sub_1ADE6B938(sub_1ADFFAEA8);
        if (v94)
        {

          (*(v54 + 8))(v93, v190);
        }

        else
        {
          v166 = v95;
          swift_beginAccess();
          v167 = *(*(v87 + 24) + 16);
          if ((~v167 & 0xF000000000000007) != 0 && ((v167 >> 59) & 0x1E | (v167 >> 2) & 1) == 0xB)
          {
            v168 = *((v167 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v168 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v168 = sub_1ADDE5178(v168);
          }

          swift_beginAccess();
          *(v168 + 24) = v166;

          sub_1AE1B7530(v168);
          swift_endAccess();

          (*(v197 + 8))(v93, v190);
        }

        return result;
      }

      (*(v200 + 32))(v199, v43, v201);
      v70 = v231;
      swift_beginAccess();
      v71 = *(*(v70 + 24) + 16);
      if ((~v71 & 0xF000000000000007) != 0 && ((v71 >> 59) & 0x1E | (v71 >> 2) & 1) == 0xB)
      {
        v72 = *((v71 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v72 = swift_initStaticObject();
      }

      v126 = v194;
      v127 = v191;
      v128 = v231;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v72 = sub_1ADDE5178(v72);
      }

      swift_beginAccess();
      *(v72 + 16) = 1;
      sub_1AE1B7530(v72);
      v129 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v129);
      v130 = v216;
      *(&v190 - 8) = v217;
      *(&v190 - 7) = v130;
      v131 = v219;
      *(&v190 - 6) = v218;
      *(&v190 - 5) = v131;
      v132 = v220;
      *(&v190 - 8) = v53;
      *(&v190 - 7) = v132;
      v133 = v192;
      *(&v190 - 6) = v127;
      *(&v190 - 5) = v133;
      *(&v190 - 4) = v193;
      *(&v190 - 3) = v126;
      v134 = v199;
      *(&v190 - 2) = v199;
      *(&v190 - 1) = a1;
      v135 = v195;
      v136 = sub_1ADE6B938(sub_1ADFFAE60);
      if (v135)
      {
      }

      else
      {
        swift_beginAccess();
        v178 = *(*(v128 + 24) + 16);
        if ((~v178 & 0xF000000000000007) != 0 && ((v178 >> 59) & 0x1E | (v178 >> 2) & 1) == 0xB)
        {
          v179 = *((v178 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v179 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v179 = sub_1ADDE5178(v179);
        }

        swift_beginAccess();
        *(v179 + 24) = v136;

        sub_1AE1B7530(v179);
        swift_endAccess();
      }

      v157 = *(v200 + 8);
      v158 = v134;
      v159 = &v223;
LABEL_119:
      v157(v158, *(v159 - 32));
      return result;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v63 = v196;
      (*(v203 + 32))(v202, v43, v196);
      v64 = v231;
      swift_beginAccess();
      v65 = *(*(v64 + 24) + 16);
      if ((~v65 & 0xF000000000000007) != 0 && ((v65 >> 59) & 0x1E | (v65 >> 2) & 1) == 0xB)
      {
        v66 = *((v65 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v66 = swift_initStaticObject();
      }

      v106 = v194;
      v107 = v193;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v66 = sub_1ADDE5178(v66);
      }

      swift_beginAccess();
      *(v66 + 16) = 2;
      sub_1AE1B7530(v66);
      v108 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v108);
      v109 = v216;
      *(&v190 - 8) = v217;
      *(&v190 - 7) = v109;
      v110 = v219;
      *(&v190 - 6) = v218;
      *(&v190 - 5) = v110;
      v111 = v220;
      *(&v190 - 8) = v53;
      *(&v190 - 7) = v111;
      v112 = v192;
      *(&v190 - 6) = v191;
      *(&v190 - 5) = v112;
      *(&v190 - 4) = v107;
      *(&v190 - 3) = v106;
      v113 = v202;
      *(&v190 - 2) = v202;
      *(&v190 - 1) = a1;
      v114 = v195;
      v115 = sub_1ADE6B938(sub_1ADFFAE18);
      if (v114)
      {
      }

      else
      {
        v172 = v115;
        swift_beginAccess();
        v173 = *(*(v64 + 24) + 16);
        if ((~v173 & 0xF000000000000007) != 0 && ((v173 >> 59) & 0x1E | (v173 >> 2) & 1) == 0xB)
        {
          v174 = *((v173 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v174 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v174 = sub_1ADDE5178(v174);
        }

        swift_beginAccess();
        *(v174 + 24) = v172;

        sub_1AE1B7530(v174);
        swift_endAccess();
      }

      (*(v203 + 8))(v113, v63);
    }

    else
    {
      (*(v205 + 32))(v204, v43, v206);
      v77 = v231;
      swift_beginAccess();
      v78 = *(*(v77 + 24) + 16);
      if ((~v78 & 0xF000000000000007) != 0 && ((v78 >> 59) & 0x1E | (v78 >> 2) & 1) == 0xB)
      {
        v79 = *((v78 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v79 = swift_initStaticObject();
      }

      v147 = v194;
      v148 = v193;
      v149 = v192;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v79 = sub_1ADDE5178(v79);
      }

      swift_beginAccess();
      *(v79 + 16) = 3;
      sub_1AE1B7530(v79);
      v150 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v150);
      v151 = v216;
      *(&v190 - 8) = v217;
      *(&v190 - 7) = v151;
      v152 = v219;
      *(&v190 - 6) = v218;
      *(&v190 - 5) = v152;
      v153 = v220;
      *(&v190 - 8) = v53;
      *(&v190 - 7) = v153;
      *(&v190 - 6) = v191;
      *(&v190 - 5) = v149;
      *(&v190 - 4) = v148;
      *(&v190 - 3) = v147;
      v154 = v204;
      *(&v190 - 2) = v204;
      *(&v190 - 1) = a1;
      v155 = v195;
      v156 = sub_1ADE6B938(sub_1ADFFADD0);
      if (v155)
      {

        v157 = *(v205 + 8);
        v158 = v154;
        v159 = v224 + 8;
        goto LABEL_119;
      }

      swift_beginAccess();
      v183 = *(*(v77 + 24) + 16);
      v184 = v206;
      if ((~v183 & 0xF000000000000007) != 0 && ((v183 >> 59) & 0x1E | (v183 >> 2) & 1) == 0xB)
      {
        v185 = *((v183 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v185 = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v185 = sub_1ADDE5178(v185);
      }

      swift_beginAccess();
      *(v185 + 24) = v156;

      sub_1AE1B7530(v185);
      swift_endAccess();

      (*(v205 + 8))(v154, v184);
    }
  }

  return result;
}

double TaggedValue_7<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v79 = a8;
  v78 = a7;
  v77 = a6;
  v75 = a5;
  v74 = a4;
  v73 = a3;
  v82 = a1;
  v76 = *(*(a2 + 64) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v72 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(*(v10 + 56) - 8);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 48);
  v68 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v67 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 40);
  v66 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v65 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 + 32);
  v64 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v63 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 + 24);
  v62 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v30 + 16);
  v61 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v35 + 120);
  *&v37 = v31;
  *(&v37 + 1) = v26;
  *&v38 = v22;
  *(&v38 + 1) = v18;
  v85 = v38;
  v84 = v37;
  v86 = v14;
  v87 = v39;
  v71 = v39;
  v80 = v40;
  v88 = v40;
  v41 = *(v35 + 88);
  v89 = *(v35 + 72);
  v90 = v41;
  v91 = *(v35 + 104);
  v92 = v36;
  v42 = type metadata accessor for TaggedValue_7.TaggedEnum(0, &v84);
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v60 - v44;
  (*(v46 + 16))(&v60 - v44, v81, v42, v43);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v57 = v62;
        (*(v62 + 32))(v29, v45, v26);
        sub_1AE23CBAC();
        (*(v57 + 8))(v29, v26);
      }

      else
      {
        v48 = v61;
        (*(v61 + 32))(v34, v45, v31);
        sub_1AE23CBAC();
        (*(v48 + 8))(v34, v31);
      }

      return result;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v52 = v64;
      v53 = v63;
      (*(v64 + 32))(v63, v45, v22);
      sub_1AE23CBAC();
      (*(v52 + 8))(v53, v22);
      return result;
    }

    v58 = v66;
    v59 = v65;
    (*(v66 + 32))(v65, v45, v18);
LABEL_15:
    sub_1AE23CBAC();
    (*(v58 + 8))(v59, v18);
    return result;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v50 = v68;
      v51 = v67;
      (*(v68 + 32))(v67, v45, v14);
      sub_1AE23CBAC();
      (*(v50 + 8))(v51, v14);
      return result;
    }

    v58 = v70;
    v59 = v69;
    v18 = v71;
    (*(v70 + 32))(v69, v45, v71);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v54 = v76;
    v55 = v72;
    v56 = v80;
    (*(v76 + 32))(v72, v45, v80);
    sub_1AE23CBAC();
    (*(v54 + 8))(v55, v56);
  }

  else
  {
    (*(**(v45 + 1) + 80))(v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
    swift_dynamicCast();
    __swift_project_boxed_opaque_existential_1(&v84, *(&v85 + 1));
    sub_1AE23CBAC();
    __swift_destroy_boxed_opaque_existential_1(&v84);
  }

  return result;
}

void TaggedValue_8.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v147 = a2;
  v157[0] = a2;
  v157[1] = a3;
  v150 = a3;
  v148 = a4;
  v157[2] = a4;
  v157[3] = a5;
  v152 = a5;
  v149 = a6;
  v157[4] = a6;
  v157[5] = a7;
  v153 = a7;
  v151 = a8;
  v157[6] = a8;
  v157[7] = a10;
  v146 = a10;
  v138 = a11;
  v157[8] = a11;
  v157[9] = a12;
  v140 = a12;
  v139 = a13;
  v157[10] = a13;
  v157[11] = a14;
  v143 = a14;
  v141 = a15;
  v157[12] = a15;
  v157[13] = a16;
  v144 = a16;
  v142 = a17;
  v157[14] = a17;
  v157[15] = a18;
  v145 = a18;
  v20 = type metadata accessor for TaggedValue_8.TaggedEnum(0, v157);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v132 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v132 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v132 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v132 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v132 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v132 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v48 = &v132 - v47;
  v49 = *(a1 + 72);
  if (!v49)
  {
    sub_1ADE42E40(v41, v42, v43);
    swift_allocError();
    *v58 = 0xD000000000000017;
    *(v58 + 8) = 0x80000001AE25FB70;
    *(v58 + 16) = 0;
    swift_willThrow();

    return;
  }

  v134 = v24;
  v135 = v46;
  v133 = v45;
  v136 = v41;
  v137 = v44;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  v155 = a1;
  *(inited + 16) = a1;
  v51 = *(v49 + 16);
  v154 = a9;
  if ((~v51 & 0xF000000000000007) != 0 && ((v51 >> 59) & 0x1E | (v51 >> 2) & 1) == 0xB)
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v52 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v53 = v52[2];
  if (v53 > 3)
  {
    if (v53 > 5)
    {
      if (v53 == 6)
      {
        v86 = *(v49 + 16);
        if ((~v86 & 0xF000000000000007) != 0)
        {
          v66 = v154;
          v88 = v155;
          v89 = v156;
          if (((v86 >> 59) & 0x1E | (v86 >> 2) & 1) == 0xB)
          {
            v87 = *((v86 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            v87 = &unk_1EB5B9140;
          }
        }

        else
        {
          v87 = &unk_1EB5B9140;
          v66 = v154;
          v88 = v155;
          v89 = v156;
        }

        swift_beginAccess();
        v106 = v87[3];
        if (v106)
        {
          v107 = v106;
        }

        else
        {
          type metadata accessor for Proto_Value._StorageClass();
          v107 = swift_initStaticObject();
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();

        v108 = sub_1ADE0262C(v107, v88);
        v33 = v134;
        (*(*(*(v142 + 8) + 8) + 8))(v108);
        if (!v89)
        {
          goto LABEL_102;
        }
      }

      else
      {
        if (v53 != 7)
        {
LABEL_32:
          v90 = *(v49 + 16);
          if ((~v90 & 0xF000000000000007) != 0)
          {
            v92 = v155;
            v93 = v156;
            if (((v90 >> 59) & 0x1E | (v90 >> 2) & 1) == 0xB)
            {
              v91 = *((v90 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              v91 = &unk_1EB5B9140;
            }
          }

          else
          {
            v91 = &unk_1EB5B9140;
            v92 = v155;
            v93 = v156;
          }

          swift_beginAccess();
          v126 = v91[3];
          if (v126)
          {
            v127 = v126;
          }

          else
          {
            type metadata accessor for Proto_Value._StorageClass();
            v127 = swift_initStaticObject();
          }

          type metadata accessor for CRDecoder();
          swift_allocObject();

          v128 = sub_1ADE0262C(v127, v92);
          AnyCRValue.init(from:)(v128, &v158);

          if (v93)
          {
            goto LABEL_85;
          }

          v129 = v158;
          v130 = v133;
          *v133 = v53;
          v130[1] = v129;
          v131 = v136;
          swift_storeEnumTagMultiPayload();
          (*(v137 + 32))(v154, v130, v131);
          return;
        }

        v68 = *(v49 + 16);
        if ((~v68 & 0xF000000000000007) != 0)
        {
          v66 = v154;
          v70 = v155;
          v71 = v156;
          if (((v68 >> 59) & 0x1E | (v68 >> 2) & 1) == 0xB)
          {
            v69 = *((v68 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            v69 = &unk_1EB5B9140;
          }
        }

        else
        {
          v69 = &unk_1EB5B9140;
          v66 = v154;
          v70 = v155;
          v71 = v156;
        }

        swift_beginAccess();
        v122 = v69[3];
        if (v122)
        {
          v123 = v122;
        }

        else
        {
          type metadata accessor for Proto_Value._StorageClass();
          v123 = swift_initStaticObject();
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();

        v124 = sub_1ADE0262C(v123, v70);
        v33 = v135;
        (*(*(*(v145 + 8) + 8) + 8))(v124);
        if (!v71)
        {
LABEL_102:

          v125 = v136;
          swift_storeEnumTagMultiPayload();
          (*(v137 + 32))(v66, v33, v125);
          return;
        }
      }
    }

    else if (v53 == 4)
    {
      v77 = *(v49 + 16);
      if ((~v77 & 0xF000000000000007) != 0)
      {
        v79 = v155;
        v80 = v156;
        if (((v77 >> 59) & 0x1E | (v77 >> 2) & 1) == 0xB)
        {
          v78 = *((v77 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v78 = &unk_1EB5B9140;
        }
      }

      else
      {
        v78 = &unk_1EB5B9140;
        v79 = v155;
        v80 = v156;
      }

      swift_beginAccess();
      v98 = v78[3];
      if (v98)
      {
        v99 = v98;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v99 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v100 = sub_1ADE0262C(v99, v79);
      (*(*(*(v141 + 8) + 8) + 8))(v100);
      if (!v80)
      {

        v101 = v136;
        swift_storeEnumTagMultiPayload();
        (*(v137 + 32))(v154, v30, v101);
        return;
      }
    }

    else
    {
      v59 = *(v49 + 16);
      if ((~v59 & 0xF000000000000007) != 0)
      {
        v61 = v154;
        v62 = v155;
        v63 = v156;
        if (((v59 >> 59) & 0x1E | (v59 >> 2) & 1) == 0xB)
        {
          v60 = *((v59 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v60 = &unk_1EB5B9140;
        }
      }

      else
      {
        v60 = &unk_1EB5B9140;
        v61 = v154;
        v62 = v155;
        v63 = v156;
      }

      swift_beginAccess();
      v114 = v60[3];
      if (v114)
      {
        v115 = v114;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v115 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v116 = sub_1ADE0262C(v115, v62);
      (*(*(*(v144 + 8) + 8) + 8))(v116);
      if (!v63)
      {

        v117 = v136;
        swift_storeEnumTagMultiPayload();
        (*(v137 + 32))(v61, v27, v117);
        return;
      }
    }

LABEL_101:

    return;
  }

  if (v53 > 1)
  {
    if (v53 == 2)
    {
      v81 = *(v49 + 16);
      if ((~v81 & 0xF000000000000007) != 0)
      {
        v83 = v154;
        v84 = v155;
        v85 = v156;
        if (((v81 >> 59) & 0x1E | (v81 >> 2) & 1) == 0xB)
        {
          v82 = *((v81 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v82 = &unk_1EB5B9140;
        }
      }

      else
      {
        v82 = &unk_1EB5B9140;
        v83 = v154;
        v84 = v155;
        v85 = v156;
      }

      swift_beginAccess();
      v102 = v82[3];
      if (v102)
      {
        v103 = v102;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v103 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v104 = sub_1ADE0262C(v103, v84);
      (*(*(*(v139 + 8) + 8) + 8))(v104);
      if (!v85)
      {

        v105 = v136;
        swift_storeEnumTagMultiPayload();
        (*(v137 + 32))(v83, v36, v105);
        return;
      }
    }

    else
    {
      v64 = *(v49 + 16);
      if ((~v64 & 0xF000000000000007) != 0)
      {
        v66 = v154;
        v67 = v155;
        if (((v64 >> 59) & 0x1E | (v64 >> 2) & 1) == 0xB)
        {
          v65 = *((v64 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v65 = &unk_1EB5B9140;
        }
      }

      else
      {
        v65 = &unk_1EB5B9140;
        v66 = v154;
        v67 = v155;
      }

      swift_beginAccess();
      v118 = v65[3];
      if (v118)
      {
        v119 = v118;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v119 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v120 = sub_1ADE0262C(v119, v67);
      v121 = v156;
      (*(*(*(v143 + 8) + 8) + 8))(v120);
      if (!v121)
      {
        goto LABEL_102;
      }
    }

    goto LABEL_101;
  }

  if (!v53)
  {
    v72 = *(v49 + 16);
    if ((~v72 & 0xF000000000000007) != 0)
    {
      v74 = v154;
      v75 = v155;
      v76 = v156;
      if (((v72 >> 59) & 0x1E | (v72 >> 2) & 1) == 0xB)
      {
        v73 = *((v72 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v73 = &unk_1EB5B9140;
      }
    }

    else
    {
      v73 = &unk_1EB5B9140;
      v74 = v154;
      v75 = v155;
      v76 = v156;
    }

    swift_beginAccess();
    v94 = v73[3];
    if (v94)
    {
      v95 = v94;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v95 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v96 = sub_1ADE0262C(v95, v75);
    (*(*(*(v138 + 8) + 8) + 8))(v96);

    if (!v76)
    {

      v97 = v136;
      swift_storeEnumTagMultiPayload();
      (*(v137 + 32))(v74, v48, v97);
      return;
    }

    goto LABEL_85;
  }

  if (v53 != 1)
  {
    goto LABEL_32;
  }

  v54 = *(v49 + 16);
  if ((~v54 & 0xF000000000000007) != 0)
  {
    v56 = v154;
    v57 = v156;
    if (((v54 >> 59) & 0x1E | (v54 >> 2) & 1) == 0xB)
    {
      v55 = *((v54 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v55 = &unk_1EB5B9140;
    }
  }

  else
  {
    v55 = &unk_1EB5B9140;
    v56 = v154;
    v57 = v156;
  }

  swift_beginAccess();
  v109 = v55[3];
  if (v109)
  {
    v110 = v109;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v110 = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();
  v111 = v155;

  v112 = sub_1ADE0262C(v110, v111);
  (*(*(*(v140 + 8) + 8) + 8))(v112);

  if (v57)
  {
LABEL_85:

    return;
  }

  v113 = v136;
  swift_storeEnumTagMultiPayload();
  (*(v137 + 32))(v56, v39, v113);
}

double TaggedValue_8.encode(to:)(uint64_t a1, uint64_t a2)
{
  v238 = *(*(a2 + 72) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v237 = &v210 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = *(*(v4 + 64) - 8);
  MEMORY[0x1EEE9AC00](v5);
  v234 = &v210 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = *(*(v7 + 56) - 8);
  MEMORY[0x1EEE9AC00](v8);
  v231 = &v210 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = *(*(v10 + 48) - 8);
  MEMORY[0x1EEE9AC00](v11);
  v228 = &v210 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 40);
  v226 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v225 = &v210 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 32);
  v224 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v223 = &v210 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = *(*(v20 + 24) - 8);
  MEMORY[0x1EEE9AC00](v21);
  v220 = &v210 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 + 16);
  v219 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v218 = &v210 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v27[10];
  v29 = v27[11];
  v31 = v27[12];
  v30 = v27[13];
  v32 = v27[14];
  v33 = v27[15];
  v34 = v27[16];
  v35 = v27[17];
  *&v36 = v24;
  v222 = v37;
  *(&v36 + 1) = v37;
  v217 = v38;
  *&v39 = v38;
  v227 = v14;
  *(&v39 + 1) = v14;
  v240 = v39;
  v250[1] = v39;
  v242 = v36;
  v250[0] = v36;
  v230 = v40;
  *&v36 = v40;
  v233 = v41;
  *(&v36 + 1) = v41;
  v236 = v42;
  *&v39 = v42;
  v239 = v43;
  *(&v39 + 1) = v43;
  v241 = v39;
  v250[3] = v39;
  v243 = v36;
  v250[2] = v36;
  v246 = v28;
  v251 = v28;
  v252 = v29;
  v244 = v29;
  v245 = v31;
  v253 = v31;
  v254 = v30;
  v247 = v30;
  v255 = v32;
  v256 = v33;
  v257 = v34;
  v258 = v35;
  v44 = type metadata accessor for TaggedValue_8.TaggedEnum(0, v250);
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = (&v210 - v46);
  v48 = v259;
  v52 = sub_1ADE71C08(v49, v50, v51);
  if (v48)
  {
    return result;
  }

  v211 = v24;
  v54 = v247;
  v212 = v32;
  v213 = v33;
  v214 = v34;
  v215 = v35;
  v259 = v52;
  v55 = a1;
  v216 = 0;
  (*(v45 + 16))(v47, v248, v44);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v61 = v54;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v66 = v217;
        (*(v224 + 32))(v223, v47, v217);
        v67 = v259;
        swift_beginAccess();
        v68 = *(*(v67 + 24) + 16);
        if ((~v68 & 0xF000000000000007) != 0 && ((v68 >> 59) & 0x1E | (v68 >> 2) & 1) == 0xB)
        {
          inited = *((v68 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          inited = swift_initStaticObject();
        }

        v113 = v215;
        v114 = v214;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          inited = sub_1ADDE5178(inited);
        }

        swift_beginAccess();
        *(inited + 16) = 2;
        sub_1AE1B7530(inited);
        v115 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v115);
        v116 = v240;
        *(&v210 - 9) = v242;
        *(&v210 - 8) = v116;
        v117 = v241;
        *(&v210 - 7) = v243;
        *(&v210 - 6) = v117;
        v118 = v244;
        *(&v210 - 10) = v246;
        *(&v210 - 9) = v118;
        *(&v210 - 8) = v245;
        *(&v210 - 7) = v61;
        v119 = v213;
        *(&v210 - 6) = v212;
        *(&v210 - 5) = v119;
        *(&v210 - 4) = v114;
        *(&v210 - 3) = v113;
        v120 = v223;
        *(&v210 - 2) = v223;
        *(&v210 - 1) = a1;
        v121 = v216;
        v122 = sub_1ADE6B938(sub_1ADFFB058);
        if (v121)
        {
        }

        else
        {
          swift_beginAccess();
          v186 = *(*(v67 + 24) + 16);
          if ((~v186 & 0xF000000000000007) != 0 && ((v186 >> 59) & 0x1E | (v186 >> 2) & 1) == 0xB)
          {
            v187 = *((v186 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v187 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v187 = sub_1ADDE5178(v187);
          }

          swift_beginAccess();
          *(v187 + 24) = v122;

          sub_1AE1B7530(v187);
          swift_endAccess();
        }

        (*(v224 + 8))(v120, v66);
      }

      else
      {
        (*(v226 + 32))(v225, v47, v227);
        v80 = v259;
        swift_beginAccess();
        v81 = *(*(v80 + 24) + 16);
        if ((~v81 & 0xF000000000000007) != 0 && ((v81 >> 59) & 0x1E | (v81 >> 2) & 1) == 0xB)
        {
          v82 = *((v81 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v82 = swift_initStaticObject();
        }

        v134 = v215;
        v135 = v214;
        v136 = v213;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v82 = sub_1ADDE5178(v82);
        }

        swift_beginAccess();
        *(v82 + 16) = 3;
        sub_1AE1B7530(v82);
        v137 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v137);
        v138 = v240;
        *(&v210 - 9) = v242;
        *(&v210 - 8) = v138;
        v139 = v241;
        *(&v210 - 7) = v243;
        *(&v210 - 6) = v139;
        v140 = v244;
        *(&v210 - 10) = v246;
        *(&v210 - 9) = v140;
        *(&v210 - 8) = v245;
        *(&v210 - 7) = v61;
        *(&v210 - 6) = v212;
        *(&v210 - 5) = v136;
        *(&v210 - 4) = v135;
        *(&v210 - 3) = v134;
        v141 = v225;
        *(&v210 - 2) = v225;
        *(&v210 - 1) = a1;
        v142 = v216;
        v143 = sub_1ADE6B938(sub_1ADFFB010);
        if (v142)
        {
        }

        else
        {
          v191 = v143;
          swift_beginAccess();
          v192 = *(*(v80 + 24) + 16);
          if ((~v192 & 0xF000000000000007) != 0 && ((v192 >> 59) & 0x1E | (v192 >> 2) & 1) == 0xB)
          {
            v193 = *((v192 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v193 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v193 = sub_1ADDE5178(v193);
          }

          swift_beginAccess();
          *(v193 + 24) = v191;

          sub_1AE1B7530(v193);
          swift_endAccess();
        }

        (*(v226 + 8))(v141, v227);
      }
    }

    else
    {
      v62 = v246;
      if (!EnumCaseMultiPayload)
      {
        (*(v219 + 32))(v218, v47, v211);
        v63 = v259;
        swift_beginAccess();
        v64 = *(*(v63 + 24) + 16);
        if ((~v64 & 0xF000000000000007) != 0 && ((v64 >> 59) & 0x1E | (v64 >> 2) & 1) == 0xB)
        {
          v65 = *((v64 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v65 = swift_initStaticObject();
        }

        v101 = v215;
        v102 = v259;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v104 = v245;
        v105 = v244;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v65 = sub_1ADDE5178(v65);
        }

        swift_beginAccess();
        *(v65 + 16) = 0;
        sub_1AE1B7530(v65);
        v106 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v106);
        v107 = v240;
        *(&v210 - 9) = v242;
        *(&v210 - 8) = v107;
        v108 = v241;
        *(&v210 - 7) = v243;
        *(&v210 - 6) = v108;
        *(&v210 - 10) = v246;
        *(&v210 - 9) = v105;
        *(&v210 - 8) = v104;
        *(&v210 - 7) = v61;
        v109 = v213;
        *(&v210 - 6) = v212;
        *(&v210 - 5) = v109;
        *(&v210 - 4) = v214;
        *(&v210 - 3) = v101;
        v110 = v218;
        *(&v210 - 2) = v218;
        *(&v210 - 1) = a1;
        v111 = v216;
        v112 = sub_1ADE6B938(sub_1ADFFB0E8);
        if (v111)
        {
        }

        else
        {
          swift_beginAccess();
          v184 = *(*(v102 + 24) + 16);
          if ((~v184 & 0xF000000000000007) != 0 && ((v184 >> 59) & 0x1E | (v184 >> 2) & 1) == 0xB)
          {
            v185 = *((v184 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v185 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v185 = sub_1ADDE5178(v185);
          }

          swift_beginAccess();
          *(v185 + 24) = v112;

          sub_1AE1B7530(v185);
          swift_endAccess();
        }

        v203 = *(v219 + 8);
        v204 = v110;
        v205 = &v241 + 8;
        goto LABEL_142;
      }

      (*(v221 + 32))(v220, v47, v222);
      v77 = v259;
      swift_beginAccess();
      v78 = *(*(v77 + 24) + 16);
      if ((~v78 & 0xF000000000000007) != 0 && ((v78 >> 59) & 0x1E | (v78 >> 2) & 1) == 0xB)
      {
        v79 = *((v78 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v79 = swift_initStaticObject();
      }

      v123 = v215;
      v124 = v214;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v79 = sub_1ADDE5178(v79);
      }

      swift_beginAccess();
      *(v79 + 16) = 1;
      v125 = v259;
      sub_1AE1B7530(v79);
      v126 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v126);
      v127 = v240;
      *(&v210 - 9) = v242;
      *(&v210 - 8) = v127;
      v128 = v241;
      *(&v210 - 7) = v243;
      *(&v210 - 6) = v128;
      v129 = v244;
      *(&v210 - 10) = v62;
      *(&v210 - 9) = v129;
      *(&v210 - 8) = v245;
      *(&v210 - 7) = v61;
      v130 = v213;
      *(&v210 - 6) = v212;
      *(&v210 - 5) = v130;
      *(&v210 - 4) = v124;
      *(&v210 - 3) = v123;
      v131 = v220;
      *(&v210 - 2) = v220;
      *(&v210 - 1) = a1;
      v132 = v216;
      v133 = sub_1ADE6B938(sub_1ADFFB0A0);
      if (v132)
      {
      }

      else
      {
        v188 = v133;
        swift_beginAccess();
        v189 = *(*(v125 + 24) + 16);
        if ((~v189 & 0xF000000000000007) != 0 && ((v189 >> 59) & 0x1E | (v189 >> 2) & 1) == 0xB)
        {
          v190 = *((v189 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v190 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v190 = sub_1ADDE5178(v190);
        }

        swift_beginAccess();
        *(v190 + 24) = v188;

        sub_1AE1B7530(v190);
        swift_endAccess();
      }

      (*(v221 + 8))(v131, v222);
    }
  }

  else
  {
    v57 = v54;
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        (*(v235 + 32))(v234, v47, v236);
        v74 = v259;
        swift_beginAccess();
        v75 = *(*(v74 + 24) + 16);
        if ((~v75 & 0xF000000000000007) != 0 && ((v75 >> 59) & 0x1E | (v75 >> 2) & 1) == 0xB)
        {
          v76 = *((v75 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v76 = swift_initStaticObject();
        }

        v91 = v215;
        v92 = v214;
        v93 = v213;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v76 = sub_1ADDE5178(v76);
        }

        swift_beginAccess();
        *(v76 + 16) = 6;
        sub_1AE1B7530(v76);
        v94 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v94);
        v95 = v240;
        *(&v210 - 9) = v242;
        *(&v210 - 8) = v95;
        v96 = v241;
        *(&v210 - 7) = v243;
        *(&v210 - 6) = v96;
        v97 = v244;
        *(&v210 - 10) = v246;
        *(&v210 - 9) = v97;
        *(&v210 - 8) = v245;
        *(&v210 - 7) = v57;
        *(&v210 - 6) = v212;
        *(&v210 - 5) = v93;
        *(&v210 - 4) = v92;
        *(&v210 - 3) = v91;
        v98 = v234;
        *(&v210 - 2) = v234;
        *(&v210 - 1) = a1;
        v99 = v216;
        v100 = sub_1ADE6B938(sub_1ADFFAF38);
        if (v99)
        {
        }

        else
        {
          v181 = v100;
          swift_beginAccess();
          v182 = *(*(v74 + 24) + 16);
          if ((~v182 & 0xF000000000000007) != 0 && ((v182 >> 59) & 0x1E | (v182 >> 2) & 1) == 0xB)
          {
            v183 = *((v182 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v183 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v183 = sub_1ADDE5178(v183);
          }

          swift_beginAccess();
          *(v183 + 24) = v181;

          sub_1AE1B7530(v183);
          swift_endAccess();
        }

        (*(v235 + 8))(v98, v236);
      }

      else
      {
        v58 = v259;
        if (EnumCaseMultiPayload == 7)
        {
          (*(v238 + 32))(v237, v47, v239);
          swift_beginAccess();
          v59 = *(*(v58 + 24) + 16);
          if ((~v59 & 0xF000000000000007) != 0 && ((v59 >> 59) & 0x1E | (v59 >> 2) & 1) == 0xB)
          {
            v60 = *((v59 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v60 = swift_initStaticObject();
          }

          v144 = v215;
          v145 = v214;
          v146 = v213;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v60 = sub_1ADDE5178(v60);
          }

          swift_beginAccess();
          *(v60 + 16) = 7;
          sub_1AE1B7530(v60);
          v147 = swift_endAccess();
          MEMORY[0x1EEE9AC00](v147);
          v148 = v240;
          *(&v210 - 9) = v242;
          *(&v210 - 8) = v148;
          v149 = v241;
          *(&v210 - 7) = v243;
          *(&v210 - 6) = v149;
          v150 = v244;
          *(&v210 - 10) = v246;
          *(&v210 - 9) = v150;
          *(&v210 - 8) = v245;
          *(&v210 - 7) = v57;
          *(&v210 - 6) = v212;
          *(&v210 - 5) = v146;
          *(&v210 - 4) = v145;
          *(&v210 - 3) = v144;
          v151 = v237;
          *(&v210 - 2) = v237;
          *(&v210 - 1) = a1;
          v152 = v216;
          v153 = sub_1ADE6B938(sub_1ADFFAEF0);
          if (v152)
          {
          }

          else
          {
            v194 = v153;
            swift_beginAccess();
            v195 = *(*(v58 + 24) + 16);
            if ((~v195 & 0xF000000000000007) != 0 && ((v195 >> 59) & 0x1E | (v195 >> 2) & 1) == 0xB)
            {
              v196 = *((v195 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              v196 = swift_initStaticObject();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              swift_allocObject();
              v196 = sub_1ADDE5178(v196);
            }

            swift_beginAccess();
            *(v196 + 24) = v194;

            sub_1AE1B7530(v196);
            swift_endAccess();
          }

          (*(v238 + 8))(v151, v239);
        }

        else
        {
          v84 = *v47;
          v83 = v47[1];
          swift_beginAccess();
          v85 = *(*(v58 + 24) + 16);
          if ((~v85 & 0xF000000000000007) != 0 && ((v85 >> 59) & 0x1E | (v85 >> 2) & 1) == 0xB)
          {
            v86 = *((v85 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v86 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v86 = sub_1ADDE5178(v86);
          }

          swift_beginAccess();
          *(v86 + 16) = v84;
          sub_1AE1B7530(v86);
          swift_endAccess();
          v154 = v58;
          v156 = *(a1 + 112);
          v155 = *(a1 + 120);
          *(a1 + 112) = 0;
          *(a1 + 120) = 0;
          v157 = v216;
          v158 = (*(*v83 + 152))(a1);
          if (v157)
          {
          }

          else
          {
            v206 = sub_1ADE71C08(v158, v159, v160);
            swift_beginAccess();
            v207 = *(v206 + 24);
            *(v55 + 112) = v156;

            *(v55 + 120) = v155;

            swift_beginAccess();
            v208 = *(*(v154 + 24) + 16);
            if ((~v208 & 0xF000000000000007) != 0 && ((v208 >> 59) & 0x1E | (v208 >> 2) & 1) == 0xB)
            {
              v209 = *((v208 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              v209 = swift_initStaticObject();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              swift_allocObject();
              v209 = sub_1ADDE5178(v209);
            }

            swift_beginAccess();
            *(v209 + 24) = v207;

            sub_1AE1B7530(v209);
            swift_endAccess();
          }
        }
      }

      return result;
    }

    if (EnumCaseMultiPayload == 4)
    {
      (*(v229 + 32))(v228, v47, v230);
      v70 = v259;
      swift_beginAccess();
      v71 = *(*(v70 + 24) + 16);
      v72 = v212;
      if ((~v71 & 0xF000000000000007) != 0 && ((v71 >> 59) & 0x1E | (v71 >> 2) & 1) == 0xB)
      {
        v73 = *((v71 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v73 = swift_initStaticObject();
      }

      v161 = v215;
      v162 = v214;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v73 = sub_1ADDE5178(v73);
      }

      swift_beginAccess();
      *(v73 + 16) = 4;
      sub_1AE1B7530(v73);
      v163 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v163);
      v164 = v240;
      *(&v210 - 9) = v242;
      *(&v210 - 8) = v164;
      v165 = v241;
      *(&v210 - 7) = v243;
      *(&v210 - 6) = v165;
      v166 = v244;
      *(&v210 - 10) = v246;
      *(&v210 - 9) = v166;
      *(&v210 - 8) = v245;
      *(&v210 - 7) = v57;
      v167 = v213;
      *(&v210 - 6) = v72;
      *(&v210 - 5) = v167;
      *(&v210 - 4) = v162;
      *(&v210 - 3) = v161;
      v168 = v228;
      *(&v210 - 2) = v228;
      *(&v210 - 1) = a1;
      v169 = v216;
      v170 = sub_1ADE6B938(sub_1ADFFAFC8);
      if (v169)
      {
      }

      else
      {
        v197 = v170;
        swift_beginAccess();
        v198 = *(*(v70 + 24) + 16);
        if ((~v198 & 0xF000000000000007) != 0 && ((v198 >> 59) & 0x1E | (v198 >> 2) & 1) == 0xB)
        {
          v199 = *((v198 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v199 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v199 = sub_1ADDE5178(v199);
        }

        swift_beginAccess();
        *(v199 + 24) = v197;

        sub_1AE1B7530(v199);
        swift_endAccess();
      }

      v203 = *(v229 + 8);
      v204 = v168;
      v205 = &v249;
LABEL_142:
      v203(v204, *(v205 - 32));
      return result;
    }

    (*(v232 + 32))(v231, v47, v233);
    v87 = v259;
    swift_beginAccess();
    v88 = *(*(v87 + 24) + 16);
    v89 = v212;
    if ((~v88 & 0xF000000000000007) != 0 && ((v88 >> 59) & 0x1E | (v88 >> 2) & 1) == 0xB)
    {
      v90 = *((v88 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      type metadata accessor for Proto_TaggedValue._StorageClass();
      v90 = swift_initStaticObject();
    }

    v171 = v215;
    v172 = v214;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_TaggedValue._StorageClass();
      swift_allocObject();
      v90 = sub_1ADDE5178(v90);
    }

    swift_beginAccess();
    *(v90 + 16) = 5;
    sub_1AE1B7530(v90);
    v173 = swift_endAccess();
    MEMORY[0x1EEE9AC00](v173);
    v174 = v240;
    *(&v210 - 9) = v242;
    *(&v210 - 8) = v174;
    v175 = v241;
    *(&v210 - 7) = v243;
    *(&v210 - 6) = v175;
    v176 = v244;
    *(&v210 - 10) = v246;
    *(&v210 - 9) = v176;
    *(&v210 - 8) = v245;
    *(&v210 - 7) = v57;
    v177 = v213;
    *(&v210 - 6) = v89;
    *(&v210 - 5) = v177;
    *(&v210 - 4) = v172;
    *(&v210 - 3) = v171;
    v178 = v231;
    *(&v210 - 2) = v231;
    *(&v210 - 1) = a1;
    v179 = v216;
    v180 = sub_1ADE6B938(sub_1ADFFAF80);
    if (v179)
    {
    }

    else
    {
      v200 = v180;
      swift_beginAccess();
      v201 = *(*(v87 + 24) + 16);
      if ((~v201 & 0xF000000000000007) != 0 && ((v201 >> 59) & 0x1E | (v201 >> 2) & 1) == 0xB)
      {
        v202 = *((v201 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v202 = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v202 = sub_1ADDE5178(v202);
      }

      swift_beginAccess();
      *(v202 + 24) = v200;

      sub_1AE1B7530(v202);
      swift_endAccess();
    }

    (*(v232 + 8))(v178, v233);
  }

  return result;
}

void TaggedValue_8<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v84 = a8;
  v83 = a7;
  v93 = a6;
  v81 = a5;
  v92 = a4;
  v80 = a3;
  v95 = a1;
  v85 = *(*(a2 + 72) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v82 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = *(*(v11 + 64) - 8);
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(*(v14 + 56) - 8);
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = *(*(v17 + 48) - 8);
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 40);
  v91 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v90 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v24 + 32);
  v89 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v29 + 24);
  v88 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v34 + 16);
  v87 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v71 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v39 = v35;
  *(&v39 + 1) = v30;
  *&v40 = v25;
  *(&v40 + 1) = v21;
  v98 = v40;
  v97 = v39;
  v71 = v41;
  *&v39 = v41;
  v76 = v42;
  *(&v39 + 1) = v42;
  v79 = v43;
  *&v40 = v43;
  v86 = v44;
  *(&v40 + 1) = v44;
  v100 = v40;
  v99 = v39;
  v46 = v45[6];
  v101 = v45[5];
  v102[0] = v46;
  v47 = v45[8];
  v102[1] = v45[7];
  v102[2] = v47;
  v48 = type metadata accessor for TaggedValue_8.TaggedEnum(0, &v97);
  v49 = MEMORY[0x1EEE9AC00](v48);
  v51 = &v71 - v50;
  (*(v52 + 16))(&v71 - v50, v94, v48, v49);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v60 = v33;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v62 = v89;
        (*(v89 + 32))(v28, v51, v25);
        sub_1AE23CBAC();
        (*(v62 + 8))(v28, v25);
      }

      else
      {
        v69 = v91;
        v70 = v90;
        (*(v91 + 32))(v90, v51, v21);
        sub_1AE23CBAC();
        (*(v69 + 8))(v70, v21);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v67 = v88;
      v68 = v60;
      (*(v88 + 32))(v60, v51, v30);
      sub_1AE23CBAC();
      (*(v67 + 8))(v68, v30);
    }

    else
    {
      v61 = v87;
      (*(v87 + 32))(v38, v51, v35);
      sub_1AE23CBAC();
      (*(v61 + 8))(v38, v35);
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v63 = v73;
      v64 = v72;
      v65 = v71;
      (*(v73 + 32))(v72, v51, v71);
    }

    else
    {
      v63 = v75;
      v64 = v74;
      v65 = v76;
      (*(v75 + 32))(v74, v51, v76);
    }

    sub_1AE23CBAC();
    (*(v63 + 8))(v64, v65);
  }

  else
  {
    if (EnumCaseMultiPayload == 6)
    {
      v54 = v78;
      v55 = *(v78 + 32);
      v56 = v77;
      v57 = v77;
      v58 = v51;
      v59 = v102 + 8;
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v54 = v85;
      v55 = *(v85 + 32);
      v56 = v82;
      v57 = v82;
      v58 = v51;
      v59 = &v103;
LABEL_14:
      v66 = *(v59 - 32);
      v55(v57, v58, v66);
      sub_1AE23CBAC();
      (*(v54 + 8))(v56, v66);
      return;
    }

    (*(**(v51 + 1) + 80))(v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
    swift_dynamicCast();
    __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
    sub_1AE23CBAC();
    __swift_destroy_boxed_opaque_existential_1(&v97);
  }
}

void TaggedValue_9.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v168 = a2;
  v178[0] = a2;
  v178[1] = a3;
  v171 = a3;
  v169 = a4;
  v178[2] = a4;
  v178[3] = a5;
  v173 = a5;
  v170 = a6;
  v178[4] = a6;
  v178[5] = a7;
  v174 = a7;
  v172 = a8;
  v178[6] = a8;
  v178[7] = a10;
  v164 = a10;
  v166 = a11;
  v178[8] = a11;
  v178[9] = a12;
  v157 = a12;
  v159 = a13;
  v178[10] = a13;
  v178[11] = a14;
  v158 = a14;
  v162 = a15;
  v178[12] = a15;
  v178[13] = a16;
  v160 = a16;
  v163 = a17;
  v178[14] = a17;
  v178[15] = a18;
  v161 = a18;
  v165 = a19;
  v178[16] = a19;
  v178[17] = a20;
  v167 = a20;
  v22 = type metadata accessor for TaggedValue_9.TaggedEnum(0, v178);
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v149 - v25;
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v149 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v149 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v149 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v149 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = (&v149 - v41);
  MEMORY[0x1EEE9AC00](v43);
  v51 = &v149 - v50;
  v52 = *(a1 + 72);
  if (!v52)
  {
    sub_1ADE42E40(v44, v45, v46);
    swift_allocError();
    *v62 = 0xD000000000000017;
    *(v62 + 8) = 0x80000001AE25FB70;
    *(v62 + 16) = 0;
    swift_willThrow();
    goto LABEL_92;
  }

  v151 = v45;
  v152 = v26;
  v153 = v49;
  v150 = v48;
  v155 = v44;
  v156 = v47;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  v176 = a1;
  v154 = inited;
  *(inited + 16) = a1;
  v54 = *(v52 + 16);
  v175 = a9;
  if ((~v54 & 0xF000000000000007) != 0 && ((v54 >> 59) & 0x1E | (v54 >> 2) & 1) == 0xB)
  {
    v55 = *((v54 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v55 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v56 = v55[2];
  if (v56 <= 3)
  {
    if (v56 > 1)
    {
      if (v56 == 2)
      {
        v85 = *(v52 + 16);
        if ((~v85 & 0xF000000000000007) != 0)
        {
          v87 = v175;
          v88 = v176;
          v89 = v177;
          v90 = v169;
          v91 = v158;
          if (((v85 >> 59) & 0x1E | (v85 >> 2) & 1) == 0xB)
          {
            v86 = *((v85 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            v86 = &unk_1EB5B9140;
          }
        }

        else
        {
          v86 = &unk_1EB5B9140;
          v87 = v175;
          v88 = v176;
          v89 = v177;
          v90 = v169;
          v91 = v158;
        }

        swift_beginAccess();
        v131 = v86[3];
        if (v131)
        {
          v132 = v131;
        }

        else
        {
          type metadata accessor for Proto_Value._StorageClass();
          v132 = swift_initStaticObject();
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();

        v133 = sub_1ADE0262C(v132, v88);
        (*(*(*(v91 + 8) + 8) + 8))(v133, v90);
        if (!v89)
        {

          v134 = v155;
          swift_storeEnumTagMultiPayload();
          (*(v156 + 32))(v87, v39, v134);
          return;
        }
      }

      else
      {
        v68 = *(v52 + 16);
        if ((~v68 & 0xF000000000000007) != 0)
        {
          v70 = v175;
          v71 = v176;
          v72 = v177;
          if (((v68 >> 59) & 0x1E | (v68 >> 2) & 1) == 0xB)
          {
            v69 = *((v68 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            v69 = &unk_1EB5B9140;
          }
        }

        else
        {
          v69 = &unk_1EB5B9140;
          v70 = v175;
          v71 = v176;
          v72 = v177;
        }

        swift_beginAccess();
        v120 = v69[3];
        if (v120)
        {
          v121 = v120;
        }

        else
        {
          type metadata accessor for Proto_Value._StorageClass();
          v121 = swift_initStaticObject();
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();

        v122 = sub_1ADE0262C(v121, v71);
        (*(*(*(v162 + 8) + 8) + 8))(v122);
        if (!v72)
        {

          v123 = v155;
          swift_storeEnumTagMultiPayload();
          (*(v156 + 32))(v70, v36, v123);
          return;
        }
      }

      goto LABEL_118;
    }

    if (v56)
    {
      if (v56 != 1)
      {
        goto LABEL_36;
      }

      v63 = *(v52 + 16);
      if ((~v63 & 0xF000000000000007) != 0)
      {
        v65 = v175;
        v66 = v176;
        v67 = v177;
        if (((v63 >> 59) & 0x1E | (v63 >> 2) & 1) == 0xB)
        {
          v64 = *((v63 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v64 = &unk_1EB5B9140;
        }
      }

      else
      {
        v64 = &unk_1EB5B9140;
        v65 = v175;
        v66 = v176;
        v67 = v177;
      }

      swift_beginAccess();
      v116 = v64[3];
      if (v116)
      {
        v117 = v116;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v117 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v118 = sub_1ADE0262C(v117, v66);
      (*(*(*(v159 + 8) + 8) + 8))(v118);

      if (!v67)
      {

        v113 = v155;
        swift_storeEnumTagMultiPayload();
        v114 = *(v156 + 32);
        v115 = v65;
        goto LABEL_77;
      }
    }

    else
    {
      v78 = *(v52 + 16);
      if ((~v78 & 0xF000000000000007) != 0)
      {
        v80 = v175;
        v81 = v176;
        v82 = v177;
        v83 = v168;
        v84 = v157;
        if (((v78 >> 59) & 0x1E | (v78 >> 2) & 1) == 0xB)
        {
          v79 = *((v78 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v79 = &unk_1EB5B9140;
        }
      }

      else
      {
        v79 = &unk_1EB5B9140;
        v80 = v175;
        v81 = v176;
        v82 = v177;
        v83 = v168;
        v84 = v157;
      }

      swift_beginAccess();
      v127 = v79[3];
      if (v127)
      {
        v128 = v127;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v128 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v129 = sub_1ADE0262C(v128, v81);
      (*(*(*(v84 + 8) + 8) + 8))(v129, v83);

      if (!v82)
      {

        v130 = v155;
        swift_storeEnumTagMultiPayload();
        (*(v156 + 32))(v80, v51, v130);
        return;
      }
    }

LABEL_92:

    return;
  }

  if (v56 <= 5)
  {
    if (v56 == 4)
    {
      v97 = *(v52 + 16);
      if ((~v97 & 0xF000000000000007) != 0)
      {
        v59 = v175;
        v99 = v176;
        v100 = v177;
        if (((v97 >> 59) & 0x1E | (v97 >> 2) & 1) == 0xB)
        {
          v98 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v98 = &unk_1EB5B9140;
        }
      }

      else
      {
        v98 = &unk_1EB5B9140;
        v59 = v175;
        v99 = v176;
        v100 = v177;
      }

      swift_beginAccess();
      v140 = v98[3];
      if (v140)
      {
        v141 = v140;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v141 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v142 = sub_1ADE0262C(v141, v99);
      (*(*(*(v160 + 8) + 8) + 8))(v142);
      if (!v100)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v73 = *(v52 + 16);
      if ((~v73 & 0xF000000000000007) != 0)
      {
        v75 = v175;
        v76 = v176;
        v77 = v177;
        if (((v73 >> 59) & 0x1E | (v73 >> 2) & 1) == 0xB)
        {
          v74 = *((v73 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v74 = &unk_1EB5B9140;
        }
      }

      else
      {
        v74 = &unk_1EB5B9140;
        v75 = v175;
        v76 = v176;
        v77 = v177;
      }

      swift_beginAccess();
      if (v74[3])
      {
        v124 = v74[3];
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v124 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v125 = sub_1ADE0262C(v124, v76);
      (*(*(*(v163 + 8) + 8) + 8))(v125);
      if (!v77)
      {

        v126 = v155;
        swift_storeEnumTagMultiPayload();
        (*(v156 + 32))(v75, v30, v126);
        return;
      }
    }

    goto LABEL_118;
  }

  switch(v56)
  {
    case 6:
      v92 = *(v52 + 16);
      if ((~v92 & 0xF000000000000007) != 0)
      {
        v94 = v175;
        v95 = v176;
        v96 = v177;
        if (((v92 >> 59) & 0x1E | (v92 >> 2) & 1) == 0xB)
        {
          v93 = *((v92 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v93 = &unk_1EB5B9140;
        }
      }

      else
      {
        v93 = &unk_1EB5B9140;
        v94 = v175;
        v95 = v176;
        v96 = v177;
      }

      swift_beginAccess();
      v135 = v93[3];
      if (v135)
      {
        v136 = v135;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v136 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v137 = sub_1ADE0262C(v136, v95);
      v138 = v151;
      (*(*(*(v161 + 8) + 8) + 8))(v137);
      if (!v96)
      {

        v139 = v155;
        swift_storeEnumTagMultiPayload();
        (*(v156 + 32))(v94, v138, v139);
        return;
      }

      goto LABEL_118;
    case 7:
      v101 = *(v52 + 16);
      if ((~v101 & 0xF000000000000007) != 0)
      {
        v59 = v175;
        v103 = v176;
        v104 = v177;
        if (((v101 >> 59) & 0x1E | (v101 >> 2) & 1) == 0xB)
        {
          v102 = *((v101 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v102 = &unk_1EB5B9140;
        }
      }

      else
      {
        v102 = &unk_1EB5B9140;
        v59 = v175;
        v103 = v176;
        v104 = v177;
      }

      swift_beginAccess();
      v146 = v102[3];
      if (v146)
      {
        v147 = v146;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v147 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v148 = sub_1ADE0262C(v147, v103);
      v33 = v152;
      (*(*(*(v165 + 8) + 8) + 8))(v148);
      if (!v104)
      {
        goto LABEL_119;
      }

      goto LABEL_118;
    case 8:
      v57 = *(v52 + 16);
      if ((~v57 & 0xF000000000000007) != 0)
      {
        v59 = v175;
        v60 = v176;
        v61 = v177;
        if (((v57 >> 59) & 0x1E | (v57 >> 2) & 1) == 0xB)
        {
          v58 = *((v57 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v58 = &unk_1EB5B9140;
        }
      }

      else
      {
        v58 = &unk_1EB5B9140;
        v59 = v175;
        v60 = v176;
        v61 = v177;
      }

      swift_beginAccess();
      v143 = v58[3];
      if (v143)
      {
        v144 = v143;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v144 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v145 = sub_1ADE0262C(v144, v60);
      v33 = v153;
      (*(*(*(v167 + 8) + 8) + 8))(v145);
      if (!v61)
      {
LABEL_119:

        v113 = v155;
        swift_storeEnumTagMultiPayload();
        v114 = *(v156 + 32);
        v115 = v59;
        v119 = v33;
        goto LABEL_120;
      }

LABEL_118:

      return;
  }

LABEL_36:
  v105 = *(v52 + 16);
  if ((~v105 & 0xF000000000000007) != 0 && ((v105 >> 59) & 0x1E | (v105 >> 2) & 1) == 0xB)
  {
    v106 = *((v105 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v106 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v107 = v106[3];
  if (v107)
  {
    v108 = v107;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v108 = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();
  v109 = v176;

  v110 = sub_1ADE0262C(v108, v109);
  v111 = v177;
  AnyCRValue.init(from:)(v110, &v179);

  if (v111)
  {
    goto LABEL_92;
  }

  v112 = v179;
  v42 = v150;
  *v150 = v56;
  v42[1] = v112;
  v113 = v155;
  swift_storeEnumTagMultiPayload();
  v114 = *(v156 + 32);
  v115 = v175;
LABEL_77:
  v119 = v42;
LABEL_120:
  v114(v115, v119, v113);
}

double TaggedValue_9.encode(to:)(uint64_t a1, uint64_t a2)
{
  v269 = *(*(a2 + 80) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v268 = &v240 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = *(*(v4 + 72) - 8);
  MEMORY[0x1EEE9AC00](v5);
  v265 = &v240 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = *(*(v7 + 64) - 8);
  MEMORY[0x1EEE9AC00](v8);
  v262 = &v240 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = *(*(v10 + 56) - 8);
  MEMORY[0x1EEE9AC00](v11);
  v258 = &v240 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 48);
  v257 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v256 = &v240 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 40);
  v254 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v253 = &v240 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = *(*(v20 + 32) - 8);
  MEMORY[0x1EEE9AC00](v21);
  v250 = &v240 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = *(*(v23 + 24) - 8);
  MEMORY[0x1EEE9AC00](v24);
  v247 = &v240 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v26 + 16);
  v246 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v245 = &v240 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v30 + 88);
  v32 = *(v30 + 96);
  v34 = *(v30 + 112);
  v33 = *(v30 + 120);
  v35 = *(v30 + 128);
  v36 = *(v30 + 136);
  v38 = *(v30 + 144);
  v37 = *(v30 + 152);
  *&v39 = v27;
  v249 = v40;
  *(&v39 + 1) = v40;
  v252 = v41;
  *&v42 = v41;
  v255 = v43;
  *(&v42 + 1) = v43;
  v259 = v14;
  *&v44 = v14;
  v261 = v45;
  *(&v44 + 1) = v45;
  v264 = v46;
  *&v47 = v46;
  v267 = v48;
  *(&v47 + 1) = v48;
  v270 = v42;
  v280[1] = v42;
  v272 = v39;
  v280[0] = v39;
  v271 = v47;
  v280[3] = v47;
  v273 = v44;
  v280[2] = v44;
  v278 = v49;
  v281 = v49;
  v282 = v31;
  v274 = v31;
  v275 = v32;
  v283 = v32;
  v276 = v34;
  v284 = v34;
  v285 = v33;
  v277 = v33;
  v286 = v35;
  v287 = v36;
  v288 = v38;
  v289 = v37;
  v50 = type metadata accessor for TaggedValue_9.TaggedEnum(0, v280);
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v53 = (&v240 - v52);
  v54 = v290;
  v58 = sub_1ADE71C08(v55, v56, v57);
  if (!v54)
  {
    v240 = v27;
    v244 = v58;
    v241 = v35;
    v242 = v38;
    v243 = v37;
    v60 = v278;
    v290 = 0;
    (*(v51 + 16))(v53, v279, v50);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload == 5)
        {
          (*(v260 + 32))(v258, v53, v261);
          v73 = v244;
          swift_beginAccess();
          v74 = *(*(v73 + 24) + 16);
          if ((~v74 & 0xF000000000000007) != 0 && ((v74 >> 59) & 0x1E | (v74 >> 2) & 1) == 0xB)
          {
            inited = *((v74 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            inited = swift_initStaticObject();
          }

          v171 = v60;
          v172 = v241;
          v173 = v277;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            inited = sub_1ADDE5178(inited);
          }

          swift_beginAccess();
          *(inited + 16) = 5;
          sub_1AE1B7530(inited);
          v174 = swift_endAccess();
          MEMORY[0x1EEE9AC00](v174);
          v175 = v270;
          *(&v240 - 10) = v272;
          *(&v240 - 9) = v175;
          v176 = v271;
          *(&v240 - 8) = v273;
          *(&v240 - 7) = v176;
          v177 = v274;
          *(&v240 - 12) = v171;
          *(&v240 - 11) = v177;
          *(&v240 - 5) = v275;
          *(&v240 - 8) = v276;
          *(&v240 - 7) = v173;
          *(&v240 - 6) = v172;
          *(&v240 - 5) = v36;
          v178 = v243;
          *(&v240 - 4) = v242;
          *(&v240 - 3) = v178;
          v179 = v258;
          *(&v240 - 2) = v258;
          *(&v240 - 1) = a1;
          v180 = v290;
          v181 = sub_1ADE6B938(sub_1ADFFB208);
          if (v180)
          {
          }

          else
          {
            v226 = v181;
            swift_beginAccess();
            v227 = *(*(v73 + 24) + 16);
            if ((~v227 & 0xF000000000000007) != 0 && ((v227 >> 59) & 0x1E | (v227 >> 2) & 1) == 0xB)
            {
              v228 = *((v227 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              v228 = swift_initStaticObject();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              swift_allocObject();
              v228 = sub_1ADDE5178(v228);
            }

            swift_beginAccess();
            *(v228 + 24) = v226;

            sub_1AE1B7530(v228);
            swift_endAccess();
          }

          (*(v260 + 8))(v179, v261);
        }

        else
        {
          (*(v263 + 32))(v262, v53, v264);
          v93 = v244;
          swift_beginAccess();
          v94 = *(*(v93 + 24) + 16);
          if ((~v94 & 0xF000000000000007) != 0 && ((v94 >> 59) & 0x1E | (v94 >> 2) & 1) == 0xB)
          {
            v95 = *((v94 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v95 = swift_initStaticObject();
          }

          v193 = v60;
          v194 = v241;
          v195 = v277;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v95 = sub_1ADDE5178(v95);
          }

          swift_beginAccess();
          *(v95 + 16) = 6;
          sub_1AE1B7530(v95);
          v196 = swift_endAccess();
          MEMORY[0x1EEE9AC00](v196);
          v197 = v270;
          *(&v240 - 10) = v272;
          *(&v240 - 9) = v197;
          v198 = v271;
          *(&v240 - 8) = v273;
          *(&v240 - 7) = v198;
          v199 = v274;
          *(&v240 - 12) = v193;
          *(&v240 - 11) = v199;
          *(&v240 - 5) = v275;
          *(&v240 - 8) = v276;
          *(&v240 - 7) = v195;
          *(&v240 - 6) = v194;
          *(&v240 - 5) = v36;
          v200 = v243;
          *(&v240 - 4) = v242;
          *(&v240 - 3) = v200;
          v201 = v262;
          *(&v240 - 2) = v262;
          *(&v240 - 1) = a1;
          v202 = v290;
          v203 = sub_1ADE6B938(sub_1ADFFB1C0);
          if (v202)
          {
          }

          else
          {
            v232 = v203;
            swift_beginAccess();
            v233 = *(*(v93 + 24) + 16);
            if ((~v233 & 0xF000000000000007) != 0 && ((v233 >> 59) & 0x1E | (v233 >> 2) & 1) == 0xB)
            {
              v234 = *((v233 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              v234 = swift_initStaticObject();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              swift_allocObject();
              v234 = sub_1ADDE5178(v234);
            }

            swift_beginAccess();
            *(v234 + 24) = v232;

            sub_1AE1B7530(v234);
            swift_endAccess();
          }

          (*(v263 + 8))(v201, v264);
        }
      }

      else if (EnumCaseMultiPayload == 7)
      {
        (*(v266 + 32))(v265, v53, v267);
        v79 = v244;
        swift_beginAccess();
        v80 = *(*(v79 + 24) + 16);
        if ((~v80 & 0xF000000000000007) != 0 && ((v80 >> 59) & 0x1E | (v80 >> 2) & 1) == 0xB)
        {
          v81 = *((v80 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v81 = swift_initStaticObject();
        }

        v108 = v60;
        v109 = v241;
        v110 = v277;
        v111 = v276;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v81 = sub_1ADDE5178(v81);
        }

        swift_beginAccess();
        *(v81 + 16) = 7;
        sub_1AE1B7530(v81);
        v112 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v112);
        v113 = v270;
        *(&v240 - 10) = v272;
        *(&v240 - 9) = v113;
        v114 = v271;
        *(&v240 - 8) = v273;
        *(&v240 - 7) = v114;
        v115 = v274;
        *(&v240 - 12) = v108;
        *(&v240 - 11) = v115;
        *(&v240 - 5) = v275;
        *(&v240 - 8) = v111;
        *(&v240 - 7) = v110;
        *(&v240 - 6) = v109;
        *(&v240 - 5) = v36;
        v116 = v243;
        *(&v240 - 4) = v242;
        *(&v240 - 3) = v116;
        v117 = v265;
        *(&v240 - 2) = v265;
        *(&v240 - 1) = a1;
        v118 = v290;
        v119 = sub_1ADE6B938(sub_1ADFFB178);
        if (v118)
        {

          (*(v266 + 8))(v117, v267);
        }

        else
        {
          v209 = v119;
          swift_beginAccess();
          v210 = *(*(v79 + 24) + 16);
          v211 = v267;
          v212 = v266;
          if ((~v210 & 0xF000000000000007) != 0 && ((v210 >> 59) & 0x1E | (v210 >> 2) & 1) == 0xB)
          {
            v213 = *((v210 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v213 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v213 = sub_1ADDE5178(v213);
          }

          swift_beginAccess();
          *(v213 + 24) = v209;

          sub_1AE1B7530(v213);
          swift_endAccess();

          (*(v212 + 8))(v117, v211);
        }
      }

      else if (EnumCaseMultiPayload == 8)
      {
        v65 = v60;
        (*(v269 + 32))(v268, v53, v60);
        v66 = v244;
        swift_beginAccess();
        v67 = v66;
        v68 = *(*(v66 + 24) + 16);
        if ((~v68 & 0xF000000000000007) != 0 && ((v68 >> 59) & 0x1E | (v68 >> 2) & 1) == 0xB)
        {
          v69 = *((v68 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v69 = swift_initStaticObject();
        }

        v131 = v243;
        v132 = v242;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v69 = sub_1ADDE5178(v69);
        }

        swift_beginAccess();
        *(v69 + 16) = 8;
        sub_1AE1B7530(v69);
        v133 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v133);
        v134 = v270;
        *(&v240 - 10) = v272;
        *(&v240 - 9) = v134;
        v135 = v271;
        *(&v240 - 8) = v273;
        *(&v240 - 7) = v135;
        v136 = v274;
        *(&v240 - 12) = v65;
        *(&v240 - 11) = v136;
        *(&v240 - 5) = v275;
        v137 = v277;
        *(&v240 - 8) = v276;
        *(&v240 - 7) = v137;
        *(&v240 - 6) = v241;
        *(&v240 - 5) = v36;
        *(&v240 - 4) = v132;
        *(&v240 - 3) = v131;
        v138 = v268;
        *(&v240 - 2) = v268;
        *(&v240 - 1) = a1;
        v139 = v290;
        v140 = sub_1ADE6B938(sub_1ADFFB130);
        if (v139)
        {

          (*(v269 + 8))(v138, v65);
        }

        else
        {
          v217 = v140;
          swift_beginAccess();
          v218 = *(*(v67 + 24) + 16);
          if ((~v218 & 0xF000000000000007) != 0 && ((v218 >> 59) & 0x1E | (v218 >> 2) & 1) == 0xB)
          {
            v219 = *((v218 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v219 = swift_initStaticObject();
          }

          v235 = v269;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v219 = sub_1ADDE5178(v219);
          }

          swift_beginAccess();
          *(v219 + 24) = v217;

          sub_1AE1B7530(v219);
          swift_endAccess();

          (*(v235 + 8))(v138, v65);
        }
      }

      else
      {
        v86 = *v53;
        v85 = v53[1];
        v87 = v244;
        swift_beginAccess();
        v88 = *(*(v87 + 24) + 16);
        if ((~v88 & 0xF000000000000007) != 0 && ((v88 >> 59) & 0x1E | (v88 >> 2) & 1) == 0xB)
        {
          v89 = *((v88 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v89 = swift_initStaticObject();
        }

        v152 = a1;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v89 = sub_1ADDE5178(v89);
        }

        swift_beginAccess();
        *(v89 + 16) = v86;
        sub_1AE1B7530(v89);
        swift_endAccess();
        v154 = *(a1 + 112);
        v153 = *(a1 + 120);
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        v155 = v290;
        v156 = (*(*v85 + 152))(a1);
        if (v155)
        {
        }

        else
        {
          v236 = sub_1ADE71C08(v156, v157, v158);
          swift_beginAccess();
          v237 = *(v236 + 24);
          *(v152 + 112) = v154;

          *(v152 + 120) = v153;

          swift_beginAccess();
          v238 = *(*(v87 + 24) + 16);
          if ((~v238 & 0xF000000000000007) != 0 && ((v238 >> 59) & 0x1E | (v238 >> 2) & 1) == 0xB)
          {
            v239 = *((v238 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v239 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v239 = sub_1ADDE5178(v239);
          }

          swift_beginAccess();
          *(v239 + 24) = v237;

          sub_1AE1B7530(v239);
          swift_endAccess();
        }
      }
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        (*(v248 + 32))(v247, v53, v249);
        v90 = v244;
        swift_beginAccess();
        v91 = *(*(v90 + 24) + 16);
        if ((~v91 & 0xF000000000000007) != 0 && ((v91 >> 59) & 0x1E | (v91 >> 2) & 1) == 0xB)
        {
          v92 = *((v91 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v92 = swift_initStaticObject();
        }

        v182 = v60;
        v183 = v241;
        v184 = v277;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v92 = sub_1ADDE5178(v92);
        }

        swift_beginAccess();
        *(v92 + 16) = 1;
        sub_1AE1B7530(v92);
        v185 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v185);
        v186 = v270;
        *(&v240 - 10) = v272;
        *(&v240 - 9) = v186;
        v187 = v271;
        *(&v240 - 8) = v273;
        *(&v240 - 7) = v187;
        v188 = v274;
        *(&v240 - 12) = v182;
        *(&v240 - 11) = v188;
        *(&v240 - 5) = v275;
        *(&v240 - 8) = v276;
        *(&v240 - 7) = v184;
        *(&v240 - 6) = v183;
        *(&v240 - 5) = v36;
        v189 = v243;
        *(&v240 - 4) = v242;
        *(&v240 - 3) = v189;
        v190 = v247;
        *(&v240 - 2) = v247;
        *(&v240 - 1) = a1;
        v191 = v290;
        v192 = sub_1ADE6B938(sub_1ADFFB328);
        if (v191)
        {
        }

        else
        {
          v229 = v192;
          swift_beginAccess();
          v230 = *(*(v90 + 24) + 16);
          if ((~v230 & 0xF000000000000007) != 0 && ((v230 >> 59) & 0x1E | (v230 >> 2) & 1) == 0xB)
          {
            v231 = *((v230 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v231 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v231 = sub_1ADDE5178(v231);
          }

          swift_beginAccess();
          *(v231 + 24) = v229;

          sub_1AE1B7530(v231);
          swift_endAccess();
        }

        (*(v248 + 8))(v190, v249);
      }

      else
      {
        (*(v246 + 32))(v245, v53, v240);
        v70 = v244;
        swift_beginAccess();
        v71 = *(*(v70 + 24) + 16);
        if ((~v71 & 0xF000000000000007) != 0 && ((v71 >> 59) & 0x1E | (v71 >> 2) & 1) == 0xB)
        {
          v72 = *((v71 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v72 = swift_initStaticObject();
        }

        v159 = v60;
        v160 = v241;
        v161 = v277;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v72 = sub_1ADDE5178(v72);
        }

        swift_beginAccess();
        *(v72 + 16) = 0;
        sub_1AE1B7530(v72);
        v162 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v162);
        v163 = v270;
        *(&v240 - 10) = v272;
        *(&v240 - 9) = v163;
        v164 = v271;
        *(&v240 - 8) = v273;
        *(&v240 - 7) = v164;
        *&v165 = v159;
        *(&v165 + 1) = v274;
        v166 = v275;
        *(&v240 - 6) = v165;
        *(&v240 - 5) = v166;
        *(&v240 - 8) = v276;
        *(&v240 - 7) = v161;
        *(&v240 - 6) = v160;
        *(&v240 - 5) = v36;
        v167 = v243;
        *(&v240 - 4) = v242;
        *(&v240 - 3) = v167;
        v168 = v245;
        *(&v240 - 2) = v245;
        *(&v240 - 1) = a1;
        v169 = v290;
        v170 = sub_1ADE6B938(sub_1ADFFB370);
        if (v169)
        {
        }

        else
        {
          v223 = v170;
          swift_beginAccess();
          v224 = *(*(v70 + 24) + 16);
          if ((~v224 & 0xF000000000000007) != 0 && ((v224 >> 59) & 0x1E | (v224 >> 2) & 1) == 0xB)
          {
            v225 = *((v224 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v225 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v225 = sub_1ADDE5178(v225);
          }

          swift_beginAccess();
          *(v225 + 24) = v223;

          sub_1AE1B7530(v225);
          swift_endAccess();
        }

        (*(v246 + 8))(v168, v240);
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      (*(v251 + 32))(v250, v53, v252);
      v76 = v244;
      swift_beginAccess();
      v77 = *(*(v76 + 24) + 16);
      if ((~v77 & 0xF000000000000007) != 0 && ((v77 >> 59) & 0x1E | (v77 >> 2) & 1) == 0xB)
      {
        v78 = *((v77 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v78 = swift_initStaticObject();
      }

      v96 = v60;
      v97 = v241;
      v98 = v277;
      v99 = v276;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v78 = sub_1ADDE5178(v78);
      }

      swift_beginAccess();
      *(v78 + 16) = 2;
      sub_1AE1B7530(v78);
      v100 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v100);
      v101 = v270;
      *(&v240 - 10) = v272;
      *(&v240 - 9) = v101;
      v102 = v271;
      *(&v240 - 8) = v273;
      *(&v240 - 7) = v102;
      v103 = v274;
      *(&v240 - 12) = v96;
      *(&v240 - 11) = v103;
      *(&v240 - 5) = v275;
      *(&v240 - 8) = v99;
      *(&v240 - 7) = v98;
      *(&v240 - 6) = v97;
      *(&v240 - 5) = v36;
      v104 = v243;
      *(&v240 - 4) = v242;
      *(&v240 - 3) = v104;
      v105 = v250;
      *(&v240 - 2) = v250;
      *(&v240 - 1) = a1;
      v106 = v290;
      v107 = sub_1ADE6B938(sub_1ADFFB2E0);
      if (v106)
      {

        (*(v251 + 8))(v105, v252);
      }

      else
      {
        v204 = v107;
        swift_beginAccess();
        v205 = *(*(v76 + 24) + 16);
        v206 = v252;
        v207 = v251;
        if ((~v205 & 0xF000000000000007) != 0 && ((v205 >> 59) & 0x1E | (v205 >> 2) & 1) == 0xB)
        {
          v208 = *((v205 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v208 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v208 = sub_1ADDE5178(v208);
        }

        swift_beginAccess();
        *(v208 + 24) = v204;

        sub_1AE1B7530(v208);
        swift_endAccess();

        (*(v207 + 8))(v105, v206);
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      (*(v254 + 32))(v253, v53, v255);
      v62 = v244;
      swift_beginAccess();
      v63 = *(*(v62 + 24) + 16);
      if ((~v63 & 0xF000000000000007) != 0 && ((v63 >> 59) & 0x1E | (v63 >> 2) & 1) == 0xB)
      {
        v64 = *((v63 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v64 = swift_initStaticObject();
      }

      v120 = v60;
      v121 = v241;
      v122 = v277;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v64 = sub_1ADDE5178(v64);
      }

      swift_beginAccess();
      *(v64 + 16) = 3;
      sub_1AE1B7530(v64);
      v123 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v123);
      v124 = v270;
      *(&v240 - 10) = v272;
      *(&v240 - 9) = v124;
      v125 = v271;
      *(&v240 - 8) = v273;
      *(&v240 - 7) = v125;
      v126 = v274;
      *(&v240 - 12) = v120;
      *(&v240 - 11) = v126;
      *(&v240 - 5) = v275;
      *(&v240 - 8) = v276;
      *(&v240 - 7) = v122;
      *(&v240 - 6) = v121;
      *(&v240 - 5) = v36;
      v127 = v243;
      *(&v240 - 4) = v242;
      *(&v240 - 3) = v127;
      v128 = v253;
      *(&v240 - 2) = v253;
      *(&v240 - 1) = a1;
      v129 = v290;
      v130 = sub_1ADE6B938(sub_1ADFFB298);
      if (v129)
      {
      }

      else
      {
        v214 = v130;
        swift_beginAccess();
        v215 = *(*(v62 + 24) + 16);
        if ((~v215 & 0xF000000000000007) != 0 && ((v215 >> 59) & 0x1E | (v215 >> 2) & 1) == 0xB)
        {
          v216 = *((v215 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v216 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v216 = sub_1ADDE5178(v216);
        }

        swift_beginAccess();
        *(v216 + 24) = v214;

        sub_1AE1B7530(v216);
        swift_endAccess();
      }

      (*(v254 + 8))(v128, v255);
    }

    else
    {
      (*(v257 + 32))(v256, v53, v259);
      v82 = v244;
      swift_beginAccess();
      v83 = *(*(v82 + 24) + 16);
      if ((~v83 & 0xF000000000000007) != 0 && ((v83 >> 59) & 0x1E | (v83 >> 2) & 1) == 0xB)
      {
        v84 = *((v83 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v84 = swift_initStaticObject();
      }

      v141 = v60;
      v142 = v241;
      v143 = v277;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v84 = sub_1ADDE5178(v84);
      }

      swift_beginAccess();
      *(v84 + 16) = 4;
      sub_1AE1B7530(v84);
      v144 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v144);
      v145 = v270;
      *(&v240 - 10) = v272;
      *(&v240 - 9) = v145;
      v146 = v271;
      *(&v240 - 8) = v273;
      *(&v240 - 7) = v146;
      v147 = v274;
      *(&v240 - 12) = v141;
      *(&v240 - 11) = v147;
      *(&v240 - 5) = v275;
      *(&v240 - 8) = v276;
      *(&v240 - 7) = v143;
      *(&v240 - 6) = v142;
      *(&v240 - 5) = v36;
      v148 = v243;
      *(&v240 - 4) = v242;
      *(&v240 - 3) = v148;
      v149 = v256;
      *(&v240 - 2) = v256;
      *(&v240 - 1) = a1;
      v150 = v290;
      v151 = sub_1ADE6B938(sub_1ADFFB250);
      if (v150)
      {
      }

      else
      {
        v220 = v151;
        swift_beginAccess();
        v221 = *(*(v82 + 24) + 16);
        if ((~v221 & 0xF000000000000007) != 0 && ((v221 >> 59) & 0x1E | (v221 >> 2) & 1) == 0xB)
        {
          v222 = *((v221 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v222 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v222 = sub_1ADDE5178(v222);
        }

        swift_beginAccess();
        *(v222 + 24) = v220;

        sub_1AE1B7530(v222);
        swift_endAccess();
      }

      (*(v257 + 8))(v149, v259);
    }
  }

  return result;
}

void TaggedValue_9<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v99 = a8;
  v102 = a7;
  v101 = a6;
  v98 = a5;
  v97 = a4;
  v96 = a3;
  v105 = a1;
  v100 = *(*(a2 + 80) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v95 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = *(*(v12 + 72) - 8);
  MEMORY[0x1EEE9AC00](v13);
  v92 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = *(*(v15 + 64) - 8);
  MEMORY[0x1EEE9AC00](v16);
  v89 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 56);
  v87 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v86 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v22 + 48);
  v85 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v84 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v26 + 40);
  v83 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v82 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v30 + 32);
  v81 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v80 = &v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v34 + 24);
  v79 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v77 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v39 + 16);
  v78 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v77 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v44 = v40;
  *(&v44 + 1) = v35;
  v46 = *(v45 + 152);
  *&v47 = v31;
  *(&v47 + 1) = v27;
  v108 = v47;
  v107 = v44;
  *&v44 = v23;
  v88 = v19;
  *(&v44 + 1) = v19;
  v91 = v48;
  *&v47 = v48;
  v94 = v49;
  *(&v47 + 1) = v49;
  v110 = v47;
  v109 = v44;
  v103 = v50;
  v111 = v50;
  v51 = *(v45 + 104);
  v112 = *(v45 + 88);
  v113 = v51;
  *(v52 + 104) = *(v45 + 120);
  *(v52 + 120) = *(v45 + 136);
  v116 = v46;
  v53 = type metadata accessor for TaggedValue_9.TaggedEnum(0, &v107);
  v54 = MEMORY[0x1EEE9AC00](v53);
  v56 = &v77 - v55;
  (*(v57 + 16))(&v77 - v55, v104, v53, v54);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v68 = v87;
        v69 = v86;
        v70 = v88;
        (*(v87 + 32))(v86, v56, v88);
        sub_1AE23CBAC();
        (*(v68 + 8))(v69, v70);
        return;
      }

      v61 = v90;
      v62 = *(v90 + 32);
      v63 = v89;
      v64 = v89;
      v65 = v56;
      v66 = &v114;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v61 = v93;
      v62 = *(v93 + 32);
      v63 = v92;
      v64 = v92;
      v65 = v56;
      v66 = &v115;
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
        (*(**(v56 + 1) + 80))(v106);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
        swift_dynamicCast();
        __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
        sub_1AE23CBAC();
        __swift_destroy_boxed_opaque_existential_1(&v107);

        return;
      }

      v61 = v100;
      v62 = *(v100 + 32);
      v63 = v95;
      v64 = v95;
      v65 = v56;
      v66 = &v117;
    }

    v76 = *(v66 - 32);
    v62(v64, v65, v76);
    sub_1AE23CBAC();
    (*(v61 + 8))(v63, v76);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v75 = v79;
      (*(v79 + 32))(v38, v56, v35);
      sub_1AE23CBAC();
      (*(v75 + 8))(v38, v35);
    }

    else
    {
      v67 = v78;
      (*(v78 + 32))(v43, v56, v40);
      sub_1AE23CBAC();
      (*(v67 + 8))(v43, v40);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v71 = v81;
    v72 = v80;
    (*(v81 + 32))(v80, v56, v31);
    sub_1AE23CBAC();
    (*(v71 + 8))(v72, v31);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v59 = v83;
    v60 = v82;
    (*(v83 + 32))(v82, v56, v27);
    sub_1AE23CBAC();
    (*(v59 + 8))(v60, v27);
  }

  else
  {
    v73 = v85;
    v74 = v84;
    (*(v85 + 32))(v84, v56, v23);
    sub_1AE23CBAC();
    (*(v73 + 8))(v74, v23);
  }
}

uint64_t sub_1ADFFB3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADFFB3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADFFB430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADFFB46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADFFB4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADFFB4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADFFB520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADFFB55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADFFB598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ADFFB5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TaggedValue_1.TaggedEnum(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADFFB644(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
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
    goto LABEL_25;
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

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1ADFFB75C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_1ADFFB92C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1ADFFB9A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1ADFFB9A4()
{
  if (!qword_1EB5B95D0[0])
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EB5B95D0);
    }
  }
}

uint64_t sub_1ADFFBA04(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADFFBA84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v10 < 2)
    {
LABEL_23:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_23;
  }

LABEL_12:
  v11 = (v8 - 1) << v7;
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

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 254;
}

void sub_1ADFFBBCC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = v7 + 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 253) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_37:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v7] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_22;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_1ADFFBD9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  result = type metadata accessor for TaggedValue_2.TaggedEnum(319, v4);
  if (v3 <= 0x3F)
  {
    v5 = 0;
    *&v4[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADFFBE14(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = 16;
  if (v3 > 0x10)
  {
    v5 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
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

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 254;
}

void sub_1ADFFBF48(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_41:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v5] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_26;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

void sub_1ADFFC134(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1ADFFB9A4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1ADFFC1C4(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ADFFC278(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_26;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 252) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 < 2)
    {
LABEL_26:
      v14 = *(a1 + v7);
      if (v14 >= 4)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_26;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 253;
}

void sub_1ADFFC418(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  if (a3 < 0xFD)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 252) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFC)
  {
    v11 = a2 - 253;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_39:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1ADFFC638(_OWORD *a1)
{
  v1 = a1[2];
  v4[0] = a1[1];
  v4[1] = v1;
  v4[2] = a1[3];
  result = type metadata accessor for TaggedValue_3.TaggedEnum(319, v4);
  if (v3 <= 0x3F)
  {
    v5 = 0;
    *&v4[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADFFC6B8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[3] - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(a3[4] - 8);
  if (*(v5 + 64) > v3)
  {
    v3 = *(v5 + 64);
  }

  v6 = 16;
  if (v3 > 0x10)
  {
    v6 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_29;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 252) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v11 < 2)
    {
LABEL_29:
      v13 = *(a1 + v6);
      if (v13 >= 4)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_29;
  }

LABEL_18:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 253;
}

void sub_1ADFFC80C(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  v6 = *(a4[4] - 8);
  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v7 = v5 + 1;
  if (a3 < 0xFD)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 252) >> (8 * v7)) + 1;
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

  if (a2 > 0xFC)
  {
    v9 = a2 - 253;
    if (v7 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v5 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_43:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v5] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_28;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

void sub_1ADFFCA18(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_1ADFFB9A4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1ADFFCAC0(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1ADFFCBA4(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 > v5)
  {
    v5 = v6;
  }

  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_28;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 251) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v13 < 2)
    {
LABEL_28:
      v15 = *(a1 + v8);
      if (v15 >= 5)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_28;
  }

LABEL_17:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 252;
}

void sub_1ADFFCD7C(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 > v7)
  {
    v7 = v8;
  }

  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 <= v7)
  {
    v9 = v7;
  }

  v10 = v9 + 1;
  if (a3 < 0xFC)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 251) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFB)
  {
    v12 = a2 - 252;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_41:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v9] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_26;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t sub_1ADFFCFD4(_OWORD *a1)
{
  v1 = a1[2];
  v5[0] = a1[1];
  v5[1] = v1;
  v2 = a1[4];
  v5[2] = a1[3];
  v5[3] = v2;
  result = type metadata accessor for TaggedValue_4.TaggedEnum(319, v5);
  if (v4 <= 0x3F)
  {
    v6 = 0;
    *&v5[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADFFD054(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[3] - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(a3[4] - 8);
  if (*(v5 + 64) > v3)
  {
    v3 = *(v5 + 64);
  }

  v6 = *(a3[5] - 8);
  if (*(v6 + 64) > v3)
  {
    v3 = *(v6 + 64);
  }

  v7 = 16;
  if (v3 > 0x10)
  {
    v7 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_31;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 251) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v12 < 2)
    {
LABEL_31:
      v14 = *(a1 + v7);
      if (v14 >= 5)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_31;
  }

LABEL_20:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 252;
}

void sub_1ADFFD1C8(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  v6 = *(a4[4] - 8);
  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  v7 = *(a4[5] - 8);
  if (*(v7 + 64) > v5)
  {
    v5 = *(v7 + 64);
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v8 = v5 + 1;
  if (a3 < 0xFC)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 251) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFB)
  {
    v10 = a2 - 252;
    if (v8 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v5 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_45:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_45;
          }
        }

LABEL_42:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_31:
      a1[v5] = -a2;
      return;
    }

LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_30;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_31;
  }
}

void sub_1ADFFD3F4(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          sub_1ADFFB9A4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1ADFFD4B4(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v4 <= 0x3F)
      {
        result = swift_getAssociatedTypeWitness();
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1ADFFD5C8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 > v5)
  {
    v5 = v6;
  }

  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 > v5)
  {
    v5 = v7;
  }

  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 <= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_30;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 250) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v14 < 2)
    {
LABEL_30:
      v16 = *(a1 + v9);
      if (v16 >= 6)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_30;
  }

LABEL_19:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 251;
}

void sub_1ADFFD7D8(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 > v7)
  {
    v7 = v8;
  }

  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 > v7)
  {
    v7 = v9;
  }

  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v10 <= v7)
  {
    v10 = v7;
  }

  v11 = v10 + 1;
  if (a3 < 0xFB)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 + ~(-1 << (8 * v11)) - 250) >> (8 * v11)) + 1;
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

  if (a2 > 0xFA)
  {
    v13 = a2 - 251;
    if (v11 >= 4)
    {
      bzero(a1, v10 + 1);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v10 != -1)
    {
      v17 = v13 & ~(-1 << (8 * v11));
      bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v17;
          if (v12 > 1)
          {
LABEL_43:
            if (v12 == 2)
            {
              *&a1[v11] = v14;
            }

            else
            {
              *&a1[v11] = v14;
            }

            return;
          }
        }

        else
        {
          *a1 = v13;
          if (v12 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v10] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_28;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

uint64_t sub_1ADFFDA68(_OWORD *a1)
{
  v1 = a1[2];
  v5[0] = a1[1];
  v5[1] = v1;
  v2 = a1[4];
  v5[2] = a1[3];
  v5[3] = v2;
  v5[4] = a1[5];
  result = type metadata accessor for TaggedValue_5.TaggedEnum(319, v5);
  if (v4 <= 0x3F)
  {
    v6 = 0;
    *&v5[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADFFDAF0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[3] - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(a3[4] - 8);
  if (*(v5 + 64) > v3)
  {
    v3 = *(v5 + 64);
  }

  v6 = *(a3[5] - 8);
  if (*(v6 + 64) > v3)
  {
    v3 = *(v6 + 64);
  }

  v7 = *(a3[6] - 8);
  if (*(v7 + 64) > v3)
  {
    v3 = *(v7 + 64);
  }

  v8 = 16;
  if (v3 > 0x10)
  {
    v8 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_33;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 250) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    if (v13 < 2)
    {
LABEL_33:
      v15 = *(a1 + v8);
      if (v15 >= 6)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_33;
  }

LABEL_22:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 251;
}

void sub_1ADFFDC84(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  v6 = *(a4[4] - 8);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  v7 = *(a4[5] - 8);
  if (*(v7 + 64) > v5)
  {
    v5 = *(v7 + 64);
  }

  v8 = *(a4[6] - 8);
  if (*(v8 + 64) > v5)
  {
    v5 = *(v8 + 64);
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v9 = v5 + 1;
  if (a3 < 0xFB)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 250) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFA)
  {
    v11 = a2 - 251;
    if (v9 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v5 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_47:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_47;
          }
        }

LABEL_44:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_33:
      a1[v5] = -a2;
      return;
    }

LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_32;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_33;
  }
}

void sub_1ADFFDED0(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            sub_1ADFFB9A4();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ADFFDFA8(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v4 <= 0x3F)
      {
        result = swift_getAssociatedTypeWitness();
        if (v5 <= 0x3F)
        {
          result = swift_getAssociatedTypeWitness();
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1ADFFE0EC(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 > v5)
  {
    v5 = v6;
  }

  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 > v5)
  {
    v5 = v7;
  }

  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 > v5)
  {
    v5 = v8;
  }

  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 <= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_32;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v15 = ((a2 + ~(-1 << v12) - 249) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 < 2)
    {
LABEL_32:
      v17 = *(a1 + v10);
      if (v17 >= 7)
      {
        return (v17 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_32;
  }

LABEL_21:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return (v11 | v16) + 250;
}

void sub_1ADFFE334(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 > v7)
  {
    v7 = v8;
  }

  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 > v7)
  {
    v7 = v9;
  }

  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v10 > v7)
  {
    v7 = v10;
  }

  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 <= v7)
  {
    v11 = v7;
  }

  v12 = v11 + 1;
  if (a3 < 0xFA)
  {
    v13 = 0;
  }

  else if (v12 <= 3)
  {
    v16 = ((a3 + ~(-1 << (8 * v12)) - 249) >> (8 * v12)) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (a2 > 0xF9)
  {
    v14 = a2 - 250;
    if (v12 >= 4)
    {
      bzero(a1, v11 + 1);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v15 = (v14 >> (8 * v12)) + 1;
    if (v11 != -1)
    {
      v18 = v14 & ~(-1 << (8 * v12));
      bzero(a1, v12);
      if (v12 != 3)
      {
        if (v12 == 2)
        {
          *a1 = v18;
          if (v13 > 1)
          {
LABEL_45:
            if (v13 == 2)
            {
              *&a1[v12] = v15;
            }

            else
            {
              *&a1[v12] = v15;
            }

            return;
          }
        }

        else
        {
          *a1 = v14;
          if (v13 > 1)
          {
            goto LABEL_45;
          }
        }

LABEL_42:
        if (v13)
        {
          a1[v12] = v15;
        }

        return;
      }

      *a1 = v18;
      a1[2] = BYTE2(v18);
    }

    if (v13 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  if (v13 <= 1)
  {
    if (v13)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_31:
      a1[v11] = -a2;
      return;
    }

LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (v13 == 2)
  {
    *&a1[v12] = 0;
    goto LABEL_30;
  }

  *&a1[v12] = 0;
  if (a2)
  {
    goto LABEL_31;
  }
}

uint64_t sub_1ADFFE5FC(_OWORD *a1)
{
  v1 = a1[2];
  v6[0] = a1[1];
  v6[1] = v1;
  v2 = a1[4];
  v6[2] = a1[3];
  v6[3] = v2;
  v3 = a1[6];
  v6[4] = a1[5];
  v6[5] = v3;
  result = type metadata accessor for TaggedValue_6.TaggedEnum(319, v6);
  if (v5 <= 0x3F)
  {
    v7 = 0;
    *&v6[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADFFE684(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[3] - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(a3[4] - 8);
  if (*(v5 + 64) > v3)
  {
    v3 = *(v5 + 64);
  }

  v6 = *(a3[5] - 8);
  if (*(v6 + 64) > v3)
  {
    v3 = *(v6 + 64);
  }

  v7 = *(a3[6] - 8);
  if (*(v7 + 64) > v3)
  {
    v3 = *(v7 + 64);
  }

  v8 = *(a3[7] - 8);
  if (*(v8 + 64) > v3)
  {
    v3 = *(v8 + 64);
  }

  v9 = 16;
  if (v3 > 0x10)
  {
    v9 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_35;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 249) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (v14 < 2)
    {
LABEL_35:
      v16 = *(a1 + v9);
      if (v16 >= 7)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_35;
  }

LABEL_24:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 250;
}

void sub_1ADFFE838(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  v6 = *(a4[5] - 8);
  if (*(*(a4[4] - 8) + 64) > v5)
  {
    v5 = *(*(a4[4] - 8) + 64);
  }

  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  v7 = *(a4[6] - 8);
  if (*(v7 + 64) > v5)
  {
    v5 = *(v7 + 64);
  }

  v8 = *(a4[7] - 8);
  if (*(v8 + 64) > v5)
  {
    v5 = *(v8 + 64);
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v9 = v5 + 1;
  if (a3 < 0xFA)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 249) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xF9)
  {
    v11 = a2 - 250;
    if (v9 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v5 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_49:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_49;
          }
        }

LABEL_46:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_35:
      a1[v5] = -a2;
      return;
    }

LABEL_34:
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_34;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_35;
  }
}

void sub_1ADFFEAA0(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v6 <= 0x3F)
            {
              sub_1ADFFB9A4();
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ADFFEB90(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v4 <= 0x3F)
      {
        result = swift_getAssociatedTypeWitness();
        if (v5 <= 0x3F)
        {
          result = swift_getAssociatedTypeWitness();
          if (v6 <= 0x3F)
          {
            result = swift_getAssociatedTypeWitness();
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1ADFFED04(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 > v5)
  {
    v5 = v6;
  }

  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 > v5)
  {
    v5 = v7;
  }

  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 > v5)
  {
    v5 = v8;
  }

  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 > v5)
  {
    v5 = v9;
  }

  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v10 <= v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_34;
  }

  v12 = v11 + 1;
  v13 = 8 * (v11 + 1);
  if ((v11 + 1) <= 3)
  {
    v16 = ((a2 + ~(-1 << v13) - 248) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v16 < 2)
    {
LABEL_34:
      v18 = *(a1 + v11);
      if (v18 >= 8)
      {
        return (v18 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_34;
  }

LABEL_23:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return (v12 | v17) + 249;
}

void sub_1ADFFEF84(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 > v7)
  {
    v7 = v8;
  }

  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 > v7)
  {
    v7 = v9;
  }

  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v10 > v7)
  {
    v7 = v10;
  }

  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 > v7)
  {
    v7 = v11;
  }

  v12 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v12 <= v7)
  {
    v12 = v7;
  }

  v13 = v12 + 1;
  if (a3 < 0xF9)
  {
    v14 = 0;
  }

  else if (v13 <= 3)
  {
    v17 = ((a3 + ~(-1 << (8 * v13)) - 248) >> (8 * v13)) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (a2 > 0xF8)
  {
    v15 = a2 - 249;
    if (v13 >= 4)
    {
      bzero(a1, v12 + 1);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    v16 = (v15 >> (8 * v13)) + 1;
    if (v12 != -1)
    {
      v19 = v15 & ~(-1 << (8 * v13));
      bzero(a1, v13);
      if (v13 != 3)
      {
        if (v13 == 2)
        {
          *a1 = v19;
          if (v14 > 1)
          {
LABEL_47:
            if (v14 == 2)
            {
              *&a1[v13] = v16;
            }

            else
            {
              *&a1[v13] = v16;
            }

            return;
          }
        }

        else
        {
          *a1 = v15;
          if (v14 > 1)
          {
            goto LABEL_47;
          }
        }

LABEL_44:
        if (v14)
        {
          a1[v13] = v16;
        }

        return;
      }

      *a1 = v19;
      a1[2] = BYTE2(v19);
    }

    if (v14 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  if (v14 <= 1)
  {
    if (v14)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_33:
      a1[v12] = -a2;
      return;
    }

LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (v14 == 2)
  {
    *&a1[v13] = 0;
    goto LABEL_32;
  }

  *&a1[v13] = 0;
  if (a2)
  {
    goto LABEL_33;
  }
}

uint64_t sub_1ADFFF284(_OWORD *a1)
{
  v1 = a1[2];
  v6[0] = a1[1];
  v6[1] = v1;
  v2 = a1[4];
  v6[2] = a1[3];
  v6[3] = v2;
  v3 = a1[6];
  v6[4] = a1[5];
  v6[5] = v3;
  v6[6] = a1[7];
  result = type metadata accessor for TaggedValue_7.TaggedEnum(319, v6);
  if (v5 <= 0x3F)
  {
    v7 = 0;
    *&v6[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ADFFF314(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[4] - 8);
  if (*(*(a3[3] - 8) + 64) > v3)
  {
    v3 = *(*(a3[3] - 8) + 64);
  }

  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(a3[5] - 8);
  if (*(v5 + 64) > v3)
  {
    v3 = *(v5 + 64);
  }

  v6 = *(a3[6] - 8);
  if (*(v6 + 64) > v3)
  {
    v3 = *(v6 + 64);
  }

  v7 = *(a3[7] - 8);
  if (*(v7 + 64) > v3)
  {
    v3 = *(v7 + 64);
  }

  v8 = *(a3[8] - 8);
  if (*(v8 + 64) > v3)
  {
    v3 = *(v8 + 64);
  }

  v9 = 16;
  if (v3 > 0x10)
  {
    v9 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_37;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 248) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_37;
      }

      goto LABEL_26;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_37;
      }

      goto LABEL_26;
    }

    if (v14 < 2)
    {
LABEL_37:
      v16 = *(a1 + v9);
      if (v16 >= 8)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_37;
  }

LABEL_26:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 249;
}

void sub_1ADFFF4E8(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  v6 = *(a4[4] - 8);
  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  v7 = *(a4[6] - 8);
  if (*(*(a4[5] - 8) + 64) > v5)
  {
    v5 = *(*(a4[5] - 8) + 64);
  }

  if (*(v7 + 64) > v5)
  {
    v5 = *(v7 + 64);
  }

  v8 = *(a4[7] - 8);
  if (*(v8 + 64) > v5)
  {
    v5 = *(v8 + 64);
  }

  v9 = *(a4[8] - 8);
  if (*(v9 + 64) > v5)
  {
    v5 = *(v9 + 64);
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v10 = v5 + 1;
  if (a3 < 0xF9)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 248) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xF8)
  {
    v12 = a2 - 249;
    if (v10 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_51;
      }

      goto LABEL_48;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v5 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_51:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_51;
          }
        }

LABEL_48:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      a1[v5] = -a2;
      return;
    }

LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_36;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_37;
  }
}

void sub_1ADFFF770(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v6 <= 0x3F)
            {
              swift_checkMetadataState();
              if (v7 <= 0x3F)
              {
                sub_1ADFFB9A4();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ADFFF878(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v4 <= 0x3F)
      {
        result = swift_getAssociatedTypeWitness();
        if (v5 <= 0x3F)
        {
          result = swift_getAssociatedTypeWitness();
          if (v6 <= 0x3F)
          {
            result = swift_getAssociatedTypeWitness();
            if (v7 <= 0x3F)
            {
              result = swift_getAssociatedTypeWitness();
              if (v8 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1ADFFFA1C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 > v5)
  {
    v5 = v6;
  }

  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 > v5)
  {
    v5 = v7;
  }

  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 > v5)
  {
    v5 = v8;
  }

  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 > v5)
  {
    v5 = v9;
  }

  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v10 > v5)
  {
    v5 = v10;
  }

  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 <= v5)
  {
    v12 = v5;
  }

  else
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_36;
  }

  v13 = v12 + 1;
  v14 = 8 * (v12 + 1);
  if ((v12 + 1) <= 3)
  {
    v17 = ((a2 + ~(-1 << v14) - 247) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    if (v17 < 2)
    {
LABEL_36:
      v19 = *(a1 + v12);
      if (v19 >= 9)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_36;
  }

LABEL_25:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return (v13 | v18) + 248;
}