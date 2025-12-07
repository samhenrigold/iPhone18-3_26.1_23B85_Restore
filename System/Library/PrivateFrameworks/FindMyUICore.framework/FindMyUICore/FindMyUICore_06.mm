uint64_t sub_24B075FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B2D3694();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B28, &qword_24B2E1D68);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v14 - v9;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 24))
  {
    v14[0] = a2;
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v14[1] = sub_24B2D4BC4();
    sub_24B2D3674();
    sub_24B2D4714();
    (*(v5 + 8))(v7, v4);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B70, &qword_24B2E69A0);
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
    a2 = v14[0];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B70, &qword_24B2E69A0);
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  sub_24AFD7AAC(v10, a2);
}

uint64_t sub_24B076298()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AD0, &qword_24B2E1EB0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13[-1] - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AD8, &qword_24B2E1D30);
  MEMORY[0x28223BE20](v4);
  v6 = &v13[-1] - v5;
  v7 = v0[1];
  v12 = *v0;
  v13[0] = v7;
  *(v13 + 9) = *(v0 + 25);
  *v6 = sub_24B2D3DF4();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AE0, &qword_24B2E1D38);
  sub_24B075830(&v12, &v6[*(v8 + 44)]);
  v9 = *MEMORY[0x277CDF9A8];
  v10 = sub_24B2D3764();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  sub_24B0769FC(&qword_27EFC8AE8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_24B2D52A4();
  if (result)
  {
    sub_24B039184(&qword_27EFC8AF0, &qword_27EFC8AD8, &qword_24B2E1D30, MEMORY[0x277CE1198]);
    sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0, &qword_24B2E1EB0, MEMORY[0x277D84470]);
    sub_24B2D4774();
    sub_24AFF8258(v3, &qword_27EFC8AD0, &qword_24B2E1EB0);
    return sub_24AFF8258(v6, &qword_27EFC8AD8, &qword_24B2E1D30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B076520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B076550(a1, a2, a3);
  result = sub_24B2D3CE4();
  qword_27EFE44C8 = result;
  return result;
}

unint64_t sub_24B076550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFC8AC8;
  if (!qword_27EFC8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8AC8);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B0765C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_24B076610(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B076688(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B10, &qword_24B2E1D50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B076708()
{
  result = qword_27EFC8B30;
  if (!qword_27EFC8B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8B20, &qword_24B2E1D60);
    sub_24B039184(&qword_27EFC8B38, &qword_27EFC8B40, &qword_24B2E1D70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8B30);
  }

  return result;
}

unint64_t sub_24B0767C0()
{
  result = qword_27EFC8B48;
  if (!qword_27EFC8B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8B28, &qword_24B2E1D68);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8B48);
  }

  return result;
}

unint64_t sub_24B076874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFC8B58;
  if (!qword_27EFC8B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8B58);
  }

  return result;
}

uint64_t sub_24B0768C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B10, &qword_24B2E1D50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B076940()
{
  result = qword_27EFC8B90;
  if (!qword_27EFC8B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8B80, &qword_24B2ED860);
    sub_24B0769FC(&qword_27EFC8B98, type metadata accessor for PlatterWithIcon, &protocol conformance descriptor for PlatterWithIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8B90);
  }

  return result;
}

uint64_t sub_24B0769FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B076A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24B076A8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B076AD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B076B70@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v59 = a4;
  v58 = a3;
  v57 = a2;
  v56 = a1;
  v49 = a7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AD0, &qword_24B2E1EB0);
  MEMORY[0x28223BE20](v61);
  v60 = &v44 - v9;
  v13 = sub_24B076874(v10, v11, v12);
  v70 = a5;
  v71 = &type metadata for CustomLabelAndIconLabelStyle;
  v52 = a5;
  v72 = a6;
  v73 = v13;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_24B2D5144();
  v55 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  v14 = sub_24B2D4DA4();
  WitnessTable = swift_getWitnessTable();
  v70 = v14;
  v71 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_24B2D37B4();
  v70 = a5;
  v71 = &type metadata for CustomLabelAndIconLabelStyle;
  v72 = a6;
  v73 = v13;
  swift_getOpaqueTypeConformance2();
  v16 = sub_24B2D4DA4();
  v17 = swift_getWitnessTable();
  v70 = v16;
  v71 = v17;
  swift_getOpaqueTypeMetadata2();
  sub_24B2D37B4();
  sub_24B2D4DF4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EFC93C0, &qword_24B2E1EB8);
  sub_24B2D37B4();
  sub_24B2D37B4();
  swift_getTupleTypeMetadata2();
  sub_24B2D5144();
  sub_24B2D37B4();
  sub_24B2D3EE4();
  swift_getTupleTypeMetadata3();
  v18 = sub_24B2D5144();
  v19 = swift_getWitnessTable();
  v53 = v18;
  v51 = v19;
  v20 = sub_24B2D3484();
  v54 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - v21;
  v23 = sub_24B2D37B4();
  v48 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v55 = &v44 - v24;
  v50 = swift_getWitnessTable();
  v68 = v50;
  v69 = MEMORY[0x277CDFC60];
  v25 = swift_getWitnessTable();
  v26 = sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0, &qword_24B2E1EB0, MEMORY[0x277D84470]);
  v70 = v23;
  v71 = v61;
  v46 = v25;
  v72 = v25;
  v73 = v26;
  v45 = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v29 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v44 - v31;
  v62 = v52;
  v63 = a6;
  v64 = v56;
  v65 = v57 & 0x101;
  v66 = v58;
  v67 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8C28, &unk_24B2E1EC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B2DEAD0;
  LOBYTE(a6) = sub_24B2D42B4();
  *(inited + 32) = a6;
  v34 = sub_24B2D42D4();
  *(inited + 33) = v34;
  sub_24B2D42C4();
  sub_24B2D42C4();
  if (sub_24B2D42C4() != a6)
  {
    sub_24B2D42C4();
  }

  sub_24B2D42C4();
  if (sub_24B2D42C4() != v34)
  {
    sub_24B2D42C4();
  }

  v35 = v55;
  sub_24B2D3474();
  sub_24B2D5054();
  sub_24B2D4924();
  (*(v54 + 8))(v22, v20);
  v36 = *MEMORY[0x277CDF988];
  v37 = sub_24B2D3764();
  v38 = v60;
  (*(*(v37 - 8) + 104))(v60, v36, v37);
  sub_24B079280();
  result = sub_24B2D52A4();
  if (result)
  {
    v40 = v61;
    v41 = v46;
    v42 = v45;
    sub_24B2D4774();
    sub_24B0792D8(v38);
    (*(v48 + 8))(v35, v23);
    v70 = v23;
    v71 = v40;
    v72 = v41;
    v73 = v42;
    swift_getOpaqueTypeConformance2();
    sub_24B091A64();
    v43 = *(v47 + 8);
    v43(v29, OpaqueTypeMetadata2);
    sub_24B091A64();
    return (v43)(v32, OpaqueTypeMetadata2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B0773FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v190 = a4;
  v189 = a3;
  v174 = a1;
  v169 = a7;
  v181 = a2;
  LODWORD(v176) = a2 & 0x100;
  v9 = sub_24B076874(a1, a2, a3);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v188 = a5;
  v213 = a5;
  v214 = &type metadata for CustomLabelAndIconLabelStyle;
  v215 = a6;
  v216 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = sub_24B2D4DA4();
  v13 = sub_24B2D37B4();
  v144 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v141 = (&v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v140 = &v136 - v16;
  v182 = OpaqueTypeConformance2;
  v17 = sub_24B2D4DF4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EFC93C0, &qword_24B2E1EB8);
  v18 = sub_24B2D37B4();
  v19 = sub_24B2D37B4();
  swift_getTupleTypeMetadata2();
  v20 = sub_24B2D5144();
  v149 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v148 = &v136 - v21;
  v162 = v17;
  v171 = *(v17 - 8);
  MEMORY[0x28223BE20](v22);
  v139 = &v136 - v23;
  v147 = v18;
  v142 = *(v18 - 8);
  MEMORY[0x28223BE20](v24);
  v138 = &v136 - v25;
  v150 = v19;
  v143 = *(v19 - 8);
  MEMORY[0x28223BE20](v26);
  v146 = (&v136 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v145 = &v136 - v29;
  MEMORY[0x28223BE20](v30);
  v173 = &v136 - v31;
  MEMORY[0x28223BE20](v32);
  v172 = &v136 - v33;
  v167 = v34;
  v168 = v13;
  v166 = sub_24B2D3EE4();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v136 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v163 = &v136 - v37;
  v156 = *(v12 - 8);
  MEMORY[0x28223BE20](v38);
  v155 = &v136 - v39;
  WitnessTable = swift_getWitnessTable();
  v160 = v12;
  v213 = v12;
  v214 = WitnessTable;
  v186 = WitnessTable;
  v41 = swift_getOpaqueTypeMetadata2();
  v153 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v152 = &v136 - v42;
  v154 = v43;
  v180 = sub_24B2D37B4();
  v178 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v187 = &v136 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v179 = &v136 - v46;
  v183 = OpaqueTypeMetadata2;
  swift_getTupleTypeMetadata3();
  v47 = sub_24B2D5144();
  v48 = swift_getWitnessTable();
  v159 = v47;
  v157 = v48;
  v49 = sub_24B2D4DA4();
  v158 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v51 = &v136 - v50;
  v52 = swift_getWitnessTable();
  v213 = v49;
  v214 = v52;
  v53 = swift_getOpaqueTypeMetadata2();
  v151 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v55 = &v136 - v54;
  v177 = sub_24B2D37B4();
  v175 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v185 = &v136 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v184 = &v136 - v58;
  sub_24B2D5694();
  v161 = sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v136 - 6) = v188;
  *(&v136 - 5) = a6;
  v60 = a6;
  v170 = a6;
  v61 = v174;
  *(&v136 - 4) = v174;
  v62 = v181 & 1;
  *(&v136 - 24) = v62;
  v181 = v176 >> 8;
  *(&v136 - 23) = BYTE1(v176);
  v63 = v190;
  *(&v136 - 2) = v189;
  *(&v136 - 1) = v63;
  sub_24B2D3CD4();
  sub_24B2D4D94();
  sub_24B2D4A04();
  v158[1](v51, v49);
  v213 = v49;
  v214 = v52;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = v185;
  sub_24B2D49E4();
  (*(v151 + 8))(v55, v53);
  v211 = v64;
  v212 = MEMORY[0x277CDFC48];
  v151 = MEMORY[0x277CDFAD8];
  v66 = v177;
  v157 = swift_getWitnessTable();
  sub_24B091A64();
  v67 = *(v175 + 8);
  v159 = v175 + 8;
  v158 = v67;
  v68 = (v67)(v65, v66);
  MEMORY[0x28223BE20](v68);
  *(&v136 - 6) = v188;
  *(&v136 - 5) = v60;
  *(&v136 - 4) = v61;
  *(&v136 - 24) = v62;
  *(&v136 - 23) = v181;
  v69 = v190;
  *(&v136 - 2) = v189;
  *(&v136 - 1) = v69;
  sub_24B2D3CD4();
  v70 = v155;
  sub_24B2D4D94();
  v71 = v152;
  v72 = v160;
  v73 = v186;
  sub_24B2D4A04();
  v137 = *(v156 + 8);
  v137(v70, v72);
  v213 = v72;
  v214 = v73;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = v187;
  v76 = v154;
  sub_24B2D49E4();
  (*(v153 + 8))(v71, v76);
  v209 = v74;
  v210 = MEMORY[0x277CDFC48];
  v77 = v180;
  v153 = swift_getWitnessTable();
  sub_24B091A64();
  v78 = *(v178 + 8);
  v156 = v178 + 8;
  v154 = v78;
  v79 = (v78)(v75, v77);
  MEMORY[0x28223BE20](v79);
  v80 = v189;
  *(&v136 - 6) = v188;
  *(&v136 - 5) = v170;
  *(&v136 - 4) = v61;
  *(&v136 - 24) = v62;
  *(&v136 - 23) = v181;
  *(&v136 - 2) = v80;
  *(&v136 - 1) = v190;
  if (v176)
  {
    sub_24B2D3DF4();
    v90 = v139;
    sub_24B2D4DE4();
    LODWORD(v155) = v62;
    v91 = v162;
    v92 = swift_getWitnessTable();
    v93 = v138;
    v94 = v92;
    v152 = v92;
    sub_24B2D4A14();
    v95 = *(v171 + 8);
    v171 += 8;
    v160 = v95;
    v95(v90, v91);
    v96 = sub_24B039184(&qword_27EFC8C30, &unk_27EFC93C0, &qword_24B2E1EB8, MEMORY[0x277CE0868]);
    v195 = v94;
    v196 = v96;
    v176 = MEMORY[0x277CDFAD8];
    v97 = v147;
    v98 = swift_getWitnessTable();
    v99 = v173;
    v100 = v98;
    v144 = v98;
    sub_24B2D49E4();
    v151 = *(v142 + 8);
    (v151)(v93, v97);
    v193 = v100;
    v194 = MEMORY[0x277CDFC48];
    v101 = v150;
    v142 = swift_getWitnessTable();
    v102 = v99;
    sub_24B091A64();
    v103 = v143;
    v141 = *(v143 + 8);
    v104 = v141(v102, v101);
    v140 = &v136;
    MEMORY[0x28223BE20](v104);
    v105 = v170;
    *(&v136 - 6) = v188;
    *(&v136 - 5) = v105;
    *(&v136 - 4) = v174;
    *(&v136 - 24) = v155;
    *(&v136 - 23) = v181;
    v106 = v190;
    *(&v136 - 2) = v189;
    *(&v136 - 1) = v106;
    sub_24B2D3DF4();
    sub_24B2D4DE4();
    v107 = v162;
    sub_24B2D4A14();
    v160(v90, v107);
    v108 = v145;
    sub_24B2D49E4();
    (v151)(v93, v97);
    v109 = v173;
    v110 = v142;
    sub_24B091A64();
    v111 = v141;
    v141(v108, v101);
    v112 = *(v103 + 16);
    v112(v108, v172, v101);
    v213 = v108;
    v113 = v146;
    v112(v146, v109, v101);
    v214 = v113;
    v204 = v101;
    v205 = v101;
    v201 = v110;
    v202 = v110;
    v114 = v148;
    sub_24B080D98(&v213, 2uLL, &v204);
    v111(v113, v101);
    v111(v108, v101);
    v115 = v167;
    v116 = swift_getWitnessTable();
    v191 = v186;
    v192 = MEMORY[0x277CDFC48];
    v117 = v168;
    v118 = swift_getWitnessTable();
    v119 = v163;
    sub_24B088D90(v114, v115, v117, v116, v118);
    (*(v149 + 8))(v114, v115);
    v111(v173, v101);
    v120 = v101;
    v89 = v119;
    v111(v172, v120);
  }

  else
  {
    sub_24B2D3CD4();
    sub_24B2D4D94();
    v81 = v141;
    v82 = v186;
    sub_24B2D49E4();
    v137(v70, v72);
    v207 = v82;
    v208 = MEMORY[0x277CDFC48];
    v83 = v168;
    v84 = swift_getWitnessTable();
    v85 = v140;
    sub_24B091A64();
    v86 = *(v144 + 8);
    v86(v81, v83);
    sub_24B091A64();
    v87 = v167;
    v88 = swift_getWitnessTable();
    v89 = v163;
    sub_24B088E88(v81, v87, v83, v88, v84);
    v86(v81, v83);
    v86(v85, v83);
  }

  v121 = v185;
  v122 = v177;
  (*(v175 + 16))(v185, v184, v177);
  v213 = v121;
  v123 = v187;
  v124 = v179;
  v125 = v180;
  (*(v178 + 16))(v187, v179, v180);
  v214 = v123;
  v126 = v165;
  v127 = v164;
  v128 = v166;
  (*(v165 + 16))(v164, v89, v166);
  v215 = v127;
  v204 = v122;
  v205 = v125;
  v206 = v128;
  v201 = v157;
  v202 = v153;
  v129 = swift_getWitnessTable();
  v199 = v186;
  v200 = MEMORY[0x277CDFC48];
  v130 = swift_getWitnessTable();
  v197 = v129;
  v198 = v130;
  v203 = swift_getWitnessTable();
  sub_24B080D98(&v213, 3uLL, &v204);
  v131 = *(v126 + 8);
  v131(v89, v128);
  v132 = v124;
  v133 = v154;
  v154(v132, v125);
  v134 = v158;
  (v158)(v184, v122);
  v131(v127, v128);
  v133(v187, v125);
  (v134)(v185, v122);
}

uint64_t sub_24B078AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(__n128)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v22 = a3;
  v23 = a4;
  v20[3] = a2;
  v21 = a1;
  v24 = a7;
  v9 = sub_24B076874(a1, a2, a3);
  v33 = a5;
  v34 = &type metadata for CustomLabelAndIconLabelStyle;
  v35 = a6;
  v36 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v13 = (v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = v20 - v15;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B078DB0(v21, v22, a5, a6, v13);
  v33 = a5;
  v34 = &type metadata for CustomLabelAndIconLabelStyle;
  v35 = a6;
  v36 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24B091A64();
  v18 = *(v11 + 8);
  v18(v13, OpaqueTypeMetadata2);
  v31 = 0;
  v32 = 1;
  v33 = &v31;
  (*(v11 + 16))(v13, v16, OpaqueTypeMetadata2);
  v29 = 0;
  v30 = 1;
  v34 = v13;
  v35 = &v29;
  v28[0] = MEMORY[0x277CE1180];
  v28[1] = OpaqueTypeMetadata2;
  v28[2] = MEMORY[0x277CE1180];
  v25 = MEMORY[0x277CE1170];
  v26 = OpaqueTypeConformance2;
  v27 = MEMORY[0x277CE1170];
  sub_24B080D98(&v33, 3uLL, v28);
  v18(v16, OpaqueTypeMetadata2);
  v18(v13, OpaqueTypeMetadata2);
}

uint64_t sub_24B078DB0@<X0>(uint64_t a1@<X0>, void (*a2)(__n128)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v25 = a2;
  v26 = a5;
  v24 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24B076874(v9, v10, v11);
  v27 = a3;
  v28 = &type metadata for CustomLabelAndIconLabelStyle;
  v29 = a4;
  v30 = v12;
  v23 = MEMORY[0x277CDE608];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v23 - v19;
  v25(v18);
  sub_24B2D46C4();
  (*(v24 + 8))(v8, a3);
  v27 = a3;
  v28 = &type metadata for CustomLabelAndIconLabelStyle;
  v29 = a4;
  v30 = v12;
  swift_getOpaqueTypeConformance2();
  sub_24B091A64();
  v21 = *(v14 + 8);
  v21(v16, OpaqueTypeMetadata2);
  sub_24B091A64();
  return (v21)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_24B078FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(__n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20[1] = a7;
  v23 = a3;
  v24 = a4;
  v21 = a2;
  v22 = a1;
  v25 = a8;
  v10 = sub_24B076874(a1, a2, a3);
  v26 = a5;
  v27 = &type metadata for CustomLabelAndIconLabelStyle;
  v28 = a6;
  v29 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v20 - v16;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B078DB0(v22, v23, a5, a6, v14);
  v26 = a5;
  v27 = &type metadata for CustomLabelAndIconLabelStyle;
  v28 = a6;
  v29 = v10;
  swift_getOpaqueTypeConformance2();
  sub_24B091A64();
  v18 = *(v12 + 8);
  v18(v14, OpaqueTypeMetadata2);
  sub_24B091A64();
  v18(v17, OpaqueTypeMetadata2);
}

uint64_t sub_24B079234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_24B076B70(*v2, v3 | *(v2 + 8), *(v2 + 16), *(v2 + 24), *(a1 + 16), *(a1 + 24), a2);
}

unint64_t sub_24B079280()
{
  result = qword_27EFC8AE8;
  if (!qword_27EFC8AE8)
  {
    sub_24B2D3764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8AE8);
  }

  return result;
}

uint64_t sub_24B0792D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AD0, &qword_24B2E1EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B079358(uint64_t (*a1)(void, void, void, void, void, void))
{
  if (*(v1 + 41))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return a1(*(v1 + 32), v2 | *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 16), *(v1 + 24));
}

uint64_t sub_24B079398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 41))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_24B078FF8(*(v2 + 32), v3 | *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 16), *(v2 + 24), a1, a2);
}

uint64_t sub_24B0793F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B07A6C4(a1, a2, a3);
  sub_24B2D3C74();
  return v4;
}

void *sub_24B079434@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_24B07A6C4(a2, a3, a4);
  result = sub_24B2D3C74();
  *a1 = v6;
  return result;
}

uint64_t sub_24B0794D0(uint64_t a1)
{
  v3 = sub_24B2D3C64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 64);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_24B2D5924();
    v9 = sub_24B2D42A4();
    sub_24B2D3154();

    sub_24B2D3C54();
    swift_getAtKeyPath();
    sub_24AFEFDB8(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_24B079624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v31 = *(a1 + 24);
  sub_24B2D37B4();
  sub_24B2D37B4();
  sub_24B2D37B4();
  swift_getTupleTypeMetadata2();
  v3 = sub_24B2D5144();
  v29[0] = swift_getWitnessTable();
  v29[1] = v3;
  v4 = sub_24B2D4E14();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v29 - v5;
  v30 = v7;
  v8 = sub_24B2D37B4();
  v36 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v29 - v9;
  v37 = v11;
  v34 = sub_24B2D37B4();
  v38 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v35 = v29 - v14;
  v15 = sub_24B2D3764();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24B163A78(v18);
  sub_24B2D3754();
  v19 = (*(v16 + 8))(v18, v15);
  MEMORY[0x28223BE20](v19);
  sub_24B2D5064();
  sub_24B2D4E04();
  sub_24B0794D0(a1);
  sub_24B2D5064();
  v20 = v30;
  WitnessTable = swift_getWitnessTable();
  sub_24B2D4914();
  (*(v32 + 8))(v6, v20);
  sub_24B0794D0(a1);
  sub_24B2D5064();
  v42 = WitnessTable;
  v43 = MEMORY[0x277CDF678];
  v27 = v37;
  v28 = swift_getWitnessTable();
  v22 = v33;
  sub_24B2D4924();
  (*(v36 + 8))(v10, v27);
  v40 = v28;
  v41 = MEMORY[0x277CDFC60];
  v23 = v34;
  swift_getWitnessTable();
  v24 = v35;
  sub_24B091A64();
  v25 = *(v38 + 8);
  v25(v22, v23);
  sub_24B091A64();
  return (v25)(v24, v23);
}

