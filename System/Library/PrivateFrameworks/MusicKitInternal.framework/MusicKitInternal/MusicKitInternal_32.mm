_BYTE *sub_1D51590D4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D51591F4()
{
  result = qword_1EC7F0C20;
  if (!qword_1EC7F0C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0C20);
  }

  return result;
}

unint64_t sub_1D515924C()
{
  result = qword_1EDD54F50;
  if (!qword_1EDD54F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD54F50);
  }

  return result;
}

unint64_t sub_1D51592A4()
{
  result = qword_1EDD54F58;
  if (!qword_1EDD54F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD54F58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D5615F78();
}

id sub_1D5159364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_1D56131C8();
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = sub_1D4F688F0();
  (*(v16 + 16))(v20, a1, v14);
  (*(v9 + 16))(v13, v4, a2);
  return sub_1D5159CE8(v13, v20, v21, a2, a3);
}

uint64_t sub_1D51594D4()
{
  v1 = v0;
  v2 = sub_1D56131C8();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  v10 = 0;
  if (v9 == *MEMORY[0x1E69769C0])
  {
    return v10;
  }

  if (v9 == *MEMORY[0x1E6976970])
  {
    return 1;
  }

  if (v9 == *MEMORY[0x1E6976950])
  {
    return 2;
  }

  if (v9 == *MEMORY[0x1E6976988])
  {
    return 3;
  }

  if (v9 == *MEMORY[0x1E6976978])
  {
    return 4;
  }

  if (v9 == *MEMORY[0x1E6976960])
  {
    return 5;
  }

  if (v9 == *MEMORY[0x1E6976980])
  {
    return 6;
  }

  if (v9 == *MEMORY[0x1E6976958])
  {
    return 7;
  }

  if (v9 == *MEMORY[0x1E6976968])
  {
    return 8;
  }

  if (v9 == *MEMORY[0x1E69769B0])
  {
    return 9;
  }

  if (v9 == *MEMORY[0x1E69769A8])
  {
    return 10;
  }

  if (v9 == *MEMORY[0x1E69769A0])
  {
    return 11;
  }

  if (v9 == *MEMORY[0x1E6976948])
  {
    return 12;
  }

  if (v9 == *MEMORY[0x1E6976990])
  {
    return 13;
  }

  if (v9 == *MEMORY[0x1E69769B8])
  {
    return 14;
  }

  if (v9 == *MEMORY[0x1E6976998])
  {
    return 15;
  }

  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000010, 0x80000001D5685D70);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](0xD000000000000042, 0x80000001D5685D90);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D5159818()
{
  v1 = sub_1D5613158();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  (*(v3 + 16))(v6 - v5, v0, v1);
  v8 = (*(v3 + 88))(v7, v1);
  v9 = 0;
  if (v8 == *MEMORY[0x1E6976838])
  {
    return v9;
  }

  if (v8 == *MEMORY[0x1E69767B0])
  {
    return 1;
  }

  if (v8 == *MEMORY[0x1E6976850])
  {
    return 2;
  }

  if (v8 == *MEMORY[0x1E6976880])
  {
    return 3;
  }

  if (v8 == *MEMORY[0x1E69767B8])
  {
    return 4;
  }

  if (v8 == *MEMORY[0x1E6976868])
  {
    return 5;
  }

  if (v8 == *MEMORY[0x1E69767C0])
  {
    return 6;
  }

  if (v8 == *MEMORY[0x1E69767C8])
  {
    return 7;
  }

  if (v8 == *MEMORY[0x1E6976840])
  {
    return 9;
  }

  if (v8 == *MEMORY[0x1E6976820])
  {
    return 11;
  }

  if (v8 == *MEMORY[0x1E6976858])
  {
    return 12;
  }

  if (v8 == *MEMORY[0x1E6976798])
  {
    return 13;
  }

  if (v8 == *MEMORY[0x1E69767A0])
  {
    return 14;
  }

  if (v8 == *MEMORY[0x1E6976828])
  {
    return 15;
  }

  if (v8 == *MEMORY[0x1E6976870])
  {
    return 16;
  }

  if (v8 == *MEMORY[0x1E6976888])
  {
    return 17;
  }

  if (v8 == *MEMORY[0x1E6976800])
  {
    return 18;
  }

  if (v8 == *MEMORY[0x1E69767D0])
  {
    return 19;
  }

  if (v8 == *MEMORY[0x1E6976818])
  {
    return 20;
  }

  if (v8 == *MEMORY[0x1E6976808])
  {
    return 21;
  }

  if (v8 == *MEMORY[0x1E6976810])
  {
    return 22;
  }

  if (v8 == *MEMORY[0x1E6976898])
  {
    return 24;
  }

  if (v8 == *MEMORY[0x1E69767D8])
  {
    return 25;
  }

  if (v8 == *MEMORY[0x1E69767A8])
  {
    return 26;
  }

  if (v8 == *MEMORY[0x1E69767E0])
  {
    return 27;
  }

  if (v8 == *MEMORY[0x1E6976830])
  {
    return 28;
  }

  if (v8 == *MEMORY[0x1E6976878])
  {
    return 29;
  }

  if (v8 == *MEMORY[0x1E69767E8])
  {
    return 31;
  }

  if (v8 == *MEMORY[0x1E6976848])
  {
    return 32;
  }

  if (v8 == *MEMORY[0x1E69768A0])
  {
    return 33;
  }

  if (v8 == *MEMORY[0x1E6976890])
  {
    return 34;
  }

  if (v8 == *MEMORY[0x1E6976860])
  {
    return 35;
  }

  if (v8 == *MEMORY[0x1E69767F0])
  {
    return 36;
  }

  if (v8 == *MEMORY[0x1E69767F8])
  {
    return 37;
  }

  result = sub_1D5615E08();
  __break(1u);
  return result;
}

id sub_1D5159CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a3;
  v8 = sub_1D560D838();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D5613158();
  v11 = *(v26 - 8);
  v12 = MEMORY[0x1EEE9AC00](v26);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 32))(v16, a1, a4);
  sub_1D56132E8();
  sub_1D56132C8();
  v18 = sub_1D5159818();
  (*(v11 + 8))(v14, v26);
  sub_1D560EC98();
  v19 = sub_1D4F42FA4(v18, a2);
  (*(v27 + 8))(v10, v28);
  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v21 = sub_1D5614BA8();

  v22 = [v20 initWithIdentifierSet:v19 modelObjectType:v18 storageDictionary:v21];
  swift_unknownObjectRelease();

  v23 = sub_1D56131C8();
  (*(*(v23 - 8) + 8))(a2, v23);
  (*(v29 + 8))(v16, a4);
  return v22;
}

void MusicMovie.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)()
{
  OUTLINED_FUNCTION_47();
  v208 = v0;
  v2 = v1;
  v209 = v3;
  v201 = v4;
  v200 = sub_1D5612B88();
  OUTLINED_FUNCTION_4();
  v217 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v196 = v8 - v7;
  OUTLINED_FUNCTION_70_0();
  v9 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v212 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v211 = (v13 - v12);
  OUTLINED_FUNCTION_70_0();
  v206 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v205 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v210 = (v17 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0C28, &unk_1D563B3D0);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v216 = &v195 - v20;
  v21 = OUTLINED_FUNCTION_70_0();
  v22 = type metadata accessor for MusicMoviePropertyProvider(v21);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_59_0();
  v203 = v24 - v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v195 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v30 = OUTLINED_FUNCTION_22(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_59_0();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v195 - v35;
  v199 = sub_1D5612478();
  OUTLINED_FUNCTION_4();
  v198 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v41 = v40 - v39;

  v207 = v2;
  v42 = v209;
  sub_1D560F7E8();
  v215 = sub_1D515B478();
  v214 = sub_1D5614C68();

  sub_1D560FE28();
  __swift_storeEnumTagSinglePayload(v36, 0, 1, v9);
  sub_1D560FE28();
  v213 = v9;
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v9);
  v204 = v41;
  sub_1D560D4D8();
  sub_1D4E7661C(v33, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E7661C(v36, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4EC76A8(v208, v218);
  v197 = v22;
  if (!v218[3])
  {
    sub_1D4E7661C(v218, &qword_1EC7EEC40, &unk_1D561C070);
    v219 = 0u;
    v220 = 0u;
    v221 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v221 = 0;
    v219 = 0u;
    v220 = 0u;
    goto LABEL_8;
  }

  if (!*(&v220 + 1))
  {
LABEL_8:
    sub_1D4E7661C(&v219, &qword_1EC7EA368, &unk_1D5629620);
    goto LABEL_9;
  }

  sub_1D4E48324(&v219, v222);
  __swift_project_boxed_opaque_existential_1(v222, v223);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v43 = v216;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v22);
    v44 = v203;
    sub_1D515CBC8(v43, v203);
    sub_1D515CB08(v44, v28);
    v45 = v210;
    sub_1D560D718();
    (*(v205 + 40))(&v28[v22[46]], v45, v206);
    v46 = v211;
    sub_1D5612468();
    (*(v212 + 40))(&v28[v22[47]], v46, v213);
    v47 = sub_1D5612458();
    v49 = v48;
    sub_1D515CB6C(v44);
    v50 = &v28[v22[48]];

    *v50 = v47;
    v50[1] = v49;
    __swift_destroy_boxed_opaque_existential_1(v222);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v191, v192, v193, v22);
  sub_1D4E7661C(v43, &qword_1EC7F0C28, &unk_1D563B3D0);
  __swift_destroy_boxed_opaque_existential_1(v222);
LABEL_9:
  sub_1D56140F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  sub_1D560F928();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  v59 = sub_1D560C328();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v59);
  v63 = sub_1D5610978();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v63);
  v67 = sub_1D560C0A8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v67);
  sub_1D5613178();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  sub_1D5613198();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
  sub_1D56134E8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
  v83 = OUTLINED_FUNCTION_2_92(v22[24]);
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v59);
  v86 = OUTLINED_FUNCTION_2_92(v22[25]);
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v59);
  sub_1D5614A78();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
  v93 = OUTLINED_FUNCTION_2_92(v22[28]);
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v63);
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
  v100 = OUTLINED_FUNCTION_2_92(v22[31]);
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v59);
  v103 = OUTLINED_FUNCTION_2_92(v22[37]);
  __swift_storeEnumTagSinglePayload(v103, v104, v105, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v111, v112, v113, v110);
  v114 = OUTLINED_FUNCTION_2_92(v22[40]);
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v117, v118, v119, v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v121, v122, v123, v124);
  v125 = OUTLINED_FUNCTION_2_92(v22[43]);
  __swift_storeEnumTagSinglePayload(v125, v126, v127, v110);
  (*(v205 + 16))(&v28[v22[46]], v42, v206);
  sub_1D5612468();
  v128 = sub_1D5612458();
  v216 = v129;
  sub_1D5614A88();
  v213 = OUTLINED_FUNCTION_11_63();
  v212 = OUTLINED_FUNCTION_11_63();
  v130 = OUTLINED_FUNCTION_11_63();
  v131 = OUTLINED_FUNCTION_11_63();
  *v28 = 0;
  *(v28 + 1) = 0;
  *&v28[v22[7]] = 0;
  *&v28[v22[8]] = 0;
  OUTLINED_FUNCTION_24_38(v22[9]);
  v132 = &v28[v22[11]];
  *v132 = 0;
  v132[8] = 1;
  *&v28[v22[12]] = 0;
  *&v28[v22[13]] = 0;
  *&v28[v22[15]] = 0;
  *&v28[v22[16]] = 0;
  v28[v22[17]] = 2;
  v28[v22[19]] = 2;
  v28[v22[20]] = 2;
  *&v28[v22[27]] = 0;
  v133 = &v28[v22[29]];
  *v133 = xmmword_1D5626F70;
  *(v133 + 3) = 0;
  *(v133 + 4) = 0;
  *(v133 + 2) = 0;
  OUTLINED_FUNCTION_24_38(v22[32]);
  OUTLINED_FUNCTION_24_38(v22[33]);
  OUTLINED_FUNCTION_24_38(v22[34]);
  v134 = &v28[v22[35]];
  *(v134 + 2) = 0u;
  *(v134 + 3) = 0u;
  *v134 = 0u;
  *(v134 + 1) = 0u;
  OUTLINED_FUNCTION_24_38(v22[36]);
  *&v28[v22[44]] = 0;
  if (qword_1EDD5B368 != -1)
  {
    swift_once();
  }

  v135 = qword_1EDD76D30;
  if (qword_1EDD76D30 >> 62)
  {
    sub_1D560CDE8();

    v194 = sub_1D5615E18();

    v135 = v194;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *&v28[v22[45]] = v135;
  v136 = &v28[v22[48]];
  v137 = v216;
  *v136 = v128;
  v136[1] = v137;
  *&v28[v22[49]] = v213;
  *&v28[v22[50]] = v212;
  *&v28[v22[51]] = v130;
  *&v28[v22[52]] = v131;
LABEL_14:
  swift_getKeyPath();
  LOBYTE(v222[0]) = 0;
  v138 = *MEMORY[0x1E6976668];
  v139 = v217;
  v140 = *(v217 + 104);
  v216 = (v217 + 104);
  v141 = v200;
  (v140)(v196, v138, v200);
  v211 = v140;
  v213 = sub_1D515D120(&qword_1EDD5B358, type metadata accessor for MusicMoviePropertyProvider, &unk_1D5644AC0);
  sub_1D5610D98();

  v142 = *(v139 + 8);
  v217 = v139 + 8;
  v143 = OUTLINED_FUNCTION_66();
  v142(v143);
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_61(17);
  LODWORD(v212) = v138;
  OUTLINED_FUNCTION_28_37();
  v140();
  OUTLINED_FUNCTION_15_51();
  sub_1D5610D78();

  v144 = OUTLINED_FUNCTION_66();
  v142(v144);
  v210 = v142;
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_61(1);
  OUTLINED_FUNCTION_25_41();
  (*(v145 - 256))();
  OUTLINED_FUNCTION_15_51();
  OUTLINED_FUNCTION_13_48();
  sub_1D5610D68();

  v146 = OUTLINED_FUNCTION_66();
  v142(v146);
  swift_getKeyPath();
  LOBYTE(v222[0]) = 2;
  LODWORD(v203) = *MEMORY[0x1E6976670];
  OUTLINED_FUNCTION_25_41();
  v148 = *(v147 - 256);
  v148();
  OUTLINED_FUNCTION_15_51();
  sub_1D5610D88();

  v149 = OUTLINED_FUNCTION_66();
  v150 = v210;
  v210(v149);
  swift_getKeyPath();
  v151 = OUTLINED_FUNCTION_4_67(4);
  v153 = *(v152 - 256);
  (v148)(v151, v153, v141);
  OUTLINED_FUNCTION_15_51();
  OUTLINED_FUNCTION_13_48();
  v202 = v28;
  sub_1D5610D68();

  v154 = OUTLINED_FUNCTION_66();
  v150(v154);
  swift_getKeyPath();
  v155 = OUTLINED_FUNCTION_8_61(5);
  (v148)(v155, v153, v141);
  OUTLINED_FUNCTION_15_51();
  OUTLINED_FUNCTION_13_48();
  sub_1D5610D68();

  v156 = OUTLINED_FUNCTION_66();
  v157 = v210;
  v210(v156);
  swift_getKeyPath();
  v158 = OUTLINED_FUNCTION_4_67(6);
  (v148)(v158, *(v159 - 256), v141);
  OUTLINED_FUNCTION_15_51();
  OUTLINED_FUNCTION_13_48();
  sub_1D5610D68();

  v160 = OUTLINED_FUNCTION_66();
  v157(v160);
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_61(7);
  OUTLINED_FUNCTION_28_37();
  v148();
  OUTLINED_FUNCTION_15_51();
  v161 = v202;
  sub_1D5610D88();

  v162 = OUTLINED_FUNCTION_66();
  v163 = v210;
  v210(v162);
  swift_getKeyPath();
  v164 = OUTLINED_FUNCTION_4_67(8);
  (v148)(v164, *(v165 - 256), v141);
  OUTLINED_FUNCTION_18_46();
  sub_1D5610D88();

  v166 = OUTLINED_FUNCTION_66();
  v163(v166);
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_61(9);
  OUTLINED_FUNCTION_25_41();
  v168 = *(v167 - 256);
  v168();
  OUTLINED_FUNCTION_18_46();
  sub_1D5610D88();

  v169 = OUTLINED_FUNCTION_66();
  v170 = v210;
  v210(v169);
  swift_getKeyPath();
  v171 = OUTLINED_FUNCTION_4_67(10);
  (v168)(v171, *(v172 - 256), v141);
  OUTLINED_FUNCTION_18_46();
  OUTLINED_FUNCTION_13_48();
  sub_1D5610D68();

  v173 = OUTLINED_FUNCTION_66();
  v170(v173);
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_61(11);
  OUTLINED_FUNCTION_28_37();
  v168();
  OUTLINED_FUNCTION_18_46();
  OUTLINED_FUNCTION_13_48();
  sub_1D5610D68();

  v174 = OUTLINED_FUNCTION_66();
  v170(v174);
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_67(19);
  OUTLINED_FUNCTION_25_41();
  v176 = *(v175 - 256);
  v176();
  OUTLINED_FUNCTION_18_46();
  sub_1D5610D78();

  v177 = OUTLINED_FUNCTION_66();
  v178 = v210;
  v210(v177);
  swift_getKeyPath();
  v179 = OUTLINED_FUNCTION_4_67(20);
  (v176)(v179, *(v180 - 256), v141);
  sub_1D515CAB4();
  OUTLINED_FUNCTION_18_46();
  sub_1D5610D78();

  v181 = OUTLINED_FUNCTION_66();
  v178(v181);
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_61(13);
  OUTLINED_FUNCTION_28_37();
  v211();
  OUTLINED_FUNCTION_13_48();
  v182 = v213;
  sub_1D5610D68();

  v183 = OUTLINED_FUNCTION_66();
  v178(v183);
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_61(14);
  OUTLINED_FUNCTION_25_41();
  v185 = *(v184 - 256);
  v185();
  OUTLINED_FUNCTION_13_48();
  sub_1D5610D68();

  v186 = OUTLINED_FUNCTION_66();
  v178(v186);
  swift_getKeyPath();
  v187 = OUTLINED_FUNCTION_8_61(16);
  (v185)(v187, v203, v141);
  OUTLINED_FUNCTION_13_48();
  sub_1D5610D68();

  v188 = OUTLINED_FUNCTION_66();
  v178(v188);
  swift_getKeyPath();
  v189 = v209;
  sub_1D5610DA8();

  v223 = v197;
  v224 = v182;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v222);
  sub_1D515CB08(v161, boxed_opaque_existential_0);
  MusicMovie.init(propertyProvider:)(v222, v201);
  swift_unknownObjectRelease();
  sub_1D4E7661C(v208, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v205 + 8))(v189, v206);
  (*(v198 + 8))(v204, v199);
  sub_1D515CB6C(v161);
  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D515B478()
{
  result = qword_1EDD593A8;
  if (!qword_1EDD593A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD593A8);
  }

  return result;
}

uint64_t sub_1D515B4CC()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EDD59350);
  v1 = __swift_project_value_buffer(v0, qword_1EDD59350);
  v2 = *MEMORY[0x1E6976798];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static MusicMovie.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDD59348 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EDD59350);
  OUTLINED_FUNCTION_24_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

