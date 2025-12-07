uint64_t sub_216C93D1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_216C93D80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_21700C1E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = *(v2 + *(type metadata accessor for LibraryAlbumViewModel(0) + 24));

  sub_216BCA030(v13);
  (*(v6 + 16))(&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  return sub_2168463B0(v8, v13, sub_216C940B4, v10, a2);
}

uint64_t sub_216C93EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700C1E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  result = (*(v5 + 32))(v9 + v8, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *a2 = sub_216C94124;
  *(a2 + 8) = v9;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_216C94018(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2166DFAC0;

  return sub_216C9390C(a1);
}

uint64_t sub_216C940B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_21700C1E4() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216C93EE8(v4, a1);
}

void *sub_216C94124()
{
  v1 = *(sub_21700C1E4() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_216A6C950(v2);
}

unint64_t sub_216C94184()
{
  result = qword_27CABB4C8;
  if (!qword_27CABB4C8)
  {
    sub_21700C1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB4C8);
  }

  return result;
}

char *sub_216C9422C()
{
  OUTLINED_FUNCTION_2_1();
  swift_allocObject();
  return sub_216C94284();
}

char *sub_216C94284()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1();
  *(v1 + *(v4 + 280)) = 0;
  _s18HighlightsProviderCMa(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();

  OUTLINED_FUNCTION_0_1();
  *(v1 + *(v5 + 272)) = v6;
  return sub_216B12724(v3, v2, v0 & 1);
}

uint64_t sub_216C9432C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a1;
  v40 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0, &qword_217023920);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7F88, &qword_21705BCD8);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7F90, &qword_21705BCE0);
  OUTLINED_FUNCTION_1();
  v36 = v14;
  v37 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7F98, &qword_21705BCE8);
  OUTLINED_FUNCTION_1();
  v38 = v19;
  v39 = v20;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  v23 = &v34 - v22;
  v24 = v3[2];
  v25 = v3[3];
  v3[2] = v35;
  v3[3] = a2;

  sub_21667E91C(v24, v25);
  sub_216BE5DB0();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5640, &qword_21705BCF0);
  sub_217007DB4();
  swift_endAccess();
  sub_2166D9530(&qword_280E484A8, &qword_27CAC7F88, &qword_21705BCD8, MEMORY[0x277CBCEC8]);
  sub_217007E64();
  (*(v10 + 8))(v13, v8);
  sub_2166AF2EC();
  v26 = sub_21700EE84();
  v41 = v26;
  v27 = sub_21700EE64();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v27);
  sub_2166D9530(&qword_280E48578, &qword_27CAC7F90, &qword_21705BCE0, MEMORY[0x277CBCC18]);
  sub_2166C0E74();
  v28 = v36;
  sub_217007E54();
  sub_2166C10E8(v7);

  (*(v37 + 8))(v18, v28);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = *(v40 + 264);
  *(v30 + 24) = v29;
  sub_2166D9530(&qword_280E48530, &qword_27CAC7F98, &qword_21705BCE8, MEMORY[0x277CBCD60]);
  v31 = v38;
  v32 = sub_217007E84();

  (*(v39 + 8))(v23, v31);
  *(v3 + *(*v3 + 280)) = v32;
}

uint64_t sub_216C947C0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21700DA84();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v14 = sub_21700CFB4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v20 = v19 - v18;
  v21 = sub_216F0DBDC(a1);
  v22 = MEMORY[0x277D837D0];
  v26 = MEMORY[0x277D837D0];
  *&v25 = 1701273968;
  *(&v25 + 1) = 0xE400000000000000;
  sub_2166EF9C4(&v25, v24);
  swift_isUniquelyReferenced_nonNull_native();
  sub_2166EF9D4();
  if (a4)
  {
    v26 = v22;
    *&v25 = a3;
    *(&v25 + 1) = a4;
    sub_2166EF9C4(&v25, v24);
    sub_21700DF14();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_144();
    sub_2166EF9D4();
  }

  sub_216F0E280(v21);

  sub_21700DA74();
  sub_21700D564();

  (*(v9 + 8))(v13, v7);
  return (*(v16 + 8))(v20, v14);
}

uint64_t sub_216C949EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v118 = a5;
  v125 = a4;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8148, &qword_217019070);
  OUTLINED_FUNCTION_1();
  v128 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_70(&v113 - v14);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB40, &unk_21706CE10);
  OUTLINED_FUNCTION_1();
  v116 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_70(&v113 - v17);
  v127 = sub_21700DA84();
  OUTLINED_FUNCTION_1();
  v124 = v18;
  MEMORY[0x28223BE20](v19);
  v120 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v119 = (&v113 - v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_70(&v113 - v24);
  v123 = sub_21700CFB4();
  OUTLINED_FUNCTION_1();
  v121 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v28 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = (&v113 - v30);
  v32 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_7();
  v38 = v37 - v36;
  v39 = MEMORY[0x277D837D0];
  v131 = a3;
  if (a7)
  {
    v145 = MEMORY[0x277D837D0];
    *&v144 = a6;
    *(&v144 + 1) = a7;
    v40 = OUTLINED_FUNCTION_4_126();
    sub_2166EF9C4(v40, v41);
    sub_21700DF14();
    sub_21700DF14();
    swift_isUniquelyReferenced_nonNull_native();
    v140 = a2;
    OUTLINED_FUNCTION_3_144();
    sub_2166EF9D4();
    v130 = v140;
  }

  else
  {
    v130 = a2;
    sub_21700DF14();
  }

  v42 = type metadata accessor for MusicMetrics.ClickFields(0);
  v133 = v42;
  if (*(a1 + *(v42 + 40)))
  {
    v43 = *(a1 + *(v42 + 40));
  }

  else
  {
    v43 = MEMORY[0x277D84F98];
  }

  LOBYTE(v146) = *(a1 + 17);
  MusicMetrics.ActionType.rawValue.getter();
  v145 = v39;
  *&v144 = v44;
  *(&v144 + 1) = v45;
  v46 = OUTLINED_FUNCTION_4_126();
  sub_2166EF9C4(v46, v47);
  sub_21700DF14();
  swift_isUniquelyReferenced_nonNull_native();
  v140 = v43;
  OUTLINED_FUNCTION_10();
  sub_2166EF9D4();
  v48 = v140;
  v49 = *(a1 + 32);
  if (v49 >> 60 != 15)
  {
    v50 = *(a1 + 24);
    v145 = MEMORY[0x277CC9318];
    *&v144 = v50;
    *(&v144 + 1) = v49;
    v51 = OUTLINED_FUNCTION_4_126();
    sub_2166EF9C4(v51, v52);
    sub_21677A3F0(v50, v49);
    swift_isUniquelyReferenced_nonNull_native();
    v140 = v48;
    sub_2166EF9D4();
    v48 = v140;
  }

  sub_216681B64(a1 + *(v133 + 36), v31, &qword_27CABA820, &unk_217018CE0);
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
  {
    sub_21669987C(v31, &qword_27CABA820, &unk_217018CE0);
  }

  else
  {
    (*(v34 + 32))(v38, v31, v32);
    v145 = v32;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v144);
    (*(v34 + 16))(boxed_opaque_existential_1, v38, v32);
    v54 = OUTLINED_FUNCTION_4_126();
    sub_2166EF9C4(v54, v55);
    swift_isUniquelyReferenced_nonNull_native();
    v140 = v48;
    OUTLINED_FUNCTION_10();
    sub_2166EF9D4();
    v48 = v140;
    (*(v34 + 8))(v38, v32);
  }

  v56 = *(a1 + 40);
  if (v56)
  {
    v114 = v48;
    v57 = sub_21700E384();
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    v60 = v56 + 64;
    v59 = *(v56 + 64);
    v147 = v58;
    v61 = 1 << *(v56 + 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v62 & v59;
    v64 = (v61 + 63) >> 6;
    v113 = 0x8000000217080260;
    sub_21700DF14();
    v65 = 0;
    isUniquelyReferenced_nonNull_native = &unk_27CAC7FA0;
    v135 = v64;
    v134 = v56 + 64;
    v137 = a1;
    v136 = v56;
    if (v63)
    {
      while (1)
      {
LABEL_20:
        v68 = __clz(__rbit64(v63));
        v63 &= v63 - 1;
        v69 = v68 | (v65 << 6);
        v70 = *(v56 + 56);
        v56 = *(*(v56 + 48) + v69);
        sub_2166A6DF8(v70 + 32 * v69, &v144 + 8);
        LOBYTE(v144) = v56;
        v71 = OUTLINED_FUNCTION_4_126();
        sub_216681B64(v71, v72, isUniquelyReferenced_nonNull_native, &qword_21705BCF8);
        a1 = 0xE600000000000000;
        v48 = 0x6E6F69746361;
        switch(v142)
        {
          case 1:
            v48 = 0x75536E6F69746361;
            a1 = 0xED00006570795462;
            break;
          case 2:
            a1 = 0xE500000000000000;
            v48 = 0x6F54646461;
            break;
          case 3:
            v48 = 0x614E747369747261;
            a1 = 0xEA0000000000656DLL;
            break;
          case 4:
            a1 = 0xE900000000000073;
            v48 = 0x6D61726150797562;
            break;
          case 5:
            v48 = 0xD000000000000013;
            a1 = v113;
            break;
          case 6:
            a1 = 0xEA00000000006D6FLL;
            v48 = 0x72466574656C6564;
            break;
          case 7:
            v48 = 0x657A696C61636F6CLL;
            a1 = 0xEE00656C74695464;
            break;
          case 8:
            v48 = 0x696E53636972796CLL;
            v73 = 1952804976;
            goto LABEL_36;
          case 9:
            a1 = 0xE400000000000000;
            v48 = 1684957547;
            break;
          case 10:
            v48 = 0x6D657449756E656DLL;
            v73 = 1701667150;
LABEL_36:
            a1 = v73 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 11:
            a1 = 0xEA00000000006F54;
            v48 = 0x657461676976616ELL;
            break;
          case 12:
            a1 = 0xE800000000000000;
            v48 = 0x6570795479616C70;
            break;
          case 13:
            v48 = 0x4E6E6F6974636573;
            a1 = 0xEB00000000656D61;
            break;
          case 14:
            a1 = 0xE700000000000000;
            v48 = 0x6E6F6974617473;
            break;
          case 15:
            a1 = 0xE500000000000000;
            v48 = 0x656C746974;
            break;
          default:
            break;
        }

        v31 = isUniquelyReferenced_nonNull_native;
        sub_216681B64(&v144, &v140, isUniquelyReferenced_nonNull_native, &qword_21705BCF8);
        sub_2166EF9C4(&v141, v139);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v138 = v57;
        v74 = sub_2166AF66C(v48, a1);
        v76 = v57[2];
        v77 = (v75 & 1) == 0;
        v64 = v76 + v77;
        if (__OFADD__(v76, v77))
        {
          break;
        }

        v78 = v74;
        v56 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82A8, &unk_2170198D0);
        if (sub_21700F554())
        {
          v79 = sub_2166AF66C(v48, a1);
          if ((v56 & 1) != (v80 & 1))
          {
            result = sub_21700F824();
            __break(1u);
            return result;
          }

          v78 = v79;
        }

        if (v56)
        {

          v57 = v138;
          v81 = (v138[7] + 32 * v78);
          __swift_destroy_boxed_opaque_existential_1Tm(v81);
          sub_2166EF9C4(v139, v81);
          isUniquelyReferenced_nonNull_native = v31;
          sub_21669987C(&v144, v31, &qword_21705BCF8);
        }

        else
        {
          v57 = v138;
          v138[(v78 >> 6) + 8] |= 1 << v78;
          v82 = (v57[6] + 16 * v78);
          *v82 = v48;
          v82[1] = a1;
          sub_2166EF9C4(v139, (v57[7] + 32 * v78));
          isUniquelyReferenced_nonNull_native = v31;
          sub_21669987C(&v144, v31, &qword_21705BCF8);
          v83 = v57[2];
          v84 = __OFADD__(v83, 1);
          v85 = v83 + 1;
          if (v84)
          {
            goto LABEL_60;
          }

          v57[2] = v85;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v143);
        a1 = v137;
        v56 = v136;
        v64 = v135;
        v60 = v134;
        if (!v63)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      while (1)
      {
        v67 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          break;
        }

        if (v67 >= v64)
        {

          *&v146 = v57;
          sub_2166EF9C4(&v146, &v144);
          v86 = v114;
          swift_isUniquelyReferenced_nonNull_native();
          v142 = v86;
          OUTLINED_FUNCTION_10();
          sub_2166EF9D4();
          v48 = v142;
          goto LABEL_48;
        }

        v63 = *(v60 + 8 * v67);
        ++v65;
        if (v63)
        {
          v65 = v67;
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_60:
    __break(1u);
  }

  else
  {
LABEL_48:
    v87 = *(a1 + *(v133 + 44));
    v65 = v127;
    v63 = v124;
    v31 = v119;
    if (v87 != 8)
    {
      v145 = &type metadata for MusicMetrics.ActionContext;
      LOBYTE(v144) = v87;
      v88 = OUTLINED_FUNCTION_4_126();
      sub_2166EF9C4(v88, v89);
      swift_isUniquelyReferenced_nonNull_native();
      v140 = v48;
      OUTLINED_FUNCTION_10();
      sub_2166EF9D4();
      v48 = v140;
    }

    v56 = *a1;
    v64 = *(a1 + 8);
    LOBYTE(v144) = *(a1 + 16);
    isUniquelyReferenced_nonNull_native = MusicMetrics.TargetType.rawValue.getter();
    v57 = v90;
    if (qword_280E46040 == -1)
    {
      goto LABEL_51;
    }
  }

  swift_once();
LABEL_51:
  v91 = sub_21700CF84();
  v92 = __swift_project_value_buffer(v91, qword_280E73DB0);
  MEMORY[0x21CE9DD70](v56, v64, isUniquelyReferenced_nonNull_native, v57, v48, v92);

  v94 = *(a1 + 24);
  v93 = *(a1 + 32);
  sub_21700DA74();
  v95 = v125;
  if (v93 >> 60 != 15)
  {
    *&v144 = v94;
    *(&v144 + 1) = v93;
    sub_21677A404(v94, v93);
    if (qword_27CAB5E28 != -1)
    {
      swift_once();
    }

    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4150, &qword_21704BC70);
    __swift_project_value_buffer(v96, qword_27CB229F8);
    sub_21700DA24();
    v97 = OUTLINED_FUNCTION_6_103();
    v98(v97);
    sub_21677A510(v94, v93);
    v99 = OUTLINED_FUNCTION_5_117();
    v100(v99);
  }

  if (v95)
  {
    *&v144 = v95;
    *(&v144 + 1) = v118;
    swift_unknownObjectRetain();
    v101 = v115;
    sub_21700DA34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB60, &unk_21706CE20);
    sub_21700DA24();
    (*(v116 + 8))(v101, v117);
    v102 = OUTLINED_FUNCTION_6_103();
    v103(v102);
    swift_unknownObjectRelease();
    v104 = OUTLINED_FUNCTION_5_117();
    v105(v104);
  }

  *&v144 = v130;
  v106 = v126;
  sub_21700DA44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  sub_21700DA24();
  (*(v128 + 8))(v106, v129);
  v107 = *(v63 + 8);
  v107(v31, v65);

  v108 = *(v63 + 32);
  v109 = OUTLINED_FUNCTION_5_117();
  v108(v109);
  v110 = v122;
  (v108)(v122, v31, v65);
  v111 = v132;
  sub_21700D564();

  v107(v110, v65);
  return (*(v121 + 8))(v111, v123);
}

uint64_t sub_216C95860@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8028, &unk_21705BDC0);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  v14 = type metadata accessor for MappedCatalogPage(0);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  v15 = sub_216C98294(&qword_280E3FFB0, type metadata accessor for MappedCatalogPage, &unk_21703537C);
  sub_216C95998(a1, a2, v13, a3, v14, a4, v15, a5);
  return sub_216697664(v13, &qword_27CAC8028, &unk_21705BDC0);
}

uint64_t sub_216C95998@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v257 = a7;
  v274 = a4;
  v266 = a3;
  v267 = a8;
  v269 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088, &qword_217020CA0);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_0(&v249 - v13);
  v250 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v259 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v268 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC18, &unk_21702C340);
  OUTLINED_FUNCTION_36(v18);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v21 = OUTLINED_FUNCTION_8_0(&v249 - v20);
  type metadata accessor for PlayActionItem(v21);
  OUTLINED_FUNCTION_1();
  v279 = v23;
  v280 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v278 = &v249 - v28;
  v254 = type metadata accessor for PlayAction(0);
  OUTLINED_FUNCTION_1();
  v255 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7();
  v33 = v32 - v31;
  sub_21700F164();
  OUTLINED_FUNCTION_1();
  v264 = v35;
  v265 = v34;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  v263 = &v249 - v37;
  v270 = a5;
  v262 = *(a5 - 8);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7();
  v261 = v40 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  v42 = OUTLINED_FUNCTION_36(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_77();
  v253 = v43 - v44;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v45);
  v47 = &v249 - v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6_4();
  v283 = v49;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_8_0(&v249 - v51);
  sub_217006924();
  OUTLINED_FUNCTION_1();
  v276 = v53;
  v277 = v52;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_77();
  v281 = v54 - v55;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_6_4();
  v273 = v57;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_6_4();
  v275 = v59;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v60);
  v256 = &v249 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v63 = OUTLINED_FUNCTION_36(v62);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_77();
  v251 = v64 - v65;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v66);
  v68 = &v249 - v67;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_6_4();
  v284 = v70;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v71);
  v73 = &v249 - v72;
  v74 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_7();
  v78 = (v77 - v76);
  v79 = *(a6 + 32);
  v271 = a1;
  v272 = a6;
  v79(v274, a6);
  v282 = v74;
  OUTLINED_FUNCTION_31_2(v73, 1, v74);
  if (v84)
  {
    v80 = &qword_27CAB6A00;
    v81 = &unk_217016B60;
    v82 = v73;
  }

  else
  {
    sub_2168ED900(v73, v78);
    v83 = *v78;
    v84 = v83 == 14 || v83 == 4;
    if (!v84)
    {
      OUTLINED_FUNCTION_0_217();
      sub_216C9823C(v78, v155);
      goto LABEL_13;
    }

    v85 = v258;
    sub_216C6C5E8(v258);
    v86 = v277;
    OUTLINED_FUNCTION_31_2(v85, 1, v277);
    if (!v84)
    {
      v151 = v276;
      v152 = v256;
      (*(v276 + 32))(v256, v85, v86);
      sub_216C96BAC(v152, v271, v269, v274, v272, v267);
      (*(v151 + 8))(v152, v86);
      OUTLINED_FUNCTION_0_217();
      return sub_216C9823C(v78, v153);
    }

    OUTLINED_FUNCTION_0_217();
    sub_216C9823C(v78, v87);
    v80 = &unk_27CABF9C0;
    v81 = &qword_21701ADB0;
    v82 = v85;
  }

  sub_216697664(v82, v80, v81);
LABEL_13:
  v88 = v272;
  v89 = v274;
  v90 = (v272[3])(v274, v272);
  if (!v91)
  {
    v101 = (v88[2])(v89, v88);
    if (!v101)
    {
LABEL_85:
      type metadata accessor for PlaybackItemsPresenter.Error(0);
      OUTLINED_FUNCTION_2_153();
      v214 = sub_216C98294(v212, v213, &unk_21705BD80);
      OUTLINED_FUNCTION_3_0(v214);
      goto LABEL_86;
    }

    v102 = *(v101 + 16);
    if (!v102)
    {

      v208 = MEMORY[0x277D84F90];
      v159 = v259;
      v157 = v267;
      v158 = v268;
      v160 = v281;
LABEL_81:
      if (*(v208 + 16))
      {
        MEMORY[0x28223BE20](v156);
        *(&v249 - 2) = v209;
        v210 = v260;
        v211 = sub_216A95A74(sub_216C9819C, (&v249 - 4), v208);
        if (v210)
        {
        }

        v162 = v211;
        v284 = v208;
        v215 = v272[2](v274);
        if (v215)
        {
          v216 = v252;
          sub_216CE0898(v215, v252);
          v217 = v216;

          v218 = OUTLINED_FUNCTION_16_1();
          v219 = v280;
          OUTLINED_FUNCTION_31_2(v218, v220, v280);
          if (v84)
          {

            v221 = &qword_27CABDC18;
            v222 = &unk_21702C340;
            v223 = v217;
          }

          else
          {
            v224 = v251;
            sub_216919014(v217 + *(v219 + 24), v251);
            OUTLINED_FUNCTION_1_186();
            sub_216C9823C(v217, v225);
            OUTLINED_FUNCTION_31_2(v224, 1, v282);
            if (!v226)
            {
              v229 = v253;
              sub_216C6C5E8(v253);
              OUTLINED_FUNCTION_0_217();
              sub_216C9823C(v224, v230);
              v231 = OUTLINED_FUNCTION_16_1();
              v232 = v277;
              OUTLINED_FUNCTION_31_2(v231, v233, v277);
              if (!v234)
              {
                (*(v276 + 32))(v160, v229, v232);
                v235 = v249;
                sub_217006A84();
                v236 = v235;
                v237 = OUTLINED_FUNCTION_16_1();
                v238 = v160;
                v160 = v250;
                OUTLINED_FUNCTION_31_2(v237, v239, v250);
                if (v240)
                {

                  sub_216697664(v236, &qword_27CAB7088, &qword_217020CA0);
                  type metadata accessor for PlaybackItemsPresenter.Error(0);
                  OUTLINED_FUNCTION_2_153();
                  v243 = sub_216C98294(v241, v242, &unk_21705BD80);
                  OUTLINED_FUNCTION_3_0(v243);
                  v244 = v276;
                  (*(v276 + 16))(v245, v238, v232);
                  swift_storeEnumTagMultiPayload();
                  swift_willThrow();
                  return (*(v244 + 8))(v238, v232);
                }

                (*(v276 + 8))(v238, v232);
                v246 = v236;
                v138 = *(v159 + 32);
                (v138)(v158, v246, v160);
                v247 = *(v284 + 16);

                if (v247 != 1)
                {
                  goto LABEL_112;
                }

                (v138)(v157, v158, v160);
                OUTLINED_FUNCTION_20_57();
                return swift_storeEnumTagMultiPayload();
              }

LABEL_98:
              sub_216697664(v229, &unk_27CABF9C0, &qword_21701ADB0);
              *v157 = v162;
              OUTLINED_FUNCTION_20_57();
              return swift_storeEnumTagMultiPayload();
            }

            v221 = &qword_27CAB6A00;
            v222 = &unk_217016B60;
            v223 = v224;
          }

          sub_216697664(v223, v221, v222);
        }

        else
        {
        }

        v229 = v253;
        v227 = OUTLINED_FUNCTION_16_1();
        __swift_storeEnumTagSinglePayload(v227, v228, 1, v277);
        goto LABEL_98;
      }

      goto LABEL_85;
    }

    v103 = *(v280 + 24);
    OUTLINED_FUNCTION_21_1();
    v278 = v104;
    v106 = &v104[v105];
    v107 = v277;
    v283 = (v276 + 32);
    v284 = MEMORY[0x277D84F90];
    v109 = *(v108 + 72);
    v279 = v103;
    while (1)
    {
      OUTLINED_FUNCTION_5_118();
      sub_216C981DC(v106, v26, v110);
      sub_216919014(v26 + v103, v68);
      OUTLINED_FUNCTION_31_2(v68, 1, v282);
      if (v84)
      {
        OUTLINED_FUNCTION_1_186();
        sub_216C9823C(v26, v111);
        sub_216697664(v68, &qword_27CAB6A00, &unk_217016B60);
        __swift_storeEnumTagSinglePayload(v47, 1, 1, v107);
      }

      else
      {
        sub_216C6C5E8(v47);
        OUTLINED_FUNCTION_1_186();
        sub_216C9823C(v26, v112);
        OUTLINED_FUNCTION_0_217();
        sub_216C9823C(v68, v113);
        OUTLINED_FUNCTION_31_2(v47, 1, v107);
        if (!v114)
        {
          v115 = v107;
          v116 = *v283;
          (*v283)(v273, v47, v115);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v118 = v284;
          }

          else
          {
            v125 = OUTLINED_FUNCTION_29_0();
            sub_2169375D4(v125, v126, v127, v128);
            v118 = v129;
          }

          v120 = *(v118 + 16);
          v119 = *(v118 + 24);
          if (v120 >= v119 >> 1)
          {
            sub_2169375D4(v119 > 1, v120 + 1, 1, v118);
            v118 = v130;
          }

          *(v118 + 16) = v120 + 1;
          v121 = v277;
          OUTLINED_FUNCTION_21_1();
          v124 = OUTLINED_FUNCTION_16_60(v122, v123);
          v116(v124, v273, v121);
          v107 = v121;
          v103 = v279;
          goto LABEL_31;
        }
      }

      sub_216697664(v47, &unk_27CABF9C0, &qword_21701ADB0);
LABEL_31:
      v106 += v109;
      if (!--v102)
      {

        v157 = v267;
        v158 = v268;
        v159 = v259;
        v160 = v281;
        goto LABEL_80;
      }
    }
  }

  v92 = v90;
  v93 = v91;
  v95 = v263;
  v94 = v264;
  v96 = v265;
  (*(v264 + 16))(v263, v266, v265);
  v97 = v270;
  OUTLINED_FUNCTION_31_2(v95, 1, v270);
  if (v84)
  {

    (*(v94 + 8))(v95, v96);
    type metadata accessor for PlaybackItemsPresenter.Error(0);
    OUTLINED_FUNCTION_2_153();
    v100 = sub_216C98294(v98, v99, &unk_21705BD80);
    OUTLINED_FUNCTION_3_0(v100);
LABEL_86:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  (*(v262 + 32))(v261, v95, v97);
  v131 = sub_216EE9CCC(v92, v93, v97, v257);

  v132 = *(v131 + 16);
  if (v132)
  {
    v133 = *(v254 + 20);
    OUTLINED_FUNCTION_21_1();
    v273 = v131;
    v135 = v131 + v134;
    v137 = *(v136 + 72);
    v138 = MEMORY[0x277D84F90];
    v139 = v284;
    do
    {
      sub_216C981DC(v135, v33, type metadata accessor for PlayAction);
      v140 = *(v33 + v133);
      sub_21700DF14();
      sub_216C9823C(v33, type metadata accessor for PlayAction);
      if (v140)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v143 = OUTLINED_FUNCTION_29_0();
          sub_216937748(v143, v144, v145, v138);
          v138 = v146;
        }

        v142 = *(v138 + 16);
        v141 = *(v138 + 24);
        if (v142 >= v141 >> 1)
        {
          v147 = OUTLINED_FUNCTION_17_62(v141);
          sub_216937748(v147, v148, v149, v138);
          v138 = v150;
        }

        *(v138 + 16) = v142 + 1;
        *(v138 + 8 * v142 + 32) = v140;
        v139 = v284;
      }

      v135 += v137;
      --v132;
    }

    while (v132);
  }

  else
  {

    v138 = MEMORY[0x277D84F90];
    v139 = v284;
  }

  v161 = 0;
  v162 = *(v138 + 16);
  v157 = MEMORY[0x277D84F90];
  v158 = v268;
  v160 = v281;
  while (1)
  {
    v163 = v283;
    if (v162 == v161)
    {

      v173 = *(v157 + 2);
      if (v173)
      {
        v174 = *(v280 + 24);
        OUTLINED_FUNCTION_21_1();
        v176 = &v157[v175];
        v177 = v277;
        v273 = (v276 + 32);
        v284 = MEMORY[0x277D84F90];
        v179 = *(v178 + 72);
        v180 = v278;
        while (1)
        {
          OUTLINED_FUNCTION_5_118();
          sub_216C981DC(v176, v180, v181);
          sub_216919014(v180 + v174, v139);
          OUTLINED_FUNCTION_31_2(v139, 1, v282);
          if (v84)
          {
            OUTLINED_FUNCTION_1_186();
            sub_216C9823C(v180, v182);
            sub_216697664(v139, &qword_27CAB6A00, &unk_217016B60);
            v183 = OUTLINED_FUNCTION_16_1();
            __swift_storeEnumTagSinglePayload(v183, v184, 1, v177);
          }

          else
          {
            sub_216C6C5E8(v163);
            v180 = v278;
            OUTLINED_FUNCTION_1_186();
            sub_216C9823C(v180, v185);
            OUTLINED_FUNCTION_0_217();
            sub_216C9823C(v139, v186);
            v187 = OUTLINED_FUNCTION_16_1();
            OUTLINED_FUNCTION_31_2(v187, v188, v177);
            if (!v189)
            {
              v190 = *v273;
              (*v273)(v275, v163, v177);
              v191 = swift_isUniquelyReferenced_nonNull_native();
              if (v191)
              {
                v192 = v284;
              }

              else
              {
                v198 = OUTLINED_FUNCTION_29_0();
                sub_2169375D4(v198, v199, v200, v201);
                v192 = v202;
              }

              v194 = *(v192 + 16);
              v193 = *(v192 + 24);
              if (v194 >= v193 >> 1)
              {
                v203 = OUTLINED_FUNCTION_17_62(v193);
                sub_2169375D4(v203, v204, v205, v206);
                v192 = v207;
              }

              *(v192 + 16) = v194 + 1;
              OUTLINED_FUNCTION_21_1();
              v197 = OUTLINED_FUNCTION_16_60(v195, v196);
              v177 = v277;
              v190(v197);
              v180 = v278;
              v163 = v283;
              goto LABEL_75;
            }
          }

          sub_216697664(v163, &unk_27CABF9C0, &qword_21701ADB0);
LABEL_75:
          v176 += v179;
          if (!--v173)
          {

            v158 = v268;
            v160 = v281;
            goto LABEL_79;
          }
        }
      }

      v284 = MEMORY[0x277D84F90];
LABEL_79:
      v156 = (*(v262 + 8))(v261, v270);
      v157 = v267;
      v159 = v259;
LABEL_80:
      v208 = v284;
      goto LABEL_81;
    }

    if (v161 >= *(v138 + 16))
    {
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      v248 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7FB0, &unk_21705BD00) + 48);
      (v138)(v157, v158, v160);
      *&v157[v248] = v162;
      OUTLINED_FUNCTION_20_57();
      return swift_storeEnumTagMultiPayload();
    }

    v160 = *(v138 + 8 * v161 + 32);
    v164 = *(v160 + 16);
    v165 = *(v157 + 2);
    v166 = v165 + v164;
    if (__OFADD__(v165, v164))
    {
      goto LABEL_109;
    }

    sub_21700DF14();
    v167 = swift_isUniquelyReferenced_nonNull_native();
    if (!v167 || v166 > *(v157 + 3) >> 1)
    {
      if (v165 <= v166)
      {
        v168 = v165 + v164;
      }

      else
      {
        v168 = v165;
      }

      sub_216937708(v167, v168, 1, v157);
      v157 = v169;
    }

    v139 = v284;
    if (*(v160 + 16))
    {
      break;
    }

    v160 = v281;
    if (v164)
    {
      goto LABEL_110;
    }