uint64_t sub_24B079D34@<X0>(void (**a1)(uint64_t)@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a5;
  v65 = a4;
  v73 = a6;
  v64 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v61 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v11;
  v12 = sub_24B2D37B4();
  v67 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v63 = &v54 - v13;
  v68 = v14;
  v69 = sub_24B2D37B4();
  v71 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v72 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v66 = &v54 - v17;
  MEMORY[0x28223BE20](v18);
  v70 = &v54 - v19;
  v20 = *(a3 - 1);
  MEMORY[0x28223BE20](v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24B2D37B4();
  v74 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v54 - v28;
  sub_24B2D5694();
  v62 = sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1[2](isCurrentExecutor);
  sub_24B2D5064();
  v31 = v59;
  sub_24B2D4924();
  (*(v20 + 8))(v23, a3);
  v82 = v31;
  v83 = MEMORY[0x277CDFC60];
  v54 = MEMORY[0x277CDFAD8];
  v32 = v24;
  WitnessTable = swift_getWitnessTable();
  v55 = v29;
  sub_24B091A64();
  v33 = *(v74 + 8);
  v57 = v74 + 8;
  v58 = v33;
  v34 = (v33)(v26, v24);
  v35 = v61;
  (*a1)(v34);
  v36 = v60;
  v78 = v60;
  v79 = a3;
  v37 = v65;
  v80 = v65;
  v81 = v31;
  v38 = type metadata accessor for BubbleMessageTemplate(0, &v78);
  sub_24B0794D0(v38);
  sub_24B2D5064();
  v39 = v63;
  sub_24B2D4914();
  (*(v64 + 8))(v35, v36);
  sub_24B0794D0(v38);
  sub_24B2D5064();
  v77[4] = v37;
  v77[5] = MEMORY[0x277CDF678];
  v52 = v68;
  v53 = swift_getWitnessTable();
  v40 = v66;
  sub_24B2D4924();
  (*(v67 + 8))(v39, v52);
  v77[2] = v53;
  v77[3] = MEMORY[0x277CDFC60];
  v41 = v69;
  v42 = swift_getWitnessTable();
  v43 = v70;
  sub_24B091A64();
  v44 = v71;
  v45 = *(v71 + 8);
  v45(v40, v41);
  v46 = v26;
  v47 = v26;
  v48 = v55;
  (*(v74 + 16))(v47, v55, v32);
  v78 = v46;
  v49 = v72;
  (*(v44 + 16))(v72, v43, v41);
  v79 = v49;
  v77[0] = v32;
  v77[1] = v41;
  v75 = WitnessTable;
  v76 = v42;
  sub_24B080D98(&v78, 2uLL, v77);
  v45(v43, v41);
  v50 = v58;
  v58(v48, v32);
  v45(v49, v41);
  v50(v46, v32);
}

uint64_t sub_24B07A4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v14[0] = a4;
  v14[1] = MEMORY[0x277CE1428];
  v14[2] = a5;
  v14[3] = MEMORY[0x277CE1410];
  v10 = type metadata accessor for BubbleMessageTemplate(0, v14);
  v11 = *(v10 + 60);
  *(a6 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8C38, &qword_24B2E1F00);
  swift_storeEnumTagMultiPayload();
  v12 = a6 + *(v10 + 64);
  result = swift_getKeyPath();
  *v12 = result;
  *(v12 + 8) = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = nullsub_1;
  *(a6 + 24) = 0;
  *(a6 + 32) = a3;
  return result;
}

uint64_t sub_24B07A5FC(uint64_t a1)
{
  v2 = sub_24B2D3764();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24B2D3A74();
}

unint64_t sub_24B07A6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFC8C40;
  if (!qword_27EFC8C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8C40);
  }

  return result;
}

void sub_24B07A730(uint64_t a1)
{
  sub_24B07A804();
  if (v1 <= 0x3F)
  {
    sub_24B07A854(319);
    if (v2 <= 0x3F)
    {
      sub_24B07A8AC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24B07A804()
{
  result = qword_27EFC8CD0;
  if (!qword_27EFC8CD0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27EFC8CD0);
  }

  return result;
}

void sub_24B07A854(uint64_t a1)
{
  if (!qword_27EFC8CD8)
  {
    sub_24B2D3764();
    v1 = sub_24B2D3374();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFC8CD8);
    }
  }
}

void sub_24B07A8AC()
{
  if (!qword_27EFC8CE0)
  {
    v0 = sub_24B2D3374();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFC8CE0);
    }
  }
}

uint64_t getEnumTagSinglePayload for BubbleMessageTemplateContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7D)
  {
    goto LABEL_17;
  }

  if (a2 + 131 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 131) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 131;
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

      return (*a1 | (v4 << 8)) - 131;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 131;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for BubbleMessageTemplateContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 131 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 131) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7D)
  {
    v4 = 0;
  }

  if (a2 > 0x7C)
  {
    v5 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24B07AAB0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 6;
  v4 = (v1 | 0xFFFFFFFE) + 2 * (v1 >> 6);
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_BYTE *sub_24B07AAE0(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = (a2 & 1 | ((a2 >> 1) << 6)) + 64;
  }

  return result;
}

__n128 sub_24B07AB50@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8CE8, &unk_24B2F4F20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24B2E2040;
  sub_24B2D4AF4();
  *(v2 + 32) = sub_24B2D4F94();
  *(v2 + 40) = v3;
  sub_24B2D4A84();
  *(v2 + 48) = sub_24B2D4F94();
  *(v2 + 56) = v4;
  sub_24B2D4AF4();
  *(v2 + 64) = sub_24B2D4F94();
  *(v2 + 72) = v5;
  sub_24B2D5184();
  sub_24B2D4FA4();
  sub_24B2D3724();
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8CF0, &qword_24B2E20E0) + 36);
  sub_24B2D4FE4();
  v7 = sub_24B2D42F4();
  *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8CF8, &qword_24B2E20E8) + 36)) = v7;
  *(a1 + 32) = v11;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = v10;
  return result;
}

unint64_t sub_24B07AC88()
{
  result = qword_27EFC8D00;
  if (!qword_27EFC8D00)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8CF0, &qword_24B2E20E0);
    sub_24B07AD14(v1, v2, v3);
    sub_24B07AD68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8D00);
  }

  return result;
}

unint64_t sub_24B07AD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFC8D08;
  if (!qword_27EFC8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8D08);
  }

  return result;
}

unint64_t sub_24B07AD68()
{
  result = qword_27EFC8D10;
  if (!qword_27EFC8D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8CF8, &qword_24B2E20E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8D10);
  }

  return result;
}

void sub_24B07AE7C(uint64_t a1)
{
  sub_24B07AF68();
  if (v1 <= 0x3F)
  {
    sub_24B2D50F4();
    if (v2 <= 0x3F)
    {
      sub_24B07AFCC(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CustomControlStyle.BackgroundSize(319);
        if (v4 <= 0x3F)
        {
          sub_24B07B04C();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_24B07AF68()
{
  result = qword_27EFC8D38;
  if (!qword_27EFC8D38)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27EFC8D38);
  }

  return result;
}

void sub_24B07AFCC(uint64_t a1)
{
  if (!qword_27EFC8D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8D48, &unk_24B2E3B60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9390, &qword_24B2E2130);
    v1 = sub_24B2D1A84();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFC8D40);
    }
  }
}

void sub_24B07B04C()
{
  if (!qword_27EFC8D50)
  {
    v0 = sub_24B2D5A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFC8D50);
    }
  }
}

uint64_t getEnumTagSinglePayload for CustomControlStyle.BorderStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for CustomControlStyle.BorderStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24B07B208(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24B07B224(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void sub_24B07B24C(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_24B2D3364();
    if (v2 <= 0x3F)
    {
      sub_24B07B2D4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24B07B2D4()
{
  if (!qword_27EFC8D68)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EFC8D68);
    }
  }
}

uint64_t sub_24B07B350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E28, &qword_24B2E22A0);
  MEMORY[0x28223BE20](v62);
  v7 = &v55 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E30, &qword_24B2E22A8);
  v8 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v10 = &v55 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E38, &qword_24B2E22B0);
  MEMORY[0x28223BE20](v59);
  v61 = &v55 - v11;
  v57 = sub_24B2D4174();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E40, &qword_24B2E22B8);
  MEMORY[0x28223BE20](v58);
  v15 = &v55 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E48, &qword_24B2E22C0);
  v16 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v18 = &v55 - v17;
  sub_24B07F310(a1, v73);
  if (v74)
  {
    v55 = *(&v73[0] + 1);
    v19 = *&v73[0];
    v20 = sub_24B2D4AE4();
    KeyPath = swift_getKeyPath();
    sub_24B008890(v3, v7, &qword_27EFC8DF0, &qword_24B2E21D8);
    v22 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E58, &unk_24B2E2300) + 36)];
    *v22 = KeyPath;
    v22[1] = v20;
    v19(&v69, a2);
    v23 = __swift_project_boxed_opaque_existential_1(&v69, v72);
    v24 = MEMORY[0x28223BE20](v23);
    (*(v26 + 16))(&v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
    v27 = sub_24B2D4E24();
    v28 = sub_24B2D5064();
    v29 = v10;
    v30 = v62;
    v31 = &v7[*(v62 + 36)];
    *v31 = v27;
    v31[1] = v28;
    v31[2] = v32;
    __swift_destroy_boxed_opaque_existential_0(&v69);
    sub_24B2D4164();
    v33 = sub_24B07F380();
    v34 = sub_24B080194(&qword_27EFC8ED0, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    v35 = v57;
    sub_24B2D46D4();
    (*(v56 + 8))(v13, v35);
    sub_24AFF8258(v7, &qword_27EFC8E28, &qword_24B2E22A0);
    v36 = v29;
    v37 = v29;
    v38 = v64;
    (*(v8 + 16))(v61, v36, v64);
    swift_storeEnumTagMultiPayload();
    v39 = sub_24B07F718();
    v69 = v58;
    v70 = v35;
    v71 = v39;
    v72 = v34;
    swift_getOpaqueTypeConformance2();
    v69 = v30;
    v70 = v35;
    v71 = v33;
    v72 = v34;
    swift_getOpaqueTypeConformance2();
    sub_24B2D3ED4();

    return (*(v8 + 8))(v37, v38);
  }

  else
  {
    sub_24B07F7D0(v73, &v69);
    v41 = __swift_project_boxed_opaque_existential_1(&v69, v72);
    v42 = MEMORY[0x28223BE20](v41);
    (*(v44 + 16))(&v55 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
    v45 = sub_24B2D34A4();
    v46 = swift_getKeyPath();
    v65 = v45;
    v47 = sub_24B2D34A4();
    sub_24B008890(v3, v15, &qword_27EFC8DF0, &qword_24B2E21D8);
    v48 = v58;
    v49 = &v15[*(v58 + 36)];
    *v49 = v46;
    v49[1] = v47;
    sub_24B2D4164();
    v50 = sub_24B07F718();
    v51 = sub_24B080194(&qword_27EFC8ED0, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    v52 = v57;
    sub_24B2D46D4();
    (*(v56 + 8))(v13, v52);
    sub_24AFF8258(v15, &qword_27EFC8E40, &qword_24B2E22B8);
    v53 = v60;
    (*(v16 + 16))(v61, v18, v60);
    swift_storeEnumTagMultiPayload();
    v65 = v48;
    v66 = v52;
    v67 = v50;
    v68 = v51;
    swift_getOpaqueTypeConformance2();
    v54 = sub_24B07F380();
    v65 = v62;
    v66 = v52;
    v67 = v54;
    v68 = v51;
    swift_getOpaqueTypeConformance2();
    sub_24B2D3ED4();
    (*(v16 + 8))(v18, v53);
    return __swift_destroy_boxed_opaque_existential_0(&v69);
  }
}

uint64_t sub_24B07BB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8FD0, &qword_24B2E2410);
  MEMORY[0x28223BE20](v62);
  v7 = &v55 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8FD8, &qword_24B2E2418);
  v8 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v10 = &v55 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8FE0, &qword_24B2E2420);
  MEMORY[0x28223BE20](v59);
  v61 = &v55 - v11;
  v57 = sub_24B2D4174();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8FE8, &qword_24B2E2428);
  MEMORY[0x28223BE20](v58);
  v15 = &v55 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8FF0, &qword_24B2E2430);
  v16 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v18 = &v55 - v17;
  sub_24B07F310(a1, v73);
  if (v74)
  {
    v55 = *(&v73[0] + 1);
    v19 = *&v73[0];
    v20 = sub_24B2D4AE4();
    KeyPath = swift_getKeyPath();
    sub_24B008890(v3, v7, &qword_27EFC8FA8, &qword_24B2E23E8);
    v22 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8FF8, &qword_24B2E2438) + 36)];
    *v22 = KeyPath;
    v22[1] = v20;
    v19(&v69, a2);
    v23 = __swift_project_boxed_opaque_existential_1(&v69, v72);
    v24 = MEMORY[0x28223BE20](v23);
    (*(v26 + 16))(&v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
    v27 = sub_24B2D4E24();
    v28 = sub_24B2D5064();
    v29 = v10;
    v30 = v62;
    v31 = &v7[*(v62 + 36)];
    *v31 = v27;
    v31[1] = v28;
    v31[2] = v32;
    __swift_destroy_boxed_opaque_existential_0(&v69);
    sub_24B2D4164();
    v33 = sub_24B0801DC();
    v34 = sub_24B080194(&qword_27EFC8ED0, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    v35 = v57;
    sub_24B2D46D4();
    (*(v56 + 8))(v13, v35);
    sub_24AFF8258(v7, &qword_27EFC8FD0, &qword_24B2E2410);
    v36 = v29;
    v37 = v29;
    v38 = v64;
    (*(v8 + 16))(v61, v36, v64);
    swift_storeEnumTagMultiPayload();
    v39 = sub_24B0805B8();
    v69 = v58;
    v70 = v35;
    v71 = v39;
    v72 = v34;
    swift_getOpaqueTypeConformance2();
    v69 = v30;
    v70 = v35;
    v71 = v33;
    v72 = v34;
    swift_getOpaqueTypeConformance2();
    sub_24B2D3ED4();

    return (*(v8 + 8))(v37, v38);
  }

  else
  {
    sub_24B07F7D0(v73, &v69);
    v41 = __swift_project_boxed_opaque_existential_1(&v69, v72);
    v42 = MEMORY[0x28223BE20](v41);
    (*(v44 + 16))(&v55 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
    v45 = sub_24B2D34A4();
    v46 = swift_getKeyPath();
    v65 = v45;
    v47 = sub_24B2D34A4();
    sub_24B008890(v3, v15, &qword_27EFC8FA8, &qword_24B2E23E8);
    v48 = v58;
    v49 = &v15[*(v58 + 36)];
    *v49 = v46;
    v49[1] = v47;
    sub_24B2D4164();
    v50 = sub_24B0805B8();
    v51 = sub_24B080194(&qword_27EFC8ED0, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    v52 = v57;
    sub_24B2D46D4();
    (*(v56 + 8))(v13, v52);
    sub_24AFF8258(v15, &qword_27EFC8FE8, &qword_24B2E2428);
    v53 = v60;
    (*(v16 + 16))(v61, v18, v60);
    swift_storeEnumTagMultiPayload();
    v65 = v48;
    v66 = v52;
    v67 = v50;
    v68 = v51;
    swift_getOpaqueTypeConformance2();
    v54 = sub_24B0801DC();
    v65 = v62;
    v66 = v52;
    v67 = v54;
    v68 = v51;
    swift_getOpaqueTypeConformance2();
    sub_24B2D3ED4();
    (*(v16 + 8))(v18, v53);
    return __swift_destroy_boxed_opaque_existential_0(&v69);
  }
}

__n128 sub_24B07C3B8@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v86 = a2;
  v2 = type metadata accessor for CustomControlStyle.BackgroundSize(0);
  MEMORY[0x28223BE20](v2);
  v82 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v80 = &v74 - v5;
  MEMORY[0x28223BE20](v6);
  v79 = &v74 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v74 - v9;
  v11 = sub_24B2D3694();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8DD0, &qword_24B2E21C8);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v74 - v17;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8DC0, &qword_24B2E21C0);
  MEMORY[0x28223BE20](v76);
  v78 = &v74 - v19;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8DB0, &qword_24B2E21B8);
  MEMORY[0x28223BE20](v77);
  v88 = &v74 - v20;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8DA0, &qword_24B2E21B0);
  MEMORY[0x28223BE20](v81);
  v84 = &v74 - v21;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8D90, &qword_24B2E21A8);
  MEMORY[0x28223BE20](v83);
  v85 = &v74 - v22;
  sub_24B2D3674();
  sub_24B2D4254();
  sub_24B080194(&qword_27EFC8DD8, MEMORY[0x277CDE500], MEMORY[0x277CDE4F8]);
  sub_24B2D4714();
  (*(v12 + 8))(v14, v11);
  v23 = v75;
  v24 = __swift_project_boxed_opaque_existential_1(v75, v75[3]);
  v25 = MEMORY[0x28223BE20](v24);
  (*(v27 + 16))(&v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
  v28 = sub_24B2D34A4();
  KeyPath = swift_getKeyPath();
  *&v99 = v28;
  v30 = sub_24B2D34A4();
  v31 = &v18[*(v16 + 44)];
  *v31 = KeyPath;
  v31[1] = v30;
  v32 = sub_24B2D42E4();
  v33 = type metadata accessor for CustomControlStyle(0);
  v34 = *(v33 + 32);
  sub_24B07EAEC(v23 + v34, v10);
  v87 = v2;
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }
  }

  else
  {
    sub_24B07EB50(v10);
  }

  v35 = v78;
  sub_24B2D32F4();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_24B0391CC(v18, v35, &qword_27EFC8DD0, &qword_24B2E21C8);
  v44 = v35 + *(v76 + 36);
  *v44 = v32;
  *(v44 + 8) = v37;
  *(v44 + 16) = v39;
  *(v44 + 24) = v41;
  *(v44 + 32) = v43;
  *(v44 + 40) = 0;
  v45 = sub_24B2D4354();
  v46 = v79;
  sub_24B07EAEC(v23 + v34, v79);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }
  }

  else
  {
    sub_24B07EB50(v46);
  }

  sub_24B2D32F4();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v88;
  sub_24B0391CC(v35, v88, &qword_27EFC8DC0, &qword_24B2E21C0);
  v56 = v55 + *(v77 + 36);
  *v56 = v45;
  *(v56 + 8) = v48;
  *(v56 + 16) = v50;
  *(v56 + 24) = v52;
  *(v56 + 32) = v54;
  *(v56 + 40) = 0;
  v57 = v80;
  sub_24B07EAEC(v23 + v34, v80);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24B07EB50(v57);
  }

  else
  {
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }
  }

  v58 = v82;
  sub_24B07EAEC(v23 + v34, v82);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24B07EB50(v58);
    v59 = v84;
  }

  else
  {
    v87 = v33;
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    isCurrentExecutor = swift_task_isCurrentExecutor();
    v59 = v84;
    if ((isCurrentExecutor & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v33 = v87;
  }

  sub_24B2D5064();
  sub_24B2D3494();
  sub_24B0391CC(v88, v59, &qword_27EFC8DB0, &qword_24B2E21B8);
  v61 = (v59 + *(v81 + 36));
  v62 = v91;
  v63 = v89;
  v61[1] = v90;
  v61[2] = v62;
  *v61 = v63;
  if ((*(v23 + *(v33 + 44) + 8) & 1) == 0)
  {
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }
  }

  sub_24B2D5064();
  sub_24B2D3904();
  v64 = v85;
  sub_24B0391CC(v59, v85, &qword_27EFC8DA0, &qword_24B2E21B0);
  v65 = (v64 + *(v83 + 36));
  v66 = v97;
  v65[4] = v96;
  v65[5] = v66;
  v65[6] = v98;
  v67 = v93;
  *v65 = v92;
  v65[1] = v67;
  v68 = v95;
  v65[2] = v94;
  v65[3] = v68;
  sub_24B2D5064();
  sub_24B2D3904();
  v69 = v86;
  sub_24B0391CC(v64, v86, &qword_27EFC8D90, &qword_24B2E21A8);
  v70 = v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8D78, &qword_24B2E21A0) + 36);
  v71 = v104;
  *(v70 + 64) = v103;
  *(v70 + 80) = v71;
  *(v70 + 96) = v105;
  v72 = v100;
  *v70 = v99;
  *(v70 + 16) = v72;
  result = v102;
  *(v70 + 32) = v101;
  *(v70 + 48) = result;
  return result;
}

__n128 sub_24B07CE7C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v86 = a2;
  v2 = type metadata accessor for CustomControlStyle.BackgroundSize(0);
  MEMORY[0x28223BE20](v2);
  v82 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v80 = &v74 - v5;
  MEMORY[0x28223BE20](v6);
  v79 = &v74 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v74 - v9;
  v11 = sub_24B2D3694();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8F88, &qword_24B2E23E0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v74 - v17;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8F78, &qword_24B2E23D8);
  MEMORY[0x28223BE20](v76);
  v78 = &v74 - v19;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8F68, &qword_24B2E23D0);
  MEMORY[0x28223BE20](v77);
  v88 = &v74 - v20;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8F58, &qword_24B2E23C8);
  MEMORY[0x28223BE20](v81);
  v84 = &v74 - v21;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8F48, &qword_24B2E23C0);
  MEMORY[0x28223BE20](v83);
  v85 = &v74 - v22;
  sub_24B2D3674();
  sub_24B2D3FF4();
  sub_24B080194(&qword_27EFC8F90, MEMORY[0x277CDE170], MEMORY[0x277CDE168]);
  sub_24B2D4714();
  (*(v12 + 8))(v14, v11);
  v23 = v75;
  v24 = __swift_project_boxed_opaque_existential_1(v75, v75[3]);
  v25 = MEMORY[0x28223BE20](v24);
  (*(v27 + 16))(&v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
  v28 = sub_24B2D34A4();
  KeyPath = swift_getKeyPath();
  *&v99 = v28;
  v30 = sub_24B2D34A4();
  v31 = &v18[*(v16 + 44)];
  *v31 = KeyPath;
  v31[1] = v30;
  v32 = sub_24B2D42E4();
  v33 = type metadata accessor for CustomControlStyle(0);
  v34 = *(v33 + 32);
  sub_24B07EAEC(v23 + v34, v10);
  v87 = v2;
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }
  }

  else
  {
    sub_24B07EB50(v10);
  }

  v35 = v78;
  sub_24B2D32F4();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_24B0391CC(v18, v35, &qword_27EFC8F88, &qword_24B2E23E0);
  v44 = v35 + *(v76 + 36);
  *v44 = v32;
  *(v44 + 8) = v37;
  *(v44 + 16) = v39;
  *(v44 + 24) = v41;
  *(v44 + 32) = v43;
  *(v44 + 40) = 0;
  v45 = sub_24B2D4354();
  v46 = v79;
  sub_24B07EAEC(v23 + v34, v79);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }
  }

  else
  {
    sub_24B07EB50(v46);
  }

  sub_24B2D32F4();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v88;
  sub_24B0391CC(v35, v88, &qword_27EFC8F78, &qword_24B2E23D8);
  v56 = v55 + *(v77 + 36);
  *v56 = v45;
  *(v56 + 8) = v48;
  *(v56 + 16) = v50;
  *(v56 + 24) = v52;
  *(v56 + 32) = v54;
  *(v56 + 40) = 0;
  v57 = v80;
  sub_24B07EAEC(v23 + v34, v80);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24B07EB50(v57);
  }

  else
  {
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }
  }

  v58 = v82;
  sub_24B07EAEC(v23 + v34, v82);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24B07EB50(v58);
    v59 = v84;
  }

  else
  {
    v87 = v33;
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    isCurrentExecutor = swift_task_isCurrentExecutor();
    v59 = v84;
    if ((isCurrentExecutor & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v33 = v87;
  }

  sub_24B2D5064();
  sub_24B2D3494();
  sub_24B0391CC(v88, v59, &qword_27EFC8F68, &qword_24B2E23D0);
  v61 = (v59 + *(v81 + 36));
  v62 = v91;
  v63 = v89;
  v61[1] = v90;
  v61[2] = v62;
  *v61 = v63;
  if ((*(v23 + *(v33 + 44) + 8) & 1) == 0)
  {
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }
  }

  sub_24B2D5064();
  sub_24B2D3904();
  v64 = v85;
  sub_24B0391CC(v59, v85, &qword_27EFC8F58, &qword_24B2E23C8);
  v65 = (v64 + *(v83 + 36));
  v66 = v97;
  v65[4] = v96;
  v65[5] = v66;
  v65[6] = v98;
  v67 = v93;
  *v65 = v92;
  v65[1] = v67;
  v68 = v95;
  v65[2] = v94;
  v65[3] = v68;
  sub_24B2D5064();
  sub_24B2D3904();
  v69 = v86;
  sub_24B0391CC(v64, v86, &qword_27EFC8F48, &qword_24B2E23C0);
  v70 = v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8F30, &qword_24B2E23B8) + 36);
  v71 = v104;
  *(v70 + 64) = v103;
  *(v70 + 80) = v71;
  *(v70 + 96) = v105;
  v72 = v100;
  *v70 = v99;
  *(v70 + 16) = v72;
  result = v102;
  *(v70 + 32) = v101;
  *(v70 + 48) = result;
  return result;
}