void MusicMovie.convertToLegacyModelStorageDictionary(for:)()
{
  OUTLINED_FUNCTION_47();
  v235 = sub_1D5614A78();
  OUTLINED_FUNCTION_4();
  v228 = v0;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v227 = v3 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v234 = &v224 - v6;
  OUTLINED_FUNCTION_70_0();
  v233 = sub_1D560F928();
  OUTLINED_FUNCTION_4();
  v226 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v225 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v232 = &v224 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v224 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v224 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v224 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v27 = OUTLINED_FUNCTION_22(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_59_0();
  v231 = v28 - v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v30);
  v230 = &v224 - v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v32);
  v229 = &v224 - v33;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v224 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v37);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v224 - v39;
  sub_1D4ECC9E0();
  v238 = sub_1D5614BD8();
  if (qword_1EDD541B8 != -1)
  {
    swift_once();
  }

  v41 = qword_1EDD76978;
  v42 = sub_1D56140F8();
  sub_1D515D120(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  sub_1D515D120(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_5_71(v41, v42);
  OUTLINED_FUNCTION_74(v40);
  if (v43)
  {
    sub_1D4E7661C(v40, &qword_1EC7E9CA0, &unk_1D561A0C0);
    OUTLINED_FUNCTION_11_35();
  }

  else
  {
    sub_1D5613F38();
    OUTLINED_FUNCTION_24_0();
    (*(v44 + 8))(v40, v42);
  }

  v45 = OUTLINED_FUNCTION_10_64();
  sub_1D4EC88C0(v45, 0, v46, v47, v48, v49, v50, v51, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, *(&v236 + 1));
  if (qword_1EDD542F0 != -1)
  {
    swift_once();
  }

  v52 = qword_1EDD76A20;
  v53 = sub_1D560C328();
  OUTLINED_FUNCTION_5_71(v52, v53);
  OUTLINED_FUNCTION_1(v36);
  if (v43)
  {
    sub_1D4E7661C(v36, &qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_11_35();
  }

  else
  {
    *&v242 = v53;
    __swift_allocate_boxed_opaque_existential_0(&v239);
    OUTLINED_FUNCTION_24_0();
    (*(v54 + 32))();
  }

  v55 = OUTLINED_FUNCTION_10_64();
  sub_1D4EC88C0(v55, 1, v56, v57, v58, v59, v60, v61, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, *(&v236 + 1));
  v62 = v232;
  if (qword_1EDD541A8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_71(qword_1EDD76970, MEMORY[0x1E69E63B0]);
  if (v240)
  {
    v63 = 0;
    v240 = 0;
    v241 = 0;
    v64 = 0;
  }

  else
  {
    sub_1D5615578();
    v63 = MEMORY[0x1E69E63B0];
  }

  v239 = v64;
  v65 = OUTLINED_FUNCTION_3_90(v63);
  sub_1D4EC88C0(v65, 2, v66, v67, v68, v69, v70, v71, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, *(&v236 + 1));
  if (qword_1EDD54300 != -1)
  {
    swift_once();
  }

  v72 = qword_1EDD76A28;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_5_71(v72, v73);
  if (v239)
  {
    v74 = v239;
  }

  else
  {
    v74 = MEMORY[0x1E69E7CC0];
  }

  if (*(v74 + 16))
  {
    v75 = *(v74 + 80);
    v76 = *(v74 + 88);

    if ((v76 & 1) == 0)
    {
      *&v242 = MEMORY[0x1E69E6530];
      v239 = v75;
      goto LABEL_26;
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_11_35();
LABEL_26:
  v77 = OUTLINED_FUNCTION_10_64();
  sub_1D4EC88C0(v77, 3, v78, v79, v80, v81, v82, v83, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, *(&v236 + 1));
  if (qword_1EDD54248 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_71(qword_1EDD769C8, MEMORY[0x1E69E6370]);
  if (v239 == 2)
  {
    OUTLINED_FUNCTION_23_6();
  }

  else
  {
    LOBYTE(v239) = v239 & 1;
    v84 = MEMORY[0x1E69E6370];
  }

  v85 = OUTLINED_FUNCTION_3_90(v84);
  sub_1D4EC88C0(v85, 4, v86, v87, v88, v89, v90, v91, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, *(&v236 + 1));
  if (qword_1EDD542C0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_71(qword_1EDD76A10, MEMORY[0x1E69E6370]);
  if (v239 == 2)
  {
    OUTLINED_FUNCTION_23_6();
  }

  else
  {
    LOBYTE(v239) = v239 & 1;
    v92 = MEMORY[0x1E69E6370];
  }

  v93 = OUTLINED_FUNCTION_3_90(v92);
  sub_1D4EC88C0(v93, 5, v94, v95, v96, v97, v98, v99, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, *(&v236 + 1));
  if (qword_1EDD54218 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_71(qword_1EDD769B8, MEMORY[0x1E69E6370]);
  if (v239 == 2)
  {
    OUTLINED_FUNCTION_23_6();
  }

  else
  {
    LOBYTE(v239) = v239 & 1;
    v100 = MEMORY[0x1E69E6370];
  }

  v101 = OUTLINED_FUNCTION_3_90(v100);
  sub_1D4EC88C0(v101, 6, v102, v103, v104, v105, v106, v107, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, *(&v236 + 1));
  if (qword_1EDD54210 != -1)
  {
    swift_once();
  }

  v108 = qword_1EDD769B0;
  v109 = sub_1D5613178();
  OUTLINED_FUNCTION_5_71(v108, v109);
  OUTLINED_FUNCTION_74(v25);
  if (v43)
  {
    sub_1D4E7661C(v25, &qword_1EC7EC538, &unk_1D5621080);
    OUTLINED_FUNCTION_21_39();
  }

  else
  {
    v108 = sub_1D5613168();
    OUTLINED_FUNCTION_24_0();
    (*(v110 + 8))(v25, v109);
    v111 = MEMORY[0x1E69E6530];
  }

  v112 = v229;
  v239 = v108;
  v113 = OUTLINED_FUNCTION_3_90(v111);
  sub_1D4EC88C0(v113, 7, v114, v115, v116, v117, v118, v119, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, *(&v236 + 1));
  if (qword_1EDD54208 != -1)
  {
    swift_once();
  }

  v120 = qword_1EDD769A8;
  v121 = sub_1D5613198();
  OUTLINED_FUNCTION_5_71(v120, v121);
  OUTLINED_FUNCTION_5_1(v21);
  if (v43)
  {
    sub_1D4E7661C(v21, &qword_1EC7EC530, &unk_1D5632150);
    OUTLINED_FUNCTION_21_39();
  }

  else
  {
    v120 = sub_1D5613188();
    OUTLINED_FUNCTION_24_0();
    (*(v122 + 8))(v21, v121);
    v123 = MEMORY[0x1E69E6530];
  }

  v239 = v120;
  v124 = OUTLINED_FUNCTION_3_90(v123);
  sub_1D4EC88C0(v124, 8, v125, v126, v127, v128, v129, v130, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, *(&v236 + 1));
  v131 = v231;
  if (qword_1EDD54200 != -1)
  {
    swift_once();
  }

  v132 = qword_1EDD769A0;
  v133 = sub_1D56134E8();
  OUTLINED_FUNCTION_5_71(v132, v133);
  OUTLINED_FUNCTION_5_1(v17);
  if (v43)
  {
    sub_1D4E7661C(v17, &qword_1EC7EC528, &unk_1D5621070);
    OUTLINED_FUNCTION_21_39();
  }

  else
  {
    v132 = sub_1D5613468();
    OUTLINED_FUNCTION_24_0();
    (*(v134 + 8))(v17, v133);
    v135 = MEMORY[0x1E69E6530];
  }

  v136 = v235;
  v239 = v132;
  v137 = OUTLINED_FUNCTION_3_90(v135);
  sub_1D4EC88C0(v137, 9, v138, v139, v140, v141, v142, v143, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, *(&v236 + 1));
  v144 = v234;
  if (qword_1EDD542B8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_71(qword_1EDD76A08, v53);
  OUTLINED_FUNCTION_1(v112);
  if (v43)
  {
    sub_1D4E7661C(v112, &qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_11_35();
  }

  else
  {
    *&v242 = v53;
    __swift_allocate_boxed_opaque_existential_0(&v239);
    OUTLINED_FUNCTION_24_0();
    (*(v145 + 32))();
  }

  v146 = v62;
  v147 = OUTLINED_FUNCTION_10_64();
  sub_1D4EC88C0(v147, 10, v148, v149, v150, v151, v152, v153, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, *(&v236 + 1));
  if (qword_1EDD54280 != -1)
  {
    swift_once();
  }

  v154 = v230;
  OUTLINED_FUNCTION_5_71(qword_1EDD769F0, v53);
  OUTLINED_FUNCTION_1(v154);
  if (v43)
  {
    sub_1D4E7661C(v154, &qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_11_35();
  }

  else
  {
    *&v242 = v53;
    __swift_allocate_boxed_opaque_existential_0(&v239);
    OUTLINED_FUNCTION_24_0();
    (*(v155 + 32))();
  }

  v156 = v146;
  v157 = OUTLINED_FUNCTION_10_64();
  sub_1D4EC88C0(v157, 11, v158, v159, v160, v161, v162, v163, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, *(&v236 + 1));
  v164 = v233;
  if (qword_1EDD54278 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_71(qword_1EDD769E8, &type metadata for PlaybackPosition);
  if (BYTE8(v236) == 2)
  {
    v165 = 0;
    v166 = 0;
    *(&v236 + 1) = 0;
    *v237 = 0;
  }

  else
  {
    v239 = v236;
    LOWORD(v240) = WORD4(v236) & 0x101;
    v241 = *v237;
    v242 = *&v237[8];
    sub_1D515CC6C();
    v165 = v167;
    v166 = sub_1D4F688F0();
  }

  *&v236 = v165;
  *&v237[8] = v166;
  v168 = OUTLINED_FUNCTION_20_46();
  sub_1D4EC88C0(v168, 20, v169, v170, v171, v172, v173, v174, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, *(&v236 + 1));
  if (qword_1EDD54338 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_71(qword_1EDD76A38, v53);
  OUTLINED_FUNCTION_1(v131);
  if (v43)
  {
    sub_1D4E7661C(v131, &qword_1EC7EA3B8, &unk_1D561E370);
    v236 = 0u;
    *v237 = 0u;
  }

  else
  {
    *&v237[8] = v53;
    __swift_allocate_boxed_opaque_existential_0(&v236);
    OUTLINED_FUNCTION_24_0();
    (*(v175 + 32))();
  }

  v176 = OUTLINED_FUNCTION_20_46();
  sub_1D4EC88C0(v176, 13, v177, v178, v179, v180, v181, v182, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, *(&v236 + 1));
  if (qword_1EDD54228 != -1)
  {
    swift_once();
  }

  v183 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_5_71(qword_1EDD769C0, MEMORY[0x1E69E6158]);
  if (*(&v236 + 1))
  {
    v184 = v236;
    v185 = MEMORY[0x1E69E6158];
  }

  else
  {
    v184 = 0;
    v185 = 0;
    *v237 = 0;
  }

  *&v236 = v184;
  *&v237[8] = v185;
  v186 = OUTLINED_FUNCTION_20_46();
  sub_1D4EC88C0(v186, 14, v187, v188, v189, v190, v191, v192, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, *(&v236 + 1));
  v193 = MusicMovie.title.getter();
  *&v237[8] = v183;
  *&v236 = v193;
  *(&v236 + 1) = v194;
  v195 = OUTLINED_FUNCTION_20_46();
  sub_1D4EC88C0(v195, 16, v196, v197, v198, v199, v200, v201, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, *(&v236 + 1));
  if (qword_1EDD54330 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_71(qword_1EDD76A30, v164);
  OUTLINED_FUNCTION_74(v156);
  if (v43)
  {
    sub_1D4E7661C(v156, &qword_1EC7EDB98, L"X\b\a");
    v204 = 0;
    v205 = 0;
    *(&v236 + 1) = 0;
    *v237 = 0;
  }

  else
  {
    v202 = v226;
    (*(v226 + 16))(v225, v156, v164);
    OUTLINED_FUNCTION_16_49();
    sub_1D515D188();
    v204 = v203;
    (*(v202 + 8))(v156, v164);
    v205 = sub_1D4F688F0();
  }

  *&v236 = v204;
  *&v237[8] = v205;
  v206 = OUTLINED_FUNCTION_20_46();
  sub_1D4EC88C0(v206, 17, v207, v208, v209, v210, v211, v212, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, *(&v236 + 1));
  if (qword_1EDD542A8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_71(qword_1EDD76A00, v136);
  OUTLINED_FUNCTION_5_1(v144);
  if (v43)
  {
    sub_1D4E7661C(v144, &qword_1EC7EF5D8, &unk_1D5632160);
    v215 = 0;
    v216 = 0;
    *(&v236 + 1) = 0;
    *v237 = 0;
  }

  else
  {
    v213 = v228;
    (*(v228 + 16))(v227, v144, v136);
    OUTLINED_FUNCTION_17_47();
    sub_1D515D188();
    v215 = v214;
    (*(v213 + 8))(v144, v136);
    v216 = sub_1D4F688F0();
  }

  *&v236 = v215;
  *&v237[8] = v216;
  v217 = OUTLINED_FUNCTION_20_46();
  sub_1D4EC88C0(v217, 19, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, *(&v236 + 1));
  OUTLINED_FUNCTION_46();
}

uint64_t MusicMovie.LegacyModelMusicMoviePropertyKey.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1D5616208();

  v6 = 0;
  v7 = 3;
  switch(v4)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v6 = 1;
      goto LABEL_11;
    case 2:
      v6 = 2;
LABEL_11:
      v7 = v6;
      break;
    case 3:
      break;
    case 4:
      v7 = 4;
      break;
    case 5:
      v7 = 5;
      break;
    case 6:
      v7 = 6;
      break;
    case 7:
      v7 = 7;
      break;
    case 8:
      v7 = 8;
      break;
    case 9:
      v7 = 9;
      break;
    case 10:
      v7 = 10;
      break;
    case 11:
      v7 = 11;
      break;
    case 12:
      v7 = 12;
      break;
    case 13:
      v7 = 13;
      break;
    case 14:
      v7 = 14;
      break;
    case 15:
      v7 = 15;
      break;
    case 16:
      v7 = 16;
      break;
    case 17:
      v7 = 17;
      break;
    case 18:
      v7 = 18;
      break;
    case 19:
      v7 = 19;
      break;
    case 20:
      v7 = 20;
      break;
    default:
      v7 = 21;
      break;
  }

  *a3 = v7;
  return result;
}

unint64_t MusicMovie.LegacyModelMusicMoviePropertyKey.rawValue.getter()
{
  result = 0xD00000000000001BLL;
  switch(*v0)
  {
    case 1:
    case 3:
    case 0xC:
    case 0x11:
      result = 0xD000000000000022;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 4:
    case 6:
    case 0x13:
      result = 0xD000000000000026;
      break;
    case 5:
      result = 0xD000000000000020;
      break;
    case 7:
    case 0x14:
      result = 0xD000000000000028;
      break;
    case 8:
    case 0xA:
      result = 0xD00000000000002ALL;
      break;
    case 9:
      result = 0xD000000000000030;
      break;
    case 0xB:
      result = 0xD000000000000024;
      break;
    case 0xD:
      result = 0xD00000000000001FLL;
      break;
    case 0xE:
      result = 0xD000000000000023;
      break;
    case 0x10:
      result = 0xD000000000000019;
      break;
    case 0x12:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D515C8DC@<X0>(unint64_t *a1@<X8>)
{
  result = MusicMovie.LegacyModelMusicMoviePropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicMovie.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976798];
  sub_1D5613158();
  OUTLINED_FUNCTION_24_0();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_1D515C978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D515D120(&qword_1EC7F0C30, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D515CA2C(uint64_t a1, uint64_t a2)
{
  sub_1D515D120(&qword_1EDD592F8, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

  return sub_1D56132F8();
}

unint64_t sub_1D515CAB4()
{
  result = qword_1EDD56B88;
  if (!qword_1EDD56B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56B88);
  }

  return result;
}

uint64_t sub_1D515CB08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicMoviePropertyProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D515CB6C(uint64_t a1)
{
  v2 = type metadata accessor for MusicMoviePropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D515CBC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicMoviePropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D515CC6C()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v2 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1D56126B8();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v20 = *v1;
  v21 = v1[1];
  v22 = *(v1 + 4);
  v16 = objc_allocWithZone(MEMORY[0x1E6977640]);
  v17 = [objc_opt_self() emptyIdentifierSet];
  (*(v11 + 104))(v15, *MEMORY[0x1E6976598], v9);
  v18 = sub_1D552AFA8();
  (*(v11 + 8))(v15, v9);
  (*(v4 + 104))(v8, *MEMORY[0x1E69769C0], v2);
  sub_1D515CAB4();
  sub_1D5612EA8();
  (*(v4 + 8))(v8, v2);
  v19 = sub_1D5614BA8();

  [v16 initWithIdentifierSet:v17 modelObjectType:v18 storageDictionary:v19];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D515CEC0()
{
  result = qword_1EDD59398;
  if (!qword_1EDD59398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD59398);
  }

  return result;
}

unint64_t sub_1D515CF1C()
{
  result = qword_1EDD59390;
  if (!qword_1EDD59390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD59390);
  }

  return result;
}

uint64_t _s32LegacyModelMusicMoviePropertyKeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s32LegacyModelMusicMoviePropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D515D120(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_1D515D188()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v4 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1D56126B8();
  OUTLINED_FUNCTION_4();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v23 = objc_allocWithZone(MEMORY[0x1E6977640]);
  v22 = [objc_opt_self() emptyIdentifierSet];
  v18 = v1(0);
  sub_1D5612E98();
  v21 = sub_1D552AFA8();
  (*(v13 + 8))(v17, v11);
  (*(v6 + 104))(v10, *MEMORY[0x1E69769C0], v4);
  sub_1D5612EA8();
  (*(v6 + 8))(v10, v4);
  OUTLINED_FUNCTION_24_0();
  (*(v19 + 8))(v3, v18);
  v20 = sub_1D5614BA8();

  [v23 initWithIdentifierSet:v22 modelObjectType:v21 storageDictionary:v20];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D515D414()
{
  OUTLINED_FUNCTION_60();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D515D4A0;

  return sub_1D515D61C();
}

uint64_t sub_1D515D4A0()
{
  OUTLINED_FUNCTION_60();
  *(*v0 + 32) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D515D59C, 0, 0);
}

uint64_t sub_1D515D59C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 32);
  v2 = sub_1D515DA88();
  v3 = objc_allocWithZone(MEMORY[0x1E696E9C8]);
  sub_1D4FE0844(v1, v2);
  OUTLINED_FUNCTION_50();

  return v4();
}

uint64_t sub_1D515D61C()
{
  OUTLINED_FUNCTION_60();
  v1[2] = v0;
  type metadata accessor for GenericMusicItem(0);
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for MusicSearchIntentDonation(0);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D515D6D8, 0, 0);
}

uint64_t sub_1D515D6D8()
{
  sub_1D515DD9C(v0[2], v0[5]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[5];
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5061C5C(v2, v0[3]);
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_1D515D818;

    return (sub_1D5134798)(0);
  }

  else
  {
    sub_1D515DE44(v2, type metadata accessor for MusicSearchIntentDonation);

    OUTLINED_FUNCTION_50();

    return v5(0);
  }
}

uint64_t sub_1D515D818()
{
  OUTLINED_FUNCTION_60();
  *(*v1 + 56) = v2;

  if (v0)
  {

    v3 = sub_1D515DA14;
  }

  else
  {
    v3 = sub_1D515D930;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D515D930()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D561EAC0;
    *(v3 + 32) = v1;
    OUTLINED_FUNCTION_0_111();
    sub_1D515DE44(v2, v4);
  }

  else
  {
    sub_1D515DE44(*(v0 + 24), type metadata accessor for GenericMusicItem);
    v3 = 0;
  }

  OUTLINED_FUNCTION_50();

  return v5(v3);
}

uint64_t sub_1D515DA14()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_0_111();
  sub_1D515DE44(v0, v1);

  OUTLINED_FUNCTION_50();

  return v2(0);
}

uint64_t sub_1D515DA88()
{
  v1 = type metadata accessor for MusicSearchIntentDonation(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D515DD9C(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D515DE44(v3, type metadata accessor for MusicSearchIntentDonation);
    return 0;
  }

  else
  {
    sub_1D515DE00();
    return sub_1D56156A8();
  }
}

uint64_t sub_1D515DBB0()
{
  OUTLINED_FUNCTION_60();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D515DC38;

  return sub_1D515D414();
}

uint64_t sub_1D515DC38()
{
  OUTLINED_FUNCTION_60();
  v1 = v0;

  OUTLINED_FUNCTION_50();

  return v2(v1);
}

uint64_t type metadata accessor for MusicSearchIntentDonation(uint64_t a1)
{
  result = qword_1EDD5B408;
  if (!qword_1EDD5B408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D515DD9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSearchIntentDonation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D515DE00()
{
  result = qword_1EDD526E0;
  if (!qword_1EDD526E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD526E0);
  }

  return result;
}

uint64_t sub_1D515DE44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D515DEA4(uint64_t a1)
{
  result = type metadata accessor for GenericMusicItem(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void Album.siriRepresentation.getter()
{
  OUTLINED_FUNCTION_47();
  v92 = v1;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v90 = v3;
  v91 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v89 = v5 - v4;
  OUTLINED_FUNCTION_70_0();
  v79 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v88 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v83 = v9 - v8;
  OUTLINED_FUNCTION_70_0();
  v84 = sub_1D5611AB8();
  OUTLINED_FUNCTION_4();
  v80 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v78 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_59_0();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v76 = &v71 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v75 = &v71 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v28);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  v74 = &v71 - v30;
  v31 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v33 = v32;
  v87 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v37 = v36 - v35;
  v38 = *(v33 + 16);
  v38(v36 - v35, v0, v31);
  v39 = sub_1D5613AB8();
  v85 = v40;
  v86 = v39;
  v41 = sub_1D5613868();
  v81 = v42;
  v82 = v41;
  sub_1D5613AE8();
  sub_1D56138D8();
  sub_1D5613AA8();
  v77 = sub_1D5613908();
  OUTLINED_FUNCTION_33();
  v43 = v79;
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v79);
  v94 = v31;
  v95 = MEMORY[0x1E6976D08];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v93);
  v73 = v37;
  v38(boxed_opaque_existential_0, v37, v31);
  __swift_project_boxed_opaque_existential_1(v93, v94);
  v48 = v78;
  sub_1D5612AF8();
  v49 = v83;
  sub_1D5611A98();
  (*(v80 + 8))(v48, v84);
  sub_1D560FDD8();
  (*(v88 + 8))(v49, v43);
  sub_1D4E7661C(v21, &qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_16_50();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  v54 = v18;
  v72 = v21;
  sub_1D4ED3A14(v18, v21, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_destroy_boxed_opaque_existential_1(v93);
  v55 = v89;
  sub_1D560EC98();
  v56 = OUTLINED_FUNCTION_0_33();
  sub_1D4ED3750(v56, v57, &qword_1EC7EA358, &unk_1D561DF50);
  v58 = type metadata accessor for MusicSiriRepresentation(0);
  v59 = v92;
  v60 = v74;
  sub_1D4ED3750(v74, v92 + v58[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v61 = v75;
  sub_1D4ED3750(v75, v59 + v58[9], &qword_1EC7EC478, &unk_1D56299D0);
  v62 = v76;
  sub_1D4ED3750(v76, v59 + v58[10], &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v93[0]) = 0;
  v63 = v55;
  sub_1D50391CC();
  v65 = v64;
  v67 = v66;
  sub_1D4E7661C(v54, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v90 + 8))(v63, v91);
  sub_1D4E7661C(v72, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E7661C(v62, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E7661C(v61, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E7661C(v60, &qword_1EC7E9CA0, &unk_1D561A0C0);
  (*(v87 + 8))(v73, v31);
  v68 = v92;
  *v92 = v65;
  v68[1] = v67;
  *(v68 + 16) = 0;
  v69 = v85;
  v68[3] = v86;
  v68[4] = v69;
  v70 = v81;
  v68[5] = v82;
  v68[6] = v70;
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D515E53C(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0C68, &qword_1D563BBC0);
  MEMORY[0x1EEE9AC00](v3);
  v10[-v4] = a2;
  (*(v5 + 104))(&v10[-v4], *MEMORY[0x1E6975090]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0C70, &qword_1D563BBC8);
  swift_allocObject();

  sub_1D560F188();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0618, &qword_1D5638338);
  v6 = sub_1D560E578();
  v8 = v7;
  MEMORY[0x1DA6EAF30]();
  sub_1D4E6C078(*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1D56151F8();
  v6(v10, 0);
}

uint64_t Album.catalogID.getter()
{
  v1 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_68();
  sub_1D5613AF8();
  sub_1D560EC98();
  sub_1D560D7A8();
  (*(v3 + 8))(v7, v1);
  v10 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v0, 1, v10) == 1)
  {
    sub_1D4E7661C(v0, &unk_1EC7F1970, &qword_1D561F4A0);
    return 0;
  }

  else
  {
    v11 = sub_1D560F138();
    OUTLINED_FUNCTION_24_0();
    (*(v12 + 8))(v0, v10);
  }

  return v11;
}

uint64_t Album.offers.getter()
{
  v0 = sub_1D5613AD8();
  if (!v0)
  {
    return 0;
  }

  v1 = sub_1D52AB1E8(v0);

  return v1;
}

uint64_t Album.staticDetailTallArtwork.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_47();
  v13 = sub_1D56140F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  result = sub_1D5613988();
  if (result)
  {
    sub_1D4ED06C8(0xD000000000000010, 0x80000001D5682B50, result, v1);

    sub_1D4ED3750(v1, v11, &qword_1EC7EB5B8, &unk_1D56206A0);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    if (__swift_getEnumTagSinglePayload(v11, 1, v18) == 1)
    {
      sub_1D4E7661C(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      sub_1D4E7661C(v11, &qword_1EC7EB5B8, &unk_1D56206A0);
      v19 = 1;
    }

    else
    {
      sub_1D5610758();
      sub_1D4E7661C(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E7661C(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      OUTLINED_FUNCTION_24_0();
      (*(v20 + 8))(v11, v18);
      v19 = 0;
    }

    __swift_storeEnumTagSinglePayload(v6, v19, 1, v13);
    return sub_1D4ED3A14(v6, a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  return result;
}

void Album.friendsWhoListened.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  v28 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &a9 - v37;
  sub_1D5613998();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  v40 = OUTLINED_FUNCTION_14_49();
  if (__swift_getEnumTagSinglePayload(v40, v41, v42) == 1)
  {
    sub_1D4E7661C(v38, &qword_1EC7EA7E0, &unk_1D5623AB0);
    v43 = 1;
  }

  else
  {
    _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
    sub_1D560CD98();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
    type metadata accessor for SocialProfile(0);
    sub_1D51613A4(&qword_1EDD57510, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
    sub_1D51613A4(&qword_1EDD57518, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
    sub_1D5612368();
    sub_1D4E7661C(v27, &qword_1EC7EA7D8, &unk_1D561E8B0);
    (*(v30 + 8))(v34, v28);
    OUTLINED_FUNCTION_24_0();
    (*(v48 + 8))(v38, v39);
    v43 = 0;
  }

  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  __swift_storeEnumTagSinglePayload(v23, v43, 1, v49);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D515EE50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF270, &qword_1D563BBD0);
  swift_getKeyPath();
  sub_1D5615288();
  sub_1D51613A4(&qword_1EDD5CF50, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v0 = sub_1D560D138();

  qword_1EC7F0C38 = v0;
  return result;
}

uint64_t sub_1D515EF58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF270, &qword_1D563BBD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0C90, &qword_1D563BC58);
  sub_1D560D1A8();
  sub_1D5615278();
  sub_1D51613A4(&qword_1EC7ECE68, MEMORY[0x1E6976D28], MEMORY[0x1E6976D00]);
  v0 = sub_1D560D148();

  qword_1EC7F0C40 = v0;
  return result;
}

uint64_t sub_1D515F05C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF270, &qword_1D563BBD0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  v0 = sub_1D560D138();

  qword_1EC7F0C48 = v0;
  return result;
}

uint64_t sub_1D515F144()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF270, &qword_1D563BBD0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D51612CC();
  v0 = sub_1D560D138();

  qword_1EC7F0C50 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.offers.getter()
{
  return sub_1D4F5DA4C(&qword_1EC7E8F48, &qword_1EC7F0C50, sub_1D515F144);
}

{
  return sub_1D4F5DA4C(&qword_1EC7E9350, &qword_1EC7F25E0, sub_1D5246118);
}

uint64_t sub_1D515F230()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF270, &qword_1D563BBD0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D51613A4(&qword_1EDD52DE8, MEMORY[0x1E6976F68], MEMORY[0x1E6976F88]);
  v0 = sub_1D560D138();

  qword_1EC7F0C58 = v0;
  return result;
}

uint64_t Album.popularity(for:)(uint64_t a1)
{
  v1 = sub_1D5613C68();
  if ((v2 & 1) == 0)
  {
    return v1;
  }

  if (!sub_1D5613A28())
  {
    return 0;
  }

  v3 = sub_1D5613A18();

  return v3;
}

void Album.with<A>(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v30 = v3;
  v31 = v4;
  v6 = (*v5 + *MEMORY[0x1E6975138]);
  v7 = sub_1D560DAB8();
  v29 = sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0C60, &qword_1D563B8B8);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_68();
  v15 = sub_1D5612008();
  OUTLINED_FUNCTION_4();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v28[1] = *v6;
  v28[2] = v2;
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v0, 0, 1, v15);
    (*(v17 + 32))(v21, v0, v15);
    v22 = v29;
    (*(v9 + 16))(v12, v30, v29);
    if (__swift_getEnumTagSinglePayload(v12, 1, v7) == 1)
    {
      (*(v9 + 8))(v12, v22);
      v33 = 0u;
      v34 = 0u;
    }

    else
    {
      *(&v34 + 1) = v7;
      __swift_allocate_boxed_opaque_existential_0(&v33);
      OUTLINED_FUNCTION_24_0();
      (*(v23 + 32))();
    }

    sub_1D5611E98();
    *(&v34 + 1) = v15;
    v35 = MEMORY[0x1E6976408];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v33);
    (*(v17 + 16))(boxed_opaque_existential_0, v21, v15);
    sub_1D5613978();
    (*(v17 + 8))(v21, v15);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v15);
    sub_1D4E7661C(v0, &qword_1EC7F0C60, &qword_1D563B8B8);
    *&v33 = 0;
    *(&v33 + 1) = 0xE000000000000000;
    sub_1D5615B68();
    v32 = v33;
    MEMORY[0x1DA6EAC70](0xD000000000000039, 0x80000001D5685E80);
    sub_1D5612B18();
    sub_1D5615D48();
    __swift_destroy_boxed_opaque_existential_1(&v33);
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    sub_1D5615E08();
    __break(1u);
  }
}

uint64_t Album.favoriteStatus.getter@<X0>(char *a1@<X8>)
{
  v2 = sub_1D56128E8();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_59_0();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1D5613938();
  (*(v4 + 16))(v8, v11, v2);
  v12 = (*(v4 + 88))(v8, v2);
  if (v12 == *MEMORY[0x1E69765E8])
  {
    v13 = 0;
LABEL_7:
    result = (*(v4 + 8))(v11, v2);
    *a1 = v13;
    return result;
  }

  if (v12 == *MEMORY[0x1E69765F8])
  {
    v13 = 1;
    goto LABEL_7;
  }

  if (v12 == *MEMORY[0x1E69765F0])
  {
    v13 = 2;
    goto LABEL_7;
  }

  result = sub_1D5615E08();
  __break(1u);
  return result;
}

void static Album.validateParametersForInternalLibrarySectionedRequest<A>(with:itemPredicates:sectionPredicates:itemSortDescriptors:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v153 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_2();
  v127 = v13;
  OUTLINED_FUNCTION_70_0();
  v140 = sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  v132 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v139 = v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_2();
  v141 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  v20 = OUTLINED_FUNCTION_22(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  v138 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_47();
  v149 = sub_1D5613D28();
  OUTLINED_FUNCTION_4();
  v131 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_2();
  v128 = v26;
  v27 = sub_1D560DAB8();
  v28 = sub_1D560DDF8();
  v150 = sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  v130 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13();
  v154 = v31;
  OUTLINED_FUNCTION_23();
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v122 - v34;
  v129 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13();
  v143 = v36;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_2();
  v144 = v38;
  v124 = v6;
  if (a3 >> 62)
  {
    goto LABEL_67;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D5615A98())
  {
    v148 = a5;
    if (!i)
    {
LABEL_27:
      v74 = v153;
      if (v153 >> 62)
      {
        v7 = sub_1D5615A98();
        if (!v7)
        {
          return;
        }
      }

      else
      {
        v7 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v7)
        {
          return;
        }
      }

      a5 = 0;
      v75 = v74 & 0xC000000000000001;
      v146 = v74 & 0xFFFFFFFFFFFFFF8;
      v152 = v28 - 8;
      LODWORD(v151) = *MEMORY[0x1E69750A0];
      v145 = (v129 + 32);
      v141 = (v131 + 32);
      OUTLINED_FUNCTION_13_49(v131);
      v142 = v76;
      v147 = (v130 + 8);
      v144 = v74 & 0xC000000000000001;
      while (1)
      {
        if (v75)
        {
          a3 = MEMORY[0x1DA6EB9B0](a5, v74);
        }

        else
        {
          if (a5 >= *(v146 + 16))
          {
            goto LABEL_66;
          }

          a3 = *(v74 + 8 * a5 + 32);
        }

        v35 = (a5 + 1);
        if (__OFADD__(a5, 1))
        {
          goto LABEL_64;
        }

        v77 = v154;
        sub_1D560CE08();
        OUTLINED_FUNCTION_57(v77, 1, v28);
        if (v65)
        {

          (*v147)(v154, v150);
        }

        else
        {
          v78 = *(v28 - 8);
          v79 = (*(v78 + 88))(v154, v28);
          if (v79 == v151)
          {
            v80 = v154;
            (*(v78 + 96))(v154, v28);
            v81 = v143;
            (*v145)(v143, v80, v27);
            OUTLINED_FUNCTION_7_69();
            v82 = v139;
            sub_1D5615668();
            v83 = OUTLINED_FUNCTION_213();
            OUTLINED_FUNCTION_57(v83, v84, v148);
            if (v65)
            {
              OUTLINED_FUNCTION_129();
              v85(v81, v27);

              (*v142)(v82, v140);
              v89 = v138;
              OUTLINED_FUNCTION_33();
              __swift_storeEnumTagSinglePayload(v86, v87, v88, v149);
            }

            else
            {
              v89 = v138;
              v90 = v149;
              v91 = swift_dynamicCast();
              __swift_storeEnumTagSinglePayload(v89, v91 ^ 1u, 1, v90);
              v92 = OUTLINED_FUNCTION_213();
              OUTLINED_FUNCTION_57(v92, v93, v90);
              if (!v94)
              {
                v99 = v126;
                (*v141)(v126, v89, v90);
                v100 = v125;
                sub_1D5613CC8();
                sub_1D560D838();
                v101 = OUTLINED_FUNCTION_213();
                OUTLINED_FUNCTION_57(v101, v102, v103);
                if (v104)
                {
                  sub_1D4E7661C(v100, &unk_1EC7EEC20, &unk_1D5623F70);
                  if (qword_1EDD5D8A8 != -1)
                  {
                    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
                  }

                  v115 = sub_1D560C758();
                  __swift_project_value_buffer(v115, qword_1EDD76DC8);
                  v107 = sub_1D560C738();
                  v116 = sub_1D56156C8();
                  if (os_log_type_enabled(v107, v116))
                  {
                    v112 = swift_slowAlloc();
                    *v112 = 0;
                    OUTLINED_FUNCTION_26_40(&dword_1D4E3F000, v117, v118, "Track has no valid album identifier set.");
                    v110 = v126;
                    v111 = v143;
                    goto LABEL_60;
                  }

                  v110 = v126;
                  v111 = v143;
                  goto LABEL_62;
                }

                (*v134)(v99, v90);
                OUTLINED_FUNCTION_129();
                v105(v143, v27);
                v96 = v100;
                v97 = &unk_1EC7EEC20;
                v98 = &unk_1D5623F70;
                goto LABEL_49;
              }

              OUTLINED_FUNCTION_129();
              v95(v143, v27);
            }

            v96 = v89;
            v97 = &qword_1EC7EA888;
            v98 = &qword_1D563B8C0;
LABEL_49:
            sub_1D4E7661C(v96, v97, v98);
            v75 = v144;
            goto LABEL_50;
          }

          (*(v78 + 8))(v154, v28);
        }

LABEL_50:
        ++a5;
        v74 = v153;
        if (v35 == v7)
        {
          return;
        }
      }
    }

    a5 = 0;
    v152 = a3 & 0xC000000000000001;
    v142 = a3 & 0xFFFFFFFFFFFFFF8;
    v147 = (v28 - 8);
    LODWORD(v146) = *MEMORY[0x1E69750A0];
    v136 = (v129 + 32);
    v123 = (v131 + 32);
    OUTLINED_FUNCTION_13_49(v131);
    v133 = v40;
    v145 = (v130 + 8);
    v151 = a3;
    v137 = v7;
    v135 = i;
LABEL_5:
    if (v152)
    {
      a3 = MEMORY[0x1DA6EB9B0](a5, a3);
    }

    else
    {
      if (a5 >= *(v142 + 16))
      {
        goto LABEL_65;
      }

      a3 = *(a3 + 8 * a5 + 32);
    }

    v41 = a5 + 1;
    if (!__OFADD__(a5, 1))
    {
      break;
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    ;
  }

  sub_1D560CE08();
  OUTLINED_FUNCTION_57(v35, 1, v28);
  if (v65)
  {

    (*v145)(v35, v150);
LABEL_18:
    a3 = v151;
LABEL_26:
    ++a5;
    if (v41 == i)
    {
      goto LABEL_27;
    }

    goto LABEL_5;
  }

  v42 = OUTLINED_FUNCTION_0_33();
  v44 = v43(v42);
  if (v44 != v146)
  {

    v55 = OUTLINED_FUNCTION_0_33();
    v56(v55);
    goto LABEL_18;
  }

  v45 = OUTLINED_FUNCTION_0_33();
  v46(v45);
  v47 = v144;
  (*v136)(v144, v35, v27);
  OUTLINED_FUNCTION_7_69();
  v48 = v141;
  sub_1D5615668();
  v49 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_57(v49, v50, v148);
  if (v65)
  {
    OUTLINED_FUNCTION_129();
    v51(v47, v27);

    (*v133)(v48, v140);
    v7 = v137;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v149);
LABEL_22:
    v67 = v7;
    v68 = &qword_1EC7EA888;
    v69 = &qword_1D563B8C0;
LABEL_25:
    sub_1D4E7661C(v67, v68, v69);
    a3 = v151;
    i = v135;
    goto LABEL_26;
  }

  v7 = v137;
  v57 = v149;
  swift_dynamicCast();
  OUTLINED_FUNCTION_16_50();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  v62 = OUTLINED_FUNCTION_14_49();
  OUTLINED_FUNCTION_57(v62, v63, v64);
  if (v65)
  {
    OUTLINED_FUNCTION_129();
    v66(v144, v27);

    goto LABEL_22;
  }

  v70 = v128;
  (*v123)(v128, v7, v57);
  v7 = v127;
  sub_1D5613CC8();
  v71 = sub_1D560D838();
  OUTLINED_FUNCTION_57(v7, 1, v71);
  if (!v72)
  {

    (*v134)(v70, v57);
    OUTLINED_FUNCTION_129();
    v73(v144, v27);
    v67 = v7;
    v68 = &unk_1EC7EEC20;
    v69 = &unk_1D5623F70;
    goto LABEL_25;
  }

  sub_1D4E7661C(v7, &unk_1EC7EEC20, &unk_1D5623F70);
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v106 = sub_1D560C758();
  __swift_project_value_buffer(v106, qword_1EDD76DC8);
  v107 = sub_1D560C738();
  v108 = sub_1D56156C8();
  v109 = os_log_type_enabled(v107, v108);
  v110 = v128;
  v111 = v144;
  if (v109)
  {
    v112 = swift_slowAlloc();
    *v112 = 0;
    OUTLINED_FUNCTION_26_40(&dword_1D4E3F000, v113, v114, "Track has no valid album identifier set.");
LABEL_60:
    MEMORY[0x1DA6ED200](v112, -1, -1);
  }

LABEL_62:
  v119 = v149;

  sub_1D560DE58();
  sub_1D51613A4(&qword_1EDD53B58, MEMORY[0x1E69750D8], MEMORY[0x1E69750E0]);
  swift_allocError();
  OUTLINED_FUNCTION_24_0();
  (*(v120 + 104))();
  swift_willThrow();

  (*v134)(v110, v119);
  OUTLINED_FUNCTION_129();
  v121(v111, v27);
}

uint64_t sub_1D51606F4()
{
  OUTLINED_FUNCTION_60();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA910, &qword_1D561D180);
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6620, &qword_1D562ECD0);
  v1[7] = v4;
  v1[8] = *(v4 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5160824, 0, 0);
}

uint64_t sub_1D5160824()
{
  sub_1D5613D28();
  sub_1D560DD68();
  swift_getKeyPath();
  sub_1D560DD08();

  _s8MusicKit0A14LibraryRequestV0aB8InternalE25deferIdentifierResolutionSbvs_0();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1D505FFA8;
  v2 = v0[6];
  v3 = v0[7];

  return MEMORY[0x1EEDCEAC0](v2, v3);
}

uint64_t sub_1D5160964()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4F49C18;

  return sub_1D51606F4();
}

void Album.playbackIntent(startingAt:with:explicitPlaybackSource:isLocalPlayback:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v84 = v6;
  v86 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_59_0();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v75 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0618, &qword_1D5638338);
  OUTLINED_FUNCTION_4();
  v85 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v83 = &v75 - v19;
  OUTLINED_FUNCTION_70_0();
  v20 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v75 - v26;
  v28 = *v3;
  v82 = v22;
  if (v28 == 2)
  {
    sub_1D5613AF8();
    sub_1D560EC98();
    v29 = sub_1D560D668();
    (*(v22 + 8))(v27, v20);
    if (v29)
    {
LABEL_3:
      sub_1D5613AF8();
      sub_1D5613D28();
      v30 = v83;
      sub_1D560E668();
      if (v1)
      {
        swift_getKeyPath();
        sub_1D560E548();
      }

      else
      {
        KeyPath = swift_getKeyPath();
        sub_1D505B7D8(0);
        v89[0] = v33;
        v89[1] = v34;
        MEMORY[0x1DA6E4340](KeyPath, v89, v16, MEMORY[0x1E6976CD0], MEMORY[0x1E6975510]);
      }

      v35 = swift_getKeyPath();
      sub_1D515E53C(v35, 1);

      v36 = swift_getKeyPath();
      OUTLINED_FUNCTION_17_48(v36);

      v37 = swift_getKeyPath();
      OUTLINED_FUNCTION_17_48(v37);

      v38 = swift_getKeyPath();
      OUTLINED_FUNCTION_17_48(v38);

      v90 = v16;
      v91 = &protocol witness table for MusicLibrarySectionedRequest<A, B>;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v89);
      v40 = *(v85 + 16);
      v79 = v16;
      v40(boxed_opaque_existential_0, v30, v16);
      sub_1D4ED3750(v84, v87, &unk_1EC7F65C0, &qword_1D562E6B0);
      if (v88)
      {
        __swift_project_boxed_opaque_existential_1(v87, v88);
        sub_1D560EC98();
        OUTLINED_FUNCTION_16_50();
        __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
        __swift_destroy_boxed_opaque_existential_1(v87);
      }

      else
      {
        sub_1D4E7661C(v87, &unk_1EC7F65C0, &qword_1D562E6B0);
        OUTLINED_FUNCTION_33();
        __swift_storeEnumTagSinglePayload(v49, v50, v51, v20);
      }

      if (v5)
      {
        v84 = v15;
        swift_getKeyPath();
        v52 = *(v5 + 16);
        v78 = (v82 + 32);

        v53 = 0;
        v54 = MEMORY[0x1E69E7CC0];
        v55 = v5 + 32;
        v77 = v52;
        for (i = v5 + 32; ; v55 = i)
        {
          v56 = ~v53;
          v57 = v55 + 40 * v53;
          v58 = v52 - v53;
          v15 = v84;
          if (!v58)
          {
            break;
          }

          while (1)
          {
            sub_1D4E628D4(v57, v87);
            swift_getAtKeyPath();
            OUTLINED_FUNCTION_16_50();
            __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
            __swift_destroy_boxed_opaque_existential_1(v87);
            v63 = OUTLINED_FUNCTION_14_49();
            if (__swift_getEnumTagSinglePayload(v63, v64, v65) != 1)
            {
              break;
            }

            sub_1D4E7661C(v12, &unk_1EC7EEC20, &unk_1D5623F70);
            --v56;
            v57 += 40;
            if (!--v58)
            {
              goto LABEL_24;
            }
          }

          v66 = *v78;
          v67 = v80;
          (*v78)(v80, v12, v20);
          v66(v81, v67, v20);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v75 = v66;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D4F00554();
            v54 = v71;
          }

          v69 = *(v54 + 16);
          v70 = v82;
          if (v69 >= *(v54 + 24) >> 1)
          {
            v72 = v82;
            sub_1D4F00554();
            v70 = v72;
            v54 = v73;
          }

          v53 = -v56;
          *(v54 + 16) = v69 + 1;
          v75(v54 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v69, v81, v20);
          v52 = v77;
        }

LABEL_24:

        v74 = v79;
        v30 = v83;
      }

      else
      {
        v74 = v79;
      }

      sub_1D5424200();

      sub_1D4E7661C(v15, &unk_1EC7EEC20, &unk_1D5623F70);
      (*(v85 + 8))(v30, v74);
      goto LABEL_27;
    }
  }

  else if (v28)
  {
    goto LABEL_3;
  }

  if (v5)
  {
    v90 = sub_1D5613AF8();
    v91 = &protocol witness table for Album;
    __swift_allocate_boxed_opaque_existential_0(v89);
    OUTLINED_FUNCTION_24_0();
    (*(v31 + 16))();
    sub_1D54235CC();
LABEL_27:
    __swift_destroy_boxed_opaque_existential_1(v89);
    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADC0, &qword_1D561DBB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D561C050;
  v46 = sub_1D5613AF8();
  v47 = MEMORY[0x1E6976CB8];
  *(inited + 56) = v46;
  *(inited + 64) = v47;
  __swift_allocate_boxed_opaque_existential_0((inited + 32));
  OUTLINED_FUNCTION_24_0();
  (*(v48 + 16))();
  sub_1D5423C84();
  swift_setDeallocating();
  sub_1D4EFF1F8();
LABEL_28:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D51611B0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result & 1;
  return result;
}

unint64_t sub_1D51612CC()
{
  result = qword_1EC7F0C78;
  if (!qword_1EC7F0C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0C80, &qword_1D5648AE0);
    sub_1D5161350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0C78);
  }

  return result;
}

unint64_t sub_1D5161350()
{
  result = qword_1EC7F0C88;
  if (!qword_1EC7F0C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0C88);
  }

  return result;
}

uint64_t sub_1D51613A4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t Playlist.Collaboration.init<A>(_:configuration:sharedRelatedItemStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v166 = a5;
  v190 = a6;
  v191 = a4;
  v194 = a3;
  v195 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8C0, &qword_1D5621E68);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v188 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8C8, &qword_1D5621E70);
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  v189 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  v21 = OUTLINED_FUNCTION_22(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v193 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_2();
  v192 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v27);
  v181 = sub_1D5610788();
  OUTLINED_FUNCTION_4();
  v180 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v30);
  v179 = sub_1D56107C8();
  OUTLINED_FUNCTION_4();
  v176 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v34);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v36);
  v196 = sub_1D56102D8();
  OUTLINED_FUNCTION_4();
  v200 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D8, &qword_1D5621E78);
  OUTLINED_FUNCTION_22(v42);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v44);
  sub_1D56103C8();
  OUTLINED_FUNCTION_4();
  v186 = v46;
  v187 = v45;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5_0();
  v199 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v48);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v164 - v50;
  v52 = type metadata accessor for PlaylistCollaborationPropertyProvider(0);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5();
  v56 = (v55 - v54);
  v58 = *(v57 + 24);
  sub_1D560C328();
  v171 = v58;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
  v63 = v52[8];
  sub_1D560C0A8();
  v172 = v63;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
  v68 = v52[9];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  v183 = v68;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v69);
  v185 = v52[10];
  OUTLINED_FUNCTION_33();
  v198 = v69;
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
  if (qword_1EC7E8FD8 != -1)
  {
    swift_once();
  }

  v80 = sub_1D560D9A8();
  __swift_project_value_buffer(v80, qword_1EC7F0FC0);
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA610, &qword_1D561C518);
  sub_1D56105B8();
  sub_1D4E7661C(v51, &qword_1EC7EB5C0, &unk_1D56223C0);
  sub_1D5610658();
  v182 = sub_1D5610618();
  v168 = v86;
  v167 = sub_1D56105C8();
  v87 = sub_1D56105F8();
  v88 = sub_1D56105E8();
  v197 = v85;
  v89 = a1;
  v90 = sub_1D56105A8();
  *v56 = 516;
  v169 = v52[7];
  *(v56 + v169) = 2;
  if (qword_1EC7E8D90 != -1)
  {
    swift_once();
  }

  v91 = qword_1EC87C090;
  if (qword_1EC87C090 >> 62)
  {
    sub_1D560CDE8();

    v163 = sub_1D5615E18();

    v91 = v163;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v92 = v196;
  *(v56 + v52[12]) = v91;
  v93 = (v56 + v52[15]);
  v94 = v168;
  *v93 = v182;
  v93[1] = v94;
  *(v56 + v52[16]) = v167;
  *(v56 + v52[17]) = v87;
  *(v56 + v52[18]) = v88;
  *(v56 + v52[19]) = v90;
  v182 = v89;
  sub_1D5610648();
  v95 = v170;
  sub_1D56102E8();
  OUTLINED_FUNCTION_150();
  sub_1D5610288();
  v96 = v200 + 8;
  v97 = *(v200 + 8);
  v97(v95, v92);
  v98 = sub_1D5610398();
  OUTLINED_FUNCTION_1(v91);
  v177 = v52;
  if (v147)
  {
    sub_1D4E7661C(v91, &qword_1EC7EC8D8, &qword_1D5621E78);
    v100 = 4;
  }

  else
  {
    sub_1D516230C(v201);
    OUTLINED_FUNCTION_15_1();
    (*(v99 + 8))(v91, v98);
    v100 = v201[0];
  }

  v101 = v56;
  *v56 = v100;
  v102 = v175;
  sub_1D56107A8();
  v103 = v174;
  sub_1D56102E8();
  sub_1D56102B8();
  v105 = v104;
  v97(v103, v92);
  v106 = *MEMORY[0x1E6975DC8];
  v200 = v96;
  v107 = v180;
  v108 = *(v180 + 104);
  v109 = v178;
  v170 = v97;
  v110 = v181;
  v108(v178, v106, v181);
  v111 = v173;
  sub_1D5610798();

  v112 = v109;
  v113 = v199;
  (*(v107 + 8))(v112, v110);
  (*(v176 + 8))(v102, v179);
  v114 = v111;
  v115 = v101;
  sub_1D4ED39C0(v114, v101 + v171, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_150();
  sub_1D56102E8();
  v116 = sub_1D56102C8();
  v117 = v105;
  v118 = v196;
  v119 = v200;
  v120 = v170;
  v170(v117, v196);
  v121 = (v116 & 1) == 0;
  if (v116 == 2)
  {
    v121 = 2;
  }

  *(v115 + v169) = v121;
  sub_1D56102E8();
  v122 = v184;
  sub_1D5610298();
  v120(v103, v118);
  sub_1D4ED39C0(v122, v115 + v172, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_150();
  sub_1D5610348();
  v123 = sub_1D5610338();
  OUTLINED_FUNCTION_1(v119);
  if (v147)
  {
    sub_1D4E7661C(v119, &qword_1EC7EC8C0, &qword_1D5621E68);
    v124 = 1;
    v125 = v191;
  }

  else
  {
    v126 = v164;
    sub_1D5610318();
    OUTLINED_FUNCTION_15_1();
    (*(v127 + 8))(v119, v123);
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8F0, &unk_1D5621E80);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v126, 1, v128);
    v125 = v191;
    if (EnumTagSinglePayload == 1)
    {
      sub_1D4E7661C(v126, &qword_1EC7EC8C8, &qword_1D5621E70);
      v124 = 1;
    }

    else
    {
      sub_1D560CD98();
      v130 = v165;
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v131, v132, v133, v134);
      type metadata accessor for Playlist.Collaborator(0);
      sub_1D5163B7C(&qword_1EC7EC8F8, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      OUTLINED_FUNCTION_19_19();
      sub_1D5163B7C(v135, type metadata accessor for Playlist.Collaborator, v136);
      OUTLINED_FUNCTION_20_47();
      v113 = v199;
      sub_1D5612368();
      sub_1D4E7661C(v130, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_24_0();
      (*(v137 + 8))(v126, v128);
      v124 = 0;
    }
  }

  v138 = v188;
  v139 = v177;
  v140 = v192;
  __swift_storeEnumTagSinglePayload(v192, v124, 1, v198);
  sub_1D4ED39C0(v140, v115 + v183, &qword_1EC7EC8D0, &unk_1D5623AD0);
  sub_1D5610348();
  OUTLINED_FUNCTION_1(v138);
  v141 = v189;
  if (v147)
  {
    v142 = &qword_1EC7EC8C0;
    v143 = &qword_1D5621E68;
    v144 = v138;
LABEL_24:
    sub_1D4E7661C(v144, v142, v143);
    v157 = 1;
    goto LABEL_25;
  }

  sub_1D5610328();
  OUTLINED_FUNCTION_15_1();
  (*(v145 + 8))(v138, v123);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8F0, &unk_1D5621E80);
  OUTLINED_FUNCTION_1(v141);
  if (v147)
  {
    v142 = &qword_1EC7EC8C8;
    v143 = &qword_1D5621E70;
    v144 = v141;
    goto LABEL_24;
  }

  sub_1D560CD98();
  v148 = v165;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v149, v150, v151, v152);
  type metadata accessor for Playlist.Collaborator(0);
  sub_1D5163B7C(&qword_1EC7EC8F8, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  OUTLINED_FUNCTION_19_19();
  sub_1D5163B7C(v153, type metadata accessor for Playlist.Collaborator, v154);
  OUTLINED_FUNCTION_20_47();
  sub_1D5612368();
  v155 = v148;
  v113 = v199;
  sub_1D4E7661C(v155, &qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_15_1();
  (*(v156 + 8))(v141, v146);
  v157 = 0;
LABEL_25:
  v158 = v193;
  __swift_storeEnumTagSinglePayload(v193, v157, 1, v198);
  sub_1D4ED39C0(v158, v115 + v185, &qword_1EC7EC8D0, &unk_1D5623AD0);
  v201[3] = v139;
  v201[4] = sub_1D5163B7C(&qword_1EC7EC8E8, type metadata accessor for PlaylistCollaborationPropertyProvider, &unk_1D5631938);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v201);
  sub_1D5163A60(v115, boxed_opaque_existential_0);
  Playlist.Collaboration.init(propertyProvider:)(v201, v190);

  OUTLINED_FUNCTION_24_0();
  (*(v160 + 8))(v195, v125);
  OUTLINED_FUNCTION_24_0();
  (*(v161 + 8))(v182);
  (*(v186 + 8))(v113, v187);
  return sub_1D50A8BE4(v115);
}