LABEL_61:
    ++v161;
  }

  if ((*(v157 + 3) >> 1) - *(v157 + 2) < v164)
  {
    goto LABEL_111;
  }

  swift_arrayInitWithCopy();

  v160 = v281;
  if (!v164)
  {
    goto LABEL_61;
  }

  v170 = *(v157 + 2);
  v171 = __OFADD__(v170, v164);
  v172 = v170 + v164;
  if (!v171)
  {
    *(v157 + 2) = v172;
    goto LABEL_61;
  }

  __break(1u);
  return result;
}

uint64_t sub_216C96BAC@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t (**a5)(char *)@<X4>, char *a6@<X8>)
{
  v160 = a6;
  v164 = a5;
  v162 = a2;
  v163 = a4;
  v8 = sub_21700BA44();
  v147 = *(v8 - 8);
  v148 = v8;
  MEMORY[0x28223BE20](v8);
  v143 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_21700C924();
  v138 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v146 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21700C1E4();
  v144 = *(v11 - 8);
  v145 = v11;
  MEMORY[0x28223BE20](v11);
  v149 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_21700C084();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v137 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDFF8, &unk_21702D450);
  MEMORY[0x28223BE20](v151);
  v156 = &v132 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC18, &unk_21702C340);
  MEMORY[0x28223BE20](v15 - 8);
  v159 = &v132 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v17 - 8);
  v158 = &v132 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  MEMORY[0x28223BE20](v19 - 8);
  v161 = (&v132 - v20);
  v21 = sub_217006924();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v157 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088, &qword_217020CA0);
  MEMORY[0x28223BE20](v24 - 8);
  v153 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v132 - v27;
  v29 = sub_2170067A4();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v150 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v139 = &v132 - v33;
  MEMORY[0x28223BE20](v34);
  v154 = &v132 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v132 - v37;
  v155 = a3;
  sub_217006A84();
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_216697664(v28, &qword_27CAB7088, &qword_217020CA0);
    type metadata accessor for PlaybackItemsPresenter.Error(0);
    sub_216C98294(&qword_27CAC7FA8, type metadata accessor for PlaybackItemsPresenter.Error, &unk_21705BD80);
    swift_allocError();
    (*(v22 + 16))(v39, a1, v21);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v135 = a1;
  v136 = v22;
  v152 = v21;
  v134 = v30;
  v41 = *(v30 + 32);
  v41(v38, v28, v29);
  v42 = v164[2](v163);
  v43 = v29;
  if (!v42)
  {
    goto LABEL_9;
  }

  v44 = v159;
  sub_216CE0898(v42, v159);

  v45 = type metadata accessor for PlayActionItem(0);
  if (__swift_getEnumTagSinglePayload(v44, 1, v45) == 1)
  {
    v46 = &qword_27CABDC18;
    v47 = &unk_21702C340;
    v48 = v44;
LABEL_8:
    sub_216697664(v48, v46, v47);
LABEL_9:
    v51 = v161;
    __swift_storeEnumTagSinglePayload(v161, 1, 1, v152);
LABEL_10:
    sub_216697664(v51, &unk_27CABF9C0, &qword_21701ADB0);
LABEL_11:
    v41(v160, v38, v43);
    type metadata accessor for PlaybackItemsPresenter.PlaybackItems(0);
    return swift_storeEnumTagMultiPayload();
  }

  v49 = v158;
  sub_216919014(v44 + *(v45 + 24), v158);
  sub_216C9823C(v44, type metadata accessor for PlayActionItem);
  v50 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v49, 1, v50) == 1)
  {
    v46 = &qword_27CAB6A00;
    v47 = &unk_217016B60;
    v48 = v49;
    goto LABEL_8;
  }

  v51 = v161;
  sub_216C6C5E8(v161);
  sub_216C9823C(v49, type metadata accessor for ContentDescriptor);
  v52 = v152;
  if (__swift_getEnumTagSinglePayload(v51, 1, v152) == 1)
  {
    goto LABEL_10;
  }

  v53 = v136;
  v54 = v157;
  (*(v136 + 32))(v157, v51, v52);
  sub_216C98294(&qword_27CAC7FB8, MEMORY[0x277D2A5E8], MEMORY[0x277D2A5F0]);
  if (sub_21700E494())
  {
    (*(v53 + 8))(v54, v52);
    goto LABEL_11;
  }

  v55 = v153;
  sub_217006A84();
  if (__swift_getEnumTagSinglePayload(v55, 1, v43) == 1)
  {
    sub_216697664(v55, &qword_27CAB7088, &qword_217020CA0);
    type metadata accessor for PlaybackItemsPresenter.Error(0);
    sub_216C98294(&qword_27CAC7FA8, type metadata accessor for PlaybackItemsPresenter.Error, &unk_21705BD80);
    swift_allocError();
    (*(v53 + 16))(v56, v54, v52);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v53 + 8))(v54, v52);
    return (*(v134 + 8))(v38, v43);
  }

  v57 = v154;
  v41(v154, v55, v43);
  v58 = *(v151 + 48);
  v59 = v43;
  v60 = v134;
  v61 = *(v134 + 16);
  v62 = v156;
  v61(v156, v57, v43);
  v164 = v38;
  v61(&v58[v62], v38, v43);
  v63 = v60[11];
  v64 = v63(v62, v43);
  if (v64 == *MEMORY[0x277D2A3B8])
  {
    v65 = v150;
    v61(v150, v62, v43);
    v66 = v65;
    v67 = v60[12];
    v67(v66, v43);
    v68 = v63(&v58[v62], v43);
    v69 = v160;
    if (v68 == *MEMORY[0x277D2A400])
    {
      v70 = v134 + 8;
      v71 = *(v134 + 8);
      (v71)(v154, v59);
      v163 = v71;
      v134 = v70;
      (*(v136 + 8))(v157, v152);
      (v71)(v164, v59);
      v72 = v156;
      v67(&v58[v156], v59);
      v73 = v148;
      v74 = *(v147 + 32);
      v75 = v143;
      v74(v143, v150, v148);
      v164 = *(v144 + 32);
      v76 = v72;
      v77 = &v58[v72];
      v78 = v145;
      (v164)(v149, v77, v145);
      v162 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7FD0, &qword_21705BD20) + 48);
      v79 = v160;
      v74(v160, v75, v73);
      v80 = *MEMORY[0x277CD8350];
      v81 = sub_21700C2F4();
      (*(*(v81 - 8) + 104))(v79, v80, v81);
      (v164)(v162 + v79, v149, v78);
      type metadata accessor for PlaybackItemsPresenter.ContainerItem(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for PlaybackItemsPresenter.PlaybackItems(0);
      swift_storeEnumTagMultiPayload();
      v82 = v76;
      v83 = v59;
      return (v163)(v82, v83);
    }

    v100 = v156;
    v133 = v43;
    if (v68 == *MEMORY[0x277D2A440])
    {
      v101 = v67;
      v102 = v134 + 8;
      v103 = *(v134 + 8);
      v104 = v133;
      (v103)(v154, v133);
      v163 = v103;
      v134 = v102;
      (*(v136 + 8))(v157, v152);
      (v103)(v164, v104);
      v101(&v58[v100], v104);
      v105 = v148;
      v106 = *(v147 + 32);
      v107 = v143;
      v106(v143, v150, v148);
      v108 = *(v138 + 32);
      v109 = &v58[v100];
      v110 = v142;
      v108(v146, v109, v142);
      v164 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7FC8, &qword_21705BD18) + 48);
      v106(v69, v107, v105);
      v111 = *MEMORY[0x277CD8540];
      v112 = sub_21700C894();
      (*(*(v112 - 8) + 104))(v69, v111, v112);
      v108(v164 + v69, v146, v110);
      type metadata accessor for PlaybackItemsPresenter.ContainerItem(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for PlaybackItemsPresenter.PlaybackItems(0);
      swift_storeEnumTagMultiPayload();
      v82 = v156;
      v83 = v133;
      return (v163)(v82, v83);
    }

    (*(v147 + 8))(v150, v148);
LABEL_30:
    v60 = v134;
    goto LABEL_31;
  }

  v133 = v43;
  if (v64 == *MEMORY[0x277D2A3F8])
  {
    v84 = v139;
    v85 = v133;
    v61(v139, v62, v133);
    v162 = v60[12];
    v162(v84, v85);
    v163 = v58;
    v86 = v63(&v58[v62], v85);
    if (v86 == *MEMORY[0x277D2A400])
    {
      v87 = v134 + 8;
      v88 = *(v134 + 8);
      v88(v154, v85);
      v161 = v88;
      v134 = v87;
      (*(v136 + 8))(v157, v152);
      v88(v164, v85);
      v89 = v163;
      v90 = v156;
      v162(&v163[v156], v85);
      v91 = *(v140 + 32);
      v92 = v137;
      v93 = v141;
      v91(v137, v84, v141);
      v94 = v145;
      v95 = *(v144 + 32);
      v95(v149, &v89[v90], v145);
      v96 = v95;
      v164 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7FD0, &qword_21705BD20) + 48);
      v97 = v160;
      v91(v160, v92, v93);
      v98 = *MEMORY[0x277CD8368];
      v99 = sub_21700C2F4();
      (*(*(v99 - 8) + 104))(v97, v98, v99);
      v96(v164 + v97, v149, v94);
      type metadata accessor for PlaybackItemsPresenter.ContainerItem(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for PlaybackItemsPresenter.PlaybackItems(0);
      swift_storeEnumTagMultiPayload();
      return (v161)(v156, v133);
    }

    v114 = v162;
    v113 = v163;
    v115 = v156;
    if (v86 == *MEMORY[0x277D2A440])
    {
      v116 = *(v134 + 8);
      v117 = v133;
      v116(v154, v133);
      v161 = v116;
      (*(v136 + 8))(v157, v152);
      v116(v164, v117);
      v114(&v113[v115], v117);
      v118 = *(v140 + 32);
      v119 = v137;
      v120 = v141;
      v118(v137, v84, v141);
      v121 = *(v138 + 32);
      v121(v146, &v113[v115], v142);
      v164 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7FC8, &qword_21705BD18) + 48);
      v122 = v160;
      v118(v160, v119, v120);
      v123 = *MEMORY[0x277CD8548];
      v124 = sub_21700C894();
      (*(*(v124 - 8) + 104))(v122, v123, v124);
      v121(v164 + v122, v146, v142);
      type metadata accessor for PlaybackItemsPresenter.ContainerItem(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for PlaybackItemsPresenter.PlaybackItems(0);
      swift_storeEnumTagMultiPayload();
      return (v161)(v156, v133);
    }

    (*(v140 + 8))(v84, v141);
    goto LABEL_30;
  }

LABEL_31:
  type metadata accessor for PlaybackItemsPresenter.Error(0);
  sub_216C98294(&qword_27CAC7FA8, type metadata accessor for PlaybackItemsPresenter.Error, &unk_21705BD80);
  swift_allocError();
  v126 = v125;
  v127 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7FC0, &qword_21705BD10) + 48);
  v128 = v154;
  v129 = v133;
  v61(v126, v154, v133);
  v130 = v164;
  v61(v126 + v127, v164, v129);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v131 = v60[1];
  v131(v128, v129);
  (*(v136 + 8))(v157, v152);
  v131(v130, v129);
  return sub_216697664(v156, &qword_27CABDFF8, &unk_21702D450);
}

uint64_t sub_216C97FB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088, &qword_217020CA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  sub_217006A84();
  v9 = sub_2170067A4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    return (*(*(v9 - 8) + 32))(a3, v8, v9);
  }

  sub_216697664(v8, &qword_27CAB7088, &qword_217020CA0);
  type metadata accessor for PlaybackItemsPresenter.Error(0);
  sub_216C98294(&qword_27CAC7FA8, type metadata accessor for PlaybackItemsPresenter.Error, &unk_21705BD80);
  v10 = swift_allocError();
  v12 = v11;
  v13 = sub_217006924();
  (*(*(v13 - 8) + 16))(v12, a1, v13);
  swift_storeEnumTagMultiPayload();
  result = swift_willThrow();
  *a2 = v10;
  return result;
}

uint64_t sub_216C981DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216C9823C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216C98294(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216C982FC(uint64_t a1)
{
  v1 = sub_217006924();
  if (v2 <= 0x3F)
  {
    sub_216C98388(319);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_216C98388(uint64_t a1)
{
  if (!qword_27CAC7FE8)
  {
    sub_2170067A4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CAC7FE8);
    }
  }
}

void sub_216C98400(uint64_t a1)
{
  sub_216C984D4(319, &qword_27CAC8000, MEMORY[0x277CD83B8], MEMORY[0x277CD82C8]);
  if (v1 <= 0x3F)
  {
    sub_216C984D4(319, &qword_27CAC8008, MEMORY[0x277CD8560], MEMORY[0x277CD8608]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_216C984D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_216C98554(uint64_t a1)
{
  type metadata accessor for PlaybackItemsPresenter.ContainerItem(319);
  if (v1 <= 0x3F)
  {
    sub_216C985F0(319);
    if (v2 <= 0x3F)
    {
      sub_2170067A4();
      if (v3 <= 0x3F)
      {
        sub_2166E1BD4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_216C985F0(uint64_t a1)
{
  if (!qword_27CAC8020)
  {
    sub_2170067A4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A38, &unk_217015A70);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CAC8020);
    }
  }
}

MusicUI::SearchScope_optional __swiftcall SearchScope.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21700F5E4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

void sub_216C986DC()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for MusicMetrics.ClickFields(0);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB50, &qword_217016010);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v11 = sub_21700D574();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  v18 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_objectGraph;
  if (!*(v0 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_objectGraph))
  {
    goto LABEL_6;
  }

  v43 = *v3;
  type metadata accessor for MusicPageMetricsProvider(0);

  sub_21700D4B4();

  v19 = v44;
  if (!v44)
  {
    goto LABEL_6;
  }

  v20 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  swift_beginAccess();
  v21 = sub_21700D194();
  if (__swift_getEnumTagSinglePayload(v19 + v20, 1, v21))
  {
    swift_endAccess();
LABEL_5:

LABEL_6:
    if (qword_27CAB6018 != -1)
    {
      OUTLINED_FUNCTION_2_154(&qword_27CAB6018);
    }

    v22 = sub_217007CA4();
    __swift_project_value_buffer(v22, qword_27CAC8030);
    v23 = sub_217007C84();
    v24 = sub_21700ED84();
    if (os_log_type_enabled(v23, v24))
    {
      *OUTLINED_FUNCTION_43() = 0;
      OUTLINED_FUNCTION_50_0(&dword_216679000, v25, v26, "Click event was not reported because no page fields were found");
      OUTLINED_FUNCTION_6();
    }

    goto LABEL_11;
  }

  v27 = sub_21700D0F4();
  swift_endAccess();
  if (!v27)
  {
    goto LABEL_5;
  }

  v42 = v27;
  if (*(v1 + v18))
  {

    sub_21700D4B4();

    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      (*(v13 + 32))(v17, v10, v11);
      if (v43)
      {
        v35 = 0x7262694C72756F59;
      }

      else
      {
        v35 = 0x73754D656C707041;
      }

      if (v43)
      {
        v36 = 0xEB00000000797261;
      }

      else
      {
        v36 = 0xEA00000000006369;
      }

      sub_217005EF4();
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
      *v7 = v35;
      *(v7 + 8) = v36;
      *(v7 + 16) = 3842;
      *(v7 + 24) = xmmword_217029BA0;
      *(v7 + 40) = 0;
      *(v7 + *(v4 + 44)) = 8;
      *(v7 + *(v4 + 40)) = 0;
      sub_216C949EC(v7, v42, v17, *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker), *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker + 8), 0x686372616553, 0xE600000000000000);

      sub_216C9CFB4(v7);
      (*(v13 + 8))(v17, v11);
      goto LABEL_11;
    }
  }

  else
  {

    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v11);
  }

  sub_2166997CC(v10, &unk_27CABFB50, &qword_217016010);
  if (qword_27CAB6018 != -1)
  {
    OUTLINED_FUNCTION_2_154(&qword_27CAB6018);
  }

  v31 = sub_217007CA4();
  __swift_project_value_buffer(v31, qword_27CAC8030);
  v32 = sub_217007C84();
  v33 = sub_21700ED84();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_43();
    *v34 = 0;
    _os_log_impl(&dword_216679000, v32, v33, "Click event was not reported because no metrics pipeline was provided", v34, 2u);
    OUTLINED_FUNCTION_6();
  }

LABEL_11:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216C98B74(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter__landingPresenter;
  if (*(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter__landingPresenter))
  {
    v4 = *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter__landingPresenter);
  }

  else
  {
    v10[3] = type metadata accessor for SearchLandingPageIntent(0);
    v10[4] = sub_216C9D090(&qword_280E377C8, type metadata accessor for SearchLandingPageIntent, &unk_21702FC18);
    __swift_allocate_boxed_opaque_existential_1(v10);
    type metadata accessor for ReferrerInfo(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    v4 = sub_216CDFAE0(v10, a1, 0, 0);
    sub_2166997CC(v10, &qword_27CAB6AB8, &unk_217013E10);
    *(v1 + v3) = v4;
  }

  return v4;
}

uint64_t sub_216C98C74(uint64_t a1, uint64_t a2)
{
  v5 = sub_216C99318();
  v6 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_isApplyingSearchTextUpdate;
  *(v2 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_isApplyingSearchTextUpdate) = 1;
  sub_21700DF14();
  sub_216C993F8(a1, a2);
  v7 = (v2 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_lastEditedText);
  *v7 = a1;
  v7[1] = a2;
  sub_21700DF14();

  *(v2 + v6) = 0;
  return v5;
}

void sub_216C98D10()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v57 = v2;
  v56 = v3;
  v61 = v4;
  v62 = v5;
  v59 = v6;
  v58 = v7;
  v9 = v8;
  v11 = v10;
  v60 = *v0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v54 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v53 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v52 = v16;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  sub_217005914();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  if (v9)
  {
    v21 = v9;
  }

  else
  {
    sub_216C99A14();
    v11 = v22;
    v21 = v23;
  }

  sub_21700DF14();
  sub_216C99870(v72);
  if (v73 == 1)
  {
    v25 = v72[0];
    v24 = v72[1];

    if (v25 == v11 && v24 == v21)
    {

LABEL_24:
      OUTLINED_FUNCTION_26();

      return;
    }

    v27 = sub_21700F7D4();

    if (v27)
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_216C1C864(v72);
  }

  *&v69 = v11;
  *(&v69 + 1) = v21;
  sub_2170058F4();
  sub_2167B2E14();
  v28 = sub_21700F1A4();
  v30 = v29;
  v31 = OUTLINED_FUNCTION_45_0();
  v32(v31);

  v33 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v33 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
    goto LABEL_22;
  }

  v34 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v34 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    v35 = &unk_280E73000;
    v36 = v61;
    if (v61)
    {
      if (v61 == 1)
      {
        v37 = *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_objectGraph);
        v38 = *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker);
        v39 = *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker + 8);

        sub_216C9C468(v11, v21, v37, v38, v39);
      }

      v40 = type metadata accessor for AddRecentSearchTermAction(0);
      *(&v70 + 1) = v40;
      v71 = sub_216C9D090(qword_280E35CE0, type metadata accessor for AddRecentSearchTermAction, &unk_217057D5C);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v69);
      sub_21700DF14();
      sub_21700D234();
      v42 = (boxed_opaque_existential_1 + *(v40 + 20));
      *v42 = v11;
      v42[1] = v21;
    }

    else
    {
      v71 = 0;
      v69 = 0u;
      v70 = 0u;
    }

    v44 = v62;
    sub_216681B64(&v69, &v63, &qword_27CAB6DB0, &qword_217016C00);
    if (v64)
    {
      sub_2166A0F18(&v63, &v65);
      if (*(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_objectGraph))
      {
        type metadata accessor for ObjectGraph(0);

        sub_21700E094();
        v45 = v54;
        v46 = v53;
        v47 = v55;
        (*(v54 + 104))(v53, *MEMORY[0x277D21E18], v55);
        sub_21700D5E4();

        v48 = v46;
        v44 = v62;
        v49 = v47;
        v36 = v61;
        (*(v45 + 8))(v48, v49);
        v35 = &unk_280E73000;
        (*(v52 + 8))(v19, v15);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v65);
    }

    else
    {
      sub_2166997CC(&v63, &qword_27CAB6DB0, &qword_217016C00);
    }

    v50 = *(v1 + v35[412]);

    sub_216C9B5F0(v11, v21, v36, v50, v56, v57);

    if (v58)
    {
      sub_216C03C2C(0);
    }

    *&v65 = v11;
    *(&v65 + 1) = v21;
    v66 = v59;
    v67 = v44;
    v68 = 1;
    sub_21700DF14();
    sub_216C9A934(&v65);
    sub_2166997CC(&v69, &qword_27CAB6DB0, &qword_217016C00);
  }

  else
  {
LABEL_22:
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216C99318()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216C9938C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216C99318();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_216C993B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21700DF14();
  return sub_216C993F8(v1, v2);
}

