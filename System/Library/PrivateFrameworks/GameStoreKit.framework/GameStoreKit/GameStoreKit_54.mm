uint64_t sub_24EB81F2C(uint64_t a1)
{
  v2 = *(v1 + 96);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  if (v3 != 1)
  {
    result = 0;
    v7 = v2 + 32;
    v8 = v3;
    while (!__OFSUB__(v8, result))
    {
      v9 = result + (v8 - result) / 2;
      if (__OFADD__(result, (v8 - result) / 2))
      {
        goto LABEL_25;
      }

      if (v9 >= v3)
      {
        goto LABEL_26;
      }

      v10 = *(v7 + 8 * v9);
      if (v10 <= a1)
      {
        if (v10 >= a1)
        {
          result += (v8 - result) / 2;
          return result;
        }

        result += (v8 - result) / 2;
        v12 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v12)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v8 = result + (v8 - result) / 2;
        v11 = result + 1;
        if (__OFADD__(result, 1))
        {
          goto LABEL_27;
        }
      }

      if (v8 == v11)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  result = 0;
LABEL_21:
  v12 = __OFSUB__(a1, result);
  v13 = a1 - result;
  if (v12)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (__OFSUB__(v13, 1))
  {
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_24EB82000@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v81 = a6;
  v82 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v76 - v11;
  v13 = sub_24F923CE8();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for IndexedSectionListView(0, a4, a5, v16);
  v79 = *(v17 - 1);
  MEMORY[0x28223BE20](v17);
  v19 = v76 - v18;
  *(&v76[14] - v18) = vdupq_n_s64(5uLL);
  *&v83 = 0;
  sub_24F926F28();
  v20 = *(&v85 + 1);
  *(v19 + 18) = v85;
  *(v19 + 19) = v20;
  v83 = 0u;
  v84 = 0u;
  sub_24F926F28();
  v21 = v87;
  v22 = v86;
  *(v19 + 10) = v85;
  *(v19 + 11) = v22;
  *(v19 + 24) = v21;
  LOBYTE(v83) = 0;
  sub_24F926F28();
  v23 = *(&v85 + 1);
  v19[200] = v85;
  *(v19 + 26) = v23;
  *(v19 + 27) = sub_24EB818EC(0, 0, a4, a5);
  *(v19 + 28) = v24;
  *(v19 + 29) = v25;
  *(v19 + 30) = sub_24EB81940(0, 1);
  *(v19 + 31) = v26;
  *(v19 + 32) = v27;
  sub_24F923CD8();
  sub_24EB8198C(v15);
  v28 = &v19[v17[27]];
  *&v83 = 0;
  sub_24F926F28();
  v29 = *(&v85 + 1);
  *v28 = v85;
  *(v28 + 1) = v29;
  v30 = &v19[v17[28]];
  *&v83 = 0;
  sub_24F926F28();
  v31 = *(&v85 + 1);
  *v30 = v85;
  *(v30 + 1) = v31;
  *&v19[v17[29]] = 0x4032000000000000;
  *&v19[v17[30]] = 0x4008000000000000;
  v19[v17[31]] = 1;
  v32 = &v19[v17[32]];
  sub_24F9233A8();
  v33 = BYTE8(v85);
  v34 = v87;
  v35 = v86;
  *v32 = v85;
  v32[8] = v33;
  *(v32 + 1) = v35;
  v32[32] = v34;
  v80 = v17;
  v36 = sub_24F91F648();
  (*(*(v36 - 8) + 56))(v12, 1, 1, v36);
  sub_24EB826F8(v12);
  v37 = v82;
  *(v19 + 16) = a1;
  *(v19 + 17) = v37;
  sub_24E615E00(a3, v19);
  v38 = a3[3];
  v39 = a3[4];
  v40 = __swift_project_boxed_opaque_existential_1(a3, v38);
  v41 = type metadata accessor for IndexedSectionListItemCache();
  v42 = MEMORY[0x28223BE20](v41);
  v44 = v76 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 16))(v44, v40, v38, v42);
  v46 = swift_allocObject();
  sub_24EB7DA04(v44, v38, v39);
  v78 = v19;
  *(v19 + 5) = v46;
  v47 = a3[3];
  v48 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v47);
  v49 = (*(v48 + 72))(v47, v48);
  v50 = a3[3];
  v51 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v50);
  v52 = (*(v51 + 80))(v50, v51);
  v53 = a3[3];
  v54 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v53);
  v55 = (*(v54 + 88))(v53, v54);
  v56 = a3[3];
  v57 = a3[4];
  v82 = a3;
  __swift_project_boxed_opaque_existential_1(a3, v56);
  result = (*(v57 + 64))(v56, v57);
  v59 = *(result + 16);
  v77 = v55;
  v76[1] = result;
  if (v59)
  {
    v60 = 0;
    v61 = 0;
    v62 = result + 32;
    if (v55)
    {
      v63 = v49;
    }

    else
    {
      v63 = 0.0;
    }

    v64 = MEMORY[0x277D84F90];
    v65 = MEMORY[0x277D84F90];
    while (!__OFADD__(v60, v61))
    {
      v66 = *(v62 + 8 * v60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_24E615EC4(0, *(v64 + 2) + 1, 1, v64);
      }

      v68 = *(v64 + 2);
      v67 = *(v64 + 3);
      if (v68 >= v67 >> 1)
      {
        v64 = sub_24E615EC4((v67 > 1), v68 + 1, 1, v64);
      }

      *(v64 + 2) = v68 + 1;
      *&v64[8 * v68 + 32] = v60 + v61;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24E617688(0, *(v65 + 16) + 1, 1, v65);
        v65 = result;
      }

      v70 = *(v65 + 16);
      v69 = *(v65 + 24);
      if (v70 >= v69 >> 1)
      {
        result = sub_24E617688((v69 > 1), v70 + 1, 1, v65);
        v65 = result;
      }

      *(v65 + 16) = v70 + 1;
      *(v65 + 8 * v70 + 32) = v63 * v60 + v52 * v61;
      v71 = __OFADD__(v61, v66);
      v61 += v66;
      if (v71)
      {
        goto LABEL_21;
      }

      if (v59 == ++v60)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    v61 = 0;
    v64 = MEMORY[0x277D84F90];
    v65 = MEMORY[0x277D84F90];
LABEL_19:

    v72 = v78;
    v78[7] = v49;
    v72[8] = v52;
    v73 = v82;
    v74 = v82[3];
    v75 = v82[4];
    __swift_project_boxed_opaque_existential_1(v82, v74);
    *(v72 + 6) = (*(v75 + 56))(v74, v75);
    *(v72 + 72) = v77 & 1;
    *(v72 + 10) = v59;
    *(v72 + 11) = v61;
    *(v72 + 12) = v64;
    *(v72 + 13) = v65;
    (*(v79 + 32))(v81, v72, v80);
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  return result;
}

uint64_t sub_24EB826F8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3);
  sub_24E60169C(a1, &v6 - v4, &unk_27F22EC30, &qword_24F939880);
  sub_24F926F28();
  return sub_24E601704(a1, &unk_27F22EC30, &qword_24F939880);
}

double sub_24EB827C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A210, &qword_24F986DB8);
  sub_24F926F38();
  v0 = sub_24EB81F2C(v4);
  sub_24EB81D14(v0, v2, v1 & 1);
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_24EB82838()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A210, &qword_24F986DB8);
  sub_24F926F38();
  v0 = sub_24EB81F2C(v4);
  return sub_24EB81D14(v0, v2, v1 & 1);
}

uint64_t sub_24EB82978(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218088, &unk_24F947A58);
  sub_24F923348();
  return v2;
}

uint64_t sub_24EB829F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v110 = a1;
  v109 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v106 = v3;
  v108 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 32);
  v114 = *(v4 + 24);
  v107 = v5;
  v7 = type metadata accessor for IndexedSectionListView.Indices(255, v114, v5, v6);
  sub_24F92B6E8();
  swift_getWitnessTable();
  v8 = sub_24F92CAF8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A050, &qword_24F986C78);
  WitnessTable = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  *&v119 = v8;
  *(&v119 + 1) = v7;
  v103 = v7;
  *&v120 = v9;
  *(&v120 + 1) = v10;
  v121 = v11;
  v12 = sub_24F927248();
  v118 = sub_24EB8F0C4(&qword_27F22A058, &qword_27F22A050, &qword_24F986C78, sub_24EB8E9C0);
  v13 = swift_getWitnessTable();
  v97 = v12;
  v94 = v13;
  v14 = sub_24F927108();
  v104 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v102 = &v88 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2143D0, &unk_24F93CB60);
  v17 = swift_getWitnessTable();
  v18 = sub_24E602068(&qword_27F22A0F0, &qword_27F2143D0, &unk_24F93CB60, MEMORY[0x277D83D20]);
  v105 = v14;
  *&v119 = v14;
  *(&v119 + 1) = v16;
  v113 = v16;
  v99 = v17;
  *&v120 = v17;
  *(&v120 + 1) = v18;
  v98 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v100 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v95 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v96 = &v88 - v21;
  v23 = v2[31];
  v24 = v2[32];
  *&v119 = v2[30];
  v22 = v119;
  *(&v119 + 1) = v23;
  *&v120 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A210, &qword_24F986DB8);
  sub_24F926F38();
  v26 = *&v116[0];
  v27 = sub_24EB81F2C(*&v116[0]);
  v29 = v28;
  v31 = v30;
  v93 = v22;
  *&v119 = v22;
  *(&v119 + 1) = v23;
  v92 = v23;
  v91 = v24;
  *&v120 = v24;
  v90 = v25;
  v32 = v2;
  sub_24F926F38();
  v33 = *(&v116[0] + 1);
  result = sub_24EB81F2C(*(&v116[0] + 1));
  v37 = v36;
  if (v31)
  {
    v38 = v2[12];
    if (*(v38 + 16) <= v27)
    {
      v29 = 0;
      if ((v35 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    if (v27 < 0)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v39 = *(v38 + 8 * v27 + 32);
    v29 = v39 - v27;
    if (__OFSUB__(v39, v27))
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }
  }

  if ((v35 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v40 = v2[12];
  if (*(v40 + 16) > result)
  {
    if (result < 0)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v41 = *(v40 + 8 * result + 32);
    v37 = v41 - result;
    if (!__OFSUB__(v41, result))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v37 = 0;
LABEL_14:
  if (v37 < v29)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v42 = v2[15];
  result = v26 - v42;
  if (__OFSUB__(v26, v42))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v45 = sub_24EB81F2C(result);
  result = v33 + v42;
  if (__OFADD__(v33, v42))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v46 = v43;
  v47 = v44;
  result = sub_24EB81F2C(result);
  if ((v47 & 1) == 0)
  {
    goto LABEL_21;
  }

  v50 = v2[12];
  if (*(v50 + 16) <= v45)
  {
    v46 = 0;
    if ((v49 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  if (v45 < 0)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v51 = *(v50 + 8 * v45 + 32);
  v46 = v51 - v45;
  if (!__OFSUB__(v51, v45))
  {
LABEL_21:
    if ((v49 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_24:
    v52 = v2[12];
    if (*(v52 + 16) > result)
    {
      if (result < 0)
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v53 = *(v52 + 8 * result + 32);
      v48 = v53 - result;
      if (!__OFSUB__(v53, result))
      {
LABEL_30:
        if (v48 < v46)
        {
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v54 = v37 - v29;
        if (__OFSUB__(v37, v29))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        if (v54 < 0)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v88 = v48;
        v55 = v2[5];
        v89 = v46;
        if (v54)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
          result = sub_24F92B618();
          v112 = result;
          *(result + 16) = v54;
          v56 = v29 < v37;
          if (v29 != v37)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v112 = MEMORY[0x277D84F90];
          v56 = v29 < v37;
          if (v29 != v37)
          {
LABEL_38:
            if (!v56)
            {
              goto LABEL_57;
            }

            v83 = v112 + 32;
            result = swift_beginAccess();
            v84 = v29;
            while (!__OFSUB__(v84, v29))
            {
              v85 = *(v55 + 152);
              v86 = (v83 + 32 * (v84 - v29));
              if (*(v85 + 16) && (result = sub_24E7728CC(v84), (v87 & 1) != 0))
              {
                sub_24E8B9530(*(v85 + 56) + 40 * result, v116);
                v119 = v116[0];
                v120 = v116[1];
                LOBYTE(v121) = v117;
                sub_24E8B9530(&v119, v116);
                if (v117 == 1)
                {
                  sub_24E612B0C(v116, v115);
                  sub_24E643A9C(v115, v86);
                  __swift_destroy_boxed_opaque_existential_1(v115);
                }

                else
                {
                  sub_24EB8DD8C(v116);
                  *v86 = 0u;
                  v86[1] = 0u;
                }

                result = sub_24EB8DD8C(&v119);
              }

              else
              {
                *v86 = 0u;
                v86[1] = 0u;
              }

              if (v37 == ++v84)
              {
                goto LABEL_37;
              }
            }

            __break(1u);
            goto LABEL_51;
          }
        }

LABEL_37:
        v57 = v112;
        *(v112 + 16) = v54;
        *&v119 = v93;
        *(&v119 + 1) = v92;
        *&v120 = v91;
        v58 = sub_24F926F38();
        v119 = v116[0];
        MEMORY[0x28223BE20](v58);
        v59 = v114;
        *(&v88 - 4) = v114;
        v60 = v59;
        v61 = v107;
        *(&v88 - 3) = v107;
        *(&v88 - 2) = v32;
        v62 = sub_24EB8FDCC();
        sub_24EB7D58C(sub_24EB8FD84, (&v88 - 6), v113, v103, MEMORY[0x277D84A98], v62, MEMORY[0x277D84AC0], v63);
        MEMORY[0x28223BE20](v64);
        *(&v88 - 6) = v60;
        *(&v88 - 5) = v61;
        *(&v88 - 4) = v65;
        *(&v88 - 3) = v57;
        *(&v88 - 2) = v29;
        *(&v88 - 1) = v32;
        sub_24F924C88();
        v66 = v102;
        sub_24F9270F8();

        *&v119 = v89;
        *(&v119 + 1) = v88;
        v67 = v109;
        v68 = v108;
        v69 = v32;
        v70 = v110;
        (*(v109 + 16))(v108, v69, v110);
        v71 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v72 = (v106 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
        v73 = swift_allocObject();
        *(v73 + 16) = v114;
        *(v73 + 24) = v61;
        (*(v67 + 32))(v73 + v71, v68, v70);
        v74 = (v73 + v72);
        *v74 = v29;
        v74[1] = v37;
        v75 = v95;
        v76 = v105;
        v77 = v113;
        v78 = v99;
        v79 = v98;
        sub_24F926AB8();

        (*(v104 + 8))(v66, v76);
        *&v119 = v76;
        *(&v119 + 1) = v77;
        *&v120 = v78;
        *(&v120 + 1) = v79;
        swift_getOpaqueTypeConformance2();
        v80 = v96;
        v81 = OpaqueTypeMetadata2;
        sub_24E7896B8();
        v82 = *(v100 + 8);
        v82(v75, v81);
        sub_24E7896B8();
        return (v82)(v80, v81);
      }

      __break(1u);
    }

    v48 = 0;
    goto LABEL_30;
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_24EB83478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v51 = a4;
  v52 = a2;
  v53 = a3;
  v40[0] = a1;
  v54 = a7;
  v42 = a5;
  v49 = type metadata accessor for IndexedSectionListView(0, a5, a6, a4);
  v11 = *(v49 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v49);
  v44 = v40 - v13;
  v15 = type metadata accessor for IndexedSectionListView.Indices(255, a5, a6, v14);
  v16 = sub_24F92B6E8();
  WitnessTable = swift_getWitnessTable();
  v18 = sub_24F92CAF8();
  v48 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A050, &qword_24F986C78);
  v47 = v19;
  v59[5] = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v46 = v20;
  v45 = swift_getWitnessTable();
  v59[0] = v18;
  v59[1] = v15;
  v59[2] = v19;
  v59[3] = v20;
  v59[4] = v45;
  v21 = sub_24F927248();
  v50 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v41 = v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v43 = v40 - v25;
  v58 = a1;
  MEMORY[0x253050DD0](v59, v16, WitnessTable, v24);
  v58 = v59[0];
  v26 = v42;
  v55 = v42;
  v56 = a6;
  v27 = a6;
  v40[1] = swift_getKeyPath();
  v28 = v44;
  v29 = v49;
  (*(v11 + 16))(v44, v51, v49);
  v30 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v31 = (v12 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 2) = v26;
  *(v32 + 3) = v27;
  v33 = v53;
  *(v32 + 4) = v52;
  *(v32 + 5) = v33;
  (*(v11 + 32))(&v32[v30], v28, v29);
  *&v32[v31] = v40[0];
  v34 = swift_allocObject();
  v34[2] = v26;
  v34[3] = v27;
  v34[4] = sub_24EB9077C;
  v34[5] = v32;
  v35 = sub_24EB8F0C4(&qword_27F22A058, &qword_27F22A050, &qword_24F986C78, sub_24EB8E9C0);

  v36 = v41;
  sub_24F927228();
  v57 = v35;
  swift_getWitnessTable();
  v37 = v43;
  sub_24E7896B8();
  v38 = *(v50 + 8);
  v38(v36, v21);
  sub_24E7896B8();
  return (v38)(v37, v21);
}

void sub_24EB8391C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a11, uint64_t a12)
{
  v62 = a8;
  v63 = a1;
  LOBYTE(v15) = a4;
  v66 = a2;
  v67 = a9;
  v64 = a12;
  v65 = type metadata accessor for IndexedSectionListView(0, a11, a12, a4);
  v17 = *(v65 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v65);
  v21 = v59 - v20;
  if ((v15 & 1) == 0)
  {
    v27 = a3 - a6;
    if (__OFSUB__(a3, a6))
    {
      __break(1u);
    }

    else if ((v27 & 0x8000000000000000) == 0)
    {
      if (v27 < *(a5 + 16))
      {
        sub_24E60169C(a5 + 32 * v27 + 32, v92, &qword_27F2129B0, &unk_24F945320);
        if (!*&v92[24])
        {
          sub_24E601704(v92, &qword_27F2129B0, &unk_24F945320);
          v59[1] = a7;
          v61 = *(a7 + 40);
          v33 = v65;
          (*(v17 + 16))(v21, a7, v65);
          v34 = (*(v17 + 80) + 32) & ~*(v17 + 80);
          v60 = a3;
          v35 = (v18 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
          v59[0] = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
          v36 = (v35 + 39) & 0xFFFFFFFFFFFFFFF8;
          v37 = swift_allocObject();
          v38 = v64;
          *(v37 + 16) = a11;
          *(v37 + 24) = v38;
          (*(v17 + 32))(v37 + v34, v21, v33);
          v39 = v60;
          *(v37 + v35) = v60;
          v40 = v37 + v59[0];
          *v40 = v66;
          *(v40 + 8) = v39;
          v41 = v39;
          *(v40 + 16) = 0;
          v42 = v62;
          *(v37 + v36) = v63;
          *(v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8)) = v42;
          memset(v92, 0, 32);
          sub_24E60169C(v92, &v70, &qword_27F2129B0, &unk_24F945320);
          v43 = v61;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
          sub_24F926F28();
          sub_24E601704(v92, &qword_27F2129B0, &unk_24F945320);
          *&v83 = v43;
          *(&v83 + 1) = v41;
          memset(v92, 0, 32);
          sub_24E601704(v84, qword_27F22A238, &qword_24F986DF8);
          sub_24E60169C(v92, &v70, &qword_27F2129B0, &unk_24F945320);
          sub_24F926F28();
          sub_24E601704(v92, &qword_27F2129B0, &unk_24F945320);
          *(&v85 + 1) = sub_24EB90B40;
          *&v86 = v37;
          sub_24F927618();
          sub_24F9242E8();
          sub_24E60169C(&v83, v92, &qword_27F22A0B8, &qword_24F986CA8);
          *&v92[120] = v98;
          *&v92[136] = v99;
          *&v92[152] = v100;
          *&v92[168] = v101;
          *&v92[72] = v95;
          *&v92[88] = v96;
          *&v92[104] = v97;
          sub_24E601704(&v83, &qword_27F22A0B8, &qword_24F986CA8);
          v78 = *&v92[128];
          v79 = *&v92[144];
          v80 = *&v92[160];
          v81 = *&v92[176];
          v74 = *&v92[64];
          v75 = *&v92[80];
          v76 = *&v92[96];
          v77 = *&v92[112];
          v70 = *v92;
          v71 = *&v92[16];
          v72 = *&v92[32];
          v73 = *&v92[48];
          sub_24E60169C(&v70, v92, &qword_27F22A0A8, &qword_24F986CA0);
          v93 = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A088, &qword_24F986C90);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A0A8, &qword_24F986CA0);
          sub_24EB8EFB0(&qword_27F22A080, &qword_27F22A088, &qword_24F986C90, sub_24EB8EB04);
          sub_24EB8EB88();
          sub_24F924E28();
          sub_24E601704(&v70, &qword_27F22A0A8, &qword_24F986CA0);
LABEL_22:
          sub_24E60169C(&v83, v92, &qword_27F22A078, &qword_24F986C88);
          v94 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A078, &qword_24F986C88);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A0C8, &unk_24F986CB0);
          sub_24EB8EA4C();
          sub_24EB8EC40();
          sub_24F924E28();
          sub_24E601704(&v83, &qword_27F22A078, &qword_24F986C88);
          return;
        }

        sub_24E612B0C(v92, v82);
        sub_24E615E00(a7, &v95);
        v25 = *(&v96 + 1);
        v60 = v97;
        v61 = __swift_project_boxed_opaque_existential_1(&v95, *(&v96 + 1));
        v17 = v65;
        v15 = a3;
        v29 = sub_24EB81C5C(v66, a3, 0);
        if (v63 >= 1)
        {
          type metadata accessor for IndexedSectionListView.Indices(0, a11, v64, v28);
          sub_24F92B758();
          v30 = *&v92[8];
          v31 = v92[16];
LABEL_20:
          v48 = sub_24EB82978(v17);
          a5 = sub_24EB8149C(v82, v15, v29, v30, v31, v48, v50, v51, v49 & 1, v25, v60);
          LOBYTE(v15) = v52;

          sub_24F927618();
LABEL_21:
          sub_24F9242E8();
          *&v68[55] = v73;
          *&v68[71] = v74;
          *&v68[87] = v75;
          *&v68[103] = v76;
          *&v68[7] = v70;
          *&v68[23] = v71;
          v69 = v15 & 1;
          *&v68[39] = v72;
          __swift_destroy_boxed_opaque_existential_1(&v95);
          *&v92[73] = *&v68[64];
          *&v92[89] = *&v68[80];
          *&v92[105] = *&v68[96];
          *&v92[9] = *v68;
          *&v92[25] = *&v68[16];
          *&v92[41] = *&v68[32];
          *v92 = a5;
          v92[8] = v69;
          *&v92[120] = *&v68[111];
          *&v92[57] = *&v68[48];
          v93 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A088, &qword_24F986C90);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A0A8, &qword_24F986CA0);
          sub_24EB8EFB0(&qword_27F22A080, &qword_27F22A088, &qword_24F986C90, sub_24EB8EB04);
          sub_24EB8EB88();
          sub_24F924E28();
          __swift_destroy_boxed_opaque_existential_1(v82);
          goto LABEL_22;
        }

LABEL_19:
        v30 = 0;
        v31 = 1;
        goto LABEL_20;
      }

      goto LABEL_28;
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((*(a7 + 72) & 1) == 0)
  {
    v32 = v67;
    *(v67 + 176) = 0;
    *(v32 + 144) = 0u;
    *(v32 + 160) = 0u;
    *(v32 + 112) = 0u;
    *(v32 + 128) = 0u;
    *(v32 + 80) = 0u;
    *(v32 + 96) = 0u;
    *(v32 + 48) = 0u;
    *(v32 + 64) = 0u;
    *(v32 + 16) = 0u;
    *(v32 + 32) = 0u;
    *v32 = 0u;
    *(v32 + 184) = -256;
    return;
  }

  v22 = *(a7 + 232);
  *v92 = *(a7 + 216);
  *&v92[16] = v22;
  v23 = v64;
  type metadata accessor for IndexedSectionListView.PinnedSections(255, a11, v64, v19);
  sub_24F92C4A8();
  sub_24F926F68();
  a5 = v92;
  v24 = sub_24F926F38();
  v25 = v66;
  if (!*(&v83 + 1) || (v17 = a7, *v92 = *(&v83 + 1), MEMORY[0x28223BE20](v24), type metadata accessor for IndexedSectionListView.PinnedSection(255, a11, v23, v26), sub_24F92B6E8(), swift_getWitnessTable(), a5 = sub_24F92B4B8(), , (a5 & 1) == 0))
  {
    v44 = *(a7 + 24);
    v45 = *(a7 + 32);
    v15 = __swift_project_boxed_opaque_existential_1(a7, v44);
    v46 = *(a7 + 96);
    if (*(v46 + 16) <= v25)
    {
      v29 = 0;
LABEL_24:
      v53 = sub_24EB82978(v65);
      v57 = sub_24EB8135C(v25, v25, 0, v29, 0, v53, v55, v56, v54 & 1, v44, v45);

      sub_24F927618();
      sub_24F9242E8();
      *v92 = v57;
      sub_24E6E1384(v92);
      v76 = *&v92[96];
      v77 = *&v92[112];
      LOBYTE(v78) = v92[128];
      v72 = *&v92[32];
      v73 = *&v92[48];
      v74 = *&v92[64];
      v75 = *&v92[80];
      v70 = *v92;
      v71 = *&v92[16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A0D8, &unk_24F9ECF80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A0E8, &qword_24F986CC0);
      sub_24EB8ECCC();
      sub_24EB8ED50();
      sub_24F924E28();
      goto LABEL_25;
    }

    if ((v25 & 0x8000000000000000) == 0)
    {
      v47 = *(v46 + 8 * v25 + 32);
      v29 = v47 - v25;
      if (!__OFSUB__(v47, v25))
      {
        goto LABEL_24;
      }

      __break(1u);
      goto LABEL_19;
    }

LABEL_29:
    __break(1u);
    sub_24F92BDC8();
    v58 = sub_24F9257A8();
    sub_24F921FD8();

    goto LABEL_21;
  }

  sub_24F927618();
  sub_24F9242E8();
  LOBYTE(v82[0]) = 1;
  *(&v91[3] + 7) = v98;
  *(&v91[4] + 7) = v99;
  *(&v91[5] + 7) = v100;
  *(&v91[6] + 7) = v101;
  *(v91 + 7) = v95;
  *(&v91[1] + 7) = v96;
  *(&v91[2] + 7) = v97;
  *v92 = 0;
  v92[8] = 1;
  *&v92[57] = v91[3];
  *&v92[41] = v91[2];
  *&v92[25] = v91[1];
  *&v92[9] = v91[0];
  *&v92[120] = *(&v101 + 1);
  *&v92[105] = v91[6];
  *&v92[89] = v91[5];
  *&v92[73] = v91[4];
  sub_24E6E15DC(v92);
  v76 = *&v92[96];
  v77 = *&v92[112];
  LOBYTE(v78) = v92[128];
  v72 = *&v92[32];
  v73 = *&v92[48];
  v74 = *&v92[64];
  v75 = *&v92[80];
  v70 = *v92;
  v71 = *&v92[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A0D8, &unk_24F9ECF80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A0E8, &qword_24F986CC0);
  sub_24EB8ECCC();
  sub_24EB8ED50();
  sub_24F924E28();
LABEL_25:
  *&v92[96] = v88;
  *&v92[112] = v89;
  v92[128] = v90;
  *&v92[32] = v84[1];
  *&v92[48] = v85;
  *&v92[64] = v86;
  *&v92[80] = v87;
  *v92 = v83;
  *&v92[16] = v84[0];
  v94 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A078, &qword_24F986C88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A0C8, &unk_24F986CB0);
  sub_24EB8EA4C();
  sub_24EB8EC40();
  sub_24F924E28();
}

uint64_t sub_24EB846E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a7@<X8>, uint64_t x4_0@<X4>, char w5_0@<W5>, uint64_t a8, uint64_t a9)
{
  sub_24E615E00(a2, v36);
  v16 = v37;
  v31 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v18 = type metadata accessor for IndexedSectionListView(0, a8, a9, v17);
  v20 = sub_24EB81C5C(a4, x4_0, w5_0 & 1);
  if (a5 < 1)
  {
    v21 = 0;
    v22 = 1;
  }

  else
  {
    type metadata accessor for IndexedSectionListView.Indices(0, a8, a9, v19);
    sub_24F92B758();
    v21 = v34;
    v22 = v35;
  }

  v23 = sub_24EB82978(v18);
  v27 = sub_24EB8149C(a1, a3, v20, v21, v22, v23, v25, v26, v24 & 1, v16, v31);
  v29 = v28;

  result = __swift_destroy_boxed_opaque_existential_1(v36);
  *a7 = v27;
  *(a7 + 8) = v29 & 1;
  return result;
}

double sub_24EB84844(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  v32 = a4;
  v33 = a5;
  v13 = type metadata accessor for IndexedSectionListView(0, a6, a7, a4);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v30 - v19;
  v31 = *a1;
  v30 = *a2;
  v21 = sub_24F92B858();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v14 + 16))(v17, a3, v13);
  sub_24F92B7F8();
  v22 = sub_24F92B7E8();
  v23 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 16) = v22;
  *(v24 + 24) = v25;
  *(v24 + 32) = a6;
  *(v24 + 40) = a7;
  v26 = v30;
  *(v24 + 48) = v31;
  *(v24 + 64) = v26;
  (*(v14 + 32))(v24 + v23, v17, v13);
  v27 = (v24 + ((v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  v28 = v33;
  *v27 = v32;
  v27[1] = v28;
  sub_24EA998B8(0, 0, v20, &unk_24F986DD0, v24);

  return result;
}

uint64_t sub_24EB84A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = v13;
  v8[24] = v14;
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[18] = a4;
  v8[25] = sub_24F92B7F8();
  v8[26] = sub_24F92B7E8();
  v10 = sub_24F92B778();
  v8[27] = v10;
  v8[28] = v9;

  return MEMORY[0x2822009F8](sub_24EB84B4C, v10, v9);
}

uint64_t sub_24EB84B4C(uint64_t a1)
{
  if (v1[18] < v1[20])
  {
    v1[29] = *(v1[22] + 40);
    v1[30] = sub_24F92B7E8();
    v2 = sub_24F92B778();
    v4 = v3;
    v5 = sub_24EB84CC0;
LABEL_5:

    return MEMORY[0x2822009F8](v5, v2, v4);
  }

  if (v1[21] < v1[19])
  {
    v1[31] = *(v1[22] + 40);
    v1[32] = sub_24F92B7E8();
    v2 = sub_24F92B778();
    v4 = v6;
    v5 = sub_24EB84F30;
    goto LABEL_5;
  }

  v7 = swift_task_alloc();
  v1[33] = v7;
  *v7 = v1;
  v7[1] = sub_24EB85120;
  v9 = v1[23];
  v8 = v1[24];

  return sub_24EB7E0D4(v9, v8);
}

uint64_t sub_24EB84CC0()
{
  v1 = *(v0 + 232);

  swift_beginAccess();
  v2 = *(v0 + 144);
  do
  {
    v3 = *(v1 + 152);
    if (*(v3 + 16))
    {
      v4 = sub_24E7728CC(v2);
      if (v5)
      {
        sub_24E8B9530(*(v3 + 56) + 40 * v4, v0 + 56);
        if (*(v0 + 88) == 1)
        {
          sub_24EB8DD8C(v0 + 56);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
          sub_24F92B958();
        }
      }
    }

    ++v2;
  }

  while (v2 != *(v0 + 160));
  v6 = *(v0 + 216);
  v7 = *(v0 + 224);

  return MEMORY[0x2822009F8](sub_24EB84E14, v6, v7);
}

uint64_t sub_24EB84E14(uint64_t a1)
{
  if (v1[21] >= v1[19])
  {
    v4 = swift_task_alloc();
    v1[33] = v4;
    *v4 = v1;
    v4[1] = sub_24EB85120;
    v6 = v1[23];
    v5 = v1[24];

    return sub_24EB7E0D4(v6, v5);
  }

  else
  {
    v1[31] = *(v1[22] + 40);
    v1[32] = sub_24F92B7E8();
    v3 = sub_24F92B778();

    return MEMORY[0x2822009F8](sub_24EB84F30, v3, v2);
  }
}

uint64_t sub_24EB84F30()
{
  v1 = *(v0 + 248);

  swift_beginAccess();
  v2 = *(v0 + 168);
  do
  {
    v3 = *(v1 + 152);
    if (*(v3 + 16))
    {
      v4 = sub_24E7728CC(v2);
      if (v5)
      {
        sub_24E8B9530(*(v3 + 56) + 40 * v4, v0 + 16);
        if (*(v0 + 48) == 1)
        {
          sub_24EB8DD8C(v0 + 16);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
          sub_24F92B958();
        }
      }
    }

    ++v2;
  }

  while (v2 != *(v0 + 152));
  v6 = *(v0 + 216);
  v7 = *(v0 + 224);

  return MEMORY[0x2822009F8](sub_24EB85084, v6, v7);
}

uint64_t sub_24EB85084()
{
  v1 = swift_task_alloc();
  v0[33] = v1;
  *v1 = v0;
  v1[1] = sub_24EB85120;
  v3 = v0[23];
  v2 = v0[24];

  return sub_24EB7E0D4(v3, v2);
}

uint64_t sub_24EB85120()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_24EB85240, v3, v2);
}

