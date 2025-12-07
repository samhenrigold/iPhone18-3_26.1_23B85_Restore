uint64_t sub_220D5074C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - v4;
  v6 = sub_220DC0460();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  v10 = sub_220DBE240();
  v12 = v11;
  sub_220CDB190();
  v13 = a1;
  sub_220DBE040();
  sub_220DBE0C0();
  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C8, &qword_220DC4E60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_220DC17A0;
  v15 = sub_220DC0440();
  v17 = v16;
  v18 = sub_220DC0450();
  *(v14 + 32) = v10;
  *(v14 + 40) = v12;
  *(v14 + 64) = v10;
  *(v14 + 72) = v12;
  *(v14 + 48) = v15;
  *(v14 + 56) = v17;
  *(v14 + 80) = v18;
  *(v14 + 88) = v19;
  *(v14 + 96) = 0;
  v20 = *(v7 + 8);

  v20(v9, v6);
  return v14;
}

void sub_220D509F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v33 = a4;
  v38 = a3;
  v40 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0);
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v36 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v39 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v34 = &v32 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = sub_220DBEC20();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PrecipitationTotalStringAmount(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE050();
  if (v21 > 0.0)
  {
    v32 = *(v15 + 16);
    v32(v17, v40, v14);
    if ((*(v15 + 88))(v17, v14) == *MEMORY[0x277CE33A0])
    {
      v22 = *(v39 + 16);
      v22(v13, a1, v6);
      v23 = v34;
      v22(v34, v13, v6);
      if (v33)
      {
        sub_220CF8B70();
        v24 = 2;
      }

      else
      {
        v22(v9, v13, v6);
        sub_220CDEE30(v23, v9, &v20[*(v18 + 20)]);
        v24 = 1;
      }

      v25 = v39;
    }

    else
    {
      (*(v15 + 8))(v17, v14);
      v25 = v39;
      v26 = *(v39 + 16);
      v26(v13, a1, v6);
      v26(v34, v13, v6);
      sub_220CDB1D4();
      v24 = 0;
    }

    (*(v25 + 8))(v13, v6);
    *v20 = v24;
    v27 = v36;
    v28 = *(v35 + 48);
    v32(v36, v40, v14);
    sub_220D15FF4(v20, v27 + v28);
    v29 = v38;
    swift_beginAccess();
    sub_220D513A0();
    v30 = *(*(v29 + 16) + 16);
    sub_220D513EC(v30);
    v31 = *(v29 + 16);
    *(v31 + 16) = v30 + 1;
    sub_220D514E0(v27, v31 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v30);
    *(v29 + 16) = v31;
    swift_endAccess();
  }
}

uint64_t sub_220D50E78(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v23 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  sub_220CFD2D8(v22, &v22 - v14, &qword_27CF952C0, &unk_220DC4FC0);
  v16 = *(v10 + 56);
  PrecipitationTotalStringAmount.maxAmount.getter(v8);
  sub_220CE1C00(&v15[v16]);
  sub_220CFD2D8(v23, v13, &qword_27CF952C0, &unk_220DC4FC0);
  v17 = *(v10 + 56);
  PrecipitationTotalStringAmount.maxAmount.getter(v6);
  sub_220CE1C00(&v13[v17]);
  sub_220D53B5C();
  LOBYTE(v17) = sub_220DC0580();
  v18 = *(v3 + 8);
  v18(v6, v2);
  v18(v8, v2);
  v19 = sub_220DBEC20();
  v20 = *(*(v19 - 8) + 8);
  v20(v13, v19);
  v20(v15, v19);
  return v17 & 1;
}

uint64_t sub_220D510E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_220DBEC00();
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    v38 = 0x8000000220DF0DC0;
    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_220DC17C0;
    v8 = MEMORY[0x277D837D0];
    *(v7 + 56) = MEMORY[0x277D837D0];
    v9 = sub_220CEFDB0();
    *(v7 + 64) = v9;
    *(v7 + 32) = v4;
    *(v7 + 40) = v5;

    v10 = Precipitation.chartColorAccessibilityDescription.getter();
    *(v7 + 96) = v8;
    *(v7 + 104) = v9;
    *(v7 + 72) = v10;
    *(v7 + 80) = v11;
    v12 = sub_220DC05F0();
    v42 = v13;
    v45 = v12;
  }

  else
  {
    v14 = Precipitation.chartColorAccessibilityDescription.getter();
    v42 = v15;
    v45 = v14;
  }

  v16 = v4;
  v17 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v17, 0, 1, v18, v19, v20, v21, v22, v38, v40, v42, v45, v48, v50, v52, v54, v56, v58, v60, v62);
  v24 = v23;
  v26 = v25;

  v27 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v27, 1, 1, v28, v29, v30, v31, v32, v39, v41, v43, v46, v49, v51, v53, v55, v57, v59, v61, v63);
  v34 = v33;
  v36 = v35;

  result = Precipitation.chartColor.getter();
  *a1 = v16;
  a1[1] = v5;
  a1[4] = v47;
  a1[5] = v44;
  a1[2] = v24;
  a1[3] = v26;
  a1[6] = v34;
  a1[7] = v36;
  a1[8] = result;
  return result;
}

void sub_220D513A0()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_220D562FC(0, *(v1 + 16) + 1, 1, v1);
    *v0 = v3;
  }
}

void sub_220D513EC(uint64_t result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    sub_220D562FC(v2 > 1, result + 1, 1, *v1);
    *v1 = v3;
  }
}

uint64_t sub_220D5142C(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_220D81A1C();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_220D51550(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_220D514E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D51550(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_220DC0C60();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0);
        v6 = sub_220DC0760();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_220D51CC0(v8, v9, a1, v4);
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
    return sub_220D51698(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_220D51698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v72 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v8 = MEMORY[0x28223BE20](v72);
  v71 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v70 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v65 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v54 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0);
  v16 = MEMORY[0x28223BE20](v73);
  v63 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v68 = &v54 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v67 = &v54 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v74 = &v54 - v23;
  result = MEMORY[0x28223BE20](v22);
  v27 = &v54 - v26;
  v56 = a2;
  if (a3 != a2)
  {
    v28 = *a4;
    v29 = *(v25 + 72);
    v66 = (v12 + 32);
    v30 = (v12 + 8);
    v31 = v28 + v29 * (a3 - 1);
    v61 = -v29;
    v62 = v28;
    v32 = a1 - a3;
    v55 = v29;
    v33 = v28 + v29 * a3;
    v64 = &v54 - v26;
    while (2)
    {
      v59 = v31;
      v60 = a3;
      v57 = v33;
      v58 = v32;
      do
      {
        sub_220CFD2D8(v33, v27, &qword_27CF952C0, &unk_220DC4FC0);
        sub_220CFD2D8(v31, v74, &qword_27CF952C0, &unk_220DC4FC0);
        v34 = v67;
        sub_220CFD2D8(v27, v67, &qword_27CF952C0, &unk_220DC4FC0);
        v35 = v34 + *(v73 + 48);
        v36 = type metadata accessor for PrecipitationTotalStringAmount(0);
        sub_220CDDC14(v35 + *(v36 + 20), v70, type metadata accessor for PrecipitationTotalStringAmount.Format);
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
          v37 = *v66;
          v39 = v70;
          (*v66)(v69, v70 + *(v38 + 48), v11);
          (*v30)(v39, v11);
        }

        else
        {
          v37 = *v66;
          (*v66)(v69, v70, v11);
        }

        sub_220CE1C00(v35);
        v40 = v68;
        sub_220CFD2D8(v74, v68, &qword_27CF952C0, &unk_220DC4FC0);
        v41 = v40 + *(v73 + 48);
        sub_220CDDC14(v41 + *(v36 + 20), v71, type metadata accessor for PrecipitationTotalStringAmount.Format);
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
          v44 = v71;
          v45 = v65;
          v37(v65, v71 + *(v43 + 48), v11);
          v46 = v44;
          v42 = v45;
          (*v30)(v46, v11);
        }

        else
        {
          v42 = v65;
          v37(v65, v71, v11);
        }

        sub_220CE1C00(v41);
        sub_220D53B5C();
        v47 = v69;
        v48 = sub_220DC0580();
        v49 = *v30;
        (*v30)(v42, v11);
        v49(v47, v11);
        v50 = sub_220DBEC20();
        v51 = *(*(v50 - 8) + 8);
        v51(v68, v50);
        v51(v67, v50);
        sub_220CDA548(v74, &qword_27CF952C0, &unk_220DC4FC0);
        v27 = v64;
        result = sub_220CDA548(v64, &qword_27CF952C0, &unk_220DC4FC0);
        if ((v48 & 1) == 0)
        {
          break;
        }

        if (!v62)
        {
          __break(1u);
          return result;
        }

        v52 = v63;
        sub_220D514E0(v33, v63);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_220D514E0(v52, v31);
        v31 += v61;
        v33 += v61;
      }

      while (!__CFADD__(v32++, 1));
      a3 = v60 + 1;
      v31 = v59 + v55;
      v32 = v58 - 1;
      v33 = v57 + v55;
      if (v60 + 1 != v56)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_220D51CC0(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v171 = a4;
  v172 = a1;
  v5 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v6 = MEMORY[0x28223BE20](v5);
  v202 = &v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v201 = &v169 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v187 = &v169 - v11;
  MEMORY[0x28223BE20](v10);
  v186 = &v169 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v200 = &v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v199 = &v169 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v178 = &v169 - v20;
  MEMORY[0x28223BE20](v19);
  v188 = &v169 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0);
  v181 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v176 = &v169 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v194 = &v169 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v198 = &v169 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v197 = &v169 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v206 = &v169 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v196 = &v169 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v185 = &v169 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v184 = &v169 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v191 = &v169 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v183 = &v169 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  MEMORY[0x28223BE20](v43);
  v182 = a3;
  v46 = a3[1];
  if (v46 < 1)
  {
    v189 = MEMORY[0x277D84F90];
LABEL_114:
    v14 = *v172;
    if (!*v172)
    {
      goto LABEL_157;
    }

    v158 = v189;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_151;
  }

  v169 = &v169 - v44;
  v47 = 0;
  v203 = (v14 + 32);
  v195 = (v14 + 8);
  v189 = MEMORY[0x277D84F90];
  v204 = v5;
  v205 = v22;
  v170 = v45;
  while (1)
  {
    v48 = v47++;
    if (v47 < v46)
    {
      v180 = v46;
      v49 = *v182;
      v173 = v48;
      v50 = *(v181 + 72);
      v51 = &v49[v50 * v47];
      v52 = v169;
      v14 = v45;
      sub_220CFD2D8(v51, v169, &qword_27CF952C0, &unk_220DC4FC0);
      v193 = v49;
      sub_220CFD2D8(&v49[v50 * v173], v14, &qword_27CF952C0, &unk_220DC4FC0);
      v53 = v190;
      LODWORD(v179) = sub_220D50E78(v52, v14);
      v190 = v53;
      if (v53)
      {
        sub_220CDA548(v14, &qword_27CF952C0, &unk_220DC4FC0);
        sub_220CDA548(v52, &qword_27CF952C0, &unk_220DC4FC0);
LABEL_126:

        return;
      }

      sub_220CDA548(v14, &qword_27CF952C0, &unk_220DC4FC0);
      sub_220CDA548(v52, &qword_27CF952C0, &unk_220DC4FC0);
      v54 = v173 + 2;
      v55 = (v193 + v50 * (v173 + 2));
      v56 = v50;
      v193 = v50;
      v57 = v180;
      while (1)
      {
        v58 = v54;
        if (v47 + 1 >= v57)
        {
          break;
        }

        v59 = v183;
        sub_220CFD2D8(v55, v183, &qword_27CF952C0, &unk_220DC4FC0);
        sub_220CFD2D8(v51, v191, &qword_27CF952C0, &unk_220DC4FC0);
        v60 = v59;
        v61 = v184;
        sub_220CFD2D8(v60, v184, &qword_27CF952C0, &unk_220DC4FC0);
        v62 = v61 + *(v22 + 48);
        v63 = type metadata accessor for PrecipitationTotalStringAmount(0);
        sub_220CDDC14(v62 + *(v63 + 20), v186, type metadata accessor for PrecipitationTotalStringAmount.Format);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v192 = v47;
        if (EnumCaseMultiPayload > 1)
        {
          v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
          v65 = *v203;
          v67 = v186;
          (*v203)(v188, v186 + *(v66 + 48), v13);
          (*v195)(v67, v13);
        }

        else
        {
          v65 = *v203;
          (*v203)(v188, v186, v13);
        }

        sub_220CE1C00(v62);
        v68 = v185;
        sub_220CFD2D8(v191, v185, &qword_27CF952C0, &unk_220DC4FC0);
        v69 = v68 + *(v205 + 48);
        sub_220CDDC14(v69 + *(v63 + 20), v187, type metadata accessor for PrecipitationTotalStringAmount.Format);
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
          v72 = v187;
          v70 = v178;
          v65(v178, v187 + *(v71 + 48), v13);
          (*v195)(v72, v13);
        }

        else
        {
          v70 = v178;
          v65(v178, v187, v13);
        }

        sub_220CE1C00(v69);
        sub_220D53B5C();
        v73 = v188;
        v74 = sub_220DC0580();
        v75 = v70;
        v14 = v74 & 1;
        v76 = *v195;
        (*v195)(v75, v13);
        v76(v73, v13);
        v77 = sub_220DBEC20();
        v78 = *(*(v77 - 8) + 8);
        v78(v185, v77);
        v78(v184, v77);
        sub_220CDA548(v191, &qword_27CF952C0, &unk_220DC4FC0);
        sub_220CDA548(v183, &qword_27CF952C0, &unk_220DC4FC0);
        v56 = v193;
        v55 += v193;
        v51 += v193;
        v47 = v192 + 1;
        v54 = v58 + 1;
        v22 = v205;
        v57 = v180;
        if ((v179 & 1) != v14)
        {
          goto LABEL_16;
        }
      }

      v47 = v57;
LABEL_16:
      if (v179)
      {
        if (v47 < v173)
        {
          goto LABEL_150;
        }

        if (v173 >= v47)
        {
          v48 = v173;
          goto LABEL_38;
        }

        if (v57 >= v58)
        {
          v79 = v58;
        }

        else
        {
          v79 = v57;
        }

        v14 = v56 * (v79 - 1);
        v80 = v56 * v79;
        v81 = v173 * v56;
        v82 = v47;
        v83 = v173;
        v192 = v47;
        do
        {
          if (v83 != --v82)
          {
            v84 = *v182;
            if (!*v182)
            {
              goto LABEL_155;
            }

            sub_220D514E0(v84 + v81, v176);
            v85 = v81 < v14 || v84 + v81 >= (v84 + v80);
            if (v85)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v81 != v14)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_220D514E0(v176, v84 + v14);
            v47 = v192;
            v56 = v193;
          }

          ++v83;
          v14 -= v56;
          v80 -= v56;
          v81 += v56;
        }

        while (v83 < v82);
        v22 = v205;
      }

      v48 = v173;
    }

LABEL_38:
    v86 = v182[1];
    if (v47 < v86)
    {
      if (__OFSUB__(v47, v48))
      {
        goto LABEL_147;
      }

      if (v47 - v48 < v171)
      {
        break;
      }
    }

LABEL_62:
    v114 = v189;
    if (v47 < v48)
    {
      goto LABEL_146;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_220D562D4();
      v114 = v156;
    }

    v14 = *(v114 + 2);
    v115 = v14 + 1;
    if (v14 >= *(v114 + 3) >> 1)
    {
      sub_220D562D4();
      v114 = v157;
    }

    *(v114 + 2) = v115;
    v116 = v114 + 32;
    v117 = &v114[16 * v14 + 32];
    *v117 = v48;
    v117[1] = v47;
    v193 = *v172;
    if (!v193)
    {
      goto LABEL_156;
    }

    v189 = v114;
    if (v14)
    {
      while (1)
      {
        v118 = v115 - 1;
        v119 = &v116[2 * v115 - 2];
        v120 = &v114[16 * v115];
        if (v115 >= 4)
        {
          break;
        }

        if (v115 == 3)
        {
          v121 = *(v114 + 4);
          v122 = *(v114 + 5);
          v131 = __OFSUB__(v122, v121);
          v123 = v122 - v121;
          v124 = v131;
LABEL_82:
          if (v124)
          {
            goto LABEL_133;
          }

          v136 = *v120;
          v135 = *(v120 + 1);
          v137 = __OFSUB__(v135, v136);
          v138 = v135 - v136;
          v139 = v137;
          if (v137)
          {
            goto LABEL_136;
          }

          v140 = v119[1];
          v141 = v140 - *v119;
          if (__OFSUB__(v140, *v119))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v138, v141))
          {
            goto LABEL_141;
          }

          if (v138 + v141 >= v123)
          {
            if (v123 < v141)
            {
              v118 = v115 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v115 < 2)
        {
          goto LABEL_135;
        }

        v143 = *v120;
        v142 = *(v120 + 1);
        v131 = __OFSUB__(v142, v143);
        v138 = v142 - v143;
        v139 = v131;
LABEL_97:
        if (v139)
        {
          goto LABEL_138;
        }

        v145 = *v119;
        v144 = v119[1];
        v131 = __OFSUB__(v144, v145);
        v146 = v144 - v145;
        if (v131)
        {
          goto LABEL_140;
        }

        if (v146 < v138)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v118 - 1 >= v115)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
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
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (!*v182)
        {
          goto LABEL_153;
        }

        v150 = v47;
        v14 = &v116[2 * v118 - 2];
        v151 = *v14;
        v152 = &v116[2 * v118];
        v153 = *(v152 + 1);
        v154 = v190;
        sub_220D52E90(*v182 + *(v181 + 72) * *v14, *v182 + *(v181 + 72) * *v152, *v182 + *(v181 + 72) * v153, v193);
        v190 = v154;
        if (v154)
        {
          goto LABEL_126;
        }

        if (v153 < v151)
        {
          goto LABEL_128;
        }

        v155 = *(v189 + 2);
        if (v118 > v155)
        {
          goto LABEL_129;
        }

        *v14 = v151;
        *(v14 + 8) = v153;
        if (v118 >= v155)
        {
          goto LABEL_130;
        }

        v115 = v155 - 1;
        sub_220D81848(v152 + 16, v155 - 1 - v118, &v116[2 * v118]);
        v114 = v189;
        *(v189 + 2) = v155 - 1;
        v47 = v150;
        if (v155 <= 2)
        {
          goto LABEL_111;
        }
      }

      v125 = &v116[2 * v115];
      v126 = *(v125 - 8);
      v127 = *(v125 - 7);
      v131 = __OFSUB__(v127, v126);
      v128 = v127 - v126;
      if (v131)
      {
        goto LABEL_131;
      }

      v130 = *(v125 - 6);
      v129 = *(v125 - 5);
      v131 = __OFSUB__(v129, v130);
      v123 = v129 - v130;
      v124 = v131;
      if (v131)
      {
        goto LABEL_132;
      }

      v132 = *(v120 + 1);
      v133 = v132 - *v120;
      if (__OFSUB__(v132, *v120))
      {
        goto LABEL_134;
      }

      v131 = __OFADD__(v123, v133);
      v134 = v123 + v133;
      if (v131)
      {
        goto LABEL_137;
      }

      if (v134 >= v128)
      {
        v148 = *v119;
        v147 = v119[1];
        v131 = __OFSUB__(v147, v148);
        v149 = v147 - v148;
        if (v131)
        {
          goto LABEL_145;
        }

        if (v123 < v149)
        {
          v118 = v115 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v46 = v182[1];
    v22 = v205;
    v45 = v170;
    if (v47 >= v46)
    {
      goto LABEL_114;
    }
  }

  v87 = v48 + v171;
  if (__OFADD__(v48, v171))
  {
    goto LABEL_148;
  }

  if (v87 >= v86)
  {
    v87 = v182[1];
  }

  if (v87 < v48)
  {
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    v158 = sub_220D81650();
LABEL_116:
    v159 = v158;
    v162 = *(v158 + 2);
    v160 = (v158 + 16);
    for (i = v162; i >= 2; *v160 = i)
    {
      if (!*v182)
      {
        goto LABEL_154;
      }

      v163 = &v159[16 * i];
      v164 = *v163;
      v165 = &v160[2 * i];
      v166 = *(v165 + 1);
      v167 = v190;
      sub_220D52E90(*v182 + *(v181 + 72) * *v163, *v182 + *(v181 + 72) * *v165, *v182 + *(v181 + 72) * v166, v14);
      v190 = v167;
      if (v167)
      {
        break;
      }

      if (v166 < v164)
      {
        goto LABEL_142;
      }

      if (i - 2 >= *v160)
      {
        goto LABEL_143;
      }

      *v163 = v164;
      *(v163 + 1) = v166;
      v168 = *v160 - i;
      if (*v160 < i)
      {
        goto LABEL_144;
      }

      i = *v160 - 1;
      sub_220D81848(v165 + 16, v168, v165);
    }

    goto LABEL_126;
  }

  if (v47 == v87)
  {
    goto LABEL_62;
  }

  v88 = *v182;
  v89 = *(v181 + 72);
  v90 = *v182 + v89 * (v47 - 1);
  v91 = v47;
  v92 = -v89;
  v173 = v48;
  v93 = v48 - v91;
  v192 = v91;
  v193 = v88;
  v174 = v89;
  v94 = &v88[v91 * v89];
  v175 = v87;
LABEL_47:
  v177 = v94;
  v179 = v93;
  v180 = v90;
  while (1)
  {
    v95 = v196;
    sub_220CFD2D8(v94, v196, &qword_27CF952C0, &unk_220DC4FC0);
    sub_220CFD2D8(v90, v206, &qword_27CF952C0, &unk_220DC4FC0);
    v96 = v95;
    v97 = v197;
    sub_220CFD2D8(v96, v197, &qword_27CF952C0, &unk_220DC4FC0);
    v98 = v97 + *(v22 + 48);
    v99 = type metadata accessor for PrecipitationTotalStringAmount(0);
    sub_220CDDC14(v98 + *(v99 + 20), v201, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
      v100 = *v203;
      v102 = v201;
      (*v203)(v199, v201 + *(v101 + 48), v13);
      (*v195)(v102, v13);
    }

    else
    {
      v100 = *v203;
      (*v203)(v199, v201, v13);
    }

    sub_220CE1C00(v98);
    v103 = v198;
    sub_220CFD2D8(v206, v198, &qword_27CF952C0, &unk_220DC4FC0);
    v104 = v103 + *(v205 + 48);
    sub_220CDDC14(v104 + *(v99 + 20), v202, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
      v106 = v202;
      v100(v200, v202 + *(v105 + 48), v13);
      (*v195)(v106, v13);
    }

    else
    {
      v100(v200, v202, v13);
    }

    sub_220CE1C00(v104);
    sub_220D53B5C();
    v108 = v199;
    v107 = v200;
    v109 = sub_220DC0580();
    v110 = v107;
    v111 = *v195;
    (*v195)(v110, v13);
    v111(v108, v13);
    v112 = sub_220DBEC20();
    v113 = *(*(v112 - 8) + 8);
    v113(v198, v112);
    v113(v197, v112);
    v14 = &unk_220DC4FC0;
    sub_220CDA548(v206, &qword_27CF952C0, &unk_220DC4FC0);
    sub_220CDA548(v196, &qword_27CF952C0, &unk_220DC4FC0);
    if ((v109 & 1) == 0)
    {
      v22 = v205;
LABEL_60:
      v90 = v180 + v174;
      v93 = v179 - 1;
      v94 = v177 + v174;
      if (++v192 == v175)
      {
        v47 = v175;
        v48 = v173;
        goto LABEL_62;
      }

      goto LABEL_47;
    }

    v22 = v205;
    if (!v193)
    {
      break;
    }

    v14 = v194;
    sub_220D514E0(v94, v194);
    swift_arrayInitWithTakeFrontToBack();
    sub_220D514E0(v14, v90);
    v90 += v92;
    v94 += v92;
    v85 = __CFADD__(v93++, 1);
    if (v85)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
}

uint64_t sub_220D52E90(unint64_t a1, unint64_t a2, unint64_t a3, char *a4)
{
  v134 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v8 = MEMORY[0x28223BE20](v134);
  v116 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v119 = &v114 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v130 = &v114 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v114 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v115 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v123 = &v114 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v124 = &v114 - v23;
  MEMORY[0x28223BE20](v22);
  v129 = &v114 - v24;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0);
  v25 = MEMORY[0x28223BE20](v136);
  v122 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v121 = &v114 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v125 = &v114 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v120 = &v114 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v128 = &v114 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v127 = &v114 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v135 = &v114 - v38;
  result = MEMORY[0x28223BE20](v37);
  v126 = &v114 - v40;
  v42 = *(v41 + 72);
  if (!v42)
  {
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return result;
  }

  v43 = a2 - a1 == 0x8000000000000000 && v42 == -1;
  if (v43)
  {
    goto LABEL_78;
  }

  v44 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v42 == -1)
  {
    goto LABEL_79;
  }

  v46 = (a2 - a1) / v42;
  v139 = a1;
  v138 = a4;
  v132 = (v17 + 8);
  v133 = (v17 + 32);
  v47 = v42;
  v48 = v44 / v42;
  if (v46 < v44 / v42)
  {
    sub_220CFB550(a1, (a2 - a1) / v42, a4);
    v125 = &a4[v46 * v47];
    v137 = v125;
    v118 = a3;
    v117 = v47;
    while (1)
    {
      if (a4 >= v125 || a2 >= a3)
      {
        goto LABEL_76;
      }

      v50 = v126;
      sub_220CFD2D8(a2, v126, &qword_27CF952C0, &unk_220DC4FC0);
      sub_220CFD2D8(a4, v135, &qword_27CF952C0, &unk_220DC4FC0);
      v51 = v50;
      v52 = v127;
      sub_220CFD2D8(v51, v127, &qword_27CF952C0, &unk_220DC4FC0);
      v53 = v52 + *(v136 + 48);
      v54 = type metadata accessor for PrecipitationTotalStringAmount(0);
      sub_220CDDC14(v53 + *(v54 + 20), v15, type metadata accessor for PrecipitationTotalStringAmount.Format);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v131 = a1;
      if (EnumCaseMultiPayload > 1)
      {
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
        v56 = *v133;
        (*v133)(v129, &v15[*(v57 + 48)], v16);
        (*v132)(v15, v16);
      }

      else
      {
        v56 = *v133;
        (*v133)(v129, v15, v16);
      }

      v58 = v15;
      sub_220CE1C00(v53);
      v59 = v128;
      sub_220CFD2D8(v135, v128, &qword_27CF952C0, &unk_220DC4FC0);
      v60 = v59 + *(v136 + 48);
      sub_220CDDC14(v60 + *(v54 + 20), v130, type metadata accessor for PrecipitationTotalStringAmount.Format);
      v61 = a2;
      v62 = a4;
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
        v65 = v130;
        v63 = v124;
        v56(v124, &v130[*(v64 + 48)], v16);
        (*v132)(v65, v16);
      }

      else
      {
        v63 = v124;
        v56(v124, v130, v16);
      }

      sub_220CE1C00(v60);
      sub_220D53B5C();
      v66 = v129;
      v67 = sub_220DC0580();
      v68 = *v132;
      (*v132)(v63, v16);
      v68(v66, v16);
      v69 = sub_220DBEC20();
      v70 = *(*(v69 - 8) + 8);
      v70(v128, v69);
      v70(v127, v69);
      sub_220CDA548(v135, &qword_27CF952C0, &unk_220DC4FC0);
      sub_220CDA548(v126, &qword_27CF952C0, &unk_220DC4FC0);
      if ((v67 & 1) == 0)
      {
        break;
      }

      v71 = v117;
      v72 = v61 + v117;
      v73 = v131;
      v74 = v131 < v61 || v131 >= v72;
      a4 = v62;
      if (v74)
      {
        swift_arrayInitWithTakeFrontToBack();
        a2 = v61 + v71;
        a3 = v118;
LABEL_41:
        v15 = v58;
        goto LABEL_42;
      }

      v43 = v131 == v61;
      a3 = v118;
      v15 = v58;
      if (!v43)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      a2 = v72;
LABEL_42:
      a1 = v73 + v71;
      v139 = a1;
    }

    v75 = v62;
    v71 = v117;
    a4 = (v62 + v117);
    v73 = v131;
    if (v131 < v62 || v131 >= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      a2 = v61;
      a3 = v118;
    }

    else
    {
      a2 = v61;
      a3 = v118;
      if (v131 != v75)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v138 = a4;
    goto LABEL_41;
  }

  sub_220CFB550(a2, v44 / v42, a4);
  v129 = a4;
  v77 = v47;
  v78 = &a4[v48 * v47];
  v79 = -v77;
  v80 = v78;
  v131 = a1;
  v135 = v79;
LABEL_44:
  v81 = a2 + v79;
  v82 = a3;
  v124 = v80;
  v83 = v80;
  v127 = a2 + v79;
  v128 = a2;
  while (1)
  {
    if (v78 <= v129)
    {
      v139 = a2;
      v137 = v83;
      goto LABEL_76;
    }

    if (a2 <= a1)
    {
      break;
    }

    v130 = v82;
    v126 = v83;
    v84 = v78 + v79;
    v85 = v78 + v79;
    v86 = v120;
    sub_220CFD2D8(v85, v120, &qword_27CF952C0, &unk_220DC4FC0);
    sub_220CFD2D8(v81, v125, &qword_27CF952C0, &unk_220DC4FC0);
    v87 = v86;
    v88 = v121;
    sub_220CFD2D8(v87, v121, &qword_27CF952C0, &unk_220DC4FC0);
    v89 = v88 + *(v136 + 48);
    v90 = type metadata accessor for PrecipitationTotalStringAmount(0);
    sub_220CDDC14(v89 + *(v90 + 20), v119, type metadata accessor for PrecipitationTotalStringAmount.Format);
    v91 = swift_getEnumCaseMultiPayload();
    if (v91)
    {
      v92 = v116;
      if (v91 == 1)
      {
        v93 = *v133;
        (*v133)(v123, v119, v16);
      }

      else
      {
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
        v93 = *v133;
        v95 = v119;
        (*v133)(v123, &v119[*(v94 + 48)], v16);
        (*v132)(v95, v16);
      }
    }

    else
    {
      v93 = *v133;
      (*v133)(v123, v119, v16);
      v92 = v116;
    }

    v96 = v115;
    sub_220CE1C00(v89);
    v97 = v122;
    sub_220CFD2D8(v125, v122, &qword_27CF952C0, &unk_220DC4FC0);
    v98 = v97 + *(v136 + 48);
    sub_220CDDC14(v98 + *(v90 + 20), v92, type metadata accessor for PrecipitationTotalStringAmount.Format);
    v99 = swift_getEnumCaseMultiPayload();
    if (v99)
    {
      v100 = v135;
      if (v99 == 1)
      {
        v93(v96, v92, v16);
      }

      else
      {
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
        v93(v96, (v92 + *(v101 + 48)), v16);
        (*v132)(v92, v16);
      }
    }

    else
    {
      v93(v96, v92, v16);
      v100 = v135;
    }

    v102 = v130;
    v103 = &v130[v100];
    sub_220CE1C00(v98);
    sub_220D53B5C();
    v104 = v123;
    v105 = sub_220DC0580();
    v106 = *v132;
    (*v132)(v96, v16);
    v106(v104, v16);
    v107 = sub_220DBEC20();
    v108 = *(*(v107 - 8) + 8);
    v108(v122, v107);
    v108(v121, v107);
    sub_220CDA548(v125, &qword_27CF952C0, &unk_220DC4FC0);
    sub_220CDA548(v120, &qword_27CF952C0, &unk_220DC4FC0);
    if (v105)
    {
      v111 = v102 < v128 || v103 >= v128;
      a1 = v131;
      a3 = v103;
      if (v111)
      {
        a2 = v127;
        swift_arrayInitWithTakeFrontToBack();
        v80 = v126;
        v79 = v135;
      }

      else
      {
        v113 = v126;
        v112 = v127;
        v80 = v126;
        v43 = v102 == v128;
        a2 = v127;
        v79 = v135;
        if (!v43)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v112;
          v80 = v113;
        }
      }

      goto LABEL_44;
    }

    v109 = v102 < v78 || v103 >= v78;
    a1 = v131;
    v110 = v103;
    if (v109)
    {
      swift_arrayInitWithTakeFrontToBack();
      v82 = v103;
      v78 = v84;
      v83 = v84;
      v79 = v135;
      v81 = v127;
      a2 = v128;
    }

    else
    {
      v83 = v84;
      v43 = v78 == v102;
      v82 = v103;
      v78 = v84;
      v79 = v135;
      v81 = v127;
      a2 = v128;
      if (!v43)
      {
        swift_arrayInitWithTakeBackToFront();
        v82 = v110;
        v78 = v84;
        v83 = v84;
      }
    }
  }

  v139 = a2;
  v137 = v124;
