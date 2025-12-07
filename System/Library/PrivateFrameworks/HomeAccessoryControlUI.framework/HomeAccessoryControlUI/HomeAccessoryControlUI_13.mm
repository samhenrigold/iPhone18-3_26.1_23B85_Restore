unint64_t sub_25247D864()
{
  result = qword_27F4DE100;
  if (!qword_27F4DE100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE0F8, &qword_25269EA80);
    sub_25247D8F0();
    sub_25247D9FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE100);
  }

  return result;
}

unint64_t sub_25247D8F0()
{
  result = qword_27F4DE108;
  if (!qword_27F4DE108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE110, &qword_25269EA88);
    sub_25247D9A8();
    sub_252400FC8(&qword_27F4DE120, &qword_27F4DE128, &qword_25269EA90, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE108);
  }

  return result;
}

unint64_t sub_25247D9A8()
{
  result = qword_27F4DE118;
  if (!qword_27F4DE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE118);
  }

  return result;
}

unint64_t sub_25247D9FC()
{
  result = qword_27F4DE130;
  if (!qword_27F4DE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE130);
  }

  return result;
}

unint64_t sub_25247DAA4()
{
  result = qword_27F4DE138;
  if (!qword_27F4DE138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE138);
  }

  return result;
}

uint64_t sub_25247DB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE170, &qword_25269ECD8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  sub_2526919E0();
  v12 = a2;
  v13 = a3;
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE178, &qword_25269ECE0);
  sub_252482808();
  sub_252690820();
  sub_252400FC8(&qword_27F4DE1C8, &qword_27F4DE170, &qword_25269ECD8, MEMORY[0x277CDD6E0]);
  sub_252691FC0();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_25247DCBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_25247DD4C(a3, a1, a2, a4);
  v5 = sub_252691A20();
  sub_252690760();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE178, &qword_25269ECE0);
  v15 = a4 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_25247DD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a1;
  v48 = a4;
  v47 = sub_2526914B0();
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_252690A20();
  v7 = *(v44 - 8);
  v43 = *(v7 + 64);
  MEMORY[0x28223BE20](v44);
  v42 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE188, &qword_25269ECE8);
  MEMORY[0x28223BE20](v41);
  v10 = v39 - v9;
  *v10 = sub_2526912E0();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v39[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE1D0, &unk_25269ED10) + 44);
  v40 = a2;
  v11 = sub_25247E1F8(a2, a3)[2];

  v50[0] = 0;
  v50[1] = v11;
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE1D8, &qword_25269ED38);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE1E0, &qword_25269ED40);
  v16 = sub_252482A94();
  v17 = sub_252400FC8(&qword_27F4DE1F8, &qword_27F4DE1E0, &qword_25269ED40, MEMORY[0x277CE1138]);
  sub_252692790(v50, KeyPath, sub_252482A8C, v13, v14, v15, v16, MEMORY[0x277D83B98], v17);
  v18 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE1A0, &qword_25269ECF0) + 36)];
  v19 = *(sub_252690D30() + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_252691260();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #16.0 }

  *v18 = _Q0;
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2D8, &qword_25269CB00) + 36)] = 256;
  v27 = swift_allocObject();
  v28 = v40;
  *(v27 + 16) = v40;
  *(v27 + 24) = a3;

  v29 = sub_252692920();
  v30 = v42;
  v31 = &v10[*(v41 + 36)];
  *v31 = sub_252482B74;
  v31[1] = v27;
  v31[2] = v29;
  v31[3] = v32;
  v33 = v44;
  (*(v7 + 16))(v30, v45, v44);
  v34 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v28;
  *(v35 + 24) = a3;
  (*(v7 + 32))(v35 + v34, v30, v33);

  v36 = v46;
  sub_252691670();
  sub_2524828F0();
  v37 = v47;
  sub_252691E50();

  (*(v49 + 8))(v36, v37);
  return sub_252372288(v10, &qword_27F4DE188, &qword_25269ECE8);
}

void *sub_25247E1F8(uint64_t a1, uint64_t a2)
{
  if (qword_27F4DAA40 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v4 = sub_252482288(qword_27F4DE160, a1, a2);
    v38 = v4;
    v5 = qword_27F4DAA48;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = sub_252482288(qword_27F4DE168, a1, a2);
    v7 = *(v4 + 2);

    if (v7 > 0x13)
    {
      goto LABEL_11;
    }

    v8 = 20 - v7;
    if (*(v6 + 2) < (20 - v7))
    {
      goto LABEL_11;
    }

    v9 = *(sub_25268ED20() - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);

    v11 = swift_unknownObjectRetain();
    result = sub_2523C5F34(v11, &v6[v10], 0, (2 * v8) | 1);
    v13 = *(v6 + 2);
    if (v13 < v8)
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v6;
    if (!isUniquelyReferenced_nonNull_native || (v15 = v6, (v7 - 20 + v13) > *(v6 + 3) >> 1))
    {
      v15 = sub_252369680(isUniquelyReferenced_nonNull_native, v13, 1, v6);
      v37 = v15;
    }

    a1 = &v37;
    sub_252483168(0, 20 - v7, 0, MEMORY[0x277D15B48]);

    v4 = v38;
    v6 = v15;
LABEL_11:
    sub_2524832B4(v4, 5);
    v17 = v16;

    sub_2524832B4(v6, 6);
    v19 = v18;
    v35 = v17;
    v36 = *(v17 + 16);
    v20 = *(v18 + 16);
    v21 = MEMORY[0x277D84F90];
    a2 = 4;
    v22 = MEMORY[0x277D84F90];
    while (1)
    {
      v23 = a2 - 4;
      v24 = v21;
      if (a2 - 4 < v36)
      {
        if (v23 >= *(v35 + 16))
        {
          goto LABEL_40;
        }

        v24 = *(v35 + 8 * a2);
      }

      v25 = v21;
      if (v23 < v20)
      {
        if (v23 >= *(v19 + 16))
        {
          goto LABEL_41;
        }

        v25 = *(v19 + 8 * a2);
      }

      v26 = v25[2];
      a1 = v24[2];
      v27 = a1 + v26;
      if (__OFADD__(a1, v26))
      {
        break;
      }

      v28 = swift_isUniquelyReferenced_nonNull_native();
      if (v28 && v27 <= v24[3] >> 1)
      {
        if (v25[2])
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (a1 <= v27)
        {
          v33 = a1 + v26;
        }

        else
        {
          v33 = a1;
        }

        v24 = sub_2523696CC(v28, v33, 1, v24);
        if (v25[2])
        {
LABEL_22:
          a1 = v24[2];
          v29 = (v24[3] >> 1) - a1;
          _s21ColorSwatchPickerViewV9CellValueOMa(0);
          if (v29 < v26)
          {
            goto LABEL_39;
          }

          swift_arrayInitWithCopy();

          if (v26)
          {
            v30 = v24[2];
            v31 = __OFADD__(v30, v26);
            v32 = v30 + v26;
            if (v31)
            {
              goto LABEL_42;
            }

            v24[2] = v32;
          }

          goto LABEL_31;
        }
      }

      if (v26)
      {
        goto LABEL_38;
      }

LABEL_31:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_2523696A8(0, v22[2] + 1, 1, v22);
      }

      a1 = v22[2];
      v34 = v22[3];
      if (a1 >= v34 >> 1)
      {
        v22 = sub_2523696A8((v34 > 1), a1 + 1, 1, v22);
      }

      v22[2] = a1 + 1;
      v22[a1 + 4] = v24;
      if (++a2 == 8)
      {

        return v22;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

  __break(1u);
  return result;
}

void *sub_25247E618@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  *a4 = sub_2526911D0();
  *(a4 + 8) = 0x4020000000000000;
  *(a4 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE250, &qword_25269EDE8);
  result = sub_25247E1F8(a2, a3);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < result[2])
  {
    v9 = result[v7 + 4];

    v10 = *(v9 + 16);

    v17[0] = 0;
    v17[1] = v10;
    KeyPath = swift_getKeyPath();
    v12 = swift_allocObject();
    v12[2] = a2;
    v12[3] = a3;
    v12[4] = v7;

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE1D8, &qword_25269ED38);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE258, &qword_25269EDF0);
    v15 = sub_252482A94();
    v16 = sub_252482D38();
    return sub_252692790(v17, KeyPath, sub_252482D2C, v12, v13, v14, v15, MEMORY[0x277D83B98], v16);
  }

  __break(1u);
  return result;
}

void sub_25247E790(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a5;
  v61 = sub_2526912C0();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2526917F0();
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x28223BE20](v10);
  v55 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s21ColorSwatchPickerViewV9CellValueOMa(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE268, &qword_25269EDF8);
  MEMORY[0x28223BE20](v52);
  v17 = &v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE2D0, &qword_25269EE28);
  v53 = *(v18 - 8);
  v54 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  v21 = *a1;
  v22 = sub_25247E1F8(a2, a3);
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v22[2] <= a4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v23 = v22[a4 + 4];

  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v21 < *(v23 + 16))
  {
    sub_252482C64(v23 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, v15, _s21ColorSwatchPickerViewV9CellValueOMa);

    v24 = _s21ColorSwatchPickerViewV9ColorCellVMa(0);
    sub_252482C64(v15, &v17[*(v24 + 24)], _s21ColorSwatchPickerViewV9CellValueOMa);
    _s16ColorPickerStateCMa(0);
    sub_252483108(&qword_27F4DDB30, _s16ColorPickerStateCMa, &unk_25269F368);
    *v17 = sub_252690DF0();
    *(v17 + 1) = v25;
    *(v17 + 2) = swift_getKeyPath();
    v17[24] = 0;
    v26 = &v17[*(v24 + 28)];
    *v26 = a4;
    *(v26 + 1) = v21;
    v27 = sub_252690620();
    sub_252482CCC(v15, _s21ColorSwatchPickerViewV9CellValueOMa);
    v28 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE2A0, &qword_25269EE10) + 36)];
    *v28 = v27;
    v28[1] = a3;

    v29 = sub_252692920();
    v31 = v30;
    sub_2526908F0();
    v32 = v65;
    v33 = v66;
    v34 = v67;
    v35 = v68;
    v36 = v69;
    v37 = v70;
    sub_2526922F0();
    v38 = sub_252692350();

    KeyPath = swift_getKeyPath();
    *&v71 = v32;
    *(&v71 + 1) = __PAIR64__(v34, v33);
    *&v72 = v35;
    *(&v72 + 1) = v36;
    *&v73 = v37;
    *(&v73 + 1) = KeyPath;
    *&v74 = v38;
    *(&v74 + 1) = v29;
    v75 = v31;
    v40 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE290, &qword_25269EE08) + 36)];
    v41 = v74;
    *(v40 + 2) = v73;
    *(v40 + 3) = v41;
    *(v40 + 8) = v75;
    v42 = v72;
    *v40 = v71;
    *(v40 + 1) = v42;
    v76 = v32;
    v77 = v33;
    v78 = v34;
    v79 = v35;
    v80 = v36;
    v81 = v37;
    v82 = KeyPath;
    v83 = v38;
    v84 = v29;
    v85 = v31;
    sub_25237153C(&v71, v64, &qword_27F4DE2C8, &qword_25269EE20);
    sub_252372288(&v76, &qword_27F4DE2C8, &qword_25269EE20);
    sub_252692920();
    sub_2526909C0();
    v43 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE280, &qword_25269EE00) + 36)];
    v44 = v64[1];
    *v43 = v64[0];
    *(v43 + 1) = v44;
    *(v43 + 2) = v64[2];
    v45 = v52;
    v46 = &v17[*(v52 + 36)];
    *v46 = 0x3FF999999999999ALL;
    *(v46 + 4) = 0;
    v47 = v55;
    sub_2526917D0();
    v48 = sub_252482E30();
    sub_252692020();
    (*(v56 + 8))(v47, v57);
    sub_252372288(v17, &qword_27F4DE268, &qword_25269EDF8);
    v49 = v58;
    sub_2526912A0();
    v62 = v45;
    v63 = v48;
    swift_getOpaqueTypeConformance2();
    v50 = v54;
    sub_252691EB0();
    (*(v59 + 8))(v49, v61);
    (*(v53 + 8))(v20, v50);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_25247EE2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double (**a4)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 2) = a2;
  *(v8 + 3) = a3;
  *(v8 + 4) = v7;
  *a4 = sub_252482C18;
  a4[1] = v8;
}

__n128 sub_25247EEAC@<Q0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE208, &qword_25269ED98);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v16 - v10;
  sub_25247F008(a1, a4, a3, v16 - v10);
  sub_2526928B0();
  sub_252690D70();
  sub_2523714D4(v11, a5, &qword_27F4DE208, &qword_25269ED98);
  v12 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE210, &qword_25269EDA0) + 36);
  v13 = v16[5];
  *(v12 + 64) = v16[4];
  *(v12 + 80) = v13;
  *(v12 + 96) = v16[6];
  v14 = v16[1];
  *v12 = v16[0];
  *(v12 + 16) = v14;
  result = v16[3];
  *(v12 + 32) = v16[2];
  *(v12 + 48) = result;
  return result;
}

uint64_t sub_25247F008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v50 = a2;
  v49 = a1;
  v54 = sub_252692270();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_252690D30();
  MEMORY[0x28223BE20](v51);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE218, &unk_25269EDA8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v49 - v9;
  v11 = _s21ColorSwatchPickerViewV19ColorPreferenceDataVMa(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_25268ED20();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v57 = v16;
  sub_2525F8864(sub_252482C44, v50, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_252372288(v10, &qword_27F4DE218, &unk_25269EDA8);
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
  }

  else
  {
    sub_252483894(v10, v14, _s21ColorSwatchPickerViewV19ColorPreferenceDataVMa);
    type metadata accessor for CGRect(0);
    sub_252690A30();
    sub_252482CCC(v14, _s21ColorSwatchPickerViewV19ColorPreferenceDataVMa);
    v19 = *(&v61 + 1);
    v18 = *&v61;
    v17 = 1.0;
    v21 = *(&v62 + 1);
    v20 = *&v62;
  }

  v22 = *(v51 + 20);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_252691260();
  (*(*(v24 - 8) + 104))(&v7[v22], v23, v24);
  __asm { FMOV            V0.2D, #4.0 }

  *v7 = _Q0;
  if (qword_27F4DAA30 != -1)
  {
    swift_once();
  }

  v30 = qword_27F4FB420;
  sub_2526908F0();
  sub_252482C64(v7, a4, MEMORY[0x277CDFC08]);
  v31 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDAC8, &qword_25269DE00) + 36);
  v32 = v59;
  *v31 = v58;
  *(v31 + 16) = v32;
  *(v31 + 32) = v60;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE220, &qword_25269EDB8);
  *(a4 + *(v33 + 52)) = v30;
  *(a4 + *(v33 + 56)) = 256;

  v34 = sub_252692920();
  v36 = v35;
  sub_252482CCC(v7, MEMORY[0x277CDFC08]);
  v37 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE228, &qword_25269EDC0) + 36));
  *v37 = v34;
  v37[1] = v36;
  (*(v53 + 104))(v52, *MEMORY[0x277CE0ED0], v54);
  v38 = sub_2526923A0();
  v39 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE230, &qword_25269EDC8) + 36));
  *v39 = v38;
  v39[1] = 0x4008000000000000;
  v39[2] = 0;
  v39[3] = 0;
  v64.origin.x = v18;
  v64.origin.y = v19;
  v64.size.width = v20;
  v64.size.height = v21;
  CGRectGetWidth(v64);
  v65.origin.x = v18;
  v65.origin.y = v19;
  v65.size.width = v20;
  v65.size.height = v21;
  CGRectGetHeight(v65);
  sub_252692920();
  sub_2526909C0();
  v40 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE238, &qword_25269EDD0) + 36));
  v41 = v62;
  *v40 = v61;
  v40[1] = v41;
  v40[2] = v63;
  v42 = v18;
  *&v41 = v19;
  v43 = v20;
  v44 = v21;
  MinX = CGRectGetMinX(*(&v41 - 8));
  v66.origin.x = v18;
  v66.origin.y = v19;
  v66.size.width = v20;
  v66.size.height = v21;
  MinY = CGRectGetMinY(v66);
  v47 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE240, &qword_25269EDD8) + 36));
  *v47 = MinX;
  v47[1] = MinY;
  *(a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE208, &qword_25269ED98) + 36)) = v17;
  return (*(v55 + 8))(v16, v56);
}

uint64_t sub_25247F6D8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_25268ED20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v18 = _s21ColorSwatchPickerViewV9CellValueOMa(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v29 - v22;
  sub_2526909F0();
  sub_25247F9F8(a1, a2, v23, a3, a4, v24);
  sub_252482C64(v23, v20, _s21ColorSwatchPickerViewV9CellValueOMa);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE200, &qword_25269ED48);
  if ((*(*(v25 - 8) + 48))(v20, 1, v25) == 1)
  {
    sub_252482CCC(v23, _s21ColorSwatchPickerViewV9CellValueOMa);
  }

  else
  {
    (*(v9 + 32))(v17, v20, v8);
    v26 = *(v9 + 16);
    v26(v14, v17, v8);

    sub_252486464(v14);
    swift_getKeyPath();
    v30 = v17;
    swift_getKeyPath();
    v26(v11, v14, v8);
    sub_252690690();
    v27 = *(v9 + 8);
    v27(v14, v8);
    v27(v30, v8);
    v20 = v23;
  }

  return sub_252482CCC(v20, _s21ColorSwatchPickerViewV9CellValueOMa);
}

void sub_25247F9F8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D3>)
{
  v12 = sub_25247E1F8(a1, a2)[2];

  v13 = floor(a5 / fmax(a6 / v12, 50.0));
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = v12 - 1;
  if ((v12 - 1) >= v13)
  {
    v14 = v13;
  }

  v15 = v14 & ~(v14 >> 63);
  v16 = sub_25247E1F8(a1, a2);
  if (v15 >= v16[2])
  {
    goto LABEL_21;
  }

  v17 = v16[v15 + 4];

  v18 = *(v17 + 16);

  v19 = floor(a4 / 88.0);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v18 - 1 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18 - 1;
  }

  v21 = sub_25247E1F8(a1, a2);
  if (v15 >= v21[2])
  {
    goto LABEL_25;
  }

  v22 = v20 & ~(v20 >> 63);
  v23 = v21[v15 + 4];

  if (v22 >= *(v23 + 16))
  {
LABEL_26:
    __break(1u);
    return;
  }

  v24 = *(_s21ColorSwatchPickerViewV9CellValueOMa(0) - 8);
  sub_252482C64(v23 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, a3, _s21ColorSwatchPickerViewV9CellValueOMa);
}

uint64_t sub_25247FC4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v144 = a2;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE348, &qword_25269EF80);
  MEMORY[0x28223BE20](v141);
  v143 = &v112 - v3;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE350, &unk_25269EF88);
  MEMORY[0x28223BE20](v142);
  v5 = &v112 - v4;
  v6 = sub_252691730();
  v135 = *(v6 - 8);
  v136 = v6;
  MEMORY[0x28223BE20](v6);
  v133 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE0B0, &qword_25269EA40);
  v139 = *(v8 - 8);
  v140 = v8;
  MEMORY[0x28223BE20](v8);
  v134 = &v112 - v9;
  v10 = sub_252691230();
  MEMORY[0x28223BE20](v10 - 8);
  v125 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v12 - 8);
  v122 = &v112 - v13;
  v120 = _s21ColorSwatchPickerViewV27AccessibilitySelectionStateVMa(0);
  MEMORY[0x28223BE20](v120);
  v121 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s21ColorSwatchPickerViewV9ColorCellVMa(0);
  v16 = v15 - 8;
  v118 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v119 = v17;
  v18 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE358, &qword_25269EF98);
  MEMORY[0x28223BE20](v123);
  v124 = (&v112 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE360, &unk_25269EFA0);
  MEMORY[0x28223BE20](v20 - 8);
  v132 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v137 = &v112 - v23;
  v128 = sub_2526910F0();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v126 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE0B8, &qword_25269EA48);
  MEMORY[0x28223BE20](v138);
  v129 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v131 = &v112 - v27;
  MEMORY[0x28223BE20](v28);
  v130 = &v112 - v29;
  v30 = _s21ColorSwatchPickerViewV9CellValueOMa(0);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_25268ED20();
  v34 = *(v33 - 8);
  v35 = v34[8];
  MEMORY[0x28223BE20](v33);
  v36 = &v112 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v112 - v38;
  v40 = *(v16 + 32);
  v145 = a1;
  sub_252482C64(a1 + v40, v32, _s21ColorSwatchPickerViewV9CellValueOMa);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE200, &qword_25269ED48);
  if ((*(*(v41 - 8) + 48))(v32, 1, v41) == 1)
  {
    sub_252482CCC(v32, _s21ColorSwatchPickerViewV9CellValueOMa);
    v42 = *(v145 + 16);
    if (*(v145 + 24) == 1)
    {
      if ((v42 & 1) == 0)
      {
LABEL_4:
        v43 = 1;
        v45 = v139;
        v44 = v140;
        v46 = v130;
LABEL_11:
        (*(v45 + 56))(v46, v43, 1, v44);
        sub_25237153C(v46, v143, &qword_27F4DE0B8, &qword_25269EA48);
        swift_storeEnumTagMultiPayload();
        sub_252400FC8(&qword_27F4DE368, &qword_27F4DE350, &unk_25269EF88, MEMORY[0x277CE14C0]);
        sub_252483D28();
        sub_252691470();
        return sub_252372288(v46, &qword_27F4DE0B8, &qword_25269EA48);
      }
    }

    else
    {

      sub_252692F00();
      v71 = sub_2526919C0();
      sub_252690570();

      v72 = v126;
      sub_2526910E0();
      swift_getAtKeyPath();
      sub_25235E264(v42, 0);
      (*(v127 + 8))(v72, v128);
      if ((v146 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    sub_252691240();
    v73 = sub_252691D30();
    v75 = v74;
    v77 = v76;
    sub_252691BB0();
    v78 = sub_252691D00();
    v80 = v79;
    v82 = v81;
    v84 = v83;

    sub_2524228D8(v73, v75, v77 & 1);

    v146 = v78;
    v147 = v80;
    v148 = v82 & 1;
    v149 = v84;
    v85 = v133;
    sub_252691720();
    v86 = v134;
    v87 = v136;
    sub_252691ED0();
    (*(v135 + 8))(v85, v87);
    sub_2524228D8(v78, v80, v82 & 1);

    v45 = v139;
    v44 = v140;
    v46 = v130;
    (*(v139 + 32))(v130, v86, v140);
    v43 = 0;
    goto LABEL_11;
  }

  v116 = v5;
  v47 = v34[4];
  v47(v39, v32, v33);
  v48 = v34 + 2;
  v49 = v34[2];
  v49(v36, v39, v33);
  v114 = sub_25248C4C8(v36);
  v113 = sub_252692520();
  v117 = v39;
  v115 = v49;
  v49(v36, v39, v33);
  v130 = v34;
  v50 = v145;
  sub_252482C64(v145, v18, _s21ColorSwatchPickerViewV9ColorCellVMa);
  v51 = (*(v48 + 64) + 16) & ~*(v48 + 64);
  v52 = (v35 + *(v118 + 80) + v51) & ~*(v118 + 80);
  v53 = swift_allocObject();
  v47((v53 + v51), v36, v33);
  v119 = v53;
  sub_252483894(v18, v53 + v52, _s21ColorSwatchPickerViewV9ColorCellVMa);
  if (!*v50)
  {
    _s16ColorPickerStateCMa(0);
    sub_252483108(&qword_27F4DDB30, _s16ColorPickerStateCMa, &unk_25269F368);
    result = sub_252690DE0();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  v54 = v122;
  sub_252690680();

  (*(v130 + 7))(v54, 0, 1, v33);
  v55 = v121;
  v56 = v117;
  v57 = v115;
  v115(&v121[*(v120 + 20)], v117, v33);
  sub_2523714D4(v54, v55, &qword_27F4DB2A8, &unk_2526960B0);
  v58 = v124;
  sub_252483894(v55, v124 + *(v123 + 36), _s21ColorSwatchPickerViewV27AccessibilitySelectionStateVMa);
  v59 = v113;
  *v58 = v114;
  v58[1] = v59;
  v60 = v119;
  v58[2] = sub_252483DF0;
  v58[3] = v60;
  sub_252691210();
  sub_252691200();
  v122 = v33;
  v57(v36, v56, v33);
  sub_25248C4C8(v36);
  sub_252691220();

  sub_252691200();
  sub_252691250();
  v61 = sub_252691D30();
  v63 = v62;
  v65 = v64;
  sub_252483ED4();
  sub_252691FA0();
  sub_2524228D8(v61, v63, v65 & 1);

  sub_252372288(v58, &qword_27F4DE358, &qword_25269EF98);
  v66 = *(v145 + 16);
  if (*(v145 + 24) != 1)
  {

    sub_252692F00();
    v89 = sub_2526919C0();
    sub_252690570();

    v90 = v126;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v66, 0);
    (*(v127 + 8))(v90, v128);
    if ((v146 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v146 = LightbulbColor.shortDebugDescription.getter();
    v147 = v91;
    sub_252404480();
    v92 = sub_252691D50();
    v94 = v93;
    v96 = v95;
    sub_252691BB0();
    v97 = sub_252691D00();
    v99 = v98;
    v101 = v100;
    v103 = v102;

    sub_2524228D8(v92, v94, v96 & 1);

    v146 = v97;
    v147 = v99;
    v148 = v101 & 1;
    v149 = v103;
    v104 = v133;
    sub_252691720();
    v105 = v134;
    v106 = v136;
    sub_252691ED0();
    (*(v135 + 8))(v104, v106);
    sub_2524228D8(v97, v99, v101 & 1);

    v69 = v139;
    v68 = v140;
    v70 = v131;
    (*(v139 + 32))(v131, v105, v140);
    v67 = 0;
    goto LABEL_14;
  }

  if (v66)
  {
    goto LABEL_13;
  }

LABEL_8:
  v67 = 1;
  v69 = v139;
  v68 = v140;
  v70 = v131;
LABEL_14:
  (*(v69 + 56))(v70, v67, 1, v68);
  v107 = v137;
  v108 = v132;
  sub_25237153C(v137, v132, &qword_27F4DE360, &unk_25269EFA0);
  v109 = v129;
  sub_25237153C(v70, v129, &qword_27F4DE0B8, &qword_25269EA48);
  v110 = v116;
  sub_25237153C(v108, v116, &qword_27F4DE360, &unk_25269EFA0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE3A8, &unk_25269EFC0);
  sub_25237153C(v109, v110 + *(v111 + 48), &qword_27F4DE0B8, &qword_25269EA48);
  sub_252372288(v109, &qword_27F4DE0B8, &qword_25269EA48);
  sub_252372288(v108, &qword_27F4DE360, &unk_25269EFA0);
  sub_25237153C(v110, v143, &qword_27F4DE350, &unk_25269EF88);
  swift_storeEnumTagMultiPayload();
  sub_252400FC8(&qword_27F4DE368, &qword_27F4DE350, &unk_25269EF88, MEMORY[0x277CE14C0]);
  sub_252483D28();
  sub_252691470();
  sub_252372288(v110, &qword_27F4DE350, &unk_25269EF88);
  sub_252372288(v70, &qword_27F4DE0B8, &qword_25269EA48);
  sub_252372288(v107, &qword_27F4DE360, &unk_25269EFA0);
  return (*(v130 + 1))(v117, v122);
}

uint64_t sub_252480DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB1E8, &qword_252695100);
  v8 = (_s21ColorSwatchPickerViewV19ColorPreferenceDataVMa(0) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_252694E90;
  v11 = v10 + v9;
  v12 = (a3 + *(_s21ColorSwatchPickerViewV9ColorCellVMa(0) + 28));
  v13 = *v12;
  v14 = v12[1];
  v15 = sub_25268ED20();
  (*(*(v15 - 8) + 16))(v11, a2, v15);
  *(v11 + v8[7]) = a1;
  v16 = (v11 + v8[8]);
  *v16 = v13;
  v16[1] = v14;
  *a4 = v10;
}

uint64_t sub_252480F28@<X0>(uint64_t *a2@<X8>)
{
  v4 = sub_2526912F0();
  v5 = sub_2526911D0();
  *a2 = v4;
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE340, &qword_25269EF78);
  return sub_25247FC4C(v2, (a2 + *(v6 + 44)));
}

void *sub_252480F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v28 = a2;
  v30 = a3;
  v4 = sub_2526912C0();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v24 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE3D0, &qword_25269F048);
  MEMORY[0x28223BE20](v29);
  v25 = v23 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE3D8, &qword_25269F050);
  MEMORY[0x28223BE20](v7);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v23 - v11;
  v13 = sub_25268ED20();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(a1, v12, &qword_27F4DB2A8, &unk_2526960B0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_252372288(v12, &qword_27F4DB2A8, &unk_2526960B0);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE3E0, &unk_25269F058);
    (*(*(v17 - 8) + 16))(v9, v28, v17);
    swift_storeEnumTagMultiPayload();
    sub_2524841A4();
    sub_252400FC8(&qword_27F4DE3F0, &qword_27F4DE3E0, &unk_25269F058, MEMORY[0x277CE04B0]);
    return sub_252691470();
  }

  else
  {
    v23[1] = v7;
    (*(v14 + 32))(v16, v12, v13);
    v19 = _s21ColorSwatchPickerViewV27AccessibilitySelectionStateVMa(0);
    if (sub_25248B14C(a1 + *(v19 + 20)))
    {
      v20 = v24;
      sub_252691270();
      v21 = v27;
    }

    else
    {
      v31 = MEMORY[0x277D84F90];
      v23[0] = sub_252483108(&qword_27F4DD310, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD318, &qword_25269D6A0);
      sub_252400FC8(&qword_27F4DD320, &qword_27F4DD318, &qword_25269D6A0, MEMORY[0x277D83970]);
      v20 = v24;
      v21 = v27;
      sub_252693190();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE3E0, &unk_25269F058);
    sub_252400FC8(&qword_27F4DE3F0, &qword_27F4DE3E0, &unk_25269F058, MEMORY[0x277CE04B0]);
    v22 = v25;
    sub_252691EB0();
    (*(v26 + 8))(v20, v21);
    sub_25237153C(v22, v9, &qword_27F4DE3D0, &qword_25269F048);
    swift_storeEnumTagMultiPayload();
    sub_2524841A4();
    sub_252691470();
    sub_252372288(v22, &qword_27F4DE3D0, &qword_25269F048);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_2524814F8@<X0>(void *a1@<X8>)
{
  if (qword_27F4DAA38 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F4FB428;
}

BOOL sub_2524815B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_252690550();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v38 - v7;
  v8 = sub_25268ED20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v38 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE248, &qword_25269EDE0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v38 - v13;
  v16 = *(v15 + 56);
  v17 = *(v9 + 16);
  v41 = a1;
  v17(&v38 - v13, a1, v8, v12);
  v45 = v16;
  v42 = a2;
  (v17)(&v14[v16], a2, v8);
  v18 = *(v9 + 88);
  v19 = v18(v14, v8);
  v20 = *MEMORY[0x277D15B30];
  if (v19 != *MEMORY[0x277D15B30])
  {
    v25 = v18(&v14[v45], v8);
    v26 = v25;
    if (v25 == *MEMORY[0x277D15B28])
    {
      v27 = v38;
      (v17)(v38, &v14[v45], v8);
      v28 = *(v9 + 96);
      v28(v27, v8);
      v29 = *v27;
      v30 = v18(v14, v8);
      v31 = v45;
      if (v30 == v26)
      {
        v28(v14, v8);
        v24 = *v14 == v29;
        (*(v9 + 8))(&v14[v31], v8);
        return v24;
      }
    }

    else if (v25 == v20)
    {
      v32 = *(v9 + 8);
      v32(&v14[v45], v8);
      v32(v14, v8);
      return 0;
    }

    v33 = v39;
    sub_25248B53C(v39);
    v34 = v40;
    sub_25248B53C(v40);
    v24 = sub_25248C9AC(v34);
    v35 = v44;
    v36 = *(v43 + 8);
    v36(v34, v44);
    v36(v33, v35);
    sub_252372288(v14, &qword_27F4DE248, &qword_25269EDE0);
    return v24;
  }

  v21 = v19;
  v22 = *(v9 + 8);
  v22(v14, v8);
  v23 = v45;
  v24 = v18(&v14[v45], v8) == v21;
  v22(&v14[v23], v8);
  return v24;
}

uint64_t sub_2524819C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB178, &qword_2526950B0);
  v0 = sub_25268ED20();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25269EAB0;
  v5 = (v4 + v3);
  *v5 = sub_25268ED00();
  v6 = *MEMORY[0x277D15B28];
  v7 = *(v1 + 104);
  v7(v5, v6, v0);
  *(v5 + v2) = sub_25268ED00();
  v7((v5 + v2), v6, v0);
  v5[v2] = sub_25268ED00();
  v7(&v5[v2], v6, v0);
  *(v5 + 3 * v2) = sub_25268ED00();
  v7((v5 + 3 * v2), v6, v0);
  v5[2 * v2] = sub_25268ED00();
  v7(&v5[2 * v2], v6, v0);
  *(v5 + 5 * v2) = sub_25268ED00();
  v7((v5 + 5 * v2), v6, v0);
  v5[3 * v2] = sub_25268ED00();
  v7(&v5[3 * v2], v6, v0);
  *(v5 + 7 * v2) = sub_25268ED00();
  v7((v5 + 7 * v2), v6, v0);
  v5[4 * v2] = sub_25268ED00();
  v7(&v5[4 * v2], v6, v0);
  *(v5 + 9 * v2) = sub_25268ED00();
  v7((v5 + 9 * v2), v6, v0);
  v5[5 * v2] = sub_25268ED00();
  v7(&v5[5 * v2], v6, v0);
  *(v5 + 11 * v2) = sub_25268ED00();
  v7((v5 + 11 * v2), v6, v0);
  v5[6 * v2] = sub_25268ED00();
  v7(&v5[6 * v2], v6, v0);
  *(v5 + 13 * v2) = sub_25268ED00();
  v7((v5 + 13 * v2), v6, v0);
  v5[7 * v2] = sub_25268ED00();
  v7(&v5[7 * v2], v6, v0);
  *(v5 + 15 * v2) = sub_25268ED00();
  v7((v5 + 15 * v2), v6, v0);
  v5[8 * v2] = sub_25268ED00();
  v7(&v5[8 * v2], v6, v0);
  *(v5 + 17 * v2) = sub_25268ED00();
  v7((v5 + 17 * v2), v6, v0);
  v5[9 * v2] = sub_25268ED00();
  v7(&v5[9 * v2], v6, v0);
  v8 = (v5 + 19 * v2);
  *v8 = sub_25268ED00();
  result = (v7)(v8, v6, v0);
  qword_27F4DE160 = v4;
  return result;
}