uint64_t sub_24EB85240()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EB852A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a1;
  v124 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A1C8, &unk_24F986D48);
  MEMORY[0x28223BE20](v3 - 8);
  v123 = &v88 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228F40, &qword_24F984350);
  MEMORY[0x28223BE20](v5 - 8);
  v122 = &v88 - v6;
  v119 = *(a1 - 8);
  v120 = *(v119 + 64);
  MEMORY[0x28223BE20](v7);
  v118 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A048, &qword_24F986C70);
  sub_24F924038();
  v125 = *(a1 + 24);
  v10 = v9;
  v12 = type metadata accessor for IndexedSectionListView.Indices(255, v9, v125, v11);
  sub_24F92B6E8();
  swift_getWitnessTable();
  v13 = sub_24F92CAF8();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A050, &qword_24F986C78);
  v105 = MEMORY[0x277D83980];
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v140 = v13;
  v141 = v12;
  v142 = v14;
  v143 = v15;
  v144 = v16;
  sub_24F927248();
  v139[20] = sub_24EB8F0C4(&qword_27F22A058, &qword_27F22A050, &qword_24F986C78, sub_24EB8E9C0);
  v104 = MEMORY[0x277CE1290];
  swift_getWitnessTable();
  v17 = sub_24F927108();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2143D0, &unk_24F93CB60);
  v103 = MEMORY[0x277CE1198];
  v19 = swift_getWitnessTable();
  v20 = sub_24E602068(&qword_27F22A0F0, &qword_27F2143D0, &unk_24F93CB60, MEMORY[0x277D83D20]);
  v140 = v17;
  v141 = v18;
  v142 = v19;
  v143 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v140 = v17;
  v141 = v18;
  v142 = v19;
  v143 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v140 = OpaqueTypeMetadata2;
  v141 = MEMORY[0x277D837D0];
  v142 = OpaqueTypeConformance2;
  v143 = MEMORY[0x277D837E0];
  sub_24F927028();
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v113 = sub_24F927108();
  v112 = swift_getWitnessTable();
  v23 = sub_24F923428();
  v116 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v129 = &v88 - v24;
  v25 = v10;
  v106 = v10;
  v26 = v125;
  v28 = type metadata accessor for IndexedSectionListView.VisibleScrollRect(255, v10, v125, v27);
  v29 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v140 = v23;
  v141 = v28;
  v109 = v23;
  v110 = v29;
  v97 = v28;
  v142 = v29;
  v143 = v30;
  v31 = v29;
  v32 = v30;
  v107 = v30;
  v33 = swift_getOpaqueTypeMetadata2();
  v127 = v33;
  v115 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v111 = &v88 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A0F8, &qword_24F986CC8);
  v128 = v35;
  v140 = v23;
  v141 = v28;
  v142 = v31;
  v143 = v32;
  v36 = swift_getOpaqueTypeConformance2();
  v126 = sub_24EB8EDEC();
  v140 = v33;
  v141 = v35;
  v142 = v36;
  v143 = v126;
  v88 = v36;
  v98 = swift_getOpaqueTypeMetadata2();
  v114 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v108 = &v88 - v37;
  type metadata accessor for IndexedSectionListView.PinnedSection(255, v25, v26, v38);
  v39 = sub_24F92B6E8();
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A128, &qword_24F986CE8);
  v41 = swift_getWitnessTable();
  v140 = v39;
  v141 = MEMORY[0x277D83B88];
  v142 = v40;
  v143 = v41;
  v144 = MEMORY[0x277D83B98];
  sub_24F927248();
  v139[19] = sub_24EB8EFB0(&qword_27F22A130, &qword_27F22A128, &qword_24F986CE8, sub_24EB8F034);
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  v42 = sub_24F924038();
  v139[17] = swift_getWitnessTable();
  v139[18] = MEMORY[0x277CDF748];
  v43 = swift_getWitnessTable();
  v44 = MEMORY[0x277CDF918];
  v139[15] = v43;
  v139[16] = MEMORY[0x277CDF918];
  v139[13] = swift_getWitnessTable();
  v139[14] = v44;
  v139[11] = swift_getWitnessTable();
  v139[12] = v44;
  v45 = swift_getWitnessTable();
  v140 = v42;
  v141 = v45;
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  v46 = sub_24F92C4A8();
  v140 = v42;
  v141 = v45;
  v139[9] = swift_getOpaqueTypeConformance2();
  v139[10] = MEMORY[0x277CE0880];
  v139[8] = swift_getWitnessTable();
  v99 = v46;
  v100 = swift_getWitnessTable();
  sub_24F9242F8();
  v47 = sub_24F924038();
  v105 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v94 = &v88 - v48;
  v140 = v127;
  v141 = v128;
  v142 = v36;
  v143 = v126;
  v49 = swift_getOpaqueTypeConformance2();
  v93 = v49;
  v50 = swift_getWitnessTable();
  v139[6] = v49;
  v139[7] = v50;
  v51 = swift_getWitnessTable();
  v140 = v47;
  v141 = v51;
  v52 = v47;
  v91 = v47;
  v92 = v51;
  v53 = v51;
  v54 = swift_getOpaqueTypeMetadata2();
  v95 = v54;
  v102 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v90 = &v88 - v55;
  v140 = v52;
  v141 = v53;
  v96 = swift_getOpaqueTypeConformance2();
  v140 = v54;
  v141 = v96;
  v101 = MEMORY[0x277CDE830];
  v56 = swift_getOpaqueTypeMetadata2();
  v57 = *(v56 - 8);
  v103 = v56;
  v104 = v57;
  MEMORY[0x28223BE20](v56);
  v89 = &v88 - v58;
  v59 = v106;
  v60 = v125;
  v139[2] = v106;
  v139[3] = v125;
  v61 = v121;
  v139[4] = v121;
  v62 = sub_24F9257D8();
  sub_24E8D514C(v62, sub_24EB8F39C, v139, v113, v112);
  v113 = swift_checkMetadataState();
  v63 = swift_allocObject();
  *(v63 + 16) = v59;
  *(v63 + 24) = v60;
  v64 = v118;
  v65 = v119;
  v66 = v117;
  (*(v119 + 16))(v118, v61, v117);
  v67 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = v59;
  *(v68 + 24) = v60;
  (*(v65 + 32))(v68 + v67, v64, v66);
  v69 = v111;
  v70 = v109;
  v71 = v129;
  sub_24F926738();

  (*(v116 + 8))(v71, v70);
  v136 = v59;
  v137 = v60;
  v72 = v61;
  v138 = v61;
  sub_24F924C88();
  v73 = v108;
  v74 = v127;
  sub_24F926218();
  (*(v115 + 8))(v69, v74);
  sub_24F9275F8();
  v133 = v59;
  v134 = v60;
  v135 = v72;
  v75 = v94;
  v76 = v98;
  sub_24F926A08();
  (*(v114 + 8))(v73, v76);
  v77 = v122;
  sub_24F925078();
  v78 = sub_24F925088();
  (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
  v79 = sub_24F925868();
  v81 = v90;
  v80 = v91;
  MEMORY[0x25304C060](v77, v79, v91, v92);
  sub_24E601704(v77, &qword_27F228F40, &qword_24F984350);
  (*(v105 + 8))(v75, v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F229F80, &qword_24F986B88);
  v82 = v123;
  sub_24F926F58();
  v83 = v89;
  v84 = v95;
  v85 = v96;
  sub_24F9263A8();
  sub_24E601704(v82, &qword_27F22A1C8, &unk_24F986D48);
  (*(v102 + 8))(v81, v84);
  v130 = v59;
  v131 = v60;
  v132 = v72;
  sub_24F924C88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A1D0, &qword_24F986D58);
  v140 = v84;
  v141 = v85;
  swift_getOpaqueTypeConformance2();
  sub_24EB8F6B8();
  v86 = v103;
  sub_24F926308();
  return (*(v104 + 8))(v83, v86);
}

uint64_t sub_24EB8622C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[0] = a1;
  v18[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A048, &qword_24F986C70);
  sub_24F924038();
  type metadata accessor for IndexedSectionListView.Indices(255, a2, a3, v6);
  sub_24F92B6E8();
  swift_getWitnessTable();
  sub_24F92CAF8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A050, &qword_24F986C78);
  v18[13] = swift_getWitnessTable();
  swift_getWitnessTable();
  v18[12] = swift_getWitnessTable();
  sub_24F927248();
  v18[7] = sub_24EB8F0C4(&qword_27F22A058, &qword_27F22A050, &qword_24F986C78, sub_24EB8E9C0);
  swift_getWitnessTable();
  sub_24F927108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2143D0, &unk_24F93CB60);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F22A0F0, &qword_27F2143D0, &unk_24F93CB60, MEMORY[0x277D83D20]);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18[8] = OpaqueTypeMetadata2;
  v18[9] = MEMORY[0x277D837D0];
  v18[10] = OpaqueTypeConformance2;
  v18[11] = MEMORY[0x277D837E0];
  sub_24F927028();
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v9 = sub_24F927108();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v18 - v14;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = v18[0];
  sub_24F924C88();
  sub_24F9270F8();
  swift_getWitnessTable();
  sub_24E7896B8();
  v16 = *(v10 + 8);
  v16(v12, v9);
  sub_24E7896B8();
  return (v16)(v15, v9);
}

uint64_t sub_24EB86674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>, uint64_t x3_0@<X3>)
{
  v82 = a4;
  type metadata accessor for IndexedSectionListView.Indices(255, a2, a3, x3_0);
  sub_24F92B6E8();
  swift_getWitnessTable();
  sub_24F92CAF8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A050, &qword_24F986C78);
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v92 = swift_getWitnessTable();
  sub_24F927248();
  v87[6] = sub_24EB8F0C4(&qword_27F22A058, &qword_27F22A050, &qword_24F986C78, sub_24EB8E9C0);
  swift_getWitnessTable();
  v88 = sub_24F927108();
  v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2143D0, &unk_24F93CB60);
  v90 = swift_getWitnessTable();
  v91 = sub_24E602068(&qword_27F22A0F0, &qword_27F2143D0, &unk_24F93CB60, MEMORY[0x277D83D20]);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v73 = OpaqueTypeMetadata2;
  v75 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v71 = &v65 - v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v88 = OpaqueTypeMetadata2;
  v89 = MEMORY[0x277D837D0];
  v90 = OpaqueTypeConformance2;
  v91 = MEMORY[0x277D837E0];
  v11 = sub_24F927028();
  v76 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v68 = &v65 - v12;
  v77 = v13;
  v81 = sub_24F924038();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v74 = &v65 - v16;
  MEMORY[0x28223BE20](v17);
  v78 = &v65 - v18;
  v19 = a3;
  v69 = a3;
  v83 = type metadata accessor for IndexedSectionListView(0, a2, a3, v20);
  v21 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v23 = &v65 - v22;
  v70 = *(a2 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A048, &qword_24F986C70);
  v27 = sub_24F924038();
  v66 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v30);
  v84 = &v65 - v32;
  v33 = *(a1 + 128);
  v65 = a1;
  v33(v31);
  v34 = a1;
  v35 = v83;
  (*(v21 + 16))(v23, v34, v83);
  v36 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = a2;
  *(v37 + 24) = v19;
  (*(v21 + 32))(v37 + v36, v23, v35);
  v88 = sub_24EB8FCBC;
  v89 = v37;
  sub_24F927618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A218, &qword_24F986DC0);
  sub_24E602068(&qword_27F22A220, &qword_27F22A218, &qword_24F986DC0, MEMORY[0x277CDF7D8]);
  v38 = v69;
  sub_24F9260A8();
  v39 = v68;

  (*(v70 + 8))(v26, a2);
  v40 = sub_24E602068(&qword_27F22A228, &qword_27F22A048, &qword_24F986C70, MEMORY[0x277CE0328]);
  v87[4] = v38;
  v87[5] = v40;
  v67 = swift_getWitnessTable();
  sub_24E7896B8();
  v41 = v66;
  v42 = *(v66 + 8);
  v43 = v29;
  v44 = v27;
  v70 = v66 + 8;
  v69 = v42;
  v42(v29, v27);
  v45 = v71;
  v46 = v65;
  sub_24EB829F0(v83, v71);
  v47 = v46[3];
  v48 = v46[4];
  __swift_project_boxed_opaque_existential_1(v46, v47);
  v88 = (*(v48 + 48))(v47, v48);
  v89 = v49;
  MEMORY[0x253050C20](0x73776F722DLL, 0xE500000000000000);
  v50 = v73;
  sub_24F926878();

  (*(v75 + 8))(v45, v50);
  sub_24EB827C0();
  sub_24EB82838();
  v51 = v77;
  v52 = swift_getWitnessTable();
  v53 = v74;
  sub_24F926A38();
  (*(v76 + 8))(v39, v51);
  v87[2] = v52;
  v87[3] = MEMORY[0x277CDF918];
  v54 = v81;
  v55 = swift_getWitnessTable();
  v56 = v78;
  sub_24E7896B8();
  v57 = v79;
  v58 = *(v79 + 8);
  v58(v53, v54);
  v59 = *(v41 + 16);
  v60 = v84;
  v59(v43, v84, v44);
  v88 = v43;
  v61 = v80;
  (*(v57 + 16))(v80, v56, v54);
  v89 = v61;
  v87[0] = v44;
  v87[1] = v54;
  v85 = v67;
  v86 = v55;
  sub_24F57BA64(&v88, 2uLL, v87);
  v58(v56, v54);
  v62 = v60;
  v63 = v69;
  v69(v62, v44);
  v58(v61, v54);
  return v63(v43, v44);
}

double sub_24EB87170@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a3;
  v58 = a4;
  v52 = a2;
  v53 = a5;
  v54 = a1;
  v8 = sub_24F9239C8();
  v43 = v8;
  v9 = *(v8 - 8);
  v55 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IndexedSectionListView(0, a3, a4, v12);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v56 = sub_24F926C98();
  v18 = *(v14 + 16);
  v47 = v14 + 16;
  v51 = v18;
  v19 = v13;
  v18(v17, a2, v13);
  v20 = v9;
  v50 = *(v9 + 16);
  v50(v11, v54, v8);
  v21 = *(v14 + 80);
  v22 = *(v9 + 80);
  v23 = v15 + v22 + ((v21 + 32) & ~v21);
  v24 = (v21 + 32) & ~v21;
  v45 = v24;
  v25 = v23 & ~v22;
  v48 = v21 | v22;
  v26 = swift_allocObject();
  v27 = v58;
  *(v26 + 16) = v57;
  *(v26 + 24) = v27;
  v44 = *(v14 + 32);
  v46 = v14 + 32;
  v28 = v26 + v24;
  v29 = v26;
  v49 = v26;
  v30 = v17;
  v31 = v17;
  v32 = v19;
  v44(v28, v30, v19);
  v33 = *(v20 + 32);
  v34 = v43;
  v33(v29 + v25, v11, v43);
  v61 = v56;
  v62 = sub_24EB92F78;
  v63 = v29;
  v64 = 0;
  v65 = 0;
  v35 = v54;
  sub_24F923998();
  v59 = v36;
  v60 = v37;
  v51(v31, v52, v32);
  v38 = v35;
  v39 = v34;
  v50(v11, v38, v34);
  v40 = swift_allocObject();
  v41 = v58;
  *(v40 + 16) = v57;
  *(v40 + 24) = v41;
  v44(v40 + v45, v31, v32);
  v33(v40 + v25, v11, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B80, &unk_24F973630);
  type metadata accessor for CGSize(0);
  sub_24E9ED7E0();
  sub_24EB92828(&qword_27F224B90, type metadata accessor for CGSize, MEMORY[0x277CBF298]);
  sub_24F926AC8();

  return result;
}

uint64_t sub_24EB8755C(uint64_t a1)
{
  sub_24F923998();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
  return sub_24F926F48();
}

double sub_24EB875C0@<D0>(uint64_t a1@<X8>)
{
  sub_24F923CA8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_24F923CB8();
  v11 = v10;
  sub_24F923C98();
  v13 = v12;
  sub_24F923C88();
  v15 = v14;
  sub_24F923C98();
  v17 = v16;
  sub_24F923C88();
  result = v17 - v18;
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15;
  *(a1 + 56) = result;
  return result;
}