LABEL_76:
  sub_220D81668(&v139, &v138, &v137);
  return 1;
}

unint64_t sub_220D53B5C()
{
  result = qword_27CF95B98;
  if (!qword_27CF95B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95208, &unk_220DC1E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95B98);
  }

  return result;
}

uint64_t SunriseSunsetTableViewModelFactory.init(sunEventViewModelFactory:sunriseSunsetEventCalculator:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SunriseSunsetTableViewModelFactory(0);
  v7 = v6[6];
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  v8 = (a3 + v7);
  OUTLINED_FUNCTION_2_22();
  *v8 = sub_220DBE240();
  v8[1] = v9;
  v10 = (a3 + v6[7]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_22();
  *v10 = sub_220DBE240();
  v10[1] = v11;
  v12 = (a3 + v6[8]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_22();
  *v12 = sub_220DBE240();
  v12[1] = v13;
  v14 = (a3 + v6[9]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_22();
  *v14 = sub_220DBE240();
  v14[1] = v15;
  v16 = (a3 + v6[10]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_22();
  *v16 = sub_220DBE240();
  v16[1] = v17;
  v18 = (a3 + v6[11]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_22();
  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D83B88];
  *(v19 + 16) = xmmword_220DC17A0;
  v21 = MEMORY[0x277D83C10];
  *(v19 + 56) = v20;
  *(v19 + 64) = v21;
  *(v19 + 32) = 7;
  v22 = sub_220DC05F0();
  v24 = v23;

  *v18 = v22;
  v18[1] = v24;
  sub_220CD570C(a1, a3);
  v25 = v6[5];
  v26 = sub_220DC04D0();
  v27 = *(*(v26 - 8) + 32);

  return v27(a3 + v25, a2, v26);
}

uint64_t type metadata accessor for SunriseSunsetTableViewModelFactory(uint64_t a1)
{
  result = qword_27CF95BA0;
  if (!qword_27CF95BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D53F24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_52_1();
  v2();
  sub_220D586FC();
  v5 = sub_220DC06F0();
  sub_220D56FB0(&v5);
  v3 = v5;
  if (v0)
  {
  }

  return v3;
}

uint64_t SunriseSunsetTableViewModelFactory.makePolarViewModel(from:forecast:timeZone:calendar:type:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = v6;
  v149 = a5;
  v135 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
  OUTLINED_FUNCTION_18(v13);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  v133 = v127 - v15;
  v16 = OUTLINED_FUNCTION_6_1();
  v17 = type metadata accessor for OverviewTableRowViewModel(v16);
  OUTLINED_FUNCTION_0();
  v148 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9();
  v142 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_25_0();
  v134 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_25_0();
  v144 = v24;
  OUTLINED_FUNCTION_23();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = (v127 - v27);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (v127 - v30);
  MEMORY[0x28223BE20](v29);
  v33 = (v127 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v35 = OUTLINED_FUNCTION_18(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9();
  v145 = v36;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_0();
  v140 = v39;
  v141 = v38;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_57();
  v131 = *v149;
  v138 = v42;
  sub_220DBE3E0();
  v130 = a2;
  sub_220D54AE0(a1, MEMORY[0x277CE37C8], v7);
  v137 = a3;
  v43 = sub_220D54EF0(v7, v8, a3);
  v45 = v44;
  v132 = v7;
  v139 = a4;
  v136 = a1;
  v129 = sub_220D54898(v7, a4, a1, v8);
  v47 = v46;
  v143 = type metadata accessor for SunriseSunsetTableViewModelFactory(0);
  v48 = v143[6];
  v147 = v8;
  v49 = (v8 + v48);
  v51 = *v49;
  v50 = v49[1];
  v52 = v33 + *(v17 + 24);
  v128 = v43;
  *v52 = v43;
  *(v52 + 8) = v45;
  *(v52 + 16) = 0;
  v53 = type metadata accessor for OverviewTableValueString(0);
  OUTLINED_FUNCTION_15_9();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_3(v52);
  *v33 = v51;
  v33[1] = v50;
  v33[2] = v51;
  v33[3] = v50;
  v146 = v17;
  *(v33 + *(v17 + 28)) = 0;
  swift_bridgeObjectRetain_n();

  v54 = sub_220D563D8(0, 1, 1, MEMORY[0x277D84F90]);
  v56 = *(v54 + 16);
  v55 = *(v54 + 24);
  v57 = v56 + 1;
  if (v56 >= v55 >> 1)
  {
    v54 = sub_220D563D8((v55 > 1), v56 + 1, 1, v54);
  }

  *(v54 + 16) = v57;
  OUTLINED_FUNCTION_13_2();
  v149 = v58;
  v148 = *(v59 + 72);
  sub_220CFD40C(v33, &v58[v54 + v148 * v56]);
  v60 = v146;
  v61 = v31 + *(v146 + 24);
  *v61 = v128;
  *(v61 + 8) = v45;
  *(v61 + 16) = 0;
  OUTLINED_FUNCTION_15_9();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_3(v61);
  v62 = v129;
  *v31 = v129;
  v31[1] = v47;
  v31[2] = v62;
  v31[3] = v47;
  *(v31 + *(v60 + 28)) = 0;
  v63 = *(v54 + 24);

  if ((v56 + 2) > (v63 >> 1))
  {
    v54 = OUTLINED_FUNCTION_39_1();
  }

  *(v54 + 16) = v56 + 2;
  OUTLINED_FUNCTION_44_0();
  sub_220CFD40C(v31, v64 + v65 * v57);
  v66 = v145;
  v67 = v136;
  sub_220D54AE0(v136, MEMORY[0x277CE37C0], v145);
  v68 = v147;
  v69 = sub_220D54EF0(v66, v147, v137);
  v71 = v70;
  v72 = sub_220D5508C(v66, v139, v67, v68);
  v74 = v73;
  v75 = v146;
  v76 = v28 + *(v146 + 24);
  *v76 = v69;
  *(v76 + 8) = v71;
  *(v76 + 16) = 0;
  OUTLINED_FUNCTION_15_9();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_3(v76);
  *v28 = v72;
  v28[1] = v74;
  v28[2] = v72;
  v28[3] = v74;
  *(v28 + *(v75 + 28)) = 0;
  v78 = *(v54 + 16);
  v77 = *(v54 + 24);

  if (v78 >= v77 >> 1)
  {
    v121 = OUTLINED_FUNCTION_32_1();
    v54 = sub_220D563D8(v121, v122, v123, v54);
  }

  v130 = v78 + 1;
  *(v54 + 16) = v78 + 1;
  OUTLINED_FUNCTION_44_0();
  sub_220CFD40C(v28, v79 + v78 * v80);
  v81 = v144;
  v82 = (v147 + v143[9]);
  v84 = *v82;
  v83 = v82[1];
  v85 = v144 + *(v75 + 24);
  *v85 = v69;
  *(v85 + 8) = v71;
  *(v85 + 16) = 0;
  OUTLINED_FUNCTION_15_9();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_3(v85);
  *v81 = v84;
  v81[1] = v83;
  v81[2] = v84;
  v81[3] = v83;
  *(v81 + *(v75 + 28)) = 0;
  v86 = *(v54 + 24);
  v87 = v78 + 2;
  swift_bridgeObjectRetain_n();
  if ((v78 + 2) > (v86 >> 1))
  {
    v54 = OUTLINED_FUNCTION_39_1();
  }

  v89 = v141;
  v88 = v142;
  v91 = v133;
  v90 = v134;
  *(v54 + 16) = v87;
  OUTLINED_FUNCTION_44_0();
  sub_220CFD40C(v144, v92 + v130 * v93);
  v94 = 0.0;
  if ((v131 & 1) == 0)
  {
    OUTLINED_FUNCTION_50_0();
    sub_220DBE3E0();
    v95 = v127[2];
    sub_220DBE390();
    v96 = *(v140 + 8);
    v97 = v89;
    v89 = v141;
    v96(v97, v141);
    sub_220DBE450();
    v99 = v98;
    sub_220DBE450();
    v101 = v100;
    v102 = v95;
    v88 = v142;
    v96(v102, v89);
    v94 = v99 - v101;
  }

  v103 = sub_220D552D0(v94);
  v106 = (v147 + v143[10]);
  v108 = *v106;
  v107 = v106[1];
  if (v105 == -1)
  {
    v109 = 1;
  }

  else
  {
    *v91 = v103;
    *(v91 + 8) = v104;
    *(v91 + 16) = v105;
    OUTLINED_FUNCTION_15_9();
    swift_storeEnumTagMultiPayload();
    v109 = 0;
  }

  __swift_storeEnumTagSinglePayload(v91, v109, 1, v53);
  *v90 = v108;
  v90[1] = v107;
  v90[2] = v108;
  v90[3] = v107;
  sub_220D01ABC(v91, v90 + *(v75 + 24));
  *(v90 + *(v75 + 28)) = 0;
  sub_220CFD3A8(v90, v88);
  v111 = *(v54 + 16);
  v110 = *(v54 + 24);
  swift_bridgeObjectRetain_n();
  if (v111 >= v110 >> 1)
  {
    OUTLINED_FUNCTION_15_9();
    v54 = sub_220D563D8(v124, v125, v126, v54);
  }

  sub_220D564E8(v90);
  OUTLINED_FUNCTION_52_1();
  sub_220CE1ABC(v112, v113, v114);
  OUTLINED_FUNCTION_52_1();
  sub_220CE1ABC(v115, v116, v117);
  (*(v140 + 8))(v138, v89);
  *(v54 + 16) = v111 + 1;
  OUTLINED_FUNCTION_44_0();
  result = sub_220CFD40C(v88, v118 + v111 * v119);
  *v135 = v54;
  return result;
}

uint64_t sub_220D54804(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_220D586B0(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      sub_220D58608(0, v5, a2);
      v7 = v6;

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_220D54898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_220DBE560();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D56F0C(a1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_220CE1ABC(v8, &qword_27CF951E0, &unk_220DC1D80);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v13 = sub_220DBE670();
    (*(v10 + 8))(v12, v9);
    if (v13)
    {
      v14 = *(a4 + *(type metadata accessor for SunriseSunsetTableViewModelFactory(0) + 28));

      return v14;
    }
  }

  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  return sub_220DBE240();
}

uint64_t sub_220D54AE0@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t)@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_220DBF070();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A10, "Z");
  OUTLINED_FUNCTION_18(v13);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  v16 = &v22[-v15];
  v17 = sub_220D53F24();
  sub_220D54804(7, v17);
  v23 = a1;
  sub_220D29144();
  swift_unknownObjectRelease();
  v18 = sub_220DBE830();
  if (__swift_getEnumTagSinglePayload(v16, 1, v18) == 1)
  {
    sub_220CE1ABC(v16, &qword_27CF95A10, "Z");
    v19 = sub_220DBE560();
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v19);
  }

  else
  {
    sub_220DBE800();
    v21 = (*(*(v18 - 8) + 8))(v16, v18);
    a2(v21);
    return (*(v8 + 8))(v12, v6);
  }
}

void sub_220D54CF0()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0;
  v21[1] = v2;
  v3 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v21[0] = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_18(v9);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  v13 = sub_220DBF070();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = sub_220DBE800();
  v1(v20);
  (*(v15 + 8))(v19, v13);
  LODWORD(v13) = __swift_getEnumTagSinglePayload(v12, 1, v3);
  sub_220CE1ABC(v12, &qword_27CF951E0, &unk_220DC1D80);
  if (v13 != 1)
  {
    sub_220DBE810();
    sub_220DBE430();
    (*(v21[0] + 8))(v8, v3);
  }

  OUTLINED_FUNCTION_27_2();
}

uint64_t sub_220D54EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_18(v5);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  sub_220D56F0C(a1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_220CE1ABC(v8, &qword_27CF951E0, &unk_220DC1D80);
    v16 = *(a2 + *(type metadata accessor for SunriseSunsetTableViewModelFactory(0) + 44));
  }

  else
  {
    OUTLINED_FUNCTION_37_1();
    v17(v15, v8, v9);
    v16 = sub_220DBE4C0();
    (*(v11 + 8))(v15, v9);
  }

  return v16;
}

uint64_t sub_220D5508C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_220DBE560();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D56F0C(a1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_220CE1ABC(v8, &qword_27CF951E0, &unk_220DC1D80);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v13 = sub_220DBE670();
    (*(v10 + 8))(v12, v9);
    if (v13)
    {
      v14 = *(a4 + *(type metadata accessor for SunriseSunsetTableViewModelFactory(0) + 32));

      return v14;
    }
  }

  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  return sub_220DBE240();
}

uint64_t sub_220D552D0(double a1)
{
  sub_220D14AE0();
  v2 = sub_220DC09D0();
  v3 = [v2 stringFromTimeInterval_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_220DC0620();

  return v4;
}

uint64_t SunriseSunsetTableViewModelFactory.makeViewModel(from:timeZone:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = v4;
  v183[13] = a3;
  v199 = a4;
  v9 = type metadata accessor for OverviewTableRowViewModel(0);
  v200 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_25_0();
  v197 = v14;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_25_0();
  v195 = v16;
  OUTLINED_FUNCTION_23();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v183 - v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_57();
  v184 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v23 = OUTLINED_FUNCTION_18(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_25_0();
  v188 = v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_25_0();
  v198 = v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_25_0();
  v201 = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_25_0();
  v196 = v32;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_25_0();
  v194 = v34;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_25_0();
  v192 = v36;
  OUTLINED_FUNCTION_23();
  v38 = MEMORY[0x28223BE20](v37);
  v40 = v183 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_0();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_25_0();
  v190 = v47;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_25_0();
  v189 = v49;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_25_0();
  v186 = v55;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_25_0();
  v187 = v58;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_25_0();
  v193 = v60;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_25_0();
  v191 = v62;
  OUTLINED_FUNCTION_23();
  v64 = MEMORY[0x28223BE20](v63);
  v66 = v183 - v65;
  MEMORY[0x28223BE20](v64);
  v68 = v183 - v67;
  v204 = a1;
  sub_220DBF040();
  OUTLINED_FUNCTION_5_21(v5);
  v202 = v43;
  v203 = a2;
  if (v115)
  {
    sub_220CE1ABC(v5, &qword_27CF951E0, &unk_220DC1D80);
    v69 = MEMORY[0x277D84F90];
    v73 = v6;
  }

  else
  {
    v183[0] = v20;
    (*(v43 + 32))(v68, v5, v41);
    v70 = v6[3];
    v71 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v70);
    v72 = (v6 + *(type metadata accessor for SunriseSunsetTableViewModelFactory(0) + 24));
    v73 = v6;
    v74 = v184;
    (*(v71 + 8))(v68, *v72, v72[1], a2, v70, v71);
    v75 = sub_220D563D8(0, 1, 1, MEMORY[0x277D84F90]);
    v69 = v75;
    v76 = v75[2];
    if (v76 >= v75[3] >> 1)
    {
      v177 = OUTLINED_FUNCTION_32_1();
      v69 = sub_220D563D8(v177, v178, v179, v69);
    }

    (*(v202 + 8))(v68, v41);
    v69[2] = v76 + 1;
    OUTLINED_FUNCTION_3_22();
    sub_220CFD40C(v74, v77 + v78 * v76);
    v20 = v183[0];
  }

  sub_220DBF030();
  OUTLINED_FUNCTION_5_21(v40);
  if (v115)
  {
    sub_220CE1ABC(v40, &qword_27CF951E0, &unk_220DC1D80);
    v79 = v202;
    v80 = v196;
  }

  else
  {
    (*(v202 + 32))(v66, v40, v41);
    v81 = v73[3];
    v82 = v73[4];
    __swift_project_boxed_opaque_existential_1(v73, v81);
    v83 = type metadata accessor for SunriseSunsetTableViewModelFactory(0);
    (*(v82 + 8))(v66, *(v73 + *(v83 + 28)), *(v73 + *(v83 + 28) + 8), v203, v81, v82);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v69 = OUTLINED_FUNCTION_6_13();
    }

    v85 = v69[2];
    v79 = v202;
    if (v85 >= v69[3] >> 1)
    {
      v180 = OUTLINED_FUNCTION_32_1();
      v69 = sub_220D563D8(v180, v181, v182, v69);
    }

    v80 = v196;
    OUTLINED_FUNCTION_36_1();
    v86(v66, v41);
    v69[2] = v85 + 1;
    OUTLINED_FUNCTION_3_22();
    sub_220CFD40C(v20, v87 + v88 * v85);
  }

  v89 = v192;
  v90 = v204;
  sub_220DBF020();
  OUTLINED_FUNCTION_5_21(v89);
  if (v115)
  {
    sub_220CE1ABC(v89, &qword_27CF951E0, &unk_220DC1D80);
    v91 = v201;
    v92 = v194;
  }

  else
  {
    OUTLINED_FUNCTION_37_1();
    v93(v191, v89, v41);
    v94 = v73[3];
    OUTLINED_FUNCTION_16_12(v73);
    OUTLINED_FUNCTION_46_0();
    v95 = OUTLINED_FUNCTION_40_1();
    v96(v95);
    v97 = swift_isUniquelyReferenced_nonNull_native();
    if ((v97 & 1) == 0)
    {
      v69 = OUTLINED_FUNCTION_6_13();
    }

    OUTLINED_FUNCTION_10_13();
    v92 = v194;
    if (v99)
    {
      v69 = OUTLINED_FUNCTION_7_15(v98);
    }

    OUTLINED_FUNCTION_36_1();
    v100(v191, v41);
    v69[2] = v94;
    OUTLINED_FUNCTION_3_22();
    sub_220CFD40C(v195, v101 + v102 * v90);
    v90 = v204;
    v91 = v201;
  }

  sub_220DBF050();
  OUTLINED_FUNCTION_5_21(v92);
  if (v115)
  {
    sub_220CE1ABC(v92, &qword_27CF951E0, &unk_220DC1D80);
  }

  else
  {
    OUTLINED_FUNCTION_37_1();
    v103(v193, v92, v41);
    v104 = v73[3];
    OUTLINED_FUNCTION_16_12(v73);
    OUTLINED_FUNCTION_46_0();
    v105 = OUTLINED_FUNCTION_40_1();
    v106(v105);
    v107 = swift_isUniquelyReferenced_nonNull_native();
    if ((v107 & 1) == 0)
    {
      v69 = OUTLINED_FUNCTION_6_13();
    }

    OUTLINED_FUNCTION_10_13();
    if (v99)
    {
      v69 = OUTLINED_FUNCTION_7_15(v108);
    }

    OUTLINED_FUNCTION_36_1();
    v109(v193, v41);
    v69[2] = v104;
    OUTLINED_FUNCTION_3_22();
    sub_220CFD40C(v197, v110 + v111 * v90);
    v91 = v201;
  }

  sub_220DBF030();
  OUTLINED_FUNCTION_5_21(v80);
  if (v115)
  {
    sub_220CE1ABC(v80, &qword_27CF951E0, &unk_220DC1D80);
LABEL_37:
    v117 = v198;
    goto LABEL_38;
  }

  v112 = *(v79 + 32);
  v113 = v187;
  (v112)(v187, v80, v41);
  v114 = v185;
  sub_220DBF020();
  OUTLINED_FUNCTION_5_21(v114);
  if (v115)
  {
    OUTLINED_FUNCTION_36_1();
    v116(v113, v41);
    sub_220CE1ABC(v114, &qword_27CF951E0, &unk_220DC1D80);
    v91 = v201;
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_52_1();
  v112();
  v122 = sub_220DBE430();
  v117 = v198;
  if (v122)
  {
    sub_220DBE450();
    v123 = v113;
    sub_220DBE450();
    v124 = v73[3];
    OUTLINED_FUNCTION_16_12(v73);
    v125 = v183[2];
    v126 = OUTLINED_FUNCTION_18_8();
    v127(v126);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = OUTLINED_FUNCTION_6_13();
    }

    v128 = v200;
    OUTLINED_FUNCTION_10_13();
    if (v99)
    {
      v69 = OUTLINED_FUNCTION_7_15(v129);
    }

    v130 = *(v79 + 8);
    v131 = OUTLINED_FUNCTION_30_4(&v208);
    v130(v131);
    (v130)(v187, v41);
    v69[2] = v124;
    OUTLINED_FUNCTION_13_2();
    v133 = v69 + v132;
    v134 = *(v128 + 72);
LABEL_67:
    v163 = &v133[v134 * v123];
    v164 = v125;
LABEL_75:
    result = sub_220CFD40C(v164, v163);
    goto LABEL_76;
  }

  v165 = OUTLINED_FUNCTION_45_0();
  v114(v165);
  (v114)(v113, v41);
  v91 = v201;
LABEL_38:
  sub_220DBF030();
  OUTLINED_FUNCTION_5_21(v91);
  if (v115)
  {
    sub_220CE1ABC(v91, &qword_27CF951E0, &unk_220DC1D80);
  }

  else
  {
    v118 = *(v79 + 32);
    v119 = v186;
    v118(v186, v91, v41);
    sub_220DBF020();
    OUTLINED_FUNCTION_5_21(v117);
    if (v120)
    {
      OUTLINED_FUNCTION_36_1();
      v121(v119, v41);
      sub_220CE1ABC(v117, &qword_27CF951E0, &unk_220DC1D80);
    }

    else
    {
      v118(v183[6], v117, v41);
      sub_220CD9B24();
      v135 = sub_220DC0580();
      if ((v135 & 1) == 0)
      {
        sub_220DBE3E0();
        OUTLINED_FUNCTION_50_0();
        sub_220DBE3E0();
        OUTLINED_FUNCTION_41_1();
        sub_220DBE390();
        v143 = *(v79 + 8);
        v166 = v117;
        v137 = v73;
        v143(v166, v41);
        sub_220DBE450();
        sub_220DBE450();
        sub_220DBE450();
        v144 = v119;
        sub_220DBE450();
        v145 = v73[3];
        v167 = OUTLINED_FUNCTION_16_12(v73);
        OUTLINED_FUNCTION_12_14(v167);
        OUTLINED_FUNCTION_50_0();
        v168 = OUTLINED_FUNCTION_18_8();
        v169(v168);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = OUTLINED_FUNCTION_6_13();
        }

        OUTLINED_FUNCTION_10_13();
        v171 = v186;
        if (v99)
        {
          v69 = OUTLINED_FUNCTION_7_15(v170);
        }

        v172 = OUTLINED_FUNCTION_30_4(&v206);
        (v143)(v172);
        v173 = OUTLINED_FUNCTION_30_4(&v205);
        (v143)(v173);
        v174 = OUTLINED_FUNCTION_30_4(&v207);
        (v143)(v174);
        v151 = v171;
        goto LABEL_74;
      }

      v136 = OUTLINED_FUNCTION_45_0();
      v41(v136);
      (v41)(v119, v41);
    }
  }

  v137 = v73;
  v138 = v188;
  sub_220DBF030();
  OUTLINED_FUNCTION_5_21(v138);
  if (!v115)
  {
    OUTLINED_FUNCTION_37_1();
    v141 = v189;
    v142(v189, v138, v41);
    OUTLINED_FUNCTION_47_0();
    sub_220DBE3E0();
    OUTLINED_FUNCTION_41_1();
    sub_220DBE390();
    v143 = *(v79 + 8);
    v143(v73, v41);
    sub_220DBE450();
    v144 = v141;
    sub_220DBE450();
    v145 = v73[3];
    v146 = OUTLINED_FUNCTION_16_12(v73);
    OUTLINED_FUNCTION_12_14(v146);
    OUTLINED_FUNCTION_50_0();
    v147 = OUTLINED_FUNCTION_18_8();
    v148(v147);
    v149 = swift_isUniquelyReferenced_nonNull_native();
    if ((v149 & 1) == 0)
    {
      v69 = OUTLINED_FUNCTION_6_13();
    }

    OUTLINED_FUNCTION_10_13();
    if (v99)
    {
      v69 = OUTLINED_FUNCTION_7_15(v150);
    }

    v143(v190, v41);
    v151 = v189;
LABEL_74:
    v143(v151, v41);
    v69[2] = v145;
    OUTLINED_FUNCTION_3_22();
    v163 = v175 + v176 * v144;
    v164 = v137;
    goto LABEL_75;
  }

  sub_220CE1ABC(v138, &qword_27CF951E0, &unk_220DC1D80);
  v139 = v183[8];
  sub_220DBF020();
  OUTLINED_FUNCTION_5_21(v139);
  if (!v115)
  {
    OUTLINED_FUNCTION_37_1();
    v152(v183[9], v139, v41);
    v153 = v183[10];
    sub_220DBE3E0();
    sub_220DBE450();
    v123 = v153;
    sub_220DBE450();
    v154 = v73[3];
    v155 = OUTLINED_FUNCTION_16_12(v73);
    OUTLINED_FUNCTION_12_14(v155);
    v125 = v183[3];
    v156 = OUTLINED_FUNCTION_18_8();
    v157(v156);
    v158 = swift_isUniquelyReferenced_nonNull_native();
    if ((v158 & 1) == 0)
    {
      v69 = OUTLINED_FUNCTION_6_13();
    }

    OUTLINED_FUNCTION_10_13();
    if (v99)
    {
      v69 = OUTLINED_FUNCTION_7_15(v159);
    }

    v160 = *(v79 + 8);
    v161 = OUTLINED_FUNCTION_30_4(&v210);
    v160(v161);
    v162 = OUTLINED_FUNCTION_30_4(&v209);
    v160(v162);
    v69[2] = v154;
    OUTLINED_FUNCTION_3_22();
    goto LABEL_67;
  }

  result = sub_220CE1ABC(v139, &qword_27CF951E0, &unk_220DC1D80);
LABEL_76:
  *v199 = v69;
  return result;
}

