_BYTE *storeEnumTagSinglePayload for CloudSuggestedPivotsRawRequest.Node.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D5067EA8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D5067F88()
{
  result = qword_1EC7EEF50;
  if (!qword_1EC7EEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEF50);
  }

  return result;
}

unint64_t sub_1D5067FE0()
{
  result = qword_1EC7EEF58;
  if (!qword_1EC7EEF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEF58);
  }

  return result;
}

unint64_t sub_1D5068038()
{
  result = qword_1EC7EEF60;
  if (!qword_1EC7EEF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEF60);
  }

  return result;
}

unint64_t sub_1D5068090()
{
  result = qword_1EC7EEF68;
  if (!qword_1EC7EEF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEF68);
  }

  return result;
}

unint64_t sub_1D50680E8()
{
  result = qword_1EC7EEF70;
  if (!qword_1EC7EEF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEF70);
  }

  return result;
}

unint64_t sub_1D5068140()
{
  result = qword_1EC7EEF78;
  if (!qword_1EC7EEF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEF78);
  }

  return result;
}

unint64_t sub_1D5068198()
{
  result = qword_1EC7EEF80;
  if (!qword_1EC7EEF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEF80);
  }

  return result;
}

unint64_t sub_1D50681F0()
{
  result = qword_1EC7EEF88;
  if (!qword_1EC7EEF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEF88);
  }

  return result;
}

unint64_t sub_1D5068248()
{
  result = qword_1EC7EEF90;
  if (!qword_1EC7EEF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEF90);
  }

  return result;
}

unint64_t sub_1D50682A0()
{
  result = qword_1EC7EEF98;
  if (!qword_1EC7EEF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEF98);
  }

  return result;
}

unint64_t sub_1D50682F8()
{
  result = qword_1EC7EEFA0;
  if (!qword_1EC7EEFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEFA0);
  }

  return result;
}

unint64_t sub_1D5068350()
{
  result = qword_1EC7EEFA8;
  if (!qword_1EC7EEFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEFA8);
  }

  return result;
}

unint64_t sub_1D50683A8()
{
  result = qword_1EC7EEFB0;
  if (!qword_1EC7EEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEFB0);
  }

  return result;
}

unint64_t sub_1D5068400()
{
  result = qword_1EC7EEFB8;
  if (!qword_1EC7EEFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EEFB8);
  }

  return result;
}

uint64_t static Playlist.extendedStorage(for:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v189 = a1;
  v190 = a4;
  v192 = a3;
  v188 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v187 = &v178 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v178 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v197 = &v178 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF58, &qword_1D5623AF0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v196 = &v178 - v18;
  v186 = _s15InternalStorageVMa_0(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = sub_1D560E728();
  v24 = OUTLINED_FUNCTION_22(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v183 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  v28 = OUTLINED_FUNCTION_22(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v31);
  v180 = &v178 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  v34 = OUTLINED_FUNCTION_22(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_59_0();
  v195 = v35 - v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v39);
  v200 = &v178 - v40;
  v179 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v178 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5();
  v45 = v44 - v43;
  type metadata accessor for Playlist.Collaboration(0);
  OUTLINED_FUNCTION_4();
  v191 = v46;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5();
  v50 = (v49 - v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
  OUTLINED_FUNCTION_4();
  v198 = v52;
  v199 = v51;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_59_0();
  v55 = v53 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v194 = &v178 - v57;
  sub_1D560F7E8();
  v184 = sub_1D506930C();
  v58 = sub_1D5614C68();

  sub_1D4ED0864(1, v58);
  v193 = v12;
  if (!v203)
  {
    sub_1D4E50004(v202, &qword_1EC7E9F98, &qword_1D561C420);
    goto LABEL_7;
  }

  if ((OUTLINED_FUNCTION_16_33(v59, v60, v61, MEMORY[0x1E69E6530]) & 1) == 0)
  {
LABEL_7:
    v63 = 0;
    goto LABEL_8;
  }

  v62 = [objc_opt_self() collaboratorStatusForRawValue_];
  if (v62 >= 5)
  {
    v63 = 1;
  }

  else
  {
    v63 = 0x1Eu >> v62;
  }

LABEL_8:
  sub_1D4ED0864(2, v58);
  if (!v203)
  {
    sub_1D4E50004(v202, &qword_1EC7E9F98, &qword_1D561C420);
    goto LABEL_13;
  }

  if (!OUTLINED_FUNCTION_16_33(v64, v65, v66, MEMORY[0x1E69E6370]))
  {
LABEL_13:
    v67 = v194;
    goto LABEL_14;
  }

  v67 = v194;
  if (v201)
  {
    v63 = 1;
  }

LABEL_14:
  sub_1D5069958(qword_1EDD5F0F8, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
  sub_1D560D9F8();
  if (v63)
  {
    (*(v178 + 16))(v45, v189, v179);
    sub_1D4F1C460(v192, v202, &qword_1EC7EEC40, &unk_1D561C070);
    swift_unknownObjectRetain();

    Playlist.Collaboration.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v45, a2, v202, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEFC0, &qword_1D562FAD8);
    v68 = (*(v191 + 80) + 32) & ~*(v191 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1D561C050;
    sub_1D50693D0(v50, v45 + v68);
    sub_1D560D9F8();
    OUTLINED_FUNCTION_3_56();
    sub_1D5069900(v50, v69);
    v71 = v198;
    v70 = v199;
    (*(v198 + 8))(v67, v199);
    (*(v71 + 32))(v67, v55, v70);
  }

  type metadata accessor for CuratorRelationshipProvider(0);
  v72 = v200;
  OUTLINED_FUNCTION_33();
  v191 = v73;
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v73);
  v202[0] = 5;
  OUTLINED_FUNCTION_11_43();
  v77 = sub_1D560F7C8();

  v78 = v187;
  v79 = v193;
  v80 = v185;
  if (v77)
  {
    v81 = OUTLINED_FUNCTION_11_43();
    sub_1D4F1C460(v81, v82, v83, v84);
    if (v203)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
      v85 = OUTLINED_FUNCTION_17_32();
      v86 = v180;
      v87 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v86, v87 ^ 1u, 1, v85);
      if (__swift_getEnumTagSinglePayload(v86, 1, v85) != 1)
      {
        v88 = v78;
        v89 = v86;
        v90 = v181;
        sub_1D505DED8();
        OUTLINED_FUNCTION_24_0();
        (*(v91 + 8))(v89, v85);
LABEL_22:
        v45 = v183;
        sub_1D560D588();
        v99 = v190;

        v100 = v182;
        sub_1D55BA0EC(v77, v90, v45, v99, v182);
        v72 = v200;
        sub_1D4E50004(v200, &qword_1EC7ECC80, &unk_1D5622EA0);
        sub_1D5069360(v100, v72);
        v78 = v88;
        v79 = v193;
        goto LABEL_23;
      }
    }

    else
    {
      sub_1D4E50004(v202, &qword_1EC7EEC40, &unk_1D561C070);
      sub_1D5614898();
      v86 = v180;
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
    }

    v88 = v78;
    sub_1D4E50004(v86, &unk_1EC7F1990, &unk_1D561CEF0);
    v90 = v181;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v191);
    goto LABEL_22;
  }

LABEL_23:
  v101 = v199;
  v102 = v196;
  (*(v198 + 16))(v196, v67, v199);
  __swift_storeEnumTagSinglePayload(v102, 0, 1, v101);
  v103 = OUTLINED_FUNCTION_11_43();
  sub_1D4F1C460(v103, v104, v105, v106);
  if (v203)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
    v107 = OUTLINED_FUNCTION_17_32();
    v108 = OUTLINED_FUNCTION_13_34(&v204);
    v110 = OUTLINED_FUNCTION_12_36(v108, v109);
    OUTLINED_FUNCTION_5_42(v110);
    if (!v111)
    {
      Playlist.collaborators.getter();
      OUTLINED_FUNCTION_24_0();
      (*(v112 + 8))(v45, v107);
      goto LABEL_28;
    }
  }

  else
  {
    sub_1D4E50004(v202, &qword_1EC7EEC40, &unk_1D561C070);
    sub_1D5614898();
    OUTLINED_FUNCTION_13_34(&v204);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v116);
  }

  sub_1D4E50004(v45, &unk_1EC7F1990, &unk_1D561CEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v117, v118, v119, v120);
LABEL_28:
  v121 = OUTLINED_FUNCTION_11_43();
  sub_1D4F1C460(v121, v122, v123, v124);
  if (v203)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
    v125 = OUTLINED_FUNCTION_17_32();
    v126 = OUTLINED_FUNCTION_12_36(v80, v202);
    __swift_storeEnumTagSinglePayload(v80, v126 ^ 1u, 1, v125);
    if (__swift_getEnumTagSinglePayload(v80, 1, v125) != 1)
    {
      sub_1D505C360();
      OUTLINED_FUNCTION_24_0();
      (*(v127 + 8))(v80, v125);
      goto LABEL_33;
    }
  }

  else
  {
    sub_1D4E50004(v202, &qword_1EC7EEC40, &unk_1D561C070);
    sub_1D5614898();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v128, v129, v130, v131);
  }

  sub_1D4E50004(v80, &unk_1EC7F1990, &unk_1D561CEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v135);
LABEL_33:
  sub_1D4F1C460(v72, v195, &qword_1EC7ECC80, &unk_1D5622EA0);
  v136 = OUTLINED_FUNCTION_11_43();
  sub_1D4F1C460(v136, v137, v138, v139);
  if (!v203)
  {
    sub_1D4E50004(v202, &qword_1EC7EEC40, &unk_1D561C070);
    sub_1D5614898();
    OUTLINED_FUNCTION_13_34(&v205);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v145, v146, v147, v148);
    goto LABEL_37;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v140 = OUTLINED_FUNCTION_17_32();
  v141 = OUTLINED_FUNCTION_13_34(&v205);
  v143 = OUTLINED_FUNCTION_12_36(v141, v142);
  OUTLINED_FUNCTION_5_42(v143);
  if (v111)
  {
LABEL_37:
    sub_1D4E50004(v45, &unk_1EC7F1990, &unk_1D561CEF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v149, v150, v151, v152);
    goto LABEL_38;
  }

  sub_1D505BF4C();
  OUTLINED_FUNCTION_24_0();
  (*(v144 + 8))(v45, v140);
LABEL_38:
  OUTLINED_FUNCTION_33();
  v153 = v199;
  __swift_storeEnumTagSinglePayload(v154, v155, v156, v199);
  v157 = v186;
  v158 = *(v186 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v159, v160, v161, v162);
  v163 = v157[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v164, v165, v166, v167);
  v168 = v157[7];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v169, v170, v171, v191);
  v172 = v157[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v173, v174, v175, v176);
  sub_1D4F1C350(v196, v22, &qword_1EC7ECF58, &qword_1D5623AF0);
  sub_1D4F1C350(v197, v22 + v158, &qword_1EC7EC8D0, &unk_1D5623AD0);
  sub_1D4F1C350(v79, v22 + v163, &qword_1EC7EA778, &qword_1D5622E60);
  sub_1D4F1C350(v195, v22 + v168, &qword_1EC7ECC80, &unk_1D5622EA0);
  sub_1D4F1C350(v78, v22 + v172, &qword_1EC7ECF38, &qword_1D562E650);
  sub_1D5069958(&qword_1EDD5F208, _s15InternalStorageVMa_0, &unk_1D56696C0);
  sub_1D56130F8();
  sub_1D4E50004(v200, &qword_1EC7ECC80, &unk_1D5622EA0);
  (*(v198 + 8))(v194, v153);
  return sub_1D5069900(v22, _s15InternalStorageVMa_0);
}

unint64_t sub_1D506930C()
{
  result = qword_1EDD5F168;
  if (!qword_1EDD5F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5F168);
  }

  return result;
}

uint64_t sub_1D5069360(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50693D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Collaboration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Playlist.extractExtendedRawDictionary(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEFC8, &unk_1D562FAE0);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  Playlist.collaboration.getter();
  v10 = type metadata accessor for Playlist.Collaboration(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    v11 = sub_1D4E50004(v9, &qword_1EC7EEFC8, &unk_1D562FAE0);
    static Playlist.Collaboration.defaultLegacyModelStorageDictionary.getter(v11);
    sub_1D506930C();
    v12 = sub_1D5614BF8();
  }

  else
  {
    sub_1D5069958(&qword_1EC7EEFD0, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
    sub_1D5069958(&qword_1EC7EEFD8, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
    v12 = sub_1D56132F8();
    OUTLINED_FUNCTION_3_56();
    sub_1D5069900(v9, v13);
  }

  sub_1D505DED8();
  v14 = type metadata accessor for CuratorRelationshipProvider(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v14) == 1)
  {
    sub_1D4E50004(v5, &qword_1EC7ECC80, &unk_1D5622EA0);
  }

  else
  {
    v15 = sub_1D55BC5C4(a1);
    sub_1D5069900(v5, type metadata accessor for CuratorRelationshipProvider);
    if (v15)
    {
      *(&v24 + 1) = sub_1D4F688F0();
      *&v23 = v15;
      sub_1D4E519A8(&v23, &v22);
      swift_isUniquelyReferenced_nonNull_native();
      v21 = v12;
      sub_1D4F13B94();
      return v21;
    }
  }

  v16 = sub_1D4E4EFA0(0xD000000000000022, 0x80000001D567D010);
  if (v17)
  {
    v18 = v16;
    swift_isUniquelyReferenced_nonNull_native();
    *&v22 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4B0, &unk_1D5620C80);
    sub_1D5615D78();
    v12 = v22;

    sub_1D4E519A8((*(v12 + 56) + 32 * v18), &v23);
    sub_1D5615D98();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  sub_1D4E50004(&v23, &qword_1EC7E9F98, &qword_1D561C420);
  return v12;
}

unint64_t Playlist.LegacyModelPlaylistInternalPropertyKey.rawValue.getter()
{
  result = 0xD00000000000002FLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000029;
      break;
    case 2:
      result = 0xD000000000000026;
      break;
    case 3:
      result = 0xD000000000000031;
      break;
    case 4:
      result = 0xD00000000000003FLL;
      break;
    case 5:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Playlist.LegacyModelPlaylistInternalPropertyKey.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1D5615EF8();

  v6 = 6;
  if (v4 < 6)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t sub_1D50698D0@<X0>(unint64_t *a1@<X8>)
{
  result = Playlist.LegacyModelPlaylistInternalPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D5069900(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D5069958(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D50699A4()
{
  result = qword_1EDD5F178;
  if (!qword_1EDD5F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5F178);
  }

  return result;
}

unint64_t sub_1D5069A00()
{
  result = qword_1EDD5F170;
  if (!qword_1EDD5F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5F170);
  }

  return result;
}

_BYTE *_s38LegacyModelPlaylistInternalPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t static LegacyModelCodableComposer.Attributes.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      if (v4 == v7 && v5 == v8)
      {
        return 1;
      }

      OUTLINED_FUNCTION_71();
      if (sub_1D5616168())
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D5069BE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001D5682EC0 == a2;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

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

uint64_t sub_1D5069CB0(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1D5069CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5069BE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5069D14(uint64_t a1)
{
  v2 = sub_1D5069EDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5069D50(uint64_t a1)
{
  v2 = sub_1D5069EDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LegacyModelCodableComposer.Attributes.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_25_1();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF000, &qword_1D562FC50);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_31();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1D5069EDC();
  sub_1D56163D8();
  sub_1D5616028();
  if (!v23)
  {
    sub_1D5616028();
  }

  v27 = OUTLINED_FUNCTION_134_0();
  v28(v27);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D5069EDC()
{
  result = qword_1EC7EF008;
  if (!qword_1EC7EF008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF008);
  }

  return result;
}

uint64_t LegacyModelCodableComposer.Attributes.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    sub_1D56162F8();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_1D56162F8();
  }

  sub_1D56162F8();
  sub_1D5614E28();
  if (!v2)
  {
    return sub_1D56162F8();
  }

LABEL_3:
  sub_1D56162F8();

  return sub_1D5614E28();
}

uint64_t LegacyModelCodableComposer.Attributes.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_1D56162D8();
  sub_1D56162F8();
  if (v1)
  {
    sub_1D5614E28();
  }

  sub_1D56162F8();
  if (v2)
  {
    sub_1D5614E28();
  }

  return sub_1D5616328();
}

void LegacyModelCodableComposer.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_25_1();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF010, &qword_1D562FC58);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_71_1();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1D5069EDC();
  sub_1D5616398();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v29 = sub_1D5615F38();
    v31 = v30;
    v32 = sub_1D5615F38();
    v34 = v33;
    v37 = v32;
    v35 = OUTLINED_FUNCTION_45_3();
    v36(v35);
    *v27 = v29;
    v27[1] = v31;
    v27[2] = v37;
    v27[3] = v34;

    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D506A298(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  sub_1D56162D8();
  LegacyModelCodableComposer.Attributes.hash(into:)(v4);
  return sub_1D5616328();
}

uint64_t LegacyModelCodableComposer.Relationships.CodingKeys.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1D5615EF8();

  *a3 = v4 != 0;
  return result;
}

uint64_t LegacyModelCodableComposer.Relationships.CodingKeys.init(stringValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1D5615EF8();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1D506A418(uint64_t a1)
{
  v2 = sub_1D506A948();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D506A454(uint64_t a1)
{
  v2 = sub_1D506A948();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static LegacyModelCodableComposer.Relationships.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF018, &unk_1D562FC60);
  OUTLINED_FUNCTION_4();
  v30 = v29;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF020, &unk_1D5630FF0);
  OUTLINED_FUNCTION_22(v34);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_31();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF028, &unk_1D562FC70);
  OUTLINED_FUNCTION_22(v36);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_16_0();
  v39 = *(v38 + 56);
  sub_1D4F39AB0(v27, v20, &qword_1EC7EF020, &unk_1D5630FF0);
  sub_1D4F39AB0(v25, v20 + v39, &qword_1EC7EF020, &unk_1D5630FF0);
  OUTLINED_FUNCTION_57(v20, 1, v28);
  if (!v40)
  {
    sub_1D4F39AB0(v20, v21, &qword_1EC7EF020, &unk_1D5630FF0);
    OUTLINED_FUNCTION_57(v20 + v39, 1, v28);
    if (!v40)
    {
      (*(v30 + 32))(v33, v20 + v39, v28);
      sub_1D506A710();
      OUTLINED_FUNCTION_134_0();
      sub_1D5614D18();
      v41 = *(v30 + 8);
      v42 = OUTLINED_FUNCTION_71();
      v41(v42);
      (v41)(v21, v28);
      sub_1D4E50004(v20, &qword_1EC7EF020, &unk_1D5630FF0);
      goto LABEL_10;
    }

    (*(v30 + 8))(v21, v28);
LABEL_9:
    sub_1D4E50004(v20, &qword_1EC7EF028, &unk_1D562FC70);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_57(v20 + v39, 1, v28);
  if (!v40)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v20, &qword_1EC7EF020, &unk_1D5630FF0);
LABEL_10:
  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D506A710()
{
  result = qword_1EC7EF030;
  if (!qword_1EC7EF030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF018, &unk_1D562FC60);
    sub_1D506AC88(&qword_1EC7EBB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF030);
  }

  return result;
}

uint64_t LegacyModelCodableComposer.Relationships.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF038, &qword_1D562FC80);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D506A948();
  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF018, &unk_1D562FC60);
  sub_1D506A99C(&unk_1EC7EF048);
  sub_1D5616068();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_1D506A948()
{
  result = qword_1EC7EF040;
  if (!qword_1EC7EF040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF040);
  }

  return result;
}

unint64_t sub_1D506A99C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF018, &unk_1D562FC60);
    sub_1D506B300(v4);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D506AA10(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t LegacyModelCodableComposer.Relationships.hash(into:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF018, &unk_1D562FC60);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF020, &unk_1D5630FF0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_31();
  sub_1D4F39AB0(v1, v3, &qword_1EC7EF020, &unk_1D5630FF0);
  OUTLINED_FUNCTION_57(v3, 1, v4);
  if (v10)
  {
    return sub_1D56162F8();
  }

  (*(v6 + 32))(v2, v3, v4);
  sub_1D56162F8();
  sub_1D506ABCC();
  sub_1D5614CB8();
  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_1D506ABCC()
{
  result = qword_1EC7EF058;
  if (!qword_1EC7EF058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF018, &unk_1D562FC60);
    sub_1D506AC88(&qword_1EC7EBD08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF058);
  }

  return result;
}

unint64_t sub_1D506AC88(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB48, &unk_1D5630FE0);
    sub_1D506AA10(v4);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t LegacyModelCodableComposer.Relationships.hashValue.getter()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF018, &unk_1D562FC60);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF020, &unk_1D5630FF0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1D56162D8();
  sub_1D4F39AB0(v2, v10, &qword_1EC7EF020, &unk_1D5630FF0);
  OUTLINED_FUNCTION_57(v10, 1, v3);
  if (v11)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v5 + 32))(v1, v10, v3);
    sub_1D56162F8();
    sub_1D506ABCC();
    sub_1D5614CB8();
    (*(v5 + 8))(v1, v3);
  }

  return sub_1D5616328();
}

void LegacyModelCodableComposer.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v18 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF020, &unk_1D5630FF0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF060, &qword_1D562FC88);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_71_1();
  v9 = type metadata accessor for LegacyModelCodableComposer.Relationships(0);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D506A948();
  sub_1D5616398();
  if (!v0)
  {
    v14 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF018, &unk_1D562FC60);
    sub_1D506A99C(&unk_1EC7EF068);
    sub_1D5615F78();
    v15 = OUTLINED_FUNCTION_45_3();
    v16(v15);
    sub_1D4F39A1C(v7, v13, &qword_1EC7EF020, &unk_1D5630FF0);
    sub_1D506B3D0(v13, v14);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D506B11C(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF018, &unk_1D562FC60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF020, &unk_1D5630FF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1D56162D8();
  sub_1D4F39AB0(v2, v9, &qword_1EC7EF020, &unk_1D5630FF0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1D56162F8();
    sub_1D506ABCC();
    sub_1D5614CB8();
    (*(v4 + 8))(v6, v3);
  }

  return sub_1D5616328();
}

unint64_t sub_1D506B300(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB48, &unk_1D5630FE0);
    sub_1D506AA10(&qword_1EDD53420);
    sub_1D506AA10(&qword_1EDD53428);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D506B3D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyModelCodableComposer.Relationships(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D506B43C(uint64_t a1)
{
  v2 = sub_1D506B4F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D506B478(uint64_t a1)
{
  v2 = sub_1D506B4F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D506B4F8()
{
  result = qword_1EC7EF078;
  if (!qword_1EC7EF078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF078);
  }

  return result;
}

uint64_t sub_1D506B5D0(uint64_t a1)
{
  v2 = sub_1D506B780();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D506B60C(uint64_t a1)
{
  v2 = sub_1D506B780();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D506B68C()
{
  OUTLINED_FUNCTION_25_1();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_71_1();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1();
  sub_1D56163D8();
  v7 = OUTLINED_FUNCTION_45_3();
  v8(v7);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D506B780()
{
  result = qword_1EC7EF088;
  if (!qword_1EC7EF088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF088);
  }

  return result;
}

uint64_t LegacyModelCodableComposer.attributes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = v2;
}

uint64_t LegacyModelCodableComposer.views.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LegacyModelCodableComposer(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t LegacyModelCodableComposer.meta.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LegacyModelCodableComposer(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_1D506B980()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  sub_1D5610088();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561C050;
  result = sub_1D5610028();
  qword_1EDD552E8 = v0;
  return result;
}

uint64_t sub_1D506BA5C()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7EEFE8);
  v1 = __swift_project_value_buffer(v0, qword_1EC7EEFE8);
  v2 = *MEMORY[0x1E6976880];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static LegacyModelCodableComposer.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E8CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EC7EEFE8);
  OUTLINED_FUNCTION_24_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1D506BE30(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D506BECC(uint64_t a1)
{
  v2 = sub_1D506C1C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D506BF08(uint64_t a1)
{
  v2 = sub_1D506C1C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LegacyModelCodableComposer.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF0A0, &qword_1D562FCB0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D506C1C0();
  sub_1D56163D8();
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_10_44();
  sub_1D56160C8();
  if (!v1)
  {
    sub_1D506C214();

    sub_1D56160C8();

    type metadata accessor for LegacyModelCodableComposer(0);
    type metadata accessor for LegacyModelCodableComposer.Relationships(0);
    OUTLINED_FUNCTION_16_34();
    sub_1D506AA10(v4);
    sub_1D5616068();
    sub_1D506C268();
    OUTLINED_FUNCTION_10_44();
    sub_1D5616068();
    sub_1D506C2BC();
    OUTLINED_FUNCTION_10_44();
    sub_1D5616068();
  }

  v5 = OUTLINED_FUNCTION_134_0();
  return v6(v5);
}

unint64_t sub_1D506C1C0()
{
  result = qword_1EC7EF0A8;
  if (!qword_1EC7EF0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF0A8);
  }

  return result;
}

unint64_t sub_1D506C214()
{
  result = qword_1EC7EF0B0;
  if (!qword_1EC7EF0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF0B0);
  }

  return result;
}

unint64_t sub_1D506C268()
{
  result = qword_1EC7EF0C0;
  if (!qword_1EC7EF0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF0C0);
  }

  return result;
}

unint64_t sub_1D506C2BC()
{
  result = qword_1EC7EF0C8;
  if (!qword_1EC7EF0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF0C8);
  }

  return result;
}

void LegacyModelCodableComposer.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF018, &unk_1D562FC60);
  OUTLINED_FUNCTION_4();
  v23 = v2;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_3();
  v22 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF020, &unk_1D5630FF0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_71_1();
  v7 = type metadata accessor for LegacyModelCodableComposer.Relationships(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v24 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF090, &qword_1D562FCA0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  sub_1D5614E28();
  v14 = *(v0 + 40);
  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
    if (v14)
    {
LABEL_3:
      OUTLINED_FUNCTION_27();
      sub_1D5614E28();
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v14)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_36();
LABEL_6:
  v15 = type metadata accessor for LegacyModelCodableComposer(0);
  sub_1D4F39AB0(v0 + *(v15 + 24), v13, &qword_1EC7EF090, &qword_1D562FCA0);
  OUTLINED_FUNCTION_57(v13, 1, v7);
  if (v18)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v16 = v24;
    sub_1D506B3D0(v13, v24);
    OUTLINED_FUNCTION_27();
    sub_1D4F39AB0(v16, v1, &qword_1EC7EF020, &unk_1D5630FF0);
    v17 = v25;
    OUTLINED_FUNCTION_57(v1, 1, v25);
    if (v18)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v20 = v22;
      v19 = v23;
      (*(v23 + 32))(v22, v1, v17);
      OUTLINED_FUNCTION_27();
      sub_1D506ABCC();
      sub_1D5614CB8();
      (*(v19 + 8))(v20, v17);
    }

    OUTLINED_FUNCTION_5_46();
    sub_1D506CB78(v16, v21);
  }

  sub_1D56162F8();
  sub_1D56162F8();
  OUTLINED_FUNCTION_46();
}

uint64_t LegacyModelCodableComposer.hashValue.getter()
{
  sub_1D56162D8();
  LegacyModelCodableComposer.hash(into:)();
  return sub_1D5616328();
}

void LegacyModelCodableComposer.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v19 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF090, &qword_1D562FCA0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_71_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF0D0, &qword_1D562FCB8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_34();
  v9 = type metadata accessor for LegacyModelCodableComposer(v8);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = (v12 - v11);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D506C1C0();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    sub_1D4F89C9C();
    sub_1D5615FD8();
    *v13 = v20;
    sub_1D506CA7C();
    OUTLINED_FUNCTION_7_46();
    sub_1D5615FD8();
    v13[1] = v20;
    v13[2] = v21;
    type metadata accessor for LegacyModelCodableComposer.Relationships(0);
    OUTLINED_FUNCTION_16_34();
    sub_1D506AA10(v14);
    sub_1D5615F78();
    sub_1D4F39A1C(v1, v13 + v9[6], &qword_1EC7EF090, &qword_1D562FCA0);
    sub_1D506CAD0();
    OUTLINED_FUNCTION_7_46();
    sub_1D5615F78();
    *(v13 + v9[7]) = 2;
    sub_1D506CB24();
    OUTLINED_FUNCTION_7_46();
    sub_1D5615F78();
    v15 = OUTLINED_FUNCTION_1_6();
    v16(v15);
    *(v13 + v9[8]) = 2;
    OUTLINED_FUNCTION_13_35();
    sub_1D506DF7C(v13, v19, v17);
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_4_43();
    sub_1D506CB78(v13, v18);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D506CA40(uint64_t a1)
{
  sub_1D56162D8();
  LegacyModelCodableComposer.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D506CA7C()
{
  result = qword_1EC7EF0D8;
  if (!qword_1EC7EF0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF0D8);
  }

  return result;
}

unint64_t sub_1D506CAD0()
{
  result = qword_1EC7EF0E8;
  if (!qword_1EC7EF0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF0E8);
  }

  return result;
}

unint64_t sub_1D506CB24()
{
  result = qword_1EC7EF0F0;
  if (!qword_1EC7EF0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF0F0);
  }

  return result;
}