uint64_t sub_24B07D940@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8DF0, &qword_24B2E21D8);
  MEMORY[0x28223BE20](v38);
  v4 = v36 - v3;
  v5 = sub_24B2D3964();
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CustomControlStyle.BackgroundSize(0);
  MEMORY[0x28223BE20](v8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B2D3364();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CustomControlStyle(0);
  sub_24B07EAEC(&a1[v15[8]], v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  else
  {
    sub_24B07EB50(v10);
    (*(v12 + 104))(v14, *MEMORY[0x277CDF440], v11);
  }

  v16 = a1[v15[9]];
  v41 = v5;
  v39 = v11;
  v37 = v14;
  if (v16 == 2)
  {
    sub_24B2D3954();
  }

  else if (v16 == 3)
  {
    sub_24B2D3944();
  }

  else
  {
    sub_24B2D3924();
  }

  v17 = *(a1 + 5);
  KeyPath = swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8D70, &qword_24B2E2198);
  (*(*(v19 - 8) + 16))(v4, v36[1], v19);
  v20 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8DF8, &qword_24B2E2210) + 36)];
  *v20 = KeyPath;
  v20[1] = v17;
  v21 = v15[6];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E00, &qword_24B2E2218) + 36);
  v23 = sub_24B2D50F4();
  (*(*(v23 - 8) + 16))(&v4[v22], &a1[v21], v23);
  v24 = __swift_project_boxed_opaque_existential_1(a1, *(a1 + 3));
  v25 = MEMORY[0x28223BE20](v24);
  (*(v27 + 16))(v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v25);

  *&v4[*(v38 + 36)] = sub_24B2D34A4();
  v28 = v42;
  sub_24B07B350(&a1[v15[7]], v7, v42);
  sub_24AFF8258(v4, &qword_27EFC8DF0, &qword_24B2E21D8);
  v29 = swift_getKeyPath();
  v30 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E08, &unk_24B2E2250) + 36));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E10, &qword_24B2E9E00);
  (*(v40 + 32))(v30 + *(v31 + 28), v7, v41);
  *v30 = v29;
  v32 = swift_getKeyPath();
  v33 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E18, &unk_24B2E2290) + 36));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E20, &qword_24B2EEC30);
  result = (*(v12 + 32))(v33 + *(v34 + 28), v37, v39);
  *v33 = v32;
  return result;
}

uint64_t sub_24B07DE8C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8FA8, &qword_24B2E23E8);
  MEMORY[0x28223BE20](v38);
  v4 = v36 - v3;
  v5 = sub_24B2D3964();
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CustomControlStyle.BackgroundSize(0);
  MEMORY[0x28223BE20](v8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B2D3364();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CustomControlStyle(0);
  sub_24B07EAEC(&a1[v15[8]], v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  else
  {
    sub_24B07EB50(v10);
    (*(v12 + 104))(v14, *MEMORY[0x277CDF440], v11);
  }

  v16 = a1[v15[9]];
  v41 = v5;
  v39 = v11;
  v37 = v14;
  if (v16 == 2)
  {
    sub_24B2D3954();
  }

  else if (v16 == 3)
  {
    sub_24B2D3944();
  }

  else
  {
    sub_24B2D3924();
  }

  v17 = *(a1 + 5);
  KeyPath = swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8F28, &qword_24B2E23B0);
  (*(*(v19 - 8) + 16))(v4, v36[1], v19);
  v20 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8FB0, &qword_24B2E23F0) + 36)];
  *v20 = KeyPath;
  v20[1] = v17;
  v21 = v15[6];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8FB8, &qword_24B2E23F8) + 36);
  v23 = sub_24B2D50F4();
  (*(*(v23 - 8) + 16))(&v4[v22], &a1[v21], v23);
  v24 = __swift_project_boxed_opaque_existential_1(a1, *(a1 + 3));
  v25 = MEMORY[0x28223BE20](v24);
  (*(v27 + 16))(v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v25);

  *&v4[*(v38 + 36)] = sub_24B2D34A4();
  v28 = v42;
  sub_24B07BB84(&a1[v15[7]], v7, v42);
  sub_24AFF8258(v4, &qword_27EFC8FA8, &qword_24B2E23E8);
  v29 = swift_getKeyPath();
  v30 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8FC0, &qword_24B2E2400) + 36));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E10, &qword_24B2E9E00);
  (*(v40 + 32))(v30 + *(v31 + 28), v7, v41);
  *v30 = v29;
  v32 = swift_getKeyPath();
  v33 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8FC8, &qword_24B2E2408) + 36));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E20, &qword_24B2EEC30);
  result = (*(v12 + 32))(v33 + *(v34 + 28), v37, v39);
  *v33 = v32;
  return result;
}

uint64_t sub_24B07E3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24B2D4284();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9310, &qword_24B2E2190);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8D70, &qword_24B2E2198);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  sub_24B2D4244();
  (*(v4 + 16))(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v11, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v13 = v15;
  v17 = a1;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8D78, &qword_24B2E21A0);
  sub_24B07E718();
  sub_24B2D4D24();
  sub_24B07D940(v13, v16);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_24B07E718()
{
  result = qword_27EFC8D80;
  if (!qword_27EFC8D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8D78, &qword_24B2E21A0);
    sub_24B07E7A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8D80);
  }

  return result;
}

unint64_t sub_24B07E7A4()
{
  result = qword_27EFC8D88;
  if (!qword_27EFC8D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8D90, &qword_24B2E21A8);
    sub_24B07E830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8D88);
  }

  return result;
}

unint64_t sub_24B07E830()
{
  result = qword_27EFC8D98;
  if (!qword_27EFC8D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8DA0, &qword_24B2E21B0);
    sub_24B07E8BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8D98);
  }

  return result;
}

unint64_t sub_24B07E8BC()
{
  result = qword_27EFC8DA8;
  if (!qword_27EFC8DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8DB0, &qword_24B2E21B8);
    sub_24B07E948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8DA8);
  }

  return result;
}

unint64_t sub_24B07E948()
{
  result = qword_27EFC8DB8;
  if (!qword_27EFC8DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8DC0, &qword_24B2E21C0);
    sub_24B07E9D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8DB8);
  }

  return result;
}

unint64_t sub_24B07E9D4()
{
  result = qword_27EFC8DC8;
  if (!qword_27EFC8DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8DD0, &qword_24B2E21C8);
    sub_24B2D4254();
    sub_24B080194(&qword_27EFC8DD8, MEMORY[0x277CDE500], MEMORY[0x277CDE4F8]);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8DE0, &qword_27EFC8DE8, &qword_24B2E21D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8DC8);
  }

  return result;
}

uint64_t sub_24B07EAEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomControlStyle.BackgroundSize(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B07EB50(uint64_t a1)
{
  v2 = type metadata accessor for CustomControlStyle.BackgroundSize(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B07EBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_24B2D5124();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D4024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8F20, &qword_24B2E23A8);
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v20 - v9;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8F28, &qword_24B2E23B0);
  v11 = *(v23 - 8);
  v12 = MEMORY[0x28223BE20](v23);
  v14 = &v20 - v13;
  (*(v7 + 16))(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v12);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  (*(v7 + 32))(v16 + v15, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v30 = a1;
  v17 = v21;
  v28 = a1;
  v29 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8F30, &qword_24B2E23B8);
  sub_24B2D4004();
  sub_24B07FDC0();
  sub_24B080194(&qword_27EFC8F98, MEMORY[0x277CDE188], MEMORY[0x277CDE180]);
  sub_24B2D44B4();
  sub_24B2D5114();
  sub_24B039184(&qword_27EFC8FA0, &qword_27EFC8F20, &qword_24B2E23A8, MEMORY[0x277CDE5B0]);
  v18 = v22;
  sub_24B2D4A24();
  (*(v25 + 8))(v5, v26);
  (*(v24 + 8))(v10, v18);
  sub_24B07DE8C(v17, v27);
  return (*(v11 + 8))(v14, v23);
}

uint64_t sub_24B07EFC0(char a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_24B2D3FE4();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v2(a1 & 1);
    sub_24AFD5890(v4, v5);
  }
}

uint64_t sub_24B07F090()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D4014();
}

uint64_t sub_24B07F140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  v14 = a4;
  v15 = a6;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a5(isCurrentExecutor);
  v15(a2);
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_24B07F2B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B2D3C34();
  *a1 = result;
  return result;
}

uint64_t sub_24B07F310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E50, &qword_24B2E22C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B07F380()
{
  result = qword_27EFC8E60;
  if (!qword_27EFC8E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8E28, &qword_24B2E22A0);
    sub_24B07F438();
    sub_24B039184(&qword_27EFC8EC0, &qword_27EFC8EC8, &qword_24B2E2320, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8E60);
  }

  return result;
}

unint64_t sub_24B07F438()
{
  result = qword_27EFC8E68;
  if (!qword_27EFC8E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8E58, &unk_24B2E2300);
    sub_24B07F4F0();
    sub_24B039184(&qword_27EFC8EB0, &qword_27EFC8EB8, &qword_24B2EE960, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8E68);
  }

  return result;
}

unint64_t sub_24B07F4F0()
{
  result = qword_27EFC8E70;
  if (!qword_27EFC8E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8DF0, &qword_24B2E21D8);
    sub_24B07F5A8();
    sub_24B039184(&qword_27EFC8EA0, &qword_27EFC8EA8, &unk_24B2E2310, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8E70);
  }

  return result;
}

unint64_t sub_24B07F5A8()
{
  result = qword_27EFC8E78;
  if (!qword_27EFC8E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8E00, &qword_24B2E2218);
    sub_24B07F634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8E78);
  }

  return result;
}

unint64_t sub_24B07F634()
{
  result = qword_27EFC8E80;
  if (!qword_27EFC8E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8DF8, &qword_24B2E2210);
    sub_24B039184(&qword_27EFC8E88, &qword_27EFC8D70, &qword_24B2E2198, MEMORY[0x277CDF028]);
    sub_24B039184(&qword_27EFC8E90, &qword_27EFC8E98, &unk_24B2E4B20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8E80);
  }

  return result;
}

unint64_t sub_24B07F718()
{
  result = qword_27EFC8ED8;
  if (!qword_27EFC8ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8E40, &qword_24B2E22B8);
    sub_24B07F4F0();
    sub_24B039184(&qword_27EFC8DE0, &qword_27EFC8DE8, &qword_24B2E21D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8ED8);
  }

  return result;
}

uint64_t sub_24B07F7D0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_24B07F7E8()
{
  result = qword_27EFC8EE0;
  if (!qword_27EFC8EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8E18, &unk_24B2E2290);
    sub_24B07F8A0();
    sub_24B039184(&qword_27EFC8F08, &qword_27EFC8E20, &qword_24B2EEC30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8EE0);
  }

  return result;
}

unint64_t sub_24B07F8A0()
{
  result = qword_27EFC8EE8;
  if (!qword_27EFC8EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8E08, &unk_24B2E2250);
    sub_24B07F958();
    sub_24B039184(&qword_27EFC8F00, &qword_27EFC8E10, &qword_24B2E9E00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8EE8);
  }

  return result;
}

unint64_t sub_24B07F958()
{
  result = qword_27EFC8EF0;
  if (!qword_27EFC8EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8EF8, &qword_24B2E2358);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8E40, &qword_24B2E22B8);
    sub_24B2D4174();
    sub_24B07F718();
    sub_24B080194(&qword_27EFC8ED0, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8E28, &qword_24B2E22A0);
    sub_24B07F380();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8EF0);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomControlStyle(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomControlStyle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24B07FBD4(uint64_t a1)
{
  result = type metadata accessor for CustomControlStyle(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t objectdestroyTm_1(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_24B07FCEC(char a1)
{
  sub_24B2D4024();

  return sub_24B07EFC0(a1);
}

unint64_t sub_24B07FDC0()
{
  result = qword_27EFC8F38;
  if (!qword_27EFC8F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8F30, &qword_24B2E23B8);
    sub_24B07FE4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8F38);
  }

  return result;
}

unint64_t sub_24B07FE4C()
{
  result = qword_27EFC8F40;
  if (!qword_27EFC8F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8F48, &qword_24B2E23C0);
    sub_24B07FED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8F40);
  }

  return result;
}

unint64_t sub_24B07FED8()
{
  result = qword_27EFC8F50;
  if (!qword_27EFC8F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8F58, &qword_24B2E23C8);
    sub_24B07FF64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8F50);
  }

  return result;
}

unint64_t sub_24B07FF64()
{
  result = qword_27EFC8F60;
  if (!qword_27EFC8F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8F68, &qword_24B2E23D0);
    sub_24B07FFF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8F60);
  }

  return result;
}

unint64_t sub_24B07FFF0()
{
  result = qword_27EFC8F70;
  if (!qword_27EFC8F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8F78, &qword_24B2E23D8);
    sub_24B08007C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8F70);
  }

  return result;
}

unint64_t sub_24B08007C()
{
  result = qword_27EFC8F80;
  if (!qword_27EFC8F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8F88, &qword_24B2E23E0);
    sub_24B2D3FF4();
    sub_24B080194(&qword_27EFC8F90, MEMORY[0x277CDE170], MEMORY[0x277CDE168]);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8DE0, &qword_27EFC8DE8, &qword_24B2E21D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8F80);
  }

  return result;
}

uint64_t sub_24B080194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B0801DC()
{
  result = qword_27EFC9000;
  if (!qword_27EFC9000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8FD0, &qword_24B2E2410);
    sub_24B080294();
    sub_24B039184(&qword_27EFC8EC0, &qword_27EFC8EC8, &qword_24B2E2320, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9000);
  }

  return result;
}

unint64_t sub_24B080294()
{
  result = qword_27EFC9008;
  if (!qword_27EFC9008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8FF8, &qword_24B2E2438);
    sub_24B08034C();
    sub_24B039184(&qword_27EFC8EB0, &qword_27EFC8EB8, &qword_24B2EE960, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9008);
  }

  return result;
}

unint64_t sub_24B08034C()
{
  result = qword_27EFC9010;
  if (!qword_27EFC9010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8FA8, &qword_24B2E23E8);
    sub_24B080404();
    sub_24B039184(&qword_27EFC8EA0, &qword_27EFC8EA8, &unk_24B2E2310, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9010);
  }

  return result;
}

unint64_t sub_24B080404()
{
  result = qword_27EFC9018;
  if (!qword_27EFC9018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8FB8, &qword_24B2E23F8);
    sub_24B080490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9018);
  }

  return result;
}

unint64_t sub_24B080490()
{
  result = qword_27EFC9020;
  if (!qword_27EFC9020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8FB0, &qword_24B2E23F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8F20, &qword_24B2E23A8);
    sub_24B039184(&qword_27EFC8FA0, &qword_27EFC8F20, &qword_24B2E23A8, MEMORY[0x277CDE5B0]);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8E90, &qword_27EFC8E98, &unk_24B2E4B20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9020);
  }

  return result;
}

unint64_t sub_24B0805B8()
{
  result = qword_27EFC9028;
  if (!qword_27EFC9028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8FE8, &qword_24B2E2428);
    sub_24B08034C();
    sub_24B039184(&qword_27EFC8DE0, &qword_27EFC8DE8, &qword_24B2E21D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9028);
  }

  return result;
}

unint64_t sub_24B080670()
{
  result = qword_27EFC9030;
  if (!qword_27EFC9030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8FC8, &qword_24B2E2408);
    sub_24B080728();
    sub_24B039184(&qword_27EFC8F08, &qword_27EFC8E20, &qword_24B2EEC30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9030);
  }

  return result;
}

unint64_t sub_24B080728()
{
  result = qword_27EFC9038;
  if (!qword_27EFC9038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8FC0, &qword_24B2E2400);
    sub_24B0807E0();
    sub_24B039184(&qword_27EFC8F00, &qword_27EFC8E10, &qword_24B2E9E00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9038);
  }

  return result;
}

unint64_t sub_24B0807E0()
{
  result = qword_27EFC9040;
  if (!qword_27EFC9040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9048, &unk_24B2E2440);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8FE8, &qword_24B2E2428);
    sub_24B2D4174();
    sub_24B0805B8();
    sub_24B080194(&qword_27EFC8ED0, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8FD0, &qword_24B2E2410);
    sub_24B0801DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9040);
  }

  return result;
}

uint64_t sub_24B080968@<X0>(char *a1@<X8>)
{
  v21 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9058, &qword_24B2E24B0);
  MEMORY[0x28223BE20](v20);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = sub_24B2D4044();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D4054();
  sub_24B2D4064();
  KeyPath = swift_getKeyPath();
  v14 = &v5[*(v20 + 36)];
  *v14 = KeyPath;
  v14[8] = 0;
  v15 = *(v7 + 16);
  v15(v9, v12, v6);
  sub_24B080C5C(v5, v2);
  v16 = v21;
  v15(v21, v9, v6);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9060, &qword_24B2E24E8);
  sub_24B080C5C(v2, &v16[*(v17 + 48)]);
  sub_24B080CCC(v5);
  v18 = *(v7 + 8);
  v18(v12, v6);
  sub_24B080CCC(v2);
  v18(v9, v6);
}

uint64_t sub_24B080C04@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24B2D3CD4();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9050, &qword_24B2E24A8);
  return sub_24B080968((a2 + *(v3 + 44)));
}

uint64_t sub_24B080C5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9058, &qword_24B2E24B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B080CCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9058, &qword_24B2E24B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B080D34()
{
  result = qword_27EFC9068;
  if (!qword_27EFC9068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFC9070, &qword_24B2E24F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9068);
  }

  return result;
}

uint64_t sub_24B080D98(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_24B2D5154();
}

uint64_t sub_24B080F68(__int16 a1)
{
  v2 = sub_24B2D4A54();
  v5 = MEMORY[0x28223BE20](v2);
  if ((a1 & 0x100) != 0 || (a1 & 1) == 0)
  {

    return sub_24B2D4B54();
  }

  else
  {
    (*(v4 + 104))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v5);
    return sub_24B2D4B74();
  }
}

double sub_24B08106C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_24B2D4BD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_24B2D4C24();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v8 = sub_24B2D4C14();

  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFC9170, &unk_24B2E4990);
  sub_24B2D3404();
  sub_24B2D3404();
  sub_24B2D5064();
  sub_24B2D3494();
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v12 = v17;
  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  result = *&v18;
  *(a1 + 40) = v18;
  return result;
}

uint64_t sub_24B081294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  v8 = sub_24B2D4494();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = a4;
  type metadata accessor for IconTextBubbleMessageTemplate.DynamicScaledIcon(0, a1, a2, v12);
  v17[1] = 0x3FF0000000000000;
  v13 = (*(v9 + 104))(v11, *MEMORY[0x277CE0A70], v8);
  sub_24B083C54(v13, v14, v15);
  return sub_24B2D33F4();
}

uint64_t sub_24B0813C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = v3;
  v24 = a1;
  v25 = a2;
  v5 = *(a1 + 16);
  v26 = *(a1 + 24);
  v23 = v5;
  type metadata accessor for IconTextBubbleMessageTemplate.DynamicScaledIcon(255, v5, v26, a3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8AD0, &qword_24B2E1EB0);
  swift_getWitnessTable();
  sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0, &qword_24B2E1EB0, MEMORY[0x277D84470]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC90F8, &qword_24B2E25F0);
  sub_24B2D37B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9100, &qword_24B2E25F8);
  swift_getTupleTypeMetadata2();
  sub_24B2D5144();
  swift_getWitnessTable();
  sub_24B2D4DF4();
  sub_24B2D37B4();
  v27[16] = swift_getWitnessTable();
  v27[17] = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B2D5A84();
  sub_24B2D37B4();
  v27[15] = v26;
  v27[13] = swift_getWitnessTable();
  v27[14] = MEMORY[0x277CDFC48];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B2D5144();
  swift_getWitnessTable();
  sub_24B2D4DF4();
  sub_24B2D37B4();
  sub_24B2D37B4();
  v6 = sub_24B2D37B4();
  WitnessTable = swift_getWitnessTable();
  v8 = MEMORY[0x277CDF918];
  v27[11] = WitnessTable;
  v27[12] = MEMORY[0x277CDF918];
  v27[9] = swift_getWitnessTable();
  v27[10] = v8;
  v27[7] = swift_getWitnessTable();
  v27[8] = v8;
  v9 = swift_getWitnessTable();
  v27[0] = v6;
  v27[1] = MEMORY[0x277CE1428];
  v27[2] = v9;
  v27[3] = MEMORY[0x277CE1410];
  v10 = type metadata accessor for BubbleMessageTemplate(0, v27);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  v17 = swift_allocObject();
  v18 = v26;
  *(v17 + 16) = v23;
  *(v17 + 24) = v18;
  v19 = *(v4 + 16);
  *(v17 + 32) = *v4;
  *(v17 + 48) = v19;
  *(v17 + 64) = *(v4 + 32);
  *(v17 + 79) = *(v4 + 47);
  sub_24B07A4D8(sub_24B0838C8, v17, *(v4 + 50), v6, v9, v13);
  swift_getWitnessTable();
  sub_24B091A64();
  (*(*(v24 - 8) + 16))(v27, v4);
  v20 = *(v11 + 8);
  v20(v13, v10);
  sub_24B091A64();
  return (v20)(v16, v10);
}

uint64_t sub_24B081918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v31 = a2;
  v3 = *(a1 + 24);
  v27 = *(a1 + 16);
  v4 = v3;
  v26 = v3;
  type metadata accessor for IconTextBubbleMessageTemplate.DynamicScaledIcon(255, v27, v3, a3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8AD0, &qword_24B2E1EB0);
  swift_getWitnessTable();
  v6 = sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0, &qword_24B2E1EB0, MEMORY[0x277D84470]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC90F8, &qword_24B2E25F0);
  sub_24B2D37B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9100, &qword_24B2E25F8);
  swift_getTupleTypeMetadata2();
  sub_24B2D5144();
  swift_getWitnessTable();
  sub_24B2D4DF4();
  sub_24B2D37B4();
  v29 = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v43 = MEMORY[0x277CDFC60];
  v28 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B2D5A84();
  v7 = sub_24B2D37B4();
  v41 = v4;
  v39 = swift_getWitnessTable();
  v40 = MEMORY[0x277CDFC48];
  v44 = v7;
  v45 = v5;
  v46 = swift_getWitnessTable();
  v47 = v6;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B2D5144();
  swift_getWitnessTable();
  v8 = sub_24B2D4DF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = sub_24B2D37B4();
  v24 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = sub_24B2D37B4();
  v25 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  v18 = *(v30 + 49);
  v32 = v27;
  v33 = v26;
  v34 = v30;
  sub_24B2D3DF4();
  v19 = 0x4034000000000000;
  if (v18)
  {
    v19 = 0x4028000000000000;
  }

  v30 = v19;
  sub_24B2D4DE4();
  sub_24B2D4304();
  v20 = swift_getWitnessTable();
  sub_24B2D4974();
  (*(v9 + 8))(v11, v8);
  sub_24B2D4314();
  v21 = MEMORY[0x277CDF918];
  v37 = v20;
  v38 = MEMORY[0x277CDF918];
  v22 = swift_getWitnessTable();
  sub_24B2D4974();
  (*(v24 + 8))(v14, v12);
  sub_24B2D42E4();
  v35 = v22;
  v36 = v21;
  swift_getWitnessTable();
  sub_24B2D4974();
  return (*(v25 + 8))(v17, v15);
}