void sub_1D516230C(char *a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = sub_1D5610398();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v32 = v7;
  OUTLINED_FUNCTION_23();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v14 = *(v5 + 16);
  v14(&v31 - v12, v1, v3);
  sub_1D5610358();
  sub_1D5163B7C(&qword_1EC7F0CB8, MEMORY[0x1E6975C60], MEMORY[0x1E6975C68]);
  v15 = OUTLINED_FUNCTION_17_49();
  v16 = *(v5 + 8);
  v16(v11, v3);
  if (v15)
  {
    v16(v13, v3);
    v17 = 1;
  }

  else
  {
    sub_1D5610388();
    v18 = OUTLINED_FUNCTION_17_49();
    v16(v11, v3);
    if (v18)
    {
      v16(v13, v3);
      v17 = 2;
    }

    else
    {
      sub_1D5610368();
      v19 = OUTLINED_FUNCTION_17_49();
      v16(v11, v3);
      v16(v13, v3);
      if (v19)
      {
        v17 = 3;
      }

      else
      {
        if (qword_1EDD5D8A8 != -1)
        {
          swift_once();
        }

        v20 = sub_1D560C758();
        __swift_project_value_buffer(v20, qword_1EDD76DC8);
        v21 = v32;
        v14(v32, v2, v3);
        v22 = sub_1D560C738();
        v23 = sub_1D56156C8();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v34 = v25;
          *v24 = 136446210;
          v26 = sub_1D5610378();
          v27 = v21;
          v29 = v28;
          v16(v27, v3);
          v30 = sub_1D4E6835C(v26, v29, &v34);

          *(v24 + 4) = v30;
          _os_log_impl(&dword_1D4E3F000, v22, v23, "Failed to create a collaboration joined status due to unhandled value: %{public}s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v25);
          MEMORY[0x1DA6ED200](v25, -1, -1);
          MEMORY[0x1DA6ED200](v24, -1, -1);
        }

        else
        {

          v16(v21, v3);
        }

        v17 = 4;
      }
    }
  }

  *v33 = v17;
}