void sub_24EB87650(__n128 a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for IndexedSectionListView(0, a5, a6, a5);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v117 - v15;
  v17 = *a3;
  v18 = a3[2];
  v20 = a3[4];
  v19 = a3[5];
  v21 = a3[7];
  v23 = (a4 + *(v22 + 108));
  v24 = *v23;
  v25 = v23[1];
  v131 = *v23;
  v132 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
  sub_24F926F38();
  if (v21 != v129)
  {
    v131 = v24;
    v132 = v25;
    v129 = v21;
    sub_24F926F48();
  }

  v127 = v16;
  v128 = v13;
  v26 = v17;
  v120 = a5;
  v121 = a6;
  v27 = v10;
  v28 = (a4 + *(v10 + 112));
  v29 = *v28;
  v30 = v28[1];
  v131 = *v28;
  v132 = v30;
  sub_24F926F38();
  if (v19 != v129)
  {
    v131 = v29;
    v132 = v30;
    v129 = v19;
    sub_24F926F48();
  }

  v31 = *(a4 + 152);
  v131 = *(a4 + 144);
  v132 = v31;
  sub_24F926F38();
  v124 = v20;
  v32 = v129;
  v33 = v20 - v129;
  v34 = *(a4 + 168);
  v35 = *(a4 + 176);
  v36 = *(a4 + 184);
  v37 = *(a4 + 192);
  v126 = *(a4 + 160);
  v131 = v126;
  v132 = v34;
  v133 = v35;
  v134 = v36;
  v123 = v37;
  v135 = v37;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A200, &unk_24F986D78);
  sub_24F926F38();
  v38 = sub_24EB81D98(v33 - v129);
  v40 = v39;
  v42 = v41;
  v43 = sub_24EB81D98(v18 + v26 + v19 + v33);
  v45 = v44;
  v47 = v46;
  v48 = sub_24EB81CC8(v38, v40, v42 & 1);
  v49 = *(a4 + 112);
  v50 = v48 - v49;
  if (__OFSUB__(v48, v49))
  {
    __break(1u);
    goto LABEL_56;
  }

  v125 = v11;
  v52 = *(a4 + 80);
  v51 = *(a4 + 88);
  v53 = v52 + v51;
  if (__OFADD__(v52, v51))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v54 = sub_24EB81CC8(v43, v45, v47 & 1);
  v55 = v54 + 1;
  if (__OFADD__(v54, 1))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v56 = __OFADD__(v55, v49);
  v57 = v55 + v49;
  if (v56)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v49 = v50 & ~(v50 >> 63);
  if (v57 < v53)
  {
    v53 = v57;
  }

  v58 = *(a4 + 240);
  v59 = *(a4 + 248);
  v60 = *(a4 + 256);
  v131 = v58;
  v132 = v59;
  v133 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A210, &qword_24F986DB8);
  sub_24F926F38();
  v19 = v32;
  if (v49 < *&v129 || (v131 = v58, v132 = v59, v133 = v60, sub_24F926F38(), v130 < v53))
  {
    if (v53 >= v49)
    {
      v119 = v52;
      v131 = v58;
      v132 = v59;
      v133 = v60;
      v129 = *&v49;
      v130 = v53;
      v118 = v53;
      sub_24F926F48();
      if (qword_27F2113D0 == -1)
      {
LABEL_15:
        v61 = sub_24F9220D8();
        __swift_project_value_buffer(v61, qword_27F39E7C0);
        v62 = v125;
        v63 = *(v125 + 16);
        v64 = v127;
        v65 = v27;
        v63(v127, a4, v27);
        v66 = v128;
        v63(v128, a4, v65);
        v67 = sub_24F9220B8();
        v68 = sub_24F92BDA8();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 134218752;
          *(v69 + 4) = *&v49;
          *(v69 + 12) = 2048;
          *(v69 + 14) = v118;
          *(v69 + 22) = 2048;
          v70 = sub_24EB827C0();
          v71 = *(v62 + 8);
          v71(v64, v65);
          *(v69 + 24) = v70;
          *(v69 + 32) = 2048;
          sub_24EB82838();
          v73 = v72;
          v71(v66, v65);
          *(v69 + 34) = v73;
          _os_log_impl(&dword_24E5DD000, v67, v68, "contentOffset is now %ld, %ld – %f, %f", v69, 0x2Au);
          MEMORY[0x2530542D0](v69, -1, -1);
        }

        else
        {

          v74 = *(v62 + 8);
          v74(v66, v65);
          v74(v64, v65);
        }

        v52 = v119;
        goto LABEL_19;
      }

LABEL_60:
      swift_once();
      goto LABEL_15;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_19:
  v75 = *(a4 + 208);
  LOBYTE(v131) = *(a4 + 200);
  v132 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  if (LOBYTE(v129) != 1)
  {
    return;
  }

  v76 = v126;
  v131 = v126;
  v132 = v34;
  v133 = v35;
  v134 = v36;
  v77 = v123;
  v135 = v123;
  sub_24F926F38();
  v78 = v129 + *(a4 + 56);
  if (v26 > v78)
  {
    v78 = v26;
  }

  v79 = v124 + v78;
  v131 = v76;
  v132 = v34;
  v133 = v35;
  v134 = v36;
  v135 = v77;
  sub_24F926F38();
  v80 = v79 + v129;
  v81 = v79 + v129 - v19;
  v131 = v76;
  v132 = v34;
  v133 = v35;
  v134 = v36;
  v135 = v77;
  sub_24F926F38();
  v82 = sub_24EB81D98(v81 - v129 - *(a4 + 56));
  v131 = v76;
  v132 = v34;
  v133 = v35;
  v134 = v36;
  v135 = v77;
  sub_24F926F38();
  v83 = v129;
  sub_24EB81D14(v82, 0, 1);
  if (__OFSUB__(v52, 1))
  {
    __break(1u);
    goto LABEL_62;
  }

  v86 = v19 + v83 + v85;
  if (v82 >= v52 - 1)
  {
    v90 = *(a4 + 56);
    v92 = v80 - (v86 - v90) - v90;
    if (v92 >= v90)
    {
      v92 = *(a4 + 56);
    }
  }

  else
  {
    v131 = v126;
    v132 = v34;
    v133 = v35;
    v134 = v36;
    v135 = v77;
    sub_24F926F38();
    v87 = v19 + v129;
    sub_24EB81D14(v82 + 1, 0, 1);
    v89 = v87 + v88;
    v90 = *(a4 + 56);
    v91 = v80 - (v86 - v90) - v90;
    if (v91 >= v90)
    {
      v91 = *(a4 + 56);
    }

    v92 = v80 - (v89 - v90);
    if (v91 > v92)
    {
      v92 = v91;
    }
  }

  v93 = v121;
  v94 = v120;
  if (v92 < 0.0)
  {
    v95 = 0.0;
  }

  else
  {
    v95 = v92;
  }

  if (v86 <= v80)
  {
    if (*(a4 + 72) != 1)
    {
      v108 = type metadata accessor for IndexedSectionListView.PinnedSection(255, v120, v121, v84);
      sub_24F92CD98();
      swift_allocObject();
      v109 = sub_24F92B5C8();
      *v110 = v82;
      v110[1] = 0x3FF0000000000000;
      sub_24EEB6DF8(v109, v108);
      v107 = v111;
      v95 = *(a4 + 56);
      goto LABEL_48;
    }

    v99 = type metadata accessor for IndexedSectionListView.PinnedSection(255, v120, v121, v84);
    sub_24F92CD98();
    swift_allocObject();
    v100 = sub_24F92B5C8();
    v102 = (v95 - *(a4 + 56)) / v90;
    if (v102 < 0.0)
    {
      v103 = 0.0;
    }

    else
    {
      v103 = (v95 - *(a4 + 56)) / v90;
    }

    v104 = 1.0 - v103;
    if (v102 >= 1.0)
    {
      v105 = 0.0;
    }

    else
    {
      v105 = v104;
    }

    *v101 = v82;
    *(v101 + 8) = v105;
    sub_24EEB6DF8(v100, v99);
    v107 = *&v106;
    v129 = v106;
    if (*(a4 + 56) >= v95)
    {
      goto LABEL_48;
    }

    if (!__OFADD__(v82, 1))
    {
      v131 = v82 + 1;
      v132 = 0x3FF0000000000000;
      sub_24F92B6E8();
      sub_24F92B658();
      v107 = *&v129;
LABEL_48:

      v112 = *(a4 + 216);
      v113 = *(a4 + 224);
      v114 = *(a4 + 232);
      v131 = v112;
      v132 = v113;
      v133 = v114;
      type metadata accessor for IndexedSectionListView.PinnedSections(255, v94, v93, v115);
      sub_24F92C4A8();
      sub_24F926F68();
      sub_24F926F38();
      if (v130)
      {
        v116 = sub_24EB81828(v130, v107, v94, v93, v129, v95);

        if (v116)
        {

          return;
        }
      }

      else
      {
      }

      v131 = v112;
      v132 = v113;
      v133 = v114;
      v129 = v95;
      v130 = v107;
      goto LABEL_53;
    }

LABEL_62:
    __break(1u);
    return;
  }

  v96 = *(a4 + 216);
  v97 = *(a4 + 224);
  v98 = *(a4 + 232);
  v131 = v96;
  v132 = v97;
  v133 = v98;
  type metadata accessor for IndexedSectionListView.PinnedSections(255, v120, v121, v84);
  sub_24F92C4A8();
  sub_24F926F68();
  sub_24F926F38();
  if (!v130)
  {
    return;
  }

  v131 = v96;
  v132 = v97;
  v133 = v98;
  v129 = 0.0;
  v130 = 0;
LABEL_53:
  sub_24F926F48();
}

uint64_t sub_24EB87FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = sub_24F924C18();
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A208, &qword_24F986DB0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  if (*(a1 + *(type metadata accessor for IndexedSectionListView(0, a2, a3, v14) + 124)) == 1)
  {
    v16 = *(a1 + 232);
    v27 = *(a1 + 216);
    *&v28 = v16;
    type metadata accessor for IndexedSectionListView.PinnedSections(255, a2, a3, v15);
    sub_24F92C4A8();
    sub_24F926F68();
    sub_24F926F38();
    if (!*(&v26[0] + 1))
    {
      return (*(v11 + 56))(v25, 1, 1, v10);
    }

    *&v27 = *(&v26[0] + 1);
    type metadata accessor for IndexedSectionListView.PinnedSection(255, a2, a3, v17);
    sub_24F92B6E8();
    swift_getWitnessTable();
    v18 = sub_24F92BC58();

    if (v18)
    {
      return (*(v11 + 56))(v25, 1, 1, v10);
    }
  }

  sub_24F926C38();
  v20 = sub_24F926D08();

  sub_24F927618();
  sub_24F9242E8();
  *(&v35[12] + 7) = v36;
  *(&v35[10] + 7) = *&v35[25];
  *(&v35[8] + 7) = *&v35[23];
  *(&v35[6] + 7) = *&v35[21];
  *(&v35[4] + 7) = *&v35[19];
  *(&v35[2] + 7) = *&v35[17];
  *(v35 + 7) = *&v35[15];
  *(&v26[4] + 9) = *&v35[8];
  *(&v26[5] + 9) = *&v35[10];
  *(&v26[6] + 9) = *&v35[12];
  *(v26 + 9) = *v35;
  *(&v26[1] + 9) = *&v35[2];
  *(&v26[2] + 9) = *&v35[4];
  *&v26[0] = v20;
  BYTE8(v26[0]) = 0;
  *(&v26[7] + 1) = *(&v36 + 1);
  *(&v26[3] + 9) = *&v35[6];
  sub_24F924BF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A108, &qword_24F986CD0);
  sub_24EB8EFB0(&qword_27F22A110, &qword_27F22A108, &qword_24F986CD0, sub_24EB8EEE0);
  sub_24F9265B8();
  (*(v23 + 8))(v9, v24);
  v31 = v26[4];
  v32 = v26[5];
  v33 = v26[6];
  v34 = v26[7];
  v27 = v26[0];
  v28 = v26[1];
  v29 = v26[2];
  v30 = v26[3];
  sub_24E601704(&v27, &qword_27F22A108, &qword_24F986CD0);
  v21 = v25;
  (*(v11 + 32))(v25, v13, v10);
  return (*(v11 + 56))(v21, 0, 1, v10);
}

uint64_t sub_24EB88404@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v107 = a2;
  v105 = a4;
  v101 = sub_24F924C18();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexedSectionListView.PinnedSection(255, a2, a3, v8);
  v9 = sub_24F92B6E8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A128, &qword_24F986CE8);
  WitnessTable = swift_getWitnessTable();
  *&v126 = v9;
  *(&v126 + 1) = MEMORY[0x277D83B88];
  *&v127 = v10;
  *(&v127 + 1) = WitnessTable;
  v128 = MEMORY[0x277D83B98];
  v12 = sub_24F927248();
  v125 = sub_24EB8EFB0(&qword_27F22A130, &qword_27F22A128, &qword_24F986CE8, sub_24EB8F034);
  v13 = swift_getWitnessTable();
  v92 = v12;
  v84 = v13;
  v14 = sub_24F927108();
  v88 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v83 = &v72 - v15;
  v16 = sub_24F924038();
  v94 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v91 = &v72 - v17;
  v18 = sub_24F924038();
  v93 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v90 = &v72 - v19;
  v20 = sub_24F924038();
  v97 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v86 = &v72 - v21;
  v22 = sub_24F924038();
  v96 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v95 = &v72 - v23;
  v75 = swift_getWitnessTable();
  v123 = v75;
  v124 = MEMORY[0x277CDF748];
  v89 = v16;
  v24 = swift_getWitnessTable();
  v25 = MEMORY[0x277CDF918];
  v76 = v24;
  v121 = v24;
  v122 = MEMORY[0x277CDF918];
  v77 = swift_getWitnessTable();
  v119 = v77;
  v120 = v25;
  v98 = v20;
  v78 = swift_getWitnessTable();
  v117 = v78;
  v118 = v25;
  v26 = swift_getWitnessTable();
  *&v126 = v22;
  *(&v126 + 1) = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v82 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v80 = &v72 - v28;
  v85 = v29;
  v30 = sub_24F924038();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v87 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v79 = &v72 - v34;
  MEMORY[0x28223BE20](v35);
  v81 = &v72 - v36;
  v104 = sub_24F92C4A8();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v38 = &v72 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v102 = &v72 - v40;
  v41 = *(a1 + 232);
  v126 = *(a1 + 216);
  *&v127 = v41;
  v106 = a3;
  type metadata accessor for IndexedSectionListView.PinnedSections(255, v107, a3, v42);
  sub_24F92C4A8();
  sub_24F926F68();
  v43 = sub_24F926F38();
  v44 = v111;
  v45 = MEMORY[0x277CE0880];
  if (v111)
  {
    v72 = v38;
    v73 = v26;
    v74 = v22;
    v46 = v110;
    MEMORY[0x28223BE20](v43);
    v47 = v106;
    *(&v72 - 6) = v107;
    *(&v72 - 5) = v47;
    *(&v72 - 4) = v46;
    *(&v72 - 3) = v44;
    *(&v72 - 2) = a1;
    sub_24F924C88();
    v48 = v83;
    sub_24F9270F8();

    v49 = v91;
    sub_24F926978();
    (*(v88 + 8))(v48, v14);
    sub_24F925818();
    v50 = *(a1 + 192);
    v51 = *(a1 + 176);
    v126 = *(a1 + 160);
    v127 = v51;
    v128 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A200, &unk_24F986D78);
    sub_24F926F38();
    v52 = v90;
    v53 = v89;
    sub_24F926A48();
    (*(v94 + 8))(v49, v53);
    sub_24F925828();
    v54 = v86;
    sub_24F926A48();
    (*(v93 + 8))(v52, v18);
    sub_24F925858();
    if (*(*(a1 + 48) + 16))
    {
      type metadata accessor for IndexedSectionListView(0, v107, v106, v55);
    }

    v26 = v73;
    v45 = MEMORY[0x277CE0880];
    v57 = v95;
    v58 = v98;
    sub_24F926A48();
    (*(v97 + 8))(v54, v58);
    v59 = v99;
    sub_24F924BF8();
    v60 = v80;
    v56 = v74;
    sub_24F9265B8();
    (*(v100 + 8))(v59, v101);
    (*(v96 + 8))(v57, v56);
    sub_24F925818();
    sub_24F924058();
    *&v126 = v56;
    *(&v126 + 1) = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v62 = v79;
    v63 = v85;
    sub_24F926438();
    (*(v82 + 8))(v60, v63);
    v108 = OpaqueTypeConformance2;
    v109 = v45;
    swift_getWitnessTable();
    v64 = v81;
    sub_24E7896B8();
    v65 = *(v31 + 8);
    v65(v62, v30);
    v66 = v87;
    sub_24E7896B8();
    v65(v64, v30);
    v38 = v72;
    (*(v31 + 32))(v72, v66, v30);
    (*(v31 + 56))(v38, 0, 1, v30);
  }

  else
  {
    (*(v31 + 56))(v38, 1, 1, v30);
    *&v126 = v22;
    *(&v126 + 1) = v26;
    v115 = swift_getOpaqueTypeConformance2();
    v116 = v45;
    swift_getWitnessTable();
    v56 = v22;
  }

  v67 = v102;
  sub_24E8D5004(v38, v102);
  v68 = v38;
  v69 = *(v103 + 8);
  v70 = v104;
  v69(v68, v104);
  *&v126 = v56;
  *(&v126 + 1) = v26;
  v113 = swift_getOpaqueTypeConformance2();
  v114 = v45;
  v112 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E7896B8();
  return (v69)(v67, v70);
}

uint64_t sub_24EB891AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a2;
  v29[1] = a1;
  v36 = a5;
  v30 = type metadata accessor for IndexedSectionListView(0, a3, a4, a4);
  v9 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v11 = v29 - v10;
  type metadata accessor for IndexedSectionListView.PinnedSection(255, a3, a4, v12);
  v13 = sub_24F92B6E8();
  v33 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A128, &qword_24F986CE8);
  v32 = v14;
  WitnessTable = swift_getWitnessTable();
  v40 = v13;
  v41 = MEMORY[0x277D83B88];
  v42 = v14;
  v43 = WitnessTable;
  v44 = MEMORY[0x277D83B98];
  v15 = sub_24F927248();
  v35 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v29 - v19;
  v40 = a1;
  v37 = a3;
  v38 = a4;
  v29[2] = swift_getKeyPath();
  v21 = v11;
  v22 = v11;
  v23 = v30;
  (*(v9 + 16))(v22, v34, v30);
  v24 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
  (*(v9 + 32))(v25 + v24, v21, v23);
  v26 = sub_24EB8EFB0(&qword_27F22A130, &qword_27F22A128, &qword_24F986CE8, sub_24EB8F034);

  sub_24F927228();
  v39 = v26;
  swift_getWitnessTable();
  sub_24E7896B8();
  v27 = *(v35 + 8);
  v27(v17, v15);
  sub_24E7896B8();
  return (v27)(v20, v15);
}

__n128 sub_24EB89524@<Q0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  v14 = type metadata accessor for IndexedSectionListView(0, a3, a4, v13);
  v15 = 0;
  v16 = a2[12];
  if (*(v16 + 16) <= v9)
  {
    goto LABEL_4;
  }

  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v17 = *(v16 + 8 * v9 + 32);
  v15 = v17 - v9;
  if (__OFSUB__(v17, v9))
  {
LABEL_7:
    __break(1u);
    sub_24F92BDC8();
    v23 = sub_24F9257A8();
    sub_24F921FD8();

    goto LABEL_5;
  }

LABEL_4:
  v18 = sub_24EB82978(v14);
  a4 = sub_24EB8135C(v9, v9, 1, v15, 0, v18, v20, v21, v19 & 1, v11, v12);

  sub_24F927618();
LABEL_5:
  sub_24F9242E8();
  *a5 = a4;
  *(a5 + 8) = v10;
  *(a5 + 80) = v28;
  *(a5 + 96) = v29;
  *(a5 + 112) = v30;
  *(a5 + 16) = v24;
  *(a5 + 32) = v25;
  result = v27;
  *(a5 + 48) = v26;
  *(a5 + 64) = v27;
  return result;
}

uint64_t sub_24EB89708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t x3_0@<X3>)
{
  v28 = a3;
  v9 = type metadata accessor for IndexedSectionListView(0, a2, a3, x3_0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v27 = sub_24F926CF8();
  sub_24F927618();
  sub_24F9238C8();
  v13 = v30;
  v25 = v31;
  v26 = v29;
  v14 = v32;
  v23 = v34;
  v24 = v33;
  (*(v10 + 16))(v12, a1, v9);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  v17 = v28;
  *(v16 + 16) = a2;
  *(v16 + 24) = v17;
  (*(v10 + 32))(v16 + v15, v12, v9);
  result = sub_24F927618();
  v19 = v26;
  *a4 = v27;
  *(a4 + 8) = v19;
  *(a4 + 16) = v13;
  v20 = v24;
  *(a4 + 24) = v25;
  *(a4 + 32) = v14;
  v21 = v23;
  *(a4 + 40) = v20;
  *(a4 + 48) = v21;
  *(a4 + 56) = sub_24EB8F7F4;
  *(a4 + 64) = v16;
  *(a4 + 72) = result;
  *(a4 + 80) = v22;
  return result;
}

double sub_24EB898C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a3;
  v50 = a4;
  v46 = a2;
  v47 = a5;
  v48 = a1;
  v8 = sub_24F9239C8();
  v9 = *(v8 - 8);
  v51 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v11;
  v13 = type metadata accessor for IndexedSectionListView(0, a3, a4, v12);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  v52 = sub_24F926C38();
  v45 = *(v14 + 16);
  v45(v17, a2, v13);
  v44 = *(v9 + 16);
  v18 = v8;
  v38 = v8;
  v44(v11, v48, v8);
  v19 = *(v14 + 80);
  v20 = *(v9 + 80);
  v21 = v9;
  v22 = (v19 + 32) & ~v19;
  v23 = (v15 + v20 + v22) & ~v20;
  v42 = v22;
  v43 = v19 | v20;
  v24 = swift_allocObject();
  v25 = v50;
  *(v24 + 16) = v49;
  *(v24 + 24) = v25;
  v41 = *(v14 + 32);
  v41(v24 + v22, v17, v13);
  v40 = *(v21 + 32);
  v26 = v39;
  v40(v24 + v23, v39, v18);
  v57 = v52;
  v58 = sub_24EB8F80C;
  v59 = v24;
  v60 = 0;
  v61 = 0;
  v27 = v48;
  sub_24F923988();
  v53 = v28;
  v54 = v29;
  v55 = v30;
  v56 = v31;
  v45(v17, v46, v13);
  v32 = v27;
  v33 = v38;
  v44(v26, v32, v38);
  v34 = swift_allocObject();
  v35 = v50;
  *(v34 + 16) = v49;
  *(v34 + 24) = v35;
  v41(v34 + v42, v17, v13);
  v40(v34 + v23, v26, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B80, &unk_24F973630);
  sub_24E9ED7E0();
  sub_24E7CC120();
  sub_24F926AC8();

  return result;
}

uint64_t sub_24EB89C6C(uint64_t a1)
{
  sub_24F923988();
  sub_24F923998();
  sub_24F923988();
  sub_24F923988();
  sub_24F923988();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A200, &unk_24F986D78);
  sub_24F926F48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  return sub_24F926F48();
}

uint64_t sub_24EB89D44(uint64_t a1)
{
  sub_24F923988();
  sub_24F923998();
  sub_24F923988();
  sub_24F923988();
  sub_24F923988();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A200, &unk_24F986D78);
  return sub_24F926F48();
}

uint64_t sub_24EB89DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v2 = *(a1 + 16);
  v39 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A048, &qword_24F986C70);
  sub_24F924038();
  v42 = *(a1 + 24);
  type metadata accessor for IndexedSectionListView.Indices(255, v2, v42, v4);
  sub_24F92B6E8();
  swift_getWitnessTable();
  sub_24F92CAF8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A050, &qword_24F986C78);
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F927248();
  v64 = sub_24EB8F0C4(&qword_27F22A058, &qword_27F22A050, &qword_24F986C78, sub_24EB8E9C0);
  swift_getWitnessTable();
  sub_24F927108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2143D0, &unk_24F93CB60);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F22A0F0, &qword_27F2143D0, &unk_24F93CB60, MEMORY[0x277D83D20]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24F927028();
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  swift_getWitnessTable();
  sub_24F923428();
  v38 = v2;
  type metadata accessor for IndexedSectionListView.VisibleScrollRect(255, v2, v42, v5);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A0F8, &qword_24F986CC8);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v7 = sub_24EB8EDEC();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for IndexedSectionListView.PinnedSection(255, v2, v42, v8);
  sub_24F92B6E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A128, &qword_24F986CE8);
  swift_getWitnessTable();
  v69 = MEMORY[0x277D83B98];
  sub_24F927248();
  v63 = sub_24EB8EFB0(&qword_27F22A130, &qword_27F22A128, &qword_24F986CE8, sub_24EB8F034);
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  v61 = swift_getWitnessTable();
  v62 = MEMORY[0x277CDF748];
  v9 = MEMORY[0x277CDFAD8];
  v10 = swift_getWitnessTable();
  v11 = MEMORY[0x277CDF918];
  v59 = v10;
  v60 = MEMORY[0x277CDF918];
  v57 = swift_getWitnessTable();
  v58 = v11;
  v55 = swift_getWitnessTable();
  v56 = v11;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F92C4A8();
  v53 = swift_getOpaqueTypeConformance2();
  v54 = MEMORY[0x277CE0880];
  v36 = v9;
  v52 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F9242F8();
  sub_24F924038();
  v67 = OpaqueTypeConformance2;
  v68 = v7;
  v12 = swift_getOpaqueTypeConformance2();
  v37 = MEMORY[0x277CDFC88];
  v50 = v12;
  v51 = swift_getWitnessTable();
  swift_getWitnessTable();
  v35 = swift_getOpaqueTypeMetadata2();
  v13 = swift_getOpaqueTypeConformance2();
  v65 = v35;
  v66 = v13;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A148, &qword_24F986CF8);
  v14 = sub_24F924038();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A150, &qword_24F986D00);
  v18 = sub_24F924038();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v33 - v23;
  v25 = v40;
  sub_24EB852A0(v39, v17);
  v39 = sub_24F927638();
  OpaqueTypeMetadata2 = v26;
  v43 = v38;
  v44 = v42;
  v45 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A158, &qword_24F986D08);
  v65 = v35;
  v66 = v13;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = sub_24E602068(&qword_27F22A160, &qword_27F22A148, &qword_24F986CF8, MEMORY[0x277CE01C8]);
  v48 = v27;
  v49 = v28;
  v29 = swift_getWitnessTable();
  sub_24EB8F0C4(&qword_27F22A168, &qword_27F22A158, &qword_24F986D08, sub_24EB8F140);
  sub_24F926A08();
  (*(v15 + 8))(v17, v14);
  v30 = sub_24E602068(&qword_27F22A1A0, &qword_27F22A150, &qword_24F986D00, v37);
  v46 = v29;
  v47 = v30;
  swift_getWitnessTable();
  sub_24E7896B8();
  v31 = *(v19 + 8);
  v31(v21, v18);
  sub_24E7896B8();
  return (v31)(v24, v18);
}