void sub_220D562FC(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_9_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 16);
  v10 = sub_220D56D08(v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_2();
  if (a1)
  {
    sub_220CFB550(a4 + v11, v9, v10 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_220D563D8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_220D56E10(v9, a2, &qword_27CF95BD8, &qword_220DC4FB8, type metadata accessor for OverviewTableRowViewModel);
  v11 = *(type metadata accessor for OverviewTableRowViewModel(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_220CFB64C(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_220D564E8(uint64_t a1)
{
  v2 = type metadata accessor for OverviewTableRowViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D56594(uint64_t a1)
{
  result = sub_220D56634();
  if (v2 <= 0x3F)
  {
    result = sub_220DC04D0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_220D56634()
{
  result = qword_27CF95BB0;
  if (!qword_27CF95BB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CF95BB0);
  }

  return result;
}

void sub_220D56690()
{
  OUTLINED_FUNCTION_26_4();
  if (v4)
  {
    OUTLINED_FUNCTION_25_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_49_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_19_8();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_58_0(v2, v5, &qword_27CF95BD0, &qword_220DC4FB0);
  OUTLINED_FUNCTION_35_1();
  sub_220DBEB60();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_2();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_21_6(v8);
    sub_220CFB67C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_17_9();
  }
}

void sub_220D56758(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_2();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952D8, &qword_220DC21A8);
      v11 = OUTLINED_FUNCTION_57_0();
      _swift_stdlib_malloc_size(v11);
      OUTLINED_FUNCTION_43_0();
      *(v11 + 16) = v9;
      *(v11 + 24) = v12;
      if (a1)
      {
LABEL_12:
        sub_220CFB4F8((a4 + 32), v9, (v11 + 32));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy((v11 + 32), (a4 + 32), 8 * v9);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_48_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_220D56830(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_2();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952A8, &unk_220DC2E90);
      v11 = OUTLINED_FUNCTION_57_0();
      _swift_stdlib_malloc_size(v11);
      OUTLINED_FUNCTION_43_0();
      *(v11 + 16) = v9;
      *(v11 + 24) = v12;
      if (a1)
      {
LABEL_12:
        sub_220CFB518((a4 + 32), v9, (v11 + 32));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_48_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_220D56910()
{
  OUTLINED_FUNCTION_26_4();
  if (v4)
  {
    OUTLINED_FUNCTION_25_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_49_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_19_8();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_58_0(v2, v5, &qword_27CF952A0, &unk_220DC4F90);
  v8 = OUTLINED_FUNCTION_35_1();
  type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_2();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_21_6(v9);
    sub_220CFB694(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_17_9();
  }
}

void sub_220D569D8()
{
  OUTLINED_FUNCTION_26_4();
  if (v4)
  {
    OUTLINED_FUNCTION_25_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_49_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_19_8();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_58_0(v2, v5, &qword_27CF95BC8, &unk_220DC4FA0);
  v8 = OUTLINED_FUNCTION_35_1();
  type metadata accessor for DetailChartDataElement(v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_2();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_21_6(v9);
    sub_220CFB6AC(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_17_9();
  }
}

void sub_220D56AA0()
{
  OUTLINED_FUNCTION_26_4();
  if (v4)
  {
    OUTLINED_FUNCTION_25_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_49_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_19_8();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_58_0(v2, v5, &qword_27CF95278, &qword_220DC2168);
  OUTLINED_FUNCTION_35_1();
  sub_220DBF340();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_2();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_21_6(v8);
    sub_220CFB538(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_17_9();
  }
}

void sub_220D56B90(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_2();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = OUTLINED_FUNCTION_57_0();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_43_0();
      v15[2] = v13;
      v15[3] = v16;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 16 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_48_0();
  if (!v11)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_220D56C98(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952E8, &qword_220DC4FD0);
  v4 = OUTLINED_FUNCTION_57_0();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_43_0();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_220D56D08(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952D0, &qword_220DC21A0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_220D56E10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220D56F0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_220D56FB0(uint64_t *a1)
{
  v2 = sub_220DBE830();
  OUTLINED_FUNCTION_18(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_220D81A34();
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v7;
  sub_220D57054(v8);
  *a1 = v5;
}

void sub_220D57054(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_220DC0C60();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_220DBE830();
        v6 = sub_220DC0760();
        *(v6 + 16) = v5;
      }

      v7 = sub_220DBE830();
      OUTLINED_FUNCTION_18(v7);
      OUTLINED_FUNCTION_13_2();
      sub_220D574B8(&v13, v14, a1, v4, v9, v10, v11, v12, v6 + v8, v5);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_220D5717C();
  }
}

void sub_220D5717C()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v49 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9();
  v48 = v11;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_57();
  v47 = v13;
  OUTLINED_FUNCTION_6_1();
  v14 = sub_220DBE830();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9();
  v41 = v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_0();
  v46 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_57();
  v45 = v21;
  v33 = v5;
  if (v3 != v5)
  {
    v23 = *(v20 + 16);
    v22 = v20 + 16;
    v24 = *(v22 + 56);
    v43 = (v9 + 8);
    v44 = v23;
    v42 = (v22 - 8);
    v25 = *v1 + v24 * (v3 - 1);
    v38 = -v24;
    v39 = (v22 + 16);
    v26 = v7 - v3;
    v40 = *v1;
    v32 = v24;
    v27 = *v1 + v24 * v3;
    while (2)
    {
      v36 = v25;
      v37 = v3;
      v34 = v27;
      v35 = v26;
      v50 = v26;
      do
      {
        v44(v45, v27, v14);
        v44(v46, v25, v14);
        sub_220DBE810();
        sub_220DBE810();
        v51 = sub_220DBE440();
        v28 = *v43;
        (*v43)(v48, v49);
        v28(v47, v49);
        v29 = *v42;
        (*v42)(v46, v14);
        v29(v45, v14);
        if ((v51 & 1) == 0)
        {
          break;
        }

        if (!v40)
        {
          __break(1u);
          return;
        }

        v30 = *v39;
        (*v39)(v41, v27, v14);
        swift_arrayInitWithTakeFrontToBack();
        v30(v25, v41, v14);
        v25 += v38;
        v27 += v38;
      }

      while (!__CFADD__(v50++, 1));
      ++v3;
      v25 = v36 + v32;
      v26 = v35 - 1;
      v27 = v34 + v32;
      if (v37 + 1 != v33)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_27_2();
}

void sub_220D574B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10)
{
  OUTLINED_FUNCTION_26_2();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v134 = v16;
  v163 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9();
  v162 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_57();
  v161 = v22;
  OUTLINED_FUNCTION_6_1();
  v23 = sub_220DBE830();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_25_0();
  v152 = v28;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_25_0();
  v160 = v30;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_57();
  v164 = v32;
  v143 = v15;
  v33 = v15[1];
  v138 = v25;
  if (v33 < 1)
  {
    v35 = MEMORY[0x277D84F90];
LABEL_101:
    OUTLINED_FUNCTION_51_0();
    if (!v118)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v123 = v35 + 16;
      v124 = *(v35 + 2);
      while (v124 >= 2)
      {
        if (!*v143)
        {
          goto LABEL_139;
        }

        v125 = v35;
        v126 = &v35[16 * v124];
        v127 = *v126;
        v128 = &v123[2 * v124];
        v129 = *(v128 + 1);
        sub_220D57FF4(&(*v143)[*(v138 + 72) * *v126], &(*v143)[*(v138 + 72) * *v128], &(*v143)[*(v138 + 72) * v129], a10, v119, v120, v121, v122, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
        if (v11)
        {
          break;
        }

        if (v129 < v127)
        {
          goto LABEL_127;
        }

        if (v124 - 2 >= *v123)
        {
          goto LABEL_128;
        }

        *v126 = v127;
        *(v126 + 1) = v129;
        v130 = *v123 - v124;
        if (*v123 < v124)
        {
          goto LABEL_129;
        }

        v124 = *v123 - 1;
        sub_220D81848(v128 + 16, v130, v128);
        *v123 = v124;
        v35 = v125;
      }

LABEL_111:

      OUTLINED_FUNCTION_27_2();
      return;
    }

LABEL_136:
    v35 = sub_220D81650();
    goto LABEL_103;
  }

  v132 = v13;
  v34 = 0;
  v158 = (v18 + 8);
  v156 = (v25 + 32);
  v157 = (v25 + 8);
  v35 = MEMORY[0x277D84F90];
  v159 = v23;
  while (1)
  {
    v36 = v34;
    v37 = (v34 + 1);
    if ((v34 + 1) < v33)
    {
      v133 = v35;
      v38 = v34;
      v135 = v34;
      v144 = v11;
      v145 = (v34 + 1);
      v39 = *v143;
      a10 = *v143;
      v148 = v33;
      v150 = *(v25 + 9);
      v40 = &(*v143)[v150 * v37];
      v41 = *(v25 + 2);
      OUTLINED_FUNCTION_38_1();
      v41();
      v141 = v41;
      (v41)(v160, &v39[v150 * v38], v23);
      v11 = v161;
      v35 = v164;
      sub_220DBE810();
      v25 = v162;
      sub_220DBE810();
      LODWORD(v142) = sub_220DBE440();
      v42 = *v158;
      (*v158)(v162, v163);
      v140 = v42;
      (v42)(v161, v163);
      v43 = *(v138 + 8);
      v43(v160, v23);
      v139 = v43;
      v43(v164, v23);
      v44 = v148;
      v45 = (v135 + 2);
      v36 = &a10[v150 * (v135 + 2)];
      while (++v145 < v44)
      {
        v11 = v164;
        a10 = v45;
        (v141)(v164, v36, v159);
        v35 = v160;
        OUTLINED_FUNCTION_38_1();
        v141();
        sub_220DBE810();
        sub_220DBE810();
        v153 = sub_220DBE440() & 1;
        v25 = v163;
        (v140)(v162, v163);
        (v140)(v161, v163);
        v43(v160, v159);
        v43(v164, v159);
        v44 = v148;
        v36 += v150;
        v40 += v150;
        v45 = a10 + 1;
        if ((v142 & 1) != v153)
        {
          goto LABEL_9;
        }
      }

      v145 = v44;
LABEL_9:
      if (v142)
      {
        v37 = v145;
        OUTLINED_FUNCTION_47_0();
        v23 = v159;
        if (v145 < v36)
        {
          goto LABEL_133;
        }

        if (v36 >= v145)
        {
          OUTLINED_FUNCTION_11_10();
          goto LABEL_32;
        }

        if (v46 >= v47)
        {
          v48 = v47;
        }

        else
        {
          v48 = v46;
        }

        v49 = v150 * (v48 - 1);
        v50 = v150 * v48;
        v51 = v36;
        v36 *= v150;
        v11 = v144;
        v25 = v138;
        do
        {
          if (v51 != --v37)
          {
            v52 = v11;
            v53 = *v143;
            if (!*v143)
            {
              goto LABEL_140;
            }

            OUTLINED_FUNCTION_38_1();
            a10 = v54;
            (v54)();
            v55 = v36 < v49 || &v53[v36] >= &v53[v50];
            if (v55)
            {
              OUTLINED_FUNCTION_53_0();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v36 != v49)
            {
              OUTLINED_FUNCTION_53_0();
              swift_arrayInitWithTakeBackToFront();
            }

            (a10)(&v53[v49], v137, v159);
            v11 = v52;
            v25 = v138;
          }

          ++v51;
          v49 -= v150;
          v50 -= v150;
          v36 += v150;
        }

        while (v51 < v37);
        v35 = v133;
      }

      else
      {
        OUTLINED_FUNCTION_11_10();
        v23 = v159;
      }

      v37 = v145;
      OUTLINED_FUNCTION_47_0();
    }

LABEL_32:
    v56 = v143[1];
    if (v37 < v56)
    {
      if (__OFSUB__(v37, v36))
      {
        goto LABEL_132;
      }

      if (v37 - v36 < v132)
      {
        break;
      }
    }

LABEL_48:
    if (v37 < v36)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_29_2();
      sub_220D56B90(0, v114 + 1, 1, v35, &qword_27CF95BC0, &unk_220DC5B20, v115);
      v35 = v116;
    }

    v65 = *(v35 + 2);
    v64 = *(v35 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      sub_220D56B90(v64 > 1, v65 + 1, 1, v35, &qword_27CF95BC0, &unk_220DC5B20, sub_220CFB518);
      v35 = v117;
    }

    *(v35 + 2) = v66;
    v67 = &v35[16 * v65 + 32];
    *v67 = v36;
    *(v67 + 1) = v37;
    OUTLINED_FUNCTION_51_0();
    if (!v73)
    {
      goto LABEL_141;
    }

    v147 = v37;
    if (v65)
    {
      v155 = v72;
      while (1)
      {
        v74 = v66 - 1;
        v75 = (v72 + 16 * (v66 - 1));
        v76 = &v35[16 * v66];
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v77 = *(v35 + 4);
          v78 = *(v35 + 5);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_69:
          if (v80)
          {
            goto LABEL_118;
          }

          v92 = *v76;
          v91 = *(v76 + 1);
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_121;
          }

          v96 = v75[1];
          v97 = v96 - *v75;
          if (__OFSUB__(v96, *v75))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v94, v97))
          {
            goto LABEL_126;
          }

          if (v94 + v97 >= v79)
          {
            if (v79 < v97)
            {
              v74 = v66 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v66 < 2)
        {
          goto LABEL_120;
        }

        v99 = *v76;
        v98 = *(v76 + 1);
        v87 = __OFSUB__(v98, v99);
        v94 = v98 - v99;
        v95 = v87;
LABEL_84:
        if (v95)
        {
          goto LABEL_123;
        }

        v101 = *v75;
        v100 = v75[1];
        v87 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v87)
        {
          goto LABEL_125;
        }

        if (v102 < v94)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v74 - 1 >= v66)
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

        if (!*v143)
        {
          goto LABEL_138;
        }

        v106 = (v72 + 16 * (v74 - 1));
        v107 = *v106;
        v108 = v74;
        v109 = v72 + 16 * v74;
        v110 = *(v109 + 8);
        sub_220D57FF4(&(*v143)[*(v25 + 9) * *v106], &(*v143)[*(v25 + 9) * *v109], &(*v143)[*(v25 + 9) * v110], a10, v68, v69, v70, v71, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
        if (v11)
        {
          goto LABEL_111;
        }

        if (v110 < v107)
        {
          goto LABEL_113;
        }

        v11 = v25;
        v111 = v35;
        v112 = *(v35 + 2);
        if (v108 > v112)
        {
          goto LABEL_114;
        }

        *v106 = v107;
        v106[1] = v110;
        if (v108 >= v112)
        {
          goto LABEL_115;
        }

        v66 = v112 - 1;
        sub_220D81848((v109 + 16), v112 - 1 - v108, v109);
        *(v111 + 2) = v112 - 1;
        v113 = v112 > 2;
        v35 = v111;
        v25 = v11;
        v11 = 0;
        v72 = v155;
        if (!v113)
        {
          goto LABEL_98;
        }
      }

      v81 = v72 + 16 * v66;
      v82 = *(v81 - 64);
      v83 = *(v81 - 56);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_116;
      }

      v86 = *(v81 - 48);
      v85 = *(v81 - 40);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_117;
      }

      v88 = *(v76 + 1);
      v89 = v88 - *v76;
      if (__OFSUB__(v88, *v76))
      {
        goto LABEL_119;
      }

      v87 = __OFADD__(v79, v89);
      v90 = v79 + v89;
      if (v87)
      {
        goto LABEL_122;
      }

      if (v90 >= v84)
      {
        v104 = *v75;
        v103 = v75[1];
        v87 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v87)
        {
          goto LABEL_130;
        }

        if (v79 < v105)
        {
          v74 = v66 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v33 = v143[1];
    v34 = v147;
    if (v147 >= v33)
    {
      goto LABEL_101;
    }
  }

  v57 = (v36 + v132);
  if (__OFADD__(v36, v132))
  {
    goto LABEL_134;
  }

  if (v57 >= v56)
  {
    v57 = v143[1];
  }

  if (v57 < v36)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v37 == v57)
  {
    goto LABEL_48;
  }

  v133 = v35;
  v58 = *(v25 + 9);
  v154 = *(v25 + 2);
  v59 = &(*v143)[v58 * (v37 - 1)];
  v149 = -v58;
  v135 = v36;
  v60 = (v36 - v37);
  v151 = *v143;
  v136 = v58;
  v61 = &(*v143)[v37 * v58];
  v139 = v57;
LABEL_41:
  v146 = v37;
  v140 = v61;
  v141 = v60;
  v142 = v59;
  v36 = v59;
  while (1)
  {
    v11 = v164;
    OUTLINED_FUNCTION_38_1();
    v154();
    v35 = v160;
    (v154)(v160, v36, v23);
    sub_220DBE810();
    sub_220DBE810();
    LODWORD(a10) = sub_220DBE440();
    v62 = *v158;
    (*v158)(v162, v163);
    v23 = v159;
    v62(v161, v163);
    v25 = *v157;
    (*v157)(v160, v159);
    (v25)(v164, v159);
    if ((a10 & 1) == 0)
    {
LABEL_46:
      ++v37;
      v59 = v142 + v136;
      v60 = v141 - 1;
      v61 = &v140[v136];
      if (v146 + 1 == v139)
      {
        v37 = v139;
        OUTLINED_FUNCTION_11_10();
        OUTLINED_FUNCTION_47_0();
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v151)
    {
      break;
    }

    v63 = *v156;
    v25 = v152;
    OUTLINED_FUNCTION_38_1();
    v63();
    swift_arrayInitWithTakeFrontToBack();
    (v63)(v36, v152, v159);
    v36 += v149;
    v61 += v149;
    v55 = __CFADD__(v60++, 1);
    if (v55)
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

void sub_220D57FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26_2();
  a19 = v22;
  a20 = v23;
  v107 = v24;
  v26 = v25;
  v28 = v27;
  OUTLINED_FUNCTION_35_1();
  v102 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_9();
  v101 = v32;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_57();
  v100 = v34;
  OUTLINED_FUNCTION_6_1();
  v106 = sub_220DBE830();
  v35 = MEMORY[0x28223BE20](v106);
  v99 = v90 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v104 = v90 - v38;
  v40 = *(v39 + 72);
  if (!v40)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v41 = v28 - v21 == 0x8000000000000000 && v40 == -1;
  if (v41)
  {
    goto LABEL_60;
  }

  v42 = v26 - v28;
  if (v26 - v28 == 0x8000000000000000 && v40 == -1)
  {
    goto LABEL_61;
  }

  v90[1] = v20;
  v44 = (v28 - v21) / v40;
  a10 = v21;
  v109 = v107;
  v97 = (v30 + 8);
  v98 = (v37 + 16);
  v96 = (v37 + 8);
  v45 = v42 / v40;
  if (v44 >= v42 / v40)
  {
    v65 = v107;
    sub_220CFB634(v28, v42 / v40, v107);
    v66 = v65 + v45 * v40;
    v67 = -v40;
    v68 = v66;
    v105 = v21;
    v92 = v67;
LABEL_36:
    v69 = v28 + v67;
    v70 = v26;
    v90[0] = v68;
    v71 = v68;
    v93 = v28 + v67;
    v94 = v28;
    while (1)
    {
      if (v66 <= v107)
      {
        a10 = v28;
        v108 = v71;
        goto LABEL_58;
      }

      if (v28 <= v21)
      {
        break;
      }

      v91 = v71;
      v103 = v70 + v67;
      v72 = v66 + v67;
      v73 = v66;
      v74 = *v98;
      v75 = v69;
      v76 = v106;
      v77 = v70;
      (*v98)(v104, v66 + v67, v106);
      v78 = v99;
      v74(v99, v75, v76);
      v79 = v100;
      sub_220DBE810();
      v80 = v101;
      sub_220DBE810();
      LODWORD(v95) = sub_220DBE440();
      v81 = *v97;
      v82 = v80;
      v83 = v102;
      (*v97)(v82, v102);
      v81(v79, v83);
      v84 = *v96;
      (*v96)(v78, v76);
      v84(v104, v76);
      if (v95)
      {
        v66 = v73;
        v26 = v103;
        if (v77 < v94 || v103 >= v94)
        {
          v28 = v93;
          swift_arrayInitWithTakeFrontToBack();
          v68 = v91;
          v67 = v92;
          v21 = v105;
        }

        else
        {
          v88 = v91;
          v67 = v92;
          v68 = v91;
          v41 = v77 == v94;
          v89 = v93;
          v28 = v93;
          v21 = v105;
          if (!v41)
          {
            swift_arrayInitWithTakeBackToFront();
            v28 = v89;
            v68 = v88;
          }
        }

        goto LABEL_36;
      }

      v85 = v103;
      if (v77 < v73 || v103 >= v73)
      {
        OUTLINED_FUNCTION_23_9();
        swift_arrayInitWithTakeFrontToBack();
        v70 = v85;
        v66 = v72;
        v71 = v72;
        v69 = v93;
        v28 = v94;
        v21 = v105;
        v67 = v92;
      }

      else
      {
        v71 = v72;
        v41 = v73 == v77;
        v70 = v103;
        v66 = v72;
        v69 = v93;
        v28 = v94;
        v21 = v105;
        v67 = v92;
        if (!v41)
        {
          OUTLINED_FUNCTION_23_9();
          swift_arrayInitWithTakeBackToFront();
          v70 = v85;
          v66 = v72;
          v71 = v72;
        }
      }
    }

    a10 = v28;
    v108 = v90[0];
  }

  else
  {
    v46 = v107;
    sub_220CFB634(v21, (v28 - v21) / v40, v107);
    v94 = v40;
    v95 = v46 + v44 * v40;
    v108 = v95;
    v103 = v26;
    while (v107 < v95 && v28 < v26)
    {
      v105 = v21;
      v48 = *v98;
      v49 = v104;
      v50 = v106;
      (*v98)(v104, v28, v106);
      v51 = v99;
      v48(v99, v107, v50);
      v52 = v100;
      sub_220DBE810();
      v53 = v101;
      sub_220DBE810();
      v54 = sub_220DBE440();
      v55 = v28;
      v56 = *v97;
      v57 = v53;
      v58 = v102;
      (*v97)(v57, v102);
      v56(v52, v58);
      v59 = *v96;
      (*v96)(v51, v50);
      v59(v49, v50);
      if (v54)
      {
        v60 = v94;
        v28 = v55 + v94;
        v61 = v105;
        if (v105 < v55 || v105 >= v28)
        {
          OUTLINED_FUNCTION_23_9();
          swift_arrayInitWithTakeFrontToBack();
          v26 = v103;
        }

        else
        {
          v26 = v103;
          if (v105 != v55)
          {
            OUTLINED_FUNCTION_23_9();
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v60 = v94;
        v63 = v107 + v94;
        v61 = v105;
        if (v105 < v107 || v105 >= v63)
        {
          swift_arrayInitWithTakeFrontToBack();
          v26 = v103;
          v28 = v55;
        }

        else
        {
          v26 = v103;
          v28 = v55;
          if (v105 != v107)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v109 = v63;
        v107 = v63;
      }

      v21 = v61 + v60;
      a10 = v21;
    }
  }

LABEL_58:
  sub_220D81738(&a10, &v109, &v108);
  OUTLINED_FUNCTION_27_2();
}

void sub_220D58608(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_220DBE830();

    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_220D586B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_220D586FC()
{
  result = qword_280FA7740;
  if (!qword_280FA7740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95798, &unk_220DC3040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7740);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_55_0()
{

  return sub_220DBE560();
}

uint64_t OUTLINED_FUNCTION_57_0()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_58_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_220D56E10(v5, a2, a3, a4, v4);
}

uint64_t sub_220D588C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v6 = type metadata accessor for PrecipitationWithinOneDaySentence(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  PrecipitationEvent = type metadata accessor for NextPrecipitationEvent(0);
  v10 = MEMORY[0x28223BE20](PrecipitationEvent - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = v3[3];
  v16 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v15);
  (*(v16 + 8))(a2, v15, v16);
  sub_220D5AA20(v14, v12, type metadata accessor for NextPrecipitationEvent);
  sub_220D58A60(v12, v4, v8);
  sub_220D58E40();
  v18 = v17;
  sub_220CE1E88(v8, type metadata accessor for PrecipitationWithinOneDaySentence);
  sub_220CE1E88(v14, type metadata accessor for NextPrecipitationEvent);
  return v18;
}

void sub_220D58A60(unsigned __int8 *a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for PrecipitationTotalStringAmount(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v13 = v11 - v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v41[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v41[-v18];
  type metadata accessor for NextPrecipitationEvent(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A0, &unk_220DC3050);
      v22 = *(v21 + 64);
      v23 = *(v21 + 80);
      type metadata accessor for PrecipitationWithinOneDaySentence(0);
      OUTLINED_FUNCTION_8_13();
      swift_storeEnumTagMultiPayload();
      sub_220CE1E88(&a1[v23], type metadata accessor for PrecipitationTotalStringAmount);
      sub_220CE1E88(&a1[v22], type metadata accessor for PrecipitationTotalStringAmount);
      sub_220DBE560();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24();

      __asm { BRAA            X2, X16 }
    }

    *a3 = a2 & 1;
    type metadata accessor for PrecipitationWithinOneDaySentence(0);
    OUTLINED_FUNCTION_8_13();
    OUTLINED_FUNCTION_24();

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v43 = a3;
    v42 = a2;
    v26 = *a1;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A8, &qword_220DC4FE0);
    v28 = *(v27 + 64);
    sub_220CE1D20(&a1[*(v27 + 48)], v19, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220CE1D20(&a1[v28], v17, type metadata accessor for PrecipitationTotalStringAmount);
    v44 = v26;
    if (v26 == 2)
    {
      v29 = v19;
    }

    else
    {
      v29 = v17;
    }

    if (v26 == 2)
    {
      v30 = v17;
    }

    else
    {
      v30 = v19;
    }

    sub_220CE1E88(v29, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220CE1D20(v30, v13, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D5AA20(v13 + *(v9 + 20), v8, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
      OUTLINED_FUNCTION_6();
      (*(v31 + 8))(v8);
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0) + 48);
      OUTLINED_FUNCTION_1_26();
      v33 = v43;
      sub_220CE1D20(v13, v43, v34);
      v33[v32] = v44;
    }

    else
    {
      sub_220CE1E88(v8, type metadata accessor for PrecipitationTotalStringAmount.Format);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95BE8, &unk_220DC5080);
      v37 = *(v36 + 48);
      v38 = *(v36 + 64);
      OUTLINED_FUNCTION_1_26();
      v39 = v43;
      sub_220CE1D20(v13, v43, v40);
      v39[v37] = v44;
      v39[v38] = v42 & 1;
    }

    type metadata accessor for PrecipitationWithinOneDaySentence(0);
    OUTLINED_FUNCTION_8_13();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_24();
  }
}

void sub_220D58E40()
{
  v42 = type metadata accessor for PrecipitationTotalStringAmount(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_16();
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v41 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v13 = (v11 - v12);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v40 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  type metadata accessor for PrecipitationWithinOneDaySentence(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v20);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_2_23();
  v43 = v0;
  sub_220D5AA20(v0, v22, v23);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v36 = v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0) + 48)];
      OUTLINED_FUNCTION_1_26();
      sub_220CE1D20(v22, v1, v37);
      if (v36 == 2)
      {
        sub_220D597B0(v1);
      }

      else
      {
        sub_220D59CCC(v1);
      }

      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_0_17();
      v39 = v1;
      goto LABEL_14;
    case 2u:
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95BE8, &unk_220DC5080);
      v31 = v22[*(v30 + 48)];
      v32 = v22[*(v30 + 64)];
      OUTLINED_FUNCTION_1_26();
      sub_220CE1D20(v22, v5, v33);
      if (v31 == 2)
      {
        sub_220D5A1E8(v5, v32);
      }

      else
      {
        sub_220D5935C(v5, v32);
      }

      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_0_17();
      v39 = v5;
LABEL_14:
      sub_220CE1E88(v39, v38);
      break;
    case 3u:
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_220DC17A0;
      v35 = MEMORY[0x277D83C10];
      *(v34 + 56) = MEMORY[0x277D83B88];
      *(v34 + 64) = v35;
      *(v34 + 32) = 24;
      sub_220DC05F0();
      OUTLINED_FUNCTION_9_15();

      break;
    default:
      v24 = *v22;
      v25 = [objc_opt_self() millimeters];
      sub_220CDB190();
      sub_220DBE040();
      v26 = v41;
      v27 = *(v41 + 16);
      v27(v17, v19, v10);
      v27(v13, v17, v10);
      sub_220CDB1D4();
      v28 = *(v26 + 8);
      v28(v17, v10);
      *v9 = 0;
      sub_220D5935C(v9, v24);
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_0_17();
      sub_220CE1E88(v9, v29);
      v28(v19, v10);
      break;
  }

  OUTLINED_FUNCTION_24();
}

uint64_t type metadata accessor for PrecipitationWithinOneDaySentence(uint64_t a1)
{
  result = qword_27CF95BF0;
  if (!qword_27CF95BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D5935C(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - v6;
  v8 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PrecipitationTotalStringAmount(0);
  sub_220D5AA20(a1 + *(v11 + 20), v10, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
    v29 = *(v5 + 8);
    v29(&v10[*(v28 + 48)], v4);
    v29(v10, v4);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_220DC17C0;
    v31 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v31, a2 & 1, 1, v32, v33, v34, v35, v36, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, vars0, vars8);
    v38 = v37;
    v40 = v39;

    *(v30 + 56) = MEMORY[0x277D837D0];
    v41 = sub_220CEFDB0();
    v42 = MEMORY[0x277D83B88];
    v43 = MEMORY[0x277D83C10];
    *(v30 + 32) = v38;
    *(v30 + 40) = v40;
    *(v30 + 96) = v42;
    *(v30 + 104) = v43;
    *(v30 + 64) = v41;
    *(v30 + 72) = 24;
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_220DBE050();
    v13 = Double.pluralRuleInteger.getter(v12);
    (*(v5 + 8))(v7, v4);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D83B88];
    *(v14 + 16) = xmmword_220DC1CC0;
    v16 = MEMORY[0x277D83C10];
    *(v14 + 56) = v15;
    *(v14 + 64) = v16;
    *(v14 + 32) = v13;
    v17 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v17, a2 & 1, 1, v18, v19, v20, v21, v22, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, vars0, vars8);
    v24 = v23;
    v26 = v25;

    *(v14 + 96) = MEMORY[0x277D837D0];
    v27 = sub_220CEFDB0();
    *(v14 + 72) = v24;
    *(v14 + 80) = v26;
    *(v14 + 136) = v15;
    *(v14 + 144) = v16;
    *(v14 + 104) = v27;
    *(v14 + 112) = 24;
  }

  v44 = sub_220DC05F0();

  return v44;
}

uint64_t sub_220D597B0(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v43[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v43[-1] - v6;
  v8 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v43[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43[-1] - v13;
  sub_220D5AA20(a1 + *(v2 + 20), v10, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_220DC1CC0;
    sub_220DBE050();
    v16 = MEMORY[0x277D83A80];
    *(v15 + 56) = MEMORY[0x277D839F8];
    *(v15 + 64) = v16;
    *(v15 + 32) = v17;
    v18 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v18, 0, 0, v19, v20, v21, v22, v23, v42, v43[0], v43[1], v43[2], v43[3], v43[4], v43[5], v43[6], v43[7], v43[8], v43[9], v43[10]);
    v25 = v24;
    v27 = v26;

    *(v15 + 96) = MEMORY[0x277D837D0];
    v28 = sub_220CEFDB0();
    v29 = MEMORY[0x277D83B88];
    v30 = MEMORY[0x277D83C10];
    *(v15 + 72) = v25;
    *(v15 + 80) = v27;
    *(v15 + 136) = v29;
    *(v15 + 144) = v30;
    *(v15 + 104) = v28;
    *(v15 + 112) = 24;
    v31 = sub_220DC05F0();

    (*(v12 + 8))(v14, v11);
  }

  else
  {
    sub_220CE1E88(v10, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v32 = sub_220DBF410();
    __swift_project_value_buffer(v32, qword_27CF95F48);
    sub_220D5AA20(a1, v7, type metadata accessor for PrecipitationTotalStringAmount);
    v33 = sub_220DBF3F0();
    v34 = sub_220DC0980();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v43[0] = v36;
      *v35 = 136446210;
      sub_220D5AA20(v7, v5, type metadata accessor for PrecipitationTotalStringAmount);
      v37 = sub_220DC0630();
      v39 = v38;
      sub_220CE1E88(v7, type metadata accessor for PrecipitationTotalStringAmount);
      v40 = sub_220D3F210(v37, v39, v43);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_220CD1000, v33, v34, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x223D98FB0](v36, -1, -1);
      MEMORY[0x223D98FB0](v35, -1, -1);
    }

    else
    {

      sub_220CE1E88(v7, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v31;
}

uint64_t sub_220D59CCC(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v43[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v43[-1] - v6;
  v8 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v43[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43[-1] - v13;
  sub_220D5AA20(a1 + *(v2 + 20), v10, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_220DC1CC0;
    sub_220DBE050();
    v16 = MEMORY[0x277D83A80];
    *(v15 + 56) = MEMORY[0x277D839F8];
    *(v15 + 64) = v16;
    *(v15 + 32) = v17;
    v18 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v18, 0, 0, v19, v20, v21, v22, v23, v42, v43[0], v43[1], v43[2], v43[3], v43[4], v43[5], v43[6], v43[7], v43[8], v43[9], v43[10]);
    v25 = v24;
    v27 = v26;

    *(v15 + 96) = MEMORY[0x277D837D0];
    v28 = sub_220CEFDB0();
    v29 = MEMORY[0x277D83B88];
    v30 = MEMORY[0x277D83C10];
    *(v15 + 72) = v25;
    *(v15 + 80) = v27;
    *(v15 + 136) = v29;
    *(v15 + 144) = v30;
    *(v15 + 104) = v28;
    *(v15 + 112) = 24;
    v31 = sub_220DC05F0();

    (*(v12 + 8))(v14, v11);
  }

  else
  {
    sub_220CE1E88(v10, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v32 = sub_220DBF410();
    __swift_project_value_buffer(v32, qword_27CF95F48);
    sub_220D5AA20(a1, v7, type metadata accessor for PrecipitationTotalStringAmount);
    v33 = sub_220DBF3F0();
    v34 = sub_220DC0980();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v43[0] = v36;
      *v35 = 136446210;
      sub_220D5AA20(v7, v5, type metadata accessor for PrecipitationTotalStringAmount);
      v37 = sub_220DC0630();
      v39 = v38;
      sub_220CE1E88(v7, type metadata accessor for PrecipitationTotalStringAmount);
      v40 = sub_220D3F210(v37, v39, v43);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_220CD1000, v33, v34, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x223D98FB0](v36, -1, -1);
      MEMORY[0x223D98FB0](v35, -1, -1);
    }

    else
    {

      sub_220CE1E88(v7, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v31;
}

uint64_t sub_220D5A1E8(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - v6;
  v8 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PrecipitationTotalStringAmount(0);
  sub_220D5AA20(a1 + *(v11 + 20), v10, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
    v29 = *(v5 + 8);
    v29(&v10[*(v28 + 48)], v4);
    v29(v10, v4);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_220DC17C0;
    v31 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v31, a2 & 1, 1, v32, v33, v34, v35, v36, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, vars0, vars8);
    v38 = v37;
    v40 = v39;

    *(v30 + 56) = MEMORY[0x277D837D0];
    v41 = sub_220CEFDB0();
    v42 = MEMORY[0x277D83B88];
    v43 = MEMORY[0x277D83C10];
    *(v30 + 32) = v38;
    *(v30 + 40) = v40;
    *(v30 + 96) = v42;
    *(v30 + 104) = v43;
    *(v30 + 64) = v41;
    *(v30 + 72) = 24;
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_220DBE050();
    v13 = Double.pluralRuleInteger.getter(v12);
    (*(v5 + 8))(v7, v4);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D83B88];
    *(v14 + 16) = xmmword_220DC1CC0;
    v16 = MEMORY[0x277D83C10];
    *(v14 + 56) = v15;
    *(v14 + 64) = v16;
    *(v14 + 32) = v13;
    v17 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v17, a2 & 1, 1, v18, v19, v20, v21, v22, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, vars0, vars8);
    v24 = v23;
    v26 = v25;

    *(v14 + 96) = MEMORY[0x277D837D0];
    v27 = sub_220CEFDB0();
    *(v14 + 72) = v24;
    *(v14 + 80) = v26;
    *(v14 + 136) = v15;
    *(v14 + 144) = v16;
    *(v14 + 104) = v27;
    *(v14 + 112) = 24;
  }

  v44 = sub_220DC05F0();

  return v44;
}

void sub_220D5A648(uint64_t a1, uint64_t a2)
{
  v44[1] = type metadata accessor for PrecipitationTotalStringAmount(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v44[0] = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = v44 - v9;
  type metadata accessor for PrecipitationWithinOneDaySentence(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_16();
  MEMORY[0x28223BE20](v16);
  v18 = v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C10, qword_220DC50E0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = v44 - v21;
  v23 = v44 + *(v20 + 56) - v21;
  sub_220D5AA20(a1, v44 - v21, type metadata accessor for PrecipitationWithinOneDaySentence);
  sub_220D5AA20(a2, v23, type metadata accessor for PrecipitationWithinOneDaySentence);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_23();
      sub_220D5AA20(v22, v2, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0);
      if (OUTLINED_FUNCTION_10_14() != 1)
      {
        v14 = v2;
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_1_26();
      sub_220CE1D20(v23, v10, v34);
      if (*v2 == *v10)
      {
        static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
        v36 = v35;
        OUTLINED_FUNCTION_0_17();
        sub_220CE1E88(v10, v37);
        if (v36)
        {
          OUTLINED_FUNCTION_0_17();
          sub_220CE1E88(v2, v38);
          sub_220CE1E88(v22, type metadata accessor for PrecipitationWithinOneDaySentence);
          goto LABEL_23;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_17();
        sub_220CE1E88(v10, v43);
      }

      OUTLINED_FUNCTION_0_17();
      v42 = v2;
      goto LABEL_21;
    case 2u:
      OUTLINED_FUNCTION_2_23();
      sub_220D5AA20(v22, v14, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95BE8, &unk_220DC5080);
      if (OUTLINED_FUNCTION_10_14() == 2)
      {
        OUTLINED_FUNCTION_1_26();
        v26 = v23;
        v27 = v44[0];
        sub_220CE1D20(v26, v44[0], v28);
        if (*v14 == *v27)
        {
          static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
          v30 = v29;
          OUTLINED_FUNCTION_0_17();
          sub_220CE1E88(v27, v31);
          if (v30)
          {
            OUTLINED_FUNCTION_0_17();
            sub_220CE1E88(v14, v32);
LABEL_22:
            OUTLINED_FUNCTION_4_17();
            goto LABEL_23;
          }
        }

        else
        {
          OUTLINED_FUNCTION_0_17();
          sub_220CE1E88(v27, v40);
        }

        OUTLINED_FUNCTION_0_17();
        v42 = v14;
LABEL_21:
        sub_220CE1E88(v42, v41);
        goto LABEL_22;
      }

LABEL_15:
      OUTLINED_FUNCTION_0_17();
      sub_220CE1E88(v14, v39);
LABEL_16:
      sub_220D5ABA4(v22);
LABEL_23:
      OUTLINED_FUNCTION_24();
      return;
    case 3u:
      if (OUTLINED_FUNCTION_10_14() == 3)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    default:
      OUTLINED_FUNCTION_2_23();
      sub_220D5AA20(v22, v18, v24);
      if (!OUTLINED_FUNCTION_10_14())
      {
        goto LABEL_22;
      }

      goto LABEL_16;
  }
}

uint64_t sub_220D5AA20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_220D5AA80(uint64_t a1)
{
  sub_220D5AB08();
  if (v1 <= 0x3F)
  {
    sub_220D48004(319);
    if (v2 <= 0x3F)
    {
      sub_220D5AB30(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_220D5AB08()
{
  result = qword_27CF95C00;
  if (!qword_27CF95C00)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27CF95C00);
  }

  return result;
}

void sub_220D5AB30(uint64_t a1)
{
  if (!qword_27CF95C08)
  {
    type metadata accessor for PrecipitationTotalStringAmount(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CF95C08);
    }
  }
}

uint64_t sub_220D5ABA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C10, qword_220DC50E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D5AC20()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_220D5AC7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentativePastHourRange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D5ACE0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_220D5AD8C()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v48 = v3;
  v49 = v4;
  v6 = v5;
  v50 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  v9 = OUTLINED_FUNCTION_18(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_14();
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v13 = sub_220DBF310();
  OUTLINED_FUNCTION_0();
  v51 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = *v2;
  v20 = v2[1];
  v21 = v2[2];
  v47 = v2[3];
  v22 = v2[4];
  v23 = v2[5];
  sub_220CEF48C(v6, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_220CDA548(v12, &qword_27CF94F90, &unk_220DC4410);
    if (qword_27CF94F40 != -1)
    {
      OUTLINED_FUNCTION_4_0(&qword_27CF94F40);
    }

    v24 = sub_220DBF410();
    __swift_project_value_buffer(v24, qword_27CF95F48);
    v25 = sub_220DBF3F0();
    v26 = sub_220DC0980();
    if (OUTLINED_FUNCTION_19_10(v26))
    {
      v27 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_27_4(v27);
      OUTLINED_FUNCTION_12_16(&dword_220CD1000, v28, v29, "Failed to create today platter string for Pressure due to missing extrema values");
      OUTLINED_FUNCTION_17();
    }
  }

  else
  {
    v30 = v51;
    (*(v51 + 32))(v18, v12, v13);
    v52 = v19;
    v53 = v20;
    v31 = v23;
    v32 = v47;
    v54 = v21;
    v55 = v47;
    v56 = v22;
    v57 = v31;
    v33 = sub_220D5B114(v50);
    v45 = v34;
    v46 = v33;
    v35 = v30;
    v36 = v13;
    (*(v35 + 16))(v0, v18, v13);
    __swift_storeEnumTagSinglePayload(v0, 0, 1, v13);
    v52 = v19;
    v53 = v20;
    v54 = v21;
    v55 = v32;
    v56 = v22;
    v57 = v31;
    v37 = sub_220D5B5A0(v50, v48, v0, v49, &v52);
    v39 = v38;
    sub_220CDA548(v0, &qword_27CF94F90, &unk_220DC4410);
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10(&qword_280FA6600);
    }

    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_6_0();
    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_220DC17C0;
    v41 = MEMORY[0x277D837D0];
    *(v40 + 56) = MEMORY[0x277D837D0];
    v42 = sub_220CEFDB0();
    v43 = v45;
    *(v40 + 32) = v46;
    *(v40 + 40) = v43;
    *(v40 + 96) = v41;
    *(v40 + 104) = v42;
    *(v40 + 64) = v42;
    *(v40 + 72) = v37;
    *(v40 + 80) = v39;
    sub_220DC05F0();

    (*(v51 + 8))(v18, v36);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_220D5B114(uint64_t a1)
{
  v2 = sub_220DBEC50();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v34 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_220DC0300();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220DC09B0();
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  v32 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  v14 = sub_220DBE240();
  v30 = v15;
  v31 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_220DC17C0;
  v29 = a1;
  sub_220DBEAB0();
  sub_220DC0290();
  (*(v5 + 104))(v7, *MEMORY[0x277D7B408], v4);
  sub_220DBF100();
  sub_220DBF0D0();
  sub_220D5E768(&qword_27CF95760, MEMORY[0x277D7B4E8], MEMORY[0x277D7B4E0]);
  v28 = sub_220DBE0B0();
  v18 = v17;

  (*(v5 + 8))(v7, v4);
  (*(v33 + 8))(v10, v8);
  (*(v32 + 8))(v13, v11);
  v19 = MEMORY[0x277D837D0];
  *(v16 + 56) = MEMORY[0x277D837D0];
  v20 = sub_220CEFDB0();
  *(v16 + 64) = v20;
  *(v16 + 32) = v28;
  *(v16 + 40) = v18;
  v21 = v34;
  sub_220DBE9C0();
  v22 = sub_220D5DCF4(v21);
  v24 = v23;
  (*(v35 + 8))(v21, v36);
  *(v16 + 96) = v19;
  *(v16 + 104) = v20;
  *(v16 + 72) = v22;
  *(v16 + 80) = v24;
  v25 = sub_220DC05F0();

  return v25;
}

uint64_t sub_220D5B5A0(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v93 = a3;
  v94 = a4;
  v95 = a2;
  v92 = a1;
  v6 = sub_220DC0300();
  v97 = *(v6 - 8);
  v98 = v6;
  MEMORY[0x28223BE20](v6);
  v84 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_220DC09B0();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v83 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  v99 = *(v9 - 8);
  v100 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v82 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v87 = &v81 - v12;
  v13 = sub_220DBE740();
  v90 = *(v13 - 8);
  v91 = v13;
  MEMORY[0x28223BE20](v13);
  v89 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  MEMORY[0x28223BE20](v15 - 8);
  v101 = &v81 - v16;
  v17 = sub_220DBE560();
  MEMORY[0x28223BE20](v17 - 8);
  v88 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C28, &qword_220DC51D0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v81 - v20;
  v22 = type metadata accessor for PressurePlatterStringBuilder.PressureSentenceKind(0);
  v23 = MEMORY[0x28223BE20](v22);
  v81 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v96 = &v81 - v25;
  v27 = *a5;
  v26 = *(a5 + 8);
  v28 = *(a5 + 16);
  v29 = *(a5 + 24);
  v30 = *(a5 + 32);
  v31 = *(a5 + 40);
  sub_220DBEA60();
  sub_220CEF48C(v93, v101);
  v32 = v89;
  v90[2](v89, v94, v91);
  v102[0] = v27;
  v102[1] = v26;
  v102[2] = v28;
  v102[3] = v29;
  v102[4] = v30;
  v102[5] = v31;
  v33 = v95;

  v34 = v27;
  v35 = v26;
  v36 = v28;
  v37 = v29;
  v38 = v30;
  v39 = v31;
  sub_220D5CDD4(v88, v33, v101, v32, v102, v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_220CDA548(v21, &qword_27CF95C28, &qword_220DC51D0);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v40 = sub_220DBF410();
    __swift_project_value_buffer(v40, qword_27CF95F48);
    v41 = sub_220DBF3F0();
    v42 = sub_220DC0980();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_220CD1000, v41, v42, "Failed to create 2nd today platter string for Pressure due to missing extrema values", v43, 2u);
      MEMORY[0x223D98FB0](v43, -1, -1);
    }

    return 0;
  }

  else
  {
    v45 = v96;
    sub_220D5E600(v21, v96);
    v46 = v81;
    sub_220D5E664(v45, v81);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C30, &qword_220DC51D8) + 48);
      v48 = v100;
      v49 = *(v99 + 32);
      v49(v87, v46, v100);
      v49(v82, v46 + v47, v48);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v101 = sub_220DBE240();
      v95 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_220DC17C0;
      v52 = v83;
      sub_220DC0290();
      LODWORD(v94) = *MEMORY[0x277D7B408];
      v53 = v97;
      v93 = *(v97 + 104);
      v54 = v84;
      v93(v84);
      v92 = sub_220DBF100();
      sub_220DBF0D0();
      v91 = sub_220D5E768(&qword_27CF95760, MEMORY[0x277D7B4E8], MEMORY[0x277D7B4E0]);
      v55 = v86;
      v56 = sub_220DBE0B0();
      v58 = v57;

      v59 = *(v53 + 8);
      v97 = v53 + 8;
      v90 = v59;
      v60 = v98;
      (v59)(v54, v98);
      v89 = *(v85 + 8);
      (v89)(v52, v55);
      *(v51 + 56) = MEMORY[0x277D837D0];
      v88 = sub_220CEFDB0();
      *(v51 + 64) = v88;
      *(v51 + 32) = v56;
      *(v51 + 40) = v58;
      sub_220DC0290();
      (v93)(v54, v94, v60);
      sub_220DBF0D0();
      v61 = v82;
      v62 = sub_220DBE0B0();
      v64 = v63;

      (v90)(v54, v98);
      (v89)(v52, v55);
      v65 = v88;
      *(v51 + 96) = MEMORY[0x277D837D0];
      *(v51 + 104) = v65;
      *(v51 + 72) = v62;
      *(v51 + 80) = v64;
      v44 = sub_220DC05F0();

      v66 = v100;
      v67 = *(v99 + 8);
      v67(v61, v100);
      v67(v87, v66);
    }

    else
    {
      v68 = v87;
      (*(v99 + 32))(v87, v46, v100);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v101 = sub_220DBE240();
      v95 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_220DC17A0;
      v71 = v83;
      sub_220DC0290();
      v72 = v97;
      v73 = v98;
      v74 = v84;
      (*(v97 + 104))(v84, *MEMORY[0x277D7B408], v98);
      sub_220DBF100();
      sub_220DBF0D0();
      sub_220D5E768(&qword_27CF95760, MEMORY[0x277D7B4E8], MEMORY[0x277D7B4E0]);
      v75 = v86;
      v76 = sub_220DBE0B0();
      v77 = v68;
      v79 = v78;

      (*(v72 + 8))(v74, v73);
      (*(v85 + 8))(v71, v75);
      *(v70 + 56) = MEMORY[0x277D837D0];
      *(v70 + 64) = sub_220CEFDB0();
      *(v70 + 32) = v76;
      *(v70 + 40) = v79;
      v44 = sub_220DC05F0();

      (*(v99 + 8))(v77, v100);
    }

    sub_220D5E6C8(v96);
  }

  return v44;
}

void sub_220D5C0EC()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v127 = v3;
  v128 = v2;
  v120 = v5;
  v121 = v4;
  sub_220DC0300();
  OUTLINED_FUNCTION_0();
  v123 = v7;
  v124 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_14(v8);
  v112 = sub_220DC09B0();
  OUTLINED_FUNCTION_0();
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_21();
  v109 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  OUTLINED_FUNCTION_0();
  v125 = v13;
  v126 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_14(v16);
  sub_220DBE740();
  OUTLINED_FUNCTION_0();
  v118 = v18;
  v119 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_21();
  v117 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  OUTLINED_FUNCTION_18(v20);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_23_10(v22, v106);
  v23 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  v114 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C28, &qword_220DC51D0);
  OUTLINED_FUNCTION_18(v30);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v31);
  v33 = &v106 - v32;
  v115 = type metadata accessor for PressurePlatterStringBuilder.PressureSentenceKind(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_57();
  v122 = v36;
  v38 = *v1;
  v37 = *(v1 + 8);
  v40 = *(v1 + 16);
  v39 = *(v1 + 24);
  v42 = *(v1 + 32);
  v41 = *(v1 + 40);
  (*(v25 + 16))(v29, v128, v23);
  v43 = v116;
  sub_220CEF48C(v120, v116);
  v44 = v117;
  (*(v118 + 16))(v117, v127, v119);
  v129[0] = v38;
  v129[1] = v37;
  v129[2] = v40;
  v129[3] = v39;
  v129[4] = v42;
  v129[5] = v41;
  v45 = v121;

  v46 = v38;
  v47 = v37;
  v48 = v40;
  v49 = v39;
  v50 = v42;
  v51 = v115;
  v52 = v41;
  sub_220D5CDD4(v114, v45, v43, v44, v129, v33);
  if (__swift_getEnumTagSinglePayload(v33, 1, v51) == 1)
  {
    sub_220CDA548(v33, &qword_27CF95C28, &qword_220DC51D0);
    if (qword_27CF94F40 != -1)
    {
      OUTLINED_FUNCTION_4_0(&qword_27CF94F40);
    }

    v53 = sub_220DBF410();
    __swift_project_value_buffer(v53, qword_27CF95F48);
    v54 = sub_220DBF3F0();
    v55 = sub_220DC0980();
    if (OUTLINED_FUNCTION_19_10(v55))
    {
      v56 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_27_4(v56);
      OUTLINED_FUNCTION_12_16(&dword_220CD1000, v57, v58, "Failed to create future day platter string for Pressure due to missing extrema values");
      OUTLINED_FUNCTION_17();
    }
  }

  else
  {
    v59 = v33;
    v60 = v122;
    sub_220D5E600(v59, v122);
    v61 = sub_220DBE520();
    v62 = v106;
    sub_220D5E664(v60, v106);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C30, &qword_220DC51D8) + 48);
      v64 = v126;
      v65 = *(v125 + 32);
      v65(v113, v62, v126);
      v65(v108, v62 + v63, v64);
      switch(v61)
      {
        case 1:
          OUTLINED_FUNCTION_19();
          if (!v66)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          break;
        case 2:
          OUTLINED_FUNCTION_19();
          if (!v66)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          break;
        case 3:
          OUTLINED_FUNCTION_19();
          if (!v66)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          break;
        case 4:
          OUTLINED_FUNCTION_19();
          if (!v66)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          break;
        case 5:
          OUTLINED_FUNCTION_19();
          if (!v66)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          break;
        case 6:
          OUTLINED_FUNCTION_19();
          if (!v66)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          break;
        default:
          OUTLINED_FUNCTION_19();
          if (!v66)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          break;
      }

      OUTLINED_FUNCTION_2_24();
      OUTLINED_FUNCTION_6_0();
      v127 = sub_220DBE240();
      v128 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v70 = swift_allocObject();
      OUTLINED_FUNCTION_26_5(v70, xmmword_220DC17C0);
      v72 = *(v71 - 256);
      sub_220DC0290();
      LODWORD(v121) = *MEMORY[0x277D7B408];
      v73 = v123;
      v74 = OUTLINED_FUNCTION_29_3(*(v123 + 104));
      v75(v74);
      v119 = sub_220DBF100();
      sub_220DBF0D0();
      OUTLINED_FUNCTION_3_23();
      v118 = sub_220D5E768(v76, v77, MEMORY[0x277D7B4E0]);
      OUTLINED_FUNCTION_28();
      v78 = v112;
      v79 = sub_220DBE0B0();
      v81 = v80;

      v82 = v64;
      v83 = *(v73 + 8);
      v123 = v73 + 8;
      v117 = v83;
      v84 = v124;
      v83(v44, v124);
      v85 = OUTLINED_FUNCTION_22_8();
      v86(v85, v78);
      v70[3].n128_u64[1] = MEMORY[0x277D837D0];
      v115 = sub_220CEFDB0();
      v70[4].n128_u64[0] = v115;
      v70[2].n128_u64[0] = v79;
      v70[2].n128_u64[1] = v81;
      sub_220DC0290();
      v120(v44, v121, v84);
      v87 = v119;
      v88 = sub_220DBF0D0();
      v89 = OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_32_2(v89, v90, v88, MEMORY[0x277D7AA40], v82, v78);
      OUTLINED_FUNCTION_24_7();
      v117(v44, v124);
      v116(v72, v78);
      v91 = v115;
      v70[6].n128_u64[0] = MEMORY[0x277D837D0];
      v70[6].n128_u64[1] = v91;
      v70[4].n128_u64[1] = v87;
      v70[5].n128_u64[0] = v81;
      sub_220DC05F0();

      v92 = v126;
      v93 = *(v125 + 8);
      v93(v82, v126);
      v93(v113, v92);
    }

    else
    {
      v67 = v62;
      v68 = v126;
      (*(v125 + 32))(v107, v67, v126);
      switch(v61)
      {
        case 1:
          OUTLINED_FUNCTION_19();
          if (!v66)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          break;
        case 2:
          OUTLINED_FUNCTION_19();
          if (!v66)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          break;
        case 3:
          OUTLINED_FUNCTION_19();
          if (!v66)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          break;
        case 4:
          OUTLINED_FUNCTION_19();
          if (!v66)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          break;
        case 5:
          OUTLINED_FUNCTION_19();
          if (!v66)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          break;
        case 6:
          OUTLINED_FUNCTION_19();
          if (!v66)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          break;
        default:
          OUTLINED_FUNCTION_19();
          if (!v66)
          {
            OUTLINED_FUNCTION_10(&qword_280FA6600);
          }

          break;
      }

      OUTLINED_FUNCTION_2_24();
      OUTLINED_FUNCTION_6_0();
      v127 = sub_220DBE240();
      v128 = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v95 = swift_allocObject();
      OUTLINED_FUNCTION_26_5(v95, xmmword_220DC17A0);
      v97 = *(v96 - 256);
      sub_220DC0290();
      v99 = v123;
      v98 = v124;
      v100 = v110;
      (*(v123 + 104))(v110, *MEMORY[0x277D7B408], v124);
      sub_220DBF100();
      sub_220DBF0D0();
      OUTLINED_FUNCTION_3_23();
      sub_220D5E768(v101, v102, MEMORY[0x277D7B4E0]);
      v103 = v112;
      v104 = v107;
      v105 = v107;
      sub_220DBE0B0();
      OUTLINED_FUNCTION_24_7();
      (*(v99 + 8))(v100, v98);
      (*(v111 + 8))(v97, v103);
      v95[3].n128_u64[1] = MEMORY[0x277D837D0];
      v95[4].n128_u64[0] = sub_220CEFDB0();
      v95[2].n128_u64[0] = v105;
      v95[2].n128_u64[1] = v68;
      sub_220DC05F0();

      (*(v125 + 8))(v104, v126);
    }

    sub_220D5E6C8(v122);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_220D5CDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v71 = a1;
  v72 = a4;
  v66 = a2;
  v70 = a6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  OUTLINED_FUNCTION_0();
  v62 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9();
  v63 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_57();
  v67 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  OUTLINED_FUNCTION_18(v13);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  v17 = sub_220DBF310();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  v69 = type metadata accessor for PressurePlatterStringBuilder.PressureSentenceKind(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_21();
  v61 = v25;
  v26 = *(a5 + 8);
  v65 = *a5;
  v28 = *(a5 + 16);
  v27 = *(a5 + 24);
  v30 = *(a5 + 32);
  v29 = *(a5 + 40);
  v68 = a3;
  sub_220CEF48C(a3, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    v31 = v71;

    sub_220CDA548(v16, &qword_27CF94F90, &unk_220DC4410);
    if (qword_27CF94F40 != -1)
    {
      OUTLINED_FUNCTION_4_0(&qword_27CF94F40);
    }

    v32 = sub_220DBF410();
    __swift_project_value_buffer(v32, qword_27CF95F48);
    v33 = sub_220DBF3F0();
    v34 = sub_220DC0980();
    v35 = OUTLINED_FUNCTION_19_10(v34);
    v36 = v68;
    v37 = v72;
    if (v35)
    {
      v38 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_27_4(v38);
      OUTLINED_FUNCTION_12_16(&dword_220CD1000, v39, v40, "Failed to determine sentence kind for Pressure due to missing extrema values");
      OUTLINED_FUNCTION_17();
    }

    sub_220DBE740();
    OUTLINED_FUNCTION_6();
    (*(v41 + 8))(v37);
    sub_220CDA548(v36, &qword_27CF94F90, &unk_220DC4410);
    sub_220DBE560();
    OUTLINED_FUNCTION_6();
    (*(v42 + 8))(v31);
    v43 = 1;
    v45 = v69;
    v44 = v70;
  }

  else
  {
    (*(v19 + 32))(v23, v16, v17);
    v60 = v28;
    v46 = v67;
    sub_220D36AAC(v26, v66, v67);

    sub_220DBF300();
    sub_220D5E724();
    v47 = v26;
    v48 = v63;
    sub_220DBE040();

    LOBYTE(v47) = OUTLINED_FUNCTION_25_7(v46, v48);
    sub_220DBE740();
    OUTLINED_FUNCTION_6();
    (*(v49 + 8))(v72);
    sub_220CDA548(v68, &qword_27CF94F90, &unk_220DC4410);
    sub_220DBE560();
    OUTLINED_FUNCTION_6();
    (*(v50 + 8))(v71);
    (*(v19 + 8))(v23, v17);
    v51 = v62;
    v52 = (v62 + 32);
    if (v47)
    {
      v53 = v64;
      (*(v62 + 8))(v48, v64);
      v54 = v61;
      (*(v51 + 32))(v61, v67, v53);
    }

    else
    {
      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C30, &qword_220DC51D8) + 48);
      v56 = *v52;
      v54 = v61;
      v57 = v64;
      (*v52)(v61, v67, v64);
      v56(v54 + v55, v48, v57);
    }

    v45 = v69;
    swift_storeEnumTagMultiPayload();
    v44 = v70;
    sub_220D5E600(v54, v70);
    v43 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v44, v43, 1, v45);
}

void sub_220D5D328()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v124 = v2;
  v125 = v3;
  v126 = v4;
  v123 = v5;
  sub_220DC0300();
  OUTLINED_FUNCTION_0();
  v128 = v7;
  v129 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_14(v8);
  v115 = sub_220DC09B0();
  OUTLINED_FUNCTION_0();
  v114 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_21();
  v112 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  OUTLINED_FUNCTION_0();
  v130 = v13;
  v131 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_14(v15);
  sub_220DBE740();
  OUTLINED_FUNCTION_0();
  v121 = v17;
  v122 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_21();
  v120 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  OUTLINED_FUNCTION_18(v19);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  v118 = &v109 - v21;
  v22 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  v117 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C28, &qword_220DC51D0);
  OUTLINED_FUNCTION_18(v29);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v30);
  v32 = OUTLINED_FUNCTION_23_10(v31, v109);
  v33 = type metadata accessor for PressurePlatterStringBuilder.PressureSentenceKind(v32);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_57();
  v127 = v36;
  v37 = *v1;
  v38 = *(v1 + 8);
  v40 = *(v1 + 16);
  v39 = *(v1 + 24);
  v41 = *(v1 + 32);
  v42 = *(v1 + 40);
  (*(v24 + 16))(v28, v123, v22);
  v43 = v118;
  sub_220CEF48C(v124, v118);
  v44 = v120;
  (*(v121 + 16))(v120, v125, v122);
  v132[0] = v37;
  v132[1] = v38;
  v132[2] = v40;
  v132[3] = v39;
  v132[4] = v41;
  v132[5] = v42;
  v45 = v126;

  v46 = v37;
  v47 = v38;
  v48 = v40;
  v49 = v39;
  v50 = v41;
  v51 = v42;
  v52 = v43;
  v53 = v119;
  sub_220D5CDD4(v117, v45, v52, v44, v132, v119);
  if (__swift_getEnumTagSinglePayload(v53, 1, v33) == 1)
  {
    sub_220CDA548(v53, &qword_27CF95C28, &qword_220DC51D0);
    if (qword_27CF94F40 != -1)
    {
      OUTLINED_FUNCTION_4_0(&qword_27CF94F40);
    }

    v54 = sub_220DBF410();
    __swift_project_value_buffer(v54, qword_27CF95F48);
    v55 = sub_220DBF3F0();
    v56 = sub_220DC0980();
    if (OUTLINED_FUNCTION_19_10(v56))
    {
      v57 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_27_4(v57);
      OUTLINED_FUNCTION_12_16(&dword_220CD1000, v58, v59, "Failed to create yesterday platter string for Pressure due to missing extrema values");
      OUTLINED_FUNCTION_17();
    }
  }

  else
  {
    v60 = v53;
    v61 = v127;
    sub_220D5E600(v60, v127);
    v62 = v110;
    sub_220D5E664(v61, v110);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C30, &qword_220DC51D8) + 48);
      v64 = v131;
      v65 = *(v130 + 32);
      v65(v116, v62, v131);
      v65(v111, v62 + v63, v64);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_6_0();
      v66 = sub_220DBE240();
      v125 = v67;
      v126 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v68 = swift_allocObject();
      OUTLINED_FUNCTION_26_5(v68, xmmword_220DC17C0);
      v70 = *(v69 - 256);
      sub_220DC0290();
      LODWORD(v124) = *MEMORY[0x277D7B408];
      v71 = v128;
      v72 = OUTLINED_FUNCTION_29_3(*(v128 + 104));
      v73(v72);
      v122 = sub_220DBF100();
      sub_220DBF0D0();
      OUTLINED_FUNCTION_3_23();
      v121 = sub_220D5E768(v74, v75, MEMORY[0x277D7B4E0]);
      OUTLINED_FUNCTION_28();
      v76 = v131;
      v77 = v115;
      v78 = sub_220DBE0B0();
      v80 = v79;

      v81 = v76;
      v82 = *(v71 + 8);
      v128 = v71 + 8;
      v120 = v82;
      v83 = v129;
      v82(v62, v129);
      v84 = OUTLINED_FUNCTION_22_8();
      v85(v84, v77);
      v68[3].n128_u64[1] = MEMORY[0x277D837D0];
      v118 = sub_220CEFDB0();
      v68[4].n128_u64[0] = v118;
      v68[2].n128_u64[0] = v78;
      v68[2].n128_u64[1] = v80;
      sub_220DC0290();
      v123(v62, v124, v83);
      v86 = v122;
      v87 = sub_220DBF0D0();
      v88 = OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_32_2(v88, v89, v87, MEMORY[0x277D7AA40], v81, v77);
      OUTLINED_FUNCTION_24_7();
      v120(v62, v129);
      v119(v70, v77);
      v90 = v118;
      v68[6].n128_u64[0] = MEMORY[0x277D837D0];
      v68[6].n128_u64[1] = v90;
      v68[4].n128_u64[1] = v86;
      v68[5].n128_u64[0] = v83;
      sub_220DC05F0();

      v91 = v131;
      v92 = *(v130 + 8);
      v92(v81, v131);
      v92(v116, v91);
    }

    else
    {
      v93 = v116;
      (*(v130 + 32))(v116, v62, v131);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10(&qword_280FA6600);
      }

      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_6_0();
      v94 = sub_220DBE240();
      v125 = v95;
      v126 = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v96 = swift_allocObject();
      OUTLINED_FUNCTION_26_5(v96, xmmword_220DC17A0);
      v98 = *(v97 - 256);
      sub_220DC0290();
      v99 = v128;
      v100 = v129;
      v101 = v113;
      (*(v128 + 104))(v113, *MEMORY[0x277D7B408], v129);
      sub_220DBF100();
      sub_220DBF0D0();
      OUTLINED_FUNCTION_3_23();
      sub_220D5E768(v102, v103, MEMORY[0x277D7B4E0]);
      v104 = v115;
      v105 = sub_220DBE0B0();
      v106 = v93;
      v108 = v107;

      (*(v99 + 8))(v101, v100);
      (*(v114 + 8))(v98, v104);
      v96[3].n128_u64[1] = MEMORY[0x277D837D0];
      v96[4].n128_u64[0] = sub_220CEFDB0();
      v96[2].n128_u64[0] = v105;
      v96[2].n128_u64[1] = v108;
      sub_220DC05F0();

      (*(v130 + 8))(v106, v131);
    }

    sub_220D5E6C8(v127);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_220D5DCF4(uint64_t a1)
{
  v2 = sub_220DBEC50();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = *(v3 + 16);
  v9(&v24 - v7, a1, v2);
  v10 = (*(v3 + 88))(v8, v2);
  if (v10 == *MEMORY[0x277CE33E0])
  {
    if (qword_280FA6600 == -1)
    {
      return sub_220DBE240();
    }

    goto LABEL_16;
  }

  if (v10 == *MEMORY[0x277CE33F0])
  {
    if (qword_280FA6600 == -1)
    {
      return sub_220DBE240();
    }

LABEL_16:
    swift_once();
    return sub_220DBE240();
  }

  if (v10 == *MEMORY[0x277CE33E8])
  {
    if (qword_280FA6600 == -1)
    {
      return sub_220DBE240();
    }

    goto LABEL_16;
  }

  if (qword_27CF94F40 != -1)
  {
    swift_once();
  }

  v12 = sub_220DBF410();
  __swift_project_value_buffer(v12, qword_27CF95F48);
  v9(v6, a1, v2);
  v13 = sub_220DBF3F0();
  v14 = sub_220DC0980();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = v15;
    v26 = swift_slowAlloc();
    v27 = v26;
    *v15 = 136446210;
    sub_220D5E768(&qword_27CF95C38, MEMORY[0x277CE33F8], MEMORY[0x277CE3410]);
    v16 = sub_220DC0C70();
    v18 = v17;
    v19 = *(v3 + 8);
    v19(v6, v2);
    v20 = sub_220D3F210(v16, v18, &v27);

    v21 = v25;
    *(v25 + 1) = v20;
    v22 = v21;
    _os_log_impl(&dword_220CD1000, v13, v14, "Unexpected trend:%{public}s  ", v21, 0xCu);
    v23 = v26;
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x223D98FB0](v23, -1, -1);
    MEMORY[0x223D98FB0](v22, -1, -1);
  }

  else
  {

    v19 = *(v3 + 8);
    v19(v6, v2);
  }

  v19(v8, v2);
  return 0;
}

void sub_220D5E17C()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9();
  v42 = v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v10);
  v44 = &v41 - v11;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v12);
  v43 = &v41 - v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  type metadata accessor for PressurePlatterStringBuilder.PressureSentenceKind(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_16_14();
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C60, qword_220DC5220);
  OUTLINED_FUNCTION_18(v21);
  OUTLINED_FUNCTION_34();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v41 - v24;
  v26 = &v41 + *(v23 + 56) - v24;
  sub_220D5E664(v4, &v41 - v24);
  sub_220D5E664(v2, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220D5E664(v25, v0);
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C30, &qword_220DC51D8) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = *(v7 + 32);
      v29 = v43;
      v28(v43, v26, v5);
      v28(v44, (v0 + v27), v5);
      v30 = v42;
      v28(v42, &v26[v27], v5);
      sub_220D5E724();
      v31 = OUTLINED_FUNCTION_25_7(v0, v29);
      v32 = *(v7 + 8);
      v32(v0, v5);
      if ((v31 & 1) == 0)
      {
        v32(v30, v5);
        v32(v44, v5);
        v40 = OUTLINED_FUNCTION_30();
        (v32)(v40);
        sub_220D5E6C8(v25);
        goto LABEL_11;
      }

      v33 = v44;
      OUTLINED_FUNCTION_25_7(v44, v30);
      v32(v30, v5);
      v32(v33, v5);
      v34 = OUTLINED_FUNCTION_30();
      (v32)(v34);
      goto LABEL_10;
    }

    v37 = *(v7 + 8);
    v37(v0 + v27, v5);
    v37(v0, v5);
  }

  else
  {
    sub_220D5E664(v25, v20);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v7 + 32))(v16, v26, v5);
      sub_220D5E724();
      sub_220DBE020();
      v38 = *(v7 + 8);
      v38(v16, v5);
      v39 = OUTLINED_FUNCTION_30();
      (v38)(v39);