uint64_t Playlist.Collaboration.InvitationMode.init(isOpenInvitation:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = (result & 1) == 0;
  }

  *a2 = v2;
  return result;
}

uint64_t Playlist.Collaboration.convertToCloudResource<A>(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v154 = a3;
  v153 = a2;
  v174 = a1;
  v170 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v169 = v6;
  v7 = sub_1D5610088();
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v181 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v15);
  sub_1D5612B78();
  OUTLINED_FUNCTION_4();
  v167 = v17;
  v168 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0C98, &qword_1D563BC88);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0CA0, &qword_1D563BC90);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v24);
  v165 = sub_1D56103C8();
  OUTLINED_FUNCTION_4();
  v164 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13();
  v179 = v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_2();
  v180 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v32);
  sub_1D5613578();
  OUTLINED_FUNCTION_4();
  v172 = v34;
  v173 = v33;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  v171 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8C8, &qword_1D5621E70);
  v37 = OUTLINED_FUNCTION_22(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_2();
  v175 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  v41 = OUTLINED_FUNCTION_22(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_2();
  v183 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  v45 = OUTLINED_FUNCTION_22(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_135();
  v178 = v48;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_2();
  v185 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8C0, &qword_1D5621E68);
  v52 = OUTLINED_FUNCTION_22(v51);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13_2();
  v184 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D8, &qword_1D5621E78);
  OUTLINED_FUNCTION_22(v56);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v59);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v61);
  v62 = sub_1D5610788();
  OUTLINED_FUNCTION_4();
  v64 = v63;
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5();
  v68 = v67 - v66;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v69);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v70);
  v72 = v150 - v71;
  v155 = sub_1D56107C8();
  OUTLINED_FUNCTION_4();
  v74 = v73;
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_5();
  v78 = v77 - v76;
  sub_1D56102D8();
  OUTLINED_FUNCTION_4();
  v176 = v80;
  v177 = v79;
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_13_2();
  v182 = v82;
  sub_1D56107A8();
  if (qword_1EC7E8F90 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  sub_1D5163B7C(qword_1EDD5F0F8, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
  sub_1D5163B7C(&qword_1EC7F0CA8, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
  OUTLINED_FUNCTION_159();
  sub_1D560EC28();
  (*(v64 + 104))(v68, *MEMORY[0x1E6975DC8], v62);
  v157 = sub_1D56107B8();
  v156 = v83;
  (*(v64 + 8))(v68, v62);
  sub_1D4E7661C(v72, &qword_1EC7EA3B8, &unk_1D561E370);
  (*(v74 + 8))(v78, v155);
  if (qword_1EC7E8FA0 != -1)
  {
    swift_once();
  }

  sub_1D560C0A8();
  sub_1D560EC28();
  v84 = v178;
  v85 = v175;
  v86 = v160;
  v87 = v159;
  if (qword_1EC7E8F80 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_48(qword_1EC87C258, &type metadata for Playlist.Collaborator.Status);
  switch(v186)
  {
    case 2:
      sub_1D5610388();
      goto LABEL_12;
    case 3:
      sub_1D5610368();
      goto LABEL_12;
    case 4:
      v88 = 1;
      goto LABEL_13;
    default:
      sub_1D5610358();
LABEL_12:
      v88 = 0;
LABEL_13:
      v89 = sub_1D5610398();
      __swift_storeEnumTagSinglePayload(v87, v88, 1, v89);
      if (qword_1EC7E8F98 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_18_48(qword_1EC87C270, &type metadata for Playlist.Collaboration.InvitationMode);
      sub_1D56102A8();
      sub_1D5610338();
      OUTLINED_FUNCTION_33();
      v159 = v90;
      __swift_storeEnumTagSinglePayload(v91, v92, v93, v90);
      if (qword_1EC7E8FA8 != -1)
      {
        swift_once();
      }

      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
      v95 = OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_18_48(v95, v96);
      if (qword_1EC7E8FB8 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_18_48(qword_1EC7F0F90, v94);
      if (qword_1EC7E8FB0 != -1)
      {
        swift_once();
      }

      v97 = qword_1EC7F0F88;
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
      OUTLINED_FUNCTION_18_48(v97, v98);
      OUTLINED_FUNCTION_1(v185);
      if (!v99 || __swift_getEnumTagSinglePayload(v183, 1, v98) != 1 || (OUTLINED_FUNCTION_1(v84), !v99))
      {
        v158 = v98;
        v100 = v150[0];
        sub_1D4ED3750(v185, v150[0], &qword_1EC7EC8D0, &unk_1D5623AD0);
        OUTLINED_FUNCTION_1(v100);
        if (v99)
        {
          sub_1D4E7661C(v100, &qword_1EC7EC8D0, &unk_1D5623AD0);
          v105 = 1;
        }

        else
        {
          type metadata accessor for Playlist.Collaborator(0);
          sub_1D5163B7C(&qword_1EC7EC8F8, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
          OUTLINED_FUNCTION_19_19();
          sub_1D5163B7C(v101, type metadata accessor for Playlist.Collaborator, v102);
          OUTLINED_FUNCTION_23_40();
          sub_1D4F1ABE8(v103);
          OUTLINED_FUNCTION_21_40();
          sub_1D560DA98();
          (*(v172 + 8))(type metadata accessor for Playlist.Collaborator, v173);
          OUTLINED_FUNCTION_15_1();
          (*(v104 + 8))(v100, v94);
          v105 = 0;
        }

        v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8F0, &unk_1D5621E80);
        __swift_storeEnumTagSinglePayload(v85, v105, 1, v106);
        sub_1D4ED3750(v84, v86, &qword_1EC7EC8D0, &unk_1D5623AD0);
        OUTLINED_FUNCTION_1(v86);
        v107 = v158;
        if (v99)
        {
          sub_1D4E7661C(v86, &qword_1EC7EC8D0, &unk_1D5623AD0);
          v114 = 1;
          v115 = v152;
          v111 = v151;
        }

        else
        {
          type metadata accessor for Playlist.Collaborator(0);
          sub_1D5163B7C(&qword_1EC7EC8F8, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
          OUTLINED_FUNCTION_19_19();
          sub_1D5163B7C(v108, type metadata accessor for Playlist.Collaborator, v109);
          OUTLINED_FUNCTION_23_40();
          sub_1D4F1ABE8(v110);
          v111 = v151;
          OUTLINED_FUNCTION_21_40();
          sub_1D560DA98();
          (*(v172 + 8))(type metadata accessor for Playlist.Collaborator, v173);
          OUTLINED_FUNCTION_15_1();
          v112 = OUTLINED_FUNCTION_159();
          v113(v112);
          v114 = 0;
          v115 = v152;
        }

        v116 = v150[2];
        v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8F0, &unk_1D5621E80);
        __swift_storeEnumTagSinglePayload(v111, v114, 1, v117);
        sub_1D4ED3750(v183, v116, &qword_1EC7EB620, &unk_1D561E5B0);
        if (__swift_getEnumTagSinglePayload(v116, 1, v107) == 1)
        {
          sub_1D4E7661C(v116, &qword_1EC7EB620, &unk_1D561E5B0);
          v118 = 1;
        }

        else
        {
          sub_1D5614898();
          sub_1D5163B7C(&qword_1EDD52A78, MEMORY[0x1E69773E0], MEMORY[0x1E69773B8]);
          v119 = v171;
          sub_1D4F1ABE8(v171);
          sub_1D560DA98();
          (*(v172 + 8))(v119, v173);
          OUTLINED_FUNCTION_24_0();
          (*(v120 + 8))(v116, v107);
          v118 = 0;
        }

        v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
        __swift_storeEnumTagSinglePayload(v115, v118, 1, v121);
        v122 = v150[1];
        sub_1D5610308();
        sub_1D4E7661C(v184, &qword_1EC7EC8C0, &qword_1D5621E68);
        __swift_storeEnumTagSinglePayload(v122, 0, 1, v159);
        v123 = OUTLINED_FUNCTION_159();
        sub_1D5163AC4(v123, v124);
      }

      (*(v176 + 16))(v161, v182, v177);
      sub_1D4ED3750(v184, v162, &qword_1EC7EC8C0, &qword_1D5621E68);
      sub_1D56102F8();
      v125 = v163;
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v126, v127, v128, v129);
      sub_1D56103B8();
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v130, v131, v132, v133);

      v134 = v180;
      sub_1D56103A8();
      type metadata accessor for Playlist.Collaboration(0);
      OUTLINED_FUNCTION_150();
      sub_1D5611A28();
      v135 = sub_1D560D838();
      __swift_storeEnumTagSinglePayload(v125, 0, 1, v135);
      sub_1D5611C98();
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v136, v137, v138, v139);
      v140 = v166;
      sub_1D5612B38();
      OUTLINED_FUNCTION_150();
      v142 = v134;
      v143 = v165;
      (*(v141 + 16))(v179, v142, v165);
      sub_1D5611A98();
      v144 = sub_1D5611A88();
      v174 = v145;
      v175 = v144;
      v147 = v167;
      v146 = v168;
      v148 = v169;
      (*(v167 + 16))(v169, v140, v168);
      __swift_storeEnumTagSinglePayload(v148, 0, 1, v146);
      v173 = sub_1D5611A38();
      v172 = sub_1D5611A68();
      sub_1D5611A58();
      sub_1D5611A18();
      sub_1D5163B7C(&qword_1EC7F0CB0, MEMORY[0x1E6975C78], MEMORY[0x1E6975C70]);
      sub_1D5610628();
      (*(v147 + 8))(v140, v146);
      (*(v125 + 8))(v180, v143);
      sub_1D4E7661C(v184, &qword_1EC7EC8C0, &qword_1D5621E68);
      (*(v176 + 8))(v182, v177);
      sub_1D4E7661C(v185, &qword_1EC7EC8D0, &unk_1D5623AD0);
      sub_1D4E7661C(v183, &qword_1EC7EB620, &unk_1D561E5B0);
      return sub_1D4E7661C(v178, &qword_1EC7EC8D0, &unk_1D5623AD0);
  }
}

uint64_t sub_1D51639F4(uint64_t a1)
{
  sub_1D5163B7C(&qword_1EC7ECF78, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);

  return sub_1D5612668();
}

uint64_t sub_1D5163A60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistCollaborationPropertyProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5163AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8C0, &qword_1D5621E68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5163B7C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D5163C44()
{
  result = qword_1EC7F0CC0;
  if (!qword_1EC7F0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0CC0);
  }

  return result;
}

uint64_t sub_1D5163C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  result = 0x2D73646E65697266;
  v7 = a1 == 0x2D73646E65697266 && a2 == 0xEE006C6C65737075;
  if (v7 || (result = OUTLINED_FUNCTION_0_112(0x2D73646E65697266, 0xEE006C6C65737075), (result & 1) != 0))
  {
    v8 = 0;
  }

  else
  {
    result = 0x676E6970756F7267;
    v9 = a1 == 0x676E6970756F7267 && a2 == 0xE900000000000073;
    if (v9 || (result = OUTLINED_FUNCTION_0_112(0x676E6970756F7267, 0xE900000000000073), (result & 1) != 0))
    {
      v8 = 1;
    }

    else
    {
      result = 0x656C7069746C756DLL;
      v10 = a1 == 0x656C7069746C756DLL && a2 == 0xE900000000000078;
      if (v10 || (result = OUTLINED_FUNCTION_0_112(0x656C7069746C756DLL, 0xE900000000000078), (result & 1) != 0))
      {
        v8 = 2;
      }

      else
      {
        result = 0x6F6F7269746C756DLL;
        v11 = a1 == 0x6F6F7269746C756DLL && a2 == 0xEA0000000000736DLL;
        if (v11 || (result = OUTLINED_FUNCTION_0_112(0x6F6F7269746C756DLL, 0xEA0000000000736DLL), (result & 1) != 0))
        {
          v8 = 3;
        }

        else
        {
          v12 = a1 == 0xD000000000000012 && 0x80000001D5685EE0 == a2;
          if (v12 || (result = OUTLINED_FUNCTION_0_112(0xD000000000000012, 0x80000001D5685EE0), (result & 1) != 0))
          {
            v8 = 4;
          }

          else
          {
            result = 0x736D6F6F72;
            v13 = a1 == 0x736D6F6F72 && a2 == 0xE500000000000000;
            if (v13 || (result = OUTLINED_FUNCTION_0_112(0x736D6F6F72, 0xE500000000000000), (result & 1) != 0))
            {
              v8 = 5;
            }

            else
            {
              result = 0x726168632D706F74;
              v8 = 6;
              if (a1 != 0x726168632D706F74 || a2 != 0xEA00000000007374)
              {
                result = OUTLINED_FUNCTION_0_112(0x726168632D706F74, 0xEA00000000007374);
                if (result)
                {
                  v8 = 6;
                }

                else
                {
                  v8 = 7;
                }
              }
            }
          }
        }
      }
    }
  }

  *a3 = v8;
  return result;
}