uint64_t sub_24B081F28@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v98 = a1;
  v82 = a4;
  v6 = sub_24B2D5A84();
  v90 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v89 = &v74 - v7;
  v8 = sub_24B2D37B4();
  v79 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v92 = &v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC8AD0, &qword_24B2E1EB0);
  v111 = a3;
  v91 = v6;
  WitnessTable = swift_getWitnessTable();
  v109 = WitnessTable;
  v110 = MEMORY[0x277CDFC48];
  v11 = swift_getWitnessTable();
  v12 = sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0, &qword_24B2E1EB0, MEMORY[0x277D84470]);
  v81 = v8;
  v105 = v8;
  v106 = v10;
  v75 = v11;
  v107 = v11;
  v108 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v78 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v77 = &v74 - v15;
  MEMORY[0x28223BE20](v16);
  v101 = &v74 - v17;
  v96 = a2;
  v97 = a3;
  v19 = type metadata accessor for IconTextBubbleMessageTemplate.DynamicScaledIcon(255, a2, a3, v18);
  v20 = swift_getWitnessTable();
  v105 = v19;
  v106 = v10;
  v107 = v20;
  v108 = v12;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC90F8, &qword_24B2E25F0);
  sub_24B2D37B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9100, &qword_24B2E25F8);
  swift_getTupleTypeMetadata2();
  v21 = sub_24B2D5144();
  v22 = swift_getWitnessTable();
  v94 = v21;
  v93 = v22;
  v23 = sub_24B2D4DF4();
  v95 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v74 - v24;
  v26 = sub_24B2D37B4();
  v85 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v74 - v27;
  v104[2] = swift_getWitnessTable();
  v104[3] = MEMORY[0x277CDFC60];
  v29 = swift_getWitnessTable();
  v105 = v26;
  v106 = v10;
  v84 = v10;
  v83 = v29;
  v107 = v29;
  v108 = v12;
  v100 = v12;
  v87 = swift_getOpaqueTypeMetadata2();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v99 = &v74 - v33;
  sub_24B2D5694();
  v74 = sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  v35 = v98;
  sub_24B2D3DF4();
  sub_24B2D4DE4();
  sub_24B2D5064();
  sub_24B2D4924();
  (*(v95 + 8))(v25, v23);
  v36 = *MEMORY[0x277CDF9B8];
  v37 = sub_24B2D3764();
  v38 = *(v37 - 8);
  v39 = *(v38 + 104);
  v40 = v38 + 104;
  v41 = v101;
  v39(v101, v36, v37);
  v42 = sub_24B079280();
  result = sub_24B2D52A4();
  if (result)
  {
    v96 = v39;
    v44 = v84;
    v97 = v42;
    v45 = v83;
    v95 = v40;
    v46 = v100;
    sub_24B2D4774();
    sub_24AFF8258(v41, &qword_27EFC8AD0, &qword_24B2E1EB0);
    v85[1](v28, v26);
    v105 = v26;
    v106 = v44;
    v47 = v44;
    v107 = v45;
    v108 = v46;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = v87;
    v83 = OpaqueTypeConformance2;
    sub_24B091A64();
    v50 = v86;
    v51 = *(v86 + 8);
    v94 = v31;
    v93 = v86 + 8;
    v85 = v51;
    v52 = (v51)(v31, v49);
    v53 = *(v35 + 32);
    v54 = v89;
    v53(v52);
    v55 = v92;
    v56 = v91;
    sub_24B2D49E4();
    v57 = v54;
    v58 = v101;
    (*(v90 + 8))(v57, v56);
    v96(v58, *MEMORY[0x277CDF9A8], v37);
    result = sub_24B2D52A4();
    if (result)
    {
      v59 = v78;
      v60 = v50;
      v61 = v81;
      v62 = v47;
      v63 = v75;
      v64 = v100;
      sub_24B2D4774();
      sub_24AFF8258(v58, &qword_27EFC8AD0, &qword_24B2E1EB0);
      (*(v79 + 8))(v55, v61);
      v105 = v61;
      v106 = v62;
      v107 = v63;
      v108 = v64;
      v65 = swift_getOpaqueTypeConformance2();
      v66 = v77;
      v67 = OpaqueTypeMetadata2;
      sub_24B091A64();
      v68 = v76;
      v69 = *(v76 + 8);
      v69(v59, v67);
      v70 = *(v60 + 16);
      v71 = v94;
      v72 = v99;
      v70(v94, v99, v49);
      v105 = v71;
      (*(v68 + 16))(v59, v66, v67);
      v106 = v59;
      v104[0] = v49;
      v104[1] = v67;
      v102 = v83;
      v103 = v65;
      sub_24B080D98(&v105, 2uLL, v104);
      v69(v66, v67);
      v73 = v85;
      (v85)(v72, v49);
      v69(v59, v67);
      (v73)(v71, v49);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24B082A98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v68 = a1;
  v63 = a4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9100, &qword_24B2E25F8);
  MEMORY[0x28223BE20](v65);
  v66 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AD0, &qword_24B2E1EB0);
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  v69 = a2;
  v70 = a3;
  v13 = type metadata accessor for IconTextBubbleMessageTemplate.DynamicScaledIcon(0, a2, a3, v12);
  v59 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = (&v54 - v14);
  WitnessTable = swift_getWitnessTable();
  v17 = sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0, &qword_24B2E1EB0, MEMORY[0x277D84470]);
  *&v89 = v13;
  *(&v89 + 1) = v9;
  v58 = v9;
  v18 = WitnessTable;
  *&v90 = WitnessTable;
  *(&v90 + 1) = v17;
  v19 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v22 = &v54 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC90F8, &qword_24B2E25F0);
  v57 = OpaqueTypeMetadata2;
  v64 = sub_24B2D37B4();
  v61 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v60 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v67 = &v54 - v25;
  sub_24B2D5694();
  v62 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = 56.0;
  if (*(v68 + 49))
  {
    v26 = 44.0;
  }

  v27 = v15;
  sub_24B081294(v69, v70, v15, v26);
  v28 = *MEMORY[0x277CDF998];
  v29 = sub_24B2D3764();
  (*(*(v29 - 8) + 104))(v11, v28, v29);
  sub_24B079280();
  result = sub_24B2D52A4();
  if (result)
  {
    v31 = v58;
    sub_24B2D4774();
    sub_24AFF8258(v11, &qword_27EFC8AD0, &qword_24B2E1EB0);
    (*(v59 + 8))(v27, v13);
    *&v89 = v13;
    *(&v89 + 1) = v31;
    *&v90 = v18;
    *(&v90 + 1) = v19;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v33 = v60;
    v34 = v57;
    sub_24B2D4754();
    (*(v56 + 8))(v22, v34);
    v35 = sub_24B039184(&qword_27EFC9108, &qword_27EFC90F8, &qword_24B2E25F0, MEMORY[0x277CE04A0]);
    v81 = OpaqueTypeConformance2;
    v82 = v35;
    v36 = v64;
    v57 = swift_getWitnessTable();
    sub_24B091A64();
    v37 = v61;
    v58 = *(v61 + 8);
    v59 = v61 + 8;
    v58(v33, v36);
    v56 = sub_24B2D3DF4();
    LOBYTE(v71) = 1;
    sub_24B08331C(v68, &v74);
    v85 = v76;
    v86 = v77;
    v87 = v78;
    v88 = v79;
    v83 = v74;
    v84 = v75;
    v91 = v76;
    v92 = v77;
    v93 = v78;
    v94 = v79;
    v89 = v74;
    v90 = v75;
    sub_24B008890(&v83, v73, &qword_27EFC9110, &qword_24B2E2600);
    sub_24AFF8258(&v89, &qword_27EFC9110, &qword_24B2E2600);
    *&v80[39] = v85;
    *&v80[55] = v86;
    *&v80[71] = v87;
    *&v80[87] = v88;
    *&v80[7] = v83;
    *&v80[23] = v84;
    LODWORD(v70) = v71;
    KeyPath = swift_getKeyPath();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9118, &qword_24B2E2638);
    v40 = v55;
    v41 = &v55[*(v39 + 36)];
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9120, &qword_24B2E2640) + 28);
    v43 = *MEMORY[0x277CE0B30];
    v44 = sub_24B2D4574();
    (*(*(v44 - 8) + 104))(v41 + v42, v43, v44);
    *v41 = swift_getKeyPath();
    v45 = *&v80[48];
    *(v40 + 49) = *&v80[32];
    v46 = *v80;
    *(v40 + 33) = *&v80[16];
    *(v40 + 112) = *&v80[95];
    *(v40 + 120) = KeyPath;
    v47 = *&v80[64];
    *(v40 + 97) = *&v80[80];
    *(v40 + 81) = v47;
    *(v40 + 65) = v45;
    *v40 = v56;
    *(v40 + 8) = 0;
    *(v40 + 16) = v70;
    *(v40 + 17) = v46;
    *(v40 + 128) = 1;
    v48 = v65;
    *(v40 + *(v65 + 36)) = 0;
    v49 = v33;
    v50 = v33;
    v51 = v67;
    (*(v37 + 16))(v50, v67, v36);
    *&v74 = v49;
    v52 = v66;
    sub_24B008890(v40, v66, &qword_27EFC9100, &qword_24B2E25F8);
    *(&v74 + 1) = v52;
    v73[0] = v36;
    v73[1] = v48;
    v71 = v57;
    v72 = sub_24B0839E0();
    sub_24B080D98(&v74, 2uLL, v73);
    sub_24AFF8258(v40, &qword_27EFC9100, &qword_24B2E25F8);
    v53 = v58;
    v58(v51, v36);
    sub_24AFF8258(v52, &qword_27EFC9100, &qword_24B2E25F8);
    v53(v49, v36);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B08331C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v42 = a2;
  v44 = sub_24B2D4434();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D5694();
  v47 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1[1];
  if (v5)
  {
    v45 = *a1;
    v46 = MEMORY[0x277D84F90];
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 49);
  v41 = v5;

  *(&v40 + 1) = sub_24B2D4484();
  *&v40 = swift_getKeyPath();
  if (v7)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  *(&v48 + 1) = sub_24B080F68(v8 | v6);
  *&v48 = swift_getKeyPath();
  v9 = a1[3];
  v54 = a1[2];
  v55 = v9;
  sub_24AFFE0A4(v48, v10, v11);

  v12 = sub_24B2D4604();
  v14 = v13;
  v16 = v15;
  sub_24B080F68(v8 | v6);
  v17 = sub_24B2D4584();
  v19 = v18;
  v21 = v20;

  sub_24B083C34(v12, v14, v16 & 1);

  sub_24B2D4444();
  v22 = v43;
  v23 = v44;
  (*(v43 + 104))(v4, *MEMORY[0x277CE0A10], v44);
  sub_24B2D4464();

  (*(v22 + 8))(v4, v23);
  v24 = sub_24B2D45C4();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_24B083C34(v17, v19, v21 & 1);

  v31 = v45;
  v32 = v41;
  *&v50 = v45;
  *(&v50 + 1) = v41;
  v33 = v46;
  *&v51 = 0;
  *(&v51 + 1) = v46;
  v34 = v40;
  v52 = v40;
  v53 = v48;
  v49 = v28 & 1;
  v35 = v51;
  v36 = v42;
  *v42 = v50;
  v36[1] = v35;
  v37 = v53;
  v36[2] = v52;
  v36[3] = v37;
  *(v36 + 8) = v24;
  *(v36 + 9) = v26;
  *(v36 + 80) = v28 & 1;
  *(v36 + 11) = v30;
  sub_24B008890(&v50, &v54, &qword_27EFC9160, &unk_24B2E26F0);
  sub_24B083C44(v24, v26, v28 & 1);

  sub_24B083C34(v24, v26, v28 & 1);

  v54 = v31;
  v55 = v32;
  v56 = 0;
  v57 = v33;
  v58 = v34;
  v59 = v48;
  sub_24AFF8258(&v54, &qword_27EFC9160, &unk_24B2E26F0);
}

uint64_t sub_24B083760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24B0837B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B083800(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B083918(uint64_t a1)
{
  v2 = sub_24B2D4574();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24B2D3A54();
}

unint64_t sub_24B0839E0()
{
  result = qword_27EFC9128;
  if (!qword_27EFC9128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9100, &qword_24B2E25F8);
    sub_24B083A98();
    sub_24B039184(&qword_27EFC9108, &qword_27EFC90F8, &qword_24B2E25F0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9128);
  }

  return result;
}

unint64_t sub_24B083A98()
{
  result = qword_27EFC9130;
  if (!qword_27EFC9130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9118, &qword_24B2E2638);
    sub_24B083B50();
    sub_24B039184(&qword_27EFC9158, &qword_27EFC9120, &qword_24B2E2640, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9130);
  }

  return result;
}

unint64_t sub_24B083B50()
{
  result = qword_27EFC9138;
  if (!qword_27EFC9138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9140, &qword_24B2E2678);
    sub_24B039184(&qword_27EFC9148, &qword_27EFC9150, &unk_24B2E2680, MEMORY[0x277CE1198]);
    sub_24B039184(&qword_27EFC8B38, &qword_27EFC8B40, &qword_24B2E1D70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9138);
  }

  return result;
}

uint64_t sub_24B083C34(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_24B083C44(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_24B083C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFC9168;
  if (!qword_27EFC9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9168);
  }

  return result;
}

void sub_24B083CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B083D54(319, a2, a3);
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24B083D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27EFC91F8[0])
  {
    sub_24B083C54(0, a2, a3);
    v3 = sub_24B2D3414();
    if (!v4)
    {
      atomic_store(v3, qword_27EFC91F8);
    }
  }
}

uint64_t sub_24B083DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for ConfigurableBorderedButtonStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ConfigurableBorderedButtonStyle(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B083F9C()
{
  result = qword_27EFC9280;
  if (!qword_27EFC9280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9288, &qword_24B2E27B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9280);
  }

  return result;
}

id sub_24B08402C()
{
  v0 = objc_allocWithZone(type metadata accessor for LocationServicesDisabledView.ViewModel(0));

  return [v0 init];
}

uint64_t sub_24B084064@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92C8, &qword_24B2E2918);
  MEMORY[0x28223BE20](v3);
  v5 = v37 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92D0, &qword_24B2E2920);
  MEMORY[0x28223BE20](v44);
  v43 = v37 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92D8, &qword_24B2E2928);
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = v37 - v7;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  type metadata accessor for LocationServicesDisabledView.ViewModel(0);
  sub_24B086B58(&qword_27EFC92E0, type metadata accessor for LocationServicesDisabledView.ViewModel, &unk_24B2E28E0);
  v11 = sub_24B2D33A4();
  v12 = sub_24B08467C();

  if (v12)
  {
    sub_24B084714(v5);
    v52 = *(v2 + 24);
    v13 = swift_allocObject();
    v14 = *(v2 + 16);
    *(v13 + 16) = *v2;
    *(v13 + 32) = v14;
    *(v13 + 48) = *(v2 + 32);
    v15 = &v5[*(v3 + 36)];
    *v15 = sub_24B0865C0;
    v15[1] = v13;
    v15[2] = 0;
    v15[3] = 0;
    sub_24B0865C8(v8, v9, v10);
    sub_24B008890(&v52, &v48, &qword_27EFC92E8, &qword_24B2E2930);
    v16 = sub_24B2D33A4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24B2D3214();

    if (v49)
    {
      v17 = 0x7FFFFFFF;
    }

    else
    {
      v17 = v48;
    }

    v18 = v43;
    sub_24AFD8BA4(v5, v43);
    *(v18 + *(v44 + 52)) = v17;
    sub_24B2D3D74();
    type metadata accessor for FindMyUICore();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    v21 = sub_24B2D45E4();
    v40 = v22;
    v41 = v21;
    v24 = v23;
    v39 = v25;
    v51 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8, &qword_24B2E2930);
    v26 = sub_24B2D4CF4();
    v38 = v37;
    v37[3] = v50;
    MEMORY[0x28223BE20](v26);
    MEMORY[0x28223BE20](v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92F0, &unk_24B2E2980);
    sub_24B039184(&qword_27EFC92F8, &qword_27EFC92D0, &qword_24B2E2920, MEMORY[0x277CE1148]);
    sub_24B039184(&unk_27EFC9300, &qword_27EFC92F0, &unk_24B2E2980, MEMORY[0x277CE14C0]);
    v29 = v41;
    v28 = v42;
    v30 = v40;
    sub_24B2D48F4();

    sub_24B083C34(v29, v30, v24 & 1);

    sub_24AFF8258(v18, &qword_27EFC92D0, &qword_24B2E2920);
    v31 = v46;
    v32 = v45;
    (*(v47 + 32))(v46, v28, v45);
    return (*(v47 + 56))(v31, 0, 1, v32);
  }

  else
  {
    v34 = v46;
    v35 = *(v47 + 56);
    v36 = v45;

    return v35(v34, 1, 1, v36);
  }
}

uint64_t sub_24B08467C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  if (unk_285E4841C == v1)
  {
    return 0;
  }

  else
  {
    return (dword_285E48418 != v1) & ~v2;
  }
}

uint64_t sub_24B084714@<X0>(uint64_t a1@<X8>)
{
  v40[1] = a1;
  v40[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8AD0, &qword_24B2E1EB0);
  MEMORY[0x28223BE20](v40[0]);
  v3 = v40 - v2;
  v45 = type metadata accessor for CustomButtonStyle(0);
  MEMORY[0x28223BE20](v45);
  v44 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B2D4A54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CustomControlStyle(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9340, &qword_24B2E29A8);
  v14 = *(v13 - 8);
  v42 = v13;
  v43 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = v40 - v15;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9348, &qword_24B2E29B0);
  MEMORY[0x28223BE20](v41);
  v18 = v40 - v17;
  v19 = *v1;
  v49 = *(v1 + 16);
  v47 = *(v1 + 24);
  v48 = v19;
  v20 = swift_allocObject();
  v21 = v1[1];
  *(v20 + 16) = *v1;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(v1 + 4);
  sub_24B008890(&v48, v46, &qword_27EFC9350, &qword_24B2E29B8);
  sub_24B008890(&v47, v46, &qword_27EFC92E8, &qword_24B2E2930);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9358, &qword_24B2E29C0);
  sub_24B086950();
  sub_24B2D4D34();
  (*(v6 + 104))(v8, *MEMORY[0x277CE0EE0], v5);
  v22 = sub_24B2D4B74();
  v23 = MEMORY[0x277CE0F60];
  v12[3] = MEMORY[0x277CE0F78];
  v12[4] = v23;
  *v12 = v22;
  sub_24B2D4394();
  sub_24B2D43D4();
  v24 = sub_24B2D4424();

  v25 = v10[8];
  v26 = *MEMORY[0x277CE13B8];
  v27 = sub_24B2D50F4();
  (*(*(v27 - 8) + 104))(v12 + v25, v26, v27);
  v46[0] = sub_24B085D48;
  v46[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8D48, &unk_24B2E3B60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9390, &qword_24B2E2130);
  sub_24B2D1A94();
  v28 = v10[10];
  v29 = *MEMORY[0x277CDF440];
  v30 = sub_24B2D3364();
  (*(*(v30 - 8) + 104))(v12 + v28, v29, v30);
  type metadata accessor for CustomControlStyle.BackgroundSize(0);
  swift_storeEnumTagMultiPayload();
  v12[5] = v24;
  *(v12 + v10[11]) = 2;
  *(v12 + v10[12]) = 0;
  v31 = v12 + v10[13];
  *v31 = 0;
  v31[8] = 1;
  v32 = v41;
  v33 = v44;
  sub_24B086A94(v12, v44);
  sub_24B039184(&qword_27EFC9398, &qword_27EFC9340, &qword_24B2E29A8, MEMORY[0x277CDF028]);
  sub_24B086B58(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle, &unk_24B2E2154);
  v34 = v42;
  sub_24B2D46D4();
  sub_24B086AF8(v33, type metadata accessor for CustomButtonStyle);
  sub_24B086AF8(v12, type metadata accessor for CustomControlStyle);
  (*(v43 + 8))(v16, v34);
  KeyPath = swift_getKeyPath();
  v36 = &v18[*(v32 + 36)];
  *v36 = KeyPath;
  *(v36 + 1) = 2;
  v36[16] = 0;
  v37 = *MEMORY[0x277CDF988];
  v38 = sub_24B2D3764();
  (*(*(v38 - 8) + 104))(v3, v37, v38);
  sub_24B086B58(&qword_27EFC8AE8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_24B2D52A4();
  if (result)
  {
    sub_24B086BA0();
    sub_24B039184(&qword_27EFC8AF8, &qword_27EFC8AD0, &qword_24B2E1EB0, MEMORY[0x277D84470]);
    sub_24B2D4774();
    sub_24AFF8258(v3, &qword_27EFC8AD0, &qword_24B2E1EB0);
    return sub_24AFF8258(v18, &qword_27EFC9348, &qword_24B2E29B0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24B084E38(uint64_t *a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for LocationServicesDisabledView.ViewModel(0);
  sub_24B086B58(&qword_27EFC92E0, type metadata accessor for LocationServicesDisabledView.ViewModel, &unk_24B2E28E0);
  v1 = sub_24B2D33A4();
  [*&v1[OBJC_IVAR____TtCV12FindMyUICore28LocationServicesDisabledView9ViewModel_clLocationManager] requestWhenInUseAuthorization];
}

uint64_t sub_24B084F60@<X0>(uint64_t a2@<X8>)
{
  v33 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9310, &qword_24B2E2190);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9318, &qword_24B2E2990);
  v27 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v30 = &v26 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9320, &qword_24B2E2998);
  MEMORY[0x28223BE20](v8 - 8);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  sub_24B2D5694();
  v28 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for LocationServicesDisabledView.ViewModel(0);
  sub_24B086B58(&qword_27EFC92E0, type metadata accessor for LocationServicesDisabledView.ViewModel, &unk_24B2E28E0);

  v13 = sub_24B2D32E4();
  v14 = *(*(v13 - 8) + 56);
  v14(v4, 1, 1, v13);
  v15 = sub_24B2D33A4();
  *(swift_allocObject() + 16) = v15;
  v16 = v30;
  sub_24B2D4D24();
  v17 = v27;
  v18 = v32;
  (*(v27 + 32))(v12, v16, v32);
  (*(v17 + 56))(v12, 0, 1, v18);
  sub_24B2D32D4();
  v14(v4, 0, 1, v13);
  sub_24B2D4D24();
  v19 = v29;
  sub_24B008890(v12, v29, &qword_27EFC9320, &qword_24B2E2998);
  v20 = *(v17 + 16);
  v21 = v31;
  v20(v31, v16, v18);
  v22 = v33;
  sub_24B008890(v19, v33, &qword_27EFC9320, &qword_24B2E2998);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9328, &qword_24B2E29A0);
  v20((v22 + *(v23 + 48)), v21, v18);
  v24 = *(v17 + 8);
  v24(v16, v18);
  sub_24AFF8258(v12, &qword_27EFC9320, &qword_24B2E2998);
  v24(v21, v18);
  sub_24AFF8258(v19, &qword_27EFC9320, &qword_24B2E2998);
}

uint64_t sub_24B085458@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3D74();
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_24B2D45E4();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_24B0855A8()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_24B085638@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3D74();
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_24B2D45E4();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_24B085788@<X0>(uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for LocationServicesDisabledView.ViewModel(0);
  sub_24B086B58(&qword_27EFC92E0, type metadata accessor for LocationServicesDisabledView.ViewModel, &unk_24B2E28E0);

  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_24B2D5374();
  v6 = [v4 localizedStringForKey:v5 value:0 table:0];

  sub_24B2D5394();
  sub_24AFFE0A4(v7, v8, v9);
  v10 = sub_24B2D4604();
  v12 = v11;
  LOBYTE(v6) = v13;
  v15 = v14;

  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_24B085960(uint64_t a1)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8, &qword_24B2E2930);
  sub_24B2D4CE4();
}