uint64_t sub_1D506CB78(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

void Composer.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_47();
  v89 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v72 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF090, &qword_1D562FCA0);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v88 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF020, &unk_1D5630FF0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v73 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB508, &unk_1D5643E20);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v90 = v14;
  OUTLINED_FUNCTION_70_0();
  sub_1D5610788();
  OUTLINED_FUNCTION_4();
  v84 = v16;
  v85 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  v82 = v17;
  OUTLINED_FUNCTION_70_0();
  v83 = sub_1D56107C8();
  OUTLINED_FUNCTION_4();
  v81 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_0();
  v80 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v24 = v23;
  v25 = OUTLINED_FUNCTION_70_0();
  v79 = type metadata accessor for LegacyModelCodableComposer(v25);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_0();
  v91 = v27;
  v28 = OUTLINED_FUNCTION_70_0();
  v29 = type metadata accessor for ComposerPropertyProvider(v28);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v33 = (v32 - v31);
  v35 = *(v34 + 20);
  sub_1D560C328();
  v76 = v35;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  v40 = v29[6];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  v87 = v40;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  if (qword_1EDD53C80 != -1)
  {
    swift_once();
  }

  v45 = sub_1D560D9A8();
  __swift_project_value_buffer(v45, qword_1EDD53C88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF0F8, &unk_1D562FCC0);
  OUTLINED_FUNCTION_15_36();
  sub_1D506AA10(v46);
  sub_1D5610668();
  sub_1D5610658();
  v77 = sub_1D5610618();
  v75 = v47;
  v74 = sub_1D56105C8();
  v48 = sub_1D56105F8();
  v49 = sub_1D56105E8();
  v50 = v2;
  v51 = sub_1D56105A8();
  if (qword_1EC7E8990 != -1)
  {
    swift_once();
  }

  v52 = qword_1EC87BE50;
  if (qword_1EC87BE50 >> 62)
  {
    sub_1D560CDE8();

    v71 = sub_1D5615E18();

    v52 = v71;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *(v33 + v29[7]) = v52;
  v53 = (v33 + v29[10]);
  *v53 = v77;
  v53[1] = v75;
  *(v33 + v29[11]) = v74;
  *(v33 + v29[12]) = v48;
  *(v33 + v29[13]) = v49;
  *(v33 + v29[14]) = v51;
  v78 = v50;
  sub_1D5610648();
  sub_1D56107A8();
  (*(v84 + 104))(v82, *MEMORY[0x1E6975DC8], v85);
  OUTLINED_FUNCTION_71();
  sub_1D5610798();
  (*(v84 + 8))(v82, v85);
  (*(v81 + 8))(v80, v83);
  sub_1D4E68940(v24, v33 + v76, &qword_1EC7EA3B8, &unk_1D561E370);
  v54 = *(v91 + 40);
  *v33 = *(v91 + 32);
  v33[1] = v54;
  sub_1D4F39AB0(v91 + *(v79 + 24), v88, &qword_1EC7EF090, &qword_1D562FCA0);
  v55 = type metadata accessor for LegacyModelCodableComposer.Relationships(0);
  OUTLINED_FUNCTION_57(v88, 1, v55);
  if (v59)
  {

    sub_1D4E50004(v88, &qword_1EC7EF090, &qword_1D562FCA0);
    v56 = 1;
  }

  else
  {
    sub_1D4F39AB0(v88, v73, &qword_1EC7EF020, &unk_1D5630FF0);

    OUTLINED_FUNCTION_5_46();
    sub_1D506CB78(v88, v57);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF018, &unk_1D562FC60);
    OUTLINED_FUNCTION_57(v73, 1, v58);
    if (v59)
    {
      sub_1D4E50004(v73, &qword_1EC7EF020, &unk_1D5630FF0);
      v56 = 1;
    }

    else
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
      sub_1D5613AF8();
      OUTLINED_FUNCTION_14_35();
      sub_1D506AA10(v64);
      sub_1D5612368();
      sub_1D4E50004(v72, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_24_0();
      (*(v65 + 8))(v73, v58);
      v56 = 0;
    }
  }

  __swift_storeEnumTagSinglePayload(v90, v56, 1, v86);
  sub_1D4E68940(v90, v33 + v87, &qword_1EC7EB508, &unk_1D5643E20);
  v92[3] = v29;
  v92[4] = sub_1D506AA10(&qword_1EC7EB530);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v92);
  sub_1D506DF7C(v33, boxed_opaque_existential_0, type metadata accessor for ComposerPropertyProvider);
  Composer.init(propertyProvider:)(v92, v89);

  OUTLINED_FUNCTION_24_0();
  v67 = OUTLINED_FUNCTION_45_3();
  v68(v67);
  OUTLINED_FUNCTION_24_0();
  (*(v69 + 8))(v78);
  OUTLINED_FUNCTION_4_43();
  sub_1D506CB78(v91, v70);
  sub_1D506CB78(v33, type metadata accessor for ComposerPropertyProvider);
  OUTLINED_FUNCTION_46();
}

void Composer.convertToLegacyModelCodableResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_47();
  v123 = v0;
  v106 = v2;
  v105 = v3;
  v104 = v4;
  v121 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v120 = v8;
  OUTLINED_FUNCTION_70_0();
  v9 = sub_1D5610088();
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v119 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v114 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v113 = v17;
  OUTLINED_FUNCTION_70_0();
  sub_1D5612B78();
  OUTLINED_FUNCTION_4();
  v117 = v19;
  v118 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_0();
  v116 = v20;
  v21 = OUTLINED_FUNCTION_70_0();
  v126 = type metadata accessor for LegacyModelCodableComposer(v21);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13();
  v125 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v115 = &v100 - v25;
  OUTLINED_FUNCTION_70_0();
  v103 = sub_1D5613578();
  OUTLINED_FUNCTION_4();
  v102 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v101 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF020, &unk_1D5630FF0);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  v108 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB508, &unk_1D5643E20);
  v33 = OUTLINED_FUNCTION_22(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13();
  v109 = v34;
  MEMORY[0x1EEE9AC00](v35);
  v124 = &v100 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF090, &qword_1D562FCA0);
  v38 = OUTLINED_FUNCTION_22(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13();
  v107 = v39;
  MEMORY[0x1EEE9AC00](v40);
  v122 = &v100 - v41;
  OUTLINED_FUNCTION_70_0();
  v42 = sub_1D5610788();
  OUTLINED_FUNCTION_4();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5();
  v48 = v47 - v46;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v49);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_34();
  v110 = sub_1D56107C8();
  OUTLINED_FUNCTION_4();
  v52 = v51;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5();
  v56 = v55 - v54;
  sub_1D56107A8();
  if (qword_1EC7E90E8 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  sub_1D506AA10(&qword_1EDD54820);
  sub_1D506AA10(&qword_1EDD54818);
  sub_1D560EC28();
  (*(v44 + 104))(v48, *MEMORY[0x1E6975DC8], v42);
  v57 = sub_1D56107B8();
  v111 = v58;
  v112 = v57;
  (*(v44 + 8))(v48, v42);
  sub_1D4E50004(v1, &qword_1EC7EA3B8, &unk_1D561E370);
  (*(v52 + 8))(v56, v110);
  v59 = Composer.name.getter();
  v110 = v60;
  v61 = type metadata accessor for LegacyModelCodableComposer.Relationships(0);
  v62 = v122;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v61);
  if (qword_1EC7E90F0 != -1)
  {
    swift_once();
  }

  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  v67 = v124;
  sub_1D560EC28();
  OUTLINED_FUNCTION_32_1(v67);
  if (!v68)
  {
    v69 = v109;
    sub_1D4F39AB0(v67, v109, &qword_1EC7EB508, &unk_1D5643E20);
    OUTLINED_FUNCTION_32_1(v69);
    if (v68)
    {
      sub_1D4E50004(v62, &qword_1EC7EF090, &qword_1D562FCA0);
      sub_1D4E50004(v69, &qword_1EC7EB508, &unk_1D5643E20);
      v75 = 1;
      v72 = v108;
    }

    else
    {
      sub_1D5613AF8();
      OUTLINED_FUNCTION_14_35();
      sub_1D506AA10(v70);
      v71 = v101;
      sub_1D4F1ABE8(v101);
      v72 = v108;
      v73 = v109;
      sub_1D560DA98();
      (*(v102 + 8))(v71, v103);
      sub_1D4E50004(v62, &qword_1EC7EF090, &qword_1D562FCA0);
      OUTLINED_FUNCTION_24_0();
      (*(v74 + 8))(v73, v66);
      v75 = 0;
    }

    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF018, &unk_1D562FC60);
    __swift_storeEnumTagSinglePayload(v72, v75, 1, v76);
    v77 = v107;
    sub_1D4F39A1C(v72, v107, &qword_1EC7EF020, &unk_1D5630FF0);
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v61);
    sub_1D4F39A1C(v77, v62, &qword_1EC7EF090, &qword_1D562FCA0);
  }

  v79 = *v123;
  v78 = v123[1];
  v80 = v126;
  v81 = v115;
  sub_1D4F39AB0(v62, &v115[*(v126 + 24)], &qword_1EC7EF090, &qword_1D562FCA0);
  *v81 = v79;
  v81[1] = v78;
  v82 = v111;
  v81[2] = v112;
  v81[3] = v82;
  v83 = v110;
  v81[4] = v59;
  v81[5] = v83;
  *(v81 + *(v80 + 28)) = 1;
  *(v81 + *(v80 + 32)) = 1;
  type metadata accessor for Composer(0);

  v84 = v113;
  sub_1D5611A28();
  v85 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v84, 0, 1, v85);
  sub_1D5611C98();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
  v90 = v116;
  sub_1D5612B38();
  OUTLINED_FUNCTION_13_35();
  sub_1D506DF7C(v81, v125, v91);
  sub_1D5611A98();
  v92 = sub_1D5611A88();
  v113 = v93;
  v114 = v92;
  v94 = v118;
  v95 = v120;
  (*(v117 + 16))(v120, v90, v118);
  __swift_storeEnumTagSinglePayload(v95, 0, 1, v94);
  v112 = sub_1D5611A38();
  v111 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  OUTLINED_FUNCTION_15_36();
  sub_1D506AA10(v96);
  sub_1D5610628();
  v97 = OUTLINED_FUNCTION_134_0();
  v98(v97);
  OUTLINED_FUNCTION_4_43();
  sub_1D506CB78(v81, v99);
  sub_1D4E50004(v122, &qword_1EC7EF090, &qword_1D562FCA0);
  sub_1D4E50004(v124, &qword_1EC7EB508, &unk_1D5643E20);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D506DF7C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

unint64_t sub_1D506DFDC()
{
  result = qword_1EC7EF110;
  if (!qword_1EC7EF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF110);
  }

  return result;
}

unint64_t sub_1D506E034()
{
  result = qword_1EC7EF118;
  if (!qword_1EC7EF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF118);
  }

  return result;
}

unint64_t sub_1D506E08C()
{
  result = qword_1EC7EF120;
  if (!qword_1EC7EF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF120);
  }

  return result;
}

unint64_t sub_1D506E0E4()
{
  result = qword_1EC7EF128;
  if (!qword_1EC7EF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF128);
  }

  return result;
}

unint64_t sub_1D506E13C()
{
  result = qword_1EC7EF130;
  if (!qword_1EC7EF130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF138, &qword_1D562FE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF130);
  }

  return result;
}

unint64_t sub_1D506E1EC()
{
  result = qword_1EC7EF148;
  if (!qword_1EC7EF148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF148);
  }

  return result;
}

unint64_t sub_1D506E244()
{
  result = qword_1EC7EF150;
  if (!qword_1EC7EF150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF150);
  }

  return result;
}

void sub_1D506E4D4(uint64_t a1)
{
  sub_1D506E5A8(319);
  if (v1 <= 0x3F)
  {
    sub_1D4E518A0(319, qword_1EDD552F0, &type metadata for LegacyModelCodableComposer.Associations);
    if (v2 <= 0x3F)
    {
      sub_1D4E518A0(319, qword_1EDD55240, &type metadata for LegacyModelCodableComposer.Metadata);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D506E5A8(uint64_t a1)
{
  if (!qword_1EDD552A0)
  {
    type metadata accessor for LegacyModelCodableComposer.Relationships(255);
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD552A0);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D506E60C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1D506E660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1D506E6EC(uint64_t a1)
{
  sub_1D506E758(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D506E758(uint64_t a1)
{
  if (!qword_1EDD530B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF018, &unk_1D562FC60);
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD530B8);
    }
  }
}

_BYTE *sub_1D506E7DC(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for LegacyModelCodableComposer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LegacyModelCodableComposer.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D506EA64()
{
  result = qword_1EC7EF168;
  if (!qword_1EC7EF168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF168);
  }

  return result;
}

unint64_t sub_1D506EABC()
{
  result = qword_1EC7EF170;
  if (!qword_1EC7EF170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF170);
  }

  return result;
}

unint64_t sub_1D506EB14()
{
  result = qword_1EC7EF178;
  if (!qword_1EC7EF178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF178);
  }

  return result;
}

unint64_t sub_1D506EB6C()
{
  result = qword_1EC7EF180;
  if (!qword_1EC7EF180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF180);
  }

  return result;
}

unint64_t sub_1D506EBC4()
{
  result = qword_1EC7EF188;
  if (!qword_1EC7EF188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF188);
  }

  return result;
}

unint64_t sub_1D506EC1C()
{
  result = qword_1EC7EF190;
  if (!qword_1EC7EF190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF190);
  }

  return result;
}

unint64_t sub_1D506EC74()
{
  result = qword_1EC7EF198;
  if (!qword_1EC7EF198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF198);
  }

  return result;
}

unint64_t sub_1D506ECCC()
{
  result = qword_1EC7EF1A0;
  if (!qword_1EC7EF1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF1A0);
  }

  return result;
}

unint64_t sub_1D506ED24()
{
  result = qword_1EC7EF1A8;
  if (!qword_1EC7EF1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF1A8);
  }

  return result;
}

unint64_t sub_1D506ED7C()
{
  result = qword_1EC7EF1B0;
  if (!qword_1EC7EF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF1B0);
  }

  return result;
}

uint64_t Playlist.Folder.init(propertyProvider:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v10 = sub_1D560D708();
  v12 = v11;
  (*(v6 + 8))(v9, v4);
  *a2 = v10;
  a2[1] = v12;
  v13 = OUTLINED_FUNCTION_71();
  __swift_project_boxed_opaque_existential_1(v13, v14);
  type metadata accessor for Playlist.Folder(0);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D506EFB0(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_17_33();
  if (!v5)
  {
    swift_once();
  }

  a3(0);
  OUTLINED_FUNCTION_2_53();
  sub_1D507118C(v6, v3, &protocol conformance descriptor for Playlist.Folder);
  OUTLINED_FUNCTION_0_67();
  sub_1D507118C(v7, v3, v8);

  return sub_1D560EC28();
}

uint64_t Playlist.Folder.name.getter()
{
  if (qword_1EC7E8D20 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_47();
  sub_1D507118C(v1, v0, &protocol conformance descriptor for Playlist.Folder);
  OUTLINED_FUNCTION_0_67();
  sub_1D507118C(v2, v0, v3);
  sub_1D560EC28();
  if (v6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t static Playlist.Folder.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Playlist.Folder(0);

  return sub_1D5611A78();
}

unint64_t Playlist.Folder.debugDescription.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v19 - v1;
  v3 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0xD000000000000010;
  v22 = 0x80000001D5682EE0;
  v19 = 0x22203A646920200ALL;
  v20 = 0xE800000000000000;
  v9 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v9);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v19, v20);

  v19 = 0x656D616E20200A2CLL;
  v20 = 0xEB0000000022203ALL;
  v10 = Playlist.Folder.name.getter();
  MEMORY[0x1DA6EAC70](v10);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  v11 = v20;
  MEMORY[0x1DA6EAC70](v19, v20);

  if (qword_1EC7E8D08 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_6_46();
  sub_1D507118C(v12, v11, &protocol conformance descriptor for Playlist.Folder);
  OUTLINED_FUNCTION_0_67();
  sub_1D507118C(v13, v11, v14);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1D4E7661C(v2, &qword_1EC7EA3B8, &unk_1D561E370);
  }

  else
  {
    (*(v5 + 32))(v8, v2, v3);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1D5615B68();

    v19 = 0x6574616420200A2CLL;
    v20 = 0xEF203A6465646441;
    OUTLINED_FUNCTION_8_41();
    sub_1D507118C(v15, v16, MEMORY[0x1E6969570]);
    v17 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v17);

    MEMORY[0x1DA6EAC70](v19, v20);

    (*(v5 + 8))(v8, v3);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v21;
}

uint64_t Playlist.Folder.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Playlist.Folder(0) + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_24_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_1D506F620()
{
  if (qword_1EC7E8D18 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_47();
  sub_1D507118C(v1, v0, &protocol conformance descriptor for Playlist.Folder);
  OUTLINED_FUNCTION_0_67();
  sub_1D507118C(v2, v0, v3);
  sub_1D560EC28();
  return v5;
}

uint64_t Playlist.Folder.children.getter()
{
  if (qword_1EC7E8D28 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE410, &unk_1D56310A0);
  OUTLINED_FUNCTION_2_53();
  sub_1D507118C(v1, v0, &protocol conformance descriptor for Playlist.Folder);
  OUTLINED_FUNCTION_0_67();
  sub_1D507118C(v2, v0, v3);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t Playlist.Folder.parent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  if (qword_1EC7E8D30 != -1)
  {
    OUTLINED_FUNCTION_11_44(&qword_1EC7E8D30);
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  OUTLINED_FUNCTION_6_46();
  sub_1D507118C(v7, v1, &protocol conformance descriptor for Playlist.Folder);
  OUTLINED_FUNCTION_0_67();
  sub_1D507118C(v8, v1, v9);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1D4E7661C(v5, &qword_1EC7ECF38, &qword_1D562E650);
    v10 = type metadata accessor for Playlist.Folder(0);
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v10);
  }

  else
  {
    sub_1D4ECA0A8();
    OUTLINED_FUNCTION_24_0();
    return (*(v12 + 8))(v5, v6);
  }
}

uint64_t sub_1D506F960()
{
  if (qword_1EC7E8D30 != -1)
  {
    OUTLINED_FUNCTION_11_44(&qword_1EC7E8D30);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  OUTLINED_FUNCTION_2_53();
  sub_1D507118C(v1, v0, &protocol conformance descriptor for Playlist.Folder);
  OUTLINED_FUNCTION_0_67();
  sub_1D507118C(v2, v0, v3);
  OUTLINED_FUNCTION_18_0();

  return sub_1D560EC28();
}

uint64_t Playlist.Folder.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  type metadata accessor for Playlist.Folder(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_4_44();
  sub_1D507118C(v1, v2, MEMORY[0x1E6976328]);
  return sub_1D5614CB8();
}

uint64_t Playlist.Folder.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614E28();
  type metadata accessor for Playlist.Folder(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_4_44();
  sub_1D507118C(v0, v1, MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D506FB50(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5611AB8();
  sub_1D507118C(&qword_1EC7ECF08, MEMORY[0x1E6976320], MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D506FBF4@<X0>(uint64_t *a1@<X8>)
{
  result = Playlist.Folder.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D506FC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1D507118C(&unk_1EDD52B98, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  v11 = sub_1D507118C(qword_1EDD5D190, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  *v9 = v4;
  v9[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v10, a4, v11);
}

uint64_t sub_1D506FD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D507118C(&unk_1EDD52B98, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  v13 = sub_1D507118C(qword_1EDD5D190, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  *v11 = v5;
  v11[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D506FE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D507118C(&unk_1EDD52B98, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  v13 = sub_1D507118C(qword_1EDD5D190, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
  *v11 = v5;
  v11[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D506FFD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF208, &qword_1D56749F0);
  swift_getKeyPath();
  sub_1D507118C(&qword_1EDD52DE8, MEMORY[0x1E6976F68], MEMORY[0x1E6976F88]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C058 = v0;
  return result;
}

uint64_t sub_1D50700D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF208, &qword_1D56749F0);
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_41();
  sub_1D507118C(v6, v7, MEMORY[0x1E6969558]);
  v8 = sub_1D560D188();

  *a5 = v8;
  return result;
}

uint64_t sub_1D5070180()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF208, &qword_1D56749F0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D4F89C9C();
  v0 = sub_1D560D138();

  qword_1EC87C070 = v0;
  return result;
}

uint64_t sub_1D507024C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF208, &qword_1D56749F0);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C078 = v0;
  return result;
}

uint64_t sub_1D50702B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF208, &qword_1D56749F0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED60, &qword_1D562ED40);
  v2 = sub_1D560DE08();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_13_1();
  *(v5 + 16) = xmmword_1D561C050;
  (*(v4 + 104))(v5 + v0, *MEMORY[0x1E69750B0], v2);
  sub_1D507118C(&qword_1EC7EF210, type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
  sub_1D560D0F8();
  OUTLINED_FUNCTION_44_2();

  qword_1EC7EF1B8 = v1;
  return result;
}

uint64_t sub_1D5070430()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF208, &qword_1D56749F0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED60, &qword_1D562ED40);
  v2 = sub_1D560DE08();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_13_1();
  *(v5 + 16) = xmmword_1D561C050;
  (*(v4 + 104))(v5 + v0, *MEMORY[0x1E69750B0], v2);
  OUTLINED_FUNCTION_1_65();
  sub_1D507118C(v6, v7, &protocol conformance descriptor for Playlist.Folder);
  sub_1D560D0F8();
  OUTLINED_FUNCTION_44_2();

  qword_1EC7EF1C0 = v1;
  return result;
}

uint64_t sub_1D5070594(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_33();
  if (!v2)
  {
    swift_once();
  }
}

uint64_t sub_1D50705DC(uint64_t a1, uint64_t a2)
{
  sub_1D507118C(&qword_1EC7EE420, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);

  return sub_1D5610C58();
}

uint64_t static Playlist.Folder.validateParametersForLibrarySectionedRequest<A>(with:itemPredicates:itemSortDescriptors:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF1E0, &unk_1D5630770);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v22 - v7;
  if (sub_1D5614898() == a4 || type metadata accessor for Playlist.Folder(0) == a4 || type metadata accessor for Playlist.Folder.Item(0) == a4)
  {
    v22[1] = v4;
    v23 = MEMORY[0x1E69E7CC0];
    v25 = MEMORY[0x1E69E7CC0];
    v9 = v24;
    result = sub_1D4E62638(v24);
    v11 = result;
    v12 = 0;
    v13 = v9 & 0xC000000000000001;
    v14 = v9 & 0xFFFFFFFFFFFFFF8;
    while (v11 != v12)
    {
      if (v13)
      {
        result = MEMORY[0x1DA6EB9B0](v12, v24);
      }

      else
      {
        if (v12 >= *(v14 + 16))
        {
          goto LABEL_20;
        }
      }

      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      sub_1D560CE08();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF1E8, &qword_1D5653040);
      if (__swift_getEnumTagSinglePayload(v8, 1, v15) == 1)
      {
        v16 = sub_1D4E7661C(v8, &qword_1EC7EF1E0, &unk_1D5630770);
        MEMORY[0x1DA6EAF30](v16);
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D56151B8();
        }

        result = sub_1D56151F8();
        v23 = v25;
        ++v12;
      }

      else
      {

        result = sub_1D4E7661C(v8, &qword_1EC7EF1E0, &unk_1D5630770);
        ++v12;
      }
    }

    v17 = sub_1D4E62638(v23);

    if (!v17)
    {
      return result;
    }
  }

  sub_1D560DE58();
  OUTLINED_FUNCTION_9_41();
  v20 = sub_1D507118C(v18, v19, MEMORY[0x1E69750E0]);
  OUTLINED_FUNCTION_18_34(v20);
  OUTLINED_FUNCTION_24_0();
  (*(v21 + 104))();
  return swift_willThrow();
}

uint64_t Playlist.Folder.init(from:)(void *a1)
{
  type metadata accessor for Playlist.Folder(0);
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_1_65();
  sub_1D507118C(v3, v4, &protocol conformance descriptor for Playlist.Folder);
  OUTLINED_FUNCTION_7_47();
  sub_1D507118C(v5, v1, MEMORY[0x1E69763D0]);
  OUTLINED_FUNCTION_10_45(&qword_1EC7EF1F8);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Playlist.Folder.encode(to:)(uint64_t a1)
{
  type metadata accessor for Playlist.Folder(0);
  OUTLINED_FUNCTION_1_65();
  sub_1D507118C(v2, v3, &protocol conformance descriptor for Playlist.Folder);
  OUTLINED_FUNCTION_7_47();
  sub_1D507118C(v4, v1, MEMORY[0x1E69763D0]);
  OUTLINED_FUNCTION_10_45(&qword_1EC7EF1F8);
  return sub_1D5612688();
}

unint64_t Playlist.Folder.description.getter()
{
  sub_1D5615B68();

  v0 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v0);

  MEMORY[0x1DA6EAC70](0x3A656D616E202C22, 0xEA00000000002220);
  v1 = Playlist.Folder.name.getter();
  MEMORY[0x1DA6EAC70](v1);

  MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
  return 0xD000000000000015;
}

uint64_t sub_1D5070C3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6974FC8], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FD8], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD0], v0);
  qword_1EC7EF1C8 = v4;
  return result;
}

uint64_t sub_1D5070DD0(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_33();
  if (!v2)
  {
    swift_once();
  }
}

uint64_t sub_1D5070E24()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD52BB0);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  type metadata accessor for Playlist.Folder(0);
  OUTLINED_FUNCTION_1_65();
  sub_1D507118C(v3, v4, &protocol conformance descriptor for Playlist.Folder);
  return sub_1D560D978();
}

uint64_t sub_1D5070EF0()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD53CC8);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EDD52BA8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EDD52BB0);
  OUTLINED_FUNCTION_24_0();
  v5 = *(v4 + 16);

  return v5(v3);
}

uint64_t sub_1D5070FD4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_17_33();
  if (!v4)
  {
    swift_once();
  }

  v5 = sub_1D560D9A8();
  __swift_project_value_buffer(v5, a1);
  OUTLINED_FUNCTION_24_0();
  v7 = *(v6 + 16);

  return v7(a2);
}

uint64_t sub_1D507118C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t static MusicPlatformMigration.performExport(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D50711F4, 0, 0);
}

uint64_t sub_1D50711F4()
{
  type metadata accessor for MusicPlatformMigration.ExportSession();
  swift_allocObject();
  v1 = sub_1D5071754();
  v0[4] = v1;
  if (qword_1EC7E90C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D560C758();
  v0[5] = __swift_project_value_buffer(v2, qword_1EC87C300);
  v3 = sub_1D560C738();
  v4 = sub_1D56156E8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D4E3F000, v3, v4, "[ExportSession] Beginning export.", v5, 2u);
    OUTLINED_FUNCTION_118();
  }

  v6 = v0[2];

  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1D50713BC;

  return v9(v1);
}

uint64_t sub_1D50713BC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D50715DC;
  }

  else
  {
    v2 = sub_1D50714D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D50714D0()
{

  v1 = sub_1D560C738();
  v2 = sub_1D56156E8();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 32);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134349312;
    *(v5 + 4) = *(v4 + 24);
    *(v5 + 12) = 2050;
    *(v5 + 14) = *(v4 + 32);

    _os_log_impl(&dword_1D4E3F000, v1, v2, "[ExportSession] Completed export of %{public}ld tracks and %{public}ld playlists", v5, 0x16u);
    OUTLINED_FUNCTION_118();
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D50715DC()
{
  v1 = *(v0 + 56);
  v2 = v1;
  v3 = sub_1D560C738();
  v4 = sub_1D56156C8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 56);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D4E3F000, v3, v4, "[ExportSession] Cancelling session due to unhandled exception during export: %{public}@.", v6, 0xCu);
    sub_1D4E765C8(v7, &unk_1EC7F2C00, &qword_1D5623260);
    MEMORY[0x1DA6ED200](v7, -1, -1);
    OUTLINED_FUNCTION_118();
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

void *sub_1D5071754()
{
  result = [objc_opt_self() autoupdatingSharedLibrary];
  if (result)
  {
    v0[3] = 0;
    v0[4] = 0;
    v0[2] = result;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D50717CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF240, &qword_1D5630D00);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 16);
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_1D507517C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5073308;
  aBlock[3] = &block_descriptor_36;
  v11 = _Block_copy(aBlock);

  [v8 databaseConnectionAllowingWrites:0 withBlock:v11];
  _Block_release(v11);
}

uint64_t sub_1D5071994(id a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF240, &qword_1D5630D00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  if (a1 && (a1 = sub_1D5074EDC(0xD00000000000025DLL, 0x80000001D56831A0, a1, &selRef_executeQuery_)) != 0)
  {
    (*(v7 + 16))(v9, a3, v6);
    v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    (*(v7 + 32))(v11 + v10, v9, v6);
    v12 = swift_allocObject();
    v13 = sub_1D50752C0;
    *(v12 + 16) = sub_1D50752C0;
    *(v12 + 24) = v11;
    aBlock[4] = sub_1D50754D8;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5073288;
    aBlock[3] = &block_descriptor_46;
    v14 = _Block_copy(aBlock);
    a1 = a1;

    [a1 enumerateRowsWithBlock_];
    _Block_release(v14);
  }

  else
  {
    v13 = 0;
    v11 = 0;
  }

  aBlock[0] = 0;
  sub_1D5615538();

  return sub_1D4EA7420(v13, v11);
}