uint64_t Station.FeaturedEditorialKind.hashValue.getter()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](0);
  return sub_1D5616328();
}

uint64_t Station.FeaturedEditorialKind.init(from:)(void *a1)
{
  v3 = sub_1D5615C18();
  OUTLINED_FUNCTION_4();
  v42 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1D5615C08();
  OUTLINED_FUNCTION_4();
  v41 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v44 = sub_1D5614308();
  OUTLINED_FUNCTION_4();
  v16 = v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v36 - v21;
  sub_1D4E628D4(a1, v43);
  sub_1D56142E8();
  if (!v1)
  {
    v39 = v14;
    v40 = v9;
    v38 = v3;
    v23 = v42;
    v24 = v16;
    v25 = *(v16 + 16);
    v26 = v44;
    v25(v20, v22, v44);
    v27 = (*(v24 + 88))(v20, v26);
    v28 = *(v24 + 8);
    if (v27 == *MEMORY[0x1E69770B0])
    {
      v28(v22, v26);
    }

    else
    {
      v37 = *(v24 + 8);
      v28(v20, v26);
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1D5616348();
      v29 = v39;
      sub_1D5615BF8();
      v30 = v41;
      (*(v41 + 16))(v8, v29, v40);
      v31 = v23;
      v32 = *(v23 + 104);
      v33 = v38;
      v32(v8, *MEMORY[0x1E69E6B00], v38);
      swift_allocError();
      (*(v31 + 16))(v34, v8, v33);
      swift_willThrow();
      (*(v31 + 8))(v8, v33);
      (*(v30 + 8))(v39, v40);
      v37(v22, v26);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Station.FeaturedEditorialKind.encode(to:)(uint64_t a1)
{
  v1 = sub_1D5614308();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  (*(v3 + 104))(v6 - v5, *MEMORY[0x1E69770B0], v1);
  sub_1D56142F8();
  return (*(v3 + 8))(v7, v1);
}

uint64_t Station.FeaturedEditorialKind.catalogFilterValue.getter()
{
  v0 = sub_1D560FC48();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1D5614308();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  (*(v9 + 104))(v12 - v11, *MEMORY[0x1E69770B0], v7);
  sub_1D56142D8();
  v14 = sub_1D560FC38();
  (*(v2 + 8))(v6, v0);
  (*(v9 + 8))(v13, v7);
  return v14;
}

unint64_t sub_1D5164538()
{
  result = qword_1EC7F0CC8;
  if (!qword_1EC7F0CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0CD0, &qword_1D563BE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0CC8);
  }

  return result;
}

unint64_t sub_1D51645A0()
{
  result = qword_1EC7F0CD8;
  if (!qword_1EC7F0CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0CD8);
  }

  return result;
}

_BYTE *_s21FeaturedEditorialKindOwst(_BYTE *result, int a2, int a3)
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

uint64_t MusicRecentlySearchedViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  MusicRecentlySearchedViewModel.init()();
  return v0;
}

void MusicRecentlySearchedViewModel.init()()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0CE0, &qword_1D5665F20);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0CE8, &qword_1D563BFA0);
  OUTLINED_FUNCTION_4();
  v13 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v17 = OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel__recentlySearchedEntries;
  v18 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0CF0, &qword_1D563BFA8);
  sub_1D560C8B8();
  (*(v13 + 32))(v1 + v17, v16, v11);
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_recentlySearchedCatalogEntries) = v18;
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_recentlySearchedLibraryEntries) = v18;
  if (qword_1EDD55F58 != -1)
  {
    OUTLINED_FUNCTION_32_4(&qword_1EDD55F58);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  *(v1 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_userStateViewModelObserver) = 0;
  v19 = OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_networkConnectivityMonitor;
  sub_1D5612AE8();
  *(v1 + v19) = sub_1D5612AD8();
  v20 = OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_networkConnectivityDidChangeObserver;
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_networkConnectivityDidChangeObserver) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_libraryMappingAutoupdatingResponse) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_libraryMappingSubscription) = 0;
  type metadata accessor for UserStateViewModel(0);
  sub_1D516C540(&qword_1EDD55F50, type metadata accessor for UserStateViewModel, &protocol conformance descriptor for UserStateViewModel);
  v36 = sub_1D560C838();
  OUTLINED_FUNCTION_40_13();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_52_18(v21);
  sub_1D560C898();

  v22 = sub_1D560C948();

  *(v1 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_userStateViewModelObserver) = v22;

  sub_1D5612AC8();
  OUTLINED_FUNCTION_40_13();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_52_18(v23);
  sub_1D516C328(&qword_1EDD54438, &qword_1EC7F0CE0, &qword_1D5665F20);
  v24 = sub_1D560C948();

  (*(v7 + 8))(v10, v5);
  *(v1 + v20) = v24;

  v25 = sub_1D5615458();
  v26 = v35;
  OUTLINED_FUNCTION_146_0(v35, v27, v28, v25);
  OUTLINED_FUNCTION_40_13();
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_52_18(v29);

  OUTLINED_FUNCTION_83_2();
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v29;
  v31 = OUTLINED_FUNCTION_41_7();
  sub_1D51652B0(v31, v32, v26, v33, v34);

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5164B68(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  sub_1D51ECB60(0, 0, v4, &unk_1D563C210, v7);
}

uint64_t sub_1D5164C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5164CB4, 0, 0);
}

uint64_t sub_1D5164CB4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 64) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_10_4();

    return v5();
  }
}

uint64_t sub_1D5164D6C()
{
  OUTLINED_FUNCTION_60();

  sub_1D51671C4();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D5164DD4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  sub_1D51ECB60(0, 0, v4, &unk_1D563C200, v7);
}

uint64_t sub_1D5164F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5164F20, 0, 0);
}

uint64_t sub_1D5164F20()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 64) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_10_4();

    return v5();
  }
}

uint64_t sub_1D5164FD8()
{
  OUTLINED_FUNCTION_60();

  sub_1D5167898();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D5165040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5165060, 0, 0);
}

uint64_t sub_1D5165060()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_26_12(v2);

    return sub_1D5167D94();
  }

  else
  {
    OUTLINED_FUNCTION_10_4();

    return v4();
  }
}

uint64_t sub_1D5165128()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    v7 = sub_1D5165254;
  }

  else
  {

    v7 = sub_1D516522C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D5165254()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D51652B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1D4E69970(a3, v21 - v9, &qword_1EC7EB710, &qword_1D561F440);
  v11 = sub_1D5615458();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v10, &qword_1EC7EB710, &qword_1D561F440);
  }

  else
  {
    sub_1D5615448();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1D5615338();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1D5614DE8() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2C40, &qword_1D563C1F0);
      v18 = (v16 | v14);
      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1D4E50004(a3, &qword_1EC7EB710, &qword_1D561F440);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D4E50004(a3, &qword_1EC7EB710, &qword_1D561F440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2C40, &qword_1D563C1F0);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1D5165550@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D51655A8();
  *a1 = result;
  return result;
}

uint64_t sub_1D51655A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_159();
  sub_1D560C8F8();

  return v1;
}

uint64_t sub_1D5165618(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

void (*sub_1D5165688(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_1D560C8E8();
  return sub_1D4F62FB8;
}

uint64_t sub_1D5165718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0CF8, &qword_1D563C050);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return sub_1D5165858(v4);
}

uint64_t sub_1D51657EC()
{
  OUTLINED_FUNCTION_54_0(v0 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel__recentlySearchedEntries, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0CE8, &qword_1D563BFA0);
  sub_1D560C8C8();
  return swift_endAccess();
}

uint64_t sub_1D5165858(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0CF8, &qword_1D563C050);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31();
  (*(v6 + 16))(v2, a1, v4);
  OUTLINED_FUNCTION_54_0(v1 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel__recentlySearchedEntries, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0CE8, &qword_1D563BFA0);
  sub_1D560C8D8();
  swift_endAccess();
  return (*(v6 + 8))(a1, v4);
}

void (*sub_1D5165970(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0CF8, &qword_1D563C050);
  v3[4] = v4;
  OUTLINED_FUNCTION_69(v4);
  v3[5] = v5;
  v7 = *(v6 + 64);
  v3[6] = __swift_coroFrameAllocStub(v7);
  v3[7] = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_54_0(v1 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel__recentlySearchedEntries, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0CE8, &qword_1D563BFA0);
  sub_1D560C8C8();
  swift_endAccess();
  return sub_1D5165A84;
}

void sub_1D5165A84(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    sub_1D5165858(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1D5165858(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1D5165B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5165B58, 0, 0);
}

uint64_t sub_1D5165B58()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 64) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_10_4();

    return v5();
  }
}

uint64_t sub_1D5165C10()
{
  OUTLINED_FUNCTION_60();

  sub_1D51686BC();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D5165C9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31();
  v6 = sub_1D5615458();
  OUTLINED_FUNCTION_146_0(v2, v7, v8, v6);
  OUTLINED_FUNCTION_40_13();
  v9 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_83_2();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  sub_1D51ECB60(0, 0, v2, a2, v10);
}

uint64_t sub_1D5165D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5165D94, 0, 0);
}

uint64_t sub_1D5165D94()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 64) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_10_4();

    return v5();
  }
}

uint64_t sub_1D5165E4C()
{
  OUTLINED_FUNCTION_60();

  sub_1D51686BC();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D5165EB4(uint64_t a1, unint64_t a2)
{
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v4 = sub_1D560C758();
  __swift_project_value_buffer(v4, qword_1EDD76DC8);

  v5 = sub_1D560C738();
  v6 = sub_1D56156E8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v7 = 136446466;
    v8 = sub_1D5616458();
    v10 = sub_1D4E6835C(v8, v9, &v13);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1D4E6835C(a1, a2, &v13);
    _os_log_impl(&dword_1D4E3F000, v5, v6, "%{public}s: Adding a recently searched search term: %{public}s.", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  sub_1D4FDCB78();
}

uint64_t sub_1D51660B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D51660D4, 0, 0);
}

uint64_t sub_1D51660D4()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[4];
  v2 = v0[2];
  *v2 = v0[3];
  v2[1] = v1;
  v3 = type metadata accessor for MusicSearchIntentDonation(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  OUTLINED_FUNCTION_55();
  v6 = v4;

  return v6();
}

uint64_t sub_1D5166178()
{
  OUTLINED_FUNCTION_60();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for MusicRecentlySearchedViewModel.Entry(0);
  v1[4] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[5] = swift_task_alloc();
  v4 = type metadata accessor for GenericMusicItem(0);
  OUTLINED_FUNCTION_69(v4);
  v1[6] = v5;
  v1[7] = *(v6 + 64);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_1D56153C8();
  v1[10] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[11] = v7;
  v1[12] = v8;
  v9 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D51664E0()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 112) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_1D5166818;
  }

  else
  {
    v7 = sub_1D5166610;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D5166610()
{
  v13 = v0;
  v2 = v0[4];
  v1 = v0[5];

  if (*(v1 + *(v2 + 20)))
  {
    v3 = sub_1D5616168();

    if ((v3 & 1) == 0)
    {
      v4 = v0[5];
      v5 = v0[3];
      v6 = OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_recentlySearchedLibraryEntries;
      v12 = *(v5 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_recentlySearchedLibraryEntries);

      sub_1D5169B74(v4, &v12);
      *(v5 + v6) = v12;

      OUTLINED_FUNCTION_8_62(&unk_1F50AF4B0);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = v0[5];
  v12 = *(v0[3] + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_recentlySearchedCatalogEntries);

  sub_1D5169B74(v7, &v12);
  sub_1D516877C();

LABEL_6:
  v8 = v0[5];
  sub_1D516C588();
  swift_allocObject();
  sub_1D516C5DC();
  sub_1D4FDCB78();

  OUTLINED_FUNCTION_6_65();
  sub_1D516AD2C(v8, v9);

  OUTLINED_FUNCTION_22_1();

  return v10();
}

uint64_t sub_1D5166818()
{
  OUTLINED_FUNCTION_80();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D516689C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1D56153C8();
  v2[4] = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D5166934, v4, v3);
}

uint64_t sub_1D5166934()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);

  OUTLINED_FUNCTION_5_72();
  OUTLINED_FUNCTION_159();
  sub_1D516C588();
  type metadata accessor for MusicSearchIntentDonation(0);
  OUTLINED_FUNCTION_82();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v1);
  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D51669C8()
{
  v1 = v0;
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v2 = sub_1D560C758();
  __swift_project_value_buffer(v2, qword_1EDD76DC8);
  OUTLINED_FUNCTION_82();

  v3 = sub_1D560C738();
  v4 = sub_1D56156E8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v15[0] = v6;
    *v5 = 136446210;
    v7 = sub_1D5616458();
    v9 = sub_1D4E6835C(v7, v8, v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D4E3F000, v3, v4, "%{public}s: Clearing recently searched entries.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  v10 = [objc_opt_self() standardUserDefaults];
  memset(v15, 0, sizeof(v15));
  sub_1D5169FC4(v15);

  v11 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_recentlySearchedCatalogEntries) = MEMORY[0x1E69E7CC0];

  OUTLINED_FUNCTION_4_68();
  sub_1D5165C9C(v12, v13);
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_recentlySearchedLibraryEntries) = v11;

  OUTLINED_FUNCTION_8_62(&unk_1F50AF4B0);
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_libraryMappingAutoupdatingResponse) = 0;

  *(v1 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_libraryMappingSubscription) = 0;
}

uint64_t static MusicRecentlySearchedViewModel.deleteIntentDonations()()
{
  OUTLINED_FUNCTION_60();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_26_12(v1);

  return sub_1D5166C7C();
}

uint64_t sub_1D5166C98()
{
  OUTLINED_FUNCTION_91();
  v1 = objc_opt_self();
  v2 = sub_1D5614D38();
  v0[18] = v2;
  v0[2] = v0;
  v0[3] = sub_1D5166DC4;
  swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_25_6(v3);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_24_39();
  [v1 deleteInteractionsWithGroupIdentifier:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D5166DC4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 152) = v4;
  if (v4)
  {
    v5 = sub_1D5166F1C;
  }

  else
  {
    v5 = sub_1D5166EC4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D5166EC4()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_22_1();

  return v1();
}

uint64_t sub_1D5166F1C()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 144);
  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D5166FA0()
{
  OUTLINED_FUNCTION_91();
  v1 = objc_opt_self();
  v2 = sub_1D5614D38();
  v0[18] = v2;
  v0[2] = v0;
  v0[3] = sub_1D51670C4;
  swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_25_6(v3);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_24_39();
  [v1 deleteInteractionsWithGroupIdentifier:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D51670C4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 152) = v4;
  if (v4)
  {
    v5 = sub_1D516C7E0;
  }

  else
  {
    v5 = sub_1D516C7F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1D51671C4()
{
  OUTLINED_FUNCTION_47();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v48 - v3;
  if (qword_1EDD55F58 != -1)
  {
    OUTLINED_FUNCTION_32_4(&qword_1EDD55F58);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v5 = v55;
  v6 = v56;
  v7 = v57;
  v8 = v58;
  v9 = v59;
  v10 = v60;
  v11 = v0 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_userState;
  v12 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_userState + 8);
  *v11 = v55;
  *(v11 + 1) = v6;
  *(v11 + 2) = v7;
  v52 = v9;
  v53 = v8;
  *(v11 + 3) = v8;
  *(v11 + 4) = v9;
  *(v11 + 8) = v10;
  v13 = v10;

  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v14 = sub_1D560C758();
  __swift_project_value_buffer(v14, qword_1EDD76DC8);
  v15 = v13;

  v16 = sub_1D560C738();
  v17 = sub_1D56156E8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v51 = v4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v49 = v6;
    v50 = v20;
    v54 = v20;
    *v19 = 136446466;
    v21 = sub_1D5616458();
    v23 = v7;
    v24 = v5;
    v25 = sub_1D4E6835C(v21, v22, &v54);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2082;
    v55 = v24;
    v56 = v49;
    v57 = v23;
    v58 = v53;
    v59 = v52;
    v60 = v10;
    v26 = v15;
    v34 = UserState.description.getter(v26, v27, v28, v29, v30, v31, v32, v33);
    v36 = v35;

    v37 = sub_1D4E6835C(v34, v36, &v54);

    *(v19 + 14) = v37;
    _os_log_impl(&dword_1D4E3F000, v16, v17, "%{public}s: User state changed: %{public}s.", v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    v4 = v51;
    OUTLINED_FUNCTION_122();
  }

  v38 = sub_1D5615458();
  OUTLINED_FUNCTION_146_0(v4, v39, v40, v38);
  OUTLINED_FUNCTION_40_13();
  v41 = swift_allocObject();
  swift_weakInit();
  sub_1D56153C8();

  v42 = sub_1D56153B8();
  OUTLINED_FUNCTION_83_2();
  v43 = swift_allocObject();
  v44 = MEMORY[0x1E69E85E0];
  v43[2] = v42;
  v43[3] = v44;
  v43[4] = v41;

  v45 = OUTLINED_FUNCTION_41_7();
  sub_1D51652B0(v45, v46, v4, v47, v43);

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5167560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1D56153C8();
  v4[7] = sub_1D56153B8();
  v6 = sub_1D5615338();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D51675F8, v6, v5);
}

uint64_t sub_1D51675F8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_26_12(v2);

    return sub_1D5167D94();
  }

  else
  {

    OUTLINED_FUNCTION_9_62(*(v0 + 80));

    return v4();
  }
}

uint64_t sub_1D51676CC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_1D5167830;
  }

  else
  {

    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_1D51677D0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D51677D0()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_62(*(v0 + 80));

  return v1();
}

uint64_t sub_1D5167830()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D5167898()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v24 - v2;
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v4 = sub_1D560C758();
  __swift_project_value_buffer(v4, qword_1EDD76DC8);
  swift_retain_n();
  v5 = sub_1D560C738();
  v6 = sub_1D56156E8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136446466;
    v9 = sub_1D5616458();
    v11 = sub_1D4E6835C(v9, v10, &v25);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1026;
    v12 = sub_1D5612AB8();

    *(v7 + 14) = v12 & 1;

    _os_log_impl(&dword_1D4E3F000, v5, v6, "%{public}s: Network connectivity changed: hasNetworkConnectivity=%{BOOL,public}d.", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {
  }

  v13 = sub_1D5615458();
  OUTLINED_FUNCTION_146_0(v3, v14, v15, v13);
  OUTLINED_FUNCTION_40_13();
  v16 = swift_allocObject();
  swift_weakInit();
  sub_1D56153C8();

  v17 = sub_1D56153B8();
  OUTLINED_FUNCTION_83_2();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v16;

  v20 = OUTLINED_FUNCTION_41_7();
  sub_1D51652B0(v20, v21, v3, v22, v18);
}

uint64_t sub_1D5167B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1D56153C8();
  v4[7] = sub_1D56153B8();
  v6 = sub_1D5615338();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D5167BBC, v6, v5);
}

uint64_t sub_1D5167BBC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_26_12(v2);

    return sub_1D5167D94();
  }

  else
  {

    OUTLINED_FUNCTION_9_62(*(v0 + 80));

    return v4();
  }
}