__n128 sub_24B085A28@<Q0>(__n128 *a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_24B2D3CD4();
  sub_24B085B98(v26);
  v3 = v26[0];
  v4 = v26[1];
  v5 = v27;
  v25 = v28;
  LOBYTE(v26[0]) = 1;
  v30 = v27;
  v6 = sub_24B2D4354();
  sub_24B2D32F4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v29 = 0;
  v15 = sub_24B2D42E4();
  sub_24B2D32F4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = 0;
  a1[1].n128_u8[0] = 1;
  a1[1].n128_u64[1] = v3;
  a1[2].n128_u64[0] = v4;
  a1[2].n128_u8[8] = v5;
  result = v25;
  a1[3] = v25;
  a1[4].n128_u8[0] = v6;
  a1[4].n128_u64[1] = v8;
  a1[5].n128_u64[0] = v10;
  a1[5].n128_u64[1] = v12;
  a1[6].n128_u64[0] = v14;
  a1[6].n128_u8[8] = 0;
  a1[7].n128_u8[0] = v15;
  a1[7].n128_u64[1] = v17;
  a1[8].n128_u64[0] = v19;
  a1[8].n128_u64[1] = v21;
  a1[9].n128_u64[0] = v23;
  a1[9].n128_u8[8] = 0;
  return result;
}

uint64_t sub_24B085B98@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3D74();
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_24B2D45E4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_24B2D4BC4();
  *a1 = v4;
  *(a1 + 8) = v6;
  v8 &= 1u;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  sub_24B083C44(v4, v6, v8);

  sub_24B083C34(v4, v6, v8);
}

uint64_t sub_24B085D48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC93D0, &unk_24B2E2A10);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EFC75D8 != -1)
  {
    swift_once();
  }

  v7 = sub_24B2D5004();
  v8 = __swift_project_value_buffer(v7, qword_27EFC8158);
  (*(*(v7 - 8) + 16))(&v6[*(v4 + 52)], v8, v7);
  v9 = sub_24B2D3964();
  (*(*(v9 - 8) + 16))(v6, a1, v9);
  *&v6[*(v4 + 56)] = 256;
  sub_24B2D4AC4();
  v10 = sub_24B2D4B44();

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC93D8, &qword_24B2E3BC0);
  a2[3] = v11;
  a2[4] = sub_24B086D18();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  sub_24B008890(v6, boxed_opaque_existential_0, &qword_27EFC93D0, &unk_24B2E2A10);
  v13 = boxed_opaque_existential_0 + *(v11 + 36);
  *v13 = v10;
  *(v13 + 8) = xmmword_24B2E27D0;
  *(v13 + 3) = 0x4034000000000000;
  sub_24AFF8258(v6, &qword_27EFC93D0, &unk_24B2E2A10);
}

unint64_t sub_24B085FA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  return v1 | (v2 << 32);
}

char *sub_24B08602C()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC93F0, &qword_24B2E2A20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtCV12FindMyUICore28LocationServicesDisabledView9ViewModel_clLocationManager;
  *&v0[v6] = [objc_allocWithZone(MEMORY[0x277CBFC10]) init];
  v7 = OBJC_IVAR____TtCV12FindMyUICore28LocationServicesDisabledView9ViewModel__authorizationStatus;
  v12 = 0;
  v13 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92C0, &qword_24B2E27F0);
  sub_24B2D3204();
  (*(v3 + 32))(&v0[v7], v5, v2);
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  [*&v8[OBJC_IVAR____TtCV12FindMyUICore28LocationServicesDisabledView9ViewModel_clLocationManager] setDelegate_];
  return v8;
}

uint64_t type metadata accessor for LocationServicesDisabledView.ViewModel(uint64_t a1)
{
  result = qword_27EFC92A8;
  if (!qword_27EFC92A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B08632C(uint64_t a1)
{
  sub_24B0863CC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24B0863CC(uint64_t a1)
{
  if (!qword_27EFC92B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC92C0, &qword_24B2E27F0);
    v1 = sub_24B2D3234();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFC92B8);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B086450(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24B0864AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_24B086534@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_24B2D31B4();
  *a2 = result;
  return result;
}

uint64_t sub_24B0865B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8](a1, a2);
  }

  else
  {
  }
}

double sub_24B0865C8(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    v3 = a2;
  }

  else
  {
  }

  return result;
}

uint64_t sub_24B0865D8@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_24B086660(int *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_24B2D3224();
}

uint64_t sub_24B0866F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC9330, &unk_24B2E0480);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_24B2D22D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D22B4();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_24AFF8258(v2, &unk_27EFC9330, &unk_24B2E0480);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = [objc_opt_self() defaultWorkspace];
  if (v8)
  {
    v9 = v8;
    v10 = sub_24B2D2294();
    v11 = sub_24B2D51D4();
    [v9 openSensitiveURL:v10 withOptions:v11];
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t objectdestroyTm_2()
{
  sub_24B0865B0(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_24B086950()
{
  result = qword_27EFC9360;
  if (!qword_27EFC9360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9358, &qword_24B2E29C0);
    sub_24B0869DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9360);
  }

  return result;
}

unint64_t sub_24B0869DC()
{
  result = qword_27EFC9368;
  if (!qword_27EFC9368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9370, &qword_24B2E29C8);
    sub_24B039184(&qword_27EFC9378, &unk_27EFC9380, &qword_24B2E29D0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9368);
  }

  return result;
}

uint64_t sub_24B086A94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomControlStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B086AF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B086B58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B086BA0()
{
  result = qword_27EFC93B0;
  if (!qword_27EFC93B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9348, &qword_24B2E29B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9340, &qword_24B2E29A8);
    type metadata accessor for CustomButtonStyle(255);
    sub_24B039184(&qword_27EFC9398, &qword_27EFC9340, &qword_24B2E29A8, MEMORY[0x277CDF028]);
    sub_24B086B58(&unk_27EFC93A0, type metadata accessor for CustomButtonStyle, &unk_24B2E2154);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8C30, &unk_27EFC93C0, &qword_24B2E1EB8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC93B0);
  }

  return result;
}

unint64_t sub_24B086D18()
{
  result = qword_27EFC93E0;
  if (!qword_27EFC93E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC93D8, &qword_24B2E3BC0);
    sub_24B039184(&qword_27EFC93E8, &qword_27EFC93D0, &unk_24B2E2A10, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC93E0);
  }

  return result;
}

unint64_t sub_24B086DD0()
{
  result = qword_27EFC93F8;
  if (!qword_27EFC93F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFC9400, &qword_24B2E2A28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC92D0, &qword_24B2E2920);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC92F0, &unk_24B2E2980);
    sub_24B039184(&qword_27EFC92F8, &qword_27EFC92D0, &qword_24B2E2920, MEMORY[0x277CE1148]);
    sub_24B039184(&unk_27EFC9300, &qword_27EFC92F0, &unk_24B2E2980, MEMORY[0x277CE14C0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC93F8);
  }

  return result;
}

unint64_t sub_24B086F40(uint64_t a1)
{
  result = sub_24B07A804();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24B086FD0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 48) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 32) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
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

  return v7 + (v9 | v14) + 1;
}

void sub_24B08715C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 48) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
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
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 32) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

uint64_t sub_24B087410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9490, &qword_24B2E3740);
  v3 = *(a1 + 16);
  sub_24B039184(&qword_27EFC9498, &qword_27EFC9490, &qword_24B2E3740, MEMORY[0x277CDEFF0]);
  v4 = *(a1 + 24);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC94A0, &qword_24B2E2AA0);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_24B08880C();
  v5 = sub_24B2D44D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  v18 = v3;
  v19 = v4;
  v20 = v14[0];
  v15 = v3;
  v16 = v4;
  v17 = v14[0];
  sub_24B2D44C4();
  swift_getWitnessTable();
  sub_24B091A64();
  v12 = *(v6 + 8);
  v12(v8, v5);
  sub_24B091A64();
  return (v12)(v11, v5);
}

uint64_t sub_24B087694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3D74();
  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_24B2D45E4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94B8, &qword_24B2E2AA8);
  sub_24B0888A4();
  sub_24B2D4F04();
}

uint64_t sub_24B0878D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22[0] = a5;
  v8 = type metadata accessor for ShareMenu(0, a2, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - v10;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22[1] = &unk_285E48348;
  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v9 + 32))(v13 + v12, v11, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94E0, &qword_24B2E2AB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94D8, &qword_24B2E4100);
  sub_24B039184(&qword_27EFC94E8, &qword_27EFC94E0, &qword_24B2E2AB8, MEMORY[0x277D83980]);
  v14 = sub_24B039184(&qword_27EFC94D0, &qword_27EFC94D8, &qword_24B2E4100, &protocol conformance descriptor for AsyncButton<A>);
  sub_24B088AD8(v14, v15, v16);
  v17 = v22[0];
  sub_24B2D4EE4();
  v18 = sub_24B2D4B54();
  KeyPath = swift_getKeyPath();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94B8, &qword_24B2E2AA8);
  v21 = (v17 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = v18;
  return result;
}

uint64_t sub_24B087B90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a3;
  v30 = a4;
  v8 = type metadata accessor for ShareMenu(0, a3, a4, a4);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = *a1;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_24B2D32E4();
  (*(*(v14 - 8) + 56))(a5, 1, 1, v14);
  (*(v9 + 16))(v12, a2, v8);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = swift_allocObject();
  v17 = v30;
  *(v16 + 16) = v29;
  *(v16 + 24) = v17;
  (*(v9 + 32))(v16 + v15, v12, v8);
  *(v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94D8, &qword_24B2E4100);
  v20 = a5 + v19[12];
  v31 = 0;
  sub_24B2D4CC4();
  v21 = v33;
  *v20 = v32;
  *(v20 + 8) = v21;
  v22 = a5 + v19[13];
  v31 = 0;
  sub_24B2D4CC4();
  v23 = v33;
  *v22 = v32;
  *(v22 + 8) = v23;
  v24 = (a5 + v19[9]);
  *v24 = &unk_24B2E2AF8;
  v24[1] = v16;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_24B088C4C;
  *(v25 + 24) = v18;

  v27 = (a5 + v19[10]);
  *v27 = sub_24B088C54;
  v27[1] = v25;
  *(a5 + v19[11]) = 1;
  return result;
}

uint64_t sub_24B087E84(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_24B2D5694();
  v2[4] = sub_24B2D5684();
  v4 = sub_24B2D5604();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_24B087F1C, v4, v3);
}

uint64_t sub_24B087F1C()
{
  v4 = (**(v0 + 16) + ***(v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_24B088010;
  v2 = *(v0 + 24);

  return v4(v2);
}

uint64_t sub_24B088010()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_24B088130, v3, v2);
}

uint64_t sub_24B088130()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B088190(uint64_t a1)
{
  v2 = sub_24B00C9DC(a1);
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (!a1 || a1 == 1)
  {
LABEL_9:
    sub_24AFFE0A4(v2, v3, v4);
    return sub_24B2D4C54();
  }

  result = sub_24B2D6024();
  __break(1u);
  return result;
}

uint64_t sub_24B088294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a1;
  v26 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9490, &qword_24B2E3740);
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v22 - v7;
  v9 = sub_24B039184(&qword_27EFC9498, &qword_27EFC9490, &qword_24B2E3740, MEMORY[0x277CDEFF0]);
  v27 = v6;
  v28 = a2;
  v23 = v9;
  v29 = v9;
  v30 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v22 - v15;
  sub_24B2D5694();
  v22[1] = sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  v22[-4] = a2;
  v22[-3] = a3;
  v22[-2] = v25;
  sub_24B2D4C34();
  type metadata accessor for ShareMenu(0, a2, a3, v18);
  v19 = v23;
  sub_24B2D46C4();
  (*(v24 + 8))(v8, v6);
  v27 = v6;
  v28 = a2;
  v29 = v19;
  v30 = a3;
  swift_getOpaqueTypeConformance2();
  sub_24B091A64();
  v20 = *(v11 + 8);
  v20(v13, OpaqueTypeMetadata2);
  sub_24B091A64();
  v20(v16, OpaqueTypeMetadata2);
}

uint64_t sub_24B088614@<X0>(uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for FindMyUICore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();

  v5 = [v4 bundleForClass_];
  v6 = sub_24B2D45E4();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v12;
  return result;
}

uint64_t sub_24B088760@<X0>(uint64_t *a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_24B2D4BC4();

  *a1 = v2;
  return result;
}

unint64_t sub_24B08880C()
{
  result = qword_27EFC94A8;
  if (!qword_27EFC94A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC94A0, &qword_24B2E2AA0);
    sub_24B0888A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC94A8);
  }

  return result;
}

unint64_t sub_24B0888A4()
{
  result = qword_27EFC94B0;
  if (!qword_27EFC94B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC94B8, &qword_24B2E2AA8);
    sub_24B08895C();
    sub_24B039184(&qword_27EFC8EB0, &qword_27EFC8EB8, &qword_24B2EE960, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC94B0);
  }

  return result;
}

unint64_t sub_24B08895C()
{
  result = qword_27EFC94C0;
  if (!qword_27EFC94C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC94C8, &qword_24B2E2AB0);
    sub_24B039184(&qword_27EFC94D0, &qword_27EFC94D8, &qword_24B2E4100, &protocol conformance descriptor for AsyncButton<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC94C0);
  }

  return result;
}

uint64_t sub_24B088A3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for ShareMenu(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_24B087B90(a1, v9, v6, v7, a3);
}

unint64_t sub_24B088AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFC94F0;
  if (!qword_27EFC94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC94F0);
  }

  return result;
}

uint64_t sub_24B088B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for ShareMenu(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v4 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_24AFFD370;

  return sub_24B087E84(v4 + v7, v8);
}

uint64_t sub_24B088C94@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  *a2 = v4;
  return result;
}

uint64_t sub_24B088D14(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  sub_24B2D3224();
  return sub_24B00E490();
}

uint64_t sub_24B088D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_24B2D3EC4();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_24B2D3ED4();
}

uint64_t sub_24B088E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_24B2D3EC4();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_24B2D3ED4();
}

uint64_t sub_24B088F80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9608, &qword_24B2E2CE0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13[-v2];
  sub_24B0891A4(&v13[-v2]);
  v5 = *(v0 + 4);
  *&v15 = *(v0 + 3);
  v4 = v15;
  *(&v15 + 1) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9610, &qword_24B2E2CE8);
  sub_24B2D4CF4();
  v6 = v14;
  v15 = *v0;
  v16 = *(v0 + 16);
  v17 = v4;
  v18 = v5;
  v7 = swift_allocObject();
  v8 = v0[1];
  *(v7 + 16) = *v0;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v0 + 4);
  sub_24B008890(&v15, v13, &qword_27EFC9618, &unk_24B2E2CF0);
  sub_24B008890(&v17, v13, &qword_27EFC7E20, &unk_24B2DF770);
  sub_24B008890(&v18, v13, &qword_27EFC9620, &qword_24B2E2D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9628, &qword_24B2E2D08);
  v9 = sub_24B0907A0();
  sub_24B090FB4(v9, v10, v11);
  sub_24B091008();
  sub_24B2D4944();

  sub_24B091114(v6);
  return sub_24AFF8258(v3, &qword_27EFC9608, &qword_24B2E2CE0);
}

uint64_t sub_24B0891A4@<X0>(uint64_t a1@<X8>)
{
  v399 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A48, &qword_24B2E2D80);
  MEMORY[0x28223BE20](v2 - 8);
  v330 = (&v316 - v3);
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9770, &qword_24B2E2D88);
  MEMORY[0x28223BE20](v333);
  v335 = &v316 - v4;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9720, &qword_24B2E2D68);
  MEMORY[0x28223BE20](v346);
  v336 = &v316 - v5;
  v334 = type metadata accessor for RequestReceivedMessageView(0);
  MEMORY[0x28223BE20](v334);
  v331 = (&v316 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9778, &qword_24B2E2D90);
  MEMORY[0x28223BE20](v323);
  v325 = &v316 - v7;
  v8 = type metadata accessor for ShareSentMessageView.ShareState(0);
  MEMORY[0x28223BE20](v8 - 8);
  v319 = &v316 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v317 = &v316 - v11;
  v324 = type metadata accessor for ShareSentMessageView(0);
  MEMORY[0x28223BE20](v324);
  v321 = &v316 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v322 = &v316 - v14;
  MEMORY[0x28223BE20](v15);
  v318 = &v316 - v16;
  MEMORY[0x28223BE20](v17);
  v320 = &v316 - v18;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9708, &qword_24B2E2D60);
  MEMORY[0x28223BE20](v339);
  v326 = &v316 - v19;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9780, &qword_24B2E2D98);
  MEMORY[0x28223BE20](v343);
  v345 = &v316 - v20;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9788, &qword_24B2E2DA0);
  MEMORY[0x28223BE20](v337);
  v338 = &v316 - v21;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC96F0, &qword_24B2E2D58);
  MEMORY[0x28223BE20](v344);
  v340 = &v316 - v22;
  v341 = type metadata accessor for ShareReceivedMessageView(0);
  MEMORY[0x28223BE20](v341);
  v332 = &v316 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC96E0, &qword_24B2E2D50);
  MEMORY[0x28223BE20](v383);
  v362 = &v316 - v24;
  v357 = type metadata accessor for CompositeAppViewState.TranscriptInfo(0);
  v327 = *(v357 - 8);
  MEMORY[0x28223BE20](v357);
  v329 = &v316 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v364 = &v316 - v27;
  v328 = v28;
  MEMORY[0x28223BE20](v29);
  v356 = &v316 - v30;
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9790, &qword_24B2E2DA8);
  MEMORY[0x28223BE20](v381);
  v382 = &v316 - v31;
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9798, &qword_24B2E2DB0);
  MEMORY[0x28223BE20](v365);
  v367 = (&v316 - v32);
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC96C0, &qword_24B2E2D48);
  MEMORY[0x28223BE20](v380);
  v368 = &v316 - v33;
  v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC96B0, &qword_24B2E2D40);
  MEMORY[0x28223BE20](v398);
  v384 = (&v316 - v34);
  v366 = type metadata accessor for FullScreenLocationDetailView(0);
  MEMORY[0x28223BE20](v366);
  v352 = &v316 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v355 = type metadata accessor for DetailsAppView.Style(0);
  v372 = *(v355 - 8);
  MEMORY[0x28223BE20](v355);
  v361 = (&v316 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97A0, &qword_24B2E2DB8);
  MEMORY[0x28223BE20](v37 - 8);
  v354 = &v316 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v351 = &v316 - v40;
  v41 = type metadata accessor for DetailsAppView.State(0);
  MEMORY[0x28223BE20](v41 - 8);
  v370 = &v316 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v378 = type metadata accessor for DetailsAppView(0);
  MEMORY[0x28223BE20](v378);
  v353 = &v316 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v359 = &v316 - v45;
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97A8, &qword_24B2E2DC0);
  MEMORY[0x28223BE20](v375);
  v377 = &v316 - v46;
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9690, &qword_24B2E2D38);
  MEMORY[0x28223BE20](v389);
  v379 = &v316 - v47;
  v350 = sub_24B2D4A54();
  v348 = *(v350 - 8);
  MEMORY[0x28223BE20](v350);
  v349 = &v316 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v376 = type metadata accessor for QuickSendAppView(0);
  MEMORY[0x28223BE20](v376);
  v50 = &v316 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v358 = &v316 - v52;
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9680, &qword_24B2E2D30);
  MEMORY[0x28223BE20](v374);
  v347 = (&v316 - v53);
  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97B0, &qword_24B2E2DC8);
  MEMORY[0x28223BE20](v395);
  v397 = &v316 - v54;
  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97B8, &qword_24B2E2DD0);
  MEMORY[0x28223BE20](v385);
  v387 = &v316 - v55;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97C0, &qword_24B2E2DD8);
  MEMORY[0x28223BE20](v369);
  v371 = (&v316 - v56);
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9650, &qword_24B2E2D18);
  MEMORY[0x28223BE20](v386);
  v373 = &v316 - v57;
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9640, &qword_24B2E2D10);
  MEMORY[0x28223BE20](v396);
  v388 = &v316 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A28, &qword_24B2E1950);
  MEMORY[0x28223BE20](v59 - 8);
  v61 = &v316 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v64 = &v316 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97C8, &qword_24B2E2DE0);
  MEMORY[0x28223BE20](v65 - 8);
  v342 = &v316 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v69 = &v316 - v68;
  v70 = type metadata accessor for CompositeAppViewState(0);
  v360 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v72 = (&v316 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = *v1;
  v73 = *(v1 + 8);
  v363 = v1;
  v75 = *(v1 + 16);
  v76 = type metadata accessor for CompositeAppViewModel(0);
  v77 = sub_24B091168(&qword_27EFC8A20, type metadata accessor for CompositeAppViewModel, &unk_24B2E1870);
  v394 = v74;
  v393 = v73;
  v390 = v75;
  v392 = v76;
  v391 = v77;
  sub_24B2D33A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v124 = sub_24B2D33A4();
      v125 = sub_24B06765C();
      v126 = sub_24B066AB0();
      v127 = v126;
      v128 = &byte_285E483C8;
      v129 = qword_285E483B8;
      do
      {
        v130 = v129;
        _CF = v129-- != 0;
        if (!_CF)
        {
          break;
        }

        v132 = *v128++;
      }

      while (v132 != v125);
      v133 = &byte_285E483F0;
      v134 = qword_285E483E0;
      do
      {
        v135 = v134;
        _CF = v134-- != 0;
        if (!_CF)
        {
          break;
        }

        v136 = *v133++;
      }

      while (v136 != v126);
      sub_24B2D2AE4();
      v137 = MEMORY[0x24C2392B0]();
      v138 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
      swift_beginAccess();
      sub_24B008890(v124 + v138, v61, &qword_27EFC8A28, &qword_24B2E1950);
      v139 = type metadata accessor for CompositeAppViewInitialInfo(0);
      if ((*(*(v139 - 8) + 48))(v61, 1, v139) == 1)
      {
        sub_24AFF8258(v61, &qword_27EFC8A28, &qword_24B2E1950);
        v140 = 1;
      }

      else
      {
        v155 = v61[*(v139 + 32)];
        sub_24B0918BC(v61, type metadata accessor for CompositeAppViewInitialInfo);
        v140 = v155 | v137 ^ 1;
      }

      LODWORD(v384) = v140;
      LODWORD(v383) = v127 == 2;
      LODWORD(v382) = v135 != 0;
      v156 = v130 != 0;
      v157 = sub_24B05B038();

      v158 = sub_24B2D33A4();
      v159 = v376;
      v160 = &v50[*(v376 + 24)];
      *v160 = 0x4010000000000000;
      v161 = &v160[*(type metadata accessor for QuickSendAppView.Style(0) + 20)];
      v162 = *MEMORY[0x277CE0EE0];
      v163 = *(v348 + 104);
      swift_retain_n();
      v163(v349, v162, v350);
      swift_retain_n();
      v164 = sub_24B2D4B74();
      v165 = MEMORY[0x277CE0F60];
      v161[3] = MEMORY[0x277CE0F78];
      v161[4] = v165;
      *v161 = v164;
      sub_24B2D4394();
      sub_24B2D43D4();
      v166 = sub_24B2D4424();

      v167 = type metadata accessor for CustomControlStyle(0);
      v168 = v167[6];
      v169 = *MEMORY[0x277CE13B8];
      v170 = sub_24B2D50F4();
      (*(*(v170 - 8) + 104))(v161 + v168, v169, v170);
      *&v405 = sub_24B0AAFB8;
      *(&v405 + 1) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8D48, &unk_24B2E3B60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9390, &qword_24B2E2130);
      sub_24B2D1A94();
      v171 = v167[8];
      v172 = *MEMORY[0x277CDF440];
      v173 = sub_24B2D3364();
      (*(*(v173 - 8) + 104))(v161 + v171, v172, v173);
      type metadata accessor for CustomControlStyle.BackgroundSize(0);
      swift_storeEnumTagMultiPayload();
      v161[5] = v166;
      *(v161 + v167[9]) = 3;
      *(v161 + v167[10]) = 0;
      v174 = v161 + v167[11];
      *v174 = 0;
      v174[8] = 1;
      v175 = &v50[*(v159 + 28)];
      type metadata accessor for MKCoordinateRegion(0);
      v400 = 0u;
      v401 = 0u;
      sub_24B2D4CC4();
      v176 = v407;
      v177 = v406;
      *v175 = v405;
      *(v175 + 1) = v177;
      *(v175 + 4) = v176;
      LOBYTE(v176) = v384 & 1;
      *v50 = v384 & 1;
      v50[1] = v156;
      v50[2] = v382;
      v50[3] = v383;
      v50[4] = v157 & 1;
      *(v50 + 1) = &unk_24B2E2FB8;
      *(v50 + 2) = v158;
      *(v50 + 3) = sub_24B091A74;
      *(v50 + 4) = v158;
      *(v50 + 5) = sub_24B091A68;
      *(v50 + 6) = v158;
      *(v50 + 7) = sub_24B05EE80;
      *(v50 + 8) = 0;
      *(v50 + 9) = sub_24B091A6C;
      *(v50 + 10) = v158;
      *(v50 + 11) = &unk_24B2E2FC0;
      *(v50 + 12) = v158;
      *(v50 + 13) = &unk_24B2E2FC8;
      *(v50 + 14) = v158;
      *(v50 + 15) = &unk_24B2E2FD0;
      *(v50 + 16) = v158;
      *(v50 + 17) = sub_24B091A70;
      *(v50 + 18) = v158;
      v178 = &v50[*(v159 + 32)];
      *v178 = v176;
      *(v178 + 1) = 0;
      v179 = v50;
      v88 = v358;
      sub_24B09191C(v179, v358, type metadata accessor for QuickSendAppView);
      sub_24B091854(v88, v377, type metadata accessor for QuickSendAppView);
      swift_storeEnumTagMultiPayload();
      sub_24B091168(&qword_27EFC9698, type metadata accessor for QuickSendAppView, &unk_24B2E3EA8);
      sub_24B091168(&qword_27EFC96A0, type metadata accessor for DetailsAppView, &unk_24B2E3230);
      v180 = v379;
      sub_24B2D3ED4();
      sub_24B008890(v180, v387, &qword_27EFC9690, &qword_24B2E2D38);
      swift_storeEnumTagMultiPayload();
      sub_24B0908B8();
      sub_24B090A20();
      v181 = v388;
      sub_24B2D3ED4();
      sub_24AFF8258(v180, &qword_27EFC9690, &qword_24B2E2D38);
      sub_24B008890(v181, v397, &qword_27EFC9640, &qword_24B2E2D10);
      swift_storeEnumTagMultiPayload();
      sub_24B09082C();
      sub_24B090B0C();
      sub_24B2D3ED4();
      sub_24AFF8258(v181, &qword_27EFC9640, &qword_24B2E2D10);
      v98 = type metadata accessor for QuickSendAppView;
      goto LABEL_32;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_24B2D33A4();
      v88 = v352;
      sub_24B064D40(v352);

      v89 = sub_24B2D33A4();
      v90 = v366;
      *&v88[*(v366 + 20)] = 0;
      v91 = &v88[*(v90 + 24)];
      *v91 = &unk_24B2E2F40;
      *(v91 + 1) = v89;
      *(v91 + 2) = sub_24B091A74;
      *(v91 + 3) = v89;
      *(v91 + 4) = sub_24B091A68;
      *(v91 + 5) = v89;
      *(v91 + 6) = sub_24B05EE80;
      *(v91 + 7) = 0;
      *(v91 + 8) = sub_24B091A6C;
      *(v91 + 9) = v89;
      *(v91 + 10) = &unk_24B2E2F48;
      *(v91 + 11) = v89;
      *(v91 + 12) = &unk_24B2E2F50;
      *(v91 + 13) = v89;
      *(v91 + 14) = &unk_24B2E2F58;
      *(v91 + 15) = v89;
      *(v91 + 16) = sub_24B091A70;
      *(v91 + 17) = v89;
      v92 = *(v90 + 28);
      swift_retain_n();
      *&v88[v92] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97E0, &qword_24B2E2F90);
      swift_storeEnumTagMultiPayload();
      sub_24B091854(v88, v367, type metadata accessor for FullScreenLocationDetailView);
      swift_storeEnumTagMultiPayload();
      v93 = sub_24B091168(&qword_27EFC96C8, type metadata accessor for FullScreenLocationDetailView, &unk_24B2E3598);
      sub_24B090C54(v93, v94, v95);
      swift_retain_n();
      v96 = v368;
      sub_24B2D3ED4();
      sub_24B008890(v96, v382, &qword_27EFC96C0, &qword_24B2E2D48);
      swift_storeEnumTagMultiPayload();
      sub_24B090B98();
      sub_24B090CA8();
      v97 = v384;
      sub_24B2D3ED4();
      sub_24AFF8258(v96, &qword_27EFC96C0, &qword_24B2E2D48);
      sub_24B008890(v97, v397, &qword_27EFC96B0, &qword_24B2E2D40);
      swift_storeEnumTagMultiPayload();
      sub_24B09082C();
      sub_24B090B0C();
      sub_24B2D3ED4();
      sub_24AFF8258(v97, &qword_27EFC96B0, &qword_24B2E2D40);
      v98 = type metadata accessor for FullScreenLocationDetailView;