void sub_1D5071BF0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v205 = a4;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF248, &qword_1D5630D08);
  v8 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v10 = &v164 - v9;
  v174 = sub_1D560C728();
  v166 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v167 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF250, &qword_1D5630D10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v173 = &v164 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v164 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v164 - v18;
  v177 = sub_1D560C0A8();
  v20 = MEMORY[0x1EEE9AC00](v177);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v164 - v23;
  if (a1)
  {
    v164 = v22;
    v165 = v21;
    v170 = v10;
    v171 = a5;
    v25 = a1;
    v26 = &selRef_musicKit_changeDetails_type;
    v207 = [v25 int64ForColumnIndex_];
    v27 = [v25 stringForColumnIndex_];
    if (v27)
    {
      v28 = v27;
      v29 = sub_1D5614D68();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0xE000000000000000;
    }

    v40 = sub_1D5074C28(v207);
    v201 = v41;
    v202 = v40;

    v203 = [v25 int64ForColumnIndex_];
    if ((v203 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v250 = 0;
      v200 = [v25 intForColumnIndex_] == 1;
      v42 = [v25 intForColumnIndex_];
      if ((v42 & 0x80000000) == 0)
      {
        LODWORD(v176) = v42;
        v247 = 0;
        v43 = [v25 intForColumnIndex_];
        if ((v43 & 0x80000000) == 0)
        {
          LODWORD(v175) = v43;
          v245 = 0;
          v44 = [v25 stringForColumnIndex_];
          if (v44)
          {
            v45 = v44;
            v46 = sub_1D5614D68();
            v198 = v47;
            v199 = v46;
          }

          else
          {
            v198 = 0xE000000000000000;
            v199 = 0;
          }

          v48 = [v25 int64ForColumnIndex_];
          v49 = (v48 + 978307200);
          if (!__OFADD__(v48, 978307200))
          {
            v197 = 1000 * v49;
            if ((v49 * 1000) >> 64 == (1000 * v49) >> 63)
            {
              v243 = 0;
              v50 = [v25 int64ForColumnIndex_];
              if ((v50 & 0x8000000000000000) == 0)
              {
                v190 = v50;
                v241 = 0;
                v51 = [v25 stringForColumnIndex_];
                if (v51)
                {
                  v52 = v51;
                  v53 = sub_1D5614D68();
                  v188 = v54;
                  v189 = v53;
                }

                else
                {
                  v188 = 0xE000000000000000;
                  v189 = 0;
                }

                v55 = [v25 stringForColumnIndex_];
                v191 = v29;
                if (v55)
                {
                  v56 = v55;
                  v57 = sub_1D5614D68();
                  v186 = v58;
                  v187 = v57;
                }

                else
                {
                  v186 = 0xE000000000000000;
                  v187 = 0;
                }

                v59 = [v25 int64ForColumnIndex_];
                v60 = [v25 stringForColumnIndex_];
                if (v60)
                {
                  v61 = v60;
                  v62 = sub_1D5614D68();
                  v195 = v63;
                  v196 = v62;
                }

                else
                {
                  v195 = 0xE000000000000000;
                  v196 = 0;
                }

                *&v222[0] = v59;
                v64 = sub_1D56160F8();
                v193 = v65;
                v194 = v64;
                v239 = 1;
                v192 = [v25 int64ForColumnIndex_];
                if ((v192 & 0x8000000000000000) == 0)
                {
                  v237 = 0;
                  v206 = [v25 int64ForColumnIndex_];
                  if ((v206 & 0x8000000000000000) == 0)
                  {
                    v185 = v25;
                    v169 = v8;
                    v235 = 0;
                    v66 = *(v205 + 16);
                    v67 = objc_allocWithZone(MEMORY[0x1E69B3538]);
                    v68 = [v67 initWithPersistentID:v207 inLibrary:v66];
                    v69 = objc_allocWithZone(MEMORY[0x1E69B3458]);
                    v184 = v68;
                    v70 = [v69 initWithEntity:v68 artworkType:1];
                    v178 = v31;
                    v168 = v70;
                    if (v70 && (v71 = sub_1D5074F40(v70), v72))
                    {
                      v73 = v71;
                      v74 = v72;
                      objc_allocWithZone(MEMORY[0x1E69B3440]);
                      v75 = v66;
                      v76 = sub_1D5074D40(v73, v74, 1, v66);
                      v77 = v76;
                      if (v76)
                      {
                        v78 = [v76 originalFileURL];
                        if (v78)
                        {
                          v79 = v78;
                          sub_1D560BFC8();

                          v80 = 0;
                        }

                        else
                        {
                          v80 = 1;
                        }

                        v86 = v177;
                        __swift_storeEnumTagSinglePayload(v17, v80, 1, v177);
                        sub_1D4F5A3D0(v17, v19);
                        if (__swift_getEnumTagSinglePayload(v19, 1, v86) != 1)
                        {
                          (*(v165 + 32))(v24, v19, v177);
                          v91 = sub_1D560C008();
                          v92 = v145;
                          v146 = qword_1EC7E90C8;

                          if (v146 != -1)
                          {
                            swift_once();
                          }

                          v147 = sub_1D560C758();
                          __swift_project_value_buffer(v147, qword_1EC87C300);

                          v148 = sub_1D560C738();
                          v149 = sub_1D56156E8();

                          if (os_log_type_enabled(v148, v149))
                          {
                            v150 = v92;
                            v151 = swift_slowAlloc();
                            v152 = swift_slowAlloc();
                            v204 = v91;
                            v153 = v152;
                            *&v222[0] = v152;
                            *v151 = 134349314;
                            *(v151 + 4) = v207;
                            *(v151 + 12) = 2082;
                            v154 = sub_1D4E6835C(v204, v150, v222);

                            *(v151 + 14) = v154;
                            _os_log_impl(&dword_1D4E3F000, v148, v149, "[ExportSession] Setting artwork path for %{public}lld: %{public}s.", v151, 0x16u);
                            __swift_destroy_boxed_opaque_existential_1(v153);
                            v155 = v153;
                            v91 = v204;
                            MEMORY[0x1DA6ED200](v155, -1, -1);
                            v156 = v151;
                            v92 = v150;
                            v26 = &selRef_musicKit_changeDetails_type;
                            MEMORY[0x1DA6ED200](v156, -1, -1);
                          }

                          else
                          {
                          }

                          (*(v165 + 8))(v24, v177);
LABEL_54:
                          v223[0] = v194;
                          v223[1] = v193;
                          v223[2] = v196;
                          v223[3] = v195;
                          v223[4] = MEMORY[0x1E69E7CC0];
                          v223[5] = 0;
                          LOBYTE(v224) = v239;
                          *(&v224 + 1) = *v238;
                          HIDWORD(v224) = *&v238[3];
                          v225 = v192;
                          LOBYTE(v226) = v237;
                          *(&v226 + 1) = *v236;
                          HIDWORD(v226) = *&v236[3];
                          v227 = v206;
                          LOBYTE(v228) = v235;
                          BYTE1(v228) = 2;
                          *(&v228 + 2) = v233;
                          HIWORD(v228) = v234;
                          v204 = v91;
                          v229 = v91;
                          v230 = v92;
                          v180 = v224;
                          v181 = v226;
                          v182 = v228;
                          v232 = 0;
                          memset(v231, 0, sizeof(v231));
                          sub_1D5075358(v223, v222);
                          sub_1D4E765C8(v231, &qword_1EC7EF258, &qword_1D5639030);
                          v93 = v185;
                          v94 = [v185 v26[21]];
                          v95 = [v93 stringForColumnIndex_];
                          v183 = v92;
                          if (v95)
                          {
                            v96 = v95;
                            v97 = sub_1D5614D68();
                            v99 = v98;
                          }

                          else
                          {
                            v97 = 0;
                            v99 = 0xE000000000000000;
                          }

                          *&v222[0] = v94;
                          v100 = sub_1D56160F8();
                          v102 = v101;
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF260, &qword_1D5630D18);
                          v103 = swift_allocObject();
                          *(v103 + 16) = xmmword_1D561C050;
                          *(v103 + 32) = v100;
                          *(v103 + 40) = v102;
                          *(v103 + 48) = v97;
                          *(v103 + 56) = v99;
                          *(v103 + 64) = 0;
                          *(v103 + 72) = 0;
                          v179 = v103;
                          v104 = v184;
                          if (v184)
                          {
                            v105 = sub_1D5614D68();
                            if (sub_1D5074EDC(v105, v106, v104, &selRef_valueForProperty_))
                            {
                              sub_1D56159A8();
                              swift_unknownObjectRelease();
                            }

                            else
                            {
                              memset(v221, 0, 32);
                            }

                            v107 = v205;
                            v222[0] = v221[0];
                            v222[1] = v221[1];
                            if (*(&v221[1] + 1))
                            {
                              if (swift_dynamicCast())
                              {
                                v108 = HIBYTE(*(&v221[0] + 1)) & 0xFLL;
                                if ((*(&v221[0] + 1) & 0x2000000000000000) == 0)
                                {
                                  v108 = *&v221[0] & 0xFFFFFFFFFFFFLL;
                                }

                                if (v108)
                                {
                                  v109 = sub_1D5614D38();

                                  v110 = [v66 mediaFolderPathByAppendingPathComponent_];

                                  v25 = sub_1D5614D68();
                                  v112 = v111;

                                  v113 = v112;
                                  sub_1D560BF28();
                                  sub_1D560BEF8();
                                  sub_1D560C708();
                                  v114 = v173;
                                  sub_1D560C6D8();
                                  v115 = v174;
                                  if (__swift_getEnumTagSinglePayload(v114, 1, v174) == 1)
                                  {
                                    sub_1D4E765C8(v114, &qword_1EC7EF250, &qword_1D5630D10);
                                    v8 = 0;
                                    v205 = 0;
                                  }

                                  else
                                  {
                                    v8 = sub_1D560C6E8();
                                    v205 = v157;
                                    (*(v166 + 8))(v114, v115);
                                  }

                                  v120 = v113;
                                  if (qword_1EC7E90C8 != -1)
                                  {
                                    swift_once();
                                  }

                                  v158 = sub_1D560C758();
                                  __swift_project_value_buffer(v158, qword_1EC87C300);

                                  v159 = sub_1D560C738();
                                  v160 = sub_1D56156E8();

                                  if (os_log_type_enabled(v159, v160))
                                  {
                                    v161 = swift_slowAlloc();
                                    v174 = swift_slowAlloc();
                                    *&v222[0] = v174;
                                    *v161 = 134349314;
                                    *(v161 + 4) = v207;
                                    *(v161 + 12) = 2082;
                                    v162 = sub_1D4E6835C(v25, v120, v222);

                                    *(v161 + 14) = v162;
                                    _os_log_impl(&dword_1D4E3F000, v159, v160, "[ExportSession] Setting asset path for %{public}lld: %{public}s.", v161, 0x16u);
                                    v163 = v174;
                                    __swift_destroy_boxed_opaque_existential_1(v174);
                                    MEMORY[0x1DA6ED200](v163, -1, -1);
                                    MEMORY[0x1DA6ED200](v161, -1, -1);
                                  }

                                  else
                                  {
                                  }

                                  (*(v165 + 8))(v164, v177);
                                  goto LABEL_75;
                                }
                              }

LABEL_70:
                              if (qword_1EC7E90C8 != -1)
                              {
                                swift_once();
                              }

                              v116 = sub_1D560C758();
                              __swift_project_value_buffer(v116, qword_1EC87C300);
                              v117 = sub_1D560C738();
                              v118 = sub_1D56156E8();
                              if (os_log_type_enabled(v117, v118))
                              {
                                v119 = swift_slowAlloc();
                                *v119 = 134349056;
                                *(v119 + 4) = v207;
                                _os_log_impl(&dword_1D4E3F000, v117, v118, "[ExportSession] Failed to get asset path for item persistent ID %{public}lld.", v119, 0xCu);
                                MEMORY[0x1DA6ED200](v119, -1, -1);
                              }

                              v8 = 0;
                              v205 = 0;
                              v25 = 0;
                              v120 = 0;
LABEL_75:
                              v121 = *(v107 + 24);
                              v122 = __OFADD__(v121, 1);
                              v123 = v121 + 1;
                              if (!v122)
                              {
                                v177 = v120;
                                v174 = v176;
                                v175 = v175;
                                *(v107 + 24) = v123;
                                if (qword_1EC7E90C8 == -1)
                                {
LABEL_77:
                                  v176 = v8;
                                  v124 = sub_1D560C758();
                                  __swift_project_value_buffer(v124, qword_1EC87C300);
                                  v125 = v178;

                                  v126 = sub_1D560C738();
                                  v127 = sub_1D56156E8();

                                  v128 = os_log_type_enabled(v126, v127);
                                  v173 = v25;
                                  if (v128)
                                  {
                                    v129 = swift_slowAlloc();
                                    v130 = swift_slowAlloc();
                                    *&v222[0] = v130;
                                    *v129 = 134349314;
                                    *(v129 + 4) = v207;
                                    *(v129 + 12) = 2082;
                                    v131 = v191;
                                    v132 = sub_1D4E6835C(v191, v125, v222);

                                    *(v129 + 14) = v132;
                                    _os_log_impl(&dword_1D4E3F000, v126, v127, "[ExportSession] Exporting item [%{public}lld: %{public}s].", v129, 0x16u);
                                    __swift_destroy_boxed_opaque_existential_1(v130);
                                    MEMORY[0x1DA6ED200](v130, -1, -1);
                                    MEMORY[0x1DA6ED200](v129, -1, -1);
                                  }

                                  else
                                  {

                                    v131 = v191;
                                  }

                                  *&v221[0] = v202;
                                  *(&v221[0] + 1) = v201;
                                  *&v221[1] = v131;
                                  *(&v221[1] + 1) = v125;
                                  v133 = v193;
                                  *&v221[2] = v194;
                                  v134 = v194;
                                  *(&v221[2] + 1) = v193;
                                  v136 = v195;
                                  v135 = v196;
                                  *&v221[3] = v196;
                                  *(&v221[3] + 1) = v195;
                                  v221[4] = MEMORY[0x1E69E7CC0];
                                  *&v221[5] = v180;
                                  v137 = v192;
                                  *(&v221[5] + 1) = v192;
                                  *&v221[6] = v181;
                                  *(&v221[6] + 1) = v206;
                                  *&v221[7] = v182;
                                  *(&v221[7] + 1) = v204;
                                  *&v221[8] = v183;
                                  *(&v221[8] + 1) = v179;
                                  *&v221[9] = v203;
                                  LODWORD(v207) = v250;
                                  BYTE8(v221[9]) = v250;
                                  BYTE9(v221[9]) = v200;
                                  *(&v221[9] + 10) = v248;
                                  HIWORD(v221[9]) = v249;
                                  *&v221[10] = v174;
                                  LODWORD(v167) = v247;
                                  BYTE8(v221[10]) = v247;
                                  *(&v221[10] + 9) = *v246;
                                  HIDWORD(v221[10]) = *&v246[3];
                                  *&v221[11] = v175;
                                  LODWORD(v166) = v245;
                                  BYTE8(v221[11]) = v245;
                                  HIDWORD(v221[11]) = *&v244[3];
                                  *(&v221[11] + 9) = *v244;
                                  *&v221[12] = v199;
                                  *(&v221[12] + 1) = v198;
                                  *&v221[13] = v197;
                                  HIDWORD(v221[13]) = *&v242[3];
                                  *(&v221[13] + 9) = *v242;
                                  HIDWORD(v221[15]) = *&v240[3];
                                  *(&v221[15] + 9) = *v240;
                                  LODWORD(v164) = v243;
                                  BYTE8(v221[13]) = v243;
                                  *&v221[14] = v176;
                                  *(&v221[14] + 1) = v205;
                                  *&v221[15] = v190;
                                  LODWORD(v165) = v241;
                                  BYTE8(v221[15]) = v241;
                                  *&v221[16] = v189;
                                  *(&v221[16] + 1) = v188;
                                  *&v221[17] = v187;
                                  *(&v221[17] + 1) = v186;
                                  *&v221[18] = v173;
                                  *(&v221[18] + 1) = v177;
                                  memcpy(v222, v221, sizeof(v222));
                                  sub_1D50753B4(v221, v208);
                                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF240, &qword_1D5630D00);
                                  v138 = v170;
                                  sub_1D5615528();

                                  (*(v169 + 8))(v138, v172);
                                  v139 = v134;
                                  v208[0] = v134;
                                  v208[1] = v133;
                                  v140 = v135;
                                  v208[2] = v135;
                                  v208[3] = v136;
                                  v208[4] = MEMORY[0x1E69E7CC0];
                                  v208[5] = 0;
                                  v209 = v239;
                                  *v210 = *v238;
                                  *&v210[3] = *&v238[3];
                                  v141 = v137;
                                  v211 = v137;
                                  v212 = v237;
                                  *v213 = *v236;
                                  *&v213[3] = *&v236[3];
                                  v142 = v206;
                                  v214 = v206;
                                  v215 = v235;
                                  v216 = 2;
                                  v217 = v233;
                                  v218 = v234;
                                  v143 = v204;
                                  v144 = v183;
                                  v219 = v204;
                                  v220 = v183;
                                  sub_1D5075410(v208);
                                  *&v222[0] = v202;
                                  *(&v222[0] + 1) = v201;
                                  *&v222[1] = v191;
                                  *(&v222[1] + 1) = v178;
                                  *&v222[2] = v139;
                                  *(&v222[2] + 1) = v133;
                                  *&v222[3] = v140;
                                  *(&v222[3] + 1) = v136;
                                  v222[4] = MEMORY[0x1E69E7CC0];
                                  *&v222[5] = v180;
                                  *(&v222[5] + 1) = v141;
                                  *&v222[6] = v181;
                                  *(&v222[6] + 1) = v142;
                                  *&v222[7] = v182;
                                  *(&v222[7] + 1) = v143;
                                  *&v222[8] = v144;
                                  *(&v222[8] + 1) = v179;
                                  *&v222[9] = v203;
                                  BYTE8(v222[9]) = v207;
                                  BYTE9(v222[9]) = v200;
                                  *(&v222[9] + 10) = v248;
                                  HIWORD(v222[9]) = v249;
                                  *&v222[10] = v174;
                                  BYTE8(v222[10]) = v167;
                                  *(&v222[10] + 9) = *v246;
                                  HIDWORD(v222[10]) = *&v246[3];
                                  *&v222[11] = v175;
                                  BYTE8(v222[11]) = v166;
                                  *(&v222[11] + 9) = *v244;
                                  HIDWORD(v222[11]) = *&v244[3];
                                  *&v222[12] = v199;
                                  *(&v222[12] + 1) = v198;
                                  *&v222[13] = v197;
                                  BYTE8(v222[13]) = v164;
                                  HIDWORD(v222[13]) = *&v242[3];
                                  *(&v222[13] + 9) = *v242;
                                  *&v222[14] = v176;
                                  *(&v222[14] + 1) = v205;
                                  *&v222[15] = v190;
                                  BYTE8(v222[15]) = v165;
                                  HIDWORD(v222[15]) = *&v240[3];
                                  *(&v222[15] + 9) = *v240;
                                  *&v222[16] = v189;
                                  *(&v222[16] + 1) = v188;
                                  *&v222[17] = v187;
                                  *(&v222[17] + 1) = v186;
                                  *&v222[18] = v173;
                                  *(&v222[18] + 1) = v177;
                                  sub_1D5075464(v222);
                                  return;
                                }

LABEL_104:
                                swift_once();
                                goto LABEL_77;
                              }

LABEL_103:
                              __break(1u);
                              goto LABEL_104;
                            }
                          }

                          else
                          {
                            memset(v222, 0, 32);
                            v107 = v205;
                          }

                          sub_1D4E765C8(v222, &qword_1EC7E9F98, &qword_1D561C420);
                          goto LABEL_70;
                        }
                      }

                      else
                      {
                        __swift_storeEnumTagSinglePayload(v19, 1, 1, v177);
                      }

                      sub_1D4E765C8(v19, &unk_1EC7E9CA8, &unk_1D561D1D0);
                      if (qword_1EC7E90C8 != -1)
                      {
                        swift_once();
                      }

                      v87 = sub_1D560C758();
                      __swift_project_value_buffer(v87, qword_1EC87C300);
                      v88 = sub_1D560C738();
                      v89 = sub_1D56156E8();
                      if (os_log_type_enabled(v88, v89))
                      {
                        v90 = swift_slowAlloc();
                        *v90 = 134349056;
                        *(v90 + 4) = v207;
                        _os_log_impl(&dword_1D4E3F000, v88, v89, "[ExportSession] Failed to load artwork file URL for %{public}lld.", v90, 0xCu);
                        MEMORY[0x1DA6ED200](v90, -1, -1);
                      }
                    }

                    else
                    {
                      if (qword_1EC7E90C8 != -1)
                      {
                        swift_once();
                      }

                      v81 = sub_1D560C758();
                      __swift_project_value_buffer(v81, qword_1EC87C300);
                      v82 = sub_1D560C738();
                      v83 = sub_1D56156E8();
                      if (os_log_type_enabled(v82, v83))
                      {
                        v84 = swift_slowAlloc();
                        *v84 = 134349056;
                        *(v84 + 4) = v207;
                        _os_log_impl(&dword_1D4E3F000, v82, v83, "[ExportSession] Failed to load available artwork token for %{public}lld.", v84, 0xCu);
                        MEMORY[0x1DA6ED200](v84, -1, -1);
                      }
                    }

                    v91 = 0;
                    v92 = 0;
                    goto LABEL_54;
                  }

LABEL_102:
                  __break(1u);
                  goto LABEL_103;
                }

LABEL_101:
                __break(1u);
                goto LABEL_102;
              }

LABEL_100:
              __break(1u);
              goto LABEL_101;
            }

LABEL_99:
            __break(1u);
            goto LABEL_100;
          }

LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

LABEL_97:
        __break(1u);
        goto LABEL_98;
      }
    }

    __break(1u);
    goto LABEL_97;
  }

  if (qword_1EC7E90C8 != -1)
  {
    swift_once();
  }

  v32 = sub_1D560C758();
  __swift_project_value_buffer(v32, qword_1EC87C300);
  v33 = a2;
  v207 = sub_1D560C738();
  v34 = sub_1D56156C8();

  if (os_log_type_enabled(v207, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138543362;
    if (a2)
    {
      v37 = a2;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      v39 = v38;
    }

    else
    {
      v38 = 0;
      v39 = 0;
    }

    *(v35 + 4) = v38;
    *v36 = v39;
    _os_log_impl(&dword_1D4E3F000, v207, v34, "[ExportSession] Error executing database statement: %{public}@.", v35, 0xCu);
    sub_1D4E765C8(v36, &unk_1EC7F2C00, &qword_1D5623260);
    MEMORY[0x1DA6ED200](v36, -1, -1);
    MEMORY[0x1DA6ED200](v35, -1, -1);
  }

  v85 = v207;
}

void sub_1D5073288(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v9 = a2;
  v8 = a3;
  v7(a2, a3, a4);
}

void sub_1D5073308(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1D50733A4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8 - v5, *MEMORY[0x1E69E8790]);
  return sub_1D5615548();
}

void sub_1D5073480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF230, &qword_1D5630CF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 16);
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1D5074E34;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5073308;
  aBlock[3] = &block_descriptor_7;
  v12 = _Block_copy(aBlock);

  [v9 databaseConnectionAllowingWrites:0 withBlock:v12];
  _Block_release(v12);
}

uint64_t sub_1D5073654(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF230, &qword_1D5630CF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v58 = v49 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  v67 = sub_1D5614BD8();
  if (a1)
  {
    v10 = sub_1D5074FB0(0xD00000000000012DLL, 0x80000001D5682FE0, a1);
    if (v10)
    {
      v49[4] = v8;
      v57 = v6;
      v54 = a2;
      v11 = v10;
      v12 = swift_allocObject();
      *(v12 + 16) = a3;
      *(v12 + 24) = &v67;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1D5075000;
      *(v13 + 24) = v12;
      v53 = v12;
      v65 = sub_1D5075008;
      v66 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v62 = 1107296256;
      v49[3] = &v63;
      v63 = sub_1D5073288;
      v64 = &block_descriptor_20_0;
      v14 = _Block_copy(&aBlock);
      v51 = a3;

      v52 = v11;
      [v11 enumerateRowsWithBlock_];
      _Block_release(v14);
      v15 = v67;
      v16 = v67 + 64;
      v17 = 1 << *(v67 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v7;
      v20 = v18 & *(v67 + 64);
      v21 = (v17 + 63) >> 6;
      v60 = 0x80000001D5683140;
      v49[2] = v19 + 16;
      v50 = v19;
      v49[1] = v19 + 32;

      v55 = 0;
      v56 = 0;
      v22 = 0;
      *&v23 = 134349056;
      v59 = v23;
      while (v20)
      {
LABEL_11:
        v25 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v26 = (v22 << 9) | (8 * v25);
        v27 = *(*(v15 + 48) + v26);
        v28 = *(*(v15 + 56) + v26);
        aBlock = v27;

        v29 = sub_1D56160F8();
        aBlock = 0xD00000000000005BLL;
        v62 = v60;
        MEMORY[0x1DA6EAC70](v29);

        v30 = sub_1D5074FB0(aBlock, v62, a1);

        if (v30)
        {
          v35 = v50;
          (*(v50 + 16))(v58, v54, v57);
          v49[0] = (*(v35 + 80) + 40) & ~*(v35 + 80);
          v36 = swift_allocObject();
          *(v36 + 2) = v51;
          *(v36 + 3) = v27;
          *(v36 + 4) = v28;
          v37 = v36;
          (*(v35 + 32))(&v36[v49[0]], v58, v57);

          sub_1D4EA7420(v56, v55);
          v38 = swift_allocObject();
          v56 = sub_1D5075030;
          *(v38 + 16) = sub_1D5075030;
          *(v38 + 24) = v37;
          v65 = sub_1D50754D8;
          v66 = v38;
          aBlock = MEMORY[0x1E69E9820];
          v62 = 1107296256;
          v63 = sub_1D5073288;
          v64 = &block_descriptor_30_0;
          v39 = _Block_copy(&aBlock);

          [v30 enumerateRowsWithBlock_];
          _Block_release(v39);

          v55 = v37;
        }

        else
        {

          if (qword_1EC7E90C8 != -1)
          {
            swift_once();
          }

          v31 = sub_1D560C758();
          __swift_project_value_buffer(v31, qword_1EC87C300);
          v32 = sub_1D560C738();
          v33 = sub_1D56156C8();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            *v34 = v59;
            *(v34 + 4) = v27;
            _os_log_impl(&dword_1D4E3F000, v32, v33, "[ExportSession] Failed to query properties for playlist %{public}lld.", v34, 0xCu);
            MEMORY[0x1DA6ED200](v34, -1, -1);
          }
        }
      }

      while (1)
      {
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v24 >= v21)
        {

          aBlock = 0;
          sub_1D5615538();

          v44 = sub_1D5075000;
          v45 = v53;
          v47 = v55;
          v46 = v56;
          goto LABEL_23;
        }

        v20 = *(v16 + 8 * v24);
        ++v22;
        if (v20)
        {
          v22 = v24;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_25;
    }
  }

  if (qword_1EC7E90C8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v40 = sub_1D560C758();
  __swift_project_value_buffer(v40, qword_1EC87C300);
  v41 = sub_1D560C738();
  v42 = sub_1D56156C8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1D4E3F000, v41, v42, "[ExportSession] Failed to query playlist items.", v43, 2u);
    MEMORY[0x1DA6ED200](v43, -1, -1);
  }

  aBlock = 0;
  sub_1D5615538();
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
LABEL_23:

  sub_1D4EA7420(v44, v45);
  return sub_1D4EA7420(v46, v47);
}