uint64_t sub_252481DE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB178, &qword_2526950B0);
  v0 = sub_25268ED20();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25269EAC0;
  v5 = (v4 + v3);
  *v5 = xmmword_25269EAD0;
  v6 = *MEMORY[0x277D15B38];
  v7 = *(v1 + 104);
  (v7)(v5, v6, v0);
  *(v5 + v2) = xmmword_25269EAE0;
  (v7)(v5 + v2, v6, v0);
  *(v5 + 2 * v2) = xmmword_25269EAF0;
  (v7)(v5 + 2 * v2, v6, v0);
  *(v5 + 3 * v2) = xmmword_25269EB00;
  (v7)(v5 + 3 * v2, v6, v0);
  *(v5 + 4 * v2) = xmmword_25269EB10;
  (v7)(v5 + 4 * v2, v6, v0);
  *(v5 + 5 * v2) = xmmword_25269EB20;
  (v7)(v5 + 5 * v2, v6, v0);
  *(v5 + 6 * v2) = xmmword_25269EB30;
  v7();
  *(v5 + 7 * v2) = xmmword_25269EB40;
  (v7)(v5 + 7 * v2, v6, v0);
  *(v5 + 8 * v2) = xmmword_25269EB50;
  (v7)(v5 + 8 * v2, v6, v0);
  *(v5 + 9 * v2) = xmmword_25269EB60;
  (v7)(v5 + 9 * v2, v6, v0);
  *(v5 + 10 * v2) = xmmword_25269EB70;
  v7();
  *(v5 + 11 * v2) = xmmword_25269EB80;
  v7();
  *(v5 + 12 * v2) = xmmword_25269EB90;
  v7();
  *(v5 + 13 * v2) = xmmword_25269EBA0;
  v7();
  *(v5 + 14 * v2) = xmmword_25269EBB0;
  v7();
  *(v5 + 15 * v2) = xmmword_25269EBC0;
  (v7)(v5 + 15 * v2, v6, v0);
  v5[v2] = xmmword_25269EBD0;
  (v7)(&v5[v2], v6, v0);
  *(v5 + 17 * v2) = xmmword_25269EBE0;
  (v7)(v5 + 17 * v2, v6, v0);
  *(v5 + 18 * v2) = xmmword_25269EBF0;
  v7();
  *(v5 + 19 * v2) = xmmword_25269EC00;
  v7();
  *(v5 + 20 * v2) = xmmword_25269EC10;
  v7();
  *(v5 + 21 * v2) = xmmword_25269EC20;
  v7();
  *(v5 + 22 * v2) = xmmword_25269EC30;
  v7();
  *(v5 + 23 * v2) = xmmword_25269EC40;
  result = (v7)();
  qword_27F4DE168 = v4;
  return result;
}

char *sub_252482288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - v5;
  v7 = sub_25268ED20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = (&v47 - v10);
  MEMORY[0x28223BE20](v12);
  v54 = &v47 - v13;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v47 - v17;
  v19 = *(a1 + 16);
  if (v19)
  {
    v22 = *(v8 + 16);
    v20 = v8 + 16;
    v21 = v22;
    v51 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v23 = a1 + v51;
    v24 = *(v20 + 56);
    v60 = (v20 + 72);
    v59 = *MEMORY[0x277D15B40];
    v25 = *MEMORY[0x277D15B38];
    v49 = *MEMORY[0x277D15B28];
    v50 = v25;
    v48 = *MEMORY[0x277D15B30];
    v26 = (v20 - 8);
    v47 = (v20 + 80);
    v57 = (v20 + 32);
    v58 = (v20 + 40);
    v56 = (v20 + 16);
    v62 = v24;
    v63 = MEMORY[0x277D84F90];
    v52 = v22;
    v53 = v20;
    v61 = v15;
    (v22)(v18, v23, v7, v16);
    while (1)
    {
      v21(v11, v18, v7);
      v29 = (*v60)(v11, v7);
      if (v29 == v59)
      {
        break;
      }

      if (v29 == v50)
      {
        goto LABEL_9;
      }

      if (v29 == v49)
      {
        (*v47)(v11, v7);
        v31 = (v55 + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_deviceConfig);
        if (!*(v55 + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_deviceConfig + 16) || (v32 = *v31, v33 = v31[1], v32 & 0x1000000000000 | v33 & 0x10000) || ((v34 = *v11, v34 < v33) ? (v35 = v34 > WORD2(v32)) : (v35 = 0), (v36 = v32 & 0x10000, !v35) ? (v37 = v36 == 0) : (v37 = 0), !v37))
        {
LABEL_11:
          v21(v6, v18, v7);
          v30 = 0;
          goto LABEL_26;
        }
      }

      else
      {
        if (v29 != v48)
        {
          result = sub_2526933A0();
          __break(1u);
          return result;
        }

        (*v26)(v11, v7);
      }

LABEL_25:
      v30 = 1;
LABEL_26:
      (*v58)(v6, v30, 1, v7);
      (*v26)(v18, v7);
      if ((*v57)(v6, 1, v7) == 1)
      {
        sub_252372288(v6, &qword_27F4DB2A8, &unk_2526960B0);
        v28 = v62;
      }

      else
      {
        v38 = v11;
        v39 = *v56;
        v40 = v54;
        (*v56)(v54, v6, v7);
        v39(v61, v40, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_252369680(0, *(v63 + 2) + 1, 1, v63);
        }

        v41 = v62;
        v43 = *(v63 + 2);
        v42 = *(v63 + 3);
        if (v43 >= v42 >> 1)
        {
          v45 = sub_252369680((v42 > 1), v43 + 1, 1, v63);
          v41 = v62;
          v63 = v45;
        }

        v44 = v63;
        *(v63 + 2) = v43 + 1;
        v28 = v41;
        v39(&v44[v51 + v43 * v41], v61, v7);
        v11 = v38;
        v21 = v52;
      }

      v23 += v28;
      if (!--v19)
      {
        return v63;
      }

      (v21)(v18, v23, v7, v27);
    }

    (*v26)(v11, v7);
LABEL_9:
    if (*(v55 + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_deviceConfig + 16) && (*(v55 + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_deviceConfig + 2) & 1) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252482788@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_2524827F4;
  a1[1] = v5;
}

unint64_t sub_252482808()
{
  result = qword_27F4DE180;
  if (!qword_27F4DE180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE178, &qword_25269ECE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE188, &qword_25269ECE8);
    sub_2526914B0();
    sub_2524828F0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE180);
  }

  return result;
}

unint64_t sub_2524828F0()
{
  result = qword_27F4DE190;
  if (!qword_27F4DE190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE188, &qword_25269ECE8);
    sub_2524829A8();
    sub_252400FC8(&qword_27F4DE1B8, &qword_27F4DE1C0, &qword_25269ED08, MEMORY[0x277CE07F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE190);
  }

  return result;
}

unint64_t sub_2524829A8()
{
  result = qword_27F4DE198;
  if (!qword_27F4DE198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE1A0, &qword_25269ECF0);
    sub_252400FC8(&qword_27F4DE1A8, &qword_27F4DE1B0, &unk_25269ECF8, MEMORY[0x277CE1198]);
    sub_252400FC8(&qword_27F4DC2F0, &qword_27F4DC2D8, &qword_25269CB00, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE198);
  }

  return result;
}

unint64_t sub_252482A94()
{
  result = qword_27F4DE1E8;
  if (!qword_27F4DE1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE1D8, &qword_25269ED38);
    sub_252482B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE1E8);
  }

  return result;
}

unint64_t sub_252482B20()
{
  result = qword_27F4DE1F0;
  if (!qword_27F4DE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE1F0);
  }

  return result;
}

uint64_t sub_252482B7C(double a1, double a2)
{
  sub_252690A20();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  return sub_25247F6D8(v5, v6, a1, a2);
}

uint64_t sub_252482C64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252482CCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_252482D38()
{
  result = qword_27F4DE260;
  if (!qword_27F4DE260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE258, &qword_25269EDF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE268, &qword_25269EDF8);
    sub_252482E30();
    swift_getOpaqueTypeConformance2();
    sub_252483108(&qword_27F4DD380, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE260);
  }

  return result;
}

unint64_t sub_252482E30()
{
  result = qword_27F4DE270;
  if (!qword_27F4DE270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE268, &qword_25269EDF8);
    sub_252482EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE270);
  }

  return result;
}

unint64_t sub_252482EBC()
{
  result = qword_27F4DE278;
  if (!qword_27F4DE278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE280, &qword_25269EE00);
    sub_252482F48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE278);
  }

  return result;
}

unint64_t sub_252482F48()
{
  result = qword_27F4DE288;
  if (!qword_27F4DE288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE290, &qword_25269EE08);
    sub_252483000();
    sub_252400FC8(&qword_27F4DE2C0, &qword_27F4DE2C8, &qword_25269EE20, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE288);
  }

  return result;
}

unint64_t sub_252483000()
{
  result = qword_27F4DE298;
  if (!qword_27F4DE298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE2A0, &qword_25269EE10);
    sub_252483108(&qword_27F4DE2A8, _s21ColorSwatchPickerViewV9ColorCellVMa, &unk_25269EF28);
    sub_252400FC8(&qword_27F4DE2B0, &qword_27F4DE2B8, &qword_25269EE18, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE298);
  }

  return result;
}

uint64_t sub_252483108(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_252483168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_2524832B4(void *a1, uint64_t a2)
{
  v50 = a1;
  v57 = sub_25268ED20();
  v48 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = _s21ColorSwatchPickerViewV9CellValueOMa(0);
  v4 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  if (a2)
  {
    v10 = MEMORY[0x277D84F90];
    v45 = a2 - 1;
    if (a2 < 1)
    {
      return;
    }

    v11 = v50[2];
    if (!v11)
    {
      return;
    }

    v12 = 0;
    v55 = v48 + 16;
    v13 = (v48 + 32);
    v51 = a2;
    v47 = v6;
    v49 = v11;
    while (1)
    {
      v14 = v12 + a2;
      if (__OFADD__(v12, a2))
      {
        break;
      }

      if (v11 < v14)
      {
        v14 = v11;
      }

      v15 = v14 - v12;
      if (v14 < v12)
      {
        goto LABEL_42;
      }

      if (v12 < 0)
      {
        goto LABEL_43;
      }

      v54 = v12 + a2;
      if (v11 == v15)
      {
        v16 = v50;
      }

      else
      {
        v16 = MEMORY[0x277D84F90];
        if (v14 != v12)
        {
          if (v15 >= 1)
          {
            v53 = v10;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB178, &qword_2526950B0);
            v40 = *(v48 + 72);
            v41 = (*(v48 + 80) + 32) & ~*(v48 + 80);
            v16 = swift_allocObject();
            v42 = _swift_stdlib_malloc_size_0(v16);
            if (!v40)
            {
              goto LABEL_46;
            }

            if (v42 - v41 == 0x8000000000000000 && v40 == -1)
            {
              goto LABEL_47;
            }

            v16[2] = v15;
            v16[3] = 2 * ((v42 - v41) / v40);
            v10 = v53;
            a2 = v51;
          }

          swift_arrayInitWithCopy();
        }
      }

      v17 = v16[2];
      if (v17)
      {
        v53 = v10;
        v58 = MEMORY[0x277D84F90];
        sub_2523704BC(0, v17, 0);
        v18 = v58;
        v19 = *(v48 + 80);
        v52 = v16;
        v20 = v16 + ((v19 + 32) & ~v19);
        v21 = *(v48 + 72);
        v22 = *(v48 + 16);
        do
        {
          v24 = v56;
          v23 = v57;
          v22(v56, v20, v57);
          (*v13)(v9, v24, v23);
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE200, &qword_25269ED48);
          (*(*(v25 - 8) + 56))(v9, 0, 1, v25);
          v58 = v18;
          v27 = *(v18 + 16);
          v26 = *(v18 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_2523704BC((v26 > 1), v27 + 1, 1);
            v18 = v58;
          }

          *(v18 + 16) = v27 + 1;
          sub_252483894(v9, v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v27, _s21ColorSwatchPickerViewV9CellValueOMa);
          v20 += v21;
          --v17;
        }

        while (v17);

        a2 = v51;
        v6 = v47;
        v10 = v53;
      }

      else
      {

        v18 = MEMORY[0x277D84F90];
      }

      v58 = v18;
      v28 = *(v18 + 16);
      if (a2 > v28)
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE200, &qword_25269ED48);
        (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
        v30 = a2 - v28;
        if (a2 - v28 < 0)
        {
          goto LABEL_44;
        }

        v31 = v10;
        v32 = sub_252692DC0();
        *(v32 + 16) = v30;
        v33 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        sub_252482C64(v6, v32 + v33, _s21ColorSwatchPickerViewV9CellValueOMa);
        if (v30 != 1)
        {
          v34 = *(v4 + 72);
          v35 = v45 - v28;
          v36 = v32 + v34 + v33;
          do
          {
            sub_252482C64(v6, v36, _s21ColorSwatchPickerViewV9CellValueOMa);
            v36 += v34;
            --v35;
          }

          while (v35);
        }

        sub_252482CCC(v6, _s21ColorSwatchPickerViewV9CellValueOMa);
        sub_2523C5F08(v32);
        v18 = v58;
        v10 = v31;
        a2 = v51;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_2523696A8(0, v10[2] + 1, 1, v10);
      }

      v38 = v10[2];
      v37 = v10[3];
      v39 = v54;
      if (v38 >= v37 >> 1)
      {
        v44 = sub_2523696A8((v37 > 1), v38 + 1, 1, v10);
        v39 = v54;
        v10 = v44;
      }

      v10[2] = v38 + 1;
      v10[v38 + 4] = v18;
      v12 = v39;
      v11 = v49;
      if (v39 >= v49)
      {
        return;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_252483894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_252483928(uint64_t a1)
{
  sub_25268ED20();
  if (v1 <= 0x3F)
  {
    sub_252484124(319, &qword_27F4DE2E8, type metadata accessor for CGRect, MEMORY[0x277CE10C0]);
    if (v2 <= 0x3F)
    {
      sub_2524839F4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2524839F4()
{
  if (!qword_27F4DE2F0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4DE2F0);
    }
  }
}

uint64_t sub_252483A7C(uint64_t a1)
{
  sub_252483AD4();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_252483AD4()
{
  if (!qword_27F4DE308)
  {
    v0 = sub_25268ED20();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DE308);
    }
  }
}

void sub_252483B54(uint64_t a1)
{
  sub_252483C08(319);
  if (v1 <= 0x3F)
  {
    sub_252483C9C();
    if (v2 <= 0x3F)
    {
      _s21ColorSwatchPickerViewV9CellValueOMa(319);
      if (v3 <= 0x3F)
      {
        sub_2524839F4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_252483C08(uint64_t a1)
{
  if (!qword_27F4DE320)
  {
    _s16ColorPickerStateCMa(255);
    sub_252483108(&qword_27F4DDB30, _s16ColorPickerStateCMa, &unk_25269F368);
    v1 = sub_252690E00();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4DE320);
    }
  }
}

void sub_252483C9C()
{
  if (!qword_27F4DE328)
  {
    v0 = sub_2526908A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DE328);
    }
  }
}

unint64_t sub_252483D28()
{
  result = qword_27F4DE370;
  if (!qword_27F4DE370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE0B8, &qword_25269EA48);
    sub_252691730();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE370);
  }

  return result;
}

uint64_t sub_252483DF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_25268ED20() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(_s21ColorSwatchPickerViewV9ColorCellVMa(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_252480DD4(a1, v2 + v6, v9, a2);
}

unint64_t sub_252483ED4()
{
  result = qword_27F4DE378;
  if (!qword_27F4DE378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE358, &qword_25269EF98);
    sub_252483F90();
    sub_252483108(&qword_27F4DE3A0, _s21ColorSwatchPickerViewV27AccessibilitySelectionStateVMa, &unk_25269EFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE378);
  }

  return result;
}

unint64_t sub_252483F90()
{
  result = qword_27F4DE380;
  if (!qword_27F4DE380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE388, &qword_25269EFB0);
    sub_252400FC8(&qword_27F4DE390, &qword_27F4DE398, &qword_25269EFB8, MEMORY[0x277CE0598]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE380);
  }

  return result;
}

void sub_252484070(uint64_t a1)
{
  sub_252484124(319, &qword_27F4DCBE8, MEMORY[0x277D15B48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_25268ED20();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252484124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2524841A4()
{
  result = qword_27F4DE3E8;
  if (!qword_27F4DE3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE3D0, &qword_25269F048);
    sub_252400FC8(&qword_27F4DE3F0, &qword_27F4DE3E0, &unk_25269F058, MEMORY[0x277CE04B0]);
    sub_252483108(&qword_27F4DD380, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE3E8);
  }

  return result;
}

unint64_t sub_25248428C()
{
  result = qword_27F4DE3F8;
  if (!qword_27F4DE3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE400, &qword_25269F068);
    sub_252484310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE3F8);
  }

  return result;
}

unint64_t sub_252484310()
{
  result = qword_27F4DE408;
  if (!qword_27F4DE408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE410, &qword_25269F070);
    sub_2524841A4();
    sub_252400FC8(&qword_27F4DE3F0, &qword_27F4DE3E0, &unk_25269F058, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE408);
  }

  return result;
}