LABEL_32:
      v182 = v98;
      v183 = v88;
      return sub_24B0918BC(v183, v182);
    }

    v148 = sub_24B2D33A4();
    v149 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
    swift_beginAccess();
    sub_24B008890(v148 + v149, v64, &qword_27EFC8A28, &qword_24B2E1950);

    v150 = type metadata accessor for CompositeAppViewInitialInfo(0);
    if ((*(*(v150 - 8) + 48))(v64, 1, v150) == 1)
    {
      sub_24AFF8258(v64, &qword_27EFC8A28, &qword_24B2E1950);
      (*(v360 + 56))(v69, 1, 1, v70);
      sub_24AFF8258(v69, &qword_27EFC97C8, &qword_24B2E2DE0);
    }

    else
    {
      sub_24B091854(&v64[*(v150 + 28)], v69, type metadata accessor for CompositeAppViewState);
      sub_24B0918BC(v64, type metadata accessor for CompositeAppViewInitialInfo);
      (*(v360 + 56))(v69, 0, 1, v70);
      v197 = v342;
      sub_24B0391CC(v69, v342, &qword_27EFC97C8, &qword_24B2E2DE0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for FindMyUICore();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v199 = [objc_opt_self() bundleForClass_];
        v200 = sub_24B2D5374();
        v201 = [v199 localizedStringForKey:v200 value:0 table:0];

        v202 = sub_24B2D5394();
        v204 = v203;

        LOBYTE(v421) = 0;
        v405 = 0uLL;
        *&v406 = v202;
        *(&v406 + 1) = v204;
        *&v407 = sub_24AFFAA8C;
        *(&v407 + 1) = 0;
        LODWORD(v408) = 0x800000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9670, &qword_24B2E4880);
        sub_24B039184(&qword_27EFC9668, &qword_27EFC9670, &qword_24B2E4880, &unk_24B2E2598);
        sub_24B2D3ED4();
        sub_24B0918BC(v197, type metadata accessor for CompositeAppViewState);
        v405 = v400;
        v406 = v401;
        v407 = v402;
        LODWORD(v408) = v403;
LABEL_44:
        v219 = v406;
        v220 = v371;
        *v371 = v405;
        v220[1] = v219;
        v220[2] = v407;
        *(v220 + 12) = v408;
        swift_storeEnumTagMultiPayload();
        sub_24B008890(&v405, &v400, &qword_27EFC9660, &unk_24B2E2D20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9660, &unk_24B2E2D20);
        sub_24B090970();
        sub_24B039184(&qword_27EFC9678, &qword_27EFC9680, &qword_24B2E2D30, MEMORY[0x277CE11A8]);
        v221 = v373;
        sub_24B2D3ED4();
        sub_24B008890(v221, v387, &qword_27EFC9650, &qword_24B2E2D18);
        swift_storeEnumTagMultiPayload();
        sub_24B0908B8();
        sub_24B090A20();
        v222 = v388;
        sub_24B2D3ED4();
        sub_24AFF8258(v221, &qword_27EFC9650, &qword_24B2E2D18);
        sub_24B008890(v222, v397, &qword_27EFC9640, &qword_24B2E2D10);
        swift_storeEnumTagMultiPayload();
        sub_24B09082C();
        sub_24B090B0C();
        sub_24B2D3ED4();
        sub_24AFF8258(&v405, &qword_27EFC9660, &unk_24B2E2D20);
        return sub_24AFF8258(v222, &qword_27EFC9640, &qword_24B2E2D10);
      }

      sub_24B0918BC(v197, type metadata accessor for CompositeAppViewState);
    }

    type metadata accessor for FindMyUICore();
    v212 = swift_getObjCClassFromMetadata();
    v213 = [objc_opt_self() bundleForClass_];
    v214 = sub_24B2D5374();
    v215 = [v213 localizedStringForKey:v214 value:0 table:0];

    v216 = sub_24B2D5394();
    v218 = v217;

    LOBYTE(v421) = 1;
    v400 = 0uLL;
    *&v401 = v216;
    *(&v401 + 1) = v218;
    *&v402 = sub_24AFFAA8C;
    *(&v402 + 1) = 0;
    v403 = 25231360;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9670, &qword_24B2E4880);
    sub_24B039184(&qword_27EFC9668, &qword_27EFC9670, &qword_24B2E4880, &unk_24B2E2598);
    sub_24B2D3ED4();
    goto LABEL_44;
  }

  if (!EnumCaseMultiPayload)
  {
    v383 = *v72;
    v99 = v394;
    v100 = v393;
    sub_24B2D33A4();
    sub_24B064D40(v370);

    v101 = sub_24B2D33A4();
    v102 = *(v372 + 56);
    swift_retain_n();
    v103 = v351;
    v104 = v355;
    v102(v351, 1, 1, v355);
    v105 = v363;
    v106 = *(v363 + 32);
    *&v400 = *(v363 + 24);
    v404 = v106;
    v107 = swift_allocObject();
    v108 = *(v105 + 16);
    *(v107 + 16) = *v105;
    *(v107 + 32) = v108;
    v109 = *(v105 + 32);
    v110 = v383;
    v384 = v107;
    *(v107 + 48) = v109;
    *(v107 + 56) = v110;
    swift_retain_n();
    sub_24B09159C(v99, v100);
    sub_24B008890(&v400, &v405, &qword_27EFC7E20, &unk_24B2DF770);
    sub_24B008890(&v404, &v405, &qword_27EFC9620, &qword_24B2E2D00);
    sub_24B2D33A4();
    LODWORD(v394) = sub_24B05B038();

    v111 = v378;
    v112 = v353;
    v113 = &v353[*(v378 + 40)];
    LOBYTE(v421) = 1;
    sub_24B2D4CC4();
    v114 = *(&v405 + 1);
    *v113 = v405;
    *(v113 + 1) = v114;
    v115 = v112 + v111[11];
    LOBYTE(v421) = 1;
    v116 = v370;
    sub_24B2D4CC4();
    v117 = *(&v405 + 1);
    *v115 = v405;
    *(v115 + 1) = v117;
    v118 = v372;
    *v112 = v110;
    sub_24B091854(v116, v112 + v111[5], type metadata accessor for DetailsAppView.State);
    v119 = (v112 + v111[6]);
    *v119 = &unk_24B2E2F98;
    v119[1] = v101;
    v119[2] = sub_24B091A74;
    v119[3] = v101;
    v119[4] = sub_24B091A68;
    v119[5] = v101;
    v119[6] = sub_24B05EE80;
    v119[7] = 0;
    v119[8] = sub_24B091A6C;
    v119[9] = v101;
    v119[10] = &unk_24B2E2FA0;
    v119[11] = v101;
    v119[12] = &unk_24B2E2FA8;
    v119[13] = v101;
    v119[14] = &unk_24B2E2FB0;
    v119[15] = v101;
    v119[16] = sub_24B091A70;
    v119[17] = v101;
    v120 = v354;
    sub_24B008890(v103, v354, &qword_27EFC97A0, &qword_24B2E2DB8);
    v121 = *(v118 + 48);
    if (v121(v120, 1, v104) == 1)
    {
      v122 = v116;
      v123 = v361;
      sub_24B09338C((v110 & 0x40) != 0, v361);
      sub_24AFF8258(v103, &qword_27EFC97A0, &qword_24B2E2DB8);
      sub_24B0918BC(v122, type metadata accessor for DetailsAppView.State);
      if (v121(v120, 1, v104) != 1)
      {
        sub_24AFF8258(v120, &qword_27EFC97A0, &qword_24B2E2DB8);
      }
    }

    else
    {
      sub_24AFF8258(v103, &qword_27EFC97A0, &qword_24B2E2DB8);
      sub_24B0918BC(v116, type metadata accessor for DetailsAppView.State);
      v123 = v361;
      sub_24B09191C(v120, v361, type metadata accessor for DetailsAppView.Style);
    }

    sub_24B09191C(v123, v112 + v111[7], type metadata accessor for DetailsAppView.Style);
    v151 = (v112 + v111[8]);
    v152 = v384;
    *v151 = sub_24B091848;
    v151[1] = v152;
    *(v112 + v111[9]) = v394 & 1;
    v88 = v359;
    sub_24B09191C(v112, v359, type metadata accessor for DetailsAppView);
    sub_24B091854(v88, v377, type metadata accessor for DetailsAppView);
    swift_storeEnumTagMultiPayload();
    sub_24B091168(&qword_27EFC9698, type metadata accessor for QuickSendAppView, &unk_24B2E3EA8);
    sub_24B091168(&qword_27EFC96A0, type metadata accessor for DetailsAppView, &unk_24B2E3230);
    v153 = v379;
    sub_24B2D3ED4();
    sub_24B008890(v153, v387, &qword_27EFC9690, &qword_24B2E2D38);
    swift_storeEnumTagMultiPayload();
    sub_24B0908B8();
    sub_24B090A20();
    v154 = v388;
    sub_24B2D3ED4();
    sub_24AFF8258(v153, &qword_27EFC9690, &qword_24B2E2D38);
    sub_24B008890(v154, v397, &qword_27EFC9640, &qword_24B2E2D10);
    swift_storeEnumTagMultiPayload();
    sub_24B09082C();
    sub_24B090B0C();
    sub_24B2D3ED4();
    sub_24AFF8258(v154, &qword_27EFC9640, &qword_24B2E2D10);
    v98 = type metadata accessor for DetailsAppView;
    goto LABEL_32;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v141 = sub_24B2D5064();
    v142 = v347;
    *v347 = v141;
    *(v142 + 8) = v143;
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97E8, &qword_24B2E2FD8);
    sub_24B08E010(v142 + *(v144 + 44));
    sub_24B008890(v142, v371, &qword_27EFC9680, &qword_24B2E2D30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9660, &unk_24B2E2D20);
    sub_24B090970();
    sub_24B039184(&qword_27EFC9678, &qword_27EFC9680, &qword_24B2E2D30, MEMORY[0x277CE11A8]);
    v145 = v373;
    sub_24B2D3ED4();
    sub_24B008890(v145, v387, &qword_27EFC9650, &qword_24B2E2D18);
    swift_storeEnumTagMultiPayload();
    sub_24B0908B8();
    sub_24B090A20();
    v146 = v388;
    sub_24B2D3ED4();
    sub_24AFF8258(v145, &qword_27EFC9650, &qword_24B2E2D18);
    sub_24B008890(v146, v397, &qword_27EFC9640, &qword_24B2E2D10);
    swift_storeEnumTagMultiPayload();
    sub_24B09082C();
    sub_24B090B0C();
    sub_24B2D3ED4();
    sub_24AFF8258(v146, &qword_27EFC9640, &qword_24B2E2D10);
    return sub_24AFF8258(v142, &qword_27EFC9680, &qword_24B2E2D30);
  }

  v79 = v356;
  sub_24B091854(v72, v356, type metadata accessor for CompositeAppViewState.TranscriptInfo);
  v80 = v357;
  if (*(v79 + *(v357 + 52)))
  {
    sub_24B0918BC(v79, type metadata accessor for CompositeAppViewState.TranscriptInfo);
    v81 = v364;
    sub_24B09191C(v72, v364, type metadata accessor for CompositeAppViewState.TranscriptInfo);
    v82 = v81 + v80[10];
    if (*(v82 + 8) == 2)
    {
      v83 = v393;
      if (*(v81 + v80[8]))
      {
        v84 = v330;
        CompositeAppViewState.TranscriptInfo.singleRecipient.getter(v330);
        v85 = type metadata accessor for Friend(0);
        if ((*(*(v85 - 8) + 48))(v84, 1, v85) == 1)
        {
          sub_24AFF8258(v84, &qword_27EFC8A48, &qword_24B2E2D80);
          v86 = 0;
          v87 = 0;
        }

        else
        {
          v86 = *v84;
          v87 = v84[1];

          sub_24B0918BC(v84, type metadata accessor for Friend);
        }

        v274 = *(v81 + v80[9]);
        v275 = v335;
        *v335 = 0;
        *(v275 + 1) = v86;
        *(v275 + 2) = v87;
        v275[24] = v274;
        swift_storeEnumTagMultiPayload();
        v276 = sub_24B091168(&qword_27EFC9728, type metadata accessor for RequestReceivedMessageView, &unk_24B2E4070);
        sub_24B090F60(v276, v277, v278);
        v279 = v336;
        sub_24B2D3ED4();
        sub_24B008890(v279, v345, &qword_27EFC9720, &qword_24B2E2D68);
        swift_storeEnumTagMultiPayload();
        sub_24B090D34();
        sub_24B090EA4();
        sub_24B2D3ED4();
        sub_24AFF8258(v279, &qword_27EFC9720, &qword_24B2E2D68);
        goto LABEL_57;
      }

      v223 = (v81 + v80[6]);
      v224 = v223[1];
      v389 = *v223;
      v388 = v224;

      sub_24B2D33A4();
      v225 = v80[11];
      v226 = sub_24AFF2D64();
      LOBYTE(v225) = sub_24B0683AC(v223, v81 + v225, v226, v227);

      v228 = v394;
      v229 = sub_24B2D33A4();
      v230 = v363;
      v231 = *(v363 + 32);
      *&v400 = *(v363 + 24);
      v404 = v231;
      v232 = swift_allocObject();
      v233 = *(v230 + 16);
      *(v232 + 16) = *v230;
      *(v232 + 32) = v233;
      *(v232 + 48) = *(v230 + 32);
      v234 = v331;
      v235 = v388;
      *v331 = v389;
      *(v234 + 8) = v235;
      *(v234 + 16) = v225;
      v236 = v334;
      v237 = *(v334 + 24);
      swift_retain_n();
      sub_24B09159C(v228, v83);

      sub_24B008890(&v400, &v405, &qword_27EFC7E20, &unk_24B2DF770);
      sub_24B008890(&v404, &v405, &qword_27EFC9620, &qword_24B2E2D00);
      sub_24B0ADFA0((v234 + v237));
      v238 = (v234 + v236[7]);
      *v238 = &unk_24B2E2E40;
      v238[1] = v229;
      v238[2] = sub_24B09140C;
      v238[3] = v229;
      v238[4] = sub_24B091414;
      v238[5] = v229;
      v238[6] = sub_24B05EE80;
      v238[7] = 0;
      v238[8] = sub_24B09141C;
      v238[9] = v229;
      v238[10] = &unk_24B2E3940;
      v238[11] = v229;
      v238[12] = &unk_24B2E2E50;
      v238[13] = v229;
      v238[14] = &unk_24B2E3950;
      v238[15] = v229;
      v238[16] = sub_24B0914FC;
      v238[17] = v229;
      v239 = v234 + v236[8];
      LOBYTE(v421) = 0;
      sub_24B2D4CC4();
      v240 = *(&v405 + 1);
      *v239 = v405;
      *(v239 + 8) = v240;
      v241 = (v234 + v236[9]);
      *v241 = &unk_24B2E2E68;
      v241[1] = v232;
      sub_24B091854(v234, v335, type metadata accessor for RequestReceivedMessageView);
      swift_storeEnumTagMultiPayload();
      v242 = sub_24B091168(&qword_27EFC9728, type metadata accessor for RequestReceivedMessageView, &unk_24B2E4070);
      sub_24B090F60(v242, v243, v244);
      v245 = v336;
      sub_24B2D3ED4();
      sub_24B008890(v245, v345, &qword_27EFC9720, &qword_24B2E2D68);
      swift_storeEnumTagMultiPayload();
      sub_24B090D34();
      sub_24B090EA4();
      sub_24B2D3ED4();
      sub_24AFF8258(v245, &qword_27EFC9720, &qword_24B2E2D68);
      v246 = type metadata accessor for RequestReceivedMessageView;
      v247 = v234;
    }

    else
    {
      if (*(v81 + v80[8]))
      {
        v205 = *v82;
        v206 = *(v81 + v80[9]);
        v207 = v394;
        sub_24B2D33A4();
        if (v206 == 1)
        {
          v208 = v317;
          sub_24B063DB8(v205, v317);

          v209 = *(sub_24B2D33A4() + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_internalRepository);

          v210 = v326;
          if (v209)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            sub_24B2D3214();

            v211 = v405;
          }

          else
          {
            v211 = 0;
          }

          v289 = sub_24B2D33A4();
          *&v405 = &unk_24B2E2ED8;
          *(&v405 + 1) = v289;
          *&v406 = sub_24B091A74;
          *(&v406 + 1) = v289;
          *&v407 = sub_24B091A68;
          *(&v407 + 1) = v289;
          v408 = sub_24B05EE80;
          v409 = 0;
          v410 = sub_24B091A6C;
          v411 = v289;
          v412 = &unk_24B2E2EE0;
          v413 = v289;
          v414 = &unk_24B2E2EE8;
          v415 = v289;
          v416 = &unk_24B2E2EF0;
          v417 = v289;
          v418 = sub_24B091A70;
          v419 = v289;
          swift_retain_n();
          sub_24B0916DC(&v405);
          v290 = v318;
          sub_24B09191C(v208, v318, type metadata accessor for ShareSentMessageView.ShareState);
          v291 = v324;
          *(v290 + *(v324 + 20)) = v211;
          v292 = (v290 + v291[6]);
          *v292 = &unk_24B2E2EF0;
          v292[1] = v289;
          v293 = (v290 + v291[7]);
          *v293 = nullsub_1;
          v293[1] = 0;
          v294 = v290 + v291[8];
          *v294 = 0;
          *(v294 + 8) = xmmword_24B2E2B10;
          *(v294 + 24) = 0x4038000000000000;
          v295 = v290 + v291[9];
          LOBYTE(v404) = 0;
          sub_24B2D4CC4();
          v296 = *(&v400 + 1);
          *v295 = v400;
          *(v295 + 8) = v296;
          v297 = v320;
          sub_24B09191C(v290, v320, type metadata accessor for ShareSentMessageView);
          sub_24B091854(v297, v325, type metadata accessor for ShareSentMessageView);
          swift_storeEnumTagMultiPayload();
          sub_24B091168(&qword_27EFC9710, type metadata accessor for ShareSentMessageView, &unk_24B2E47D8);
        }

        else
        {
          v389 = *(v81 + v80[7]);
          v280 = v80[11];
          v281 = sub_24AFF2D64();
          v282 = v81 + v280;
          v283 = v319;
          sub_24B0640B8(v389, v282, v281, v284, v319);

          v285 = v393;

          v286 = v207;
          v287 = *(sub_24B2D33A4() + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_internalRepository);

          if (v287)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            sub_24B2D3214();

            v288 = v405;
          }

          else
          {
            v288 = 0;
          }

          v298 = sub_24B2D33A4();
          *&v405 = &unk_24B2E2E70;
          *(&v405 + 1) = v298;
          *&v406 = sub_24B091A74;
          *(&v406 + 1) = v298;
          *&v407 = sub_24B091A68;
          *(&v407 + 1) = v298;
          v408 = sub_24B05EE80;
          v409 = 0;
          v410 = sub_24B091A6C;
          v411 = v298;
          v412 = &unk_24B2E2E78;
          v413 = v298;
          v414 = &unk_24B2E2E80;
          v415 = v298;
          v416 = &unk_24B2E2E88;
          v417 = v298;
          v418 = sub_24B091A70;
          v419 = v298;
          swift_retain_n();
          sub_24B0916DC(&v405);
          v299 = v286;
          v300 = v285;
          v301 = v363;
          v302 = *(v363 + 32);
          v404 = *(v363 + 24);
          v421 = v302;
          v303 = swift_allocObject();
          v304 = *(v301 + 16);
          *(v303 + 16) = *v301;
          *(v303 + 32) = v304;
          *(v303 + 48) = *(v301 + 32);
          v305 = v283;
          v306 = v321;
          sub_24B09191C(v305, v321, type metadata accessor for ShareSentMessageView.ShareState);
          v307 = v324;
          *(v306 + *(v324 + 20)) = v288;
          v308 = (v306 + v307[6]);
          *v308 = &unk_24B2E2E88;
          v308[1] = v298;
          v309 = (v306 + v307[7]);
          *v309 = sub_24B091730;
          v309[1] = v303;
          v310 = v306 + v307[8];
          *v310 = 0;
          *(v310 + 8) = xmmword_24B2E2B10;
          *(v310 + 24) = 0x4038000000000000;
          v311 = v306 + v307[9];
          LOBYTE(v420) = 0;
          sub_24B09159C(v299, v300);
          sub_24B008890(&v404, &v400, &qword_27EFC7E20, &unk_24B2DF770);
          sub_24B008890(&v421, &v400, &qword_27EFC9620, &qword_24B2E2D00);
          sub_24B2D4CC4();
          v312 = *(&v400 + 1);
          *v311 = v400;
          *(v311 + 8) = v312;
          v297 = v322;
          sub_24B09191C(v306, v322, type metadata accessor for ShareSentMessageView);
          sub_24B091854(v297, v325, type metadata accessor for ShareSentMessageView);
          swift_storeEnumTagMultiPayload();
          sub_24B091168(&qword_27EFC9710, type metadata accessor for ShareSentMessageView, &unk_24B2E47D8);
          v210 = v326;
        }

        sub_24B2D3ED4();
        sub_24B0918BC(v297, type metadata accessor for ShareSentMessageView);
        sub_24B008890(v210, v338, &qword_27EFC9708, &qword_24B2E2D60);
        swift_storeEnumTagMultiPayload();
        sub_24B091168(&qword_27EFC96F8, type metadata accessor for ShareReceivedMessageView, &unk_24B2E43E0);
        sub_24B090DF0();
        v313 = v340;
        sub_24B2D3ED4();
        sub_24B008890(v313, v345, &qword_27EFC96F0, &qword_24B2E2D58);
        swift_storeEnumTagMultiPayload();
        sub_24B090D34();
        sub_24B090EA4();
        sub_24B2D3ED4();
        sub_24AFF8258(v313, &qword_27EFC96F0, &qword_24B2E2D58);
        sub_24AFF8258(v210, &qword_27EFC9708, &qword_24B2E2D60);
        v81 = v364;
        goto LABEL_57;
      }

      v248 = v80[6];
      v249 = v332;
      sub_24B091854(v81 + v248, v332, type metadata accessor for Friend);
      v250 = v393;
      sub_24B2D33A4();
      v251 = v80[11];
      v252 = sub_24AFF2D64();
      sub_24B062D54(v364 + v248, v364 + v251, v252, v253, v249 + *(v341 + 20));

      v254 = sub_24B2D33A4();
      v255 = v363;
      v256 = *(v363 + 32);
      *&v400 = *(v363 + 24);
      v404 = v256;
      swift_retain_n();
      v257 = v329;
      sub_24B091854(v364, v329, type metadata accessor for CompositeAppViewState.TranscriptInfo);
      v258 = (*(v327 + 80) + 56) & ~*(v327 + 80);
      v259 = swift_allocObject();
      v260 = *(v255 + 16);
      *(v259 + 16) = *v255;
      *(v259 + 32) = v260;
      *(v259 + 48) = *(v255 + 32);
      sub_24B09191C(v257, v259 + v258, type metadata accessor for CompositeAppViewState.TranscriptInfo);
      swift_retain_n();
      sub_24B09159C(v394, v250);

      sub_24B008890(&v400, &v405, &qword_27EFC7E20, &unk_24B2DF770);
      sub_24B008890(&v404, &v405, &qword_27EFC9620, &qword_24B2E2D00);
      sub_24B2D33B4();
      swift_getKeyPath();
      sub_24B2D3654();

      v261 = v405;
      v262 = v406;
      v263 = v341;
      v264 = v332;
      v265 = (v332 + *(v341 + 24));
      *v265 = &unk_24B2E2EF8;
      v265[1] = v254;
      v265[2] = sub_24B091A74;
      v265[3] = v254;
      v265[4] = sub_24B091A68;
      v265[5] = v254;
      v265[6] = sub_24B05EE80;
      v265[7] = 0;
      v265[8] = sub_24B091A6C;
      v265[9] = v254;
      v265[10] = &unk_24B2E2F00;
      v265[11] = v254;
      v265[12] = &unk_24B2E2F08;
      v265[13] = v254;
      v265[14] = &unk_24B2E2F10;
      v265[15] = v254;
      v265[16] = sub_24B091A70;
      v265[17] = v254;
      v266 = (v264 + v263[7]);
      *v266 = sub_24B091784;
      v266[1] = v259;
      v267 = v264 + v263[8];
      *v267 = 0;
      __asm { FMOV            V0.2D, #14.0 }

      *(v267 + 8) = _Q0;
      *(v267 + 24) = xmmword_24B2E2B00;
      *(v267 + 40) = 0x404B000000000000;
      v272 = v264 + v263[9];
      *v272 = v261;
      *(v272 + 16) = v262;
      sub_24B091854(v264, v338, type metadata accessor for ShareReceivedMessageView);
      swift_storeEnumTagMultiPayload();
      sub_24B091168(&qword_27EFC96F8, type metadata accessor for ShareReceivedMessageView, &unk_24B2E43E0);
      sub_24B090DF0();
      v273 = v340;
      sub_24B2D3ED4();
      sub_24B008890(v273, v345, &qword_27EFC96F0, &qword_24B2E2D58);
      swift_storeEnumTagMultiPayload();
      sub_24B090D34();
      sub_24B090EA4();
      sub_24B2D3ED4();
      sub_24AFF8258(v273, &qword_27EFC96F0, &qword_24B2E2D58);
      v246 = type metadata accessor for ShareReceivedMessageView;
      v247 = v264;
    }

    v81 = v364;
    sub_24B0918BC(v247, v246);