uint64_t sub_1D5167C90()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_1D516C7E8;
  }

  else
  {

    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_1D516C7E4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D5167D94()
{
  OUTLINED_FUNCTION_60();
  v1[2] = v0;
  v2 = type metadata accessor for GenericMusicItem(0);
  v1[3] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for MusicRecentlySearchedViewModel.Entry(0);
  OUTLINED_FUNCTION_69(v3);
  v1[6] = v4;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_1D56153C8();
  v1[11] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[12] = v5;
  v1[13] = v6;
  v7 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5167EC0()
{
  v12 = v0;
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v1 = sub_1D560C758();
  __swift_project_value_buffer(v1, qword_1EDD76DC8);

  v2 = sub_1D560C738();
  v3 = sub_1D56156E8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = sub_1D5616458();
    v8 = sub_1D4E6835C(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1D4E3F000, v2, v3, "%{public}s: Fetching recently searched entries.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_26_12(v9);

  return sub_1D53E8C48();
}

uint64_t sub_1D5168090()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_24_1();
  *v6 = v5;
  v9[15] = v7;
  v9[16] = v8;
  v9[17] = v0;

  v10 = *(v2 + 104);
  v11 = *(v2 + 96);
  if (v0)
  {
    v12 = sub_1D5168614;
  }

  else
  {
    v12 = sub_1D51681C4;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, v10);
}

uint64_t sub_1D51681C4()
{

  if (sub_1D5612AB8())
  {
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v2 = v0[2];

  if (*(v2 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_userState + 1))
  {
    v4 = v0[16];
    v5 = v0[2];
    *(v5 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_recentlySearchedCatalogEntries) = v1;

    OUTLINED_FUNCTION_4_68();
    sub_1D5165C9C(v6, v7);
  }

  else
  {
    v8 = 0;
    v9 = *(v1 + 16);
    v35 = MEMORY[0x1E69E7CC0];
    while (v9 != v8)
    {
      if (v8 >= *(v1 + 16))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      OUTLINED_FUNCTION_0_113();
      sub_1D516C588();
      OUTLINED_FUNCTION_5_72();
      sub_1D516C588();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v11 = v0[10];
      if (EnumCaseMultiPayload == 8)
      {
        v12 = v0[5];
        OUTLINED_FUNCTION_6_65();
        sub_1D516AD2C(v11, v13);
        OUTLINED_FUNCTION_1_97();
        result = sub_1D516AD2C(v12, v14);
        ++v8;
      }

      else
      {
        OUTLINED_FUNCTION_1_97();
        sub_1D516AD2C(v15, v16);
        OUTLINED_FUNCTION_0_113();
        sub_1D516C5DC();
        v17 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_37_6();
          sub_1D4F045CC();
          v17 = v35;
        }

        v18 = *(v17 + 16);
        if (v18 >= *(v17 + 24) >> 1)
        {
          sub_1D4F045CC();
          v17 = v35;
        }

        ++v8;
        *(v17 + 16) = v18 + 1;
        v35 = v17;
        OUTLINED_FUNCTION_0_113();
        result = sub_1D516C5DC();
      }
    }

    v19 = v0[16];
    v20 = v0[2];

    *(v20 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_recentlySearchedCatalogEntries) = v35;

    OUTLINED_FUNCTION_4_68();
    result = sub_1D5165C9C(v21, v22);
    v23 = 0;
    v24 = *(v19 + 16);
    v36 = MEMORY[0x1E69E7CC0];
    while (v24 != v23)
    {
      if (v23 >= *(v19 + 16))
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_0_113();
      sub_1D516C588();
      OUTLINED_FUNCTION_5_72();
      OUTLINED_FUNCTION_159();
      sub_1D516C588();
      v25 = swift_getEnumCaseMultiPayload();
      v26 = v0[8];
      if (v25 == 8)
      {
        v27 = v0[4];
        OUTLINED_FUNCTION_6_65();
        sub_1D516AD2C(v26, v28);
        OUTLINED_FUNCTION_1_97();
        result = sub_1D516AD2C(v27, v29);
        ++v23;
      }

      else
      {
        OUTLINED_FUNCTION_1_97();
        sub_1D516AD2C(v30, v31);
        OUTLINED_FUNCTION_0_113();
        OUTLINED_FUNCTION_159();
        sub_1D516C5DC();
        v32 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_37_6();
          sub_1D4F045CC();
          v32 = v36;
        }

        v33 = *(v32 + 16);
        if (v33 >= *(v32 + 24) >> 1)
        {
          sub_1D4F045CC();
          v32 = v36;
        }

        ++v23;
        *(v32 + 16) = v33 + 1;
        v36 = v32;
        OUTLINED_FUNCTION_0_113();
        result = sub_1D516C5DC();
      }
    }

    v5 = v0[2];

    v4 = v36;
  }

  *(v5 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_recentlySearchedLibraryEntries) = v4;

  OUTLINED_FUNCTION_8_62(&unk_1F50AF4B0);

  sub_1D516877C();

  OUTLINED_FUNCTION_22_1();

  return v34();
}

uint64_t sub_1D5168614()
{
  OUTLINED_FUNCTION_91();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D51686BC()
{
  v8 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_recentlySearchedCatalogEntries);

  sub_1D4EF3588(v1);

  sub_1D516ABB8(&v8);

  v2 = *(v8 + 16);
  v3 = v2 >= 0x14;
  v4 = v2 - 20;
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  sub_1D516A2DC(v5, v8);

  return sub_1D5165618(v6);
}

void sub_1D516877C()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D00, &qword_1D563C198);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31();

  sub_1D5168990(v7, v12);
  sub_1D560F0D8();
  _s8MusicKit0A7LibraryC0aB8InternalE6deviceACvgZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D08, &qword_1D563C1A0);
  swift_allocObject();
  sub_1D5478DB0();
  v9 = v8;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_libraryMappingAutoupdatingResponse) = v8;

  OUTLINED_FUNCTION_54_0(v9 + *(*v9 + 104), v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D10, &unk_1D563C1A8);
  sub_1D560C8C8();
  swift_endAccess();

  OUTLINED_FUNCTION_40_13();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_52_18(v10);
  sub_1D516C328(&qword_1EDD54448, &qword_1EC7F0D00, &qword_1D563C198);
  v11 = sub_1D560C948();

  (*(v5 + 8))(v1, v3);
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_libraryMappingSubscription) = v11;

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5168990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MusicRecentlySearchedViewModel.Entry(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB088, &qword_1D56347A0);
  v8 = *(v23 - 8);
  result = MEMORY[0x1EEE9AC00](v23);
  v11 = &v20 - v10;
  v25 = 0;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v22 = a2;
    v24 = MEMORY[0x1E69E7CC0];

    sub_1D4F0458C(0, v12, 0);
    v13 = v24;
    v14 = *(v5 + 80);
    v21 = a1;
    v15 = a1 + ((v14 + 32) & ~v14);
    v16 = *(v5 + 72);
    do
    {
      sub_1D516C588();
      sub_1D516C588();
      sub_1D516C588();
      sub_1D516AD2C(v7, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D18, &qword_1D563C1D0);
      swift_storeEnumTagMultiPayload();
      v24 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1D4F0458C(v17 > 1, v18 + 1, 1);
        v13 = v24;
      }

      *(v13 + 16) = v18 + 1;
      sub_1D516C424(v11, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18);
      v15 += v16;
      --v12;
    }

    while (v12);
    a1 = v21;

    v19 = v25;
    a2 = v22;
  }

  else
  {
    v19 = 0;
  }

  *a2 = a1;
  *(a2 + 8) = v19;
  *(a2 + 16) = v13;
  return result;
}

uint64_t sub_1D5168C4C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicRecentlySearchedViewModel.Entry(0);
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v37 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB070, &qword_1D561DE20);
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - v17;
  v19 = *a1;
  if (*a1)
  {
    v38 = v13;
    v39 = a2;
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = &v18[*(result + 36)];
      v43 = *(v41 + 20);
      v22 = v19 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
      v42 = *(v16 + 72);
      v23 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        sub_1D4E69970(v22, v18, &qword_1EC7EB070, &qword_1D561DE20);
        if ((v21[v43] & 1) == 0)
        {
          break;
        }

        v24 = sub_1D5616168();

        if (v24)
        {
          goto LABEL_8;
        }

        sub_1D4E50004(v18, &qword_1EC7EB070, &qword_1D561DE20);
LABEL_13:
        v22 += v42;
        if (!--v20)
        {
          goto LABEL_16;
        }
      }

LABEL_8:
      sub_1D516C5DC();
      sub_1D516C5DC();
      v25 = v41;
      v10[*(v41 + 20)] = v7[*(v41 + 20)];
      v26 = *(v25 + 24);
      v27 = sub_1D560C328();
      (*(*(v27 - 8) + 16))(&v10[v26], &v7[v26], v27);
      sub_1D516AD2C(v7, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
      sub_1D516C5DC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F01DF8();
        v23 = v29;
      }

      v28 = *(v23 + 16);
      if (v28 >= *(v23 + 24) >> 1)
      {
        sub_1D4F01DF8();
        v23 = v30;
      }

      *(v23 + 16) = v28 + 1;
      sub_1D516C5DC();
      goto LABEL_13;
    }

    v23 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v31 = sub_1D5615458();
    v32 = v38;
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v31);
    v33 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_1D56153C8();

    v34 = sub_1D56153B8();
    v35 = swift_allocObject();
    v36 = MEMORY[0x1E69E85E0];
    v35[2] = v34;
    v35[3] = v36;
    v35[4] = v33;
    v35[5] = v23;

    sub_1D51652B0(0, 0, v32, &unk_1D563C1C0, v35);
  }

  return result;
}

uint64_t sub_1D5169154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_1D56153C8();
  v5[8] = sub_1D56153B8();
  v7 = sub_1D5615338();
  v5[9] = v7;
  v5[10] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D51691F0, v7, v6);
}

uint64_t sub_1D51691F0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_1D51692D0;

    return sub_1D516949C();
  }

  else
  {

    OUTLINED_FUNCTION_9_62(*(v0 + 88));

    return v4();
  }
}

uint64_t sub_1D51692D0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  v3[13] = v0;

  if (v0)
  {
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1D5169434;
  }

  else
  {

    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1D51693D4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D51693D4()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_62(*(v0 + 88));

  return v1();
}

uint64_t sub_1D5169434()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D516949C()
{
  OUTLINED_FUNCTION_60();
  v1[2] = v2;
  v1[3] = v0;
  sub_1D56153C8();
  v1[4] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[5] = v3;
  v1[6] = v4;
  v5 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D516951C()
{
  OUTLINED_FUNCTION_60();
  *(v0[3] + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_recentlySearchedCatalogEntries) = v0[2];

  OUTLINED_FUNCTION_4_68();
  sub_1D5165C9C(v1, v2);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1D51695DC;

  return sub_1D51697C0();
}

uint64_t sub_1D51695DC()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 64) = v0;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_1D5169764;
  }

  else
  {
    v7 = sub_1D516970C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D516970C()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_22_1();

  return v0();
}

uint64_t sub_1D5169764()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D51697C0()
{
  OUTLINED_FUNCTION_60();
  v1[2] = v2;
  v1[3] = v0;
  sub_1D56153C8();
  v1[4] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[5] = v3;
  v1[6] = v4;
  v5 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D5169840()
{
  OUTLINED_FUNCTION_60();
  if (v0[2])
  {
    v1 = v0[2];
  }

  else
  {
    v1 = *(v0[3] + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_recentlySearchedLibraryEntries);
  }

  v0[7] = v1;

  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_26_12(v2);

  return sub_1D53E8C48();
}

uint64_t sub_1D5169900()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_59_1();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  v7[9] = v0;

  if (v0)
  {

    v11 = v7[5];
    v12 = v7[6];
    v13 = sub_1D5169B18;
  }

  else
  {
    v7[10] = v3;
    v7[11] = v5;
    v13 = OUTLINED_FUNCTION_12_1();
  }

  return MEMORY[0x1EEE6DFA0](v13, v11, v12);
}

uint64_t sub_1D5169A18()
{
  OUTLINED_FUNCTION_60();

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1D5169A78, v1, v2);
}

uint64_t sub_1D5169A78()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);

  *(v2 + OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel_recentlySearchedLibraryEntries) = v1;

  OUTLINED_FUNCTION_8_62(&unk_1F50AF4B0);

  OUTLINED_FUNCTION_22_1();

  return v3();
}

uint64_t sub_1D5169B18()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D5169B74(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D20, &qword_1D563C1E8);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31();
  v7 = type metadata accessor for MusicRecentlySearchedViewModel.Entry(0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a2;
  v17 = a1;
  v12 = sub_1D54758A4(sub_1D516C520, v16, v11);
  if ((v13 & 1) == 0)
  {
    sub_1D525CAE4(v12);
    OUTLINED_FUNCTION_6_65();
    sub_1D516AD2C(v10, v14);
  }

  OUTLINED_FUNCTION_0_113();
  sub_1D516C588();
  return sub_1D526CFE0(0, 0, v2);
}

uint64_t sub_1D5169C8C(uint64_t a1)
{
  v2 = sub_1D560D838();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  type metadata accessor for GenericMusicItem(0);
  sub_1D516C540(&qword_1EDD5C600, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
  sub_1D560EC98();
  sub_1D560EC98();
  v9 = sub_1D560D528();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  if (v9)
  {
    v11 = type metadata accessor for MusicRecentlySearchedViewModel.Entry(0);
    v12 = sub_1D4F3C87C(*(a1 + *(v11 + 20)));
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t MusicRecentlySearchedViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC16MusicKitInternal30MusicRecentlySearchedViewModel__recentlySearchedEntries;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0CE8, &qword_1D563BFA0);
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t MusicRecentlySearchedViewModel.__deallocating_deinit()
{
  MusicRecentlySearchedViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D5169F84@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MusicRecentlySearchedViewModel(0);
  result = sub_1D560C838();
  *a2 = result;
  return result;
}

uint64_t sub_1D5169FC4(uint64_t a1)
{
  sub_1D4E69970(a1, &v7, &qword_1EC7E9F98, &qword_1D561C420);
  if (v8)
  {
    sub_1D4E519A8(&v7, &v9);
    __swift_project_boxed_opaque_existential_1(&v9, v10);
    v3 = sub_1D5616158();
    v4 = OUTLINED_FUNCTION_49_15();
    [v1 setObject:v3 forKey:v4];
    swift_unknownObjectRelease();

    sub_1D4E50004(a1, &qword_1EC7E9F98, &qword_1D561C420);
    return __swift_destroy_boxed_opaque_existential_1(&v9);
  }

  else
  {
    sub_1D4E50004(&v7, &qword_1EC7E9F98, &qword_1D561C420);
    v6 = OUTLINED_FUNCTION_49_15();
    [v1 removeObjectForKey_];

    return sub_1D4E50004(a1, &qword_1EC7E9F98, &qword_1D561C420);
  }
}

void *sub_1D516A0F4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D535A8BC();
  *a1 = v3;
  *(a1 + 1) = v4;
  *(a1 + 2) = v5;
  *(a1 + 3) = v6;
  *(a1 + 8) = v7;
  return result;
}

uint64_t sub_1D516A150(uint64_t a1)
{
  v1 = *(a1 + 1);
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 8);
  v7[0] = *a1;
  v7[1] = v1;
  v7[2] = v2;
  v8 = v3;
  v9 = v4;
  v5 = v4;
  return sub_1D5359828(v7);
}

uint64_t sub_1D516A1BC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5165040(v3, v4, v5, v6);
}

uint64_t sub_1D516A248()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_7_8(v3);

  return sub_1D51660B0(v5, v6, v1);
}

void sub_1D516A2DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicRecentlySearchedViewModel.Entry(0) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  if (a1 < 0)
  {
    goto LABEL_29;
  }

  if (a1)
  {
    v10 = *(a2 + 16);
    if (!v10)
    {
LABEL_25:

      return;
    }

    v11 = 0;
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v24[1] = a2;
    v13 = a2 + v12;
    v14 = *(v8 + 72);
    v15 = v10 - 1;
    v16 = MEMORY[0x1E69E7CC0];
    v17 = MEMORY[0x1E69E7CC0];
    v26 = v7;
    v27 = v12;
    v28 = v24 - v9;
    v25 = a1;
    while (1)
    {
      sub_1D516C588();
      v18 = *(v17 + 16);
      if (v18 < a1)
      {
        break;
      }

      if (v11 >= v18)
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

      sub_1D516C588();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D4F045CC();
        v16 = v30;
      }

      v22 = *(v16 + 16);
      if (v22 >= *(v16 + 24) >> 1)
      {
        sub_1D4F045CC();
        v16 = v30;
      }

      *(v16 + 16) = v22 + 1;
      sub_1D516C5DC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D54FBD5C();
        v17 = v23;
      }

      if (v11 >= *(v17 + 16))
      {
        goto LABEL_28;
      }

      sub_1D516C630();
      ++v11;
      a1 = v25;
      if (v11 < v25)
      {
        goto LABEL_20;
      }

      if (!v15)
      {
        goto LABEL_25;
      }

      v11 = 0;
LABEL_24:
      --v15;
      v13 += v14;
    }

    v19 = swift_isUniquelyReferenced_nonNull_native();
    v29 = v17;
    if ((v19 & 1) == 0)
    {
      sub_1D4F045CC();
      v17 = v29;
    }

    v20 = *(v17 + 16);
    if (v20 >= *(v17 + 24) >> 1)
    {
      sub_1D4F045CC();
      v17 = v29;
    }

    *(v17 + 16) = v20 + 1;
    sub_1D516C5DC();
LABEL_20:
    if (!v15)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }
}

void sub_1D516A630()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v4 = _s14TransientEntryVMa(0) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  if (v3 < 0)
  {
    goto LABEL_29;
  }

  if (!v3)
  {
    goto LABEL_26;
  }

  v10 = *(v1 + 16);
  if (!v10)
  {
LABEL_25:

LABEL_26:
    OUTLINED_FUNCTION_46();
    return;
  }

  v11 = 0;
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v32[1] = v1;
  v13 = v1 + v12;
  v14 = *(v8 + 72);
  v15 = v10 - 1;
  v16 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  v34 = v7;
  v35 = v12;
  v36 = v32 - v9;
  v33 = v3;
  while (1)
  {
    sub_1D516C588();
    v18 = *(v17 + 16);
    if (v18 < v3)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = OUTLINED_FUNCTION_37_6();
        sub_1D4F04504(v20, v21, v22);
        v17 = v37;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1D4F04504(v23 > 1, v24 + 1, 1);
        v17 = v37;
      }

      *(v17 + 16) = v24 + 1;
      OUTLINED_FUNCTION_11_64();
      sub_1D516C5DC();
LABEL_20:
      if (!v15)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (v11 >= v18)
    {
      break;
    }

    OUTLINED_FUNCTION_11_64();
    sub_1D516C588();
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v16;
    if ((v25 & 1) == 0)
    {
      v26 = OUTLINED_FUNCTION_37_6();
      sub_1D4F04504(v26, v27, v28);
      v16 = v38;
    }

    v30 = *(v16 + 16);
    v29 = *(v16 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_1D4F04504(v29 > 1, v30 + 1, 1);
      v16 = v38;
    }

    *(v16 + 16) = v30 + 1;
    OUTLINED_FUNCTION_11_64();
    sub_1D516C5DC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D54FBD70(v17);
      v17 = v31;
    }

    if (v11 >= *(v17 + 16))
    {
      goto LABEL_28;
    }

    sub_1D516C630();
    ++v11;
    v3 = v33;
    if (v11 < v33)
    {
      goto LABEL_20;
    }

    if (!v15)
    {
      goto LABEL_25;
    }

    v11 = 0;
LABEL_24:
    --v15;
    v13 += v14;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_1D516A93C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v2 = a2;
  if (result)
  {
    v35 = 0;
    v4 = 0;
    v38 = *(a2 + 16);
    v5 = a2 + 48;
    v6 = MEMORY[0x1E69E7CC0];
    v36 = MEMORY[0x1E69E7CC0];
    for (i = a2 + 48; ; v5 = i)
    {
      for (j = (v5 + 24 * v4); ; j += 3)
      {
        if (v38 == v4)
        {

          return;
        }

        if (v4 >= *(v2 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v8 = *(j - 2);
        v9 = *(j - 1);
        v10 = *j;
        v11 = *(v6 + 16);
        if (v11 >= result)
        {
          break;
        }

        sub_1D4FEEE2C(v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = OUTLINED_FUNCTION_37_6();
          sub_1D4F04AEC(v12, v13, v14);
          v2 = a2;
        }

        v16 = *(v6 + 16);
        v15 = *(v6 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1D4F04AEC(v15 > 1, v16 + 1, 1);
          v2 = a2;
        }

        *(v6 + 16) = v16 + 1;
        v17 = (v6 + 24 * v16);
        v17[4] = v8;
        v17[5] = v9;
        v17[6] = v10;
        ++v4;
      }

      if (v35 >= v11)
      {
        goto LABEL_29;
      }

      v18 = (v6 + 24 * v35);
      v20 = v18[4];
      v19 = v18[5];
      v21 = v18[6];

      sub_1D4FEEE2C(v10);

      sub_1D4FEEE2C(v21);
      v22 = v36;
      v33 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = OUTLINED_FUNCTION_37_6();
        sub_1D4F04AEC(v23, v24, v25);
        v22 = v36;
      }

      v27 = *(v22 + 16);
      v26 = *(v22 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1D4F04AEC(v26 > 1, v27 + 1, 1);
        v22 = v36;
      }

      *(v22 + 16) = v27 + 1;
      v28 = (v22 + 24 * v27);
      v28[4] = v33;
      v28[5] = v19;
      v28[6] = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D54FBD98();
        v6 = v29;
      }

      if (v35 >= *(v6 + 16))
      {
        break;
      }

      v36 = v22;
      v30 = (v6 + 24 * v35);
      v31 = v30[6];
      ++v4;
      v30[4] = v8;
      v30[5] = v9;
      v30[6] = v10;

      sub_1D4FEEE48(v31);
      if ((v35 + 1) < result)
      {
        v32 = v35 + 1;
      }

      else
      {
        v32 = 0;
      }

      v35 = v32;
      v2 = a2;
    }

    goto LABEL_30;
  }
}