void *sub_24EB8A924@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t x3_0@<X3>)
{
  v10 = type metadata accessor for IndexedSectionListView(0, a2, a3, x3_0);
  v11 = *(v10 - 1);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = a1[6];
  if (*(*&v15 + 16))
  {
    v52 = a1[12];
    (*(v11 + 16))(v14, a1, v10, v12);
    v16 = *(v11 + 80);
    v56 = a4;
    v17 = (v16 + 32) & ~v16;
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    (*(v11 + 32))(v18 + v17, v14, v10);
    v19 = (a1 + v10[28]);
    v20 = *v19;
    v21 = v19[1];
    v63[0] = v20;
    v63[1] = v21;
    v22 = v52;

    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
    sub_24F926F58();
    v54 = *&v64[1];
    v55 = *v64;
    v23 = *&v64[2];
    v63[0] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A1A8, &qword_24F986D30);
    sub_24F926F28();
    v51 = *&v64[1];
    v52 = *v64;
    v63[0] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A1B0, &qword_24F986D38);
    sub_24F926F28();
    v44 = *&v64[1];
    v45 = *v64;
    *&v63[0] = MEMORY[0x277D84F90];
    sub_24F926F28();
    v39 = *&v64[1];
    v40 = *v64;
    sub_24EB8F314();
    sub_24F9233A8();
    v49 = *&v64[1];
    v50 = *v64;
    v24 = v64[2];
    v47 = *&v64[4];
    v48 = *&v64[3];
    v46 = *&v64[5];
    LOBYTE(v22) = v64[6];
    v63[0] = 0.0;
    v63[1] = 0.0;
    LOBYTE(v63[2]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A1C0, &qword_24F986D40);
    sub_24F926F28();
    v42 = *&v64[1];
    v43 = *v64;
    v41 = *&v64[3];
    v59 = v24;
    v58 = LOBYTE(v22);
    v57 = v64[2];
    v25 = *(a1 + 3);
    v26 = *(a1 + 4);
    __swift_project_boxed_opaque_existential_1(a1, v25);
    v64[0] = (*(v26 + 48))(v25, v26);
    v64[1] = v27;
    MEMORY[0x253050C20](0x7865646E692DLL, 0xE600000000000000);
    v28 = *v64;
    v29 = *&v64[1];
    v30 = v59;
    v31 = v58;
    LOBYTE(v22) = v57;
    sub_24F927618();
    sub_24F9238C8();
    v32 = *(a1 + v10[30]);
    v33 = (a1 + v10[27]);
    v34 = *v33;
    v35 = v33[1];
    v64[0] = v34;
    v64[1] = v35;
    sub_24F926F38();
    v36 = v32 + v63[0];
    v37 = sub_24F925808();
    LOBYTE(v64[0]) = 0;
    v63[0] = v52;
    v63[1] = v51;
    v63[2] = v45;
    v63[3] = v44;
    v63[4] = v40;
    v63[5] = v39;
    v63[22] = v23;
    *&v63[27] = v60;
    *&v63[6] = sub_24EB8F288;
    *&v63[7] = v18;
    v63[8] = 18.0;
    v63[9] = v50;
    v63[10] = v49;
    LOBYTE(v63[11]) = v30;
    v63[12] = v48;
    v63[13] = v47;
    v63[14] = v46;
    LOBYTE(v63[15]) = v31;
    v63[16] = v43;
    v63[17] = v42;
    LOBYTE(v63[18]) = LOBYTE(v22);
    v63[19] = v41;
    v63[20] = v55;
    v63[21] = v54;
    *&v63[23] = 10649826;
    v63[24] = -4.19867257e-140;
    v63[25] = v28;
    v63[26] = v29;
    a4 = v56;
    *&v63[29] = v61;
    *&v63[31] = v62;
    LOBYTE(v63[33]) = v37;
    v63[34] = v32;
    v63[35] = v32;
    v63[36] = v32;
    v63[37] = v36;
    LOBYTE(v63[38]) = 0;
    CGSizeMake();
    memcpy(v64, v63, 0x131uLL);
  }

  else
  {
    sub_24EB8F368(v64);
  }

  return memcpy(a4, v64, 0x131uLL);
}

uint64_t sub_24EB8ADC8(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F923CE8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v18 - v13;
  type metadata accessor for IndexedSectionListView(0, a3, a4, v15);
  sub_24EB81D14(a1, 0, 1);
  v16 = *(a2 + 19);
  *&v18[2] = a2[18];
  v18[3] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
  sub_24F926F38();
  sub_24F923CC8();
  (*(v9 + 16))(v11, v14, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F229F80, &qword_24F986B88);
  sub_24F926F48();
  (*(v9 + 8))(v14, v8);
  return 0;
}

uint64_t sub_24EB8AFA4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  MEMORY[0x253052A00](v2);
  return sub_24F92D0B8();
}

uint64_t sub_24EB8B000()
{
  v1 = v0[1];
  MEMORY[0x253052A00](*v0);
  return MEMORY[0x253052A00](v1);
}

uint64_t sub_24EB8B03C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  MEMORY[0x253052A00](v2);
  return sub_24F92D0B8();
}

uint64_t sub_24EB8B094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A5C8, &qword_24F9874B8);
  MEMORY[0x28223BE20](v40);
  v7 = v35 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A5D0, &qword_24F9874C0);
  MEMORY[0x28223BE20](v36);
  v39 = v35 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A5D8, &qword_24F9874C8);
  v9 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v11 = v35 - v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A5E0, &qword_24F9874D0);
  MEMORY[0x28223BE20](v38);
  v14 = v35 - v13;
  v15 = *(v3 + 16);
  if (*(v15 + 16))
  {
    v35[0] = v12;
    v35[1] = a2;
    v16 = *(v15 + 32);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A5E8, &qword_24F9874D8);
    v18 = sub_24E602068(&qword_27F22A5F0, &qword_27F22A5E8, &qword_24F9874D8, MEMORY[0x277CE04B0]);
    sub_24F926B78();
    v19 = *(v3 + 48);
    v46 = *(v3 + 32);
    v47 = v19;
    v48 = *(v3 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A5F8, &unk_24F9874E0);
    sub_24F923378();
    v46 = v43;
    v47 = v44;
    v48 = v45;
    *&v43 = *(v3 + 24);
    *(&v43 + 1) = v16;
    LOBYTE(v44) = 0;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A1C0, &qword_24F986D40);
    v41 = v17;
    v42 = v18;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v22 = sub_24EB91D20(&qword_27F22A5B8, sub_24EB8F314, MEMORY[0x277D84F48]);
    v23 = v37;
    sub_24F9269B8();

    (*(v9 + 8))(v11, v23);
    v24 = v35[0];
    v25 = v38;
    (*(v35[0] + 16))(v39, v14, v38);
    swift_storeEnumTagMultiPayload();
    *&v46 = v23;
    *(&v46 + 1) = v20;
    *&v47 = OpaqueTypeConformance2;
    *(&v47 + 1) = v22;
    swift_getOpaqueTypeConformance2();
    sub_24EB92CC4();
    sub_24F924E28();
    return (*(v24 + 8))(v14, v25);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v28 = swift_allocObject();
    *(v28 + 16) = 1;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A5E8, &qword_24F9874D8);
    (*(*(v29 - 8) + 16))(v7, a1, v29);
    v30 = &v7[*(v40 + 36)];
    *v30 = KeyPath;
    v30[1] = sub_24E600A48;
    v30[2] = v28;
    sub_24E60169C(v7, v39, &qword_27F22A5C8, &qword_24F9874B8);
    swift_storeEnumTagMultiPayload();
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A1C0, &qword_24F986D40);
    v32 = sub_24E602068(&qword_27F22A5F0, &qword_27F22A5E8, &qword_24F9874D8, MEMORY[0x277CE04B0]);
    *&v46 = v29;
    *(&v46 + 1) = v32;
    v33 = swift_getOpaqueTypeConformance2();
    v34 = sub_24EB91D20(&qword_27F22A5B8, sub_24EB8F314, MEMORY[0x277D84F48]);
    *&v46 = v37;
    *(&v46 + 1) = v31;
    *&v47 = v33;
    *(&v47 + 1) = v34;
    swift_getOpaqueTypeConformance2();
    sub_24EB92CC4();
    sub_24F924E28();
    return sub_24E601704(v7, &qword_27F22A5C8, &qword_24F9874B8);
  }
}

void *sub_24EB8B6A8(uint64_t a1, double a2)
{
  sub_24F923998();
  v4 = a2 / v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A490, &qword_24F9872B0);
  sub_24F926F38();
  v5 = *(v16 + 16);

  v7 = v4 * v5;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_24F926F38();
  v8 = *(v16 + 16);

  if (v8 - 1 >= (v7 & ~(v7 >> 63)))
  {
    v9 = v7 & ~(v7 >> 63);
  }

  else
  {
    v9 = v8 - 1;
  }

  sub_24F923998();
  v11 = v10;
  sub_24F926F38();
  v12 = *(v16 + 16);

  result = sub_24F926F38();
  if (!v8)
  {
    goto LABEL_18;
  }

  if (v9 >= *(v16 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = *(v16 + 24 * v9 + 48);

  v14 = *(v13 + 16);
  v15 = (a2 / v11 * v12 - v9) * v14;
  if (COERCE__INT64(fabs(v15)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  if (v14)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A4C0, &qword_24F9872E8);
    return sub_24F926F48();
  }

  else
  {
  }
}

uint64_t sub_24EB8B924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = sub_24F924C88();
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A538, &qword_24F987360);
  return sub_24EB8B9A8(a2, a3, a4, a5, a1, a6 + *(v12 + 44));
}

uint64_t sub_24EB8B9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v126 = a5;
  v127 = a4;
  v128 = a3;
  v7 = a1;
  v109 = a1;
  v125 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A540, &qword_24F987368);
  v121 = *(v8 - 8);
  v122 = v8;
  MEMORY[0x28223BE20](v8);
  v106 = &v105 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A548, &unk_24F987370);
  MEMORY[0x28223BE20](v10 - 8);
  v124 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v123 = &v105 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DC0, &unk_24F9E9B60);
  MEMORY[0x28223BE20](v114);
  v116 = (&v105 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A550, &unk_24F987380);
  MEMORY[0x28223BE20](v15 - 8);
  v117 = &v105 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v105 - v18;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A558, &qword_24F987390);
  MEMORY[0x28223BE20](v115);
  v120 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v118 = &v105 - v22;
  MEMORY[0x28223BE20](v23);
  v119 = &v105 - v24;
  *&v129 = v7;
  *(&v129 + 1) = a2;
  v108 = a2;
  sub_24E600AEC();

  v25 = sub_24F925E18();
  v27 = v26;
  LOBYTE(v7) = v28;
  sub_24F925948();
  v29 = sub_24F925908();
  (*(*(v29 - 8) + 56))(v19, 1, 1, v29);
  sub_24F925968();
  sub_24E601704(v19, &qword_27F214698, &unk_24F95F810);
  v30 = sub_24F925C98();
  v32 = v31;
  v34 = v33;

  sub_24E600B40(v25, v27, v7 & 1);
  v35 = v126;

  LODWORD(v129) = sub_24F9251C8();
  v36 = sub_24F925C58();
  v112 = v37;
  v113 = v36;
  LOBYTE(v27) = v38;
  v111 = v39;
  sub_24E600B40(v30, v32, v34 & 1);

  v40 = v127;
  sub_24F927618();
  sub_24F9238C8();
  v110 = v27 & 1;
  v41 = *(v40 + 88);
  v143 = *(v40 + 72);
  v144 = v41;
  v145 = *(v40 + 104);
  v146 = *(v40 + 120);
  v42 = *(v40 + 88);
  v129 = *(v40 + 72);
  v130 = v42;
  v131 = *(v40 + 104);
  v132 = *(v40 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A4F8, &unk_24F987300);
  sub_24F923348();
  v43 = v147;
  v44 = v149;
  v45 = v148;
  *&v147 = v109;
  *(&v147 + 1) = v108;
  *&v148 = v128;
  *(&v148 + 1) = v35;
  v149 = v43;
  v150 = v45;
  v151 = v44;
  *&v137[7] = v147;
  v137[71] = v44;
  *&v137[55] = v45;
  *&v137[39] = v43;
  *&v137[23] = v148;
  sub_24EB92870(&v147, &v129);

  v129 = v143;
  v130 = v144;
  v131 = v145;
  v132 = v146;
  sub_24F923328();
  if ((v140 & 1) != 0 || v138 != v35)
  {
    v46 = sub_24F926C98();
  }

  else
  {
    v46 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  v109 = v46;
  sub_24F923658();
  v47 = v138;
  v48 = v139;
  v49 = v140;
  v108 = v141;
  v50 = v142;
  v51 = sub_24F927618();
  v107 = v52;
  v129 = v143;
  v130 = v144;
  v131 = v145;
  v132 = v146;
  sub_24F923328();
  if ((v135 & 1) != 0 || v133 != v35)
  {
    sub_24F926C98();
  }

  else
  {
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  v53 = sub_24F926D08();

  v54 = *(v114 + 36);
  v55 = *MEMORY[0x277CE13B8];
  v56 = sub_24F927748();
  v57 = v116;
  (*(*(v56 - 8) + 104))(v116 + v54, v55, v56);
  *v57 = v53;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A560, &qword_24F987398);
  v59 = v117;
  sub_24E60169C(v57, &v117[*(v58 + 52)], &qword_27F217DC0, &unk_24F9E9B60);
  *v59 = 0xBFF0000000000000;
  *(v59 + *(v58 + 56)) = 256;
  v60 = sub_24F927618();
  v62 = v61;
  sub_24E601704(v57, &qword_27F217DC0, &unk_24F9E9B60);
  v63 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A568, &qword_24F9873A0) + 36);
  *v63 = 0xBFF0000000000000;
  *(v63 + 1) = v47;
  *(v63 + 2) = v48;
  *(v63 + 3) = v49;
  v64 = v109;
  *(v63 + 4) = v108;
  *(v63 + 5) = v50;
  *(v63 + 6) = v64;
  *(v63 + 28) = 256;
  v65 = v107;
  *(v63 + 8) = v51;
  *(v63 + 9) = v65;
  *(v63 + 10) = v60;
  *(v63 + 11) = v62;
  v66 = sub_24F927618();
  v68 = v67;
  v69 = v118;
  v70 = &v118[*(v115 + 36)];
  sub_24E6009C8(v59, v70, &qword_27F22A550, &unk_24F987380);
  v71 = (v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A570, &qword_24F9873A8) + 36));
  *v71 = v66;
  v71[1] = v68;
  v72 = v154;
  *(v69 + 48) = v153;
  *(v69 + 64) = v72;
  *(v69 + 32) = v152;
  v73 = *&v137[16];
  *(v69 + 81) = *v137;
  v74 = *&v137[32];
  *(v69 + 129) = *&v137[48];
  *(v69 + 113) = v74;
  v75 = v112;
  *v69 = v113;
  *(v69 + 8) = v75;
  *(v69 + 16) = v110;
  *(v69 + 24) = v111;
  *(v69 + 80) = 0;
  *(v69 + 145) = *&v137[64];
  *(v69 + 97) = v73;
  v76 = v119;
  sub_24E6009C8(v69, v119, &qword_27F22A558, &qword_24F987390);
  v77 = *(v128 + 16);
  if (v77)
  {
    v133 = v128;
    v134 = v128 + 32;
    v135 = 1;
    v136 = (2 * v77) | 1;
    swift_getKeyPath();
    v78 = swift_allocObject();
    v79 = v127;
    v80 = *(v127 + 176);
    *(v78 + 176) = *(v127 + 160);
    *(v78 + 192) = v80;
    v81 = *(v79 + 192);
    v82 = *(v79 + 112);
    *(v78 + 112) = *(v79 + 96);
    *(v78 + 128) = v82;
    v83 = *(v79 + 144);
    *(v78 + 144) = *(v79 + 128);
    *(v78 + 160) = v83;
    v84 = *(v79 + 48);
    *(v78 + 48) = *(v79 + 32);
    *(v78 + 64) = v84;
    v85 = *(v79 + 80);
    *(v78 + 80) = *(v79 + 64);
    *(v78 + 96) = v85;
    v86 = *(v79 + 16);
    *(v78 + 16) = *v79;
    *(v78 + 32) = v86;
    v87 = v126;
    *(v78 + 208) = v81;
    *(v78 + 216) = v87;
    v88 = swift_allocObject();
    *(v88 + 16) = sub_24EB9294C;
    *(v88 + 24) = v78;

    sub_24EB91B44(v79, &v129);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A578, &qword_24F9873D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A580, &qword_24F9873D8);
    sub_24EB92988();
    v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A5A0, &qword_24F9873E8);
    v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A1C0, &qword_24F986D40);
    v91 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A5A8, &qword_24F9873F0);
    v92 = sub_24EB92A38();
    *&v129 = v91;
    *(&v129 + 1) = v92;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v94 = sub_24EB91D20(&qword_27F22A5B8, sub_24EB8F314, MEMORY[0x277D84F48]);
    *&v129 = v89;
    *(&v129 + 1) = v90;
    *&v130 = OpaqueTypeConformance2;
    *(&v130 + 1) = v94;
    swift_getOpaqueTypeConformance2();
    v95 = v106;
    sub_24F927228();
    v97 = v121;
    v96 = v122;
    v98 = v123;
    (*(v121 + 32))(v123, v95, v122);
    v99 = 0;
  }

  else
  {
    v99 = 1;
    v96 = v122;
    v98 = v123;
    v97 = v121;
  }

  (*(v97 + 56))(v98, v99, 1, v96);
  v100 = v120;
  sub_24E60169C(v76, v120, &qword_27F22A558, &qword_24F987390);
  v101 = v124;
  sub_24E60169C(v98, v124, &qword_27F22A548, &unk_24F987370);
  v102 = v125;
  sub_24E60169C(v100, v125, &qword_27F22A558, &qword_24F987390);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A5C0, &qword_24F9873F8);
  sub_24E60169C(v101, v102 + *(v103 + 48), &qword_27F22A548, &unk_24F987370);
  sub_24E601704(v98, &qword_27F22A548, &unk_24F987370);
  sub_24E601704(v76, &qword_27F22A558, &qword_24F987390);
  sub_24E601704(v101, &qword_27F22A548, &unk_24F987370);
  return sub_24E601704(v100, &qword_27F22A558, &qword_24F987390);
}

uint64_t sub_24EB8C510@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v15 = a1;
  v16 = a3;
  v18 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A5A0, &qword_24F9873E8);
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v7 = &v14 - v6;
  v8 = sub_24F926C98();
  sub_24F927618();
  sub_24F9238C8();
  *(&v25[4] + 7) = v26;
  *(&v25[2] + 7) = *&v25[9];
  *(v25 + 7) = *&v25[7];
  *(v24 + 9) = *v25;
  *&v24[0] = v8;
  BYTE8(v24[0]) = 0;
  *(&v24[1] + 9) = *&v25[2];
  *(&v24[2] + 9) = *&v25[4];
  *(&v24[3] + 1) = *(&v26 + 1);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A5A8, &qword_24F9873F0);
  v10 = sub_24EB92A38();
  sub_24F926B78();
  v27[0] = v24[0];
  v27[1] = v24[1];
  v27[2] = v24[2];
  v27[3] = v24[3];
  sub_24E601704(v27, &qword_27F22A5A8, &qword_24F9873F0);
  v11 = *(a2 + 88);
  v24[0] = *(a2 + 72);
  v24[1] = v11;
  v24[2] = *(a2 + 104);
  LOBYTE(v24[3]) = *(a2 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A4F8, &unk_24F987300);
  sub_24F923348();
  v24[0] = v21;
  v24[1] = v22;
  LOBYTE(v24[2]) = v23;
  *&v21 = v16;
  *(&v21 + 1) = v15;
  LOBYTE(v22) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A1C0, &qword_24F986D40);
  v19 = v9;
  v20 = v10;
  swift_getOpaqueTypeConformance2();
  sub_24EB91D20(&qword_27F22A5B8, sub_24EB8F314, MEMORY[0x277D84F48]);
  v12 = v17;
  sub_24F9269B8();

  return (*(v5 + 8))(v7, v12);
}

uint64_t sub_24EB8C7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a1;
  v61 = a3;
  v57 = sub_24F923568();
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v53 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B50, &qword_24F95ACA0);
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v55 = &v42 - v6;
  v62 = sub_24F924E98();
  v52 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9239C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v47 = v11;
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A530, &qword_24F987358);
  v56 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v63 = &v42 - v13;
  v46 = sub_24F926C98();
  v64[25] = v46;
  v65 = 0;
  v48 = *(v10 + 16);
  v43 = v12;
  v44 = v9;
  v48(v12, a1, v9);
  v14 = *(v10 + 80);
  v45 = (v14 + 216) & ~v14;
  v15 = swift_allocObject();
  v16 = *(a2 + 176);
  *(v15 + 176) = *(a2 + 160);
  *(v15 + 192) = v16;
  *(v15 + 208) = *(a2 + 192);
  v17 = *(a2 + 112);
  *(v15 + 112) = *(a2 + 96);
  *(v15 + 128) = v17;
  v18 = *(a2 + 144);
  *(v15 + 144) = *(a2 + 128);
  *(v15 + 160) = v18;
  v19 = *(a2 + 48);
  *(v15 + 48) = *(a2 + 32);
  *(v15 + 64) = v19;
  v20 = *(a2 + 80);
  *(v15 + 80) = *(a2 + 64);
  *(v15 + 96) = v20;
  v21 = *(a2 + 16);
  *(v15 + 16) = *a2;
  *(v15 + 32) = v21;
  v22 = *(v10 + 32);
  v22(v15 + ((v14 + 216) & ~v14), v12, v9);
  sub_24EB91B44(a2, v64);
  sub_24F925228();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A120, &unk_24F986CD8);
  v50 = sub_24EB8EEE0();
  v23 = MEMORY[0x277CE0380];
  v24 = v62;
  sub_24F9262A8();

  (*(v52 + 8))(v8, v24);

  sub_24F925228();
  v25 = v53;
  sub_24F923518();
  v26 = v43;
  v27 = v44;
  v48(v43, v49, v44);
  v28 = v45;
  v29 = swift_allocObject();
  v30 = *(a2 + 176);
  *(v29 + 176) = *(a2 + 160);
  *(v29 + 192) = v30;
  *(v29 + 208) = *(a2 + 192);
  v31 = *(a2 + 112);
  *(v29 + 112) = *(a2 + 96);
  *(v29 + 128) = v31;
  v32 = *(a2 + 144);
  *(v29 + 144) = *(a2 + 128);
  *(v29 + 160) = v32;
  v33 = *(a2 + 48);
  *(v29 + 48) = *(a2 + 32);
  *(v29 + 64) = v33;
  v34 = *(a2 + 80);
  *(v29 + 80) = *(a2 + 64);
  *(v29 + 96) = v34;
  v35 = *(a2 + 16);
  *(v29 + 16) = *a2;
  *(v29 + 32) = v35;
  v22(v29 + v28, v26, v27);
  sub_24EB91B44(a2, v64);
  sub_24EB92828(&unk_27F236560, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
  sub_24EB92828(&qword_27F2180A0, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
  v36 = v55;
  v37 = v57;
  sub_24F927278();

  (*(v58 + 8))(v25, v37);
  sub_24F9235A8();
  v64[0] = v51;
  v64[1] = v62;
  v64[2] = v50;
  v64[3] = v23;
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F218C18, &qword_27F218B50, &qword_24F95ACA0, MEMORY[0x277CDFB18]);
  v38 = v54;
  v39 = v59;
  v40 = v63;
  sub_24F9269D8();
  (*(v60 + 8))(v36, v39);
  return (*(v56 + 8))(v40, v38);
}