LABEL_10:
      sub_220D5E6C8(v25);
      goto LABEL_11;
    }

    v35 = OUTLINED_FUNCTION_30();
    v36(v35);
  }

  sub_220CDA548(v25, &qword_27CF95C60, qword_220DC5220);
LABEL_11:
  OUTLINED_FUNCTION_24();
}

uint64_t type metadata accessor for PressurePlatterStringBuilder.PressureSentenceKind(uint64_t a1)
{
  result = qword_27CF95C40;
  if (!qword_27CF95C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D5E600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PressurePlatterStringBuilder.PressureSentenceKind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D5E664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PressurePlatterStringBuilder.PressureSentenceKind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D5E6C8(uint64_t a1)
{
  v2 = type metadata accessor for PressurePlatterStringBuilder.PressureSentenceKind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_220D5E724()
{
  result = qword_27CF956B0;
  if (!qword_27CF956B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF956B0);
  }

  return result;
}

uint64_t sub_220D5E768(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_220D5E7B0(uint64_t a1)
{
  sub_220D5E824(319);
  if (v1 <= 0x3F)
  {
    sub_220D5E87C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_220D5E824(uint64_t a1)
{
  if (!qword_27CF95C50)
  {
    sub_220D5E724();
    v1 = sub_220DBE140();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF95C50);
    }
  }
}

void sub_220D5E87C(uint64_t a1)
{
  if (!qword_27CF95C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95260, &unk_220DC2D10);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF95C58);
    }
  }
}