uint64_t _s9ColorWellVMa(uint64_t a1)
{
  result = qword_27F4DE418;
  if (!qword_27F4DE418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25248443C(uint64_t a1)
{
  sub_252466FC8(319);
  if (v1 <= 0x3F)
  {
    sub_2524844C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2524844C8()
{
  if (!qword_27F4DCE98)
  {
    v0 = sub_252693130();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DCE98);
    }
  }
}

uint64_t sub_252484534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v158 = a2;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDA78, &qword_25269F0E0);
  MEMORY[0x28223BE20](v155);
  v157 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v156 = &v126 - v5;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE430, &qword_25269F0E8);
  MEMORY[0x28223BE20](v154);
  v134 = &v126 - v6;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE438, &qword_25269F0F0);
  MEMORY[0x28223BE20](v145);
  v139 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v126 - v9;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE440, &qword_25269F0F8);
  MEMORY[0x28223BE20](v143);
  v12 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v159 = (&v126 - v14);
  v142 = sub_252690850();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v16 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v137 = &v126 - v18;
  MEMORY[0x28223BE20](v19);
  v140 = &v126 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE448, &qword_25269F100);
  MEMORY[0x28223BE20](v21);
  v138 = &v126 - v22;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE450, &qword_25269F108);
  MEMORY[0x28223BE20](v135);
  v144 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v136 = &v126 - v25;
  MEMORY[0x28223BE20](v26);
  v160 = &v126 - v27;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE458, &qword_25269F110);
  MEMORY[0x28223BE20](v150);
  v149 = &v126 - v28;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE460, &qword_25269F118);
  MEMORY[0x28223BE20](v151);
  v133 = &v126 - v29;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE468, &qword_25269F120);
  MEMORY[0x28223BE20](v131);
  v132 = &v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = (&v126 - v32);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE470, &qword_25269F128);
  MEMORY[0x28223BE20](v147);
  v35 = &v126 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v126 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE478, &qword_25269F130);
  MEMORY[0x28223BE20](v39 - 8);
  v153 = &v126 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v152 = &v126 - v42;
  v43 = _s9ColorWellVMa(0);
  v44 = *(a1 + *(v43 + 20));
  __asm { FMOV            V0.2D, #16.0 }

  v164 = _Q0;
  if (v44)
  {
    v129 = v44;
    v132 = v43;
    v50 = sub_252690D30();
    v133 = v12;
    v162 = v50;
    v51 = *(v50 + 20);
    v163 = *MEMORY[0x277CE0118];
    v52 = v163;
    v53 = sub_252691260();
    v128 = a1;
    v161 = v53;
    v54 = *(v53 - 8);
    v130 = *(v54 + 104);
    v131 = v54 + 104;
    v148 = (v53 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v55 = v138;
    v130(&v138[v51], v52, v53);
    *v55 = v164;

    sub_252692880();
    *(v55 + *(v21 + 56)) = 256;
    KeyPath = swift_getKeyPath();
    v56 = v137;
    sub_25268A1D0(v137);
    v57 = *MEMORY[0x277CDF3D0];
    v58 = v141;
    v146 = v10;
    v126 = *(v141 + 104);
    v59 = v16;
    v60 = v142;
    v126(v16, v57, v142);
    sub_252485A0C();
    LOBYTE(v52) = sub_252692B70();
    v61 = *(v58 + 8);
    v61(v59, v60);
    v61(v56, v60);
    if (v52)
    {
      v62 = *MEMORY[0x277CDF3C0];
    }

    else
    {
      v62 = v57;
    }

    v63 = v140;
    v126(v140, v62, v60);
    v64 = v136;
    v65 = &v136[*(v135 + 36)];
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBF00, &unk_25269F1C0);
    (*(v58 + 32))(v65 + *(v66 + 28), v63, v60);
    *v65 = KeyPath;
    sub_2523714D4(v55, v64, &qword_27F4DE448, &qword_25269F100);
    v67 = v160;
    sub_2523714D4(v64, v160, &qword_27F4DE450, &qword_25269F108);
    v68 = v161;
    v69 = v162;
    v70 = v159;
    v71 = v163;
    v72 = v130;
    v130(v159 + *(v162 + 20), v163, v161);
    *v70 = v164;
    v73 = v147;
    v74 = v129;
    *(v70 + *(v147 + 52)) = v129;
    *(v70 + *(v73 + 56)) = 256;
    *(v70 + *(v143 + 36)) = 1.0 - *(v128 + *(v132 + 24));
    v75 = v146;
    v76 = &v146[*(v145 + 36)];
    v72(&v76[*(v69 + 20)], v71, v68);
    *v76 = v164;
    *&v76[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC2D8, &qword_25269CB00) + 36)] = 256;
    *v75 = v74;
    *(v75 + 8) = 256;
    v77 = v144;
    sub_25237153C(v67, v144, &qword_27F4DE450, &qword_25269F108);
    v78 = v133;
    sub_25237153C(v70, v133, &qword_27F4DE440, &qword_25269F0F8);
    v79 = v75;
    v80 = v139;
    sub_25237153C(v79, v139, &qword_27F4DE438, &qword_25269F0F0);
    v81 = v134;
    sub_25237153C(v77, v134, &qword_27F4DE450, &qword_25269F108);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE4B0, &qword_25269F1D0);
    sub_25237153C(v78, v81 + *(v82 + 48), &qword_27F4DE440, &qword_25269F0F8);
    sub_25237153C(v80, v81 + *(v82 + 64), &qword_27F4DE438, &qword_25269F0F0);

    sub_252372288(v80, &qword_27F4DE438, &qword_25269F0F0);
    sub_252372288(v78, &qword_27F4DE440, &qword_25269F0F8);
    sub_252372288(v77, &qword_27F4DE450, &qword_25269F108);
    sub_25237153C(v81, v149, &qword_27F4DE430, &qword_25269F0E8);
    swift_storeEnumTagMultiPayload();
    v83 = MEMORY[0x277CE14C0];
    sub_252400FC8(&qword_27F4DE498, &qword_27F4DE430, &qword_25269F0E8, MEMORY[0x277CE14C0]);
    sub_252400FC8(&qword_27F4DE4A0, &qword_27F4DE460, &qword_25269F118, v83);
    v84 = v152;
    sub_252691470();
    sub_252372288(v81, &qword_27F4DE430, &qword_25269F0E8);
    sub_252372288(v146, &qword_27F4DE438, &qword_25269F0F0);
    sub_252372288(v159, &qword_27F4DE440, &qword_25269F0F8);
    v85 = v160;
    v86 = &qword_27F4DE450;
    v87 = &qword_25269F108;
  }

  else
  {
    v88 = sub_252690D30();
    v89 = *(v88 + 20);
    v90 = *MEMORY[0x277CE0118];
    v91 = sub_252691260();
    v92 = *(*(v91 - 8) + 104);
    v148 = (v91 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v92(&v38[v89], v90, v91);
    *v38 = v164;
    v93 = sub_2526922D0();
    v94 = v147;
    *&v38[*(v147 + 52)] = v93;
    *&v38[*(v94 + 56)] = 256;
    v161 = v91;
    v162 = v88;
    v95 = v33 + *(v88 + 20);
    v163 = v90;
    v92(v95, v90, v91);
    __asm { FMOV            V0.2D, #1.5 }

    *v33 = _Q0;
    sub_252692920();
    sub_2526909C0();
    v97 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE480, &qword_25269F138) + 36));
    v98 = v166;
    *v97 = v165;
    v97[1] = v98;
    v97[2] = v167;
    v99 = sub_2526922A0();
    v100 = swift_getKeyPath();
    v101 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE488, &qword_25269F170) + 36));
    *v101 = v100;
    v101[1] = v99;
    sub_252692A40();
    v102 = (v33 + *(v131 + 36));
    *v102 = 0xBFE921FB54442D18;
    v102[1] = v103;
    v102[2] = v104;
    sub_25237153C(v38, v35, &qword_27F4DE470, &qword_25269F128);
    v105 = v132;
    sub_25237153C(v33, v132, &qword_27F4DE468, &qword_25269F120);
    v106 = v133;
    sub_25237153C(v35, v133, &qword_27F4DE470, &qword_25269F128);
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE490, &unk_25269F178);
    sub_25237153C(v105, v106 + *(v107 + 48), &qword_27F4DE468, &qword_25269F120);
    sub_252372288(v105, &qword_27F4DE468, &qword_25269F120);
    sub_252372288(v35, &qword_27F4DE470, &qword_25269F128);
    sub_25237153C(v106, v149, &qword_27F4DE460, &qword_25269F118);
    swift_storeEnumTagMultiPayload();
    v108 = MEMORY[0x277CE14C0];
    sub_252400FC8(&qword_27F4DE498, &qword_27F4DE430, &qword_25269F0E8, MEMORY[0x277CE14C0]);
    sub_252400FC8(&qword_27F4DE4A0, &qword_27F4DE460, &qword_25269F118, v108);
    v84 = v152;
    sub_252691470();
    sub_252372288(v106, &qword_27F4DE460, &qword_25269F118);
    sub_252372288(v33, &qword_27F4DE468, &qword_25269F120);
    v85 = v38;
    v86 = &qword_27F4DE470;
    v87 = &qword_25269F128;
  }

  sub_252372288(v85, v86, v87);
  sub_252690D30();
  v109 = *(v162 + 20);
  sub_252691260();
  v110 = v156;
  (*(*(v161 - 8) + 104))(&v156[v109], v163);
  *v110 = v164;
  sub_2526908F0();
  v111 = v110 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDAC8, &qword_25269DE00) + 36);
  v112 = v169;
  *v111 = v168;
  *(v111 + 1) = v112;
  *(v111 + 4) = v170;
  v113 = sub_2526922F0();
  v114 = swift_getKeyPath();
  v115 = (v110 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDAD0, &qword_25269DE38) + 36));
  *v115 = v114;
  v115[1] = v113;
  *(v110 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDAD8, &qword_25269DE40) + 36)) = 0x3FC3333333333333;
  LOBYTE(v113) = sub_252691A20();
  sub_252690760();
  v116 = v110 + *(v155 + 36);
  *v116 = v113;
  *(v116 + 1) = v117;
  *(v116 + 2) = v118;
  *(v116 + 3) = v119;
  *(v116 + 4) = v120;
  v116[40] = 0;
  v121 = v153;
  sub_25237153C(v84, v153, &qword_27F4DE478, &qword_25269F130);
  v122 = v157;
  sub_25237153C(v110, v157, &qword_27F4DDA78, &qword_25269F0E0);
  v123 = v158;
  sub_25237153C(v121, v158, &qword_27F4DE478, &qword_25269F130);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE4A8, &qword_25269F188);
  sub_25237153C(v122, v123 + *(v124 + 48), &qword_27F4DDA78, &qword_25269F0E0);
  sub_252372288(v110, &qword_27F4DDA78, &qword_25269F0E0);
  sub_252372288(v84, &qword_27F4DE478, &qword_25269F130);
  sub_252372288(v122, &qword_27F4DDA78, &qword_25269F0E0);
  return sub_252372288(v121, &qword_27F4DE478, &qword_25269F130);
}

uint64_t sub_252485658@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_252692920();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE428, &qword_25269F0D8);
  return sub_252484534(v2, a2 + *(v5 + 44));
}

double sub_2524856A4@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_252691C70();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMinX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMaxY(v15);
  sub_252691C50();
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetMaxX(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMinY(v17);
  sub_252691C60();
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMinX(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMinY(v19);
  sub_252691C60();
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMinX(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMaxY(v21);
  sub_252691C60();
  sub_252691C40();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

uint64_t (*sub_252485824(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2526906F0();
  return sub_2524858AC;
}

void sub_2524858AC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_2524858F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252485BC0();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_25248595C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252485BC0();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_2524859C0(uint64_t a1)
{
  v2 = sub_252485BC0();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_252485A0C()
{
  result = qword_27F4DD890;
  if (!qword_27F4DD890)
  {
    sub_252690850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DD890);
  }

  return result;
}

unint64_t sub_252485ABC()
{
  result = qword_27F4DE4D8;
  if (!qword_27F4DE4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE4D8);
  }

  return result;
}

unint64_t sub_252485B14()
{
  result = qword_27F4DE4E0;
  if (!qword_27F4DE4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE4E0);
  }

  return result;
}

unint64_t sub_252485B6C()
{
  result = qword_27F4DE4E8;
  if (!qword_27F4DE4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE4E8);
  }

  return result;
}

unint64_t sub_252485BC0()
{
  result = qword_27F4DE4F0;
  if (!qword_27F4DE4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE4F0);
  }

  return result;
}

double sub_252485C14@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  result = v4;
  *a2 = v4;
  return result;
}

void sub_252485C94(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_252690690();
  sub_252485FC4();
}

void sub_252485D14(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  *a2 = v3;
}

uint64_t sub_252485D94(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_252690690();
  return sub_252486A58(v3);
}

uint64_t sub_252485E74()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  return v1;
}

uint64_t sub_252485EE8(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v2 = sub_2523E5350(v4, a1);

  if ((v2 & 1) == 0)
  {
    sub_25248A1B4(a1);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_252690690();
}

void sub_252485FC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v9 = v20;
  if (v20 <= 0.0)
  {
    v9 = 0.0;
  }

  if (v9 <= 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  if (v20 == v10)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_252690680();

    v11 = sub_25268ED20();
    v12 = *(*(v11 - 8) + 56);
    v12(v2, 0, 1, v11);
    v12(v8, 1, 1, v11);
    v13 = type metadata accessor for AccessoryControl.ColorState(0);
    v14 = &v8[*(v13 + 20)];
    sub_2523F62D8(v2, v8);
    *v14 = v10;
    v14[8] = 0;
    (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_25237153C(v8, v5, &qword_27F4DB2A0, &qword_25269E4A0);

    sub_252690690();
    sub_252372288(v8, &qword_27F4DB2A0, &qword_25269E4A0);
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v15 = sub_2526905A0();
    __swift_project_value_buffer(v15, qword_27F4E4B18);
    v16 = sub_252690580();
    v17 = sub_252692F10();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134349056;
      *(v18 + 4) = v10;
      _os_log_impl(&dword_252309000, v16, v17, "ColorPickerState updated brightness %{public}f", v18, 0xCu);
      MEMORY[0x2530A5A40](v18, -1, -1);
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = v10;

    sub_252690690();
    sub_252485FC4();
  }
}

double sub_2524863F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  return v1;
}

void sub_252486464(uint64_t a1)
{
  v2 = sub_25268ED20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  MEMORY[0x28223BE20](v8 - 8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = sub_252489FE0(a1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  if (v13 != v37)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = a1;
    sub_252690680();

    v15 = v37;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v37) = v13;

    sub_252690690();
    v16 = v15;
    a1 = v14;
    sub_252486A58(v16);
  }

  v33 = a1;
  v17 = *(v3 + 16);
  v17(v7, a1, v2);
  v36 = v3;
  v18 = *(v3 + 56);
  v18(v7, 0, 1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v19 = v37;
  v18(v12, 1, 1, v2);
  v20 = type metadata accessor for AccessoryControl.ColorState(0);
  v21 = &v12[*(v20 + 20)];
  sub_2523F62D8(v7, v12);
  *v21 = v19;
  v21[8] = 0;
  (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25237153C(v12, v34, &qword_27F4DB2A0, &qword_25269E4A0);

  sub_252690690();
  sub_252372288(v12, &qword_27F4DB2A0, &qword_25269E4A0);
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v22 = sub_2526905A0();
  __swift_project_value_buffer(v22, qword_27F4E4B18);
  v23 = v35;
  v17(v35, v33, v2);
  v24 = sub_252690580();
  v25 = sub_252692F10();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v37 = v27;
    *v26 = 136446210;
    v28 = LightbulbColor.description.getter();
    v30 = v29;
    (*(v36 + 8))(v23, v2);
    v31 = sub_2525BDA90(v28, v30, &v37);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_252309000, v24, v25, "ColorPickerState updated selectedColor %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x2530A5A40](v27, -1, -1);
    MEMORY[0x2530A5A40](v26, -1, -1);
  }

  else
  {

    (*(v36 + 8))(v23, v2);
  }
}

double sub_2524869E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  return result;
}

uint64_t sub_252486A58(char a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v46);
  KeyPath = (&v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v5 = &v44 - v4;
  v6 = sub_25268ED20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v44 - v10;
  MEMORY[0x28223BE20](v11);
  v45 = &v44 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v19 = sub_2526905A0();
  __swift_project_value_buffer(v19, qword_27F4E4B18);

  v20 = sub_252690580();
  v21 = sub_252692F10();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v48 = v18;
    v23 = v5;
    v24 = v22;
    *v22 = 67109376;
    *(v22 + 4) = a1 & 1;
    *(v22 + 8) = 1026;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_252690680();

    *(v24 + 10) = v51;

    _os_log_impl(&dword_252309000, v20, v21, "ColorPickerState set adaptiveLightEnabled %{BOOL}d %{BOOL,public}d", v24, 0xEu);
    v25 = v24;
    v5 = v23;
    v18 = v48;
    MEMORY[0x2530A5A40](v25, -1, -1);
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  v26 = *(v7 + 16);
  v26(v15, v18, v6);
  v27 = (*(v7 + 88))(v15, v6);
  v28 = *MEMORY[0x277D15B30];
  if (v27 == v28)
  {
    (*(v7 + 96))(v15, v6);
    v29 = swift_projectBox();
    sub_25237153C(v29, v5, &qword_27F4DB2A8, &unk_2526960B0);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_252690680();

    if (v52 == 1)
    {
      sub_252372288(v5, &qword_27F4DB2A8, &unk_2526960B0);
      return (*(v7 + 8))(v18, v6);
    }

    else
    {
      v37 = KeyPath;
      sub_25237153C(v5, KeyPath, &qword_27F4DB2A8, &unk_2526960B0);
      if ((*(v7 + 48))(v37, 1, v6) == 1)
      {
        sub_252372288(v37, &qword_27F4DB2A8, &unk_2526960B0);
        v38 = sub_25268ED00();
        KeyPath = v5;
        v39 = v50;
        *v50 = v38;
        (*(v7 + 104))(v39, *MEMORY[0x277D15B28], v6);
        sub_252486464(v39);
        swift_getKeyPath();
        swift_getKeyPath();
        v26(v49, v39, v6);

        sub_252690690();
        v40 = *(v7 + 8);
        v40(v39, v6);
        v41 = KeyPath;
      }

      else
      {
        v42 = v45;
        (*(v7 + 32))(v45, v37, v6);
        v43 = v50;
        v26(v50, v42, v6);
        sub_252486464(v43);
        KeyPath = swift_getKeyPath();
        swift_getKeyPath();
        v26(v49, v43, v6);

        sub_252690690();
        v40 = *(v7 + 8);
        v40(v43, v6);
        v40(v42, v6);
        v41 = v5;
      }

      sub_252372288(v41, &qword_27F4DB2A8, &unk_2526960B0);
      return (v40)(v18, v6);
    }
  }

  else
  {
    KeyPath = v26;
    v31 = *(v7 + 8);
    v31(v15, v6);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_252690680();

    if (v53 == 1)
    {
      v32 = swift_allocBox();
      v34 = v33;
      v48 = v18;
      (KeyPath)(v33, v18, v6);
      (*(v7 + 56))(v34, 0, 1, v6);
      v35 = v50;
      *v50 = v32;
      (*(v7 + 104))(v35, v28, v6);
      sub_252486464(v35);
      swift_getKeyPath();
      swift_getKeyPath();
      (KeyPath)(v49, v35, v6);

      sub_252690690();
      v31(v35, v6);
      v36 = v48;
    }

    else
    {
      v36 = v18;
    }

    return (v31)(v36, v6);
  }
}

uint64_t sub_252487280()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  return v1;
}

char *sub_2524872F4(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v113 = a2;
  v117 = a1;
  v6 = sub_25268ED20();
  v7 = *(v6 - 8);
  v114 = v6;
  v115 = v7;
  MEMORY[0x28223BE20](v6);
  v116 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v109 = &v104 - v10;
  MEMORY[0x28223BE20](v11);
  v112 = &v104 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE560, &qword_25269F528);
  v107 = *(v13 - 8);
  v108 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v104 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  MEMORY[0x28223BE20](v16);
  v111 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v104 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v104 - v22;
  v24 = *a3;
  *&v118 = a3[1];
  v25 = a3[2];
  v3[OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_supportsColorTemperature] = 1;
  v26 = OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState__colorState;
  v27 = type metadata accessor for AccessoryControl.ColorState(0);
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  sub_25237153C(v23, v20, &qword_27F4DB2A0, &qword_25269E4A0);
  sub_252690660();
  sub_252372288(v23, &qword_27F4DB2A0, &qword_25269E4A0);
  v28 = v107;
  v29 = v108;
  (*(v107 + 32))(&v4[v26], v15, v108);
  swift_beginAccess();
  v119 = *&v117;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB1B8, &qword_25269F360);
  sub_252690660();
  swift_endAccess();
  v30 = &v4[OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_deviceConfig];
  v104 = v24;
  v31 = v118;
  *v30 = v24;
  v30[1] = v31;
  v30[2] = v25;
  v32 = v113;
  sub_25237153C(v113, &v4[OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_initialColorState], &qword_27F4DB2A0, &qword_25269E4A0);
  sub_25237153C(v32, v23, &qword_27F4DB2A0, &qword_25269E4A0);
  v110 = v25;

  v105 = v23;
  v106 = v16;
  sub_252690660();
  v33 = OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState__colorState;
  swift_beginAccess();
  (*(v28 + 40))(&v4[v33], v15, v29);
  swift_endAccess();
  v34 = v112;
  sub_25248803C(v32, v112);
  v36 = v114;
  v35 = v115;
  v37 = *(v115 + 16);
  v38 = v109;
  v37(v109, v34, v114);
  swift_beginAccess();
  v37(v116, v38, v36);
  sub_252690660();
  v39 = *(v35 + 8);
  v115 = v35 + 8;
  v108 = v39;
  v39(v38, v36);
  swift_endAccess();
  LOBYTE(v33) = sub_252489FE0(v34);
  swift_beginAccess();
  LOBYTE(v119) = v33 & 1;
  sub_252690660();
  swift_endAccess();
  v40 = sub_252488424(v32);
  swift_beginAccess();
  v119 = v40;
  v109 = v4;
  sub_252690660();
  swift_endAccess();
  if (qword_27F4DABD0 != -1)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v41 = sub_2526905A0();
    v42 = __swift_project_value_buffer(v41, qword_27F4E4B18);
    v43 = v32;
    v32 = v111;
    sub_25237153C(v43, v111, &qword_27F4DB2A0, &qword_25269E4A0);
    v44 = v110;

    v116 = v42;
    v45 = sub_252690580();
    v46 = sub_252692F10();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 136446466;
      v119 = *&v48;
      v120[0] = v104;
      v120[1] = v118;
      v120[2] = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE580, &qword_25269F558);
      v49 = sub_252692C00();
      v51 = sub_2525BDA90(v49, v50, &v119);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2082;
      sub_25237153C(v32, v105, &qword_27F4DB2A0, &qword_25269E4A0);
      v52 = sub_252692C00();
      v54 = v53;
      sub_252372288(v32, &qword_27F4DB2A0, &qword_25269E4A0);
      v55 = sub_2525BDA90(v52, v54, &v119);

      *(v47 + 14) = v55;
      _os_log_impl(&dword_252309000, v45, v46, "ColorPickerState init: deviceConfig %{public}s colorState %{public}s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A5A40](v48, -1, -1);
      MEMORY[0x2530A5A40](v47, -1, -1);
    }

    else
    {

      sub_252372288(v32, &qword_27F4DB2A0, &qword_25269E4A0);
    }

    v56 = v117;
    *&v118 = v117[2];
    if (v118)
    {
      v57 = 0;
      v58 = 0;
      while (1)
      {
        v59 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          break;
        }

        v60 = __OFADD__(v58, 5);
        v58 += 5;
        if (v60)
        {
          v58 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v57;
        if (v58 >= v118)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_74;
    }

    v59 = 0;
LABEL_13:
    v120[0] = MEMORY[0x277D84F90];
    result = sub_25237047C(0, v59 & ~(v59 >> 63), 0);
    if (v59 < 0)
    {
      break;
    }

    v62 = v120[0];
    if (v59)
    {
      v63 = v56[2];
      v64 = 0;
      v65 = 0;
      v107 = sub_25268F860();
      v110 = *(v107 - 8);
      v105 = *(v110 + 80);
      v111 = (v105 + 32) & ~v105;
      v106 = v56 + v111;
      v66 = 5;
      while (1)
      {
        v67 = v63 >= v66 ? v66 : v63;
        if (v65 >= v118)
        {
          break;
        }

        if (v65 == 0x7FFFFFFFFFFFFFFDLL)
        {
          goto LABEL_75;
        }

        v32 = v65 + 5;
        if (v63 >= (v65 + 5))
        {
          v68 = v65 + 5;
        }

        else
        {
          v68 = v63;
        }

        if (v68 < v65)
        {
          goto LABEL_76;
        }

        v69 = v67 + v64;
        if (v67 + v64 == v56[2])
        {

          v70 = v56;
        }

        else
        {
          v70 = MEMORY[0x277D84F90];
          if (v65 != v68)
          {
            if (v69 >= 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB188, &qword_25269F550);
              v73 = *(v110 + 72);
              v70 = swift_allocObject();
              result = _swift_stdlib_malloc_size_0(v70);
              if (!v73)
              {
                goto LABEL_82;
              }

              v74 = v111;
              if (&result[-v111] == 0x8000000000000000 && v73 == -1)
              {
                goto LABEL_84;
              }

              v70[2] = v69;
              v70[3] = 2 * (&result[-v74] / v73);
            }

            swift_arrayInitWithCopy();
          }
        }

        v120[0] = v62;
        v72 = *(v62 + 16);
        v71 = *(v62 + 24);
        if (v72 >= v71 >> 1)
        {
          sub_25237047C((v71 > 1), v72 + 1, 1);
          v62 = v120[0];
        }

        *(v62 + 16) = v72 + 1;
        *(v62 + 8 * v72 + 32) = v70;
        v66 += 5;
        v64 -= 5;
        v65 += 5;
        --v59;
        v56 = v117;
        if (!v59)
        {
          goto LABEL_41;
        }
      }

LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v32 = 0;
LABEL_41:
    if (v32 >= v118)
    {
LABEL_67:

      v92 = *(v62 + 16);
      if (v92)
      {
        v93 = 0;
        *&v91 = 134218242;
        v118 = v91;
        do
        {

          v94 = sub_252690580();
          v95 = sub_252692F10();

          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v120[0] = v97;
            *v96 = v118;
            *(v96 + 4) = v93;
            *(v96 + 12) = 2082;
            v98 = sub_25268F860();

            v100 = MEMORY[0x2530A4900](v99, v98);
            v102 = v101;

            v103 = sub_2525BDA90(v100, v102, v120);

            *(v96 + 14) = v103;
            _os_log_impl(&dword_252309000, v94, v95, "ColorPickerState favorites, part %ld: %{public}s", v96, 0x16u);
            __swift_destroy_boxed_opaque_existential_1Tm(v97);
            MEMORY[0x2530A5A40](v97, -1, -1);
            MEMORY[0x2530A5A40](v96, -1, -1);
          }

          ++v93;
        }

        while (v92 != v93);
      }

      sub_252372288(v113, &qword_27F4DB2A0, &qword_25269E4A0);
      v108(v112, v114);
      return v109;
    }

    v76 = -v32;
    v77 = v32 + 5;
    v78 = v32;
    while (1)
    {
      v79 = v78 + 5;
      if (__OFADD__(v78, 5))
      {
        break;
      }

      v80 = v56[2];
      if (v80 >= v79)
      {
        v81 = v78 + 5;
      }

      else
      {
        v81 = v56[2];
      }

      if (v81 < v78)
      {
        goto LABEL_78;
      }

      if (v32 < 0)
      {
        goto LABEL_79;
      }

      if (v80 >= v77)
      {
        v82 = v77;
      }

      else
      {
        v82 = v56[2];
      }

      v83 = v82 + v76;
      if (v82 + v76 == v80)
      {

        v84 = v56;
      }

      else
      {
        v84 = MEMORY[0x277D84F90];
        if (v78 != v81)
        {
          if (v83 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB188, &qword_25269F550);
            v87 = *(sub_25268F860() - 8);
            v88 = *(v87 + 72);
            v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
            v84 = swift_allocObject();
            result = _swift_stdlib_malloc_size_0(v84);
            if (!v88)
            {
              goto LABEL_83;
            }

            if (&result[-v89] == 0x8000000000000000 && v88 == -1)
            {
              goto LABEL_85;
            }

            v84[2] = v83;
            v84[3] = 2 * (&result[-v89] / v88);
          }

          sub_25268F860();
          swift_arrayInitWithCopy();
        }
      }

      v120[0] = v62;
      v86 = *(v62 + 16);
      v85 = *(v62 + 24);
      if (v86 >= v85 >> 1)
      {
        sub_25237047C((v85 > 1), v86 + 1, 1);
        v62 = v120[0];
      }

      *(v62 + 16) = v86 + 1;
      *(v62 + 8 * v86 + 32) = v84;
      v78 += 5;
      v76 -= 5;
      v77 += 5;
      v56 = v117;
      if (v79 >= v118)
      {
        goto LABEL_67;
      }
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    swift_once();
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

uint64_t sub_25248803C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_25268ED20();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25237153C(a1, v6, &qword_27F4DB2A0, &qword_25269E4A0);
  v14 = type metadata accessor for AccessoryControl.ColorState(0);
  if ((*(*(v14 - 8) + 48))(v6, 1, v14) == 1)
  {
    sub_252372288(v6, &qword_27F4DB2A0, &qword_25269E4A0);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  else
  {
    sub_25237153C(v6, v9, &qword_27F4DB2A8, &unk_2526960B0);
    sub_2523F627C(v6);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      v22 = *(v11 + 32);
      v22(v13, v9, v10);
      return (v22)(a2, v13, v10);
    }
  }

  sub_252372288(v9, &qword_27F4DB2A8, &unk_2526960B0);
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v15 = sub_2526905A0();
  __swift_project_value_buffer(v15, qword_27F4E4B18);
  v16 = sub_252690580();
  v17 = sub_252692EF0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_252309000, v16, v17, "ColorPickerState selectedColor is nil. Defaulting to yellow.", v18, 2u);
    MEMORY[0x2530A5A40](v18, -1, -1);
  }

  if (qword_27F4DAA78 != -1)
  {
    swift_once();
  }

  v19 = sub_252690550();
  v20 = __swift_project_value_buffer(v19, qword_27F4DE600);
  (*(*(v19 - 8) + 16))(a2, v20, v19);
  return (*(v11 + 104))(a2, *MEMORY[0x277D15B40], v10);
}

double sub_252488424(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  sub_25237153C(a1, &v14 - v3, &qword_27F4DB2A0, &qword_25269E4A0);
  v5 = type metadata accessor for AccessoryControl.ColorState(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_252372288(v4, &qword_27F4DB2A0, &qword_25269E4A0);
  }

  else
  {
    v6 = &v4[*(v5 + 20)];
    v7 = *v6;
    v8 = v6[8];
    sub_2523F627C(v4);
    if (v8 != 1)
    {
      return v7;
    }
  }

  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v9 = sub_2526905A0();
  __swift_project_value_buffer(v9, qword_27F4E4B18);
  v10 = sub_252690580();
  v11 = sub_252692EF0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_252309000, v10, v11, "ColorPickerState brightness is nil. Defaulting to 1.0.", v12, 2u);
    MEMORY[0x2530A5A40](v12, -1, -1);
  }

  return 1.0;
}

uint64_t sub_252488600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_25268E8D0();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_25268E040();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  sub_252692E00();
  v4[9] = sub_252692DF0();
  v8 = sub_252692DE0();
  v4[10] = v8;
  v4[11] = v7;

  return MEMORY[0x2822009F8](sub_252488750, v8, v7);
}

uint64_t sub_252488750()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_25268E1B0();
  v4 = sub_25268E1A0();
  sub_25268E140();

  sub_25268E870();
  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_25248884C;
  v6 = v0[2];

  return MEMORY[0x28216E678](v6);
}

uint64_t sub_25248884C()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_25248896C, v3, v2);
}