LABEL_57:
    v314 = v362;
    sub_24B008890(v362, v382, &qword_27EFC96E0, &qword_24B2E2D50);
    swift_storeEnumTagMultiPayload();
    sub_24B090B98();
    sub_24B090CA8();
    v315 = v384;
    sub_24B2D3ED4();
    sub_24B008890(v315, v397, &qword_27EFC96B0, &qword_24B2E2D40);
    swift_storeEnumTagMultiPayload();
    sub_24B09082C();
    sub_24B090B0C();
    sub_24B2D3ED4();
    sub_24AFF8258(v315, &qword_27EFC96B0, &qword_24B2E2D40);
    sub_24AFF8258(v314, &qword_27EFC96E0, &qword_24B2E2D50);
    v182 = type metadata accessor for CompositeAppViewState.TranscriptInfo;
    v183 = v81;
    return sub_24B0918BC(v183, v182);
  }

  v184 = v79 + *(v357 + 40);
  v185 = *v184;
  LOWORD(v184) = *(v184 + 8);
  *&v400 = v185;
  WORD4(v400) = v184;
  v186 = sub_24AFF2C7C();
  sub_24B0C03D8(v186, v187, *(v79 + v80[8]), &v405);
  v188 = v406;
  v400 = v405;
  v189 = v407;
  v420 = v407;
  v421 = *(&v406 + 1);
  v190 = v367;
  *v367 = v405;
  v190[1] = v188;
  *(v190 + 4) = v189;
  swift_storeEnumTagMultiPayload();
  sub_24B0912CC(&v400, &v404);
  sub_24B008890(&v421, &v404, &qword_27EFC97D0, &unk_24B2E2E30);
  sub_24B008890(&v420, &v404, &qword_27EFC97D8, &qword_24B2E4C60);
  v191 = sub_24B091168(&qword_27EFC96C8, type metadata accessor for FullScreenLocationDetailView, &unk_24B2E3598);
  sub_24B090C54(v191, v192, v193);
  v194 = v79;
  v195 = v368;
  sub_24B2D3ED4();
  sub_24B008890(v195, v382, &qword_27EFC96C0, &qword_24B2E2D48);
  swift_storeEnumTagMultiPayload();
  sub_24B090B98();
  sub_24B090CA8();
  v196 = v384;
  sub_24B2D3ED4();
  sub_24AFF8258(v195, &qword_27EFC96C0, &qword_24B2E2D48);
  sub_24B008890(v196, v397, &qword_27EFC96B0, &qword_24B2E2D40);
  swift_storeEnumTagMultiPayload();
  sub_24B09082C();
  sub_24B090B0C();
  sub_24B2D3ED4();
  sub_24B091328(&v400);
  sub_24AFF8258(&v421, &qword_27EFC97D0, &unk_24B2E2E30);
  sub_24AFF8258(&v420, &qword_27EFC97D8, &qword_24B2E4C60);
  sub_24AFF8258(v196, &qword_27EFC96B0, &qword_24B2E2D40);
  sub_24B0918BC(v194, type metadata accessor for CompositeAppViewState.TranscriptInfo);
  v183 = v72;
  v182 = type metadata accessor for CompositeAppViewState.TranscriptInfo;
  return sub_24B0918BC(v183, v182);
}

uint64_t sub_24B08D388@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v91 = a3;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9758, &qword_24B2E2D70);
  v77 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v76 = &v74 - v4;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9760, &qword_24B2E2D78);
  MEMORY[0x28223BE20](v87);
  v88 = (&v74 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9628, &qword_24B2E2D08);
  MEMORY[0x28223BE20](v6 - 8);
  v89 = &v74 - v7;
  v85 = sub_24B2D12F4();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A28, &qword_24B2E1950);
  MEMORY[0x28223BE20](v9 - 8);
  v93 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v92 = &v74 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v74 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v74 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880, &unk_24B2DE440);
  MEMORY[0x28223BE20](v19 - 8);
  v94 = (&v74 - v20);
  v82 = *a1;
  sub_24B2D5694();
  v86 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for CompositeAppViewModel(0);
  sub_24B091168(&qword_27EFC8A20, type metadata accessor for CompositeAppViewModel, &unk_24B2E1870);
  v21 = sub_24B2D33A4();
  v22 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
  swift_beginAccess();
  sub_24B008890(v21 + v22, v18, &qword_27EFC8A28, &qword_24B2E1950);

  v23 = type metadata accessor for CompositeAppViewInitialInfo(0);
  v78 = *(*(v23 - 1) + 48);
  if (v78(v18, 1, v23) == 1)
  {
    sub_24AFF8258(v18, &qword_27EFC8A28, &qword_24B2E1950);
    v24 = sub_24B2D1704();
    (*(*(v24 - 8) + 56))(v94, 1, 1, v24);
  }

  else
  {
    sub_24B008890(v18, v94, &qword_27EFC7880, &unk_24B2DE440);
    sub_24B0918BC(v18, type metadata accessor for CompositeAppViewInitialInfo);
  }

  v25 = sub_24B2D33A4();
  v26 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
  swift_beginAccess();
  sub_24B008890(v25 + v26, v15, &qword_27EFC8A28, &qword_24B2E1950);

  v27 = v78;
  if (v78(v15, 1, v23) == 1)
  {
    sub_24AFF8258(v15, &qword_27EFC8A28, &qword_24B2E1950);
    v80 = 0;
    v81 = 0;
  }

  else
  {
    v28 = &v15[v23[5]];
    v29 = v28[1];
    v80 = *v28;
    v81 = v29;

    sub_24B0918BC(v15, type metadata accessor for CompositeAppViewInitialInfo);
  }

  v30 = sub_24B2D33A4();
  v31 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
  swift_beginAccess();
  v32 = v30 + v31;
  v33 = v92;
  sub_24B008890(v32, v92, &qword_27EFC8A28, &qword_24B2E1950);

  if (v27(v33, 1, v23) == 1)
  {
    sub_24AFF8258(v33, &qword_27EFC8A28, &qword_24B2E1950);
    v79 = MEMORY[0x277D84F90];
  }

  else
  {
    v79 = *(v33 + v23[6]);

    sub_24B0918BC(v33, type metadata accessor for CompositeAppViewInitialInfo);
  }

  v34 = sub_24B2D33A4();
  v35 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
  swift_beginAccess();
  v36 = v34 + v35;
  v37 = v93;
  sub_24B008890(v36, v93, &qword_27EFC8A28, &qword_24B2E1950);

  if (v27(v37, 1, v23) == 1)
  {
    sub_24AFF8258(v37, &qword_27EFC8A28, &qword_24B2E1950);
    v75 = 1;
  }

  else
  {
    v75 = *(v37 + v23[8]);
    sub_24B0918BC(v37, type metadata accessor for CompositeAppViewInitialInfo);
  }

  v38 = sub_24B2D33A4();
  v39 = *(v38 + 32);
  v74 = *(v38 + 24);

  v40 = (sub_24B2D33A4() + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_didSelectSendLocationMessageHandler);
  v41 = *v40;
  v92 = v40[1];
  v93 = v41;
  sub_24AFD5880(v41, v92);

  v42 = sub_24B2D33A4();
  v43 = *(v42 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_didSelectStopSharingHandler + 8);
  v78 = *(v42 + OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_didSelectStopSharingHandler);
  sub_24AFD5880(v78, v43);

  v44 = v84;
  v45 = *(v84 + 104);
  v46 = v83;
  v47 = v85;
  v45(v83, *MEMORY[0x277D08AD8], v85);
  sub_24B091168(&qword_27EFC8118, MEMORY[0x277D08AF0], MEMORY[0x277D08AD0]);
  v48 = sub_24B2D2644();
  v49 = *(v44 + 8);
  v49(v46, v47);
  v45(v46, *MEMORY[0x277D08AE0], v47);
  v50 = sub_24B2D2644();
  v51 = (v49)(v46, v47);
  if ((v50 & 1) == 0)
  {
    v52 = v89;
    v53 = v94;
    if ((v48 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_19:

    v67 = sub_24B0A2A04(v66, v80, v81, v79);
    v68 = v88;
    *v88 = v67;
    v68[1] = v69;
    v70 = swift_storeEnumTagMultiPayload();
    sub_24B0910C0(v70, v71, v72);
    sub_24B039184(&qword_27EFC9750, &qword_27EFC9758, &qword_24B2E2D70, MEMORY[0x277CDDA18]);

    sub_24B2D3ED4();
    sub_24AFD5890(v78, v43);
    sub_24AFD5890(v93, v92);

    goto LABEL_20;
  }

  v51 = sub_24B2D5014();
  v52 = v89;
  v53 = v94;
  if ((v48 | v51))
  {
    goto LABEL_19;
  }

LABEL_17:
  v94 = &v74;
  MEMORY[0x28223BE20](v51);
  *(&v74 - 12) = v82;
  *(&v74 - 11) = v53;
  v54 = v53;
  v55 = v81;
  *(&v74 - 10) = v80;
  *(&v74 - 9) = v55;
  *(&v74 - 8) = v79;
  *(&v74 - 56) = v75;
  *&v56 = v74;
  *(&v56 + 1) = v39;
  *&v57 = v93;
  *(&v57 + 1) = v92;
  *(&v74 - 3) = v56;
  *(&v74 - 2) = v57;
  v58 = v43;
  v59 = v78;
  *(&v74 - 2) = v78;
  *(&v74 - 1) = v58;
  type metadata accessor for FullScreenLocationDetailViewStandalone(0);
  sub_24B091168(&qword_27EFC9768, type metadata accessor for FullScreenLocationDetailViewStandalone, &unk_24B2E388C);
  v60 = v76;
  sub_24B2D37C4();

  v53 = v54;

  v61 = v77;
  v62 = v90;
  (*(v77 + 16))(v88, v60, v90);
  v63 = swift_storeEnumTagMultiPayload();
  sub_24B0910C0(v63, v64, v65);
  sub_24B039184(&qword_27EFC9750, &qword_27EFC9758, &qword_24B2E2D70, MEMORY[0x277CDDA18]);
  sub_24B2D3ED4();
  sub_24AFD5890(v59, v58);
  sub_24AFD5890(v93, v92);
  (*(v61 + 8))(v60, v62);
LABEL_20:
  sub_24B0391CC(v52, v91, &qword_27EFC9628, &qword_24B2E2D08);
  sub_24AFF8258(v53, &qword_27EFC7880, &unk_24B2DE440);
}

uint64_t sub_24B08E010@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97F0, &qword_24B2E2FE0);
  MEMORY[0x28223BE20](v2);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v14 - v6;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D33E4();
  sub_24B2D5064();
  sub_24B2D3904();
  v8 = &v7[*(v2 + 36)];
  v9 = v14[5];
  *(v8 + 4) = v14[4];
  *(v8 + 5) = v9;
  *(v8 + 6) = v14[6];
  v10 = v14[1];
  *v8 = v14[0];
  *(v8 + 1) = v10;
  v11 = v14[3];
  *(v8 + 2) = v14[2];
  *(v8 + 3) = v11;
  sub_24B008890(v7, v4, &qword_27EFC97F0, &qword_24B2E2FE0);
  *a1 = 1;
  *(a1 + 8) = 256;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC97F8, &qword_24B2E2FE8);
  sub_24B008890(v4, a1 + *(v12 + 48), &qword_27EFC97F0, &qword_24B2E2FE0);
  sub_24AFF8258(v7, &qword_27EFC97F0, &qword_24B2E2FE0);
  sub_24AFF8258(v4, &qword_27EFC97F0, &qword_24B2E2FE0);
}

void sub_24B08E220(uint64_t *a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_24B2D22D4();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A28, &qword_24B2E1950);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v27 - v6;
  v8 = type metadata accessor for CompositeAppViewInitialInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  type metadata accessor for CompositeAppViewModel(0);
  sub_24B091168(&qword_27EFC8A20, type metadata accessor for CompositeAppViewModel, &unk_24B2E1870);
  v27[1] = v13;
  v27[2] = v12;
  v14 = sub_24B2D33A4();
  v15 = OBJC_IVAR____TtC12FindMyUICore21CompositeAppViewModel_initialInfo;
  swift_beginAccess();
  sub_24B008890(v14 + v15, v7, &qword_27EFC8A28, &qword_24B2E1950);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24AFF8258(v7, &qword_27EFC8A28, &qword_24B2E1950);
    if (qword_27EFC75E8 != -1)
    {
      swift_once();
    }

    v16 = sub_24B2D3184();
    __swift_project_value_buffer(v16, qword_27EFE4418);
    v17 = sub_24B2D3164();
    v18 = sub_24B2D5914();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_24AFF321C(1702060386, 0xE400000000000000, v33);
      _os_log_impl(&dword_24AFD2000, v17, v18, "CompositeAppViewModel: %s - Can't run action with no initialInfo", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x24C23D530](v20, -1, -1);
      MEMORY[0x24C23D530](v19, -1, -1);
    }
  }

  else
  {
    sub_24B09191C(v7, v11, type metadata accessor for CompositeAppViewInitialInfo);
    if ((v31 & 0x10) != 0)
    {
      v26 = *&v11[*(v8 + 24)];
      *v33 = *(a1 + 3);
      v32 = v26;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9610, &qword_24B2E2CE8);
      sub_24B2D4CE4();
    }

    else if ((v31 & 0x20) != 0)
    {
      sub_24B2D33A4();

      v21 = v28;
      sub_24B00CDE8(*&v11[*(v8 + 24)], 0, 0, v28);
      v22 = [objc_opt_self() defaultWorkspace];
      if (v22)
      {
        v23 = v22;
        v24 = sub_24B2D2294();
        v25 = sub_24B2D51D4();
        [v23 openSensitiveURL:v24 withOptions:v25];
      }

      (*(v29 + 8))(v21, v30);
    }

    sub_24B0918BC(v11, type metadata accessor for CompositeAppViewInitialInfo);
  }
}

uint64_t sub_24B08E6F0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7978, &unk_24B2DE6F0);
  v3 = *(type metadata accessor for Friend(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24B2DE430;
  v6 = type metadata accessor for CompositeAppViewState.TranscriptInfo(0);
  sub_24B091854(a2 + *(v6 + 24), v5 + v4, type metadata accessor for Friend);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9610, &qword_24B2E2CE8);
  return sub_24B2D4CE4();
}

uint64_t sub_24B08E80C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();

  *a2 = v4;
  return result;
}

uint64_t sub_24B08E8B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_24B2D5694();
  v2[4] = sub_24B2D5684();
  v4 = sub_24B2D5604();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_24B08E94C, v4, v3);
}

uint64_t sub_24B08E94C()
{
  type metadata accessor for CompositeAppViewModel(0);
  sub_24B091168(&qword_27EFC8A20, type metadata accessor for CompositeAppViewModel, &unk_24B2E1870);
  v0[7] = sub_24B2D33A4();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_24B08EA58;
  v2 = v0[2];

  return sub_24B05F5A0(v2, 1);
}

uint64_t sub_24B08EA58()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_24B088130, v3, v2);
}

uint64_t sub_24B08EB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DebugViewWithActorInit.ContentState(0, a2, a3, a4);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v11 - v9, a1, v6, v8);
  sub_24B2D4CC4();
  return (*(v7 + 8))(a1, v6);
}

uint64_t sub_24B08EC90(void *a1)
{
  type metadata accessor for DebugViewWithActorInit.ContentState(255, a1[2], a1[3], a1[4]);
  sub_24B2D4D04();

  return sub_24B2D4CD4();
}

uint64_t DebugViewWithActorInit.init(valueLoader:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v16 = type metadata accessor for DebugViewWithActorInit.ContentState(0, a5, a6, a7);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v23 - v18;
  (*(*(a5 - 8) + 56))(&v23 - v18, 1, 1, a5, v17);
  sub_24B08EB9C(v19, a5, a6, a7);
  result = type metadata accessor for DebugViewWithActorInit(0, a5, a6, a7);
  v21 = (a8 + *(result + 44));
  *v21 = a1;
  v21[1] = a2;
  v22 = (a8 + *(result + 48));
  *v22 = a3;
  v22[1] = a4;
  return result;
}

uint64_t DebugViewWithActorInit.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v3 = sub_24B2D56D4();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(a1 - 8);
  v43 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC94F8, &qword_24B2E2B20);
  v7 = *(a1 + 24);
  sub_24B2D3EE4();
  v8 = sub_24B039184(qword_27EFC9500, &qword_27EFC94F8, &qword_24B2E2B20, MEMORY[0x277CDD7F8]);
  v9 = *(a1 + 32);
  v10 = a1;
  v54 = v8;
  v55 = v9;
  v11 = v9;
  v35 = v9;
  swift_getWitnessTable();
  v12 = sub_24B2D4E14();
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  sub_24B2D35A4();
  v15 = sub_24B2D37B4();
  v40 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v36 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v37 = &v34 - v18;
  v48 = *(v10 + 16);
  v19 = v48;
  v49 = v7;
  v20 = v41;
  v50 = v11;
  v51 = v41;
  sub_24B2D5064();
  sub_24B2D4E04();
  v21 = v38;
  v22 = v39;
  (*(v39 + 16))(v38, v20, v10);
  v23 = (*(v22 + 80) + 40) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = v19;
  *(v24 + 3) = v7;
  *(v24 + 4) = v35;
  (*(v22 + 32))(&v24[v23], v21, v10);
  WitnessTable = swift_getWitnessTable();
  v26 = v44;
  sub_24B2D56A4();
  v27 = v36;
  sub_24B2D48D4();

  (*(v45 + 8))(v26, v46);
  (*(v42 + 8))(v14, v12);
  v28 = sub_24B091168(&qword_27EFC7890, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  v52 = WitnessTable;
  v53 = v28;
  swift_getWitnessTable();
  v29 = v40;
  v30 = *(v40 + 16);
  v31 = v37;
  v30(v37, v27, v15);
  v32 = *(v29 + 8);
  v32(v27, v15);
  v30(v47, v31, v15);
  return (v32)(v31, v15);
}