uint64_t PrecipitationEvent.StartStop.description.getter()
{
  if (!*(v0 + 8))
  {
    v1 = OUTLINED_FUNCTION_22_9() | 0x6E69207472610000;
    v2 = 0xE900000000000020;
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    v1 = OUTLINED_FUNCTION_22_9() | 0x206E6920706F0000;
    v2 = 0xE800000000000000;
LABEL_5:
    MEMORY[0x223D982B0](v1, v2);
    sub_220DC07A0();
    MEMORY[0x223D982B0](115, 0xE100000000000000);
    return v4;
  }

  return 0x746E6174736E6F63;
}

BOOL static PrecipitationEvent.StartStop.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      return v3 == 2 && *&v2 == 0;
    }

    if (v3 != 1)
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == v2;
}

uint64_t PrecipitationEvent.precipitation.getter()
{
  OUTLINED_FUNCTION_3();
  sub_220DBEC20();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_20();

  return v1(v0);
}

uint64_t PrecipitationEvent.startStop.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  result = type metadata accessor for PrecipitationEvent(v2);
  v4 = (v1 + *(result + 20));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  return result;
}

uint64_t PrecipitationEvent.startDate.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = *(type metadata accessor for PrecipitationEvent(v2) + 24);
  sub_220DBE560();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t PrecipitationEvent.description.getter()
{
  sub_220DC0B80();
  MEMORY[0x223D982B0](0x203A706963657270, 0xE800000000000000);
  sub_220DBEC20();
  sub_220D5EDAC(&qword_27CF95C68, MEMORY[0x277CE33B8], MEMORY[0x277CE33D8]);
  v0 = sub_220DC0C70();
  MEMORY[0x223D982B0](v0);

  MEMORY[0x223D982B0](0x537472617473202CLL, 0xED0000203A706F74);
  type metadata accessor for PrecipitationEvent(0);
  OUTLINED_FUNCTION_17_10();
  started = PrecipitationEvent.StartStop.description.getter();
  MEMORY[0x223D982B0](started);

  MEMORY[0x223D982B0](0x447472617473202CLL, 0xED0000203A657461);
  sub_220DBE560();
  sub_220D5EDAC(&qword_27CF95AC0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v2 = sub_220DC0C70();
  MEMORY[0x223D982B0](v2);

  MEMORY[0x223D982B0](0x65636E616863202CLL, 0xEA0000000000203ALL);
  OUTLINED_FUNCTION_17_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C70, &unk_220DC5270);
  v3 = sub_220DC0630();
  MEMORY[0x223D982B0](v3);

  return 0;
}