void sub_1D5073D44(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a1)
  {
    v6 = a1;
    v7 = [v6 int64ForColumnIndex_];
    v8 = sub_1D5074C28([v6 int64ForColumnIndex_]);
    v10 = v9;
    if (sub_1D4ED087C(v7, *a5))
    {
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35[0] = *a5;
      sub_1D4F14288(MEMORY[0x1E69E7CC0], v7, isUniquelyReferenced_nonNull_native, v21, v22, v23, v24, v25, v32, oslog);
      *a5 = v35[0];
    }

    v27 = sub_1D5089C50(v35, v7);
    if (*v26)
    {
      v28 = v26;
      sub_1D4EFF458();
      v29 = *(*v28 + 16);
      sub_1D4EFF6C0(v29);
      v30 = *v28;
      *(v30 + 16) = v29 + 1;
      v31 = v30 + 16 * v29;
      *(v31 + 32) = v8;
      *(v31 + 40) = v10;
    }

    else
    {
    }

    (v27)(v35, 0);
  }

  else
  {
    if (qword_1EC7E90C8 != -1)
    {
      swift_once();
    }

    v12 = sub_1D560C758();
    __swift_project_value_buffer(v12, qword_1EC87C300);
    v13 = a2;
    osloga = sub_1D560C738();
    v14 = sub_1D56156C8();

    if (os_log_type_enabled(osloga, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      if (a2)
      {
        v17 = a2;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      *(v15 + 4) = v18;
      *v16 = v19;
      _os_log_impl(&dword_1D4E3F000, osloga, v14, "[ExportSession] Error executing database statement: %{public}@.", v15, 0xCu);
      sub_1D4E765C8(v16, &unk_1EC7F2C00, &qword_1D5623260);
      MEMORY[0x1DA6ED200](v16, -1, -1);
      MEMORY[0x1DA6ED200](v15, -1, -1);
    }
  }
}

void sub_1D5073FD8(void *a1, void *a2, uint64_t a3, char *a4, NSObject *a5, uint64_t a6, uint64_t a7)
{
  v129 = a7;
  v136 = a5;
  v132 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF238, &qword_1D5630CF8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v128 = &v112 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v112 - v17;
  v19 = sub_1D560C0A8();
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v115 = v22;
    v116 = v20;
    v126 = v11;
    v133 = a6;
    v23 = a1;
    v24 = [v23 stringForColumnIndex_];
    if (v24)
    {
      v25 = v24;
      v135 = sub_1D5614D68();
      v27 = v26;
    }

    else
    {
      v135 = 0;
      v27 = 0xE000000000000000;
    }

    v36 = [v23 stringForColumnIndex_];
    v127 = v10;
    if (v36)
    {
      v37 = v36;
      v134 = sub_1D5614D68();
      v131 = v38;
    }

    else
    {
      v134 = 0;
      v131 = 0xE000000000000000;
    }

    v39 = 978307200;
    v40 = [v23 int64ForColumnIndex_];
    v41 = [v23 int64ForColumnIndex_];
    v42 = sub_1D5074C28(v136);
    v124 = v43;
    v125 = v42;
    v44 = (v40 + 978307200);
    if (__OFADD__(v40, 978307200))
    {
      __break(1u);
    }

    else
    {
      v45 = 1000 * v44;
      if ((v44 * 1000) >> 64 == (1000 * v44) >> 63)
      {
        v143 = 0;
        v46 = (v41 + 978307200);
        if (!__OFADD__(v41, 978307200))
        {
          if ((v46 * 1000) >> 64 == (1000 * v46) >> 63)
          {
            v117 = v19;
            v122 = 1000 * v46;
            v123 = v23;
            v130 = v45;
            v141 = 0;
            v47 = *(v132 + 2);
            v48 = objc_allocWithZone(MEMORY[0x1E69B34A0]);
            v11 = v27;

            v39 = v133;

            v49 = [v48 initWithPersistentID:v136 inLibrary:v47];
            v50 = objc_allocWithZone(MEMORY[0x1E69B3458]);
            v121 = v49;
            v51 = [v50 initWithEntity:v49 artworkType:5];
            v120 = v51;
            if (!v51 || (v52 = sub_1D5074F40(v51), !v53))
            {
              if (qword_1EC7E90C8 != -1)
              {
                swift_once();
              }

              v62 = sub_1D560C758();
              __swift_project_value_buffer(v62, qword_1EC87C300);
              v63 = sub_1D560C738();
              v64 = sub_1D56156E8();
              v65 = os_log_type_enabled(v63, v64);
              v16 = v135;
              if (v65)
              {
                v66 = swift_slowAlloc();
                *v66 = 134349056;
                *(v66 + 4) = v136;
                _os_log_impl(&dword_1D4E3F000, v63, v64, "[ExportSession] No available artwork token for container persistent ID %{public}lld.", v66, 0xCu);
                v67 = v66;
                v39 = v133;
                MEMORY[0x1DA6ED200](v67, -1, -1);
              }

              v18 = 0;
              v119 = 0;
LABEL_47:
              v88 = *(v132 + 4);
              v89 = __OFADD__(v88, 1);
              v90 = v88 + 1;
              if (!v89)
              {
                *(v132 + 4) = v90;
                if (qword_1EC7E90C8 == -1)
                {
LABEL_49:
                  v91 = sub_1D560C758();
                  __swift_project_value_buffer(v91, qword_1EC87C300);

                  v92 = sub_1D560C738();
                  v93 = sub_1D56156E8();

                  v94 = os_log_type_enabled(v92, v93);
                  v132 = v18;
                  v135 = v16;
                  if (v94)
                  {
                    v95 = swift_slowAlloc();
                    v96 = swift_slowAlloc();
                    __dst[0] = v96;
                    *v95 = 134349826;
                    *(v95 + 4) = v136;
                    *(v95 + 12) = 2082;
                    v97 = sub_1D4E6835C(v16, v11, __dst);
                    v98 = v11;
                    v99 = v39;
                    v100 = v97;
                    v101 = v98;

                    *(v95 + 14) = v100;
                    *(v95 + 22) = 2050;
                    *(v95 + 24) = *(v99 + 16);

                    *(v95 + 32) = 2082;
                    v102 = MEMORY[0x1DA6EAF70](v99, MEMORY[0x1E69E6158]);
                    v104 = sub_1D4E6835C(v102, v103, __dst);

                    *(v95 + 34) = v104;
                    _os_log_impl(&dword_1D4E3F000, v92, v93, "[ExportSession] Exporting playlist [%{public}lld: %{public}s] with %{public}ld tracks: %{public}s.", v95, 0x2Au);
                    swift_arrayDestroy();
                    MEMORY[0x1DA6ED200](v96, -1, -1);
                    MEMORY[0x1DA6ED200](v95, -1, -1);
                  }

                  else
                  {

                    v101 = v11;
                    v99 = v39;
                  }

                  v105 = v128;
                  v106 = v135;
                  v108 = v124;
                  v107 = v125;
                  v138[0] = v125;
                  v138[1] = v124;
                  v138[2] = v135;
                  v138[3] = v101;
                  v118 = v101;
                  v138[4] = v134;
                  v138[5] = v131;
                  v138[6] = v130;
                  LODWORD(v136) = v143;
                  LOBYTE(v138[7]) = v143;
                  *(&v138[7] + 1) = *v142;
                  HIDWORD(v138[7]) = *&v142[3];
                  v109 = v122;
                  v138[8] = v122;
                  LODWORD(v129) = v141;
                  LOBYTE(v138[9]) = v141;
                  HIDWORD(v138[9]) = *&v140[3];
                  *(&v138[9] + 1) = *v140;
                  v110 = v132;
                  v138[10] = v99;
                  v138[11] = v132;
                  v111 = v119;
                  v138[12] = v119;
                  memcpy(__dst, v138, sizeof(__dst));
                  sub_1D50750CC(v138, &v137);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF230, &qword_1D5630CF0);
                  sub_1D5615528();

                  (*(v126 + 8))(v105, v127);
                  __dst[0] = v107;
                  __dst[1] = v108;
                  __dst[2] = v106;
                  __dst[3] = v118;
                  __dst[4] = v134;
                  __dst[5] = v131;
                  __dst[6] = v130;
                  LOBYTE(__dst[7]) = v136;
                  *(&__dst[7] + 1) = *v142;
                  HIDWORD(__dst[7]) = *&v142[3];
                  __dst[8] = v109;
                  LOBYTE(__dst[9]) = v129;
                  *(&__dst[9] + 1) = *v140;
                  HIDWORD(__dst[9]) = *&v140[3];
                  __dst[10] = v133;
                  __dst[11] = v110;
                  __dst[12] = v111;
                  sub_1D5075128(__dst);
                  return;
                }

LABEL_58:
                swift_once();
                goto LABEL_49;
              }

LABEL_57:
              __break(1u);
              goto LABEL_58;
            }

            v54 = v52;
            v55 = v53;
            objc_allocWithZone(MEMORY[0x1E69B3440]);
            v56 = v47;
            v57 = sub_1D5074D40(v54, v55, 5, v47);
            v58 = v57;
            if (v57)
            {
              v59 = [v57 originalFileURL];
              if (v59)
              {
                v60 = v59;
                sub_1D560BFC8();

                v61 = 0;
              }

              else
              {
                v61 = 1;
              }

              v69 = v117;
              __swift_storeEnumTagSinglePayload(v16, v61, 1, v117);
              sub_1D4F5A3D0(v16, v18);
              EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v69);
              v16 = v135;
              if (EnumTagSinglePayload != 1)
              {
                (*(v116 + 32))(v115, v18, v69);
                v18 = sub_1D560C008();
                v76 = v75;
                v77 = qword_1EC7E90C8;

                if (v77 != -1)
                {
                  swift_once();
                }

                v78 = sub_1D560C758();
                __swift_project_value_buffer(v78, qword_1EC87C300);

                v79 = sub_1D560C738();
                v80 = sub_1D56156E8();

                v114 = v80;
                v81 = os_log_type_enabled(v79, v80);
                v119 = v76;
                if (v81)
                {
                  v82 = swift_slowAlloc();
                  v113 = v79;
                  v83 = v82;
                  v84 = swift_slowAlloc();
                  __dst[0] = v84;
                  *v83 = 134349314;
                  *(v83 + 4) = v136;
                  *(v83 + 12) = 2082;
                  v85 = sub_1D4E6835C(v18, v76, __dst);
                  v112 = v58;
                  v86 = v85;

                  *(v83 + 14) = v86;
                  v87 = v113;
                  _os_log_impl(&dword_1D4E3F000, v113, v114, "[ExportSession] Setting artwork path for container persistent ID %{public}lld: %{public}s.", v83, 0x16u);
                  __swift_destroy_boxed_opaque_existential_1(v84);
                  MEMORY[0x1DA6ED200](v84, -1, -1);
                  MEMORY[0x1DA6ED200](v83, -1, -1);
                }

                else
                {
                }

                (*(v116 + 8))(v115, v69);
                goto LABEL_46;
              }
            }

            else
            {
              __swift_storeEnumTagSinglePayload(v18, 1, 1, v117);
              v16 = v135;
            }

            sub_1D4E765C8(v18, &unk_1EC7E9CA8, &unk_1D561D1D0);
            if (qword_1EC7E90C8 != -1)
            {
              swift_once();
            }

            v71 = sub_1D560C758();
            __swift_project_value_buffer(v71, qword_1EC87C300);
            v72 = sub_1D560C738();
            v73 = sub_1D56156C8();
            if (os_log_type_enabled(v72, v73))
            {
              v74 = swift_slowAlloc();
              *v74 = 134349056;
              *(v74 + 4) = v136;
              _os_log_impl(&dword_1D4E3F000, v72, v73, "[ExportSession] Failed to load artwork file url for container persistent ID %{public}lld.", v74, 0xCu);
              MEMORY[0x1DA6ED200](v74, -1, -1);
            }

            v18 = 0;
            v119 = 0;
LABEL_46:
            v39 = v133;
            goto LABEL_47;
          }

LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

  if (qword_1EC7E90C8 != -1)
  {
    swift_once();
  }

  v28 = sub_1D560C758();
  __swift_project_value_buffer(v28, qword_1EC87C300);
  v29 = a2;
  v136 = sub_1D560C738();
  v30 = sub_1D56156C8();

  if (os_log_type_enabled(v136, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138543362;
    if (a2)
    {
      v33 = a2;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      v35 = v34;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    *(v31 + 4) = v34;
    *v32 = v35;
    _os_log_impl(&dword_1D4E3F000, v136, v30, "[ExportSession] Error executing database statement. %{public}@.", v31, 0xCu);
    sub_1D4E765C8(v32, &unk_1EC7F2C00, &qword_1D5623260);
    MEMORY[0x1DA6ED200](v32, -1, -1);
    MEMORY[0x1DA6ED200](v31, -1, -1);
  }

  v68 = v136;
}

uint64_t sub_1D5074C28(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF228, &qword_1D5630CE8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D561D750;
  v3 = MEMORY[0x1E69E7360];
  v4 = MEMORY[0x1E69E73D8];
  *(v2 + 56) = MEMORY[0x1E69E7360];
  *(v2 + 64) = v4;
  *(v2 + 32) = a1 >> 32;
  *(v2 + 96) = v3;
  *(v2 + 104) = v4;
  *(v2 + 72) = WORD1(a1);
  *(v2 + 136) = v3;
  *(v2 + 144) = v4;
  *(v2 + 112) = (a1 >> 8);
  *(v2 + 176) = v3;
  *(v2 + 184) = v4;
  *(v2 + 152) = (a1 >> 4);
  *(v2 + 216) = v3;
  *(v2 + 224) = v4;
  *(v2 + 192) = a1;

  return sub_1D5614D88();
}

uint64_t MusicPlatformMigration.ExportSession.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

id sub_1D5074D40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_1D5614D38();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithToken:v8 artworkType:a3 musicLibrary:a4];

  return v9;
}

uint64_t sub_1D5074E34(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF230, &qword_1D5630CF0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D5073654(a1, v1 + v4, v5);
}

id sub_1D5074EDC(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1D5614D38();

  v7 = [a3 *a4];

  return v7;
}

uint64_t sub_1D5074F40(void *a1)
{
  v2 = [a1 availableArtworkToken];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D5614D68();

  return v3;
}

id sub_1D5074FB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D5614D38();
  v5 = [a3 executeQuery_];

  return v5;
}

void sub_1D5075030(void *a1, void *a2, uint64_t a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF230, &qword_1D5630CF0) - 8);
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  sub_1D5073FD8(a1, a2, a3, v8, v9, v10, v11);
}

uint64_t sub_1D507517C(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF240, &qword_1D5630D00) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1D5071994(a1, v4, v5);
}

uint64_t objectdestroy_32Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF240, &qword_1D5630D00);
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

void sub_1D50752C0(void *a1, void *a2, uint64_t a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF240, &qword_1D5630D00) - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  sub_1D5071BF0(a1, a2, a3, v8, v9);
}

uint64_t Album.presto_audioTraits.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_1D56138C8();
  v2 = sub_1D56139A8();

  return sub_1D53895E8(v2, a1);
}

uint64_t sub_1D507552C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF270, &qword_1D563BBD0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D50756A0();
  v0 = sub_1D560D138();

  qword_1EC7EF268 = v0;
  return result;
}