uint64_t sub_24B08F36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v53 = a5;
  v47 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v42 - v11;
  v51 = *(v12 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94F8, &qword_24B2E2B20);
  v44 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  v19 = a2;
  v20 = a4;
  v21 = type metadata accessor for DebugViewWithActorInit.ContentState(0, a2, a3, a4);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v42 - v22;
  v49 = v16;
  v52 = sub_24B2D3EE4();
  v24 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v42 - v25;
  sub_24B2D5694();
  v48 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = type metadata accessor for DebugViewWithActorInit(0, a2, a3, v20);
  sub_24B08EC90(v26);
  v27 = v51;
  if ((*(v51 + 48))(v23, 1, v19) == 1)
  {
    sub_24B2D33E4();
    v28 = sub_24B039184(qword_27EFC9500, &qword_27EFC94F8, &qword_24B2E2B20, MEMORY[0x277CDD7F8]);
    v29 = v49;
    v30 = v50;
    sub_24B088D90(v18, v49, a3, v28, v20);
    (*(v44 + 8))(v18, v29);
  }

  else
  {
    v31 = *(v27 + 32);
    v43 = v15;
    v31(v15, v23, v19);
    v32 = (a1 + *(v26 + 48));
    v44 = v24;
    v33 = v27;
    v34 = v45;
    (*v32)(v15);
    v35 = v46;
    v36 = v47;
    v37 = *(v47 + 16);
    v37(v46, v34, a3);
    v38 = *(v36 + 8);
    v38(v34, a3);
    v37(v34, v35, a3);
    v39 = sub_24B039184(qword_27EFC9500, &qword_27EFC94F8, &qword_24B2E2B20, MEMORY[0x277CDD7F8]);
    v30 = v50;
    sub_24B088E88(v34, v49, a3, v39, v20);
    v38(v34, a3);
    v38(v35, a3);
    (*(v33 + 8))(v43, v19);
    v24 = v44;
  }

  v54 = sub_24B039184(qword_27EFC9500, &qword_27EFC94F8, &qword_24B2E2B20, MEMORY[0x277CDD7F8]);
  v55 = v20;
  v40 = v52;
  swift_getWitnessTable();
  (*(v24 + 16))(v53, v30, v40);
  (*(v24 + 8))(v30, v40);
}

uint64_t sub_24B08F918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DebugViewWithActorInit.ContentState(0, a2, a3, a4);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_24B2D5694();
  v4[9] = sub_24B2D5684();
  v7 = sub_24B2D5604();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x2822009F8](sub_24B08FA10, v7, v6);
}

uint64_t sub_24B08FA10()
{
  v1 = v0[2];
  v2 = type metadata accessor for DebugViewWithActorInit(0, v0[3], v0[4], v0[5]);
  v0[12] = v2;
  v6 = (*(v1 + *(v2 + 44)) + **(v1 + *(v2 + 44)));
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_24B08FB1C;
  v4 = v0[8];

  return v6(v4);
}

uint64_t sub_24B08FB1C()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_24B08FC3C, v3, v2);
}

uint64_t sub_24B08FC3C()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[3];

  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  sub_24B091984(v2, v1);
  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24B08FD1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(type metadata accessor for DebugViewWithActorInit(0, v2, v3, v4) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24AFFDE44;

  return sub_24B08F918(v0 + v6, v2, v3, v4);
}

unint64_t sub_24B08FE70(uint64_t *a1)
{
  type metadata accessor for DebugViewWithActorInit.ContentState(255, a1[2], a1[3], a1[4]);
  result = sub_24B2D4D04();
  if (v2 <= 0x3F)
  {
    result = sub_24B07A804();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24B08FF08(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
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

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v20 = *((a1 + v9 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }

    else
    {
      v19 = (*(v4 + 48))(a1);
      if (v19 >= 2)
      {
        return v19 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_24B090088(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v8;
  }

  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = ((((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 < a3)
  {
    v14 = a3 - v10;
    if (((((v12 + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v5 = v16;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v10)
  {
    if (((((v12 + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a2 - v10;
    }

    else
    {
      v17 = 1;
    }

    if (((((v12 + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v18 = ~v10 + a2;
      v19 = a1;
      bzero(a1, ((((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
      a1 = v19;
      *v19 = v18;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v13) = v17;
      }

      else
      {
        *(a1 + v13) = v17;
      }
    }

    else if (v5)
    {
      *(a1 + v13) = v17;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    *(a1 + v13) = 0;
LABEL_40:
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!v5)
  {
    goto LABEL_40;
  }

  *(a1 + v13) = 0;
  if (!a2)
  {
    return;
  }

LABEL_41:
  if (v8 < 0x7FFFFFFF)
  {
    v23 = ((a1 + v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v23 = a2 & 0x7FFFFFFF;
      v23[1] = 0;
    }

    else
    {
      *v23 = a2 - 1;
    }
  }

  else if (v9 >= a2)
  {
    if (v8 >= a2)
    {
      v28 = *(v6 + 56);

      v28();
    }

    else
    {
      if (v11 <= 3)
      {
        v24 = ~(-1 << (8 * v11));
      }

      else
      {
        v24 = -1;
      }

      if (v11)
      {
        v25 = v24 & (~v8 + a2);
        if (v11 <= 3)
        {
          v26 = v11;
        }

        else
        {
          v26 = 4;
        }

        v27 = a1;
        bzero(a1, v11);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *v27 = v25;
            *(v27 + 2) = BYTE2(v25);
          }

          else
          {
            *v27 = v25;
          }
        }

        else if (v26 == 1)
        {
          *v27 = v25;
        }

        else
        {
          *v27 = v25;
        }
      }
    }
  }

  else
  {
    v20 = ((v11 + 7) & 0xFFFFFFF8) + 8;
    if (v20)
    {
      v21 = ~v9 + a2;
      v22 = a1;
      bzero(a1, v20);
      *v22 = v21;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12FindMyUICore28FullScreenLocationDetailViewV13SelectionTypeOSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B09036C(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_24B0903C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_24B090548(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
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
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

unint64_t sub_24B0907A0()
{
  result = qword_27EFC9630;
  if (!qword_27EFC9630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9608, &qword_24B2E2CE0);
    sub_24B09082C();
    sub_24B090B0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9630);
  }

  return result;
}

unint64_t sub_24B09082C()
{
  result = qword_27EFC9638;
  if (!qword_27EFC9638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9640, &qword_24B2E2D10);
    sub_24B0908B8();
    sub_24B090A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9638);
  }

  return result;
}

unint64_t sub_24B0908B8()
{
  result = qword_27EFC9648;
  if (!qword_27EFC9648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9650, &qword_24B2E2D18);
    sub_24B090970();
    sub_24B039184(&qword_27EFC9678, &qword_27EFC9680, &qword_24B2E2D30, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9648);
  }

  return result;
}

unint64_t sub_24B090970()
{
  result = qword_27EFC9658;
  if (!qword_27EFC9658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9660, &unk_24B2E2D20);
    sub_24B039184(&qword_27EFC9668, &qword_27EFC9670, &qword_24B2E4880, &unk_24B2E2598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9658);
  }

  return result;
}

unint64_t sub_24B090A20()
{
  result = qword_27EFC9688;
  if (!qword_27EFC9688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9690, &qword_24B2E2D38);
    sub_24B091168(&qword_27EFC9698, type metadata accessor for QuickSendAppView, &unk_24B2E3EA8);
    sub_24B091168(&qword_27EFC96A0, type metadata accessor for DetailsAppView, &unk_24B2E3230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9688);
  }

  return result;
}

unint64_t sub_24B090B0C()
{
  result = qword_27EFC96A8;
  if (!qword_27EFC96A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC96B0, &qword_24B2E2D40);
    sub_24B090B98();
    sub_24B090CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC96A8);
  }

  return result;
}

unint64_t sub_24B090B98()
{
  result = qword_27EFC96B8;
  if (!qword_27EFC96B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC96C0, &qword_24B2E2D48);
    v3 = sub_24B091168(&qword_27EFC96C8, type metadata accessor for FullScreenLocationDetailView, &unk_24B2E3598);
    sub_24B090C54(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC96B8);
  }

  return result;
}

unint64_t sub_24B090C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFC96D0;
  if (!qword_27EFC96D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC96D0);
  }

  return result;
}

unint64_t sub_24B090CA8()
{
  result = qword_27EFC96D8;
  if (!qword_27EFC96D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC96E0, &qword_24B2E2D50);
    sub_24B090D34();
    sub_24B090EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC96D8);
  }

  return result;
}

unint64_t sub_24B090D34()
{
  result = qword_27EFC96E8;
  if (!qword_27EFC96E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC96F0, &qword_24B2E2D58);
    sub_24B091168(&qword_27EFC96F8, type metadata accessor for ShareReceivedMessageView, &unk_24B2E43E0);
    sub_24B090DF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC96E8);
  }

  return result;
}

unint64_t sub_24B090DF0()
{
  result = qword_27EFC9700;
  if (!qword_27EFC9700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9708, &qword_24B2E2D60);
    sub_24B091168(&qword_27EFC9710, type metadata accessor for ShareSentMessageView, &unk_24B2E47D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9700);
  }

  return result;
}

unint64_t sub_24B090EA4()
{
  result = qword_27EFC9718;
  if (!qword_27EFC9718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9720, &qword_24B2E2D68);
    v3 = sub_24B091168(&qword_27EFC9728, type metadata accessor for RequestReceivedMessageView, &unk_24B2E4070);
    sub_24B090F60(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9718);
  }

  return result;
}

unint64_t sub_24B090F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFC9730;
  if (!qword_27EFC9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9730);
  }

  return result;
}

unint64_t sub_24B090FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFC9738;
  if (!qword_27EFC9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9738);
  }

  return result;
}

unint64_t sub_24B091008()
{
  result = qword_27EFC9740;
  if (!qword_27EFC9740)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9628, &qword_24B2E2D08);
    sub_24B0910C0(v1, v2, v3);
    sub_24B039184(&qword_27EFC9750, &qword_27EFC9758, &qword_24B2E2D70, MEMORY[0x277CDDA18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9740);
  }

  return result;
}

unint64_t sub_24B0910C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EFC9748;
  if (!qword_27EFC9748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9748);
  }

  return result;
}

uint64_t sub_24B091114(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_24B091168(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B0911B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24B2D3214();
}

uint64_t sub_24B09122C(uint64_t a1)
{
  v2 = type metadata accessor for CompositeAppViewState(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B091854(a1, v4, type metadata accessor for CompositeAppViewState);
  return sub_24B059A08(v4);
}

uint64_t sub_24B09137C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AFFDE44;

  return sub_24B05D1A0();
}

uint64_t sub_24B091424(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_24AFFDE44;

  return sub_24B05FFF4(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24B091504(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AFFD370;

  return sub_24B08E8B4(a1, v1 + 16);
}

uint64_t sub_24B0915A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFDE44;

  return sub_24B05F4DC(a1, a2);
}

uint64_t sub_24B09164C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AFFDE44;

  return sub_24B060920();
}

uint64_t sub_24B091784()
{
  v1 = *(type metadata accessor for CompositeAppViewState.TranscriptInfo(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_24B08E6F0(v0 + 16, v2);
}

uint64_t objectdestroy_15Tm(uint64_t a1)
{
  sub_24B090790(v1[2], v1[3]);
  if (v1[5] != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_24B091854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B0918BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B09191C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B091984(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for DebugViewWithActorInit.ContentState(0, a2[2], a2[3], a2[4]);
  v4 = MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(&v8 - v5, a1, v3, v4);
  sub_24B2D4D04();
  return sub_24B2D4CE4();
}

uint64_t sub_24B091A78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24B091AC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B091B2C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a3;
  v28 = a4;
  v26 = a2;
  v5 = a1;
  v25 = a1;
  v32 = a5;
  v6 = sub_24B2D2E24();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9800, &qword_24B2E42C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9808, &qword_24B2E30B0);
  v11 = *(v10 - 8);
  v30 = v10;
  v31 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9810, &qword_24B2E30B8);
  MEMORY[0x28223BE20](v29);
  v15 = &v25 - v14;
  sub_24B2D2D34();
  v16 = sub_24B2D2D44();
  (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  v37 = MEMORY[0x277D84F90];
  sub_24B092B94(&qword_27EFC9818, MEMORY[0x277CE42D0], MEMORY[0x277CE42D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9820, &qword_24B2E30C0);
  sub_24B039184(&qword_27EFC9828, &qword_27EFC9820, &qword_24B2E30C0, MEMORY[0x277D83970]);
  sub_24B2D5B44();
  v33 = v5;
  LOBYTE(v5) = v26;
  v34 = v26;
  v18 = v27;
  v17 = v28;
  v35 = v27;
  v36 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9830, &qword_24B2E30C8);
  sub_24B039184(&qword_27EFC9838, &qword_27EFC9830, &qword_24B2E30C8, MEMORY[0x277CE42A0]);
  sub_24B2D2C94();
  sub_24B039184(&qword_27EFC9840, &qword_27EFC9808, &qword_24B2E30B0, MEMORY[0x277CE42B0]);
  v19 = v30;
  sub_24B2D4634();
  (*(v31 + 8))(v13, v19);
  v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9848, &unk_24B2E30D0) + 36)] = 0;
  v15[*(v29 + 36)] = 0;
  v20 = v25;
  v37 = v25;
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v5;
  *(v21 + 32) = v18;
  *(v21 + 40) = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_24B09288C;
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_24B09289C;
  *(v23 + 24) = v22;

  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9850, &unk_24B2E4310);
  sub_24B0928AC();
  sub_24B092A60();
  sub_24B2D49B4();

  return sub_24AFD95CC(v15);
}

uint64_t sub_24B092030@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a1;
  v31 = a3;
  v36 = a2;
  v35 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9890, &unk_24B2E30F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v33 = &v30 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9898, &qword_24B2E3E40);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC98A0, &qword_24B2E3100);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  sub_24B2D5694();
  v32 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v36)
  {
    sub_24B2D3034();
    (*(v12 + 32))(v20, v14, v11);
    (*(v12 + 56))(v20, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v20, 1, 1, v11);
  }

  v21 = v31;
  v37 = v31;
  v38 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9888, &qword_24B2E30E8);
  sub_24B2D4CD4();
  v22 = swift_allocObject();
  *(v22 + 16) = v30;
  *(v22 + 24) = v36 & 1;
  *(v22 + 32) = v21;
  *(v22 + 40) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9850, &unk_24B2E4310);
  type metadata accessor for AnnotationContent(0);
  sub_24B039184(&qword_27EFC98A8, &qword_27EFC9850, &unk_24B2E4310, MEMORY[0x277D83980]);
  sub_24B092B94(&qword_27EFC98B0, type metadata accessor for AnnotationContent, &unk_24B2ED510);
  sub_24B092B94(&qword_27EFC98B8, type metadata accessor for Annotation, &protocol conformance descriptor for Annotation);
  v23 = v33;
  sub_24B2D4EC4();
  sub_24B092BDC(v20, v17);
  v24 = *(v7 + 16);
  v25 = v34;
  v24(v34, v23, v6);
  v26 = v35;
  sub_24B092BDC(v17, v35);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC98C0, &qword_24B2E3108);
  v24((v26 + *(v27 + 48)), v25, v6);
  v28 = *(v7 + 8);
  v28(v23, v6);
  sub_24B092C4C(v20);
  v28(v25, v6);
  sub_24B092C4C(v17);
}

uint64_t sub_24B09250C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B092CB4(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9888, &qword_24B2E30E8);
  sub_24B2D4CD4();
  v4 = *(v11 + 16);

  v5 = v4 < 2;
  sub_24B2D4CD4();
  v6 = *(v11 + 16);

  v7 = type metadata accessor for AnnotationContent(0);
  *(a2 + v7[5]) = v5;
  *(a2 + v7[6]) = v6 < 2;
  *(a2 + v7[7]) = 0;
  v8 = v7[8];
  sub_24B2D4A84();
  v9 = sub_24B2D4B44();

  *(a2 + v8) = v9;
  return result;
}

uint64_t sub_24B092674(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 16) && *(a2 + 16))
  {
    v6 = sub_24B2D50C4();
    MEMORY[0x28223BE20](v6);
    sub_24B2D35C4();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9888, &qword_24B2E30E8);
    return sub_24B2D4CE4();
  }
}

uint64_t sub_24B092784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9888, &qword_24B2E30E8);
  sub_24B2D4CE4();
}

unint64_t sub_24B0928AC()
{
  result = qword_27EFC9858;
  if (!qword_27EFC9858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9810, &qword_24B2E30B8);
    sub_24B092964();
    sub_24B039184(&qword_27EFC9868, &qword_27EFC9870, &qword_24B2E30E0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9858);
  }

  return result;
}

unint64_t sub_24B092964()
{
  result = qword_27EFC9860;
  if (!qword_27EFC9860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9848, &unk_24B2E30D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9808, &qword_24B2E30B0);
    sub_24B039184(&qword_27EFC9840, &qword_27EFC9808, &qword_24B2E30B0, MEMORY[0x277CE42B0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9860);
  }

  return result;
}

unint64_t sub_24B092A60()
{
  result = qword_27EFC9878;
  if (!qword_27EFC9878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC9850, &unk_24B2E4310);
    sub_24B092B94(&qword_27EFC9880, type metadata accessor for Annotation, &protocol conformance descriptor for Annotation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC9878);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24B092B94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B092BDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC98A0, &qword_24B2E3100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B092C4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC98A0, &qword_24B2E3100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B092CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Annotation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_24B092DA0(uint64_t a1)
{
  type metadata accessor for DetailsAppView.State(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DetailsAppView.Style(319);
    if (v2 <= 0x3F)
    {
      sub_24B07A804();
      if (v3 <= 0x3F)
      {
        sub_24B09317C(319, &qword_27EFC98D8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24B092EB8(uint64_t a1)
{
  result = type metadata accessor for CustomControlStyle(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24B092F70(uint64_t a1)
{
  sub_24B093118(319, &qword_27EFC9900, type metadata accessor for SessionLocation.Description, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24B093118(319, &qword_27EFC7B78, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24B093118(319, &unk_27EFC7908, type metadata accessor for Friend, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_24B09317C(319, &qword_27EFC7900, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for LocateAction(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24B093118(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_24B09317C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_12FindMyUICore14DetailsAppViewV5StateV8LocationO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24B0931E4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B093238(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_24B093294(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24B0932D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24B093320(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B09338C@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v74 = a2;
  v76 = sub_24B2D50F4();
  v3 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B2D4A54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CustomControlStyle(0);
  MEMORY[0x28223BE20](v9);
  v70 = (v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (v50 - v12);
  if (a1)
  {
    sub_24B2D4394();
    sub_24B2D43F4();
    v73 = sub_24B2D4424();

    v14 = 10.0;
    v15 = sub_24B2D4474();
  }

  else
  {
    v73 = sub_24B2D4484();
    v14 = 14.0;
    v15 = sub_24B2D4394();
  }

  v72 = v15;
  v16 = *MEMORY[0x277CE0EE0];
  v17 = *(v6 + 104);
  v57 = v6 + 104;
  v17(v8, v16, v5);
  v63 = v17;
  v18 = sub_24B2D4B74();
  v62 = v5;
  v19 = MEMORY[0x277CE0F60];
  v13[3] = MEMORY[0x277CE0F78];
  v13[4] = v19;
  *v13 = v18;
  sub_24B2D4394();
  sub_24B2D43D4();
  v61 = sub_24B2D4424();

  v58 = v8;
  v20 = v16;
  v17(v8, v16, v5);
  sub_24B2D4B74();
  v66 = sub_24B2D4B44();

  v71 = *MEMORY[0x277CE13B0];
  v21 = v3[13];
  v50[1] = v3 + 13;
  v22 = v75;
  v23 = v76;
  v21(v75);
  v50[0] = v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9908, &qword_24B2E3280);
  v78 = v24;
  v64 = v24;
  v69 = sub_24B039184(&qword_27EFC9910, &qword_27EFC9908, &qword_24B2E3280, MEMORY[0x277CE03C0]);
  v79 = v69;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v77);
  v26 = *(v24 + 36);
  v27 = v3[2];
  v67 = v3 + 2;
  v68 = v27;
  v27(boxed_opaque_existential_0 + v26, v22, v23);
  *boxed_opaque_existential_0 = v66;
  v28 = v3[1];
  v65 = v3 + 1;
  v66 = v28;
  v28(v22, v23);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8D48, &unk_24B2E3B60);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC9390, &qword_24B2E2130);
  sub_24B2D1AA4();
  v29 = v9[8];
  v55 = *MEMORY[0x277CDF420];
  v30 = v55;
  v54 = sub_24B2D3364();
  v31 = *(v54 - 8);
  v53 = *(v31 + 104);
  v56 = v31 + 104;
  v53(v13 + v29, v30, v54);
  v52 = type metadata accessor for CustomControlStyle.BackgroundSize(0);
  swift_storeEnumTagMultiPayload();
  v32 = v9[6];
  v51 = *MEMORY[0x277CE13D8];
  v21(v13 + v32);
  v13[5] = v61;
  *(v13 + v9[9]) = 1;
  *(v13 + v9[10]) = 0;
  v33 = v13 + v9[11];
  *v33 = 0;
  v33[8] = 1;
  v34 = v58;
  v35 = v62;
  v36 = v63;
  v63(v58, v20, v62);
  v37 = sub_24B2D4B74();
  v38 = v70;
  v70[3] = MEMORY[0x277CE0F78];
  v38[4] = MEMORY[0x277CE0F60];
  *v38 = v37;
  sub_24B2D4394();
  sub_24B2D43D4();
  v61 = sub_24B2D4424();

  v36(v34, v20, v35);
  sub_24B2D4B74();
  v39 = sub_24B2D4B44();

  v41 = v75;
  v40 = v76;
  v42 = v50[0];
  (v50[0])(v75, v71, v76);
  v43 = v64;
  v78 = v64;
  v79 = v69;
  v44 = __swift_allocate_boxed_opaque_existential_0(v77);
  v68(v44 + *(v43 + 36), v41, v40);
  *v44 = v39;
  v66(v41, v40);
  sub_24B2D1AA4();
  v53(v38 + v9[8], v55, v54);
  swift_storeEnumTagMultiPayload();
  v42(v38 + v9[6], v51, v40);
  v38[5] = v61;
  *(v38 + v9[9]) = 1;
  *(v38 + v9[10]) = 0;
  v45 = v38 + v9[11];
  *v45 = 0;
  v45[8] = 1;
  v46 = v74;
  v47 = v72;
  *v74 = v73;
  v46[1] = v47;
  v48 = type metadata accessor for DetailsAppView.Style(0);
  sub_24B098F60(v13, v46 + v48[6], type metadata accessor for CustomControlStyle);
  result = sub_24B098F60(v38, v46 + v48[7], type metadata accessor for CustomControlStyle);
  *(v46 + v48[8]) = v14;
  *(v46 + v48[9]) = 0x402C000000000000;
  *(v46 + v48[10]) = 0x4018000000000000;
  return result;
}