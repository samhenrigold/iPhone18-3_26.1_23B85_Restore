uint64_t sub_269261830()
{
  v0 = sub_26926B0A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26926B0F0();
  v4 = sub_26926B060();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_26926B0F0();
  v6 = sub_26926B090();
  result = (v5)(v3, v0);
  if (v6 >= v4)
  {
    return v6 - v4 < 0xEA61;
  }

  __break(1u);
  return result;
}

uint64_t sub_269261958()
{
  v0 = sub_26926B1D0();
  v1 = *(v0 - 8);
  v147 = v0;
  v148 = v1;
  v2 = MEMORY[0x28223BE20](v0);
  v134 = v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v131 = v124 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v124 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v146 = v124 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v141 = v124 - v12;
  MEMORY[0x28223BE20](v11);
  v130 = v124 - v13;
  v133 = sub_26926AEC0();
  v140 = *(v133 - 8);
  v14 = MEMORY[0x28223BE20](v133);
  v129 = v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v132 = v124 - v16;
  v17 = sub_26926AEA0();
  v138 = *(v17 - 8);
  v139 = v17;
  MEMORY[0x28223BE20](v17);
  v137 = v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26926B1A0();
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v136 = v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = v124 - v22;
  v24 = sub_26926AEF0();
  v25 = *(v24 - 8);
  v142 = v24;
  v143 = v25;
  v26 = MEMORY[0x28223BE20](v24);
  v135 = v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v144 = v124 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = v124 - v31;
  MEMORY[0x28223BE20](v30);
  v145 = v124 - v33;
  v34 = sub_26926B0A0();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = v124 - v39;
  sub_26926B0F0();
  v41 = sub_26926B040();
  v42 = *(v35 + 8);
  v42(v40, v34);
  v43 = *(v41 + 16);
  if (!v43)
  {
    goto LABEL_10;
  }

  v127 = v23;
  v44 = (v41 + 16 + 16 * v43);
  v45 = *v44;
  v46 = v44[1];

  sub_26926B0F0();
  v47 = sub_26926B040();
  v42(v38, v34);
  if (!v47[2])
  {

LABEL_10:

    v66 = sub_269268EA0();
    v68 = v147;
    v67 = v148;
    (*(v148 + 16))(v8, v66, v147);
    v69 = sub_26926B1C0();
    v70 = sub_26926B370();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_26925D000, v69, v70, "One of the tasks has no requests.", v71, 2u);
      MEMORY[0x26D635690](v71, -1, -1);
    }

    (*(v67 + 8))(v8, v68);
    goto LABEL_31;
  }

  v49 = v47[4];
  v48 = v47[5];

  v126 = v45;
  v149 = v45;
  v150 = v46;

  MEMORY[0x26D634F90](12346, 0xE200000000000000);
  v51 = v149;
  v50 = v150;
  v125 = v49;
  v149 = v49;
  v150 = v48;
  v128 = v48;

  MEMORY[0x26D634F90](12346, 0xE200000000000000);
  v52 = v149;
  v53 = v150;
  type metadata accessor for FeatureStoreUtils();
  v54 = sub_26926A28C();
  v55 = static FeatureStoreUtils.retrieveFeature(streamId:interactionId:dataVersion:)(0xD000000000000014, 0x800000026926CA50, v51, v50, v54);

  if (!v55)
  {
LABEL_14:

    v72 = sub_269268EA0();
    v74 = v147;
    v73 = v148;
    v75 = v146;
    (*(v148 + 16))(v146, v72, v147);

    v76 = sub_26926B1C0();
    v77 = sub_26926B370();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v149 = v79;
      *v78 = 136315138;
      v80 = sub_269263040(v126, v46, &v149);

      *(v78 + 4) = v80;
      _os_log_impl(&dword_26925D000, v76, v77, "Could not get NLU stream for previous request %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x26D635690](v79, -1, -1);
      MEMORY[0x26D635690](v78, -1, -1);
    }

    else
    {
    }

    (*(v73 + 8))(v75, v74);
    goto LABEL_31;
  }

  v56 = [v55 json];
  if (!v56)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v146 = v55;
  v57 = v56;
  sub_26926B230();

  v58 = sub_26926A28C();
  v59 = static FeatureStoreUtils.retrieveFeature(streamId:interactionId:dataVersion:)(0xD000000000000014, 0x800000026926CA50, v52, v53, v58);

  if (!v59)
  {
LABEL_19:

    v81 = sub_269268EA0();
    v83 = v147;
    v82 = v148;
    v84 = v141;
    (*(v148 + 16))(v141, v81, v147);
    v85 = v128;

    v86 = sub_26926B1C0();
    v87 = sub_26926B370();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v149 = v89;
      *v88 = 136315138;
      v90 = sub_269263040(v125, v85, &v149);

      *(v88 + 4) = v90;
      _os_log_impl(&dword_26925D000, v86, v87, "Could not get NLU stream for current request %s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v89);
      MEMORY[0x26D635690](v89, -1, -1);
      MEMORY[0x26D635690](v88, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v82 + 8))(v84, v83);
LABEL_31:
    v112 = 0;
    return v112 & 1;
  }

  v60 = [v59 json];
  if (!v60)
  {
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  v141 = v59;
  v61 = v60;
  sub_26926B230();
  v124[1] = v62;

  v63 = v145;
  sub_26926AEE0();
  sub_26926B190();
  v64 = sub_269263158();
  v65 = v142;
  v127 = v64;
  sub_26926B1B0();
  v91 = v143;
  (*(v143 + 8))(v63, v65);

  (*(v91 + 32))(v63, v32, v65);
  v92 = v144;
  v93 = v135;
  sub_26926AEE0();
  sub_26926B190();
  sub_26926B1B0();
  v94 = v143;
  (*(v143 + 8))(v92, v65);

  (*(v94 + 32))(v92, v93, v65);
  v95 = v140;
  v96 = v137;
  sub_26926AED0();
  v97 = sub_26926AE90();
  v98 = v139;
  v99 = *(v138 + 8);
  v99(v96, v139);
  sub_26926AED0();
  v100 = sub_26926AE90();
  v99(v96, v98);
  if (!*(v97 + 16))
  {

LABEL_28:
    v115 = sub_269268EA0();
    v117 = v147;
    v116 = v148;
    v118 = v130;
    (*(v148 + 16))(v130, v115, v147);
    v119 = sub_26926B1C0();
    v120 = sub_26926B370();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_26925D000, v119, v120, "At least one requests generated no ASR outputs.", v121, 2u);
      MEMORY[0x26D635690](v121, -1, -1);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v116 + 8))(v118, v117);
    v122 = *(v143 + 8);
    v122(v92, v65);
    v122(v145, v65);
    goto LABEL_31;
  }

  v101 = *(v95 + 16);
  v102 = (*(v95 + 80) + 32) & ~*(v95 + 80);
  v103 = v132;
  v104 = v133;
  v101(v132, v97 + v102, v133);

  if (!*(v100 + 16))
  {
    (*(v95 + 8))(v103, v104);

    v92 = v144;
    goto LABEL_28;
  }

  v105 = v100 + v102;
  v106 = v129;
  v101(v129, v105, v104);

  v107 = sub_26926AEB0();
  v109 = v108;
  v110 = sub_26926AEB0();
  v112 = sub_26926456C(v110, v111, v107, v109);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v113 = *(v95 + 8);
  v113(v106, v104);
  v113(v103, v104);
  v114 = *(v143 + 8);
  v114(v144, v65);
  v114(v145, v65);
  return v112 & 1;
}