uint64_t sub_1D5075600@<X0>(uint64_t a1@<X8>)
{
  result = Album.presto_audioTraits.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t static PartialMusicProperty<A>.presto_audioTraits.getter()
{
  if (qword_1EC7E8D48 != -1)
  {
    swift_once();
  }
}

{
  if (qword_1EC7E9400 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1D50756A0()
{
  result = qword_1EC7EF278;
  if (!qword_1EC7EF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF278);
  }

  return result;
}

uint64_t sub_1D50756F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v116 = a3;
  v127 = a2;
  v120 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v119 = &v104 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v118 = &v104 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v123 = &v104 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v115 = &v104 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v130 = &v104 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v112 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v132 = &v104 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E8, &qword_1D561CAD8);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v111 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v135 = &v104 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v110 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v136 = &v104 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EA7F8, &unk_1D56311B0);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v109 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v104 - v30;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  v114 = *(v134 - 8);
  v32 = MEMORY[0x1EEE9AC00](v134);
  v108 = &v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v104 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA808, &unk_1D56311C0);
  v122 = *(v36 - 8);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v107 = &v104 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v104 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  v121 = *(v41 - 8);
  v42 = MEMORY[0x1EEE9AC00](v41);
  v106 = &v104 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v131 = &v104 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA818, &qword_1D561CAE0);
  v124 = *(v45 - 8);
  v46 = MEMORY[0x1EEE9AC00](v45);
  v105 = &v104 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v104 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA820, &unk_1D5623370);
  sub_1D5612378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA828, &qword_1D5623400);
  sub_1D5612378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA830, &qword_1D56233C0);
  v128 = v40;
  sub_1D5612378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA770, &unk_1D561F1C0);
  v126 = v35;
  v113 = v50;
  v117 = a1;
  sub_1D5612378();
  v129 = v31;
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v136, 1, 1, v41);
  v133 = v36;
  __swift_storeEnumTagSinglePayload(v135, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v132, 1, 1, v134);
  v125 = v49;
  if (sub_1D56123F8() & 1) != 0 && (sub_1D56123F8() & 1) != 0 && (sub_1D56123F8() & 1) != 0 && (sub_1D56123F8())
  {
    v51 = v129;
    sub_1D4E50004(v129, &off_1EC7EA7F8, &unk_1D56311B0);
    (*(v124 + 16))(v51, v125, v45);
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v45);
    v52 = v132;
  }

  else
  {
    v53 = v109;
    sub_1D5612348();
    v51 = v129;
    sub_1D4E68940(v53, v129, &off_1EC7EA7F8, &unk_1D56311B0);
    v54 = v110;
    sub_1D5612348();
    sub_1D4E68940(v54, v136, &qword_1EC7EA7F0, &unk_1D561E8C0);
    v55 = v111;
    sub_1D5612348();
    sub_1D4E68940(v55, v135, &qword_1EC7EA7E8, &qword_1D561CAD8);
    v56 = v112;
    sub_1D5612348();
    v52 = v132;
    sub_1D4E68940(v56, v132, &qword_1EC7EA7E0, &unk_1D5623AB0);
  }

  v57 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51, 1, v45);
  v59 = v123;
  v60 = v115;
  if (!EnumTagSinglePayload)
  {
    v61 = v124;
    v62 = v105;
    (*(v124 + 16))(v105, v129, v45);
    v63 = sub_1D560CD98();
    __swift_storeEnumTagSinglePayload(v60, 1, 1, v63);
    sub_1D56141F8();
    sub_1D560CD48();
    sub_1D50A2470(&qword_1EC7EA7D0, MEMORY[0x1E6977048], MEMORY[0x1E6977028]);
    sub_1D5612368();
    sub_1D4E50004(v60, &qword_1EC7EA7D8, &unk_1D561E8B0);
    (*(v61 + 8))(v62, v45);
    v57 = 0;
  }

  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  v65 = 1;
  __swift_storeEnumTagSinglePayload(v130, v57, 1, v64);
  if (!__swift_getEnumTagSinglePayload(v136, 1, v41))
  {
    v66 = v121;
    v67 = v59;
    v68 = v106;
    (*(v121 + 16))(v106, v136, v41);
    v69 = sub_1D560CD98();
    __swift_storeEnumTagSinglePayload(v60, 1, 1, v69);
    sub_1D5613C48();
    sub_1D560CD48();
    sub_1D50A2470(&qword_1EC7EA7C8, MEMORY[0x1E6976DC8], MEMORY[0x1E6976DB0]);
    sub_1D5612368();
    sub_1D4E50004(v60, &qword_1EC7EA7D8, &unk_1D561E8B0);
    v70 = v68;
    v59 = v67;
    (*(v66 + 8))(v70, v41);
    v65 = 0;
  }

  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v72 = 1;
  __swift_storeEnumTagSinglePayload(v59, v65, 1, v71);
  v73 = __swift_getEnumTagSinglePayload(v135, 1, v133);
  v74 = v118;
  if (!v73)
  {
    v75 = v122;
    v76 = *(v122 + 16);
    v77 = v107;
    v112 = v45;
    v78 = v41;
    v79 = v133;
    v76(v107, v135, v133);
    v80 = sub_1D560CD98();
    __swift_storeEnumTagSinglePayload(v60, 1, 1, v80);
    sub_1D5614B68();
    sub_1D560CD48();
    sub_1D50A2470(&qword_1EC7EA7C0, MEMORY[0x1E6977550], MEMORY[0x1E6977530]);
    sub_1D5612368();
    sub_1D4E50004(v60, &qword_1EC7EA7D8, &unk_1D561E8B0);
    v81 = v79;
    v41 = v78;
    v45 = v112;
    v52 = v132;
    (*(v75 + 8))(v77, v81);
    v72 = 0;
  }

  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  __swift_storeEnumTagSinglePayload(v74, v72, 1, v82);
  if (__swift_getEnumTagSinglePayload(v52, 1, v134))
  {

    v83 = sub_1D560CD48();
    (*(*(v83 - 8) + 8))(v127, v83);
    (*(*(v113 - 8) + 8))(v117);
    (*(v114 + 8))(v126, v134);
    v84 = 1;
    v85 = v119;
  }

  else
  {
    v112 = v41;
    v86 = v114;
    v87 = v52;
    v88 = v134;
    (*(v114 + 16))(v108, v87, v134);
    v89 = sub_1D560CD98();
    __swift_storeEnumTagSinglePayload(v60, 1, 1, v89);
    v111 = type metadata accessor for SocialProfile(0);
    v90 = sub_1D560CD48();
    v110 = sub_1D50A2470(&qword_1EDD57510, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
    sub_1D50A2470(&qword_1EDD57518, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
    v85 = v119;
    v91 = v74;
    v92 = v45;
    v93 = v127;
    v94 = v108;
    sub_1D5612368();

    v95 = *(*(v90 - 8) + 8);
    v96 = v93;
    v45 = v92;
    v74 = v91;
    v97 = v90;
    v59 = v123;
    v95(v96, v97);
    (*(*(v113 - 8) + 8))(v117);
    sub_1D4E50004(v60, &qword_1EC7EA7D8, &unk_1D561E8B0);
    v98 = *(v86 + 8);
    v98(v94, v88);
    v99 = v88;
    v52 = v132;
    v98(v126, v99);
    v41 = v112;
    v84 = 0;
  }

  (*(v122 + 8))(v128, v133);
  (*(v121 + 8))(v131, v41);
  (*(v124 + 8))(v125, v45);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  __swift_storeEnumTagSinglePayload(v85, v84, 1, v100);
  v101 = v120;
  sub_1D4F39A1C(v130, v120, &qword_1EC7EA790, &unk_1D561FB10);
  v102 = type metadata accessor for CuratorRelationshipProvider(0);
  sub_1D4F39A1C(v59, v101 + v102[5], &qword_1EC7EA788, &unk_1D56223A0);
  sub_1D4F39A1C(v74, v101 + v102[6], &qword_1EC7EA780, &unk_1D561FB20);
  sub_1D4F39A1C(v85, v101 + v102[7], &qword_1EC7EA778, &qword_1D5622E60);
  sub_1D4E50004(v52, &qword_1EC7EA7E0, &unk_1D5623AB0);
  sub_1D4E50004(v135, &qword_1EC7EA7E8, &qword_1D561CAD8);
  sub_1D4E50004(v136, &qword_1EC7EA7F0, &unk_1D561E8C0);
  return sub_1D4E50004(v129, &off_1EC7EA7F8, &unk_1D56311B0);
}

uint64_t sub_1D50768AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v71 = a1;
  v67 = a2;
  v4 = sub_1D560CD48();
  v65 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v63 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v61 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v61 - v11;
  v13 = sub_1D5613578();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  v62 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v64 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v70 = &v61 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v73 = &v61 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v61 - v27;
  v72 = v3;
  sub_1D4F39AB0(v3, v19, &qword_1EC7EA790, &unk_1D561FB10);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v29);
  v68 = v4;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v19, &qword_1EC7EA790, &unk_1D561FB10);
    v31 = 1;
  }

  else
  {
    (*(v14 + 104))(v16, *MEMORY[0x1E6976A78], v13);
    sub_1D50A2470(&qword_1EC7EA7D0, MEMORY[0x1E6977048], MEMORY[0x1E6977028]);
    sub_1D560DA88();
    (*(v14 + 8))(v16, v13);
    (*(*(v29 - 8) + 8))(v19, v29);
    v31 = 0;
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  v69 = v28;
  __swift_storeEnumTagSinglePayload(v28, v31, 1, v32);
  v33 = type metadata accessor for CuratorRelationshipProvider(0);
  sub_1D4F39AB0(v72 + v33[5], v12, &qword_1EC7EA788, &unk_1D56223A0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v35 = __swift_getEnumTagSinglePayload(v12, 1, v34);
  v36 = v70;
  v37 = v61;
  if (v35 == 1)
  {
    sub_1D4E50004(v12, &qword_1EC7EA788, &unk_1D56223A0);
    v38 = 1;
    v39 = v73;
  }

  else
  {
    (*(v14 + 104))(v16, *MEMORY[0x1E6976A78], v13);
    sub_1D50A2470(&qword_1EC7EA7C8, MEMORY[0x1E6976DC8], MEMORY[0x1E6976DB0]);
    v39 = v73;
    sub_1D560DA88();
    (*(v14 + 8))(v16, v13);
    (*(*(v34 - 8) + 8))(v12, v34);
    v38 = 0;
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  __swift_storeEnumTagSinglePayload(v39, v38, 1, v40);
  sub_1D4F39AB0(v72 + v33[6], v37, &qword_1EC7EA780, &unk_1D561FB20);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  if (__swift_getEnumTagSinglePayload(v37, 1, v41) == 1)
  {
    sub_1D4E50004(v37, &qword_1EC7EA780, &unk_1D561FB20);
    v42 = 1;
    v43 = v68;
    v44 = MEMORY[0x1E6976A78];
  }

  else
  {
    v44 = MEMORY[0x1E6976A78];
    (*(v14 + 104))(v16, *MEMORY[0x1E6976A78], v13);
    sub_1D50A2470(&qword_1EC7EA7C0, MEMORY[0x1E6977550], MEMORY[0x1E6977530]);
    v43 = v68;
    sub_1D560DA88();
    (*(v14 + 8))(v16, v13);
    (*(*(v41 - 8) + 8))(v37, v41);
    v42 = 0;
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  __swift_storeEnumTagSinglePayload(v36, v42, 1, v45);
  v46 = v63;
  sub_1D4F39AB0(v72 + v33[7], v63, &qword_1EC7EA778, &qword_1D5622E60);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  v48 = __swift_getEnumTagSinglePayload(v46, 1, v47);
  v49 = v64;
  if (v48 == 1)
  {
    sub_1D4E50004(v46, &qword_1EC7EA778, &qword_1D5622E60);
    v50 = 1;
    v51 = v71;
  }

  else
  {
    (*(v14 + 104))(v16, *v44, v13);
    sub_1D50A2470(&qword_1EDD57510, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
    v51 = v71;
    sub_1D560DA88();
    (*(v14 + 8))(v16, v13);
    (*(*(v47 - 8) + 8))(v46, v47);
    v50 = 0;
  }

  v52 = v73;
  v53 = v43;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  __swift_storeEnumTagSinglePayload(v49, v50, 1, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A8, &unk_1D5623B40);
  v55 = *(v62 + 72);
  v56 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v57 = v49;
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1D561CA30;
  sub_1D4F39AB0(v69, v58 + v56, &qword_1EC7EA798, &unk_1D5622EF0);
  sub_1D4F39AB0(v52, v58 + v56 + v55, &qword_1EC7EA798, &unk_1D5622EF0);
  v59 = v70;
  sub_1D4F39AB0(v70, v58 + v56 + 2 * v55, &qword_1EC7EA798, &unk_1D5622EF0);
  sub_1D4F39AB0(v57, v58 + v56 + 3 * v55, &qword_1EC7EA798, &unk_1D5622EF0);
  v74 = v58;
  (*(v65 + 16))(v66, v51, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA768, &qword_1D5623380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7B0, &qword_1D5623B50);
  sub_1D4E62A60(&qword_1EC7EA7B8, &qword_1EC7EA7B0, &qword_1D5623B50, MEMORY[0x1E69E6328]);
  sub_1D5612408();
  sub_1D4E50004(v57, &qword_1EC7EA798, &unk_1D5622EF0);
  sub_1D4E50004(v59, &qword_1EC7EA798, &unk_1D5622EF0);
  sub_1D4E50004(v73, &qword_1EC7EA798, &unk_1D5622EF0);
  return sub_1D4E50004(v69, &qword_1EC7EA798, &unk_1D5622EF0);
}

void sub_1D50773C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v672 = v24;
  v673 = v23;
  v26 = v25;
  v674 = v27;
  v28 = type metadata accessor for UploadedVideo(0);
  v29 = OUTLINED_FUNCTION_22(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  v666 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB20, &unk_1D561F250);
  v32 = OUTLINED_FUNCTION_12_0(v31, v649);
  v637[0] = v33;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_2();
  v36 = OUTLINED_FUNCTION_48(v35);
  v37 = type metadata accessor for CloudUploadedVideo(v36);
  v38 = OUTLINED_FUNCTION_20(v37, &v647);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  v665 = v39;
  v40 = OUTLINED_FUNCTION_70_0();
  v41 = type metadata accessor for UploadedAudio(v40);
  v42 = OUTLINED_FUNCTION_22(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_0();
  v664 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAF8, &qword_1D563B230);
  v45 = OUTLINED_FUNCTION_12_0(v44, v648);
  v636 = v46;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_2();
  v49 = OUTLINED_FUNCTION_48(v48);
  v50 = type metadata accessor for CloudUploadedAudio(v49);
  v51 = OUTLINED_FUNCTION_20(v50, &v645);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  v663 = v52;
  v53 = OUTLINED_FUNCTION_70_0();
  v54 = type metadata accessor for TVShow(v53);
  v55 = OUTLINED_FUNCTION_22(v54);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_5_0();
  v662 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAD0, &qword_1D561F220);
  v58 = OUTLINED_FUNCTION_12_0(v57, v646);
  v634[1] = v59;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13_2();
  v62 = OUTLINED_FUNCTION_48(v61);
  v63 = type metadata accessor for CloudTVShow(v62);
  v64 = OUTLINED_FUNCTION_20(v63, &v643);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_5_0();
  v661 = v65;
  v66 = OUTLINED_FUNCTION_70_0();
  v67 = type metadata accessor for TVSeason(v66);
  v68 = OUTLINED_FUNCTION_22(v67);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5_0();
  v660 = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAA8, &unk_1D56223D0);
  v71 = OUTLINED_FUNCTION_12_0(v70, v644);
  v633[0] = v72;
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_13_2();
  v75 = OUTLINED_FUNCTION_48(v74);
  v76 = type metadata accessor for CloudTVSeason(v75);
  v77 = OUTLINED_FUNCTION_20(v76, &v641);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_5_0();
  v659 = v78;
  v79 = OUTLINED_FUNCTION_70_0();
  v80 = type metadata accessor for TVEpisode(v79);
  v81 = OUTLINED_FUNCTION_22(v80);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_5_0();
  v658 = v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA80, &qword_1D561F1F0);
  v84 = OUTLINED_FUNCTION_12_0(v83, v642);
  v631[3] = v85;
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_13_2();
  v88 = OUTLINED_FUNCTION_48(v87);
  v89 = type metadata accessor for CloudTVEpisode(v88);
  v90 = OUTLINED_FUNCTION_20(v89, v639);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_5_0();
  v657 = v91;
  OUTLINED_FUNCTION_70_0();
  v92 = sub_1D5614408();
  v93 = OUTLINED_FUNCTION_12_0(v92, v640);
  v631[0] = v94;
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_5_0();
  v656 = v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA58, &unk_1D5634110);
  v97 = OUTLINED_FUNCTION_12_0(v96, &a18);
  v630[0] = v98;
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v100);
  v101 = sub_1D560FD68();
  v102 = OUTLINED_FUNCTION_12_0(v101, &a17);
  v629[1] = v103;
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v104);
  v105 = sub_1D5613838();
  v106 = OUTLINED_FUNCTION_12_0(v105, v638);
  v628 = v107;
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v108);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB328, &unk_1D561E030);
  v110 = OUTLINED_FUNCTION_12_0(v109, v637);
  v625 = v111;
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v113);
  v114 = sub_1D5614A18();
  v115 = OUTLINED_FUNCTION_12_0(v114, &a14);
  v624[1] = v116;
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_5_0();
  v118 = OUTLINED_FUNCTION_48(v117);
  v119 = type metadata accessor for SocialProfile(v118);
  v120 = OUTLINED_FUNCTION_22(v119);
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v121);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA770, &unk_1D561F1C0);
  v123 = OUTLINED_FUNCTION_12_0(v122, &v636);
  v622[3] = v124;
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v126);
  v127 = sub_1D5611998();
  v128 = OUTLINED_FUNCTION_12_0(v127, &a11);
  v651[0] = v129;
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v130);
  v131 = sub_1D560F8B8();
  v132 = OUTLINED_FUNCTION_12_0(v131, v635);
  v622[0] = v133;
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v134);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA10, &unk_1D5623490);
  v136 = OUTLINED_FUNCTION_12_0(v135, v634);
  v620[0] = v137;
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v138);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v139);
  v140 = sub_1D5610C48();
  v141 = OUTLINED_FUNCTION_12_0(v140, &v676);
  v619 = v142;
  MEMORY[0x1EEE9AC00](v141);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v143);
  v144 = sub_1D5614B68();
  v145 = OUTLINED_FUNCTION_12_0(v144, v633);
  v617 = v146;
  MEMORY[0x1EEE9AC00](v145);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v147);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA830, &qword_1D56233C0);
  v149 = OUTLINED_FUNCTION_12_0(v148, &v632);
  v616[2] = v150;
  MEMORY[0x1EEE9AC00](v149);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v152);
  v153 = sub_1D5610908();
  v154 = OUTLINED_FUNCTION_12_0(v153, &v673);
  v616[0] = v155;
  MEMORY[0x1EEE9AC00](v154);
  OUTLINED_FUNCTION_5_0();
  v157 = OUTLINED_FUNCTION_48(v156);
  v158 = type metadata accessor for Playlist.Folder(v157);
  v159 = OUTLINED_FUNCTION_22(v158);
  MEMORY[0x1EEE9AC00](v159);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v160);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2D8, &unk_1D5630FD0);
  v162 = OUTLINED_FUNCTION_12_0(v161, v631);
  v615[0] = v163;
  MEMORY[0x1EEE9AC00](v162);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v164);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v165);
  v166 = sub_1D5611C58();
  v167 = OUTLINED_FUNCTION_12_0(v166, &v670);
  v648[0] = v168;
  MEMORY[0x1EEE9AC00](v167);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v169);
  v170 = sub_1D5614898();
  v171 = OUTLINED_FUNCTION_12_0(v170, v630);
  v614 = v172;
  MEMORY[0x1EEE9AC00](v171);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v173);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
  v175 = OUTLINED_FUNCTION_12_0(v174, v629);
  v612[3] = v176;
  MEMORY[0x1EEE9AC00](v175);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v177);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v178);
  v179 = sub_1D5610588();
  v180 = OUTLINED_FUNCTION_12_0(v179, &v666);
  v612[1] = v181;
  MEMORY[0x1EEE9AC00](v180);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v182);
  v183 = sub_1D560EEA8();
  v184 = OUTLINED_FUNCTION_12_0(v183, &v625);
  v611[3] = v185;
  MEMORY[0x1EEE9AC00](v184);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v186);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB98, &unk_1D56234C0);
  v188 = OUTLINED_FUNCTION_12_0(v187, v624);
  v611[0] = v189;
  MEMORY[0x1EEE9AC00](v188);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v190);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v191);
  v192 = sub_1D560D068();
  v193 = OUTLINED_FUNCTION_12_0(v192, &v663);
  v610[1] = v194;
  MEMORY[0x1EEE9AC00](v193);
  OUTLINED_FUNCTION_5_0();
  v196 = OUTLINED_FUNCTION_48(v195);
  v197 = type metadata accessor for MusicMovie(v196);
  v198 = OUTLINED_FUNCTION_22(v197);
  MEMORY[0x1EEE9AC00](v198);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v199);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9E8, &unk_1D561F190);
  v201 = OUTLINED_FUNCTION_12_0(v200, v622);
  v609[1] = v202;
  MEMORY[0x1EEE9AC00](v201);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v203);
  OUTLINED_FUNCTION_13_2();
  v205 = OUTLINED_FUNCTION_48(v204);
  v206 = type metadata accessor for CloudMusicMovie(v205);
  v207 = OUTLINED_FUNCTION_20(v206, &v617);
  MEMORY[0x1EEE9AC00](v207);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v208);
  v209 = sub_1D5613C48();
  v210 = OUTLINED_FUNCTION_12_0(v209, v620);
  v607[4] = v211;
  MEMORY[0x1EEE9AC00](v210);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v212);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA828, &qword_1D5623400);
  v214 = OUTLINED_FUNCTION_12_0(v213, &v618);
  v607[0] = v215;
  MEMORY[0x1EEE9AC00](v214);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v216);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v217);
  v218 = sub_1D560F478();
  v219 = OUTLINED_FUNCTION_12_0(v218, &v658);
  v606 = v220;
  MEMORY[0x1EEE9AC00](v219);
  OUTLINED_FUNCTION_5_0();
  v222 = OUTLINED_FUNCTION_48(v221);
  v223 = type metadata accessor for EditorialItem(v222);
  v224 = OUTLINED_FUNCTION_22(v223);
  MEMORY[0x1EEE9AC00](v224);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v225);
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9A0, &qword_1D561F160);
  v227 = OUTLINED_FUNCTION_12_0(v226, v616);
  v605 = v228;
  MEMORY[0x1EEE9AC00](v227);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v229);
  OUTLINED_FUNCTION_13_2();
  v231 = OUTLINED_FUNCTION_48(v230);
  v232 = type metadata accessor for CloudEditorialItem(v231);
  v233 = OUTLINED_FUNCTION_20(v232, &v613);
  MEMORY[0x1EEE9AC00](v233);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v234);
  v235 = sub_1D56141F8();
  v236 = OUTLINED_FUNCTION_12_0(v235, v615);
  v604 = v237;
  MEMORY[0x1EEE9AC00](v236);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v238);
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA820, &unk_1D5623370);
  v240 = OUTLINED_FUNCTION_12_0(v239, &v614);
  v603 = v241;
  MEMORY[0x1EEE9AC00](v240);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v242);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v243);
  v244 = sub_1D560FB08();
  v245 = OUTLINED_FUNCTION_12_0(v244, v654);
  v602 = v246;
  MEMORY[0x1EEE9AC00](v245);
  OUTLINED_FUNCTION_5_0();
  v248 = OUTLINED_FUNCTION_48(v247);
  v249 = type metadata accessor for CreditArtist(v248);
  v250 = OUTLINED_FUNCTION_22(v249);
  MEMORY[0x1EEE9AC00](v250);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v251);
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C8, &unk_1D561F130);
  v253 = OUTLINED_FUNCTION_12_0(v252, v612);
  v601 = v254;
  MEMORY[0x1EEE9AC00](v253);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v255);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v256);
  v257 = sub_1D5610F78();
  v258 = OUTLINED_FUNCTION_12_0(v257, &v652);
  v639[2] = v259;
  MEMORY[0x1EEE9AC00](v258);
  OUTLINED_FUNCTION_5_0();
  v261 = OUTLINED_FUNCTION_48(v260);
  v262 = type metadata accessor for Composer(v261);
  v263 = OUTLINED_FUNCTION_22(v262);
  MEMORY[0x1EEE9AC00](v263);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v264);
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF0F8, &unk_1D562FCC0);
  v266 = OUTLINED_FUNCTION_12_0(v265, v611);
  v600 = v267;
  MEMORY[0x1EEE9AC00](v266);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v268);
  OUTLINED_FUNCTION_13_2();
  v270 = OUTLINED_FUNCTION_48(v269);
  v271 = type metadata accessor for LegacyModelCodableComposer(v270);
  v272 = OUTLINED_FUNCTION_20(v271, &v608);
  MEMORY[0x1EEE9AC00](v272);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v273);
  v274 = sub_1D5613EF8();
  v275 = OUTLINED_FUNCTION_12_0(v274, v610);
  v599 = v276;
  MEMORY[0x1EEE9AC00](v275);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v277);
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB70, &qword_1D561F280);
  v279 = OUTLINED_FUNCTION_12_0(v278, v609);
  v595 = v280;
  MEMORY[0x1EEE9AC00](v279);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v281);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v282);
  v283 = sub_1D560F7A8();
  v284 = OUTLINED_FUNCTION_12_0(v283, v650);
  v593 = v285;
  MEMORY[0x1EEE9AC00](v284);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v286);
  sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v669 = v287;
  v670 = v288;
  MEMORY[0x1EEE9AC00](v287);
  OUTLINED_FUNCTION_5_0();
  v668 = v289;
  OUTLINED_FUNCTION_70_0();
  v290 = sub_1D5613AF8();
  v291 = OUTLINED_FUNCTION_12_0(v290, v607);
  v590 = v292;
  MEMORY[0x1EEE9AC00](v291);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v293);
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB48, &unk_1D5630FE0);
  OUTLINED_FUNCTION_4();
  v589 = v295;
  MEMORY[0x1EEE9AC00](v296);
  OUTLINED_FUNCTION_59_0();
  v299 = v297 - v298;
  MEMORY[0x1EEE9AC00](v300);
  v302 = &v588 - v301;
  v303 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  v305 = v304;
  MEMORY[0x1EEE9AC00](v306);
  OUTLINED_FUNCTION_5();
  v309 = v308 - v307;
  v310 = type metadata accessor for CloudGenericMusicItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v311);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_163_1();
  MEMORY[0x1EEE9AC00](v312);
  v314 = &v588 - v313;
  v675 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA758, &unk_1D561CA20);
  v676 = v26;
  sub_1D5610648();
  v671 = v314;
  sub_1D50A2244(v314, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v451();
      sub_1D50A2470(&qword_1EDD533D8, MEMORY[0x1E6975808], MEMORY[0x1E6975800]);
      OUTLINED_FUNCTION_18_35();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_104_7();
      v452();
      v453 = OUTLINED_FUNCTION_2_54();
      v454(v453);
      OUTLINED_FUNCTION_25_30();
      sub_1D5613F08();
      v455 = OUTLINED_FUNCTION_33_26();
      v456(v455);
      OUTLINED_FUNCTION_56_0();
      v457 = OUTLINED_FUNCTION_130_6();
      v458(v457);
      v459 = OUTLINED_FUNCTION_38_4();
      v460(v459);
      (*(v302 + 1))(v638[0], v638[1]);
      OUTLINED_FUNCTION_0_68();
      v322 = OUTLINED_FUNCTION_22_29();
      v324 = v638[2];
      v325 = v610;
      goto LABEL_24;
    case 2:
      OUTLINED_FUNCTION_123_4();
      OUTLINED_FUNCTION_165_4();
      sub_1D50A21EC(v389, v390);
      sub_1D50A2470(&qword_1EC7EF108, type metadata accessor for LegacyModelCodableComposer, &protocol conformance descriptor for LegacyModelCodableComposer);
      OUTLINED_FUNCTION_34_23();
      sub_1D5610598();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_84_6();
      OUTLINED_FUNCTION_104_7();
      v391();
      v392 = OUTLINED_FUNCTION_2_54();
      v393(v392);
      v394 = OUTLINED_FUNCTION_50_13();
      sub_1D5088664(v394, v395, v396, v397);
      v398 = OUTLINED_FUNCTION_33_26();
      v399(v398);
      OUTLINED_FUNCTION_56_0();
      v400 = OUTLINED_FUNCTION_222();
      v401(v400);
      v402 = OUTLINED_FUNCTION_38_4();
      v403(v402);
      sub_1D50A229C();
      OUTLINED_FUNCTION_0_68();
      v404 = v651;
      goto LABEL_21;
    case 3:
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v413();
      sub_1D50A2470(&qword_1EC7EB610, MEMORY[0x1E6976090], MEMORY[0x1E6976088]);
      OUTLINED_FUNCTION_18_35();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_84_6();
      OUTLINED_FUNCTION_104_7();
      v414();
      v415 = OUTLINED_FUNCTION_2_54();
      v416(v415);
      v417 = OUTLINED_FUNCTION_50_13();
      sub_1D507ADFC(v417, v418, v419, v420, v421, v422, v423, v424, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597, v598, v599);
      v425 = OUTLINED_FUNCTION_33_26();
      v426(v425);
      OUTLINED_FUNCTION_56_0();
      v427 = OUTLINED_FUNCTION_222();
      v428(v427);
      v429 = OUTLINED_FUNCTION_38_4();
      v430(v429);
      OUTLINED_FUNCTION_136();
      v431(v639[1], v640[0]);
      OUTLINED_FUNCTION_0_68();
      v404 = &v653;
      goto LABEL_21;
    case 4:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v359();
      sub_1D50A2470(&qword_1EDD53388, MEMORY[0x1E6975A30], MEMORY[0x1E6975A28]);
      OUTLINED_FUNCTION_18_35();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_104_7();
      v360();
      v361 = OUTLINED_FUNCTION_2_54();
      v362(v361);
      OUTLINED_FUNCTION_25_30();
      sub_1D5614208();
      v363 = OUTLINED_FUNCTION_33_26();
      v364(v363);
      OUTLINED_FUNCTION_56_0();
      v365 = OUTLINED_FUNCTION_130_6();
      v366(v365);
      v367 = OUTLINED_FUNCTION_38_4();
      v368(v367);
      (*(v302 + 1))(v640[2], v641);
      OUTLINED_FUNCTION_0_68();
      v322 = OUTLINED_FUNCTION_22_29();
      v324 = v642[0];
      v325 = v615;
      goto LABEL_24;
    case 5:
      OUTLINED_FUNCTION_123_4();
      OUTLINED_FUNCTION_165_4();
      sub_1D50A21EC(v497, v498);
      sub_1D50A2470(&qword_1EDD56748, type metadata accessor for CloudEditorialItem, &protocol conformance descriptor for CloudEditorialItem);
      OUTLINED_FUNCTION_34_23();
      sub_1D5610598();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_84_6();
      OUTLINED_FUNCTION_104_7();
      v499();
      v500 = OUTLINED_FUNCTION_2_54();
      v501(v500);
      v502 = OUTLINED_FUNCTION_50_13();
      (loc_1D50A02C0)(v502);
      v503 = OUTLINED_FUNCTION_33_26();
      v504(v503);
      OUTLINED_FUNCTION_56_0();
      v505 = OUTLINED_FUNCTION_222();
      v506(v505);
      v507 = OUTLINED_FUNCTION_38_4();
      v508(v507);
      OUTLINED_FUNCTION_111_6();
      sub_1D50A229C();
      OUTLINED_FUNCTION_0_68();
      v404 = &v656;
      goto LABEL_21;
    case 6:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v525();
      sub_1D50A2470(&qword_1EDD53400, MEMORY[0x1E69756E8], MEMORY[0x1E69756E0]);
      OUTLINED_FUNCTION_18_35();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_104_7();
      v526();
      v527 = OUTLINED_FUNCTION_2_54();
      v528(v527);
      OUTLINED_FUNCTION_25_30();
      sub_1D5613C58();
      v529 = OUTLINED_FUNCTION_33_26();
      v530(v529);
      OUTLINED_FUNCTION_56_0();
      v531 = OUTLINED_FUNCTION_130_6();
      v532(v531);
      v533 = OUTLINED_FUNCTION_38_4();
      v534(v533);
      (*(v302 + 1))(v642[3], v643);
      OUTLINED_FUNCTION_0_68();
      v322 = OUTLINED_FUNCTION_22_29();
      v324 = v644[0];
      v325 = v620;
      goto LABEL_24;
    case 7:
      OUTLINED_FUNCTION_123_4();
      OUTLINED_FUNCTION_165_4();
      sub_1D50A21EC(v432, v433);
      sub_1D50A2470(&qword_1EDD5C6E0, type metadata accessor for CloudMusicMovie, &protocol conformance descriptor for CloudMusicMovie);
      OUTLINED_FUNCTION_34_23();
      sub_1D5610598();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_84_6();
      OUTLINED_FUNCTION_104_7();
      v434();
      v435 = OUTLINED_FUNCTION_2_54();
      v436(v435);
      v437 = OUTLINED_FUNCTION_50_13();
      sub_1D5096F2C(v437, v438, v439, v440, v441, v442, v443, v444, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597, v598, v599);
      v445 = OUTLINED_FUNCTION_33_26();
      v446(v445);
      OUTLINED_FUNCTION_56_0();
      v447 = OUTLINED_FUNCTION_222();
      v448(v447);
      v449 = OUTLINED_FUNCTION_38_4();
      v450(v449);
      OUTLINED_FUNCTION_116_6();
      sub_1D50A229C();
      OUTLINED_FUNCTION_0_68();
      v404 = &v661;
      goto LABEL_21;
    case 8:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v560();
      sub_1D50A2470(&qword_1EDD54398, MEMORY[0x1E6974DD8], MEMORY[0x1E6974DD0]);
      OUTLINED_FUNCTION_18_35();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_104_7();
      v561();
      v562 = OUTLINED_FUNCTION_2_54();
      v563(v562);
      OUTLINED_FUNCTION_25_30();
      sub_1D560EEB8();
      v564 = OUTLINED_FUNCTION_33_26();
      v565(v564);
      OUTLINED_FUNCTION_56_0();
      v566 = OUTLINED_FUNCTION_130_6();
      v567(v566);
      v568 = OUTLINED_FUNCTION_38_4();
      v569(v568);
      (*(v302 + 1))(v644[3], v645);
      OUTLINED_FUNCTION_0_68();
      v322 = OUTLINED_FUNCTION_22_29();
      v324 = v646[0];
      v325 = &v625;
      goto LABEL_24;
    case 9:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v379();
      sub_1D50A2470(&qword_1EDD53310, MEMORY[0x1E6975CF0], MEMORY[0x1E6975CE8]);
      OUTLINED_FUNCTION_18_35();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_104_7();
      v380();
      v381 = OUTLINED_FUNCTION_2_54();
      v382(v381);
      OUTLINED_FUNCTION_25_30();
      sub_1D56148A8();
      v383 = OUTLINED_FUNCTION_33_26();
      v384(v383);
      OUTLINED_FUNCTION_56_0();
      v385 = OUTLINED_FUNCTION_130_6();
      v386(v385);
      v387 = OUTLINED_FUNCTION_38_4();
      v388(v387);
      (*(v302 + 1))(v646[1], v646[2]);
      OUTLINED_FUNCTION_0_68();
      v322 = OUTLINED_FUNCTION_22_29();
      v324 = v646[3];
      v325 = v630;
      goto LABEL_24;
    case 10:
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v545();
      sub_1D50A2470(&qword_1EC7EF350, MEMORY[0x1E69763B8], MEMORY[0x1E69763B0]);
      OUTLINED_FUNCTION_18_35();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_84_6();
      OUTLINED_FUNCTION_104_7();
      v546();
      v547 = OUTLINED_FUNCTION_2_54();
      v548(v547);
      v549 = OUTLINED_FUNCTION_50_13();
      sub_1D5091E08(v549, v550, v551, v552);
      v553 = OUTLINED_FUNCTION_33_26();
      v554(v553);
      OUTLINED_FUNCTION_56_0();
      v555 = OUTLINED_FUNCTION_222();
      v556(v555);
      v557 = OUTLINED_FUNCTION_38_4();
      v558(v557);
      OUTLINED_FUNCTION_136();
      v559(v647, v648[1]);
      OUTLINED_FUNCTION_0_68();
      v404 = &v671;
      goto LABEL_21;
    case 11:
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v349();
      sub_1D50A2470(&qword_1EDD531A0, MEMORY[0x1E6975E38], MEMORY[0x1E6975E30]);
      OUTLINED_FUNCTION_18_35();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_104_7();
      v350();
      v351 = OUTLINED_FUNCTION_2_54();
      v352(v351);
      OUTLINED_FUNCTION_25_30();
      sub_1D5614B78();
      v353 = OUTLINED_FUNCTION_33_26();
      v354(v353);
      OUTLINED_FUNCTION_56_0();
      v355 = OUTLINED_FUNCTION_130_6();
      v356(v355);
      v357 = OUTLINED_FUNCTION_38_4();
      v358(v357);
      (*(v302 + 1))(v648[3], v649[0]);
      OUTLINED_FUNCTION_0_68();
      v322 = OUTLINED_FUNCTION_22_29();
      v324 = v649[1];
      v325 = v633;
      goto LABEL_24;
    case 12:
      v369 = v619;
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v370();
      sub_1D50A2470(&qword_1EC7EF3D0, MEMORY[0x1E6975FE8], MEMORY[0x1E6975FE0]);
      OUTLINED_FUNCTION_18_35();
      OUTLINED_FUNCTION_159_4();
      v371 = OUTLINED_FUNCTION_61_8();
      v372 = v620[1];
      v373(v371);
      OUTLINED_FUNCTION_75_7();
      v374();
      OUTLINED_FUNCTION_184();
      sub_1D560F8C8();
      v375 = OUTLINED_FUNCTION_33_26();
      v376(v375);
      OUTLINED_FUNCTION_56_0();
      v377 = OUTLINED_FUNCTION_130_6();
      v378(v377);
      (*(v294 + 8))(v310, v372);
      (*(v369 + 8))(v649[2], v650[0]);
      OUTLINED_FUNCTION_0_68();
      v322 = OUTLINED_FUNCTION_22_29();
      v324 = v650[1];
      v325 = v635;
      goto LABEL_24;
    case 13:
      OUTLINED_FUNCTION_136_5();
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v509();
      sub_1D50A2470(&qword_1EDD530F0, MEMORY[0x1E69762A8], MEMORY[0x1E69762A0]);
      OUTLINED_FUNCTION_186();
      OUTLINED_FUNCTION_30_21();
      OUTLINED_FUNCTION_159_4();
      v510 = v621;
      v511 = v623;
      v512(v621, v299, v623);
      v513 = v668;
      OUTLINED_FUNCTION_75_7();
      v514();
      sub_1D50993EC(v510, v513, v672, v515, v516, v517, v518, v519, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597, v598, v599);
      v520 = OUTLINED_FUNCTION_33_26();
      v521(v520);
      OUTLINED_FUNCTION_56_0();
      v522 = OUTLINED_FUNCTION_222();
      v523(v522);
      (*(v294 + 8))(v299, v511);
      OUTLINED_FUNCTION_136();
      v524(v650[2], v651[1]);
      OUTLINED_FUNCTION_0_68();
      v404 = &a12;
LABEL_21:
      v340 = *(v404 - 32);
      goto LABEL_22;
    case 14:
      OUTLINED_FUNCTION_81_10();
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v341();
      sub_1D50A2470(&qword_1EDD52A58, MEMORY[0x1E6977468], MEMORY[0x1E6977460]);
      OUTLINED_FUNCTION_186();
      OUTLINED_FUNCTION_30_21();
      OUTLINED_FUNCTION_159_4();
      v342 = v626;
      v343(v624[0], v299, v626);
      v345 = v669;
      v344 = v670;
      OUTLINED_FUNCTION_75_7();
      v346();
      OUTLINED_FUNCTION_137();
      OUTLINED_FUNCTION_116();
      sub_1D5613848();
      (*(v344 + 8))(v309, v345);
      OUTLINED_FUNCTION_56_0();
      v347 = OUTLINED_FUNCTION_130_6();
      v348(v347);
      (*(v294 + 8))(v299, v342);
      (*(v310 + 8))(v652, v653);
      OUTLINED_FUNCTION_0_68();
      OUTLINED_FUNCTION_22_29();
      OUTLINED_FUNCTION_190_2();
      v325 = v638;
      goto LABEL_24;
    case 15:
      OUTLINED_FUNCTION_186();
      OUTLINED_FUNCTION_37_20();
      OUTLINED_FUNCTION_94_7();
      v405();
      sub_1D50A2470(&qword_1EDD53368, MEMORY[0x1E6975B30], MEMORY[0x1E6975B28]);
      OUTLINED_FUNCTION_118_5();
      v406 = v675;
      v407 = v676;
      sub_1D5610598();
      v408 = v630[0];
      (*(v630[0] + 16))(v627, v302, v655);
      OUTLINED_FUNCTION_75_7();
      v409();
      OUTLINED_FUNCTION_68_4();
      sub_1D5614418();
      v410 = OUTLINED_FUNCTION_128();
      v411(v410);
      OUTLINED_FUNCTION_24_0();
      (*(v412 + 8))(v407, v406);
      (*(v408 + 8))(v302, v655);
      (*(v299 + 8))(v654[0], v654[1]);
      OUTLINED_FUNCTION_0_68();
      v322 = OUTLINED_FUNCTION_22_29();
      v324 = v656;
      v325 = v640;
      goto LABEL_24;
    case 16:
      v326 = OUTLINED_FUNCTION_123_4();
      sub_1D50A21EC(v326, v657);
      sub_1D50A2470(&qword_1EC7EDBC0, type metadata accessor for CloudTVEpisode, &protocol conformance descriptor for CloudTVEpisode);
      OUTLINED_FUNCTION_35_22();
      sub_1D5610598();
      OUTLINED_FUNCTION_69_10();
      OUTLINED_FUNCTION_87_7();
      OUTLINED_FUNCTION_140();
      v327();
      v328 = OUTLINED_FUNCTION_14_36();
      v329(v328);
      v330 = OUTLINED_FUNCTION_86_8();
      sub_1D50821CC(v330, v331, v332, v333);
      v334 = OUTLINED_FUNCTION_90_8();
      v335(v334);
      OUTLINED_FUNCTION_24_0();
      v336 = OUTLINED_FUNCTION_184();
      v337(v336);
      v338 = OUTLINED_FUNCTION_89_0();
      v339(v338);
      OUTLINED_FUNCTION_102_7();
      sub_1D50A229C();
      OUTLINED_FUNCTION_0_68();
      v340 = v658;
      goto LABEL_22;
    case 17:
      v461 = OUTLINED_FUNCTION_123_4();
      sub_1D50A21EC(v461, v659);
      sub_1D50A2470(&qword_1EC7ECBC8, type metadata accessor for CloudTVSeason, &protocol conformance descriptor for CloudTVSeason);
      OUTLINED_FUNCTION_35_22();
      sub_1D5610598();
      OUTLINED_FUNCTION_69_10();
      OUTLINED_FUNCTION_87_7();
      OUTLINED_FUNCTION_140();
      v462();
      v463 = OUTLINED_FUNCTION_14_36();
      v464(v463);
      v465 = OUTLINED_FUNCTION_86_8();
      sub_1D507C534(v465, v466, v467, v468, v469, v470, v471, v472, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597, v598, v599);
      v473 = OUTLINED_FUNCTION_90_8();
      v474(v473);
      OUTLINED_FUNCTION_24_0();
      v475 = OUTLINED_FUNCTION_184();
      v476(v475);
      v477 = OUTLINED_FUNCTION_89_0();
      v478(v477);
      OUTLINED_FUNCTION_114_2();
      sub_1D50A229C();
      OUTLINED_FUNCTION_0_68();
      v340 = v660;
      goto LABEL_22;
    case 18:
      v535 = OUTLINED_FUNCTION_123_4();
      sub_1D50A21EC(v535, v661);
      sub_1D50A2470(&qword_1EC7ED228, type metadata accessor for CloudTVShow, &protocol conformance descriptor for CloudTVShow);
      OUTLINED_FUNCTION_35_22();
      sub_1D5610598();
      OUTLINED_FUNCTION_69_10();
      OUTLINED_FUNCTION_87_7();
      OUTLINED_FUNCTION_140();
      v536();
      v537 = OUTLINED_FUNCTION_14_36();
      v538(v537);
      OUTLINED_FUNCTION_86_8();
      sub_1D507F9A0();
      v539 = OUTLINED_FUNCTION_90_8();
      v540(v539);
      OUTLINED_FUNCTION_24_0();
      v541 = OUTLINED_FUNCTION_184();
      v542(v541);
      v543 = OUTLINED_FUNCTION_89_0();
      v544(v543);
      OUTLINED_FUNCTION_110_7();
      sub_1D50A229C();
      OUTLINED_FUNCTION_0_68();
      v340 = v662;
      goto LABEL_22;
    case 19:
      v570 = OUTLINED_FUNCTION_123_4();
      sub_1D50A21EC(v570, v663);
      sub_1D50A2470(&qword_1EC7EF390, type metadata accessor for CloudUploadedAudio, &protocol conformance descriptor for CloudUploadedAudio);
      OUTLINED_FUNCTION_35_22();
      sub_1D5610598();
      OUTLINED_FUNCTION_69_10();
      OUTLINED_FUNCTION_87_7();
      OUTLINED_FUNCTION_140();
      v571();
      v572 = OUTLINED_FUNCTION_14_36();
      v573(v572);
      v574 = OUTLINED_FUNCTION_86_8();
      sub_1D509D394(v574, v575, v576, v577, v578, v579, v580, v581, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597, v598, v599);
      v582 = OUTLINED_FUNCTION_90_8();
      v583(v582);
      OUTLINED_FUNCTION_24_0();
      v584 = OUTLINED_FUNCTION_184();
      v585(v584);
      v586 = OUTLINED_FUNCTION_89_0();
      v587(v586);
      OUTLINED_FUNCTION_109_7();
      sub_1D50A229C();
      OUTLINED_FUNCTION_0_68();
      v340 = v664;
      goto LABEL_22;
    case 20:
      v479 = OUTLINED_FUNCTION_123_4();
      sub_1D50A21EC(v479, v665);
      sub_1D50A2470(&qword_1EDD561E8, type metadata accessor for CloudUploadedVideo, &protocol conformance descriptor for CloudUploadedVideo);
      OUTLINED_FUNCTION_35_22();
      sub_1D5610598();
      OUTLINED_FUNCTION_69_10();
      OUTLINED_FUNCTION_87_7();
      OUTLINED_FUNCTION_140();
      v480();
      v481 = OUTLINED_FUNCTION_14_36();
      v482(v481);
      v483 = OUTLINED_FUNCTION_86_8();
      sub_1D508E98C(v483, v484, v485, v486, v487, v488, v489, v490, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597, v598, v599);
      v491 = OUTLINED_FUNCTION_90_8();
      v492(v491);
      OUTLINED_FUNCTION_24_0();
      v493 = OUTLINED_FUNCTION_184();
      v494(v493);
      v495 = OUTLINED_FUNCTION_89_0();
      v496(v495);
      OUTLINED_FUNCTION_113_7();
      sub_1D50A229C();
      OUTLINED_FUNCTION_0_68();
      v340 = v666;
LABEL_22:
      sub_1D50A21EC(v340, v674);
      break;
    default:
      v588 = v305;
      v315 = OUTLINED_FUNCTION_128();
      v316(v315);
      sub_1D50A2470(&qword_1EDD53418, MEMORY[0x1E6975660], MEMORY[0x1E6975658]);
      sub_1D5610598();
      OUTLINED_FUNCTION_69_10();
      v317(v299, v302, v294);
      (*(v670 + 16))(v668, v673, v669);
      sub_1D5613B08();
      v318 = OUTLINED_FUNCTION_63_1();
      v319(v318);
      OUTLINED_FUNCTION_24_0();
      (*(v320 + 8))();
      (*(v305 + 40))(v302, v294);
      OUTLINED_FUNCTION_136();
      v321(v309, v303);
      OUTLINED_FUNCTION_0_68();
      v322 = OUTLINED_FUNCTION_22_29();
      v324 = v637[2];
      v325 = v607;
LABEL_24:
      v323(v322, v324, *(v325 - 32));
      break;
  }

  type metadata accessor for GenericMusicItem(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D507A7EC(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v49 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v41 - v3;
  v5 = type metadata accessor for GenericMusicItem(0);
  v42 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v41 = &v41 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v50 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB7C8, &qword_1D561EA38);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v41 - v19;
  v48 = *(v12 + 16);
  v48(v16, v51, v11);
  v47 = sub_1D4E62A60(&qword_1EC7EB7D0, &qword_1EC7EA650, &qword_1D561C540, MEMORY[0x1E6975008]);
  sub_1D5614F98();
  v21 = *(v18 + 44);
  v22 = v54;
  sub_1D4E62A60(&qword_1EC7EA658, &qword_1EC7EA650, &qword_1D561C540, MEMORY[0x1E6975020]);
  v51 = v12 + 16;
  v45 = (v12 + 8);
  v44 = MEMORY[0x1E69E7CC0];
  v46 = v21;
  while (1)
  {
    sub_1D5615648();
    if (*&v20[v21] == v53[0])
    {
      break;
    }

    v23 = sub_1D5615688();
    sub_1D50A2244(v24, v22);
    v23(v53, 0);
    v25 = v20;
    sub_1D5615658();
    v26 = v50;
    v48(v50, v49, v11);
    v27 = sub_1D5614FC8();
    if (v27 == 2)
    {
      MEMORY[0x1EEE9AC00](v27);
      *(&v41 - 2) = v28;
      v29 = v52;
      sub_1D4F25AD0();
      v31 = v30;
      v52 = v29;
    }

    else
    {
      v31 = v27;
    }

    (*v45)(v26, v11);
    if (v31)
    {
      v32 = 1;
      v22 = v54;
    }

    else
    {
      v22 = v54;
      sub_1D50A2244(v54, v4);
      v32 = 0;
    }

    v20 = v25;
    __swift_storeEnumTagSinglePayload(v4, v32, 1, v5);
    sub_1D50A229C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v5);
    v21 = v46;
    if (EnumTagSinglePayload == 1)
    {
      sub_1D4E50004(v4, &qword_1EC7EA608, &qword_1D561C510);
    }

    else
    {
      v34 = v41;
      sub_1D50A21EC(v4, v41);
      sub_1D50A21EC(v34, v43);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F0136C();
        v44 = v38;
      }

      v35 = *(v44 + 16);
      v22 = v54;
      if (v35 >= *(v44 + 24) >> 1)
      {
        sub_1D4F0136C();
        v44 = v39;
      }

      v36 = v43;
      v37 = v44;
      *(v44 + 16) = v35 + 1;
      sub_1D50A21EC(v36, v37 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v35);
    }
  }

  sub_1D4E50004(v20, &qword_1EC7EB7C8, &qword_1D561EA38);
  return v44;
}