uint64_t sub_220D5EDAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static PrecipitationEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_220D05D20() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PrecipitationEvent(0);
  OUTLINED_FUNCTION_17_10();
  if (v8)
  {
    if (v8 != 1)
    {
      if (v5 != 2 || *&v6 != 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    v9 = v7;
    v10 = v6;
    v11 = v5 == 1;
  }

  else
  {
    v9 = v7;
    v10 = v6;
    v11 = v5 == 0;
  }

  if (!v11 || v9 != v10)
  {
    return 0;
  }

LABEL_16:
  if ((sub_220DBE460() & 1) == 0)
  {
    return 0;
  }

  v14 = *(v4 + 28);
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = *(a2 + v14 + 8);
  if (v16)
  {
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v15 != *v17)
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t NextPrecipitation.description.getter()
{
  v1 = type metadata accessor for PrecipitationEvent(0);
  v2 = OUTLINED_FUNCTION_18(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v5 = v4 - v3;
  type metadata accessor for NextPrecipitation(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  sub_220D5F0D8(v0, v8 - v7);
  v9 = 0x30316E49656E6F6ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_19();
      v13 = OUTLINED_FUNCTION_15_11();
      sub_220D619B4(v13, v14);
      v12 = 0x72756F4834326E69;
      goto LABEL_4;
    case 2u:
      OUTLINED_FUNCTION_0_19();
      v16 = OUTLINED_FUNCTION_15_11();
      sub_220D619B4(v16, v17);
      v21 = 0x7379614430316E69;
      v18 = PrecipitationEvent.description.getter();
      MEMORY[0x223D982B0](v18);

      MEMORY[0x223D982B0](41, 0xE100000000000000);
      goto LABEL_6;
    case 3u:
      return v9;
    default:
      OUTLINED_FUNCTION_0_19();
      v10 = OUTLINED_FUNCTION_15_11();
      sub_220D619B4(v10, v11);
      v12 = 0x756E694D30366E69;
LABEL_4:
      v21 = v12;
      v15 = PrecipitationEvent.description.getter();
      MEMORY[0x223D982B0](v15);

LABEL_6:
      v9 = v21;
      OUTLINED_FUNCTION_9_17();
      sub_220D65BF8(v5, v19);
      return v9;
  }
}

uint64_t sub_220D5F0D8(uint64_t a1, uint64_t a2)
{
  Precipitation = type metadata accessor for NextPrecipitation(0);
  (*(*(Precipitation - 8) + 16))(a2, a1, Precipitation);
  return a2;
}

uint64_t NextPrecipitation.event.getter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  type metadata accessor for NextPrecipitation(v3);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for PrecipitationEvent(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  sub_220D5F0D8(v2, v7);
  if (swift_getEnumCaseMultiPayload() > 2)
  {
    v15 = 1;
  }

  else
  {
    sub_220D619B4(v7, v12);
    v13 = OUTLINED_FUNCTION_15_11();
    sub_220D619B4(v13, v14);
    v15 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v0, v15, 1, v8);
}

uint64_t NextPrecipitation.init<A>(from:date:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v101 = a3;
  v103 = a2;
  v95 = a6;
  v102 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22();
  v83 = v9;
  v89 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22();
  v88 = v11;
  OUTLINED_FUNCTION_6_1();
  v12 = sub_220DBE740();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v99 = v17 - v16;
  OUTLINED_FUNCTION_6_1();
  v98 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v96 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C78, &qword_220DC5440);
  OUTLINED_FUNCTION_18(v23);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  v26 = &v81 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C80, &qword_220DC5280);
  OUTLINED_FUNCTION_18(v27);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v28);
  v30 = &v81 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C88, &qword_220DC5288);
  v32 = OUTLINED_FUNCTION_18(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4();
  v82 = v33 - v34;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v35);
  v87 = &v81 - v36;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v37);
  v39 = &v81 - v38;
  v94 = v14;
  v40 = *(v14 + 16);
  v41 = v101;
  v40(v26, v101, v12);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v12);
  v42 = a5;
  v43 = *(a5 + 72);
  v44 = v103;
  v100 = a1;
  v92 = v42;
  v43(v103, v26, v102);
  sub_220CDA548(v26, &qword_27CF95C78, &qword_220DC5440);
  v45 = v96;
  v46 = v44;
  v47 = v41;
  v48 = v98;
  v85 = *(v96 + 16);
  v86 = v96 + 16;
  v85(v22, v46);
  v49 = v99;
  v97 = v12;
  v90 = v14 + 16;
  v91 = v40;
  v40(v99, v47, v12);
  v93 = v22;
  NextPrecipitation.init(nextHourPrecipitationShift:date:timeZone:)(v30, v22, v49, v39);
  Precipitation = type metadata accessor for NextPrecipitation(0);
  if (__swift_getEnumTagSinglePayload(v39, 1, Precipitation) != 1)
  {
    (*(v94 + 8))(v101, v97);
    (*(v45 + 8))(v103, v48);
    OUTLINED_FUNCTION_21_7();
    (*(v75 + 8))(v100);
    OUTLINED_FUNCTION_1_29();
    v76 = v39;
LABEL_7:
    v80 = v95;
    return sub_220D619B4(v76, v80);
  }

  sub_220CDA548(v39, &qword_27CF95C88, &qword_220DC5288);
  v51 = *(v92 + 80);
  v52 = v88;
  v81 = Precipitation;
  v51(v102, v92);
  v53 = v93;
  v54 = v85;
  (v85)(v93, v103, v48);
  v55 = v99;
  v91(v99, v101, v97);
  v56 = v89;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v58 = swift_getAssociatedConformanceWitness();
  v59 = v87;
  NextPrecipitation.init<A>(hourlyForecast:date:timeZone:limitInHours:precipitationChanceThreshold:)(v52, v53, v55, 24, v56, AssociatedConformanceWitness, v58, v87, 0.3);
  if (__swift_getEnumTagSinglePayload(v59, 1, v81) != 1)
  {
    (*(v94 + 8))(v101, v97);
    v77 = OUTLINED_FUNCTION_23_11();
    v78(v77);
    OUTLINED_FUNCTION_21_7();
    (*(v79 + 8))(v100);
    OUTLINED_FUNCTION_1_29();
    v76 = v59;
    goto LABEL_7;
  }

  sub_220CDA548(v59, &qword_27CF95C88, &qword_220DC5288);
  v60 = v83;
  v61 = v102;
  (*(v92 + 88))(v102, v92);
  v62 = v93;
  v63 = v101;
  v54(v93, v103, v98);
  v64 = v99;
  v65 = v97;
  v91(v99, v63, v97);
  v66 = AssociatedTypeWitness;
  v67 = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v68 = swift_getAssociatedConformanceWitness();
  v69 = v82;
  v70 = v67;
  v71 = v81;
  sub_220D609A0(v60, v62, v64, v66, v70, v68, v82, 0.3);
  (*(v94 + 8))(v63, v65);
  v72 = OUTLINED_FUNCTION_23_11();
  v73(v72);
  (*(*(v61 - 8) + 8))(v100, v61);
  if (__swift_getEnumTagSinglePayload(v69, 1, v71) == 1)
  {
    sub_220CDA548(v69, &qword_27CF95C88, &qword_220DC5288);
    OUTLINED_FUNCTION_20();
    return swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_1_29();
  v76 = OUTLINED_FUNCTION_15_11();
  return sub_220D619B4(v76, v80);
}

uint64_t NextPrecipitation.init(nextHourPrecipitationShift:date:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a3;
  v72 = a2;
  v74 = a4;
  Precipitation = type metadata accessor for NextPrecipitation(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v69 = v7 - v6;
  v8 = OUTLINED_FUNCTION_6_1();
  v67 = type metadata accessor for PrecipitationEvent(v8);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v68 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C90, &qword_220DC5290);
  OUTLINED_FUNCTION_18(v12);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  v15 = &v65 - v14;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4();
  v66 = v17 - v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v19);
  v65 = &v65 - v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v21);
  v23 = &v65 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C80, &qword_220DC5280);
  OUTLINED_FUNCTION_18(v24);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v25);
  v27 = &v65 - v26;
  v28 = sub_220DBED40();
  OUTLINED_FUNCTION_0();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1();
  v34 = v33 - v32;
  v35 = a1;
  sub_220D656E8(a1, v27, &qword_27CF95C80, &qword_220DC5280);
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
  {
    sub_220DBE740();
    OUTLINED_FUNCTION_6();
    (*(v36 + 8))(v71);
    sub_220DBE560();
    OUTLINED_FUNCTION_6();
    (*(v37 + 8))(v72);
    sub_220CDA548(a1, &qword_27CF95C80, &qword_220DC5280);
    v38 = OUTLINED_FUNCTION_15_11();
    v40 = &qword_220DC5280;
  }

  else
  {
    (*(v30 + 32))(v34, v27, v28);
    v41 = v71;
    v42 = v72;
    sub_220D61A0C(v72, v71, v15);
    sub_220DBE740();
    OUTLINED_FUNCTION_6();
    (*(v43 + 8))(v41);
    sub_220CDA548(v35, &qword_27CF95C80, &qword_220DC5280);
    (*(v30 + 8))(v34, v28);
    v44 = v70;
    if (__swift_getEnumTagSinglePayload(v15, 1, v70) != 1)
    {
      sub_220D65678(v15, v23);
      v49 = v65;
      sub_220D656E8(v23, v65, &qword_27CF95C98, &qword_220DC5298);
      v50 = v66;
      sub_220D65678(v23, v66);
      v51 = v50 + *(v44 + 48);
      v52 = *v51;
      v53 = *(v51 + 8);
      v54 = sub_220DBEC20();
      v55 = *(v54 - 8);
      v56 = v68;
      (*(v55 + 32))(v68, v49, v54);
      v57 = v67;
      v58 = v56 + *(v67 + 20);
      *v58 = v52;
      *(v58 + 8) = v53;
      v59 = *(v57 + 24);
      sub_220DBE560();
      OUTLINED_FUNCTION_6();
      (*(v60 + 32))(v56 + v59, v42);
      v61 = v56 + *(v57 + 28);
      *v61 = 0;
      *(v61 + 8) = 1;
      (*(v55 + 8))(v50, v54);
      OUTLINED_FUNCTION_0_19();
      v62 = v69;
      sub_220D619B4(v56, v69);
      v48 = Precipitation;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_29();
      v63 = v62;
      v47 = v74;
      sub_220D619B4(v63, v74);
      v46 = 0;
      return __swift_storeEnumTagSinglePayload(v47, v46, 1, v48);
    }

    sub_220DBE560();
    OUTLINED_FUNCTION_6();
    (*(v45 + 8))(v42);
    v39 = &qword_27CF95C90;
    v40 = &qword_220DC5290;
    v38 = v15;
  }

  sub_220CDA548(v38, v39, v40);
  v46 = 1;
  v48 = Precipitation;
  v47 = v74;
  return __swift_storeEnumTagSinglePayload(v47, v46, 1, v48);
}

uint64_t NextPrecipitation.init<A>(hourlyForecast:date:timeZone:limitInHours:precipitationChanceThreshold:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v141 = a7;
  AssociatedConformanceWitness = a6;
  v131 = a3;
  v138 = a2;
  v132 = a1;
  v128 = a8;
  Precipitation = type metadata accessor for NextPrecipitation(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v118 = v15 - v14;
  v16 = OUTLINED_FUNCTION_6_1();
  v117 = type metadata accessor for PrecipitationEvent(v16);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v116 = v19 - v18;
  v20 = *(*(a6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v134 = v22;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_22();
  v121 = v24;
  OUTLINED_FUNCTION_6_1();
  v25 = sub_220DC0AE0();
  OUTLINED_FUNCTION_18(v25);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_22();
  v136 = v27;
  v124 = v20;
  swift_getAssociatedTypeWitness();
  v133 = *(swift_getAssociatedConformanceWitness() + 8);
  v140 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v125 = v28;
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_22();
  v139 = v30;
  v129 = *(a5 - 8);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1();
  v122 = (v33 - v32);
  OUTLINED_FUNCTION_6_1();
  v34 = swift_checkMetadataState();
  OUTLINED_FUNCTION_0();
  v130 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4();
  v120 = v37 - v38;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v39);
  v41 = &v116 - v40;
  v42 = sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_1();
  v48 = v47 - v46;
  v137 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v119 = v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_4();
  v53 = v51 - v52;
  MEMORY[0x28223BE20](v54);
  v56 = &v116 - v55;
  v57 = a4 * 3600.0;
  sub_220DBE600();
  v58 = v138;
  sub_220DBE3A0();
  (*(v44 + 8))(v48, v42);
  (*(v129 + 16))(v122, v132, a5);
  v142 = a5;
  v143 = AssociatedConformanceWitness;
  v59 = v141;
  v144 = v141;
  v145 = v58;
  v123 = v56;
  v146 = v56;
  v126 = a5;
  v60 = v121;
  sub_220DC08D0();
  v61 = *(v130 + 16);
  v122 = v41;
  v61(v120, v41, v34);
  sub_220DC06D0();
  v124 = v34;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v62 = (v134 + 32);
  v63 = (v119 + 8);
  v133 = v59 + 3;
  while (1)
  {
    v64 = v136;
    sub_220DC0AF0();
    if (__swift_getEnumTagSinglePayload(v64, 1, AssociatedTypeWitness) == 1)
    {
      sub_220DBE740();
      OUTLINED_FUNCTION_6();
      (*(v75 + 8))(v131);
      v76 = OUTLINED_FUNCTION_5_22();
      v77(v76);
      v78 = OUTLINED_FUNCTION_12_17();
      v79(v78);
      v80 = OUTLINED_FUNCTION_6_15();
      v81(v80);
      v69 = *v63;
LABEL_9:
      v91 = v137;
      v69(v123, v137);
      v69(v138, v91);
      return __swift_storeEnumTagSinglePayload(v128, 1, 1, Precipitation);
    }

    (*v62)(v60, v64, AssociatedTypeWitness);
    v65 = v60;
    v66 = v141[1];
    v66(AssociatedTypeWitness);
    sub_220DBE410();
    v68 = v67;
    v69 = *v63;
    (*v63)(v53, v137);
    if (v68 < 0.0)
    {
      goto LABEL_6;
    }

    if (v68 > v57)
    {
      sub_220DBE740();
      OUTLINED_FUNCTION_6();
      (*(v82 + 8))(v131);
      v83 = OUTLINED_FUNCTION_5_22();
      v84(v83);
      v85 = OUTLINED_FUNCTION_18_10();
      v86(v85);
      v87 = OUTLINED_FUNCTION_12_17();
      v88(v87);
      v89 = OUTLINED_FUNCTION_6_15();
      v90(v89);
      goto LABEL_9;
    }

    v70 = v141[3];
    v134 = v66;
    v71 = v70(AssociatedTypeWitness);
    v72 = v134;
    if (v71 >= a9)
    {
      break;
    }

LABEL_6:
    v73 = OUTLINED_FUNCTION_18_10();
    v74(v73);
    v60 = v65;
  }

  if (v68 <= 3600.0)
  {
    v68 = 3600.0;
  }

  v93 = v141;
  v94 = v141[2];
  v95 = v116;
  v136 = v69;
  v94(AssociatedTypeWitness, v141);
  v96 = v72;
  v97 = v117;
  v96(AssociatedTypeWitness, v93);
  v98 = (v70)(AssociatedTypeWitness, v93);
  sub_220DBE740();
  OUTLINED_FUNCTION_6();
  (*(v99 + 8))(v131);
  v100 = OUTLINED_FUNCTION_5_22();
  v101(v100);
  v102 = OUTLINED_FUNCTION_18_10();
  v103(v102);
  v104 = OUTLINED_FUNCTION_12_17();
  v105(v104);
  v106 = OUTLINED_FUNCTION_6_15();
  v107(v106);
  v108 = v95 + *(v97 + 20);
  *v108 = v68;
  *(v108 + 8) = 0;
  v109 = v95 + *(v97 + 28);
  *v109 = v98;
  *(v109 + 8) = 0;
  OUTLINED_FUNCTION_0_19();
  v110 = v118;
  sub_220D619B4(v95, v118);
  v111 = Precipitation;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_29();
  v112 = v110;
  v113 = v128;
  sub_220D619B4(v112, v128);
  v115 = v136;
  v114 = v137;
  v136(v123, v137);
  __swift_storeEnumTagSinglePayload(v113, 0, 1, v111);
  return (v115)(v138, v114);
}

uint64_t sub_220D609A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v121 = a6;
  v116 = a5;
  v98 = a3;
  v100 = a2;
  v99 = a1;
  v96 = a7;
  Precipitation = type metadata accessor for NextPrecipitation(0);
  MEMORY[0x28223BE20](Precipitation);
  v85 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for PrecipitationEvent(0);
  MEMORY[0x28223BE20](v84);
  v83 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_220DBF410();
  v122 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v110 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_220DBE1A0();
  v108 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v124 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(a5 + 1) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v104 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v115 = &v82 - v16;
  v17 = sub_220DC0AE0();
  MEMORY[0x28223BE20](v17 - 8);
  v114 = &v82 - v18;
  v117 = v15;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = *(swift_getAssociatedConformanceWitness() + 8);
  v120 = swift_getAssociatedTypeWitness();
  v92 = *(v120 - 8);
  v19 = MEMORY[0x28223BE20](v120);
  v119 = &v82 - v20;
  v21 = *(a4 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_checkMetadataState();
  v97 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v112 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v82 - v27;
  v118 = sub_220DBE560();
  v107 = *(v118 - 8);
  v29 = MEMORY[0x28223BE20](v118);
  v109 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v123 = &v82 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v82 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v82 - v36;
  v89 = sub_220DBE6E0();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v39 = &v82 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE600();
  v40 = v100;
  sub_220DBE390();
  v87 = v21;
  (*(v21 + 16))(v23, v99, a4);
  v125 = a4;
  v126 = v116;
  v41 = v121;
  v127 = v121;
  v128 = v40;
  v91 = v37;
  v129 = v37;
  v94 = a4;
  v42 = AssociatedTypeWitness;
  sub_220DC08D0();
  v43 = v118;
  v116 = v35;
  v117 = v39;
  v44 = v115;
  sub_220DBE5F0();
  v45 = *(v97 + 16);
  v90 = v28;
  v45(v112, v28, v24);
  sub_220DC06D0();
  v93 = v24;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v106 = (v104 + 32);
  v112 = (v41 + 8);
  v46 = v107 + 1;
  v105 = *MEMORY[0x277CC9968];
  v101 = v41 + 24;
  v107 = v108 + 1;
  v108 = (v104 + 8);
  v102 = (v122 + 8);
  v104 = xmmword_220DC17A0;
  while (1)
  {
    v47 = v114;
    sub_220DC0AF0();
    if (__swift_getEnumTagSinglePayload(v47, 1, v42) == 1)
    {
      v65 = sub_220DBE740();
      (*(*(v65 - 8) + 8))(v98, v65);
      (*(v87 + 8))(v99, v94);
      (*(v92 + 8))(v119, v120);
      v62 = *v46;
      (*v46)(v116, v43);
LABEL_13:
      (*(v97 + 8))(v90, v93);
      (*(v88 + 8))(v117, v89);
      v62(v91, v43);
      v62(v100, v43);
      return __swift_storeEnumTagSinglePayload(v96, 1, 1, Precipitation);
    }

    (*v106)(v44, v47, v42);
    v48 = *(v121 + 8);
    v49 = v109;
    v50 = v42;
    v48(v42);
    sub_220DBE5F0();
    v51 = v49;
    v52 = v46;
    v122 = *v46;
    v122(v51, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v53 = sub_220DBE6C0();
    v54 = *(v53 - 8);
    v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v104;
    (*(v54 + 104))(v56 + v55, v105, v53);
    sub_220CE05C8(v56);
    sub_220DBE620();

    v57 = sub_220DBE150();
    if (v58)
    {
      sub_220DBF3E0();
      v59 = sub_220DBF3F0();
      v60 = sub_220DC0980();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_220CD1000, v59, v60, "unexpectedly failed to obtain day difference", v61, 2u);
        MEMORY[0x223D98FB0](v61, -1, -1);
      }

      (*v102)(v110, v103);
      v42 = v50;
      v44 = v115;
      v46 = v52;
      v62 = v122;
      goto LABEL_10;
    }

    v63 = v57;
    v42 = v50;
    v44 = v115;
    v46 = v52;
    v62 = v122;
    if ((v57 & 0x8000000000000000) != 0)
    {
      goto LABEL_10;
    }

    if (v57 > 0xA)
    {
      v66 = sub_220DBE740();
      (*(*(v66 - 8) + 8))(v98, v66);
      (*(v87 + 8))(v99, v94);
      (*v107)(v124, v111);
      v43 = v118;
      v62(v123, v118);
      (*v108)(v44, v42);
      (*(v92 + 8))(v119, v120);
      v62(v116, v43);
      goto LABEL_13;
    }

    v64 = *(v121 + 24);
    if (v64(v42) >= a8)
    {
      break;
    }

LABEL_10:
    (*v107)(v124, v111);
    v43 = v118;
    v62(v123, v118);
    (*v108)(v44, v42);
  }

  v68 = v63 * 86400.0;
  v69 = v121;
  v70 = v42;
  v71 = v83;
  (*(v121 + 16))(v70, v121);
  v72 = v84;
  (v48)(v70, v69);
  v73 = (v64)(v70, v69);
  v74 = sub_220DBE740();
  (*(*(v74 - 8) + 8))(v98, v74);
  (*(v87 + 8))(v99, v94);
  (*v107)(v124, v111);
  v75 = v118;
  v62(v123, v118);
  (*v108)(v44, v70);
  (*(v92 + 8))(v119, v120);
  v62(v116, v75);
  (*(v97 + 8))(v90, v93);
  (*(v88 + 8))(v117, v89);
  v76 = v71 + *(v72 + 20);
  *v76 = v68;
  *(v76 + 8) = 0;
  v77 = v71 + *(v72 + 28);
  *v77 = v73;
  *(v77 + 8) = 0;
  v78 = v85;
  sub_220D619B4(v71, v85);
  v79 = Precipitation;
  swift_storeEnumTagMultiPayload();
  v80 = v78;
  v81 = v96;
  sub_220D619B4(v80, v96);
  v62(v91, v75);
  __swift_storeEnumTagSinglePayload(v81, 0, 1, v79);
  return (v62)(v100, v75);
}

uint64_t sub_220D619B4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_11_0();
  v4(v3);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_20();
  v6(v5);
  return a2;
}