uint64_t sub_24EB8CF44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v112 = a1;
  v3 = sub_24F9240B8();
  v113 = *(v3 - 8);
  v114 = v3;
  MEMORY[0x28223BE20](v3);
  v111 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A458, &qword_24F987278) - 8;
  MEMORY[0x28223BE20](v109);
  v98 = &v96 - v5;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A460, &qword_24F987280);
  MEMORY[0x28223BE20](v97);
  v7 = &v96 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A468, &qword_24F987288);
  v9 = *(v8 - 8);
  v102 = v8;
  v103 = v9;
  MEMORY[0x28223BE20](v8);
  v115 = &v96 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A470, &qword_24F987290);
  v12 = *(v11 - 8);
  v106 = v11;
  v107 = v12;
  MEMORY[0x28223BE20](v11);
  v100 = &v96 - v13;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A478, &qword_24F987298);
  v108 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v105 = &v96 - v14;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A480, &qword_24F9872A0);
  MEMORY[0x28223BE20](v110);
  v104 = &v96 - v15;
  *v7 = sub_24F924C88();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A488, &qword_24F9872A8) + 44);
  v118 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A490, &qword_24F9872B0);
  sub_24F926F38();
  swift_getKeyPath();
  v16 = swift_allocObject();
  v17 = *(v1 + 176);
  *(v16 + 176) = *(v1 + 160);
  *(v16 + 192) = v17;
  *(v16 + 208) = *(v1 + 192);
  v18 = *(v1 + 112);
  *(v16 + 112) = *(v1 + 96);
  *(v16 + 128) = v18;
  v19 = *(v1 + 144);
  *(v16 + 144) = *(v1 + 128);
  *(v16 + 160) = v19;
  v20 = *(v1 + 48);
  *(v16 + 48) = *(v1 + 32);
  *(v16 + 64) = v20;
  v21 = *(v1 + 80);
  *(v16 + 80) = *(v1 + 64);
  *(v16 + 96) = v21;
  v22 = *(v1 + 16);
  *(v16 + 16) = *v1;
  *(v16 + 32) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_24EB91AD0;
  *(v23 + 24) = v16;
  sub_24EB91B44(v1, &v118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A498, &qword_24F9872D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A4A0, &qword_24F9872E0);
  sub_24EB91B7C();
  sub_24E602068(&qword_27F22A4B8, &qword_27F22A4A0, &qword_24F9872E0, MEMORY[0x277CE1198]);
  sub_24F927228();
  v24 = sub_24F927618();
  v26 = v25;
  v27 = swift_allocObject();
  v28 = *(v2 + 48);
  *(v27 + 48) = *(v2 + 32);
  *(v27 + 64) = v28;
  v29 = *(v2 + 112);
  *(v27 + 112) = *(v2 + 96);
  *(v27 + 128) = v29;
  v30 = *(v2 + 80);
  *(v27 + 80) = *(v2 + 64);
  *(v27 + 96) = v30;
  *(v27 + 208) = *(v2 + 192);
  v31 = *(v2 + 176);
  *(v27 + 176) = *(v2 + 160);
  *(v27 + 192) = v31;
  v32 = *(v2 + 144);
  *(v27 + 144) = *(v2 + 128);
  *(v27 + 160) = v32;
  v33 = *(v2 + 16);
  *(v27 + 16) = *v2;
  *(v27 + 32) = v33;
  v34 = v97;
  v35 = &v7[*(v97 + 36)];
  *v35 = sub_24EB91C2C;
  v35[1] = v27;
  v35[2] = v24;
  v35[3] = v26;
  v36 = *(v2 + 144);
  v122 = *(v2 + 128);
  v123 = v36;
  v37 = *(v2 + 144);
  v116 = *(v2 + 128);
  v117 = v37;
  sub_24EB91B44(v2, &v118);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A4C0, &qword_24F9872E8);
  sub_24F926F38();
  v116 = v118;
  LOBYTE(v117) = v119;
  v38 = swift_allocObject();
  v39 = *(v2 + 176);
  *(v38 + 176) = *(v2 + 160);
  *(v38 + 192) = v39;
  *(v38 + 208) = *(v2 + 192);
  v40 = *(v2 + 112);
  *(v38 + 112) = *(v2 + 96);
  *(v38 + 128) = v40;
  v41 = *(v2 + 144);
  *(v38 + 144) = *(v2 + 128);
  *(v38 + 160) = v41;
  v42 = *(v2 + 48);
  *(v38 + 48) = *(v2 + 32);
  *(v38 + 64) = v42;
  v43 = *(v2 + 80);
  *(v38 + 80) = *(v2 + 64);
  *(v38 + 96) = v43;
  v44 = *(v2 + 16);
  *(v38 + 16) = *v2;
  *(v38 + 32) = v44;
  sub_24EB91B44(v2, &v118);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A1C0, &qword_24F986D40);
  v46 = sub_24EB91C3C();
  v47 = sub_24EB91D20(&qword_27F22A4F0, sub_24EB91858, MEMORY[0x277D84F50]);
  sub_24F926AB8();

  sub_24E601704(v7, &qword_27F22A460, &qword_24F987280);
  v48 = *(v2 + 88);
  v118 = *(v2 + 72);
  v119 = v48;
  v120 = *(v2 + 104);
  v121 = *(v2 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A4F8, &unk_24F987300);
  sub_24F923328();
  v49 = swift_allocObject();
  v50 = *(v2 + 176);
  *(v49 + 176) = *(v2 + 160);
  *(v49 + 192) = v50;
  *(v49 + 208) = *(v2 + 192);
  v51 = *(v2 + 112);
  *(v49 + 112) = *(v2 + 96);
  *(v49 + 128) = v51;
  v52 = *(v2 + 144);
  *(v49 + 144) = *(v2 + 128);
  *(v49 + 160) = v52;
  v53 = *(v2 + 48);
  *(v49 + 48) = *(v2 + 32);
  *(v49 + 64) = v53;
  v54 = *(v2 + 80);
  *(v49 + 80) = *(v2 + 64);
  *(v49 + 96) = v54;
  v55 = *(v2 + 16);
  *(v49 + 16) = *v2;
  *(v49 + 32) = v55;
  sub_24EB91B44(v2, &v118);
  *&v118 = v34;
  *(&v118 + 1) = v45;
  *&v119 = v46;
  *(&v119 + 1) = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = v100;
  v58 = v102;
  v59 = v115;
  sub_24F926AB8();

  (*(v103 + 8))(v59, v58);
  v118 = *(v2 + 160);
  *&v119 = *(v2 + 176);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0, &qword_24F9BA090);
  MEMORY[0x25304CAF0](&v116, v60);
  v61 = swift_allocObject();
  v62 = *(v2 + 176);
  *(v61 + 176) = *(v2 + 160);
  *(v61 + 192) = v62;
  *(v61 + 208) = *(v2 + 192);
  v63 = *(v2 + 112);
  *(v61 + 112) = *(v2 + 96);
  *(v61 + 128) = v63;
  v64 = *(v2 + 144);
  *(v61 + 144) = *(v2 + 128);
  *(v61 + 160) = v64;
  v65 = *(v2 + 48);
  *(v61 + 48) = *(v2 + 32);
  *(v61 + 64) = v65;
  v66 = *(v2 + 80);
  *(v61 + 80) = *(v2 + 64);
  *(v61 + 96) = v66;
  v67 = *(v2 + 16);
  *(v61 + 16) = *v2;
  *(v61 + 32) = v67;
  sub_24EB91B44(v2, &v118);
  *&v118 = v58;
  *(&v118 + 1) = v45;
  v115 = v45;
  *&v119 = OpaqueTypeConformance2;
  *(&v119 + 1) = v47;
  v103 = v47;
  swift_getOpaqueTypeConformance2();
  v69 = v105;
  v68 = v106;
  sub_24F926AB8();
  v70 = v104;

  (*(v107 + 8))(v57, v68);
  v71 = *MEMORY[0x277CE0118];
  v72 = sub_24F924B38();
  v73 = v98;
  (*(*(v72 - 8) + 104))(v98, v71, v72);
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v74 = sub_24F926D08();

  *(v73 + *(v109 + 60)) = v74;
  sub_24E60169C(v73, v70, &qword_27F22A458, &qword_24F987278);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A500, &qword_24F987310);
  v76 = v108;
  v77 = v69;
  v78 = v99;
  (*(v108 + 16))(v70 + v75[9], v69);
  v79 = v70 + v75[10];
  *v79 = sub_24F923398() & 1;
  *(v79 + 8) = v80;
  *(v79 + 16) = v81 & 1;
  v82 = v70 + v75[11];
  *v82 = swift_getKeyPath();
  *(v82 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v83 = qword_27F24E488;
  v84 = sub_24F923398();
  v86 = v85;
  v88 = v87;
  v89 = v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A508, &qword_24F987340) + 36);
  *v89 = v83;
  *(v89 + 8) = v84 & 1;
  *(v89 + 16) = v86;
  *(v89 + 24) = v88 & 1;
  LOBYTE(v83) = sub_24F923398();
  v91 = v90;
  LOBYTE(v86) = v92;
  sub_24E601704(v73, &qword_27F22A458, &qword_24F987278);
  (*(v76 + 8))(v77, v78);
  v93 = v70 + *(v110 + 36);
  *v93 = v83 & 1;
  *(v93 + 8) = v91;
  *(v93 + 16) = v86 & 1;
  v94 = v111;
  sub_24F9240A8();
  v118 = v122;
  v119 = v123;
  sub_24F926F38();
  v118 = v116;
  LOBYTE(v119) = v117;
  sub_24EB91DCC();
  sub_24F926468();
  (*(v113 + 8))(v94, v114);
  return sub_24E601704(v70, &qword_27F22A480, &qword_24F9872A0);
}

void *sub_24EB8DAEC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if ((a2[2] & 1) == 0)
  {
    v5 = *a2;
    v4 = a2[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A490, &qword_24F9872B0);
    result = sub_24F926F38();
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v5 < *(v9 + 16))
    {
      v7 = *(v9 + 24 * v5 + 48);

      v8 = *(v7 + 16);

      if (v8)
      {
        return (*(a3 + 48))(v4);
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24EB8DBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A4F8, &unk_24F987300);
  sub_24F923328();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A4C0, &qword_24F9872E8);
  return sub_24F926F48();
}

uint64_t sub_24EB8DCCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24EB803F8(a1, v4, v5, v7, v6);
}

uint64_t sub_24EB8DDC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E6541E4;

  return sub_24EB7EDAC(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm_27(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EB8DEE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E6541E4;

  return sub_24EB7F0C8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24EB8DFB4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EB8DFFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E6541E4;

  return sub_24EB7F444(a1, v4, v5, v6, v7, v8);
}

uint64_t getEnumTagSinglePayload for ChallengesSlashHeaderView.Style(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EB8E0E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_24EB8E164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_24EB8E1A8(uint64_t a1)
{
  sub_24EB8E758();
  if (v2 <= 0x3F)
  {
    type metadata accessor for IndexedSectionListItemCache();
    sub_24EB8E7BC(319, &qword_27F22A010, &type metadata for LabeledSectionIndex, MEMORY[0x277D83940]);
    if (v3 <= 0x3F)
    {
      sub_24EB8E7BC(319, &qword_27F22A018, MEMORY[0x277D83B88], MEMORY[0x277D84248]);
      if (v4 <= 0x3F)
      {
        sub_24EB8E7BC(319, &qword_27F22A020, MEMORY[0x277D839F8], MEMORY[0x277D84248]);
        if (v5 <= 0x3F)
        {
          sub_24E6C5550();
          if (v6 <= 0x3F)
          {
            sub_24EB8E7BC(319, &qword_27F236310, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
            if (v7 <= 0x3F)
            {
              sub_24EB8E7BC(319, &qword_27F22A028, MEMORY[0x277CDF310], MEMORY[0x277CE10B8]);
              if (v8 <= 0x3F)
              {
                sub_24EB8E7BC(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                if (v10 <= 0x3F)
                {
                  type metadata accessor for IndexedSectionListView.PinnedSections(255, *(a1 + 16), *(a1 + 24), v9);
                  sub_24F92C4A8();
                  sub_24F926F68();
                  if (v11 <= 0x3F)
                  {
                    sub_24EB8E864(319, &qword_27F22A030, &qword_27F2143D0, &unk_24F93CB60);
                    if (v12 <= 0x3F)
                    {
                      sub_24EB8E80C(319);
                      if (v13 <= 0x3F)
                      {
                        sub_24E6C5648(319);
                        if (v14 <= 0x3F)
                        {
                          sub_24EB8E864(319, &qword_27F22A040, &unk_27F22EC30, &qword_24F939880);
                          if (v15 <= 0x3F)
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

uint64_t sub_24EB8E4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F229F80, &qword_24F986B88);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 104);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 132);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EB8E61C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F229F80, &qword_24F986B88);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 104);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 132);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

unint64_t sub_24EB8E758()
{
  result = qword_27F22A008;
  if (!qword_27F22A008)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F22A008);
  }

  return result;
}

void sub_24EB8E7BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24EB8E80C(uint64_t a1)
{
  if (!qword_27F22A038)
  {
    sub_24F923CE8();
    v1 = sub_24F926F68();
    if (!v2)
    {
      atomic_store(v1, &qword_27F22A038);
    }
  }
}

void sub_24EB8E864(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_24F926F68();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_24EB8E8B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24EB8E90C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24EB8E9C0()
{
  result = qword_27F22A060;
  if (!qword_27F22A060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A068, &qword_24F986C80);
    sub_24EB8EA4C();
    sub_24EB8EC40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A060);
  }

  return result;
}

unint64_t sub_24EB8EA4C()
{
  result = qword_27F22A070;
  if (!qword_27F22A070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A078, &qword_24F986C88);
    sub_24EB8EFB0(&qword_27F22A080, &qword_27F22A088, &qword_24F986C90, sub_24EB8EB04);
    sub_24EB8EB88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A070);
  }

  return result;
}

unint64_t sub_24EB8EB04()
{
  result = qword_27F22A090;
  if (!qword_27F22A090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A098, &qword_24F986C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A090);
  }

  return result;
}

unint64_t sub_24EB8EB88()
{
  result = qword_27F22A0A0;
  if (!qword_27F22A0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A0A8, &qword_24F986CA0);
    sub_24E602068(&qword_27F22A0B0, &qword_27F22A0B8, &qword_24F986CA8, &unk_24F9871C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A0A0);
  }

  return result;
}

unint64_t sub_24EB8EC40()
{
  result = qword_27F22A0C0;
  if (!qword_27F22A0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A0C8, &unk_24F986CB0);
    sub_24EB8ECCC();
    sub_24EB8ED50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A0C0);
  }

  return result;
}

unint64_t sub_24EB8ECCC()
{
  result = qword_27F22A0D0;
  if (!qword_27F22A0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A0D8, &unk_24F9ECF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A0D0);
  }

  return result;
}

unint64_t sub_24EB8ED50()
{
  result = qword_27F22A0E0;
  if (!qword_27F22A0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A0E8, &qword_24F986CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A0E0);
  }

  return result;
}

unint64_t sub_24EB8EDEC()
{
  result = qword_27F22A100;
  if (!qword_27F22A100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A0F8, &qword_24F986CC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A108, &qword_24F986CD0);
    sub_24EB8EFB0(&qword_27F22A110, &qword_27F22A108, &qword_24F986CD0, sub_24EB8EEE0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A100);
  }

  return result;
}

unint64_t sub_24EB8EEE0()
{
  result = qword_27F22A118;
  if (!qword_27F22A118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A120, &unk_24F986CD8);
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A118);
  }

  return result;
}

uint64_t sub_24EB8EFB0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EB8F034()
{
  result = qword_27F22A138;
  if (!qword_27F22A138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A140, &qword_24F986CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A138);
  }

  return result;
}

uint64_t sub_24EB8F0C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EB8F140()
{
  result = qword_27F22A170;
  if (!qword_27F22A170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A178, &qword_24F986D10);
    sub_24EB8F1CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A170);
  }

  return result;
}

unint64_t sub_24EB8F1CC()
{
  result = qword_27F22A180;
  if (!qword_27F22A180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A188, &qword_24F986D18);
    sub_24E602068(&qword_27F22A190, &qword_27F22A198, &unk_24F986D20, MEMORY[0x277CE1148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A180);
  }

  return result;
}

uint64_t sub_24EB8F288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for IndexedSectionListView(0, v6, v7, a4) - 8);
  v9 = (v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));

  return sub_24EB8ADC8(a1, v9, v6, v7);
}

unint64_t sub_24EB8F314()
{
  result = qword_27F22A1B8;
  if (!qword_27F22A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A1B8);
  }

  return result;
}

double sub_24EB8F368(uint64_t a1)
{
  *(a1 + 304) = 0;
  result = 0.0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t objectdestroy_64Tm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for IndexedSectionListView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (v4 + ((*(*v5 + 80) + 32) & ~*(*v5 + 80)));
  __swift_destroy_boxed_opaque_existential_1(v6);

  v7 = v6 + v5[28];
  v8 = sub_24F923CE8();
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F229F80, &qword_24F986B88);

  v9 = v6 + v5[35];
  v10 = sub_24F91F648();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);

  return swift_deallocObject();
}

void sub_24EB8F5F8(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for IndexedSectionListView(0, v7, v8, a4) - 8);
  v11 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  sub_24EB87650(v10, a1, a2, v11, v7, v8);
}

unint64_t sub_24EB8F6B8()
{
  result = qword_27F22A1D8;
  if (!qword_27F22A1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A1D0, &qword_24F986D58);
    sub_24EB8F770();
    sub_24E602068(&qword_27F22A1F0, &qword_27F22A1F8, &unk_24F986D68, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A1D8);
  }

  return result;
}

unint64_t sub_24EB8F770()
{
  result = qword_27F22A1E0;
  if (!qword_27F22A1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A1E8, &qword_24F986D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A1E0);
  }

  return result;
}

uint64_t objectdestroy_76Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for IndexedSectionListView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  v8 = sub_24F9239C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  __swift_destroy_boxed_opaque_existential_1((v4 + v6));

  v11 = v4 + v6 + v5[28];
  v12 = sub_24F923CE8();
  (*(*(v12 - 8) + 8))(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F229F80, &qword_24F986B88);

  v13 = v4 + v6 + v5[35];
  v14 = sub_24F91F648();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v13, 1, v14))
  {
    (*(v15 + 8))(v13, v14);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);

  (*(v9 + 8))(v4 + ((v6 + v7 + v10) & ~v10), v8);

  return swift_deallocObject();
}

uint64_t sub_24EB8FB08(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for IndexedSectionListView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_24F9239C8() - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return a1(v4 + v8, v11, v5, v6);
}

double sub_24EB8FC14@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for IndexedSectionListView(0, v6, v7, a2) - 8);
  v9 = (v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));

  *&result = sub_24EB89524(a1, v9, v6, v7, a3).n128_u64[0];
  return result;
}

uint64_t sub_24EB8FCD4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for IndexedSectionListView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a2(a1, v9, v6, v7);
}

uint64_t sub_24EB8FD84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24EB81F2C(*a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

unint64_t sub_24EB8FDCC()
{
  result = qword_27F22A230;
  if (!qword_27F22A230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2143D0, &unk_24F93CB60);
    sub_24E62A758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A230);
  }

  return result;
}

uint64_t sub_24EB8FE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for IndexedSectionListView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  __swift_destroy_boxed_opaque_existential_1((v4 + v6));

  v7 = v4 + v6 + v5[28];
  v8 = sub_24F923CE8();
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F229F80, &qword_24F986B88);

  v9 = v4 + v6 + v5[35];
  v10 = sub_24F91F648();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);

  return swift_deallocObject();
}

double sub_24EB900AC(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for IndexedSectionListView(0, v7, v8, a4) - 8);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = (v4 + ((*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  return sub_24EB84844(a1, a2, v4 + v11, v13, v14, v7, v8, v10);
}

uint64_t sub_24EB90178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for IndexedSectionListView(0, *(v4 + 32), *(v4 + 40), a4) - 8);
  v6 = (*(*v5 + 80) + 80) & ~*(*v5 + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v4 + v6));

  v7 = v4 + v6 + v5[28];
  v8 = sub_24F923CE8();
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F229F80, &qword_24F986B88);

  v9 = v4 + v6 + v5[35];
  v10 = sub_24F91F648();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);

  return swift_deallocObject();
}

uint64_t sub_24EB903C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = *(type metadata accessor for IndexedSectionListView(0, v4[4], v4[5], a4) - 8);
  v8 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v15 = v4[3];
  v16 = v4[2];
  v9 = v4[6];
  v10 = v4[7];
  v11 = v4[8];
  v14 = v4[9];
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_24E614970;

  return sub_24EB84A9C(a1, v16, v15, v9, v10, v11, v14, v4 + v8);
}

uint64_t sub_24EB90528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for IndexedSectionListView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(*v5 + 80) + 48) & ~*(*v5 + 80);

  __swift_destroy_boxed_opaque_existential_1((v4 + v6));

  v7 = v4 + v6 + v5[28];
  v8 = sub_24F923CE8();
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F229F80, &qword_24F986B88);

  v9 = v4 + v6 + v5[35];
  v10 = sub_24F91F648();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);

  return swift_deallocObject();
}

void sub_24EB9077C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a4;
  v11 = v5[2];
  v12 = v5[3];
  v13 = *(type metadata accessor for IndexedSectionListView(0, v11, v12, a4) - 8);
  v14 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  sub_24EB8391C(a1, a2, a3, v6 & 1, v5[4], v5[5], v5 + v14, *(v5 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8)), a5, v11, v12);
}

uint64_t sub_24EB90860()
{

  return swift_deallocObject();
}

uint64_t sub_24EB908E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for IndexedSectionListView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  __swift_destroy_boxed_opaque_existential_1((v4 + v6));

  v7 = v4 + v6 + v5[28];
  v8 = sub_24F923CE8();
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F229F80, &qword_24F986B88);

  v9 = v4 + v6 + v5[35];
  v10 = sub_24F91F648();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);

  return swift_deallocObject();
}

uint64_t sub_24EB90B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for IndexedSectionListView(0, v6, v7, a2) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_24EB846E0(a1, v3 + v9, *(v3 + v10), *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v10 + 39) & 0xFFFFFFFFFFFFFFF8)), a3, *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), v6, v7);
}

uint64_t sub_24EB90C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for IndexedSectionListView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  sub_24F9239C8();
  return sub_24EB8755C(v4 + v6);
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_24EB90D64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EB90DAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EB90E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24EB90E68(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EB90E88(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_24EB90EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24EB90F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for TimingCurve(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ClippedSizeViewModifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_24EB90FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24EB90FDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A048, &qword_24F986C70);
  sub_24F924038();
  type metadata accessor for IndexedSectionListView.Indices(255, v1, v2, v3);
  sub_24F92B6E8();
  swift_getWitnessTable();
  sub_24F92CAF8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A050, &qword_24F986C78);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F927248();
  sub_24EB8F0C4(&qword_27F22A058, &qword_27F22A050, &qword_24F986C78, sub_24EB8E9C0);
  swift_getWitnessTable();
  sub_24F927108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2143D0, &unk_24F93CB60);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F22A0F0, &qword_27F2143D0, &unk_24F93CB60, MEMORY[0x277D83D20]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24F927028();
  sub_24F924038();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  swift_getWitnessTable();
  sub_24F923428();
  type metadata accessor for IndexedSectionListView.VisibleScrollRect(255, v1, v2, v4);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A0F8, &qword_24F986CC8);
  swift_getOpaqueTypeConformance2();
  sub_24EB8EDEC();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for IndexedSectionListView.PinnedSection(255, v1, v2, v5);
  sub_24F92B6E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A128, &qword_24F986CE8);
  swift_getWitnessTable();
  sub_24F927248();
  sub_24EB8EFB0(&qword_27F22A130, &qword_27F22A128, &qword_24F986CE8, sub_24EB8F034);
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F92C4A8();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F9242F8();
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  v7 = MEMORY[0x277CDFC88];
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A148, &qword_24F986CF8);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A150, &qword_24F986D00);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F22A160, &qword_27F22A148, &qword_24F986CF8, MEMORY[0x277CE01C8]);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F22A1A0, &qword_27F22A150, &qword_24F986D00, v7);
  return swift_getWitnessTable();
}

unint64_t sub_24EB91858()
{
  result = qword_27F22A440;
  if (!qword_27F22A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A440);
  }

  return result;
}

uint64_t sub_24EB9190C()
{

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  }

  return swift_deallocObject();
}

uint64_t sub_24EB91964()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24E6541E4;

  return sub_24EB81288(v0 + 32, v2, v3);
}

unint64_t sub_24EB91A0C()
{
  result = qword_27F22A450;
  if (!qword_27F22A450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A448, &qword_24F987258);
    sub_24EB92828(&qword_27F211A48, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A450);
  }

  return result;
}

uint64_t sub_24EB91AD8()
{

  return swift_deallocObject();
}

unint64_t sub_24EB91B7C()
{
  result = qword_27F22A4A8;
  if (!qword_27F22A4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A498, &qword_24F9872D8);
    sub_24E602068(&qword_27F22A4B0, &qword_27F22A1B0, &qword_24F986D38, MEMORY[0x277D83980]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A4A8);
  }

  return result;
}