void sub_1D507ADFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  v127 = v22;
  v24 = v23;
  v126 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A0, &qword_1D5631010);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  v123 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  v128 = v37;
  OUTLINED_FUNCTION_70_0();
  v130 = sub_1D5610E58();
  OUTLINED_FUNCTION_4();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13();
  v119 = v41;
  OUTLINED_FUNCTION_23();
  v43 = MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_52_14(v43, v44, v45, v46, v47, v48, v49, v50, v113);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v51);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v54);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_3();
  v118 = v56;
  OUTLINED_FUNCTION_70_0();
  sub_1D5610F78();
  OUTLINED_FUNCTION_4();
  v124 = v58;
  v125 = v57;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5_0();
  v131 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v60);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_108();
  v62 = type metadata accessor for CreditArtistPropertyProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25_4();
  sub_1D56140F8();
  OUTLINED_FUNCTION_33();
  v65 = v64;
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v64);
  v69 = *(v62 + 28);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v122 = v69;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
  if (qword_1EC7E9090 != -1)
  {
    swift_once();
  }

  v74 = sub_1D560D9A8();
  __swift_project_value_buffer(v74, qword_1EC7F1B20);
  OUTLINED_FUNCTION_64_1();
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C8, &unk_1D561F130);
  sub_1D56105B8();
  sub_1D4E50004(v21, &qword_1EC7EB5C0, &unk_1D56223C0);
  v129 = v62;
  sub_1D5610658();
  v120 = sub_1D5610618();
  v117 = v80;
  v115 = sub_1D56105C8();
  sub_1D56105F8();
  OUTLINED_FUNCTION_201_1();
  v81 = sub_1D56105E8();
  v82 = sub_1D56105A8();
  if (qword_1EC7E9690 != -1)
  {
    swift_once();
  }

  v83 = qword_1EC87C670;
  if (qword_1EC87C670 >> 62)
  {
    v112 = qword_1EC87C670 & 0xFFFFFFFFFFFFFF8;
    if (qword_1EC87C670 < 0)
    {
      v112 = qword_1EC87C670;
    }

    OUTLINED_FUNCTION_186_2(v112);
    OUTLINED_FUNCTION_157_5();

    OUTLINED_FUNCTION_184_2();
    OUTLINED_FUNCTION_157_5();

    v83 = v24;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *(v20 + v129[8]) = v83;
  v84 = (v20 + v129[11]);
  *v84 = v120;
  v84[1] = v117;
  *(v20 + v129[12]) = v115;
  *(v20 + v129[13]) = v69;
  *(v20 + v129[14]) = v81;
  *(v20 + v129[15]) = v82;
  sub_1D5610648();
  sub_1D5610E68();
  OUTLINED_FUNCTION_118_5();
  sub_1D5610E38();
  v85 = *(v39 + 8);
  v85(v116, v130);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  if (__swift_getEnumTagSinglePayload(v82, 1, v86) == 1)
  {
    sub_1D4E50004(v82, &qword_1EC7EB5B8, &unk_1D56206A0);
    v87 = 1;
    v88 = v118;
  }

  else
  {
    v88 = v118;
    sub_1D5610758();
    OUTLINED_FUNCTION_15_1();
    v89 = OUTLINED_FUNCTION_214();
    v90(v89);
    v87 = 0;
  }

  __swift_storeEnumTagSinglePayload(v88, v87, 1, v65);
  v91 = v129[6];
  v92 = (v20 + v129[5]);
  sub_1D4E68940(v88, v20, &qword_1EC7E9CA0, &unk_1D561A0C0);
  sub_1D5610E68();
  sub_1D5610E18();
  OUTLINED_FUNCTION_24_4();
  v85(v119, v130);
  *v92 = v86;
  v92[1] = v119;
  sub_1D5610E68();
  v93 = sub_1D5610E48();
  v85(v119, v130);
  *(v20 + v91) = v93;
  sub_1D5610EC8();
  v94 = sub_1D5610EB8();
  OUTLINED_FUNCTION_1(v123);
  if (v98)
  {
    sub_1D4E50004(v123, &qword_1EC7EB5A0, &qword_1D5631010);
    v95 = v127;
  }

  else
  {
    OUTLINED_FUNCTION_81_10();
    sub_1D5610E98();
    OUTLINED_FUNCTION_15_1();
    (*(v96 + 8))(v123, v94);
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    OUTLINED_FUNCTION_1(v131);
    v95 = v127;
    if (v98)
    {
      sub_1D4E50004(v131, &qword_1EC7EB5A8, &unk_1D5622F00);
    }

    else
    {
      v99 = sub_1D560CD98();
      OUTLINED_FUNCTION_15_4(v114, v100, v101, v99);
      sub_1D5613EF8();
      OUTLINED_FUNCTION_147();
      sub_1D560CD48();
      OUTLINED_FUNCTION_9_42();
      sub_1D50A2470(v102, v103, MEMORY[0x1E6976F08]);
      OUTLINED_FUNCTION_88_8();
      sub_1D5612368();
      sub_1D4E50004(v114, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_15_1();
      (*(v104 + 8))(v131, v97);
    }
  }

  v105 = OUTLINED_FUNCTION_121_5();
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v121);
  sub_1D4E68940(v128, v20 + v122, &off_1EC7EB5B0, &unk_1D5632170);
  v132[3] = v129;
  v108 = sub_1D50A2470(&qword_1EC7EB5D0, type metadata accessor for CreditArtistPropertyProvider, &protocol conformance descriptor for CreditArtistPropertyProvider);
  v109 = OUTLINED_FUNCTION_181_2(v108);
  sub_1D50A2244(v20, v109);
  CreditArtist.init(propertyProvider:)(v132, v126);

  sub_1D560CD48();
  OUTLINED_FUNCTION_14();
  (*(v110 + 8))(v95);
  OUTLINED_FUNCTION_24_0();
  (*(v111 + 8))(v24, v79);
  (*(v124 + 8))(v131, v125);
  sub_1D50A229C();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D507B790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a1;
  v92 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v91 = &v73 - v3;
  v4 = sub_1D5610088();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v97 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v86 = &v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v84 = &v73 - v9;
  v10 = sub_1D5612B78();
  v89 = *(v10 - 8);
  v90 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5F0, &unk_1D5631000);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v83 = &v73 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5F8, &qword_1D561E528);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v82 = &v73 - v15;
  v87 = sub_1D5610F78();
  v85 = *(v87 - 8);
  v16 = MEMORY[0x1EEE9AC00](v87);
  v96 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v95 = &v73 - v18;
  v76 = sub_1D5613578();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v79 = &v73 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v73 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A0, &qword_1D5631010);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v81 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v78 = &v73 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v73 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v73 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = &v73 - v39;
  v41 = sub_1D5610E58();
  v93 = *(v41 - 8);
  v94 = v41;
  v42 = MEMORY[0x1EEE9AC00](v41);
  v80 = &v73 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v98 = &v73 - v44;
  if (qword_1EC7E9058 != -1)
  {
    swift_once();
  }

  v45 = sub_1D56140F8();
  sub_1D50A2470(&qword_1EC7EB600, type metadata accessor for CreditArtist, &protocol conformance descriptor for CreditArtist);
  sub_1D50A2470(&qword_1EC7EB608, type metadata accessor for CreditArtist, &protocol conformance descriptor for CreditArtist);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v37, 1, v45) == 1)
  {
    sub_1D4E50004(v37, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v46 = 1;
  }

  else
  {
    sub_1D5613F28();
    (*(*(v45 - 8) + 8))(v37, v45);
    v46 = 0;
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  __swift_storeEnumTagSinglePayload(v40, v46, 1, v47);
  CreditArtist.name.getter();
  if (qword_1EC7E9068 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D560EC28();
  sub_1D5610E28();
  v48 = sub_1D5610EB8();
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v48);
  if (qword_1EC7E9070 != -1)
  {
    swift_once();
  }

  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v27, 1, v49) != 1)
  {
    v50 = v25;
    sub_1D4F39AB0(v27, v25, &off_1EC7EB5B0, &unk_1D5632170);
    if (__swift_getEnumTagSinglePayload(v25, 1, v49) == 1)
    {
      sub_1D4E50004(v25, &off_1EC7EB5B0, &unk_1D5632170);
      v51 = 1;
      v52 = v79;
    }

    else
    {
      v53 = v75;
      v54 = v74;
      v55 = v76;
      (*(v75 + 104))(v74, *MEMORY[0x1E6976A78], v76);
      sub_1D560CD48();
      v73 = v48;
      sub_1D50A2470(&qword_1EC7EB5E0, MEMORY[0x1E6976F28], MEMORY[0x1E6976F08]);
      v52 = v79;
      v48 = v73;
      sub_1D560DA98();
      (*(v53 + 8))(v54, v55);
      (*(*(v49 - 8) + 8))(v50, v49);
      v51 = 0;
    }

    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    __swift_storeEnumTagSinglePayload(v52, v51, 1, v56);
    v57 = v78;
    sub_1D5610EA8();
    sub_1D4E50004(v34, &qword_1EC7EB5A0, &qword_1D5631010);
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v48);
    sub_1D4F39A1C(v57, v34, &qword_1EC7EB5A0, &qword_1D5631010);
  }

  (*(v93 + 16))(v80, v98, v94);
  sub_1D4F39AB0(v34, v81, &qword_1EC7EB5A0, &qword_1D5631010);
  v58 = sub_1D5610E78();
  __swift_storeEnumTagSinglePayload(v82, 1, 1, v58);
  v59 = sub_1D5610F68();
  v79 = v34;
  __swift_storeEnumTagSinglePayload(v83, 1, 1, v59);

  v60 = v95;
  sub_1D5610F08();
  type metadata accessor for CreditArtist(0);
  v83 = v27;
  v61 = v84;
  sub_1D5611A28();
  v62 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v61, 0, 1, v62);
  v63 = sub_1D5611C98();
  __swift_storeEnumTagSinglePayload(v86, 1, 1, v63);
  v64 = v88;
  sub_1D5612B38();
  v65 = v85;
  v66 = v60;
  v67 = v87;
  (*(v85 + 16))(v96, v66, v87);
  sub_1D5611A98();
  v86 = sub_1D5611A88();
  v84 = v68;
  v70 = v89;
  v69 = v90;
  v71 = v91;
  (*(v89 + 16))(v91, v64, v90);
  __swift_storeEnumTagSinglePayload(v71, 0, 1, v69);
  v82 = sub_1D5611A38();
  v81 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D50A2470(&qword_1EC7EB610, MEMORY[0x1E6976090], MEMORY[0x1E6976088]);
  sub_1D5610628();
  (*(v70 + 8))(v64, v69);
  (*(v65 + 8))(v95, v67);
  sub_1D4E50004(v79, &qword_1EC7EB5A0, &qword_1D5631010);
  (*(v93 + 8))(v98, v94);
  return sub_1D4E50004(v83, &off_1EC7EB5B0, &unk_1D5632170);
}