uint64_t sub_2692629C4(uint64_t a1)
{
  v2 = sub_26926B3A0();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_269264340(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_269262A40@<X0>(uint64_t *a5@<X8>)
{
  sub_269264BC4();
  result = sub_26926B390();
  *a5 = result;
  a5[1] = v7;
  return result;
}

uint64_t sub_269262A94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == 1)
  {
    result = sub_2692629C4(a2);
    v8[0] = result;
    v8[1] = v6;
    if (v6)
    {
      MEMORY[0x28223BE20](result);
      v7[2] = v8;
      v3 = sub_26926395C(sub_269264C18, v7, a1);

      return v3 & 1;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      v3 = 1;
      return v3 & 1;
    }

    return sub_2692637DC(a1, a2);
  }

  return result;
}

unint64_t sub_269262B74@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_26926B2C0();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_269262F34(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_269262F34((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_26926B2B0();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_26926B280();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_26926B280();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_26926B2C0();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_269262F34(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_26926B2C0();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_269262F34(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_269262F34((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_26926B280();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_269262F34(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302770, &unk_26926BEC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_269263040(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2692631B0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_269264D10(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_269263158()
{
  result = qword_280302750;
  if (!qword_280302750)
  {
    sub_26926AEF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302750);
  }

  return result;
}

unint64_t sub_2692631B0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2692632BC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26926B430();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2692632BC(uint64_t a1, unint64_t a2)
{
  v3 = sub_269263308(a1, a2);
  sub_269263438(&unk_2879E06B0);
  return v3;
}

void *sub_269263308(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_269263524(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26926B430();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26926B2A0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_269263524(v10, 0);
        result = sub_26926B410();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_269263438(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_269263598(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_269263524(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302778, &unk_26926C040);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_269263598(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302778, &unk_26926C040);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_26926368C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_26926B4C0();
  sub_26926B270();
  v8 = sub_26926B4E0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_26926B480() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_269263C68(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2692637DC(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v19 = *MEMORY[0x277D85DE8];
  v15 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17 = &v15;
  v18 = a2;
  v6 = (1 << v4) + 63;
  if (v5 <= 0xD || (v11 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = &v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = sub_269264394(v8, v3, a2);
  }

  else
  {
    v12 = swift_slowAlloc();
    bzero(v12, v11);
    sub_269264C8C(v12, &v16);
    v13 = v16;
    MEMORY[0x26D635690](v12, -1, -1);
    v9 = v13;
  }

  return v9 & 1;
}

uint64_t sub_26926395C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_269263A08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302760, &qword_26926BEB0);
  result = sub_26926B3F0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_26926B4C0();
      sub_26926B270();
      result = sub_26926B4E0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_269263C68(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_269263A08(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_269263DE8();
      goto LABEL_16;
    }

    sub_269263F44(v8 + 1);
  }

  v10 = *v4;
  sub_26926B4C0();
  sub_26926B270();
  result = sub_26926B4E0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_26926B480();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_26926B4A0();
  __break(1u);
  return result;
}

void *sub_269263DE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302760, &qword_26926BEB0);
  v2 = *v0;
  v3 = sub_26926B3E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_269263F44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302760, &qword_26926BEB0);
  result = sub_26926B3F0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_26926B4C0();

      sub_26926B270();
      result = sub_26926B4E0();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

char *sub_26926417C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26926419C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26926419C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302768, &qword_26926BEB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2692642A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D635040](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_26926368C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_269264340(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_269264394(uint64_t result, uint64_t a2, uint64_t a3)
{
  v23 = result;
  v22 = 0;
  v4 = 0;
  v5 = *(a2 + 16);
  v24 = v5;
  v25 = a2 + 32;
  v6 = a3 + 56;
  while (v4 != v5)
  {
    while (1)
    {
      if (v4 >= v5)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_27;
      }

      v8 = (v25 + 16 * v4);
      v10 = *v8;
      v9 = v8[1];
      sub_26926B4C0();

      sub_26926B270();
      v11 = sub_26926B4E0();
      v12 = -1 << *(a3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & *(v6 + 8 * (v13 >> 6))) != 0)
      {
        break;
      }

LABEL_5:

LABEL_6:
      v4 = v7;
      if (v7 == v5)
      {
        return 0;
      }
    }

    v16 = (*(a3 + 48) + 16 * v13);
    v17 = *v16 == v10 && v16[1] == v9;
    if (!v17)
    {
      v18 = ~v12;
      while ((sub_26926B480() & 1) == 0)
      {
        v13 = (v13 + 1) & v18;
        v14 = v13 >> 6;
        v15 = 1 << v13;
        if (((1 << v13) & *(v6 + 8 * (v13 >> 6))) == 0)
        {
          v5 = v24;
          goto LABEL_5;
        }

        v19 = (*(a3 + 48) + 16 * v13);
        if (*v19 == v10 && v19[1] == v9)
        {
          break;
        }
      }
    }

    v20 = *(v23 + 8 * v14);
    *(v23 + 8 * v14) = v20 | v15;
    if ((v20 & v15) != 0)
    {
      v5 = v24;
      goto LABEL_6;
    }

    v21 = v22 + 1;
    v5 = v24;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_28;
    }

    ++v22;
    v17 = v21 == *(a3 + 16);
    v4 = v7;
    result = 1;
    if (v17)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_26926456C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_26926B1D0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v71 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v69 - v12;
  *&v79 = 32;
  *(&v79 + 1) = 0xE100000000000000;
  v78 = &v79;

  v15 = sub_269262B74(0x7FFFFFFFFFFFFFFFLL, 1, sub_269264D6C, v77, a3, a4, v14);
  *&v79 = 32;
  *(&v79 + 1) = 0xE100000000000000;
  v16 = v9;
  v76 = &v79;

  v74 = sub_269262B74(0x7FFFFFFFFFFFFFFFLL, 1, sub_269264D6C, v75, a1, a2, v17);
  v18 = sub_269268EA0();
  v19 = *(v9 + 16);
  v72 = v8;
  v19(v13, v18, v8);

  v20 = sub_26926B1C0();
  v21 = sub_26926B360();
  v22 = os_log_type_enabled(v20, v21);
  v73 = v15;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v70 = v16;
    v25 = v24;
    *&v79 = v24;
    *v23 = 134218242;
    *(v23 + 4) = *(v15 + 16);

    *(v23 + 12) = 2080;
    v26 = MEMORY[0x26D635020](v15, MEMORY[0x277D83E40]);
    v28 = sub_269263040(v26, v27, &v79);

    *(v23 + 14) = v28;
    _os_log_impl(&dword_26925D000, v20, v21, "\n--- FIRST TOKENS (%ld):\n%s\n\n", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v29 = v25;
    v16 = v70;
    MEMORY[0x26D635690](v29, -1, -1);
    MEMORY[0x26D635690](v23, -1, -1);
  }

  else
  {
  }

  v30 = *(v16 + 8);
  v31 = v72;
  v30(v13, v72);
  v32 = v71;
  v19(v71, v18, v31);
  v33 = v74;

  v34 = sub_26926B1C0();
  v35 = sub_26926B360();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v79 = v37;
    *v36 = 134218242;
    *(v36 + 4) = *(v33 + 16);

    *(v36 + 12) = 2080;
    v38 = MEMORY[0x26D635020](v33, MEMORY[0x277D83E40]);
    v40 = v32;
    v41 = sub_269263040(v38, v39, &v79);

    *(v36 + 14) = v41;
    _os_log_impl(&dword_26925D000, v34, v35, "\n--- SECOND TOKENS (%ld):\n%s\n\n", v36, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x26D635690](v37, -1, -1);
    MEMORY[0x26D635690](v36, -1, -1);

    v42 = v40;
    v43 = v72;
  }

  else
  {

    v42 = v32;
    v43 = v31;
  }

  v30(v42, v43);
  v44 = v73;
  swift_getKeyPath();
  v45 = *(v44 + 16);
  v46 = MEMORY[0x277D84F90];
  if (v45)
  {
    v84 = MEMORY[0x277D84F90];
    sub_26926417C(0, v45, 0);
    v47 = v84;
    v48 = (v44 + 56);
    do
    {
      v49 = *(v48 - 1);
      v50 = *v48;
      v79 = *(v48 - 3);
      v80 = v49;
      v81 = v50;

      swift_getAtKeyPath();

      v51 = v82;
      v52 = v83;
      v84 = v47;
      v54 = *(v47 + 16);
      v53 = *(v47 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_26926417C((v53 > 1), v54 + 1, 1);
        v47 = v84;
      }

      *(v47 + 16) = v54 + 1;
      v55 = v47 + 16 * v54;
      *(v55 + 32) = v51;
      *(v55 + 40) = v52;
      v48 += 4;
      --v45;
    }

    while (v45);

    v33 = v74;
  }

  else
  {

    v47 = MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  v56 = *(v33 + 16);
  if (v56)
  {
    v84 = v46;
    sub_26926417C(0, v56, 0);
    v57 = v84;
    v58 = (v33 + 56);
    do
    {
      v59 = *(v58 - 1);
      v60 = *v58;
      v79 = *(v58 - 3);
      v80 = v59;
      v81 = v60;

      swift_getAtKeyPath();

      v61 = v82;
      v62 = v83;
      v84 = v57;
      v64 = *(v57 + 16);
      v63 = *(v57 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_26926417C((v63 > 1), v64 + 1, 1);
        v57 = v84;
      }

      *(v57 + 16) = v64 + 1;
      v65 = v57 + 16 * v64;
      *(v65 + 32) = v61;
      *(v65 + 40) = v62;
      v58 += 4;
      --v56;
    }

    while (v56);
  }

  else
  {

    v57 = MEMORY[0x277D84F90];
  }

  v66 = sub_2692642A8(v47);

  v67 = sub_269262A94(v57, v66);

  return v67 & 1;
}

unint64_t sub_269264BC4()
{
  result = qword_280302758;
  if (!qword_280302758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302758);
  }

  return result;
}

uint64_t sub_269264C34(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26926B480() & 1;
  }
}

uint64_t sub_269264C8C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_269264394(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_269264D10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_269264D9C()
{
  v1 = *v0;
  sub_26926B4C0();
  MEMORY[0x26D6351D0](v1);
  return sub_26926B4E0();
}

uint64_t sub_269264E10(uint64_t a1)
{
  v2 = *v1;
  sub_26926B4C0();
  MEMORY[0x26D6351D0](v2);
  return sub_26926B4E0();
}

unint64_t sub_269264E54@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_269267DF8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_269264F3C(uint64_t a1)
{
  v2 = sub_26926B1D0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - v6;
  v8 = sub_26926B170();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  v17 = *(v9 + 16);
  v17(&v43 - v15, a1, v8);
  v18 = (*(v9 + 88))(v16, v8);
  if (v18 == *MEMORY[0x277D61528] || v18 == *MEMORY[0x277D614F8])
  {
    v20 = sub_269268EA0();
    (*(v3 + 16))(v7, v20, v2);
    v17(v14, a1, v8);
    v21 = sub_26926B1C0();
    v22 = sub_26926B370();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v3;
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      v25 = sub_26926B160();
      (*(v9 + 8))(v14, v8);
      *(v24 + 4) = v25;
      _os_log_impl(&dword_26925D000, v21, v22, "Unsupported taskEngagementType: %ld", v24, 0xCu);
      v26 = v24;
      v3 = v23;
      MEMORY[0x26D635690](v26, -1, -1);
    }

    else
    {
      (*(v9 + 8))(v14, v8);
    }

    (*(v3 + 8))(v7, v2);
  }

  else
  {
    if (v18 == *MEMORY[0x277D61518])
    {
      return 2;
    }

    if (v18 == *MEMORY[0x277D614E8])
    {
      return 4;
    }

    if (v18 == *MEMORY[0x277D614D8] || v18 == *MEMORY[0x277D61500] || v18 == *MEMORY[0x277D614E0] || v18 == *MEMORY[0x277D614F0] || v18 == *MEMORY[0x277D61508] || v18 == *MEMORY[0x277D61520])
    {
      return 3;
    }

    v33 = v2;
    v34 = sub_269268EA0();
    (*(v3 + 16))(v46, v34, v2);
    v35 = v45;
    v17(v45, a1, v8);
    v36 = sub_26926B1C0();
    v37 = sub_26926B370();
    if (os_log_type_enabled(v36, v37))
    {
      v39 = swift_slowAlloc();
      v44 = v36;
      v40 = v39;
      *v39 = 134217984;
      v43 = sub_26926B160();
      v41 = *(v9 + 8);
      v41(v35, v8);
      v42 = v44;
      *(v40 + 1) = v43;
      _os_log_impl(&dword_26925D000, v42, v37, "Unknown taskEngagementType: %ld", v40, 0xCu);
      MEMORY[0x26D635690](v40, -1, -1);
    }

    else
    {
      v41 = *(v9 + 8);
      v41(v35, v8);
      v42 = v36;
    }

    (*(v3 + 8))(v46, v33);
    v41(v16, v8);
  }

  return 0;
}

id sub_269265444(uint64_t a1)
{
  v67 = a1;
  v1 = sub_26926B1D0();
  v58 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26926AFF0();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v64 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v63 = &v54 - v7;
  v8 = sub_26926AFE0();
  v62 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v61 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v54 - v11;
  v12 = sub_26926B030();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v57 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - v16;
  v18 = sub_26926B0A0();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v54 - v23;
  v59 = [objc_allocWithZone(MEMORY[0x277D58378]) init];
  if (v59)
  {
    sub_26926B0F0();
    sub_26926B080();
    v25 = *(v19 + 8);
    v25(v24, v18);
    v26 = sub_26926B000();
    v29 = *(v13 + 8);
    v27 = v13 + 8;
    v28 = v29;
    v29(v17, v12);
    if (v26)
    {
      v30 = v25;
      v31 = v18;
      LODWORD(v58) = 1;
    }

    else
    {
      v55 = v8;
      sub_26926B0F0();
      v38 = v57;
      sub_26926B080();
      v25(v22, v18);
      v39 = sub_26926B010();
      v54 = v27;
      v28(v38, v12);
      v40 = v25;
      if (v39)
      {
        v30 = v25;
        v31 = v18;
        LODWORD(v58) = 1;
      }

      else
      {
        sub_26926B0F0();
        sub_26926B080();
        v31 = v18;
        v41 = v18;
        v42 = v12;
        v30 = v40;
        v40(v22, v41);
        LODWORD(v58) = sub_26926B020();
        v28(v38, v42);
      }

      v8 = v55;
    }

    sub_26926B0F0();
    v43 = v60;
    sub_26926B050();
    v56 = v31;
    v30(v22, v31);
    v45 = v61;
    v44 = v62;
    (*(v62 + 104))(v61, *MEMORY[0x277D61498], v8);
    sub_269267E08(&qword_280302780, MEMORY[0x277D614A0], MEMORY[0x277D614A8]);
    sub_26926B2D0();
    sub_26926B2D0();
    v46 = *(v44 + 8);
    v46(v45, v8);
    v46(v43, v8);
    v37 = v59;
    [v59 setIsSuccess_];
    sub_26926B0F0();
    v47 = v63;
    sub_26926B070();
    v30(v22, v56);
    v49 = v64;
    v48 = v65;
    v50 = v66;
    (*(v65 + 104))(v64, *MEMORY[0x277D614B0], v66);
    sub_269267E08(&qword_280302788, MEMORY[0x277D614B8], MEMORY[0x277D614C0]);
    sub_26926B2D0();
    sub_26926B2D0();
    v51 = *(v48 + 8);
    v51(v49, v50);
    v51(v47, v50);
    [v37 setIsExecuted_];
    if (v58)
    {
      v52 = 0;
    }

    else
    {
      v52 = [v37 isSuccess];
    }

    [v37 setIsSuccessfulDirectExecution_];
  }

  else
  {
    v32 = sub_269268EA0();
    v33 = v58;
    (*(v58 + 16))(v3, v32, v1);
    v34 = sub_26926B1C0();
    v35 = sub_26926B370();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_26925D000, v34, v35, "Failed to create SELF simpleTaskInfo", v36, 2u);
      MEMORY[0x26D635690](v36, -1, -1);
    }

    (*(v33 + 8))(v3, v1);
    return 0;
  }

  return v37;
}

void *sub_269265BFC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_26926B1D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*((*MEMORY[0x277D85000] & *v3) + 0x60))(a3);
  v12 = v11;
  if (v11)
  {
    [v11 setTaskSuccessType_];
    type metadata accessor for EditableTaskEvaluator();
    if (sub_2692692C4())
    {
      [v12 setIsSuccess_];
      [v12 setIsSuccessfulDirectExecution_];
    }
  }

  else
  {
    v13 = sub_269268EA0();
    (*(v8 + 16))(v10, v13, v7);

    v14 = sub_26926B1C0();
    v15 = sub_26926B370();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_269263040(a1, a2, &v20);
      _os_log_impl(&dword_26925D000, v14, v15, "Failed to create simpleTaskInfo for %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x26D635690](v17, -1, -1);
      MEMORY[0x26D635690](v16, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
  }

  return v12;
}

void *sub_269265E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v47 = a2;
  v5 = sub_26926B1D0();
  v48 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26926AF90();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26926AFD0();
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26926B170();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  v20 = a3;
  v21 = (*((*MEMORY[0x277D85000] & *v3) + 0x60))(a3);
  v22 = v21;
  if (!v21)
  {
    v33 = v46;
    v34 = sub_269268EA0();
    v35 = v48;
    (*(v48 + 16))(v7, v34, v5);
    v36 = v47;

    v37 = sub_26926B1C0();
    v38 = sub_26926B370();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v50 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_269263040(v33, v36, &v50);
      _os_log_impl(&dword_26925D000, v37, v38, "Failed to create simpleTaskInfo for %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x26D635690](v40, -1, -1);
      MEMORY[0x26D635690](v39, -1, -1);
    }

    (*(v35 + 8))(v7, v5);
    return v22;
  }

  [v21 setTaskSuccessType_];
  v23 = [objc_allocWithZone(MEMORY[0x277D58390]) init];
  if (!v23)
  {
    return v22;
  }

  v24 = v23;
  v25 = [objc_allocWithZone(MEMORY[0x277D582D0]) init];
  if (!v25)
  {

    return v22;
  }

  v26 = v25;
  v48 = v20;
  sub_26926B0E0();
  (*(v14 + 104))(v17, *MEMORY[0x277D61518], v13);
  sub_269267E08(&qword_280302790, MEMORY[0x277D61538], MEMORY[0x277D61550]);
  sub_26926B2D0();
  sub_26926B2D0();
  v27 = *(v14 + 8);
  v27(v17, v13);
  v27(v19, v13);
  if (v50 != v49)
  {
LABEL_10:
    [v24 setLongRunningTaskInfo_];
    [v22 setTaskSpecificInfo_];

    return v22;
  }

  sub_26926B0C0();
  v28 = v43;
  sub_26926AFC0();
  (*(v41 + 8))(v12, v42);
  sub_26926AF80();
  v30 = v29;
  result = (*(v44 + 8))(v28, v45);
  v32 = v30 * 1000.0;
  if (COERCE__INT64(fabs(v30 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v32 <= -1.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v32 < 1.84467441e19)
  {
    [v26 setDurationInMs_];
    if ([v26 durationInMs] >> 3 <= 0x270)
    {
      [v22 setIsSuccess_];
      [v22 setIsSuccessfulDirectExecution_];
    }

    goto LABEL_10;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_269266474(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_26926B1D0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*((*MEMORY[0x277D85000] & *v4) + 0x60))(a3);
  v14 = v13;
  if (v13)
  {
    [v13 setTaskSuccessType_];
  }

  else
  {
    v15 = sub_269268EA0();
    (*(v10 + 16))(v12, v15, v9);

    v16 = sub_26926B1C0();
    v17 = sub_26926B370();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_269263040(a1, a2, &v22);
      _os_log_impl(&dword_26925D000, v16, v17, "Failed to create simpleTaskInfo for %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x26D635690](v19, -1, -1);
      MEMORY[0x26D635690](v18, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
  }

  return v14;
}

void sub_2692666A0(unint64_t a1)
{
  v2 = sub_26926B260();
  MEMORY[0x28223BE20](v2 - 8);
  v82 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26926B1D0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v75 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v75 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302798, &qword_26926BEF0);
  MEMORY[0x28223BE20](v14 - 8);
  v89 = &v75 - v15;
  v91 = sub_26926B130();
  v16 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_269267E50(MEMORY[0x277D84F90]);
  v96 = v90;
  v94 = a1;
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26926B440())
  {
    v84 = v18;
    v76 = v13;
    v18 = 0;
    v21 = v94 & 0xC000000000000001;
    v86 = v94 & 0xFFFFFFFFFFFFFF8;
    v87 = &v16[6];
    v78 = v16 + 4;
    v79 = v11;
    v77 = &v16[1];
    v92 = &v5[1];
    v93 = v5 + 2;
    *&v19 = 136315138;
    v75 = v19;
    v13 = v91;
    v85 = i;
    v80 = v8;
    v88 = v94 & 0xC000000000000001;
    v83 = v4;
    while (1)
    {
      if (v21)
      {
        v22 = MEMORY[0x26D635120](v18, v94);
      }

      else
      {
        if (v18 >= *(v86 + 16))
        {
          goto LABEL_28;
        }

        v22 = *(v94 + 8 * v18 + 32);
      }

      v11 = v22;
      v23 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v24 = [v22 eventBody];
      if (v24 && (v25 = v24, v26 = [v24 taskID], v25, v26))
      {
        v27 = sub_26926B230();
        v5 = v28;

        v29 = v89;
        sub_26926B180();
        if ((*v87)(v29, 1, v13) == 1)
        {
          sub_269267FA8(v29);
          v30 = sub_269268EA0();
          v31 = v79;
          (v93->isa)(v79, v30, v4);

          v16 = sub_26926B1C0();
          v32 = sub_26926B370();

          if (os_log_type_enabled(v16, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v95[0] = v34;
            *v33 = v75;
            v35 = sub_269263040(v27, v5, v95);

            *(v33 + 4) = v35;
            _os_log_impl(&dword_26925D000, v16, v32, "Could not get engagement for taskId %s.", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v34);
            v36 = v34;
            i = v85;
            MEMORY[0x26D635690](v36, -1, -1);
            v37 = v33;
            v13 = v91;
            MEMORY[0x26D635690](v37, -1, -1);
          }

          else
          {
          }

          v4 = v83;
          (*v92)(v31, v83);
          v8 = v80;
        }

        else
        {
          v41 = v84;
          (v78->isa)(v84, v29, v13);
          v42 = (*((*MEMORY[0x277D85000] & *v81) + 0x90))(v41);
          if (v42)
          {
            v43 = v4;
            v44 = v42;
            v45 = v96;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v95[0] = v45;
            v16 = v95;
            sub_269267A5C(v44, v27, v5, isUniquelyReferenced_nonNull_native);

            v90 = v95[0];
            v96 = v95[0];
            sub_269268010(v41, &v96);

            v4 = v43;
            v13 = v91;

            (*v77)(v41, v13);
          }

          else
          {
            v47 = sub_269268EA0();
            (v93->isa)(v76, v47, v4);

            v16 = sub_26926B1C0();
            v48 = v4;
            v49 = sub_26926B370();

            if (os_log_type_enabled(v16, v49))
            {
              v50 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              v95[0] = v51;
              *v50 = v75;
              v52 = sub_269263040(v27, v5, v95);

              *(v50 + 4) = v52;
              _os_log_impl(&dword_26925D000, v16, v49, "Could not evaluate %s.", v50, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v51);
              MEMORY[0x26D635690](v51, -1, -1);
              v53 = v50;
              v13 = v91;
              MEMORY[0x26D635690](v53, -1, -1);

              v4 = v83;
              (*v92)(v76, v83);
              (*v77)(v84, v13);
            }

            else
            {

              (*v92)(v76, v48);
              (*v77)(v84, v13);
              v4 = v48;
            }
          }

          i = v85;
        }

        v21 = v88;
      }

      else
      {
        v38 = sub_269268EA0();
        (v93->isa)(v8, v38, v4);
        v5 = sub_26926B1C0();
        v16 = sub_26926B370();
        if (os_log_type_enabled(v5, v16))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_26925D000, v5, v16, "Could not get taskId from event.", v39, 2u);
          v40 = v39;
          v13 = v91;
          MEMORY[0x26D635690](v40, -1, -1);
        }

        (*v92)(v8, v4);
      }

      ++v18;
      if (v23 == i)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

LABEL_30:
  v93 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v54 = v90 + 64;
  v55 = 1 << *(v90 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & *(v90 + 64);
  v58 = (v55 + 63) >> 6;

  v59 = 0;
  while (v57)
  {
LABEL_40:
    v61 = __clz(__rbit64(v57)) | (v59 << 6);
    v62 = *(v90 + 56);
    v63 = (*(v90 + 48) + 16 * v61);
    v64 = v63[1];
    v94 = *v63;
    v65 = *(v62 + 8 * v61);

    v66 = v65;
    v67 = [v66 jsonData];
    if (!v67)
    {
      goto LABEL_45;
    }

    v68 = v67;
    v69 = sub_26926AE80();
    v71 = v70;

    sub_26926B250();
    sub_26926B240();
    v73 = v72;
    sub_269267F54(v69, v71);
    if (v73)
    {
      v74 = sub_26926B220();

      v95[0] = v94;
      v95[1] = v64;
      [v93 __swift_setObject:v74 forKeyedSubscript:sub_26926B490()];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v57 &= v57 - 1;
  }

  while (1)
  {
    v60 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    if (v60 >= v58)
    {

      return;
    }

    v57 = *(v54 + 8 * v60);
    ++v59;
    if (v57)
    {
      v59 = v60;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_2692670F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26926B130();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26926B1D0();
  v47 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26926B170();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_26926B110();
  v51 = v14;
  sub_26926B0E0();
  v15 = MEMORY[0x277D85000];
  v16 = (*((*MEMORY[0x277D85000] & *v1) + 0x58))(v13);
  (*(v11 + 8))(v13, v10);
  v17 = v16;
  if (v16 > 1u)
  {
    if (v16 == 2)
    {
      v18 = (*((*v15 & *v2) + 0x78))(v50, v51, a1);
    }

    else if (v16 == 3)
    {
      v18 = (*((*v15 & *v2) + 0x70))(v50, v51, a1);
    }

    else
    {
      v18 = (*((*v15 & *v2) + 0x68))(v50, v51, a1);
    }

    goto LABEL_11;
  }

  v19 = v6;
  v21 = v48;
  v20 = v49;
  v22 = v47;
  if (v17)
  {
    v18 = (*((*v15 & *v2) + 0x80))(v50, v51, a1);
LABEL_11:
    v43 = v18;

    return v43;
  }

  v23 = sub_269268EA0();
  v24 = v22;
  v25 = *(v22 + 16);
  v26 = v9;
  v27 = v7;
  v25(v9, v23, v7);
  v28 = v21;
  v29 = v19;
  v30 = v20;
  (*(v21 + 16))(v19, a1, v20);
  v31 = v51;

  v32 = sub_26926B1C0();
  v33 = sub_26926B370();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v46 = v27;
    v35 = v29;
    v36 = v34;
    v45 = swift_slowAlloc();
    v52 = v45;
    *v36 = 136315394;
    v37 = sub_269263040(v50, v31, &v52);

    *(v36 + 4) = v37;
    *(v36 + 12) = 2080;
    v38 = sub_26926B120();
    v40 = v39;
    (*(v28 + 8))(v35, v30);
    v41 = sub_269263040(v38, v40, &v52);

    *(v36 + 14) = v41;
    _os_log_impl(&dword_26925D000, v32, v33, "Task %s has unsupported taskType with taskName: %s", v36, 0x16u);
    v42 = v45;
    swift_arrayDestroy();
    MEMORY[0x26D635690](v42, -1, -1);
    MEMORY[0x26D635690](v36, -1, -1);

    (*(v24 + 8))(v26, v46);
  }

  else
  {

    (*(v21 + 8))(v29, v30);
    (*(v24 + 8))(v26, v27);
  }

  return 0;
}

id SimpleTaskSuccessEvaluator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SimpleTaskSuccessEvaluator.init()()
{
  *&v0[OBJC_IVAR____TtC19SiriTasksEvaluation26SimpleTaskSuccessEvaluator_minStartCallDurationInMs] = 5000;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimpleTaskSuccessEvaluator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SimpleTaskSuccessEvaluator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimpleTaskSuccessEvaluator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_269267740(uint64_t a1, uint64_t a2)
{
  sub_26926B4C0();
  sub_26926B270();
  v4 = sub_26926B4E0();

  return sub_269267BD4(a1, a2, v4);
}

uint64_t sub_2692677B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803027C0, &qword_26926C038);
  v35 = v4;
  result = sub_26926B460();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_26926B4C0();
      sub_26926B270();
      result = sub_26926B4E0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_269267A5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_269267740(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2692677B8(v16, a4 & 1);
      v11 = sub_269267740(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_26926B4B0();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_269267C8C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_269267BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26926B480())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_269267C8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803027C0, &qword_26926C038);
  v2 = *v0;
  v3 = sub_26926B450();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_269267DF8(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_269267E08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_269267E50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803027C0, &qword_26926C038);
    v3 = sub_26926B470();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_269267740(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_269267F54(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_269267FA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302798, &qword_26926BEF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269268010(uint64_t a1, uint64_t a2)
{
  v107 = a2;
  v3 = sub_26926B1D0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v111 = &v101[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v101[-v8];
  v10 = MEMORY[0x28223BE20](v7);
  v109 = &v101[-v11];
  MEMORY[0x28223BE20](v10);
  v108 = &v101[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302798, &qword_26926BEF0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v101[-v14];
  v16 = sub_26926B130();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v101[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v101[-v22];
  v24 = MEMORY[0x28223BE20](v21);
  v106 = &v101[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v101[-v27];
  MEMORY[0x28223BE20](v26);
  v110 = &v101[-v29];
  if (sub_26926B0B0())
  {
    v30 = sub_26926B0D0();
    v32 = v31;
    v111 = v30;
    sub_26926B180();
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_269267FA8(v15);
      v33 = sub_269268EA0();
      v34 = v4;
      v35 = v3;
      (*(v4 + 16))(v9, v33, v3);

      v36 = sub_26926B1C0();
      v37 = sub_26926B370();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = v32;
        v40 = swift_slowAlloc();
        v112 = v40;
        *v38 = 136315138;
        v41 = sub_269263040(v111, v39, &v112);

        *(v38 + 4) = v41;
        _os_log_impl(&dword_26925D000, v36, v37, "Could not get previousTaskEngagement with taskId %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x26D635690](v40, -1, -1);
        MEMORY[0x26D635690](v38, -1, -1);
      }

      else
      {
      }

      return (*(v34 + 8))(v9, v35);
    }

    else
    {
      v104 = v32;
      v52 = v110;
      (*(v17 + 32))(v110, v15, v16);
      if (sub_269261830())
      {
        if (sub_269261958())
        {
          v53 = v3;
          v54 = sub_269268EA0();
          v55 = *(v4 + 16);
          v56 = v108;
          v105 = v53;
          v55(v108, v54, v53);
          v57 = v16;
          v58 = *(v17 + 16);
          v58(v28, a1, v16);
          v59 = v106;
          v58(v106, v52, v57);
          v60 = sub_26926B1C0();
          v61 = sub_26926B350();
          v62 = os_log_type_enabled(v60, v61);
          v103 = v17;
          if (v62)
          {
            v63 = swift_slowAlloc();
            v102 = v61;
            v64 = v63;
            v109 = swift_slowAlloc();
            v112 = v109;
            *v64 = 136315394;
            v65 = sub_26926B110();
            v66 = v59;
            v68 = v67;
            v69 = *(v17 + 8);
            v69(v28, v57);
            v70 = sub_269263040(v65, v68, &v112);

            *(v64 + 4) = v70;
            *(v64 + 12) = 2080;
            v71 = sub_26926B110();
            v73 = v72;
            v74 = v57;
            v69(v66, v57);
            v75 = sub_269263040(v71, v73, &v112);

            *(v64 + 14) = v75;
            _os_log_impl(&dword_26925D000, v60, v102, "Task %s is a restatement of %s", v64, 0x16u);
            v76 = v109;
            swift_arrayDestroy();
            MEMORY[0x26D635690](v76, -1, -1);
            MEMORY[0x26D635690](v64, -1, -1);

            (*(v4 + 8))(v108, v105);
          }

          else
          {

            v69 = *(v17 + 8);
            v69(v59, v57);
            v74 = v57;
            v69(v28, v57);
            (*(v4 + 8))(v56, v105);
          }

          v93 = v104;
          v94 = *v107;
          v95 = v111;
          if (!*(*v107 + 16))
          {
            goto LABEL_27;
          }

          v96 = sub_269267740(v111, v104);
          if (v97)
          {
            [*(*(v94 + 56) + 8 * v96) setIsSuccess_];
          }

          if (*(v94 + 16))
          {
            v98 = sub_269267740(v95, v93);
            v100 = v99;

            if (v100)
            {
              [*(*(v94 + 56) + 8 * v98) setIsSuccessfulDirectExecution_];
            }
          }

          else
          {
LABEL_27:
          }

          return (v69)(v110, v74);
        }

        else
        {
          (*(v17 + 8))(v52, v16);
        }
      }

      else
      {
        v77 = sub_269268EA0();
        (*(v4 + 16))(v109, v77, v3);
        (*(v17 + 16))(v23, a1, v16);
        v78 = v104;

        v79 = sub_26926B1C0();
        v80 = sub_26926B350();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v107 = v16;
          v82 = v81;
          v108 = swift_slowAlloc();
          v112 = v108;
          *v82 = 136315394;
          v83 = sub_26926B110();
          v105 = v3;
          v85 = v84;
          v86 = *(v17 + 8);
          v87 = v23;
          v88 = v107;
          v86(v87, v107);
          v89 = sub_269263040(v83, v85, &v112);

          *(v82 + 4) = v89;
          *(v82 + 12) = 2080;
          v90 = sub_269263040(v111, v78, &v112);

          *(v82 + 14) = v90;
          _os_log_impl(&dword_26925D000, v79, v80, "Tasks %s and %s are ineligible for restatement correction.", v82, 0x16u);
          v91 = v108;
          swift_arrayDestroy();
          MEMORY[0x26D635690](v91, -1, -1);
          MEMORY[0x26D635690](v82, -1, -1);

          (*(v4 + 8))(v109, v105);
          return (v86)(v110, v88);
        }

        else
        {

          v92 = *(v17 + 8);
          v92(v23, v16);
          (*(v4 + 8))(v109, v3);
          return (v92)(v52, v16);
        }
      }
    }
  }

  else
  {
    v42 = sub_269268EA0();
    (*(v4 + 16))(v111, v42, v3);
    (*(v17 + 16))(v20, a1, v16);
    v43 = sub_26926B1C0();
    v44 = sub_26926B350();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v112 = v46;
      *v45 = 136315138;
      v47 = sub_26926B110();
      v105 = v3;
      v49 = v48;
      (*(v17 + 8))(v20, v16);
      v50 = sub_269263040(v47, v49, &v112);

      *(v45 + 4) = v50;
      _os_log_impl(&dword_26925D000, v43, v44, "Task %s has no previousTaskId set.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x26D635690](v46, -1, -1);
      MEMORY[0x26D635690](v45, -1, -1);

      return (*(v4 + 8))(v111, v105);
    }

    else
    {

      (*(v17 + 8))(v20, v16);
      return (*(v4 + 8))(v111, v3);
    }
  }
}

unint64_t sub_269268B0C()
{
  result = qword_2803027A8;
  if (!qword_2803027A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803027A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SimpleTaskSuccessEvaluator.TaskSuccessType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SimpleTaskSuccessEvaluator.TaskSuccessType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_269268D54()
{
  result = qword_2803027B8;
  if (!qword_2803027B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803027B8);
  }

  return result;
}

uint64_t sub_269268DA8()
{
  sub_269268FA0();
  result = sub_26926B380();
  qword_281571888 = result;
  return result;
}

uint64_t sub_269268E14()
{
  v0 = sub_26926B1D0();
  __swift_allocate_value_buffer(v0, qword_281571890);
  __swift_project_value_buffer(v0, qword_281571890);
  if (qword_281571878 != -1)
  {
    swift_once();
  }

  v1 = qword_281571888;
  return sub_26926B1E0();
}

uint64_t sub_269268EA0()
{
  if (qword_281571880 != -1)
  {
    swift_once();
  }

  v0 = sub_26926B1D0();

  return __swift_project_value_buffer(v0, qword_281571890);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_269268FA0()
{
  result = qword_281571870;
  if (!qword_281571870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281571870);
  }

  return result;
}

uint64_t sub_269268FEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803027D8, &qword_26926C088);
  v0 = sub_26926B170();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26926C050;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D61500], v0);
  v6(v5 + v2, *MEMORY[0x277D614D8], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D614F0], v0);
  v6(v5 + 3 * v2, *MEMORY[0x277D614E0], v0);
  v7 = sub_269269758(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_280302A90 = v7;
  return result;
}

uint64_t sub_269269180()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803027D8, &qword_26926C088);
  v0 = sub_26926B170();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26926C060;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D61508], v0);
  v6(v5 + v2, *MEMORY[0x277D61520], v0);
  v7 = sub_269269758(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_280302A98 = v7;
  return result;
}

uint64_t sub_2692692C4()
{
  v0 = sub_26926B170();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26926AFD0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26926B0C0();
  v8 = sub_26926B100();
  if (qword_280302A80 != -1)
  {
    swift_once();
  }

  v9 = qword_280302A90;
  sub_26926B0E0();
  LOBYTE(v9) = sub_269269548(v3, v9);
  v10 = *(v1 + 8);
  v10(v3, v0);
  if (v9)
  {
    v11 = sub_269269A50(v7, v8);
  }

  else
  {
    if (qword_280302A88 != -1)
    {
      swift_once();
    }

    v12 = qword_280302A98;
    sub_26926B0E0();
    v13 = sub_269269548(v3, v12);
    v10(v3, v0);
    if ((v13 & 1) == 0)
    {
      (*(v5 + 8))(v7, v4);

      v14 = 0;
      return v14 & 1;
    }

    v11 = sub_269269D4C(v7, v8);
  }

  v14 = v11;

  (*(v5 + 8))(v7, v4);
  return v14 & 1;
}

uint64_t sub_269269548(uint64_t a1, uint64_t a2)
{
  v3 = sub_26926B170();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_26926A248(&qword_2803027C8, MEMORY[0x277D61540]), v7 = sub_26926B200(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_26926A248(&qword_2803027D0, MEMORY[0x277D61548]);
      v15 = sub_26926B210();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_269269758(uint64_t a1)
{
  v2 = sub_26926B170();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803027E0, &unk_26926C090);
    v9 = sub_26926B400();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_26926A248(&qword_2803027C8, MEMORY[0x277D61540]);
      v16 = sub_26926B200();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_26926A248(&qword_2803027D0, MEMORY[0x277D61548]);
          v23 = sub_26926B210();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

BOOL sub_269269A50(uint64_t a1, uint64_t a2)
{
  v34 = sub_26926AFD0();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26926AF20();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  sub_26926AFA0();
  v13 = sub_26926AF00();
  v14 = *(v7 + 8);
  v14(v12, v6);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  sub_26926AFA0();
  v15 = sub_26926AF10();
  v16 = v14;
  v17 = v15;
  v19 = v18;
  v30 = v16;
  v31 = v6;
  v16(v12, v6);
  v20 = 0;
  v21 = *(a2 + 16);
  v32 = a2;
  v33 = v21;
  v22 = (v3 + 8);
  do
  {
    v24 = v33 != v20;
    if (v33 == v20)
    {
      break;
    }

    sub_26926B150();
    sub_26926B140();
    sub_26926AFA0();
    (*v22)(v5, v34);
    v25 = sub_26926AF10();
    v27 = v26;
    v30(v10, v31);
    if (v17 == v25 && v19 == v27)
    {

      break;
    }

    ++v20;
    v23 = sub_26926B480();
  }

  while ((v23 & 1) == 0);

  return v24;
}

uint64_t sub_269269D4C(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v2 = sub_26926AFD0();
  v50 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v47 = &v41 - v6;
  v7 = sub_26926B150();
  v48 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26926AF70();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v46 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - v14;
  sub_26926AFB0();
  v16 = sub_26926AF30();
  v19 = *(v11 + 8);
  v18 = v11 + 8;
  v17 = v19;
  v19(v15, v10);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  sub_26926AFB0();
  v20 = sub_26926AF50();
  v51 = v21;
  v52 = v20;
  v56 = v18;
  v17(v15, v10);
  v22 = *(v53 + 16);
  if (!v22)
  {
LABEL_15:
    v39 = 0;
    goto LABEL_18;
  }

  v54 = v17;
  v55 = v10;
  v44 = *(v48 + 16);
  v45 = v7;
  v23 = v53 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
  v53 = v50 + 8;
  v48 += 16;
  v42 = *(v48 + 56);
  v43 = (v48 - 8);
  v44(v9, v23, v7);
  while (1)
  {
    v25 = v47;
    sub_26926B140();
    v26 = v46;
    sub_26926AFB0();
    v27 = *v53;
    v28 = v25;
    v29 = v2;
    (*v53)(v28, v2);
    v30 = sub_26926AF50();
    v32 = v31;
    v54(v26, v55);
    if (v52 == v30 && v51 == v32)
    {
    }

    else
    {
      v33 = sub_26926B480();

      if ((v33 & 1) == 0)
      {
        v24 = v45;
        (*v43)(v9, v45);
        v2 = v29;
        goto LABEL_5;
      }
    }

    v49 = v23;
    v50 = v22;
    sub_26926B140();
    sub_26926AFB0();
    v34 = v29;
    v27(v5, v29);
    v35 = sub_26926AF40();
    v36 = v54;
    v37 = v55;
    v54(v15, v55);
    if (v35)
    {
      break;
    }

    sub_26926B140();
    sub_26926AFB0();
    v27(v5, v34);
    v38 = sub_26926AF60();
    v36(v15, v37);
    v24 = v45;
    (*v43)(v9, v45);
    v2 = v34;
    v23 = v49;
    v22 = v50;
    if (v38)
    {
      goto LABEL_17;
    }

LABEL_5:
    v23 += v42;
    if (!--v22)
    {
      goto LABEL_15;
    }

    v44(v9, v23, v24);
  }

  (*v43)(v9, v45);
LABEL_17:
  v39 = 1;
LABEL_18:

  return v39;
}

uint64_t sub_26926A248(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_26926B170();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id FeatureStoreUtils.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeatureStoreUtils.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FeatureStoreUtils();
  return objc_msgSendSuper2(&v3, sel_init);
}

id FeatureStoreUtils.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FeatureStoreUtils();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_26926A49C(uint64_t a1)
{
  v2 = sub_26926B3B0();

  return sub_26926A4E0(a1, v2);
}

unint64_t sub_26926A4E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_26926ADC0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26D6350C0](v9, a1);
      sub_26926AD6C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_26926A5A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302760, &qword_26926BEB0);
    v3 = sub_26926B400();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_26926B4C0();

      sub_26926B270();
      result = sub_26926B4E0();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_26926B480();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t _s19SiriTasksEvaluation17FeatureStoreUtilsC08retrieveD4Data8streamId011interactionJ0Say10Foundation0H0VGSS_SStFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_26926B1D0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  v15 = objc_allocWithZone(MEMORY[0x277D08440]);
  v16 = sub_26926B220();
  v17 = [v15 initWithStreamId_];

  if (v17)
  {
    v37 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302768, &qword_26926BEB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26926C0A0;
    *(inited + 32) = a3;
    *(inited + 40) = a4;

    sub_26926A5A8(inited);
    swift_setDeallocating();
    sub_26926AD18(inited + 32);
    v19 = sub_26926B330();

    v20 = [v17 retrieve_];

    if (v20)
    {
      v21 = sub_26926B1F0();

      v38 = a3;
      v39 = a4;

      sub_26926B3D0();
      if (*(v21 + 16) && (v22 = sub_26926A49C(v40), (v23 & 1) != 0))
      {
        sub_269264D10(*(v21 + 56) + 32 * v22, v41);
        sub_26926AD6C(v40);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803027E8, &unk_26926C0E0);
        if (swift_dynamicCast())
        {

          return v38;
        }
      }

      else
      {

        sub_26926AD6C(v40);
      }
    }

    v30 = sub_269268EA0();
    (*(v9 + 16))(v14, v30, v8);

    v31 = sub_26926B1C0();
    v32 = sub_26926B370();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = a3;
      v36 = v34;
      v40[0] = v34;
      *v33 = 136315394;
      *(v33 + 4) = sub_269263040(v35, a4, v40);
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_269263040(v37, a2, v40);
      _os_log_impl(&dword_26925D000, v31, v32, "Interaction %s does not exist in stream %s.", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D635690](v36, -1, -1);
      MEMORY[0x26D635690](v33, -1, -1);
    }

    (*(v9 + 8))(v14, v8);
  }

  else
  {
    v25 = sub_269268EA0();
    (*(v9 + 16))(v12, v25, v8);

    v26 = sub_26926B1C0();
    v27 = sub_26926B370();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_269263040(a1, a2, v40);
      _os_log_impl(&dword_26925D000, v26, v27, "Failed to extract to feature store because the stream %s is not found", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x26D635690](v29, -1, -1);
      MEMORY[0x26D635690](v28, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
  }

  return MEMORY[0x277D84F90];
}

id _s19SiriTasksEvaluation17FeatureStoreUtilsC08retrieveD08streamId011interactionI011dataVersionSo20FSFCurareInteraction_pSgSS_SSs6UInt32VtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = _s19SiriTasksEvaluation17FeatureStoreUtilsC08retrieveD4Data8streamId011interactionJ0Say10Foundation0H0VGSS_SStFZ_0(a1, a2, a3, a4);
  if (v6[2])
  {
    v7 = v6[4];
    v8 = v6[5];
    sub_26926AE1C(v7, v8);

    v9 = objc_opt_self();
    v10 = sub_26926AE70();
    v11 = sub_26926B220();
    v12 = [v9 deserialize:v10 dataVersion:a5 interactionId:v11];
    sub_269267F54(v7, v8);
  }

  else
  {

    return 0;
  }

  return v12;
}

void sub_26926AE1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}