uint64_t sub_25248896C()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_252488A04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for AccessoryControl.ColorState(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  sub_25237153C(v0 + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_initialColorState, v9, &qword_27F4DB2A0, &qword_25269E4A0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_252372288(v9, &qword_27F4DB2A0, &qword_25269E4A0);
  }

  v28 = v3;
  sub_2523F6218(v9, v16);
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v29 = v0;
  v18 = sub_2526905A0();
  __swift_project_value_buffer(v18, qword_27F4E4B18);
  sub_252489B88(v16, v13);
  v19 = sub_252690580();
  v20 = sub_252692F10();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v30 = v27;
    *v21 = 136446210;
    v22 = AccessoryControl.ColorState.description.getter();
    v24 = v23;
    sub_2523F627C(v13);
    v25 = sub_2525BDA90(v22, v24, &v30);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_252309000, v19, v20, "ColorPickerState reverting to initial state %{public}s", v21, 0xCu);
    v26 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x2530A5A40](v26, -1, -1);
    MEMORY[0x2530A5A40](v21, -1, -1);
  }

  else
  {

    sub_2523F627C(v13);
  }

  sub_252489B88(v16, v6);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25237153C(v6, v28, &qword_27F4DB2A0, &qword_25269E4A0);

  sub_252690690();
  sub_252372288(v6, &qword_27F4DB2A0, &qword_25269E4A0);
  return sub_2523F627C(v16);
}

uint64_t sub_252488DD8(uint64_t a1)
{
  v3 = sub_25268ED20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = sub_25268F860();
  v7 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v48 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v32[-v11];
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(v1 + 2);
    v15 = *(v1 + 4);
    v16 = *(v1 + 6);
    v33 = *(v1 + 8);
    v34 = v15;
    v17 = *(v1 + 10);
    v20 = *(v7 + 16);
    v18 = v7 + 16;
    v19 = v20;
    v40 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v21 = a1 + v40;
    v22 = *(v18 + 56);
    v50 = (v4 + 88);
    v49 = *MEMORY[0x277D15B40];
    v43 = *MEMORY[0x277D15B38];
    v38 = *MEMORY[0x277D15B28];
    v37 = *MEMORY[0x277D15B30];
    v36 = (v4 + 96);
    v46 = v14;
    v35 = v14 | v16 | v17;
    v44 = (v18 - 8);
    v45 = (v4 + 8);
    v47 = (v18 + 16);
    v23 = MEMORY[0x277D84F90];
    v41 = v18;
    v42 = v3;
    v39 = v20;
    v20(v12, v21, v51, v10);
    while (1)
    {
      sub_25268F850();
      v25 = (*v50)(v6, v3);
      if (v25 == v49)
      {
        break;
      }

      if (v25 == v43)
      {
        goto LABEL_9;
      }

      if (v25 != v38)
      {
        if (v25 != v37)
        {
          result = sub_2526933A0();
          __break(1u);
          return result;
        }

        (*v45)(v6, v3);
LABEL_3:
        (*v44)(v12, v51);
        goto LABEL_4;
      }

      (*v36)(v6, v3);
      if ((v35 & 1) == 0)
      {
        v30 = *v6;
        if (v30 < v34 || v33 < v30)
        {
          goto LABEL_3;
        }
      }

LABEL_10:
      v26 = *v47;
      (*v47)(v48, v12, v51);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_252370438(0, *(v23 + 16) + 1, 1);
        v23 = v52;
      }

      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_252370438((v28 > 1), v29 + 1, 1);
        v23 = v52;
      }

      *(v23 + 16) = v29 + 1;
      v26(v23 + v40 + v29 * v22, v48, v51);
      v3 = v42;
      v19 = v39;
LABEL_4:
      v21 += v22;
      if (!--v13)
      {
        return v23;
      }

      v19(v12, v21, v51, v24);
    }

    (*v45)(v6, v3);
LABEL_9:
    if (!v46)
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2524891E4()
{
  sub_252372288(v0 + OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState_initialColorState, &qword_27F4DB2A0, &qword_25269E4A0);

  v1 = OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState__colorState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE560, &qword_25269F528);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState__favoriteColors;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE568, &qword_25269F530);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState__brightness;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE570, &qword_25269F538);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState__selectedColor;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE578, &unk_25269F540);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtCV22HomeAccessoryControlUI11ColorPicker16ColorPickerState__adaptiveLightEnabled;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC1B0, &qword_252697DE8);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t _s16ColorPickerStateCMa(uint64_t a1)
{
  result = qword_27F4DE528;
  if (!qword_27F4DE528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252489444(uint64_t a1)
{
  sub_252489714(319, &qword_27F4DE538, type metadata accessor for AccessoryControl.ColorState, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2524896C0(319, &qword_27F4DE540, &qword_27F4DB2A0, &qword_25269E4A0);
    if (v2 <= 0x3F)
    {
      sub_2524896C0(319, &qword_27F4DE548, &qword_27F4DB1B8, &qword_25269F360);
      if (v3 <= 0x3F)
      {
        sub_25242CA60(319, &qword_27F4DE550, MEMORY[0x277D839F8]);
        if (v4 <= 0x3F)
        {
          sub_252489714(319, &qword_27F4DE558, MEMORY[0x277D15B48], MEMORY[0x277CBCED0]);
          if (v5 <= 0x3F)
          {
            sub_25242CA60(319, &qword_27F4DC340, MEMORY[0x277D839B0]);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_2524896C0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2526906B0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_252489714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_252489778@<X0>(uint64_t *a2@<X8>)
{
  _s16ColorPickerStateCMa(0);
  result = sub_252690630();
  *a2 = result;
  return result;
}

uint64_t sub_2524897B8(uint64_t a1)
{
  v3 = sub_25268ED20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v34[-v8];
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v34[-v12];
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = *(v1 + 2);
    v16 = *(v1 + 4);
    v17 = *(v1 + 6);
    v35 = *(v1 + 8);
    v36 = v16;
    v18 = *(v1 + 10);
    v21 = *(v4 + 16);
    v19 = v4 + 16;
    v20 = v21;
    v41 = (*(v19 + 64) + 32) & ~*(v19 + 64);
    v22 = a1 + v41;
    v23 = *(v19 + 56);
    v49 = (v19 + 72);
    v48 = *MEMORY[0x277D15B40];
    v45 = *MEMORY[0x277D15B38];
    v40 = *MEMORY[0x277D15B28];
    v39 = *MEMORY[0x277D15B30];
    v50 = (v19 - 8);
    v38 = (v19 + 80);
    v46 = v15;
    v37 = v15 | v17 | v18;
    v47 = (v19 + 16);
    v24 = MEMORY[0x277D84F90];
    v43 = v6;
    v44 = v19;
    v42 = v21;
    (v21)(v13, v22, v3, v11);
    while (1)
    {
      v20(v9, v13, v3);
      v26 = (*v49)(v9, v3);
      if (v26 == v48)
      {
        break;
      }

      if (v26 == v45)
      {
        goto LABEL_9;
      }

      if (v26 != v40)
      {
        if (v26 != v39)
        {
          result = sub_2526933A0();
          __break(1u);
          return result;
        }

        (*v50)(v9, v3);
LABEL_3:
        (*v50)(v13, v3);
        goto LABEL_4;
      }

      (*v38)(v9, v3);
      if ((v37 & 1) == 0)
      {
        v32 = *v9;
        if (v32 < v36 || v35 < v32)
        {
          goto LABEL_3;
        }
      }

LABEL_10:
      v27 = *v47;
      (*v47)(v6, v13, v3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_252370500(0, *(v24 + 16) + 1, 1);
        v24 = v51;
      }

      v29 = v23;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_252370500((v30 > 1), v31 + 1, 1);
        v29 = v23;
        v24 = v51;
      }

      *(v24 + 16) = v31 + 1;
      v6 = v43;
      v23 = v29;
      v27(v24 + v41 + v31 * v29, v43, v3);
      v20 = v42;
LABEL_4:
      v22 += v23;
      if (!--v14)
      {
        return v24;
      }

      (v20)(v13, v22, v3, v25);
    }

    (*v50)(v9, v3);
LABEL_9:
    if (!v46)
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252489B88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.ColorState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_252489BEC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  *a2 = v3;
}

uint64_t sub_252489CAC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_25268ED20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  sub_252486464(v10);
  swift_getKeyPath();
  swift_getKeyPath();
  (v11)(v6, v10, v3);

  sub_252690690();
  return (*(v4 + 8))(v10, v3);
}

double sub_252489E38()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252690680();

  return result;
}

uint64_t sub_252489EB0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_25237153C(a1, &v10 - v7, &qword_27F4DB2A0, &qword_25269E4A0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_25237153C(v8, v5, &qword_27F4DB2A0, &qword_25269E4A0);

  sub_252690690();
  return sub_252372288(v8, &qword_27F4DB2A0, &qword_25269E4A0);
}

BOOL sub_252489FE0(uint64_t a1)
{
  v2 = sub_25268ED20();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = *MEMORY[0x277D15B30];
  (*(v3 + 8))(v6, v2);
  if (v7 == v8)
  {
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v9 = sub_2526905A0();
    __swift_project_value_buffer(v9, qword_27F4E4B18);
    v10 = sub_252690580();
    v11 = sub_252692F10();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_252309000, v10, v11, "ColorPickerState selectedColor set natural light", v12, 2u);
      MEMORY[0x2530A5A40](v12, -1, -1);
    }
  }

  return v7 == v8;
}

double sub_25248A1B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB930, &qword_2526964E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v5 = sub_2526905A0();
  __swift_project_value_buffer(v5, qword_27F4E4B18);

  v6 = sub_252690580();
  v7 = sub_252692F10();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    v10 = sub_25268F860();
    v11 = MEMORY[0x2530A4900](a1, v10);
    v13 = sub_2525BDA90(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_252309000, v6, v7, "ColorPickerState updated favorites %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x2530A5A40](v9, -1, -1);
    MEMORY[0x2530A5A40](v8, -1, -1);
  }

  v14 = sub_252692E30();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_252692E00();

  v15 = sub_252692DF0();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = a1;
  sub_2525738C0(0, 0, v4, &unk_25269F520, v16);

  return result;
}

uint64_t sub_25248A414(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2523E233C;

  return sub_252488600(a1, v4, v5, v6);
}

uint64_t LightbulbColor.toHSV.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v1 - 8);
  v36 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE618, &qword_25269F5F8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_252690550();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = sub_25268ED20();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v20, v0, v16, v18);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == *MEMORY[0x277D15B40])
  {
    (*(v17 + 96))(v20, v16);
    v22 = (*(v10 + 32))(v15, v20, v9);
    v23 = sub_25248BCB0(v22);
    (*(v10 + 8))(v15, v9);
    return *&v23;
  }

  if (v21 == *MEMORY[0x277D15B38])
  {
    (*(v17 + 96))(v20, v16);
    return *v20;
  }

  if (v21 == *MEMORY[0x277D15B28])
  {
    (*(v17 + 96))(v20, v16);
    v25 = *v20;
    if (v25 <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = *v20;
    }

    sub_25248D668(0xF4240 / v26, v8);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v33 = (*(v10 + 32))(v12, v8, v9);
      v23 = sub_25248BCB0(v33);
      (*(v10 + 8))(v12, v9);
      return *&v23;
    }

    sub_252372288(v8, &qword_27F4DE618, &qword_25269F5F8);
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v27 = sub_2526905A0();
    __swift_project_value_buffer(v27, qword_27F4E4B18);
    v28 = sub_252690580();
    v29 = sub_252692F10();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 33685760;
      *(v30 + 4) = v25;
      _os_log_impl(&dword_252309000, v28, v29, "Cannot convert color temperature:%{public}hu to a HSV value", v30, 6u);
      MEMORY[0x2530A5A40](v30, -1, -1);
    }

    return 0;
  }

  if (v21 == *MEMORY[0x277D15B30])
  {
    (*(v17 + 96))(v20, v16);
    v31 = swift_projectBox();
    sub_25248AA94(v31, v5);
    v32 = v36;
    sub_25248AA94(v5, v36);
    if ((*(v17 + 48))(v32, 1, v16) == 1)
    {
      sub_252372288(v5, &qword_27F4DB2A8, &unk_2526960B0);
      sub_252372288(v32, &qword_27F4DB2A8, &unk_2526960B0);

      return 0;
    }

    v34 = LightbulbColor.toHSV.getter();
    sub_252372288(v5, &qword_27F4DB2A8, &unk_2526960B0);
    (*(v17 + 8))(v32, v16);

    return v34;
  }

  else
  {
    result = sub_2526933A0();
    __break(1u);
  }

  return result;
}

uint64_t sub_25248AA94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LightbulbColor.toTemperature.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - v6;
  v8 = sub_252690550();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v15 = sub_25268ED20();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v19, v1, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == *MEMORY[0x277D15B40])
  {
    (*(v16 + 96))(v19, v15);
    (*(v9 + 32))(v14, v19, v8);
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v21 = sub_2526905A0();
    __swift_project_value_buffer(v21, qword_27F4E4B18);
    (*(v9 + 16))(v11, v14, v8);
    v22 = sub_252690580();
    v23 = sub_252692F10();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v44 = v25;
      *v24 = 136446210;
      v43 = RGBColor.description.getter();
      v27 = v26;
      v28 = *(v9 + 8);
      v28(v11, v8);
      v29 = sub_2525BDA90(v43, v27, &v44);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_252309000, v22, v23, "Cannot convert rgb:%{public}s to a Color Temperature value", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2530A5A40](v25, -1, -1);
      MEMORY[0x2530A5A40](v24, -1, -1);

      v28(v14, v8);
    }

    else
    {

      v36 = *(v9 + 8);
      v36(v11, v8);
      v36(v14, v8);
    }

LABEL_13:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 16);
  }

  if (v20 == *MEMORY[0x277D15B38])
  {
    (*(v16 + 96))(v19, v15);
    v31 = *v19;
    v30 = v19[1];
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v32 = sub_2526905A0();
    __swift_project_value_buffer(v32, qword_27F4E4B18);
    v33 = sub_252690580();
    v34 = sub_252692F10();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134349312;
      *(v35 + 4) = v31;
      *(v35 + 12) = 2050;
      *(v35 + 14) = v30;
      _os_log_impl(&dword_252309000, v33, v34, "Cannot convert hue:%{public}f saturation:%{public}f to a Color Temperature value", v35, 0x16u);
      MEMORY[0x2530A5A40](v35, -1, -1);
    }

    goto LABEL_13;
  }

  if (v20 == *MEMORY[0x277D15B28])
  {
    (*(v16 + 96))(v19, v15);
    v38 = 0;
    v37 = *v19;
    return v37 | (v38 << 16);
  }

  if (v20 == *MEMORY[0x277D15B30])
  {
    (*(v16 + 96))(v19, v15);
    v40 = swift_projectBox();
    sub_25248AA94(v40, v7);
    sub_25248AA94(v7, v4);
    if ((*(v16 + 48))(v4, 1, v15) != 1)
    {
      v41 = LightbulbColor.toTemperature.getter();
      v37 = v41;
      v38 = HIWORD(v41) & 1;
      sub_252372288(v7, &qword_27F4DB2A8, &unk_2526960B0);
      (*(v16 + 8))(v4, v15);

      return v37 | (v38 << 16);
    }

    sub_252372288(v7, &qword_27F4DB2A8, &unk_2526960B0);
    sub_252372288(v4, &qword_27F4DB2A8, &unk_2526960B0);

    goto LABEL_13;
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

BOOL sub_25248B14C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_252690550();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v36 - v7;
  v8 = sub_25268ED20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v37 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE248, &qword_25269EDE0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - v13;
  v16 = *(v15 + 56);
  v17 = *(v9 + 16);
  v40 = v2;
  v17(&v36 - v13, v2, v8, v12);
  v41 = a1;
  (v17)(&v14[v16], a1, v8);
  v18 = *(v9 + 88);
  v19 = v18(v14, v8);
  v20 = *MEMORY[0x277D15B30];
  if (v19 != *MEMORY[0x277D15B30])
  {
    v24 = v18(&v14[v16], v8);
    v25 = v24;
    if (v24 == *MEMORY[0x277D15B28])
    {
      v26 = v37;
      (v17)(v37, &v14[v16], v8);
      v27 = *(v9 + 96);
      v27(v26, v8);
      v28 = *v26;
      if (v18(v14, v8) == v25)
      {
        v27(v14, v8);
        v23 = *v14 == v28;
        (*(v9 + 8))(&v14[v16], v8);
        return v23;
      }
    }

    else if (v24 == v20)
    {
      v29 = *(v9 + 8);
      v29(&v14[v16], v8);
      v29(v14, v8);
      return 0;
    }

    v30 = v38;
    sub_25248B53C(v38);
    v31 = v39;
    sub_25248B53C(v39);
    v23 = sub_25248C9AC(v31);
    v32 = *(v42 + 8);
    v33 = v31;
    v34 = v43;
    v32(v33, v43);
    v32(v30, v34);
    sub_252372288(v14, &qword_27F4DE248, &qword_25269EDE0);
    return v23;
  }

  v21 = v19;
  v22 = *(v9 + 8);
  v22(v14, v8);
  v23 = v18(&v14[v16], v8) == v21;
  v22(&v14[v16], v8);
  return v23;
}

void sub_25248B53C(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE618, &qword_25269F5F8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = sub_25268ED20();
  v16 = *(v15 - 1);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v19, v1, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == *MEMORY[0x277D15B40])
  {
    (*(v16 + 96))(v19, v15);
    v21 = sub_252690550();
    (*(*(v21 - 8) + 32))(a1, v19, v21);
    return;
  }

  if (v20 == *MEMORY[0x277D15B38])
  {
    v22 = (*(v16 + 96))(v19, v15);
    v22.i64[0] = *v19;
    *v23.i64 = *v19 - trunc(*v19);
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v25 = *vbslq_s8(vnegq_f64(v24), v23, v22).i64 * 6.0;
    if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v25 > -9.22337204e18)
    {
      if (v25 < 9.22337204e18)
      {
        sub_252690540();
        return;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
LABEL_13:
    v27 = __swift_project_value_buffer(v1, qword_27F4DE5A0);
    (*(v11 + 2))(a1, v27, v1);
    if (v15(v14, 1, v1) != 1)
    {
      sub_252372288(v14, &qword_27F4DE618, &qword_25269F5F8);
    }

    return;
  }

  if (v20 == *MEMORY[0x277D15B28])
  {
    (*(v16 + 96))(v19, v15);
    v26 = *v19;
    if (v26 <= 1)
    {
      v26 = 1;
    }

    sub_25248D668(0xF4240 / v26, v14);
    v1 = sub_252690550();
    v11 = *(v1 - 8);
    v15 = *(v11 + 6);
    if (v15(v14, 1, v1) != 1)
    {
      (*(v11 + 4))(a1, v14, v1);
      return;
    }

    if (qword_27F4DAA58 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

  if (v20 == *MEMORY[0x277D15B30])
  {
    (*(v16 + 96))(v19, v15);
    v28 = swift_projectBox();
    sub_25248AA94(v28, v8);
    sub_25248AA94(v8, v5);
    if ((*(v16 + 48))(v5, 1, v15) == 1)
    {
      sub_252372288(v5, &qword_27F4DB2A8, &unk_2526960B0);
      v29 = sub_252690550();
      v30 = *(v29 - 8);
      (*(v30 + 56))(v11, 1, 1, v29);
      if (qword_27F4DAA58 != -1)
      {
        swift_once();
      }

      v31 = __swift_project_value_buffer(v29, qword_27F4DE5A0);
      (*(v30 + 16))(a1, v31, v29);
      sub_252372288(v8, &qword_27F4DB2A8, &unk_2526960B0);
      if ((*(v30 + 48))(v11, 1, v29) != 1)
      {
        sub_252372288(v11, &qword_27F4DE618, &qword_25269F5F8);
      }
    }

    else
    {
      sub_25248B53C(v11);
      sub_252372288(v8, &qword_27F4DB2A8, &unk_2526960B0);
      (*(v16 + 8))(v5, v15);
      v32 = sub_252690550();
      v33 = *(v32 - 8);
      (*(v33 + 56))(v11, 0, 1, v32);
      (*(v33 + 32))(a1, v11, v32);
    }
  }

  else
  {
    sub_2526933A0();
    __break(1u);
  }
}

double sub_25248BCB0(uint64_t a1)
{
  sub_252690520();
  v2 = v1;
  sub_252690510();
  if (v3 <= v2)
  {
    sub_252690520();
    v5 = v4;
    sub_252690500();
    if (v6 <= v5)
    {
      sub_252690520();
      v14 = v18;
      sub_252690510();
      v20 = v19;
      sub_252690500();
      if (v20 < v21)
      {
        goto LABEL_8;
      }

LABEL_11:
      sub_252690500();
      goto LABEL_12;
    }
  }

  sub_252690510();
  v8 = v7;
  sub_252690500();
  if (v9 <= v8)
  {
    sub_252690510();
    v11 = v10;
    sub_252690520();
    if (v12 <= v11)
    {
      sub_252690510();
      v14 = v24;
      sub_252690520();
      v26 = v25;
      sub_252690500();
      if (v26 < v27)
      {
LABEL_10:
        sub_252690520();
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  sub_252690500();
  v14 = v13;
  sub_252690510();
  v16 = v15;
  sub_252690520();
  if (v16 >= v17)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_252690510();
LABEL_12:
  v23.i64[0] = 0;
  if (v14 > 0.0)
  {
    v28 = v14 - *v22.i64;
    if ((v14 - *v22.i64) / v14 != 0.0)
    {
      v29 = *v22.i64;
      sub_252690520();
      v31 = v30;
      sub_252690510();
      v33 = (v14 - v32) / v28;
      sub_252690500();
      v35 = (v14 - v34) / v28;
      sub_252690520();
      v37 = v36;
      sub_252690510();
      if (v14 == v37)
      {
        if (v29 == *v22.i64)
        {
          *v23.i64 = v35 + 5.0;
        }

        else
        {
          *v23.i64 = 1.0 - v33;
        }
      }

      else
      {
        v38 = (v14 - v31) / v28;
        if (v14 == *v22.i64)
        {
          sub_252690500();
          if (v29 == *v22.i64)
          {
            *v23.i64 = v38 + 1.0;
          }

          else
          {
            *v23.i64 = 3.0 - v35;
          }
        }

        else
        {
          sub_252690520();
          if (v29 == *v22.i64)
          {
            *v23.i64 = v33 + 3.0;
          }

          else
          {
            *v23.i64 = 5.0 - v38;
          }
        }
      }
    }
  }

  *v22.i64 = *v23.i64 / 6.0;
  *v23.i64 = *v23.i64 / 6.0 - trunc(*v23.i64 / 6.0);
  v39.f64[0] = NAN;
  v39.f64[1] = NAN;
  v22.i64[0] = vbslq_s8(vnegq_f64(v39), v23, v22).u64[0];
  return *v22.i64;
}

uint64_t LightbulbColor.shortDebugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v2);
  v4 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v44 - v6;
  v8 = sub_252690550();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25268ED20();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v16, v1, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == *MEMORY[0x277D15B40])
  {
    (*(v13 + 96))(v16, v12);
    (*(v9 + 32))(v11, v16, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360, &qword_25269F600);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2526952C0;
    sub_252690520();
    v20 = v19 * 255.0;
    v21 = MEMORY[0x277D85048];
    *(v18 + 56) = MEMORY[0x277D85048];
    v22 = sub_25248DF60();
    *(v18 + 64) = v22;
    *(v18 + 32) = v20;
    sub_252690510();
    *(v18 + 96) = v21;
    *(v18 + 104) = v22;
    *(v18 + 72) = v23 * 255.0;
    sub_252690500();
    *(v18 + 136) = v21;
    *(v18 + 144) = v22;
    *(v18 + 112) = v24 * 255.0;
    v25 = sub_252692BE0();
    (*(v9 + 8))(v11, v8);
    return v25;
  }

  if (v17 == *MEMORY[0x277D15B38])
  {
    (*(v13 + 96))(v16, v12);
    v27 = *v16;
    v28 = v16[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360, &qword_25269F600);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_252694EA0;
    v30 = MEMORY[0x277D839F8];
    v31 = MEMORY[0x277D83A80];
    *(v29 + 56) = MEMORY[0x277D839F8];
    *(v29 + 64) = v31;
    *(v29 + 32) = v27;
    *(v29 + 96) = v30;
    *(v29 + 104) = v31;
    *(v29 + 72) = v28;
    return sub_252692BE0();
  }

  if (v17 == *MEMORY[0x277D15B28])
  {
    (*(v13 + 96))(v16, v12);
    v32 = *v16;
    v33 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    sub_25248DF14();
    v34 = sub_252693080();
    [v33 setRoundingIncrement_];

    [v33 setRoundingMode_];
    v45[0] = 0;
    v45[1] = 0xE000000000000000;
    sub_252693210();

    strcpy(v45, "Temp: mired(");
    BYTE5(v45[1]) = 0;
    HIWORD(v45[1]) = -5120;
    v44[7] = v32;
    v35 = sub_252693370();
    MEMORY[0x2530A4800](v35);

    MEMORY[0x2530A4800](539828265, 0xE400000000000000);
    v36 = sub_252692EB0();
    v37 = [v33 stringFromNumber_];

    if (v37)
    {
      v38 = sub_252692BD0();
      v40 = v39;

      MEMORY[0x2530A4800](v38, v40);

      MEMORY[0x2530A4800](75, 0xE100000000000000);

      return v45[0];
    }

    __break(1u);
  }

  else if (v17 == *MEMORY[0x277D15B30])
  {
    (*(v13 + 96))(v16, v12);
    v41 = swift_projectBox();
    sub_25248AA94(v41, v7);
    v45[0] = 0;
    v45[1] = 0xE000000000000000;
    sub_252693210();

    strcpy(v45, "AdaptiveLight:");
    HIBYTE(v45[1]) = -18;
    sub_25248AA94(v7, v4);
    v42 = sub_252692C00();
    MEMORY[0x2530A4800](v42);

    v43 = v45[0];
    sub_252372288(v7, &qword_27F4DB2A8, &unk_2526960B0);

    return v43;
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

uint64_t sub_25248C4C8(uint64_t a1)
{
  v2 = sub_252692270();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252690550();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25268ED20();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  if ((*(v11 + 88))(v14, v10) == *MEMORY[0x277D15B38])
  {
    (*(v11 + 96))(v14, v10);
    v15 = sub_252692290();
    (*(v11 + 8))(a1, v10);
  }

  else
  {
    v19 = v6;
    sub_25248B53C(v9);
    (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v2);
    sub_252690520();
    sub_252690510();
    sub_252690500();
    v15 = sub_252692390();
    v16 = *(v11 + 8);
    v16(a1, v10);
    (*(v7 + 8))(v9, v19);
    v16(v14, v10);
  }

  return v15;
}

uint64_t RGBColor.description.getter()
{
  sub_252693210();

  sub_252690520();
  v0 = sub_252692E50();
  MEMORY[0x2530A4800](v0);

  MEMORY[0x2530A4800](3827488, 0xE300000000000000);
  sub_252690510();
  v1 = sub_252692E50();
  MEMORY[0x2530A4800](v1);

  MEMORY[0x2530A4800](3826208, 0xE300000000000000);
  sub_252690500();
  v2 = sub_252692E50();
  MEMORY[0x2530A4800](v2);

  return 0x726F6C6F43424752;
}

uint64_t RGBColor.shortDebugDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB360, &qword_25269F600);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2526952C0;
  sub_252690520();
  v2 = v1 * 255.0;
  v3 = MEMORY[0x277D85048];
  *(v0 + 56) = MEMORY[0x277D85048];
  v4 = sub_25248DF60();
  *(v0 + 64) = v4;
  *(v0 + 32) = v2;
  sub_252690510();
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  *(v0 + 72) = v5 * 255.0;
  sub_252690500();
  *(v0 + 136) = v3;
  *(v0 + 144) = v4;
  *(v0 + 112) = v6 * 255.0;

  return sub_252692BE0();
}

BOOL sub_25248C9AC(uint64_t a1)
{
  sub_252690520();
  v2 = v1;
  sub_252690520();
  if (vabdd_f64(v2, v3) >= 0.02)
  {
    return 0;
  }

  sub_252690510();
  v5 = v4;
  sub_252690510();
  if (vabdd_f64(v5, v6) >= 0.02)
  {
    return 0;
  }

  sub_252690500();
  v8 = v7;
  sub_252690500();
  return vabdd_f64(v8, v9) < 0.02;
}

double RGBColor.approximateID.getter(uint64_t a1)
{
  sub_252690520();
  v2 = round(v1 * 100.0) / 100.0;
  sub_252690510();
  v4 = round(v3 * 100.0) / 100.0;
  sub_252690500();
  v6 = round(v5 * 100.0) / 100.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE630, qword_2526A3CC0);
  v7 = swift_allocObject();
  *&result = 3;
  *(v7 + 16) = xmmword_2526952C0;
  *(v7 + 32) = v2;
  *(v7 + 40) = v4;
  *(v7 + 48) = v6;
  return result;
}

uint64_t sub_25248CC20(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_252690550();
  __swift_allocate_value_buffer(v6, a2);
  __swift_project_value_buffer(v6, a2);
  return sub_252690560();
}

uint64_t sub_25248CCB4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_252690550();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

void *LightbulbColor.id.getter()
{
  v1 = sub_252690550();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25268ED20();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v0, v5, v7);
  if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277D15B30])
  {
    v10 = &unk_286483D28;
  }

  else
  {
    sub_25248B53C(v4);
    v10 = sub_252690530();
    (*(v2 + 8))(v4, v1);
  }

  (*(v6 + 8))(v9, v5);
  return v10;
}