void sub_1D507C534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v22;
  a20 = v23;
  v325 = v24;
  v26 = v25;
  v321 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v28);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  OUTLINED_FUNCTION_22(v31);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  v320 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v34);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v319 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v37);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  v323 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v40);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECB30, &unk_1D565D0F0);
  v44 = OUTLINED_FUNCTION_22(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13();
  v324 = v45;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_135();
  v318 = v47;
  OUTLINED_FUNCTION_23();
  v49 = MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_52_14(v49, v50, v51, v52, v53, v54, v55, v56, v304);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v57);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  OUTLINED_FUNCTION_22(v60);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_13_3();
  v322 = v62;
  OUTLINED_FUNCTION_70_0();
  v63 = sub_1D56128C8();
  v64 = OUTLINED_FUNCTION_12_0(v63, &a15);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  v67 = OUTLINED_FUNCTION_22(v66);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v69);
  v70 = sub_1D5610788();
  v71 = OUTLINED_FUNCTION_12_0(v70, &v331);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v72);
  v73 = sub_1D56107C8();
  v74 = OUTLINED_FUNCTION_12_0(v73, &v330);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v76);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v80 = OUTLINED_FUNCTION_22(v79);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v84 = OUTLINED_FUNCTION_22(v83);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v86);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v87);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v90);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_13_3();
  v93 = OUTLINED_FUNCTION_48(v92);
  v326 = type metadata accessor for CloudTVSeason(v93);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_5_0();
  v327 = v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v96);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_25_4();
  v98 = type metadata accessor for TVSeasonPropertyProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_59_8();
  sub_1D56140F8();
  OUTLINED_FUNCTION_33();
  v306 = v100;
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v100);
  v104 = sub_1D560C328();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v104);
  v108 = sub_1D5610978();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v108);
  v112 = OUTLINED_FUNCTION_41_21(v98[15]);
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v104);
  v115 = OUTLINED_FUNCTION_40_5(v98[18]);
  v116 = v108;
  __swift_storeEnumTagSinglePayload(v115, v117, v118, v108);
  v119 = OUTLINED_FUNCTION_40_5(v98[19]);
  __swift_storeEnumTagSinglePayload(v119, v120, v121, v104);
  sub_1D560C0A8();
  v122 = OUTLINED_FUNCTION_20_1(&v328);
  __swift_storeEnumTagSinglePayload(v122, v123, v124, v125);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  v126 = OUTLINED_FUNCTION_20_1(&a11);
  v312 = v127;
  __swift_storeEnumTagSinglePayload(v126, v128, v129, v127);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v130 = OUTLINED_FUNCTION_20_1(&a17);
  v314 = v131;
  __swift_storeEnumTagSinglePayload(v130, v132, v133, v131);
  v134 = v98[27];
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  v317 = v134;
  v135 = OUTLINED_FUNCTION_32_7();
  __swift_storeEnumTagSinglePayload(v135, v136, v137, v138);
  if (qword_1EDD53C58 != -1)
  {
    swift_once();
  }

  v139 = sub_1D560D9A8();
  __swift_project_value_buffer(v139, qword_1EDD53C60);
  OUTLINED_FUNCTION_64_1();
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v140, v141, v142, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAA8, &unk_1D56223D0);
  sub_1D56105B8();
  sub_1D4E50004(v21, &qword_1EC7EB5C0, &unk_1D56223C0);
  sub_1D5610658();
  v144 = sub_1D5610618();
  v146 = v145;
  v147 = sub_1D56105C8();
  v148 = sub_1D56105F8();
  v149 = v98;
  v150 = sub_1D56105E8();
  v151 = sub_1D56105A8();
  *(v20 + v149[13]) = 2;
  *(v20 + v149[14]) = 2;
  v328 = v149;
  v152 = v20 + v149[16];
  *v152 = 0;
  *(v152 + 8) = 1;
  if (qword_1EC7E9378 != -1)
  {
    swift_once();
  }

  v153 = qword_1EC87C4B8;
  if (qword_1EC87C4B8 >> 62)
  {
    v303 = qword_1EC87C4B8 & 0xFFFFFFFFFFFFFF8;
    if (qword_1EC87C4B8 < 0)
    {
      v303 = qword_1EC87C4B8;
    }

    OUTLINED_FUNCTION_186_2(v303);
    OUTLINED_FUNCTION_82();

    OUTLINED_FUNCTION_184_2();
    OUTLINED_FUNCTION_82();

    v153 = v26;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v154 = v328;
  *(v20 + v328[28]) = v153;
  v155 = (v20 + v154[31]);
  *v155 = v144;
  v155[1] = v146;
  *(v20 + v154[32]) = v147;
  *(v20 + v154[33]) = v148;
  *(v20 + v154[34]) = v150;
  v156 = v154;
  *(v20 + v154[35]) = v151;
  sub_1D5610648();
  v157 = (v327 + *(v326 + 20));
  v158 = type metadata accessor for CloudTVSeason.Attributes(0);
  OUTLINED_FUNCTION_117_0();
  sub_1D4F39AB0(v159, v160, v161, v162);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v163 = OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1(v163);
  if (v267)
  {
    sub_1D4E50004(v26, &qword_1EC7EB5B8, &unk_1D56206A0);
    v166 = v308;
    v146 = v307;
  }

  else
  {
    OUTLINED_FUNCTION_150();
    sub_1D5610758();
    OUTLINED_FUNCTION_15_1();
    v164 = OUTLINED_FUNCTION_159();
    v165(v164);
    v166 = v308;
  }

  v167 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v167, v168, v169, v306);
  sub_1D4E68940(v146, v20, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v170 = *(v157 + v158[6]);
  if (v170)
  {
    v170 = sub_1D511C2A4(v170);
  }

  v171 = (v20 + v156[6]);
  v172 = v156[8];
  *(v20 + v156[5]) = v170;
  v173 = (v157 + v158[7]);
  v174 = v173[1];
  *v171 = *v173;
  v171[1] = v174;
  v175 = *(v157 + v158[9]);
  *(v20 + v172) = v175;
  sub_1D4F39AB0(v157 + v158[10], v166, &qword_1EC7EC960, &unk_1D56334C0);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v166, 1, v176);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v166, &qword_1EC7EC960, &unk_1D56334C0);
    v178 = v309;
  }

  else
  {
    OUTLINED_FUNCTION_150();
    sub_1D5610738();
    v178 = v175;
    OUTLINED_FUNCTION_15_1();
    v179 = OUTLINED_FUNCTION_143();
    v180(v179);
  }

  v181 = OUTLINED_FUNCTION_103_6();
  __swift_storeEnumTagSinglePayload(v181, v182, v183, v116);
  v184 = v156[10];
  v185 = v20 + v156[11];
  v186 = v156[12];
  OUTLINED_FUNCTION_61_2();
  sub_1D4E68940(v178, v187, v188, v189);
  *(v20 + v184) = *(v157 + v158[11]);
  v190 = v157 + v158[17];
  v191 = *v190;
  LOBYTE(v190) = v190[8];
  *v185 = v191;
  *(v185 + 8) = v190;
  *(v20 + v186) = *(v157 + v158[12]);
  if (*(v157 + v158[14]))
  {

    sub_1D501B268();
  }

  else
  {

    v192 = 0;
  }

  *(v20 + v156[17]) = v192;
  sub_1D4F39AB0(v157 + v158[15], v311, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_1(v311);
  if (v267)
  {
    sub_1D4E50004(v311, &qword_1EC7EC960, &unk_1D56334C0);
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_15_1();
    v193 = OUTLINED_FUNCTION_159();
    v194(v193);
  }

  v195 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v195, v196, v197, v116);
  OUTLINED_FUNCTION_61_2();
  v201 = sub_1D4E68940(v310, v198, v199, v200);
  OUTLINED_FUNCTION_185_2(v201);
  v202 = (v157 + v158[16]);
  v203 = *v202;
  v204 = v202[1];
  OUTLINED_FUNCTION_186();
  (*(v205 + 104))();
  OUTLINED_FUNCTION_118_5();
  OUTLINED_FUNCTION_128();
  sub_1D5610798();
  v207 = *(v186 + 8);
  v206 = v186 + 8;
  v207();
  v208 = OUTLINED_FUNCTION_68_9();
  v209(v208);
  OUTLINED_FUNCTION_61_2();
  sub_1D4E68940(v116, v210, v211, v212);
  v213 = v158[8];
  OUTLINED_FUNCTION_117_0();
  sub_1D4F39AB0(v214, v215, v216, v217);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  v218 = OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1(v218);
  if (v267)
  {
    sub_1D4E50004(v311, &qword_1EC7EC978, &unk_1D56222A0);
    v221 = 0;
    v204 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_186();
    sub_1D5610708();
    OUTLINED_FUNCTION_15_1();
    v219 = OUTLINED_FUNCTION_159();
    v220(v219);
    v221 = v206;
    sub_1D56128A8();
    OUTLINED_FUNCTION_22_13();
    OUTLINED_FUNCTION_135_6();
    OUTLINED_FUNCTION_190_2();
    v222();
  }

  v223 = v328;
  v224 = (v20 + v328[20]);
  v225 = (v20 + v328[21]);
  *v224 = v221;
  v224[1] = v204;
  v226 = v157[1];
  *v225 = *v157;
  v225[1] = v226;
  sub_1D4F39AB0(v157 + v213, v313, &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_62_17(v313);
  if (v204 == 1)
  {
    sub_1D4E50004(v313, &qword_1EC7EC978, &unk_1D56222A0);
    v203 = 0;
    v227 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_150();
    sub_1D5610708();
    OUTLINED_FUNCTION_15_1();
    v228 = OUTLINED_FUNCTION_13_8();
    v229(v228);
    v227 = v204;
    sub_1D56128B8();
    OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_136();
    OUTLINED_FUNCTION_190_2();
    v230();
  }

  v231 = v327;
  v232 = (v20 + v223[22]);
  v233 = (v20 + v223[23]);
  *v232 = v203;
  v232[1] = v227;
  v234 = (v157 + v158[13]);
  v235 = v234[1];
  *v233 = *v234;
  v233[1] = v235;
  v236 = v158[18];

  OUTLINED_FUNCTION_61_2();
  sub_1D5000C8C(v237, v238, v239, v240);
  v241 = *(v326 + 24);
  sub_1D4F39AB0(v327 + v241, v315, &qword_1EC7ECB30, &unk_1D565D0F0);
  v242 = type metadata accessor for CloudTVSeason.Relationships(0);
  if (OUTLINED_FUNCTION_72_12(v242) == 1)
  {
    v243 = &qword_1EC7ECB30;
    v244 = &unk_1D565D0F0;
    v245 = v315;
  }

  else
  {
    OUTLINED_FUNCTION_117_0();
    sub_1D4F39AB0(v246, v247, v248, v249);
    OUTLINED_FUNCTION_47_22();
    sub_1D50A229C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
    OUTLINED_FUNCTION_5_1(v227);
    if (!v267)
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_198_2();
      v251 = *(v250 - 256);
      v255 = OUTLINED_FUNCTION_15_4(v251, v252, v253, v254);
      type metadata accessor for TVEpisode(v255);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7ECBB8, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
      OUTLINED_FUNCTION_71_6();
      v231 = v327;
      sub_1D50A2470(v256, type metadata accessor for TVEpisode, v257);
      sub_1D5612368();
      sub_1D4E50004(v251, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      v258 = OUTLINED_FUNCTION_222();
      v259(v258);
      v260 = 0;
      goto LABEL_33;
    }

    v243 = &qword_1EC7ECA78;
    v244 = &qword_1D5622340;
    v245 = v227;
  }

  sub_1D4E50004(v245, v243, v244);
  v260 = 1;
LABEL_33:
  v261 = v324;
  __swift_storeEnumTagSinglePayload(v322, v260, 1, v312);
  OUTLINED_FUNCTION_61_2();
  sub_1D4E68940(v322, v262, v263, v264);
  sub_1D4F39AB0(v231 + v241, v318, &qword_1EC7ECB30, &unk_1D565D0F0);
  OUTLINED_FUNCTION_1(v318);
  if (v267)
  {
    sub_1D4E50004(v318, &qword_1EC7ECB30, &unk_1D565D0F0);
    v265 = v325;
  }

  else
  {
    sub_1D4F39AB0(v318 + *(v236 + 20), v319, &qword_1EC7EA7F0, &unk_1D561E8C0);
    OUTLINED_FUNCTION_47_22();
    sub_1D50A229C();
    v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    OUTLINED_FUNCTION_5_1(v319);
    v265 = v325;
    if (v267)
    {
      sub_1D4E50004(v319, &qword_1EC7EA7F0, &unk_1D561E8C0);
    }

    else
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_198_2();
      v269 = *(v268 - 256);
      OUTLINED_FUNCTION_15_4(v269, v270, v271, v272);
      sub_1D5613C48();
      OUTLINED_FUNCTION_147();
      sub_1D560CD48();
      OUTLINED_FUNCTION_46_15();
      sub_1D50A2470(v273, v274, MEMORY[0x1E6976DB0]);
      sub_1D5612368();
      v261 = v324;
      v275 = v269;
      v231 = v327;
      sub_1D4E50004(v275, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      (*(v276 + 8))(v319, v266);
    }
  }

  v277 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v277, v278, v279, v314);
  OUTLINED_FUNCTION_61_2();
  sub_1D4E68940(v323, v280, v281, v282);
  sub_1D4F39AB0(v231 + v241, v261, &qword_1EC7ECB30, &unk_1D565D0F0);
  OUTLINED_FUNCTION_1(v261);
  if (v267)
  {
    v283 = &qword_1EC7ECB30;
    v284 = &unk_1D565D0F0;
    v285 = v261;
LABEL_45:
    sub_1D4E50004(v285, v283, v284);
    v298 = 1;
    v296 = v320;
    goto LABEL_46;
  }

  sub_1D4F39AB0(v261 + *(v236 + 24), v305, &qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_47_22();
  sub_1D50A229C();
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
  OUTLINED_FUNCTION_1(v305);
  if (v287)
  {
    v283 = &qword_1EC7ECA58;
    v284 = &unk_1D5622310;
    v285 = v305;
    goto LABEL_45;
  }

  sub_1D560CD98();
  OUTLINED_FUNCTION_198_2();
  v289 = *(v288 - 256);
  v293 = OUTLINED_FUNCTION_15_4(v289, v290, v291, v292);
  type metadata accessor for TVShow(v293);
  OUTLINED_FUNCTION_147();
  sub_1D560CD48();
  sub_1D50A2470(&qword_1EC7ECBB0, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_76_6();
  sub_1D50A2470(v294, type metadata accessor for TVShow, v295);
  v296 = v320;
  OUTLINED_FUNCTION_88_8();
  sub_1D5612368();
  sub_1D4E50004(v289, &qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_15_1();
  (*(v297 + 8))(v305, v286);
  v298 = 0;
LABEL_46:
  __swift_storeEnumTagSinglePayload(v296, v298, 1, v316);
  sub_1D4E68940(v296, v20 + v317, &qword_1EC7ECBA0, &unk_1D56270F0);
  v330 = v328;
  v299 = sub_1D50A2470(&qword_1EC7EA388, type metadata accessor for TVSeasonPropertyProvider, &unk_1D564A220);
  v300 = OUTLINED_FUNCTION_181_2(v299);
  sub_1D50A2244(v20, v300);
  TVSeason.init(propertyProvider:)(&v329, v321);

  sub_1D560CD48();
  OUTLINED_FUNCTION_14();
  (*(v301 + 8))(v265);
  OUTLINED_FUNCTION_24_0();
  (*(v302 + 8))();
  OUTLINED_FUNCTION_114_2();
  sub_1D50A229C();
  sub_1D50A229C();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D507DB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v186 = a1;
  v182 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v181 = &v147 - v4;
  v5 = sub_1D5610088();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v180 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v174 = &v147 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v173 = &v147 - v10;
  v179 = sub_1D5612B78();
  v178 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v177 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for CloudTVSeason(0);
  v12 = MEMORY[0x1EEE9AC00](v175);
  v192 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v176 = &v147 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v153 = &v147 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v152 = &v147 - v18;
  v19 = sub_1D5613578();
  v184 = *(v19 - 8);
  v185 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v183 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v187 = &v147 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v151 = &v147 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v193 = &v147 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v149 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v195 = &v147 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v148 = &v147 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v197 = &v147 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECB30, &unk_1D565D0F0);
  v36 = MEMORY[0x1EEE9AC00](v35 - 8);
  v150 = &v147 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v196 = &v147 - v38;
  v172 = sub_1D5610788();
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v170 = &v147 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v168 = &v147 - v41;
  v169 = sub_1D56107C8();
  v167 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v166 = &v147 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v44 = MEMORY[0x1EEE9AC00](v43 - 8);
  v163 = &v147 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v147 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v49 = MEMORY[0x1EEE9AC00](v48 - 8);
  v191 = &v147 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v190 = &v147 - v51;
  v159 = sub_1D56128C8();
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v53 = &v147 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v189 = &v147 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  MEMORY[0x1EEE9AC00](v56 - 8);
  v58 = &v147 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v188 = &v147 - v60;
  v61 = type metadata accessor for CloudTVSeason.Attributes(0);
  MEMORY[0x1EEE9AC00](v61);
  v194 = (&v147 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  v165 = TVSeason.showName.getter();
  v164 = v63;
  if (qword_1EC7E8B58 != -1)
  {
    swift_once();
  }

  v64 = sub_1D56140F8();
  sub_1D50A2470(&unk_1EDD546A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  sub_1D50A2470(&qword_1EC7EA3C8, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  v65 = v2;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v58, 1, v64) == 1)
  {
    sub_1D4E50004(v58, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v66 = 1;
    v67 = v188;
  }

  else
  {
    v67 = v188;
    sub_1D5613F28();
    (*(*(v64 - 8) + 8))(v58, v64);
    v66 = 0;
  }

  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  __swift_storeEnumTagSinglePayload(v67, v66, 1, v68);
  v69 = v65;
  if (qword_1EC7E8B60 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  sub_1D560EC28();
  if (v198)
  {
    v70 = v198;
  }

  else
  {
    v70 = MEMORY[0x1E69E7CC0];
  }

  v162 = sub_1D511C730(v70);

  v71 = v163;
  if (qword_1EC7E8B68 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v161 = v198;
  v160 = v199;
  if (qword_1EC7E8BC8 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v72 = v69;
  if (qword_1EC7E8BD8 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  sub_1D56128D8();
  v73 = v189;
  sub_1D5612898();
  (*(v158 + 8))(v53, v159);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  __swift_storeEnumTagSinglePayload(v73, 0, 1, v74);
  if (qword_1EC7E8B78 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D560EC28();
  v159 = v198;
  v75 = v190;
  if (qword_1EC7E8B80 != -1)
  {
    swift_once();
  }

  v76 = sub_1D5610978();
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v47, 1, v76) == 1)
  {
    sub_1D4E50004(v47, &qword_1EC7EAC98, &unk_1D561DA80);
    v77 = 1;
  }

  else
  {
    sub_1D5610918();
    (*(*(v76 - 8) + 8))(v47, v76);
    v77 = 0;
  }

  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v75, v77, 1, v78);
  sub_1D4F849F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  sub_1D560EC28();

  v158 = v198;
  if (qword_1EC7E8B90 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D560EC28();
  v154 = v198;
  v157 = TVSeason.title.getter();
  v156 = v79;
  v80 = v191;
  if (qword_1EC7E8BB8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBC0, &qword_1D562BF20);
  sub_1D560EC28();
  sub_1D501B598();
  v155 = v81;

  if (qword_1EC7E8BF0 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v71, 1, v76) == 1)
  {
    sub_1D4E50004(v71, &qword_1EC7EAC98, &unk_1D561DA80);
    v82 = 1;
  }

  else
  {
    sub_1D5610918();
    (*(*(v76 - 8) + 8))(v71, v76);
    v82 = 0;
  }

  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v80, v82, 1, v83);
  v84 = v166;
  sub_1D56107A8();
  if (qword_1EC7E8BC0 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  v85 = v168;
  sub_1D560EC28();
  v86 = v171;
  v87 = v170;
  v88 = v172;
  (*(v171 + 104))(v170, *MEMORY[0x1E6975DC8], v172);
  v89 = v84;
  v163 = sub_1D56107B8();
  v91 = v90;
  (*(v86 + 8))(v87, v88);
  sub_1D4E50004(v85, &qword_1EC7EA3B8, &unk_1D561E370);
  (*(v167 + 8))(v89, v169);
  if (qword_1EC7E8B88 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (v199)
  {
    v92 = 0;
  }

  else
  {
    v92 = v198;
  }

  if (qword_1EC7E8BE8 != -1)
  {
    swift_once();
  }

  sub_1D560C0A8();
  v93 = v194;
  sub_1D560EC28();
  if (v154)
  {
    v94 = v154;
  }

  else
  {
    v94 = MEMORY[0x1E69E7CC0];
  }

  v95 = v164;
  *v93 = v165;
  v93[1] = v95;
  sub_1D4F39A1C(v188, v93 + v61[5], &qword_1EC7EB5B8, &unk_1D56206A0);
  *(v93 + v61[6]) = v162;
  v96 = (v93 + v61[7]);
  v97 = v160;
  *v96 = v161;
  v96[1] = v97;
  sub_1D4F39A1C(v189, v93 + v61[8], &qword_1EC7EC978, &unk_1D56222A0);
  *(v93 + v61[9]) = v159;
  sub_1D4F39A1C(v190, v93 + v61[10], &qword_1EC7EC960, &unk_1D56334C0);
  *(v93 + v61[11]) = v158;
  *(v93 + v61[12]) = v94;
  v98 = (v93 + v61[13]);
  v99 = v156;
  *v98 = v157;
  v98[1] = v99;
  *(v93 + v61[14]) = v155;
  sub_1D4F39A1C(v191, v93 + v61[15], &qword_1EC7EC960, &unk_1D56334C0);
  v100 = (v93 + v61[16]);
  *v100 = v163;
  v100[1] = v91;
  v101 = v93 + v61[17];
  *v101 = v92;
  v101[8] = 0;
  v102 = type metadata accessor for CloudTVSeason.Relationships(0);
  __swift_storeEnumTagSinglePayload(v196, 1, 1, v102);
  if (qword_1EC7E8BF8 != -1)
  {
    swift_once();
  }

  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  sub_1D560EC28();
  v104 = v72;
  if (qword_1EC7E8C00 != -1)
  {
    swift_once();
  }

  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  sub_1D560EC28();
  v106 = v193;
  if (qword_1EC7E8C08 != -1)
  {
    swift_once();
  }

  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v197, 1, v103) != 1 || __swift_getEnumTagSinglePayload(v195, 1, v105) != 1 || __swift_getEnumTagSinglePayload(v106, 1, v107) != 1)
  {
    v191 = v102;
    v108 = v148;
    sub_1D4F39AB0(v197, v148, &qword_1EC7ECBA8, &unk_1D56223B0);
    if (__swift_getEnumTagSinglePayload(v108, 1, v103) == 1)
    {
      sub_1D4E50004(v108, &qword_1EC7ECBA8, &unk_1D56223B0);
      v109 = 1;
      v110 = v152;
      v111 = v187;
    }

    else
    {
      v113 = v183;
      v112 = v184;
      v114 = v185;
      (*(v184 + 104))(v183, *MEMORY[0x1E6976A78], v185);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7ECBB8, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
      v111 = v187;
      sub_1D560DA98();
      (*(v112 + 8))(v113, v114);
      (*(*(v103 - 8) + 8))(v108, v103);
      v109 = 0;
      v110 = v152;
    }

    v115 = v151;
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
    __swift_storeEnumTagSinglePayload(v111, v109, 1, v116);
    v117 = v149;
    sub_1D4F39AB0(v195, v149, &qword_1EC7EA788, &unk_1D56223A0);
    if (__swift_getEnumTagSinglePayload(v117, 1, v105) == 1)
    {
      sub_1D4E50004(v117, &qword_1EC7EA788, &unk_1D56223A0);
      v118 = 1;
    }

    else
    {
      v120 = v183;
      v119 = v184;
      v121 = v185;
      (*(v184 + 104))(v183, *MEMORY[0x1E6976A78], v185);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7EA7C8, MEMORY[0x1E6976DC8], MEMORY[0x1E6976DB0]);
      sub_1D560DA98();
      (*(v119 + 8))(v120, v121);
      (*(*(v105 - 8) + 8))(v117, v105);
      v118 = 0;
    }

    v122 = v153;
    v123 = v193;
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    __swift_storeEnumTagSinglePayload(v110, v118, 1, v124);
    sub_1D4F39AB0(v123, v115, &qword_1EC7ECBA0, &unk_1D56270F0);
    if (__swift_getEnumTagSinglePayload(v115, 1, v107) == 1)
    {
      v125 = v196;
      sub_1D4E50004(v196, &qword_1EC7ECB30, &unk_1D565D0F0);
      sub_1D4E50004(v115, &qword_1EC7ECBA0, &unk_1D56270F0);
      v126 = 1;
    }

    else
    {
      v128 = v183;
      v127 = v184;
      v129 = v185;
      (*(v184 + 104))(v183, *MEMORY[0x1E6976A78], v185);
      sub_1D560CD48();
      sub_1D50A2470(&qword_1EC7ECBB0, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
      sub_1D560DA98();
      (*(v127 + 8))(v128, v129);
      v125 = v196;
      sub_1D4E50004(v196, &qword_1EC7ECB30, &unk_1D565D0F0);
      (*(*(v107 - 8) + 8))(v115, v107);
      v126 = 0;
    }

    v130 = v191;
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    __swift_storeEnumTagSinglePayload(v122, v126, 1, v131);
    v132 = v150;
    sub_1D4F39A1C(v187, v150, &qword_1EC7ECA78, &qword_1D5622340);
    sub_1D4F39A1C(v110, v132 + *(v130 + 20), &qword_1EC7EA7F0, &unk_1D561E8C0);
    sub_1D4F39A1C(v122, v132 + *(v130 + 24), &qword_1EC7ECA58, &unk_1D5622310);
    __swift_storeEnumTagSinglePayload(v132, 0, 1, v130);
    sub_1D4F39A1C(v132, v125, &qword_1EC7ECB30, &unk_1D565D0F0);
  }

  v134 = *v104;
  v133 = v104[1];
  v135 = v175;
  v136 = v176;
  sub_1D50A2244(v194, &v176[*(v175 + 20)]);
  sub_1D4F39AB0(v196, v136 + v135[6], &qword_1EC7ECB30, &unk_1D565D0F0);
  *v136 = v134;
  v136[1] = v133;
  *(v136 + v135[7]) = 1;
  *(v136 + v135[8]) = 1;
  type metadata accessor for TVSeason(0);

  v137 = v173;
  sub_1D5611A28();
  v138 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v137, 0, 1, v138);
  v139 = sub_1D5611C98();
  __swift_storeEnumTagSinglePayload(v174, 1, 1, v139);
  v140 = v177;
  sub_1D5612B38();
  sub_1D50A2244(v136, v192);
  sub_1D5611A98();
  v141 = sub_1D5611A88();
  v190 = v142;
  v191 = v141;
  v143 = v178;
  v144 = v181;
  v145 = v179;
  (*(v178 + 16))(v181, v140, v179);
  __swift_storeEnumTagSinglePayload(v144, 0, 1, v145);
  v189 = sub_1D5611A38();
  v188 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D50A2470(&qword_1EC7ECBC8, type metadata accessor for CloudTVSeason, &protocol conformance descriptor for CloudTVSeason);
  sub_1D5610628();
  (*(v143 + 8))(v140, v145);
  sub_1D50A229C();
  sub_1D4E50004(v196, &qword_1EC7ECB30, &unk_1D565D0F0);
  sub_1D50A229C();
  sub_1D4E50004(v197, &qword_1EC7ECBA8, &unk_1D56223B0);
  sub_1D4E50004(v193, &qword_1EC7ECBA0, &unk_1D56270F0);
  return sub_1D4E50004(v195, &qword_1EC7EA788, &unk_1D56223A0);
}

void sub_1D507F9A0()
{
  OUTLINED_FUNCTION_47();
  v229 = v2;
  v230 = v1;
  v4 = v3;
  v228 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED190, &qword_1D5623F30);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v227 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v231 = v17;
  OUTLINED_FUNCTION_70_0();
  sub_1D5610788();
  OUTLINED_FUNCTION_4();
  v225 = v19;
  v226 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_0();
  v223 = v20;
  OUTLINED_FUNCTION_70_0();
  v224 = sub_1D56107C8();
  OUTLINED_FUNCTION_4();
  v222 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_0();
  v221 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v28 = OUTLINED_FUNCTION_22(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v32 = OUTLINED_FUNCTION_22(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v38);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  v41 = OUTLINED_FUNCTION_48(v40);
  v235 = type metadata accessor for CloudTVShow(v41);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_0();
  v236 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v44);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v206 - v46;
  v48 = type metadata accessor for TVShowPropertyProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_25_4();
  sub_1D56140F8();
  OUTLINED_FUNCTION_33();
  v208 = v50;
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v50);
  v54 = v48[9];
  v55 = sub_1D5610978();
  v210 = v54;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v55);
  v59 = v48[15];
  v60 = sub_1D560C0A8();
  v211 = v59;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v60);
  v213 = v48[19];
  OUTLINED_FUNCTION_33();
  v64 = v55;
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v55);
  v68 = v48[20];
  sub_1D560C328();
  v216 = v68;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
  v215 = v48[21];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v60);
  v76 = v48[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  v220 = v76;
  OUTLINED_FUNCTION_33();
  v219 = v77;
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v77);
  if (qword_1EC7E95E8 != -1)
  {
    swift_once();
  }

  v81 = sub_1D560D9A8();
  __swift_project_value_buffer(v81, qword_1EC7F5D98);
  OUTLINED_FUNCTION_64_1();
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAD0, &qword_1D561F220);
  sub_1D56105B8();
  sub_1D4E50004(v47, &qword_1EC7EB5C0, &unk_1D56223C0);
  v234 = v48;
  sub_1D5610658();
  v87 = sub_1D5610618();
  v89 = v88;
  v90 = sub_1D56105C8();
  v91 = sub_1D56105F8();
  v92 = sub_1D56105E8();
  v232 = v86;
  v233 = v4;
  v93 = sub_1D56105A8();
  if (qword_1EC7E9800 != -1)
  {
    swift_once();
  }

  v94 = qword_1EC87C740;
  if (qword_1EC87C740 >> 62)
  {
    v204 = qword_1EC87C740 & 0xFFFFFFFFFFFFFF8;
    if (qword_1EC87C740 < 0)
    {
      v204 = qword_1EC87C740;
    }

    OUTLINED_FUNCTION_138_6(v204);
    sub_1D560CDE8();

    v205 = OUTLINED_FUNCTION_184_2();

    v94 = v205;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v96 = v233;
  v95 = v234;
  *(v0 + v234[24]) = v94;
  v97 = (v0 + v95[27]);
  *v97 = v87;
  v97[1] = v89;
  *(v0 + v95[28]) = v90;
  *(v0 + v95[29]) = v91;
  *(v0 + v95[30]) = v92;
  v98 = v95;
  *(v0 + v95[31]) = v93;
  v99 = v236;
  sub_1D5610648();
  v100 = v99 + v235[5];
  OUTLINED_FUNCTION_117_0();
  sub_1D4F39AB0(v101, v102, v103, v104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v105 = OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1(v105);
  if (v179)
  {
    sub_1D4E50004(v96, &qword_1EC7EB5B8, &unk_1D56206A0);
    v108 = v212;
    v91 = v209;
  }

  else
  {
    OUTLINED_FUNCTION_150();
    sub_1D5610758();
    OUTLINED_FUNCTION_15_1();
    v106 = OUTLINED_FUNCTION_159();
    v107(v106);
    v108 = v212;
  }

  v109 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v208);
  sub_1D4E68940(v91, v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v112 = type metadata accessor for CloudTVShow.Attributes(0);
  v113 = *(v100 + v112[5]);
  if (v113)
  {
    v113 = sub_1D511C2A4(v113);
  }

  *(v0 + v98[5]) = v113;
  v114 = *(v100 + v112[6]);
  if (v114)
  {
    v114 = sub_1D5259FF8(v114);
  }

  v115 = v98[7];
  *(v0 + v98[6]) = v114;
  *(v0 + v115) = *(v100 + v112[7]);
  v116 = *(v100 + v112[8]);

  if (v116)
  {
    v117 = sub_1D50C4BD4(v116);
  }

  else
  {
    v117 = 0;
  }

  *(v0 + v98[8]) = v117;
  sub_1D4F39AB0(v100 + v112[9], v108, &qword_1EC7EC960, &unk_1D56334C0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  v119 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v119, v120, v118);
  if (v179)
  {
    sub_1D4E50004(v108, &qword_1EC7EC960, &unk_1D56334C0);
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_24_0();
    v121 = OUTLINED_FUNCTION_20_5();
    v122(v121);
  }

  v123 = OUTLINED_FUNCTION_121_5();
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v64);
  v126 = v98[10];
  v127 = v0 + v98[11];
  v128 = v98[12];
  v129 = v98[13];
  v130 = v98[14];
  OUTLINED_FUNCTION_79_4();
  sub_1D4E68940(v131, v132, v133, v134);
  *(v0 + v126) = *(v100 + v112[10]);
  v135 = (v100 + v112[11]);
  v136 = *v135;
  LOBYTE(v135) = *(v135 + 8);
  *v127 = v136;
  *(v127 + 8) = v135;
  *(v0 + v128) = *(v100 + v112[12]);
  *(v0 + v129) = *(v100 + v112[13]);
  *(v0 + v130) = *(v100 + v112[14]);

  OUTLINED_FUNCTION_79_4();
  sub_1D5000C8C(v137, v138, v139, v140);
  v141 = *(v100 + v112[16]);
  if (v141)
  {
    v141 = sub_1D54FEF40(v141);
  }

  v142 = v214;
  v143 = v234;
  v144 = (v0 + v234[17]);
  *(v0 + v234[16]) = v141;
  v145 = (v100 + v112[17]);
  v146 = v145[1];
  *v144 = *v145;
  v144[1] = v146;
  v147 = *(v100 + v112[18]);

  if (v147)
  {
    v148 = sub_1D50C4BD4(v147);
  }

  else
  {
    v148 = 0;
  }

  v149 = v217;
  *(v0 + v143[18]) = v148;
  sub_1D4F39AB0(v100 + v112[19], v142, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_57(v142, 1, v118);
  if (v179)
  {
    sub_1D4E50004(v142, &qword_1EC7EC960, &unk_1D56334C0);
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_24_0();
    (*(v150 + 8))(v142, v118);
  }

  v151 = OUTLINED_FUNCTION_121_5();
  __swift_storeEnumTagSinglePayload(v151, v152, v153, v64);
  OUTLINED_FUNCTION_79_4();
  sub_1D4E68940(v149, v154, v155, v156);
  v157 = v221;
  sub_1D56107A8();
  v159 = v225;
  v158 = v226;
  v160 = v223;
  (*(v225 + 104))(v223, *MEMORY[0x1E6975DC8], v226);
  v161 = v218;
  OUTLINED_FUNCTION_71();
  sub_1D5610798();
  (*(v159 + 8))(v160, v158);
  (*(v222 + 8))(v157, v224);
  OUTLINED_FUNCTION_79_4();
  sub_1D4E68940(v161, v162, v163, v164);
  OUTLINED_FUNCTION_79_4();
  sub_1D5000C8C(v165, v166, v167, v168);
  v169 = v227;
  sub_1D4F39AB0(v236 + v235[6], v227, &qword_1EC7ED190, &qword_1D5623F30);
  type metadata accessor for CloudTVShow.Relationships(0);
  v170 = OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_57(v170, v171, v172);
  if (v179)
  {
    sub_1D4E50004(v169, &qword_1EC7ED190, &qword_1D5623F30);
    v173 = v233;
LABEL_34:
    v190 = v234;
    v187 = v230;
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_117_0();
  sub_1D4F39AB0(v174, v175, v176, v177);
  sub_1D50A229C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  v178 = OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1(v178);
  if (v179)
  {
    sub_1D4E50004(v157, &qword_1EC7ECD90, &unk_1D5622F80);
    v173 = v233;
    goto LABEL_34;
  }

  v180 = sub_1D560CD98();
  v181 = v207;
  v184 = OUTLINED_FUNCTION_15_4(v207, v182, v183, v180);
  type metadata accessor for TVSeason(v184);
  sub_1D560CD48();
  sub_1D50A2470(&qword_1EC7ECC90, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_36_11();
  sub_1D50A2470(v185, type metadata accessor for TVSeason, v186);
  v187 = v230;
  sub_1D5612368();
  sub_1D4E50004(v181, &qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_15_1();
  v188 = OUTLINED_FUNCTION_159();
  v189(v188);
  v173 = v233;
  v190 = v234;
LABEL_35:
  v191 = v231;
  v192 = OUTLINED_FUNCTION_121_5();
  __swift_storeEnumTagSinglePayload(v192, v193, v194, v219);
  OUTLINED_FUNCTION_79_4();
  sub_1D4E68940(v191, v195, v196, v197);
  v198 = *(v236 + v235[8]);
  OUTLINED_FUNCTION_175_1();
  *(v0 + v190[23]) = v199;
  v237[3] = v190;
  v200 = sub_1D50A2470(&qword_1EC7ED200, type metadata accessor for TVShowPropertyProvider, &unk_1D5673C50);
  v201 = OUTLINED_FUNCTION_181_2(v200);
  sub_1D50A2244(v0, v201);
  sub_1D4E67688(v198);
  TVShow.init(propertyProvider:)(v237, v228);

  sub_1D560CD48();
  OUTLINED_FUNCTION_14();
  (*(v202 + 8))(v187);
  OUTLINED_FUNCTION_24_0();
  (*(v203 + 8))(v173);
  OUTLINED_FUNCTION_110_7();
  sub_1D50A229C();
  sub_1D50A229C();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50808C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v125 = a1;
  v161 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v160 = &v118 - v5;
  v6 = sub_1D5610088();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v159 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v154 = &v118 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v153 = &v118 - v11;
  v12 = sub_1D5612B78();
  v157 = *(v12 - 8);
  v158 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v156 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for CloudTVShow(0);
  v14 = MEMORY[0x1EEE9AC00](v155);
  v164 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v152 = &v118 - v16;
  v124 = sub_1D5613578();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v122 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v150 = &v118 - v19;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  v119 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v120 = &v118 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED190, &qword_1D5623F30);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v121 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v165 = &v118 - v24;
  v148 = sub_1D5610788();
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v146 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v144 = &v118 - v27;
  v145 = sub_1D56107C8();
  v143 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v142 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v118 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v149 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v118 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v163 = &v118 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v162 = &v118 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v118 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v46 = &v118 - v45;
  v47 = type metadata accessor for CloudTVShow.Attributes(0);
  MEMORY[0x1EEE9AC00](v47);
  v166 = &v118 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC7E9538 != -1)
  {
    swift_once();
  }

  v49 = sub_1D56140F8();
  sub_1D50A2470(&qword_1EC7EA688, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  v50 = sub_1D50A2470(&qword_1EC7EC4A0, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v43, 1, v49) == 1)
  {
    sub_1D4E50004(v43, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v51 = 1;
  }

  else
  {
    sub_1D5613F28();
    (*(*(v49 - 8) + 8))(v43, v49);
    v51 = 0;
  }

  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  __swift_storeEnumTagSinglePayload(v46, v51, 1, v52);
  if (qword_1EC7E9540 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  sub_1D560EC28();
  v53 = MEMORY[0x1E69E7CC0];
  if (v167)
  {
    v54 = v167;
  }

  else
  {
    v54 = MEMORY[0x1E69E7CC0];
  }

  v140 = sub_1D511C730(v54);

  if (qword_1EC7E9598 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED208, &unk_1D5623F80);
  sub_1D560EC28();
  if (v167)
  {
    v139 = sub_1D525AA6C(v167);
  }

  else
  {
    v139 = 0;
  }

  if (qword_1EC7E9548 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D560EC28();
  v138 = v167;
  if (qword_1EC7E95A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED210, &unk_1D5637540);
  sub_1D560EC28();
  if (v167)
  {
    v55 = v167;
  }

  else
  {
    v55 = v53;
  }

  v137 = sub_1D50C4F58(v55);

  if (qword_1EC7E9550 != -1)
  {
    swift_once();
  }

  v141 = v46;
  v56 = sub_1D5610978();
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v36, 1, v56) == 1)
  {
    sub_1D4E50004(v36, &qword_1EC7EAC98, &unk_1D561DA80);
    v57 = 1;
    v58 = v162;
  }

  else
  {
    v58 = v162;
    sub_1D5610918();
    (*(*(v56 - 8) + 8))(v36, v56);
    v57 = 0;
  }

  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v58, v57, 1, v59);
  sub_1D4F84AE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  sub_1D560EC28();

  v136 = v167;
  if (qword_1EC7E9558 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v60 = v167;
  if (v168)
  {
    v60 = 0;
  }

  v135 = v60;
  v61 = v149;
  if (qword_1EC7E9560 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D560EC28();
  v134 = v167;
  if (qword_1EC7E9568 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v128 = v167;
  if (qword_1EC7E9570 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  LODWORD(v127) = v167;
  if (qword_1EC7E95B0 != -1)
  {
    swift_once();
  }

  v62 = v31;
  v132 = sub_1D560C0A8();
  sub_1D560EC28();
  if (qword_1EC7E9578 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED218, &qword_1D5623F90);
  sub_1D560EC28();
  v63 = MEMORY[0x1E69E7CC0];
  if (v167)
  {
    v64 = v167;
  }

  else
  {
    v64 = MEMORY[0x1E69E7CC0];
  }

  v133 = sub_1D54FF0E8(v64);

  v131 = TVShow.name.getter();
  v130 = v65;
  if (qword_1EC7E95B8 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (v167)
  {
    v66 = v167;
  }

  else
  {
    v66 = v63;
  }

  v129 = sub_1D50C4F58(v66);

  if (qword_1EC7E95C0 != -1)
  {
    swift_once();
  }

  v67 = v3;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v61, 1, v56) == 1)
  {
    sub_1D4E50004(v61, &qword_1EC7EAC98, &unk_1D561DA80);
    v68 = 1;
    v69 = v163;
  }

  else
  {
    v69 = v163;
    sub_1D5610918();
    (*(*(v56 - 8) + 8))(v61, v56);
    v68 = 0;
  }

  v149 = v62;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v69, v68, 1, v70);
  v126 = v128 & 1;
  v128 = v127 & 1;
  v71 = v142;
  sub_1D56107A8();
  if (qword_1EC7E9588 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  v72 = v144;
  v73 = v67;
  sub_1D560EC28();
  v74 = v147;
  v75 = v146;
  v76 = v148;
  (*(v147 + 104))(v146, *MEMORY[0x1E6975DC8], v148);
  v77 = v71;
  v78 = sub_1D56107B8();
  v127 = v79;
  (*(v74 + 8))(v75, v76);
  sub_1D4E50004(v72, &qword_1EC7EA3B8, &unk_1D561E370);
  (*(v143 + 8))(v77, v145);
  v80 = v50;
  if (qword_1EC7E9590 != -1)
  {
    swift_once();
  }

  v81 = v166;
  sub_1D560EC28();
  if (v134)
  {
    v82 = v134;
  }

  else
  {
    v82 = MEMORY[0x1E69E7CC0];
  }

  sub_1D4F39A1C(v141, v81, &qword_1EC7EB5B8, &unk_1D56206A0);
  *(v81 + v47[5]) = v140;
  *(v81 + v47[6]) = v139;
  *(v81 + v47[7]) = v138;
  *(v81 + v47[8]) = v137;
  sub_1D4F39A1C(v162, v81 + v47[9], &qword_1EC7EC960, &unk_1D56334C0);
  *(v81 + v47[10]) = v136;
  v83 = v81 + v47[11];
  *v83 = v135;
  *(v83 + 8) = 0;
  *(v81 + v47[12]) = v82;
  *(v81 + v47[13]) = v126;
  *(v81 + v47[14]) = v128;
  sub_1D4F39A1C(v149, v81 + v47[15], &unk_1EC7E9CA8, &unk_1D561D1D0);
  *(v81 + v47[16]) = v133;
  v84 = (v81 + v47[17]);
  v85 = v130;
  *v84 = v131;
  v84[1] = v85;
  *(v81 + v47[18]) = v129;
  sub_1D4F39A1C(v163, v81 + v47[19], &qword_1EC7EC960, &unk_1D56334C0);
  v86 = (v81 + v47[20]);
  v87 = v127;
  *v86 = v78;
  v86[1] = v87;
  v88 = type metadata accessor for CloudTVShow.Relationships(0);
  v89 = v165;
  __swift_storeEnumTagSinglePayload(v165, 1, 1, v88);
  if (qword_1EC7E95C8 != -1)
  {
    swift_once();
  }

  v90 = v150;
  v91 = v151;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v90, 1, v91) == 1)
  {
    sub_1D4E50004(v90, &qword_1EC7ED1F8, &qword_1D5634780);
  }

  else
  {
    v92 = v119;
    v93 = v120;
    (*(v119 + 32))(v120, v90, v91);
    v94 = *MEMORY[0x1E6976A78];
    v162 = v88;
    v95 = v123;
    v96 = *(v123 + 104);
    v97 = v122;
    v163 = v80;
    v98 = v124;
    v96(v122, v94, v124);
    sub_1D560CD48();
    sub_1D50A2470(&qword_1EC7ECC90, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
    v99 = v121;
    sub_1D560DA98();
    v100 = v98;
    v89 = v165;
    (*(v95 + 8))(v97, v100);
    (*(v92 + 8))(v93, v91);
    sub_1D4E50004(v89, &qword_1EC7ED190, &qword_1D5623F30);
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
    __swift_storeEnumTagSinglePayload(v99, 0, 1, v101);
    __swift_storeEnumTagSinglePayload(v99, 0, 1, v162);
    sub_1D4F39A1C(v99, v89, &qword_1EC7ED190, &qword_1D5623F30);
  }

  type metadata accessor for TVShow(0);
  sub_1D50A2470(&qword_1EC7ED220, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  v102 = sub_1D560CBD8();
  if (v102 <= 1)
  {
    v103 = 1;
  }

  else
  {
    v103 = v102;
  }

  v105 = *v73;
  v104 = v73[1];
  v106 = v155;
  v107 = v152;
  sub_1D50A2244(v166, &v152[*(v155 + 20)]);
  sub_1D4F39AB0(v89, v107 + v106[6], &qword_1EC7ED190, &qword_1D5623F30);
  *v107 = v105;
  v107[1] = v104;
  *(v107 + v106[7]) = 1;
  *(v107 + v106[8]) = v103;

  v108 = v153;
  sub_1D5611A28();
  v109 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v108, 0, 1, v109);
  v110 = sub_1D5611C98();
  __swift_storeEnumTagSinglePayload(v154, 1, 1, v110);
  v111 = v156;
  sub_1D5612B38();
  sub_1D50A2244(v107, v164);
  sub_1D5611A98();
  v112 = sub_1D5611A88();
  v162 = v113;
  v163 = v112;
  v115 = v157;
  v114 = v158;
  v116 = v160;
  (*(v157 + 16))(v160, v111, v158);
  __swift_storeEnumTagSinglePayload(v116, 0, 1, v114);
  v154 = sub_1D5611A38();
  v153 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D50A2470(&qword_1EC7ED228, type metadata accessor for CloudTVShow, &protocol conformance descriptor for CloudTVShow);
  sub_1D5610628();
  (*(v115 + 8))(v111, v114);
  sub_1D50A229C();
  sub_1D4E50004(v165, &qword_1EC7ED190, &qword_1D5623F30);
  return sub_1D50A229C();
}

uint64_t sub_1D50821CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v638 = a3;
  v639 = a2;
  v629 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB110, &qword_1D561DEB0);
  OUTLINED_FUNCTION_12_0(v8, &v661);
  v601 = v9;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v11);
  v12 = sub_1D560FDC8();
  v13 = OUTLINED_FUNCTION_12_0(v12, &v663);
  *&v647 = v14;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v597 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v597 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD80, &qword_1D5622F70);
  v31 = OUTLINED_FUNCTION_22(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_163_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_25_4();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v37);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v40);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  v43 = (v597 - v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  OUTLINED_FUNCTION_22(v44);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  v47 = v597 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v48);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  OUTLINED_FUNCTION_22(v51);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v54);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD98, &unk_1D5627070);
  v58 = OUTLINED_FUNCTION_22(v57);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v62);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v65);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v68);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v70);
  v71 = sub_1D56128C8();
  v72 = OUTLINED_FUNCTION_12_0(v71, &v639);
  v619 = v73;
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  v76 = OUTLINED_FUNCTION_22(v75);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9C0, &qword_1D5626FB0);
  OUTLINED_FUNCTION_22(v79);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB88, L"P\b\a");
  OUTLINED_FUNCTION_22(v82);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v84);
  v85 = sub_1D5610788();
  v86 = OUTLINED_FUNCTION_12_0(v85, &v633);
  v613 = v87;
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v88);
  v89 = sub_1D56107C8();
  v90 = OUTLINED_FUNCTION_12_0(v89, v632);
  v611 = v91;
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v93);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v95);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v97 = OUTLINED_FUNCTION_22(v96);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v101 = OUTLINED_FUNCTION_22(v100);
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_13_2();
  v104 = OUTLINED_FUNCTION_48(v103);
  v105 = type metadata accessor for CloudVideoOffer(v104);
  v106 = OUTLINED_FUNCTION_22(v105);
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v107);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB90, &unk_1D565B670);
  OUTLINED_FUNCTION_22(v108);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v110);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v111);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v113);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v115 = OUTLINED_FUNCTION_22(v114);
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v117);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v119 = OUTLINED_FUNCTION_22(v118);
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_13_2();
  v122 = OUTLINED_FUNCTION_48(v121);
  v123 = type metadata accessor for TVEpisodePropertyProvider(v122);
  v124 = OUTLINED_FUNCTION_20(v123, &v662);
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v125);
  v126 = sub_1D560D838();
  v127 = OUTLINED_FUNCTION_12_0(v126, v658);
  v636 = v128;
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v129);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v130);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v131);
  v132 = OUTLINED_FUNCTION_18_3();
  v133 = type metadata accessor for CloudTVEpisode(v132);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v134);
  OUTLINED_FUNCTION_5();
  v137 = v136 - v135;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA80, &qword_1D561F1F0);
  v641[0] = v137;
  v634[3] = v138;
  v640 = a1;
  sub_1D5610648();
  if (qword_1EC7E8B28 != -1)
  {
    swift_once();
  }

  v597[2] = v43;
  v641[1] = v133;
  v626 = v47;
  v598 = v5;
  v599 = v26;
  v627 = v4;
  v600 = v19;
  v139 = sub_1D56109D8();
  __swift_project_value_buffer(v139, qword_1EC87BF50);
  sub_1D4FFCB28();
  if (qword_1EDD53C38 != -1)
  {
    swift_once();
  }

  v140 = sub_1D560D9A8();
  __swift_project_value_buffer(v140, qword_1EDD53C40);
  OUTLINED_FUNCTION_150();
  v635[0] = v6;
  v141 = v640;
  sub_1D56105B8();
  v142 = sub_1D56140F8();
  v143 = v642;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v144, v145, v146, v142);
  OUTLINED_FUNCTION_177_2();
  sub_1D560F928();
  v147 = OUTLINED_FUNCTION_20_1(v618);
  __swift_storeEnumTagSinglePayload(v147, v148, v149, v150);
  v151 = sub_1D560C328();
  v152 = OUTLINED_FUNCTION_32_7();
  __swift_storeEnumTagSinglePayload(v152, v153, v154, v151);
  v155 = sub_1D5610978();
  v156 = OUTLINED_FUNCTION_20_1(&v619);
  __swift_storeEnumTagSinglePayload(v156, v157, v158, v155);
  v159 = sub_1D560C0A8();
  v160 = OUTLINED_FUNCTION_20_1(v621);
  __swift_storeEnumTagSinglePayload(v160, v161, v162, v159);
  sub_1D5613178();
  v163 = OUTLINED_FUNCTION_32_7();
  __swift_storeEnumTagSinglePayload(v163, v164, v165, v166);
  sub_1D5613198();
  v167 = OUTLINED_FUNCTION_32_7();
  __swift_storeEnumTagSinglePayload(v167, v168, v169, v170);
  sub_1D56134E8();
  v171 = OUTLINED_FUNCTION_32_7();
  __swift_storeEnumTagSinglePayload(v171, v172, v173, v174);
  v175 = OUTLINED_FUNCTION_41_21(v43[24]);
  __swift_storeEnumTagSinglePayload(v175, v176, v177, v151);
  v178 = OUTLINED_FUNCTION_41_21(v43[25]);
  __swift_storeEnumTagSinglePayload(v178, v179, v180, v151);
  sub_1D5614A78();
  v181 = OUTLINED_FUNCTION_32_7();
  __swift_storeEnumTagSinglePayload(v181, v182, v183, v184);
  v185 = OUTLINED_FUNCTION_40_5(v43[29]);
  v645 = v155;
  __swift_storeEnumTagSinglePayload(v185, v186, v187, v155);
  sub_1D56109F8();
  v188 = OUTLINED_FUNCTION_20_1(v622);
  __swift_storeEnumTagSinglePayload(v188, v189, v190, v191);
  v192 = OUTLINED_FUNCTION_40_5(v43[32]);
  __swift_storeEnumTagSinglePayload(v192, v193, v194, v142);
  v195 = OUTLINED_FUNCTION_40_5(v43[34]);
  __swift_storeEnumTagSinglePayload(v195, v196, v197, v151);
  v198 = OUTLINED_FUNCTION_40_5(v43[36]);
  __swift_storeEnumTagSinglePayload(v198, v199, v200, v650);
  v201 = OUTLINED_FUNCTION_40_5(v43[38]);
  __swift_storeEnumTagSinglePayload(v201, v202, v203, v159);
  v204 = OUTLINED_FUNCTION_40_5(v43[44]);
  __swift_storeEnumTagSinglePayload(v204, v205, v206, v159);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v207 = OUTLINED_FUNCTION_20_1(v634);
  v614 = v208;
  __swift_storeEnumTagSinglePayload(v207, v209, v210, v208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  v211 = OUTLINED_FUNCTION_20_1(v635);
  v617 = v212;
  __swift_storeEnumTagSinglePayload(v211, v213, v214, v212);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  v215 = OUTLINED_FUNCTION_20_1(v641);
  v621[0] = v216;
  __swift_storeEnumTagSinglePayload(v215, v217, v218, v216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v219 = OUTLINED_FUNCTION_20_1(&v643);
  v622[1] = v220;
  __swift_storeEnumTagSinglePayload(v219, v221, v222, v220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  v223 = OUTLINED_FUNCTION_20_1(&v646);
  v622[4] = v224;
  __swift_storeEnumTagSinglePayload(v223, v225, v226, v224);
  v227 = v43[50];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  v228 = OUTLINED_FUNCTION_20_1(&v647);
  v623 = v229;
  __swift_storeEnumTagSinglePayload(v228, v230, v231, v229);
  (*(v636 + 16))(v143 + v43[53], v4, v637);
  sub_1D5610658();
  v651 = sub_1D5610618();
  v604 = v232;
  v602 = sub_1D56105C8();
  v233 = sub_1D56105F8();
  sub_1D56105E8();
  OUTLINED_FUNCTION_174_2();
  v234 = sub_1D56105A8();
  v235 = v143 + v43[5];
  *v235 = 0;
  *(v235 + 8) = 1;
  *(v143 + v43[16]) = 2;
  *(v143 + v43[18]) = 2;
  v603 = v43[23];
  *(v143 + v603) = 26;
  v236 = v143 + v43[30];
  *v236 = xmmword_1D5626F70;
  *(v236 + 24) = 0;
  *(v236 + 32) = 0;
  *(v236 + 16) = 0;
  v237 = (v143 + v43[42]);
  v237[2] = 0u;
  v237[3] = 0u;
  *v237 = 0u;
  v237[1] = 0u;
  v610 = v237;
  if (qword_1EC7E8E28 != -1)
  {
    swift_once();
  }

  v238 = qword_1EC87C178;
  v239 = v609;
  v240 = v607;
  if (qword_1EC87C178 >> 62)
  {
    sub_1D560CDE8();
    OUTLINED_FUNCTION_157_5();

    OUTLINED_FUNCTION_116();
    sub_1D5615E18();
    OUTLINED_FUNCTION_157_5();

    v238 = v141;
  }

  else
  {

    v141 = v238 & 0xFFFFFFFFFFFFFF8;
    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v241 = v649;
  v242 = v642;
  *(v642 + v649[52]) = v238;
  v243 = (v242 + v241[55]);
  *v243 = v651;
  v243[1] = v604;
  *(v242 + v241[56]) = v602;
  *(v242 + v241[57]) = v233;
  *(v242 + v241[58]) = v227;
  *(v242 + v241[59]) = v234;
  v244 = v242;
  OUTLINED_FUNCTION_147_4();
  v246 = (v641[0] + *(v245 + 20));
  v651 = type metadata accessor for CloudTVEpisode.Attributes(0);
  OUTLINED_FUNCTION_117_0();
  sub_1D4F39AB0(v247, v248, v249, v250);
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v252 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v252, v253, v251);
  v604 = v251;
  if (v324)
  {
    sub_1D4E50004(v141, &qword_1EC7EB5B8, &unk_1D56206A0);
    v256 = v643;
    v227 = v605;
  }

  else
  {
    OUTLINED_FUNCTION_172();
    sub_1D5610758();
    OUTLINED_FUNCTION_24_0();
    v254 = OUTLINED_FUNCTION_121();
    v255(v254);
    v256 = v643;
  }

  v257 = OUTLINED_FUNCTION_121_5();
  __swift_storeEnumTagSinglePayload(v257, v258, v259, v142);
  sub_1D4E68940(v227, v244, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_135_6();
  v261 = *(v246 + *(v260 + 24));
  if (v261 && (v262 = *(v261 + 16)) != 0)
  {
    v263 = 0;
    v264 = (v261 + 32);
    do
    {
      v265 = *v264++;
      v263 |= qword_1D5631208[v265];
      --v262;
    }

    while (v262);
  }

  else
  {
    v263 = 0;
  }

  *v235 = v263;
  *(v235 + 8) = v261 == 0;
  OUTLINED_FUNCTION_100_5();
  sub_1D50A2470(v266, v267, &protocol conformance descriptor for CloudTVEpisode.Attributes);
  OUTLINED_FUNCTION_150();
  v268 = v651;
  v605 = v269;
  sub_1D5612A68();
  OUTLINED_FUNCTION_79_4();
  sub_1D4E68940(v235, v270, v271, v272);
  v273 = *(v246 + v268[7]);
  if (v273)
  {
    sub_1D511C2A4(v273);
  }

  v274 = v606;
  OUTLINED_FUNCTION_155_4();
  v276 = *(v275 + 28);
  v277 = (v244 + *(v275 + 32));
  *(v244 + v276) = v278;
  v279 = v651;
  v280 = (v246 + v651[8]);
  v281 = v280[1];
  *v277 = *v280;
  v277[1] = v281;
  v282 = *(v246 + v279[9]);

  if (v282)
  {
    sub_1D5259FF8(v282);
  }

  OUTLINED_FUNCTION_136_5();
  *(v244 + *(v283 + 36)) = v284;
  OUTLINED_FUNCTION_135_6();
  v286 = *(v246 + *(v285 + 84));
  v287 = 0.0;
  if (!v286)
  {
    v288 = 0;
    goto LABEL_28;
  }

  v288 = *(v246 + *(v285 + 84));
  sub_1D4EC9F44(v286);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F8, &qword_1D56294F0);
  v289 = OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1(v289);
  if (v324)
  {
    sub_1D4E50004(v274, &qword_1EC7EDB90, &unk_1D565B670);
LABEL_28:
    v294 = 1;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_150();
  sub_1D5610708();
  OUTLINED_FUNCTION_15_1();
  v290 = OUTLINED_FUNCTION_159();
  v291(v290);
  v292 = *v235;
  v293 = *(v235 + 8);
  OUTLINED_FUNCTION_99_7();
  sub_1D50A229C();
  if (v293)
  {
    goto LABEL_28;
  }

  v294 = 0;
  v287 = v292 / 1000.0;
LABEL_29:
  v295 = v649[12];
  v296 = (v244 + v649[11]);
  *v296 = v287;
  *(v296 + 8) = v294;
  v297 = v651;
  *(v244 + v295) = *(v246 + v651[11]);
  sub_1D4F39AB0(v246 + v297[12], v240, &qword_1EC7EC960, &unk_1D56334C0);
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v240, 1, v298);

  v643 = v246;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v240, &qword_1EC7EC960, &unk_1D56334C0);
    v300 = 1;
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_56_0();
    v301 = OUTLINED_FUNCTION_16_20();
    v302(v301);
    v300 = 0;
  }

  OUTLINED_FUNCTION_212_1(v256, v300, 1);
  OUTLINED_FUNCTION_136_5();
  v304 = *(v303 + 56);
  v305 = *(v303 + 60);
  OUTLINED_FUNCTION_79_4();
  sub_1D4E68940(v256, v306, v307, v308);
  v309 = v651;
  v310 = v643;
  *(v244 + v304) = *(v643 + v651[13]);
  *(v244 + v305) = *(v310 + v309[17]);
  v311 = *(v310 + v309[19]);
  v312 = v142;
  if (v311 == 26)
  {
    v313 = 26;
  }

  else
  {
    sub_1D4FD3EB8(*(v310 + v309[19]), v659);
    v313 = v659[0];
  }

  *(v244 + v603) = v313;

  v314 = v643;
  OUTLINED_FUNCTION_79_4();
  sub_1D5000C8C(v315, v316, v317, v318);
  OUTLINED_FUNCTION_100_5();
  sub_1D50A2470(v319, v320, &protocol conformance descriptor for CloudTVEpisode.Attributes);
  v321 = v314;
  v322 = sub_1D5612A28();
  if (v311 != 26 && (v322 & 1) != 0)
  {
    v321 = 0x656C696172747674;
    v324 = sub_1D4FD39E0(v311) == 0x656C696172747674 && v323 == 0xE900000000000072;
    if (!v324)
    {
      v321 = sub_1D5616168();
    }

    v314 = v643;
  }

  OUTLINED_FUNCTION_155_4();
  *(v244 + *(v325 + 76)) = v326 & 1;
  OUTLINED_FUNCTION_135_6();
  OUTLINED_FUNCTION_188_2((v314 + *(v327 + 56)));
  if (v288)
  {
    sub_1D501B268();
  }

  v328 = v644;
  OUTLINED_FUNCTION_136_5();
  *(v244 + *(v329 + 112)) = v330;
  OUTLINED_FUNCTION_135_6();
  sub_1D4F39AB0(v314 + *(v331 + 88), v239, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_5_1(v239);
  if (v324)
  {
    sub_1D4E50004(v239, &qword_1EC7EC960, &unk_1D56334C0);
  }

  else
  {
    v321 = v239;
    sub_1D5610738();
    OUTLINED_FUNCTION_56_0();
    (*(v332 + 8))(v239, v298);
  }

  v333 = OUTLINED_FUNCTION_121_5();
  OUTLINED_FUNCTION_212_1(v333, v334, v335);
  OUTLINED_FUNCTION_79_4();
  sub_1D4E68940(v328, v336, v337, v338);
  OUTLINED_FUNCTION_79_4();
  sub_1D5000C8C(v635[0], v339, v340, v341);
  OUTLINED_FUNCTION_135_6();
  OUTLINED_FUNCTION_117_0();
  sub_1D4F39AB0(v342, v343, v344, v345);
  v346 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v346, v347, v604);
  if (v324)
  {
    sub_1D4E50004(v321, &qword_1EC7EB5B8, &unk_1D56206A0);
    v328 = v608;
  }

  else
  {
    OUTLINED_FUNCTION_172();
    sub_1D5610758();
    OUTLINED_FUNCTION_56_0();
    v348 = OUTLINED_FUNCTION_222();
    v349(v348);
  }

  v350 = OUTLINED_FUNCTION_121_5();
  __swift_storeEnumTagSinglePayload(v350, v351, v352, v142);
  OUTLINED_FUNCTION_79_4();
  sub_1D4E68940(v328, v353, v354, v355);
  OUTLINED_FUNCTION_135_6();
  v357 = *(v314 + *(v356 + 96));
  if (v357)
  {
    v358 = *(v357 + 16);
    v359 = MEMORY[0x1E69E7CC0];
    if (v358)
    {
      *&v659[0] = MEMORY[0x1E69E7CC0];
      sub_1D4F03AB4(0, v358, 0);
      v359 = *&v659[0];
      v360 = v601 + 16;
      v645 = *(v601 + 16);
      v361 = v357 + ((*(v601 + 80) + 32) & ~*(v601 + 80));
      OUTLINED_FUNCTION_138_6(*(v601 + 72));
      v244 = (v360 - 8);
      v288 = v597[1];
      do
      {
        v321 = v646;
        v362 = OUTLINED_FUNCTION_222();
        v645(v362);
        sub_1D5610728();
        v363 = OUTLINED_FUNCTION_121();
        v364(v363);
        *&v659[0] = v359;
        v312 = *(v359 + 16);
        v365 = *(v359 + 24);
        if (v312 >= v365 >> 1)
        {
          v321 = v659;
          sub_1D4F03AB4(v365 > 1, v312 + 1, 1);
          v359 = *&v659[0];
        }

        *(v359 + 16) = v312 + 1;
        (*(v647 + 32))(v359 + ((*(v647 + 80) + 32) & ~*(v647 + 80)) + *(v647 + 72) * v312, v288, v650);
        v361 += v644;
        --v358;
      }

      while (v358);
      OUTLINED_FUNCTION_158_3();
      v314 = v643;
    }
  }

  else
  {
    v359 = 0;
  }

  OUTLINED_FUNCTION_155_4();
  v367 = v244 + *(v366 + 140);
  *(v244 + *(v366 + 132)) = v359;
  OUTLINED_FUNCTION_185_2(v368);
  v369 = v651;
  v370 = v613;
  OUTLINED_FUNCTION_179_2();
  OUTLINED_FUNCTION_140();
  v371();
  OUTLINED_FUNCTION_34_23();
  sub_1D5610798();
  v373 = *(v370 + 8);
  v372 = v370 + 8;
  v374 = v314;
  v375 = v643;
  v373(v288, v374);
  v376 = OUTLINED_FUNCTION_68_9();
  v377(v376, v612);
  OUTLINED_FUNCTION_79_4();
  sub_1D4E68940(v312, v378, v379, v380);
  v381 = v375 + *(v369 + 60);
  v382 = *v381;
  LOBYTE(v381) = v381[8];
  *v367 = v382;
  *(v367 + 8) = v381;
  OUTLINED_FUNCTION_117_0();
  sub_1D4F39AB0(v383, v384, v385, v386);
  v387 = OUTLINED_FUNCTION_35_1();
  v388 = v648;
  OUTLINED_FUNCTION_57(v387, v389, v648);
  if (v324)
  {
    sub_1D4E50004(v321, &qword_1EC7ED9C0, &qword_1D5626FB0);
    OUTLINED_FUNCTION_202_1();
    v367 = v616;
  }

  else
  {
    OUTLINED_FUNCTION_150();
    sub_1D5610728();
    v390 = OUTLINED_FUNCTION_68_9();
    v391(v390, v388);
    OUTLINED_FUNCTION_202_1();
  }

  v392 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v392, v393, v394, v650);
  OUTLINED_FUNCTION_136_5();
  v396 = (v244 + *(v395 + 148));
  OUTLINED_FUNCTION_79_4();
  sub_1D4E68940(v367, v397, v398, v399);
  v400 = v375[1];
  *v396 = *v375;
  v396[1] = v400;
  v401 = v651;
  v402 = v651[27];

  OUTLINED_FUNCTION_79_4();
  sub_1D5000C8C(v403, v404, v405, v406);
  sub_1D4F39AB0(v375 + v401[10], v321, &qword_1EC7EC978, &unk_1D56222A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  v407 = OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_1(v407);
  v408 = v625;
  v409 = v622[3];
  if (v324)
  {
    sub_1D4E50004(v321, &qword_1EC7EC978, &unk_1D56222A0);
    v412 = 0;
    v401 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_186();
    sub_1D5610708();
    OUTLINED_FUNCTION_15_1();
    v410 = OUTLINED_FUNCTION_159();
    v411(v410);
    v412 = v288;
    sub_1D56128A8();
    OUTLINED_FUNCTION_22_13();
    (*(v619 + 8))(v288, v620);
  }

  OUTLINED_FUNCTION_205_1();
  OUTLINED_FUNCTION_136_5();
  v414 = (v244 + *(v413 + 156));
  *v414 = v412;
  v414[1] = v401;
  OUTLINED_FUNCTION_117_0();
  sub_1D4F39AB0(v415, v416, v417, v418);
  OUTLINED_FUNCTION_1(v412);
  if (v324)
  {
    sub_1D4E50004(v412, &qword_1EC7EC978, &unk_1D56222A0);
    v402 = 0;
    v421 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_150();
    sub_1D5610708();
    OUTLINED_FUNCTION_15_1();
    v419 = OUTLINED_FUNCTION_159();
    v420(v419);
    v421 = v401;
    sub_1D56128B8();
    OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_136();
    v422(v401, v620);
  }

  v423 = v634[0];
  v424 = v622[0];
  OUTLINED_FUNCTION_155_4();
  v426 = (v244 + *(v425 + 160));
  *v426 = v402;
  v426[1] = v421;
  OUTLINED_FUNCTION_188_2((v643 + v651[16]));
  sub_1D4F39AB0(v428 + *(v427 + 112), v424, &qword_1EC7ED9B0, &unk_1D5631050);
  v429 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
  OUTLINED_FUNCTION_1(v424);
  if (v324)
  {
    sub_1D4E50004(v424, &qword_1EC7ED9B0, &unk_1D5631050);
    v430.n128_f64[0] = OUTLINED_FUNCTION_133_2();
    OUTLINED_FUNCTION_178_1(v431, v430);
  }

  else
  {
    v421 = v424;
    sub_1D5138FDC(v659);
    OUTLINED_FUNCTION_15_1();
    (*(v432 + 8))(v424, v429);
    v648 = v659[1];
    v650 = v659[0];
    v646 = v660;
    OUTLINED_FUNCTION_178_1(&v660 + 8, v659[2]);
    v423 = v634[0];
  }

  OUTLINED_FUNCTION_136_5();
  v434 = (v244 + *(v433 + 172));
  v435 = v610;
  v436 = v610[1];
  v657[0] = *v610;
  v657[1] = v436;
  v437 = v610[3];
  v658[0] = v610[2];
  v658[1] = v437;
  sub_1D4E50004(v657, &qword_1EC7EDBA0, &unk_1D5637EA0);
  v438 = v648;
  *v435 = v650;
  v435[1] = v438;
  v439 = v646;
  v435[2] = v647;
  v435[3] = v439;
  v440 = (v643 + v651[20]);
  v441 = v440[1];
  *v434 = *v440;
  v434[1] = v441;

  OUTLINED_FUNCTION_79_4();
  sub_1D5000C8C(v442, v443, v444, v445);
  OUTLINED_FUNCTION_147_4();
  v447 = *(v446 + 24);
  sub_1D4F39AB0(v369 + v447, v409, &qword_1EC7ECD98, &unk_1D5627070);
  v448 = type metadata accessor for CloudTVEpisode.Relationships(0);
  OUTLINED_FUNCTION_1(v409);
  if (v324)
  {
    v449 = &qword_1EC7ECD98;
    v450 = &unk_1D5627070;
  }

  else
  {
    v451 = OUTLINED_FUNCTION_16_20();
    sub_1D4F39AB0(v451, v452, v453, v454);
    OUTLINED_FUNCTION_45_17();
    sub_1D50A229C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    v409 = v423;
    OUTLINED_FUNCTION_5_1(v423);
    if (!v455)
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_142_2();
      v244 = *(v456 - 256);
      OUTLINED_FUNCTION_15_4(v244, v457, v458, v459);
      sub_1D5613C48();
      OUTLINED_FUNCTION_147();
      v424 = sub_1D560CD48();
      OUTLINED_FUNCTION_46_15();
      sub_1D50A2470(v460, v461, MEMORY[0x1E6976DB0]);
      OUTLINED_FUNCTION_48_13();
      OUTLINED_FUNCTION_71_7();
      sub_1D5612368();
      v421 = v631;
      OUTLINED_FUNCTION_164_1();
      OUTLINED_FUNCTION_158_3();
      sub_1D4E50004(v462, v463, v464);
      OUTLINED_FUNCTION_56_0();
      v465 = OUTLINED_FUNCTION_16_20();
      v466(v465);
      goto LABEL_78;
    }

    v449 = &qword_1EC7EA7F0;
    v450 = &unk_1D561E8C0;
  }

  sub_1D4E50004(v409, v449, v450);