uint64_t sub_216C993F8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_217007DF4();
  sub_216C9A198(v3, v4);
}

uint64_t sub_216C994D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();
}

uint64_t sub_216C99550@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C994D8();
  *a1 = v3;
  return result;
}

uint64_t sub_216C995C4(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_217007DF4();
  return sub_216C9A5D8();
}

id sub_216C99690()
{
  v1 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter____lazy_storage___scopeBarView;
  v2 = *(v0 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter____lazy_storage___scopeBarView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter____lazy_storage___scopeBarView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D75A08]) init];
    [v5 _setUseGlass_];
    v6 = objc_allocWithZone(type metadata accessor for UIKitSearchScopeBar.ContainerView());
    v7 = sub_21694E6DC(v5);
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_216C99738(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_searchControllerIsPresented);
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_searchControllerIsPresented) = a1;
  return sub_216C9ACC8(v2);
}

uint64_t sub_216C99750(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_horizontalSizeClass;
  swift_beginAccess();
  sub_216681B64(v1 + v6, v5, &qword_27CAB8600, &qword_217020AD0);
  swift_beginAccess();
  sub_216C9D010(a1, v1 + v6);
  swift_endAccess();
  sub_216C9B148(v5);
  sub_2166997CC(a1, &qword_27CAB8600, &qword_217020AD0);
  return sub_2166997CC(v5, &qword_27CAB8600, &qword_217020AD0);
}

void sub_216C99858(char a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_searchControllerIsFocused);
  *(v2 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_searchControllerIsFocused) = a1;
  sub_216C9B47C(v3, a2);
}

double sub_216C99870@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_216C998F4(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  if (v7 == 1)
  {
    v5 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = sub_216C99B1C();
      MEMORY[0x28223BE20](v6);
      sub_217006954();
    }
  }

  return result;
}

void sub_216C99A14()
{
  OUTLINED_FUNCTION_49();
  v0 = sub_216C9AC30();
  if (v0)
  {
    v1 = v0;
    v2 = 0;
    v3 = *(v0 + 16);
    for (i = (v0 + 56); ; i += 4)
    {
      if (v3 == v2)
      {

        goto LABEL_12;
      }

      if (v2 >= *(v1 + 16))
      {
        break;
      }

      v6 = *(i - 1);
      v5 = *i;
      sub_21700DF14();
      sub_21700DF14();
      if (v6 == sub_216C99318() && v5 == v7)
      {

LABEL_14:

        goto LABEL_15;
      }

      v9 = sub_21700F7D4();

      if (v9)
      {
        goto LABEL_14;
      }

      ++v2;
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    sub_216C99318();
LABEL_15:
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_26();
  }
}

uint64_t sub_216C99B1C()
{
  v1 = v0;
  v2 = sub_21700B8B4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter____lazy_storage___autoUpdatingLibrarySearchResponse;
  if (*(v0 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter____lazy_storage___autoUpdatingLibrarySearchResponse))
  {
    v10 = *(v0 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter____lazy_storage___autoUpdatingLibrarySearchResponse);
  }

  else
  {
    v11 = sub_216C99318();
    sub_216C9AA30(v11, v12);

    v10 = sub_217006944();
    (*(v4 + 8))(v8, v2);
    *(v1 + v9) = v10;
  }

  return v10;
}

uint64_t SearchScope.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_216B27C18();
  sub_21700CCD4();
  sub_21700CF34();
  OUTLINED_FUNCTION_9_0();
  (*(v7 + 8))(a2);
  sub_21700CDF4();
  OUTLINED_FUNCTION_9_0();
  result = (*(v8 + 8))(a1);
  if (!v3)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t SearchScope.id.getter()
{
  if (*v0)
  {
    return 0x7972617262696CLL;
  }

  else
  {
    return 0x676F6C61746163;
  }
}

void sub_216C99E24()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8070, &qword_21705C188);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8068, &qword_21705C180);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4A8, &unk_217020680);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v19 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter__searchText;
  *&v34 = 0;
  *(&v34 + 1) = 0xE000000000000000;
  sub_217007DA4();
  (*(v15 + 32))(v1 + v19, v18, v13);
  if (qword_280E42D18 != -1)
  {
    swift_once();
  }

  sub_216F0FE50();
  if (*(v20 + 16))
  {
    v21 = *(v20 + 32);
  }

  else
  {
    v21 = 1;
  }

  v22 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter__scope;
  LOBYTE(v34) = v21;
  sub_217007DA4();
  (*(v9 + 32))(v1 + v22, v12, v7);
  v23 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter__state;
  v34 = 0u;
  v35 = 0u;
  v36 = 2;
  sub_217007DA4();
  (*(v3 + 32))(v1 + v23, v6, v33);
  v24 = (v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker);
  sub_21700DC34();
  v25 = sub_21700DC24();
  v26 = MEMORY[0x277D221C0];
  *v24 = v25;
  v24[1] = v26;
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_suggestionsPresenter) = 0;
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_objectGraph) = 0;
  v27 = (v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_lastEditedText);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_isApplyingSearchTextUpdate) = 0;
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter____lazy_storage___autoUpdatingLibrarySearchResponse) = 0;
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_searchControllerIsPresented) = 0;
  sub_2170098A4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_searchControllerIsFocused) = 0;
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_currentSuggestionsTask) = 0;
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter__landingPresenter) = 0;
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter____lazy_storage___scopeBarView) = 0;
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216C9A198(uint64_t a1, uint64_t a2)
{
  if (sub_216C99318() != a1 || v4 != a2)
  {
    v6 = sub_21700F7D4();

    if (v6 & 1) != 0 || (*(v2 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_isApplyingSearchTextUpdate))
    {
      return result;
    }

    v8 = sub_216C99318();
    v9 = (v2 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_lastEditedText);
    *v9 = v8;
    v9[1] = v10;

    sub_216C99318();
    sub_216C9A25C();
  }
}

void sub_216C9A25C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_217005914();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  *&v34 = v5;
  *(&v34 + 1) = v3;
  sub_2170058D4();
  sub_2167B2E14();
  v13 = sub_21700F1A4();
  v15 = v14;
  (*(v8 + 8))(v12, v6);

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_objectGraph);
    if (v17)
    {

      v18 = OUTLINED_FUNCTION_45_0();
      sub_216C9B5F0(v18, v19, 0, v17, 0, 0xE000000000000000);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_217007DE4();

      if (v33)
      {
        v20 = sub_216C99318();
        sub_216C998F4(v20, v21);

        OUTLINED_FUNCTION_6_104();
      }

      else
      {
        type metadata accessor for JSIntentDispatcher();
        sub_21700D4B4();
        if (v34)
        {

          v27 = OUTLINED_FUNCTION_45_0();
          *&v34 = v5;
          *(&v34 + 1) = v3;
          v35 = sub_216C9C2F4(v27, v28, v17);
          v36 = 0;
          v37 = 0;
          sub_21700DF14();

          sub_216C9A934(&v34);

LABEL_21:

          goto LABEL_22;
        }

        if (qword_27CAB6018 != -1)
        {
          OUTLINED_FUNCTION_2_154(&qword_27CAB6018);
        }

        v29 = sub_217007CA4();
        __swift_project_value_buffer(v29, qword_27CAC8030);
        v30 = sub_217007C84();
        v31 = sub_21700ED84();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = OUTLINED_FUNCTION_43();
          *v32 = 0;
          _os_log_impl(&dword_216679000, v30, v31, "App not bootstrapped yet.  Falling back to results state", v32, 2u);
          OUTLINED_FUNCTION_6();
        }

        OUTLINED_FUNCTION_6_104();
      }

      sub_216C9A934(&v34);
      goto LABEL_21;
    }

    if (qword_27CAB6018 != -1)
    {
      OUTLINED_FUNCTION_2_154(&qword_27CAB6018);
    }

    v22 = sub_217007CA4();
    __swift_project_value_buffer(v22, qword_27CAC8030);
    v23 = sub_217007C84();
    v24 = sub_21700ED84();
    if (os_log_type_enabled(v23, v24))
    {
      *OUTLINED_FUNCTION_43() = 0;
      OUTLINED_FUNCTION_50_0(&dword_216679000, v25, v26, "Could not update search text due to nil objectGraph");
      OUTLINED_FUNCTION_6();
    }
  }

  else
  {
    sub_216C9ACE8();
  }

LABEL_22:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216C9A5D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  result = sub_21688D1E4();
  if ((result & 1) == 0)
  {
    v1 = sub_216C99318();
    v3 = v2;

    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      sub_216C99318();
      sub_216C9A25C();
    }
  }

  return result;
}

uint64_t sub_216C9A698(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  sub_216C9CF00(a1, &v31);
  sub_216C99870(&v31);
  v9 = v31;
  v8 = v32;
  v10 = v35;
  if (*(a1 + 32))
  {
    v11 = v33;
    v12 = v34;
    sub_216C9CF38(v4, v3, v6, v5, v7);
    v13 = v9;
    v14 = v8;
    v15 = v11;
    v16 = v12;
    v17 = v10;
    return sub_216C9CF38(v13, v14, v15, v16, v17);
  }

  if (!v35)
  {
    v26 = v33;
    v27 = v34;
    sub_216C9CF38(v4, v3, v6, v5, v7);
    v13 = v9;
    v14 = v8;
    v15 = v26;
    v16 = v27;
    v17 = 0;
    return sub_216C9CF38(v13, v14, v15, v16, v17);
  }

  if (v35 == 1)
  {
    v19 = v33;
    v20 = v34;
    sub_216C9CF38(v4, v3, v6, v5, v7);
    v21 = v9;
    v22 = v8;
    v23 = v19;
    v24 = v20;
    v25 = 1;
  }

  else
  {
    v28 = v34;
    v29 = v33;
    if (v33 | v32 | v31 | v34)
    {
      sub_216C9CF38(v4, v3, v6, v5, v7);
      v21 = 1;
    }

    else
    {
      sub_216C9CF38(v4, v3, v6, v5, v7);
      v21 = v9;
    }

    v22 = v8;
    v23 = v29;
    v24 = v28;
    v25 = 2;
  }

  sub_216C9CF38(v21, v22, v23, v24, v25);
  *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_suggestionsPresenter) = 0;

  v30 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_currentSuggestionsTask;
  if (*(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_currentSuggestionsTask))
  {
    type metadata accessor for JSSearchPage(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
    sub_21700EB04();
  }

  *(v1 + v30) = 0;
}

double sub_216C9A8A0@<D0>(uint64_t a1@<X8>)
{
  sub_216C99870(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_216C9A8E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = *(a1 + 32);
  sub_216C9CF00(v4, v3);
  return sub_216C9A934(v4);
}

uint64_t sub_216C9A934(__int128 *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  v8[0] = v5;
  v8[1] = v6;
  v9 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1[1];
  v5 = *a1;
  v6 = v2;
  v7 = *(a1 + 32);

  sub_216C9CF00(a1, v4);
  sub_217007DF4();
  sub_216C9A698(v8);
  sub_216C1C864(v8);
  return sub_216C1C864(a1);
}

uint64_t sub_216C9AA30(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8060, &unk_21705C160);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21705BDD0;
  v3 = sub_21700C384();
  v4 = MEMORY[0x277CD83F8];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v5 = sub_21700C1E4();
  v6 = MEMORY[0x277CD8298];
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  v7 = sub_21700C084();
  v8 = MEMORY[0x277CD81F0];
  *(v2 + 64) = v7;
  *(v2 + 72) = v8;
  v9 = sub_21700C714();
  v10 = sub_216C9D090(&qword_280E2A388, MEMORY[0x277D2B358], MEMORY[0x277D2B338]);
  *(v2 + 80) = v9;
  *(v2 + 88) = v10;
  v11 = sub_21700BA44();
  v12 = MEMORY[0x277CD7E18];
  *(v2 + 96) = v11;
  *(v2 + 104) = v12;
  v13 = sub_2170072A4();
  v14 = sub_216C9D090(&qword_280E4A400, MEMORY[0x277D2AD30], MEMORY[0x277D2AD10]);
  *(v2 + 112) = v13;
  *(v2 + 120) = v14;
  v15 = sub_2170073D4();
  v16 = sub_216C9D090(&qword_280E4A3F8, MEMORY[0x277D2ADE8], MEMORY[0x277D2ADB0]);
  *(v2 + 128) = v15;
  *(v2 + 136) = v16;
  v17 = sub_217006B84();
  v18 = sub_216C9D090(&qword_280E4A428, MEMORY[0x277D2A7C8], MEMORY[0x277D2A780]);
  *(v2 + 144) = v17;
  *(v2 + 152) = v18;
  sub_21700DF14();
  sub_21700B894();
  sub_21700B884();
  sub_21700B874();
  return sub_21700B8A4();
}

uint64_t sub_216C9AC30()
{
  sub_216C9AC78();
  if (!v1)
  {
    return 0;
  }

  v2 = v0;

  return v2;
}

uint64_t sub_216C9AC78()
{
  sub_216C99870(&v1);
  if (!v2)
  {
    return v1;
  }

  sub_216C1C864(&v1);
  return 0;
}

uint64_t sub_216C9ACC8(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_searchControllerIsPresented) != (result & 1))
  {
    return sub_216C9ACE8();
  }

  return result;
}

uint64_t sub_216C9ACE8()
{
  v1 = v0;
  v2 = sub_2170098A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v31 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708, &qword_21701A3E0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_horizontalSizeClass;
  swift_beginAccess();
  (*(v3 + 104))(v14, *MEMORY[0x277CE0560], v2);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v2);
  v16 = *(v6 + 56);
  v17 = v1 + v15;
  v18 = v1;
  sub_216681B64(v17, v8, &qword_27CAB8600, &qword_217020AD0);
  sub_216681B64(v14, &v8[v16], &qword_27CAB8600, &qword_217020AD0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    sub_2166997CC(v14, &qword_27CAB8600, &qword_217020AD0);
    if (__swift_getEnumTagSinglePayload(&v8[v16], 1, v2) == 1)
    {
      sub_2166997CC(v8, &qword_27CAB8600, &qword_217020AD0);
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  sub_216681B64(v8, v11, &qword_27CAB8600, &qword_217020AD0);
  if (__swift_getEnumTagSinglePayload(&v8[v16], 1, v2) == 1)
  {
    sub_2166997CC(v14, &qword_27CAB8600, &qword_217020AD0);
    (*(v3 + 8))(v11, v2);
LABEL_6:
    sub_2166997CC(v8, &qword_27CAB8708, &qword_21701A3E0);
    goto LABEL_7;
  }

  v24 = v31;
  (*(v3 + 32))(v31, &v8[v16], v2);
  sub_216C9D090(&qword_280E2A858, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v25 = sub_21700E494();
  v26 = *(v3 + 8);
  v26(v24, v2);
  sub_2166997CC(v14, &qword_27CAB8600, &qword_217020AD0);
  v26(v11, v2);
  sub_2166997CC(v8, &qword_27CAB8600, &qword_217020AD0);
  if (v25)
  {
LABEL_13:
    v27 = sub_216C99318();
    v29 = v28;

    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (!v30)
    {
      goto LABEL_16;
    }

    return result;
  }

LABEL_7:
  if ((*(v18 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_searchControllerIsPresented) & 1) == 0)
  {
LABEL_16:
    v32 = 0u;
    v33 = 0u;
    goto LABEL_17;
  }

  v19 = sub_216C99318();
  v21 = v20;

  v23 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v23 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    v32 = 1uLL;
    v33 = 0uLL;
LABEL_17:
    v34 = 2;
    return sub_216C9A934(&v32);
  }

  return result;
}

uint64_t sub_216C9B148(uint64_t a1)
{
  v3 = sub_2170098A4();
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708, &qword_21701A3E0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_horizontalSizeClass;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_216681B64(a1, v12, &qword_27CAB8600, &qword_217020AD0);
  sub_216681B64(v1 + v13, &v12[v14], &qword_27CAB8600, &qword_217020AD0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v12[v14], 1, v3) == 1)
    {
      return sub_2166997CC(v12, &qword_27CAB8600, &qword_217020AD0);
    }

    goto LABEL_6;
  }

  sub_216681B64(v12, v8, &qword_27CAB8600, &qword_217020AD0);
  if (__swift_getEnumTagSinglePayload(&v12[v14], 1, v3) == 1)
  {
    (*(v19 + 8))(v8, v3);
LABEL_6:
    sub_2166997CC(v12, &qword_27CAB8708, &qword_21701A3E0);
    return sub_216C9ACE8();
  }

  v16 = v19;
  (*(v19 + 32))(v5, &v12[v14], v3);
  sub_216C9D090(&qword_280E2A858, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v17 = sub_21700E494();
  v18 = *(v16 + 8);
  v18(v5, v3);
  v18(v8, v3);
  result = sub_2166997CC(v12, &qword_27CAB8600, &qword_217020AD0);
  if ((v17 & 1) == 0)
  {
    return sub_216C9ACE8();
  }

  return result;
}

void sub_216C9B47C(char a1, double a2)
{
  v3 = v2;
  v4 = a1 & 1;
  v5 = sub_217005914();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_searchControllerIsFocused);
  if (v9 != v4)
  {
    v10 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_isApplyingSearchTextUpdate;
    *(v3 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_isApplyingSearchTextUpdate) = 1;
    v11 = *(v3 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_lastEditedText);
    v12 = *(v3 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_lastEditedText + 8);
    if (v9)
    {
      sub_21700DF14();
      v13 = v11;
      v14 = v12;
    }

    else
    {
      v18[0] = *(v3 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_lastEditedText);
      v18[1] = v12;
      sub_21700DF14();
      sub_2170058F4();
      sub_2167B2E14();
      v15 = sub_21700F1A4();
      v17 = v16;
      (*(v6 + 8))(v8, v5);

      v13 = v15;
      v14 = v17;
    }

    sub_216C993F8(v13, v14);
    *(v3 + v10) = 0;
  }
}

void sub_216C9B5F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a5;
  v64 = a6;
  v65 = a3;
  v66 = a1;
  v67 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8148, &qword_217019070);
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x28223BE20](v7);
  v68 = &v59 - v8;
  v9 = sub_21700CFB4();
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x28223BE20](v9);
  v73 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB9C0, &unk_21705C170);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v59 - v12;
  v14 = sub_21700DA84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB50, &qword_217016010);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v59 - v22;
  v24 = sub_21700D574();
  MEMORY[0x28223BE20](v24);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v62 = v15;
    v74 = v25;

    sub_21700D4B4();
    if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
    {
      sub_2166997CC(v23, &unk_27CABFB50, &qword_217016010);
      if (qword_27CAB6018 != -1)
      {
        swift_once();
      }

      v28 = sub_217007CA4();
      __swift_project_value_buffer(v28, qword_27CAC8030);
      v29 = sub_217007C84();
      v30 = sub_21700ED84();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_216679000, v29, v30, "Search event was dropped because the pipeline is not present in the object graph", v31, 2u);
        MEMORY[0x21CEA1440](v31, -1, -1);
      }

      return;
    }

    (v74[4].isa)(v27, v23, v24);
    sub_21700D4B4();
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {
      sub_2166997CC(v13, &qword_27CABB9C0, &unk_21705C170);
      if (qword_27CAB6018 != -1)
      {
        swift_once();
      }

      v36 = sub_217007CA4();
      __swift_project_value_buffer(v36, qword_27CAC8030);
      v37 = sub_217007C84();
      v38 = sub_21700ED84();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_216679000, v37, v38, "Search event was dropped because the metrics fields context was not present in the object graph", v39, 2u);
        MEMORY[0x21CEA1440](v39, -1, -1);
      }

      else
      {
      }

      goto LABEL_39;
    }

    (*(v62 + 32))(v20, v13, v14);
    type metadata accessor for MusicPageMetricsProvider(0);
    sub_21700D4B4();
    v40 = v77;
    if (!v77)
    {
LABEL_24:
      if (qword_27CAB6018 != -1)
      {
        swift_once();
      }

      v43 = sub_217007CA4();
      __swift_project_value_buffer(v43, qword_27CAC8030);
      v44 = sub_217007C84();
      v45 = sub_21700ED84();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_216679000, v44, v45, "Search event was dropped because no page fields are not present in the object graph", v46, 2u);
        MEMORY[0x21CEA1440](v46, -1, -1);
      }

      (*(v62 + 8))(v20, v14);
      goto LABEL_39;
    }

    v41 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
    swift_beginAccess();
    v42 = sub_21700D194();
    if (__swift_getEnumTagSinglePayload(v40 + v41, 1, v42))
    {
      swift_endAccess();
LABEL_23:

      goto LABEL_24;
    }

    v47 = sub_21700D0F4();
    swift_endAccess();
    if (!v47)
    {
      goto LABEL_23;
    }

    v61 = v40;
    v78 = MEMORY[0x277D837D0];
    *&v77 = 0x686372616553;
    *(&v77 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v77, &v76);
    swift_isUniquelyReferenced_nonNull_native();
    v75 = v47;
    sub_2166EF9D4();
    v60 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    if (v65)
    {
      if (v65 == 1)
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_217013D90;
        *(inited + 32) = 0x6449746567726174;
        *(inited + 40) = 0xE800000000000000;
        *(inited + 48) = 0x686372616553;
        *(inited + 56) = 0xE600000000000000;
        v49 = MEMORY[0x277D837D0];
        *(inited + 72) = MEMORY[0x277D837D0];
        strcpy((inited + 80), "actionContext");
        *(inited + 120) = v49;
        *(inited + 94) = -4864;
        *(inited + 96) = 0x6472616F6279656BLL;
        *(inited + 104) = 0xE800000000000000;
        sub_21700E384();
        if (qword_280E46040 == -1)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v52 = swift_initStackObject();
        *(v52 + 16) = xmmword_217013D90;
        *(v52 + 32) = 0x6449746567726174;
        *(v52 + 40) = 0xE800000000000000;
        *(v52 + 48) = 49;
        *(v52 + 56) = 0xE100000000000000;
        *(v52 + 72) = MEMORY[0x277D837D0];
        strcpy((v52 + 80), "actionDetails");
        *(v52 + 94) = -4864;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF830, &qword_217020AC0);
        v53 = swift_initStackObject();
        *(v53 + 16) = xmmword_217013DA0;
        strcpy((v53 + 32), "searchPrefix");
        *(v53 + 45) = 0;
        *(v53 + 46) = -5120;
        *(v53 + 48) = v63;
        *(v53 + 56) = v64;
        sub_21700DF14();
        v54 = sub_21700E384();
        *(v52 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF890, &qword_217033E20);
        *(v52 + 96) = v54;
        sub_21700E384();
        if (qword_280E46040 == -1)
        {
LABEL_38:
          v55 = sub_21700CF84();
          __swift_project_value_buffer(v55, qword_280E73DB0);
          sub_21700CF64();

          *&v77 = v60;
          v56 = v68;
          sub_21700DA44();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
          sub_21700DA24();
          (*(v69 + 8))(v56, v70);

          v57 = v73;
          sub_21700D564();

          v58 = *(v62 + 8);
          v58(v17, v14);
          (*(v71 + 8))(v57, v72);
          v58(v20, v14);
LABEL_39:
          (v74[1].isa)(v27, v24);
          return;
        }
      }
    }

    else
    {
      v50 = swift_initStackObject();
      *(v50 + 16) = xmmword_217013D90;
      *(v50 + 32) = 0x6449746567726174;
      *(v50 + 40) = 0xE800000000000000;
      *(v50 + 48) = 0x686372616553;
      *(v50 + 56) = 0xE600000000000000;
      v51 = MEMORY[0x277D837D0];
      *(v50 + 72) = MEMORY[0x277D837D0];
      strcpy((v50 + 80), "actionContext");
      *(v50 + 120) = v51;
      *(v50 + 94) = -4864;
      *(v50 + 96) = 0x6472616F6279656BLL;
      *(v50 + 104) = 0xE800000000000000;
      sub_21700E384();
      if (qword_280E46040 == -1)
      {
        goto LABEL_38;
      }
    }

    swift_once();
    goto LABEL_38;
  }

  if (qword_27CAB6018 != -1)
  {
    swift_once();
  }

  v32 = sub_217007CA4();
  __swift_project_value_buffer(v32, qword_27CAC8030);
  v74 = sub_217007C84();
  v33 = sub_21700ED84();
  if (os_log_type_enabled(v74, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_216679000, v74, v33, "Search event was dropped because no object graph is present", v34, 2u);
    MEMORY[0x21CEA1440](v34, -1, -1);
  }

  v35 = v74;
}

uint64_t sub_216C9C2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_currentSuggestionsTask;
  if (*(v4 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_currentSuggestionsTask))
  {
    type metadata accessor for JSSearchPage(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
    sub_21700EB04();
  }

  v17[3] = &type metadata for SearchSuggestionsPageIntent;
  v17[4] = sub_216C9CEAC();
  v17[0] = a1;
  v17[1] = a2;
  v9 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_suggestionsPresenter;
  v10 = *(v4 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_suggestionsPresenter);
  if (v10)
  {
    sub_21700DF14();

    sub_216D5DE68();
    v12 = v11;
    sub_2166997CC(v17, &qword_27CAC8058, &qword_21705C110);
    *(v4 + v8) = v12;
  }

  else
  {
    v13 = *(v4 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker);
    v14 = *(v4 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker + 8);
    sub_21700DF14();
    v10 = sub_216CE0698(v17, a3, v13, v14, v15);
    sub_2166997CC(v17, &qword_27CAC8058, &qword_21705C110);
    *(v4 + v9) = v10;
  }

  return v10;
}