double *LightbulbColor.approximateID.getter()
{
  v1 = sub_252690550();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25268ED20();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v0, v5, v7);
  if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277D15B30])
  {
    v10 = &unk_286483D50;
  }

  else
  {
    sub_25248B53C(v4);
    sub_252690520();
    v12 = round(v11 * 100.0) / 100.0;
    sub_252690510();
    v14 = round(v13 * 100.0) / 100.0;
    sub_252690500();
    v16 = round(v15 * 100.0) / 100.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE630, qword_2526A3CC0);
    v10 = swift_allocObject();
    *(v10 + 1) = xmmword_2526952C0;
    v10[4] = v12;
    v10[5] = v14;
    v10[6] = v16;
    (*(v2 + 8))(v4, v1);
  }

  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t LightbulbColor.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v2);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v25 - v6;
  v8 = sub_252690550();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25268ED20();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v16, v1, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == *MEMORY[0x277D15B40])
  {
    (*(v13 + 96))(v16, v12);
    (*(v9 + 32))(v11, v16, v8);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_252693210();

    v26 = 0xD000000000000010;
    v27 = 0x80000002526AF8C0;
    v18 = RGBColor.description.getter();
    MEMORY[0x2530A4800](v18);

    v19 = v26;
    (*(v9 + 8))(v11, v8);
    return v19;
  }

  if (v17 == *MEMORY[0x277D15B38])
  {
    (*(v13 + 96))(v16, v12);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_252693210();
    MEMORY[0x2530A4800](0xD00000000000001ALL, 0x80000002526AF8A0);
    sub_252692E70();
    MEMORY[0x2530A4800](0x7461727574617320, 0xEC0000003A6E6F69);
    sub_252692E70();
    return v26;
  }

  if (v17 == *MEMORY[0x277D15B28])
  {
    (*(v13 + 96))(v16, v12);
    v20 = *v16;
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_252693210();

    v26 = 0xD00000000000001DLL;
    v27 = 0x80000002526AF880;
    v25[7] = v20;
    v21 = sub_252693370();
    MEMORY[0x2530A4800](v21);

    return v26;
  }

  if (v17 == *MEMORY[0x277D15B30])
  {
    (*(v13 + 96))(v16, v12);
    v22 = swift_projectBox();
    sub_25248AA94(v22, v7);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_252693210();

    v26 = 0xD00000000000001FLL;
    v27 = 0x80000002526AF860;
    sub_25248AA94(v7, v4);
    v23 = sub_252692C00();
    MEMORY[0x2530A4800](v23);

    v19 = v26;
    sub_252372288(v7, &qword_27F4DB2A8, &unk_2526960B0);

    return v19;
  }

  result = sub_2526933A0();
  __break(1u);
  return result;
}

uint64_t sub_25248D668@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 - 40001 > 0xFFFFFFFFFFFF67A6)
  {
    sub_252690540();
    v11 = 0;
  }

  else
  {
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v7 = sub_2526905A0();
    __swift_project_value_buffer(v7, qword_27F4E4B18);
    v8 = sub_252690580();
    v9 = sub_252692EF0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134349056;
      *(v10 + 4) = a1;
      _os_log_impl(&dword_252309000, v8, v9, "rgbColorForColorTemperature: Rejecting conversion of %{public}ldK beyond supported bounds.", v10, 0xCu);
      MEMORY[0x2530A5A40](v10, -1, -1);
    }

    v11 = 1;
  }

  v12 = sub_252690550();
  v13 = *(*(v12 - 8) + 56);

  return v13(a2, v11, 1, v12);
}

uint64_t sub_25248D884@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_252690550();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v13, v2, a1, v11);
  if ((*(v9 + 88))(v13, a1) == *MEMORY[0x277D15B30])
  {
    v14 = &unk_286483D78;
  }

  else
  {
    sub_25248B53C(v8);
    v14 = sub_252690530();
    (*(v6 + 8))(v8, v5);
  }

  result = (*(v9 + 8))(v13, a1);
  *a2 = v14;
  return result;
}

BOOL sub_25248DA50(uint64_t a1)
{
  v1 = sub_2526910F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252690550();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2526910E0();
  sub_252692370();
  sub_252690540();
  (*(v2 + 8))(v4, v1);
  sub_252690520();
  v10 = v9 * 0.2126;
  sub_252690510();
  v12 = v10 + v11 * 0.7152;
  sub_252690500();
  v14 = v12 + v13 * 0.0722 > 0.95 || sub_25248DC40(v8);
  (*(v6 + 8))(v8, v5);
  return v14;
}

BOOL sub_25248DC40(uint64_t a1)
{
  sub_252690520();
  v2 = v1;
  sub_252690510();
  v4 = v3;
  sub_252690500();
  v6 = v5 * 255.0;
  v7 = (v2 * 255.0 + v4 * 255.0 + v6) / 3.0;
  v8 = v7 >= 216.75;
  if (sqrt(((v6 - v7) * (v6 - v7) + (v2 * 255.0 - v7) * (v2 * 255.0 - v7) + (v4 * 255.0 - v7) * (v4 * 255.0 - v7)) / 3.0) > 20.0)
  {
    v8 = 0;
  }

  return v7 > 242.25 || v8;
}

uint64_t sub_25248DD00(uint64_t a1, uint64_t a2)
{
  v2 = sub_2526910F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252690550();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  sub_2526910E0();
  sub_252692370();
  sub_252690540();
  v13 = *(v3 + 8);
  v13(v5, v2);
  sub_2526910E0();
  sub_252692370();
  sub_252690540();
  v13(v5, v2);
  LOBYTE(v2) = sub_25248C9AC(v9);
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  return v2 & 1;
}

unint64_t sub_25248DF14()
{
  result = qword_27F4DE620;
  if (!qword_27F4DE620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4DE620);
  }

  return result;
}

unint64_t sub_25248DF60()
{
  result = qword_27F4DE628;
  if (!qword_27F4DE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE628);
  }

  return result;
}

unint64_t sub_25248DFB8()
{
  result = qword_27F4DE638;
  if (!qword_27F4DE638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE640, &qword_25269F638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE638);
  }

  return result;
}

void sub_25248E07C(uint64_t a1)
{
  v1 = MEMORY[0x277D839B0];
  sub_25248E21C(319, &qword_27F4DE328, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
  if (v2 <= 0x3F)
  {
    sub_25248E21C(319, &qword_27F4DBD08, &type metadata for AccessoryControlsStyle, MEMORY[0x277CDF468]);
    if (v3 <= 0x3F)
    {
      sub_25248E1B8(319);
      if (v4 <= 0x3F)
      {
        sub_25248E21C(319, &qword_27F4DE678, v1, MEMORY[0x277CE10B8]);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25248E1B8(uint64_t a1)
{
  if (!qword_27F4DE670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB2A0, &qword_25269E4A0);
    v1 = sub_252692750();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4DE670);
    }
  }
}

void sub_25248E21C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void (*sub_25248E288(void **a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0) - 8) + 64);
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    *a1 = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v5 = malloc(v3);
  }

  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658, &unk_25269F720);
  a1[2] = v6;
  if (v4)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(*(v6 - 1) + 64));
  }

  v8 = v7;
  a1[3] = v7;
  v9 = type metadata accessor for ColorControl(0);
  sub_25237153C(v1 + *(v9 + 28), v8, &qword_27F4DE658, &unk_25269F720);
  MEMORY[0x2530A4210](v6);
  return sub_25248E3C8;
}

void sub_25248E3C8(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    sub_25237153C(*(a1 + 8), v3, &qword_27F4DB2A0, &qword_25269E4A0);
    sub_2526926B0();
    sub_252372288(v2, &qword_27F4DE658, &unk_25269F720);
    v5 = v4;
    v6 = &qword_27F4DB2A0;
    v7 = &qword_25269E4A0;
  }

  else
  {
    sub_2526926B0();
    v6 = &qword_27F4DE658;
    v7 = &unk_25269F720;
    v5 = v2;
  }

  sub_252372288(v5, v6, v7);
  free(v2);
  free(v4);

  free(v3);
}

double *sub_25248E4A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE9B8, &qword_25269FA58);
  swift_allocObject();
  result = sub_252624D98(0x406F400000000000, 0);
  qword_27F4DE648 = result;
  return result;
}

uint64_t sub_25248E4F8@<X0>(void *a1@<X8>)
{
  v66 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE680, &qword_25269F7A0);
  MEMORY[0x28223BE20](v2);
  v4 = v55 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE688, &qword_25269F7A8);
  MEMORY[0x28223BE20](v5);
  v7 = v55 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE690, &qword_25269F7B0);
  MEMORY[0x28223BE20](v65);
  v59 = (v55 - v8);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE698, &qword_25269F7B8);
  MEMORY[0x28223BE20](v62);
  v64 = (v55 - v9);
  v10 = type metadata accessor for ColorControl(0);
  v60 = *(v10 - 1);
  v11 = *(v60 + 64);
  MEMORY[0x28223BE20](v10);
  v61 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2526910F0();
  v58 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE6A0, &qword_25269F7C0);
  MEMORY[0x28223BE20](v15);
  v63 = v55 - v17;
  if (*(v1 + v10[9]) == 1)
  {
    v55[2] = v5;
    v56 = v7;
    v109 = *(v1 + 96);
    v18 = *(v1 + 80);
    v108[2] = *(v1 + 64);
    v108[3] = v18;
    v19 = *(v1 + 48);
    v108[0] = *(v1 + 32);
    v108[1] = v19;
    v57 = v2;
    v55[1] = v16;
    if ((v109 & 0x100) != 0)
    {
      v20 = *(v1 + 64);
      v98 = *(v1 + 80);
      LOBYTE(v99) = *(v1 + 96);
      v21 = *(v1 + 32);
      v96 = *(v1 + 48);
      v97 = v20;
      v95 = v21;
      if ((BYTE1(v98) & 1) == 0)
      {
LABEL_4:
        v22 = v61;
        sub_252499E14(v1, v61, type metadata accessor for ColorControl);
        v23 = (*(v60 + 80) + 16) & ~*(v60 + 80);
        v24 = swift_allocObject();
        sub_252499A88(v22, v24 + v23, type metadata accessor for ColorControl);
        LOBYTE(v23) = *(v1 + v10[11]);
        v25 = *(v1 + v10[10]);
        sub_252491F74();
        v27 = v26;
        v29 = v28;
        v30 = sub_252692920();
        v32 = v31;
        sub_2526899D0(&v68, v27, v29);
        *&v80[0] = v30;
        *(&v80[0] + 1) = v32;
        v80[11] = v78;
        v81[0] = v79[0];
        *(v81 + 9) = *(v79 + 9);
        v80[7] = v74;
        v80[8] = v75;
        v80[9] = v76;
        v80[10] = v77;
        v80[3] = v70;
        v80[4] = v71;
        v80[5] = v72;
        v80[6] = v73;
        v80[1] = v68;
        v80[2] = v69;
        v105 = v77;
        v106 = v78;
        v107[0] = v81[0];
        *(v107 + 9) = *(v79 + 9);
        v101 = v73;
        v102 = v74;
        v103 = v75;
        v104 = v76;
        v97 = v69;
        v98 = v70;
        v99 = v71;
        v100 = v72;
        v95 = v80[0];
        v96 = v68;
        v93 = v78;
        v94[0] = v79[0];
        *(v94 + 9) = *(v79 + 9);
        v89 = v74;
        v90 = v75;
        v91 = v76;
        v92 = v77;
        v85 = v70;
        v86 = v71;
        v87 = v72;
        v88 = v73;
        v82[0] = v30;
        v82[1] = v32;
        v83 = v68;
        v84 = v69;
        sub_25237153C(v80, &v67, &qword_27F4DE6F0, &qword_25269F7E0);
        sub_252372288(v82, &qword_27F4DE6F0, &qword_25269F7E0);
        v33 = v64;
        *v64 = sub_252498550;
        v33[1] = v24;
        *(v33 + 16) = v23;
        v33[3] = v25;
        v34 = v106;
        *(v33 + 12) = v105;
        *(v33 + 13) = v34;
        *(v33 + 14) = v107[0];
        *(v33 + 233) = *(v107 + 9);
        v35 = v102;
        *(v33 + 8) = v101;
        *(v33 + 9) = v35;
        v36 = v104;
        *(v33 + 10) = v103;
        *(v33 + 11) = v36;
        v37 = v98;
        *(v33 + 4) = v97;
        *(v33 + 5) = v37;
        v38 = v100;
        *(v33 + 6) = v99;
        *(v33 + 7) = v38;
        v39 = v96;
        *(v33 + 2) = v95;
        *(v33 + 3) = v39;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE6B8, &qword_25269F7C8);
        sub_252497CDC();
        sub_252400FC8(&qword_27F4DE6F8, &qword_27F4DE690, &qword_25269F7B0, MEMORY[0x277CDE590]);
        v40 = v63;
        sub_252691470();
LABEL_8:
        v43 = &qword_27F4DE6A0;
        v44 = &qword_25269F7C0;
        sub_25237153C(v40, v56, &qword_27F4DE6A0, &qword_25269F7C0);
        swift_storeEnumTagMultiPayload();
        sub_252497C24();
        sub_252497EA0();
        sub_252691470();
        v45 = v40;
        return sub_252372288(v45, v43, v44);
      }
    }

    else
    {

      sub_252692F00();
      v46 = sub_2526919C0();
      sub_252690570();

      sub_2526910E0();
      swift_getAtKeyPath();
      sub_252372288(v108, &qword_27F4DC120, &qword_25269CED0);
      (*(v58 + 8))(v14, v12);
      if ((BYTE1(v98) & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v47 = sub_252692920();
    v48 = v59;
    *v59 = v47;
    *(v48 + 8) = v49;
    *(v48 + 16) = 0;
    *(v48 + 24) = 1;
    *(v48 + 32) = 0;
    *(v48 + 40) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE7A0, &qword_25269F840);
    *&v95 = sub_252493894();
    v50 = v61;
    sub_252499E14(v1, v61, type metadata accessor for ColorControl);
    v51 = (*(v60 + 80) + 16) & ~*(v60 + 80);
    v52 = (v11 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    sub_252499A88(v50, v53 + v51, type metadata accessor for ColorControl);
    *(v53 + v52) = 0x4008000000000000;
    *(v53 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0x4051400000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE7A8, &qword_25269F848);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE7B0, &qword_25269F850);
    sub_252400FC8(&qword_27F4DE7B8, &qword_27F4DE7A8, &qword_25269F848, MEMORY[0x277D83980]);
    sub_252400FC8(&qword_27F4DE7C0, &qword_27F4DE7B0, &qword_25269F850, MEMORY[0x277CDF0A0]);
    sub_2524984FC();
    sub_2526927B0();
    sub_25237153C(v48, v64, &qword_27F4DE690, &qword_25269F7B0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE6B8, &qword_25269F7C8);
    sub_252497CDC();
    sub_252400FC8(&qword_27F4DE6F8, &qword_27F4DE690, &qword_25269F7B0, MEMORY[0x277CDE590]);
    v40 = v63;
    sub_252691470();
    sub_252372288(v48, &qword_27F4DE690, &qword_25269F7B0);
    goto LABEL_8;
  }

  sub_2524907F8(v4);
  v41 = *(v1 + v10[10]);
  v42 = &v4[*(v2 + 36)];
  *v42 = *(v1 + v10[11]);
  *(v42 + 1) = v41;
  v43 = &qword_27F4DE680;
  v44 = &qword_25269F7A0;
  sub_25237153C(v4, v7, &qword_27F4DE680, &qword_25269F7A0);
  swift_storeEnumTagMultiPayload();
  sub_252497C24();
  sub_252497EA0();
  sub_252691470();
  v45 = v4;
  return sub_252372288(v45, v43, v44);
}

uint64_t sub_25248EF04(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_2526919E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE7D0, &qword_25269F858);
  sub_2524985D8();
  return sub_252690820();
}

uint64_t sub_25248EF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ColorControl(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252690CE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  *a3 = sub_2526911D0();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE7F0, &qword_25269F868);
  sub_25248F1E4(a3 + *(v13 + 44));
  (*(v11 + 16))(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  sub_252499E14(a1, v9, type metadata accessor for ColorControl);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v14, &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  sub_252499A88(v9, v16 + v15, type metadata accessor for ColorControl);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE7D0, &qword_25269F858);
  v18 = (a3 + *(result + 36));
  *v18 = sub_252498690;
  v18[1] = v16;
  v18[2] = 0;
  v18[3] = 0;
  return result;
}

uint64_t sub_25248F1E4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE710, &qword_25269F7E8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v22[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE808, &qword_25269F880);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v22[-v12];
  sub_252692920();
  sub_2526909C0();
  v30 = v36;
  v29 = v38;
  v28 = v40;
  v27 = v41;
  v50 = 1;
  v49 = v37;
  v48 = v39;
  v31 = v13;
  sub_25248F588(v13);
  sub_2524907F8(v7);
  sub_252692920();
  sub_2526909C0();
  v34 = v44;
  v35 = v42;
  v33 = v46;
  v32 = v47;
  v53 = 1;
  v52 = v43;
  v51 = v45;
  v14 = v50;
  v15 = v49;
  v16 = v48;
  v26 = v10;
  sub_25237153C(v13, v10, &qword_27F4DE808, &qword_25269F880);
  sub_25237153C(v7, v4, &qword_27F4DE710, &qword_25269F7E8);
  v23 = v53;
  v24 = v52;
  v25 = v51;
  *a1 = 0;
  *(a1 + 8) = v14;
  *(a1 + 16) = v30;
  *(a1 + 24) = v15;
  *(a1 + 32) = v29;
  *(a1 + 40) = v16;
  v17 = v27;
  *(a1 + 48) = v28;
  *(a1 + 56) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE810, &qword_25269F888);
  sub_25237153C(v10, a1 + v18[12], &qword_27F4DE808, &qword_25269F880);
  sub_25237153C(v4, a1 + v18[16], &qword_27F4DE710, &qword_25269F7E8);
  v19 = a1 + v18[20];
  *v19 = 0;
  *(v19 + 8) = v23;
  *(v19 + 16) = v35;
  *(v19 + 24) = v24;
  *(v19 + 32) = v34;
  *(v19 + 40) = v25;
  v20 = v32;
  *(v19 + 48) = v33;
  *(v19 + 56) = v20;
  sub_252372288(v7, &qword_27F4DE710, &qword_25269F7E8);
  sub_252372288(v31, &qword_27F4DE808, &qword_25269F880);
  sub_252372288(v4, &qword_27F4DE710, &qword_25269F7E8);
  return sub_252372288(v26, &qword_27F4DE808, &qword_25269F880);
}

uint64_t sub_25248F588@<X0>(uint64_t a1@<X8>)
{
  v140 = a1;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE818, &qword_25269F890);
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v139 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v138 = &v102 - v4;
  v134 = sub_2526912C0();
  v131 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v133 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_2526917F0();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v122 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ColorControl(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v144 = v10;
  v11 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = _s18ColorControlCircleVMa(0);
  MEMORY[0x28223BE20](v112);
  v110 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE820, &qword_25269F898);
  MEMORY[0x28223BE20](v136);
  v119 = &v102 - v13;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE828, &qword_25269F8A0);
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v115 = &v102 - v14;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE830, &qword_25269F8A8);
  MEMORY[0x28223BE20](v114);
  v116 = &v102 - v15;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE838, &qword_25269F8B0);
  MEMORY[0x28223BE20](v121);
  v120 = &v102 - v16;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE840, &qword_25269F8B8);
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v113 = &v102 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE848, &qword_25269F8C0);
  MEMORY[0x28223BE20](v18 - 8);
  v125 = &v102 - v19;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE850, &qword_25269F8C8);
  MEMORY[0x28223BE20](v127);
  v126 = &v102 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE858, &qword_25269F8D0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v130 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v132 = &v102 - v25;
  v111 = sub_25268ED20();
  v26 = *(v111 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v111);
  v109 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = (&v102 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE860, &qword_25269F8D8);
  MEMORY[0x28223BE20](v31 - 8);
  v137 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v36 = &v102 - v34;
  v37 = v1 + *(v8 + 40);
  v38 = *v37 == 1;
  v143 = &v102 - v34;
  if (v38)
  {
    v104 = v37;
    v106 = v22;
    v107 = v21;
    v103 = sub_252493474(v30);
    v39 = v11;
    v135 = v9;
    v40 = v103;
    v41 = *(v26 + 16);
    v108 = v26 + 16;
    v42 = v110;
    v43 = v111;
    v41(v110, v30, v111);
    v102 = v41;
    (*(v26 + 56))(v42, 0, 1, v43);
    v44 = v112;
    v45 = (v42 + *(v112 + 20));
    *v45 = 0;
    v45[1] = 0;
    v45[2] = 0;
    *(v42 + *(v44 + 24)) = v40;
    sub_252692920();
    sub_2526909C0();
    v46 = v119;
    sub_252499A88(v42, v119, _s18ColorControlCircleVMa);
    v47 = (v46 + *(v136 + 36));
    v48 = v153;
    *v47 = v152;
    v47[1] = v48;
    v47[2] = v154;
    v112 = v1;
    sub_252499E14(v1, v39, type metadata accessor for ColorControl);
    v49 = v109;
    v41(v109, v30, v43);
    v50 = (*(v135 + 80) + 16) & ~*(v135 + 80);
    v51 = (v144 + *(v26 + 80) + v50) & ~*(v26 + 80);
    v52 = swift_allocObject();
    v110 = v39;
    sub_252499A88(v39, v52 + v50, type metadata accessor for ColorControl);
    v105 = v26;
    (*(v26 + 32))(v52 + v51, v49, v43);
    sub_252499AF0();
    v53 = v115;
    sub_252691E60();

    sub_252372288(v46, &qword_27F4DE820, &qword_25269F898);
    v54 = v116;
    (*(v117 + 32))(v116, v53, v118);
    v55 = &v54[*(v114 + 52)];
    v136 = v30;
    v56 = v43;
    v102(v55, v30, v43);
    v57 = sub_252691A10();
    sub_252690760();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v66 = v54;
    v67 = v120;
    sub_2523714D4(v66, v120, &qword_27F4DE830, &qword_25269F8A8);
    v68 = v121;
    v69 = v67 + *(v121 + 36);
    *v69 = v57;
    *(v69 + 8) = v59;
    *(v69 + 16) = v61;
    *(v69 + 24) = v63;
    *(v69 + 32) = v65;
    *(v69 + 40) = 0;
    v70 = v122;
    sub_2526917C0();
    v71 = sub_252499BAC();
    v72 = v113;
    sub_252692020();
    (*(v123 + 8))(v70, v124);
    sub_252372288(v67, &qword_27F4DE838, &qword_25269F8B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD308, &unk_25269CC10);
    v73 = v131;
    if (v103)
    {
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_252694EA0;
      sub_2526912A0();
      sub_252691270();
    }

    else
    {
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_252694E90;
      sub_2526912A0();
    }

    *&v150 = v74;
    sub_252499A40(&qword_27F4DD310, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD318, &qword_25269D6A0);
    sub_252400FC8(&qword_27F4DD320, &qword_27F4DD318, &qword_25269D6A0, MEMORY[0x277D83970]);
    v75 = v133;
    v76 = v134;
    sub_252693190();
    v77 = v107;
    v78 = v106;
    *&v150 = v68;
    *(&v150 + 1) = v71;
    swift_getOpaqueTypeConformance2();
    v79 = v125;
    v80 = v129;
    sub_252691EB0();
    (*(v73 + 8))(v75, v76);
    (*(v128 + 8))(v72, v80);
    v81 = v126;
    v82 = &v126[*(v127 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD830, &qword_25269D680);
    sub_252690D90();
    *v82 = 0;
    sub_2523714D4(v79, v81, &qword_27F4DE848, &qword_25269F8C0);
    sub_252499C64();
    v83 = v130;
    sub_252692070();
    sub_252372288(v81, &qword_27F4DE850, &qword_25269F8C8);
    *&v150 = sub_252692C40();
    *(&v150 + 1) = v84;
    sub_252404480();
    v85 = v132;
    sub_252690BD0();

    sub_252372288(v83, &qword_27F4DE858, &qword_25269F8D0);
    (*(v105 + 8))(v136, v56);
    v36 = v143;
    sub_2523714D4(v85, v143, &qword_27F4DE858, &qword_25269F8D0);
    (*(v78 + 56))(v36, 0, 1, v77);
    v1 = v112;
    v11 = v110;
    v9 = v135;
    v37 = v104;
  }

  else
  {
    (*(v22 + 56))(&v102 - v34, 1, 1, v21, v35);
  }

  v148 = *v37;
  v149 = *(v37 + 16);
  v146 = *v37;
  v147 = *(v37 + 16);
  sub_252394224(&v148, &v150);
  v86 = sub_2524991C8(&v146);
  v150 = v146;
  v151 = v147;
  sub_252394280(&v150);
  v145 = v86;
  sub_252499E14(v1, v11, type metadata accessor for ColorControl);
  v87 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v88 = (v144 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  sub_252499A88(v11, v89 + v87, type metadata accessor for ColorControl);
  *(v89 + v88) = 0x4008000000000000;
  *(v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0x4051400000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE868, &qword_25269F8E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE640, &qword_25269F638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE870, &qword_25269F8E8);
  sub_252400FC8(&qword_27F4DE878, &qword_27F4DE868, &qword_25269F8E0, MEMORY[0x277D83980]);
  v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE880, &qword_25269F8F0);
  v91 = sub_252499844();
  *&v146 = v90;
  *(&v146 + 1) = v91;
  swift_getOpaqueTypeConformance2();
  sub_252499A40(&qword_27F4DE8C0, MEMORY[0x277D15B48], &protocol conformance descriptor for LightbulbColor);
  v92 = v138;
  sub_2526927B0();
  v93 = v137;
  sub_25237153C(v36, v137, &qword_27F4DE860, &qword_25269F8D8);
  v94 = v141;
  v95 = *(v141 + 16);
  v96 = v139;
  v97 = v142;
  v95(v139, v92, v142);
  v98 = v140;
  sub_25237153C(v93, v140, &qword_27F4DE860, &qword_25269F8D8);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE8C8, &unk_25269F910);
  v95((v98 + *(v99 + 48)), v96, v97);
  v100 = *(v94 + 8);
  v100(v92, v97);
  sub_252372288(v143, &qword_27F4DE860, &qword_25269F8D8);
  v100(v96, v97);
  return sub_252372288(v93, &qword_27F4DE860, &qword_25269F8D8);
}