LABEL_78:
  v467 = v630;
  v468 = OUTLINED_FUNCTION_198_1();
  __swift_storeEnumTagSinglePayload(v468, v469, v470, v614);
  OUTLINED_FUNCTION_79_4();
  sub_1D4E68940(v467, v471, v472, v473);
  sub_1D4F39AB0(v369 + v447, v421, &qword_1EC7ECD98, &unk_1D5627070);
  OUTLINED_FUNCTION_1(v421);
  if (v324)
  {
    v474 = &qword_1EC7ECD98;
    v475 = &unk_1D5627070;
    v476 = v421;
  }

  else
  {
    sub_1D4F39AB0(v421 + *(v448 + 20), v408, &qword_1EC7ECD90, &unk_1D5622F80);
    OUTLINED_FUNCTION_45_17();
    sub_1D50A229C();
    v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
    OUTLINED_FUNCTION_5_1(v408);
    if (!v477)
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_142_2();
      v479 = *(v478 - 256);
      v483 = OUTLINED_FUNCTION_15_4(v479, v480, v481, v482);
      type metadata accessor for TVSeason(v483);
      OUTLINED_FUNCTION_147();
      v424 = sub_1D560CD48();
      v244 = type metadata accessor for TVSeason;
      sub_1D50A2470(&qword_1EC7ECC90, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
      OUTLINED_FUNCTION_36_11();
      OUTLINED_FUNCTION_158_3();
      sub_1D50A2470(v484, v485, v486);
      OUTLINED_FUNCTION_48_13();
      OUTLINED_FUNCTION_71_7();
      v369 = v641[0];
      v421 = v408;
      sub_1D5612368();
      OUTLINED_FUNCTION_164_1();
      v487 = v479;
      v372 = v633;
      sub_1D4E50004(v487, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      v488 = OUTLINED_FUNCTION_85();
      v489(v488);
      goto LABEL_85;
    }

    v474 = &qword_1EC7ECD90;
    v475 = &unk_1D5622F80;
    v476 = v408;
  }

  sub_1D4E50004(v476, v474, v475);
LABEL_85:
  v490 = OUTLINED_FUNCTION_60_8(&v651);
  __swift_storeEnumTagSinglePayload(v490, v491, v492, v617);
  OUTLINED_FUNCTION_79_4();
  sub_1D4E68940(v421, v493, v494, v495);
  OUTLINED_FUNCTION_66_1();
  sub_1D4F39AB0(v496, v497, v498, v499);
  OUTLINED_FUNCTION_1(v467);
  if (v324)
  {
    sub_1D4E50004(v467, &qword_1EC7ECD98, &unk_1D5627070);
    v500 = v626;
  }

  else
  {
    OUTLINED_FUNCTION_117_0();
    sub_1D4F39AB0(v501, v502, v503, v504);
    OUTLINED_FUNCTION_45_17();
    sub_1D50A229C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    v505 = OUTLINED_FUNCTION_107_5();
    OUTLINED_FUNCTION_1(v505);
    v500 = v626;
    if (v506)
    {
      sub_1D4E50004(v421, &qword_1EC7ECA58, &unk_1D5622310);
    }

    else
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_142_2();
      v369 = *(v507 - 256);
      v511 = OUTLINED_FUNCTION_15_4(v369, v508, v509, v510);
      type metadata accessor for TVShow(v511);
      sub_1D560CD48();
      v424 = type metadata accessor for TVShow;
      sub_1D50A2470(&qword_1EC7ECBB0, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
      OUTLINED_FUNCTION_76_6();
      sub_1D50A2470(v512, type metadata accessor for TVShow, v513);
      OUTLINED_FUNCTION_48_13();
      v244 = v642;
      sub_1D5612368();
      OUTLINED_FUNCTION_164_1();
      OUTLINED_FUNCTION_205_1();
      sub_1D4E50004(v514, v515, v516);
      OUTLINED_FUNCTION_15_1();
      v517 = OUTLINED_FUNCTION_159();
      v518(v517);
    }
  }

  v519 = v621[1];
  v520 = OUTLINED_FUNCTION_197_0();
  __swift_storeEnumTagSinglePayload(v520, v521, v522, v523);
  sub_1D4E68940(v500, v244 + v519, &qword_1EC7ECBA0, &unk_1D56270F0);
  OUTLINED_FUNCTION_147_4();
  v525 = *(v524 + 28);
  sub_1D4F39AB0(v369 + v525, v424, &qword_1EC7ECD80, &qword_1D5622F70);
  v526 = type metadata accessor for CloudTVEpisode.Associations(0);
  OUTLINED_FUNCTION_1(v424);
  if (v324)
  {
    sub_1D4E50004(v424, &qword_1EC7ECD80, &qword_1D5622F70);
  }

  else
  {
    v369 = v598;
    sub_1D4F39AB0(v424, v598, &qword_1EC7EB5A8, &unk_1D5622F00);
    OUTLINED_FUNCTION_44_17();
    sub_1D50A229C();
    v527 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    OUTLINED_FUNCTION_5_1(v369);
    if (v528)
    {
      sub_1D4E50004(v369, &qword_1EC7EB5A8, &unk_1D5622F00);
    }

    else
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_142_2();
      v244 = *(v529 - 256);
      OUTLINED_FUNCTION_15_4(v244, v530, v531, v532);
      sub_1D5613EF8();
      OUTLINED_FUNCTION_147();
      sub_1D560CD48();
      OUTLINED_FUNCTION_9_42();
      sub_1D50A2470(v533, v534, MEMORY[0x1E6976F08]);
      OUTLINED_FUNCTION_48_13();
      OUTLINED_FUNCTION_71_7();
      v421 = v369;
      sub_1D5612368();
      OUTLINED_FUNCTION_158_3();
      sub_1D4E50004(v535, v536, v537);
      OUTLINED_FUNCTION_56_0();
      (*(v538 + 8))(v369, v527);
    }

    OUTLINED_FUNCTION_205_1();
  }

  v539 = v622[2];
  v540 = OUTLINED_FUNCTION_60_8(v652);
  __swift_storeEnumTagSinglePayload(v540, v541, v542, v543);
  sub_1D4E68940(v421, v244 + v539, &off_1EC7EB5B0, &unk_1D5632170);
  sub_1D4F39AB0(v369 + v525, v372, &qword_1EC7ECD80, &qword_1D5622F70);
  OUTLINED_FUNCTION_1(v372);
  if (v324)
  {
    v544 = &qword_1EC7ECD80;
    v545 = &qword_1D5622F70;
    v546 = v372;
  }

  else
  {
    OUTLINED_FUNCTION_117_0();
    sub_1D4F39AB0(v547, v548, v549, v550);
    OUTLINED_FUNCTION_44_17();
    sub_1D50A229C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
    OUTLINED_FUNCTION_5_1(v421);
    if (!v551)
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_142_2();
      v553 = *(v552 - 256);
      v557 = OUTLINED_FUNCTION_15_4(v553, v554, v555, v556);
      type metadata accessor for TVEpisode(v557);
      sub_1D560CD48();
      v244 = type metadata accessor for TVEpisode;
      sub_1D50A2470(&qword_1EC7ECBB8, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
      OUTLINED_FUNCTION_71_6();
      OUTLINED_FUNCTION_158_3();
      sub_1D50A2470(v558, v559, v560);
      OUTLINED_FUNCTION_48_13();
      v369 = v641[0];
      sub_1D5612368();
      sub_1D4E50004(v553, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_56_0();
      v561 = OUTLINED_FUNCTION_222();
      v562(v561);
      goto LABEL_105;
    }

    v544 = &qword_1EC7ECA78;
    v545 = &qword_1D5622340;
    v546 = v421;
  }

  sub_1D4E50004(v546, v544, v545);
LABEL_105:
  v563 = v622[5];
  v564 = OUTLINED_FUNCTION_60_8(v654);
  __swift_storeEnumTagSinglePayload(v564, v565, v566, v567);
  sub_1D4E68940(v421, v244 + v563, &qword_1EC7ECBA8, &unk_1D56223B0);
  OUTLINED_FUNCTION_117_0();
  sub_1D4F39AB0(v568, v569, v570, v571);
  OUTLINED_FUNCTION_1(v421);
  if (v324)
  {
    sub_1D4E50004(v421, &qword_1EC7ECD80, &qword_1D5622F70);
    v572 = 1;
    v573 = v628;
    v574 = v635[0];
  }

  else
  {
    OUTLINED_FUNCTION_183_2(v421 + *(v526 + 24), &qword_1EC7ECD18, &qword_1D5631040, v615);
    OUTLINED_FUNCTION_44_17();
    sub_1D50A229C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
    OUTLINED_FUNCTION_1(v244);
    v574 = v635[0];
    if (v575)
    {
      sub_1D4E50004(v244, &qword_1EC7ECD18, &qword_1D5631040);
      v573 = v628;
    }

    else
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_142_2();
      v369 = *(v576 - 256);
      OUTLINED_FUNCTION_15_4(v369, v577, v578, v579);
      sub_1D5614898();
      OUTLINED_FUNCTION_147();
      sub_1D560CD48();
      OUTLINED_FUNCTION_112_6();
      sub_1D50A2470(v580, v581, MEMORY[0x1E69773B8]);
      v573 = v628;
      OUTLINED_FUNCTION_48_13();
      OUTLINED_FUNCTION_88_8();
      sub_1D5612368();
      OUTLINED_FUNCTION_205_1();
      sub_1D4E50004(v582, v583, v584);
      OUTLINED_FUNCTION_15_1();
      v585 = OUTLINED_FUNCTION_86_0();
      v586(v585);
    }

    OUTLINED_FUNCTION_158_3();
  }

  v587 = v624;
  __swift_storeEnumTagSinglePayload(v573, v572, 1, v623);
  sub_1D4E68940(v573, v244 + v587, &qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_147_4();
  v589 = *(v369 + *(v588 + 32));
  OUTLINED_FUNCTION_175_1();
  v590 = v649;
  *(v244 + v649[51]) = v591;
  v655 = v590;
  v656 = sub_1D50A2470(&qword_1EC7EDBA8, type metadata accessor for TVEpisodePropertyProvider, &unk_1D5637BD0);
  v592 = __swift_allocate_boxed_opaque_existential_0(&v653);
  sub_1D50A2244(v244, v592);
  sub_1D4E67688(v589);
  TVEpisode.init(propertyProvider:)(&v653, v629);

  sub_1D560CD48();
  OUTLINED_FUNCTION_14();
  (*(v593 + 8))(v639);
  OUTLINED_FUNCTION_24_0();
  (*(v594 + 8))(v640);
  OUTLINED_FUNCTION_136();
  v595(v635[1], v637);
  sub_1D4E50004(v574, &qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_102_7();
  sub_1D50A229C();
  return sub_1D50A229C();
}