void sub_216C9C468(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a2;
  v9 = type metadata accessor for MusicMetrics.ClickFields(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB50, &qword_217016010);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_21700D574();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v39 = a4;
    v40 = a5;
    type metadata accessor for MusicPageMetricsProvider(0);

    sub_21700D4B4();
    v19 = v44;
    if (!v44)
    {
LABEL_6:
      if (qword_27CAB6018 != -1)
      {
        swift_once();
      }

      v22 = sub_217007CA4();
      __swift_project_value_buffer(v22, qword_27CAC8030);
      v23 = sub_217007C84();
      v24 = sub_21700ED84();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_216679000, v23, v24, "Unable to report click event because no page fields were found", v25, 2u);
        MEMORY[0x21CEA1440](v25, -1, -1);
      }

LABEL_10:

      return;
    }

    v20 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
    swift_beginAccess();
    v21 = sub_21700D194();
    if (__swift_getEnumTagSinglePayload(v19 + v20, 1, v21))
    {
      swift_endAccess();
LABEL_5:

      goto LABEL_6;
    }

    v30 = sub_21700D0F4();
    swift_endAccess();
    if (!v30)
    {
      goto LABEL_5;
    }

    v38 = v30;
    sub_21700D4B4();
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {

      sub_2166997CC(v14, &unk_27CABFB50, &qword_217016010);
      if (qword_27CAB6018 != -1)
      {
        swift_once();
      }

      v31 = sub_217007CA4();
      __swift_project_value_buffer(v31, qword_27CAC8030);
      v23 = sub_217007C84();
      v32 = sub_21700ED84();
      if (os_log_type_enabled(v23, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_216679000, v23, v32, "Unable to report click event because no metrics pipeline was found", v33, 2u);
        MEMORY[0x21CEA1440](v33, -1, -1);
      }

      goto LABEL_10;
    }

    (*(v16 + 32))(v18, v14, v15);
    v34 = v9[9];
    v35 = sub_217005EF4();
    __swift_storeEnumTagSinglePayload(&v11[v34], 1, 1, v35);
    *v11 = 0x686372616573;
    *(v11 + 1) = 0xE600000000000000;
    *(v11 + 8) = 6402;
    *(v11 + 24) = xmmword_217029BA0;
    *(v11 + 5) = 0;
    v11[v9[11]] = 0;
    *&v11[v9[10]] = 0;
    v45 = MEMORY[0x277D837D0];
    *&v44 = a1;
    *(&v44 + 1) = v41;
    sub_2166EF9C4(&v44, &v43);
    sub_21700DF14();
    v36 = v38;
    swift_isUniquelyReferenced_nonNull_native();
    v42 = v36;
    sub_2166EF9D4();
    sub_216C949EC(v11, v42, v18, v39, v40, 0x686372616553, 0xE600000000000000);

    sub_216C9CFB4(v11);
    (*(v16 + 8))(v18, v15);
  }

  else
  {
    if (qword_27CAB6018 != -1)
    {
      swift_once();
    }

    v26 = sub_217007CA4();
    __swift_project_value_buffer(v26, qword_27CAC8030);
    v41 = sub_217007C84();
    v27 = sub_21700ED84();
    if (os_log_type_enabled(v41, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_216679000, v41, v27, "Unable to report click event because no object graph was found", v28, 2u);
      MEMORY[0x21CEA1440](v28, -1, -1);
    }

    v29 = v41;
  }
}

uint64_t sub_216C9CA58()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC8030);
  __swift_project_value_buffer(v0, qword_27CAC8030);
  return sub_217007C94();
}

uint64_t sub_216C9CAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700B8B4();
  (*(*(v6 - 8) + 8))(a1, v6);
  return sub_216C9AA30(a2, a3);
}

uint64_t sub_216C9CB54()
{
  v1 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter__searchText;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4A8, &unk_217020680);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter__scope;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8068, &qword_21705C180);
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter__state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8070, &qword_21705C188);
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v0 + v5);
  swift_unknownObjectRelease();

  sub_2166997CC(v0 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_horizontalSizeClass, &qword_27CAB8600, &qword_217020AD0);

  return v0;
}

uint64_t sub_216C9CCD8()
{
  sub_216C9CB54();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216C9CD30(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

unint64_t sub_216C9CD48()
{
  result = qword_27CAC8048;
  if (!qword_27CAC8048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F60, &qword_217054160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8048);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchScope(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_7MusicUI19SearchPagePresenterC5StateO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

unint64_t sub_216C9CEAC()
{
  result = qword_27CAC8050;
  if (!qword_27CAC8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8050);
  }

  return result;
}

uint64_t sub_216C9CF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else
  {
    if (a5)
    {
      return result;
    }
  }
}

uint64_t sub_216C9CFB4(uint64_t a1)
{
  v2 = type metadata accessor for MusicMetrics.ClickFields(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216C9D010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_216C9D090(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216C9D0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216C9D134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a3;
  v8[11] = a5;
  v8[8] = a1;
  v8[9] = a2;
  v8[14] = type metadata accessor for AddRecentSearchMusicItemAction(0);
  v8[15] = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088, &qword_217020CA0);
  v8[16] = OUTLINED_FUNCTION_80();
  v9 = sub_2170067A4();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  v8[20] = OUTLINED_FUNCTION_80();
  v10 = sub_217006924();
  v8[21] = v10;
  v8[22] = *(v10 - 8);
  v8[23] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v8[24] = sub_21700EA24();
  v12 = sub_21700E9B4();
  v8[25] = v12;
  v8[26] = v11;

  return MEMORY[0x2822009F8](sub_216C9D304, v12, v11);
}

uint64_t sub_216C9D304()
{
  v2 = v0[20];
  v1 = v0[21];
  type metadata accessor for AddRecentSearchAction(0);
  sub_216C6C5E8(v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v3 = v0[20];

    sub_21669987C(v3, &unk_27CABF9C0, &qword_21701ADB0);
    if (qword_27CAB6020 != -1)
    {
      OUTLINED_FUNCTION_0_218(&qword_27CAB6020);
    }

    v4 = sub_217007CA4();
    __swift_project_value_buffer(v4, qword_27CAC8078);
    v5 = sub_217007C84();
    v6 = sub_21700ED84();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      OUTLINED_FUNCTION_121(&dword_216679000, v8, v9, "Unable to add recent search item. Unable to construct typed identifier from content descriptor");
      MEMORY[0x21CEA1440](v7, -1, -1);
    }

    v10 = v0[8];

LABEL_13:
    v23 = *MEMORY[0x277D21CA8];
    v24 = sub_21700D2A4();
    (*(*(v24 - 8) + 104))(v10, v23, v24);

    OUTLINED_FUNCTION_3();

    return v25();
  }

  v12 = v0[16];
  v11 = v0[17];
  (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
  sub_217006A84();
  if (__swift_getEnumTagSinglePayload(v12, 1, v11) == 1)
  {
    v13 = v0[16];

    sub_21669987C(v13, &qword_27CAB7088, &qword_217020CA0);
    if (qword_27CAB6020 != -1)
    {
      OUTLINED_FUNCTION_0_218(&qword_27CAB6020);
    }

    v14 = sub_217007CA4();
    __swift_project_value_buffer(v14, qword_27CAC8078);
    v15 = sub_217007C84();
    v16 = sub_21700ED84();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      OUTLINED_FUNCTION_121(&dword_216679000, v18, v19, "Unable to add recent search item. Unable to find music item");
      MEMORY[0x21CEA1440](v17, -1, -1);
    }

    v21 = v0[22];
    v20 = v0[23];
    v22 = v0[21];
    v10 = v0[8];

    (*(v21 + 8))(v20, v22);
    goto LABEL_13;
  }

  v28 = v0[18];
  v27 = v0[19];
  v29 = v0[17];
  v31 = v0[14];
  v30 = v0[15];
  v32 = v0[12];
  v33 = v0[13];
  (*(v28 + 32))(v27, v0[16], v29);
  (*(v28 + 16))(v30 + *(v31 + 20), v27, v29);
  sub_21700D234();
  v0[5] = v31;
  v0[6] = sub_216C9DCE0(&qword_280E47F78, type metadata accessor for AddRecentSearchMusicItemAction, &unk_217037840);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_216C9DD28(v30, boxed_opaque_existential_1);
  v35 = swift_task_alloc();
  v0[27] = v35;
  type metadata accessor for AddRecentSearchActionImplementation(0, v32, v33, v36);
  swift_getWitnessTable();
  *v35 = v0;
  v35[1] = sub_216C9D768;

  return sub_216B6DB60();
}

uint64_t sub_216C9D768()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = v2[25];
    v4 = v2[26];
    v5 = sub_216C9D974;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
    v3 = v2[25];
    v4 = v2[26];
    v5 = sub_216C9D884;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_216C9D884()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[22];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v7 = v0[15];

  sub_216C9DD8C(v7);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_216C9D974()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[15];

  sub_216C9DD8C(v7);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_216C9DA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = *(a6 + 16);
  v16 = *(a6 + 24);
  *v14 = v6;
  v14[1] = sub_2167AF644;

  return sub_216C9D134(a1, a2, a3, v12, a5, v13, v15, v16);
}

uint64_t sub_216C9DB34(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C9DB70(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C9DBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216C9DC60()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC8078);
  __swift_project_value_buffer(v0, qword_27CAC8078);
  return sub_217007C94();
}

uint64_t sub_216C9DCE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216C9DD28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddRecentSearchMusicItemAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216C9DD8C(uint64_t a1)
{
  v2 = type metadata accessor for AddRecentSearchMusicItemAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216C9DDE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_216C9DE28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216C9DEA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1E28, &unk_217041400);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v74 = v62 - v5;
  v73 = sub_21700D574();
  OUTLINED_FUNCTION_1();
  v70 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v67 = v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8090, &qword_21705C3A0);
  OUTLINED_FUNCTION_1();
  v68 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v65 = v62 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8098, &unk_21705C3A8);
  OUTLINED_FUNCTION_1();
  v71 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v69 = v62 - v14;
  v15 = sub_21700D704();
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  v66 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  v19 = OUTLINED_FUNCTION_36(v18);
  MEMORY[0x28223BE20](v19);
  v63 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v77 = v62 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = v62 - v24;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC80A0, &qword_21705C3B8);
  OUTLINED_FUNCTION_1();
  v64 = v26;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  v29 = v62 - v28;
  v30 = v1[1];
  v32 = v1[2];
  v31 = v1[3];
  v84 = *v1;
  v85 = v30;
  v86 = v32;
  v87 = v31;
  v33 = v1[5];
  v88 = v1[4];
  v34 = type metadata accessor for ObjectGraph(0);
  v35 = sub_216C9E94C();
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  v78 = v33;
  v79 = v29;
  v36 = v34;
  sub_21700A1E4();

  v37 = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D837D0];
  sub_21700E384();
  sub_21700D6F4();
  sub_216C5570C(v37);
  sub_21700D124();
  v39 = sub_21700D194();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v39);
  sub_21700DC34();
  v62[1] = sub_21700DC24();
  v40 = v2[9];
  v41 = v2[10];
  __swift_project_boxed_opaque_existential_1(v2 + 6, v40);
  v42 = (*(v41 + 8))(v40, v41);
  v44 = v43;
  v66 = v25;
  v45 = v25;
  v46 = v77;
  sub_216681B64(v45, v77, &qword_27CAB8DF8, qword_21701B930);
  if (__swift_getEnumTagSinglePayload(v46, 1, v39))
  {
  }

  else
  {
    v47 = sub_21700D0E4();
    if (*v48)
    {
      v83 = v38;
      v81 = v42;
      v82 = v44;
      sub_2166EF928();
    }

    else
    {
    }

    v47(&v84, 0);
  }

  v84 = &type metadata for AlertPresentationDestinationView.ContentView;
  v85 = v36;
  v86 = v35;
  OUTLINED_FUNCTION_1_187();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v65;
  v51 = v80;
  sub_21700A224();
  v52 = v63;
  sub_216681B64(v46, v63, &qword_27CAB8DF8, qword_21701B930);
  v53 = v67;
  v54 = v73;
  sub_21700D444();
  v55 = v74;
  sub_217007584();
  v56 = sub_217007594();
  __swift_storeEnumTagSinglePayload(v55, 0, 1, v56);
  v84 = v51;
  v85 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_2_155();
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v69;
  v59 = v72;
  sub_21700A194();
  sub_21669987C(v55, &qword_27CAC1E28, &unk_217041400);
  (*(v70 + 8))(v53, v54);
  sub_21669987C(v52, &qword_27CAB8DF8, qword_21701B930);
  (*(v68 + 8))(v50, v59);
  sub_21700D844();
  sub_21700D444();
  v84 = v59;
  v85 = v57;
  OUTLINED_FUNCTION_1_119();
  swift_getOpaqueTypeConformance2();
  v60 = v75;
  sub_21700A1F4();

  (*(v71 + 8))(v58, v60);
  sub_21669987C(v66, &qword_27CAB8DF8, qword_21701B930);
  (*(v64 + 8))(v79, v80);
  return sub_21669987C(v77, &qword_27CAB8DF8, qword_21701B930);
}

uint64_t sub_216C9E618()
{
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BA0, qword_217037400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1F70, &qword_217041870);
  sub_2166D9530(&qword_27CAC80B0, &qword_27CAB6BA0, qword_217037400, MEMORY[0x277D83980]);
  sub_2166D9530(&qword_27CAC80B8, &qword_27CAC1F70, &qword_217041870, &unk_21702C8E0);
  sub_216C9E9CC();
  return sub_21700B164();
}

uint64_t sub_216C9E740@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = _s6ActionVMa(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_216681B64(a1 + 32, a2, &qword_27CAB6DB0, &qword_217016C00);
  v8 = *(v5 + 28);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1F70, &qword_217041870);
  sub_216681B64(a1 + v8, a2 + v9[11], &qword_27CAB70A8, &qword_21701B9E0);
  sub_2168D29EC(a1, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  sub_21681622C(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = v9[12];
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v13 = a2 + v9[13];
  result = swift_getKeyPath();
  *v13 = result;
  v13[40] = 0;
  a2[5] = sub_216C9EA24;
  a2[6] = v11;
  a2[7] = 0;
  a2[8] = 0;
  return result;
}

double sub_216C9E8F4@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
  v4 = MEMORY[0x277D84F90];
  a2[2] = 0;
  a2[3] = v4;
  sub_21700DF14();
  return result;
}

unint64_t sub_216C9E94C()
{
  result = qword_27CAC80A8;
  if (!qword_27CAC80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC80A8);
  }

  return result;
}

unint64_t sub_216C9E9CC()
{
  result = qword_27CAC80C0;
  if (!qword_27CAC80C0)
  {
    _s6ActionVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC80C0);
  }

  return result;
}

double sub_216C9EA24@<D0>(void *a1@<X8>)
{
  v3 = _s6ActionVMa(0);
  OUTLINED_FUNCTION_36(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_216C9E8F4(v5, a1);
}

unint64_t sub_216C9EA90()
{
  result = qword_27CAC80C8;
  if (!qword_27CAC80C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC80D0, qword_21705C4B8);
    sub_2166D9530(&qword_27CAC80B8, &qword_27CAC1F70, &qword_217041870, &unk_21702C8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC80C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrackLockup.LayoutStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >> 2 >= 0xFFF)
  {
    if (a2 + 49156 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 49156 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 49157;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 13) | (8 * ((*a1 >> 2) & 0x780 | (*a1 >> 1)))) ^ 0x3FFF;
  if (v5 >= 0x3FFB)
  {
    v5 = -1;
  }

  return v5 + 1;
}

uint64_t storeEnumTagSinglePayload for TrackLockup.LayoutStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49156 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 49156 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >> 2 >= 0xFFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 >> 2 > 0xFFE)
  {
    v6 = ((a2 - 16380) >> 16) + 1;
    *result = a2 - 16380;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          v7 = ((-a2 >> 3) & 0x7FF) - (a2 << 11);
          *result = (4 * v7) & 0xFE00 | (2 * (v7 & 0x7F));
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216C9ED00(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 13;
  v4 = v1 & 1 | (2 * ((v1 >> 8) & 1)) | 4;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_WORD *sub_216C9ED38(_WORD *result, unsigned int a2)
{
  if (a2 < 4)
  {
    v2 = *result & 0x101 | (a2 << 13);
  }

  else
  {
    v2 = (a2 << 7) & 0x100 | a2 & 1 | 0x8000;
  }

  *result = v2;
  return result;
}

void sub_216C9ED88()
{
  OUTLINED_FUNCTION_22_3();
  v94 = v0;
  v96 = v2;
  v4 = v3;
  v5 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v95 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v84 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v84 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v84 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x28223BE20](v21);
  v23 = &v84 - v22;
  sub_21700CDB4();
  if (v24)
  {
    v25 = v24;
    v26 = v5;
    v27 = v95;
    OUTLINED_FUNCTION_27_46();
    if (v29 == 0x617254666C656873 && v25 == v28)
    {

      v32 = v4;
      v33 = v27;
    }

    else
    {
      v31 = sub_21700F7D4();

      v32 = v4;
      v33 = v27;
      if ((v31 & 1) == 0)
      {
        sub_21700E2E4();
        OUTLINED_FUNCTION_0_219();
        v36 = sub_2166D3D30(v34, v35);
        v37 = OUTLINED_FUNCTION_4(v36);
        OUTLINED_FUNCTION_35_34(v37, v38);
        v39 = MEMORY[0x277D84F90];
        *v40 = &type metadata for TrackLockup.LayoutStyle;
        v40[1] = v39;
        OUTLINED_FUNCTION_50();
        (*(v41 + 104))();
LABEL_18:
        swift_willThrow();
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v58 + 8))(v96);
        (*(v33 + 8))(v32, v26);
        goto LABEL_19;
      }
    }

    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v49 + 8))(v96);
    (*(v33 + 8))(v32, v26);
  }

  else
  {
    v88 = v19;
    v89 = v1;
    v86 = v16;
    v87 = v13;
    v85 = v10;
    v92 = v4;
    sub_21700CE04();
    v42 = sub_21700CDB4();
    v44 = v43;
    v33 = v95;
    v45 = *(v95 + 8);
    v93 = v5;
    v90 = v45;
    v91 = v95 + 8;
    v45(v23, v5);
    if (!v44)
    {
      sub_21700E2E4();
      OUTLINED_FUNCTION_0_219();
      v52 = sub_2166D3D30(v50, v51);
      v53 = OUTLINED_FUNCTION_4(v52);
      OUTLINED_FUNCTION_35_34(v53, v54);
      v55 = MEMORY[0x277D84F90];
      *v56 = 1684957547;
      v56[1] = 0xE400000000000000;
      v56[2] = &type metadata for TrackLockup.LayoutStyle;
      v56[3] = v55;
      OUTLINED_FUNCTION_50();
      (*(v57 + 104))();
      v32 = v92;
      v26 = v93;
      goto LABEL_18;
    }

    v46 = v42 == 0x73694C73676E6F73 && v44 == 0xE900000000000074;
    if (!v46 && (OUTLINED_FUNCTION_14_69(0x73694C73676E6F73, 0xE900000000000074) & 1) == 0)
    {
      OUTLINED_FUNCTION_27_46();
      v60 = v42 == 0x6172546D75626C61 && v44 == v59;
      if (v60 || (OUTLINED_FUNCTION_14_69(0x6172546D75626C61, v59) & 1) != 0)
      {

        OUTLINED_FUNCTION_26_43();
        v61 = v88;
        sub_21700CE04();
        sub_21700CD44();
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v62 + 8))(v96);
        OUTLINED_FUNCTION_19_50();
        v42();
        (v42)(v61, v61);
        goto LABEL_19;
      }

      v63 = v42 == 0xD000000000000011 && 0x800000021708D860 == v44;
      v32 = v92;
      if (v63 || (v64 = OUTLINED_FUNCTION_28_38(), (OUTLINED_FUNCTION_14_69(v64, v65) & 1) != 0))
      {

        OUTLINED_FUNCTION_26_43();
        v66 = v86;
        sub_21700CE04();
        sub_21700CD44();
        v67 = v66;
        v68 = v93;
        v69 = v90;
        v90(v67, v93);
        OUTLINED_FUNCTION_25_45();
        v70 = v87;
        sub_21700CE04();
        sub_21700CD44();
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v71 + 8))(v96);
        v69(v32, v68);
        v69(v70, v68);
        goto LABEL_19;
      }

      if (v42 == 0x6361725464697267 && v44 == 0xED00007473694C6BLL)
      {

        v74 = v85;
      }

      else
      {
        v73 = OUTLINED_FUNCTION_14_69(0x6361725464697267, 0xED00007473694C6BLL);

        v74 = v85;
        if ((v73 & 1) == 0)
        {
          sub_21700E2E4();
          OUTLINED_FUNCTION_0_219();
          v77 = sub_2166D3D30(v75, v76);
          v78 = OUTLINED_FUNCTION_4(v77);
          OUTLINED_FUNCTION_35_34(v78, v79);
          v80 = MEMORY[0x277D84F90];
          *v81 = &type metadata for TrackLockup.LayoutStyle;
          v81[1] = v80;
          OUTLINED_FUNCTION_50();
          (*(v82 + 104))();
          v26 = v93;
          goto LABEL_18;
        }
      }

      sub_21700CE04();
      sub_21700CD44();
      sub_21700CF34();
      OUTLINED_FUNCTION_9_0();
      (*(v83 + 8))(v96);
      OUTLINED_FUNCTION_19_50();
      v42();
      (v42)(v74, v74);
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_25_45();
    v47 = v89;
    sub_21700CE04();
    sub_21700CD44();
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v48 + 8))(v96);
    OUTLINED_FUNCTION_19_50();
    v42();
    (v42)(v47, v47);
  }

LABEL_19:
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216C9F530(unsigned __int16 a1, unsigned __int16 a2)
{
  switch(a1 >> 13)
  {
    case 1:
      if ((a2 & 0xE000) == 0x2000)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    case 2:
      if ((a2 & 0xE000) != 0x4000)
      {
        goto LABEL_13;
      }

      if ((a2 ^ a1))
      {
        v2 = 0;
      }

      else
      {
        v2 = ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
      }

      break;
    case 3:
      if ((a2 & 0xE000) == 0x6000)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    case 4:
      if (a2 != 0x8000)
      {
        goto LABEL_13;
      }

      v2 = 1;
      break;
    default:
      if (a2 < 0x2000u)
      {
LABEL_11:
        v2 = a2 ^ a1 ^ 1;
      }

      else
      {
LABEL_13:
        v2 = 0;
      }

      break;
  }

  return v2 & 1;
}