unint64_t sub_24EB91C3C()
{
  result = qword_27F22A4C8;
  if (!qword_27F22A4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A460, &qword_24F987280);
    sub_24E602068(&qword_27F22A4D0, &qword_27F22A4D8, &qword_24F9872F0, MEMORY[0x277CE1198]);
    sub_24E602068(&qword_27F22A4E0, &qword_27F22A4E8, &qword_24F9872F8, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A4C8);
  }

  return result;
}

uint64_t sub_24EB91D20(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A1C0, &qword_24F986D40);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EB91DCC()
{
  result = qword_27F22A510;
  if (!qword_27F22A510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A480, &qword_24F9872A0);
    sub_24EB91E58();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A510);
  }

  return result;
}

unint64_t sub_24EB91E58()
{
  result = qword_27F22A518;
  if (!qword_27F22A518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A508, &qword_24F987340);
    sub_24E602068(&qword_27F22A520, &qword_27F22A500, &qword_24F987310, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A518);
  }

  return result;
}

double sub_24EB91F10()
{
  v3 = v0;
  v56 = *(v0 + 16);
  v54 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A490, &qword_24F9872B0);
  sub_24F926F38();
  v5 = *(v53 + 16);

  if (!v5)
  {
    return result;
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 176);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0, &qword_24F9BA090);
  v8 = &v54;
  MEMORY[0x25304CAF0](&v53, v7);
  v9 = *&v53 / v3[8];
  v10 = fabs(v9);
  if (v10 > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_69;
  }

  v10 = 0xC3E0000000000001;
  if (v9 <= -9.22337204e18)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v10 = 0x43E0000000000000;
  if (v9 >= 9.22337204e18)
  {
    goto LABEL_71;
  }

  v11 = v9;
  v54 = *(v3 + 1);
  sub_24F926F38();
  v12 = *(v53 + 16);

  if (v12 <= v11)
  {
    v54 = *(v3 + 1);
    sub_24F926F38();
    v54 = *(v3 + 2);
LABEL_16:
    sub_24F926F48();
    return result;
  }

  v53 = *v3;
  v54 = v53;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A528, &qword_24F987348);
  sub_24F926F38();
  if (!v52[2] || (v5 = v52[4], , v53 = *v3, sub_24F926F38(), (v13 = v52[2]) == 0))
  {

    return result;
  }

  v8 = v52[v13 + 3];

  v2 = v8 - v5;
  if (__OFSUB__(v8, v5))
  {
    goto LABEL_75;
  }

  v14 = __OFSUB__(v11, 2);
  v15 = v11 - 2;
  if (v14)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v15 >= 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CA0, &qword_24F987350);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_24F93DE60;
    v48 = v3;
    v53 = *(v3 + 1);
    sub_24F926F38();
    v8 = v52;
    v10 = v52[2];
    if (v10)
    {
      v16 = v15 >> 1;
      v17 = v52[4];
      v4 = v52[5];
      v3 = v52[6];
      v2 /= v16;

      *(v1 + 32) = v17;
      *(v1 + 40) = v4;
      *(v1 + 48) = v3;
      v51 = v2;
      v18 = v5 + v2;
      if (!__OFADD__(v5, v2))
      {
        v53 = *(v48 + 1);
        sub_24F926F38();
        v2 = v52[2];
        if (v2)
        {
          v3 = (v52 + 6);
          v8 = v1;
          while (1)
          {
            v4 = *(v3 - 2);
            v19 = *(v3 - 1);
            v20 = *v3;
            v10 = *(*v3 + 16);
            v1 = v8;
            if (v10)
            {
              v5 = *(*&v20 + 32);
              v53 = v54;

              v8 = &v53;
              sub_24F926F38();
              if ((v5 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
                goto LABEL_70;
              }

              v10 = v52[2];
              if (v5 >= v10)
              {
                goto LABEL_68;
              }

              v5 = v52[v5 + 4];

              v8 = v1;
            }

            else
            {
              v14 = __OFADD__(v5++, 1);
              if (v14)
              {
                goto LABEL_73;
              }
            }

            v21 = *(v8 + 2);
            if (v5 >= v18)
            {
              v30 = *(v8 + 3);
              v8 = (v21 + 1);
              if (v21 >= v30 >> 1)
              {
                v1 = sub_24E61728C((v30 > 1), v21 + 1, 1, v1);
              }

              *(v1 + 16) = v8;
              v31 = (v1 + 24 * v21);
              *(v31 + 4) = v4;
              *(v31 + 5) = v19;
              v31[6] = v20;
              v10 = v51;
              v14 = __OFADD__(v18, v51);
              v18 += v51;
              if (v14)
              {
                goto LABEL_72;
              }

              v8 = v1;
            }

            else
            {
              if (v21)
              {
                v22 = v8 + 2;
                v23 = v8 + 24 * v21 + 32;
                v24 = *(v23 - 8);
                v25 = *(v48 + 23);
                v26 = *(v48 + 24);
                v27 = *(v23 - 24) == v25 && *(v23 - 16) == v26;
                v46 = v22;
                v47 = *(v23 - 24);
                v49 = *(v23 - 16);
                if (v27)
                {
                  if (!*(*&v20 + 16))
                  {
                    goto LABEL_34;
                  }
                }

                else
                {
                  v28 = sub_24F92CE08();
                  v29 = *(*&v20 + 16);
                  if ((v28 & 1) == 0)
                  {
                    if (v29)
                    {
                      v50 = *(*&v20 + 32);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020, &qword_24F93B450);
                      v35 = swift_allocObject();
                      *(v35 + 16) = xmmword_24F93DE60;
                      *(v35 + 32) = v50;
                    }

                    else
                    {
                      v35 = MEMORY[0x277D84F90];
                    }

                    v37 = *(v1 + 16);
                    v36 = *(v1 + 24);
                    if (v37 >= v36 >> 1)
                    {
                      v1 = sub_24E61728C((v36 > 1), v37 + 1, 1, v1);
                    }

                    *(v1 + 16) = v37 + 1;
                    v38 = (v1 + 24 * v37);
                    v38[4] = v25;
                    v38[5] = v26;
                    v8 = v1;
                    v38[6] = v35;
                    goto LABEL_19;
                  }

                  if (!v29)
                  {
LABEL_34:

                    v8 = v1;
                    goto LABEL_19;
                  }
                }

                v8 = *(*&v20 + 32);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v24 = sub_24E615EC4(0, *(v24 + 2) + 1, 1, v24);
                }

                v33 = *(v24 + 2);
                v32 = *(v24 + 3);
                v4 = v33 + 1;
                if (v33 >= v32 >> 1)
                {
                  v24 = sub_24E615EC4((v32 > 1), v33 + 1, 1, v24);
                }

                *(v24 + 2) = v4;
                *&v24[8 * v33 + 32] = v8;
                v10 = *(v1 + 16);
                if (!v10)
                {
                  goto LABEL_74;
                }

                v8 = v1;
                v34 = v46 + 24 * v10;
                *(v34 - 24) = v47;
                *(v34 - 16) = v49;
                *(v34 - 8) = v24;
              }

              else
              {
              }
            }

LABEL_19:
            v3 += 3;
            if (!--v2)
            {
              goto LABEL_55;
            }
          }
        }

        v8 = v1;
LABEL_55:
        v1 = v8;

        v53 = v56;
        sub_24F926F38();
        v39 = v52[2];
        if (!v39)
        {

          goto LABEL_66;
        }

        v40 = &v52[3 * v39];
        v3 = v40[1];
        v8 = v40[2];
        v4 = v40[3];

        v41 = v1;
        v5 = *(v1 + 16);
        if (v5)
        {
          v42 = v1 + 24 * v5;
          v43 = *(v42 + 8) == v3 && *(v42 + 16) == v8;
          if (v43 || (v44 = sub_24F92CE08(), v41 = v1, (v44 & 1) != 0))
          {

LABEL_66:
            v53 = *(v48 + 2);
            goto LABEL_16;
          }
        }

        v10 = *(v41 + 24);
        v2 = v5 + 1;
        if (v5 < v10 >> 1)
        {
LABEL_65:
          *(v1 + 16) = v2;
          v45 = (v1 + 24 * v5);
          v45[4] = v3;
          v45[5] = v8;
          v45[6] = v4;
          goto LABEL_66;
        }

LABEL_79:
        v1 = sub_24E61728C((v10 > 1), v2, 1, v1);
        goto LABEL_65;
      }

LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  return result;
}

uint64_t objectdestroy_172Tm_0()
{
  v1 = sub_24F9239C8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 216) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void *sub_24EB927B0()
{
  v1 = *(sub_24F9239C8() - 8);
  v2 = (*(v1 + 80) + 216) & ~*(v1 + 80);
  sub_24F923558();
  return sub_24EB8B6A8(v0 + v2, v3);
}

uint64_t sub_24EB92828(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_152Tm(uint64_t a1)
{

  return swift_deallocObject();
}

unint64_t sub_24EB92988()
{
  result = qword_27F22A588;
  if (!qword_27F22A588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A578, &qword_24F9873D0);
    sub_24E602068(&qword_27F22A590, &qword_27F22A598, &qword_24F9873E0, MEMORY[0x277D83FB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A588);
  }

  return result;
}

unint64_t sub_24EB92A38()
{
  result = qword_27F22A5B0;
  if (!qword_27F22A5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A5A8, &qword_24F9873F0);
    sub_24EB8EEE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A5B0);
  }

  return result;
}

uint64_t sub_24EB92AC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_24EB92B0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EB92B70(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A448, &qword_24F987258);
  sub_24F924E38();
  sub_24EB91A0C();
  return swift_getWitnessTable();
}

uint64_t sub_24EB92BE8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A480, &qword_24F9872A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A1C0, &qword_24F986D40);
  sub_24EB91DCC();
  sub_24EB91D20(&qword_27F22A4F0, sub_24EB91858, MEMORY[0x277D84F50]);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24EB92CC4()
{
  result = qword_27F22A600;
  if (!qword_27F22A600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A5C8, &qword_24F9874B8);
    sub_24E602068(&qword_27F22A5F0, &qword_27F22A5E8, &qword_24F9874D8, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F2129F0, &qword_27F255320, &unk_24F9397C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A600);
  }

  return result;
}

unint64_t sub_24EB92DC4()
{
  result = qword_27F22A608;
  if (!qword_27F22A608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A610, &qword_24F987520);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A5D8, &qword_24F9874C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A1C0, &qword_24F986D40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A5E8, &qword_24F9874D8);
    sub_24E602068(&qword_27F22A5F0, &qword_27F22A5E8, &qword_24F9874D8, MEMORY[0x277CE04B0]);
    swift_getOpaqueTypeConformance2();
    sub_24EB91D20(&qword_27F22A5B8, sub_24EB8F314, MEMORY[0x277D84F48]);
    swift_getOpaqueTypeConformance2();
    sub_24EB92CC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A608);
  }

  return result;
}

uint64_t TopChartsDiffablePagePresenter.UpdatePhase.isUpdating.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *v0 >> 62;
  if (!v4)
  {

    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
    sub_24E5FCA4C(v2, v3);
    v6 = v1;
LABEL_5:
    v7 = v2;
    v8 = v3;
    goto LABEL_6;
  }

  if (v1 != 0x8000000000000000 || (v3 | v2) != 0)
  {
    sub_24EB93188(0x8000000000000008, 0, 0);
    v9 = 1;
    goto LABEL_7;
  }

  v6 = 0x8000000000000000;
  v7 = 0;
  v8 = 0;
LABEL_6:
  sub_24EB93188(v6, v7, v8);
  v9 = 0;
LABEL_7:
  sub_24EB93188(0x8000000000000008, 0, 0);
  return v9;
}

uint64_t static TopChartsDiffablePagePresenter.UpdatePhase.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *a1 >> 62;
  if (!v8)
  {
    if (v5 >> 62)
    {

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v8 == 1)
  {
    v9 = (v2 & 0x3FFFFFFFFFFFFFFFLL);
    sub_24E5FCA4C(v3, v4);
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  if (v2 == 0x8000000000000000 && (v4 | v3) == 0)
  {
    if (v5 >> 62 != 2)
    {
      goto LABEL_17;
    }

    v11 = 0;
    if (v5 != 0x8000000000000000)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v5 >> 62 != 2)
    {
      goto LABEL_17;
    }

    v11 = 0;
    if (v5 != 0x8000000000000008)
    {
      goto LABEL_18;
    }
  }

  if (!(v7 | v6))
  {
LABEL_16:
    sub_24EB931F0(*a1, v3, v4);
    v11 = 1;
  }

LABEL_18:
  sub_24EB931F0(v5, v6, v7);
  sub_24EB93188(v2, v3, v4);
  sub_24EB93188(v5, v6, v7);
  return v11;
}

double sub_24EB93188(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62 == 1)
  {

    return sub_24E824448(a2, a3);
  }

  else if (!(a1 >> 62))
  {
  }

  return result;
}

unint64_t sub_24EB931F0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >> 62 == 1)
  {
    v6 = (result & 0x3FFFFFFFFFFFFFFFLL);

    return sub_24E5FCA4C(a2, a3);
  }

  else if (!(result >> 62))
  {
  }

  return result;
}

void sub_24EB93258(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0x8000000000000000;
}

uint64_t sub_24EB93268()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *v0 >> 62;
  if (!v4)
  {

    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
    sub_24E5FCA4C(v2, v3);
    v6 = v1;
LABEL_5:
    v7 = v2;
    v8 = v3;
    goto LABEL_6;
  }

  if (v1 != 0x8000000000000000 || (v3 | v2) != 0)
  {
    sub_24EB93188(0x8000000000000008, 0, 0);
    v9 = 1;
    goto LABEL_7;
  }

  v6 = 0x8000000000000000;
  v7 = 0;
  v8 = 0;
LABEL_6:
  sub_24EB93188(v6, v7, v8);
  v9 = 0;
LABEL_7:
  sub_24EB93188(0x8000000000000008, 0, 0);
  return v9;
}

unint64_t sub_24EB93330(uint64_t a1)
{
  result = sub_24EB93358();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24EB93358()
{
  result = qword_27F22A618;
  if (!qword_27F22A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A618);
  }

  return result;
}

uint64_t sub_24EB933AC(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *a1 >> 62;
  if (!v8)
  {
    if (v5 >> 62)
    {

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v8 == 1)
  {
    v9 = (v2 & 0x3FFFFFFFFFFFFFFFLL);
    sub_24E5FCA4C(v3, v4);
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  if (v2 == 0x8000000000000000 && (v4 | v3) == 0)
  {
    if (v5 >> 62 != 2)
    {
      goto LABEL_17;
    }

    v11 = 0;
    if (v5 != 0x8000000000000000)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v5 >> 62 != 2)
    {
      goto LABEL_17;
    }

    v11 = 0;
    if (v5 != 0x8000000000000008)
    {
      goto LABEL_18;
    }
  }

  if (!(v7 | v6))
  {
LABEL_16:
    sub_24EB931F0(*a1, v3, v4);
    v11 = 1;
  }

LABEL_18:
  sub_24EB931F0(v5, v6, v7);
  sub_24EB93188(v2, v3, v4);
  sub_24EB93188(v5, v6, v7);
  return v11;
}

unint64_t get_enum_tag_for_layout_string_12GameStoreKit30TopChartsDiffablePagePresenterC11UpdatePhaseO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_24EB934F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 24))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24EB93550(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_24EB935A8(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_24EB93618()
{
  v0 = sub_24E609724(MEMORY[0x277D84F90]);
  qword_27F22A628 = 0;
  qword_27F22A630 = 0;
  qword_27F22A620 = 0;
  byte_27F22A638 = 0;
  result = sub_24E9036C4(0);
  qword_27F22A640 = v0;
  return result;
}

double static PageFacetsPresenter.FacetsState.empty.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27F210380 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_27F22A620;
  v2 = qword_27F22A628;
  v3 = qword_27F22A630;
  v4 = qword_27F22A640;
  *a1 = qword_27F22A620;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = byte_27F22A638;
  *(a1 + 32) = v4;
  sub_24E903680(v1, v2, v3);

  return result;
}

double PageFacetsPresenter.FacetsState.facets.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v1 + 24);
  return sub_24E903680(v2, v3, v4);
}

void __swiftcall PageFacetsPresenter.FacetsState.init(byCopying:)(GameStoreKit::PageFacetsPresenter::FacetsState *__return_ptr retstr, GameStoreKit::PageFacetsPresenter::FacetsState *byCopying)
{
  rawValue = byCopying->facets.value.facetGroups._rawValue;
  countAndFlagsBits = byCopying->facets.value.resetButtonTitle.value._countAndFlagsBits;
  object = byCopying->facets.value.resetButtonTitle.value._object;
  v6 = *&byCopying->facets.is_nil;
  allowsResetButton = byCopying->facets.value.allowsResetButton;
  sub_24E903680(byCopying->facets.value.facetGroups._rawValue, countAndFlagsBits, object);
  sub_24E9036C4(0);
  retstr->facets.value.facetGroups._rawValue = rawValue;
  retstr->facets.value.resetButtonTitle.value._countAndFlagsBits = countAndFlagsBits;
  retstr->facets.value.resetButtonTitle.value._object = object;
  retstr->facets.value.allowsResetButton = allowsResetButton;

  sub_24E9036C4(rawValue);

  *&retstr->facets.is_nil = v6;
}

uint64_t sub_24EB937CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 24);
  sub_24E903680(*a1, v4, v5);
  sub_24E9036C4(0);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;

  sub_24E9036C4(v3);

  *(a2 + 32) = v6;
  return result;
}

uint64_t PageFacetsPresenter.__allocating_init()()
{
  v0 = swift_allocObject();
  PageFacetsPresenter.init()();
  return v0;
}

void *PageFacetsPresenter.init()()
{
  v1 = v0;
  v2 = sub_24F92BEE8();
  v14 = *(v2 - 8);
  v15 = v2;
  MEMORY[0x28223BE20](v2);
  v13 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92BE88();
  MEMORY[0x28223BE20](v4);
  v12[1] = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927DC8();
  MEMORY[0x28223BE20](v6 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A648, &unk_24F9876C0);
  swift_allocObject();
  v0[2] = sub_24F9280D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A650, &qword_24F992800);
  swift_allocObject();
  v0[3] = sub_24F92ADA8();
  swift_allocObject();
  v0[4] = sub_24F9280D8();
  if (qword_27F210380 != -1)
  {
    swift_once();
  }

  v7 = qword_27F22A620;
  v8 = qword_27F22A628;
  v9 = qword_27F22A630;
  v10 = qword_27F22A640;
  v1[5] = qword_27F22A620;
  v1[6] = v8;
  v1[7] = v9;
  *(v1 + 64) = byte_27F22A638;
  v1[9] = v10;
  sub_24E74EC40();
  sub_24E903680(v7, v8, v9);

  sub_24F927DA8();
  v16 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E602068(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  (*(v14 + 104))(v13, *MEMORY[0x277D85260], v15);
  v1[10] = sub_24F92BF38();
  return v1;
}

uint64_t sub_24EB93C44@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[9];
  sub_24E903680(v3, v4, v5);

  sub_24E903680(v3, v4, v5);
  sub_24E9036C4(0);

  sub_24E9036C4(v3);

  sub_24E9036C4(v3);

  *a2 = v6;
  return result;
}

uint64_t sub_24EB93D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  sub_24E903680(v3, v4, v5);

  sub_24E903680(v3, v4, v5);
  sub_24E9036C4(0);

  sub_24E9036C4(v3);

  sub_24E903680(v3, v4, v5);
  sub_24E9036C4(v3);

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

Swift::Void __swiftcall PageFacetsPresenter.setFacets(_:selectedFacetOptions:)(GameStoreKit::PageFacets_optional *_, Swift::OpaquePointer selectedFacetOptions)
{
  v3 = v2;
  v6 = sub_24F927D88();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F927DC8();
  v19 = *(v9 - 8);
  v20 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  rawValue = _->value.facetGroups._rawValue;
  countAndFlagsBits = _->value.resetButtonTitle.value._countAndFlagsBits;
  object = _->value.resetButtonTitle.value._object;
  v18[1] = *(v3 + 80);
  allowsResetButton = _->value.allowsResetButton;
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  *(v16 + 24) = rawValue;
  *(v16 + 32) = countAndFlagsBits;
  *(v16 + 40) = object;
  *(v16 + 48) = allowsResetButton;
  *(v16 + 56) = selectedFacetOptions;
  aBlock[4] = sub_24EB96CEC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_54;
  v17 = _Block_copy(aBlock);

  sub_24E903680(rawValue, countAndFlagsBits, object);

  sub_24F927DA8();
  v22 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v11, v8, v17);
  _Block_release(v17);
  (*(v21 + 8))(v8, v6);
  (*(v19 + 8))(v11, v20);
}

uint64_t sub_24EB94198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6)
{
  v6 = a6;
  v13 = *(a1 + 40);
  v12 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  if (!v13)
  {
    sub_24E903680(0, v12, v14);
    if (!a2)
    {
      sub_24E903680(0, a3, a4);
      sub_24E9036C4(0);
      v18 = 0;
      goto LABEL_22;
    }

    v27 = v6;
    sub_24E903680(a2, a3, a4);
    goto LABEL_12;
  }

  v27 = a6;
  if (!a2)
  {
    sub_24E903680(v13, v12, v14);
    sub_24E903680(0, a3, a4);
    sub_24E903680(v13, v12, v14);

LABEL_12:
    sub_24E9036C4(v13);
    v17 = a2;
LABEL_19:
    sub_24E9036C4(v17);
    goto LABEL_20;
  }

  sub_24E903680(v13, v12, v14);
  sub_24E903680(v13, v12, v14);
  sub_24E903680(a2, a3, a4);
  sub_24E903680(v13, v12, v14);
  sub_24EA1782C(v13, a2);
  if ((v16 & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!v14)
  {
    sub_24E9036C4(v13);
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if (!a4)
  {
LABEL_16:
    sub_24E9036C4(v13);
LABEL_17:
    sub_24E9036C4(a2);
LABEL_18:

    v17 = v13;
    goto LABEL_19;
  }

  if (v12 == a3 && v14 == a4)
  {
    sub_24E9036C4(v13);
LABEL_15:
    sub_24E9036C4(a2);
    goto LABEL_31;
  }

  v26 = sub_24F92CE08();
  sub_24E9036C4(v13);
  sub_24E9036C4(a2);
  if ((v26 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_31:

  sub_24E9036C4(v13);
  if (((v15 ^ a5) & 1) == 0)
  {
    v18 = 0;
    goto LABEL_21;
  }

LABEL_20:
  v19 = *(a1 + 40);
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  *(a1 + 56) = a4;
  *(a1 + 64) = a5;
  sub_24E903680(a2, a3, a4);
  sub_24E9036C4(v19);
  v18 = 1;
LABEL_21:
  v6 = v27;
LABEL_22:

  v21 = sub_24EBACC80(v20, v6);

  if ((v21 & 1) == 0)
  {
    *(a1 + 72) = v6;
  }

  v23 = *(a1 + 40);
  v22 = *(a1 + 48);
  v24 = *(a1 + 56);
  sub_24E903680(v23, v22, v24);

  sub_24E903680(v23, v22, v24);
  sub_24E9036C4(0);

  sub_24E9036C4(v23);

  if (v18 || (v21 & 1) == 0)
  {
    sub_24F9280C8();
    sub_24E9036C4(v23);
  }

  else
  {
    sub_24E9036C4(v23);
  }
}

uint64_t sub_24EB94618(uint64_t a1)
{
  if (qword_27F210380 != -1)
  {
    swift_once();
  }

  v2 = qword_27F22A620;
  v3 = qword_27F22A628;
  v4 = qword_27F22A630;
  v5 = qword_27F22A640;
  v6 = *(a1 + 40);
  *(a1 + 40) = qword_27F22A620;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  *(a1 + 64) = byte_27F22A638;
  *(a1 + 72) = v5;
  sub_24E903680(v2, v3, v4);

  sub_24E9036C4(v6);

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  sub_24E903680(v7, v8, v9);

  sub_24E903680(v7, v8, v9);
  sub_24E9036C4(0);

  sub_24E9036C4(v7);

  sub_24F9280C8();
  sub_24E9036C4(v7);
}

double sub_24EB947B8(uint64_t a1, uint64_t a2)
{
  v5 = sub_24F927D88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F927DC8();
  v9 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 80);
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_24F927DA8();
  v16 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v11, v8, v12);
  _Block_release(v12);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15);

  return result;
}

void sub_24EB94A5C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 40);
  if (!v2)
  {
    v10 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_48:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213370, &unk_24F93AB40);
      v11 = sub_24F92CB58();
      goto LABEL_49;
    }

LABEL_9:
    v11 = MEMORY[0x277D84F98];