uint64_t sub_1D516ABB8(uint64_t *a1)
{
  v2 = *(type metadata accessor for MusicRecentlySearchedViewModel.Entry(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D54FBD5C();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1D516B008(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1D516AC60()
{
  OUTLINED_FUNCTION_80();
  v2 = v1;
  v3 = type metadata accessor for GenericMusicItem(0);
  OUTLINED_FUNCTION_22(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_32(v6);
  *v7 = v8;
  v7[1] = sub_1D4E73560;

  return sub_1D516689C(v2, v0 + v5);
}

uint64_t sub_1D516AD2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t dispatch thunk of MusicRecentlySearchedViewModel.add(_:)()
{
  return (*(*v0 + 376))();
}

{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v6 = (*(*v0 + 384) + **(*v0 + 384));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_26_12(v4);

  return v6(v3);
}

uint64_t sub_1D516B008(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D56160E8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for MusicRecentlySearchedViewModel.Entry(0);
        v6 = sub_1D56151D8();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for MusicRecentlySearchedViewModel.Entry(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D516B394(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D516B138(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D516B138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for MusicRecentlySearchedViewModel.Entry(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v34 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v31 = v20;
      v32 = a3;
      v29 = v23;
      v30 = v22;
      do
      {
        sub_1D516C588();
        sub_1D516C588();
        v24 = sub_1D560C2D8();
        sub_1D516AD2C(v13, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
        result = sub_1D516AD2C(v17, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
        if ((v24 & 1) == 0)
        {
          break;
        }

        if (!v33)
        {
          __break(1u);
          return result;
        }

        sub_1D516C5DC();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1D516C5DC();
        v20 += v21;
        v23 += v21;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v32 + 1;
      v20 = v31 + v27;
      v22 = v30 - 1;
      v23 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1D516B394(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v101 = a1;
  v9 = type metadata accessor for MusicRecentlySearchedViewModel.Entry(0);
  v109 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v105 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v113 = &v99 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v114 = &v99 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v99 - v16;
  v111 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v5 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v93 = v20 + 16;
      v94 = *(v20 + 2);
      for (i = v20; v94 >= 2; v20 = i)
      {
        if (!*v111)
        {
          goto LABEL_139;
        }

        v95 = &v20[16 * v94];
        v96 = *v95;
        v20 = &v93[2 * v94];
        v97 = *(v20 + 1);
        sub_1D516BCD4(*v111 + *(v109 + 72) * *v95, *v111 + *(v109 + 72) * *v20, *v111 + *(v109 + 72) * v97, v5);
        if (v6)
        {
          break;
        }

        if (v97 < v96)
        {
          goto LABEL_127;
        }

        if (v94 - 2 >= *v93)
        {
          goto LABEL_128;
        }

        *v95 = v96;
        *(v95 + 1) = v97;
        v98 = *v93 - v94;
        if (*v93 < v94)
        {
          goto LABEL_129;
        }

        v94 = *v93 - 1;
        sub_1D5530CB4(v20 + 16, v98, v20);
        *v93 = v94;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v20 = sub_1D5530B8C(v20);
    goto LABEL_103;
  }

  v100 = a4;
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v115 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    i = v20;
    v102 = v19;
    if (v19 + 1 < v18)
    {
      v23 = *v111;
      v24 = *(v109 + 72);
      v25 = *v111 + v24 * v22;
      v108 = v18;
      sub_1D516C588();
      v5 = v114;
      sub_1D516C588();
      LODWORD(v107) = sub_1D560C2D8();
      sub_1D516AD2C(v5, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
      sub_1D516AD2C(v17, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
      v26 = v108;
      v27 = v102 + 2;
      v110 = v24;
      v20 = (v23 + v24 * (v102 + 2));
      while (1)
      {
        v28 = v27;
        if (++v22 >= v26)
        {
          break;
        }

        sub_1D516C588();
        v5 = v114;
        sub_1D516C588();
        v29 = sub_1D560C2D8() & 1;
        sub_1D516AD2C(v5, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
        sub_1D516AD2C(v17, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
        v20 += v110;
        v25 += v110;
        v27 = v28 + 1;
        v26 = v108;
        if ((v107 & 1) != v29)
        {
          goto LABEL_9;
        }
      }

      v22 = v26;
LABEL_9:
      if (v107)
      {
        v21 = v102;
        if (v22 < v102)
        {
          goto LABEL_133;
        }

        if (v102 >= v22)
        {
          v20 = i;
          goto LABEL_32;
        }

        v99 = v6;
        if (v26 >= v28)
        {
          v30 = v28;
        }

        else
        {
          v30 = v26;
        }

        v31 = v110 * (v30 - 1);
        v32 = v102;
        v33 = v110 * v30;
        v34 = v102 * v110;
        v35 = v22;
        v20 = i;
        do
        {
          if (v32 != --v35)
          {
            v5 = v22;
            v36 = *v111;
            if (!*v111)
            {
              goto LABEL_140;
            }

            sub_1D516C5DC();
            v37 = v34 < v31 || v36 + v34 >= (v36 + v33);
            if (v37)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v34 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1D516C5DC();
            v20 = i;
            v22 = v5;
          }

          ++v32;
          v31 -= v110;
          v33 -= v110;
          v34 += v110;
        }

        while (v32 < v35);
        v6 = v99;
      }

      else
      {
        v20 = i;
      }

      v21 = v102;
    }

LABEL_32:
    v38 = v111[1];
    if (v22 < v38)
    {
      if (__OFSUB__(v22, v21))
      {
        goto LABEL_132;
      }

      if (v22 - v21 < v100)
      {
        break;
      }
    }

LABEL_48:
    if (v22 < v21)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D4F01D2C(0, *(v20 + 2) + 1, 1, v20);
      v20 = v91;
    }

    v49 = *(v20 + 2);
    v48 = *(v20 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      sub_1D4F01D2C(v48 > 1, v49 + 1, 1, v20);
      v20 = v92;
    }

    *(v20 + 2) = v50;
    v51 = v20 + 32;
    v52 = &v20[16 * v49 + 32];
    *v52 = v102;
    *(v52 + 1) = v22;
    v108 = *v101;
    if (!v108)
    {
      goto LABEL_141;
    }

    v110 = v22;
    if (v49)
    {
      i = v20;
      while (1)
      {
        v53 = v50 - 1;
        v54 = &v51[16 * v50 - 16];
        v55 = &v20[16 * v50];
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v56 = *(v20 + 4);
          v57 = *(v20 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_69:
          if (v59)
          {
            goto LABEL_118;
          }

          v71 = *v55;
          v70 = *(v55 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_121;
          }

          v75 = *(v54 + 1);
          v76 = v75 - *v54;
          if (__OFSUB__(v75, *v54))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v73, v76))
          {
            goto LABEL_126;
          }

          if (v73 + v76 >= v58)
          {
            if (v58 < v76)
            {
              v53 = v50 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v50 < 2)
        {
          goto LABEL_120;
        }

        v78 = *v55;
        v77 = *(v55 + 1);
        v66 = __OFSUB__(v77, v78);
        v73 = v77 - v78;
        v74 = v66;
LABEL_84:
        if (v74)
        {
          goto LABEL_123;
        }

        v80 = *v54;
        v79 = *(v54 + 1);
        v66 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v66)
        {
          goto LABEL_125;
        }

        if (v81 < v73)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v53 - 1 >= v50)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
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
          goto LABEL_135;
        }

        if (!*v111)
        {
          goto LABEL_138;
        }

        v5 = v17;
        v85 = &v51[16 * v53 - 16];
        v86 = *v85;
        v87 = v51;
        v88 = v53;
        v20 = &v51[16 * v53];
        v89 = *(v20 + 1);
        sub_1D516BCD4(*v111 + *(v109 + 72) * *v85, *v111 + *(v109 + 72) * *v20, *v111 + *(v109 + 72) * v89, v108);
        if (v6)
        {
          goto LABEL_111;
        }

        if (v89 < v86)
        {
          goto LABEL_113;
        }

        v6 = *(i + 2);
        if (v88 > v6)
        {
          goto LABEL_114;
        }

        *v85 = v86;
        *(v85 + 1) = v89;
        if (v88 >= v6)
        {
          goto LABEL_115;
        }

        v50 = v6 - 1;
        sub_1D5530CB4(v20 + 16, v6 - 1 - v88, v20);
        v20 = i;
        *(i + 2) = v6 - 1;
        v90 = v6 > 2;
        v6 = 0;
        v51 = v87;
        v17 = v5;
        if (!v90)
        {
          goto LABEL_98;
        }
      }

      v60 = &v51[16 * v50];
      v61 = *(v60 - 8);
      v62 = *(v60 - 7);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_116;
      }

      v65 = *(v60 - 6);
      v64 = *(v60 - 5);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_117;
      }

      v67 = *(v55 + 1);
      v68 = v67 - *v55;
      if (__OFSUB__(v67, *v55))
      {
        goto LABEL_119;
      }

      v66 = __OFADD__(v58, v68);
      v69 = v58 + v68;
      if (v66)
      {
        goto LABEL_122;
      }

      if (v69 >= v63)
      {
        v83 = *v54;
        v82 = *(v54 + 1);
        v66 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v66)
        {
          goto LABEL_130;
        }

        if (v58 < v84)
        {
          v53 = v50 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v19 = v110;
    v18 = v111[1];
    if (v110 >= v18)
    {
      goto LABEL_101;
    }
  }

  v39 = v21 + v100;
  if (__OFADD__(v21, v100))
  {
    goto LABEL_134;
  }

  if (v39 >= v38)
  {
    v39 = v111[1];
  }

  if (v39 < v21)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v22 == v39)
  {
    goto LABEL_48;
  }

  v99 = v6;
  v40 = *v111;
  v41 = *(v109 + 72);
  v42 = *v111 + v41 * (v22 - 1);
  v43 = -v41;
  v44 = v21 - v22;
  v103 = v41;
  v104 = v39;
  v45 = v40 + v22 * v41;
LABEL_41:
  v110 = v22;
  v106 = v45;
  v107 = v44;
  v108 = v42;
  v46 = v42;
  while (1)
  {
    sub_1D516C588();
    v5 = v114;
    sub_1D516C588();
    v47 = sub_1D560C2D8();
    sub_1D516AD2C(v5, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
    sub_1D516AD2C(v17, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
    if ((v47 & 1) == 0)
    {
LABEL_46:
      v22 = v110 + 1;
      v42 = v108 + v103;
      v44 = v107 - 1;
      v45 = v106 + v103;
      if (v110 + 1 == v104)
      {
        v22 = v104;
        v6 = v99;
        v20 = i;
        v21 = v102;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v40)
    {
      break;
    }

    v5 = v113;
    sub_1D516C5DC();
    swift_arrayInitWithTakeFrontToBack();
    sub_1D516C5DC();
    v46 += v43;
    v45 += v43;
    v37 = __CFADD__(v44++, 1);
    if (v37)
    {
      goto LABEL_46;
    }
  }

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

uint64_t sub_1D516BCD4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = type metadata accessor for MusicRecentlySearchedViewModel.Entry(0);
  v8 = MEMORY[0x1EEE9AC00](v54);
  v53 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = &v46 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_60;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v19 = v15 / v14;
  v57 = a1;
  v56 = a4;
  v20 = v17 / v14;
  if (v15 / v14 >= v17 / v14)
  {
    sub_1D4F03784(a2, v17 / v14, a4);
    v29 = a4 + v20 * v14;
    v30 = -v14;
    v31 = v29;
    v49 = a1;
    v50 = v30;
LABEL_36:
    v51 = a2 + v30;
    v52 = a2;
    v32 = a3;
    v33 = v31;
    v48 = v31;
    while (1)
    {
      if (v29 <= a4)
      {
        v57 = v52;
        v55 = v33;
        goto LABEL_58;
      }

      if (v52 <= a1)
      {
        break;
      }

      v47 = v33;
      v34 = a4;
      v35 = v32 + v30;
      v36 = v29 + v30;
      v37 = v32;
      sub_1D516C588();
      v38 = v12;
      v39 = v53;
      sub_1D516C588();
      v40 = sub_1D560C2D8();
      v41 = v39;
      v12 = v38;
      sub_1D516AD2C(v41, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
      sub_1D516AD2C(v38, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
      if (v40)
      {
        v44 = v37 < v52 || v35 >= v52;
        a4 = v34;
        if (v44)
        {
          a2 = v51;
          swift_arrayInitWithTakeFrontToBack();
          a3 = v35;
          v31 = v47;
          a1 = v49;
          v30 = v50;
        }

        else
        {
          v16 = v37 == v52;
          v30 = v50;
          v45 = v51;
          a2 = v51;
          a3 = v35;
          v31 = v47;
          a1 = v49;
          if (!v16)
          {
            v31 = v47;
            swift_arrayInitWithTakeBackToFront();
            a2 = v45;
          }
        }

        goto LABEL_36;
      }

      v42 = v37 < v29 || v35 >= v29;
      a4 = v34;
      if (v42)
      {
        swift_arrayInitWithTakeFrontToBack();
        v32 = v35;
        v29 += v30;
        v33 = v36;
        a1 = v49;
        v30 = v50;
        v31 = v48;
      }

      else
      {
        v33 = v29 + v30;
        v16 = v29 == v37;
        v32 = v35;
        v29 += v30;
        v43 = v35;
        a1 = v49;
        v30 = v50;
        v31 = v48;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v32 = v43;
          v29 = v36;
          v33 = v36;
        }
      }
    }

    v57 = v52;
    v55 = v31;
  }

  else
  {
    sub_1D4F03784(a1, v15 / v14, a4);
    v52 = a4 + v19 * v14;
    v55 = v52;
    while (a4 < v52 && a2 < a3)
    {
      v22 = a3;
      sub_1D516C588();
      v23 = a2;
      v24 = v53;
      sub_1D516C588();
      v25 = sub_1D560C2D8();
      sub_1D516AD2C(v24, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
      sub_1D516AD2C(v12, type metadata accessor for MusicRecentlySearchedViewModel.Entry);
      if (v25)
      {
        a2 = v23 + v14;
        v26 = a1 < v23 || a1 >= a2;
        v27 = v23;
        if (v26)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v22;
        }

        else
        {
          a3 = v22;
          if (a1 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v23;
        if (a1 < a4 || a1 >= a4 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v22;
        }

        else
        {
          a3 = v22;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v56 = a4 + v14;
        a4 += v14;
      }

      a1 += v14;
      v57 = a1;
    }
  }

LABEL_58:
  sub_1D5530BA0(&v57, &v56, &v55);
  return 1;
}

uint64_t sub_1D516C17C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5167B24(v3, v4, v5, v6);
}

uint64_t sub_1D516C208()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5167560(v3, v4, v5, v6);
}

uint64_t sub_1D516C294()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5165B38(v3, v4, v5, v6);
}

uint64_t sub_1D516C328(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D516C37C()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_32(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_7_8(v5);

  return sub_1D5169154(v7, v8, v1, v3, v2);
}

uint64_t sub_1D516C424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB088, &qword_1D56347A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D516C494()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5165D74(v3, v4, v5, v6);
}

uint64_t sub_1D516C540(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D516C588()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v2(v1);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_71();
  v4(v3);
  return v0;
}

uint64_t sub_1D516C5DC()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v2(v1);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_71();
  v4(v3);
  return v0;
}

uint64_t sub_1D516C630()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v2(v1);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_71();
  v4(v3);
  return v0;
}

uint64_t sub_1D516C684()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5164F00(v3, v4, v5, v6);
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_83_2();

  return swift_deallocObject();
}

uint64_t sub_1D516C74C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D5164C94(v3, v4, v5, v6);
}

uint64_t sub_1D516C7F4(uint64_t result)
{
  if (result)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1D56157A8();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D516C850(uint64_t a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  swift_unknownObjectRetain();
  sub_1D516C7F4(v2);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D516C8A8()
{
  v1 = v0;
  sub_1D560C988();
  OUTLINED_FUNCTION_4();
  v60 = v3;
  v61 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v58 = v5 - v4;
  v59 = sub_1D560C9B8();
  OUTLINED_FUNCTION_4();
  v57 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v56 = v9 - v8;
  sub_1D560C978();
  OUTLINED_FUNCTION_4();
  v54 = v11;
  v55 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v48 - v15);
  sub_1D560C9D8();
  OUTLINED_FUNCTION_4();
  v52 = v18;
  v53 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v51 = v20 - v19;
  v21 = sub_1D5615778();
  OUTLINED_FUNCTION_4();
  v50 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  v27 = sub_1D560C998();
  OUTLINED_FUNCTION_4();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v33 = v32 - v31;

  sub_1D560F608();

  if (LOBYTE(aBlock[0]) == 1)
  {
    v48 = sub_1D4ECC7A8(0, &unk_1EC7F0D38, 0x1E69E9630);
    sub_1D4ECC7A8(0, &qword_1EDD5F060, 0x1E69E9610);
    (*(v29 + 104))(v33, *MEMORY[0x1E69E7F90], v27);
    v34 = sub_1D5615768();
    v49 = v0;
    v35 = v34;
    (*(v29 + 8))(v33, v27);
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D516D684(&qword_1EC7F0D48, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D50, &qword_1D563C2B8);
    sub_1D4E62A60(&qword_1EC7F0D58, &qword_1EC7F0D50, &qword_1D563C2B8, MEMORY[0x1E69E6328]);
    sub_1D56159E8();
    sub_1D5615788();

    v1 = v49;
    (*(v50 + 8))(v26, v21);
    ObjectType = swift_getObjectType();
    v37 = v51;
    sub_1D560C9C8();
    *v16 = 500;
    v39 = v54;
    v38 = v55;
    v40 = *(v54 + 104);
    v40(v16, *MEMORY[0x1E69E7F38], v55);
    *v14 = 1;
    v40(v14, *MEMORY[0x1E69E7F28], v38);
    MEMORY[0x1DA6EB5E0](v37, v16, v14, ObjectType);
    v41 = *(v39 + 8);
    v41(v14, v38);
    v41(v16, v38);
    (*(v52 + 8))(v37, v53);
    v42 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1D516D67C;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D4E735E0;
    aBlock[3] = &block_descriptor_10;
    v43 = _Block_copy(aBlock);

    v44 = v56;
    sub_1D560C9A8();
    v45 = v58;
    sub_1D516D3EC();
    sub_1D5615798();
    _Block_release(v43);
    (*(v60 + 8))(v45, v61);
    (*(v57 + 8))(v44, v59);

    v46 = swift_unknownObjectRetain();
    sub_1D516C850(v46);
    sub_1D56157B8();
    swift_unknownObjectRelease();
  }

  aBlock[0] = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D28, &qword_1D563C2B0);
  sub_1D4E62A60(&qword_1EC7F0D30, &qword_1EC7F0D28, &qword_1D563C2B0, MEMORY[0x1E695BF88]);
  return sub_1D560C938();
}

void sub_1D516CF88(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([*(Strong + 24) isUpdateInProgress])
    {
      v3 = *(v2 + 24);
      v4 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1D516D6CC;
      aBlock[5] = v4;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D516D398;
      aBlock[3] = &block_descriptor_17;
      v5 = _Block_copy(aBlock);
      v6 = v3;

      [v6 loadCloudMusicLibraryUpdateProgressWithCompletionHandler_];
      _Block_release(v5);
    }

    else
    {
    }
  }
}

uint64_t sub_1D516D0C4(uint64_t a1, float a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1D56153C8();

  v8 = sub_1D56153B8();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = v7;
  *(v9 + 40) = a2;

  sub_1D51ECB60(0, 0, v5, &unk_1D563C2D8, v9);
}

uint64_t sub_1D516D230(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a2;
  *(v5 + 48) = a1;
  *(v5 + 56) = a5;
  sub_1D56153C8();
  *(v5 + 64) = sub_1D56153B8();
  v7 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D516D2CC, v7, v6);
}

uint64_t sub_1D516D2CC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 72);

    *(v0 + 40) = v2;
    sub_1D560C848();
  }

  **(v0 + 48) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D516D398(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

uint64_t sub_1D516D3EC()
{
  sub_1D560C988();
  sub_1D516D684(&qword_1EDD5D840, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0108, &unk_1D563C2C0);
  sub_1D4E62A60(&qword_1EDD5D060, &qword_1EC7F0108, &unk_1D563C2C0, MEMORY[0x1E69E6328]);
  return sub_1D56159E8();
}

uint64_t sub_1D516D4D8()
{

  sub_1D560F608();

  if (v2 == 1)
  {
    if (*(v0 + 48))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1D56157A8();
      swift_unknownObjectRelease();
    }

    return sub_1D516C850(0);
  }

  return result;
}

uint64_t sub_1D516D58C()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1D516D5C4()
{
  sub_1D516D58C();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void sub_1D516D644(char *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 40) = v4;
    OUTLINED_FUNCTION_2_93(a1);
  }
}

void sub_1D516D660(char *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 40) = v4;
    OUTLINED_FUNCTION_2_93(a1);
  }
}

uint64_t sub_1D516D684(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D516D6D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D4ECF3E8;

  return sub_1D516D230(a1, v7, v4, v5, v6);
}

uint64_t sub_1D516D7A0@<X0>(uint64_t *a1@<X8>)
{
  v74 = a1;
  v2 = sub_1D560FB68();
  OUTLINED_FUNCTION_4();
  v73 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D60, &qword_1D563C2E0);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v71 = v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v63 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D68, qword_1D563C2E8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_13();
  v63 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v63 - v14;
  OUTLINED_FUNCTION_23();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v63 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v63 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v63 - v22;
  v24 = sub_1D560FB98();
  OUTLINED_FUNCTION_4();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13();
  v67 = v28;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v63 - v30;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA618, &unk_1D561C520);
  v70 = v1;
  sub_1D5610708();
  sub_1D560FB78();
  v32 = *(v26 + 8);
  v68 = v26 + 8;
  v69 = v24;
  v65 = v32;
  v32(v31, v24);
  sub_1D560FB48();
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v2);
  v33 = *(v6 + 48);
  sub_1D516DDF0(v21, v10);
  sub_1D516DDF0(v23, &v10[v33]);
  OUTLINED_FUNCTION_43_0(v10);
  if (v34)
  {
    sub_1D4E6C9CC(v21, &qword_1EC7F0D68, qword_1D563C2E8);
    OUTLINED_FUNCTION_43_0(&v10[v33]);
    if (v34)
    {
      sub_1D4E6C9CC(v10, &qword_1EC7F0D68, qword_1D563C2E8);
LABEL_21:
      v40 = 0;
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  sub_1D516DDF0(v10, v18);
  OUTLINED_FUNCTION_43_0(&v10[v33]);
  if (v34)
  {
    sub_1D4E6C9CC(v21, &qword_1EC7F0D68, qword_1D563C2E8);
    v35 = OUTLINED_FUNCTION_26_27();
    v36(v35);
LABEL_9:
    sub_1D4E6C9CC(v10, &qword_1EC7F0D60, &qword_1D563C2E0);
    goto LABEL_10;
  }

  v45 = v73;
  v46 = v64;
  (*(v73 + 32))(v64, &v10[v33], v2);
  sub_1D516DED0();
  v47 = sub_1D5614D18();
  v48 = *(v45 + 8);
  v48(v46, v2);
  sub_1D4E6C9CC(v21, &qword_1EC7F0D68, qword_1D563C2E8);
  v49 = OUTLINED_FUNCTION_26_27();
  (v48)(v49);
  sub_1D4E6C9CC(v10, &qword_1EC7F0D68, qword_1D563C2E8);
  if (v47)
  {
    goto LABEL_21;
  }

LABEL_10:
  v37 = v72;
  sub_1D560FB58();
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v2);
  v38 = *(v6 + 48);
  v39 = v71;
  sub_1D516DDF0(v37, v71);
  sub_1D516DE60(v23, v39 + v38);
  OUTLINED_FUNCTION_43_0(v39);
  if (!v34)
  {
    sub_1D516DDF0(v39, v63);
    OUTLINED_FUNCTION_43_0(v39 + v38);
    if (!v41)
    {
      v57 = v73;
      v58 = v64;
      (*(v73 + 32))(v64, v39 + v38, v2);
      sub_1D516DED0();
      v59 = sub_1D5614D18();
      v60 = *(v57 + 8);
      v60(v58, v2);
      sub_1D4E6C9CC(v37, &qword_1EC7F0D68, qword_1D563C2E8);
      v61 = OUTLINED_FUNCTION_26_27();
      (v60)(v61);
      result = sub_1D4E6C9CC(v39, &qword_1EC7F0D68, qword_1D563C2E8);
      if (v59)
      {
        v40 = 1;
        goto LABEL_23;
      }

LABEL_19:
      v44 = v74;
      *v74 = 0;
      v44[1] = 0;
      *(v44 + 16) = 0;
      return result;
    }

    sub_1D4E6C9CC(v37, &qword_1EC7F0D68, qword_1D563C2E8);
    v42 = OUTLINED_FUNCTION_26_27();
    v43(v42);
LABEL_18:
    result = sub_1D4E6C9CC(v39, &qword_1EC7F0D60, &qword_1D563C2E0);
    goto LABEL_19;
  }

  sub_1D4E6C9CC(v37, &qword_1EC7F0D68, qword_1D563C2E8);
  v40 = 1;
  OUTLINED_FUNCTION_43_0(v39 + v38);
  if (!v34)
  {
    goto LABEL_18;
  }

  v23 = v39;
LABEL_22:
  sub_1D4E6C9CC(v23, &qword_1EC7F0D68, qword_1D563C2E8);
LABEL_23:
  v50 = v67;
  sub_1D5610708();
  v51 = sub_1D560FB88();
  v53 = v52;
  result = v65(v50, v69);
  if (v53)
  {
    v54 = v51;
  }

  else
  {
    v54 = 0;
  }

  v55 = 0xE000000000000000;
  if (v53)
  {
    v55 = v53;
  }

  v56 = v74;
  *v74 = v54;
  v56[1] = v55;
  *(v56 + 16) = v40;
  return result;
}

uint64_t sub_1D516DDF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D68, qword_1D563C2E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D516DE60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D68, qword_1D563C2E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D516DED0()
{
  result = qword_1EC7F0D70;
  if (!qword_1EC7F0D70)
  {
    sub_1D560FB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0D70);
  }

  return result;
}

uint64_t sub_1D516DFB8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1D516E010()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561E360;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D80, &unk_1D563C370);
  swift_getKeyPath();
  v1 = sub_1D5612ED8();

  *(v0 + 32) = v1;
  swift_getKeyPath();
  v2 = sub_1D5612ED8();

  *(v0 + 40) = v2;
  swift_getKeyPath();
  v3 = sub_1D5612ED8();

  *(v0 + 48) = v3;
  qword_1EC87C230 = v0;
  return result;
}