uint64_t sub_2524907F8@<X0>(uint64_t a1@<X8>)
{
  v146 = a1;
  v145 = sub_2526912C0();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v143 = v107 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_2526917F0();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_252691610();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v137 = v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_2526910F0();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v121 = v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE960, &qword_25269F9B0);
  MEMORY[0x28223BE20](v113);
  v112 = v107 - v6;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE968, &qword_25269F9B8);
  MEMORY[0x28223BE20](v111);
  v109 = v107 - v7;
  v8 = type metadata accessor for ColorControl(0);
  v110 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v108 = v9;
  v10 = v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s18ColorControlCircleVMa(0);
  MEMORY[0x28223BE20](v11);
  v13 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE820, &qword_25269F898);
  MEMORY[0x28223BE20](v14);
  v16 = v107 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE970, &qword_25269F9C0);
  MEMORY[0x28223BE20](v17 - 8);
  v149 = v107 - v18;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE978, &qword_25269F9C8);
  MEMORY[0x28223BE20](v114);
  v117 = v107 - v19;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE980, &qword_25269F9D0);
  MEMORY[0x28223BE20](v116);
  v115 = v107 - v20;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE778, &qword_25269F828);
  MEMORY[0x28223BE20](v120);
  v119 = v107 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE768, &qword_25269F820);
  MEMORY[0x28223BE20](v22 - 8);
  v118 = v107 - v23;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE748, &qword_25269F810);
  MEMORY[0x28223BE20](v150);
  v124 = v107 - v24;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE740, &qword_25269F808);
  v126 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v125 = v107 - v25;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE738, &qword_25269F800);
  v129 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v127 = v107 - v26;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE988, &qword_25269F9D8);
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v130 = v107 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE730, &qword_25269F7F8);
  MEMORY[0x28223BE20](v28 - 8);
  v131 = v107 - v29;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE720, &qword_25269F7F0);
  MEMORY[0x28223BE20](v135);
  v136 = v107 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = v107 - v35;
  sub_252492214(v107 - v35);
  v151 = v8;
  v37 = *(v1 + *(v8 + 36)) == 1;
  v147 = v36;
  v148 = v10;
  if (!v37)
  {
    v40 = v1;
LABEL_6:
    v107[0] = 0;
    goto LABEL_9;
  }

  v40 = v1;
  if (sub_252492558())
  {
    goto LABEL_6;
  }

  sub_25237153C(v36, v33, &qword_27F4DB2A8, &unk_2526960B0);
  v38 = sub_25268ED20();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v33, 1, v38) == 1)
  {
    sub_252372288(v33, &qword_27F4DB2A8, &unk_2526960B0);
    v107[0] = 0;
  }

  else
  {
    v107[0] = LightbulbColor.approximateID.getter();
    (*(v39 + 8))(v33, v38);
  }

  v10 = v148;
  v36 = v147;
LABEL_9:
  sub_25237153C(v36, v13, &qword_27F4DB2A8, &unk_2526960B0);
  v41 = v40 + *(v151 + 32);
  v159 = *(v41 + 2);
  v42 = v159;
  v158 = *v41;
  v43 = &v13[*(v11 + 20)];
  *v43 = v158;
  *(v43 + 2) = v42;
  v13[*(v11 + 24)] = 2;
  sub_252394224(&v158, v160);
  sub_252692920();
  sub_2526909C0();
  sub_252499A88(v13, v16, _s18ColorControlCircleVMa);
  v44 = &v16[*(v14 + 36)];
  v45 = v160[1];
  *v44 = v160[0];
  *(v44 + 1) = v45;
  *(v44 + 2) = v160[2];
  sub_252499E14(v40, v10, type metadata accessor for ColorControl);
  v46 = (*(v110 + 80) + 16) & ~*(v110 + 80);
  v47 = v46 + v108;
  v108 = *(v110 + 80);
  v107[1] = v47;
  v48 = swift_allocObject();
  v110 = v46;
  sub_252499A88(v10, v48 + v46, type metadata accessor for ColorControl);
  v49 = swift_allocObject();
  *(v49 + 16) = sub_25249A778;
  *(v49 + 24) = v48;
  KeyPath = swift_getKeyPath();
  v51 = v109;
  sub_25237153C(v16, v109, &qword_27F4DE820, &qword_25269F898);
  v52 = v51 + *(v111 + 36);
  *v52 = 1;
  *(v52 + 8) = sub_25249A7D8;
  *(v52 + 16) = v49;
  *(v52 + 24) = KeyPath;
  *(v52 + 32) = 0;
  sub_25237153C(v51, v112, &qword_27F4DE968, &qword_25269F9B8);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE990, &unk_25269FA10);
  sub_25249A7E0();
  sub_25249A8C0();
  v53 = v40;
  sub_252691470();
  sub_252372288(v51, &qword_27F4DE968, &qword_25269F9B8);
  sub_252372288(v16, &qword_27F4DE820, &qword_25269F898);
  v54 = *v40;
  v55 = *(v53 + 8);
  if (v55 == 1)
  {
    v56 = v54;
  }

  else
  {

    sub_252692F00();
    v57 = sub_2526919C0();
    sub_252690570();

    v58 = v121;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v54, 0);
    (*(v122 + 8))(v58, v123);
    v56 = v152;
  }

  v59 = v117;
  if (v56)
  {
    v60 = 0.0;
  }

  else
  {
    v60 = 0.5;
  }

  sub_2523714D4(v149, v117, &qword_27F4DE970, &qword_25269F9C0);
  *(v59 + *(v114 + 36)) = v60;
  v61 = v148;
  if (!v55)
  {

    sub_252692F00();
    v62 = sub_2526919C0();
    sub_252690570();

    v63 = v121;
    sub_2526910E0();
    swift_getAtKeyPath();
    sub_25235E264(v54, 0);
    (*(v122 + 8))(v63, v123);
    LOBYTE(v54) = v152;
  }

  if (v54)
  {
    v64 = 1.0;
  }

  else
  {
    v64 = 0.5;
  }

  v65 = v115;
  sub_2523714D4(v59, v115, &qword_27F4DE978, &qword_25269F9C8);
  *(v65 + *(v116 + 36)) = v64;
  v66 = v119;
  sub_2523714D4(v65, v119, &qword_27F4DE980, &qword_25269F9D0);
  *(v66 + *(v120 + 52)) = v107[0];
  sub_252400FC8(&qword_27F4DE770, &qword_27F4DE778, &qword_25269F828, MEMORY[0x277CE1148]);
  v67 = v118;
  sub_252692070();
  sub_252372288(v66, &qword_27F4DE778, &qword_25269F828);
  LOBYTE(v65) = sub_252691A10();
  sub_252690760();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v76 = v124;
  sub_2523714D4(v67, v124, &qword_27F4DE768, &qword_25269F820);
  v77 = v76 + *(v150 + 36);
  *v77 = v65;
  *(v77 + 8) = v69;
  *(v77 + 16) = v71;
  *(v77 + 24) = v73;
  *(v77 + 32) = v75;
  *(v77 + 40) = 0;
  v78 = v53 + *(v151 + 48);
  v79 = *v78;
  v80 = *(v78 + 8);
  v156 = v79;
  v157 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320, &unk_25269FA20);
  sub_252692500();
  LODWORD(v151) = v154;
  sub_252499E14(v53, v61, type metadata accessor for ColorControl);
  v81 = swift_allocObject();
  sub_252499A88(v61, v81 + v110, type metadata accessor for ColorControl);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE750, &qword_25269F818);
  v83 = sub_25249827C();
  v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE780, &qword_25269F830);
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE788, &qword_25269F838);
  v86 = sub_252400FC8(&qword_27F4DE790, &qword_27F4DE788, &qword_25269F838, MEMORY[0x277CDF118]);
  v87 = sub_2524983F0();
  v152 = v85;
  v153 = &type metadata for ColorControl.SheetGroupBoxStyle;
  v154 = v86;
  v155 = v87;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v152 = v84;
  v153 = OpaqueTypeConformance2;
  v106 = swift_getOpaqueTypeConformance2();
  v89 = v125;
  v90 = v150;
  sub_252692150();

  sub_252372288(v76, &qword_27F4DE748, &qword_25269F810);
  v91 = v137;
  sub_252691600();
  v152 = v90;
  v153 = v82;
  v154 = v83;
  v155 = v106;
  v92 = swift_getOpaqueTypeConformance2();
  v93 = v127;
  v94 = v128;
  sub_2526920D0();
  (*(v138 + 8))(v91, v139);
  (*(v126 + 8))(v89, v94);
  v95 = v140;
  sub_2526917C0();
  v152 = v94;
  v153 = v92;
  v96 = swift_getOpaqueTypeConformance2();
  v97 = v130;
  v98 = v132;
  sub_252692020();
  (*(v141 + 8))(v95, v142);
  (*(v129 + 8))(v93, v98);
  v99 = v143;
  sub_2526912A0();
  v152 = v98;
  v153 = v96;
  swift_getOpaqueTypeConformance2();
  v100 = v131;
  v101 = v134;
  sub_252691EB0();
  (*(v144 + 8))(v99, v145);
  (*(v133 + 8))(v97, v101);
  v102 = v136;
  v103 = &v136[*(v135 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD830, &qword_25269D680);
  sub_252690D90();
  *v103 = 0;
  sub_2523714D4(v100, v102, &qword_27F4DE730, &qword_25269F7F8);
  v152 = sub_252692C40();
  v153 = v104;
  sub_252497F58();
  sub_252404480();
  sub_252691FB0();

  sub_252372288(v102, &qword_27F4DE720, &qword_25269F7F0);
  return sub_252372288(v147, &qword_27F4DB2A8, &unk_2526960B0);
}

double sub_252491D0C()
{
  v0 = sub_25268ED20();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  type metadata accessor for ColorControl(0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658, &unk_25269F720);
  MEMORY[0x2530A4210](v7);
  v8 = type metadata accessor for AccessoryControl.ColorState(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) || (*(v1 + 48))(v6, 1, v0))
  {
    sub_252372288(v6, &qword_27F4DB2A0, &qword_25269E4A0);
    v9 = 0;
  }

  else
  {
    (*(v1 + 16))(v3, v6, v0);
    sub_252372288(v6, &qword_27F4DB2A0, &qword_25269E4A0);
    v9 = LightbulbColor.approximateID.getter();
    (*(v1 + 8))(v3, v0);
  }

  v11[1] = v9;
  sub_252692A40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE7F8, &unk_25269F870);
  sub_25249875C();
  sub_252690CD0();

  return result;
}

double sub_252491F74()
{
  v1 = sub_2526910F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v0 + 96);
  v5 = *(v0 + 80);
  v23[2] = *(v0 + 64);
  v23[3] = v5;
  v6 = *(v0 + 48);
  v23[0] = *(v0 + 32);
  v23[1] = v6;
  if ((v24 & 0x100) != 0)
  {
    v7 = *(v0 + 80);
    v20 = *(v0 + 64);
    v21 = v7;
    LOBYTE(v22) = *(v0 + 96);
    v8 = *(v0 + 48);
    v18 = *(v0 + 32);
    v19 = v8;
  }

  else
  {

    sub_252692F00();
    v9 = sub_2526919C0();
    sub_252690570();

    sub_2526910E0();
    swift_getAtKeyPath();
    sub_252372288(v23, &qword_27F4DC120, &qword_25269CED0);
    (*(v2 + 8))(v4, v1);
  }

  if (v18 == 2)
  {
    v22 = *(v0 + 96);
    v10 = *(v0 + 80);
    v20 = *(v0 + 64);
    v21 = v10;
    v11 = *(v0 + 48);
    v18 = *(v0 + 32);
    v19 = v11;
    if ((v22 & 0x100) != 0)
    {
      v12 = *(v0 + 80);
      v16[2] = *(v0 + 64);
      v16[3] = v12;
      v17 = *(v0 + 96);
      v13 = *(v0 + 32);
      v16[1] = *(v0 + 48);
      v16[0] = v13;
    }

    else
    {

      sub_252692F00();
      v14 = sub_2526919C0();
      sub_252690570();

      sub_2526910E0();
      swift_getAtKeyPath();
      sub_252372288(&v18, &qword_27F4DC120, &qword_25269CED0);
      (*(v2 + 8))(v4, v1);
    }
  }

  return 0.0;
}

uint64_t sub_252492214@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25268ED20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for ColorControl(0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658, &unk_25269F720);
  MEMORY[0x2530A4210](v14);
  v15 = type metadata accessor for AccessoryControl.ColorState(0);
  if ((*(*(v15 - 8) + 48))(v12, 1, v15))
  {
    sub_252372288(v12, &qword_27F4DB2A0, &qword_25269E4A0);
    result = (*(v4 + 56))(a1, 1, 1, v3);
  }

  else
  {
    sub_25237153C(v12, a1, &qword_27F4DB2A8, &unk_2526960B0);
    result = sub_252372288(v12, &qword_27F4DB2A0, &qword_25269E4A0);
  }

  if (*(v1 + *(v13 + 36)) == 1)
  {
    result = (*(v4 + 48))(a1, 1, v3);
    if (!result)
    {
      (*(v4 + 16))(v9, a1, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
      v17 = swift_allocBox();
      v18 = *(v4 + 56);
      v18(v19, 1, 1, v3);
      *v6 = v17;
      (*(v4 + 104))(v6, *MEMORY[0x277D15B30], v3);
      LOBYTE(v17) = sub_25248B14C(v6);
      v20 = *(v4 + 8);
      v20(v6, v3);
      result = (v20)(v9, v3);
      if (v17)
      {
        sub_252372288(a1, &qword_27F4DB2A8, &unk_2526960B0);
        return (v18)(a1, 1, 1, v3);
      }
    }
  }

  return result;
}

uint64_t sub_252492558()
{
  v67 = sub_252690550();
  v63 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v61 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v61 - v3;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE248, &qword_25269EDE0);
  MEMORY[0x28223BE20](v77);
  v6 = &v61 - v5;
  v7 = sub_25268ED20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v65 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v61 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v61 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v61 - v20;
  sub_252492214(&v61 - v20);
  v22 = (v0 + *(type metadata accessor for ColorControl(0) + 32));
  v83 = *v22;
  v84 = *(v22 + 2);
  v81 = *v22;
  v82 = *(v22 + 2);
  sub_252394224(&v83, &v85);
  v23 = sub_2524991C8(&v81);
  v85 = v81;
  v86 = v82;
  sub_252394280(&v85);
  sub_25237153C(v21, v18, &qword_27F4DB2A8, &unk_2526960B0);
  if ((*(v8 + 48))(v18, 1, v7) == 1)
  {
    sub_252372288(v21, &qword_27F4DB2A8, &unk_2526960B0);

    v24 = 0;
    v21 = v18;
LABEL_28:
    sub_252372288(v21, &qword_27F4DB2A8, &unk_2526960B0);
    return v24;
  }

  result = (*(v8 + 32))(v15, v18, v7);
  v75 = *(v23 + 16);
  if (!v75)
  {

    v24 = 0;
    (*(v8 + 8))(v15, v7);
    goto LABEL_28;
  }

  v80 = v12;
  v62 = v21;
  v64 = v4;
  v26 = 0;
  v72 = v23 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v78 = v8 + 16;
  v71 = v8 + 88;
  v79 = *MEMORY[0x277D15B30];
  v70 = *MEMORY[0x277D15B28];
  v76 = (v8 + 8);
  v73 = v8;
  v68 = (v8 + 96);
  ++v63;
  v69 = v15;
  v74 = v23;
  while (v26 < *(v23 + 16))
  {
    v31 = v73;
    v32 = *(v73 + 16);
    v33 = v80;
    v32(v80, v72 + *(v73 + 72) * v26, v7);
    v34 = *(v77 + 48);
    v32(v6, v33, v7);
    v32(&v6[v34], v15, v7);
    v35 = *(v31 + 88);
    v36 = v35(v6, v7);
    v37 = v15;
    v38 = v79;
    if (v36 != v79)
    {
      v39 = v35(&v6[v34], v7);
      if (v39 == v70)
      {
        v40 = v65;
        v41 = v70;
        v32(v65, &v6[v34], v7);
        v42 = *v68;
        (*v68)(v40, v7);
        v43 = *v40;
        if (v35(v6, v7) == v41)
        {
          v30 = *v76;
          (*v76)(v80, v7);
          v42(v6, v7);
          v44 = *v6;
          result = (v30)(&v6[v34], v7);
          v45 = v44 == v43;
          v15 = v69;
          v23 = v74;
          if (v45)
          {
            goto LABEL_22;
          }

          goto LABEL_7;
        }

LABEL_19:
        v46 = v64;
        sub_25248B53C(v64);
        v47 = v66;
        v15 = v69;
        sub_25248B53C(v66);
        sub_252690520();
        v49 = v48;
        sub_252690520();
        if (vabdd_f64(v49, v50) < 0.02)
        {
          sub_252690510();
          v52 = v51;
          sub_252690510();
          if (vabdd_f64(v52, v53) < 0.02)
          {
            sub_252690500();
            v55 = v54;
            sub_252690500();
            v57 = vabdd_f64(v55, v56);
            v58 = *v63;
            v59 = v47;
            v60 = v67;
            (*v63)(v59, v67);
            v58(v46, v60);
            v30 = *v76;
            (*v76)(v80, v7);
            result = sub_252372288(v6, &qword_27F4DE248, &qword_25269EDE0);
            v23 = v74;
            if (v57 < 0.02)
            {
LABEL_22:

              v24 = 1;
              goto LABEL_25;
            }

            goto LABEL_7;
          }
        }

        v27 = *v63;
        v28 = v47;
        v29 = v67;
        (*v63)(v28, v67);
        v27(v46, v29);
        v30 = *v76;
        (*v76)(v80, v7);
        result = sub_252372288(v6, &qword_27F4DE248, &qword_25269EDE0);
      }

      else
      {
        if (v39 != v79)
        {
          goto LABEL_19;
        }

        v30 = *v76;
        (*v76)(v80, v7);
        v30(&v6[v34], v7);
        result = (v30)(v6, v7);
        v15 = v69;
      }

      v23 = v74;
      goto LABEL_7;
    }

    v30 = *v76;
    (*v76)(v33, v7);
    v30(v6, v7);
    if (v35(&v6[v34], v7) == v38)
    {

      v30(&v6[v34], v7);
      v24 = 1;
      v21 = v62;
      v15 = v37;
      goto LABEL_27;
    }

    result = (v30)(&v6[v34], v7);
    v23 = v74;
    v15 = v37;
LABEL_7:
    if (v75 == ++v26)
    {

      v24 = 0;
LABEL_25:
      v21 = v62;
LABEL_27:
      v30(v15, v7);
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252492E14(uint64_t a1)
{
  type metadata accessor for ColorControl(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320, &unk_25269FA20);
  return sub_2526924F0();
}

uint64_t sub_252492E88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE788, &qword_25269F838);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE780, &qword_25269F830);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-v8];
  v14 = a1;
  type metadata accessor for ColorPicker(0);
  sub_252499A40(&qword_27F4DE9B0, type metadata accessor for ColorPicker, &unk_25269E308);
  sub_252692860();
  v10 = sub_252400FC8(&qword_27F4DE790, &qword_27F4DE788, &qword_25269F838, MEMORY[0x277CDF118]);
  v11 = sub_2524983F0();
  sub_252691EC0();
  (*(v3 + 8))(v5, v2);
  v15 = v2;
  v16 = &type metadata for ColorControl.SheetGroupBoxStyle;
  v17 = v10;
  v18 = v11;
  swift_getOpaqueTypeConformance2();
  sub_252691FF0();
  return (*(v7 + 8))(v9, v6);
}

void sub_252493108(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ColorControl(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v9);
  v11 = &v36[-v10 - 8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36[-v13 - 8];
  v15 = v2 + *(v5 + 40);
  v16 = *(v15 + 16);

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658, &unk_25269F720);
  MEMORY[0x2530A4210](v17);
  v39 = *v15;
  v40 = *(v15 + 16);
  v37 = v39;
  v38 = v40;
  _s16ColorPickerStateCMa(0);
  swift_allocObject();
  sub_252394224(&v39, v36);
  v18 = sub_2524872F4(v16, v14, &v37);
  sub_252499E14(v2, v11, type metadata accessor for ColorControl);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v35 = swift_allocObject();
  sub_252499A88(v11, v35 + v19, type metadata accessor for ColorControl);
  sub_252499E14(v2, v8, type metadata accessor for ColorControl);
  v20 = swift_allocObject();
  sub_252499A88(v8, v20 + v19, type metadata accessor for ColorControl);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210, &qword_25269CB70);
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for ColorPicker(0);
  v22 = a1 + v21[5];
  KeyPath = swift_getKeyPath();
  LOBYTE(v37) = 0;
  *v22 = KeyPath;
  v22[65] = 0;
  v24 = a1 + v21[10];
  *v24 = sub_2526907B0() & 1;
  *(v24 + 1) = v25;
  v24[16] = v26 & 1;
  v27 = a1 + v21[6];
  *v27 = sub_25249AB28;
  *(v27 + 1) = v18;
  v27[16] = 0;

  v29 = sub_25247C778(v28);
  if (*(v29 + 2))
  {
    v30 = v29[32];
  }

  else
  {
    v30 = 0;
  }

  v31 = (a1 + v21[8]);
  v32 = (a1 + v21[9]);
  v33 = a1 + v21[7];
  *v33 = v30;
  *(v33 + 1) = 0;
  *v31 = sub_25249AAB8;
  v31[1] = v20;
  v34 = v35;
  *v32 = sub_25249AA48;
  v32[1] = v34;
}

BOOL sub_252493474(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = sub_25268ED20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = (&v32 - v15);
  v17 = swift_allocBox();
  v18 = *(v9 + 56);
  v18(v19, 1, 1, v8);
  *v16 = v17;
  (*(v9 + 104))(v16, *MEMORY[0x277D15B30], v8);
  v20 = *(v9 + 16);
  v34 = a1;
  v20(a1, v16, v8);
  type metadata accessor for ColorControl(0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658, &unk_25269F720);
  MEMORY[0x2530A4210](v21);
  v22 = type metadata accessor for AccessoryControl.ColorState(0);
  if ((*(*(v22 - 8) + 48))(v4, 1, v22))
  {
    (*(v9 + 8))(v16, v8);
    sub_252372288(v4, &qword_27F4DB2A0, &qword_25269E4A0);
    v18(v7, 1, 1, v8);
LABEL_5:
    sub_252372288(v7, &qword_27F4DB2A8, &unk_2526960B0);
    return 0;
  }

  v23 = v13;
  v24 = v34;
  sub_25237153C(v4, v7, &qword_27F4DB2A8, &unk_2526960B0);
  sub_252372288(v4, &qword_27F4DB2A0, &qword_25269E4A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v9 + 8))(v16, v8);
    goto LABEL_5;
  }

  v27 = *(v9 + 32);
  v27(v23, v7, v8);
  v25 = sub_25248B14C(v16);
  v28 = *(v9 + 8);
  v28(v24, v8);
  if (v25)
  {
    v29 = v16;
  }

  else
  {
    v29 = v23;
  }

  if (v25)
  {
    v30 = v23;
  }

  else
  {
    v30 = v16;
  }

  v28(v29, v8);
  v31 = v33;
  v27(v33, v30, v8);
  v27(v24, v31, v8);
  return v25;
}

char *sub_252493894()
{
  v1 = type metadata accessor for ColorControl.GridElement(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v34 - v6);
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F90];
  v36 = v8 + 16;
  v9 = (v0 + *(type metadata accessor for ColorControl(0) + 32));
  if (*v9 == 1)
  {
    v10 = sub_25268ED20();
    (*(*(v10 - 8) + 56))(v7, 1, 2, v10);
    sub_252495D4C(v7, v8);
    sub_25249A504(v7, type metadata accessor for ColorControl.GridElement);
  }

  v40 = *v9;
  v41 = *(v9 + 2);
  v38 = *v9;
  v39 = *(v9 + 2);
  sub_252394224(&v40, &v42);
  v11 = sub_2524991C8(&v38);
  v42 = v38;
  v43 = v39;
  sub_252394280(&v42);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = sub_25268ED20();
    v14 = *(v13 - 8);
    v37 = *(v14 + 16);
    v15 = *(v14 + 80);
    v35 = v11;
    v16 = v11 + ((v15 + 32) & ~v15);
    v17 = *(v14 + 72);
    v18 = v8;
    v19 = (v14 + 56);
    do
    {
      (v37)(v7, v16, v13);
      (*v19)(v7, 0, 2, v13);
      sub_252495D4C(v7, v18);
      sub_25249A504(v7, type metadata accessor for ColorControl.GridElement);
      v16 += v17;
      --v12;
    }

    while (v12);

    v8 = v18;
  }

  else
  {
  }

  v20 = sub_25268ED20();
  (*(*(v20 - 8) + 56))(v7, 2, 2, v20);
  v35 = v8;
  sub_252495D4C(v7, v8);
  sub_25249A504(v7, type metadata accessor for ColorControl.GridElement);
  swift_beginAccess();
  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  do
  {
    v37 = v22;
    v23 = *(*v36 + 16);
    if (v23)
    {
      v24 = *v36 + 32;
      v25 = MEMORY[0x277D84F90];
      do
      {
        if (v21 < *(*v24 + 16))
        {
          v26 = (*(v2 + 80) + 32) & ~*(v2 + 80);
          v27 = *(v2 + 72);
          sub_252499E14(*v24 + v26 + v27 * v21, v4, type metadata accessor for ColorControl.GridElement);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_25236971C(0, v25[2] + 1, 1, v25);
          }

          v29 = v25[2];
          v28 = v25[3];
          if (v29 >= v28 >> 1)
          {
            v25 = sub_25236971C((v28 > 1), v29 + 1, 1, v25);
          }

          v25[2] = v29 + 1;
          sub_252499A88(v4, v25 + v26 + v29 * v27, type metadata accessor for ColorControl.GridElement);
        }

        v24 += 8;
        --v23;
      }

      while (v23);
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    v22 = v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_25236989C(0, *(v22 + 2) + 1, 1, v22);
    }

    v31 = *(v22 + 2);
    v30 = *(v22 + 3);
    if (v31 >= v30 >> 1)
    {
      v22 = sub_25236989C((v30 > 1), v31 + 1, 1, v22);
    }

    *(v22 + 2) = v31 + 1;
    v32 = &v22[16 * v31];
    *(v32 + 4) = v21;
    *(v32 + 5) = v25;
    ++v21;
  }

  while (v21 != 4);

  return v22;
}

uint64_t sub_252493D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for ColorControl(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 8);
  *a3 = 0;
  *(a3 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE7B0, &qword_25269F850);
  v19[1] = v14;
  sub_252499E14(a2, v13, type metadata accessor for ColorControl);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_252499A88(v13, v17 + v15, type metadata accessor for ColorControl);
  *(v17 + v16) = a4;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB1A8, &qword_25269F980);
  type metadata accessor for ColorControl.GridElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE918, &qword_25269F988);
  sub_252400FC8(&qword_27F4DE920, &qword_27F4DB1A8, &qword_25269F980, MEMORY[0x277D83980]);
  sub_25249A1D8();
  sub_252499A40(&qword_27F4DE948, type metadata accessor for ColorControl.GridElement, &unk_25269FB90);
  return sub_2526927B0();
}