void sub_216C9F5E0(_WORD *a1@<X8>)
{
  sub_216C9ED88();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_216C9F60C()
{
  OUTLINED_FUNCTION_22_3();
  v137 = v0;
  v152 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v11);
  v13 = v129 - v12;
  v147 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x28223BE20](v24);
  v26 = v129 - v25;
  sub_21700D7A4();
  OUTLINED_FUNCTION_8_59();
  OUTLINED_FUNCTION_28_38();
  sub_21700CE04();
  v138 = v9;
  v27 = v9 + 16;
  v28 = *(v9 + 16);
  v29 = v4;
  v145 = v27;
  v146 = v7;
  v144 = v28;
  (v28)(v13, v152, v7);
  v136 = v13;
  sub_21700D734();
  sub_21700CE04();
  v30 = sub_21700CDB4();
  v32 = v31;
  v35 = *(v15 + 8);
  v33 = v15 + 8;
  v34 = v35;
  v36 = v1;
  v37 = v147;
  (v35)(v36, v147);
  if (v32)
  {
    v38 = type metadata accessor for TrackLockup(0);
    *&v150 = v30;
    *(&v150 + 1) = v32;
    v130 = v32;
    sub_21700F364();
    sub_21700CE04();
    v143 = v38;
    sub_21700D2E4();
    v39 = OUTLINED_FUNCTION_31_7();
    v34(v39);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    sub_21700D2E4();
    v40 = OUTLINED_FUNCTION_31_7();
    v34(v40);
    v140 = v29;
    if (v149)
    {
      v41 = v152;
      sub_2166A0F18(&v148, &v150);
      v42 = v34;
    }

    else
    {
      sub_21700CE04();
      v41 = v152;
      sub_21700D2E4();
      v51 = OUTLINED_FUNCTION_31_7();
      v34(v51);
      v42 = v34;
      if (v149)
      {
        sub_2166997CC(&v148, &qword_27CAB6DB0, &qword_217016C00);
      }
    }

    v52 = v143;
    OUTLINED_FUNCTION_22_53(v143[19]);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    sub_21700D2E4();
    v53 = OUTLINED_FUNCTION_31_7();
    v42(v53);
    v141 = v42;
    v142 = v33;
    if (v149)
    {
      sub_2166A0F18(&v148, &v150);
    }

    else
    {
      sub_21700CE04();
      sub_21700D2E4();
      v54 = OUTLINED_FUNCTION_31_7();
      v42(v54);
      if (v149)
      {
        sub_2166997CC(&v148, &qword_27CAB6DB0, &qword_217016C00);
      }
    }

    v134 = (v6 + v52[7]);
    OUTLINED_FUNCTION_22_53(v52[20]);
    v55 = type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_8_59();
    OUTLINED_FUNCTION_28_38();
    sub_21700CE04();
    v56 = v144;
    (v144)(v136, v41, v146);
    sub_2166D3D30(qword_280E40390, type metadata accessor for ContentDescriptor);
    v139 = v6;
    OUTLINED_FUNCTION_3_6();
    v129[0] = v57;
    v129[1] = v55;
    sub_21700D734();
    type metadata accessor for Artwork(0);
    v58 = v140;
    sub_21700CE04();
    v59 = OUTLINED_FUNCTION_21_57();
    v56(v59);
    sub_2166D3D30(&qword_280E2BF60, type metadata accessor for Artwork);
    OUTLINED_FUNCTION_3_6();
    sub_21700D734();
    v60 = v58;
    sub_21700CE04();
    v61 = sub_21700CDB4();
    v63 = v62;
    v64 = v147;
    v65 = v141;
    (v141)(v26, v147);
    v66 = v134;
    *v134 = v61;
    v66[1] = v63;
    v129[2] = v63;
    sub_21700CE04();
    sub_21700CDB4();
    v67 = OUTLINED_FUNCTION_0_100();
    v65(v67, v64);
    v68 = v143;
    v69 = v139;
    v70 = (v139 + v143[8]);
    *v70 = v26;
    v70[1] = v60;
    OUTLINED_FUNCTION_16_50();
    sub_21700CE04();
    v71 = OUTLINED_FUNCTION_21_57();
    v72 = v144;
    v144(v71);
    OUTLINED_FUNCTION_3_6();
    sub_216AC6598();
    *(v69 + v68[9]) = v73;
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_8_59();
    sub_21700CE04();
    v74 = OUTLINED_FUNCTION_21_57();
    v72(v74);
    sub_216CA1668();
    OUTLINED_FUNCTION_3_6();
    sub_21700D734();
    v75 = v151;
    v76 = v69 + v68[10];
    *v76 = v150;
    *(v76 + 16) = v75;
    OUTLINED_FUNCTION_16_50();
    v77 = v140;
    sub_21700CE04();
    v78 = OUTLINED_FUNCTION_21_57();
    v72(v78);
    OUTLINED_FUNCTION_3_6();
    sub_216AC6598();
    v79 = v68;
    *(v69 + v68[11]) = v80;
    v81 = v77;
    sub_21700CE04();
    v82 = sub_21700CD24();
    LOBYTE(v60) = v83;
    v84 = v147;
    v85 = v141;
    (v141)(v26, v147);
    v86 = v69 + v79[12];
    *v86 = v82;
    *(v86 + 8) = v60 & 1;
    sub_21700CE04();
    v87 = sub_21700CD94();
    LOBYTE(v60) = v88;
    v85(v26, v84);
    v89 = v139;
    v90 = v139 + v79[13];
    *v90 = v87;
    *(v90 + 8) = v60 & 1;
    OUTLINED_FUNCTION_67_1();
    sub_21700CE04();
    v91 = v146;
    (v144)(v135, v152, v146);
    v92 = v137;
    sub_216C9ED88();
    v137 = v92;
    if (!v92)
    {
      *(v89 + v143[14]) = v93;
      sub_21700CE04();
      sub_21700D2E4();
      v95 = v147;
      v97 = v141;
      v96 = v142;
      (v141)(v26, v147);
      v98 = v97;
      v99 = v131;
      OUTLINED_FUNCTION_28_38();
      v100 = v81;
      sub_21700CE04();
      v101 = sub_21700CD44();
      v98(v99, v95);
      v102 = v98;
      v103 = v143;
      v104 = v139;
      *(v139 + v143[15]) = v101 & 1;
      OUTLINED_FUNCTION_11_0();
      v105 = v132;
      sub_21700CE04();
      v106 = sub_21700CD44();
      v107 = v105;
      v108 = v147;
      v102(v107, v147);
      *(v104 + v103[16]) = v106 & 1;
      v109 = v96;
      v110 = v133;
      sub_21700CE04();
      v111 = sub_21700CD44();
      v112 = v108;
      v113 = v141;
      (v141)(v110, v108);
      v114 = v143;
      v115 = v139;
      *(v139 + v143[17]) = v111 & 1;
      sub_21700CE04();
      sub_21700CDB4();
      v116 = OUTLINED_FUNCTION_0_100();
      v113(v116, v108);
      v117 = (v115 + v114[18]);
      *v117 = v26;
      v117[1] = v109;
      OUTLINED_FUNCTION_67_1();
      v118 = v100;
      sub_21700CE04();
      sub_21700CD44();
      v119 = OUTLINED_FUNCTION_20_58();
      (v113)(v119);
      *(v115 + v114[21]) = v109 & 1;
      OUTLINED_FUNCTION_67_1();
      sub_21700CE04();
      sub_21700CD44();
      v120 = OUTLINED_FUNCTION_20_58();
      (v113)(v120);
      *(v115 + v114[22]) = v109 & 1;
      sub_21700CE04();
      sub_21700CDB4();
      v121 = OUTLINED_FUNCTION_0_100();
      v113(v121, v112);
      v122 = (v115 + v114[24]);
      *v122 = v26;
      v122[1] = v109;
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_67_1();
      sub_21700CE04();
      sub_21700CD44();
      v123 = OUTLINED_FUNCTION_20_58();
      (v113)(v123);
      *(v115 + v114[25]) = v109 & 1;
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_8_59();
      sub_21700CE04();
      (v144)(v136, v152, v146);
      sub_21700D734();
      OUTLINED_FUNCTION_8_59();
      sub_21700CE04();
      OUTLINED_FUNCTION_31_7();
      sub_21700D2E4();
      v124 = v147;
      v113(v26, v147);
      sub_21700CE04();
      v125 = sub_21700CDB4();
      v127 = v126;
      (*(v138 + 8))(v152, v146);
      v113(v118, v124);
      v113(v26, v124);
      v128 = (v115 + v143[28]);
      *v128 = v125;
      v128[1] = v127;
      goto LABEL_17;
    }

    (*(v138 + 8))(v152, v91);
    (v141)(v81, v147);
    v6 = v89;
    v32 = v130;
  }

  else
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_219();
    sub_2166D3D30(v43, v44);
    OUTLINED_FUNCTION_42_0();
    v45 = swift_allocError();
    v46 = v37;
    v48 = v47;
    v49 = type metadata accessor for TrackLockup(0);
    *v48 = 25705;
    v48[1] = 0xE200000000000000;
    v48[2] = v49;
    OUTLINED_FUNCTION_50();
    (*(v50 + 104))(v48);
    v137 = v45;
    swift_willThrow();
    (*(v138 + 8))(v152, v146);
    (v34)(v29, v46);
  }

  sub_2166997CC(v6, &qword_27CAB6D58, &unk_217014E30);
  if (v32)
  {
    v94 = type metadata accessor for TrackLockup(0);
    sub_216788110(v6 + v94[5]);
    OUTLINED_FUNCTION_24_37(v94[6]);

    sub_216B3AEC8(*(v6 + v94[10]));

    OUTLINED_FUNCTION_24_37(v94[19]);
    OUTLINED_FUNCTION_24_37(v94[20]);
    sub_2166997CC(v6 + v94[29], &qword_27CAB6D60, &qword_217014E40);
    sub_2166997CC(v6 + v94[30], &qword_27CAB6A00, &unk_217016B60);
  }

  else
  {
  }

LABEL_17:
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216CA0624(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_21700F7D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021708D880 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_21700F7D4();

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

uint64_t sub_216CA06F0(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_216CA0728(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8108, &qword_21705C7D8);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v13[-v10];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216CA1730();
  sub_21700F974();
  v13[15] = 0;
  sub_21700F724();
  if (!v4)
  {
    v13[14] = 1;
    sub_21700F744();
  }

  return (*(v8 + 8))(v11, v6);
}

double sub_216CA0898(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC80F8, &qword_21705C7D0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216CA1730();
  sub_21700F964();
  if (!v1)
  {
    sub_21700F664();
    sub_21700F684();
    v2 = v6;
    v7 = OUTLINED_FUNCTION_13_54();
    v8(v7);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t sub_216CA0A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216CA0624(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_216CA0A7C(uint64_t a1)
{
  v2 = sub_216CA1730();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216CA0AB8(uint64_t a1)
{
  v2 = sub_216CA1730();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_216CA0AF4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_216CA0898(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

void sub_216CA0B44(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v7 = sub_216E29C48(a2, a3);
  if (!v3)
  {
    *a1 = v5;
    a1[1] = v6;
    *(a1 + 2) = v7;
  }
}

void sub_216CA0B74()
{
  OUTLINED_FUNCTION_22_3();
  v29 = v0;
  v32 = v1;
  v3 = v2;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v8 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v31 = v3;
  sub_21700CE04();
  v28 = sub_21700CDB4();
  v16 = v15;
  v30 = *(v10 + 8);
  v30(v14, v8);
  if (v16)
  {
    v17 = v31;
    sub_21700CE04();
    v18 = OUTLINED_FUNCTION_21_57();
    v19(v18);
    sub_216CA16BC();
    v20 = v29;
    sub_21700E924();
    if (!v20)
    {
      (*(v6 + 8))(v32, v4);
      v30(v17, v8);
      goto LABEL_7;
    }

    v21 = v32;
  }

  else
  {
    v21 = v32;
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_219();
    sub_2166D3D30(v22, v23);
    v24 = swift_allocError();
    OUTLINED_FUNCTION_35_34(v24, v25);
    *v26 = 0x6F74617261706573;
    v26[1] = 0xE900000000000072;
    v26[2] = &type metadata for PrioritizedTextList;
    OUTLINED_FUNCTION_50();
    (*(v27 + 104))();
    swift_willThrow();
    v17 = v31;
  }

  (*(v6 + 8))(v21, v4);
  v30(v17, v8);
LABEL_7:
  OUTLINED_FUNCTION_21_4();
}

void sub_216CA0EA0(void *a1@<X8>)
{
  sub_216CA0B74();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
  }
}

uint64_t sub_216CA15B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216CA1614(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216CA1668()
{
  result = qword_27CAC80E8;
  if (!qword_27CAC80E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC80E8);
  }

  return result;
}

unint64_t sub_216CA16BC()
{
  result = qword_27CAC80F0;
  if (!qword_27CAC80F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC80F0);
  }

  return result;
}

unint64_t sub_216CA1730()
{
  result = qword_27CAC8100;
  if (!qword_27CAC8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8100);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrioritizedTextList.Item.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216CA1864()
{
  result = qword_27CAC8110;
  if (!qword_27CAC8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8110);
  }

  return result;
}

unint64_t sub_216CA18BC()
{
  result = qword_27CAC8118;
  if (!qword_27CAC8118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8118);
  }

  return result;
}

unint64_t sub_216CA1914()
{
  result = qword_27CAC8120;
  if (!qword_27CAC8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8120);
  }

  return result;
}

uint64_t type metadata accessor for SongContextMenu(uint64_t a1)
{
  result = qword_280E41F30;
  if (!qword_280E41F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216CA19E0(uint64_t a1)
{
  sub_21700C084();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MenuConfiguration(319);
    if (v2 <= 0x3F)
    {
      sub_2167B83B4(319);
      if (v3 <= 0x3F)
      {
        sub_2167B84AC(319);
        if (v4 <= 0x3F)
        {
          sub_2167EE974(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216CA1CB4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_2166BF3C8(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x21CEA0220](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

BOOL sub_216CA1DA8(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;
    sub_21700DF14();
    v8 = (a1)(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_216CA1E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v9 = type metadata accessor for SocialProfileDetailHeaderLockupView(0, a2, a3, a5);
  v10 = a4 + v9[9];
  *v10 = sub_216CA2144(6);
  *(v10 + 8) = v11;
  v12 = OUTLINED_FUNCTION_6_105();
  *v10 = sub_216CA2190(v12);
  *(v10 + 8) = v13;
  v14 = OUTLINED_FUNCTION_6_105();
  *v10 = sub_216CA21DC(v14, 0);
  *(v10 + 8) = v15;
  *(v10 + 16) = v16;
  v17 = OUTLINED_FUNCTION_6_105();
  *v10 = sub_216CA21DC(v17, 0);
  *(v10 + 8) = v18;
  *(v10 + 16) = v19;
  sub_21695E9B8(32.0);
  sub_21695E9B8(36.0);
  sub_21695E9B8(20.0);
  v20 = (a4 + v9[16]);
  v21 = sub_216CA222C(0.0);
  *v20 = v22;
  v20[1] = v21;
  v23 = OUTLINED_FUNCTION_6_105();
  type metadata accessor for CatalogPagePresenter(v23, a2, a3, v24);
  swift_getWitnessTable();
  *v20 = sub_217008CF4();
  v20[1] = v25;
  v26 = (a4 + v9[18]);
  type metadata accessor for UserSocialProfileCoordinator(0);
  sub_216CA96F4(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator, &unk_21705D6E8);
  *v26 = sub_217008CF4();
  v26[1] = v27;
  v28 = (a4 + v9[19]);
  type metadata accessor for SocialGraphController(0);
  sub_216CA96F4(&qword_280E39AC8, type metadata accessor for SocialGraphController, &unk_217070E24);
  *v28 = sub_217008CF4();
  v28[1] = v29;
  v30 = a4 + v9[20];
  *v30 = swift_getKeyPath();
  *(v30 + 8) = 0;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  v31 = a4 + v9[21];
  *v31 = swift_getKeyPath();
  *(v31 + 8) = 0;
  v32 = a4 + v9[22];
  *v32 = swift_getKeyPath();
  *(v32 + 8) = 0;
  v33 = a4 + v9[23];
  *v33 = swift_getKeyPath();
  *(v33 + 8) = 0;
  sub_217007C94();
  return sub_216CA920C(a1, a4);
}

uint64_t sub_216CA2144(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B30, &qword_21703B130);
  sub_21700AEA4();
  return v2;
}

uint64_t sub_216CA2190(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA360, &qword_2170202C8);
  sub_21700AEA4();
  return v2;
}

uint64_t sub_216CA21DC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40, &unk_217014260);
  sub_21700AEA4();
  return v3;
}

uint64_t sub_216CA226C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v43 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v35[1] = v6;
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8178, &qword_21705C9F0);
  MEMORY[0x28223BE20](v44);
  v9 = v35 - v8;
  sub_216CA267C(v2, a1, v35 - v8);
  v10 = (v2 + *(a1 + 44));
  v11 = *v10;
  v41 = v10[1];
  v42 = v11;
  v40 = v10[2];
  *&v48 = v11;
  *(&v48 + 1) = v41;
  v49 = v40;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8180, &qword_21705C9F8);
  sub_21700AED4();
  v36 = v45;
  v12 = v46;
  v13 = v47;
  v37 = v2;
  v14 = sub_216CA2AC8(a1);
  *&v48 = 0;
  sub_21700AEA4();
  v15 = v45;
  v16 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8188, &qword_21705CA00) + 36)];
  *v16 = v36;
  *(v16 + 2) = v12;
  *(v16 + 3) = v13;
  v16[32] = v14;
  *(v16 + 40) = v15;
  v17 = sub_217009C94();
  sub_217007F24();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8190, &qword_21705CA08) + 36)];
  v38 = v9;
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  *&v36 = *(v5 + 16);
  (v36)(v7, v3, a1);
  v27 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v28 = swift_allocObject();
  v29 = *(a1 + 24);
  v35[0] = *(a1 + 16);
  *(v28 + 16) = v35[0];
  *(v28 + 24) = v29;
  v30 = *(v5 + 32);
  v30(v28 + v27, v7, a1);
  v31 = &v9[*(v44 + 36)];
  *v31 = sub_216CA8280;
  v31[1] = v28;
  v31[2] = 0;
  v31[3] = 0;
  *&v45 = v42;
  *(&v45 + 1) = v41;
  v46 = v40;
  sub_21700AEB4();
  v45 = v48;
  (v36)(v7, v37, a1);
  v32 = swift_allocObject();
  *(v32 + 16) = v35[0];
  *(v32 + 24) = v29;
  v30(v32 + v27, v7, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40, &unk_217014260);
  sub_216CA8390();
  sub_216CA86F8();
  OUTLINED_FUNCTION_10_4();
  v33 = v38;
  sub_21700AB04();

  return sub_216697664(v33, &qword_27CAC8178, &qword_21705C9F0);
}

uint64_t sub_216CA267C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v34 = a1;
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC81E8, &qword_21705CA28);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8200, &qword_21705CA48);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = sub_2170090F4();
  v32 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC81C8, &qword_21705CA18);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  if (sub_216CA5F3C(a2))
  {
    v31 = v8;
    *v16 = sub_2170091A4();
    *(v16 + 1) = 0;
    v16[16] = 1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8210, &qword_21705CA58);
    sub_216CA6098(v3, v34, *(a2 + 16), *(a2 + 24), &v16[*(v17 + 44)]);
    v18 = v3 + *(a2 + 80);
    v20 = *v18;
    v19 = *(v18 + 16);
    LOBYTE(v18) = *(v18 + 32);
    v33 = v20;
    v34 = v19;
    if ((v18 & 1) == 0)
    {
      v21 = v20;

      sub_21700ED94();
      v22 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_21680E444(v21, *(&v33 + 1), v34, *(&v34 + 1), 0);
      (*(v32 + 8))(v13, v11);
      v33 = v36;
      v34 = v37;
    }

    v23 = sub_217009C84();
    v24 = &v16[*(v14 + 36)];
    *v24 = v23;
    v25 = v33;
    *(v24 + 24) = v34;
    *(v24 + 8) = v25;
    v24[40] = 0;
    v26 = &qword_27CAC81C8;
    v27 = &qword_21705CA18;
    sub_216683A80(v16, v10, &qword_27CAC81C8, &qword_21705CA18);
    swift_storeEnumTagMultiPayload();
    sub_216CA85EC();
    sub_2166D9530(&qword_27CAC81E0, &qword_27CAC81E8, &qword_21705CA28, MEMORY[0x277CE1198]);
    sub_217009554();
    v28 = v16;
  }

  else
  {
    *v7 = sub_2170093B4();
    *(v7 + 1) = 0;
    v7[16] = 0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8208, &qword_21705CA50);
    sub_216CA6C68(v3, v34, *(a2 + 16), *(a2 + 24), &v7[*(v29 + 44)]);
    v26 = &qword_27CAC81E8;
    v27 = &qword_21705CA28;
    sub_216683A80(v7, v10, &qword_27CAC81E8, &qword_21705CA28);
    swift_storeEnumTagMultiPayload();
    sub_216CA85EC();
    sub_2166D9530(&qword_27CAC81E0, &qword_27CAC81E8, &qword_21705CA28, MEMORY[0x277CE1198]);
    sub_217009554();
    v28 = v7;
  }

  return sub_216697664(v28, v26, v27);
}

BOOL sub_216CA2AC8(uint64_t a1)
{
  v3 = sub_2170090F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 92);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = *v7;
  }

  else
  {

    sub_21700ED94();
    v10 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v8, 0);
    (*(v4 + 8))(v6, v3);
    v9 = *&v12[1];
  }

  return v9 <= 592.0;
}