uint64_t sub_1D516E0F0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1D516E15C()
{
  OUTLINED_FUNCTION_60();
  v1[26] = v2;
  v1[27] = v0;
  v1[24] = v3;
  v1[25] = v4;
  v1[23] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F08D8, &qword_1D563A180);
  v1[28] = v6;
  OUTLINED_FUNCTION_69(v6);
  v1[29] = v7;
  v1[30] = OUTLINED_FUNCTION_127();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19D0, &qword_1D5642090);
  v1[31] = v8;
  OUTLINED_FUNCTION_69(v8);
  v1[32] = v9;
  v1[33] = OUTLINED_FUNCTION_127();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D88, &qword_1D563C3F0);
  v1[34] = v10;
  OUTLINED_FUNCTION_69(v10);
  v1[35] = v11;
  v1[36] = OUTLINED_FUNCTION_127();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1980, &qword_1D5642040);
  v1[37] = OUTLINED_FUNCTION_127();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D90, &qword_1D563C3F8);
  v1[38] = v12;
  OUTLINED_FUNCTION_69(v12);
  v1[39] = v13;
  v1[40] = OUTLINED_FUNCTION_127();

  return MEMORY[0x1EEE6DFA0](sub_1D516E354, 0, 0);
}

uint64_t sub_1D516E354()
{
  v1 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0D98, &qword_1D563C400);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    sub_1D5615B68();
    v0[12] = 0;
    v0[13] = 0xE000000000000000;
    MEMORY[0x1DA6EAC70](0x79747265706F7250, 0xE900000000000020);
    v0[18] = v1;
    sub_1D560CDE8();
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](0xD000000000000023, 0x80000001D56861F0);
    return sub_1D5615E08();
  }

  v3 = v2;
  v4 = v0[23];
  *(v4 + 32) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  v5 = qword_1EC7E8D28;

  if (v5 != -1)
  {
    swift_once();
  }

  v0[19] = qword_1EC7EF1B8;
  v0[20] = v3;
  sub_1D516F428();
  if (sub_1D5614D18())
  {
    v7 = v0[37];
    v6 = v0[38];
    v8 = v0[27];
    type metadata accessor for Playlist.Folder.Item(0);
    sub_1D516F4F0(&qword_1EDD52C98, type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
    sub_1D560DD68();
    sub_1D560CB98();
    sub_1D560DC98();
    KeyPath = swift_getKeyPath();
    sub_1D516F48C(v8, v7);
    v10 = type metadata accessor for Playlist.Folder(0);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
    OUTLINED_FUNCTION_0_114();
    v13 = sub_1D516F4F0(v11, v12, &protocol conformance descriptor for Playlist.Folder);
    MEMORY[0x1DA6E3AE0](KeyPath, v7, v6, v13);

    sub_1D4E6C9CC(v7, &qword_1EC7F1980, &qword_1D5642040);

    _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
    v14 = swift_task_alloc();
    v0[41] = v14;
    *v14 = v0;
    v14[1] = sub_1D516E9F8;
    v15 = v0[38];
    v16 = v0[36];
LABEL_6:

    return MEMORY[0x1EEDCEAC0](v16, v15);
  }

  v17 = qword_1EC7E8D30;

  if (v17 != -1)
  {
    swift_once();
  }

  v0[21] = qword_1EC7EF1C0;
  v0[22] = v3;
  v18 = sub_1D5614D18();

  if (v18)
  {
    if (qword_1EC7E8D18 != -1)
    {
      swift_once();
    }

    sub_1D516F4F0(&unk_1EDD52B98, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    sub_1D516F4F0(&qword_1EC7EE420, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    sub_1D560EC28();
    v19 = v0[15];
    if (v19)
    {
      v20 = v0[14];
      if (v20 == sub_1D560EED8() && v19 == v21)
      {
      }

      else
      {
        v23 = sub_1D5616168();

        if ((v23 & 1) == 0)
        {
          type metadata accessor for Playlist.Folder(0);
          OUTLINED_FUNCTION_0_114();
          sub_1D516F4F0(v24, v25, &protocol conformance descriptor for Playlist.Folder);
          sub_1D560DD68();
          sub_1D560CB98();
          sub_1D560DC98();
          swift_getKeyPath();
          v0[16] = v20;
          v0[17] = v19;
          MEMORY[0x1DA6E3AD0]();

          _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
          v26 = swift_task_alloc();
          v0[43] = v26;
          *v26 = v0;
          v26[1] = sub_1D516EC40;
          v16 = v0[30];
          v15 = v0[31];
          goto LABEL_6;
        }
      }

      sub_1D4E6C9CC(v0[23], &qword_1EC7F0900, &qword_1D563A1B0);
    }

    else
    {
      sub_1D4E6C9CC(v0[23], &qword_1EC7F0900, &qword_1D563A1B0);
    }

    v27 = v0[23];
  }

  else
  {
    v27 = v0[23];
    sub_1D4E6C9CC(v27, &qword_1EC7F0900, &qword_1D563A1B0);
  }

  *(v27 + 32) = 0;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  OUTLINED_FUNCTION_2_94();

  OUTLINED_FUNCTION_55();

  return v28();
}

uint64_t sub_1D516E9F8()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;
  *(v4 + 336) = v0;

  if (v0)
  {
    v5 = sub_1D516EE80;
  }

  else
  {
    v5 = sub_1D516EB00;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D516EB00()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 272);
  v7 = *(v0 + 184);
  *(v0 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE410, &unk_1D56310A0);
  *(v0 + 88) = &protocol witness table for MusicItemCollection<A>;
  __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  sub_1D560DE38();

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_1D4E6C9CC(v7, &qword_1EC7F0900, &qword_1D563A1B0);
  v8 = *(v0 + 88);
  v9 = *(v0 + 72);
  *v7 = *(v0 + 56);
  *(v7 + 16) = v9;
  *(v7 + 32) = v8;
  OUTLINED_FUNCTION_2_94();

  OUTLINED_FUNCTION_55();

  return v10();
}

uint64_t sub_1D516EC40()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;
  *(v4 + 352) = v0;

  if (v0)
  {
    v5 = sub_1D516EF6C;
  }

  else
  {
    v5 = sub_1D516ED48;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D516ED48()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v7 = *(v0 + 184);
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  *(v0 + 48) = &protocol witness table for MusicItemCollection<A>;
  __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  sub_1D560DE38();

  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);
  sub_1D4E6C9CC(v7, &qword_1EC7F0900, &qword_1D563A1B0);
  v8 = *(v0 + 48);
  v9 = *(v0 + 32);
  *v7 = *(v0 + 16);
  *(v7 + 16) = v9;
  *(v7 + 32) = v8;
  OUTLINED_FUNCTION_2_94();

  OUTLINED_FUNCTION_55();

  return v10();
}

uint64_t sub_1D516EE80()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = v0[23];

  (*(v2 + 8))(v1, v3);
  sub_1D4E6C9CC(v4, &qword_1EC7F0900, &qword_1D563A1B0);

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D516EF6C()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[23];

  (*(v2 + 8))(v1, v3);
  sub_1D4E6C9CC(v4, &qword_1EC7F0900, &qword_1D563A1B0);

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D516F0B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D51592F8;

  return sub_1D516E15C();
}

uint64_t sub_1D516F174(void *a1)
{
  a1[1] = sub_1D516F4F0(&qword_1EC7F0D78, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  a1[2] = sub_1D516F4F0(&qword_1EC7F0910, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  result = sub_1D516F4F0(&qword_1EC7EE430, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  a1[3] = result;
  return result;
}

uint64_t sub_1D516F224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = swift_task_alloc();
  *(v13 + 16) = v14;
  *v14 = v13;
  v14[1] = sub_1D51592F8;

  return LegacyModelExtendedLibraryRequestable.extendedAugmentedItem<A>(for:propertyProviderBasedInitializableType:attributeProperties:relationshipProperties:metadataProperties:options:library:)();
}

uint64_t sub_1D516F328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_task_alloc();
  *(v10 + 16) = v17;
  *v17 = v10;
  v17[1] = sub_1D4E6E494;

  return LegacyModelExtendedLibraryRequestable.extendedAugmentedItemWithInternalRelationships<A>(for:propertyProviderBasedInitializableType:relationshipProperties:library:)(a1, a2, a3, a4, a5, a6, a9, a7);
}

unint64_t sub_1D516F428()
{
  result = qword_1EC7F0DA0;
  if (!qword_1EC7F0DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0D98, &qword_1D563C400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0DA0);
  }

  return result;
}

uint64_t sub_1D516F48C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Folder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D516F4F0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for StorePlatformSocialProfile(uint64_t a1)
{
  result = qword_1EDD55190;
  if (!qword_1EDD55190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D516F5B8(uint64_t a1)
{
  sub_1D4F55058(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD5F550, MEMORY[0x1E69E6370]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_1D500A1D4(319);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

BOOL sub_1D516F700(uint64_t a1, uint64_t a2)
{
  v98 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v96 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v93 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  v92 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v95 = &v92 - v12;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  v94 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v97 = &v92 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v20 = v19;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v92 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v92 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_22(v28);
  OUTLINED_FUNCTION_11();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v92 - v31;
  v33 = *(v30 + 56);
  sub_1D4F39AB0(a1, &v92 - v31, &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D4F39AB0(a2, &v32[v33], &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v32, 1, v18);
  if (v34)
  {
    OUTLINED_FUNCTION_57(&v32[v33], 1, v18);
    if (v34)
    {
      sub_1D4E50004(v32, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_14;
    }

LABEL_9:
    v37 = &qword_1EC7EC330;
    v38 = &qword_1D56222C0;
    v39 = v32;
    goto LABEL_10;
  }

  sub_1D4F39AB0(v32, v27, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(&v32[v33], 1, v18);
  if (v34)
  {
    v35 = OUTLINED_FUNCTION_109();
    v36(v35);
    goto LABEL_9;
  }

  (*(v20 + 32))(v23, &v32[v33], v18);
  sub_1D51713DC(&qword_1EC7EBEB8, &qword_1EC7EBDD0, MEMORY[0x1E6975980], MEMORY[0x1E6975DB8]);
  v41 = sub_1D5614D18();
  v42 = *(v20 + 8);
  v43 = OUTLINED_FUNCTION_71();
  v42(v43);
  v44 = OUTLINED_FUNCTION_109();
  v42(v44);
  sub_1D4E50004(v32, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v45 = type metadata accessor for StorePlatformSocialProfile(0);
  OUTLINED_FUNCTION_14_50();
  if (v46)
  {
    if (!v47)
    {
      return 0;
    }

    v50 = *v48 == *v49 && v46 == v47;
    if (!v50 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v47)
  {
    return 0;
  }

  v51 = v45[6];
  v52 = *(a1 + v51);
  v53 = *(a1 + v51 + 8);
  v54 = (a2 + v51);
  v55 = v52 == *v54 && v53 == v54[1];
  if (!v55 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v56 = v45[7];
  v57 = *(a1 + v56);
  v58 = *(a2 + v56);
  if (v57 == 2)
  {
    if (v58 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v58 == 2 || ((v58 ^ v57) & 1) != 0)
    {
      return result;
    }
  }

  v59 = v45[8];
  v60 = *(a1 + v59);
  v61 = *(a2 + v59);
  if (v60 == 2)
  {
    if (v61 != 2)
    {
      return 0;
    }

    goto LABEL_38;
  }

  result = 0;
  if (v61 != 2 && ((v61 ^ v60) & 1) == 0)
  {
LABEL_38:
    OUTLINED_FUNCTION_14_50();
    if (v62)
    {
      if (!v63)
      {
        return 0;
      }

      v66 = *v64 == *v65 && v62 == v63;
      if (!v66 && (sub_1D5616168() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v63)
    {
      return 0;
    }

    v67 = v45[10];
    v68 = *(v99 + 48);
    v69 = v97;
    sub_1D4F39AB0(a1 + v67, v97, &unk_1EC7E9CA8, &unk_1D561D1D0);
    sub_1D4F39AB0(a2 + v67, v69 + v68, &unk_1EC7E9CA8, &unk_1D561D1D0);
    v70 = v98;
    OUTLINED_FUNCTION_57(v69, 1, v98);
    if (v34)
    {
      OUTLINED_FUNCTION_32_1(v69 + v68);
      if (v34)
      {
        sub_1D4E50004(v69, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_57:
        v79 = v45[11];
        v80 = *(v99 + 48);
        v81 = a1 + v79;
        v82 = v94;
        sub_1D4F39AB0(v81, v94, &unk_1EC7E9CA8, &unk_1D561D1D0);
        sub_1D4F39AB0(a2 + v79, v82 + v80, &unk_1EC7E9CA8, &unk_1D561D1D0);
        OUTLINED_FUNCTION_32_1(v82);
        if (v34)
        {
          OUTLINED_FUNCTION_32_1(v82 + v80);
          if (v34)
          {
            sub_1D4E50004(v82, &unk_1EC7E9CA8, &unk_1D561D1D0);
            return 1;
          }
        }

        else
        {
          v83 = v92;
          sub_1D4F39AB0(v82, v92, &unk_1EC7E9CA8, &unk_1D561D1D0);
          OUTLINED_FUNCTION_32_1(v82 + v80);
          if (!v84)
          {
            v85 = v96;
            v86 = v82 + v80;
            v87 = v93;
            (*(v96 + 32))(v93, v86, v70);
            OUTLINED_FUNCTION_0_115();
            sub_1D5171478(v88, v89, MEMORY[0x1E6968FC8]);
            v90 = sub_1D5614D18();
            v91 = *(v85 + 8);
            v91(v87, v70);
            v91(v83, v70);
            sub_1D4E50004(v82, &unk_1EC7E9CA8, &unk_1D561D1D0);
            return (v90 & 1) != 0;
          }

          (*(v96 + 8))(v83, v70);
        }

        v37 = &qword_1EC7E9FB0;
        v38 = &qword_1D562C590;
        v39 = v82;
        goto LABEL_10;
      }
    }

    else
    {
      v71 = v95;
      sub_1D4F39AB0(v69, v95, &unk_1EC7E9CA8, &unk_1D561D1D0);
      OUTLINED_FUNCTION_32_1(v69 + v68);
      if (!v72)
      {
        v73 = v96;
        v74 = v93;
        (*(v96 + 32))(v93, v69 + v68, v70);
        OUTLINED_FUNCTION_0_115();
        sub_1D5171478(v75, v76, MEMORY[0x1E6968FC8]);
        v77 = sub_1D5614D18();
        v78 = *(v73 + 8);
        v78(v74, v70);
        v78(v71, v70);
        sub_1D4E50004(v69, &unk_1EC7E9CA8, &unk_1D561D1D0);
        if ((v77 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_57;
      }

      (*(v96 + 8))(v71, v70);
    }

    v37 = &qword_1EC7E9FB0;
    v38 = &qword_1D562C590;
    v39 = v69;
LABEL_10:
    sub_1D4E50004(v39, v37, v38);
    return 0;
  }

  return result;
}

uint64_t sub_1D516FF4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7241726174617661 && a2 == 0xED00006B726F7774;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 25705 && a2 == 0xE200000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7461766972507369 && a2 == 0xE900000000000065;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6966697265567369 && a2 == 0xEA00000000006465;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C725574726F6873 && a2 == 0xE800000000000000;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 7107189 && a2 == 0xE300000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1D5616168();

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

uint64_t sub_1D51701D8(char a1)
{
  result = 0x7241726174617661;
  switch(a1)
  {
    case 1:
      result = 0x656C646E6168;
      break;
    case 2:
      result = 25705;
      break;
    case 3:
      result = 0x7461766972507369;
      break;
    case 4:
      result = 0x6966697265567369;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0x6C725574726F6873;
      break;
    case 7:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D51702B0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0DC8, &qword_1D563C5A8);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D51711F4();
  sub_1D56163D8();
  LOBYTE(v18[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  sub_1D5171308(&qword_1EC7EC350, MEMORY[0x1E6975DA8]);
  OUTLINED_FUNCTION_10_43();
  sub_1D5616068();
  if (!v2)
  {
    v11 = type metadata accessor for StorePlatformSocialProfile(0);
    LOBYTE(v18[0]) = 1;
    OUTLINED_FUNCTION_10_43();
    sub_1D5616028();
    v12 = (v3 + *(v11 + 24));
    v14 = *v12;
    v13 = v12[1];
    v18[0] = v14;
    v18[1] = v13;
    v19 = 2;
    sub_1D4F89BA0();
    OUTLINED_FUNCTION_10_43();
    sub_1D56160C8();
    LOBYTE(v18[0]) = 3;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_10_43();
    sub_1D5616038();
    LOBYTE(v18[0]) = 4;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_10_43();
    sub_1D5616038();
    LOBYTE(v18[0]) = 5;
    OUTLINED_FUNCTION_10_43();
    sub_1D5616028();
    LOBYTE(v18[0]) = 6;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_115();
    sub_1D5171478(v15, v16, MEMORY[0x1E6968FB8]);
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_10_43();
    sub_1D5616068();
    LOBYTE(v18[0]) = 7;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_10_43();
    sub_1D5616068();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1D517059C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v43 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v42 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  v41 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v16 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v40 - v22;
  v24 = OUTLINED_FUNCTION_109();
  sub_1D4F39AB0(v24, v25, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v23, 1, v14);
  if (v26)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v16 + 32))(v19, v23, v14);
    OUTLINED_FUNCTION_27();
    sub_1D51713DC(&qword_1EC7EBE78, &qword_1EC7EBDC8, MEMORY[0x1E6975978], MEMORY[0x1E6975DB0]);
    sub_1D5614CB8();
    (*(v16 + 8))(v19, v14);
  }

  v27 = type metadata accessor for StorePlatformSocialProfile(0);
  if (*(v2 + v27[5] + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D5614E28();
  if (*(v2 + v27[7]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  if (*(v2 + v27[8]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  if (*(v2 + v27[9] + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v2 + v27[10], v13, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v13, 1, v3);
  if (v26)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v29 = v42;
    v28 = v43;
    (*(v43 + 32))(v42, v13, v3);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_115();
    sub_1D5171478(v30, v31, MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    (*(v28 + 8))(v29, v3);
  }

  v32 = v41;
  sub_1D4F39AB0(v2 + v27[11], v41, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v32, 1, v3);
  if (v26)
  {
    return OUTLINED_FUNCTION_36();
  }

  v34 = v42;
  v33 = v43;
  v35 = OUTLINED_FUNCTION_109();
  v36(v35);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_0_115();
  sub_1D5171478(v37, v38, MEMORY[0x1E6968FC0]);
  sub_1D5614CB8();
  return (*(v33 + 8))(v34, v3);
}