uint64_t sub_220D61A0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v471 = a1;
  v472 = a2;
  v481 = a3;
  v3 = sub_220DBE1A0();
  v4 = *(v3 - 8);
  v473 = v3;
  v474 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v451 = &v401 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v450 = &v401 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v447 = &v401 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v446 = &v401 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v443 = &v401 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v442 = &v401 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v437 = &v401 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v436 = &v401 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v452 = &v401 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v453 = &v401 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v467 = &v401 - v26;
  MEMORY[0x28223BE20](v25);
  v470 = &v401 - v27;
  v28 = sub_220DBE6E0();
  v29 = *(v28 - 8);
  v475 = v28;
  v476 = v29;
  v30 = MEMORY[0x28223BE20](v28);
  v449 = &v401 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v448 = &v401 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v445 = &v401 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v444 = &v401 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v441 = &v401 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v440 = &v401 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v431 = &v401 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v430 = &v401 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v456 = &v401 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v460 = &v401 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v466 = &v401 - v51;
  MEMORY[0x28223BE20](v50);
  v479 = &v401 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v54 = MEMORY[0x28223BE20](v53 - 8);
  v433 = &v401 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v432 = &v401 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v425 = &v401 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v424 = &v401 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v419 = &v401 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v416 = &v401 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v413 = &v401 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v412 = &v401 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v459 = &v401 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v463 = &v401 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v469 = &v401 - v75;
  MEMORY[0x28223BE20](v74);
  v77 = &v401 - v76;
  v480 = sub_220DBE560();
  v477 = *(v480 - 8);
  v78 = MEMORY[0x28223BE20](v480);
  v438 = &v401 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = MEMORY[0x28223BE20](v78);
  v439 = &v401 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v434 = &v401 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v435 = &v401 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v428 = &v401 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v429 = &v401 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v426 = &v401 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v427 = &v401 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v420 = &v401 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v422 = &v401 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v417 = &v401 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v418 = &v401 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v410 = &v401 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v411 = &v401 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v408 = &v401 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v409 = &v401 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v454 = &v401 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v455 = &v401 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v457 = &v401 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v458 = &v401 - v117;
  v118 = MEMORY[0x28223BE20](v116);
  v468 = &v401 - v119;
  v120 = MEMORY[0x28223BE20](v118);
  v465 = &v401 - v121;
  v122 = MEMORY[0x28223BE20](v120);
  v124 = &v401 - v123;
  MEMORY[0x28223BE20](v122);
  v478 = &v401 - v125;
  v126 = sub_220DBEC20();
  v127 = *(v126 - 8);
  v128 = MEMORY[0x28223BE20](v126);
  v423 = &v401 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = MEMORY[0x28223BE20](v128);
  v421 = &v401 - v131;
  v132 = MEMORY[0x28223BE20](v130);
  v415 = &v401 - v133;
  v134 = MEMORY[0x28223BE20](v132);
  v414 = &v401 - v135;
  v136 = MEMORY[0x28223BE20](v134);
  v407 = &v401 - v137;
  v138 = MEMORY[0x28223BE20](v136);
  v406 = &v401 - v139;
  v140 = MEMORY[0x28223BE20](v138);
  v405 = &v401 - v141;
  v142 = MEMORY[0x28223BE20](v140);
  v404 = &v401 - v143;
  v144 = MEMORY[0x28223BE20](v142);
  v461 = &v401 - v145;
  v146 = MEMORY[0x28223BE20](v144);
  v462 = &v401 - v147;
  v148 = MEMORY[0x28223BE20](v146);
  v150 = &v401 - v149;
  MEMORY[0x28223BE20](v148);
  v152 = &v401 - v151;
  v153 = sub_220DBED10();
  v154 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v156 = &v401 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBED30();
  v402 = v154;
  v157 = *(v154 + 88);
  v403 = v153;
  v158 = v157(v156, v153);
  if (v158 == *MEMORY[0x277CE3520])
  {
    goto LABEL_2;
  }

  v165 = v158;
  v464 = v127;
  v166 = v126;
  if (v158 == *MEMORY[0x277CE35D8])
  {
    goto LABEL_6;
  }

  if (v158 == *MEMORY[0x277CE35C0])
  {
    goto LABEL_9;
  }

  if (v158 == *MEMORY[0x277CE3660])
  {
    goto LABEL_6;
  }

  if (v158 == *MEMORY[0x277CE3668])
  {
LABEL_9:
    v170 = v464;
    (*(v464 + 104))(v150, *MEMORY[0x277CE3398], v126);
    v171 = v469;
    sub_220DBED20();
    v172 = v480;
    if (__swift_getEnumTagSinglePayload(v171, 1, v480) != 1)
    {
      v463 = v166;
      v200 = v477;
      v201 = v465;
      (*(v477 + 32))(v465, v171, v172);
      (*(v200 + 16))(v468, v471, v172);
      v202 = v466;
      sub_220DBE600();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
      v203 = sub_220DBE6C0();
      v204 = *(v203 - 8);
      v205 = (*(v204 + 80) + 32) & ~*(v204 + 80);
      v206 = swift_allocObject();
      *(v206 + 16) = xmmword_220DC17A0;
      (*(v204 + 104))(v206 + v205, *MEMORY[0x277CC99A0], v203);
      sub_220CE05C8(v206);
      v207 = v467;
      sub_220DBE620();

      v208 = sub_220DBE170();
      LOBYTE(v203) = v209;
      (*(v474 + 8))(v207, v473);
      v210 = v481;
      if ((v203 & 1) == 0 && (v208 - 60) >= 0xFFFFFFFFFFFFFFC5)
      {
        v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
        v211 = v210 + *(v479 + 12);
        v212 = v463;
        (*(v170 + 16))(v210, v150, v463);
        v213 = v468;
        sub_220DBE410();
        v215 = v214;
        (*(v476 + 8))(v202, v475);
        v216 = *(v200 + 8);
        v217 = v480;
        v216(v213, v480);
        v216(v201, v217);
        (*(v170 + 8))(v150, v212);
        *v211 = v215;
        *(v211 + 8) = 1;
        v162 = v210;
        v163 = 0;
        v164 = v479;
        return __swift_storeEnumTagSinglePayload(v162, v163, 1, v164);
      }

      (*(v476 + 8))(v202, v475);
      v218 = *(v200 + 8);
      v219 = v480;
      v218(v468, v480);
      v218(v201, v219);
      (*(v170 + 8))(v150, v463);
      v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
      v162 = v210;
      goto LABEL_49;
    }

    (*(v170 + 8))(v150, v166);
    v169 = v171;
    goto LABEL_11;
  }

  v127 = v464;
  if (v158 == *MEMORY[0x277CE3708])
  {
LABEL_2:
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v160 = v481;
    v161 = v481 + *(v159 + 48);
    (*(v127 + 104))(v481, *MEMORY[0x277CE3398], v126);
LABEL_3:
    *v161 = 0;
    *(v161 + 8) = 2;
    v162 = v160;
LABEL_4:
    v163 = 0;
    v164 = v159;
    return __swift_storeEnumTagSinglePayload(v162, v163, 1, v164);
  }

  if (v158 == *MEMORY[0x277CE3498])
  {
LABEL_6:
    v167 = v464;
    (*(v464 + 104))(v152, *MEMORY[0x277CE3398], v126);
    sub_220DBED20();
    v168 = v480;
    if (__swift_getEnumTagSinglePayload(v77, 1, v480) != 1)
    {
      v463 = v126;
      v173 = v77;
      v174 = v477;
      (*(v477 + 32))(v478, v173, v168);
      (*(v174 + 16))(v124, v471, v168);
      sub_220DBE600();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
      v175 = sub_220DBE6C0();
      v176 = *(v175 - 8);
      v177 = (*(v176 + 80) + 32) & ~*(v176 + 80);
      v178 = swift_allocObject();
      *(v178 + 16) = xmmword_220DC17A0;
      (*(v176 + 104))(v178 + v177, *MEMORY[0x277CC99A0], v175);
      sub_220CE05C8(v178);
      v179 = v470;
      sub_220DBE620();

      v180 = sub_220DBE170();
      LOBYTE(v175) = v181;
      (*(v474 + 8))(v179, v473);
      if ((v175 & 1) == 0 && (v180 - 60) >= 0xFFFFFFFFFFFFFFC5)
      {
        v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
        v182 = v481;
        v183 = v481 + *(v159 + 48);
        v184 = v463;
        (*(v167 + 16))(v481, v152, v463);
        v185 = v478;
        sub_220DBE410();
        v187 = v186;
        (*(v476 + 8))(v479, v475);
        v188 = *(v174 + 8);
        v189 = v124;
        v190 = v480;
        v188(v189, v480);
        v188(v185, v190);
        (*(v167 + 8))(v152, v184);
        *v183 = v187;
        *(v183 + 8) = 0;
        v162 = v182;
        goto LABEL_4;
      }

      (*(v476 + 8))(v479, v475);
      v197 = *(v174 + 8);
      v198 = v480;
      v197(v124, v480);
      v197(v478, v198);
      (*(v167 + 8))(v152, v463);
      goto LABEL_48;
    }

    (*(v167 + 8))(v152, v126);
    v169 = v77;
    goto LABEL_11;
  }

  if (v158 == *MEMORY[0x277CE3490])
  {
    goto LABEL_9;
  }

  if (v158 == *MEMORY[0x277CE3538])
  {
    goto LABEL_6;
  }

  if (v158 == *MEMORY[0x277CE3540])
  {
    goto LABEL_9;
  }

  v127 = v464;
  if (v158 == *MEMORY[0x277CE36E8])
  {
    goto LABEL_2;
  }

  if (v158 == *MEMORY[0x277CE3748])
  {
    goto LABEL_6;
  }

  if (v158 == *MEMORY[0x277CE3720])
  {
    goto LABEL_9;
  }

  if (v158 == *MEMORY[0x277CE34E0])
  {
    goto LABEL_6;
  }

  if (v158 == *MEMORY[0x277CE34E8])
  {
    goto LABEL_9;
  }

  v127 = v464;
  if (v158 == *MEMORY[0x277CE3738])
  {
    goto LABEL_2;
  }

  if (v158 == *MEMORY[0x277CE3500])
  {
    goto LABEL_6;
  }

  if (v158 == *MEMORY[0x277CE34C8] || v158 == *MEMORY[0x277CE3588])
  {
    goto LABEL_9;
  }

  if (v158 == *MEMORY[0x277CE3580])
  {
    goto LABEL_6;
  }

  v192 = v126;
  if (v158 == *MEMORY[0x277CE3578] || v158 == *MEMORY[0x277CE3590] || v158 == *MEMORY[0x277CE3528] || v158 == *MEMORY[0x277CE3438])
  {
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v160 = v481;
    v161 = v481 + *(v159 + 48);
    v196 = MEMORY[0x277CE3398];
LABEL_46:
    (*(v464 + 104))(v160, *v196, v126);
    goto LABEL_3;
  }

  if (v158 == *MEMORY[0x277CE3630] || v158 == *MEMORY[0x277CE3640] || v158 == *MEMORY[0x277CE35E8] || v158 == *MEMORY[0x277CE3448])
  {
    goto LABEL_67;
  }

  if (v158 == *MEMORY[0x277CE3610] || v158 == *MEMORY[0x277CE3618] || v158 == *MEMORY[0x277CE35C8] || v158 == *MEMORY[0x277CE3440])
  {
    goto LABEL_80;
  }

  v249 = v158 == *MEMORY[0x277CE36A0] || v158 == *MEMORY[0x277CE36B0];
  v250 = v249 || v158 == *MEMORY[0x277CE3670];
  if (v250 || v158 == *MEMORY[0x277CE3450])
  {
LABEL_67:
    (*(v464 + 104))(v462, *MEMORY[0x277CE3398], v126);
    v223 = v463;
    sub_220DBED20();
    if (__swift_getEnumTagSinglePayload(v223, 1, v480) == 1)
    {
      (*(v464 + 8))(v462, v126);
      v169 = v463;
LABEL_11:
      sub_220CDA548(v169, &qword_27CF951E0, &unk_220DC1D80);
LABEL_48:
      v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
      v162 = v481;
LABEL_49:
      v163 = 1;
      return __swift_storeEnumTagSinglePayload(v162, v163, 1, v164);
    }

    v229 = v477;
    v230 = v480;
    (*(v477 + 32))(v458, v463, v480);
    (*(v229 + 16))(v457, v471, v230);
    sub_220DBE600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v231 = sub_220DBE6C0();
    v232 = *(v231 - 8);
    v233 = (*(v232 + 80) + 32) & ~*(v232 + 80);
    v234 = swift_allocObject();
    *(v234 + 16) = xmmword_220DC17A0;
    (*(v232 + 104))(v234 + v233, *MEMORY[0x277CC99A0], v231);
    sub_220CE05C8(v234);
    v235 = v453;
    sub_220DBE620();

    v236 = sub_220DBE170();
    LOBYTE(v231) = v237;
    (*(v474 + 8))(v235, v473);
    if ((v231 & 1) != 0 || (v236 - 60) < 0xFFFFFFFFFFFFFFC5)
    {
      (*(v476 + 8))(v460, v475);
      v274 = *(v477 + 8);
      v275 = v480;
      v274(v457, v480);
      v274(v458, v275);
      (*(v464 + 8))(v462, v192);
      goto LABEL_48;
    }

    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v238 = v481;
    v239 = v481 + *(v159 + 48);
    v240 = v464;
    v241 = v462;
    (*(v464 + 16))(v481, v462, v192);
    v242 = v457;
    v243 = v458;
    sub_220DBE410();
    v245 = v244;
    (*(v476 + 8))(v460, v475);
LABEL_86:
    v246 = *(v477 + 8);
    v247 = v242;
    v248 = v480;
    v246(v247, v480);
    v246(v243, v248);
    (*(v240 + 8))(v241, v192);
    *v239 = v245;
    *(v239 + 8) = 0;
LABEL_113:
    v162 = v238;
    goto LABEL_4;
  }

  if (v158 == *MEMORY[0x277CE36A8] || v158 == *MEMORY[0x277CE36B8] || v158 == *MEMORY[0x277CE3678] || v158 == *MEMORY[0x277CE3458])
  {
LABEL_80:
    (*(v464 + 104))(v461, *MEMORY[0x277CE3398], v126);
    v227 = v459;
    sub_220DBED20();
    if (__swift_getEnumTagSinglePayload(v227, 1, v480) == 1)
    {
      (*(v464 + 8))(v461, v126);
      v228 = &v482;
LABEL_82:
      v169 = *(v228 - 32);
      goto LABEL_11;
    }

    v255 = v477;
    v256 = v480;
    (*(v477 + 32))(v455, v459, v480);
    (*(v255 + 16))(v454, v471, v256);
    sub_220DBE600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v257 = sub_220DBE6C0();
    v258 = *(v257 - 8);
    v259 = (*(v258 + 80) + 32) & ~*(v258 + 80);
    v260 = swift_allocObject();
    *(v260 + 16) = xmmword_220DC17A0;
    (*(v258 + 104))(v260 + v259, *MEMORY[0x277CC99A0], v257);
    sub_220CE05C8(v260);
    v261 = v452;
    sub_220DBE620();

    v262 = sub_220DBE170();
    LOBYTE(v257) = v263;
    (*(v474 + 8))(v261, v473);
    if ((v257 & 1) != 0 || (v262 - 60) < 0xFFFFFFFFFFFFFFC5)
    {
      (*(v476 + 8))(v456, v475);
      v276 = *(v477 + 8);
      v277 = v480;
      v276(v454, v480);
      v276(v455, v277);
      (*(v464 + 8))(v461, v192);
      goto LABEL_48;
    }

    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v238 = v481;
    v264 = v481 + *(v159 + 48);
    v265 = v464;
    v266 = v461;
    (*(v464 + 16))(v481, v461, v192);
    v267 = v454;
    v268 = v455;
    sub_220DBE410();
    v270 = v269;
    (*(v476 + 8))(v456, v475);
    goto LABEL_112;
  }

  if (v158 == *MEMORY[0x277CE3548])
  {
LABEL_108:
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v160 = v481;
    v161 = v481 + *(v159 + 48);
    v196 = MEMORY[0x277CE33A0];
    goto LABEL_46;
  }

  if (v158 == *MEMORY[0x277CE35F8])
  {
    goto LABEL_119;
  }

  if (v158 == *MEMORY[0x277CE35E0])
  {
    goto LABEL_126;
  }

  if (v158 == *MEMORY[0x277CE3690])
  {
LABEL_119:
    (*(v464 + 104))(v404, *MEMORY[0x277CE33A0], v126);
    v278 = v412;
    sub_220DBED20();
    if (__swift_getEnumTagSinglePayload(v278, 1, v480) == 1)
    {
      (*(v464 + 8))(v404, v126);
      v228 = &v444;
      goto LABEL_82;
    }

    v279 = v477;
    v280 = v480;
    (*(v477 + 32))(v409, v412, v480);
    (*(v279 + 16))(v408, v471, v280);
    sub_220DBE600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v281 = sub_220DBE6C0();
    v282 = *(v281 - 8);
    v283 = (*(v282 + 80) + 32) & ~*(v282 + 80);
    v284 = swift_allocObject();
    *(v284 + 16) = xmmword_220DC17A0;
    (*(v282 + 104))(v284 + v283, *MEMORY[0x277CC99A0], v281);
    sub_220CE05C8(v284);
    v285 = v436;
    sub_220DBE620();

    v286 = sub_220DBE170();
    LOBYTE(v281) = v287;
    (*(v474 + 8))(v285, v473);
    if ((v281 & 1) != 0 || (v286 - 60) < 0xFFFFFFFFFFFFFFC5)
    {
      (*(v476 + 8))(v430, v475);
      v289 = *(v477 + 8);
      v290 = v480;
      v289(v408, v480);
      v289(v409, v290);
      (*(v464 + 8))(v404, v192);
      goto LABEL_48;
    }

    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v238 = v481;
    v239 = v481 + *(v159 + 48);
    v240 = v464;
    v241 = v404;
    (*(v464 + 16))(v481, v404, v192);
    v242 = v408;
    v243 = v409;
    sub_220DBE410();
    v245 = v288;
    (*(v476 + 8))(v430, v475);
    goto LABEL_86;
  }

  if (v158 == *MEMORY[0x277CE3698])
  {
    goto LABEL_126;
  }

  if (v158 == *MEMORY[0x277CE3710])
  {
    goto LABEL_108;
  }

  if (v158 == *MEMORY[0x277CE34B0])
  {
    goto LABEL_119;
  }

  if (v158 == *MEMORY[0x277CE34A0])
  {
    goto LABEL_126;
  }

  if (v158 == *MEMORY[0x277CE3558])
  {
    goto LABEL_119;
  }

  if (v158 == *MEMORY[0x277CE3560])
  {
    goto LABEL_126;
  }

  if (v158 == *MEMORY[0x277CE36F0])
  {
    goto LABEL_108;
  }

  if (v158 == *MEMORY[0x277CE3758])
  {
    goto LABEL_119;
  }

  if (v158 == *MEMORY[0x277CE3728])
  {
    goto LABEL_126;
  }

  if (v158 == *MEMORY[0x277CE34F0])
  {
    goto LABEL_119;
  }

  if (v158 == *MEMORY[0x277CE34F8])
  {
    goto LABEL_126;
  }

  if (v158 == *MEMORY[0x277CE3740])
  {
    goto LABEL_108;
  }

  if (v158 == *MEMORY[0x277CE3508])
  {
    goto LABEL_119;
  }

  if (v158 == *MEMORY[0x277CE34D0] || v158 == *MEMORY[0x277CE35A0])
  {
LABEL_126:
    (*(v464 + 104))(v405, *MEMORY[0x277CE33A0], v126);
    v291 = v413;
    sub_220DBED20();
    if (__swift_getEnumTagSinglePayload(v291, 1, v480) == 1)
    {
      (*(v464 + 8))(v405, v126);
      v228 = &v445;
      goto LABEL_82;
    }

    v292 = v477;
    v293 = v480;
    (*(v477 + 32))(v411, v413, v480);
    (*(v292 + 16))(v410, v471, v293);
    sub_220DBE600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v294 = sub_220DBE6C0();
    v295 = *(v294 - 8);
    v296 = (*(v295 + 80) + 32) & ~*(v295 + 80);
    v297 = swift_allocObject();
    *(v297 + 16) = xmmword_220DC17A0;
    (*(v295 + 104))(v297 + v296, *MEMORY[0x277CC99A0], v294);
    sub_220CE05C8(v297);
    v298 = v437;
    sub_220DBE620();

    v299 = sub_220DBE170();
    LOBYTE(v294) = v300;
    (*(v474 + 8))(v298, v473);
    if ((v294 & 1) != 0 || (v299 - 60) < 0xFFFFFFFFFFFFFFC5)
    {
      (*(v476 + 8))(v431, v475);
      v302 = *(v477 + 8);
      v303 = v480;
      v302(v410, v480);
      v302(v411, v303);
      (*(v464 + 8))(v405, v192);
      goto LABEL_48;
    }

    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v238 = v481;
    v264 = v481 + *(v159 + 48);
    v265 = v464;
    v266 = v405;
    (*(v464 + 16))(v481, v405, v192);
    v267 = v410;
    v268 = v411;
    sub_220DBE410();
    v270 = v301;
    (*(v476 + 8))(v431, v475);
    goto LABEL_112;
  }

  if (v158 == *MEMORY[0x277CE3598])
  {
    goto LABEL_119;
  }

  if (v158 == *MEMORY[0x277CE35B0] || v158 == *MEMORY[0x277CE35B8] || v158 == *MEMORY[0x277CE3530] || v158 == *MEMORY[0x277CE3460])
  {
    goto LABEL_108;
  }

  if (v158 == *MEMORY[0x277CE3650] || v158 == *MEMORY[0x277CE3658] || v158 == *MEMORY[0x277CE35F0] || v158 == *MEMORY[0x277CE3470])
  {
    goto LABEL_190;
  }

  if (v158 == *MEMORY[0x277CE3638] || v158 == *MEMORY[0x277CE3648] || v158 == *MEMORY[0x277CE35D0] || v158 == *MEMORY[0x277CE3468])
  {
    goto LABEL_207;
  }

  v314 = v158 == *MEMORY[0x277CE36C0] || v158 == *MEMORY[0x277CE36D0];
  v315 = v314 || v158 == *MEMORY[0x277CE3680];
  if (v315 || v158 == *MEMORY[0x277CE3478])
  {
LABEL_190:
    (*(v464 + 104))(v406, *MEMORY[0x277CE33A0], v126);
    v317 = v416;
    sub_220DBED20();
    if (__swift_getEnumTagSinglePayload(v317, 1, v480) == 1)
    {
      (*(v464 + 8))(v406, v126);
      v228 = &v448;
      goto LABEL_82;
    }

    v318 = v477;
    v319 = v480;
    (*(v477 + 32))(v418, v416, v480);
    (*(v318 + 16))(v417, v471, v319);
    sub_220DBE600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v320 = sub_220DBE6C0();
    v321 = *(v320 - 8);
    v322 = (*(v321 + 80) + 32) & ~*(v321 + 80);
    v323 = swift_allocObject();
    *(v323 + 16) = xmmword_220DC17A0;
    (*(v321 + 104))(v323 + v322, *MEMORY[0x277CC99A0], v320);
    sub_220CE05C8(v323);
    v324 = v442;
    sub_220DBE620();

    v325 = sub_220DBE170();
    LOBYTE(v320) = v326;
    (*(v474 + 8))(v324, v473);
    if ((v320 & 1) != 0 || (v325 - 60) < 0xFFFFFFFFFFFFFFC5)
    {
      (*(v476 + 8))(v440, v475);
      v328 = *(v477 + 8);
      v329 = v480;
      v328(v417, v480);
      v328(v418, v329);
      (*(v464 + 8))(v406, v192);
      goto LABEL_48;
    }

    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v238 = v481;
    v239 = v481 + *(v159 + 48);
    v240 = v464;
    v241 = v406;
    (*(v464 + 16))(v481, v406, v192);
    v242 = v417;
    v243 = v418;
    sub_220DBE410();
    v245 = v327;
    (*(v476 + 8))(v440, v475);
    goto LABEL_86;
  }

  if (v158 == *MEMORY[0x277CE36C8] || v158 == *MEMORY[0x277CE36D8] || v158 == *MEMORY[0x277CE3688] || v158 == *MEMORY[0x277CE3480])
  {
LABEL_207:
    (*(v464 + 104))(v407, *MEMORY[0x277CE33A0], v126);
    v333 = v419;
    sub_220DBED20();
    if (__swift_getEnumTagSinglePayload(v333, 1, v480) == 1)
    {
      (*(v464 + 8))(v407, v126);
      v228 = &v451;
      goto LABEL_82;
    }

    v334 = v477;
    v335 = v480;
    (*(v477 + 32))(v422, v419, v480);
    (*(v334 + 16))(v420, v471, v335);
    sub_220DBE600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v336 = sub_220DBE6C0();
    v337 = *(v336 - 8);
    v338 = (*(v337 + 80) + 32) & ~*(v337 + 80);
    v339 = swift_allocObject();
    *(v339 + 16) = xmmword_220DC17A0;
    (*(v337 + 104))(v339 + v338, *MEMORY[0x277CC99A0], v336);
    sub_220CE05C8(v339);
    v340 = v443;
    sub_220DBE620();

    v341 = sub_220DBE170();
    LOBYTE(v336) = v342;
    (*(v474 + 8))(v340, v473);
    if ((v336 & 1) != 0 || (v341 - 60) < 0xFFFFFFFFFFFFFFC5)
    {
      (*(v476 + 8))(v441, v475);
      v344 = *(v477 + 8);
      v345 = v480;
      v344(v420, v480);
      v344(v422, v345);
      (*(v464 + 8))(v407, v192);
      goto LABEL_48;
    }

    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v238 = v481;
    v264 = v481 + *(v159 + 48);
    v265 = v464;
    v266 = v407;
    (*(v464 + 16))(v481, v407, v192);
    v267 = v420;
    v268 = v422;
    sub_220DBE410();
    v270 = v343;
    (*(v476 + 8))(v441, v475);
    goto LABEL_112;
  }

  if (v158 == *MEMORY[0x277CE34D8])
  {
LABEL_214:
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v160 = v481;
    v161 = v481 + *(v159 + 48);
    v196 = MEMORY[0x277CE33B0];
    goto LABEL_46;
  }

  if (v158 == *MEMORY[0x277CE35A8])
  {
    goto LABEL_223;
  }

  if (v158 == *MEMORY[0x277CE3570])
  {
    goto LABEL_230;
  }

  if (v158 == *MEMORY[0x277CE3620])
  {
LABEL_223:
    (*(v464 + 104))(v414, *MEMORY[0x277CE33B0], v126);
    v346 = v424;
    sub_220DBED20();
    if (__swift_getEnumTagSinglePayload(v346, 1, v480) == 1)
    {
      (*(v464 + 8))(v414, v126);
      v228 = &v456;
      goto LABEL_82;
    }

    v347 = v477;
    v348 = v480;
    (*(v477 + 32))(v427, v424, v480);
    (*(v347 + 16))(v426, v471, v348);
    sub_220DBE600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v349 = sub_220DBE6C0();
    v350 = *(v349 - 8);
    v351 = (*(v350 + 80) + 32) & ~*(v350 + 80);
    v352 = swift_allocObject();
    *(v352 + 16) = xmmword_220DC17A0;
    (*(v350 + 104))(v352 + v351, *MEMORY[0x277CC99A0], v349);
    sub_220CE05C8(v352);
    v353 = v446;
    sub_220DBE620();

    v354 = sub_220DBE170();
    LOBYTE(v349) = v355;
    (*(v474 + 8))(v353, v473);
    if ((v349 & 1) != 0 || (v354 - 60) < 0xFFFFFFFFFFFFFFC5)
    {
      (*(v476 + 8))(v444, v475);
      v357 = *(v477 + 8);
      v358 = v480;
      v357(v426, v480);
      v357(v427, v358);
      (*(v464 + 8))(v414, v192);
      goto LABEL_48;
    }

    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v238 = v481;
    v239 = v481 + *(v159 + 48);
    v240 = v464;
    v241 = v414;
    (*(v464 + 16))(v481, v414, v192);
    v242 = v426;
    v243 = v427;
    sub_220DBE410();
    v245 = v356;
    (*(v476 + 8))(v444, v475);
    goto LABEL_86;
  }

  if (v158 == *MEMORY[0x277CE3628])
  {
    goto LABEL_230;
  }

  if (v158 == *MEMORY[0x277CE3700])
  {
    goto LABEL_214;
  }

  if (v158 == *MEMORY[0x277CE3488])
  {
    goto LABEL_223;
  }

  if (v158 == *MEMORY[0x277CE3750])
  {
    goto LABEL_230;
  }

  if (v158 == *MEMORY[0x277CE3510])
  {
    goto LABEL_223;
  }

  if (v158 == *MEMORY[0x277CE3518])
  {
LABEL_230:
    (*(v464 + 104))(v415, *MEMORY[0x277CE33B0], v126);
    v359 = v425;
    sub_220DBED20();
    if (__swift_getEnumTagSinglePayload(v359, 1, v480) == 1)
    {
      (*(v464 + 8))(v415, v126);
      v228 = &v457;
      goto LABEL_82;
    }

    v360 = v477;
    v361 = v480;
    (*(v477 + 32))(v429, v425, v480);
    (*(v360 + 16))(v428, v471, v361);
    sub_220DBE600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v362 = sub_220DBE6C0();
    v363 = *(v362 - 8);
    v364 = (*(v363 + 80) + 32) & ~*(v363 + 80);
    v365 = swift_allocObject();
    *(v365 + 16) = xmmword_220DC17A0;
    (*(v363 + 104))(v365 + v364, *MEMORY[0x277CC99A0], v362);
    sub_220CE05C8(v365);
    v366 = v447;
    sub_220DBE620();

    v367 = sub_220DBE170();
    LOBYTE(v362) = v368;
    (*(v474 + 8))(v366, v473);
    if ((v362 & 1) != 0 || (v367 - 60) < 0xFFFFFFFFFFFFFFC5)
    {
      (*(v476 + 8))(v445, v475);
      v370 = *(v477 + 8);
      v371 = v480;
      v370(v428, v480);
      v370(v429, v371);
      (*(v464 + 8))(v415, v192);
      goto LABEL_48;
    }

    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v238 = v481;
    v264 = v481 + *(v159 + 48);
    v265 = v464;
    v266 = v415;
    (*(v464 + 16))(v481, v415, v192);
    v267 = v428;
    v268 = v429;
    sub_220DBE410();
    v270 = v369;
    (*(v476 + 8))(v445, v475);
    goto LABEL_112;
  }

  if (v158 == *MEMORY[0x277CE34A8] || v158 == *MEMORY[0x277CE3568])
  {
    goto LABEL_248;
  }

  if (v158 == *MEMORY[0x277CE3550])
  {
    goto LABEL_251;
  }

  if (v158 == *MEMORY[0x277CE3600])
  {
LABEL_248:
    (*(v464 + 104))(v421, *MEMORY[0x277CE3388], v126);
    v373 = v432;
    sub_220DBED20();
    if (__swift_getEnumTagSinglePayload(v373, 1, v480) == 1)
    {
      (*(v464 + 8))(v421, v126);
      v228 = &v464;
      goto LABEL_82;
    }

    v375 = v477;
    v376 = v480;
    (*(v477 + 32))(v435, v432, v480);
    (*(v375 + 16))(v434, v471, v376);
    sub_220DBE600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v377 = sub_220DBE6C0();
    v378 = *(v377 - 8);
    v379 = (*(v378 + 80) + 32) & ~*(v378 + 80);
    v380 = swift_allocObject();
    *(v380 + 16) = xmmword_220DC17A0;
    (*(v378 + 104))(v380 + v379, *MEMORY[0x277CC99A0], v377);
    sub_220CE05C8(v380);
    v381 = v450;
    sub_220DBE620();

    v382 = sub_220DBE170();
    LOBYTE(v377) = v383;
    (*(v474 + 8))(v381, v473);
    if ((v377 & 1) != 0 || (v382 - 60) < 0xFFFFFFFFFFFFFFC5)
    {
      (*(v476 + 8))(v448, v475);
      v397 = *(v477 + 8);
      v398 = v480;
      v397(v434, v480);
      v397(v435, v398);
      (*(v464 + 8))(v421, v192);
      goto LABEL_48;
    }

    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v238 = v481;
    v239 = v481 + *(v159 + 48);
    v240 = v464;
    v241 = v421;
    (*(v464 + 16))(v481, v421, v192);
    v242 = v434;
    v243 = v435;
    sub_220DBE410();
    v245 = v384;
    (*(v476 + 8))(v448, v475);
    goto LABEL_86;
  }

  if (v158 == *MEMORY[0x277CE3608])
  {
    goto LABEL_251;
  }

  if (v158 == *MEMORY[0x277CE36E0])
  {
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v160 = v481;
    v161 = v481 + *(v159 + 48);
    v196 = MEMORY[0x277CE3388];
    goto LABEL_46;
  }

  if (v158 == *MEMORY[0x277CE3730])
  {
    goto LABEL_248;
  }

  if (v158 == *MEMORY[0x277CE3718])
  {
    goto LABEL_251;
  }

  if (v158 == *MEMORY[0x277CE34B8])
  {
    goto LABEL_248;
  }

  if (v158 == *MEMORY[0x277CE34C0])
  {
LABEL_251:
    (*(v464 + 104))(v423, *MEMORY[0x277CE3388], v126);
    v374 = v433;
    sub_220DBED20();
    if (__swift_getEnumTagSinglePayload(v374, 1, v480) == 1)
    {
      (*(v464 + 8))(v423, v126);
      v228 = &v465;
      goto LABEL_82;
    }

    v387 = v477;
    v388 = v480;
    (*(v477 + 32))(v439, v433, v480);
    (*(v387 + 16))(v438, v471, v388);
    sub_220DBE600();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
    v389 = sub_220DBE6C0();
    v390 = *(v389 - 8);
    v391 = (*(v390 + 80) + 32) & ~*(v390 + 80);
    v392 = swift_allocObject();
    *(v392 + 16) = xmmword_220DC17A0;
    (*(v390 + 104))(v392 + v391, *MEMORY[0x277CC99A0], v389);
    sub_220CE05C8(v392);
    v393 = v451;
    sub_220DBE620();

    v394 = sub_220DBE170();
    LOBYTE(v389) = v395;
    (*(v474 + 8))(v393, v473);
    if ((v389 & 1) != 0 || (v394 - 60) < 0xFFFFFFFFFFFFFFC5)
    {
      (*(v476 + 8))(v449, v475);
      v399 = *(v477 + 8);
      v400 = v480;
      v399(v438, v480);
      v399(v439, v400);
      (*(v464 + 8))(v423, v192);
      goto LABEL_48;
    }

    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
    v238 = v481;
    v264 = v481 + *(v159 + 48);
    v265 = v464;
    v266 = v423;
    (*(v464 + 16))(v481, v423, v192);
    v267 = v438;
    v268 = v439;
    sub_220DBE410();
    v270 = v396;
    (*(v476 + 8))(v449, v475);
LABEL_112:
    v271 = *(v477 + 8);
    v272 = v267;
    v273 = v480;
    v271(v272, v480);
    v271(v268, v273);
    (*(v265 + 8))(v266, v192);
    *v264 = v270;
    *(v264 + 8) = 1;
    goto LABEL_113;
  }

  v385 = *MEMORY[0x277CE36F8];
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
  result = __swift_storeEnumTagSinglePayload(v481, 1, 1, v386);
  if (v165 != v385)
  {
    return (*(v402 + 8))(v156, v403);
  }

  return result;
}