uint64_t sub_216CA2C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB770, &unk_217024010);
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6);
  v71 = &v63 - v7;
  v9 = type metadata accessor for SocialProfileDetailHeaderLockupView(0, a2, a3, v8);
  v76 = *(v9 - 1);
  v74 = *(v76 + 64);
  MEMORY[0x28223BE20](v9);
  v75 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4B8, &unk_2170206A0);
  v69 = *(v11 - 8);
  v70 = v11;
  MEMORY[0x28223BE20](v11);
  v68 = &v63 - v12;
  v13 = type metadata accessor for SocialProfileDetailHeaderLockup(0);
  MEMORY[0x28223BE20](v13 - 8);
  v67 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEE8, &unk_217051AD0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v63 - v16;
  v66 = type metadata accessor for SocialProfileDescriptor(0);
  MEMORY[0x28223BE20](v66);
  v65 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930, &qword_21701A250);
  MEMORY[0x28223BE20](v19 - 8);
  v64 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v63 - v22;
  v24 = sub_216CA35B8(v9);
  v25 = (a1 + v9[9]);
  v26 = *v25;
  v27 = *(v25 + 1);
  LOBYTE(v81) = v26;
  *(&v81 + 1) = v27;
  LOBYTE(v79) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48, &unk_21705CA30);
  sub_21700AEC4();
  v77 = a2;
  v78 = a3;
  type metadata accessor for CatalogPagePresenter(0, a2, a3, v28);
  swift_getWitnessTable();
  sub_217008CB4();
  sub_216A3FFDC();

  v29 = type metadata accessor for ToolbarConfiguration(0);
  LODWORD(a2) = __swift_getEnumTagSinglePayload(v23, 1, v29);
  sub_216697664(v23, &qword_27CAB7930, &qword_21701A250);
  if (a2 == 1)
  {
    v30 = v67;
    sub_216CA8C8C(a1, v67);
    sub_216B151C4(v30, v17);
    if (__swift_getEnumTagSinglePayload(v17, 1, v66) == 1)
    {
      sub_216697664(v17, &qword_27CABEEE8, &unk_217051AD0);
    }

    else
    {
      v31 = v17;
      v32 = v65;
      sub_216CA920C(v31, v65);
      sub_217008CB4();
      v33 = v64;
      sub_216CA8C8C(v32, v64);
      v34 = (v33 + *(type metadata accessor for SocialProfilePageToolbarContentProvider(0) + 20));
      v35 = *(type metadata accessor for ToolbarProperties(0) + 24);
      v36 = *MEMORY[0x277CDDDC0];
      v37 = sub_217009124();
      (*(*(v37 - 8) + 104))(&v34[v35], v36, v37);
      *v34 = 0u;
      *(v34 + 1) = 0u;
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v33, 0, 1, v29);
      sub_216A3FFF0(v33);

      sub_216CA8774(v32, type metadata accessor for SocialProfileDescriptor);
    }
  }

  if (sub_216CA3690(v9))
  {
    if (*(a1 + v9[18]))
    {
      v39 = v75;
      v38 = v76;
      (*(v76 + 16))(v75, a1, v9);
      v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v41 = swift_allocObject();
      v42 = v78;
      *(v41 + 16) = v77;
      *(v41 + 24) = v42;
      (*(v38 + 32))(v41 + v40, v39, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4C0, &qword_21705CA40);
      sub_2166D9530(&qword_280E2A2D8, &qword_27CABA4C0, &qword_21705CA40, MEMORY[0x277D21A98]);

      sub_21700D1D4();
      v43 = v68;
      sub_21700D1F4();

      __swift_destroy_boxed_opaque_existential_1Tm(&v81);
      v45 = v69;
      v44 = v70;
LABEL_10:
      (*(v45 + 8))(v43, v44);
      v51 = sub_216CA39E0(v9);
      v52 = (a1 + v9[11]);
      v53 = *(v52 + 2);
      v81 = *v52;
      v82 = v53;
      v79 = v51;
      v80 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8180, &qword_21705C9F8);
      sub_21700AEC4();
      v55 = sub_216CA3B48(v9);
      v56 = (a1 + v9[12]);
      v57 = *(v56 + 2);
      v81 = *v56;
      v82 = v57;
      v79 = v55;
      v80 = v58;
      return sub_21700AEC4();
    }

    type metadata accessor for UserSocialProfileCoordinator(0);
    v60 = &unk_280E31C00;
    v61 = type metadata accessor for UserSocialProfileCoordinator;
    v62 = &unk_21705D6E8;
  }

  else
  {
    if (*(a1 + v9[19]))
    {
      v47 = v75;
      v46 = v76;
      (*(v76 + 16))(v75, a1, v9);
      v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v49 = swift_allocObject();
      v50 = v78;
      *(v49 + 16) = v77;
      *(v49 + 24) = v50;
      (*(v46 + 32))(v49 + v48, v47, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB790, &qword_217024070);
      sub_2166D9530(&qword_280E2A2F8, &qword_27CABB790, &qword_217024070, MEMORY[0x277D21A98]);

      sub_21700D1D4();
      v43 = v71;
      sub_21700D1F4();

      __swift_destroy_boxed_opaque_existential_1Tm(&v81);
      v45 = v72;
      v44 = v73;
      goto LABEL_10;
    }

    type metadata accessor for SocialGraphController(0);
    v60 = &qword_280E39AC8;
    v61 = type metadata accessor for SocialGraphController;
    v62 = &unk_217070E24;
  }

  sub_216CA96F4(v60, v61, v62);
  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216CA35B8(uint64_t a1)
{
  sub_216CA39A0();
  if (!v3)
  {
    return 6;
  }

  if (*(v1 + *(a1 + 76)))
  {

    v4 = sub_216F0706C();

    return v4;
  }

  else
  {
    type metadata accessor for SocialGraphController(0);
    sub_216CA96F4(&qword_280E39AC8, type metadata accessor for SocialGraphController, &unk_217070E24);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216CA3690(uint64_t a1)
{
  v1 = sub_216CA35B8(a1);
  if (v1 == 6)
  {
    return 0;
  }

  if (sub_216F07FB4(v1) == 1718379891 && v3 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v5 = sub_21700F7D4();

    return v5 & 1;
  }
}

uint64_t sub_216CA371C(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  if (*a1 && (v8 = [*a1 name]) != 0)
  {
    v9 = v8;
    v10 = sub_21700E514();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = (a2 + *(type metadata accessor for SocialProfileDetailHeaderLockupView(0, a3, a4, a4) + 44));
  v19 = *v13;
  v20 = *(v13 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8180, &qword_21705C9F8);
  sub_21700AEC4();
  if (!v7)
  {
    goto LABEL_9;
  }

  v14 = [v7 handle];
  if (!v14)
  {
    v7 = 0;
LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  v15 = v14;
  v7 = sub_21700E514();
  v17 = v16;

LABEL_10:
  sub_216F073C4(v7, v17);

  return sub_21700AEC4();
}

uint64_t sub_216CA3888(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = type metadata accessor for SocialProfileDetailHeaderLockupView(0, a3, a4, a4);
  result = sub_216CA39A0();
  if (v7)
  {
    v8 = result;
    v9 = v7;
    v10 = *(v4 + 16);
    v11 = (v4 + 40);
    v12 = v10 + 1;
    while (--v12)
    {
      if (v8 != *(v11 - 1) || v9 != *v11)
      {
        v11 += 2;
        if ((sub_21700F7D4() & 1) == 0)
        {
          continue;
        }
      }

      sub_216CA35B8(v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48, &unk_21705CA30);
      return sub_21700AEC4();
    }
  }

  return result;
}

uint64_t sub_216CA39A0()
{
  v1 = *(v0 + *(type metadata accessor for SocialProfileDetailHeaderLockup(0) + 24) + 24);
  sub_21700DF14();
  return v1;
}

uint64_t sub_216CA39E0(uint64_t a1)
{
  if ((sub_216CA3690(a1) & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + *(a1 + 72));
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
    v5 = *(v4 + 16);
    v6 = v3;
    os_unfair_lock_lock(v5);
    v7 = *&v6[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
    v8 = *(v4 + 16);
    v9 = v7;
    os_unfair_lock_unlock(v8);

    if (v7)
    {
      v10 = [v9 name];

      if (v10)
      {
        v11 = sub_21700E514();

        return v11;
      }
    }

LABEL_6:
    v12 = (v1 + *(type metadata accessor for SocialProfileDetailHeaderLockup(0) + 28));
    if (v12[1])
    {
      v11 = *v12;
    }

    else
    {
      v11 = 0;
    }

    sub_21700DF14();
    return v11;
  }

  type metadata accessor for UserSocialProfileCoordinator(0);
  sub_216CA96F4(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator, &unk_21705D6E8);
  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216CA3B48(uint64_t a1)
{
  if ((sub_216CA3690(a1) & 1) == 0)
  {
    v14 = (v1 + *(type metadata accessor for SocialProfileDetailHeaderLockup(0) + 32));
    v15 = v14[1];
    if (!v15)
    {
      return 0;
    }

    v16 = *v14;
    v17 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v17 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {
      return 0;
    }

    MEMORY[0x21CE9F490]();
    return 64;
  }

  v3 = *(v1 + *(a1 + 72));
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
    v5 = *(v4 + 16);
    v6 = v3;
    os_unfair_lock_lock(v5);
    v7 = *&v6[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
    v8 = *(v4 + 16);
    v9 = v7;
    os_unfair_lock_unlock(v8);

    if (v7 && (v10 = [v9 handle], v9, v10))
    {
      v11 = sub_21700E514();
      v13 = v12;
    }

    else
    {
      v19 = (v1 + *(type metadata accessor for SocialProfileDetailHeaderLockup(0) + 32));
      v11 = *v19;
      v13 = v19[1];
      sub_21700DF14();
    }

    v18 = sub_216F073C4(v11, v13);

    return v18;
  }

  type metadata accessor for UserSocialProfileCoordinator(0);
  sub_216CA96F4(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator, &unk_21705D6E8);
  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216CA3D18(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930, &qword_21701A250);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v136 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v12 - 8);
  v152 = &v136 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v14 - 8);
  v157 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v156 = &v136 - v17;
  v161 = sub_217005EF4();
  v150 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v146 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v147 = &v136 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v21 - 8);
  v151 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v136 - v24;
  MEMORY[0x28223BE20](v26);
  v163 = &v136 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v28 - 8);
  v155 = &v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v136 - v31;
  MEMORY[0x28223BE20](v33);
  v164 = &v136 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEE8, &unk_217051AD0);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v136 - v36;
  v160 = type metadata accessor for SocialProfileDescriptor(0);
  MEMORY[0x28223BE20](v160);
  v153 = &v136 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = &v136 - v40;
  v42 = a2[1];
  v149 = *a2;
  v162 = v42;
  v44 = type metadata accessor for SocialProfileDetailHeaderLockupView(0, a4, a5, v43);
  result = sub_216CA3690(v44);
  if (result)
  {
    v159 = v37;
    v148 = v41;
    v158 = v44;
    v46 = *(a3 + *(v44 + 72));
    if (!v46)
    {
      type metadata accessor for UserSocialProfileCoordinator(0);
      sub_216CA96F4(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator, &unk_21705D6E8);
      result = sub_217008CD4();
      __break(1u);
      return result;
    }

    v47 = type metadata accessor for SocialProfileDetailHeaderLockup(0);
    v48 = v164;
    sub_216CA8C8C(a3 + v47[6], v164);
    v154 = type metadata accessor for ContentDescriptor(0);
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v154);
    v49 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_artwork;
    swift_beginAccess();
    sub_216683A80(&v46[v49], v25, &qword_27CAB6D60, &qword_217014E40);
    v50 = type metadata accessor for Artwork(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v50);
    v141 = v11;
    v145 = a5;
    v144 = a4;
    v139 = v50;
    if (EnumTagSinglePayload == 1)
    {
      v52 = a3;
      sub_216683A80(a3 + v47[11], v163, &qword_27CAB6D60, &qword_217014E40);
      v53 = __swift_getEnumTagSinglePayload(v25, 1, v50);
      v54 = v46;
      if (v53 != 1)
      {
        sub_216697664(v25, &qword_27CAB6D60, &qword_217014E40);
      }
    }

    else
    {
      v52 = a3;
      v55 = v50;
      v56 = v163;
      sub_216CA920C(v25, v163);
      __swift_storeEnumTagSinglePayload(v56, 0, 1, v55);
      v57 = v46;
    }

    v58 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock;
    v59 = *&v46[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
    v60 = *(v59 + 16);
    v61 = v46;
    os_unfair_lock_lock(v60);
    v62 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile;
    v63 = *&v61[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
    v64 = *(v59 + 16);
    v65 = v63;
    os_unfair_lock_unlock(v64);

    v142 = v52;
    if (v63 && (v66 = [v65 handle], v65, v66))
    {
      v140 = sub_21700E514();
      v68 = v67;
    }

    else
    {
      v69 = (v52 + v47[8]);
      v70 = v69[1];
      v140 = *v69;
      v68 = v70;
      sub_21700DF14();
    }

    v71 = *&v46[v58];
    v72 = *(v71 + 16);
    sub_21700DF14();
    v73 = v61;
    os_unfair_lock_lock(v72);
    v74 = *&v61[v62];
    v75 = *(v71 + 16);
    v76 = v74;
    os_unfair_lock_unlock(v75);

    if (v74)
    {
      v77 = [v76 isPrivate];
    }

    else
    {
      v77 = *(v142 + v47[9]);
    }

    v78 = v148;
    v79 = v159;
    v80 = v161;
    v143 = v73;
    v81 = v73[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded];
    v82 = v164;
    sub_216683A80(v164, v32, &qword_27CAB6A00, &unk_217016B60);
    v83 = __swift_getEnumTagSinglePayload(v32, 1, v154);
    v84 = v145;
    if (v83 == 1)
    {

      sub_216697664(v163, &qword_27CAB6D60, &qword_217014E40);
      sub_216697664(v82, &qword_27CAB6A00, &unk_217016B60);
      sub_216697664(v32, &qword_27CAB6A00, &unk_217016B60);
      v85 = 1;
      v86 = v160;
      goto LABEL_32;
    }

    v138 = v77;
    v87 = *(v32 + 3);
    v88 = *(v32 + 4);
    sub_21700DF14();
    sub_216CA8774(v32, type metadata accessor for ContentDescriptor);
    if (!v88)
    {

      sub_216697664(v163, &qword_27CAB6D60, &qword_217014E40);
      sub_216697664(v82, &qword_27CAB6A00, &unk_217016B60);
      v85 = 1;
      v79 = v159;
      v86 = v160;
      goto LABEL_32;
    }

    v136 = v87;
    v137 = v81;
    v89 = v155;
    sub_216683A80(v82, v155, &qword_27CAB6A00, &unk_217016B60);
    v90 = v154;
    v91 = __swift_getEnumTagSinglePayload(v89, 1, v154);
    v86 = v160;
    if (v91 == 1)
    {
      sub_216697664(v89, &qword_27CAB6A00, &unk_217016B60);
      v92 = v156;
      __swift_storeEnumTagSinglePayload(v156, 1, 1, v80);
      v93 = v157;
    }

    else
    {
      v94 = v89 + *(v90 + 24);
      v92 = v156;
      sub_216683A80(v94, v156, &qword_27CABA820, &unk_217018CE0);
      sub_216CA8774(v89, type metadata accessor for ContentDescriptor);
      v95 = __swift_getEnumTagSinglePayload(v92, 1, v80);
      v93 = v157;
      if (v95 != 1)
      {
        v100 = v80;
        v101 = *(v150 + 32);
        v102 = v84;
        v103 = v147;
        v101(v147, v92, v100);
        v104 = v153;
        v105 = (v153 + v86[8]);
        v106 = v103;
        v84 = v102;
        v78 = v148;
        goto LABEL_28;
      }
    }

    sub_216697664(v92, &qword_27CABA820, &unk_217018CE0);
    if (!v68)
    {

      sub_216697664(v163, &qword_27CAB6D60, &qword_217014E40);
      v97 = &qword_27CAB6A00;
      v98 = &unk_217016B60;
      v99 = v82;
      goto LABEL_25;
    }

    v165 = 0;
    v166 = 0xE000000000000000;
    sub_21700DF14();
    sub_21700F3B4();

    v165 = 0xD000000000000020;
    v166 = 0x8000000217087320;
    MEMORY[0x21CE9F490](v140, v68);

    sub_217005ED4();
    v96 = v161;

    if (__swift_getEnumTagSinglePayload(v93, 1, v96) == 1)
    {

      sub_216697664(v163, &qword_27CAB6D60, &qword_217014E40);
      sub_216697664(v82, &qword_27CAB6A00, &unk_217016B60);
      v97 = &qword_27CABA820;
      v98 = &unk_217018CE0;
      v99 = v93;
LABEL_25:
      sub_216697664(v99, v97, v98);
      v85 = 1;
      v79 = v159;
LABEL_32:
      __swift_storeEnumTagSinglePayload(v79, v85, 1, v86);
      v126 = __swift_getEnumTagSinglePayload(v79, 1, v86);
      v127 = v144;
      v128 = v143;
      if (v126 == 1)
      {

        return sub_216697664(v79, &qword_27CABEEE8, &unk_217051AD0);
      }

      else
      {
        sub_216CA920C(v79, v78);
        type metadata accessor for CatalogPagePresenter(0, v127, v84, v129);
        swift_getWitnessTable();
        sub_217008CB4();
        v130 = v141;
        sub_216CA8C8C(v78, v141);
        v131 = (v130 + *(type metadata accessor for SocialProfilePageToolbarContentProvider(0) + 20));
        v132 = *(type metadata accessor for ToolbarProperties(0) + 24);
        v133 = *MEMORY[0x277CDDDC0];
        v134 = sub_217009124();
        (*(*(v134 - 8) + 104))(&v131[v132], v133, v134);
        v135 = type metadata accessor for ToolbarConfiguration(0);
        *v131 = 0u;
        *(v131 + 1) = 0u;
        swift_storeEnumTagMultiPayload();
        __swift_storeEnumTagSinglePayload(v130, 0, 1, v135);
        sub_216A3FFF0(v130);

        return sub_216CA8774(v78, type metadata accessor for SocialProfileDescriptor);
      }
    }

    v100 = v96;
    v101 = *(v150 + 32);
    v107 = v146;
    v101(v146, v93, v100);
    v104 = v153;
    v105 = (v153 + v86[8]);
    v106 = v107;
LABEL_28:
    v101(v105, v106, v100);
    v108 = sub_21700BA64();
    v110 = v109;
    sub_216697664(v164, &qword_27CAB6A00, &unk_217016B60);
    v111 = (v104 + v86[5]);
    *v111 = v108;
    v111[1] = v110;
    v112 = v151;
    sub_2167C5834(v163, v151, &qword_27CAB6D60, &qword_217014E40);
    v113 = __swift_getEnumTagSinglePayload(v112, 1, v139);
    v114 = v137;
    if (v113 == 1)
    {
      sub_216697664(v112, &qword_27CAB6D60, &qword_217014E40);
      v115 = sub_21700C4B4();
      v116 = v152;
      v117 = v152;
      v118 = 1;
    }

    else
    {
      v119 = sub_21700C4B4();
      v116 = v152;
      (*(*(v119 - 8) + 16))(v152, v112, v119);
      sub_216CA8774(v112, type metadata accessor for Artwork);
      v117 = v116;
      v118 = 0;
      v115 = v119;
    }

    __swift_storeEnumTagSinglePayload(v117, v118, 1, v115);
    v79 = v159;
    v120 = v138;
    v121 = v116;
    v122 = v153;
    sub_2167C5834(v121, v153, &qword_27CABF770, &unk_21701A670);
    v123 = (v122 + v86[6]);
    *v123 = v140;
    v123[1] = v68;
    v124 = (v122 + v86[7]);
    v125 = v162;
    *v124 = v149;
    v124[1] = v125;
    *(v122 + v86[10]) = v120;
    *(v122 + v86[9]) = v114;
    sub_216CA920C(v122, v79);
    v85 = 0;
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_216CA4BF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_21700B3B4();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8348, &qword_21705CD00);
  return sub_216CA4C40(a1, a2 + *(v5 + 44));
}

uint64_t sub_216CA4C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8350, &qword_21705CD08);
  MEMORY[0x28223BE20](v4);
  v6 = (&v43 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8358, &qword_21705CD10);
  MEMORY[0x28223BE20](v7);
  v9 = (&v43 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8360, &qword_21705CD18);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for SocialProfileDetailHeaderLockup(0);
  if (*(a1 + *(v16 + 36)) == 1)
  {
    v44 = v9;
    v49 = v15;
    v50 = v7;
    v47 = v4;
    v48 = v6;
    v51 = a2;
    v46 = sub_21700ACF4();
    KeyPath = swift_getKeyPath();
    v17 = sub_21700ADB4();
    if (qword_27CAB6060 != -1)
    {
      swift_once();
    }

    v18 = qword_27CAC8168;
    v19 = swift_getKeyPath();

    v20 = sub_21700ACA4();
    v21 = swift_getKeyPath();
    v54 = v17;
    v55 = v19;
    v56 = v18;
    v57 = v21;
    v58 = v20;
    v22 = sub_216983738(218);
    v43 = v17;
    v52 = v22;
    v53 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0CF8, &unk_21703B450);
    sub_216A66034();
    sub_2167B2E14();
    v24 = v49;
    sub_21700A6B4();

    sub_216683A80(v24, v12, &qword_27CAC8360, &qword_21705CD18);
    v25 = v44;
    v26 = v46;
    *v44 = KeyPath;
    *(v25 + 8) = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8388, &qword_21705CD38);
    sub_216683A80(v12, v25 + *(v27 + 48), &qword_27CAC8360, &qword_21705CD18);
    swift_retain_n();
    swift_retain_n();
    sub_216697664(v12, &qword_27CAC8360, &qword_21705CD18);

    sub_216683A80(v25, v48, &qword_27CAC8358, &qword_21705CD10);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8370, &unk_21705CD28);
    v28 = MEMORY[0x277CE14C0];
    sub_2166D9530(&qword_27CAC8378, &qword_27CAC8358, &qword_21705CD10, MEMORY[0x277CE14C0]);
    sub_2166D9530(&qword_27CAC8380, &qword_27CAC8370, &unk_21705CD28, v28);
    v29 = v51;
    sub_217009554();

    sub_216697664(v25, &qword_27CAC8358, &qword_21705CD10);
    sub_216697664(v49, &qword_27CAC8360, &qword_21705CD18);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8368, &qword_21705CD20);
    v31 = v29;
    return __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  }

  if (*(a1 + *(v16 + 40)) == 1)
  {
    v50 = v7;
    v51 = a2;
    v32 = sub_21700ACF4();
    v33 = swift_getKeyPath();
    v34 = sub_21700ADB4();
    if (qword_27CAB6068 != -1)
    {
      swift_once();
    }

    v35 = qword_27CAC8170;
    v36 = swift_getKeyPath();
    v49 = v36;

    v37 = sub_21700ACE4();
    v38 = swift_getKeyPath();

    swift_retain_n();
    swift_retain_n();

    v48 = v37;

    *v6 = v33;
    v6[1] = v32;
    v6[2] = v34;
    v6[3] = v36;
    v6[4] = v35;
    v6[5] = v38;
    v6[6] = v37;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8370, &unk_21705CD28);
    v39 = MEMORY[0x277CE14C0];
    sub_2166D9530(&qword_27CAC8378, &qword_27CAC8358, &qword_21705CD10, MEMORY[0x277CE14C0]);
    sub_2166D9530(&qword_27CAC8380, &qword_27CAC8370, &unk_21705CD28, v39);
    v40 = v51;
    sub_217009554();

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8368, &qword_21705CD20);
    v31 = v40;
    return __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8368, &qword_21705CD20);

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v42);
}

uint64_t sub_216CA532C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = sub_216CA39A0();
  v27 = v9;
  v28 = v8;
  v26 = *(v3 + *(type metadata accessor for SocialProfileDetailHeaderLockup(0) + 36));
  v10 = (v3 + *(a2 + 36));
  v11 = *v10;
  v12 = *(v10 + 1);
  v32 = v11;
  v33 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48, &unk_21705CA30);
  sub_21700AED4();
  v14 = v29;
  v13 = v30;
  v15 = v31;
  (*(v6 + 16))(&v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v3, a2);
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = *(a2 + 16);
  (*(v6 + 32))(v17 + v16, &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], a2);
  type metadata accessor for UserSocialProfileCoordinator(0);
  sub_216CA96F4(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator, &unk_21705D6E8);
  *(a3 + 64) = sub_217008CF4();
  *(a3 + 72) = v18;
  type metadata accessor for SocialGraphController(0);
  sub_216CA96F4(&qword_280E39AC8, type metadata accessor for SocialGraphController, &unk_217070E24);
  *(a3 + 80) = sub_217008CF4();
  *(a3 + 88) = v19;
  *(a3 + 96) = swift_getKeyPath();
  *(a3 + 136) = 0;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8298, &qword_21705CB28) + 60);
  *(a3 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  sub_217007C94();
  v21 = v27;
  *a3 = v28;
  *(a3 + 8) = v21;
  *(a3 + 16) = v26;
  *(a3 + 24) = sub_216CA8FA0;
  *(a3 + 32) = v17;
  *(a3 + 40) = v14;
  *(a3 + 48) = v13;
  *(a3 + 56) = v15;
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC82A0, &qword_21705CB98);
  v24 = a3 + *(result + 36);
  *v24 = KeyPath;
  *(v24 + 8) = 0;
  return result;
}

uint64_t sub_216CA5654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a4;
  v55 = a5;
  v53 = a3;
  v56 = a6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640, &unk_2170182E0);
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v57 = &v48 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1508, &qword_21703DF68);
  MEMORY[0x28223BE20](v49);
  v10 = &v48 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC82A8, &qword_21705CBA0);
  MEMORY[0x28223BE20](v51);
  v12 = &v48 - v11;
  if (a2)
  {
    v13 = a1;
  }

  else
  {
    v13 = 0;
  }

  if (a2)
  {
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = 0;
  }

  v15 = qword_27CAB6048;
  sub_21700DF14();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_27CAC8148;
  KeyPath = swift_getKeyPath();
  v59 = v13;
  v60 = a2;
  v61 = 0;
  v62 = v14;
  v63 = KeyPath;
  v64 = v16;
  v18 = qword_27CAB6050;

  if (v18 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660, &qword_2170189A0);
  sub_2167C4CBC();
  sub_21700A304();
  sub_2167C4DF0(v13, a2, 0, v14);

  v20 = v54;
  v19 = v55;
  v22 = type metadata accessor for SocialProfileDetailHeaderLockupView(0, v54, v55, v21);
  v23 = v53;
  v24 = v53 + *(v22 + 36);
  v25 = *v24;
  v26 = *(v24 + 8);
  LOBYTE(v59) = v25;
  v60 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48, &unk_21705CA30);
  sub_21700AEB4();
  if (v58 == 6)
  {
    goto LABEL_15;
  }

  if (v58 == 2)
  {
    v27 = sub_21700AD34();
    goto LABEL_17;
  }

  if (v58)
  {
LABEL_15:
    v27 = sub_21700ACF4();
  }

  else
  {
    v27 = sub_21700AC54();
  }

LABEL_17:
  v28 = v27;
  v29 = swift_getKeyPath();
  (*(v50 + 32))(v10, v57, v52);
  v30 = &v10[*(v49 + 36)];
  *v30 = v29;
  v30[1] = v28;
  LOBYTE(v29) = sub_217009C74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  sub_2170082C4();
  sub_217007F24();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_2167C5834(v10, v12, &qword_27CAC1508, &qword_21703DF68);
  v39 = &v12[*(v51 + 36)];
  *v39 = v29;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = sub_21700B3B4();
  v42 = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC82B0, &unk_21705CC10);
  v44 = v56;
  v45 = v56 + *(v43 + 36);
  sub_216CA5AAC(v20, v19, v45, v23);
  v46 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5780, &qword_217051960) + 36));
  *v46 = v40;
  v46[1] = v42;
  return sub_2167C5834(v12, v44, &qword_27CAC82A8, &qword_21705CBA0);
}

double sub_216CA5AAC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X0>)
{
  sub_216CA5B58(a4, a1, a2);
  v8 = type metadata accessor for SocialProfileDetailHeaderLockupView(0, a1, a2, v7);
  sub_216CA5EDC(v8, v9);
  sub_21700B3B4();
  sub_2170083C4();
  v10 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57A8, &unk_217051A40) + 36));
  *v10 = v12;
  v10[1] = v13;
  result = *&v14;
  v10[2] = v14;
  return result;
}

uint64_t sub_216CA5B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57B8, &qword_217051A50);
  MEMORY[0x28223BE20](v6);
  v8 = &v25[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57C0, &unk_21705CC20);
  MEMORY[0x28223BE20](v9);
  v11 = &v25[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8780, &unk_217029530);
  MEMORY[0x28223BE20](v12);
  v14 = &v25[-v13];
  v16 = (a1 + *(type metadata accessor for SocialProfileDetailHeaderLockupView(0, a2, a3, v15) + 36));
  v17 = *v16;
  v18 = *(v16 + 1);
  v27 = v17;
  v28 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48, &unk_21705CA30);
  sub_21700AEB4();
  if (v26 == 6)
  {
    v19 = *MEMORY[0x277CE0118];
    v20 = sub_217009294();
    (*(*(v20 - 8) + 104))(v14, v19, v20);
    *&v14[*(v12 + 52)] = sub_21700AC54();
    *&v14[*(v12 + 56)] = 256;
    sub_216683A80(v14, v11, &qword_27CAB8780, &unk_217029530);
    swift_storeEnumTagMultiPayload();
    sub_2166D9530(&qword_27CAC57C8, &qword_27CAC57B8, &qword_217051A50, MEMORY[0x277CDF6D8]);
    sub_2166D9530(&qword_27CAB8778, &qword_27CAB8780, &unk_217029530, MEMORY[0x277CDF3A0]);
    sub_217009554();
    v21 = v14;
    v22 = &qword_27CAB8780;
    v23 = &unk_217029530;
  }

  else
  {
    sub_216C5A424(v26, v8);
    sub_216683A80(v8, v11, &qword_27CAC57B8, &qword_217051A50);
    swift_storeEnumTagMultiPayload();
    sub_2166D9530(&qword_27CAC57C8, &qword_27CAC57B8, &qword_217051A50, MEMORY[0x277CDF6D8]);
    sub_2166D9530(&qword_27CAB8778, &qword_27CAB8780, &unk_217029530, MEMORY[0x277CDF3A0]);
    sub_217009554();
    v21 = v8;
    v22 = &qword_27CAC57B8;
    v23 = &qword_217051A50;
  }

  return sub_216697664(v21, v22, v23);
}

double sub_216CA5EDC(uint64_t a1, double a2)
{
  sub_216CA5F3C(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  sub_2170082C4();
  return v3;
}

uint64_t sub_216CA5F3C(uint64_t a1)
{
  v3 = sub_2170090F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 84);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_21700ED94();
    v9 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return (0xF8u >> v8) & 1;
}

uint64_t sub_216CA6098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8218, &qword_21705CA60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8220, &qword_21705CA68);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v30 - v20);
  v23 = type metadata accessor for SocialProfileDetailHeaderLockupView(0, a3, a4, v22);
  sub_216CA632C(a2, v23, v21);
  v24 = sub_217009C84();
  v25 = v21 + *(v16 + 44);
  *v25 = v24;
  *(v25 + 8) = xmmword_21705C970;
  *(v25 + 24) = xmmword_21705C980;
  v25[40] = 0;
  *v14 = sub_2170093C4();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8228, &qword_21705CA70);
  sub_216CA6464(a1, a2, a3, a4, &v14[*(v26 + 44)]);
  sub_216683A80(v21, v18, &qword_27CAC8220, &qword_21705CA68);
  sub_216683A80(v14, v11, &qword_27CAC8218, &qword_21705CA60);
  v27 = v31;
  sub_216683A80(v18, v31, &qword_27CAC8220, &qword_21705CA68);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8230, &qword_21705CA78);
  sub_216683A80(v11, v27 + *(v28 + 48), &qword_27CAC8218, &qword_21705CA60);
  sub_216697664(v14, &qword_27CAC8218, &qword_21705CA60);
  sub_216697664(v21, &qword_27CAC8220, &qword_21705CA68);
  sub_216697664(v11, &qword_27CAC8218, &qword_21705CA60);
  return sub_216697664(v18, &qword_27CAC8220, &qword_21705CA68);
}

double sub_216CA632C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (qword_27CAB6058 != -1)
  {
    swift_once();
  }

  *a3 = xmmword_27CAC8158;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC82C8, &qword_21705CC70);
  sub_216CA76A4(a1, v4, *(a2 + 16), *(a2 + 24), a3 + *(v8 + 44));
  sub_2166D9530(&qword_27CAC82D8, &qword_27CAC82D0, &qword_21705CC78, MEMORY[0x277CE11A8]);
  sub_21700B3B4();
  sub_2170083C4();
  v9 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC82E0, &qword_21705CC80) + 36));
  *v9 = v11;
  v9[1] = v12;
  result = *&v13;
  v9[2] = v13;
  return result;
}