LABEL_49:
    *&v50 = v11;
    sub_24EB96E74(v10, 1, &v50);

    *(v1 + 72) = v50;

    v42 = *(v1 + 40);
    v43 = *(v1 + 48);
    v44 = *(v1 + 56);
    v45 = *(v1 + 72);
    v46 = *(v1 + 64);
    sub_24E903680(v42, v43, v44);

    sub_24E903680(v42, v43, v44);
    sub_24E9036C4(0);

    sub_24E9036C4(v42);

    *&v50 = v42;
    *(&v50 + 1) = v43;
    *&v51 = v44;
    BYTE8(v51) = v46;
    *&v52 = v45;
    sub_24F9280C8();
    sub_24E9036C4(v42);

    return;
  }

  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    *&v50 = MEMORY[0x277D84F90];

    sub_24F45877C(0, v3, 0);
    v5 = 48;
    v6 = v50;
    do
    {
      v7 = *(v2 + v5);
      *&v50 = v6;
      v9 = v6[2];
      v8 = v6[3];

      if (v9 >= v8 >> 1)
      {
        sub_24F45877C((v8 > 1), v9 + 1, 1);
        v6 = v50;
      }

      v6[2] = v9 + 1;
      v6[v9 + 4] = v7;
      v5 += 24;
      --v3;
    }

    while (v3);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v12 = v6[2];
  v13 = v6 + 4;
  v14 = 0;
  if (v12)
  {
    while (1)
    {
      v15 = *(v13[v14] + 16);
      v16 = v15 == 0;
      if (v15)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v14 = v6[2];
        break;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_24EB9686C(v14, 0, v16, v12, 0, 1, v6);
  if (!v17)
  {

    v10 = MEMORY[0x277D84F90];
LABEL_47:
    v1 = a1;
    if (*(v10 + 16))
    {
      goto LABEL_48;
    }

    goto LABEL_9;
  }

  v18 = v17;
  v59 = v4;
  sub_24F45875C(0, v17 & ~(v17 >> 63), 0);
  v19 = v6[2];
  if (v19)
  {
    v20 = 0;
    while (1)
    {
      v21 = *(v13[v20] + 16);
      v22 = v21 == 0;
      if (v21)
      {
        break;
      }

      if (v19 == ++v20)
      {
        v20 = v6[2];
        break;
      }
    }
  }

  else
  {
    v20 = 0;
    v22 = 1;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v24 = 0;
    v10 = v59;
    while (v23 < v18)
    {
      v25 = __OFADD__(v23++, 1);
      if (v25)
      {
        goto LABEL_51;
      }

      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_52;
      }

      if (v20 >= v6[2])
      {
        goto LABEL_53;
      }

      if (v22)
      {
        goto LABEL_58;
      }

      v26 = v13[v20];
      if (v24 >= *(v26 + 16))
      {
        goto LABEL_54;
      }

      sub_24E772674(v26 + 136 * v24 + 32, v48);
      sub_24E772674(v48, &v50);
      v27 = v49;

      sub_24E7726D0(v48);
      *(&v58 + 1) = v27;
      v59 = v10;
      v29 = *(v10 + 16);
      v28 = *(v10 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_24F45875C((v28 > 1), v29 + 1, 1);
        v10 = v59;
      }

      *(v10 + 16) = v29 + 1;
      v30 = (v10 + 144 * v29);
      v30[2] = v50;
      v31 = v51;
      v32 = v52;
      v33 = v54;
      v30[5] = v53;
      v30[6] = v33;
      v30[3] = v31;
      v30[4] = v32;
      v34 = v55;
      v35 = v56;
      v36 = v58;
      v30[9] = v57;
      v30[10] = v36;
      v30[7] = v34;
      v30[8] = v35;
      v37 = v6[2];
      if (v20 >= v37)
      {
        goto LABEL_55;
      }

      if (++v24 == *(v13[v20] + 16))
      {
        ++v20;
        while (1)
        {
          v22 = v20 == v37;
          if (v20 == v37)
          {
            v24 = 0;
            v20 = v37;
            goto LABEL_37;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A680, &qword_24F987818);
          sub_24E602068(&qword_27F22A688, &qword_27F22A680, &qword_24F987818, MEMORY[0x277D83988]);
          v38 = sub_24E951CFC(&v50, v20, v6);
          v40 = *v39;

          (v38)(&v50, 0);
          v41 = *(v40 + 16);

          if (v41)
          {
            break;
          }

          v25 = __OFADD__(v20++, 1);
          if (v25)
          {
            goto LABEL_57;
          }
        }

        v24 = 0;
      }

      else
      {
        v22 = 0;
      }

LABEL_37:
      if (v23 == v18)
      {

        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);

  __break(1u);
}

double PageFacetsPresenter.didSelect(option:in:)(__int128 *a1, uint64_t a2)
{
  v5 = sub_24F927D88();
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24F927DC8();
  v8 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[1];
  v29 = *a1;
  v30 = v11;
  v12 = a1[3];
  v31 = a1[2];
  v32 = v12;
  v22 = *(v2 + 80);
  sub_24E772674(a2, v27);
  v13 = swift_allocObject();
  v14 = v27[4];
  *(v13 + 104) = v27[5];
  v15 = v27[7];
  *(v13 + 120) = v27[6];
  *(v13 + 136) = v15;
  v16 = v27[0];
  *(v13 + 40) = v27[1];
  v17 = v27[3];
  *(v13 + 56) = v27[2];
  *(v13 + 72) = v17;
  *(v13 + 16) = v2;
  *(v13 + 152) = v28;
  *(v13 + 88) = v14;
  *(v13 + 24) = v16;
  v18 = v30;
  *(v13 + 160) = v29;
  *(v13 + 176) = v18;
  v19 = v32;
  *(v13 + 192) = v31;
  *(v13 + 208) = v19;
  v26[4] = sub_24EB96DD0;
  v26[5] = v13;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 1107296256;
  v26[2] = sub_24EAF8248;
  v26[3] = &block_descriptor_12_3;
  v20 = _Block_copy(v26);

  sub_24E60169C(&v29, v25, &qword_27F22A668, &unk_24F9876E0);
  sub_24F927DA8();
  v25[0] = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v10, v7, v20);
  _Block_release(v20);
  (*(v24 + 8))(v7, v5);
  (*(v8 + 8))(v10, v23);

  return result;
}

uint64_t sub_24EB952D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  v10 = *(a1 + 64);
  sub_24E903680(v6, v7, v8);

  sub_24E903680(v6, v7, v8);
  sub_24E9036C4(0);
  v65 = v6;
  v66 = v7;
  v67 = v8;
  v68 = v10;

  sub_24E9036C4(v6);

  v69 = v9;
  v49 = a2;
  if (!*(v9 + 16) || (v11 = sub_24E76D6EC(a2), (v12 & 1) == 0))
  {
    v17 = *(a3 + 24);
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A678, &qword_24F9FAAF0);
      v18 = swift_allocObject();
      v19 = *a3;
      *(v18 + 16) = xmmword_24F93DE60;
      *(v18 + 32) = v19;
      *(v18 + 48) = *(a3 + 16);
      *(v18 + 56) = v17;
      v20 = *(a3 + 48);
      *(v18 + 64) = *(a3 + 32);
      *(v18 + 80) = v20;
      sub_24E60169C(a3, &v56, &qword_27F22A668, &unk_24F9876E0);
      v21 = sub_24E803E98(v18);
      swift_setDeallocating();
      sub_24E805734(v18 + 32);
      swift_deallocClassInstance();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v9;
      v23 = v21;
LABEL_12:
      sub_24E81C4F0(v23, a2, isUniquelyReferenced_nonNull_native);
      v69 = v56;
      goto LABEL_13;
    }

LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v9;
    v23 = MEMORY[0x277D84FA0];
    goto LABEL_12;
  }

  v13 = *(a3 + 24);
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = *(*(v9 + 56) + 8 * v11);
  v70 = *a3;
  *&v71 = *(a3 + 16);
  *(&v71 + 1) = v13;
  v15 = *(a3 + 48);
  v72 = *(a3 + 32);
  v73 = v15;
  if (!*(a2 + 48))
  {
    if (!*(v14 + 16))
    {

      v46 = sub_24F45D748(v48);

      goto LABEL_24;
    }

    goto LABEL_11;
  }

  if (*(a2 + 48) != 1)
  {

    sub_24E60169C(a3, &v56, &qword_27F22A668, &unk_24F9876E0);
    v37 = sub_24F4D4084(&v70, v14);

    if (v37)
    {
      sub_24E772674(a2, &v56);
      v38 = sub_24F4D63F0(v55, &v56);
      if (*v39)
      {
        sub_24F7A5B64(&v70, &v61);
        sub_24E601704(a3, &qword_27F22A668, &unk_24F9876E0);
        v51 = v61;
        v52 = v62;
        v53 = v63;
        v54 = v64;
        v40 = &v51;
LABEL_26:
        sub_24E601704(v40, &qword_27F22A668, &unk_24F9876E0);
        goto LABEL_27;
      }
    }

    else
    {
      sub_24E772674(a2, &v56);
      v38 = sub_24F4D63F0(v55, &v56);
      if (*v47)
      {
        sub_24ED7C740(&v61, &v70);
        v51 = v61;
        v52 = v62;
        v53 = v63;
        v54 = v64;
        sub_24E805734(&v51);
LABEL_27:
        (v38)(v55, 0);
        sub_24E7726D0(&v56);
        goto LABEL_13;
      }
    }

    v40 = a3;
    goto LABEL_26;
  }

  sub_24E60169C(a3, &v56, &qword_27F22A668, &unk_24F9876E0);
  v16 = sub_24F4D4084(&v70, v14);

  if ((v16 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A678, &qword_24F9FAAF0);
    v41 = swift_allocObject();
    v42 = v70;
    v43 = v71;
    v41[1] = xmmword_24F93DE60;
    v41[2] = v42;
    v44 = v72;
    v45 = v73;
    v41[3] = v43;
    v41[4] = v44;
    v41[5] = v45;
    v46 = sub_24E803E98(v41);
    swift_setDeallocating();
    sub_24E805734((v41 + 2));
    swift_deallocClassInstance();
LABEL_24:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v9;
    v23 = v46;
    goto LABEL_12;
  }

  sub_24E601704(a3, &qword_27F22A668, &unk_24F9876E0);
LABEL_13:
  v25 = v65;
  v24 = v66;
  v26 = v67;
  v27 = v69;
  v56 = v65;
  v57 = v66;
  v58 = v67;
  v59 = v68;
  v60 = v69;
  v28 = *(a1 + 40);
  v29 = *(a1 + 48);
  v30 = *(a1 + 56);
  v31 = a1;
  v32 = *(a1 + 72);
  v33 = *(v31 + 64);
  *&v61 = v28;
  *(&v61 + 1) = v29;
  *&v62 = v30;
  BYTE8(v62) = v33;
  *&v63 = v32;
  v50 = v68;
  sub_24E903680(v65, v66, v67);

  sub_24E903680(v28, v29, v30);

  v34 = _s12GameStoreKit19PageFacetsPresenterC0E5StateV2eeoiySbAE_AEtFZ_0(&v56, &v61);
  sub_24E9036C4(v61);

  sub_24E9036C4(v56);

  if ((v34 & 1) == 0)
  {
    v35 = *(v31 + 40);
    *(v31 + 40) = v25;
    *(v31 + 48) = v24;
    *(v31 + 56) = v26;
    *(v31 + 64) = v50;
    *(v31 + 72) = v27;
    sub_24E903680(v25, v24, v26);

    sub_24E9036C4(v35);

    v56 = v25;
    v57 = v24;
    v58 = v26;
    v59 = v50;
    v60 = v27;
    sub_24E903680(v25, v24, v26);

    sub_24F9280C8();
    sub_24E9036C4(v56);

    if (*(v49 + 96))
    {
      v56 = *(v49 + 96);

      sub_24F92AD88();
    }
  }

  sub_24E9036C4(v25);
}

uint64_t sub_24EB95930(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_24F92BF18();
  return v4;
}

void sub_24EB95988(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  v39 = sub_24E60C660(MEMORY[0x277D84F90]);
  v4 = *(a1 + 72);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v38 = v4;

  v10 = 0;
  v36 = v9;
  v37 = v5;
  while (v8)
  {
LABEL_12:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v10 << 6);
    sub_24E772674(*(v38 + 48) + 136 * v14, v47);
    v15 = *(*(v38 + 56) + 8 * v14);
    v44[6] = v47[6];
    v44[7] = v47[7];
    v44[2] = v47[2];
    v44[3] = v47[3];
    v44[4] = v47[4];
    v44[5] = v47[5];
    v44[0] = v47[0];
    v44[1] = v47[1];
    v45 = v48;
    v46 = v15;
    v16 = 1 << *(v15 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v15 + 56);
    v19 = (v16 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v20 = 0;
    v49 = v3;
    while (v18)
    {
LABEL_21:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v23 = (*(v15 + 48) + ((v20 << 12) | (v22 << 6)));
      if (v23[7])
      {
        v35 = v23[6];
        v24 = v23[7];
LABEL_25:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_24E615CF4(0, *(v49 + 2) + 1, 1, v49);
        }

        v26 = *(v49 + 2);
        v25 = *(v49 + 3);
        v27 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          v30 = sub_24E615CF4((v25 > 1), v26 + 1, 1, v49);
          v27 = v26 + 1;
          v49 = v30;
        }

        v28 = v49;
        *(v49 + 2) = v27;
        v29 = &v28[16 * v26];
        *(v29 + 4) = v35;
        *(v29 + 5) = v24;
        v3 = MEMORY[0x277D84F90];
      }

      else
      {
        v24 = v23[1];
        if (v24)
        {
          v35 = *v23;

          goto LABEL_25;
        }
      }
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v21 >= v19)
      {
        break;
      }

      v18 = *(v15 + 56 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        goto LABEL_21;
      }
    }

    v31 = v49;
    if (*(v49 + 2))
    {
      sub_24E60169C(v44, v43, &qword_27F22A670, &qword_24F987810);

      v33 = v43[9];
      v32 = v43[10];

      sub_24E7726D0(v43);
      if (!v32)
      {
        sub_24E60169C(v44, v40, &qword_27F22A670, &qword_24F987810);

        v33 = v41;
        v32 = v42;

        sub_24E7726D0(v40);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43[0] = v39;
      sub_24E81F980(v31, v33, v32, isUniquelyReferenced_nonNull_native);

      v39 = v43[0];
      v9 = v36;
    }

    else
    {

      v9 = v36;
    }

    sub_24E601704(v44, &qword_27F22A670, &qword_24F987810);
    v5 = v37;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      *a2 = v39;
      return;
    }

    v8 = *(v5 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_12;
    }
  }

LABEL_36:
  __break(1u);
}

uint64_t static PageFacetsPresenter.selectedFacetsTitle(for:)(uint64_t *a1)
{
  v2 = a1[4];
  if (!v2 || (v3 = *a1, v4 = a1[3], v46 = *a1, v47 = *(a1 + 1), v48 = v4, v49 = v2, !*(v2 + 16)))
  {
LABEL_47:
    v30._object = 0x800000024FA54A40;
    v30._countAndFlagsBits = 0xD000000000000029;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    return localizedString(_:comment:)(v30, v31)._countAndFlagsBits;
  }

  if (!v3)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_44:
    v29 = *(v17 + 2);
    if (v29 == 1)
    {
      v33 = *(v17 + 4);

      return v33;
    }

    if (v29)
    {

      v34._object = 0x800000024FA54A70;
      v34._countAndFlagsBits = 0xD000000000000029;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      localizedString(_:comment:)(v34, v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_24F93DE60;
      v37 = objc_opt_self();
      v38 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v39 = [v37 localizedStringFromNumber:v38 numberStyle:0];

      v40 = sub_24F92B0D8();
      v42 = v41;

      *(v36 + 56) = MEMORY[0x277D837D0];
      *(v36 + 64) = sub_24E90A06C();
      *(v36 + 32) = v40;
      *(v36 + 40) = v42;
      v43 = sub_24F92B118();

      return v43;
    }

    goto LABEL_47;
  }

  v5 = *(v3 + 16);
  if (!v5)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_24:
    v18 = *(v8 + 2);
    if (v18)
    {
      v19 = 0;
      v1 = 0;
      v20 = (v8 + 32);
      v17 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v19 >= *(v8 + 2))
        {
          goto LABEL_54;
        }

        sub_24E772674(v20, v45);
        sub_24EB9617C(v45, &v46, &v44);
        sub_24E7726D0(v45);
        v21 = v44;
        v22 = *(v44 + 16);
        v23 = *(v17 + 2);
        v24 = v23 + v22;
        if (__OFADD__(v23, v22))
        {
          goto LABEL_55;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v24 <= *(v17 + 3) >> 1)
        {
          if (!*(v21 + 16))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v23 <= v24)
          {
            v26 = v23 + v22;
          }

          else
          {
            v26 = v23;
          }

          v17 = sub_24E615CF4(isUniquelyReferenced_nonNull_native, v26, 1, v17);
          if (!*(v21 + 16))
          {
LABEL_26:

            if (v22)
            {
              goto LABEL_56;
            }

            goto LABEL_27;
          }
        }

        if ((*(v17 + 3) >> 1) - *(v17 + 2) < v22)
        {
          goto LABEL_58;
        }

        swift_arrayInitWithCopy();

        if (v22)
        {
          v27 = *(v17 + 2);
          v15 = __OFADD__(v27, v22);
          v28 = v27 + v22;
          if (v15)
          {
            goto LABEL_60;
          }

          *(v17 + 2) = v28;
        }

LABEL_27:
        ++v19;
        v20 += 136;
        if (v18 == v19)
        {
          goto LABEL_43;
        }
      }
    }

    v17 = MEMORY[0x277D84F90];
LABEL_43:

    goto LABEL_44;
  }

  v6 = 0;
  v7 = (v3 + 48);
  v8 = MEMORY[0x277D84F90];
  while (v6 < *(v3 + 16))
  {
    v9 = *v7;
    v1 = *(*v7 + 16);
    v10 = *(v8 + 2);
    v11 = &v1[v10];
    if (__OFADD__(v10, v1))
    {
      goto LABEL_52;
    }

    v12 = swift_isUniquelyReferenced_nonNull_native();
    if (v12 && v11 <= *(v8 + 3) >> 1)
    {
      if (!*(v9 + 16))
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v13 = &v1[v10];
      }

      else
      {
        v13 = v10;
      }

      v8 = sub_24E6165F4(v12, v13, 1, v8);
      if (!*(v9 + 16))
      {
LABEL_6:

        if (v1)
        {
          goto LABEL_53;
        }

        goto LABEL_7;
      }
    }

    if ((*(v8 + 3) >> 1) - *(v8 + 2) < v1)
    {
      goto LABEL_57;
    }

    swift_arrayInitWithCopy();

    if (v1)
    {
      v14 = *(v8 + 2);
      v15 = __OFADD__(v14, v1);
      v16 = &v1[v14];
      if (v15)
      {
        goto LABEL_59;
      }

      *(v8 + 2) = v16;
    }

LABEL_7:
    ++v6;
    v7 += 3;
    if (v5 == v6)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);

  sub_24E7726D0(v45);

  __break(1u);
  return result;
}