uint64_t sub_252493FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v208 = a2;
  v206 = a3;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE710, &qword_25269F7E8);
  MEMORY[0x28223BE20](v207);
  v188 = &v152 - v6;
  v176 = _s17FavoriteColorCellVMa(0);
  MEMORY[0x28223BE20](v176);
  v180 = (&v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD9A8, &qword_25269F920);
  MEMORY[0x28223BE20](v177);
  v181 = &v152 - v8;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE8B8, &qword_25269F908);
  MEMORY[0x28223BE20](v178);
  v10 = (&v152 - v9);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE8A8, &qword_25269F900);
  MEMORY[0x28223BE20](v179);
  v183 = &v152 - v11;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE898, &qword_25269F8F8);
  MEMORY[0x28223BE20](v182);
  v184 = &v152 - v12;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE880, &qword_25269F8F0);
  MEMORY[0x28223BE20](v190);
  v185 = &v152 - v13;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE870, &qword_25269F8E8);
  v187 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v186 = (&v152 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  MEMORY[0x28223BE20](v15 - 8);
  v166 = &v152 - v16;
  v164 = _s17FavoriteColorCellV5ValueOMa(0);
  MEMORY[0x28223BE20](v164);
  v192 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE950, &qword_25269F998);
  MEMORY[0x28223BE20](v203);
  v205 = &v152 - v18;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE958, &unk_25269F9A0);
  MEMORY[0x28223BE20](v189);
  v198 = &v152 - v19;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE938, &qword_25269F990);
  MEMORY[0x28223BE20](v204);
  v199 = &v152 - v20;
  v155 = sub_2526912C0();
  v175 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v154 = &v152 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_2526917F0();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v165 = &v152 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ColorControl(0);
  v195 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v196 = v24;
  v197 = &v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = _s18ColorControlCircleVMa(0);
  MEMORY[0x28223BE20](v156);
  v26 = &v152 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE820, &qword_25269F898);
  MEMORY[0x28223BE20](v191);
  v162 = &v152 - v27;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE828, &qword_25269F8A0);
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v158 = &v152 - v28;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE830, &qword_25269F8A8);
  MEMORY[0x28223BE20](v157);
  v159 = &v152 - v29;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE838, &qword_25269F8B0);
  MEMORY[0x28223BE20](v194);
  v163 = &v152 - v30;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE840, &qword_25269F8B8);
  v172 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v193 = &v152 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE848, &qword_25269F8C0);
  MEMORY[0x28223BE20](v32 - 8);
  v169 = &v152 - v33;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE850, &qword_25269F8C8);
  MEMORY[0x28223BE20](v171);
  v170 = &v152 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE858, &qword_25269F8D0);
  MEMORY[0x28223BE20](v35);
  v173 = &v152 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v174 = &v152 - v38;
  v39 = sub_25268ED20();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v42 = &v152 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v201 = &v152 - v44;
  MEMORY[0x28223BE20](v45);
  v202 = (&v152 - v46);
  v47 = type metadata accessor for ColorControl.GridElement(0);
  MEMORY[0x28223BE20](v47 - 8);
  v49 = &v152 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252499E14(a1, v49, type metadata accessor for ColorControl.GridElement);
  v210 = v40;
  v50 = *(v40 + 48);
  v209 = v39;
  v51 = v50(v49, 2, v39);
  if (v51)
  {
    if (v51 == 1)
    {
      v188 = v35;
      v52 = v202;
      v53 = v208;
      LODWORD(v192) = sub_252493474(v202);
      v54 = v192 & 1;
      v55 = v210;
      v56 = *(v210 + 16);
      v57 = v209;
      v56(v26, v52, v209);
      v187 = v41;
      v58 = v56;
      v186 = v56;
      (*(v55 + 56))(v26, 0, 1, v57);
      v59 = v156;
      v60 = &v26[*(v156 + 20)];
      *v60 = 0;
      *(v60 + 1) = 0;
      *(v60 + 2) = 0;
      v26[*(v59 + 24)] = v54;
      sub_252692920();
      sub_2526909C0();
      v61 = v162;
      sub_252499A88(v26, v162, _s18ColorControlCircleVMa);
      v62 = (v61 + *(v191 + 36));
      v63 = v217;
      *v62 = v216;
      v62[1] = v63;
      v62[2] = v218;
      v64 = v197;
      sub_252499E14(v53, v197, type metadata accessor for ColorControl);
      v65 = v201;
      v58(v201, v52, v57);
      v66 = (*(v195 + 80) + 16) & ~*(v195 + 80);
      v67 = (v196 + *(v55 + 80) + v66) & ~*(v55 + 80);
      v68 = swift_allocObject();
      sub_252499A88(v64, v68 + v66, type metadata accessor for ColorControl);
      (*(v55 + 32))(v68 + v67, v65, v57);
      sub_252499AF0();
      v69 = v158;
      sub_252691E60();

      sub_252372288(v61, &qword_27F4DE820, &qword_25269F898);
      v70 = v159;
      (*(v160 + 32))(v159, v69, v161);
      v186(v70 + *(v157 + 52), v202, v57);
      LOBYTE(v68) = sub_252691A10();
      sub_252690760();
      v72 = v71;
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v79 = v163;
      sub_2523714D4(v70, v163, &qword_27F4DE830, &qword_25269F8A8);
      v80 = v79 + *(v194 + 36);
      *v80 = v68;
      *(v80 + 8) = v72;
      *(v80 + 16) = v74;
      *(v80 + 24) = v76;
      *(v80 + 32) = v78;
      *(v80 + 40) = 0;
      v81 = v165;
      sub_2526917C0();
      v82 = sub_252499BAC();
      sub_252692020();
      (*(v167 + 8))(v81, v168);
      sub_252372288(v79, &qword_27F4DE838, &qword_25269F8B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD308, &unk_25269CC10);
      v83 = v175;
      if (v192)
      {
        v84 = swift_allocObject();
        *(v84 + 16) = xmmword_252694EA0;
        sub_2526912A0();
        sub_252691270();
      }

      else
      {
        v84 = swift_allocObject();
        *(v84 + 16) = xmmword_252694E90;
        sub_2526912A0();
      }

      *&v213 = v84;
      sub_252499A40(&qword_27F4DD310, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD318, &qword_25269D6A0);
      sub_252400FC8(&qword_27F4DD320, &qword_27F4DD318, &qword_25269D6A0, MEMORY[0x277D83970]);
      v137 = v154;
      v138 = v155;
      sub_252693190();
      v139 = v205;
      v140 = v190;
      v141 = v153;
      *&v213 = v194;
      *(&v213 + 1) = v82;
      swift_getOpaqueTypeConformance2();
      v142 = v169;
      v143 = v193;
      sub_252691EB0();
      (*(v83 + 8))(v137, v138);
      (*(v172 + 8))(v143, v141);
      v144 = v170;
      v145 = &v170[*(v171 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD830, &qword_25269D680);
      sub_252690D90();
      *v145 = 0;
      sub_2523714D4(v142, v144, &qword_27F4DE848, &qword_25269F8C0);
      sub_252499C64();
      v146 = v173;
      sub_252692070();
      sub_252372288(v144, &qword_27F4DE850, &qword_25269F8C8);
      *&v213 = sub_252692C40();
      *(&v213 + 1) = v147;
      sub_252404480();
      v148 = v174;
      sub_252690BD0();

      sub_252372288(v146, &qword_27F4DE858, &qword_25269F8D0);
      sub_25237153C(v148, v198, &qword_27F4DE858, &qword_25269F8D0);
      swift_storeEnumTagMultiPayload();
      sub_25249A38C(&qword_27F4DE940, &qword_27F4DE858, &qword_25269F8D0, sub_252499C64);
      v149 = sub_252499844();
      *&v213 = v140;
      *(&v213 + 1) = v149;
      swift_getOpaqueTypeConformance2();
      v150 = v199;
      sub_252691470();
      sub_25237153C(v150, v139, &qword_27F4DE938, &qword_25269F990);
      swift_storeEnumTagMultiPayload();
      sub_25249A290();
      sub_25249A38C(&qword_27F4DE708, &qword_27F4DE710, &qword_25269F7E8, sub_252497F58);
      sub_252691470();
      sub_252372288(v150, &qword_27F4DE938, &qword_25269F990);
      sub_252372288(v148, &qword_27F4DE858, &qword_25269F8D0);
      return (*(v210 + 8))(v202, v209);
    }

    else
    {
      v136 = v188;
      sub_2524907F8(v188);
      sub_25237153C(v136, v205, &qword_27F4DE710, &qword_25269F7E8);
      swift_storeEnumTagMultiPayload();
      sub_25249A290();
      sub_25249A38C(&qword_27F4DE708, &qword_27F4DE710, &qword_25269F7E8, sub_252497F58);
      sub_252691470();
      return sub_252372288(v136, &qword_27F4DE710, &qword_25269F7E8);
    }
  }

  else
  {
    v202 = v10;
    v188 = v35;
    v85 = v210;
    v86 = *(v210 + 32);
    v87 = v209;
    v194 = v210 + 32;
    v193 = v86;
    (v86)(v42, v49, v209);
    v89 = v85 + 16;
    v88 = *(v85 + 16);
    v90 = v192;
    v91 = &v152 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    v88(v192, v42, v87);
    v92 = v90;
    swift_storeEnumTagMultiPayload();
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658, &unk_25269F720);
    v94 = v166;
    MEMORY[0x2530A4210](v93);
    v95 = type metadata accessor for AccessoryControl.ColorState(0);
    v96 = (*(*(v95 - 8) + 48))(v94, 1, v95);
    v191 = v88;
    v175 = v89;
    if (v96 || v50(v94, 1, v87))
    {
      sub_252372288(v94, &qword_27F4DB2A0, &qword_25269E4A0);
      v97 = 0;
    }

    else
    {
      v151 = v201;
      v88(v201, v94, v87);
      sub_252372288(v94, &qword_27F4DB2A0, &qword_25269E4A0);
      v97 = sub_25248B14C(v91);
      (*(v210 + 8))(v151, v87);
    }

    v98 = v190;
    v99 = v176;
    v100 = v180;
    sub_252499E14(v92, v180 + *(v176 + 20), _s17FavoriteColorCellV5ValueOMa);
    *v100 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210, &qword_25269CB70);
    swift_storeEnumTagMultiPayload();
    *(v100 + *(v99 + 24)) = v97;
    sub_252692920();
    sub_2526909C0();
    v101 = v181;
    sub_252499A88(v100, v181, _s17FavoriteColorCellVMa);
    v102 = (v101 + *(v177 + 36));
    v103 = v214;
    *v102 = v213;
    v102[1] = v103;
    v102[2] = v215;
    v104 = LightbulbColor.approximateID.getter();
    v105 = v202;
    sub_2523714D4(v101, v202, &qword_27F4DD9A8, &qword_25269F920);
    *(v105 + *(v178 + 52)) = v104;
    LOBYTE(v104) = sub_252691A10();
    sub_252690760();
    v107 = v106;
    v109 = v108;
    v111 = v110;
    v113 = v112;
    v114 = v105;
    v115 = v183;
    sub_2523714D4(v114, v183, &qword_27F4DE8B8, &qword_25269F908);
    v116 = v115 + *(v179 + 36);
    *v116 = v104;
    *(v116 + 8) = v107;
    *(v116 + 16) = v109;
    *(v116 + 24) = v111;
    *(v116 + 32) = v113;
    *(v116 + 40) = 0;
    sub_252692920();
    sub_2526909C0();
    v117 = v115;
    v118 = v184;
    sub_2523714D4(v117, v184, &qword_27F4DE8A8, &qword_25269F900);
    v119 = (v118 + *(v182 + 36));
    v120 = v217;
    *v119 = v216;
    v119[1] = v120;
    v119[2] = v218;
    v121 = v185;
    v122 = &v185[*(v98 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD830, &qword_25269D680);
    sub_252690D80();
    *v122 = 0;
    sub_2523714D4(v118, v121, &qword_27F4DE898, &qword_25269F8F8);
    v152 = &v152 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    v123 = v197;
    sub_252499E14(v208, v197, type metadata accessor for ColorControl);
    v124 = v201;
    v125 = v209;
    (v191)(v201, v91, v209);
    v126 = (*(v195 + 80) + 16) & ~*(v195 + 80);
    v127 = v210;
    v128 = (v196 + *(v210 + 80) + v126) & ~*(v210 + 80);
    v129 = swift_allocObject();
    sub_252499A88(v123, v129 + v126, type metadata accessor for ColorControl);
    (v193)(v129 + v128, v124, v125);
    v130 = sub_252499844();
    v131 = v186;
    sub_252691E60();

    sub_252372288(v121, &qword_27F4DE880, &qword_25269F8F0);
    v132 = v187;
    v133 = v200;
    (*(v187 + 16))(v198, v131, v200);
    swift_storeEnumTagMultiPayload();
    sub_25249A38C(&qword_27F4DE940, &qword_27F4DE858, &qword_25269F8D0, sub_252499C64);
    v211 = v98;
    v212 = v130;
    swift_getOpaqueTypeConformance2();
    v134 = v199;
    sub_252691470();
    sub_25237153C(v134, v205, &qword_27F4DE938, &qword_25269F990);
    swift_storeEnumTagMultiPayload();
    sub_25249A290();
    sub_25249A38C(&qword_27F4DE708, &qword_27F4DE710, &qword_25269F7E8, sub_252497F58);
    sub_252691470();
    sub_252372288(v134, &qword_27F4DE938, &qword_25269F990);
    (*(v132 + 8))(v131, v133);
    sub_25249A504(v192, _s17FavoriteColorCellV5ValueOMa);
    return (*(v127 + 8))(v152, v125);
  }
}

uint64_t sub_252495C1C(uint64_t a1, uint64_t a2)
{
  v3 = sub_25248E288(v10);
  v5 = v4;
  v6 = type metadata accessor for AccessoryControl.ColorState(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    sub_252372288(v5, &qword_27F4DB2A8, &unk_2526960B0);
    v7 = sub_25268ED20();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v5, a2, v7);
    (*(v8 + 56))(v5, 0, 1, v7);
  }

  return (v3)(v10, 0);
}

uint64_t sub_252495D4C(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for ColorControl.GridElement(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v9 = *(a2 + 16);
  v10 = v9[2];
  if (v10)
  {
    v11 = v10 - 1;
    if (*(v9[v10 + 3] + 16) < 4uLL)
    {
      sub_252499E14(a1, v8, type metadata accessor for ColorControl.GridElement);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_25261EF60(v9);
        *(a2 + 16) = v9;
      }

      if (v10 > v9[2])
      {
        __break(1u);
      }

      else
      {
        v2 = v9 + 4;
        a1 = v9[v11 + 4];
        v13 = swift_isUniquelyReferenced_nonNull_native();
        v9[v11 + 4] = a1;
        if (v13)
        {
LABEL_7:
          v15 = a1[2];
          v14 = a1[3];
          if (v15 >= v14 >> 1)
          {
            a1 = sub_25236971C((v14 > 1), v15 + 1, 1, a1);
            v2[v11] = a1;
          }

          a1[2] = v15 + 1;
          sub_252499A88(v8, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, type metadata accessor for ColorControl.GridElement);
          goto LABEL_15;
        }
      }

      a1 = sub_25236971C(0, a1[2] + 1, 1, a1);
      v2[v11] = a1;
      goto LABEL_7;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB190, &qword_2526950B8);
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_252694E90;
  sub_252499E14(a1, v17 + v16, type metadata accessor for ColorControl.GridElement);
  swift_beginAccess();
  v18 = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v9;
  if ((v18 & 1) == 0)
  {
    v9 = sub_252369744(0, v9[2] + 1, 1, v9);
    *(a2 + 16) = v9;
  }

  v20 = v9[2];
  v19 = v9[3];
  if (v20 >= v19 >> 1)
  {
    v9 = sub_252369744((v19 > 1), v20 + 1, 1, v9);
  }

  v9[2] = v20 + 1;
  v9[v20 + 4] = v17;
LABEL_15:
  *(a2 + 16) = v9;
  return swift_endAccess();
}

uint64_t sub_252496044()
{
  v1 = *v0;
  v2 = v0[1];
  sub_252693460();
  MEMORY[0x2530A4FE0](v1);
  sub_2523DC0CC(v4, v2);
  return sub_2526934C0();
}

uint64_t sub_2524960A0(uint64_t a1)
{
  v3 = v1[1];
  MEMORY[0x2530A4FE0](*v1);

  return sub_2523DC0CC(a1, v3);
}

uint64_t sub_2524960EC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_252693460();
  MEMORY[0x2530A4FE0](v2);
  sub_2523DC0CC(v5, v3);
  return sub_2526934C0();
}

uint64_t sub_252496144(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_2523E82EC(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_252496168()
{
  v1 = v0;
  v2 = sub_25268ED20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ColorControl.GridElement(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252693460();
  sub_252499E14(v1, v8, type metadata accessor for ColorControl.GridElement);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    MEMORY[0x2530A4FE0](v10);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x2530A4FE0](1);
    sub_252499A40(&qword_27F4DB798, MEMORY[0x277D15B48], MEMORY[0x277D15B50]);
    sub_252692B30();
    (*(v3 + 8))(v5, v2);
  }

  return sub_2526934C0();
}

uint64_t sub_252496364(uint64_t a1)
{
  v2 = sub_25268ED20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252499E14(v1, v8, type metadata accessor for ColorControl.GridElement);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    return MEMORY[0x2530A4FE0](v10);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x2530A4FE0](1);
    sub_252499A40(&qword_27F4DB798, MEMORY[0x277D15B48], MEMORY[0x277D15B50]);
    sub_252692B30();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_25249653C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25268ED20();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252693460();
  sub_252499E14(v2, v9, type metadata accessor for ColorControl.GridElement);
  v10 = (*(v4 + 48))(v9, 2, v3);
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    MEMORY[0x2530A4FE0](v11);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x2530A4FE0](1);
    sub_252499A40(&qword_27F4DB798, MEMORY[0x277D15B48], MEMORY[0x277D15B50]);
    sub_252692B30();
    (*(v4 + 8))(v6, v3);
  }

  return sub_2526934C0();
}

uint64_t sub_252496774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a2;
  v79 = a3;
  v6 = type metadata accessor for ColorControl(0);
  v76 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v77 = v7;
  v78 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = _s17FavoriteColorCellVMa(0);
  MEMORY[0x28223BE20](v64);
  v9 = (&v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD9A8, &qword_25269F920);
  MEMORY[0x28223BE20](v67);
  v69 = &v62 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE8B8, &qword_25269F908);
  MEMORY[0x28223BE20](v66);
  v68 = &v62 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE8A8, &qword_25269F900);
  MEMORY[0x28223BE20](v65);
  v71 = &v62 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE898, &qword_25269F8F8);
  MEMORY[0x28223BE20](v70);
  v73 = &v62 - v13;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE880, &qword_25269F8F0);
  MEMORY[0x28223BE20](v75);
  v74 = &v62 - v14;
  v15 = sub_25268ED20();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v72 = v17;
  v81 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v62 - v19;
  v21 = _s17FavoriteColorCellV5ValueOMa(0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *(v16 + 16);
  v80(v24, a1, v15, v22);
  swift_storeEnumTagMultiPayload();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658, &unk_25269F720);
  MEMORY[0x2530A4210](v25);
  v26 = type metadata accessor for AccessoryControl.ColorState(0);
  if ((*(*(v26 - 8) + 48))(v20, 1, v26) || (*(v16 + 48))(v20, 1, v15))
  {
    sub_252372288(v20, &qword_27F4DB2A0, &qword_25269E4A0);
    v27 = 0;
    v28 = a1;
  }

  else
  {
    v61 = v81;
    (v80)(v81, v20, v15);
    sub_252372288(v20, &qword_27F4DB2A0, &qword_25269E4A0);
    v28 = a1;
    v27 = sub_25248B14C(a1);
    (*(v16 + 8))(v61, v15);
  }

  v29 = v64;
  v30 = v9 + *(v64 + 20);
  v63 = v24;
  sub_252499E14(v24, v30, _s17FavoriteColorCellV5ValueOMa);
  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210, &qword_25269CB70);
  swift_storeEnumTagMultiPayload();
  *(v9 + *(v29 + 24)) = v27;
  sub_252692920();
  sub_2526909C0();
  v31 = v9;
  v32 = v69;
  sub_252499A88(v31, v69, _s17FavoriteColorCellVMa);
  v33 = (v32 + *(v67 + 36));
  v34 = v84;
  *v33 = v83;
  v33[1] = v34;
  v33[2] = v85;
  v35 = LightbulbColor.approximateID.getter();
  v36 = v68;
  sub_2523714D4(v32, v68, &qword_27F4DD9A8, &qword_25269F920);
  *(v36 + *(v66 + 52)) = v35;
  LOBYTE(v35) = sub_252691A10();
  sub_252690760();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v36;
  v46 = v71;
  sub_2523714D4(v45, v71, &qword_27F4DE8B8, &qword_25269F908);
  v47 = v46 + *(v65 + 36);
  *v47 = v35;
  *(v47 + 8) = v38;
  *(v47 + 16) = v40;
  *(v47 + 24) = v42;
  *(v47 + 32) = v44;
  *(v47 + 40) = 0;
  sub_252692920();
  sub_2526909C0();
  v48 = v46;
  v49 = v73;
  sub_2523714D4(v48, v73, &qword_27F4DE8A8, &qword_25269F900);
  v50 = (v49 + *(v70 + 36));
  v51 = v87;
  *v50 = v86;
  v50[1] = v51;
  v50[2] = v88;
  v52 = v74;
  v53 = &v74[*(v75 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD830, &qword_25269D680);
  sub_252690D80();
  *v53 = 0;
  sub_2523714D4(v49, v52, &qword_27F4DE898, &qword_25269F8F8);
  v54 = v78;
  sub_252499E14(v82, v78, type metadata accessor for ColorControl);
  v55 = v81;
  (v80)(v81, v28, v15);
  v56 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v57 = v15;
  v58 = (v77 + *(v16 + 80) + v56) & ~*(v16 + 80);
  v59 = swift_allocObject();
  sub_252499A88(v54, v59 + v56, type metadata accessor for ColorControl);
  (*(v16 + 32))(v59 + v58, v55, v57);
  sub_252499844();
  sub_252691E60();

  sub_252372288(v52, &qword_27F4DE880, &qword_25269F8F0);
  return sub_25249A504(v63, _s17FavoriteColorCellV5ValueOMa);
}

uint64_t sub_2524970AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_25268ED20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v23 = &v21 - v10;
  v11 = *(a1 + 16);
  v25 = MEMORY[0x277D84F90];
  sub_252370500(0, v11, 0);
  v12 = v25;
  if (v11)
  {
    v13 = a1 + 32;
    v21 = v4;
    v22 = (v6 + 56);
    v14 = (v6 + 32);
    while (1)
    {
      sub_252371478(v13, v24);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v22)(v4, 0, 1, v5);
      v15 = *v14;
      v16 = v23;
      (*v14)(v23, v4, v5);
      v15(v8, v16, v5);
      v25 = v12;
      v17 = v8;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_252370500((v18 > 1), v19 + 1, 1);
        v12 = v25;
      }

      *(v12 + 16) = v19 + 1;
      v15((v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19), v17, v5);
      v13 += 32;
      --v11;
      v8 = v17;
      v4 = v21;
      if (!v11)
      {
        return v12;
      }
    }

    (*v22)(v4, 1, 1, v5);
    sub_252372288(v4, &qword_27F4DB2A8, &unk_2526960B0);
    return 0;
  }

  return v12;
}

uint64_t sub_252497370(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ColorControl(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC320, &unk_25269FA20);
  return sub_2526924F0();
}

uint64_t sub_2524973E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658, &unk_25269F720);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = type metadata accessor for AccessoryControl.ColorState(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v13 = sub_2526905A0();
  __swift_project_value_buffer(v13, qword_27F4E4B18);
  sub_252499E14(a1, v12, type metadata accessor for AccessoryControl.ColorState);
  v14 = sub_252690580();
  v15 = sub_252692F10();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136446210;
    sub_252499E14(v12, v9, type metadata accessor for AccessoryControl.ColorState);
    v19 = sub_252692C20();
    v21 = v20;
    sub_25249A504(v12, type metadata accessor for AccessoryControl.ColorState);
    v22 = sub_2525BDA90(v19, v21, &v25);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_252309000, v14, v15, "ColorControl updated colorState %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x2530A5A40](v18, -1, -1);
    MEMORY[0x2530A5A40](v17, -1, -1);
  }

  else
  {

    sub_25249A504(v12, type metadata accessor for AccessoryControl.ColorState);
  }

  if (qword_27F4DAA80 != -1)
  {
    swift_once();
  }

  type metadata accessor for ColorControl(0);
  sub_2526926D0();
  sub_252535A84(v6, a1);
  return sub_252372288(v6, &qword_27F4DE658, &unk_25269F720);
}

uint64_t sub_25249770C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB178, &qword_2526950B0);
  v0 = sub_25268ED20();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25269F6B0;
  v5 = (v4 + v3);
  *v5 = sub_25268ED00();
  v6 = *MEMORY[0x277D15B28];
  v7 = *(v1 + 104);
  v7(v5, v6, v0);
  *&v5[v2] = sub_25268ED00();
  v7(&v5[v2], v6, v0);
  *&v5[2 * v2] = sub_25268ED00();
  v7(&v5[2 * v2], v6, v0);
  *&v5[3 * v2] = sub_25268ED00();
  v7(&v5[3 * v2], v6, v0);
  *&v5[4 * v2] = sub_25268ED00();
  v7(&v5[4 * v2], v6, v0);
  v2 *= 5;
  *&v5[v2] = sub_25268ED00();
  result = v7(&v5[v2], v6, v0);
  qword_27F4DE650 = v4;
  return result;
}

uint64_t sub_2524978DC@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_252691820();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = sub_252691800();
  v27 = *(v8 - 8);
  v9 = v27;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_252691810();
  sub_252691830();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEA00, &qword_25269FC48) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_252497B6C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2526912F0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE9F0, &qword_25269FC38);
  sub_2524978DC((a2 + *(v3 + 44)));
  v4 = [objc_opt_self() systemGroupedBackgroundColor];
  v5 = sub_252692240();
  v6 = sub_252691A20();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE9F8, &qword_25269FC40);
  v8 = a2 + *(result + 36);
  *v8 = v5;
  *(v8 + 8) = v6;
  return result;
}

unint64_t sub_252497C24()
{
  result = qword_27F4DE6A8;
  if (!qword_27F4DE6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE6A0, &qword_25269F7C0);
    sub_252497CDC();
    sub_252400FC8(&qword_27F4DE6F8, &qword_27F4DE690, &qword_25269F7B0, MEMORY[0x277CDE590]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE6A8);
  }

  return result;
}

unint64_t sub_252497CDC()
{
  result = qword_27F4DE6B0;
  if (!qword_27F4DE6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE6B8, &qword_25269F7C8);
    sub_252497D94();
    sub_252400FC8(&qword_27F4DE6E8, &qword_27F4DE6F0, &qword_25269F7E0, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE6B0);
  }

  return result;
}

unint64_t sub_252497D94()
{
  result = qword_27F4DE6C0;
  if (!qword_27F4DE6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE6C8, &qword_25269F7D0);
    sub_252400FC8(&qword_27F4DE6D0, &qword_27F4DE6D8, &qword_25269F7D8, MEMORY[0x277CDDB40]);
    sub_252497E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE6C0);
  }

  return result;
}

unint64_t sub_252497E4C()
{
  result = qword_27F4DE6E0;
  if (!qword_27F4DE6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE6E0);
  }

  return result;
}

unint64_t sub_252497EA0()
{
  result = qword_27F4DE700;
  if (!qword_27F4DE700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE680, &qword_25269F7A0);
    sub_25249A38C(&qword_27F4DE708, &qword_27F4DE710, &qword_25269F7E8, sub_252497F58);
    sub_252497E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE700);
  }

  return result;
}

unint64_t sub_252497F58()
{
  result = qword_27F4DE718;
  if (!qword_27F4DE718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE720, &qword_25269F7F0);
    sub_252498010();
    sub_252400FC8(&qword_27F4DD828, &qword_27F4DD830, &qword_25269D680, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE718);
  }

  return result;
}

unint64_t sub_252498010()
{
  result = qword_27F4DE728;
  if (!qword_27F4DE728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE730, &qword_25269F7F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE738, &qword_25269F800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE740, &qword_25269F808);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE748, &qword_25269F810);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE750, &qword_25269F818);
    sub_25249827C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE780, &qword_25269F830);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE788, &qword_25269F838);
    sub_252400FC8(&qword_27F4DE790, &qword_27F4DE788, &qword_25269F838, MEMORY[0x277CDF118]);
    sub_2524983F0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_252499A40(&qword_27F4DD380, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE728);
  }

  return result;
}

unint64_t sub_25249827C()
{
  result = qword_27F4DE758;
  if (!qword_27F4DE758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE748, &qword_25269F810);
    sub_252498308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE758);
  }

  return result;
}

unint64_t sub_252498308()
{
  result = qword_27F4DE760;
  if (!qword_27F4DE760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE768, &qword_25269F820);
    sub_252400FC8(&qword_27F4DE770, &qword_27F4DE778, &qword_25269F828, MEMORY[0x277CE1148]);
    sub_252499A40(&qword_27F4DD380, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE760);
  }

  return result;
}