uint64_t sub_216CA6464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a3;
  v44 = a4;
  v54 = a2;
  v45 = a1;
  v56 = a5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8238, &qword_21705CA80) - 8;
  MEMORY[0x28223BE20](v53);
  v55 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = &v41 - v9;
  v10 = sub_217009314();
  v50 = *(v10 - 8);
  v51 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2170099D4();
  v13 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8240, &qword_21705CA88);
  v17 = *(v16 - 8);
  v47 = v16;
  v48 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8248, &qword_21705CA90);
  MEMORY[0x28223BE20](v20 - 8);
  v49 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v42 = &v41 - v23;
  sub_216CA74D4(a3, a4, v58, v24);
  KeyPath = swift_getKeyPath();
  sub_21700B3C4();
  sub_217008BB4();
  memcpy(&v60[7], __src, 0x70uLL);
  memcpy(v57, v58, 0xA0uLL);
  v57[20] = KeyPath;
  LOBYTE(v57[21]) = 0;
  memcpy(&v57[21] + 1, v60, 0x77uLL);
  sub_2170099B4();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8250, &qword_21705CAC8);
  v27 = sub_216CA8DAC();
  sub_21700A784();
  (*(v13 + 8))(v15, v46);
  memcpy(v59, v57, sizeof(v59));
  sub_216697664(v59, &qword_27CAC8250, &qword_21705CAC8);
  sub_217009304();
  v57[0] = v26;
  v57[1] = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v42;
  v29 = v47;
  sub_21700A504();
  (*(v50 + 8))(v12, v51);
  (*(v48 + 8))(v19, v29);
  v31 = type metadata accessor for SocialProfileDetailHeaderLockupView(0, v43, v44, v30);
  v32 = v52;
  sub_216CA532C(v54, v31, v52);
  v33 = sub_217009C84();
  v34 = v32 + *(v53 + 44);
  *v34 = v33;
  *(v34 + 8) = xmmword_21705C990;
  *(v34 + 24) = xmmword_21705C990;
  *(v34 + 40) = 0;
  v35 = v49;
  sub_216683A80(v28, v49, &qword_27CAC8248, &qword_21705CA90);
  v36 = v55;
  sub_216683A80(v32, v55, &qword_27CAC8238, &qword_21705CA80);
  v37 = v56;
  sub_216683A80(v35, v56, &qword_27CAC8248, &qword_21705CA90);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8290, &qword_21705CAF0);
  v39 = v37 + *(v38 + 48);
  *v39 = 0;
  *(v39 + 8) = 1;
  sub_216683A80(v36, v37 + *(v38 + 64), &qword_27CAC8238, &qword_21705CA80);
  sub_216697664(v32, &qword_27CAC8238, &qword_21705CA80);
  sub_216697664(v28, &qword_27CAC8248, &qword_21705CA90);
  sub_216697664(v36, &qword_27CAC8238, &qword_21705CA80);
  return sub_216697664(v35, &qword_27CAC8248, &qword_21705CA90);
}

uint64_t sub_216CA6A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_27CAB6028;
  sub_21700DF14();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_27CAC8128;
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = qword_27CAB6030;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = MEMORY[0x277D84F90];
  v12 = qword_27CAC8130;
  if (a2)
  {
    v13 = a1;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *a3 = v13;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = v11;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = v7;
  *(a3 + 48) = v9;
  *(a3 + 56) = 2;
  *(a3 + 64) = 0;
  *(a3 + 66) = 1;
  *(a3 + 72) = v12;
}

uint64_t sub_216CA6B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = qword_27CAB6038;
  sub_21700DF14();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_27CAC8138;
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = qword_27CAB6040;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = MEMORY[0x277D84F90];
  v12 = qword_27CAC8140;
  if (a2)
  {
    v13 = a1;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *a3 = v13;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = v11;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = v7;
  *(a3 + 48) = v9;
  *(a3 + 56) = 1;
  *(a3 + 64) = 0;
  *(a3 + 72) = v12;
}

uint64_t sub_216CA6C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v80 = a5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8238, &qword_21705CA80);
  MEMORY[0x28223BE20](v77);
  v81 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v71 = &v62 - v11;
  v12 = sub_217009314();
  v75 = *(v12 - 8);
  v76 = v12;
  MEMORY[0x28223BE20](v12);
  v73 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2170099D4();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2170090F4();
  v63 = *(v16 - 8);
  v64 = v16;
  MEMORY[0x28223BE20](v16);
  v62 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8390, &qword_21705CD40);
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v19 = &v62 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8398, &qword_21705CD48);
  MEMORY[0x28223BE20](v20 - 8);
  v74 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v70 = &v62 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8220, &qword_21705CA68);
  v25 = v24 - 8;
  MEMORY[0x28223BE20](v24);
  v72 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = (&v62 - v28);
  v30 = a4;
  v32 = type metadata accessor for SocialProfileDetailHeaderLockupView(0, a3, a4, v31);
  v78 = a2;
  sub_216CA632C(a2, v32, v29);
  v33 = sub_217009C84();
  v34 = *(v25 + 44);
  v69 = v29;
  v35 = v29 + v34;
  *v35 = v33;
  *(v35 + 8) = xmmword_21705C970;
  *(v35 + 24) = xmmword_217025720;
  v35[40] = 0;
  sub_216CA74D4(a3, v30, v88, v36);
  KeyPath = swift_getKeyPath();
  sub_21700B3B4();
  sub_217008BB4();
  memcpy(&v89[7], __src, 0x70uLL);
  v38 = *(v32 + 80);
  v79 = a1;
  v39 = (a1 + v38);
  v41 = *v39;
  v40 = v39[1];
  LODWORD(v39) = *(v39 + 32);
  v82 = v41;
  v83 = v40;
  if (v39 == 1)
  {
    v86 = v41;
    v87 = v40;
  }

  else
  {
    v42 = v41;

    sub_21700ED94();
    v43 = sub_217009C34();
    sub_217007BC4();

    v44 = v62;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v42, *(&v82 + 1), v83, *(&v83 + 1), 0);
    (*(v63 + 8))(v44, v64);
    v82 = v86;
    v83 = v87;
  }

  v45 = sub_217009C84();
  v89[120] = 0;
  memcpy(v84, v88, 0xA0uLL);
  v84[20] = KeyPath;
  LOBYTE(v84[21]) = 1;
  memcpy(&v84[21] + 1, v89, 0x77uLL);
  LOBYTE(v84[36]) = v45;
  *&v84[37] = v82;
  *&v84[39] = v83;
  LOBYTE(v84[41]) = 0;
  sub_2170099B4();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC83A0, &qword_21705CD50);
  v47 = sub_216CA9180();
  sub_21700A784();
  (*(v65 + 8))(v15, v67);
  memcpy(v85, v84, 0x149uLL);
  sub_216697664(v85, &qword_27CAC83A0, &qword_21705CD50);
  v48 = v73;
  sub_217009304();
  v84[0] = v46;
  v84[1] = v47;
  swift_getOpaqueTypeConformance2();
  v49 = v70;
  v50 = v68;
  sub_21700A504();
  (*(v75 + 8))(v48, v76);
  (*(v66 + 8))(v19, v50);
  v51 = v71;
  sub_216CA532C(v78, v32, v71);
  v52 = sub_217009C84();
  v53 = v51 + *(v77 + 36);
  *v53 = v52;
  *(v53 + 8) = xmmword_21705C990;
  *(v53 + 24) = xmmword_21705C990;
  *(v53 + 40) = 0;
  v54 = v69;
  v55 = v72;
  sub_216683A80(v69, v72, &qword_27CAC8220, &qword_21705CA68);
  v56 = v74;
  sub_216683A80(v49, v74, &qword_27CAC8398, &qword_21705CD48);
  v57 = v81;
  sub_216683A80(v51, v81, &qword_27CAC8238, &qword_21705CA80);
  v58 = v51;
  v59 = v80;
  sub_216683A80(v55, v80, &qword_27CAC8220, &qword_21705CA68);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC83B0, &qword_21705CD58);
  sub_216683A80(v56, v59 + *(v60 + 48), &qword_27CAC8398, &qword_21705CD48);
  sub_216683A80(v57, v59 + *(v60 + 64), &qword_27CAC8238, &qword_21705CA80);
  sub_216697664(v58, &qword_27CAC8238, &qword_21705CA80);
  sub_216697664(v49, &qword_27CAC8398, &qword_21705CD48);
  sub_216697664(v54, &qword_27CAC8220, &qword_21705CA68);
  sub_216697664(v57, &qword_27CAC8238, &qword_21705CA80);
  sub_216697664(v56, &qword_27CAC8398, &qword_21705CD48);
  return sub_216697664(v55, &qword_27CAC8220, &qword_21705CA68);
}

uint64_t sub_216CA74D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for SocialProfileDetailHeaderLockupView(0, a1, a2, a4);
  OUTLINED_FUNCTION_3_145(*(v5 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8180, &qword_21705C9F8);
  sub_21700AEB4();
  sub_216CA6A08(v12[0], v12[1], __src);

  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_3_145(*(v5 + 48));
  sub_21700AEB4();
  sub_216CA6B3C(v12[0], v12[1], __src);

  memcpy(v8, __src, sizeof(v8));
  memcpy(v10, __dst, sizeof(v10));
  memcpy(v7, __dst, 0x50uLL);
  memcpy(v11, v8, sizeof(v11));
  memcpy(&v7[80], v8, 0x50uLL);
  memcpy(a3, v7, 0xA0uLL);
  memcpy(v12, v8, sizeof(v12));
  sub_216683A80(v10, __src, &qword_27CAC82B8, &qword_21705CC30);
  sub_216683A80(v11, __src, &qword_27CAC82C0, &qword_21705CC38);
  sub_216697664(v12, &qword_27CAC82C0, &qword_21705CC38);
  memcpy(__src, __dst, sizeof(__src));
  return sub_216697664(__src, &qword_27CAC82B8, &qword_21705CC30);
}

uint64_t sub_216CA76A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v101 = a3;
  v102 = a4;
  v103 = a2;
  v106 = a5;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC82E8, &qword_21705CC88);
  MEMORY[0x28223BE20](v104);
  v107 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v105 = (&v84 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v10 - 8);
  v93 = &v84 - v11;
  v12 = sub_21700C444();
  v97 = *(v12 - 8);
  *&v98 = v12;
  MEMORY[0x28223BE20](v12);
  v95 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v84 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v84 - v21;
  v94 = sub_217007474();
  v91 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v84 - v26;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8, &qword_217017590);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v86 = &v84 - v28;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC82F0, &qword_21705CC90);
  MEMORY[0x28223BE20](v85);
  v87 = &v84 - v29;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC82F8, &qword_21705CC98);
  MEMORY[0x28223BE20](v90);
  v31 = &v84 - v30;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8300, &qword_21705CCA0);
  MEMORY[0x28223BE20](v96);
  v100 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v92 = &v84 - v34;
  MEMORY[0x28223BE20](v35);
  v99 = &v84 - v36;
  v84 = type metadata accessor for SocialProfileDetailHeaderLockup(0);
  v37 = *(v84 + 44);
  v38 = a1;
  sub_216683A80(a1 + v37, v19, &qword_27CAB6D60, &qword_217014E40);
  v39 = type metadata accessor for Artwork(0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v39) == 1)
  {
    sub_216697664(v19, &qword_27CAB6D60, &qword_217014E40);
    v40 = sub_21700C4B4();
    v41 = v22;
    v42 = 1;
  }

  else
  {
    v43 = sub_21700C4B4();
    (*(*(v43 - 8) + 16))(v22, v19, v43);
    sub_216CA8774(v19, type metadata accessor for Artwork);
    v41 = v22;
    v42 = 0;
    v40 = v43;
  }

  __swift_storeEnumTagSinglePayload(v41, v42, 1, v40);
  sub_217007434();
  v44 = v38;
  sub_216683A80(v38 + v37, v16, &qword_27CAB6D60, &qword_217014E40);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v39);
  v46 = v98;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v16, &qword_27CAB6D60, &qword_217014E40);
    v47 = v93;
    __swift_storeEnumTagSinglePayload(v93, 1, 1, v46);
    v48 = v95;
    sub_21700C404();
    v49 = __swift_getEnumTagSinglePayload(v47, 1, v46);
    v50 = v97;
    if (v49 != 1)
    {
      sub_216697664(v47, &qword_27CAB7530, &unk_21701A660);
    }
  }

  else
  {
    v51 = *(v39 + 20);
    v50 = v97;
    v52 = v93;
    (*(v97 + 16))(v93, &v16[v51], v98);
    sub_216CA8774(v16, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v52, 0, 1, v46);
    v48 = v95;
    (*(v50 + 32))(v95, v52, v46);
  }

  sub_2170073E4();
  (*(v50 + 8))(v48, v46);
  v53 = *(v91 + 8);
  v54 = v94;
  v53(v24, v94);
  v55 = (v38 + *(v84 + 28));
  v57 = *v55;
  v56 = v55[1];
  v58 = swift_allocObject();
  *(v58 + 16) = v57;
  *(v58 + 24) = v56;
  sub_2167C505C();
  sub_21700DF14();
  v59 = v86;
  sub_2170073F4();

  v53(v27, v54);
  v60 = sub_21700ACF4();
  LOBYTE(v57) = sub_217009C84();
  v61 = v87;
  (*(v88 + 32))(v87, v59, v89);
  v62 = v61 + *(v85 + 36);
  *v62 = v60;
  *(v62 + 8) = v57;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v63 = qword_280E73AA0;
  v64 = byte_280E73AA8;
  v65 = qword_280E73AB0;
  sub_2167C5834(v61, v31, &qword_27CAC82F0, &qword_21705CC90);
  *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8308, &qword_21705CCA8) + 36)] = 256;
  KeyPath = swift_getKeyPath();
  v67 = &v31[*(v90 + 36)];
  *v67 = v63;
  v67[8] = v64;
  *(v67 + 2) = v65;
  *(v67 + 3) = KeyPath;
  v67[32] = 0;

  sub_21700ACC4();
  v68 = sub_21700AD04();

  v69 = v92;
  sub_2167C5834(v31, v92, &qword_27CAC82F8, &qword_21705CC98);
  v70 = v69 + *(v96 + 36);
  *v70 = v68;
  v98 = xmmword_217029750;
  *(v70 + 8) = xmmword_217029750;
  *(v70 + 24) = 0x4024000000000000;
  v71 = v99;
  sub_2167C5834(v69, v99, &qword_27CAC8300, &qword_21705CCA0);
  type metadata accessor for SocialProfileDetailHeaderLockupView(0, v101, v102, v72);
  v73 = v105;
  sub_216CA4BF0(v44, v105);
  sub_2166D9530(&qword_27CAC8318, &qword_27CAC8310, &qword_21705CCE0, MEMORY[0x277CE11A8]);
  sub_21700B3B4();
  sub_2170083C4();
  v74 = (v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8320, &qword_21705CCE8) + 36));
  v75 = v109;
  *v74 = v108;
  v74[1] = v75;
  v74[2] = v110;
  LOBYTE(v68) = sub_217009C84();
  v76 = v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8328, &qword_21705CCF0) + 36);
  *v76 = v68;
  *(v76 + 1) = 0x4059000000000000;
  *(v76 + 2) = 0;
  *(v76 + 3) = 0;
  *(v76 + 4) = 0;
  v76[40] = 0;
  sub_21700ACC4();
  v77 = sub_21700AD04();

  sub_216CA903C();
  v78 = v73 + *(v104 + 36);
  *v78 = v77;
  *(v78 + 8) = v98;
  *(v78 + 3) = 0x4034000000000000;
  v79 = v100;
  sub_216683A80(v71, v100, &qword_27CAC8300, &qword_21705CCA0);
  v80 = v107;
  sub_216683A80(v73, v107, &qword_27CAC82E8, &qword_21705CC88);
  v81 = v106;
  sub_216683A80(v79, v106, &qword_27CAC8300, &qword_21705CCA0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8340, &qword_21705CCF8);
  sub_216683A80(v80, v81 + *(v82 + 48), &qword_27CAC82E8, &qword_21705CC88);
  sub_216697664(v73, &qword_27CAC82E8, &qword_21705CC88);
  sub_216697664(v71, &qword_27CAC8300, &qword_21705CCA0);
  sub_216697664(v80, &qword_27CAC82E8, &qword_21705CC88);
  return sub_216697664(v79, &qword_27CAC8300, &qword_21705CCA0);
}

uint64_t sub_216CA8280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for SocialProfileDetailHeaderLockupView(0, v5, v6, a4);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_236();

  return sub_216CA2C30(v4 + v8, v5, v6);
}

uint64_t sub_216CA82FC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = type metadata accessor for SocialProfileDetailHeaderLockupView(0, v7, v8, a4);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_236();

  return sub_216CA3D18(a1, a2, v4 + v10, v7, v8);
}

unint64_t sub_216CA8390()
{
  result = qword_27CAC8198;
  if (!qword_27CAC8198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8178, &qword_21705C9F0);
    sub_216CA841C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8198);
  }

  return result;
}

unint64_t sub_216CA841C()
{
  result = qword_27CAC81A0;
  if (!qword_27CAC81A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8190, &qword_21705CA08);
    sub_216CA84A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC81A0);
  }

  return result;
}

unint64_t sub_216CA84A8()
{
  result = qword_27CAC81A8;
  if (!qword_27CAC81A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8188, &qword_21705CA00);
    sub_216CA8534();
    sub_216CA86A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC81A8);
  }

  return result;
}

unint64_t sub_216CA8534()
{
  result = qword_27CAC81B0;
  if (!qword_27CAC81B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC81B8, &qword_21705CA10);
    sub_216CA85EC();
    sub_2166D9530(&qword_27CAC81E0, &qword_27CAC81E8, &qword_21705CA28, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC81B0);
  }

  return result;
}

unint64_t sub_216CA85EC()
{
  result = qword_27CAC81C0;
  if (!qword_27CAC81C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC81C8, &qword_21705CA18);
    sub_2166D9530(&qword_27CAC81D0, &qword_27CAC81D8, &qword_21705CA20, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC81C0);
  }

  return result;
}

unint64_t sub_216CA86A4()
{
  result = qword_27CAC81F0;
  if (!qword_27CAC81F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC81F0);
  }

  return result;
}

unint64_t sub_216CA86F8()
{
  result = qword_27CAC81F8;
  if (!qword_27CAC81F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABAA40, &unk_217014260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC81F8);
  }

  return result;
}

uint64_t sub_216CA8774(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216CA87CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21700B3B4();
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC83B8, &qword_21705CF10);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC83C0, &qword_21705CF18) + 36));
  *v9 = sub_216CA88FC;
  v9[1] = 0;
  v9[2] = v5;
  v9[3] = v7;
  v10 = swift_allocObject();
  v11 = *(v2 + 16);
  *(v10 + 16) = *v2;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v2 + 32);
  *(v10 + 64) = *(v2 + 48);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC83C8, &qword_21705CF20) + 36));
  *v12 = sub_216CA9794;
  v12[1] = v10;
  return sub_216CA979C(v2, v14);
}

uint64_t sub_216CA88FC@<X0>(CGFloat *a1@<X8>)
{
  v2 = sub_2170096B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2170098E4();
  sub_217008454();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v17.origin.x = v7;
  v17.origin.y = v9;
  v17.size.width = v11;
  v17.size.height = v13;
  MinY = CGRectGetMinY(v17);
  result = sub_21700ACD4();
  *a1 = result;
  a1[1] = MinY;
  return result;
}

double sub_216CA8AC0(double *a1, void (*a2)(double *__return_ptr))
{
  a2(&v4);
  result = v4 + *a1;
  *a1 = result;
  return result;
}

uint64_t sub_216CA8B14(uint64_t a1)
{
  sub_217009D34();
  v1 = sub_217009D64();

  qword_27CAC8128 = v1;
  return result;
}

uint64_t sub_216CA8B50(uint64_t a1)
{
  result = sub_21700AD14();
  qword_27CAC8130 = result;
  return result;
}

uint64_t sub_216CA8B70(uint64_t a1)
{
  result = sub_217009D54();
  qword_27CAC8138 = result;
  return result;
}

uint64_t sub_216CA8B90(uint64_t a1)
{
  result = sub_21700AD34();
  qword_27CAC8140 = result;
  return result;
}

uint64_t sub_216CA8BB0(uint64_t a1)
{
  result = sub_217009D54();
  qword_27CAC8148 = result;
  return result;
}

uint64_t sub_216CA8BF0(uint64_t a1)
{
  result = sub_21700B384();
  *&xmmword_27CAC8158 = result;
  *(&xmmword_27CAC8158 + 1) = v2;
  return result;
}

uint64_t sub_216CA8C14(uint64_t a1)
{
  result = sub_217009EA4();
  qword_27CAC8168 = result;
  return result;
}

uint64_t sub_216CA8C34(uint64_t a1)
{
  v1 = sub_21700B304();
  sub_217009EA4();
  if (v1)
  {
    sub_217009D94();
  }

  else
  {
    sub_217009DA4();
  }

  v2 = sub_217009E34();

  qword_27CAC8170 = v2;
  return result;
}

uint64_t sub_216CA8C8C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216CA8D14(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = type metadata accessor for SocialProfileDetailHeaderLockupView(0, v6, v7, a4);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_236();

  return a2(a1, v4 + v9, v6, v7);
}

unint64_t sub_216CA8DAC()
{
  result = qword_27CAC8258;
  if (!qword_27CAC8258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8250, &qword_21705CAC8);
    sub_216CA8E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8258);
  }

  return result;
}

unint64_t sub_216CA8E38()
{
  result = qword_27CAC8260;
  if (!qword_27CAC8260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8268, &qword_21705CAD0);
    sub_216CA8EF0();
    sub_2166D9530(&qword_280E2A730, &qword_27CAB8688, qword_2170272F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8260);
  }

  return result;
}

unint64_t sub_216CA8EF0()
{
  result = qword_27CAC8270;
  if (!qword_27CAC8270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8278, &qword_21705CAD8);
    sub_2166D9530(&qword_27CAC8280, &qword_27CAC8288, &unk_21705CAE0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8270);
  }

  return result;
}

uint64_t sub_216CA8FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = type metadata accessor for SocialProfileDetailHeaderLockupView(0, v8, v9, a3);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_236();

  return sub_216CA5654(a1, a2, v4 + v11, v8, v9, a4);
}

unint64_t sub_216CA903C()
{
  result = qword_27CAC8330;
  if (!qword_27CAC8330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8328, &qword_21705CCF0);
    sub_216CA90C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8330);
  }

  return result;
}

unint64_t sub_216CA90C8()
{
  result = qword_27CAC8338;
  if (!qword_27CAC8338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8320, &qword_21705CCE8);
    sub_2166D9530(&qword_27CAC8318, &qword_27CAC8310, &qword_21705CCE0, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8338);
  }

  return result;
}

unint64_t sub_216CA9180()
{
  result = qword_27CAC83A8;
  if (!qword_27CAC83A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC83A0, &qword_21705CD50);
    sub_216CA8DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC83A8);
  }

  return result;
}