uint64_t sub_220D65678(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D656E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_20();
  v6(v5);
  return a2;
}

uint64_t sub_220D65744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_11_0();
  v7 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = a6;
  v14(AssociatedTypeWitness, a6);
  v16 = sub_220DBE440();
  v17 = *(v9 + 8);
  v17(v13, v7);
  if (v16)
  {
    v18 = 1;
  }

  else
  {
    v14(AssociatedTypeWitness, v20);
    v18 = sub_220DBE430();
    v17(v13, v7);
  }

  return v18 & 1;
}

uint64_t static NextPrecipitation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationEvent(0);
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v38 = v6 - v7;
  OUTLINED_FUNCTION_23();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v37 - v10);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  type metadata accessor for NextPrecipitation(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  v17 = v15 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v37 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v37 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95CA0, &qword_220DC52A0);
  OUTLINED_FUNCTION_18(v24);
  OUTLINED_FUNCTION_34();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v37 - v27;
  v29 = *(v26 + 56);
  sub_220D5F0D8(a1, &v37 - v27);
  sub_220D5F0D8(a2, &v28[v29]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_220D5F0D8(v28, v21);
      if (OUTLINED_FUNCTION_26_6() == 1)
      {
        sub_220D619B4(&v28[v29], v11);
        v32 = static PrecipitationEvent.== infix(_:_:)(v21, v11);
        sub_220D65BF8(v11, type metadata accessor for PrecipitationEvent);
        v33 = v21;
        v34 = type metadata accessor for PrecipitationEvent;
        goto LABEL_15;
      }

      v17 = v21;
      goto LABEL_11;
    case 2u:
      sub_220D5F0D8(v28, v17);
      if (OUTLINED_FUNCTION_26_6() != 2)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_8_14();
      v30 = &v28[v29];
      v31 = v38;
      sub_220D619B4(v30, v38);
      v32 = static PrecipitationEvent.== infix(_:_:)(v17, v31);
      sub_220D65BF8(v31, v11);
      v33 = v17;
      goto LABEL_14;
    case 3u:
      if (OUTLINED_FUNCTION_26_6() != 3)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_11_12();
      v32 = 1;
      return v32 & 1;
    default:
      sub_220D5F0D8(v28, v23);
      if (OUTLINED_FUNCTION_26_6())
      {
        v17 = v23;
LABEL_11:
        OUTLINED_FUNCTION_9_17();
        sub_220D65BF8(v17, v35);
LABEL_12:
        sub_220CDA548(v28, &qword_27CF95CA0, &qword_220DC52A0);
        v32 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_8_14();
        sub_220D619B4(&v28[v29], v13);
        v32 = static PrecipitationEvent.== infix(_:_:)(v23, v13);
        sub_220D65BF8(v13, v11);
        v33 = v23;
LABEL_14:
        v34 = v11;
LABEL_15:
        sub_220D65BF8(v33, v34);
        OUTLINED_FUNCTION_11_12();
      }

      return v32 & 1;
  }
}

uint64_t sub_220D65BF8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_220D65C80(uint64_t a1)
{
  sub_220DBEC20();
  if (v1 <= 0x3F)
  {
    sub_220DBE560();
    if (v2 <= 0x3F)
    {
      sub_220D65D24();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220D65D24()
{
  if (!qword_280FA77C8)
  {
    v0 = sub_220DC0AE0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA77C8);
    }
  }
}

uint64_t sub_220D65D84(uint64_t a1)
{
  result = type metadata accessor for PrecipitationEvent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t WeatherDataModel.nextHourPrecipitationShift(startDate:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v115 = a2;
  v112 = a1;
  v104 = a3;
  v118 = sub_220DBED10();
  OUTLINED_FUNCTION_0();
  v106 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9();
  v119 = v5;
  MEMORY[0x28223BE20](v6);
  v117 = &v94 - v7;
  OUTLINED_FUNCTION_6_1();
  v8 = sub_220DBED40();
  OUTLINED_FUNCTION_0();
  v109 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v116 = v12 - v11;
  OUTLINED_FUNCTION_6_1();
  v13 = sub_220DBED00();
  OUTLINED_FUNCTION_0();
  v120 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9();
  v99 = v16;
  v18 = MEMORY[0x28223BE20](v17);
  v97 = &v94 - v19;
  MEMORY[0x28223BE20](v18);
  v98 = &v94 - v20;
  OUTLINED_FUNCTION_6_1();
  v113 = sub_220DBEE20();
  OUTLINED_FUNCTION_0();
  v111 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1();
  v110 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95CA8, &unk_220DC5430);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v94 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959E8, &qword_220DC3C78);
  OUTLINED_FUNCTION_0();
  v122 = v29;
  MEMORY[0x28223BE20](v30);
  v121 = &v94 - v31;
  OUTLINED_FUNCTION_6_1();
  v103 = sub_220DBE560();
  OUTLINED_FUNCTION_0();
  v102 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1();
  v36 = v35 - v34;
  v101 = sub_220DBE6E0();
  OUTLINED_FUNCTION_0();
  v100 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1();
  v41 = v40 - v39;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C78, &qword_220DC5440);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v94 - v43;
  v45 = sub_220DBE740();
  OUTLINED_FUNCTION_0();
  v47 = v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1();
  v51 = v50 - v49;
  sub_220D668DC(v115, v44);
  if (__swift_getEnumTagSinglePayload(v44, 1, v45) == 1)
  {
    sub_220CE1ABC(v44, &qword_27CF95C78, &qword_220DC5440);
    return __swift_storeEnumTagSinglePayload(v104, 1, 1, v8);
  }

  v47[4](v51, v44, v45);
  sub_220DBE600();
  sub_220DBE310();
  v53 = v114;
  sub_220DBEBD0();
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
  {
    (*(v100 + 8))(v41, v101);
    (v47[1])(v51, v45);
    sub_220CE1ABC(v27, &qword_27CF95CA8, &unk_220DC5430);
    goto LABEL_12;
  }

  v95 = v51;
  v96 = v41;
  v114 = v47;
  v115 = v45;
  v54 = v122;
  v53 = v121;
  (*(v122 + 32))();
  v56 = v110;
  v55 = v111;
  v57 = v113;
  (*(v111 + 104))(v110, *MEMORY[0x277CE3790], v113);
  v58 = sub_220DBEFB0();
  (*(v55 + 8))(v56, v57);
  if ((v58 & 1) == 0)
  {
    (*(v54 + 8))(v53, v28);
    v77 = OUTLINED_FUNCTION_1_30();
    v78(v77);
    v79 = OUTLINED_FUNCTION_6_16();
    v80(v79);
LABEL_12:
    v81 = OUTLINED_FUNCTION_3_24();
LABEL_13:
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v8);
    return (*(v53 + 1))(v36, v28);
  }

  v113 = v28;
  v59 = sub_220DBEFA0();
  MEMORY[0x28223BE20](v59);
  *(&v94 - 2) = v112;
  v61 = sub_220CFAD2C(sub_220D66B58, (&v94 - 4), v60);
  MEMORY[0x28223BE20](v61);
  v94 = v36;
  *(&v94 - 2) = v36;
  v123[0] = sub_220CFAD2C(sub_220D66CA8, (&v94 - 4), v62);

  sub_220D66E3C(v123);

  v63 = 0;
  v64 = v123[0];
  v112 = *(v123[0] + 16);
  ++v109;
  v110 = v120 + 16;
  v108 = *MEMORY[0x277CE36F8];
  v65 = v106++;
  v107 = (v65 + 13);
  v111 = v120 + 8;
  v66 = v99;
  v67 = v122;
  v69 = v114;
  v68 = v115;
  v105 = v8;
  while (1)
  {
    v28 = v113;
    v70 = v121;
    if (v112 == v63)
    {

      v82 = *(v67 + 8);
      v53 = (v67 + 8);
      v82(v70, v28);
      v83 = OUTLINED_FUNCTION_1_30();
      v84(v83);
      (*(v69 + 1))(v95, v68);
      v81 = OUTLINED_FUNCTION_3_24();
      v36 = v94;
      goto LABEL_13;
    }

    if (v63 >= *(v64 + 16))
    {
      break;
    }

    v71 = v64;
    (*(v120 + 16))(v66, v64 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v63, v13);
    v72 = v116;
    sub_220DBECF0();
    v73 = v117;
    sub_220DBED30();
    (*v109)(v72, v8);
    v74 = v118;
    v75 = v119;
    (*v107)(v119, v108, v118);
    sub_220D68748(&qword_27CF95CB0, MEMORY[0x277CE3760], MEMORY[0x277CE3768]);
    LOBYTE(v72) = sub_220DC05B0();
    v76 = *v106;
    (*v106)(v75, v74);
    v76(v73, v74);
    if ((v72 & 1) == 0)
    {

      v86 = v120 + 32;
      v85 = *(v120 + 32);
      v87 = v97;
      v85(v97, v66, v13);
      v88 = v98;
      v85(v98, v87, v13);
      v89 = v104;
      sub_220DBECF0();
      (*(v86 - 24))(v88, v13);
      (*(v122 + 8))(v121, v113);
      v90 = OUTLINED_FUNCTION_1_30();
      v91(v90);
      v92 = OUTLINED_FUNCTION_6_16();
      v93(v92);
      __swift_storeEnumTagSinglePayload(v89, 0, 1, v105);
      return (*(v102 + 8))(v94, v103);
    }

    ++v63;
    (*v111)(v66, v13);
    v8 = v105;
    v67 = v122;
    v69 = v114;
    v68 = v115;
    v64 = v71;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_220D668DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C78, &qword_220DC5440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_220D6694C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v12 - v4;
  v6 = sub_220DBE560();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBECD0();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    (*(v7 + 16))(v9, a2, v6);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
    {
      sub_220CE1ABC(v5, &qword_27CF951E0, &unk_220DC1D80);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  sub_220D68748(&qword_280FA7798, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v10 = sub_220DC0580();
  (*(v7 + 8))(v9, v6);
  return (v10 & 1) == 0;
}

BOOL sub_220D66B78(uint64_t a1, uint64_t a2)
{
  v2 = sub_220DBE560();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBECE0();
  sub_220D68748(&qword_280FA7798, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v6 = sub_220DC0580();
  (*(v3 + 8))(v5, v2);
  return (v6 & 1) == 0;
}

double sub_220D66D40(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, double))
{
  v4 = sub_220DBEBA0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  a1();
  v11 = sub_220DBEB80();
  v12 = (*(v6 + 8))(v10, v4);
  result = 0.0;
  if (v11)
  {
    a2(v12, 0.0);
    sub_220DC07C0();
  }

  return result;
}

uint64_t sub_220D66E3C(uint64_t *a1)
{
  v2 = *(sub_220DBED00() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_220D81A4C();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_220D67028(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_220D66F5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_220D67028(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_220DC0C60();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_220DBED00();
        v6 = sub_220DC0760();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_220DBED00() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_220D674F0(v8, v9, a1, v4);
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
    return sub_220D67158(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_220D67158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_220DBE560();
  v8 = *(v60 - 8);
  v9 = MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v41 - v11;
  v12 = sub_220DBED00();
  v13 = MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v57 = &v41 - v16;
  result = MEMORY[0x28223BE20](v15);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
    while (2)
    {
      v46 = v24;
      v47 = a3;
      v44 = v26;
      v45 = v25;
      v61 = v25;
      do
      {
        v28 = v56;
        v29 = v54;
        v54(v56, v26, v12);
        v30 = v12;
        v31 = v57;
        v29(v57, v24, v30);
        sub_220DBECE0();
        v32 = v59;
        sub_220DBECE0();
        v62 = sub_220DBE440();
        v33 = *v53;
        v34 = v32;
        v35 = v60;
        (*v53)(v34, v60);
        v33(v27, v35);
        v36 = *v52;
        v37 = v31;
        v12 = v30;
        (*v52)(v37, v30);
        result = v36(v28, v30);
        if ((v62 & 1) == 0)
        {
          break;
        }

        if (!v50)
        {
          __break(1u);
          return result;
        }

        v38 = *v49;
        v39 = v51;
        (*v49)(v51, v26, v30);
        swift_arrayInitWithTakeFrontToBack();
        result = v38(v24, v39, v30);
        v24 += v48;
        v26 += v48;
      }

      while (!__CFADD__(v61++, 1));
      a3 = v47 + 1;
      v24 = &v46[v42];
      v25 = v45 - 1;
      v26 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_220D674F0(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v137 = a1;
  v161 = sub_220DBE560();
  v8 = *(v161 - 8);
  v9 = MEMORY[0x28223BE20](v161);
  v160 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v159 = &v134 - v11;
  v12 = sub_220DBED00();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v140 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v151 = &v134 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v158 = &v134 - v19;
  MEMORY[0x28223BE20](v18);
  v162 = &v134 - v20;
  v146 = a3;
  v21 = a3[1];
  v141 = v13;
  if (v21 < 1)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_101:
    v163 = *v137;
    if (!v163)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v126 = v23 + 16;
      v127 = *(v23 + 2);
      while (v127 >= 2)
      {
        if (!*v146)
        {
          goto LABEL_139;
        }

        v128 = v23;
        v129 = &v23[16 * v127];
        v130 = *v129;
        v131 = &v126[2 * v127];
        v132 = *(v131 + 1);
        sub_220D680DC(&(*v146)[*(v141 + 9) * *v129], &(*v146)[*(v141 + 9) * *v131], &(*v146)[*(v141 + 9) * v132], v163);
        if (v5)
        {
          break;
        }

        if (v132 < v130)
        {
          goto LABEL_127;
        }

        if (v127 - 2 >= *v126)
        {
          goto LABEL_128;
        }

        *v129 = v130;
        *(v129 + 1) = v132;
        v133 = *v126 - v127;
        if (*v126 < v127)
        {
          goto LABEL_129;
        }

        v127 = *v126 - 1;
        sub_220D81848(v131 + 16, v133, v131);
        *v126 = v127;
        v23 = v128;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v23 = sub_220D81650();
    goto LABEL_103;
  }

  v135 = a4;
  v22 = 0;
  v155 = (v8 + 8);
  v156 = v13 + 16;
  v153 = (v13 + 32);
  v154 = (v13 + 8);
  v23 = MEMORY[0x277D84F90];
  v157 = v12;
  while (1)
  {
    v24 = v22;
    v25 = v22 + 1;
    if (v22 + 1 < v21)
    {
      v136 = v23;
      v26 = v22;
      v138 = v22;
      v147 = v5;
      v148 = v22 + 1;
      v27 = *v146;
      v163 = v27;
      v28 = v13;
      v29 = *(v13 + 9);
      v149 = v21;
      v150 = v29;
      v30 = v27 + v29 * v25;
      v31 = v12;
      v32 = *(v28 + 2);
      v32(v162, v30, v12);
      v33 = v158;
      v144 = v32;
      v32(v158, v27 + v29 * v26, v31);
      v5 = v159;
      v34 = v162;
      sub_220DBECE0();
      v35 = v160;
      sub_220DBECE0();
      LODWORD(v145) = sub_220DBE440();
      v36 = *v155;
      v37 = v161;
      (*v155)(v35, v161);
      v143 = v36;
      (v36)(v5, v37);
      v38 = *(v141 + 1);
      (v38)(v33, v31);
      v142 = v38;
      (v38)(v34, v31);
      v39 = v149;
      v40 = v138 + 2;
      v41 = v163 + v150 * (v138 + 2);
      while (1)
      {
        v42 = v40;
        if (++v148 >= v39)
        {
          break;
        }

        v5 = v162;
        v43 = v157;
        v44 = v144;
        v163 = v40;
        (v144)(v162, v41, v157);
        v45 = v158;
        v44(v158, v30, v43);
        v46 = v159;
        sub_220DBECE0();
        v47 = v160;
        sub_220DBECE0();
        LOBYTE(v152) = sub_220DBE440() & 1;
        LODWORD(v152) = v152;
        v48 = v47;
        v49 = v161;
        v50 = v143;
        (v143)(v48, v161);
        v50(v46, v49);
        v51 = v142;
        (v142)(v45, v43);
        (v51)(v5, v43);
        v42 = v163;
        v39 = v149;
        v41 += v150;
        v30 += v150;
        v40 = v163 + 1;
        if ((v145 & 1) != v152)
        {
          goto LABEL_9;
        }
      }

      v148 = v39;
LABEL_9:
      if (v145)
      {
        v25 = v148;
        v24 = v138;
        v12 = v157;
        if (v148 < v138)
        {
          goto LABEL_133;
        }

        if (v138 >= v148)
        {
          v5 = v147;
          v13 = v141;
          v23 = v136;
          goto LABEL_32;
        }

        if (v39 >= v42)
        {
          v52 = v42;
        }

        else
        {
          v52 = v39;
        }

        v53 = v150 * (v52 - 1);
        v54 = v150 * v52;
        v55 = v138;
        v56 = v138 * v150;
        v5 = v147;
        v13 = v141;
        do
        {
          if (v55 != --v25)
          {
            v57 = v5;
            v58 = *v146;
            if (!*v146)
            {
              goto LABEL_140;
            }

            v163 = *v153;
            (v163)(v140, &v58[v56], v12);
            v59 = v56 < v53 || &v58[v56] >= &v58[v54];
            if (v59)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v56 != v53)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v163)(&v58[v53], v140, v12);
            v5 = v57;
            v13 = v141;
          }

          ++v55;
          v53 -= v150;
          v54 -= v150;
          v56 += v150;
        }

        while (v55 < v25);
        v23 = v136;
      }

      else
      {
        v5 = v147;
        v13 = v141;
        v23 = v136;
        v12 = v157;
      }

      v25 = v148;
      v24 = v138;
    }

LABEL_32:
    v60 = v146[1];
    if (v25 < v60)
    {
      if (__OFSUB__(v25, v24))
      {
        goto LABEL_132;
      }

      if (v25 - v24 < v135)
      {
        break;
      }
    }

LABEL_48:
    if (v25 < v24)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_220D562D4();
      v23 = v124;
    }

    v80 = *(v23 + 2);
    v81 = v80 + 1;
    if (v80 >= *(v23 + 3) >> 1)
    {
      sub_220D562D4();
      v23 = v125;
    }

    *(v23 + 2) = v81;
    v82 = v23 + 32;
    v83 = &v23[16 * v80 + 32];
    *v83 = v24;
    *(v83 + 1) = v25;
    v163 = *v137;
    if (!v163)
    {
      goto LABEL_141;
    }

    v148 = v25;
    if (v80)
    {
      v152 = v23 + 32;
      while (1)
      {
        v84 = v81 - 1;
        v85 = &v82[16 * v81 - 16];
        v86 = &v23[16 * v81];
        if (v81 >= 4)
        {
          break;
        }

        if (v81 == 3)
        {
          v87 = *(v23 + 4);
          v88 = *(v23 + 5);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_69:
          if (v90)
          {
            goto LABEL_118;
          }

          v102 = *v86;
          v101 = *(v86 + 1);
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_121;
          }

          v106 = *(v85 + 1);
          v107 = v106 - *v85;
          if (__OFSUB__(v106, *v85))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v104, v107))
          {
            goto LABEL_126;
          }

          if (v104 + v107 >= v89)
          {
            if (v89 < v107)
            {
              v84 = v81 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v81 < 2)
        {
          goto LABEL_120;
        }

        v109 = *v86;
        v108 = *(v86 + 1);
        v97 = __OFSUB__(v108, v109);
        v104 = v108 - v109;
        v105 = v97;
LABEL_84:
        if (v105)
        {
          goto LABEL_123;
        }

        v111 = *v85;
        v110 = *(v85 + 1);
        v97 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v97)
        {
          goto LABEL_125;
        }

        if (v112 < v104)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v84 - 1 >= v81)
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

        if (!*v146)
        {
          goto LABEL_138;
        }

        v116 = &v82[16 * v84 - 16];
        v117 = *v116;
        v118 = v84;
        v119 = &v82[16 * v84];
        v120 = *(v119 + 1);
        sub_220D680DC(&(*v146)[*(v13 + 9) * *v116], &(*v146)[*(v13 + 9) * *v119], &(*v146)[*(v13 + 9) * v120], v163);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v120 < v117)
        {
          goto LABEL_113;
        }

        v147 = 0;
        v5 = v13;
        v121 = v23;
        v122 = *(v23 + 2);
        if (v118 > v122)
        {
          goto LABEL_114;
        }

        *v116 = v117;
        *(v116 + 1) = v120;
        if (v118 >= v122)
        {
          goto LABEL_115;
        }

        v81 = v122 - 1;
        sub_220D81848(v119 + 16, v122 - 1 - v118, v119);
        *(v121 + 2) = v122 - 1;
        v123 = v122 > 2;
        v23 = v121;
        v13 = v5;
        v5 = v147;
        v82 = v152;
        if (!v123)
        {
          goto LABEL_98;
        }
      }

      v91 = &v82[16 * v81];
      v92 = *(v91 - 8);
      v93 = *(v91 - 7);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_116;
      }

      v96 = *(v91 - 6);
      v95 = *(v91 - 5);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_117;
      }

      v98 = *(v86 + 1);
      v99 = v98 - *v86;
      if (__OFSUB__(v98, *v86))
      {
        goto LABEL_119;
      }

      v97 = __OFADD__(v89, v99);
      v100 = v89 + v99;
      if (v97)
      {
        goto LABEL_122;
      }

      if (v100 >= v94)
      {
        v114 = *v85;
        v113 = *(v85 + 1);
        v97 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v97)
        {
          goto LABEL_130;
        }

        if (v89 < v115)
        {
          v84 = v81 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v21 = v146[1];
    v22 = v148;
    if (v148 >= v21)
    {
      goto LABEL_101;
    }
  }

  v61 = (v24 + v135);
  if (__OFADD__(v24, v135))
  {
    goto LABEL_134;
  }

  if (v61 >= v60)
  {
    v61 = v146[1];
  }

  if (v61 < v24)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v25 == v61)
  {
    goto LABEL_48;
  }

  v136 = v23;
  v147 = v5;
  v62 = *v146;
  v63 = *(v13 + 9);
  v152 = *(v13 + 2);
  v64 = &v62[v63 * (v25 - 1)];
  v149 = -v63;
  v138 = v24;
  v65 = (v24 - v25);
  v150 = v62;
  v139 = v63;
  v66 = &v62[v25 * v63];
  v142 = v61;
LABEL_41:
  v148 = v25;
  v143 = v66;
  v144 = v65;
  v145 = v64;
  v67 = v64;
  while (1)
  {
    v68 = v162;
    v69 = v152;
    (v152)(v162, v66, v12);
    v70 = v158;
    (v69)(v158, v67, v12);
    v71 = v159;
    sub_220DBECE0();
    v72 = v160;
    sub_220DBECE0();
    LODWORD(v163) = sub_220DBE440();
    v73 = *v155;
    v74 = v72;
    v75 = v161;
    (*v155)(v74, v161);
    v76 = v71;
    v12 = v157;
    v73(v76, v75);
    v77 = *v154;
    (*v154)(v70, v12);
    v77(v68, v12);
    if ((v163 & 1) == 0)
    {
LABEL_46:
      v25 = v148 + 1;
      v64 = &v145[v139];
      v65 = v144 - 1;
      v66 = &v143[v139];
      if ((v148 + 1) == v142)
      {
        v25 = v142;
        v5 = v147;
        v13 = v141;
        v23 = v136;
        v24 = v138;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v150)
    {
      break;
    }

    v78 = *v153;
    v79 = v151;
    (*v153)(v151, v66, v12);
    swift_arrayInitWithTakeFrontToBack();
    v78(v67, v79, v12);
    v67 += v149;
    v66 += v149;
    v59 = __CFADD__(v65++, 1);
    if (v59)
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