unint64_t sub_2524983F0()
{
  result = qword_27F4DE798;
  if (!qword_27F4DE798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE798);
  }

  return result;
}

uint64_t sub_252498444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ColorControl(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_252493D5C(a1, v2 + v6, a2, v8, v9);
}

unint64_t sub_2524984FC()
{
  result = qword_27F4DE7C8;
  if (!qword_27F4DE7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE7C8);
  }

  return result;
}

uint64_t sub_252498550(uint64_t a1)
{
  v3 = *(type metadata accessor for ColorControl(0) - 8);
  v5 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25248EF04(a1, v5, v4);
}

unint64_t sub_2524985D8()
{
  result = qword_27F4DE7D8;
  if (!qword_27F4DE7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE7D0, &qword_25269F858);
    sub_252400FC8(&qword_27F4DE7E0, &qword_27F4DE7E8, &qword_25269F860, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE7D8);
  }

  return result;
}

double sub_252498690()
{
  sub_252690CE0();
  type metadata accessor for ColorControl(0);

  return sub_252491D0C();
}

unint64_t sub_25249875C()
{
  result = qword_27F4DE800;
  if (!qword_27F4DE800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE7F8, &unk_25269F870);
    sub_25248DFB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE800);
  }

  return result;
}

void sub_2524987E0(void *a1)
{
  v2 = sub_25268D840();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 count];
  v8 = v7;
  if (v7)
  {
    if (v7 < 1)
    {
      v9 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB180, &qword_2526A47D0);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size_0(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 1;
      }

      v9[2] = v8;
      v9[3] = 2 * (v11 >> 5);
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v12 = v9[3];

  sub_252692EC0();
  if (v8 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = v12 >> 1;
  v14 = v9 + 4;
  if (v8)
  {
    v13 -= v8;
    sub_252499A40(&qword_27F4DE908, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
    do
    {
      sub_252693150();
      if (!v34)
      {
        goto LABEL_38;
      }

      sub_25235E20C(&v33, v14);
      v14 += 2;
    }

    while (--v8);
  }

  v30 = v3;
  sub_252499A40(&qword_27F4DE908, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_252693150();
  if (v32)
  {
    while (1)
    {
      sub_25235E20C(&v31, &v33);
      if (!v13)
      {
        v15 = v9[3];
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB180, &qword_2526A47D0);
        v18 = swift_allocObject();
        v19 = _swift_stdlib_malloc_size_0(v18);
        v20 = v19 - 32;
        if (v19 < 32)
        {
          v20 = v19 - 1;
        }

        v21 = v20 >> 5;
        v18[2] = v17;
        v18[3] = 2 * (v20 >> 5);
        v22 = (v18 + 4);
        v23 = v9[3] >> 1;
        if (v9[2])
        {
          v24 = v9 + 4;
          if (v18 != v9 || v22 >= v24 + 32 * v23)
          {
            memmove(v18 + 4, v24, 32 * v23);
          }

          v9[2] = 0;
        }

        v14 = (v22 + 32 * v23);
        v13 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;

        v9 = v18;
      }

      v25 = __OFSUB__(v13--, 1);
      if (v25)
      {
        break;
      }

      sub_25235E20C(&v33, v14);
      v14 += 2;
      sub_252693150();
      if (!v32)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_30:
  (*(v30 + 8))(v6, v2);
  sub_252372288(&v31, &qword_27F4DE910, &unk_25269F970);
  v26 = v9[3];
  if (v26 >= 2)
  {
    v27 = v26 >> 1;
    v25 = __OFSUB__(v27, v13);
    v28 = v27 - v13;
    if (v25)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

    v9[2] = v28;
  }
}

uint64_t sub_252498B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268ED20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ColorControl.GridElement(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB860, &qword_25269FC50);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_252499E14(a1, &v21 - v12, type metadata accessor for ColorControl.GridElement);
  sub_252499E14(a2, &v13[v15], type metadata accessor for ColorControl.GridElement);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (!v17)
  {
    sub_252499E14(v13, v10, type metadata accessor for ColorControl.GridElement);
    if (!v16(&v13[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v18 = sub_25268ED10();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_25249A504(v13, type metadata accessor for ColorControl.GridElement);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v13[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v13[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_252372288(v13, &qword_27F4DB860, &qword_25269FC50);
    v18 = 0;
    return v18 & 1;
  }

  sub_25249A504(v13, type metadata accessor for ColorControl.GridElement);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_252498E84()
{
  v0 = sub_25268ED20();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE900, &unk_25269F960);
  v20 = sub_252690550();
  v4 = *(v20 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = 6;
  v15 = swift_allocObject();
  v8 = v15 + v6;
  sub_252690540();
  sub_252690540();
  sub_252690540();
  sub_252690540();
  sub_252690540();
  v18 = v5;
  sub_252690540();
  v21 = MEMORY[0x277D84F90];
  sub_252370500(0, 6, 0);
  v9 = v21;
  v17 = *(v4 + 16);
  v19 = v4 + 16;
  v16 = *MEMORY[0x277D15B40];
  v14 = v8;
  do
  {
    v17(v3, v8, v20);
    (*(v1 + 104))(v3, v16, v0);
    v21 = v9;
    v10 = v0;
    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_252370500((v11 > 1), v12 + 1, 1);
      v9 = v21;
    }

    *(v9 + 16) = v12 + 1;
    (*(v1 + 32))(v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v12, v3, v10);
    v8 += v18;
    --v7;
    v0 = v10;
  }

  while (v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v9;
}

uint64_t sub_2524991C8(unsigned __int16 *a1)
{
  v43 = sub_25268F860();
  v2 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_25268ED20();
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a1 + 2);
  v47[0] = *(a1 + 3);
  v10 = *(a1 + 2);
  *(v47 + 5) = *(a1 + 1);
  v37 = v8;
  LOWORD(v45) = v8;
  BYTE2(v45) = v9;
  *(&v45 + 3) = *(a1 + 3);
  *(&v45 + 1) = *(a1 + 1);
  v46 = v10;
  v36 = v10;
  v11 = sub_252488DD8(v10);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v35 = v9;
    *&v45 = MEMORY[0x277D84F90];
    sub_252370500(0, v12, 0);
    v14 = v45;
    v16 = *(v2 + 16);
    v15 = v2 + 16;
    v17 = *(v15 + 64);
    v34 = v11;
    v18 = v11 + ((v17 + 32) & ~v17);
    v39 = *(v15 + 56);
    v40 = v16;
    v41 = v15;
    v19 = (v15 - 8);
    v38 = v5 + 32;
    do
    {
      v20 = v43;
      v40(v4, v18, v43);
      sub_25268F850();
      (*v19)(v4, v20);
      *&v45 = v14;
      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_252370500((v21 > 1), v22 + 1, 1);
        v14 = v45;
      }

      *(v14 + 16) = v22 + 1;
      (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22, v7, v42);
      v18 += v39;
      --v12;
    }

    while (v12);

    LOBYTE(v9) = v35;
    v13 = MEMORY[0x277D84F90];
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v44 = v13;
  sub_25240BB8C(v14);

  v23 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v24 = sub_252692D70();

  v25 = [v23 initWithArray_];

  sub_2524987E0(v25);
  v27 = v26;

  v28 = sub_2524970AC(v27);

  if (v28)
  {
    v44 = v28;
    v29 = 6 - *(v28 + 16);
    LOWORD(v45) = v37;
    BYTE2(v45) = v9;
    *(&v45 + 3) = v47[0];
    *(&v45 + 1) = *(v47 + 5);
    v46 = v36;
    if (v9)
    {
      v30 = sub_252498E84();
    }

    else
    {
      if (qword_27F4DAA88 != -1)
      {
        swift_once();
      }

      v30 = qword_27F4DE650;
    }

    v31 = sub_2524897B8(v30);

    v32 = *(v31 + 16);
    if (v32 >= v29)
    {
      v32 = v29;
    }

    if (v32 < 1)
    {
    }

    else
    {
      sub_2523C5F34(v31, v31 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), 0, (2 * v32) | 1);
    }
  }

  return v44;
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for ColorControl(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_25235E264(*(v0 + v4), *(v0 + v4 + 8));
  sub_25235E264(*(v5 + 16), *(v5 + 24));
  sub_252457A80(*(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 97));
  v6 = v0 + v4 + *(v1 + 28);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658, &unk_25269F720) + 32);
  v8 = type metadata accessor for AccessoryControl.ColorState(0);
  if (!(*(*(v8 - 8) + 48))(v6 + v7, 1, v8))
  {
    v9 = sub_25268ED20();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v7, 1, v9))
    {
      (*(v10 + 8))(v6 + v7, v9);
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

unint64_t sub_252499844()
{
  result = qword_27F4DE888;
  if (!qword_27F4DE888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE880, &qword_25269F8F0);
    sub_2524998FC();
    sub_252400FC8(&qword_27F4DD828, &qword_27F4DD830, &qword_25269D680, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE888);
  }

  return result;
}

unint64_t sub_2524998FC()
{
  result = qword_27F4DE890;
  if (!qword_27F4DE890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE898, &qword_25269F8F8);
    sub_252499988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE890);
  }

  return result;
}

unint64_t sub_252499988()
{
  result = qword_27F4DE8A0;
  if (!qword_27F4DE8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE8A8, &qword_25269F900);
    sub_252400FC8(&qword_27F4DE8B0, &qword_27F4DE8B8, &qword_25269F908, MEMORY[0x277CE1148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE8A0);
  }

  return result;
}

uint64_t sub_252499A40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_252499A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_252499AF0()
{
  result = qword_27F4DE8D0;
  if (!qword_27F4DE8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE820, &qword_25269F898);
    sub_252499A40(&qword_27F4DE8D8, _s18ColorControlCircleVMa, &unk_25269FCF4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE8D0);
  }

  return result;
}

unint64_t sub_252499BAC()
{
  result = qword_27F4DE8E0;
  if (!qword_27F4DE8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE838, &qword_25269F8B0);
    sub_252400FC8(&qword_27F4DE8E8, &qword_27F4DE830, &qword_25269F8A8, MEMORY[0x277CE1148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE8E0);
  }

  return result;
}

unint64_t sub_252499C64()
{
  result = qword_27F4DE8F0;
  if (!qword_27F4DE8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE850, &qword_25269F8C8);
    sub_252499D1C();
    sub_252400FC8(&qword_27F4DD828, &qword_27F4DD830, &qword_25269D680, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE8F0);
  }

  return result;
}

unint64_t sub_252499D1C()
{
  result = qword_27F4DE8F8;
  if (!qword_27F4DE8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE848, &qword_25269F8C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE838, &qword_25269F8B0);
    sub_252499BAC();
    swift_getOpaqueTypeConformance2();
    sub_252499A40(&qword_27F4DD380, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE8F8);
  }

  return result;
}

uint64_t sub_252499E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_18Tm()
{
  v1 = type metadata accessor for ColorControl(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 8) + 64);
  v4 = sub_25268ED20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v15 = *(v5 + 64);
  v7 = v0 + v3;
  sub_25235E264(*(v0 + v3), *(v0 + v3 + 8));
  sub_25235E264(*(v7 + 16), *(v7 + 24));
  sub_252457A80(*(v7 + 32), *(v7 + 40), *(v7 + 48), *(v7 + 56), *(v7 + 64), *(v7 + 72), *(v7 + 80), *(v7 + 88), *(v7 + 96), *(v7 + 97));
  v8 = v0 + v3 + *(v1 + 28);

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658, &unk_25269F720) + 32);
  v10 = type metadata accessor for AccessoryControl.ColorState(0);
  if (!(*(*(v10 - 8) + 48))(v8 + v9, 1, v10) && !(*(v5 + 48))(v8 + v9, 1, v4))
  {
    (*(v5 + 8))(v8 + v9, v4);
  }

  v11 = v2 | v6;
  v12 = (v3 + v14 + v6) & ~v6;

  (*(v5 + 8))(v0 + v12, v4);

  return MEMORY[0x2821FE8E8](v0, v12 + v15, v11 | 7);
}

uint64_t sub_25249A0EC(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, __n128, __n128))
{
  v4 = *(type metadata accessor for ColorControl(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7.n128_u64[0] = *(v2 + v6);
  v8.n128_u64[0] = *(v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v7, v8);
}

unint64_t sub_25249A1D8()
{
  result = qword_27F4DE928;
  if (!qword_27F4DE928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE918, &qword_25269F988);
    sub_25249A290();
    sub_25249A38C(&qword_27F4DE708, &qword_27F4DE710, &qword_25269F7E8, sub_252497F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE928);
  }

  return result;
}

unint64_t sub_25249A290()
{
  result = qword_27F4DE930;
  if (!qword_27F4DE930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE938, &qword_25269F990);
    sub_25249A38C(&qword_27F4DE940, &qword_27F4DE858, &qword_25269F8D0, sub_252499C64);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE880, &qword_25269F8F0);
    sub_252499844();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE930);
  }

  return result;
}

uint64_t sub_25249A38C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_252499A40(&qword_27F4DD380, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25249A444()
{
  v1 = *(type metadata accessor for ColorControl(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_25268ED20() - 8);
  return sub_252495C1C(v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_25249A504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_8Tm()
{
  v1 = type metadata accessor for ColorControl(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_25235E264(*(v0 + v4), *(v0 + v4 + 8));
  sub_25235E264(*(v5 + 16), *(v5 + 24));
  sub_252457A80(*(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 97));
  v6 = v0 + v4 + *(v1 + 28);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658, &unk_25269F720) + 32);
  v8 = type metadata accessor for AccessoryControl.ColorState(0);
  if (!(*(*(v8 - 8) + 48))(v6 + v7, 1, v8))
  {
    v9 = sub_25268ED20();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v7, 1, v9))
    {
      (*(v10 + 8))(v6 + v7, v9);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_25249A778()
{
  v1 = *(type metadata accessor for ColorControl(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_252492E14(v2);
}

unint64_t sub_25249A7E0()
{
  result = qword_27F4DE998;
  if (!qword_27F4DE998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE968, &qword_25269F9B8);
    sub_252499AF0();
    sub_25249A86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE998);
  }

  return result;
}

unint64_t sub_25249A86C()
{
  result = qword_27F4DE9A0;
  if (!qword_27F4DE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE9A0);
  }

  return result;
}

unint64_t sub_25249A8C0()
{
  result = qword_27F4DE9A8;
  if (!qword_27F4DE9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE990, &unk_25269FA10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE820, &qword_25269F898);
    sub_252499AF0();
    swift_getOpaqueTypeConformance2();
    sub_252400FC8(&qword_27F4DC198, &qword_27F4DC1A0, qword_2526A39C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE9A8);
  }

  return result;
}

uint64_t sub_25249A9B4()
{
  v1 = *(type metadata accessor for ColorControl(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_252492E88(v2);
}

uint64_t sub_25249AA48(char a1)
{
  v3 = *(type metadata accessor for ColorControl(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_252497370(a1 & 1, v4);
}

uint64_t sub_25249AAB8(uint64_t a1)
{
  v3 = *(type metadata accessor for ColorControl(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2524973E0(a1, v4);
}

uint64_t sub_25249AB58(uint64_t a1)
{
  v1 = sub_25268ED20();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_25249ABD0()
{
  result = qword_27F4DE9D0;
  if (!qword_27F4DE9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE9D8, &qword_25269FAB8);
    sub_252497C24();
    sub_252497EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE9D0);
  }

  return result;
}

unint64_t sub_25249AC60()
{
  result = qword_27F4DE9E0;
  if (!qword_27F4DE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DE9E0);
  }

  return result;
}

unint64_t sub_25249AD34()
{
  result = qword_27F4DEA08;
  if (!qword_27F4DEA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DE9F8, &qword_25269FC40);
    sub_252400FC8(&qword_27F4DEA10, &qword_27F4DEA18, &qword_25269FC58, MEMORY[0x277CE1198]);
    sub_252400FC8(&qword_27F4DEA20, &qword_27F4DEA28, &qword_25269FC60, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DEA08);
  }

  return result;
}

double sub_25249AE1C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2526914B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252691670();
  sub_252690A00();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  (*(v5 + 8))(v7, v4);
  v74.origin.x = v9;
  v74.origin.y = v11;
  v74.size.width = v13;
  v74.size.height = v15;
  MidX = CGRectGetMidX(v74);
  v75.origin.x = v9;
  v75.origin.y = v11;
  v75.size.width = v13;
  v75.size.height = v15;
  MidY = CGRectGetMidY(v75);
  sub_2526909F0();
  v17 = v16;
  v19 = v18;
  v20 = v16 * 0.08;
  v21 = v16 * 0.08 * 0.5;
  v76.origin.x = 0.0;
  v76.origin.y = 0.0;
  v76.size.width = v17;
  v76.size.height = v19;
  v77 = CGRectInset(v76, v21, v21);
  y = v77.origin.y;
  x = v77.origin.x;
  height = v77.size.height;
  width = v77.size.width;
  v77.origin.x = 0.0;
  v77.origin.y = 0.0;
  v77.size.width = v17;
  v77.size.height = v19;
  v78 = CGRectInset(v77, v17 * 0.12, v17 * 0.12);
  v35 = v78.origin.y;
  v36 = v78.origin.x;
  v33 = v78.size.height;
  v34 = v78.size.width;
  v78.origin.x = 0.0;
  v78.origin.y = 0.0;
  v78.size.width = v17;
  v78.size.height = v19;
  v79 = CGRectInset(v78, v17 * 0.03 * 0.5, v17 * 0.03 * 0.5);
  v22 = v79.origin.x;
  v23 = v79.origin.y;
  v24 = v79.size.width;
  v25 = v79.size.height;
  v79.origin.x = 0.0;
  v79.origin.y = 0.0;
  v79.size.width = v17;
  v79.size.height = v19;
  v80 = CGRectInset(v79, v17 * 0.25, v17 * 0.25);
  v57[0] = v20;
  v57[1] = x;
  v57[2] = y;
  v57[3] = width;
  v57[4] = height;
  v57[5] = v36;
  v57[6] = v35;
  v57[7] = v34;
  v57[8] = v33;
  v57[9] = v17 * 0.03;
  v57[10] = v22;
  v57[11] = v23;
  v57[12] = v24;
  v57[13] = v25;
  v57[14] = v80.size.width;
  v57[15] = v80.size.height;
  v26 = sub_252692920();
  v28 = v27;
  sub_25249B278(v57, v58);
  v56[12] = v58[12];
  v56[13] = v58[13];
  v56[14] = *v59;
  *(&v56[14] + 15) = *&v59[15];
  v56[8] = v58[8];
  v56[9] = v58[9];
  v56[10] = v58[10];
  v56[11] = v58[11];
  v56[4] = v58[4];
  v56[5] = v58[5];
  v56[6] = v58[6];
  v56[7] = v58[7];
  v56[0] = v58[0];
  v56[1] = v58[1];
  v56[2] = v58[2];
  v56[3] = v58[3];
  v29 = sub_252692920();
  v31 = v30;
  sub_25249B734(a1, &v45);
  *&v60[0] = v29;
  *(&v60[0] + 1) = v31;
  v60[9] = v53;
  v60[10] = v54;
  *v61 = *v55;
  *&v61[15] = *&v55[15];
  v60[5] = v49;
  v60[6] = v50;
  v60[7] = v51;
  v60[8] = v52;
  v60[1] = v45;
  v60[2] = v46;
  v60[3] = v47;
  v60[4] = v48;
  *(&v56[24] + 8) = v53;
  *(&v56[25] + 8) = v54;
  *(&v56[26] + 8) = *v61;
  *(&v56[20] + 8) = v49;
  *(&v56[21] + 8) = v50;
  *(&v56[22] + 8) = v51;
  *(&v56[23] + 8) = v52;
  *(&v56[16] + 8) = v45;
  *(&v56[17] + 8) = v46;
  *(&v56[18] + 8) = v47;
  *(&v56[19] + 8) = v48;
  *(&v56[15] + 8) = v60[0];
  v71 = v53;
  v72 = v54;
  v73[0] = *v55;
  v67 = v49;
  v68 = v50;
  v69 = v51;
  v70 = v52;
  v63 = v45;
  v64 = v46;
  *(&v56[27] + 7) = *&v55[15];
  v62[0] = v29;
  v62[1] = v31;
  *(v73 + 15) = *&v55[15];
  v65 = v47;
  v66 = v48;
  sub_25237153C(v60, &v43, &qword_27F4DEA58, &qword_25269FD48);
  sub_252372288(v62, &qword_27F4DEA58, &qword_25269FD48);
  *a2 = v26;
  *(a2 + 8) = v28;
  memcpy((a2 + 16), v56, 0x1BBuLL);
  *(a2 + 459) = v43;
  *(a2 + 463) = v44;
  result = MidY;
  *(a2 + 464) = MidX;
  *(a2 + 472) = result;
  return result;
}

double sub_25249B278@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v26 - v7;
  sub_25237153C(v3, v26 - v7, &qword_27F4DB2A8, &unk_2526960B0);
  v9 = sub_25268ED20();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_252372288(v8, &qword_27F4DB2A8, &unk_2526960B0);
LABEL_6:
    v14 = sub_252692920();
    v16 = v15;
    sub_25249BC34(v3, a1, &v73);
    v40 = v85;
    v41 = v86;
    v36 = v81;
    v37 = v82;
    v38 = v83;
    v39 = v84;
    v32 = v77;
    v33 = v78;
    v34 = v79;
    v35 = v80;
    v28 = v73;
    v29 = v74;
    v30 = v75;
    v31 = v76;
    v55 = v85;
    v56 = v86;
    v51 = v81;
    v52 = v82;
    v53 = v83;
    v54 = v84;
    v47 = v77;
    v48 = v78;
    v49 = v79;
    v50 = v80;
    v43 = v73;
    v44 = v74;
    v42 = v87[0];
    v57 = v87[0];
    v45 = v75;
    v46 = v76;
    sub_25237153C(&v28, &v58, &qword_27F4DEA90, &qword_25269FD70);
    sub_252372288(&v43, &qword_27F4DEA90, &qword_25269FD70);
    v71 = v40;
    *v72 = v41;
    *&v72[16] = v42;
    v67 = v36;
    v68 = v37;
    v69 = v38;
    v70 = v39;
    v63 = v32;
    v64 = v33;
    v65 = v34;
    v66 = v35;
    v59 = v28;
    v60 = v29;
    v61 = v30;
    v62 = v31;
    *&v58 = v14;
    *(&v58 + 1) = v16;
    sub_25249D07C(&v58);
    goto LABEL_7;
  }

  if ((*(v10 + 88))(v8, v9) != *MEMORY[0x277D15B30])
  {
    (*(v10 + 8))(v8, v9);
    goto LABEL_6;
  }

  (*(v10 + 8))(v8, v9);
  v11 = sub_252692920();
  v13 = v12;
  sub_25249C5B8(&v73);
  v32 = v77;
  v33 = v78;
  v34 = v79;
  *&v35 = v80;
  v28 = v73;
  v29 = v74;
  v30 = v75;
  v31 = v76;
  v43 = v73;
  v44 = v74;
  v45 = v75;
  v46 = v76;
  v47 = v77;
  v48 = v78;
  v49 = v79;
  *&v50 = v80;
  sub_25237153C(&v28, &v58, &qword_27F4DEAB8, &qword_25269FD88);
  sub_252372288(&v43, &qword_27F4DEAB8, &qword_25269FD88);
  v63 = v32;
  v64 = v33;
  v65 = v34;
  *&v66 = v35;
  v59 = v28;
  v60 = v29;
  v61 = v30;
  v62 = v31;
  *&v58 = v11;
  *(&v58 + 1) = v13;
  sub_25249D088(&v58);
LABEL_7:
  v26[12] = v70;
  v26[13] = v71;
  v27[0] = *v72;
  *(v27 + 15) = *&v72[15];
  v26[8] = v66;
  v26[9] = v67;
  v26[10] = v68;
  v26[11] = v69;
  v26[4] = v62;
  v26[5] = v63;
  v26[6] = v64;
  v26[7] = v65;
  v26[0] = v58;
  v26[1] = v59;
  v26[2] = v60;
  v26[3] = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEA98, &qword_25269FD78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEAA0, &qword_25269FD80);
  v17 = MEMORY[0x277CE11A8];
  sub_252400FC8(&qword_27F4DEAA8, &qword_27F4DEA98, &qword_25269FD78, MEMORY[0x277CE11A8]);
  sub_252400FC8(&qword_27F4DEAB0, &qword_27F4DEAA0, &qword_25269FD80, v17);
  sub_252691470();
  v18 = v86;
  *(a2 + 192) = v85;
  *(a2 + 208) = v18;
  *(a2 + 224) = v87[0];
  *(a2 + 239) = *(v87 + 15);
  v19 = v82;
  *(a2 + 128) = v81;
  *(a2 + 144) = v19;
  v20 = v84;
  *(a2 + 160) = v83;
  *(a2 + 176) = v20;
  v21 = v78;
  *(a2 + 64) = v77;
  *(a2 + 80) = v21;
  v22 = v80;
  *(a2 + 96) = v79;
  *(a2 + 112) = v22;
  v23 = v74;
  *a2 = v73;
  *(a2 + 16) = v23;
  result = *&v75;
  v25 = v76;
  *(a2 + 32) = v75;
  *(a2 + 48) = v25;
  return result;
}

double sub_25249B734@<D0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = *(a1 + *(_s18ColorControlCircleVMa(0) + 24));
  if (v8 != 2)
  {
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_25249D014(&v35);
    goto LABEL_6;
  }

  sub_25237153C(a1, v7, &qword_27F4DB2A8, &unk_2526960B0);
  v9 = sub_25268ED20();
  v10 = (*(*(v9 - 8) + 48))(v7, 1, v9);
  sub_252372288(v7, &qword_27F4DB2A8, &unk_2526960B0);
  if (v10 == 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_252692920();
  v13 = v12;
  sub_25249BA50(&v35);
  v28 = v43;
  v29 = v44;
  v24 = v39;
  v25 = v40;
  v26 = v41;
  v27 = v42;
  v20 = v35;
  v21 = v36;
  v22 = v37;
  v23 = v38;
  v31[8] = v43;
  v31[9] = v44;
  v31[4] = v39;
  v31[5] = v40;
  v31[6] = v41;
  v31[7] = v42;
  v31[0] = v35;
  v31[1] = v36;
  v30 = v45[0];
  v32 = v45[0];
  v31[2] = v37;
  v31[3] = v38;
  sub_25237153C(&v20, v33, &qword_27F4DEA78, &qword_25269FD58);
  sub_252372288(v31, &qword_27F4DEA78, &qword_25269FD58);
  v44 = v28;
  *v45 = v29;
  LOWORD(v45[2]) = v30;
  v40 = v24;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  *&v35 = v11;
  *(&v35 + 1) = v13;
  sub_25249D074(&v35);
LABEL_6:
  v33[8] = v43;
  v33[9] = v44;
  v34[0] = *v45;
  *(v34 + 15) = *(&v45[1] + 7);
  v33[4] = v39;
  v33[5] = v40;
  v33[6] = v41;
  v33[7] = v42;
  v33[0] = v35;
  v33[1] = v36;
  v33[2] = v37;
  v33[3] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEA60, &qword_25269FD50);
  sub_252400FC8(&qword_27F4DEA68, &qword_27F4DEA60, &qword_25269FD50, MEMORY[0x277CE11A8]);
  sub_25249D020();
  sub_252691470();
  v14 = v53;
  *(a3 + 128) = v52;
  *(a3 + 144) = v14;
  *(a3 + 160) = v54[0];
  *(a3 + 175) = *(v54 + 15);
  v15 = v49;
  *(a3 + 64) = v48;
  *(a3 + 80) = v15;
  v16 = v51;
  *(a3 + 96) = v50;
  *(a3 + 112) = v16;
  v17 = *&v45[5];
  *a3 = *&v45[3];
  *(a3 + 16) = v17;
  result = *&v46;
  v19 = v47;
  *(a3 + 32) = v46;
  *(a3 + 48) = v19;
  return result;
}