uint64_t sub_216CA920C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216CA9264(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_216CA92A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_216CA9300(uint64_t a1)
{
  type metadata accessor for SocialProfileDetailHeaderLockup(319);
  if (v2 <= 0x3F)
  {
    sub_216CA9608(319, &qword_280E2A5C0, &qword_27CAC0B30, &qword_21703B130);
    if (v3 <= 0x3F)
    {
      sub_216CA9608(319, &qword_280E2A5A0, &qword_27CABA360, &qword_2170202C8);
      if (v4 <= 0x3F)
      {
        sub_216CA9608(319, &qword_280E2A598, &qword_27CABAA40, &unk_217014260);
        if (v5 <= 0x3F)
        {
          sub_2167D1C30(319);
          if (v6 <= 0x3F)
          {
            sub_216CA965C(319, &qword_280E2A5B0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
            if (v8 <= 0x3F)
            {
              type metadata accessor for CatalogPagePresenter(255, *(a1 + 16), *(a1 + 24), v7);
              swift_getWitnessTable();
              sub_217008D04();
              if (v9 <= 0x3F)
              {
                sub_216A949B4(319);
                if (v10 <= 0x3F)
                {
                  sub_216AF7568(319);
                  if (v11 <= 0x3F)
                  {
                    sub_216CA965C(319, &qword_280E2B468, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
                    if (v12 <= 0x3F)
                    {
                      sub_216CA965C(319, &qword_280E2B488, &_s9SizeClassON, MEMORY[0x277CDF468]);
                      if (v13 <= 0x3F)
                      {
                        sub_216CA965C(319, &qword_280E2B438, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
                        if (v14 <= 0x3F)
                        {
                          sub_216CA965C(319, &qword_280E2B480, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
                          if (v15 <= 0x3F)
                          {
                            sub_217007CA4();
                            if (v16 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_216CA9608(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21700AEE4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_216CA965C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_216CA96F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216CA973C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216CA97E4()
{
  result = qword_27CAC83D8;
  if (!qword_27CAC83D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC83C8, &qword_21705CF20);
    sub_216CA989C();
    sub_2166D9530(&qword_27CAC8400, &qword_27CAC8408, qword_21705CF60, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC83D8);
  }

  return result;
}

unint64_t sub_216CA989C()
{
  result = qword_27CAC83E0;
  if (!qword_27CAC83E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC83C0, &qword_21705CF18);
    sub_2166D9530(&qword_27CAC83E8, &qword_27CAC83B8, &qword_21705CF10, MEMORY[0x277CE04B0]);
    sub_2166D9530(&qword_27CAC83F0, &qword_27CAC83F8, &qword_21705CF58, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC83E0);
  }

  return result;
}

uint64_t sub_216CA9B20(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_21700F7D4();
  }
}

uint64_t sub_216CA9B50()
{

  return v0;
}

uint64_t sub_216CA9B78()
{
  v0 = sub_216CA9B50();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216CA9BCC()
{
  sub_21700F8F4();
  sub_21700E614();
  return sub_21700F944();
}

uint64_t sub_216CA9C58(uint64_t a1)
{
  sub_21700F8F4();
  sub_216B1E4E4(v2);
  return sub_21700F944();
}

uint64_t sub_216CA9CA4()
{

  return MEMORY[0x2821FE8D8](v0);
}

_BYTE *storeEnumTagSinglePayload for EditableFormCoordinator.ValidationRule(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216CA9DF0()
{
  result = qword_27CAC8430;
  if (!qword_27CAC8430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8430);
  }

  return result;
}

unint64_t sub_216CA9E48()
{
  result = qword_27CAC8438;
  if (!qword_27CAC8438)
  {
    type metadata accessor for EditingFormRegistrar();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC8438);
  }

  return result;
}

uint64_t sub_216CA9EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8448, &unk_21705EE10);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v12 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v12[0] = &unk_21705D1E0;
  v12[1] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8450, &qword_21705EE30);
  sub_21700EA94();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_216CA9FD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v0 - 8);
  v34 = &v32 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8458, &qword_21705D1E8);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8460, &qword_21705D1F0);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v32 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8468, &qword_21705D1F8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v32 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8450, &qword_21705EE30);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
  v36 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8440, "2.\v");
  (*(v4 + 104))(v7, *MEMORY[0x277D85778], v2);
  sub_21700EAD4();
  sub_216CAAE84(v21, v18);
  result = __swift_getEnumTagSinglePayload(v18, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v24 = v35;
    (*(*(v22 - 8) + 32))(v35 + OBJC_IVAR____TtC7MusicUI10AsyncQueue_streamContinuation, v18, v22);
    v25 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v25);
    v27 = v32;
    v26 = v33;
    (*(v9 + 16))(v32, v15, v33);
    v28 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    (*(v9 + 32))(v29 + v28, v27, v26);
    sub_21677BBA0();
    v31 = v30;
    (*(v9 + 8))(v15, v26);
    *(v24 + 16) = v31;
    sub_216CAAFF0(v21);
    return v24;
  }

  return result;
}

uint64_t sub_216CAA3CC(uint64_t a1, uint64_t a2)
{
  sub_216CAAFF0(a2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8450, &qword_21705EE30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t sub_216CAA46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC8470, &unk_21705D210);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216CAA538, 0, 0);
}

uint64_t sub_216CAA538()
{
  OUTLINED_FUNCTION_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8460, &qword_21705D1F0);
  sub_21700EAB4();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_1_188(v1);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0);
}

uint64_t sub_216CAA5E8()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_216CAA6D8, 0, 0);
}

uint64_t sub_216CAA6D8()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v0[10] = v0[3];
    v5 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_216CAA824;

    return v5();
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_216CAA824()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  v4 = *(v1 + 80);
  v5 = *(v1 + 72);
  v6 = *v0;
  *v3 = *v0;

  sub_21667E91C(v5, v4);
  v7 = swift_task_alloc();
  *(v2 + 64) = v7;
  *v7 = v6;
  OUTLINED_FUNCTION_1_188(v7);

  return MEMORY[0x2822003E8](v2 + 16, 0, 0);
}

uint64_t sub_216CAA9A8()
{

  sub_21700EB04();

  v1 = OBJC_IVAR____TtC7MusicUI10AsyncQueue_streamContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8450, &qword_21705EE30);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_216CAAA50()
{
  sub_216CAA9A8();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for AsyncQueue(uint64_t a1)
{
  result = qword_280E45D18;
  if (!qword_280E45D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216CAAAFC(uint64_t a1)
{
  sub_216CAAB9C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_216CAAB9C(uint64_t a1)
{
  if (!qword_280E29DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC8440, "2.\v");
    v1 = sub_21700EAA4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E29DC8);
    }
  }
}

uint64_t sub_216CAAC00(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_216CAACE8;

  return v5();
}

uint64_t sub_216CAACE8()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_216CAADD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_216CAACE8;

  return sub_216CAAC00(a1, v4);
}

uint64_t sub_216CAAE84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8468, &qword_21705D1F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216CAAEF4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8460, &qword_21705D1F0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_216CAB058;

  return sub_216CAA46C(a1, v6, v7, v1 + v5);
}

uint64_t sub_216CAAFF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8468, &qword_21705D1F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216CAB05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a2;
  v6[5] = a4;
  v6[3] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v8 = sub_21700F164();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = *(AssociatedTypeWitness - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  sub_21700EA34();
  v6[15] = sub_21700EA24();
  v10 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216CAB1E0, v10, v9);
}

uint64_t sub_216CAB1E0()
{
  v35 = v0;
  v1 = v0[4];

  v2 = qword_21705D3C8[*(v1 + *(type metadata accessor for SelectTabAction(0) + 20))];
  v3 = v0[11];
  v4 = v0[8];
  v34[0] = 0;
  v34[1] = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v34, v4, AssociatedConformanceWitness);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    v6 = v0[6];
    v7 = v0[7];
    (*(v0[10] + 8))(v0[11], v0[9]);
    v9 = type metadata accessor for SelectTabActionImplementation.SelectTabError(0, v6, v7, v8);
    v10 = OUTLINED_FUNCTION_0_220(v9);
    OUTLINED_FUNCTION_3_0(v10);
    *v11 = 0;
    swift_willThrow();
  }

  else
  {
    v12 = v0[14];
    v13 = v0[7];
    v14 = v0[6];
    (*(v0[12] + 32))(v12, v0[11], v0[8]);
    v0[2] = (*(v13 + 24))(v14, v13);
    v15 = swift_task_alloc();
    v15[2] = v14;
    v15[3] = v13;
    v15[4] = v12;
    sub_21700E984();
    swift_getWitnessTable();
    v16 = sub_21700E7B4();

    v18 = v0[14];
    if (v16)
    {
      v20 = v0[12];
      v19 = v0[13];
      v22 = v0[7];
      v21 = v0[8];
      v23 = v0[6];
      v24 = v0[3];
      (*(v20 + 16))(v19, v0[14], v21);
      (*(v22 + 64))(v19, v23, v22);
      v25 = *MEMORY[0x277D21CA8];
      v26 = sub_21700D2A4();
      (*(*(v26 - 8) + 104))(v24, v25, v26);
      (*(v20 + 8))(v18, v21);

      v27 = v0[1];
      goto LABEL_7;
    }

    v28 = v0[12];
    v29 = v0[8];
    v30 = type metadata accessor for SelectTabActionImplementation.SelectTabError(0, v0[6], v0[7], v17);
    v31 = OUTLINED_FUNCTION_0_220(v30);
    OUTLINED_FUNCTION_3_0(v31);
    *v32 = 1;
    swift_willThrow();
    (*(v28 + 8))(v18, v29);
  }

  v27 = v0[1];
LABEL_7:

  return v27();
}

uint64_t sub_216CAB540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  swift_checkMetadataState();
  sub_21700F3C4();
  sub_21700F3C4();
  swift_getAssociatedConformanceWitness();
  v11 = sub_21700E494();
  v12 = *(v5 + 8);
  v12(v7, AssociatedTypeWitness);
  v12(v10, AssociatedTypeWitness);
  return v11 & 1;
}

uint64_t sub_216CAB728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = *(a4 + 16);
  v13 = *(a4 + 24);
  *v11 = v5;
  v11[1] = sub_2166DFAC0;

  return sub_216CAB05C(a1, a2, v10, v9, v12, v13);
}

uint64_t sub_216CAB7E0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216CAB820()
{
  result = qword_280E42060[0];
  if (!qword_280E42060[0])
  {
    type metadata accessor for SelectTabAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E42060);
  }

  return result;
}

uint64_t sub_216CAB878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

_BYTE *sub_216CAB920(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_216CABA78(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v8 = result;
    sub_2166F1DCC();
    v15[0] = type metadata accessor for RadioPageIntent(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2D40, &qword_217045B80);
    v9 = sub_21700E594();
    v15[3] = MEMORY[0x277D837D0];
    v15[0] = v9;
    v15[1] = v10;
    v11 = a1;
    v12 = sub_2166F1E10(v15, a1);
    sub_2166F1F64(v12, 0x646E696B24, 0xE500000000000000);
    sub_2168CC268(v2, v6);
    v13 = type metadata accessor for ReferrerInfo(0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v13) == 1)
    {
      sub_2168CC2D8(v6);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(v11).super.isa;
      sub_2168CC340(v6);
    }

    sub_2166F1F64(isa, 0x7265727265666572, 0xEC0000006F666E49);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216CABC78(uint64_t a1)
{
  result = sub_2166CE984(&qword_280E42100, type metadata accessor for RadioPageIntent, &unk_21705D42C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216CABD70(uint64_t *a1, uint64_t a2)
{
  v38 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v42 = v3;
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v35 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v41 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  started = type metadata accessor for StartSocialOnboardingAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21700DA84();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UserSocialProfileCoordinator(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v24 = v44[0];
  if (*(v44[0] + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded))
  {
    sub_216CAF6A8(*v38, v38[1], *(v38 + 16), v19, v20, v21, v22, v23, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44[0], v44[1], v44[2], v45, v46, v47, v48, v49, v50, v51, v52);
    v45 = sub_21700D7C4();
    v46 = MEMORY[0x277D21FB0];
    __swift_allocate_boxed_opaque_existential_1(v44);

    sub_21700D7B4();
    sub_21700D2A4();
    v25 = sub_21700E1B4();
  }

  else
  {
    sub_21700E094();
    sub_21700D234();
    v12[*(started + 20)] = 0;
    v37 = v8;
    v38 = v24;
    v26 = v39;
    sub_21700E094();
    v45 = started;
    v46 = sub_216CAC520(&qword_27CAB6FC8, type metadata accessor for StartSocialOnboardingAction, &protocol conformance descriptor for StartSocialOnboardingAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
    v36 = type metadata accessor for StartSocialOnboardingAction;
    sub_216ACBD28(v12, boxed_opaque_existential_1, type metadata accessor for StartSocialOnboardingAction);
    v28 = v15;
    v29 = *(v15 + 16);
    v30 = v40;
    v29(v40, v18, v13);
    v32 = v42;
    v31 = v43;
    (*(v42 + 104))(v30, *MEMORY[0x277D21E10], v43);
    v33 = v37;
    v25 = sub_21700D5E4();

    (*(v32 + 8))(v30, v31);
    (*(v41 + 8))(v33, v26);
    sub_216ACBD88(v12, v36);
    (*(v28 + 8))(v18, v13);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  return v25;
}

uint64_t sub_216CAC1C4@<X0>(_BYTE *a1@<X0>, uint64_t a3@<X8>)
{
  v22 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  v7 = type metadata accessor for NoticeAction(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  if (!*a1)
  {
    type metadata accessor for ObjectGraph(0);
    sub_21700E094();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E00, &qword_2170313E0);
    __swift_storeEnumTagSinglePayload(v9, 4, 11, v14);
    sub_21700D234();
    v23[3] = v7;
    v23[4] = sub_216CAC520(&qword_27CAB8E08, type metadata accessor for NoticeAction, &unk_21703D8D0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
    sub_216ACBD28(v9, boxed_opaque_existential_1, type metadata accessor for NoticeAction);
    v16 = v21;
    (*(v21 + 104))(v6, *MEMORY[0x277D21E18], v4);
    sub_21700D5E4();

    (*(v16 + 8))(v6, v4);
    sub_216ACBD88(v9, type metadata accessor for NoticeAction);
    (*(v11 + 8))(v13, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  v17 = *MEMORY[0x277D21CA8];
  v18 = sub_21700D2A4();
  return (*(*(v18 - 8) + 104))(v22, v17, v18);
}

uint64_t sub_216CAC520(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216CAC568(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialProfileSharedPlaylistIDs);
  v10[0] = a1;
  v10[1] = a2;
  v9[2] = v10;
  sub_21700DF14();
  v6 = sub_216CA1DA8(sub_216AF7E78, v9, v5);

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0, &qword_21703F4E0);
    OUTLINED_FUNCTION_53();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_217013DA0;
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;
    v10[0] = v8;
    sub_21700DF14();
    sub_21700CC34();
  }

  return result;
}

uint64_t sub_216CAC650()
{
  v1 = *&v0[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v2 = v0;
  v3 = OUTLINED_FUNCTION_47();
  os_unfair_lock_lock(v3);
  v4 = *&v0[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
  v5 = *(v1 + 16);
  v6 = v4;
  os_unfair_lock_unlock(v5);

  if (!v4)
  {
    return 0;
  }

  v7 = [v6 identifiers];

  return sub_216CB5CB4(v7);
}

uint64_t sub_216CAC6EC()
{
  OUTLINED_FUNCTION_48_24();
  v2 = *&v0[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v3 = *(v2 + 16);
  v4 = v0;
  os_unfair_lock_lock(v3);
  v5 = v4[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_state];
  os_unfair_lock_unlock(*(v2 + 16));

  if (sub_2166C1BB8(v5) == v1 && v6 == 0xE800000000000000)
  {

    goto LABEL_8;
  }

  v8 = sub_21700F7D4();

  if (v8)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8538, &qword_21705D728);
    v9 = sub_21700E244();
    v10 = *(v2 + 16);
    v11 = v4;

    os_unfair_lock_lock(v10);
    v12 = OUTLINED_FUNCTION_8();
    sub_216CAFC3C(v12, v13);
    os_unfair_lock_unlock(*(v2 + 16));

    return v9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8538, &qword_21705D728);
  return sub_21700E1F4();
}

uint64_t sub_216CAC834()
{
  v1 = *&v0[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v2 = v0;
  v3 = OUTLINED_FUNCTION_47();
  os_unfair_lock_lock(v3);
  v4 = *&v0[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
  v5 = *(v1 + 16);
  v6 = v4;
  os_unfair_lock_unlock(v5);

  if (v4)
  {
    v7 = sub_216A72AB8(v6);
    if (v8)
    {
      return v7;
    }
  }

  v9 = sub_216CB45C8();

  return v9;
}

BOOL sub_216CAC8D0()
{
  OUTLINED_FUNCTION_54_22();
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700D4B4();
  if (!v2)
  {
    return 1;
  }

  sub_2166C0578(&v2);

  if (!v3)
  {
    return 1;
  }

  v0 = *(&v2 + 1) == 0;
  sub_216697664(&v2, &qword_27CAC5980, &qword_217035260);
  return v0;
}

void sub_216CAC960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_13_73();
  a25 = v28;
  a26 = v29;
  OUTLINED_FUNCTION_12_78();
  v30 = OUTLINED_FUNCTION_41_29();
  sub_216CB040C();
  OUTLINED_FUNCTION_2_156();
  v31 = sub_216F0706C();
  sub_216F07FB4(v31);
  OUTLINED_FUNCTION_34_33();
  v33 = v33 && v32 == 0xE700000000000000;
  if (v33)
  {

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_42();
  sub_21700F7D4();
  OUTLINED_FUNCTION_41_2();

  if (v26)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8570, &unk_21705D790);
    v34 = sub_21700E244();
    OUTLINED_FUNCTION_109();
    sub_216F079D4();
    type metadata accessor for JSIntentDispatcher();
    v35 = *(v27 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_objectGraph);
    sub_21700D4D4();
    OUTLINED_FUNCTION_3_146();
    sub_21700E094();
    v36 = OUTLINED_FUNCTION_109();
    sub_216ECDD9C(v36, v37, v35);
    OUTLINED_FUNCTION_8_97();
    v38 = swift_allocObject();
    v39 = OUTLINED_FUNCTION_6_106(v38);
    *(v39 + 49) = v31;
    *(v39 + 56) = v30;
    OUTLINED_FUNCTION_8_97();
    v40 = swift_allocObject();
    v41 = OUTLINED_FUNCTION_49_27(v40);
    *(v41 + 48) = v34;
    *(v41 + 56) = v30;
    sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
    OUTLINED_FUNCTION_10_87();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_28_39();
    OUTLINED_FUNCTION_25_46();
    swift_retain_n();
    sub_21700EE84();
    OUTLINED_FUNCTION_14_70();
    OUTLINED_FUNCTION_44_26();
    sub_21700E1C4();

    __swift_destroy_boxed_opaque_existential_1Tm(&a10);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8570, &unk_21705D790);
  LOBYTE(a10) = v31;
  sub_21700E1F4();
  OUTLINED_FUNCTION_43_29();
LABEL_9:
  OUTLINED_FUNCTION_28_4();
}

void sub_216CACB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_13_73();
  a25 = v31;
  a26 = v32;
  OUTLINED_FUNCTION_12_78();
  v33 = OUTLINED_FUNCTION_41_29();
  sub_216CB040C();
  OUTLINED_FUNCTION_2_156();
  v34 = sub_216F0706C();
  sub_216F07FB4(v34);
  OUTLINED_FUNCTION_34_33();
  v36 = v36 && v35 == 0xE700000000000000;
  if (v36)
  {

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_42();
  sub_21700F7D4();
  OUTLINED_FUNCTION_41_2();

  if (v27)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8570, &unk_21705D790);
    LOBYTE(a10) = v34;
    sub_21700E1F4();
    OUTLINED_FUNCTION_43_29();
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8570, &unk_21705D790);
  v37 = sub_21700E244();
  OUTLINED_FUNCTION_109();
  sub_216F079D4();
  type metadata accessor for JSIntentDispatcher();
  v38 = *(v30 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_objectGraph);
  sub_21700D4D4();
  OUTLINED_FUNCTION_3_146();
  sub_21700E094();
  v39 = OUTLINED_FUNCTION_109();
  sub_216ECDF38(v39, v40, v38);
  OUTLINED_FUNCTION_8_97();
  v41 = swift_allocObject();
  *(v41 + 16) = v29;
  *(v41 + 24) = v28;
  *(v41 + 32) = v26;
  *(v41 + 40) = v37;
  *(v41 + 48) = 3;
  *(v41 + 49) = v34;
  *(v41 + 56) = v33;
  OUTLINED_FUNCTION_8_97();
  v42 = swift_allocObject();
  OUTLINED_FUNCTION_35_35(v42);
  sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
  OUTLINED_FUNCTION_10_87();
  swift_bridgeObjectRetain_n();
  OUTLINED_FUNCTION_28_39();
  OUTLINED_FUNCTION_25_46();
  swift_retain_n();
  sub_21700EE84();
  OUTLINED_FUNCTION_14_70();
  OUTLINED_FUNCTION_44_26();
  sub_21700E1C4();

  __swift_destroy_boxed_opaque_existential_1Tm(&a10);
LABEL_9:
  OUTLINED_FUNCTION_28_4();
}

uint64_t sub_216CACD74()
{
  *(v0 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_socialProfileSharedPlaylistIDs) = MEMORY[0x277D84F90];

  return sub_21700CC34();
}

uint64_t sub_216CACDBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8560, &qword_21705D758);
  v1 = sub_21700E244();
  if (sub_216CB3C04())
  {
    OUTLINED_FUNCTION_65_0();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    *(v2 + 24) = v1;
    sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
    OUTLINED_FUNCTION_47();
    swift_retain_n();
    v3 = v0;
    sub_21700EE84();
    OUTLINED_FUNCTION_14_70();
    sub_21700E1C4();

    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    sub_216CB3CA8(0, 0, v1);
  }

  return v1;
}

void sub_216CACEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_13_73();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  ObjectType = swift_getObjectType();
  v36 = sub_216CB040C();
  v37 = OUTLINED_FUNCTION_45_0();
  if (sub_216F07A90(v37, v38))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8560, &qword_21705D758);
    v39 = sub_21700E244();
    type metadata accessor for JSIntentDispatcher();
    v40 = *(v26 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_objectGraph);
    sub_21700D4D4();
    OUTLINED_FUNCTION_3_146();
    sub_21700E094();
    v41 = v34 & 1;
    v42 = OUTLINED_FUNCTION_45_0();
    sub_216ECE008(v42, v43, v34 & 1, v40);
    if (v34)
    {
      v44 = sub_21700F7D4();
    }

    else
    {
      v44 = 1;
    }

    OUTLINED_FUNCTION_5_46();
    v55 = swift_allocObject();
    *(v55 + 16) = v41;
    *(v55 + 24) = v32;
    *(v55 + 32) = v30;
    *(v55 + 40) = v36;
    *(v55 + 48) = v39;
    v56 = v44 & 1;
    *(v55 + 56) = v56;
    *(v55 + 64) = ObjectType;
    OUTLINED_FUNCTION_5_46();
    v57 = swift_allocObject();
    *(v57 + 16) = v41;
    *(v57 + 24) = v32;
    *(v57 + 32) = v30;
    *(v57 + 40) = v36;
    *(v57 + 48) = v56;
    *(v57 + 56) = v39;
    *(v57 + 64) = ObjectType;
    sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
    OUTLINED_FUNCTION_25_46();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_28_39();
    swift_retain_n();
    sub_21700EE84();
    OUTLINED_FUNCTION_14_70();
    sub_21700E1C4();

    __swift_destroy_boxed_opaque_existential_1Tm(&a10);
  }

  else
  {
    if (qword_280E31C10 != -1)
    {
      OUTLINED_FUNCTION_0_221();
      swift_once();
    }

    v45 = sub_217007CA4();
    __swift_project_value_buffer(v45, qword_280E73BC0);
    sub_21700DF14();
    v46 = sub_217007C84();
    v47 = sub_21700ED84();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      a10 = swift_slowAlloc();
      *v48 = 136446466;
      if (v34)
      {
        v49 = 0x656E696C636564;
      }

      else
      {
        v49 = 0x747065636361;
      }

      if (v34)
      {
        v50 = 0xE700000000000000;
      }

      else
      {
        v50 = 0xE600000000000000;
      }

      v51 = sub_2166A85FC(v49, v50, &a10);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2082;
      v52 = OUTLINED_FUNCTION_45_0();
      *(v48 + 14) = sub_2166A85FC(v52, v53, v54);
      _os_log_impl(&dword_216679000, v46, v47, "Requested to perform %{public}s follow request response on invalid user: %{public}s.)", v48, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8560, &qword_21705D758);
    LOBYTE(a10) = 1;
    sub_21700E1F4();
  }

  OUTLINED_FUNCTION_28_4();
}

uint64_t sub_216CAD29C(uint64_t a1)
{
  v1 = sub_216CB040C();
  v2 = *(v1 + 32);
  os_unfair_lock_lock(*(v2 + 16));
  v3 = OBJC_IVAR____TtC7MusicUI21SocialGraphController_requestedToFollowProfileIDs;
  swift_beginAccess();
  v4 = *(*(v1 + v3) + 16);
  os_unfair_lock_unlock(*(v2 + 16));

  return v4;
}

void sub_216CAD318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_38_6();
  a27 = v30;
  a28 = v31;
  OUTLINED_FUNCTION_47_18();
  ObjectType = swift_getObjectType();
  v32 = sub_216CB040C();
  v33 = 0;
  v34 = *(v29 + 16);
  v35 = v29 + 40;
  v36 = MEMORY[0x277D84F90];
LABEL_2:
  v37 = (v35 + 16 * v33);
  while (v34 != v33)
  {
    if (v33 >= v34)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      OUTLINED_FUNCTION_0_221();
      swift_once();
      goto LABEL_16;
    }

    if (__OFADD__(v33, 1))
    {
      goto LABEL_21;
    }

    v39 = *(v37 - 1);
    v38 = *v37;
    sub_21700DF14();
    if (sub_216F07A90(v39, v38))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a12 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2166F4258();
        v36 = a12;
      }

      v41 = *(v36 + 16);
      if (v41 >= *(v36 + 24) >> 1)
      {
        sub_2166F4258();
        v36 = a12;
      }

      *(v36 + 16) = v41 + 1;
      v42 = v36 + 16 * v41;
      *(v42 + 32) = v39;
      *(v42 + 40) = v38;
      ++v33;
      goto LABEL_2;
    }

    ++v33;
    v37 += 2;
  }

  if (*(v36 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8560, &qword_21705D758);
    v43 = sub_21700E244();
    type metadata accessor for JSIntentDispatcher();
    v44 = *(v28 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_objectGraph);
    sub_21700D4D4();
    sub_21700E094();

    sub_216ECE0C0(v45, v44);

    OUTLINED_FUNCTION_53();
    v46 = swift_allocObject();
    v46[2] = v36;
    v46[3] = v32;
    v46[4] = v43;
    v46[5] = ObjectType;
    OUTLINED_FUNCTION_181();
    v47 = swift_allocObject();
    v47[2] = v36;
    v47[3] = v43;
    v47[4] = ObjectType;
    sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
    OUTLINED_FUNCTION_52_16();
    swift_retain_n();

    v48 = sub_21700EE84();
    a15 = ObjectType;
    a16 = MEMORY[0x277D225C0];
    a12 = v48;
    sub_21700E1C4();

    __swift_destroy_boxed_opaque_existential_1Tm(&a12);
    goto LABEL_19;
  }

  if (qword_280E31C10 != -1)
  {
    goto LABEL_22;
  }

LABEL_16:
  v49 = sub_217007CA4();
  __swift_project_value_buffer(v49, qword_280E73BC0);
  v50 = sub_217007C84();
  sub_21700ED84();
  v51 = OUTLINED_FUNCTION_22_6();
  if (os_log_type_enabled(v51, v52))
  {
    OUTLINED_FUNCTION_1_157();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_2_13(&dword_216679000, v53, v54, "Requested to perform approve all follow requests with no valid users");
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8560, &qword_21705D758);
  LOBYTE(a12) = 1;
  sub_21700E1F4();

LABEL_19:
  OUTLINED_FUNCTION_37_8();
}