void sub_24EB9617C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 32);
  if (!*(v5 + 16) || (v6 = sub_24E76D6EC(a1), (v7 & 1) == 0) || (v8 = *(*(v5 + 56) + 8 * v6), !*(v8 + 16)))
  {
    if (*(*(a1 + 64) + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_24F93DE60;
      v12 = *(a1 + 40);
      *(v11 + 32) = *(a1 + 32);
      *(v11 + 40) = v12;
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    *a3 = v11;
    return;
  }

  v9 = *(a1 + 64);

  if (sub_24EDD4178(v10, v9))
  {

LABEL_6:
    *a3 = MEMORY[0x277D84F90];
    return;
  }

  if (!*(a1 + 48))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_24F93DE60;
    v52 = *(a1 + 40);
    *(v51 + 32) = *(a1 + 32);
    *(v51 + 40) = v52;
    *a3 = v51;

    return;
  }

  v13 = *(a1 + 56);
  v66 = *(v13 + 16);
  if (!v66)
  {
    v61 = MEMORY[0x277D84F90];
    goto LABEL_68;
  }

  v14 = 0;
  v64 = v13 + 32;
  v79 = v8 + 56;
  v61 = MEMORY[0x277D84F90];
  v62 = v13;
  v63 = a3;
  v65 = v8;
  do
  {
    while (1)
    {
      if (v14 >= *(v13 + 16))
      {
        __break(1u);
        return;
      }

      v15 = (v64 + (v14 << 6));
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[3];
      v76 = v15[2];
      v77 = v18;
      v74 = v16;
      v75 = v17;
      ++v14;
      if (*(v8 + 16))
      {
        break;
      }

LABEL_16:
      if (v14 == v66)
      {
        goto LABEL_68;
      }
    }

    sub_24F92D068();
    v19 = v74;
    if (*(&v74 + 1))
    {
      sub_24F92D088();
      sub_24E8056D8(&v74, v72);
      sub_24F92B218();
    }

    else
    {
      sub_24F92D088();
      sub_24E8056D8(&v74, v72);
    }

    v20 = v76;
    v70 = *(&v75 + 1);
    v71 = v75;
    sub_24F92B218();
    sub_24F92D088();
    if (*(&v20 + 1))
    {
      sub_24F92B218();
    }

    v67 = v14;
    v69 = *(&v77 + 1);
    v68 = v77;
    if (*(&v77 + 1))
    {
      sub_24F92D088();
      sub_24F92B218();
    }

    else
    {
      sub_24F92D088();
    }

    v21 = sub_24F92D0B8();
    v22 = -1 << *(v8 + 32);
    v23 = v21 & ~v22;
    v24 = *(&v19 + 1);
    if (((*(v79 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
LABEL_15:
      sub_24E805734(&v74);
      a3 = v63;
      v8 = v65;
      v13 = v62;
      v14 = v67;
      goto LABEL_16;
    }

    v25 = ~v22;
    v26 = *(v65 + 48);
    while (1)
    {
      v27 = (v26 + (v23 << 6));
      v28 = v27[1];
      v29 = v27[2];
      v30 = v27[3];
      v31 = v27[4];
      v33 = v27[5];
      v32 = v27[6];
      v34 = v27[7];
      if (v28)
      {
        if (!v24)
        {
          goto LABEL_30;
        }

        if (*v27 != v19 || v28 != v24)
        {
          v36 = sub_24F92CE08();
          v24 = *(&v19 + 1);
          if ((v36 & 1) == 0)
          {
            goto LABEL_30;
          }
        }
      }

      else if (v24)
      {
        goto LABEL_30;
      }

      if (v29 != v71 || v30 != v70)
      {
        v38 = sub_24F92CE08();
        v24 = *(&v19 + 1);
        if ((v38 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      if (v33)
      {
        if (!*(&v20 + 1))
        {
          goto LABEL_30;
        }

        if (v31 != v20 || v33 != *(&v20 + 1))
        {
          v40 = sub_24F92CE08();
          v24 = *(&v19 + 1);
          if ((v40 & 1) == 0)
          {
            goto LABEL_30;
          }
        }
      }

      else if (*(&v20 + 1))
      {
        goto LABEL_30;
      }

      if (v34)
      {
        break;
      }

      if (!v69)
      {
        goto LABEL_14;
      }

LABEL_30:
      v23 = (v23 + 1) & v25;
      if (((*(v79 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (!v69)
    {
      goto LABEL_30;
    }

    if (v32 != v68 || v34 != v69)
    {
      v41 = sub_24F92CE08();
      v24 = *(&v19 + 1);
      if ((v41 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

LABEL_14:
    if (!v24)
    {
      goto LABEL_15;
    }

    v42 = v61;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v61;
    a3 = v63;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24F4587BC(0, *(v61 + 16) + 1, 1);
      v42 = v78;
    }

    v45 = *(v42 + 16);
    v44 = *(v42 + 24);
    v46 = v42;
    if (v45 >= v44 >> 1)
    {
      sub_24F4587BC((v44 > 1), v45 + 1, 1);
      v46 = v78;
    }

    *(v46 + 16) = v45 + 1;
    v61 = v46;
    v47 = (v46 + (v45 << 6));
    v48 = v74;
    v49 = v75;
    v50 = v77;
    v47[4] = v76;
    v47[5] = v50;
    v47[2] = v48;
    v47[3] = v49;
    v14 = v67;
    v8 = v65;
    v13 = v62;
  }

  while (v67 != v66);
LABEL_68:

  v53 = *(v61 + 16);
  if (!v53)
  {

    goto LABEL_6;
  }

  v73 = MEMORY[0x277D84F90];
  sub_24F4578E0(0, v53, 0);
  v54 = v73;
  v55 = (v61 + 56);
  do
  {
    v57 = *(v55 - 1);
    v56 = *v55;
    v73 = v54;
    v59 = *(v54 + 16);
    v58 = *(v54 + 24);

    if (v59 >= v58 >> 1)
    {
      sub_24F4578E0((v58 > 1), v59 + 1, 1);
      v54 = v73;
    }

    *(v54 + 16) = v59 + 1;
    v60 = v54 + 16 * v59;
    *(v60 + 32) = v57;
    *(v60 + 40) = v56;
    v55 += 8;
    --v53;
  }

  while (v53);

  *a3 = v54;
}

uint64_t PageFacetsPresenter.deinit()
{

  sub_24E9036C4(*(v0 + 40));

  return v0;
}

uint64_t PageFacetsPresenter.__deallocating_deinit()
{

  sub_24E9036C4(*(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_24EB967F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225C70, &qword_24F977EA8);
  sub_24F92BF18();
  return v1;
}

uint64_t sub_24EB9686C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a4 != result)
  {
    v7 = result;
    if (a4 >= result)
    {
      if (result < 0)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v8 = *(a7 + 16);
      if (v8 <= result)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (a3)
      {
LABEL_50:
        __break(1u);
        return result;
      }

      v12 = *(*(a7 + 8 * result + 32) + 16);
      result = v12 - a2;
      if (__OFSUB__(v12, a2))
      {
        goto LABEL_45;
      }

      v10 = 1;
      a2 = a5;
      a3 = a6;
      v11 = a4;
      a4 = v7;
    }

    else
    {
      if (a4 < 0)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v8 = *(a7 + 16);
      if (v8 <= a4)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (a6)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v9 = *(*(a7 + 8 * a4 + 32) + 16);
      result = a5 - v9;
      if (__OFSUB__(a5, v9))
      {
        goto LABEL_43;
      }

      v10 = -1;
      v11 = v7;
    }

    v13 = a4 + 1;
    if (a4 + 1 >= v11)
    {
LABEL_27:
      if (a3)
      {
        return result;
      }

      if (v11 < 0)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (v11 >= v8)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v16 = __OFADD__(result, a2 * v10);
      result += a2 * v10;
      if (!v16)
      {
        return result;
      }

      __break(1u);
    }

    else
    {
      v14 = a7 + 8 * a4 + 40;
      while (v13 < v8)
      {
        v15 = *(*v14 + 16) * v10;
        v16 = __OFADD__(result, v15);
        result += v15;
        if (v16)
        {
          goto LABEL_34;
        }

        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_35;
        }

        ++v13;
        v14 += 8;
        if (v17 >= v11)
        {
          goto LABEL_27;
        }
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (a6)
  {
    if (a3)
    {
      return 0;
    }

    goto LABEL_36;
  }

  if (a3)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (a4 < 0)
  {
    goto LABEL_39;
  }

  if (*(a7 + 16) <= a4)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  result = a5 - a2;
  if (__OFSUB__(a5, a2))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  return result;
}

uint64_t _s12GameStoreKit19PageFacetsPresenterC0E5StateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (*a1)
  {
    v12 = *a1;
    if (v8)
    {
      sub_24E903680(v12, v2, v4);
      sub_24E903680(v8, v7, v9);
      sub_24E903680(v3, v2, v4);
      sub_24EA1782C(v3, v8);
      if (v13)
      {
        if (v4)
        {
          if (v9)
          {
            if (v2 == v7 && v4 == v9)
            {
              v14 = v8;
LABEL_22:
              sub_24E9036C4(v14);
              goto LABEL_23;
            }

            v17 = sub_24F92CE08();
            sub_24E9036C4(v8);
            if (v17)
            {
LABEL_23:

              sub_24E9036C4(v3);
              if (((v5 ^ v10) & 1) == 0)
              {
                goto LABEL_24;
              }

              return 0;
            }

            goto LABEL_16;
          }
        }

        else if (!v9)
        {
          v14 = v8;
          goto LABEL_22;
        }
      }

      sub_24E9036C4(v8);
LABEL_16:

      v15 = v3;
      goto LABEL_17;
    }

    sub_24E903680(v12, v2, v4);
    sub_24E903680(0, v7, v9);
    sub_24E903680(v3, v2, v4);

LABEL_12:
    sub_24E9036C4(v3);
    v15 = v8;
LABEL_17:
    sub_24E9036C4(v15);
    return 0;
  }

  sub_24E903680(0, v2, v4);
  if (v8)
  {
    sub_24E903680(v8, v7, v9);
    goto LABEL_12;
  }

  sub_24E903680(0, v7, v9);
  sub_24E9036C4(0);
LABEL_24:

  return sub_24EBACC80(v6, v11);
}

uint64_t sub_24EB96C98()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EB96D28()
{

  if (v0[19])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  if (v0[23])
  {
  }

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit10PageFacetsVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_24EB96E74(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  sub_24E60169C(result + 32, &v56, &qword_27F213378, &unk_24F987820);
  v53 = v62;
  v54 = v63;
  v7 = v65;
  v55 = v64;
  v49 = v58;
  v50 = v59;
  v51 = v60;
  v52 = v61;
  v47 = v56;
  v48 = v57;
  v8 = *a3;
  result = sub_24E76D6EC(&v47);
  v10 = v8[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v14) = v9;
  if (v8[3] < v13)
  {
    sub_24E899498(v13, v5 & 1);
    result = sub_24E76D6EC(&v47);
    if ((v14 & 1) == (v15 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_24F92CF88();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v16 = *a3;
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_11:
    v16[(result >> 6) + 8] |= 1 << result;
    v20 = v16[6] + 136 * result;
    v22 = v50;
    v21 = v51;
    v23 = v49;
    *(v20 + 16) = v48;
    *(v20 + 32) = v23;
    *(v20 + 48) = v22;
    *(v20 + 64) = v21;
    *v20 = v47;
    v24 = v52;
    v25 = v53;
    v26 = v54;
    *(v20 + 128) = v55;
    *(v20 + 96) = v25;
    *(v20 + 112) = v26;
    *(v20 + 80) = v24;
    *(v16[7] + 8 * result) = v7;
    v27 = v16[2];
    v12 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v12)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v16[2] = v28;
    v18 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v19 = result;
  sub_24E8ADDC8();
  result = v19;
  v16 = *a3;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = result;
  sub_24E7726D0(&v47);
  *(v16[7] + 8 * v17) = v7;

  v18 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v6 += 176;
    v5 = &qword_27F213378;
    v7 = 136;
    v14 = &unk_24F987820;
    while (1)
    {
      sub_24E60169C(v6, &v56, &qword_27F213378, &unk_24F987820);
      v53 = v62;
      v54 = v63;
      v30 = v65;
      v55 = v64;
      v49 = v58;
      v50 = v59;
      v51 = v60;
      v52 = v61;
      v47 = v56;
      v48 = v57;
      v31 = *a3;
      result = sub_24E76D6EC(&v47);
      v33 = v31[2];
      v34 = (v32 & 1) == 0;
      v12 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v12)
      {
        goto LABEL_23;
      }

      v3 = v32;
      if (v31[3] < v35)
      {
        sub_24E899498(v35, 1);
        result = sub_24E76D6EC(&v47);
        if ((v3 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      v37 = *a3;
      if (v3)
      {
        v29 = result;
        sub_24E7726D0(&v47);
        *(v37[7] + 8 * v29) = v30;
      }

      else
      {
        v37[(result >> 6) + 8] |= 1 << result;
        v38 = v37[6] + 136 * result;
        v40 = v50;
        v39 = v51;
        v41 = v49;
        *(v38 + 16) = v48;
        *(v38 + 32) = v41;
        *(v38 + 48) = v40;
        *(v38 + 64) = v39;
        *v38 = v47;
        v42 = v52;
        v43 = v53;
        v44 = v54;
        *(v38 + 128) = v55;
        *(v38 + 96) = v43;
        *(v38 + 112) = v44;
        *(v38 + 80) = v42;
        *(v37[7] + 8 * result) = v30;
        v45 = v37[2];
        v12 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v12)
        {
          goto LABEL_24;
        }

        v37[2] = v46;
      }

      v6 += 144;
      if (!--v18)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t NewWatchPairingCardTrigger.__allocating_init(adamId:pairingStatusProvider:)(uint64_t *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  v5 = *a1;
  v6 = a1[1];
  *(v4 + 56) = 2;
  *(v4 + 80) = 1;
  *(v4 + 64) = v5;
  *(v4 + 72) = v6;
  sub_24E612C80(a2, v4 + 16);
  return v4;
}

uint64_t NewWatchPairingCardTrigger.init(adamId:pairingStatusProvider:)(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *(v2 + 56) = 2;
  *(v2 + 80) = 1;
  *(v2 + 64) = v3;
  *(v2 + 72) = v4;
  sub_24E612C80(a2, v2 + 16);
  return v2;
}

double NewWatchPairingCardTrigger.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;

  return result;
}

uint64_t sub_24EB972B4(uint64_t (*a1)(void))
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  return a1(v5 & 1);
}

uint64_t sub_24EB9735C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t sub_24EB97420(char a1)
{
  result = swift_beginAccess();
  *(v1 + 81) = a1;
  return result;
}

uint64_t NewWatchPairingCardTrigger.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t NewWatchPairingCardTrigger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

double sub_24EB97528@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 72);
  *a1 = *(*v1 + 64);
  a1[1] = v2;

  return result;
}

uint64_t sub_24EB97538(uint64_t (*a1)(void))
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  v5 = (*(v4 + 8))(v3, v4);
  return a1(v5 & 1);
}

uint64_t sub_24EB975B0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 80);
}

uint64_t sub_24EB975F0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 81);
}

uint64_t sub_24EB97630@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_24EB97678(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 80) = v2;
  return result;
}

uint64_t sub_24EB976BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 81);
  return result;
}

uint64_t sub_24EB97704(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 81) = v2;
  return result;
}

uint64_t RenderingModeArtworkStyle.init(renderingMode:defaultBackground:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_24F926E68();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for RenderingModeArtworkStyle(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for RenderingModeArtworkStyle(uint64_t a1)
{
  result = qword_27F22A690;
  if (!qword_27F22A690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void RenderingModeArtworkStyle.body(configuration:)(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F926E08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E100, &qword_24F95B9A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  if (sub_24F921C08())
  {
    v11 = sub_24F926E68();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v10, v2, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    sub_24F926E38();
    sub_24EB98570(v10);
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v13 = sub_24F926E88();

    (*(v5 + 8))(v7, v4);
    v24 = v13;
    LOWORD(v25) = 1;
    BYTE2(v25) = 0;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00, &unk_24F952720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B988, &qword_24F9878E0);
    sub_24E6E97A8();
    sub_24E760378();
    sub_24F924E28();
    v14 = v26;
    v15 = v28;
    v16 = v27;
    v24 = v26;
    HIWORD(v25) = v28 != 0;
    LOWORD(v25) = v27;
    sub_24E760544(v26, *(&v26 + 1), v27, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B968, &unk_24F952710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B970, &unk_24F9878D0);
    sub_24E7602EC();
    sub_24E760484();
    sub_24F924E28();

    sub_24E760584(v14, *(&v14 + 1), v16, v15);

    goto LABEL_5;
  }

  v17 = sub_24F921BF8();
  if (v17)
  {
    v18 = v17;
    *&v24 = swift_getKeyPath();
    *(&v24 + 1) = v18;
    LOWORD(v25) = 0;
    BYTE2(v25) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00, &unk_24F952720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B988, &qword_24F9878E0);
    sub_24E6E97A8();
    sub_24E760378();
    sub_24F924E28();
    v24 = v26;
    HIWORD(v25) = v28 != 0;
    LOWORD(v25) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B968, &unk_24F952710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B970, &unk_24F9878D0);
    sub_24E7602EC();
    sub_24E760484();
    sub_24F924E28();

LABEL_5:
    v20 = *(&v26 + 1);
    v19 = v26;
    v21 = v27 | (v28 << 16);
    if (v29)
    {
      v22 = 0x1000000;
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_8;
  }

  if (*(v1 + *(type metadata accessor for RenderingModeArtworkStyle(0) + 20)) != 1)
  {
    v19 = 0;
    v20 = 0;
    v23 = -16777216;
    goto LABEL_9;
  }

  v24 = sub_24F9251B8();
  v25 = 0x1000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B968, &unk_24F952710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B970, &unk_24F9878D0);
  sub_24E7602EC();
  sub_24E760484();
  sub_24F924E28();
  v20 = *(&v26 + 1);
  v19 = v26;
  v21 = v27 | (v28 << 16);
  if (v29)
  {
    v22 = 0x1000000;
  }

  else
  {
    v22 = 0;
  }

LABEL_8:
  v23 = v22 | v21;
LABEL_9:
  *a1 = v19;
  *(a1 + 8) = v20;
  *(a1 + 16) = v23;
}

uint64_t MediaArtwork.renderingMode(_:defaultBackground:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, double (**a3)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_24F926E68();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = sub_24F9289E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v13, v4, v9, v12);
  (*(v7 + 16))(&v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v14, v13, v9);
  result = (*(v7 + 32))(v16 + v15, &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  *(v16 + v15 + v8) = v20;
  v18 = v21;
  *v21 = sub_24EB98724;
  v18[1] = v16;
  return result;
}

__n128 sub_24EB98148@<Q0>(uint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X8>)
{
  v21 = a2;
  v20 = a1;
  v22 = a3;
  v3 = type metadata accessor for RenderingModeArtworkStyle(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A6C0, &qword_24F987998);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  sub_24F923998();
  sub_24F923998();
  sub_24F9289C8();
  v14 = sub_24F926E68();
  (*(*(v14 - 8) + 16))(v5, v20, v14);
  v5[*(v3 + 20)] = v21;
  sub_24EB98B30(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
  sub_24EB98B30(&qword_27F22A6C8, type metadata accessor for RenderingModeArtworkStyle, &protocol conformance descriptor for RenderingModeArtworkStyle);
  sub_24F925ED8();
  sub_24EB98B78(v5);
  (*(v7 + 8))(v9, v6);
  sub_24F927618();
  sub_24F9242E8();
  v15 = v22;
  (*(v11 + 32))(v22, v13, v10);
  v16 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A6D0, &unk_24F9879A0) + 36);
  v17 = v28;
  *(v16 + 64) = v27;
  *(v16 + 80) = v17;
  *(v16 + 96) = v29;
  v18 = v24;
  *v16 = v23;
  *(v16 + 16) = v18;
  result = v26;
  *(v16 + 32) = v25;
  *(v16 + 48) = result;
  return result;
}

uint64_t sub_24EB984C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F9245A8();
  *a1 = result;
  return result;
}

uint64_t sub_24EB984EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F9245A8();
  *a1 = result;
  return result;
}

uint64_t sub_24EB98570(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E100, &qword_24F95B9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EB985D8()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24F926E68();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

double sub_24EB98724@<D0>(uint64_t a1@<X8>)
{
  v3 = *(sub_24F9289E8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_24F926E68() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));
  v8 = *(v7 + *(v6 + 64));

  *&result = sub_24EB98148(v7, v8, a1).n128_u64[0];
  return result;
}

uint64_t sub_24EB98858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F926E68();
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
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24EB98938(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F926E68();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_24EB989F0(uint64_t a1)
{
  result = sub_24F926E68();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24EB98A68()
{
  result = qword_27F22A6A0;
  if (!qword_27F22A6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A6A8, &unk_24F987980);
    sub_24E7605D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A6A0);
  }

  return result;
}

uint64_t sub_24EB98B30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EB98B78(uint64_t a1)
{
  v2 = type metadata accessor for RenderingModeArtworkStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EB98C30()
{
  result = qword_27F22A6D8;
  if (!qword_27F22A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A6D8);
  }

  return result;
}

unint64_t sub_24EB98C88()
{
  result = qword_27F22A6E0;
  if (!qword_27F22A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A6E0);
  }

  return result;
}

unint64_t sub_24EB98CE0()
{
  result = qword_27F22A6E8;
  if (!qword_27F22A6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A6E8);
  }

  return result;
}

unint64_t sub_24EB98D38()
{
  result = qword_27F22A6F0;
  if (!qword_27F22A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A6F0);
  }

  return result;
}

uint64_t sub_24EB98DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F9289E8();
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

    return (v10 + 1);
  }
}

uint64_t sub_24EB98E98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F9289E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for HeroCardGameHeadingView(uint64_t a1)
{
  result = qword_27F22A6F8;
  if (!qword_27F22A6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EB98FA0(uint64_t a1)
{
  result = sub_24F9289E8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EB99030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FF8, &unk_24F987C20) - 8;
  MEMORY[0x28223BE20](v44);
  v45 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216760, &qword_24F945460);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v12 = sub_24F9289E8();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = type metadata accessor for GameIcon(0);
  v15 = v14[8];
  *&v11[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
  swift_storeEnumTagMultiPayload();
  v11[v14[5]] = 1;
  v11[v14[6]] = 1;
  v11[v14[7]] = 0;
  sub_24F927618();
  sub_24F9238C8();
  v16 = &v11[*(v7 + 44)];
  v17 = v52;
  *v16 = v51;
  *(v16 + 1) = v17;
  *(v16 + 2) = v53;
  v18 = (a1 + *(type metadata accessor for HeroCardGameHeadingView(0) + 20));
  v19 = v18[1];
  v47 = *v18;
  v48 = v19;
  sub_24E600AEC();

  v20 = sub_24F925E18();
  v22 = v21;
  LOBYTE(v14) = v23;
  sub_24F925A18();
  v24 = sub_24F925C98();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_24E600B40(v20, v22, v14 & 1);

  v47 = v24;
  v48 = v26;
  LOBYTE(v15) = v28 & 1;
  v49 = v28 & 1;
  v50 = v30;
  v31 = v42;
  sub_24F9268B8();
  sub_24E600B40(v24, v26, v15);

  LODWORD(v15) = sub_24F9251C8();
  *(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217358, &qword_24F9D1F60) + 36)) = v15;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1A8, &qword_24F94DAB0) + 36);
  v33 = *MEMORY[0x277CE13B8];
  v34 = sub_24F927748();
  (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
  KeyPath = swift_getKeyPath();
  v36 = v43;
  v37 = v31 + *(v44 + 44);
  *v37 = KeyPath;
  *(v37 + 8) = 1;
  *(v37 + 16) = 0;
  sub_24EB994E0(v11, v36);
  v38 = v45;
  sub_24EB99550(v31, v45);
  v39 = v46;
  sub_24EB994E0(v36, v46);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A710, &qword_24F987C98);
  sub_24EB99550(v38, v39 + *(v40 + 48));
  sub_24EB995C0(v31);
  sub_24EB99628(v11);
  sub_24EB995C0(v38);
  return sub_24EB99628(v36);
}

uint64_t sub_24EB9947C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24F9249A8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A708, &qword_24F987C18);
  return sub_24EB99030(v2, a2 + *(v4 + 44));
}

uint64_t sub_24EB994E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216760, &qword_24F945460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EB99550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FF8, &unk_24F987C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EB995C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FF8, &unk_24F987C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EB99628(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216760, &qword_24F945460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EB99694()
{
  result = qword_27F22A718;
  if (!qword_27F22A718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A720, &unk_24F987CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A718);
  }

  return result;
}

uint64_t sub_24EB9970C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_24EB997DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LinkableTextView(uint64_t a1)
{
  result = qword_27F22A728;
  if (!qword_27F22A728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EB998D8(uint64_t a1)
{
  type metadata accessor for LinkableTextViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_24E600550(319);
    if (v2 <= 0x3F)
    {
      sub_24E6D74E4(319);
      if (v3 <= 0x3F)
      {
        sub_24EB999AC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24EB999AC()
{
  if (!qword_27F2362D0)
  {
    v0 = sub_24F923578();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2362D0);
    }
  }
}

uint64_t sub_24EB99A18@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v2 = type metadata accessor for LinkableTextView(0);
  v3 = v2 - 8;
  v75 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v76 = v4;
  v77 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A738, &qword_24F987D20);
  MEMORY[0x28223BE20](v74);
  v6 = &v66 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A740, &qword_24F987D28);
  MEMORY[0x28223BE20](v72);
  v78 = &v66 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A748, &qword_24F987D30);
  MEMORY[0x28223BE20](v81);
  v80 = &v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A750, &unk_24F987D38);
  v83 = *(v9 - 8);
  v84 = v9;
  MEMORY[0x28223BE20](v9);
  v79 = &v66 - v10;
  v11 = sub_24F924848();
  v73 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v66 - v15;
  v17 = sub_24F91F008();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v82 = &v66 - v22;
  v23 = *v1;
  v24 = *(v3 + 44);
  v85 = v1;
  v25 = v1 + v24;
  v26 = *v25;
  if (v25[8] != 1)
  {

    sub_24F92BDC8();
    v27 = sub_24F9257A8();
    v71 = v11;
    v28 = v18;
    v29 = v17;
    v30 = v27;
    sub_24F921FD8();

    v17 = v29;
    v18 = v28;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v26, 0);
    (*(v73 + 8))(v13, v71);
    LOBYTE(v26) = v87;
  }

  sub_24E657254(v26 & 1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_24E601704(v16, &qword_27F215340, &qword_24F943530);
    v31 = 1;
    v32 = v86;
    v34 = v83;
    v33 = v84;
  }

  else
  {
    v35 = v82;
    (*(v18 + 32))(v82, v16, v17);
    v71 = v18;
    v36 = *(v18 + 16);
    v73 = v17;
    v36(v20, v35, v17);
    v70 = sub_24F925DF8();
    v69 = v37;
    v39 = v38;
    v68 = v40;
    v41 = v85;
    v42 = *(v85 + 8);
    KeyPath = swift_getKeyPath();
    v43 = *(v23 + 24);
    v44 = *(v23 + 32);
    v66 = swift_getKeyPath();
    *&v87 = v43;

    v45 = sub_24F9238D8();
    v46 = v39 & 1;
    LOBYTE(v87) = v39 & 1;
    v47 = swift_getKeyPath();
    v48 = v77;
    sub_24EB9AB00(v41, v77);
    v49 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v50 = swift_allocObject();
    sub_24EB9ACEC(v48, v50 + v49);
    v51 = &v6[*(v74 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222CE8, &qword_24F987DE0);
    sub_24F923A78();
    *v51 = v47;
    v52 = v69;
    *v6 = v70;
    *(v6 + 1) = v52;
    v6[16] = v46;
    v53 = KeyPath;
    *(v6 + 3) = v68;
    *(v6 + 4) = v53;
    v6[40] = v42;
    v54 = v66;
    *(v6 + 6) = v44;
    *(v6 + 7) = v54;
    *(v6 + 8) = v45;
    if (v42)
    {
      if (v42 == 1)
      {
        sub_24F927618();
      }

      else
      {
        sub_24F927638();
      }
    }

    else
    {
      sub_24F927628();
    }

    v55 = v72;
    v56 = v73;
    sub_24F9242E8();
    v57 = v78;
    sub_24EB9ADD0(v6, v78);
    v58 = (v57 + *(v55 + 36));
    v59 = v92;
    v58[4] = v91;
    v58[5] = v59;
    v58[6] = v93;
    v60 = v88;
    *v58 = v87;
    v58[1] = v60;
    v61 = v90;
    v58[2] = v89;
    v58[3] = v61;
    sub_24EB9AE40();
    v62 = v80;
    sub_24F9268A8();
    v63 = sub_24E601704(v57, &qword_27F22A740, &qword_24F987D28);
    MEMORY[0x28223BE20](v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A788, &qword_24F987E08);
    sub_24EB9B0FC();
    sub_24EB9B1B8();
    v64 = v79;
    sub_24F926668();
    sub_24E601704(v62, &qword_27F22A748, &qword_24F987D30);
    (*(v71 + 8))(v82, v56);
    v34 = v83;
    v33 = v84;
    v32 = v86;
    (*(v83 + 32))(v86, v64, v84);
    v31 = 0;
  }

  return (*(v34 + 56))(v32, v31, 1, v33);
}

void sub_24EB9A2F4()
{
  v0 = sub_24F921B58();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_24E657BB4();
  if (v4)
  {
    v5 = v4;
    sub_24F7695C8(v7);
    if (v8)
    {
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v6[3] = type metadata accessor for Action(0);
      v6[4] = sub_24EB9B370(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
      v6[0] = v5;
      type metadata accessor for LinkableTextView(0);

      sub_24F76973C(v3);
      sub_24F9218A8();
      (*(v1 + 8))(v3, v0);
      __swift_destroy_boxed_opaque_existential_1(v6);
      __swift_destroy_boxed_opaque_existential_1(v7);
    }

    else
    {
      sub_24E601704(v7, &unk_27F212740, &unk_24F940730);
    }

    sub_24F923A58();
  }

  else
  {

    MEMORY[0x282130C38]();
  }
}

uint64_t sub_24EB9A500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LinkableTextView(0);
  v9 = a1 + *(v8 + 44);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_5:
    v12 = a1 + *(v8 + 40);
    v13 = *v12;
    if (*(v12 + 8) == 1)
    {
      if (v13)
      {
        goto LABEL_7;
      }
    }

    else
    {

      sub_24F92BDC8();
      v15 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v13, 0);
      (*(v5 + 8))(v7, v4);
      if (v19)
      {
        goto LABEL_7;
      }
    }

    v18 = sub_24E657190();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A7C0, &unk_24F987E48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A7B8, &unk_24F987E18);
    sub_24E602068(&qword_27F22A7C8, &qword_27F22A7C0, &unk_24F987E48, MEMORY[0x277D83980]);
    sub_24EB9B2C0();
    sub_24F927228();
    v14 = 0;
    goto LABEL_10;
  }

  sub_24F92BDC8();
  v11 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E62A5EC(v10, 0);
  (*(v5 + 8))(v7, v4);
  if ((v20 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_7:
  v14 = 1;
LABEL_10:
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A7A8, &qword_24F987E10);
  return (*(*(v16 - 8) + 56))(a2, v14, 1, v16);
}