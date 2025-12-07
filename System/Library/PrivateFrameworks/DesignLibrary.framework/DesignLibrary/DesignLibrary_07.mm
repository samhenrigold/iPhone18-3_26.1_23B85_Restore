unint64_t sub_18AF14D38()
{
  result = qword_1EA9993C8;
  if (!qword_1EA9993C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998C30, &qword_18AFD3550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9993C8);
  }

  return result;
}

uint64_t type metadata accessor for MacSegmentedControlContentSelectionView(uint64_t a1)
{
  result = qword_1EA99A550;
  if (!qword_1EA99A550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AF14E10(uint64_t a1)
{
  sub_18AED6EAC(319, &qword_1EA998418, MEMORY[0x1E697F610]);
  if (v1 <= 0x3F)
  {
    sub_18AEB1A48(319, &qword_1EA997C38, MEMORY[0x1E69E6370]);
    if (v2 <= 0x3F)
    {
      sub_18AED6EAC(319, &qword_1EA998B40, type metadata accessor for ResolvedButtonBorderShape);
      if (v3 <= 0x3F)
      {
        sub_18AEB1A48(319, &qword_1EA9996B0, &type metadata for GlassGroupContext);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_18AF14F68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_18AFCC474();
  v74 = *(v4 - 8);
  v75 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v68[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A560, &qword_18AFD8318);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v68[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A568, &qword_18AFD8320);
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v68[-v11];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A570, &qword_18AFD8328);
  MEMORY[0x1EEE9AC00](v70);
  v13 = &v68[-v12];
  *v9 = sub_18AFCDB44();
  v9[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A578, &qword_18AFD8330);
  sub_18AF1589C(v1, v9 + *(v15 + 44));
  v16 = type metadata accessor for MacSegmentedControlContentSelectionView(0);
  v69 = *(v1 + v16[10]);
  if (v69 == 1)
  {
    v17 = sub_18AFCC8B4();
  }

  else
  {
    v17 = sub_18AFCC894();
  }

  v18 = v17;
  v19 = *(v1 + v16[9]);
  v71 = v2;
  v72 = v16;
  v20 = v2 + v16[7];
  v21 = *v20;
  v22 = *(v20 + 8);
  v73 = v19;
  if (v22 != 1)
  {

    sub_18AFCE024();
    v23 = sub_18AFCC7D4();
    v2 = v71;
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v21, 0);
    (*(v74 + 8))(v6, v75);
  }

  sub_18AFCBAA4();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v76;
  sub_18AE9A768(v9, v76, &qword_1EA99A560, &qword_18AFD8318);
  v33 = &v32[*(v10 + 36)];
  *v33 = v18;
  *(v33 + 1) = v25;
  *(v33 + 2) = v27;
  *(v33 + 3) = v29;
  *(v33 + 4) = v31;
  v33[40] = 0;
  v34 = v69;
  if (v69)
  {
    v35 = sub_18AFCC884();
  }

  else
  {
    v35 = sub_18AFCC894();
  }

  v36 = v35;
  v37 = *v20;
  if (*(v20 + 8) == 1)
  {
    v79 = v37 & 0x101;
    v38 = v37 >> 8;
    v80 = BYTE2(v37) & 1;
    if ((v37 & 1) == 0)
    {
LABEL_14:
      if (v80)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  else
  {

    sub_18AFCE024();
    v39 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v37, 0);
    (*(v74 + 8))(v6, v75);
    LOBYTE(v38) = HIBYTE(v79);
    if ((v79 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if ((v38 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (*(v2 + v72[11]) == 1)
  {
    v40 = *v20;
    if (*(v20 + 8) != 1)
    {

      sub_18AFCE024();
      v41 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v40, 0);
      (*(v74 + 8))(v6, v75);
    }
  }

LABEL_18:
  sub_18AFCBAA4();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_18AE9A768(v76, v13, &qword_1EA99A568, &qword_18AFD8320);
  v50 = &v13[*(v70 + 36)];
  *v50 = v36;
  *(v50 + 1) = v43;
  *(v50 + 2) = v45;
  *(v50 + 3) = v47;
  *(v50 + 4) = v49;
  v50[40] = 0;
  if (v34)
  {
    v51 = sub_18AFCC8A4();
  }

  else
  {
    v51 = sub_18AFCC894();
  }

  v52 = v51;
  v53 = *v20;
  if (*(v20 + 8) == 1)
  {
    v77 = v53 & 0x101;
    v54 = v53 >> 8;
    v78 = BYTE2(v53) & 1;
    if ((v53 & 1) == 0)
    {
LABEL_26:
      if (v78)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    }
  }

  else
  {

    sub_18AFCE024();
    v55 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v53, 0);
    (*(v74 + 8))(v6, v75);
    LOBYTE(v54) = HIBYTE(v77);
    if ((v77 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if ((v54 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_27:
  if (*(v71 + v72[12]) == 1)
  {
    v56 = *v20;
    if (*(v20 + 8) != 1)
    {

      sub_18AFCE024();
      v57 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v56, 0);
      (*(v74 + 8))(v6, v75);
    }
  }

LABEL_30:
  sub_18AFCBAA4();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  sub_18AE9A768(v13, a1, &qword_1EA99A570, &qword_18AFD8328);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A580, &unk_18AFD8338);
  v67 = a1 + *(result + 36);
  *v67 = v52;
  *(v67 + 8) = v59;
  *(v67 + 16) = v61;
  *(v67 + 24) = v63;
  *(v67 + 32) = v65;
  *(v67 + 40) = 0;
  return result;
}

uint64_t sub_18AF1589C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999778, &unk_18AFD5750);
  MEMORY[0x1EEE9AC00](v71);
  v4 = &v62 - v3;
  v5 = sub_18AFCC474();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v70 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999780, &unk_18AFD5A20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v69 = &v62 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999788, &unk_18AFD5760);
  MEMORY[0x1EEE9AC00](v68);
  v73 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v62 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v62 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C30, &qword_18AFD3550);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v62 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C40, &unk_18AFD35C0);
  MEMORY[0x1EEE9AC00](v19);
  v67 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v75 = &v62 - v25;
  sub_18AFCDF14();
  v65 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = type metadata accessor for MacSegmentedControlContentSelectionView(0);
  sub_18AED2E98(v18);
  v27 = v26[8];
  v28 = *(a1 + v26[13]);
  *(v18 + v16[9]) = *(a1 + v27);
  *(v18 + v16[10]) = 2;
  *(v18 + v16[11]) = v28 != 0;
  v29 = v18 + v16[12];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = v26[10];
  v31 = *(a1 + v30);
  if (*(a1 + v30))
  {
    v32 = 0.0;
  }

  else
  {
    v32 = 1.0;
  }

  sub_18AE9A768(v18, v23, &qword_1EA998C30, &qword_18AFD3550);
  *&v23[*(v19 + 36)] = v32;
  sub_18AE9A768(v23, v75, &qword_1EA998C40, &unk_18AFD35C0);
  v33 = *MEMORY[0x1E697F468];
  v34 = sub_18AFCC534();
  v35 = v70;
  (*(*(v34 - 8) + 104))(v70, v33, v34);
  v36 = *(a1 + v27);
  v37 = a1 + v26[5];
  if ((*(v37 + 8) & 1) == 0)
  {
    v38 = *v37;

    sub_18AFCE024();
    v39 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v40 = v62;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v38, 0);
    (*(v63 + 8))(v40, v64);
  }

  if ((v28 - 1) > 1)
  {
    v77 = sub_18AFCCD74();
  }

  else
  {
    v76 = sub_18AFCC6B4();
  }

  v41 = sub_18AFCBCD4();
  sub_18AEF0D24(v35, v4, v42);
  v43 = v71;
  *&v4[*(v71 + 52)] = v41;
  *&v4[*(v43 + 56)] = 256;
  v44 = v69;
  sub_18AEF0D24(v4, v69, v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999790, &unk_18AFD5A30);
  *(v44 + *(v46 + 52)) = v36;
  *(v44 + *(v46 + 56)) = 256;
  v47 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999798, &unk_18AFD5770) + 36);
  sub_18AE83A40(v4, v47, &qword_1EA999778, &unk_18AFD5750);
  v48 = sub_18AFCDB44();
  v50 = v49;
  sub_18AE7BA80(v4, &qword_1EA999778, &unk_18AFD5750);
  sub_18AEF0D88(v35, v51);
  v52 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9997A0, &qword_18AFD5A40) + 36));
  *v52 = v48;
  v52[1] = v50;
  if (v31)
  {
    v53 = 1.0;
  }

  else
  {
    v53 = 0.0;
  }

  v54 = v66;
  sub_18AE9A768(v44, v66, &qword_1EA999780, &unk_18AFD5A20);
  *(v54 + *(v68 + 36)) = v53;
  v55 = v72;
  sub_18AE9A768(v54, v72, &qword_1EA999788, &unk_18AFD5760);
  v56 = v75;
  v57 = v67;
  sub_18AE83A40(v75, v67, &qword_1EA998C40, &unk_18AFD35C0);
  v58 = v73;
  sub_18AE83A40(v55, v73, &qword_1EA999788, &unk_18AFD5760);
  v59 = v74;
  sub_18AE83A40(v57, v74, &qword_1EA998C40, &unk_18AFD35C0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A588, &unk_18AFD8380);
  sub_18AE83A40(v58, v59 + *(v60 + 48), &qword_1EA999788, &unk_18AFD5760);
  sub_18AE7BA80(v55, &qword_1EA999788, &unk_18AFD5760);
  sub_18AE7BA80(v56, &qword_1EA998C40, &unk_18AFD35C0);
  sub_18AE7BA80(v58, &qword_1EA999788, &unk_18AFD5760);
  sub_18AE7BA80(v57, &qword_1EA998C40, &unk_18AFD35C0);
}

uint64_t sub_18AF1608C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_18AF16140()
{
  result = qword_1EA99A5A8[0];
  if (!qword_1EA99A5A8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A560, &qword_18AFD8318);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA99A5A8);
  }

  return result;
}

void sub_18AF161AC(uint64_t a1)
{
  sub_18AF16A74(319, &qword_1EA997C28, &type metadata for ControlContext, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_18AF16A74(319, &qword_1EA997C38, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_18AED6EAC(319, &qword_1EA998418, MEMORY[0x1E697F610]);
      if (v3 <= 0x3F)
      {
        sub_18AED6EAC(319, &qword_1EA998B40, type metadata accessor for ResolvedButtonBorderShape);
        if (v4 <= 0x3F)
        {
          sub_18AF16A74(319, &qword_1EA9996B0, &type metadata for GlassGroupContext, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_18AF16A74(319, &qword_1ED56ADC0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              swift_checkMetadataState();
              if (v7 <= 0x3F)
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

uint64_t sub_18AF163D4(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_18AFCC5C4() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(sub_18AFCBB54() - 8);
  v9 = *(v8 + 64);
  if ((v9 + 1) > 8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 8;
  }

  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 80);
  v14 = *(v11 + 80);
  if (v12 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v6 + 80) & 0xF8;
  v17 = v16 | 7;
  v18 = v13 & 0xF8 | 7;
  v19 = v7 + v18 + 1;
  v20 = v10 + 8;
  v21 = v14 + 9;
  if (a2 <= v15)
  {
    goto LABEL_34;
  }

  v22 = ((v21 + ((((v20 + ((v19 + ((v16 + 32) & ~v17)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + *(v11 + 64);
  v23 = 8 * v22;
  if (v22 <= 3)
  {
    v26 = ((a2 - v15 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v26))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v26 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v26 < 2)
    {
LABEL_34:
      if (v12 > 0xFE)
      {
        v31 = *(v11 + 48);

        return v31((v21 + ((((v20 + ((v19 + (((a1 & 0xFFFFFFFFFFFFFFF8) + v17 + 25) & ~v17)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8)) & ~v14);
      }

      else
      {
        v30 = *(a1 + 8);
        if (v30 > 1)
        {
          return (v30 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_34;
  }

LABEL_21:
  v27 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v27 = 0;
  }

  if (v22)
  {
    if (v22 <= 3)
    {
      v28 = v22;
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v29 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v29 = *a1;
      }
    }

    else if (v28 == 1)
    {
      v29 = *a1;
    }

    else
    {
      v29 = *a1;
    }
  }

  else
  {
    v29 = 0;
  }

  return v15 + (v29 | v27) + 1;
}

void sub_18AF166CC(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_18AFCC5C4() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(sub_18AFCBB54() - 8);
  v11 = *(v10 + 64);
  if ((v11 + 1) > 8)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 8;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v8 + 80);
  v16 = *(v10 + 80);
  v17 = *(v13 + 80);
  if (v14 <= 0xFE)
  {
    v18 = 254;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  v19 = v15 & 0xF8 | 7;
  v20 = v16 & 0xF8 | 7;
  v21 = v9 + v20 + 1;
  v22 = v12 + 8;
  v23 = ((v17 + 9 + ((((v22 + ((v21 + (((v15 & 0xF8) + 32) & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + *(v13 + 64);
  if (a3 <= v18)
  {
    v24 = 0;
  }

  else if (v23 <= 3)
  {
    v27 = ((a3 - v18 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v27))
    {
      v24 = 4;
    }

    else
    {
      if (v27 < 0x100)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      if (v27 >= 2)
      {
        v24 = v28;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v24 = 1;
  }

  if (v18 < a2)
  {
    v25 = ~v18 + a2;
    if (v23 < 4)
    {
      v26 = (v25 >> (8 * v23)) + 1;
      if (v23)
      {
        v29 = v25 & ~(-1 << (8 * v23));
        bzero(a1, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *a1 = v29;
            if (v24 > 1)
            {
LABEL_52:
              if (v24 == 2)
              {
                *(a1 + v23) = v26;
              }

              else
              {
                *(a1 + v23) = v26;
              }

              return;
            }
          }

          else
          {
            *a1 = v25;
            if (v24 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v29;
        *(a1 + 2) = BYTE2(v29);
      }

      if (v24 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v25;
      v26 = 1;
      if (v24 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v24)
    {
      *(a1 + v23) = v26;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(a1 + v23) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v23) = 0;
  }

  else if (v24)
  {
    *(a1 + v23) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v14 > 0xFE)
  {
    v30 = *(v13 + 56);

    v30((v17 + 9 + ((((v22 + ((v21 + (((a1 & 0xFFFFFFFFFFFFFFF8) + v19 + 25) & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8)) & ~v17, a2);
  }

  else if (a2 > 0xFE)
  {
    *(a1 + 8) = 0;
    *a1 = (a2 - 255);
  }

  else
  {
    *(a1 + 8) = -a2;
  }
}

void sub_18AF16A74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_18AF16AD8()
{
  result = qword_1EA99A630;
  if (!qword_1EA99A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A630);
  }

  return result;
}

uint64_t sub_18AF16B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A638, &qword_18AFD84A8);
  v3 = *(a1 + 16);
  v24 = *(a1 + 24);
  v21 = v3;
  type metadata accessor for MacToolbarButton(255, v3, v24, v4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A640, &unk_18AFD84B0);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48, &unk_18AFD2F90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDC8]);
  sub_18AFCBDC4();
  sub_18AFCC044();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A648, &qword_18AFD84C0);
  sub_18AFCC044();
  v19 = sub_18AFCC624();
  WitnessTable = swift_getWitnessTable();
  v6 = MEMORY[0x1E6980A18];
  v44 = WitnessTable;
  v45 = sub_18AE95F54(&qword_1EA99A650, &qword_1EA99A640, &unk_18AFD84B0, MEMORY[0x1E6980A18]);
  v18 = swift_getWitnessTable();
  v7 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDD0]);
  v42 = v24;
  v43 = sub_18AE95F54(&qword_1EA998958, &qword_1EA998940, &unk_18AFD47C0, MEMORY[0x1E6980490]);
  v40 = swift_getWitnessTable();
  v41 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, v6);
  v38 = swift_getWitnessTable();
  v39 = MEMORY[0x1E697E5D8];
  v36 = v7;
  v37 = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  v35 = MEMORY[0x1E697E040];
  v32 = swift_getWitnessTable();
  v33 = MEMORY[0x1E697EBF8];
  v30 = swift_getWitnessTable();
  v31 = sub_18AE95F54(&qword_1EA99A658, &qword_1EA99A648, &qword_18AFD84C0, MEMORY[0x1E697F940]);
  v28 = v18;
  v29 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A660, &qword_18AFD84C8);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A668, &qword_18AFD84D0);
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  v8 = sub_18AFCD134();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  v25 = v21;
  v26 = v24;
  v27 = v22;
  sub_18AFCC504();
  sub_18AFCD124();
  swift_getWitnessTable();
  sub_18AEADA5C();
  v15 = *(v9 + 8);
  v15(v11, v8);
  sub_18AEADA5C();
  return (v15)(v14, v8);
}

uint64_t sub_18AF1716C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v91 = a1;
  v88 = a5;
  type metadata accessor for MacToolbarButton(255, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A640, &unk_18AFD84B0);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48, &unk_18AFD2F90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  v89 = a2;
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDC8]);
  sub_18AFCBDC4();
  sub_18AFCC044();
  v86 = sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A648, &qword_18AFD84C0);
  sub_18AFCC044();
  v7 = sub_18AFCC624();
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x1E6980A18];
  v95[22] = WitnessTable;
  v95[23] = sub_18AE95F54(&qword_1EA99A650, &qword_1EA99A640, &unk_18AFD84B0, MEMORY[0x1E6980A18]);
  v85 = swift_getWitnessTable();
  v10 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDD0]);
  v90 = a3;
  v95[20] = a3;
  v95[21] = sub_18AE95F54(&qword_1EA998958, &qword_1EA998940, &unk_18AFD47C0, MEMORY[0x1E6980490]);
  v95[18] = swift_getWitnessTable();
  v95[19] = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, v9);
  v95[16] = swift_getWitnessTable();
  v95[17] = MEMORY[0x1E697E5D8];
  v95[14] = v10;
  v95[15] = swift_getWitnessTable();
  v95[12] = swift_getWitnessTable();
  v95[13] = MEMORY[0x1E697E040];
  v95[10] = swift_getWitnessTable();
  v95[11] = MEMORY[0x1E697EBF8];
  v95[8] = swift_getWitnessTable();
  v95[9] = sub_18AE95F54(&qword_1EA99A658, &qword_1EA99A648, &qword_18AFD84C0, MEMORY[0x1E697F940]);
  v95[6] = v85;
  v95[7] = swift_getWitnessTable();
  v87 = v7;
  v78 = swift_getWitnessTable();
  v11 = sub_18AFCD1F4();
  v81 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v67 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A660, &qword_18AFD84C8);
  v13 = sub_18AFCC044();
  v83 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v67 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A668, &qword_18AFD84D0);
  v84 = v13;
  v15 = sub_18AFCC044();
  v85 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v86 = &v67 - v19;
  v71 = sub_18AFCC474();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SegmentDividier(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A670, &qword_18AFD84D8);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v72 = &v67 - v27;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A638, &qword_18AFD84A8);
  MEMORY[0x1EEE9AC00](v75);
  v80 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v76 = &v67 - v30;
  sub_18AFCDF14();
  v77 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v32 = type metadata accessor for MacSegmentedControlItem(0, v89, v90, v31);
  v33 = *(v32 + 68);
  v34 = v91;
  v35 = *(v91 + v33);
  if (*(v91 + v33))
  {
    v36 = v32;
    v68 = v11;
    v37 = *v91;
    if (*(v91 + 8) == 1)
    {
      v95[0] = *v91;
    }

    else
    {

      sub_18AFCE024();
      v41 = sub_18AFCC7D4();
      v34 = v91;
      sub_18AFCBA64();

      v42 = v69;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v37, 0);
      (*(v70 + 8))(v42, v71);
      v37 = v95[0];
    }

    v43 = *(v34 + *(v36 + 64));
    v44 = *(v91 + *(v36 + 72));
    *v23 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
    swift_storeEnumTagMultiPayload();
    *(v23 + v21[5]) = v37;
    *(v23 + v21[6]) = v43;
    *(v23 + v21[7]) = v44;
    v34 = v91;
    if (v35 == 2)
    {
      v45 = 1.0;
    }

    else
    {
      v45 = 0.0;
    }

    sub_18AF1A440(v23, v25);
    v40 = v74;
    *&v25[*(v74 + 36)] = v45;
    v46 = v72;
    sub_18AE9A768(v25, v72, &qword_1EA99A670, &qword_18AFD84D8);
    v47 = v46;
    v39 = v76;
    sub_18AE9A768(v47, v76, &qword_1EA99A670, &qword_18AFD84D8);
    v38 = 0;
    v11 = v68;
  }

  else
  {
    v38 = 1;
    v39 = v76;
    v40 = v74;
  }

  v48 = (*(v73 + 56))(v39, v38, 1, v40);
  MEMORY[0x1EEE9AC00](v48);
  v49 = v90;
  *(&v67 - 4) = v89;
  *(&v67 - 3) = v49;
  v66 = v34;
  sub_18AFCDB44();
  v50 = v39;
  v51 = v79;
  sub_18AFCD1E4();
  v52 = swift_getWitnessTable();
  v53 = v82;
  sub_18AFCCC84();
  (*(v81 + 8))(v51, v11);
  sub_18AFCD104();
  type metadata accessor for CGRect(0);
  v54 = sub_18AE95F54(&qword_1EA99A678, &qword_1EA99A660, &qword_18AFD84C8, MEMORY[0x1E6980A18]);
  v95[4] = v52;
  v95[5] = v54;
  v55 = v84;
  v56 = swift_getWitnessTable();
  v66 = sub_18AEC45F4();
  sub_18AFCCB54();

  (*(v83 + 8))(v53, v55);
  v57 = sub_18AE95F54(&qword_1EA99A680, &qword_1EA99A668, &qword_18AFD84D0, MEMORY[0x1E697FF70]);
  v95[2] = v56;
  v95[3] = v57;
  v58 = swift_getWitnessTable();
  v59 = v86;
  sub_18AEADA5C();
  v60 = v85;
  v61 = *(v85 + 8);
  v61(v17, v15);
  v62 = v50;
  v63 = v50;
  v64 = v80;
  sub_18AE83A40(v63, v80, &qword_1EA99A638, &qword_18AFD84A8);
  v95[0] = v64;
  (*(v60 + 16))(v17, v59, v15);
  v95[1] = v17;
  v94[0] = v75;
  v94[1] = v15;
  v92 = sub_18AF1A4B0();
  v93 = v58;
  sub_18AEB70B8(v95, 2uLL, v94);
  v61(v59, v15);
  sub_18AE7BA80(v62, &qword_1EA99A638, &qword_18AFD84A8);
  v61(v17, v15);
  sub_18AE7BA80(v64, &qword_1EA99A638, &qword_18AFD84A8);
}

uint64_t sub_18AF17F78@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v176 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930, &qword_18AFD35E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v148 = &v145 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998940, &unk_18AFD47C0);
  v9 = sub_18AFCC044();
  v150 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v149 = &v145 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  v11 = sub_18AFCC044();
  v153 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v151 = &v145 - v12;
  v185 = v13;
  v14 = sub_18AFCC044();
  v154 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v152 = &v145 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48, &unk_18AFD2F90);
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDC8]);
  v184 = v14;
  v16 = sub_18AFCBDC4();
  v156 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v155 = &v145 - v17;
  v18 = sub_18AFCC044();
  v157 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v168 = &v145 - v19;
  v20 = sub_18AFCC044();
  v161 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v160 = &v145 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A648, &qword_18AFD84C0);
  v179 = v20;
  v22 = sub_18AFCC044();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v163 = &v145 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v159 = &v145 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v162 = &v145 - v28;
  v177 = a2;
  v30 = type metadata accessor for MacToolbarButton(0, a2, a3, v29);
  v147 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v167 = (&v145 - v31);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A640, &unk_18AFD84B0);
  v178 = v30;
  v32 = sub_18AFCC044();
  v158 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v170 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v146 = &v145 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v169 = (&v145 - v37);
  v38 = sub_18AFCC474();
  v165 = *(v38 - 8);
  v166 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v164 = &v145 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = v32;
  v40 = sub_18AFCC624();
  v173 = *(v40 - 8);
  v174 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v182 = &v145 - v41;
  sub_18AFCDF14();
  v172 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v43 = *a1;
  v44 = *(a1 + 8);
  v175 = v22;
  if ((v44 & 1) == 0)
  {

    sub_18AFCE024();
    v45 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v46 = v164;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v43, 0);
    (*(v165 + 8))(v46, v166);
    LOBYTE(v43) = v237[0];
  }

  v183 = v18;
  v180 = v16;
  v47 = v177;
  v48 = type metadata accessor for MacSegmentedControlItem(0, v177, a3, v42);
  v49 = v48;
  v186 = a3;
  v181 = v9;
  if (v43)
  {
    v87 = v48[16];
    v237[0] = *(a1 + v48[15]);
    v88 = *(a1 + v48[19]);
    v89 = *(a1 + v48[18]);
    v90 = *(a1 + v87);
    v91 = sub_18AF19678(v48);
    LODWORD(v92) = *(a1 + v49[20]);
    LOBYTE(v93) = *(a1 + v49[21]);
    MEMORY[0x1EEE9AC00](v91);
    sub_18AEED774(v237, v90, v89, v88, v94 & 1, v92, v93, v95, v167, v96, v97, sub_18AF1DA3C, &v139, v47, v98);
    swift_getKeyPath();
    if (v92 == 1 && (v93 & 1) != 0)
    {
      v99 = a1 + v49[12];
      v92 = *v99;
      v100 = v178;
      if (*(v99 + 8) == 1)
      {
        v93 = (v92 >> 8) & 1;
        v101 = (v92 >> 16) & 1;
LABEL_16:
        v237[0] = v92 & 1;
        v237[1] = v93;
        v237[2] = v101;
        WitnessTable = swift_getWitnessTable();
        v109 = v146;
        v110 = v167;
        sub_18AFCCAA4();

        (*(v147 + 8))(v110, v100);
        v111 = MEMORY[0x1E6980A18];
        v112 = sub_18AE95F54(&qword_1EA99A650, &qword_1EA99A640, &unk_18AFD84B0, MEMORY[0x1E6980A18]);
        v201 = WitnessTable;
        v202 = v112;
        v113 = v171;
        swift_getWitnessTable();
        sub_18AEADA5C();
        v177 = *(v158 + 8);
        v177(v109, v113);
        sub_18AEADA5C();
        v114 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDD0]);
        v115 = sub_18AE95F54(&qword_1EA998958, &qword_1EA998940, &unk_18AFD47C0, MEMORY[0x1E6980490]);
        v199 = v186;
        v200 = v115;
        v116 = swift_getWitnessTable();
        v117 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, v111);
        v197 = v116;
        v198 = v117;
        v195 = swift_getWitnessTable();
        v86 = MEMORY[0x1E697E5D8];
        v196 = MEMORY[0x1E697E5D8];
        v118 = swift_getWitnessTable();
        v193 = v114;
        v194 = v118;
        v191 = swift_getWitnessTable();
        v192 = MEMORY[0x1E697E040];
        v189 = swift_getWitnessTable();
        v190 = MEMORY[0x1E697EBF8];
        v119 = swift_getWitnessTable();
        v120 = sub_18AE95F54(&qword_1EA99A658, &qword_1EA99A648, &qword_18AFD84C0, MEMORY[0x1E697F940]);
        v187 = v119;
        v188 = v120;
        swift_getWitnessTable();
        v121 = v170;
        sub_18AEB5268(v170, v113);
        v122 = v121;
        v123 = v177;
        v177(v122, v113);
        v123(v169, v113);
        goto LABEL_17;
      }

      sub_18AFCE024();
      v106 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v107 = v164;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v92, 0);
      (*(v165 + 8))(v107, v166);
      LOBYTE(v92) = v237[0];
      LOBYTE(v93) = v237[1];
    }

    else
    {
      v102 = a1 + v49[12];
      v103 = *v102;
      v100 = v178;
      if (*(v102 + 8) == 1)
      {
        v101 = (v103 >> 16) & 1;
        goto LABEL_16;
      }

      sub_18AFCE024();
      v104 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v105 = v164;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v103, 0);
      (*(v165 + 8))(v105, v166);
    }

    LOBYTE(v101) = v237[2];
    goto LABEL_16;
  }

  v170 = v23;
  *v237 = sub_18AF197EC(v48);
  v50 = v149;
  sub_18AFCCB44();

  v51 = v49[16];
  v145 = a1;
  v52 = *(a1 + v51);
  sub_18AFCC934();
  v53 = sub_18AFCC8F4();
  v54 = v148;
  (*(*(v53 - 8) + 56))(v148, 1, 1, v53);
  sub_18AFCC954();
  sub_18AE7BA80(v54, &qword_1EA998930, &qword_18AFD35E0);
  sub_18AFCC8E4();

  v55 = sub_18AE95F54(&qword_1EA998958, &qword_1EA998940, &unk_18AFD47C0, MEMORY[0x1E6980490]);
  v235 = a3;
  v236 = v55;
  v56 = swift_getWitnessTable();
  v57 = v151;
  sub_18AFCCBA4();

  (*(v150 + 8))(v50, v9);
  sub_18AFCC8B4();
  v58 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, MEMORY[0x1E6980A18]);
  v233 = v56;
  v234 = v58;
  v59 = v185;
  v60 = swift_getWitnessTable();
  v61 = v152;
  sub_18AFCCC24();
  (*(v153 + 8))(v57, v59);
  v62 = dbl_18AFD8928[v52];
  v231 = v60;
  v232 = MEMORY[0x1E697E5D8];
  v63 = v184;
  v64 = swift_getWitnessTable();
  v65 = v155;
  sub_18AFC385C(0, 0, v63, v64, 0.0, v62, v155);
  (*(v154 + 8))(v61, v63);
  v169 = v52;
  sub_18AFCDB44();
  v229 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDD0]);
  v230 = v64;
  v66 = v180;
  v67 = swift_getWitnessTable();
  sub_18AFCCBB4();
  (*(v156 + 8))(v65, v66);
  v68 = sub_18AFCDB44();
  v70 = v69;
  v227 = v67;
  v228 = MEMORY[0x1E697E040];
  v71 = MEMORY[0x1E697E858];
  v143 = v183;
  v144 = swift_getWitnessTable();
  v141 = v68;
  v142 = v70;
  LOBYTE(v140) = 1;
  v139 = 0;
  v72 = v160;
  v73 = v168;
  sub_18AFCCBC4();
  v74 = (*(v157 + 8))(v73, v143);
  v169 = &v145;
  MEMORY[0x1EEE9AC00](v74);
  v141 = v177;
  v142 = v186;
  v143 = v145;
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A6A8, &qword_18AFD8528);
  v225 = v144;
  v226 = MEMORY[0x1E697EBF8];
  v167 = v71;
  v75 = v179;
  v76 = swift_getWitnessTable();
  sub_18AF1D6D8();
  v77 = v159;
  sub_18AFCCA64();
  (*(v161 + 8))(v72, v75);
  v78 = sub_18AE95F54(&qword_1EA99A658, &qword_1EA99A648, &qword_18AFD84C0, MEMORY[0x1E697F940]);
  v223 = v76;
  v224 = v78;
  v79 = v175;
  swift_getWitnessTable();
  v80 = v162;
  sub_18AEADA5C();
  v81 = *(v170 + 8);
  v81(v77, v79);
  v82 = v163;
  sub_18AEADA5C();
  v83 = swift_getWitnessTable();
  v84 = sub_18AE95F54(&qword_1EA99A650, &qword_1EA99A640, &unk_18AFD84B0, MEMORY[0x1E6980A18]);
  v221 = v83;
  v222 = v84;
  v85 = v171;
  swift_getWitnessTable();
  sub_18AEB5360(v82, v85, v79);
  v81(v82, v79);
  v81(v80, v79);
  v86 = MEMORY[0x1E697E5D8];
LABEL_17:
  v124 = swift_getWitnessTable();
  v125 = MEMORY[0x1E6980A18];
  v126 = sub_18AE95F54(&qword_1EA99A650, &qword_1EA99A640, &unk_18AFD84B0, MEMORY[0x1E6980A18]);
  v219 = v124;
  v220 = v126;
  v127 = swift_getWitnessTable();
  v128 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDD0]);
  v129 = sub_18AE95F54(&qword_1EA998958, &qword_1EA998940, &unk_18AFD47C0, MEMORY[0x1E6980490]);
  v217 = v186;
  v218 = v129;
  v130 = swift_getWitnessTable();
  v131 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, v125);
  v215 = v130;
  v216 = v131;
  v213 = swift_getWitnessTable();
  v214 = v86;
  v132 = swift_getWitnessTable();
  v211 = v128;
  v212 = v132;
  v209 = swift_getWitnessTable();
  v210 = MEMORY[0x1E697E040];
  v207 = swift_getWitnessTable();
  v208 = MEMORY[0x1E697EBF8];
  v133 = swift_getWitnessTable();
  v134 = sub_18AE95F54(&qword_1EA99A658, &qword_1EA99A648, &qword_18AFD84C0, MEMORY[0x1E697F940]);
  v205 = v133;
  v206 = v134;
  v135 = swift_getWitnessTable();
  v203 = v127;
  v204 = v135;
  v136 = v174;
  swift_getWitnessTable();
  v137 = v182;
  sub_18AEADA5C();
  (*(v173 + 8))(v137, v136);
}

BOOL sub_18AF19678(int *a1)
{
  if (*(v1 + a1[15]) == 1)
  {
    v2 = *(v1 + a1[18]);
    if (*(v1 + a1[18]))
    {
      if (*(v1 + a1[14]))
      {
        return 0;
      }

      return v2 == 1;
    }

    return 1;
  }

  if (!*(v1 + a1[14]))
  {
    if (*(v1 + a1[15]))
    {
      v2 = *(v1 + a1[18]);
      return v2 == 1;
    }

    return 1;
  }

  return !*(v1 + a1[15]) && *(v1 + a1[18]) == 0;
}

uint64_t sub_18AF196F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MacSegmentedControlItem(0, v6, v7, v8);
  sub_18AEADA5C();
  sub_18AEADA5C();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_18AF197EC(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v1 + *(a1 + 52));
  if (*v9 != 1 || (v9[1] & 1) != 0)
  {
    v13 = *(v1 + 16);
    if (*(v1 + 24) == 1)
    {
      if ((v13 & 1) == 0)
      {
        return sub_18AF1A304(v1, *(a1 + 16), *(a1 + 24), v6);
      }
    }

    else
    {
      v14 = v5;

      sub_18AFCE024();
      v15 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v13, 0);
      (*(v4 + 8))(v8, v14);
      if (v18 != 1)
      {
        return sub_18AF1A304(v1, *(a1 + 16), *(a1 + 24), v6);
      }
    }

    return sub_18AF1A1F0(v1, *(a1 + 16), *(a1 + 24), v6);
  }

  if (*(v1 + *(a1 + 60)) == 1)
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 24);

    return sub_18AF1A14C(v1, v10, v11, v6);
  }

  else
  {
    v17 = sub_18AFCC6C4();
    return sub_18AFCBCD4();
  }
}

uint64_t sub_18AF199E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A6E0, &qword_18AFD8540);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A728, &qword_18AFD8590);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A700, &qword_18AFD8550);
  MEMORY[0x1EEE9AC00](v63);
  v50 = &v46 - v11;
  v12 = sub_18AFCC474();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ResolvedButtonBorderShape(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A6D0, &qword_18AFD8538);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v55 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v58 = &v46 - v21;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A6C0, &qword_18AFD8530);
  MEMORY[0x1EEE9AC00](v57);
  v62 = &v46 - v22;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A6A8, &qword_18AFD8528);
  MEMORY[0x1EEE9AC00](v54);
  v61 = &v46 - v23;
  sub_18AFCDF14();
  v60 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = type metadata accessor for MacSegmentedControlItem(0, a2, a3, v24);
  v53 = v25[11];
  v59 = v17;
  sub_18AED2E98(v17);
  v26 = *(a1 + v25[15]);
  v27 = *(a1 + v25[18]);
  v28 = *(a1 + 16);
  if (*(a1 + 24) != 1)
  {
    v48 = *(a1 + v25[15]);

    sub_18AFCE024();
    v47 = v12;
    v29 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v30 = v49;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v28, 0);
    (*(v13 + 8))(v30, v47);
    v26 = v48;
    LOBYTE(v28) = v64;
  }

  if (v27 && (v28 & 1) != 0)
  {
    v31 = v50;
    v32 = v59;
    sub_18AF1BE88(v26, 1, v50);
    v33 = &qword_1EA99A700;
    v34 = &qword_18AFD8550;
    sub_18AE83A40(v31, v10, &qword_1EA99A700, &qword_18AFD8550);
  }

  else
  {
    v35 = v27 != 0;
    v31 = v51;
    v32 = v59;
    sub_18AF1D228(v26, v35, v51);
    v33 = &qword_1EA99A6E0;
    v34 = &qword_18AFD8540;
    sub_18AE83A40(v31, v10, &qword_1EA99A6E0, &qword_18AFD8540);
  }

  swift_storeEnumTagMultiPayload();
  sub_18AF1D8CC();
  sub_18AF1D984();
  v36 = v55;
  sub_18AFCC614();
  sub_18AE7BA80(v31, v33, v34);
  sub_18AED8AD4(v32);
  v37 = v58;
  sub_18AE9A768(v36, v58, &qword_1EA99A6D0, &qword_18AFD8538);
  if (sub_18AF19678(v25))
  {
    v38 = 0.0;
  }

  else
  {
    v38 = 1.0;
  }

  v39 = v37;
  v40 = v62;
  sub_18AE9A768(v39, v62, &qword_1EA99A6D0, &qword_18AFD8538);
  *(v40 + *(v57 + 36)) = v38;
  v41 = v61;
  v42 = &v61[*(v54 + 36)];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A720, &qword_18AFD8560);
  sub_18AFCC1A4();
  sub_18AED2E98(v42);
  v44 = *(a1 + v25[22]);
  v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A730, &qword_18AFD8598) + 36)] = v44;
  v42[*(v43 + 36)] = 0;
  sub_18AE9A768(v40, v41, &qword_1EA99A6C0, &qword_18AFD8530);
  sub_18AE9A768(v41, v56, &qword_1EA99A6A8, &qword_18AFD8528);
}

uint64_t sub_18AF1A078@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A6A0, &unk_18AFD8518);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18AFD8390;
  *(v5 + 32) = a1;

  *a2 = v5;
  return result;
}

uint64_t sub_18AF1A14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + *(type metadata accessor for MacSegmentedControlItem(0, a2, a3, a4) + 72)))
  {
    sub_18AFCC6C4();
  }

  else
  {
    sub_18AFCC6E4();
  }

  return sub_18AFCBCD4();
}

uint64_t sub_18AF1A1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + *(type metadata accessor for MacSegmentedControlItem(0, a2, a3, a4) + 60)) == 1)
  {
    v7 = MEMORY[0x1E697FE58];
  }

  else
  {
    v7 = MEMORY[0x1E697FE50];
  }

  return sub_18AF1A26C(a1, a2, a3, v7);
}

uint64_t sub_18AF1A26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (*(a1 + *(type metadata accessor for MacSegmentedControlItem(0, a2, a3, a4) + 72)))
  {
    sub_18AEFC240();

    return sub_18AFCBCD4();
  }

  else
  {
    a4();
    return sub_18AFCBCD4();
  }
}

uint64_t sub_18AF1A304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MacSegmentedControlItem(0, a2, a3, a4);
  sub_18AFCC6F4();
  return sub_18AFCBCD4();
}

uint64_t type metadata accessor for SegmentDividier(uint64_t a1)
{
  result = qword_1EA99A910;
  if (!qword_1EA99A910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18AF1A440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SegmentDividier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18AF1A4B0()
{
  result = qword_1EA99A688;
  if (!qword_1EA99A688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A638, &qword_18AFD84A8);
    sub_18AF1D7BC(&qword_1EA99A690, &qword_1EA99A670, &qword_18AFD84D8, sub_18AF1A560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A688);
  }

  return result;
}

unint64_t sub_18AF1A560()
{
  result = qword_1EA99A698;
  if (!qword_1EA99A698)
  {
    type metadata accessor for SegmentDividier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A698);
  }

  return result;
}

double sub_18AF1A5B8@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998960, &unk_18AFD8820);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - v5;
  v7 = *(sub_18AFCC184() + 20);
  v8 = *MEMORY[0x1E697F468];
  v9 = sub_18AFCC534();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  __asm { FMOV            V0.2D, #8.0 }

  *v6 = _Q0;
  *&v6[*(v4 + 60)] = sub_18AF1A74C(v1);
  *&v6[*(v4 + 64)] = 256;
  type metadata accessor for SegmentDividier(0);
  sub_18AFCDB44();
  sub_18AFCBCC4();
  sub_18AE9A768(v6, a1, &qword_1EA998960, &unk_18AFD8820);
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998A40, &qword_18AFD2BE8) + 36));
  v16 = v18[1];
  *v15 = v18[0];
  v15[1] = v16;
  result = *&v19;
  v15[2] = v19;
  return result;
}

uint64_t sub_18AF1A74C(uint64_t a1)
{
  v2 = sub_18AFCC5C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18AED2E70(v5);
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E697F608])
  {
    sub_18AFCCDB4();
    v6 = sub_18AFCCDA4();

    v11 = v6;
    return sub_18AFCBCD4();
  }

  else
  {
    if (*(a1 + *(type metadata accessor for SegmentDividier(0) + 20)))
    {
      v8 = sub_18AFCC6D4();
    }

    else
    {
      v8 = sub_18AFCC6B4();
    }

    LODWORD(v11) = v8;
    v9 = sub_18AFCBCD4();
    (*(v3 + 8))(v5, v2);
    return v9;
  }
}

uint64_t sub_18AF1A8CC@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v69 = a1;
  v73 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A738, &qword_18AFD85A0) - 8;
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v66 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A920, &qword_18AFD8830);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A928, &qword_18AFD8838);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v66 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A930, &qword_18AFD8840);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v74 = &v66 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A938, &qword_18AFD8848);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v68 = &v66 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A940, &unk_18AFD8850);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v70 = &v66 - v21;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998D98, &qword_18AFD3760);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v66 - v22;
  sub_18AFCBEF4();
  v23 = MEMORY[0x1E697EAF0];
  sub_18AF1DB30(v4, v12, MEMORY[0x1E697EAF0]);
  *&v12[*(v10 + 64)] = 256;
  v24 = sub_18AFCC6B4();
  if (a2)
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.0;
  }

  v66 = v23;
  sub_18AF1DB30(v12, v15, v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A948, &qword_18AFD8860);
  v27 = &v15[*(v26 + 52)];
  *v27 = v24;
  *(v27 + 1) = v25;
  *&v15[*(v26 + 56)] = 256;
  v28 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A950, &qword_18AFD8868) + 36)];
  sub_18AE83A40(v12, v28, &qword_1EA99A920, &qword_18AFD8830);
  v29 = sub_18AFCDB44();
  v31 = v30;
  sub_18AE7BA80(v12, &qword_1EA99A920, &qword_18AFD8830);
  v32 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A958, &qword_18AFD8870) + 36));
  *v32 = v29;
  v32[1] = v31;
  sub_18AFCBEF4();
  *&v8[*(v6 + 44)] = 1056964608;
  v33 = v74;
  sub_18AF1DB30(v15, v74, v23);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A960, &qword_18AFD8878);
  sub_18AE83A40(v8, v33 + *(v34 + 52), &qword_1EA99A738, &qword_18AFD85A0);
  *(v33 + *(v34 + 56)) = 256;
  v35 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A968, &qword_18AFD8880) + 36);
  sub_18AE83A40(v15, v35, &qword_1EA99A928, &qword_18AFD8838);
  v36 = sub_18AFCDB44();
  v38 = v37;
  v39 = v68;
  sub_18AE7BA80(v8, &qword_1EA99A738, &qword_18AFD85A0);
  sub_18AE7BA80(v15, &qword_1EA99A928, &qword_18AFD8838);
  v40 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A970, &qword_18AFD8888) + 36));
  *v40 = v36;
  v40[1] = v38;
  v41 = v69;
  sub_18AFCBEF4();
  v42 = v66;
  *&v8[*(v67 + 44)] = 1056964608;
  v43 = v74;
  sub_18AF1DB30(v74, v39, v42);
  sub_18AE83A40(v8, v39 + *(v34 + 52), &qword_1EA99A738, &qword_18AFD85A0);
  *(v39 + *(v34 + 56)) = 256;
  v44 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A978, &qword_18AFD8890) + 36);
  sub_18AE83A40(v43, v44, &qword_1EA99A930, &qword_18AFD8840);
  v45 = sub_18AFCDB44();
  v47 = v46;
  sub_18AE7BA80(v8, &qword_1EA99A738, &qword_18AFD85A0);
  sub_18AE7BA80(v43, &qword_1EA99A930, &qword_18AFD8840);
  v48 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A980, &qword_18AFD8898) + 36));
  *v48 = v45;
  v48[1] = v47;
  if (v41 >= 3u)
  {
    if (v41 == 3)
    {
      v49 = sub_18AFCC6B4();
    }

    else
    {
      v49 = sub_18AFCC6E4();
    }

    LODWORD(v75) = v49;
  }

  else
  {
    *&v75 = sub_18AFCCD74();
  }

  v50 = sub_18AFCBCD4();
  v51 = v73;
  v52 = v70;
  v53 = MEMORY[0x1E697EAF0];
  sub_18AF1DB30(v39, v70, MEMORY[0x1E697EAF0]);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998960, &unk_18AFD8820);
  *(v52 + *(v54 + 52)) = v50;
  *(v52 + *(v54 + 56)) = 256;
  v55 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A988, &qword_18AFD88A0) + 36);
  sub_18AE83A40(v39, v55, &qword_1EA99A938, &qword_18AFD8848);
  v56 = sub_18AFCDB44();
  v58 = v57;
  sub_18AE7BA80(v39, &qword_1EA99A938, &qword_18AFD8848);
  v59 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A990, &qword_18AFD88A8) + 36));
  *v59 = v56;
  v59[1] = v58;
  v60 = 1.0;
  sub_18AFCBB94();
  v61 = v71;
  sub_18AF1DB30(v52, v71, v53);
  v62 = v72;
  sub_18AE9A768(v52, v61 + *(v72 + 84), &qword_1EA99A940, &unk_18AFD8850);
  *(v61 + v62[17]) = 0;
  v63 = v61 + v62[19];
  v64 = v76;
  *v63 = v75;
  *(v63 + 16) = v64;
  *(v63 + 32) = v77;
  *(v61 + v62[20]) = 1;
  if (v41 == 1)
  {
    v60 = 0.25;
  }

  sub_18AE9A768(v61, v51, &qword_1EA998D98, &qword_18AFD3760);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998D68, &unk_18AFD3750);
  *(v51 + *(result + 36)) = v60;
  return result;
}

uint64_t sub_18AF1B058@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v69 = a1;
  v73 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A738, &qword_18AFD85A0) - 8;
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v66 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7F0, &qword_18AFD8660);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7F8, &qword_18AFD8668);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v66 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A800, &qword_18AFD8670);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v74 = &v66 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A808, &qword_18AFD8678);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v68 = &v66 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A810, &unk_18AFD8680);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v70 = &v66 - v21;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A140, &unk_18AFD79B0);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v66 - v22;
  sub_18AFCBEF4();
  v23 = MEMORY[0x1E6981998];
  sub_18AF1DB30(v4, v12, MEMORY[0x1E6981998]);
  *&v12[*(v10 + 64)] = 256;
  v24 = sub_18AFCC6B4();
  if (a2)
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.0;
  }

  v66 = v23;
  sub_18AF1DB30(v12, v15, v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A818, &qword_18AFD8690);
  v27 = &v15[*(v26 + 52)];
  *v27 = v24;
  *(v27 + 1) = v25;
  *&v15[*(v26 + 56)] = 256;
  v28 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A820, &qword_18AFD8698) + 36)];
  sub_18AE83A40(v12, v28, &qword_1EA99A7F0, &qword_18AFD8660);
  v29 = sub_18AFCDB44();
  v31 = v30;
  sub_18AE7BA80(v12, &qword_1EA99A7F0, &qword_18AFD8660);
  v32 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A828, &qword_18AFD86A0) + 36));
  *v32 = v29;
  v32[1] = v31;
  sub_18AFCBEF4();
  *&v8[*(v6 + 44)] = 1056964608;
  v33 = v74;
  sub_18AF1DB30(v15, v74, v23);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A830, &qword_18AFD86A8);
  sub_18AE83A40(v8, v33 + *(v34 + 52), &qword_1EA99A738, &qword_18AFD85A0);
  *(v33 + *(v34 + 56)) = 256;
  v35 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A838, &qword_18AFD86B0) + 36);
  sub_18AE83A40(v15, v35, &qword_1EA99A7F8, &qword_18AFD8668);
  v36 = sub_18AFCDB44();
  v38 = v37;
  v39 = v68;
  sub_18AE7BA80(v8, &qword_1EA99A738, &qword_18AFD85A0);
  sub_18AE7BA80(v15, &qword_1EA99A7F8, &qword_18AFD8668);
  v40 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A840, &qword_18AFD86B8) + 36));
  *v40 = v36;
  v40[1] = v38;
  v41 = v69;
  sub_18AFCBEF4();
  v42 = v66;
  *&v8[*(v67 + 44)] = 1056964608;
  v43 = v74;
  sub_18AF1DB30(v74, v39, v42);
  sub_18AE83A40(v8, v39 + *(v34 + 52), &qword_1EA99A738, &qword_18AFD85A0);
  *(v39 + *(v34 + 56)) = 256;
  v44 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A848, &qword_18AFD86C0) + 36);
  sub_18AE83A40(v43, v44, &qword_1EA99A800, &qword_18AFD8670);
  v45 = sub_18AFCDB44();
  v47 = v46;
  sub_18AE7BA80(v8, &qword_1EA99A738, &qword_18AFD85A0);
  sub_18AE7BA80(v43, &qword_1EA99A800, &qword_18AFD8670);
  v48 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A850, &unk_18AFD86C8) + 36));
  *v48 = v45;
  v48[1] = v47;
  if (v41 >= 3u)
  {
    if (v41 == 3)
    {
      v49 = sub_18AFCC6B4();
    }

    else
    {
      v49 = sub_18AFCC6E4();
    }

    LODWORD(v75) = v49;
  }

  else
  {
    *&v75 = sub_18AFCCD74();
  }

  v50 = sub_18AFCBCD4();
  v51 = v73;
  v52 = v70;
  v53 = MEMORY[0x1E6981998];
  sub_18AF1DB30(v39, v70, MEMORY[0x1E6981998]);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999778, &unk_18AFD5750);
  *(v52 + *(v54 + 52)) = v50;
  *(v52 + *(v54 + 56)) = 256;
  v55 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A858, &qword_18AFD86D8) + 36);
  sub_18AE83A40(v39, v55, &qword_1EA99A808, &qword_18AFD8678);
  v56 = sub_18AFCDB44();
  v58 = v57;
  sub_18AE7BA80(v39, &qword_1EA99A808, &qword_18AFD8678);
  v59 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A860, &unk_18AFD86E0) + 36));
  *v59 = v56;
  v59[1] = v58;
  v60 = 1.0;
  sub_18AFCBB94();
  v61 = v71;
  sub_18AF1DB30(v52, v71, v53);
  v62 = v72;
  sub_18AE9A768(v52, v61 + *(v72 + 84), &qword_1EA99A810, &unk_18AFD8680);
  *(v61 + v62[17]) = 0;
  v63 = v61 + v62[19];
  v64 = v76;
  *v63 = v75;
  *(v63 + 16) = v64;
  *(v63 + 32) = v77;
  *(v61 + v62[20]) = 1;
  if (v41 == 1)
  {
    v60 = 0.25;
  }

  sub_18AE9A768(v61, v51, &qword_1EA99A140, &unk_18AFD79B0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A110, &unk_18AFD79A0);
  *(v51 + *(result + 36)) = v60;
  return result;
}

uint64_t sub_18AF1B7E4@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v65 = a1;
  v63 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A738, &qword_18AFD85A0) - 8;
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v57 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A898, &qword_18AFD8738);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8A0, &qword_18AFD8740);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v57 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8A8, &qword_18AFD8748);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v64 = &v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8B0, &qword_18AFD8750);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v59 = &v57 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8B8, &unk_18AFD8758);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v62 = &v57 - v19;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999D40, &qword_18AFD6B30);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v57 - v20;
  sub_18AFCBEF4();
  *&v10[*(v8 + 64)] = 256;
  v21 = sub_18AFCC6B4();
  if (a2)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = 0.0;
  }

  v23 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8C0, &qword_18AFD8768) + 36);
  sub_18AE83A40(v10, v23, &qword_1EA99A898, &qword_18AFD8738);
  v24 = sub_18AFCDB44();
  v26 = v25;
  sub_18AE7BA80(v10, &qword_1EA99A898, &qword_18AFD8738);
  v27 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8C8, &qword_18AFD8770) + 36));
  *v27 = v24;
  v27[1] = v26;
  *v13 = v21;
  v13[1] = v22;
  *(v13 + 4) = 256;
  sub_18AFCBEF4();
  *&v6[*(v4 + 44)] = 1056964608;
  v28 = v64;
  sub_18AE83A40(v6, v64, &qword_1EA99A738, &qword_18AFD85A0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8D0, &qword_18AFD8778);
  *(v28 + *(v29 + 56)) = 256;
  v30 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8D8, &qword_18AFD8780) + 36);
  sub_18AE83A40(v13, v30, &qword_1EA99A8A0, &qword_18AFD8740);
  v31 = sub_18AFCDB44();
  v33 = v32;
  sub_18AE7BA80(v6, &qword_1EA99A738, &qword_18AFD85A0);
  sub_18AE7BA80(v13, &qword_1EA99A8A0, &qword_18AFD8740);
  v34 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8E0, &qword_18AFD8788) + 36));
  *v34 = v31;
  v34[1] = v33;
  sub_18AFCBEF4();
  v35 = v59;
  *&v6[*(v58 + 44)] = 1056964608;
  sub_18AE83A40(v6, v35, &qword_1EA99A738, &qword_18AFD85A0);
  *(v35 + *(v29 + 56)) = 256;
  v36 = v35;
  v37 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8E8, &qword_18AFD8790) + 36);
  v38 = v64;
  sub_18AE83A40(v64, v37, &qword_1EA99A8A8, &qword_18AFD8748);
  v39 = sub_18AFCDB44();
  v41 = v40;
  sub_18AE7BA80(v6, &qword_1EA99A738, &qword_18AFD85A0);
  sub_18AE7BA80(v38, &qword_1EA99A8A8, &qword_18AFD8748);
  v42 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8F0, &qword_18AFD8798) + 36));
  *v42 = v39;
  v42[1] = v41;
  if (v65 >= 3u)
  {
    if (v65 == 3)
    {
      v43 = sub_18AFCC6B4();
    }

    else
    {
      v43 = sub_18AFCC6E4();
    }

    LODWORD(v66) = v43;
  }

  else
  {
    *&v66 = sub_18AFCCD74();
  }

  v44 = sub_18AFCBCD4();
  v46 = v62;
  v45 = v63;
  v47 = v60;
  v48 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A8F8, &qword_18AFD87A0) + 36);
  v49 = v36;
  sub_18AE83A40(v36, v48, &qword_1EA99A8B0, &qword_18AFD8750);
  v50 = sub_18AFCDB44();
  v52 = v51;
  sub_18AE7BA80(v49, &qword_1EA99A8B0, &qword_18AFD8750);
  v53 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A900, &qword_18AFD87A8) + 36));
  *v53 = v50;
  v53[1] = v52;
  *v46 = v44;
  *(v46 + 8) = 256;
  v54 = 1.0;
  sub_18AFCBB94();
  sub_18AE9A768(v46, v47 + *(v61 + 84), &qword_1EA99A8B8, &unk_18AFD8758);
  *v47 = 0;
  v55 = v67;
  *(v47 + 8) = v66;
  *(v47 + 24) = v55;
  *(v47 + 40) = v68;
  *(v47 + 48) = 1;
  if (v65 == 1)
  {
    v54 = 0.25;
  }

  sub_18AE9A768(v47, v45, &qword_1EA999D40, &qword_18AFD6B30);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999D30, &qword_18AFD87B0);
  *(v45 + *(result + 36)) = v54;
  return result;
}

uint64_t sub_18AF1BE88@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v67 = a1;
  v71 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A738, &qword_18AFD85A0) - 8;
  v65 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v64 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A740, &qword_18AFD85A8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A748, &qword_18AFD85B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A750, &qword_18AFD85B8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v72 = &v64 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A758, &qword_18AFD85C0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v66 = &v64 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A760, &qword_18AFD85C8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v68 = &v64 - v21;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A710, &qword_18AFD8558);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v64 - v22;
  sub_18AFCBEF4();
  sub_18AF1DB30(v4, v12, type metadata accessor for ResolvedButtonBorderShape);
  *&v12[*(v10 + 64)] = 256;
  v23 = sub_18AFCC6B4();
  if (a2)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.0;
  }

  v64 = type metadata accessor for ResolvedButtonBorderShape;
  sub_18AF1DB30(v12, v15, type metadata accessor for ResolvedButtonBorderShape);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A768, &qword_18AFD85D0);
  v26 = &v15[*(v25 + 52)];
  *v26 = v23;
  *(v26 + 1) = v24;
  *&v15[*(v25 + 56)] = 256;
  v27 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A770, &qword_18AFD85D8) + 36)];
  sub_18AE83A40(v12, v27, &qword_1EA99A740, &qword_18AFD85A8);
  v28 = sub_18AFCDB44();
  v30 = v29;
  sub_18AE7BA80(v12, &qword_1EA99A740, &qword_18AFD85A8);
  v31 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A778, &qword_18AFD85E0) + 36));
  *v31 = v28;
  v31[1] = v30;
  sub_18AFCBEF4();
  *&v8[*(v6 + 44)] = 1056964608;
  v32 = v72;
  sub_18AF1DB30(v15, v72, type metadata accessor for ResolvedButtonBorderShape);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A780, &qword_18AFD85E8);
  sub_18AE83A40(v8, v32 + *(v33 + 52), &qword_1EA99A738, &qword_18AFD85A0);
  *(v32 + *(v33 + 56)) = 256;
  v34 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A788, &qword_18AFD85F0) + 36);
  sub_18AE83A40(v15, v34, &qword_1EA99A748, &qword_18AFD85B0);
  v35 = sub_18AFCDB44();
  v37 = v36;
  v38 = v66;
  sub_18AE7BA80(v8, &qword_1EA99A738, &qword_18AFD85A0);
  sub_18AE7BA80(v15, &qword_1EA99A748, &qword_18AFD85B0);
  v39 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A790, &qword_18AFD85F8) + 36));
  *v39 = v35;
  v39[1] = v37;
  v40 = v67;
  sub_18AFCBEF4();
  v41 = v64;
  *&v8[*(v65 + 44)] = 1056964608;
  v42 = v72;
  sub_18AF1DB30(v72, v38, v41);
  sub_18AE83A40(v8, v38 + *(v33 + 52), &qword_1EA99A738, &qword_18AFD85A0);
  *(v38 + *(v33 + 56)) = 256;
  v43 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A798, &qword_18AFD8600) + 36);
  sub_18AE83A40(v42, v43, &qword_1EA99A750, &qword_18AFD85B8);
  v44 = sub_18AFCDB44();
  v46 = v45;
  sub_18AE7BA80(v8, &qword_1EA99A738, &qword_18AFD85A0);
  sub_18AE7BA80(v42, &qword_1EA99A750, &qword_18AFD85B8);
  v47 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7A0, &qword_18AFD8608) + 36));
  *v47 = v44;
  v47[1] = v46;
  if (v40 >= 3u)
  {
    if (v40 == 3)
    {
      v48 = sub_18AFCC6B4();
    }

    else
    {
      v48 = sub_18AFCC6E4();
    }

    LODWORD(v73) = v48;
  }

  else
  {
    *&v73 = sub_18AFCCD74();
  }

  v49 = sub_18AFCBCD4();
  v50 = v71;
  v51 = v68;
  sub_18AF1DB30(v38, v68, type metadata accessor for ResolvedButtonBorderShape);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998BC8, &qword_18AFD8610);
  *(v51 + *(v52 + 52)) = v49;
  *(v51 + *(v52 + 56)) = 256;
  v53 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7A8, &qword_18AFD8618) + 36);
  sub_18AE83A40(v38, v53, &qword_1EA99A758, &qword_18AFD85C0);
  v54 = sub_18AFCDB44();
  v56 = v55;
  sub_18AE7BA80(v38, &qword_1EA99A758, &qword_18AFD85C0);
  v57 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7B0, &qword_18AFD8620) + 36));
  *v57 = v54;
  v57[1] = v56;
  v58 = 1.0;
  sub_18AFCBB94();
  v59 = v69;
  sub_18AF1DB30(v51, v69, type metadata accessor for ResolvedButtonBorderShape);
  v60 = v70;
  sub_18AE9A768(v51, v59 + *(v70 + 84), &qword_1EA99A760, &qword_18AFD85C8);
  *(v59 + v60[17]) = 0;
  v61 = v59 + v60[19];
  v62 = v74;
  *v61 = v73;
  *(v61 + 16) = v62;
  *(v61 + 32) = v75;
  *(v59 + v60[20]) = 1;
  if (v40 == 1)
  {
    v58 = 0.25;
  }

  sub_18AE9A768(v59, v50, &qword_1EA99A710, &qword_18AFD8558);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A700, &qword_18AFD8550);
  *(v50 + *(result + 36)) = v58;
  return result;
}

uint64_t sub_18AF1C614@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v45 = a1;
  v44 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9995A0, &qword_18AFD5178);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A998, &qword_18AFD88B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A9A0, &qword_18AFD88B8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998D80, &qword_18AFD88C0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42[-v15];
  v17 = sub_18AFCC6B4();
  v18 = MEMORY[0x1E697EAF0];
  sub_18AF1DB30(v3, v7, MEMORY[0x1E697EAF0]);
  *&v7[*(v5 + 60)] = v17;
  *&v7[*(v5 + 64)] = 256;
  v19 = sub_18AFCC6D4();
  if (v43)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.0;
  }

  sub_18AF1DB30(v7, v10, v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A948, &qword_18AFD8860);
  v22 = &v10[*(v21 + 52)];
  *v22 = v19;
  v22[1] = v20;
  *&v10[*(v21 + 56)] = 256;
  v23 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A9A8, &qword_18AFD88C8) + 36)];
  sub_18AE83A40(v7, v23, &qword_1EA9995A0, &qword_18AFD5178);
  v24 = sub_18AFCDB44();
  v26 = v25;
  sub_18AE7BA80(v7, &qword_1EA9995A0, &qword_18AFD5178);
  v27 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A9B0, &qword_18AFD88D0) + 36));
  *v27 = v24;
  v27[1] = v26;
  if (v45 >= 3u)
  {
    if (v45 == 3)
    {
      v28 = sub_18AFCC6B4();
    }

    else
    {
      v28 = sub_18AFCC6E4();
    }

    LODWORD(v46) = v28;
  }

  else
  {
    *&v46 = sub_18AFCCD74();
  }

  v29 = sub_18AFCBCD4();
  v30 = MEMORY[0x1E697EAF0];
  sub_18AF1DB30(v10, v13, MEMORY[0x1E697EAF0]);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998960, &unk_18AFD8820);
  *&v13[*(v31 + 52)] = v29;
  *&v13[*(v31 + 56)] = 256;
  v32 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A9B8, &qword_18AFD88D8) + 36)];
  sub_18AE83A40(v10, v32, &qword_1EA99A998, &qword_18AFD88B0);
  v33 = sub_18AFCDB44();
  v35 = v34;
  sub_18AE7BA80(v10, &qword_1EA99A998, &qword_18AFD88B0);
  v36 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A9C0, &qword_18AFD88E0) + 36));
  *v36 = v33;
  v36[1] = v35;
  v37 = 1.0;
  sub_18AFCBB94();
  sub_18AF1DB30(v13, v16, v30);
  sub_18AE9A768(v13, &v16[v14[21]], &qword_1EA99A9A0, &qword_18AFD88B8);
  v16[v14[17]] = 0;
  v38 = &v16[v14[19]];
  v39 = v47;
  *v38 = v46;
  *(v38 + 1) = v39;
  *(v38 + 4) = v48;
  v16[v14[20]] = 1;
  if (v45 == 1)
  {
    v37 = 0.5;
  }

  v40 = v44;
  sub_18AE9A768(v16, v44, &qword_1EA998D80, &qword_18AFD88C0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998D58, &qword_18AFD3740);
  *(v40 + *(result + 36)) = v37;
  return result;
}

uint64_t sub_18AF1CAB8@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v45 = a1;
  v44 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F68, &qword_18AFD86F0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A868, &qword_18AFD86F8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A870, &unk_18AFD8700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A128, &unk_18AFD73E0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42[-v15];
  v17 = sub_18AFCC6B4();
  v18 = MEMORY[0x1E6981998];
  sub_18AF1DB30(v3, v7, MEMORY[0x1E6981998]);
  *&v7[*(v5 + 60)] = v17;
  *&v7[*(v5 + 64)] = 256;
  v19 = sub_18AFCC6D4();
  if (v43)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.0;
  }

  sub_18AF1DB30(v7, v10, v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A818, &qword_18AFD8690);
  v22 = &v10[*(v21 + 52)];
  *v22 = v19;
  v22[1] = v20;
  *&v10[*(v21 + 56)] = 256;
  v23 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A878, &qword_18AFD8710) + 36)];
  sub_18AE83A40(v7, v23, &qword_1EA998F68, &qword_18AFD86F0);
  v24 = sub_18AFCDB44();
  v26 = v25;
  sub_18AE7BA80(v7, &qword_1EA998F68, &qword_18AFD86F0);
  v27 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A880, &qword_18AFD8718) + 36));
  *v27 = v24;
  v27[1] = v26;
  if (v45 >= 3u)
  {
    if (v45 == 3)
    {
      v28 = sub_18AFCC6B4();
    }

    else
    {
      v28 = sub_18AFCC6E4();
    }

    LODWORD(v46) = v28;
  }

  else
  {
    *&v46 = sub_18AFCCD74();
  }

  v29 = sub_18AFCBCD4();
  v30 = MEMORY[0x1E6981998];
  sub_18AF1DB30(v10, v13, MEMORY[0x1E6981998]);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999778, &unk_18AFD5750);
  *&v13[*(v31 + 52)] = v29;
  *&v13[*(v31 + 56)] = 256;
  v32 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A888, &qword_18AFD8720) + 36)];
  sub_18AE83A40(v10, v32, &qword_1EA99A868, &qword_18AFD86F8);
  v33 = sub_18AFCDB44();
  v35 = v34;
  sub_18AE7BA80(v10, &qword_1EA99A868, &qword_18AFD86F8);
  v36 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A890, &unk_18AFD8728) + 36));
  *v36 = v33;
  v36[1] = v35;
  v37 = 1.0;
  sub_18AFCBB94();
  sub_18AF1DB30(v13, v16, v30);
  sub_18AE9A768(v13, &v16[v14[21]], &qword_1EA99A870, &unk_18AFD8700);
  v16[v14[17]] = 0;
  v38 = &v16[v14[19]];
  v39 = v47;
  *v38 = v46;
  *(v38 + 1) = v39;
  *(v38 + 4) = v48;
  v16[v14[20]] = 1;
  if (v45 == 1)
  {
    v37 = 0.5;
  }

  v40 = v44;
  sub_18AE9A768(v16, v44, &qword_1EA99A128, &unk_18AFD73E0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A100, &unk_18AFD7990);
  *(v40 + *(result + 36)) = v37;
  return result;
}

uint64_t sub_18AF1CF5C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = sub_18AFCC6B4();
  v7 = sub_18AFCC6D4();
  v8 = sub_18AFCDB44();
  v28 = v9;
  v29 = v8;
  if (v4 >= 3u)
  {
    if (v4 == 3)
    {
      v10 = sub_18AFCC6B4();
    }

    else
    {
      v10 = sub_18AFCC6E4();
    }

    *v33 = v10;
  }

  else
  {
    *v33 = sub_18AFCCD74();
  }

  v11 = sub_18AFCBCD4();
  if (a2)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = sub_18AFCDB44();
  v15 = v14;
  *&v40 = v11;
  WORD4(v40) = 256;
  *&v41 = __PAIR64__(LODWORD(v12), v7);
  WORD4(v41) = 256;
  LODWORD(v42) = v6;
  WORD2(v42) = 256;
  *(&v42 + 1) = v29;
  *&v43 = v28;
  *(&v43 + 1) = v13;
  v44 = v14;
  sub_18AFCBB94();
  *&v56[23] = v41;
  *&v56[39] = v42;
  *&v56[55] = v43;
  *&v56[7] = v40;
  *&v57[7] = v58;
  *&v56[71] = v44;
  *&v57[23] = v59;
  *&v57[39] = v60;
  v45 = v11;
  v46 = 256;
  v47 = v7;
  v48 = v12;
  v49 = 256;
  v50 = v6;
  v51 = 256;
  v52 = v29;
  v53 = v28;
  v54 = v13;
  v55 = v15;
  sub_18AE83A40(&v40, v33, &qword_1EA99A908, &qword_18AFD87B8);
  sub_18AE7BA80(&v45, &qword_1EA99A908, &qword_18AFD87B8);
  v31[0] = 0;
  v16 = 0.5;
  if (v4 != 1)
  {
    v16 = 1.0;
  }

  *&v31[1] = *v57;
  v17 = *v57;
  v18 = *&v57[16];
  *&v31[17] = *&v57[16];
  *&v31[32] = *&v57[31];
  v32[0] = 1;
  *&v32[33] = *&v56[32];
  v20 = *&v56[16];
  v19 = *&v56[32];
  *&v32[17] = *&v56[16];
  v21 = *v56;
  *&v32[1] = *v56;
  v22 = *&v56[48];
  *&v32[49] = *&v56[48];
  *&v32[64] = *&v56[63];
  v23 = *&v32[32];
  *(a3 + 64) = *&v32[16];
  *(a3 + 80) = v23;
  v24 = *&v32[64];
  *(a3 + 96) = *&v32[48];
  *(a3 + 112) = v24;
  v25 = *&v31[16];
  *a3 = *v31;
  *(a3 + 16) = v25;
  v26 = *v32;
  *(a3 + 32) = *&v31[32];
  *(a3 + 48) = v26;
  *(a3 + 128) = v16;
  *&v34[15] = *&v57[31];
  *v34 = v18;
  *&v33[1] = v17;
  v33[0] = 0;
  v35 = 1;
  v36 = v21;
  *&v39[15] = *&v56[63];
  *v39 = v22;
  v38 = v19;
  v37 = v20;
  sub_18AE83A40(v31, v30, &qword_1EA999D20, &unk_18AFD6B20);
  return sub_18AE7BA80(v33, &qword_1EA999D20, &unk_18AFD6B20);
}

uint64_t sub_18AF1D228@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v43 = a1;
  v42 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7B8, &qword_18AFD8628);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7C0, &qword_18AFD8630);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7C8, &qword_18AFD8638);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v40[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A6F0, &qword_18AFD8548);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40[-v15];
  v17 = sub_18AFCC6B4();
  sub_18AF1DB30(v3, v7, type metadata accessor for ResolvedButtonBorderShape);
  *&v7[*(v5 + 60)] = v17;
  *&v7[*(v5 + 64)] = 256;
  v18 = sub_18AFCC6D4();
  if (v41)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  sub_18AF1DB30(v7, v10, type metadata accessor for ResolvedButtonBorderShape);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A768, &qword_18AFD85D0);
  v21 = &v10[*(v20 + 52)];
  *v21 = v18;
  v21[1] = v19;
  *&v10[*(v20 + 56)] = 256;
  v22 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7D0, &qword_18AFD8640) + 36)];
  sub_18AE83A40(v7, v22, &qword_1EA99A7B8, &qword_18AFD8628);
  v23 = sub_18AFCDB44();
  v25 = v24;
  sub_18AE7BA80(v7, &qword_1EA99A7B8, &qword_18AFD8628);
  v26 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7D8, &qword_18AFD8648) + 36));
  *v26 = v23;
  v26[1] = v25;
  if (v43 >= 3u)
  {
    if (v43 == 3)
    {
      v27 = sub_18AFCC6B4();
    }

    else
    {
      v27 = sub_18AFCC6E4();
    }

    LODWORD(v44) = v27;
  }

  else
  {
    *&v44 = sub_18AFCCD74();
  }

  v28 = sub_18AFCBCD4();
  sub_18AF1DB30(v10, v13, type metadata accessor for ResolvedButtonBorderShape);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998BC8, &qword_18AFD8610);
  *&v13[*(v29 + 52)] = v28;
  *&v13[*(v29 + 56)] = 256;
  v30 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7E0, &qword_18AFD8650) + 36)];
  sub_18AE83A40(v10, v30, &qword_1EA99A7C0, &qword_18AFD8630);
  v31 = sub_18AFCDB44();
  v33 = v32;
  sub_18AE7BA80(v10, &qword_1EA99A7C0, &qword_18AFD8630);
  v34 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A7E8, &qword_18AFD8658) + 36));
  *v34 = v31;
  v34[1] = v33;
  v35 = 1.0;
  sub_18AFCBB94();
  sub_18AF1DB30(v13, v16, type metadata accessor for ResolvedButtonBorderShape);
  sub_18AE9A768(v13, &v16[v14[21]], &qword_1EA99A7C8, &qword_18AFD8638);
  v16[v14[17]] = 0;
  v36 = &v16[v14[19]];
  v37 = v45;
  *v36 = v44;
  *(v36 + 1) = v37;
  *(v36 + 4) = v46;
  v16[v14[20]] = 1;
  if (v43 == 1)
  {
    v35 = 0.5;
  }

  v38 = v42;
  sub_18AE9A768(v16, v42, &qword_1EA99A6F0, &qword_18AFD8548);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A6E0, &qword_18AFD8540);
  *(v38 + *(result + 36)) = v35;
  return result;
}

unint64_t sub_18AF1D6D8()
{
  result = qword_1EA99A6B0;
  if (!qword_1EA99A6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A6A8, &qword_18AFD8528);
    sub_18AF1D7BC(&qword_1EA99A6B8, &qword_1EA99A6C0, &qword_18AFD8530, sub_18AF1D840);
    sub_18AE95F54(&qword_1EA99A718, &qword_1EA99A720, &qword_18AFD8560, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A6B0);
  }

  return result;
}

uint64_t sub_18AF1D7BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_18AF1D840()
{
  result = qword_1EA99A6C8;
  if (!qword_1EA99A6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A6D0, &qword_18AFD8538);
    sub_18AF1D8CC();
    sub_18AF1D984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A6C8);
  }

  return result;
}

unint64_t sub_18AF1D8CC()
{
  result = qword_1EA99A6D8;
  if (!qword_1EA99A6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A6E0, &qword_18AFD8540);
    sub_18AE95F54(&qword_1EA99A6E8, &qword_1EA99A6F0, &qword_18AFD8548, &unk_18AFE35F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A6D8);
  }

  return result;
}

unint64_t sub_18AF1D984()
{
  result = qword_1EA99A6F8;
  if (!qword_1EA99A6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A700, &qword_18AFD8550);
    sub_18AE95F54(&qword_1EA99A708, &qword_1EA99A710, &qword_18AFD8558, &unk_18AFE35F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A6F8);
  }

  return result;
}

void sub_18AF1DA70(uint64_t a1)
{
  sub_18AED6EAC(319, &qword_1EA998418, MEMORY[0x1E697F610]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_18AF1DB30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for MacSegmentedControlNavigationSelectionView(uint64_t a1)
{
  result = qword_1EA99A9C8;
  if (!qword_1EA99A9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AF1DC0C(uint64_t a1)
{
  sub_18AECE088(319, &qword_1EA9986F8, MEMORY[0x1E697DBD0]);
  if (v1 <= 0x3F)
  {
    sub_18AECE088(319, &qword_1EA998418, MEMORY[0x1E697F610]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_18AF1DD10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v3 = sub_18AFCBB34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999AA8, &qword_18AFD5FE8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v21 - v8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA40, &qword_18AFD8B10);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA60, &qword_18AFD8B20);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  sub_18AFCCD94();
  (*(v4 + 16))(v6, v21, v3);
  if ((*(v4 + 88))(v6, v3) != *MEMORY[0x1E697DBA8])
  {
    (*(v4 + 8))(v6, v3);
  }

  v15 = sub_18AFCCDA4();

  sub_18AFCCD64();
  sub_18AFCCDA4();

  sub_18AFCBB74();

  *v9 = v15;
  sub_18AFCCD64();
  sub_18AFCCDA4();

  sub_18AFCBB74();

  sub_18AE9A768(v9, v11, &qword_1EA999AA8, &qword_18AFD5FE8);
  v16 = MEMORY[0x1E6981998];
  sub_18AF1F2E8(v23, v14, MEMORY[0x1E6981998]);
  sub_18AE9A768(v11, &v14[*(v12 + 52)], &qword_1EA99AA40, &qword_18AFD8B10);
  *&v14[*(v12 + 56)] = 256;
  sub_18AFCBB94();
  sub_18AF1F2E8(v14, a2, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99AA68, &unk_18AFD8B28);
  sub_18AE9A768(v14, a2 + v17[21], &qword_1EA99AA60, &qword_18AFD8B20);
  *(a2 + v17[17]) = 0;
  v18 = a2 + v17[19];
  result = *&v24;
  v20 = v25;
  *v18 = v24;
  *(v18 + 16) = v20;
  *(v18 + 32) = v26;
  *(a2 + v17[20]) = 1;
  return result;
}

double sub_18AF1E10C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v3 = sub_18AFCBB34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999AA8, &qword_18AFD5FE8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v21 - v8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA40, &qword_18AFD8B10);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA48, &qword_18AFD8B18);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  sub_18AFCCD94();
  (*(v4 + 16))(v6, v21, v3);
  if ((*(v4 + 88))(v6, v3) != *MEMORY[0x1E697DBA8])
  {
    (*(v4 + 8))(v6, v3);
  }

  v15 = sub_18AFCCDA4();

  sub_18AFCCD64();
  sub_18AFCCDA4();

  sub_18AFCBB74();

  *v9 = v15;
  sub_18AFCCD64();
  sub_18AFCCDA4();

  sub_18AFCBB74();

  sub_18AE9A768(v9, v11, &qword_1EA999AA8, &qword_18AFD5FE8);
  v16 = MEMORY[0x1E697EAF0];
  sub_18AF1F2E8(v23, v14, MEMORY[0x1E697EAF0]);
  sub_18AE9A768(v11, &v14[*(v12 + 52)], &qword_1EA99AA40, &qword_18AFD8B10);
  *&v14[*(v12 + 56)] = 256;
  sub_18AFCBB94();
  sub_18AF1F2E8(v14, a2, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA00, &qword_18AFD8AD8);
  sub_18AE9A768(v14, a2 + v17[21], &qword_1EA99AA48, &qword_18AFD8B18);
  *(a2 + v17[17]) = 0;
  v18 = a2 + v17[19];
  result = *&v24;
  v20 = v25;
  *v18 = v24;
  *(v18 + 16) = v20;
  *(v18 + 32) = v26;
  *(a2 + v17[20]) = 1;
  return result;
}

void sub_18AF1E508(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A9F0, &qword_18AFD8AC8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v72 = &v53 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A9F8, &qword_18AFD8AD0);
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v53 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA00, &qword_18AFD8AD8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v59 = &v53 - v11;
  v12 = sub_18AFCC5C4();
  v65 = *(v12 - 8);
  v66 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v58 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_18AFCBB34();
  v63 = *(v14 - 8);
  v64 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_18AFCC184();
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - v20;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA08, &qword_18AFD8AE0);
  MEMORY[0x1EEE9AC00](v61);
  v69 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v60 = &v53 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v67 = &v53 - v26;
  sub_18AFCDF14();
  v68 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = type metadata accessor for MacSegmentedControlNavigationSelectionView(0);
  v28 = qword_18AFD8B38[*(a1 + v27[7])];
  v29 = *(v17 + 20);
  v56 = *MEMORY[0x1E697F468];
  v30 = v56;
  v31 = sub_18AFCC534();
  v32 = *(v31 - 8);
  v55 = *(v32 + 104);
  v57 = v32 + 104;
  v55(&v21[v29], v30, v31);
  *v21 = v28;
  *(v21 + 1) = v28;
  v54 = v17;
  v33 = v27[6];
  v34 = *(a1 + v33);
  sub_18AED2E48(v16);
  v35 = v58;
  sub_18AED2E70(v58);
  v36 = v59;
  v37 = sub_18AF1E10C(v16, v59);
  (*(v65 + 8))(v35, v66, v37);
  v38.n128_f64[0] = (*(v63 + 8))(v16, v64);
  sub_18AEE20A8(v21, v38);
  if (v34 == 3)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = 1.0;
  }

  v40 = v60;
  sub_18AE9A768(v36, v60, &qword_1EA99AA00, &qword_18AFD8AD8);
  *(v40 + *(v61 + 36)) = v39;
  v41 = v67;
  sub_18AE9A768(v40, v67, &qword_1EA99AA08, &qword_18AFD8AE0);
  v42 = v62;
  v55(&v62[*(v54 + 20)], v56, v31);
  *v42 = v28;
  v42[1] = v28;
  v43 = *(a1 + v33);
  v44 = v72;
  sub_18AF1EBBC(v43, v72);
  sub_18AEE20A8(v42, v45);
  if (*(a1 + v27[9]))
  {
    v46 = 1.0;
  }

  else
  {
    v46 = 0.0;
  }

  v47 = v70;
  sub_18AE9A768(v44, v70, &qword_1EA99A9F0, &qword_18AFD8AC8);
  *(v47 + *(v71 + 36)) = v46;
  v48 = v73;
  sub_18AE9A768(v47, v73, &qword_1EA99A9F8, &qword_18AFD8AD0);
  v49 = v69;
  sub_18AF1F168(v41, v69);
  v50 = v74;
  sub_18AEA3F8C(v48, v74);
  v51 = v75;
  sub_18AF1F168(v49, v75);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA10, &qword_18AFD8AE8);
  sub_18AEA3F8C(v50, v51 + *(v52 + 48));
  sub_18AEA3FFC(v48);
  sub_18AE7BA80(v41, &qword_1EA99AA08, &qword_18AFD8AE0);
  sub_18AEA3FFC(v50);
  sub_18AE7BA80(v49, &qword_1EA99AA08, &qword_18AFD8AE0);
}

uint64_t sub_18AF1EBBC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v32 = a2;
  v31 = a1;
  v27 = sub_18AFCC184();
  MEMORY[0x1EEE9AC00](v27);
  v25 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18AFCDD64();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_18AFCDAD4();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA18, &qword_18AFD8AF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA20, &qword_18AFD8AF8);
  v14 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v16 = &v23 - v15;
  v17 = sub_18AFCCD74();
  v18 = MEMORY[0x1E697EAF0];
  sub_18AF1F2E8(v4, v13, MEMORY[0x1E697EAF0]);
  *&v13[*(v11 + 52)] = v17;
  *&v13[*(v11 + 56)] = 256;
  sub_18AF46584(0, 0, 0, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA28, &unk_18AFD8B00);
  sub_18AFCDD34();
  *(swift_allocObject() + 16) = xmmword_18AFD8390;
  sub_18AF1F2E8(v4, v25, v18);
  sub_18AF1F1D8(v19);
  sub_18AFCDD44();
  v20 = 0.0;
  sub_18AFCDD54();
  sub_18AE95F54(&qword_1EA99AA38, &qword_1EA99AA18, &qword_18AFD8AF0, MEMORY[0x1E697DB78]);
  sub_18AFCCB34();
  (*(v29 + 8))(v8, v30);
  (*(v26 + 8))(v10, v28);
  sub_18AE7BA80(v13, &qword_1EA99AA18, &qword_18AFD8AF0);
  if (v31 == 3)
  {
    v20 = 1.0;
  }

  v21 = v32;
  (*(v14 + 32))(v32, v16, v24);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A9F0, &qword_18AFD8AC8);
  *(v21 + *(result + 36)) = v20;
  return result;
}

uint64_t sub_18AF1F030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A9D8, &qword_18AFD8AB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v17 - v6);
  *v7 = sub_18AFCDB44();
  v7[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A9E0, &qword_18AFD8AB8);
  sub_18AF1E508(v2, v7 + *(v9 + 44));
  v10 = 1.0;
  if (*(v2 + *(a1 + 36)) == 1)
  {
    if (*(v2 + *(a1 + 24)) == 3)
    {
      v10 = 1.4;
    }

    else
    {
      v10 = 1.0;
    }
  }

  sub_18AFCDD04();
  v12 = v11;
  v14 = v13;
  sub_18AE9A768(v7, a2, &qword_1EA99A9D8, &qword_18AFD8AB0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A9E8, &qword_18AFD8AC0);
  v16 = a2 + *(result + 36);
  *v16 = v10;
  *(v16 + 8) = v10;
  *(v16 + 16) = v12;
  *(v16 + 24) = v14;
  return result;
}

uint64_t sub_18AF1F168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA08, &qword_18AFD8AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18AF1F1D8(__n128 a1)
{
  result = qword_1EA99AA30;
  if (!qword_1EA99AA30)
  {
    sub_18AFCC184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AA30);
  }

  return result;
}

unint64_t sub_18AF1F230()
{
  result = qword_1EA99AA50;
  if (!qword_1EA99AA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A9E8, &qword_18AFD8AC0);
    sub_18AE95F54(&qword_1EA99AA58, &qword_1EA99A9D8, &qword_18AFD8AB0, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AA50);
  }

  return result;
}

uint64_t sub_18AF1F2E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_18AF1F350(void *a1)
{
  sub_18AEAC148(319);
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
          sub_18AF1FB70();
          if (v5 <= 0x3F)
          {
            sub_18AF1FBC0();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_18AF1F448(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v6 = *(*(sub_18AFCC024() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a3[5] - 8);
  v9 = *(v8 + 84);
  v10 = a3[2];
  v11 = a3[3];
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  if (v9 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = *(v8 + 84);
  }

  v15 = *(v11 - 8);
  v16 = *(v15 + 84);
  v17 = *(v8 + 80);
  v18 = *(*(a3[5] - 8) + 64);
  v19 = *(v12 + 80);
  v20 = *(*(a3[2] - 8) + 64);
  v21 = *(v15 + 80);
  if (v14 <= v16)
  {
    v22 = *(v15 + 84);
  }

  else
  {
    v22 = v14;
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v20 + v21;
  v24 = *(*(v11 - 8) + 64) + 7;
  if (v22 >= a2)
  {
    goto LABEL_36;
  }

  v25 = ((((v24 + ((v23 + ((v18 + v19 + (((v7 & 0xFFFFFFFFFFFFFFF8) + v17 + 25) & ~v17)) & ~v19)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v26 = (a2 - v22 + 255) >> 8;
  if (v25 <= 3)
  {
    v27 = v26 + 1;
  }

  else
  {
    v27 = 2;
  }

  if (v27 >= 0x10000)
  {
    v28 = 4;
  }

  else
  {
    v28 = 2;
  }

  if (v27 < 0x100)
  {
    v28 = 1;
  }

  if (v27 >= 2)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (v29 <= 1)
  {
    if (!v29)
    {
      goto LABEL_36;
    }

    v30 = a1[v25];
    if (!a1[v25])
    {
      goto LABEL_36;
    }

LABEL_32:
    v32 = (v30 - 1) << (8 * v25);
    if (v25 <= 3)
    {
      v33 = *a1;
    }

    else
    {
      v32 = 0;
      v33 = *a1;
    }

    return v22 + (v33 | v32) + 1;
  }

  if (v29 == 2)
  {
    v30 = *&a1[v25];
    if (*&a1[v25])
    {
      goto LABEL_32;
    }
  }

  else
  {
    v30 = *&a1[v25];
    if (v30)
    {
      goto LABEL_32;
    }
  }

LABEL_36:
  v34 = ((&a1[v7 + 8] & 0xFFFFFFFFFFFFFFF8) + v17 + 17) & ~v17;
  if (v9 == v22)
  {
    v35 = *(v8 + 48);

    return v35(v34);
  }

  v36 = (v34 + v18 + v19) & ~v19;
  if (v13 == v22)
  {
    v37 = *(v12 + 48);
    v38 = *(v12 + 84);
    v39 = v10;

    return v37(v36, v38, v39);
  }

  v36 = (v23 + v36) & ~v21;
  if (v16 == v22)
  {
    v37 = *(v15 + 48);
    v38 = *(v15 + 84);
    v39 = v11;

    return v37(v36, v38, v39);
  }

  v40 = *((v24 + v36) & 0xFFFFFFFFFFFFFFF8);
  if (v40 >= 0xFFFFFFFF)
  {
    LODWORD(v40) = -1;
  }

  return (v40 + 1);
}

void sub_18AF1F7A8(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = *(*(sub_18AFCC024() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a4[5] - 8);
  v11 = a4[3];
  v12 = *(v10 + 84);
  v13 = *(a4[2] - 8);
  v14 = *(v13 + 84);
  if (v12 <= v14)
  {
    v15 = *(v13 + 84);
  }

  else
  {
    v15 = *(v10 + 84);
  }

  v16 = *(v11 - 8);
  v17 = *(v16 + 84);
  v18 = *(v10 + 80);
  v19 = *(*(a4[5] - 8) + 64);
  v20 = *(v13 + 80);
  v21 = *(*(a4[2] - 8) + 64);
  v22 = *(v16 + 80);
  v23 = *(v16 + 64);
  if (v15 <= v17)
  {
    v24 = *(v16 + 84);
  }

  else
  {
    v24 = v15;
  }

  if (v24 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  v25 = v21 + v22;
  v26 = v23 + 7;
  v27 = ((((v23 + 7 + ((v21 + v22 + ((v19 + v20 + (((v9 & 0xFFFFFFFFFFFFFFF8) + v18 + 25) & ~v18)) & ~v20)) & ~v22)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v24 >= a3)
  {
    v29 = 0;
    if (v24 >= a2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v27 <= 3)
    {
      v28 = ((a3 - v24 + 255) >> 8) + 1;
    }

    else
    {
      v28 = 2;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 < 2)
    {
      v29 = 0;
    }

    if (v24 >= a2)
    {
LABEL_24:
      if (v29 > 1)
      {
        if (v29 != 2)
        {
          *&a1[v27] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_39;
        }

        *&a1[v27] = 0;
      }

      else if (v29)
      {
        a1[v27] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_39;
      }

      if (!a2)
      {
        return;
      }

LABEL_39:
      v32 = ((&a1[v9 + 8] & 0xFFFFFFFFFFFFFFF8) + v18 + 17) & ~v18;
      if (v12 == v24)
      {
        v33 = *(v10 + 56);

        v33(v32, a2, v12);
      }

      else
      {
        v34 = (v32 + v19 + v20) & ~v20;
        if (v14 == v24)
        {
          v35 = *(v13 + 56);

          v35(v34, a2);
        }

        else
        {
          v36 = (v25 + v34) & ~v22;
          if (v17 == v24)
          {
            v37 = *(v16 + 56);

            v37(v36, a2, v17, v11);
          }

          else
          {
            v38 = ((v26 + v36) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v38 = a2 & 0x7FFFFFFF;
              v38[1] = 0;
            }

            else
            {
              *v38 = (a2 - 1);
            }
          }
        }
      }

      return;
    }
  }

  v30 = ~v24 + a2;
  bzero(a1, v27);
  if (v27 <= 3)
  {
    v31 = (v30 >> 8) + 1;
  }

  else
  {
    v31 = 1;
  }

  if (v27 <= 3)
  {
    *a1 = v30;
    if (v29 > 1)
    {
LABEL_34:
      if (v29 == 2)
      {
        *&a1[v27] = v31;
      }

      else
      {
        *&a1[v27] = v31;
      }

      return;
    }
  }

  else
  {
    *a1 = v30;
    if (v29 > 1)
    {
      goto LABEL_34;
    }
  }

  if (v29)
  {
    a1[v27] = v31;
  }
}

unint64_t sub_18AF1FB70()
{
  result = qword_1EA99AAF0;
  if (!qword_1EA99AAF0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EA99AAF0);
  }

  return result;
}

void sub_18AF1FBC0()
{
  if (!qword_1EA998000)
  {
    v0 = sub_18AFCE074();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA998000);
    }
  }
}

uint64_t sub_18AF1FC5C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_18AFCE074();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_18AF1FCC8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, void (*a6)(uint64_t)@<X6>, char *a7@<X8>, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  v16 = *a1;
  v17 = a1[1];
  v18 = *(a1 + 1);
  v19 = a1[4];
  v20 = *(a1 + 1);
  v29 = a1[16];
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9979B8, &qword_18AFCEB90);
  swift_storeEnumTagMultiPayload();
  v35 = a10;
  v36 = a11;
  v37 = a12;
  v38 = a13;
  v39 = a14;
  v40 = a15;
  v21 = type metadata accessor for MacSegmentedControlComposer(0, &v35);
  v22 = &a7[v21[26]];
  v23 = &a7[v21[21]];
  *v23 = v16;
  v23[1] = v17;
  *(v23 + 1) = v18;
  v23[4] = v19;
  *(v23 + 1) = v20;
  v23[16] = v29;
  *v22 = a2;
  v22[8] = a3 & 1;
  v24 = *(a12 - 8);
  v25 = (*(v24 + 16))(&a7[v21[22]], a4, a12);
  v26 = a5(v25);
  a6(v26);
  result = (*(v24 + 8))(a4, a12);
  v28 = &a7[v21[25]];
  *v28 = a8;
  *(v28 + 1) = a9;
  return result;
}

uint64_t sub_18AF1FEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v65 = *(a1 - 8);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v64 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 16);
  v60 = *(v4 + 48);
  v63 = type metadata accessor for MacSegmentedControlLayout(255, v5, v60, v6);
  WitnessTable = swift_getWitnessTable();
  v48 = sub_18AFCD134();
  v67 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v69 = &v45 - v7;
  v72 = *(a1 + 32);
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AAF8, &unk_18AFD8C10);
  sub_18AFCC044();
  v71 = *(a1 + 64);
  v101 = v71;
  v8 = MEMORY[0x1E697E858];
  v99 = swift_getWitnessTable();
  v100 = MEMORY[0x1E697E040];
  v97 = swift_getWitnessTable();
  v98 = MEMORY[0x1E697E270];
  v61 = v8;
  v9 = swift_getWitnessTable();
  v10 = sub_18AF21FEC();
  v95 = v9;
  v96 = v10;
  swift_getWitnessTable();
  sub_18AFCBE74();
  sub_18AFCE074();
  v11 = sub_18AFCE074();
  v12 = sub_18AEC45F4();
  v49 = v12;
  v94 = swift_getWitnessTable();
  v93 = swift_getWitnessTable();
  v53 = v11;
  v50 = swift_getWitnessTable();
  v89 = &type metadata for SegmentBoundsPreferenceKey;
  v90 = v11;
  v91 = v12;
  v92 = v50;
  v54 = sub_18AFCC7A4();
  v52 = sub_18AFCC044();
  v58 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v13 = a1;
  v14 = *(a1 + 24);
  v46 = *(a1 + 56);
  v15 = v46;
  v47 = &v45 - v16;
  v56 = sub_18AFCC5F4();
  v57 = sub_18AFCC044();
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v51 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v45 - v19;
  v20 = v5;
  *&v21 = v5;
  *(&v21 + 1) = v14;
  v80 = v21;
  v81 = v72;
  v22 = v60;
  *&v21 = v60;
  *(&v21 + 1) = v15;
  v82 = v21;
  v83 = v71;
  v23 = v70;
  v84 = v70;
  sub_18AFCC504();
  sub_18AFCD124();
  v24 = sub_18AFCDB54();
  WitnessTable = v25;
  v63 = v24;
  v27 = v64;
  v26 = v65;
  (*(v65 + 16))(v64, v23, a1);
  v28 = (*(v26 + 80) + 80) & ~*(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v20;
  *(v29 + 24) = v14;
  v45 = v14;
  v30 = v71;
  *(v29 + 32) = v72;
  v31 = v46;
  *(v29 + 48) = v22;
  *(v29 + 56) = v31;
  *(v29 + 64) = v30;
  (*(v26 + 32))(v29 + v28, v27, v13);
  v32 = v48;
  v33 = swift_getWitnessTable();
  v34 = v47;
  v35 = v69;
  sub_18AFCCB94();

  (*(v67 + 8))(v35, v32);
  v73 = v20;
  v74 = v14;
  v75 = v72;
  v76 = v22;
  v77 = v31;
  v78 = v71;
  v79 = v70;
  sub_18AFCDB44();
  v36 = swift_getWitnessTable();
  v87 = v33;
  v88 = v36;
  v37 = v52;
  v38 = swift_getWitnessTable();
  v39 = v51;
  sub_18AFCCA64();
  (*(v58 + 8))(v34, v37);
  v40 = swift_getWitnessTable();
  v85 = v38;
  v86 = v40;
  v41 = v57;
  swift_getWitnessTable();
  v42 = v55;
  sub_18AEADA5C();
  v43 = *(v59 + 8);
  v43(v39, v41);
  sub_18AEADA5C();
  return (v43)(v42, v41);
}

double sub_18AF20614@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v35 = a7;
  v36 = a8;
  v34 = a1;
  v38 = a9;
  v32 = a10;
  v15 = type metadata accessor for MacSegmentedControlLayout(0, a2, a6, a4);
  v33 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v31 = v30 - v19;
  sub_18AFCDF14();
  v37 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v39[0] = a2;
  v39[1] = a3;
  v39[2] = a4;
  v39[3] = a5;
  v20 = v35;
  v21 = v36;
  v39[4] = a6;
  v39[5] = v35;
  v22 = a6;
  v23 = v32;
  v39[6] = v36;
  v39[7] = v32;
  v24 = type metadata accessor for MacSegmentedControlComposer(0, v39);
  v30[1] = v30;
  LOBYTE(v39[0]) = *(v34 + *(v24 + 84) + 2);
  MEMORY[0x1EEE9AC00](v24);
  v30[-10] = a2;
  v30[-9] = a3;
  v30[-8] = a4;
  v30[-7] = a5;
  v30[-6] = v22;
  v30[-5] = v20;
  v30[-4] = v21;
  v30[-3] = v23;
  v30[-2] = v25;
  sub_18AF0EDC8(v39, v26, sub_18AF22270, a2, v22, v17, &v30[-12]);
  swift_getWitnessTable();
  v27 = v31;
  sub_18AEADA5C();
  v28 = *(v33 + 8);
  v28(v17, v15);
  sub_18AEADA5C();
  v28(v27, v15);

  return result;
}

uint64_t sub_18AF208AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = v6;
  v15[1] = v7;
  v15[2] = v8;
  v15[3] = v9;
  v15[4] = v10;
  v15[5] = v11;
  v15[6] = v12;
  v15[7] = v13;
  type metadata accessor for MacSegmentedControlComposer(0, v15);
  sub_18AEADA5C();
  sub_18AEADA5C();
  return (*(v3 + 8))(v5, a2);
}

void sub_18AF209C0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v67 = a9;
  *&v117 = a3;
  *(&v117 + 1) = a4;
  v61 = a4;
  v62 = a7;
  v118 = a5;
  v119 = a6;
  v68 = a6;
  v120 = a7;
  v121 = a8;
  v63 = a8;
  v64 = a10;
  v122 = a10;
  v123 = a11;
  *&v65 = a11;
  v15 = type metadata accessor for MacSegmentedControlComposer(0, &v117);
  v60 = *(v15 - 8);
  v16 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v55 - v17;
  v19 = *a1;
  sub_18AFCDF14();
  v66 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = *(a2 + *(v15 + 84) + 3);
  v69 = a5;
  if (v20)
  {
    v116 = xmmword_18AFD8B80;
    v21 = MEMORY[0x1E697E040];
    sub_18AFCC044();
    sub_18AFCC044();
    sub_18AFCC044();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AAF8, &unk_18AFD8C10);
    sub_18AFCC044();
    v22 = v64;
    v23 = v65;
    v114 = v64;
    v115 = v65;
    WitnessTable = swift_getWitnessTable();
    v113 = v21;
    v110 = swift_getWitnessTable();
    v111 = MEMORY[0x1E697E270];
    v24 = swift_getWitnessTable();
    v25 = sub_18AF21FEC();
    v108 = v24;
    v109 = v25;
    swift_getWitnessTable();
    sub_18AFCBE74();
    sub_18AFCE074();
    v107 = swift_getWitnessTable();
    swift_getWitnessTable();
    v26 = sub_18AFCE074();
    (*(*(v26 - 8) + 16))(&v117, &v116, v26);
    v27 = v117;
LABEL_11:
    v65 = v27;
    v117 = v27;
    sub_18AFCC044();
    sub_18AFCC044();
    sub_18AFCC044();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AAF8, &unk_18AFD8C10);
    sub_18AFCC044();
    v105 = v22;
    v106 = v23;
    v103 = swift_getWitnessTable();
    v104 = MEMORY[0x1E697E040];
    v101 = swift_getWitnessTable();
    v102 = MEMORY[0x1E697E270];
    v53 = swift_getWitnessTable();
    v54 = sub_18AF21FEC();
    v99 = v53;
    v100 = v54;
    swift_getWitnessTable();
    sub_18AFCBE74();
    sub_18AFCE074();
    sub_18AFCE074();
    v98 = swift_getWitnessTable();
    v97 = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_18AEADA5C();
    sub_18AF22154(v65, *(&v65 + 1));

    return;
  }

  v28 = (a2 + *(v15 + 104));
  if ((v28[1] & 1) != 0 || (v29 = *v28, *v28 >= *(v19 + 16)))
  {
    v45 = MEMORY[0x1E697E040];
    sub_18AFCC044();
    sub_18AFCC044();
    sub_18AFCC044();
    v116 = 0uLL;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AAF8, &unk_18AFD8C10);
    sub_18AFCC044();
    v22 = v64;
    v23 = v65;
    v95 = v64;
    v96 = v65;
    v93 = swift_getWitnessTable();
    v94 = v45;
    v91 = swift_getWitnessTable();
    v92 = MEMORY[0x1E697E270];
    v46 = swift_getWitnessTable();
    v47 = sub_18AF21FEC();
    v89 = v46;
    v90 = v47;
    swift_getWitnessTable();
    sub_18AFCBE74();
    swift_getWitnessTable();
    v48 = sub_18AFCE074();
    (*(*(v48 - 8) + 16))(&v117, &v116, v48);
    v44 = v117;
    goto LABEL_10;
  }

  if ((v29 & 0x8000000000000000) == 0)
  {
    v30 = *(v19 + 8 * v29 + 32);
    v58 = v19;
    v59 = v30;
    v31 = v60;
    v57 = v29;
    (*(v60 + 16))(v18, a2, v15);
    v55 = (*(v31 + 80) + 88) & ~*(v31 + 80);
    v56 = (v16 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v34 = v61;
    v35 = v62;
    *(v33 + 2) = a3;
    *(v33 + 3) = v34;
    v36 = v68;
    *(v33 + 4) = a5;
    *(v33 + 5) = v36;
    v37 = v63;
    v38 = v64;
    *(v33 + 6) = v35;
    *(v33 + 7) = v37;
    v23 = v65;
    *(v33 + 8) = v38;
    *(v33 + 9) = v23;
    *(v33 + 10) = v59;
    (*(v31 + 32))(&v33[v55], v18, v15);
    v39 = v57;
    *&v33[v56] = v58;
    *&v33[v32] = v39;
    v22 = v38;
    sub_18AFCC044();
    sub_18AFCC044();
    sub_18AFCC044();

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AAF8, &unk_18AFD8C10);
    sub_18AFCC044();
    v77 = v38;
    v78 = v23;
    v75 = swift_getWitnessTable();
    v76 = MEMORY[0x1E697E040];
    v73 = swift_getWitnessTable();
    v74 = MEMORY[0x1E697E270];
    v40 = swift_getWitnessTable();
    v41 = sub_18AF21FEC();
    v71 = v40;
    v72 = v41;
    swift_getWitnessTable();
    *&v116 = sub_18AFCBE64();
    *(&v116 + 1) = v42;
    sub_18AFCBE74();
    swift_getWitnessTable();
    sub_18AEADA5C();

    v79 = v117;
    sub_18AEADA5C();

    v70 = v116;
    v43 = sub_18AFCE074();
    (*(*(v43 - 8) + 16))(&v79, &v70, v43);

    v44 = v79;
LABEL_10:
    v65 = v44;
    v116 = v44;
    sub_18AFCC044();
    sub_18AFCC044();
    sub_18AFCC044();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AAF8, &unk_18AFD8C10);
    sub_18AFCC044();
    v87 = v22;
    v88 = v23;
    v85 = swift_getWitnessTable();
    v86 = MEMORY[0x1E697E040];
    v83 = swift_getWitnessTable();
    v84 = MEMORY[0x1E697E270];
    v49 = swift_getWitnessTable();
    v50 = sub_18AF21FEC();
    v81 = v49;
    v82 = v50;
    swift_getWitnessTable();
    sub_18AFCBE74();
    sub_18AFCE074();
    v80 = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_18AEADA5C();
    sub_18AEC5630(v65, *(&v65 + 1));
    v51 = v117;
    v79 = v117;
    v52 = sub_18AFCE074();
    (*(*(v52 - 8) + 16))(&v116, &v79, v52);
    sub_18AEC5630(v51, *(&v51 + 1));
    v27 = v116;
    goto LABEL_11;
  }

  __break(1u);
}

void sub_18AF214B8(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, double a5@<X4>, double a6@<X5>, double a7@<X6>, CGFloat a8@<X7>, uint64_t a9@<X8>, CGFloat a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v78 = a7;
  v77 = a6;
  v73 = a5;
  v63 = a4;
  v88 = a3;
  v74 = a9;
  v82 = a14;
  v80 = a13;
  v76 = a12;
  v85 = sub_18AFCC024();
  v81 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v83 = v62 - v18;
  v75 = *(*&a8 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18AFCC044();
  v79 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v62 - v23;
  v25 = sub_18AFCC044();
  v64 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v87 = v62 - v26;
  v65 = v27;
  v28 = sub_18AFCC044();
  v69 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v86 = v62 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AAF8, &unk_18AFD8C10);
  v70 = v28;
  v72 = sub_18AFCC044();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v67 = v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v68 = v62 - v32;
  sub_18AFCDF14();
  v66 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for CGRect(0);
  v62[1] = v33;
  v62[2] = a1;
  sub_18AFCBD14();
  x = v97.origin.x;
  y = v97.origin.y;
  width = v97.size.width;
  height = v97.size.height;
  v97.origin.x = v77;
  v97.origin.y = v78;
  v97.size.width = a8;
  v97.size.height = a10;
  v98 = a11;
  v99 = v76;
  v38 = v80;
  v39 = v82;
  v100 = v80;
  v101 = v82;
  *&v40 = COERCE_DOUBLE(type metadata accessor for MacSegmentedControlComposer(0, &v97));
  v41 = v88;
  (*(v88 + *(v40 + 100)))();
  v78 = *&v40;
  MEMORY[0x18CFEBFA0](v41 + *(v40 + 88), *&a8, *&a10, v38);
  (*(v75 + 8))(v21, COERCE_CGFLOAT(*&a8));
  v102.origin.x = x;
  v102.origin.y = y;
  v102.size.width = width;
  v102.size.height = height;
  CGRectGetWidth(v102);
  v103.origin.x = x;
  v103.origin.y = y;
  v103.size.width = width;
  v103.size.height = height;
  CGRectGetHeight(v103);
  sub_18AFCDB44();
  v95 = v38;
  v96 = v39;
  WitnessTable = swift_getWitnessTable();
  sub_18AFCCBB4();
  (*(v79 + 8))(v24, v22);
  v43 = v83;
  sub_18AED2AB4(v83);
  v44 = v81;
  v45 = v84;
  v46 = v85;
  (*(v81 + 104))(v84, *MEMORY[0x1E697E7D0], v85);
  v47 = sub_18AFCC014();
  v48 = *(v44 + 8);
  v48(v45, v46);
  v48(v43, v46);
  if (v47)
  {
    v104.origin.x = x;
    v104.origin.y = y;
    v104.size.width = width;
    v104.size.height = height;
    CGRectGetMinX(v104);
    v49 = v86;
  }

  else
  {
    v49 = v86;
    if (!*(v63 + 16))
    {
      __break(1u);
      return;
    }

    sub_18AFCBD14();

    CGRectGetMaxX(v97);
    v105.origin.x = x;
    v105.origin.y = y;
    v105.size.width = width;
    v105.size.height = height;
    CGRectGetMinX(v105);
    v106.origin.x = x;
    v106.origin.y = y;
    v106.size.width = width;
    v106.size.height = height;
    CGRectGetWidth(v106);
  }

  v93 = WitnessTable;
  v94 = MEMORY[0x1E697E040];
  v50 = v65;
  v51 = swift_getWitnessTable();
  v52 = v87;
  sub_18AFCCBD4();
  v53 = (*(v64 + 8))(v52, v50);
  v54 = (v88 + *(*&v78 + 84));
  if (*v54 == 1 && (v54[1] & 1) == 0)
  {
    MEMORY[0x18CFECEE0](v53, 0.35, 1.0, 0.0);
  }

  v97.origin.x = v73;
  v91 = v51;
  v92 = MEMORY[0x1E697E270];
  v55 = v70;
  v56 = swift_getWitnessTable();
  v57 = v67;
  sub_18AFCCC64();

  (*(v69 + 8))(v49, v55);
  v58 = sub_18AF21FEC();
  v89 = v56;
  v90 = v58;
  v59 = v72;
  swift_getWitnessTable();
  v60 = v68;
  sub_18AEADA5C();
  v61 = *(v71 + 8);
  v61(v57, v59);
  sub_18AEADA5C();
  v61(v60, v59);
}

double sub_18AF21E4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v20 = a6;
  v21 = a8;
  v19 = a5;
  v22 = a1;
  v23 = a9;
  v14 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = v19;
  v24[4] = v20;
  v24[5] = a7;
  v24[6] = v21;
  v24[7] = a10;
  type metadata accessor for MacSegmentedControlComposer(0, v24);
  sub_18AEADA5C();
  sub_18AEADA5C();
  (*(v14 + 8))(v16, a3);

  return result;
}

unint64_t sub_18AF21FEC()
{
  result = qword_1EA99AB00;
  if (!qword_1EA99AB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AAF8, &unk_18AFD8C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AB00);
  }

  return result;
}

void sub_18AF22068(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[8];
  v10 = v2[9];
  v14[0] = v2[2];
  v4 = v14[0];
  v14[1] = v5;
  v14[2] = v6;
  v14[3] = v7;
  v14[4] = v8;
  v14[5] = v9;
  v14[6] = v11;
  v14[7] = v10;
  v12 = *(type metadata accessor for MacSegmentedControlComposer(0, v14) - 8);
  sub_18AF209C0(a1, v2 + ((*(v12 + 80) + 80) & ~*(v12 + 80)), v4, v5, v6, v7, v8, v9, a2, v11, v10);
}

uint64_t sub_18AF22154(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
    return sub_18AEC5630(result, a2);
  }

  return result;
}

void sub_18AF22164(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = *(v2 + 6);
  v9 = *(v2 + 7);
  v11 = *(v2 + 8);
  v10 = *(v2 + 9);
  *v16 = v2[2];
  v4 = *v16;
  *&v16[1] = v5;
  *&v16[2] = v6;
  *&v16[3] = v7;
  v16[4] = v8;
  v16[5] = v9;
  v16[6] = v11;
  v16[7] = v10;
  v12 = *(type metadata accessor for MacSegmentedControlComposer(0, v16) - 8);
  v13 = (*(v12 + 80) + 88) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_18AF214B8(a1, v2 + v13, *(v2 + v14), *(v2 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)), v4, v5, v6, a2, v7, v8, v9, v11, v10);
}

uint64_t type metadata accessor for MacGladeSwitch(uint64_t a1)
{
  result = qword_1EA997898;
  if (!qword_1EA997898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AF2233C(uint64_t a1)
{
  sub_18AEDCEE0(319, &qword_1EA9986F8, MEMORY[0x1E697DBD0]);
  if (v1 <= 0x3F)
  {
    sub_18AEDCEE0(319, &qword_1EA998418, MEMORY[0x1E697F610]);
    if (v2 <= 0x3F)
    {
      sub_18AEB31C4();
      if (v3 <= 0x3F)
      {
        sub_18AEDCEE0(319, &qword_1EA997DB8, MEMORY[0x1E697DC30]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_18AF22480@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v2 = sub_18AFCBB34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v97 = (&v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v82 - v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v82 - v9);
  v11 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999778, &unk_18AFD5750);
  MEMORY[0x1EEE9AC00](v88);
  v15 = &v82 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB08, &qword_18AFD8CC8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v82 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB10, &qword_18AFD8CD0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v89 = &v82 - v20;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB18, &qword_18AFD8CD8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v82 - v21;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB20, &qword_18AFD8CE0);
  MEMORY[0x1EEE9AC00](v90);
  v94 = &v82 - v22;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB28, &qword_18AFD8CE8);
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v82 - v23;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB30, &qword_18AFD8CF0);
  MEMORY[0x1EEE9AC00](v95);
  v99 = &v82 - v24;
  v25 = *MEMORY[0x1E697F468];
  v26 = sub_18AFCC534();
  v27 = *(*(v26 - 8) + 104);
  v84 = v13;
  v27(v13, v25, v26);
  v87 = type metadata accessor for MacGladeSwitch(0);
  v28 = v3 + 88;
  v98 = *(v1 + *(v87 + 44));
  v100 = v2;
  v82 = v3;
  if (v98 != 1)
  {
    sub_18AED2E48(v7);
    v35 = *v28;
    v85 = v28 & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
    v86 = v35;
    v31 = v35(v7, v2);
    if (v31 == *MEMORY[0x1E697DBB8])
    {
      v33 = sub_18AF233C4(v1, MEMORY[0x1E6981DA0], 0.0, 0.05);
      goto LABEL_6;
    }

    v39 = v7;
    v32 = *MEMORY[0x1E697DBB8];
    if (v31 != *MEMORY[0x1E697DBA8])
    {
      (*(v3 + 8))(v39, v2);
    }

    v37 = &unk_18AFCF000;
    v38 = sub_18AF233C4(v1, MEMORY[0x1E6981DB8], 1.0, 0.1);
LABEL_13:
    v36 = v38;
    v83 = v32;
    goto LABEL_14;
  }

  sub_18AED2E48(v10);
  v29 = *v28;
  v85 = v28 & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v86 = v29;
  v30 = v29(v10, v2);
  v31 = v30;
  v32 = *MEMORY[0x1E697DBB8];
  if (v30 != *MEMORY[0x1E697DBB8])
  {
    if (v30 != *MEMORY[0x1E697DBA8])
    {
      (*(v3 + 8))(v10, v2);
    }

    v37 = &unk_18AFCF000;
    v38 = sub_18AF22E98(v1, MEMORY[0x1E6981DB8], 1.0, 0.1);
    goto LABEL_13;
  }

  v33 = sub_18AF22E98(v1, MEMORY[0x1E6981DA0], 0.0, 0.05);
LABEL_6:
  v36 = v33;
  v83 = v31;
  v37 = &unk_18AFCF000;
LABEL_14:
  sub_18AEE00B8(v84, v15, v34);
  v40 = v88;
  *&v15[*(v88 + 52)] = v36;
  *&v15[*(v40 + 56)] = 256;
  v41 = 1.0;
  v42 = sub_18AF27338(v1, MEMORY[0x1E6981DB8], v37[37], 1.0, 0.15);
  sub_18AEF0D24(v15, v18, v43);
  *&v18[*(v40 + 52)] = v42;
  *&v18[*(v40 + 56)] = 256;
  v44 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB38, &qword_18AFD8CF8) + 36)];
  sub_18AE83A40(v15, v44, &qword_1EA999778, &unk_18AFD5750);
  v45 = v1;
  v46 = sub_18AFCDB44();
  v48 = v47;
  sub_18AE7BA80(v15, &qword_1EA999778, &unk_18AFD5750);
  v49 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9997A0, &qword_18AFD5A40) + 36));
  *v49 = v46;
  v49[1] = v48;
  v50 = sub_18AF23A84();
  v51 = v89;
  sub_18AEF0D24(v18, v89, v52);
  *(v51 + *(v40 + 52)) = v50;
  *(v51 + *(v40 + 56)) = 256;
  v53 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB40, &qword_18AFD8D00) + 36);
  sub_18AE83A40(v18, v53, &qword_1EA99AB08, &qword_18AFD8CC8);
  v54 = sub_18AFCDB44();
  v56 = v55;
  sub_18AE7BA80(v18, &qword_1EA99AB08, &qword_18AFD8CC8);
  v57 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB48, &qword_18AFD8D08) + 36));
  *v57 = v54;
  v57[1] = v56;
  v58 = v97;
  sub_18AED2E48(v97);
  v59 = v100;
  v60 = v86(v58, v100);
  v61 = 0.0;
  if (v60 != v83)
  {
    v61 = 1.0;
    if (v60 != *MEMORY[0x1E697DBA8])
    {
      (*(v82 + 8))(v58, v59, 1.0);
      v61 = 1.0;
    }
  }

  v62 = sub_18AF23EF8(v45, v61);
  sub_18AFCBB94();
  v63 = v91;
  sub_18AEF0D24(v51, v91, v64);
  v65 = v92;
  sub_18AE9A768(v51, v63 + *(v92 + 84), &qword_1EA99AB10, &qword_18AFD8CD0);
  *(v63 + v65[18]) = v62;
  *(v63 + v65[17]) = 0;
  v66 = v63 + v65[19];
  v67 = v109;
  *v66 = v108;
  *(v66 + 16) = v67;
  *(v66 + 32) = v110;
  *(v63 + v65[20]) = 1;
  if (*(v45 + *(v87 + 40)) == 1)
  {
    v41 = 0.5;
  }

  v68 = v94;
  sub_18AE9A768(v63, v94, &qword_1EA99AB18, &qword_18AFD8CD8);
  *(v68 + *(v90 + 36)) = v41;
  sub_18AF24174(v45);
  sub_18AF2449C(v45);
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v69 = v96;
  sub_18AE9A768(v68, v96, &qword_1EA99AB20, &qword_18AFD8CE0);
  v70 = (v69 + *(v93 + 36));
  v71 = v111[1];
  *v70 = v111[0];
  v70[1] = v71;
  v70[2] = v111[2];
  v72 = sub_18AFCDB44();
  v74 = v73;
  sub_18AF247C4(v45, v103);
  memcpy(v104, v103, 0x208uLL);
  v104[65] = v72;
  v104[66] = v74;
  v75 = v69;
  v76 = v99;
  sub_18AE9A768(v75, v99, &qword_1EA99AB28, &qword_18AFD8CE8);
  memcpy((v76 + *(v95 + 36)), v104, 0x218uLL);
  memcpy(v105, v103, sizeof(v105));
  v106 = v72;
  v107 = v74;
  sub_18AE83A40(v104, &v102, &qword_1EA99AB50, &qword_18AFD8D10);
  v77 = sub_18AE7BA80(v105, &qword_1EA99AB50, &qword_18AFD8D10);
  v78 = MEMORY[0x18CFECEE0](v77, 0.3, 1.0, 0.0);
  v79 = v101;
  sub_18AE9A768(v76, v101, &qword_1EA99AB30, &qword_18AFD8CF0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB58, &qword_18AFD8D18);
  v81 = v79 + *(result + 36);
  *v81 = v78;
  *(v81 + 8) = v98;
  return result;
}

uint64_t sub_18AF22E98(uint64_t a1, unsigned int *a2, double a3, double a4)
{
  v33 = a2;
  v5 = sub_18AFCCCF4();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998E8, &unk_18AFD9F50);
  MEMORY[0x1EEE9AC00](v35);
  v34 = (&v29 - v7);
  v29 = sub_18AFCBF04();
  MEMORY[0x1EEE9AC00](v29);
  v8 = sub_18AFCC474();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18AFCC5C4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for MacGladeSwitch(0);
  sub_18AED2E70(v15);
  v17 = (*(v13 + 88))(v15, v12);
  if (v17 == *MEMORY[0x1E697F600])
  {
    v18 = a1 + *(v16 + 36);
    v19 = *v18;
    if (*(v18 + 8) != 1)
    {

      sub_18AFCE024();
      v20 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v19, 0);
      (*(v9 + 8))(v11, v8);
      if (v36 == 1)
      {
        goto LABEL_9;
      }

LABEL_11:
      (*(v31 + 104))(v30, *MEMORY[0x1E69814D8], v32);
      v23 = sub_18AFCCF44();
      v24 = *(v35 + 36);
      v25 = *v33;
      v26 = sub_18AFCDBC4();
      v27 = v34;
      (*(*(v26 - 8) + 104))(v34 + v24, v25, v26);
      *v27 = v23;
      sub_18AE95F54(&qword_1EA99AB60, &qword_1EA9998E8, &unk_18AFD9F50, MEMORY[0x1E697FAF0]);
      return sub_18AFCBCD4();
    }
  }

  else
  {
    if (v17 != *MEMORY[0x1E697F608])
    {
      (*(v13 + 8))(v15, v12);
    }

    v21 = a1 + *(v16 + 36);
    v19 = *v21;
    if (*(v21 + 8) != 1)
    {

      sub_18AFCE024();
      v22 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v19, 0);
      (*(v9 + 8))(v11, v8);
      if (v37 != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  if ((v19 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_18AFCBEF4();
  return sub_18AFCBCD4();
}

uint64_t sub_18AF233C4(uint64_t a1, unsigned int *a2, double a3, double a4)
{
  v31 = a2;
  v30 = sub_18AFCCCF4();
  v5 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998E8, &unk_18AFD9F50);
  MEMORY[0x1EEE9AC00](v32);
  v9 = (&v28 - v8);
  v10 = sub_18AFCC474();
  v28 = *(v10 - 8);
  v29 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18AFCC5C4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for MacGladeSwitch(0);
  sub_18AED2E70(v16);
  v18 = (*(v14 + 88))(v16, v13);
  if (v18 == *MEMORY[0x1E697F600])
  {
    v19 = a1 + *(v17 + 36);
    v20 = *v19;
    if (*(v19 + 8) != 1)
    {
LABEL_7:

      sub_18AFCE024();
      v22 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v20, 0);
      (*(v28 + 8))(v12, v29);
    }
  }

  else
  {
    if (v18 != *MEMORY[0x1E697F608])
    {
      (*(v14 + 8))(v16, v13);
    }

    v21 = a1 + *(v17 + 36);
    v20 = *v21;
    if (*(v21 + 8) != 1)
    {
      goto LABEL_7;
    }
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69814D8], v30);
  v23 = sub_18AFCCF44();
  v24 = *(v32 + 36);
  v25 = *v31;
  v26 = sub_18AFCDBC4();
  (*(*(v26 - 8) + 104))(v9 + v24, v25, v26);
  *v9 = v23;
  sub_18AE95F54(&qword_1EA99AB60, &qword_1EA9998E8, &unk_18AFD9F50, MEMORY[0x1E697FAF0]);
  return sub_18AFCBCD4();
}

uint64_t sub_18AF23864(uint64_t a1, unsigned int *a2, double a3, double a4)
{
  v5 = sub_18AFCCCF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998E8, &unk_18AFD9F50);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v17 - v10);
  type metadata accessor for MacGladeSwitch(0);
  (*(v6 + 104))(v8, *MEMORY[0x1E69814D8], v5);
  v12 = sub_18AFCCF44();
  v13 = *(v9 + 36);
  v14 = *a2;
  v15 = sub_18AFCDBC4();
  (*(*(v15 - 8) + 104))(v11 + v13, v14, v15);
  *v11 = v12;
  sub_18AE95F54(&qword_1EA99AB60, &qword_1EA9998E8, &unk_18AFD9F50, MEMORY[0x1E697FAF0]);
  return sub_18AFCBCD4();
}

uint64_t sub_18AF23A84()
{
  v0 = sub_18AFCCCF4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB80, &qword_18AFD8D38);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v23 - v5);
  v7 = sub_18AFCBB34();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18AED2E48(v10);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == *MEMORY[0x1E697DBB8])
  {
    v12 = sub_18AFCCD94();
    v13 = *MEMORY[0x1E69814D8];
    v14 = *(v1 + 104);
    v14(v3, v13, v0);
    sub_18AFCCF44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999AA8, &qword_18AFD5FE8);
    sub_18AFCBB84();

    *v6 = v12;
    v14(v3, v13, v0);
    sub_18AFCCF44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA40, &qword_18AFD8B10);
    sub_18AFCBB84();
    v15 = MEMORY[0x1E6981DA0];
  }

  else
  {
    if (v11 != *MEMORY[0x1E697DBA8])
    {
      (*(v8 + 8))(v10, v7);
    }

    v16 = sub_18AFCCD64();
    v17 = *MEMORY[0x1E69814D8];
    v18 = *(v1 + 104);
    v18(v3, v17, v0);
    sub_18AFCCF44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999AA8, &qword_18AFD5FE8);
    sub_18AFCBB84();

    *v6 = v16;
    v18(v3, v17, v0);
    sub_18AFCCF44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA40, &qword_18AFD8B10);
    sub_18AFCBB84();
    v15 = MEMORY[0x1E6981DB8];
  }

  v19 = *(v4 + 36);
  v20 = *v15;
  v21 = sub_18AFCDBC4();
  (*(*(v21 - 8) + 104))(v6 + v19, v20, v21);
  sub_18AE95F54(&qword_1EA99AB88, &qword_1EA99AB80, &qword_18AFD8D38, MEMORY[0x1E697FAF0]);
  return sub_18AFCBCD4();
}

uint64_t sub_18AF23EF8(uint64_t a1, double a2)
{
  v3 = sub_18AFCCCF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18AFCC474();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + *(type metadata accessor for MacGladeSwitch(0) + 24);
  v12 = *v11;
  if (*(v11 + 8) != 1)
  {

    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v12, 0);
    (*(v8 + 8))(v10, v7);
  }

  (*(v4 + 104))(v6, *MEMORY[0x1E69814D8], v3);
  v15[1] = sub_18AFCCF44();
  return sub_18AFCBCD4();
}

uint64_t sub_18AF24174(uint64_t a1)
{
  v18 = sub_18AFCC474();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = sub_18AFCBB54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MacGladeSwitch(0);
  sub_18AE83A40(a1 + *(v12 + 28), v7, qword_1EA997D30, &qword_18AFD3310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v18);
  }

  v14 = (*(v9 + 88))(v11, v8);
  if (v14 == *MEMORY[0x1E697DC08])
  {
    return 0x403A000000000000;
  }

  if (v14 == *MEMORY[0x1E697DC20])
  {
    return 0x4040000000000000;
  }

  if (v14 == *MEMORY[0x1E697DC28])
  {
    return 0x4043000000000000;
  }

  v16 = v14;
  result = 0x4048000000000000;
  if (v16 != *MEMORY[0x1E697DC10] && v16 != *MEMORY[0x1E697DC00])
  {
    (*(v9 + 8))(v11, v8);
    return 0x4048000000000000;
  }

  return result;
}

uint64_t sub_18AF2449C(uint64_t a1)
{
  v18 = sub_18AFCC474();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = sub_18AFCBB54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MacGladeSwitch(0);
  sub_18AE83A40(a1 + *(v12 + 28), v7, qword_1EA997D30, &qword_18AFD3310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v18);
  }

  v14 = (*(v9 + 88))(v11, v8);
  if (v14 == *MEMORY[0x1E697DC08])
  {
    return 0x402E000000000000;
  }

  if (v14 == *MEMORY[0x1E697DC20])
  {
    return 0x4032000000000000;
  }

  if (v14 == *MEMORY[0x1E697DC28])
  {
    return 0x4036000000000000;
  }

  v16 = v14;
  result = 0x403C000000000000;
  if (v16 != *MEMORY[0x1E697DC10] && v16 != *MEMORY[0x1E697DC00])
  {
    (*(v9 + 8))(v11, v8);
    return 0x403C000000000000;
  }

  return result;
}

void sub_18AF247C4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v117 = a2;
  v3 = sub_18AFCC5C4();
  v113 = *(v3 - 8);
  v114 = v3;
  MEMORY[0x1EEE9AC00](v3);
  *&v112 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = COERCE_DOUBLE(sub_18AFCBB34());
  v122 = *(*&v119 - 8);
  MEMORY[0x1EEE9AC00](*&v119);
  v116 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v115 = &v104 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v107 = (&v104 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v106 = (&v104 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v105 = (&v104 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v104 = (&v104 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v104 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v104 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v104 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v104 - v26);
  v28 = sub_18AFCC474();
  v109 = *(v28 - 8);
  v110 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCDF14();
  v118 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v121 = sub_18AFCCD74();
  v124 = type metadata accessor for MacGladeSwitch(0);
  v31 = a1 + v124[8];
  v32 = *v31;
  LODWORD(v108) = *(v31 + 8);
  if (v108 == 1)
  {
    if ((v32 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v39 = (v122 + 88);
    if (*(a1 + v124[11]) == 1)
    {
      sub_18AED2E48(v27);
      *v125 = *v39;
      v40 = (*v125)(v27, *&v119);
      v41 = v40;
      v126 = *MEMORY[0x1E697DBB8];
      if (v40 == v126)
      {
        v120 = sub_18AF27A4C(0.0, 0.0, 0.0);
        LODWORD(v123) = 1;
        v126 = v41;
        v35 = v119;
      }

      else
      {
        if (v40 != *MEMORY[0x1E697DBA8])
        {
          (*(v122 + 8))(v27, COERCE_DOUBLE(*&v119));
        }

        v120 = sub_18AF27A4C(1.0, 0.0, 0.0);
        LODWORD(v123) = 1;
        v35 = v119;
      }

      goto LABEL_31;
    }

    sub_18AED2E48(v24);
    v35 = v119;
    *v125 = *v39;
    v45 = (*v125)(v24, *&v119);
    v37 = v45;
    v126 = *MEMORY[0x1E697DBB8];
    if (v45 == v126)
    {
      v43 = 0.35;
      v44 = 0.65;
      goto LABEL_16;
    }

    if (v45 != *MEMORY[0x1E697DBA8])
    {
      (*(v122 + 8))(v24, COERCE_DOUBLE(*&v35));
    }

    v47 = 0.35;
    v48 = 0.65;
    v46 = 1.0;
LABEL_30:
    v120 = sub_18AF27A4C(v46, v47, v48);
    LODWORD(v123) = 0;
    goto LABEL_31;
  }

  sub_18AFCE024();
  v38 = sub_18AFCC7D4();
  sub_18AFCBA64();

  sub_18AFCC464();
  swift_getAtKeyPath();
  sub_18AEB264C(v32, 0);
  (*(v109 + 8))(v30, v110);
  if (v155 == 1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v33 = (v122 + 88);
  v34 = MEMORY[0x1E697DBB8];
  if (*(a1 + v124[11]) != 1)
  {
    sub_18AED2E48(v18);
    v35 = v119;
    *v125 = *v33;
    v42 = (*v125)(v18, *&v119);
    v37 = v42;
    v126 = *v34;
    if (v42 == v126)
    {
      v43 = 0.0;
      v44 = 0.0;
LABEL_16:
      v120 = sub_18AF27A4C(0.0, v43, v44);
      LODWORD(v123) = 0;
      goto LABEL_17;
    }

    if (v42 != *MEMORY[0x1E697DBA8])
    {
      (*(v122 + 8))(v18, COERCE_DOUBLE(*&v35));
    }

    v46 = 0.0;
    v47 = 0.0;
    v48 = 0.0;
    goto LABEL_30;
  }

  sub_18AED2E48(v21);
  v35 = v119;
  *v125 = *v33;
  v36 = (*v125)(v21, *&v119);
  v37 = v36;
  v126 = *v34;
  if (v36 == v126)
  {
    v120 = sub_18AF27A4C(0.0, 0.0, 0.0);
    LODWORD(v123) = 1;
LABEL_17:
    v126 = v37;
    goto LABEL_31;
  }

  if (v36 != *MEMORY[0x1E697DBA8])
  {
    (*(v122 + 8))(v21, COERCE_DOUBLE(*&v35));
  }

  v120 = sub_18AF27A4C(0.0, 0.0, 0.0);
  LODWORD(v123) = 1;
LABEL_31:
  sub_18AFCBB94();
  v49 = v124[10];
  LODWORD(v111) = *(a1 + v49);
  sub_18AF25B2C(a1);
  sub_18AF25B2C(a1);
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v119 = sub_18AF25E44(a1);
  if (v108)
  {
    v50 = v122;
    if ((v32 & 1) == 0)
    {
LABEL_33:
      if (v123)
      {
        v51 = v106;
        sub_18AED2E48(v106);
        v52 = (*v125)(v51, *&v35);
        v53 = v112;
        if (v52 != v126 && v52 != *MEMORY[0x1E697DBA8])
        {
          (*(v50 + 8))(v106, COERCE_DOUBLE(*&v35));
        }
      }

      else
      {
        v58 = v107;
        sub_18AED2E48(v107);
        v59 = (*v125)(v58, *&v35);
        v53 = v112;
        if (v59 != v126 && v59 != *MEMORY[0x1E697DBA8])
        {
          (*(v50 + 8))(v107, COERCE_DOUBLE(*&v35));
        }
      }

      v57 = sub_18AEA4E08(a1);
      goto LABEL_52;
    }
  }

  else
  {

    sub_18AFCE024();
    v54 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v32, 0);
    (*(v109 + 8))(v30, v110);
    v50 = v122;
    if (v155 != 1)
    {
      goto LABEL_33;
    }
  }

  if (v123)
  {
    v55 = v104;
    sub_18AED2E48(v104);
    v56 = (*v125)(v55, *&v35);
    v53 = v112;
    if (v56 == v126)
    {
      v57 = sub_18AF26158(a1);
    }

    else
    {
      if (v56 != *MEMORY[0x1E697DBA8])
      {
        (*(v50 + 8))(v104, COERCE_DOUBLE(*&v35));
      }

      v57 = sub_18AF265A8(a1);
    }
  }

  else
  {
    v60 = v105;
    sub_18AED2E48(v105);
    v61 = (*v125)(v60, *&v35);
    v53 = v112;
    if (v61 != v126 && v61 != *MEMORY[0x1E697DBA8])
    {
      (*(v50 + 8))(v105, COERCE_DOUBLE(*&v35));
    }

    v57 = sub_18AEA4AA8(a1);
  }

LABEL_52:
  v122 = v57;
  LODWORD(v107) = *(a1 + v49);
  sub_18AF269F8(a1);
  sub_18AF25B2C(a1);
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v112 = sub_18AF26D00(a1);
  sub_18AED2E70(*&v53);
  v63 = v113;
  v62 = v114;
  v64 = (*(v113 + 88))(COERCE_DOUBLE(*&v53), v114);
  if (v64 == *MEMORY[0x1E697F600])
  {
    v65 = 0.85;
    v67 = v115;
    v66 = v116;
  }

  else
  {
    v65 = 1.0;
    v67 = v115;
    v66 = v116;
    if (v64 != *MEMORY[0x1E697F608])
    {
      (*(v63 + 8))(COERCE_DOUBLE(*&v53), v62, 1.0);
      v65 = 1.0;
    }
  }

  v116 = sub_18AF27014(v65);
  v113 = sub_18AF27338(a1, MEMORY[0x1E6981DA0], 0.15, 0.0, 0.1);
  v68 = sub_18AFCDB44();
  v114 = v69;
  v115 = v68;
  v109 = sub_18AF2765C();
  v110 = sub_18AFCDB44();
  v124 = v70;
  sub_18AED2E48(v67);
  v71 = (*v125)(v67, *&v35);
  if (v71 == v126)
  {
    v72 = 0.65;
    v73 = 0.0;
  }

  else
  {
    if (v71 != *MEMORY[0x1E697DBA8])
    {
      (*(v50 + 8))(v67, COERCE_DOUBLE(*&v35));
    }

    v73 = 1.0;
    v72 = 1.0;
  }

  v108 = sub_18AF27A4C(v73, 0.0, v72);
  sub_18AED2E48(v66);
  v74 = (*v125)(v66, *&v35);
  v75 = v49;
  if (v74 == v126)
  {
    v76 = sub_18AF27CA0(a1);
  }

  else
  {
    if (v74 != *MEMORY[0x1E697DBA8])
    {
      (*(v50 + 8))(v66, COERCE_DOUBLE(*&v35));
    }

    v76 = sub_18AF27F68(a1);
  }

  v77 = v76;
  sub_18AFCBB94();
  v78 = *(a1 + v75);
  v220 = 0;
  v218 = 1;
  if (v123)
  {
    v79 = sub_18AFCC8A4();
  }

  else
  {
    v79 = sub_18AFCC884();
  }

  v125[0] = v79;
  sub_18AF28238(a1);
  v81 = v80;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  if ((v80 & 1) == 0)
  {
    sub_18AFCBAA4();
    v82 = v86;
    v83 = v87;
    v84 = v88;
    v85 = v89;
  }

  if (v78 == 1)
  {
    v90 = 0.5;
  }

  else
  {
    v90 = 1.0;
  }

  if (v107 == 1)
  {
    v91 = 0.5;
  }

  else
  {
    v91 = 1.0;
  }

  if (LODWORD(v111) == 1)
  {
    v92 = 0.5;
  }

  else
  {
    v92 = 1.0;
  }

  v111 = v92;
  if (v123)
  {
    v93 = 0x3FF0000000000000;
  }

  else
  {
    v93 = 0;
  }

  v123 = v93;
  v126 = v81 & 1;
  v221 = v81 & 1;
  sub_18AF28560(a1);
  sub_18AFCDB44();
  sub_18AFCBCC4();
  *&v223[7] = v239;
  *&v223[23] = v240;
  *&v223[39] = v241;
  LOBYTE(v146[0]) = 0;
  *(v146 + 1) = *v236;
  DWORD1(v146[0]) = *&v236[3];
  *(&v146[0] + 1) = v120;
  *&v147 = v234;
  v146[1] = v232;
  v146[2] = v233;
  BYTE8(v147) = 1;
  HIDWORD(v147) = *&v235[3];
  *(&v147 + 9) = *v235;
  *&v148 = v121;
  WORD4(v148) = 256;
  *(&v148 + 10) = v237;
  HIWORD(v148) = v238;
  *(v149 + 8) = v229;
  *(&v149[2] + 8) = v231;
  *(&v149[1] + 8) = v230;
  *v149 = v92;
  v94 = v119;
  *(&v149[3] + 1) = v119;
  v150 = 0;
  v145[0] = v146[0];
  v145[1] = v232;
  v145[4] = v148;
  v145[5] = v149[0];
  v145[2] = v233;
  v145[3] = v147;
  v145[7] = v149[2];
  v145[8] = v149[3];
  v145[6] = v149[1];
  *&v151 = v122;
  WORD4(v151) = 256;
  HIWORD(v151) = v228;
  *(&v151 + 10) = v227;
  *(v152 + 8) = v224;
  *(&v152[1] + 8) = v225;
  *(&v152[2] + 8) = v226;
  *v152 = v91;
  v95 = v112;
  *(&v152[3] + 1) = v112;
  v153 = 0;
  *(&v145[10] + 8) = v152[0];
  *(&v145[9] + 8) = v151;
  *&v145[9] = 0;
  *(&v145[14] + 1) = 0;
  *(&v145[13] + 8) = v152[3];
  *(&v145[12] + 8) = v152[2];
  *(&v145[11] + 8) = v152[1];
  *v154 = v93;
  v154[8] = 0;
  *&v154[12] = *&v219[3];
  *&v154[9] = *v219;
  *&v154[16] = 0;
  v154[24] = 1;
  *&v154[28] = *&v217[3];
  *&v154[25] = *v217;
  LODWORD(v106) = v77;
  v154[32] = v77;
  *&v154[36] = *&v216[3];
  *&v154[33] = *v216;
  v96 = v108;
  v97 = v109;
  *&v154[40] = v108;
  *&v154[80] = v208;
  *&v154[48] = v206;
  *&v154[64] = v207;
  v154[88] = 1;
  *&v154[92] = *&v215[3];
  *&v154[89] = *v215;
  *&v154[96] = v109;
  *&v154[104] = 256;
  *&v154[110] = v214;
  *&v154[106] = v213;
  v99 = v113;
  v98 = v114;
  *&v154[112] = v113;
  *&v154[120] = 256;
  *&v154[126] = v212;
  *&v154[122] = v211;
  v101 = v115;
  v100 = v116;
  *&v154[128] = v116;
  *&v154[136] = 256;
  *&v154[142] = v210;
  *&v154[138] = v209;
  *&v154[144] = v115;
  *&v154[152] = v114;
  v102 = v110;
  *&v154[160] = v110;
  *&v154[168] = v124;
  *&v154[176] = v90;
  v103 = v125[0];
  v154[184] = v125[0];
  *&v154[188] = *&v222[3];
  *&v154[185] = *v222;
  *&v154[192] = v82;
  *&v154[200] = v83;
  *&v154[208] = v84;
  *&v154[216] = v85;
  v154[224] = v126;
  *&v154[257] = *&v223[32];
  *&v154[272] = *(&v241 + 1);
  *&v154[241] = *&v223[16];
  *&v154[225] = *v223;
  memcpy(&v145[15], v154, 0x118uLL);
  memcpy(v117, v145, 0x208uLL);
  v155 = v123;
  v156 = 0;
  *v157 = *v219;
  *&v157[3] = *&v219[3];
  v158 = 0;
  v159 = 1;
  *v160 = *v217;
  *&v160[3] = *&v217[3];
  v161 = v106;
  *v162 = *v216;
  *&v162[3] = *&v216[3];
  v163 = v96;
  v164 = v206;
  v165 = v207;
  v166 = v208;
  v167 = 1;
  *v168 = *v215;
  *&v168[3] = *&v215[3];
  v169 = v97;
  v170 = 256;
  v171 = v213;
  v172 = v214;
  v173 = v99;
  v174 = 256;
  v176 = v212;
  v175 = v211;
  v177 = v100;
  v178 = 256;
  v180 = v210;
  v179 = v209;
  v181 = v101;
  v182 = v98;
  v183 = v102;
  v184 = v124;
  v185 = v90;
  v186 = v103;
  *&v187[3] = *&v222[3];
  *v187 = *v222;
  v188 = v82;
  v189 = v83;
  v190 = v84;
  v191 = v85;
  v192 = v126;
  *v195 = *&v223[32];
  v193 = *v223;
  v194 = *&v223[16];
  *&v195[15] = *&v223[47];
  sub_18AE83A40(v146, &v127, &qword_1EA99AB68, &qword_18AFD8D20);
  sub_18AE83A40(&v151, &v127, &qword_1EA99AB70, &qword_18AFD8D28);
  sub_18AE83A40(v154, &v127, &qword_1EA99AB78, &qword_18AFD8D30);
  sub_18AE7BA80(&v155, &qword_1EA99AB78, &qword_18AFD8D30);
  v201 = v224;
  v202 = v225;
  v203 = v226;
  v196 = v122;
  v197 = 256;
  v198 = v227;
  v199 = v228;
  v200 = v91;
  v204 = v95;
  v205 = 0;
  sub_18AE7BA80(&v196, &qword_1EA99AB70, &qword_18AFD8D28);
  v127 = 0;
  *v128 = *v236;
  *&v128[3] = *&v236[3];
  v129 = v120;
  v130 = v232;
  v131 = v233;
  v132 = v234;
  v133 = 1;
  *&v134[3] = *&v235[3];
  *v134 = *v235;
  v135 = v121;
  v136 = 256;
  v138 = v238;
  v137 = v237;
  v139 = v111;
  v142 = v231;
  v141 = v230;
  v140 = v229;
  v143 = v94;
  v144 = 0;
  sub_18AE7BA80(&v127, &qword_1EA99AB68, &qword_18AFD8D20);
}

uint64_t sub_18AF25B2C(uint64_t a1)
{
  v18 = sub_18AFCC474();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = sub_18AFCBB54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MacGladeSwitch(0);
  sub_18AE83A40(a1 + *(v12 + 28), v7, qword_1EA997D30, &qword_18AFD3310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v18);
  }

  v14 = (*(v9 + 88))(v11, v8);
  if (v14 == *MEMORY[0x1E697DC08])
  {
    return 0x4014000000000000;
  }

  v16 = v14;
  result = 0x4018000000000000;
  if (v16 != *MEMORY[0x1E697DC20] && v16 != *MEMORY[0x1E697DC28] && v16 != *MEMORY[0x1E697DC10] && v16 != *MEMORY[0x1E697DC00])
  {
    (*(v9 + 8))(v11, v8);
    return 0x4018000000000000;
  }

  return result;
}

double sub_18AF25E44(uint64_t a1)
{
  v17 = sub_18AFCC474();
  v2 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = sub_18AFCBB54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MacGladeSwitch(0);
  sub_18AE83A40(a1 + *(v12 + 28), v7, qword_1EA997D30, &qword_18AFD3310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v17);
  }

  v14 = (*(v9 + 88))(v11, v8);
  result = 6.0;
  if (v14 != *MEMORY[0x1E697DC08])
  {
    result = 7.0;
    if (v14 != *MEMORY[0x1E697DC20])
    {
      result = 8.0;
      if (v14 != *MEMORY[0x1E697DC28])
      {
        result = 10.0;
        if (v14 != *MEMORY[0x1E697DC10] && v14 != *MEMORY[0x1E697DC00])
        {
          (*(v9 + 8))(v11, v8, 10.0);
          return 10.0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_18AF26158(uint64_t a1)
{
  v21 = sub_18AFCCCF4();
  v2 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18AFCC474();
  v5 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18AFCC5C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for MacGladeSwitch(0);
  sub_18AED2E70(v11);
  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == *MEMORY[0x1E697F600])
  {
    v14 = a1 + *(v12 + 36);
    v15 = *v14;
    if (*(v14 + 8) == 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v13 != *MEMORY[0x1E697F608])
  {
    (*(v9 + 8))(v11, v8);
  }

  v16 = a1 + *(v12 + 36);
  v15 = *v16;
  if (*(v16 + 8) != 1)
  {
LABEL_7:

    sub_18AFCE024();
    v17 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v15, 0);
    (*(v5 + 8))(v7, v20);
  }

LABEL_8:
  (*(v2 + 104))(v4, *MEMORY[0x1E69814D8], v21);
  v22 = sub_18AFCCF44();
  return sub_18AFCBCD4();
}

uint64_t sub_18AF265A8(uint64_t a1)
{
  v21 = sub_18AFCCCF4();
  v2 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_18AFCC474();
  v5 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18AFCC5C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for MacGladeSwitch(0);
  sub_18AED2E70(v11);
  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == *MEMORY[0x1E697F600])
  {
    v14 = a1 + *(v12 + 36);
    v15 = *v14;
    if (*(v14 + 8) == 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v13 != *MEMORY[0x1E697F608])
  {
    (*(v9 + 8))(v11, v8);
  }

  v16 = a1 + *(v12 + 36);
  v15 = *v16;
  if (*(v16 + 8) != 1)
  {
LABEL_7:

    sub_18AFCE024();
    v17 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v15, 0);
    (*(v5 + 8))(v7, v20);
  }

LABEL_8:
  (*(v2 + 104))(v4, *MEMORY[0x1E69814D8], v21);
  v22 = sub_18AFCCF44();
  return sub_18AFCBCD4();
}

uint64_t sub_18AF269F8(uint64_t a1)
{
  v17 = sub_18AFCC474();
  v2 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = sub_18AFCBB54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MacGladeSwitch(0);
  sub_18AE83A40(a1 + *(v12 + 28), v7, qword_1EA997D30, &qword_18AFD3310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v17);
  }

  v14 = (*(v9 + 88))(v11, v8);
  if (v14 != *MEMORY[0x1E697DC08] && v14 != *MEMORY[0x1E697DC20] && v14 != *MEMORY[0x1E697DC28] && v14 != *MEMORY[0x1E697DC10] && v14 != *MEMORY[0x1E697DC00])
  {
    (*(v9 + 8))(v11, v8);
  }

  return 0x3FF0000000000000;
}

double sub_18AF26D00(uint64_t a1)
{
  v17 = sub_18AFCC474();
  v2 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = sub_18AFCBB54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MacGladeSwitch(0);
  sub_18AE83A40(a1 + *(v12 + 28), v7, qword_1EA997D30, &qword_18AFD3310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v17);
  }

  v14 = (*(v9 + 88))(v11, v8);
  result = -6.0;
  if (v14 != *MEMORY[0x1E697DC08])
  {
    result = -7.0;
    if (v14 != *MEMORY[0x1E697DC20])
    {
      result = -8.0;
      if (v14 != *MEMORY[0x1E697DC28])
      {
        result = -10.0;
        if (v14 != *MEMORY[0x1E697DC10] && v14 != *MEMORY[0x1E697DC00])
        {
          (*(v9 + 8))(v11, v8, -10.0);
          return -10.0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_18AF27014(double a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998E8, &unk_18AFD9F50);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (v18 - v2);
  v4 = sub_18AFCCCF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18AFCBB34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18AED2E48(v11);
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == *MEMORY[0x1E697DBB8])
  {
    (*(v5 + 104))(v7, *MEMORY[0x1E69814D8], v4);
    v18[1] = sub_18AFCCF44();
  }

  else
  {
    if (v12 != *MEMORY[0x1E697DBA8])
    {
      (*(v9 + 8))(v11, v8);
    }

    (*(v5 + 104))(v7, *MEMORY[0x1E69814D8], v4);
    v13 = sub_18AFCCF44();
    v14 = *(v1 + 36);
    v15 = *MEMORY[0x1E6981DF8];
    v16 = sub_18AFCDBC4();
    (*(*(v16 - 8) + 104))(v3 + v14, v15, v16);
    *v3 = v13;
    sub_18AE95F54(&qword_1EA99AB60, &qword_1EA9998E8, &unk_18AFD9F50, MEMORY[0x1E697FAF0]);
  }

  return sub_18AFCBCD4();
}

uint64_t sub_18AF27338(uint64_t a1, unsigned int *a2, double a3, double a4, double a5)
{
  v10 = sub_18AFCC5C4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v29 - v15);
  v17 = sub_18AFCBB34();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18AED2E48(v20);
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == *MEMORY[0x1E697DBB8])
  {
    type metadata accessor for MacGladeSwitch(0);
    sub_18AED2E70(v16);
    v22 = (*(v11 + 88))(v16, v10);
    if (v22 == *MEMORY[0x1E697F600])
    {
      v23 = MEMORY[0x1E6981DA0];
      v24 = 0.06;
    }

    else
    {
      if (v22 != *MEMORY[0x1E697F608])
      {
        (*(v11 + 8))(v16, v10);
      }

      v23 = MEMORY[0x1E6981DA0];
      v24 = 0.15;
    }

    v26 = 0.0;
    v27 = a1;
  }

  else
  {
    if (v21 != *MEMORY[0x1E697DBA8])
    {
      (*(v18 + 8))(v20, v17);
    }

    type metadata accessor for MacGladeSwitch(0);
    sub_18AED2E70(v13);
    v25 = (*(v11 + 88))(v13, v10);
    if (v25 == *MEMORY[0x1E697F600])
    {
      v23 = MEMORY[0x1E6981DB8];
      v26 = 1.0;
      v27 = a1;
      v24 = a3;
    }

    else
    {
      if (v25 != *MEMORY[0x1E697F608])
      {
        (*(v11 + 8))(v13, v10);
      }

      v27 = a1;
      v26 = a4;
      v23 = a2;
      v24 = a5;
    }
  }

  return sub_18AF23864(v27, v23, v26, v24);
}

uint64_t sub_18AF2765C()
{
  v0 = sub_18AFCCCF4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AB80, &qword_18AFD8D38);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v19 - v5);
  v7 = sub_18AFCBB34();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18AED2E48(v10);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 != *MEMORY[0x1E697DBB8] && v11 != *MEMORY[0x1E697DBA8])
  {
    (*(v8 + 8))(v10, v7);
  }

  v12 = sub_18AFCCD94();
  v13 = *MEMORY[0x1E69814D8];
  v14 = *(v1 + 104);
  v14(v3, v13, v0);
  sub_18AFCCF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999AA8, &qword_18AFD5FE8);
  sub_18AFCBB74();

  *v6 = v12;
  v14(v3, v13, v0);
  sub_18AFCCF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA40, &qword_18AFD8B10);
  sub_18AFCBB74();

  v15 = *(v4 + 36);
  v16 = *MEMORY[0x1E6981DA0];
  v17 = sub_18AFCDBC4();
  (*(*(v17 - 8) + 104))(v6 + v15, v16, v17);
  sub_18AE95F54(&qword_1EA99AB88, &qword_1EA99AB80, &qword_18AFD8D38, MEMORY[0x1E697FAF0]);
  return sub_18AFCBCD4();
}

uint64_t sub_18AF27A4C(double a1, double a2, double a3)
{
  v3 = sub_18AFCCCF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18AFCC5C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MacGladeSwitch(0);
  sub_18AED2E70(v10);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 != *MEMORY[0x1E697F600] && v11 != *MEMORY[0x1E697F608])
  {
    (*(v8 + 8))(v10, v7);
  }

  (*(v4 + 104))(v6, *MEMORY[0x1E69814D8], v3);
  v13[1] = sub_18AFCCF44();
  return sub_18AFCBCD4();
}

uint64_t sub_18AF27CA0(uint64_t a1)
{
  v17 = sub_18AFCC474();
  v2 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = sub_18AFCC5C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MacGladeSwitch(0);
  sub_18AE83A40(a1 + *(v12 + 20), v7, &qword_1EA997E98, &qword_18AFCFC30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v17);
  }

  v14 = (*(v9 + 88))(v11, v8);
  if (v14 != *MEMORY[0x1E697F600] && v14 != *MEMORY[0x1E697F608])
  {
    (*(v9 + 8))(v11, v8);
  }

  return 2;
}

uint64_t sub_18AF27F68(uint64_t a1)
{
  v17 = sub_18AFCC474();
  v2 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = sub_18AFCC5C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MacGladeSwitch(0);
  sub_18AE83A40(a1 + *(v12 + 20), v7, &qword_1EA997E98, &qword_18AFCFC30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v17);
  }

  v14 = (*(v9 + 88))(v11, v8);
  if (v14 == *MEMORY[0x1E697F600])
  {
    return 2;
  }

  if (v14 != *MEMORY[0x1E697F608])
  {
    (*(v9 + 8))(v11, v8);
  }

  return 0;
}

uint64_t sub_18AF28238(uint64_t a1)
{
  v18 = sub_18AFCC474();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = sub_18AFCBB54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MacGladeSwitch(0);
  sub_18AE83A40(a1 + *(v12 + 28), v7, qword_1EA997D30, &qword_18AFD3310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v18);
  }

  v14 = (*(v9 + 88))(v11, v8);
  if (v14 == *MEMORY[0x1E697DC08])
  {
    return 0x401E000000000000;
  }

  if (v14 == *MEMORY[0x1E697DC20])
  {
    return 0x4022000000000000;
  }

  if (v14 == *MEMORY[0x1E697DC28])
  {
    return 0x4026000000000000;
  }

  v16 = v14;
  result = 0x402C000000000000;
  if (v16 != *MEMORY[0x1E697DC10] && v16 != *MEMORY[0x1E697DC00])
  {
    (*(v9 + 8))(v11, v8);
    return 0x402C000000000000;
  }

  return result;
}

uint64_t sub_18AF28560(uint64_t a1)
{
  v18 = sub_18AFCC474();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = sub_18AFCBB54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MacGladeSwitch(0);
  sub_18AE83A40(a1 + *(v12 + 28), v7, qword_1EA997D30, &qword_18AFD3310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v18);
  }

  v14 = (*(v9 + 88))(v11, v8);
  if (v14 == *MEMORY[0x1E697DC08])
  {
    return 0x402A000000000000;
  }

  if (v14 == *MEMORY[0x1E697DC20])
  {
    return 0x4030000000000000;
  }

  if (v14 == *MEMORY[0x1E697DC28])
  {
    return 0x4034000000000000;
  }

  v16 = v14;
  result = 0x403A000000000000;
  if (v16 != *MEMORY[0x1E697DC10] && v16 != *MEMORY[0x1E697DC00])
  {
    (*(v9 + 8))(v11, v8);
    return 0x403A000000000000;
  }

  return result;
}

unint64_t sub_18AF2888C()
{
  result = qword_1EA99AB90;
  if (!qword_1EA99AB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AB58, &qword_18AFD8D18);
    sub_18AF28944();
    sub_18AE95F54(&qword_1EA9977A0, &qword_1EA999A10, qword_18AFD8F40, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AB90);
  }

  return result;
}

unint64_t sub_18AF28944()
{
  result = qword_1EA99AB98;
  if (!qword_1EA99AB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AB30, &qword_18AFD8CF0);
    sub_18AF289FC();
    sub_18AE95F54(&qword_1EA99ABB8, &qword_1EA99AB50, &qword_18AFD8D10, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AB98);
  }

  return result;
}

unint64_t sub_18AF289FC()
{
  result = qword_1EA99ABA0;
  if (!qword_1EA99ABA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AB28, &qword_18AFD8CE8);
    sub_18AF28A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99ABA0);
  }

  return result;
}

unint64_t sub_18AF28A88()
{
  result = qword_1EA99ABA8;
  if (!qword_1EA99ABA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AB20, &qword_18AFD8CE0);
    sub_18AE95F54(&qword_1EA99ABB0, &qword_1EA99AB18, &qword_18AFD8CD8, &unk_18AFE35F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99ABA8);
  }

  return result;
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18AF28B54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 35))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_18AF28BB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 35) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 35) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_18AF28C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v30 = a2;
  v3 = type metadata accessor for MacSolariumSwitch.KnobModifier(0);
  v4 = v3 - 8;
  v28 = *(v3 - 8);
  v27 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ABF8, &qword_18AFD8F98);
  MEMORY[0x1EEE9AC00](v29);
  v7 = (&v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AC00, &qword_18AFD8FA0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = (v2 + *(v4 + 28));
  v13 = *v12;
  v14 = v12[1];
  v32 = v13;
  v33 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A20, &qword_18AFD5EB8);
  sub_18AFCD0C4();
  v15 = v31;
  v16 = *(v4 + 40);
  v17 = *(v2 + v16);
  v32 = 0;
  v18 = &v11[*(v9 + 44)];
  type metadata accessor for SwitchKnobKeyframeAnimationModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998720, &qword_18AFD20A0);
  sub_18AE95F54(&qword_1EA9977F0, &qword_1EA998720, &qword_18AFD20A0, MEMORY[0x1E697E160]);
  sub_18AFCC074();
  *v18 = v15;
  v18[8] = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AC08, &unk_18AFD8FA8);
  (*(*(v19 - 8) + 16))(v11, v26, v19);
  sub_18AF28FE4(v11, v7);
  LOBYTE(v32) = *(v2 + v16);
  v20 = v25;
  sub_18AF29F64(v2, v25);
  v21 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v22 = swift_allocObject();
  sub_18AF29FC8(v20, v22 + v21);
  sub_18AF2A074(&qword_1EA99AC10, &qword_1EA99ABF8, &qword_18AFD8F98, sub_18AF2A044);
  sub_18AF08D54();
  sub_18AFCCC44();

  sub_18AE7BA80(v7, &qword_1EA99ABF8, &qword_18AFD8F98);
  return sub_18AE7BA80(v11, &qword_1EA99AC00, &qword_18AFD8FA0);
}

void sub_18AF28FE4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AC00, &qword_18AFD8FA0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AC48, &qword_18AFD8FC8);
  MEMORY[0x1EEE9AC00](v35);
  v8 = (&v33 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99AC50, &qword_18AFD8FD0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v33 - v10);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AC20, &qword_18AFD8FB8);
  MEMORY[0x1EEE9AC00](v34);
  v13 = &v33 - v12;
  v14 = type metadata accessor for MacSolariumSwitch.KnobModifier(0);
  v15 = v14;
  v16 = v2 + *(v14 + 28);
  v17 = *v16;
  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  if (v19)
  {
    if (v19 == 1)
    {
      v20 = v17;
      sub_18AE83A40(a1, v6, &qword_1EA99AC00, &qword_18AFD8FA0);
      sub_18AF2A0F8();

      v21 = sub_18AFCD464();
      v22 = (v2 + *(v15 + 24));
      v23 = *v22;
      v24 = v22[1];
      LOBYTE(v22) = *(v22 + 16);
      v38 = v23;
      v39 = v24;
      v40 = v22;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AC40, &qword_18AFD8FC0);
      MEMORY[0x18CFEC7E0](&v37, v25);
      v26 = v20(v21, v37);

      *v8 = v26;
      swift_storeEnumTagMultiPayload();
      sub_18AF2A044();

      sub_18AFCC614();
      sub_18AEF8CD0(v20, v18, 1u);

      return;
    }

    sub_18AE83A40(a1, v11, &qword_1EA99AC00, &qword_18AFD8FA0);
    swift_storeEnumTagMultiPayload();
    sub_18AF2A0F8();
    sub_18AFCC614();
    sub_18AE83A40(v13, v8, &qword_1EA99AC20, &qword_18AFD8FB8);
    swift_storeEnumTagMultiPayload();
    sub_18AF2A044();
    sub_18AFCC614();
    v32 = v13;
  }

  else
  {
    v27 = (v2 + *(v14 + 24));
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v27) = *(v27 + 16);
    v38 = v28;
    v39 = v29;
    v40 = v27;
    v30 = v17;

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AC40, &qword_18AFD8FC0);
    MEMORY[0x18CFEC7E0](&v37, v31);
    *v11 = v30(v37);
    swift_storeEnumTagMultiPayload();
    sub_18AF2A0F8();

    sub_18AFCC614();
    sub_18AE83A40(v13, v8, &qword_1EA99AC20, &qword_18AFD8FB8);
    swift_storeEnumTagMultiPayload();
    sub_18AF2A044();
    sub_18AFCC614();
    sub_18AEF8CD0(v30, v18, 0);

    v32 = v13;
  }

  sub_18AE7BA80(v32, &qword_1EA99AC20, &qword_18AFD8FB8);
}

double sub_18AF2947C(uint64_t a1)
{
  v2 = type metadata accessor for MacSolariumSwitch.KnobModifier(0);
  v18[0] = *(v2 - 1);
  v3 = *(v18[0] + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = sub_18AFCC764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + v2[8]) == 3)
  {
    v8 = (a1 + v2[5]);
    v9 = *v8;
    v10 = v8[1];
    v19 = v9;
    v20 = v10;
    v22 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A20, &qword_18AFD5EB8);
    sub_18AFCD0D4();
    v11 = (a1 + v2[6]);
    v12 = *v11;
    v13 = v11[1];
    LOBYTE(v11) = *(v11 + 16);
    v19 = v12;
    v20 = v13;
    v21 = v11;
    LOBYTE(v22) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AC40, &qword_18AFD8FC0);
    sub_18AFCD484();
    type metadata accessor for SwitchSpecs(0);
    v14 = sub_18AFCC754();
    MEMORY[0x1EEE9AC00](v14);
    v18[-2] = a1;
    sub_18AF29F64(a1, v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = (*(v18[0] + 80) + 16) & ~*(v18[0] + 80);
    v16 = swift_allocObject();
    sub_18AF29FC8(v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
    sub_18AFCBDE4();

    (*(v5 + 8))(v7, v4);
  }

  else
  {
  }

  return result;
}

double sub_18AF297CC(__n128 a1)
{
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for MacSolariumSwitch.KnobModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A20, &qword_18AFD5EB8);
  sub_18AFCD0D4();

  return result;
}

double sub_18AF298BC(uint64_t a1, __n128 a2)
{
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for MacSolariumSwitch.KnobModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AC40, &qword_18AFD8FC0);
  sub_18AFCD484();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A20, &qword_18AFD5EB8);
  sub_18AFCD0D4();

  return result;
}

uint64_t sub_18AF299E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v19 = *(v1 + 33);
  v20 = *(v1 + 34);
  v5 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A28, &qword_18AFD5EC0);
  sub_18AFCD0E4();
  sub_18AEF9238(v3, v4, v5);
  sub_18AECC260(a1);
  v6 = type metadata accessor for MacSolariumSwitch.KnobModifier(0);
  v7 = (a1 + v6[5]);
  sub_18AFCD0B4();
  *v7 = v21;
  v7[1] = v22;
  v8 = a1 + v6[6];
  *v8 = v21;
  *(v8 + 1) = v22;
  v8[16] = v23;
  v9 = a1 + v6[7];
  *v9 = v3;
  *(v9 + 1) = v4;
  v9[16] = v5;
  *(a1 + v6[8]) = v19;
  sub_18AFCD0C4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ABC0, &qword_18AFD8E30);
  *(a1 + v10[9]) = v20;
  *(a1 + v10[10]) = v19;
  *(a1 + v10[11]) = 0;
  v11 = v10[12];
  *(a1 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  v12 = a1 + v10[13];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = a1 + v10[14];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = a1 + v10[15];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  v15 = a1 + v10[16];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = sub_18AFCDBA4();
  sub_18AFCD0C4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ABC8, &qword_18AFD8F28);
  v18 = a1 + *(result + 36);
  *v18 = v16;
  v18[8] = 0;
  return result;
}

uint64_t type metadata accessor for MacSolariumSwitch.KnobModifier(uint64_t a1)
{
  result = qword_1EA99ABD0;
  if (!qword_1EA99ABD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AF29D18(uint64_t a1)
{
  type metadata accessor for SwitchSpecs(319);
  if (v1 <= 0x3F)
  {
    sub_18AF29E14(319, &qword_1EA9999C8, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_18AF29E14(319, &qword_1EA99ABE0, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_18AF29E14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_18AF29E64()
{
  result = qword_1EA99ABE8;
  if (!qword_1EA99ABE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99ABC8, &qword_18AFD8F28);
    sub_18AE95F54(&qword_1EA99ABF0, &qword_1EA99ABC0, &qword_18AFD8E30, &unk_18AFD9018);
    sub_18AE95F54(&qword_1EA9977A0, &qword_1EA999A10, qword_18AFD8F40, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99ABE8);
  }

  return result;
}

uint64_t sub_18AF29F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacSolariumSwitch.KnobModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AF29FC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacSolariumSwitch.KnobModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AF2A074(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_18AF2A0F8()
{
  result = qword_1EA99AC28;
  if (!qword_1EA99AC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AC00, &qword_18AFD8FA0);
    sub_18AE95F54(&qword_1EA99AC30, &qword_1EA99AC08, &unk_18AFD8FA8, MEMORY[0x1E697FDF8]);
    sub_18AF2A1B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AC28);
  }

  return result;
}

unint64_t sub_18AF2A1B0()
{
  result = qword_1EA99AC38;
  if (!qword_1EA99AC38)
  {
    type metadata accessor for SwitchKnobKeyframeAnimationModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AC38);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for MacSolariumSwitch.KnobModifier(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148, &qword_18AFD12E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_18AFCBB34();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = type metadata accessor for SwitchSpecs(0);
  sub_18AE9B234(*(v3 + v5[5]), *(v3 + v5[5] + 8));
  v6 = v5[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_18AFCC5C4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  j__swift_release(*(v3 + v5[7]));
  sub_18AE9B234(*(v3 + v5[8]), *(v3 + v5[8] + 8));
  sub_18AECE16C(*(v3 + v5[9]), *(v3 + v5[9] + 8));

  sub_18AEF8CD0(*(v3 + *(v1 + 28)), *(v3 + *(v1 + 28) + 8), *(v3 + *(v1 + 28) + 16));

  return swift_deallocObject();
}

uint64_t sub_18AF2A484(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MacSolariumSwitch.KnobModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_18AF2A4F8(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_18AED5A58(319);
    if (v2 <= 0x3F)
    {
      sub_18AEB1A48(319, &qword_1EA997C38, MEMORY[0x1E69E6370]);
      if (v3 <= 0x3F)
      {
        sub_18AEB1A48(319, &qword_1EA997C40, &type metadata for MacSizeClass);
        if (v4 <= 0x3F)
        {
          sub_18AEB1A48(319, &qword_1EA997810, MEMORY[0x1E69E7DE0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_18AF2A614(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_18AFCC5C4() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v12 = *(v9 + 80) & 0xF8 | 7;
    v13 = ((v10 + ((v11 + v12 + 3) & ~v12) + 56) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v13 <= 3)
    {
      v14 = ((a2 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *&a1[v13];
        if (*&a1[v13])
        {
          goto LABEL_22;
        }
      }

      else
      {
        v17 = *&a1[v13];
        if (v17)
        {
          goto LABEL_22;
        }
      }
    }

    else if (v16)
    {
      v17 = a1[v13];
      if (a1[v13])
      {
LABEL_22:
        v18 = v13 > 3;
        if (v13 <= 3)
        {
          v19 = (v17 - 1) << (8 * v13);
        }

        else
        {
          v19 = 0;
        }

        if (v18)
        {
          v24 = *a1;
        }

        else
        {
          v24 = *a1;
        }

        v23 = v8 + (v24 | v19);
        return (v23 + 1);
      }
    }
  }

  if (v7 < 0xFE)
  {
    v22 = a1[v11 + 2];
    if (v22 >= 2)
    {
      v23 = (v22 + 2147483646) & 0x7FFFFFFF;
      return (v23 + 1);
    }

    return 0;
  }

  v20 = *(v6 + 48);

  return v20(a1, v7, v5);
}

void sub_18AF2A844(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v22 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_18AFCC5C4() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((v13 + v14 + 3) & ~v14) + 56) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v18 = 0;
    if (v10 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v10 >= a2)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v15] = 0;
      }

      else if (v18)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v9 < 0xFE)
      {
        a1[v13 + 2] = a2 + 1;
      }

      else
      {
        v21 = *(v22 + 56);

        v21(a1, a2, v9, v7);
      }

      return;
    }
  }

  v19 = ~v10 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v20 = (v19 >> 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v19;
    if (v18 > 1)
    {
LABEL_29:
      if (v18 == 2)
      {
        *&a1[v15] = v20;
      }

      else
      {
        *&a1[v15] = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v18 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v18)
  {
    a1[v15] = v20;
  }
}

uint64_t sub_18AF2AB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99ACD8, &qword_18AFD9068);
  type metadata accessor for MacSwitchSliderKnob(255);
  v3 = *(a1 + 16);
  v4 = a1;
  v36 = a1;
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  v40 = MEMORY[0x1E6981880];
  WitnessTable = swift_getWitnessTable();
  v5 = sub_18AFCD1F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99ACE0, &unk_18AFD9070);
  v9 = sub_18AFCC044();
  v47 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v35 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999A18, &qword_18AFD5EB0);
  v41 = sub_18AFCC044();
  v49 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v35 - v11;
  v12 = *(v4 + 24);
  v43 = type metadata accessor for MacSwitchEngineering.MacSwitchFocusEffectShape(255, v3, v12, v13);
  v45 = swift_getWitnessTable();
  v46 = sub_18AFCC684();
  v14 = sub_18AFCC044();
  v48 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v42 = &v35 - v17;
  v51 = v3;
  v52 = v12;
  v18 = v44;
  v53 = v44;
  sub_18AFCDB44();
  v19 = sub_18AFCD1E4();
  MEMORY[0x18CFECEE0](v19, 0.47, 0.7, 0.0);
  v20 = v36;
  v60 = *(v18 + *(v36 + 36));
  v21 = swift_getWitnessTable();
  sub_18AF2D968();
  sub_18AFCCC64();

  (*(v6 + 8))(v8, v5);
  sub_18AFCDBA4();
  v60 = *(v18 + *(v20 + 40));
  v22 = MEMORY[0x1E697F548];
  v23 = sub_18AE95F54(&qword_1EA99ACF0, &qword_1EA99ACE0, &unk_18AFD9070, MEMORY[0x1E697F548]);
  v58 = v21;
  v59 = v23;
  v24 = swift_getWitnessTable();
  sub_18AF08D54();
  v25 = v38;
  v26 = v35;
  sub_18AFCCC64();

  (*(v47 + 8))(v26, v9);
  v60 = *(v18 + *(v20 + 40)) - 3 < 2;
  v27 = sub_18AE95F54(&qword_1EA9977A8, &qword_1EA999A18, &qword_18AFD5EB0, v22);
  v56 = v24;
  v57 = v27;
  v28 = v41;
  v29 = swift_getWitnessTable();
  v30 = v39;
  sub_18AFCCAC4();
  (*(v49 + 8))(v25, v28);
  v31 = swift_getWitnessTable();
  v54 = v29;
  v55 = v31;
  swift_getWitnessTable();
  v32 = v42;
  sub_18AEADA5C();
  v33 = *(v48 + 8);
  v33(v30, v14);
  sub_18AEADA5C();
  return (v33)(v32, v14);
}

double sub_18AF2B1F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a3;
  v20 = a4;
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99ACD8, &qword_18AFD9068);
  type metadata accessor for MacSwitchSliderKnob(255);
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  v5 = sub_18AFCD1F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = v19;
  v14 = type metadata accessor for MacSwitchEngineering(0, a2, v19, v12);
  if (*(v21 + *(v14 + 36)))
  {
    v15 = sub_18AFCDB64();
  }

  else
  {
    v15 = sub_18AFCDB54();
  }

  MEMORY[0x1EEE9AC00](v15);
  *(&v18 - 4) = a2;
  *(&v18 - 3) = v13;
  *(&v18 - 2) = v21;
  sub_18AFCD1E4();
  swift_getWitnessTable();
  sub_18AEADA5C();
  v16 = *(v6 + 8);
  v16(v8, v5);
  sub_18AEADA5C();
  v16(v11, v5);

  return result;
}

void sub_18AF2B4F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v149 = a3;
  v140 = a4;
  v6 = type metadata accessor for MacSwitchSliderKnob(0);
  MEMORY[0x1EEE9AC00](v6);
  v122 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v8;
  v148 = a2;
  v9 = sub_18AFCC044();
  v127 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v124 = &v111 - v10;
  v129 = v11;
  v12 = sub_18AFCC044();
  v130 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v126 = &v111 - v13;
  v131 = v14;
  v15 = sub_18AFCC044();
  v134 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v111 - v16;
  v135 = v18;
  v139 = sub_18AFCC044();
  v136 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v132 = &v111 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v137 = &v111 - v23;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A100, &unk_18AFD7990);
  MEMORY[0x1EEE9AC00](v120);
  v112 = &v111 - v24;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A0F8, &unk_18AFD73C0);
  MEMORY[0x1EEE9AC00](v115);
  v26 = &v111 - v25;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A110, &unk_18AFD79A0);
  MEMORY[0x1EEE9AC00](v116);
  v111 = &v111 - v27;
  v28 = sub_18AFCC474();
  v146 = *(v28 - 8);
  v147 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v145 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A108, &unk_18AFD73D0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v111 - v37;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ACF8, &qword_18AFD9080);
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v111 - v39;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AD00, &qword_18AFD9088);
  MEMORY[0x1EEE9AC00](v118);
  v119 = &v111 - v40;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ACD8, &qword_18AFD9068);
  MEMORY[0x1EEE9AC00](v142);
  v128 = &v111 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v117 = &v111 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v143 = &v111 - v45;
  sub_18AFCDF14();
  v125 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v46 = *MEMORY[0x1E697F468];
  v47 = sub_18AFCC534();
  (*(*(v47 - 8) + 104))(v32, v46, v47);
  v49 = type metadata accessor for MacSwitchEngineering(0, v148, v149, v48);
  v50 = v49[9];
  v121 = v49[10];
  v51 = *(a1 + v121);
  v52 = *(a1 + v50);
  v141 = v49;
  v53 = a1 + v49[13];
  v54 = *v53;
  LODWORD(v53) = *(v53 + 8);
  v144 = a1;
  v133 = v17;
  if (v53 != 1)
  {

    sub_18AFCE024();
    v55 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v56 = v145;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v54, 0);
    (*(v146 + 8))(v56, v147);
    LOBYTE(v54) = v156[0];
  }

  if (v52 && (v54 & 1) != 0)
  {
    v57 = v111;
    sub_18AF1B058(v51, 1, v111);
    v58 = &qword_1EA99A110;
    v59 = &unk_18AFD79A0;
    sub_18AE83A40(v57, v26, &qword_1EA99A110, &unk_18AFD79A0);
  }

  else
  {
    v60 = v52 != 0;
    v57 = v112;
    sub_18AF1CAB8(v51, v60, v112);
    v58 = &qword_1EA99A100;
    v59 = &unk_18AFD7990;
    sub_18AE83A40(v57, v26, &qword_1EA99A100, &unk_18AFD7990);
  }

  swift_storeEnumTagMultiPayload();
  sub_18AF08ED8();
  sub_18AF08F90();
  sub_18AFCC614();
  sub_18AE7BA80(v57, v58, v59);
  sub_18AF2EF50(v32, MEMORY[0x1E6981998]);
  sub_18AE9A768(v35, v38, &qword_1EA99A108, &unk_18AFD73D0);
  v61 = sub_18AFCDB44();
  v63 = v62;
  v64 = v144;
  sub_18AF2C714(v144, v148, v149, v154);
  memcpy(v155, v154, 0x248uLL);
  v155[73] = v61;
  v155[74] = v63;
  v65 = v114;
  sub_18AE9A768(v38, v114, &qword_1EA99A108, &unk_18AFD73D0);
  memcpy((v65 + *(v113 + 36)), v155, 0x258uLL);
  memcpy(v156, v154, sizeof(v156));
  v157 = v61;
  v158 = v63;
  sub_18AE83A40(v155, v153, &qword_1EA99AD08, &qword_18AFD9090);
  sub_18AE7BA80(v156, &qword_1EA99AD08, &qword_18AFD9090);
  v66 = v141;
  v67 = v64 + v141[15];
  v68 = *v67;
  v69 = *(v67 + 8);
  if (v69 != 1)
  {

    sub_18AFCE024();
    v70 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v71 = v145;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v68, 0);
    (*(v146 + 8))(v71, v147);
  }

  if ((v69 & 1) == 0)
  {

    sub_18AFCE024();
    v72 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v73 = v145;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v68, 0);
    (*(v146 + 8))(v73, v147);
  }

  sub_18AFCDB44();
  sub_18AFCBCC4();
  v74 = v119;
  sub_18AE9A768(v65, v119, &qword_1EA99ACF8, &qword_18AFD9080);
  v75 = (v74 + *(v118 + 36));
  v76 = v153[1];
  *v75 = v153[0];
  v75[1] = v76;
  v75[2] = v153[2];
  KeyPath = swift_getKeyPath();
  v78 = v74;
  v79 = v117;
  sub_18AE9A768(v78, v117, &qword_1EA99AD00, &qword_18AFD9088);
  v80 = v143;
  v81 = v79 + *(v142 + 36);
  *v81 = KeyPath;
  *(v81 + 8) = 0;
  *(v81 + 12) = 0x3F33333300000000;
  sub_18AE9A768(v79, v80, &qword_1EA99ACD8, &qword_18AFD9068);
  if (!v69)
  {

    sub_18AFCE024();
    v82 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v83 = v145;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v68, 0);
    (*(v146 + 8))(v83, v147);
  }

  sub_18AF2D458(v66);
  v120 = v68;
  LODWORD(v116) = v69;
  v84 = v122;
  v85 = *(v64 + *(v66 + 44));
  *v122 = *(v64 + v121);
  *(v84 + 1) = v85;
  *(v84 + 2) = 1;
  v86 = v123;
  v87 = *(v123 + 28);
  *(v84 + v87) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148, &qword_18AFD12E0);
  swift_storeEnumTagMultiPayload();
  v88 = sub_18AF2F3C4(&qword_1EA99A290, type metadata accessor for MacSwitchSliderKnob, &unk_18AFDAB04);
  v89 = v124;
  MEMORY[0x18CFEBFA0](v64, v86, v148, v88);
  sub_18AF2EF50(v84, type metadata accessor for MacSwitchSliderKnob);
  sub_18AFCDB44();
  v152[8] = v88;
  v152[9] = v149;
  v90 = v129;
  WitnessTable = swift_getWitnessTable();
  v92 = v126;
  sub_18AFCCBB4();
  (*(v127 + 8))(v89, v90);
  sub_18AFCDB44();
  v93 = MEMORY[0x1E697E040];
  v152[6] = WitnessTable;
  v152[7] = MEMORY[0x1E697E040];
  v94 = v131;
  v95 = swift_getWitnessTable();
  v96 = v133;
  sub_18AFCCBB4();
  (*(v130 + 8))(v92, v94);
  sub_18AFCC844();
  if (!v116)
  {
    v97 = v120;

    sub_18AFCE024();
    v98 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v99 = v145;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v97, 0);
    (*(v146 + 8))(v99, v147);
  }

  sub_18AF2D458(v141);
  v152[4] = v95;
  v152[5] = v93;
  v100 = v135;
  v101 = swift_getWitnessTable();
  v102 = v132;
  sub_18AFCCC24();
  (*(v134 + 8))(v96, v100);
  v152[2] = v101;
  v152[3] = MEMORY[0x1E697E5D8];
  v103 = v139;
  v104 = swift_getWitnessTable();
  v105 = v137;
  sub_18AEADA5C();
  v106 = v136;
  v107 = *(v136 + 8);
  v107(v102, v103);
  v108 = v143;
  v109 = v128;
  sub_18AE83A40(v143, v128, &qword_1EA99ACD8, &qword_18AFD9068);
  v154[0] = v109;
  v110 = v138;
  (*(v106 + 16))(v138, v105, v103);
  v154[1] = v110;
  v152[0] = v142;
  v152[1] = v103;
  v150 = sub_18AF2EFB0();
  v151 = v104;
  sub_18AEB70B8(v154, 2uLL, v152);
  v107(v105, v103);
  sub_18AE7BA80(v108, &qword_1EA99ACD8, &qword_18AFD9068);
  v107(v110, v103);
  sub_18AE7BA80(v109, &qword_1EA99ACD8, &qword_18AFD9068);
}

void sub_18AF2C714(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v67 = a1;
  v62 = a4;
  v6 = sub_18AFCC474();
  v66 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCDF14();
  v63 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = type metadata accessor for MacSwitchEngineering(0, a2, a3, v8);
  v10 = v67;
  v11 = v67 + v9[14];
  v12 = *v11;
  LODWORD(v11) = *(v11 + 8);
  v61 = v6;
  if (v11 == 1)
  {
    v118 = v12 & 1;
    if ((v12 & 1) == 0)
    {
LABEL_5:
      sub_18AF2F1D4(v117);
      goto LABEL_18;
    }
  }

  else
  {

    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v14 = v65;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v12, 0);
    (*(v66 + 8))(v14, v6);
    if (v118 != 1)
    {
      goto LABEL_5;
    }
  }

  KeyPath = swift_getKeyPath();
  sub_18AFCDB64();
  sub_18AFCC194();
  *&v81[55] = v122;
  *&v81[71] = v123;
  *&v81[87] = v124;
  *&v81[103] = v125;
  *&v81[7] = v119;
  *&v81[23] = v120;
  v114 = 0;
  *&v81[39] = v121;
  v59 = sub_18AFCC844();
  v64 = v9;
  v15 = v10 + v9[15];
  v16 = *v15;
  v17 = *(v15 + 8);
  if (v17 != 1)
  {

    sub_18AFCE024();
    v18 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v19 = v65;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v16, 0);
    (*(v66 + 8))(v19, v6);
  }

  sub_18AFCBAA4();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  LOBYTE(v133) = 0;
  if (*(v67 + v64[10]) - 3 < 2 || *(v67 + v64[9]))
  {
    v28 = 0.0;
  }

  else
  {
    v28 = 1.0;
  }

  v78 = *&v81[64];
  v79 = *&v81[80];
  *v80 = *&v81[96];
  *&v80[15] = *&v81[111];
  v74 = *v81;
  v75 = *&v81[16];
  v76 = *&v81[32];
  v77 = *&v81[48];
  v58 = swift_getKeyPath();
  v29 = swift_getKeyPath();
  sub_18AFCDB54();
  sub_18AFCC194();
  *&v70[55] = v129;
  *&v70[71] = v130;
  *&v70[87] = v131;
  *&v70[103] = v132;
  *&v70[7] = v126;
  *&v70[23] = v127;
  v112 = 0;
  v71 = 0;
  *&v70[39] = v128;
  v30 = sub_18AFCC844();
  if (!v17)
  {

    sub_18AFCE024();
    v31 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v32 = v65;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v16, 0);
    (*(v66 + 8))(v32, v61);
  }

  sub_18AFCBAA4();
  v113 = 0;
  if (*(v67 + v64[10]) - 3 < 2 || (v37 = 1.0, *(v67 + v64[9]) != 1))
  {
    v37 = 0.0;
  }

  *&v87[0] = KeyPath;
  BYTE8(v87[0]) = 0;
  *(&v87[4] + 9) = v78;
  *(&v87[5] + 9) = v79;
  *(&v87[6] + 9) = *v80;
  *(&v87[7] + 1) = *&v80[15];
  *(v87 + 9) = v74;
  *(&v87[1] + 9) = v75;
  *(&v87[2] + 9) = v76;
  *(&v87[3] + 9) = v77;
  LOBYTE(v87[8]) = v59;
  *(&v87[8] + 1) = *v82;
  DWORD1(v87[8]) = *&v82[3];
  *(&v87[8] + 1) = v21;
  *&v88 = v23;
  *(&v88 + 1) = v25;
  *&v89 = v27;
  BYTE8(v89) = 0;
  *(&v89 + 9) = *v83;
  HIDWORD(v89) = *&v83[3];
  *&v90 = v28;
  v68[2] = v87[2];
  v68[3] = v87[3];
  v68[0] = v87[0];
  v68[1] = v87[1];
  v68[6] = v87[6];
  v68[7] = v87[7];
  v68[4] = v87[4];
  v68[5] = v87[5];
  v68[9] = v88;
  v68[10] = v89;
  v68[8] = v87[8];
  *(v85 + 9) = *v69;
  HIDWORD(v85[0]) = *&v69[3];
  *(&v85[7] + 9) = *&v70[96];
  *(&v85[8] + 1) = *&v70[111];
  *(&v85[9] + 1) = *v72;
  DWORD1(v85[9]) = *&v72[3];
  *(&v85[11] + 9) = *v73;
  HIDWORD(v85[11]) = *&v73[3];
  *&v85[0] = v58;
  BYTE8(v85[0]) = 0;
  *&v85[1] = v29;
  BYTE8(v85[1]) = 0;
  *(&v85[5] + 9) = *&v70[64];
  *(&v85[6] + 9) = *&v70[80];
  *(&v85[1] + 9) = *v70;
  *(&v85[2] + 9) = *&v70[16];
  *(&v85[3] + 9) = *&v70[32];
  *(&v85[4] + 9) = *&v70[48];
  LOBYTE(v85[9]) = v30;
  *(&v85[9] + 1) = v33;
  *&v85[10] = v34;
  *(&v85[10] + 1) = v35;
  *&v85[11] = v36;
  BYTE8(v85[11]) = 0;
  *&v85[12] = v37;
  *(&v68[18] + 8) = v85[7];
  *(&v68[19] + 8) = v85[8];
  *(&v68[16] + 8) = v85[5];
  *(&v68[17] + 8) = v85[6];
  *(&v68[21] + 8) = v85[10];
  *(&v68[22] + 8) = v85[11];
  *(&v68[20] + 8) = v85[9];
  *(&v68[11] + 8) = v85[0];
  *(&v68[15] + 8) = v85[4];
  *(&v68[14] + 8) = v85[3];
  *(&v68[13] + 8) = v85[2];
  *(&v68[12] + 8) = v85[1];
  *&v68[11] = v28;
  *(&v68[23] + 1) = v37;
  v86[0] = v58;
  LOBYTE(v86[1]) = 0;
  *(&v86[1] + 1) = *v69;
  HIDWORD(v86[1]) = *&v69[3];
  v86[2] = v29;
  LOBYTE(v86[3]) = 0;
  *(&v86[11] + 1) = *&v70[64];
  *(&v86[13] + 1) = *&v70[80];
  *(&v86[15] + 1) = *&v70[96];
  v86[17] = *&v70[111];
  *(&v86[3] + 1) = *v70;
  *(&v86[5] + 1) = *&v70[16];
  *(&v86[7] + 1) = *&v70[32];
  *(&v86[9] + 1) = *&v70[48];
  LOBYTE(v86[18]) = v30;
  *(&v86[18] + 1) = *v72;
  HIDWORD(v86[18]) = *&v72[3];
  v86[19] = v33;
  v86[20] = v34;
  v86[21] = v35;
  v86[22] = v36;
  LOBYTE(v86[23]) = 0;
  *(&v86[23] + 1) = *v73;
  HIDWORD(v86[23]) = *&v73[3];
  *&v86[24] = v37;
  sub_18AE83A40(v87, v109, &qword_1EA99AD48, &qword_18AFD9168);
  sub_18AE83A40(v85, v109, qword_1EA99AD50, &qword_18AFD9170);
  sub_18AE7BA80(v86, qword_1EA99AD50, &qword_18AFD9170);
  v98 = v78;
  v99 = v79;
  *v100 = *v80;
  v94 = v74;
  v95 = v75;
  v96 = v76;
  v92 = KeyPath;
  v93 = 0;
  *&v100[15] = *&v80[15];
  v97 = v77;
  v100[23] = v59;
  *&v100[24] = *v82;
  *&v100[27] = *&v82[3];
  *&v100[31] = v21;
  v101 = v23;
  v102 = v25;
  v103 = v27;
  LOBYTE(v104) = 0;
  *(&v104 + 1) = *v83;
  HIDWORD(v104) = *&v83[3];
  v105 = v28;
  sub_18AE7BA80(&v92, &qword_1EA99AD48, &qword_18AFD9168);
  memcpy(v109, v68, 0x180uLL);
  CGPointMake();
  memcpy(v117, v109, sizeof(v117));
  v10 = v67;
  v9 = v64;
LABEL_18:
  v38 = swift_getKeyPath();
  v39 = swift_getKeyPath();
  sub_18AFCDB54();
  sub_18AFCC194();
  *&v111[55] = v136;
  *&v111[71] = v137;
  *&v111[87] = v138;
  *&v111[103] = v139;
  *&v111[7] = v133;
  *&v111[23] = v134;
  v113 = 0;
  v112 = 0;
  *&v111[39] = v135;
  v40 = sub_18AFCC844();
  v41 = v10 + v9[15];
  v42 = *v41;
  if (*(v41 + 8) != 1)
  {

    sub_18AFCE024();
    v43 = v39;
    v44 = v38;
    v45 = v9;
    v46 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v47 = v65;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v42, 0);
    v48 = v47;
    v9 = v45;
    v38 = v44;
    v39 = v43;
    (*(v66 + 8))(v48, v61);
  }

  sub_18AFCBAA4();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v114 = 0;
  if (*(v10 + v9[10]) - 3 < 2 || (v57 = 1.0, *(v10 + v9[9]) != 2))
  {
    v57 = 0.0;
  }

  memcpy(v85, v117, sizeof(v85));
  memcpy(v86, v117, sizeof(v86));
  memcpy(v84, v117, 0x180uLL);
  *&v87[0] = v38;
  BYTE8(v87[0]) = 0;
  *(v87 + 9) = *v110;
  HIDWORD(v87[0]) = *&v110[3];
  *&v87[1] = v39;
  BYTE8(v87[1]) = 0;
  *(&v87[5] + 9) = *&v111[64];
  *(&v87[6] + 9) = *&v111[80];
  *(&v87[7] + 9) = *&v111[96];
  *(&v87[8] + 1) = *&v111[111];
  *(&v87[1] + 9) = *v111;
  *(&v87[2] + 9) = *&v111[16];
  *(&v87[3] + 9) = *&v111[32];
  *(&v87[4] + 9) = *&v111[48];
  LOBYTE(v88) = v40;
  DWORD1(v88) = *&v115[3];
  *(&v88 + 1) = *v115;
  *(&v88 + 1) = v50;
  *&v89 = v52;
  *(&v89 + 1) = v54;
  *&v90 = v56;
  BYTE8(v90) = 0;
  *(&v90 + 9) = *v116;
  HIDWORD(v90) = *&v116[3];
  v91 = v57;
  *&v84[432] = v87[3];
  *&v84[416] = v87[2];
  *&v84[384] = v87[0];
  *&v84[400] = v87[1];
  *&v84[496] = v87[7];
  *&v84[480] = v87[6];
  *&v84[448] = v87[4];
  *&v84[464] = v87[5];
  *&v84[576] = v57;
  *&v84[560] = v90;
  *&v84[544] = v89;
  *&v84[512] = v87[8];
  *&v84[528] = v88;
  memcpy(v62, v84, 0x248uLL);
  v99 = *&v111[64];
  *v100 = *&v111[80];
  *&v100[16] = *&v111[96];
  v95 = *v111;
  v96 = *&v111[16];
  v97 = *&v111[32];
  v92 = v38;
  v93 = 0;
  LODWORD(v94) = *v110;
  *(&v94 + 3) = *&v110[3];
  *(&v94 + 7) = v39;
  HIBYTE(v94) = 0;
  *&v100[31] = *&v111[111];
  v98 = *&v111[48];
  LOBYTE(v101) = v40;
  HIDWORD(v101) = *&v115[3];
  *(&v101 + 1) = *v115;
  v102 = v50;
  v103 = v52;
  v104 = v54;
  v105 = v56;
  v106 = 0;
  *v107 = *v116;
  *&v107[3] = *&v116[3];
  v108 = v57;
  sub_18AE83A40(v86, v109, &qword_1EA99AD38, &qword_18AFD9158);
  sub_18AE83A40(v87, v109, &qword_1EA99AD40, &qword_18AFD9160);
  sub_18AE7BA80(&v92, &qword_1EA99AD40, &qword_18AFD9160);
  memcpy(v109, v85, 0x180uLL);
  sub_18AE7BA80(v109, &qword_1EA99AD38, &qword_18AFD9158);
}

BOOL sub_18AF2D458(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 64);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = *v7;
  }

  else
  {

    sub_18AFCE024();
    v10 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v8, 0);
    (*(v4 + 8))(v6, v3);
    v9 = *&v12[1];
  }

  return v9 >= 2.0;
}

void *sub_18AF2D5BC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v8 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_18AFCC9F4();
    v12 = v19;
    v13 = v20;
    v14 = v21;
  }

  else
  {
    v15 = *MEMORY[0x1E697F468];
    v16 = sub_18AFCC534();
    (*(*(v16 - 8) + 104))(v10, v15, v16);
    sub_18AFCD494();
    v17 = v20;
    v18 = v19;
    v14 = v21;
    result = sub_18AF2EF50(v10, MEMORY[0x1E6981998]);
    v13 = v17;
    v12 = v18;
  }

  *a2 = v12;
  *(a2 + 16) = v13;
  *(a2 + 32) = v14;
  return result;
}

double sub_18AF2D700@<D0>(uint64_t a1@<X8>)
{
  sub_18AF2D5BC(*v5, v9);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_18AF2D75C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AEE786C;
}

uint64_t sub_18AF2D7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4440](a1, a2, a3, WitnessTable);
}

uint64_t sub_18AF2D860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, WitnessTable);
}

uint64_t sub_18AF2D8DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4410](a1, WitnessTable);
}

unint64_t sub_18AF2D968()
{
  result = qword_1EA99ACE8;
  if (!qword_1EA99ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99ACE8);
  }

  return result;
}

double sub_18AF2D9BC@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v5 = sub_18AFCC474();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ADE8, &qword_18AFD9540);
  v9 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v36 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ADF0, &qword_18AFD9548);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v36 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ADF8, &qword_18AFD9550);
  v39 = *(v13 - 8);
  v40 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v38 = &v36 - v14;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AE00, &qword_18AFD9558);
  MEMORY[0x1EEE9AC00](v37);
  v16 = &v36 - v15;
  v17 = a2;
  if ((a2 & 1) == 0)
  {

    sub_18AFCE024();
    v18 = v6;
    v19 = v5;
    v20 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    (*(v18 + 8))(v8, v19);

    sub_18AFCE024();
    v21 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v5 = v19;
    v6 = v18;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    (*(v18 + 8))(v8, v5);
  }

  v22 = v16;
  sub_18AFCDD04();
  sub_18AEDC3C8();
  sub_18AFCD084();
  v23 = v43;
  (*(v9 + 32))(v43, v11, v36);
  v23[*(v41 + 56)] = 0;
  if ((v17 & 1) == 0)
  {

    sub_18AFCE024();
    v24 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    (*(v6 + 8))(v8, v5);

    sub_18AFCE024();
    v25 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    (*(v6 + 8))(v8, v5);
  }

  sub_18AFCDD04();
  sub_18AE95F54(&qword_1EA99AE08, &qword_1EA99ADF0, &qword_18AFD9548, MEMORY[0x1E697F368]);
  v26 = v38;
  v27 = v43;
  sub_18AFCD084();
  sub_18AEA56B0(v27);
  LODWORD(v27) = sub_18AFCC6E4();
  (*(v39 + 32))(v16, v26, v40);
  v28 = v37;
  *&v16[*(v37 + 52)] = v27;
  *&v16[*(v28 + 56)] = 256;
  if ((v17 & 1) == 0)
  {

    sub_18AFCE024();
    v29 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    v30 = *(v6 + 8);
    v30(v8, v5);

    sub_18AFCE024();
    v31 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    v30(v8, v5);
  }

  sub_18AFCDB44();
  sub_18AFCBCC4();
  v32 = v42;
  sub_18AE9A768(v22, v42, &qword_1EA99AE00, &qword_18AFD9558);
  v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AE10, &unk_18AFD9560) + 36));
  v34 = v45;
  *v33 = v44;
  v33[1] = v34;
  result = *&v46;
  v33[2] = v46;
  return result;
}

double sub_18AF2E1DC@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v42 = a4;
  v45 = a5;
  v8 = sub_18AFCC474();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v41);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998E00, &qword_18AFD39B8);
  v44 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v39 - v15;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ADD8, &qword_18AFD9530);
  MEMORY[0x1EEE9AC00](v43);
  v17 = &v39 - v16;
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_18AFCC534();
  (*(*(v19 - 8) + 104))(v13, v18, v19);
  if ((a2 & 1) == 0)
  {

    sub_18AFCE024();
    v20 = sub_18AFCC7D4();
    v40 = v11;
    v21 = v17;
    v22 = a1;
    v23 = v14;
    v24 = a3;
    v25 = a2;
    v26 = v9;
    v27 = v8;
    v28 = v20;
    sub_18AFCBA64();

    v8 = v27;
    v9 = v26;
    a2 = v25;
    a3 = v24;
    v14 = v23;
    a1 = v22;
    v17 = v21;
    v11 = v40;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    (*(v9 + 8))(v11, v8);
  }

  sub_18AFCDD04();
  sub_18AF2F3C4(&qword_1EA998A48, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
  sub_18AFCD084();
  sub_18AF2EF50(v13, MEMORY[0x1E6981998]);
  if (v42)
  {
    if ((a3 & 1) == 0)
    {
LABEL_5:
      LODWORD(v47) = sub_18AFCC6E4();
      goto LABEL_8;
    }
  }

  else
  {

    sub_18AFCE024();
    v29 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a3, 0);
    (*(v9 + 8))(v11, v8);
    if (v47 != 1)
    {
      goto LABEL_5;
    }
  }

  sub_18AEFC240();
LABEL_8:
  v30 = sub_18AFCBCD4();
  (*(v44 + 32))(v17, v46, v14);
  v31 = v43;
  *&v17[*(v43 + 52)] = v30;
  *&v17[*(v31 + 56)] = 256;
  if ((a2 & 1) == 0)
  {

    sub_18AFCE024();
    v32 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    v33 = *(v9 + 8);
    v33(v11, v8);

    sub_18AFCE024();
    v34 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    v33(v11, v8);
  }

  sub_18AFCDB44();
  sub_18AFCBCC4();
  v35 = v45;
  sub_18AE9A768(v17, v45, &qword_1EA99ADD8, &qword_18AFD9530);
  v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ADE0, &qword_18AFD9538) + 36));
  v37 = v48;
  *v36 = v47;
  v36[1] = v37;
  result = *&v49;
  v36[2] = v49;
  return result;
}

double sub_18AF2E87C@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v42 = a4;
  v45 = a5;
  v8 = sub_18AFCC474();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v41);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998E00, &qword_18AFD39B8);
  v44 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v39 - v15;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ADD8, &qword_18AFD9530);
  MEMORY[0x1EEE9AC00](v43);
  v17 = &v39 - v16;
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_18AFCC534();
  (*(*(v19 - 8) + 104))(v13, v18, v19);
  if ((a2 & 1) == 0)
  {

    sub_18AFCE024();
    v20 = sub_18AFCC7D4();
    v40 = v11;
    v21 = v17;
    v22 = a1;
    v23 = v14;
    v24 = a3;
    v25 = a2;
    v26 = v9;
    v27 = v8;
    v28 = v20;
    sub_18AFCBA64();

    v8 = v27;
    v9 = v26;
    a2 = v25;
    a3 = v24;
    v14 = v23;
    a1 = v22;
    v17 = v21;
    v11 = v40;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    (*(v9 + 8))(v11, v8);
  }

  sub_18AFCDD04();
  sub_18AF2F3C4(&qword_1EA998A48, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
  sub_18AFCD084();
  sub_18AF2EF50(v13, MEMORY[0x1E6981998]);
  if (v42)
  {
    if ((a3 & 1) == 0)
    {
LABEL_5:
      LODWORD(v47) = sub_18AFCC6E4();
      goto LABEL_8;
    }
  }

  else
  {

    sub_18AFCE024();
    v29 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a3, 0);
    (*(v9 + 8))(v11, v8);
    if (v47 != 1)
    {
      goto LABEL_5;
    }
  }

  sub_18AEFC240();
LABEL_8:
  v30 = sub_18AFCBCD4();
  (*(v44 + 32))(v17, v46, v14);
  v31 = v43;
  *&v17[*(v43 + 52)] = v30;
  *&v17[*(v31 + 56)] = 256;
  if ((a2 & 1) == 0)
  {

    sub_18AFCE024();
    v32 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    v33 = *(v9 + 8);
    v33(v11, v8);

    sub_18AFCE024();
    v34 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(a1, 0);
    v33(v11, v8);
  }

  sub_18AFCDB44();
  sub_18AFCBCC4();
  v35 = v45;
  sub_18AE9A768(v17, v45, &qword_1EA99ADD8, &qword_18AFD9530);
  v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99ADE0, &qword_18AFD9538) + 36));
  v37 = v48;
  *v36 = v47;
  v36[1] = v37;
  result = *&v49;
  v36[2] = v49;
  return result;
}

uint64_t sub_18AF2EF50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_18AF2EFB0()
{
  result = qword_1EA99AD10;
  if (!qword_1EA99AD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99ACD8, &qword_18AFD9068);
    sub_18AF2F03C();
    sub_18AF2F180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AD10);
  }

  return result;
}

unint64_t sub_18AF2F03C()
{
  result = qword_1EA99AD18;
  if (!qword_1EA99AD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AD00, &qword_18AFD9088);
    sub_18AF2F0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AD18);
  }

  return result;
}

unint64_t sub_18AF2F0C8()
{
  result = qword_1EA99AD20;
  if (!qword_1EA99AD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99ACF8, &qword_18AFD9080);
    sub_18AF09048();
    sub_18AE95F54(&qword_1EA99AD28, &qword_1EA99AD08, &qword_18AFD9090, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AD20);
  }

  return result;
}

unint64_t sub_18AF2F180()
{
  result = qword_1EA99AD30;
  if (!qword_1EA99AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AD30);
  }

  return result;
}

double sub_18AF2F1D4(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_18AFD8FE0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  return result;
}

uint64_t sub_18AF2F214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18AF2F26C(uint64_t a1, unsigned int a2)
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
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_18AF2F2B4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_18AF2F3C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_18AF2F40C()
{
  result = qword_1EA99AE18;
  if (!qword_1EA99AE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99ADE0, &qword_18AFD9538);
    sub_18AE95F54(&qword_1EA99AE20, &qword_1EA99ADD8, &qword_18AFD9530, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AE18);
  }

  return result;
}

unint64_t sub_18AF2F4C4()
{
  result = qword_1EA99AE28;
  if (!qword_1EA99AE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AE10, &unk_18AFD9560);
    sub_18AE95F54(&qword_1EA99AE30, &qword_1EA99AE00, &qword_18AFD9558, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AE28);
  }

  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_18AF2F598(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_18AF2F5E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_18AF2F654(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v91 = a1;
  v99 = a3;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AE48, &qword_18AFD9820);
  MEMORY[0x1EEE9AC00](v95);
  v100 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v94 = &v82 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v98 = &v82 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AE50, &qword_18AFD9828);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v82 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AE58, &qword_18AFD9830);
  MEMORY[0x1EEE9AC00](v93);
  v97 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v82 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v108 = &v82 - v14;
  v15 = sub_18AFCC474();
  v89 = *(v15 - 8);
  v90 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v106 = sub_18AFCC184();
  MEMORY[0x1EEE9AC00](v106);
  v18 = (&v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998960, &unk_18AFD8820);
  MEMORY[0x1EEE9AC00](v84);
  v20 = &v82 - v19;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998A40, &qword_18AFD2BE8);
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v82 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v82 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v109 = &v82 - v29;
  sub_18AFCDF14();
  v96 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30 = *(v106 + 20);
  v31 = *MEMORY[0x1E697F468];
  v32 = sub_18AFCC534();
  v33 = *(v32 - 8);
  v34 = *(v33 + 104);
  v83 = v31;
  v102 = v34;
  v103 = v32;
  v101 = v33 + 104;
  (v34)(v18 + v30, v31);
  __asm { FMOV            V0.2D, #6.0 }

  v82 = _Q0;
  *v18 = _Q0;
  v86 = a2 >> 8;
  v40 = sub_18AF4682C(BYTE1(a2), BYTE2(a2) & 1);
  sub_18AEE10E8(v18, v20, v41);
  v42 = v84;
  *&v20[*(v84 + 52)] = v40;
  *&v20[*(v42 + 56)] = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  sub_18AE9A768(v20, v27, &qword_1EA998960, &unk_18AFD8820);
  v43 = &v27[*(v104 + 36)];
  v44 = v131;
  *v43 = v130;
  *(v43 + 1) = v44;
  *(v43 + 2) = v132;
  sub_18AE9A768(v27, v109, &qword_1EA998A40, &qword_18AFD2BE8);
  sub_18AFCCD94();
  v45 = sub_18AFCCDA4();

  v116[0] = v45;
  v105 = sub_18AFCBCD4();
  sub_18AFCBB94();
  sub_18AFCDB44();
  sub_18AFCBCC4();
  *&v125[7] = v133;
  *&v125[23] = v134;
  *&v125[39] = v135;
  if ((a2 & 0x10000) != 0)
  {
    v46 = v91;
    if ((a2 & 1) == 0)
    {

      sub_18AFCE024();
      v47 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v48 = v88;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v46, 0);
      (*(v89 + 8))(v48, v90);
    }

    v49 = 0.0;
    v50 = v85;
    v51 = v83;
  }

  else
  {
    v46 = v91;
    if (a2)
    {
      v52 = v91;
    }

    else
    {

      sub_18AFCE024();
      v53 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v54 = v88;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v46, 0);
      (*(v89 + 8))(v54, v90);
      v52 = v116[0];
    }

    v50 = v85;
    v51 = v83;
    if (v52)
    {
      v49 = 1.0;
    }

    else
    {
      v49 = 0.0;
    }
  }

  v102(v50, v51, v103);
  v116[0] = sub_18AFCCD94();
  v55 = sub_18AFCBCD4();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999778, &unk_18AFD5750);
  *(v50 + *(v56 + 52)) = v55;
  *(v50 + *(v56 + 56)) = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v57 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A38, &unk_18AFD5ED0) + 36));
  v58 = v136[1];
  *v57 = v136[0];
  v57[1] = v58;
  v57[2] = v136[2];
  *(v50 + *(v87 + 36)) = xmmword_18AFD9720;
  if ((a2 & 0x10000) != 0)
  {
    if ((a2 & 1) == 0)
    {

      sub_18AFCE024();
      v59 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v60 = v88;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v46, 0);
      (*(v89 + 8))(v60, v90);
      LOBYTE(v46) = v116[0];
    }

    if (v46)
    {
      v61 = 1.0;
    }

    else
    {
      v61 = 0.0;
    }

    v62 = 21.0;
  }

  else
  {
    if ((a2 & 1) == 0)
    {

      sub_18AFCE024();
      v63 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v64 = v88;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v46, 0);
      (*(v89 + 8))(v64, v90);
    }

    v61 = 0.0;
    v62 = -21.0;
  }

  v65 = v92;
  sub_18AE9A768(v50, v92, &qword_1EA99AE50, &qword_18AFD9828);
  *(v65 + *(v93 + 36)) = v61;
  v66 = v108;
  sub_18AE9A768(v65, v108, &qword_1EA99AE58, &qword_18AFD9830);
  v102(v24 + *(v106 + 20), v51, v103);
  *v24 = v82;
  *(v24 + *(v42 + 52)) = sub_18AF46998(v86);
  *(v24 + *(v42 + 56)) = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v67 = (v24 + *(v104 + 36));
  v68 = v136[4];
  *v67 = v136[3];
  v67[1] = v68;
  v67[2] = v136[5];
  v69 = v94;
  sub_18AE9A768(v24, v94, &qword_1EA998A40, &qword_18AFD2BE8);
  v70 = (v69 + *(v95 + 36));
  *v70 = v62;
  v70[1] = 0.0;
  v71 = v98;
  sub_18AE9A768(v69, v98, &qword_1EA99AE48, &qword_18AFD9820);
  v72 = v107;
  sub_18AE83A40(v109, v107, &qword_1EA998A40, &qword_18AFD2BE8);
  v73 = v97;
  sub_18AE83A40(v66, v97, &qword_1EA99AE58, &qword_18AFD9830);
  v74 = v100;
  sub_18AE83A40(v71, v100, &qword_1EA99AE48, &qword_18AFD9820);
  v75 = v99;
  sub_18AE83A40(v72, v99, &qword_1EA998A40, &qword_18AFD2BE8);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AE60, &qword_18AFD9838);
  v77 = v75 + v76[12];
  LOBYTE(v110) = 0;
  *(&v110 + 1) = *v126;
  DWORD1(v110) = *&v126[3];
  *(&v110 + 1) = v105;
  *&v113[0] = v129;
  v111 = v127;
  v112 = v128;
  BYTE8(v113[0]) = 1;
  *(v113 + 9) = *v125;
  *(&v113[1] + 9) = *&v125[16];
  *(&v113[2] + 9) = *&v125[32];
  *(&v113[3] + 1) = *&v125[47];
  v106 = xmmword_18AFD9730;
  v114 = xmmword_18AFD9730;
  v115 = v49;
  v78 = v113[0];
  *(v77 + 32) = v128;
  *(v77 + 48) = v78;
  v79 = v113[2];
  *(v77 + 64) = v113[1];
  *(v77 + 80) = v79;
  v80 = v111;
  *v77 = v110;
  *(v77 + 16) = v80;
  v81 = v114;
  *(v77 + 96) = v113[3];
  *(v77 + 112) = v81;
  *(v77 + 128) = v115;
  sub_18AE83A40(v73, v75 + v76[16], &qword_1EA99AE58, &qword_18AFD9830);
  sub_18AE83A40(v74, v75 + v76[20], &qword_1EA99AE48, &qword_18AFD9820);
  sub_18AE83A40(&v110, v116, &qword_1EA99AE68, &qword_18AFD9840);
  sub_18AE7BA80(v71, &qword_1EA99AE48, &qword_18AFD9820);
  sub_18AE7BA80(v108, &qword_1EA99AE58, &qword_18AFD9830);
  sub_18AE7BA80(v109, &qword_1EA998A40, &qword_18AFD2BE8);
  sub_18AE7BA80(v74, &qword_1EA99AE48, &qword_18AFD9820);
  sub_18AE7BA80(v73, &qword_1EA99AE58, &qword_18AFD9830);
  v117 = v127;
  v118 = v128;
  *&v123[15] = *&v125[47];
  *v123 = *&v125[32];
  v122 = *&v125[16];
  LOBYTE(v116[0]) = 0;
  *(v116 + 1) = *v126;
  HIDWORD(v116[0]) = *&v126[3];
  v116[1] = v105;
  v119 = v129;
  v120 = 1;
  v121 = *v125;
  *&v123[23] = v106;
  v124 = v49;
  sub_18AE7BA80(v116, &qword_1EA99AE68, &qword_18AFD9840);
  sub_18AE7BA80(v107, &qword_1EA998A40, &qword_18AFD2BE8);
}

uint64_t sub_18AF3035C@<X0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 9);
  v7 = *(v2 + 10);
  *a2 = sub_18AFCDB44();
  a2[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AE38, &qword_18AFD9810);
  if (v7)
  {
    v10 = 0x10000;
  }

  else
  {
    v10 = 0;
  }

  sub_18AF2F654(v4, v10 | (v6 << 8) | v5, a2 + *(v9 + 44));
  v11 = MEMORY[0x18CFECEE0](0.3, 1.0, 0.0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AE40, &qword_18AFD9818);
  v13 = a2 + *(result + 36);
  *v13 = v11;
  v13[8] = v7;
  return result;
}

unint64_t sub_18AF30424()
{
  result = qword_1EA99AE70;
  if (!qword_1EA99AE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AE40, &qword_18AFD9818);
    sub_18AE95F54(&qword_1EA99AE78, &qword_1EA99AE80, &qword_18AFD9848, MEMORY[0x1E6981880]);
    sub_18AE95F54(&qword_1EA9977A0, &qword_1EA999A10, qword_18AFD8F40, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AE70);
  }

  return result;
}

uint64_t type metadata accessor for MacWindowControlElement(uint64_t a1)
{
  result = qword_1EA99AE88;
  if (!qword_1EA99AE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AF3057C(uint64_t a1)
{
  sub_18AF306D8(319, &qword_1EA997DB8, MEMORY[0x1E697DC30]);
  if (v1 <= 0x3F)
  {
    sub_18AF306D8(319, &qword_1EA9986F8, MEMORY[0x1E697DBD0]);
    if (v2 <= 0x3F)
    {
      sub_18AEB1A48(319, &qword_1EA997C38, MEMORY[0x1E69E6370]);
      if (v3 <= 0x3F)
      {
        sub_18AF306D8(319, &qword_1EA998418, MEMORY[0x1E697F610]);
        if (v4 <= 0x3F)
        {
          sub_18AEB1A48(319, &qword_1EA997810, MEMORY[0x1E69E7DE0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_18AF306D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18AFCBB64();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_18AF30748@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for MacWindowControlElement(0);
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148, &qword_18AFD12E0);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v6[6];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = v6[7];
  *(a3 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  v10 = a3 + v6[8];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = a3 + v6[9];
  result = swift_getKeyPath();
  *v11 = result;
  v11[8] = 0;
  *(a3 + v6[10]) = v4;
  *(a3 + v6[11]) = v5;
  return result;
}

uint64_t sub_18AF30894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_18AFCC534();
  v7 = *(*(v6 - 8) + 104);
  v7(a2, v5, v6);
  v8 = type metadata accessor for MacWindowControlElement(0);
  v9 = *(a1 + *(v8 + 40));
  v10 = *(a1 + *(v8 + 44));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AEA0, &qword_18AFD9990);
  v12 = (a2 + *(v11 + 52));
  *v12 = v9;
  v12[1] = v10;
  *(a2 + *(v11 + 56)) = 256;
  sub_18AF30AD8();
  sub_18AF30AD8();
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AEA8, &qword_18AFD9998) + 36));
  *v13 = v27;
  v13[1] = v28;
  v13[2] = v29;
  v14 = sub_18AFCDB44();
  v16 = v15;
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AEB0, &qword_18AFD99A0) + 36));
  sub_18AF30E04(a1, v17);
  v18 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AEB8, &qword_18AFD99A8) + 36));
  *v18 = v14;
  v18[1] = v16;
  v19 = sub_18AFCDB44();
  v21 = v20;
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AEC0, &qword_18AFD99B0) + 36);
  sub_18AF31514(a1, v22);
  v23 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AEC8, &qword_18AFD99B8) + 36));
  *v23 = v19;
  v23[1] = v21;
  v24 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AED0, &qword_18AFD99C0) + 36);
  sub_18AF31B3C(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AED8, &qword_18AFD99C8);
  result = (v7)(v24 + *(v25 + 52), v5, v6);
  *(v24 + *(v25 + 56)) = 256;
  return result;
}

uint64_t sub_18AF30AD8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AF38, &qword_18AFD9A58);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_18AFCBB54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v13 - v9);
  v11 = (v5 + 104);
  if ((*(v0 + *(type metadata accessor for MacWindowControlElement(0) + 40)) & 0xC0) == 0x40)
  {
    sub_18AED2C20(v10);
    (*v11)(v3, *MEMORY[0x1E697DC20], v4);
    sub_18AF32DBC(&qword_1EA99AF40, MEMORY[0x1E697DC48]);
    result = sub_18AFCDDF4();
    if (result)
    {
      sub_18AF32DBC(&qword_1EA99AF48, MEMORY[0x1E697DC40]);
      sub_18AFCDDB4();
      sub_18AE7BA80(v3, &qword_1EA99AF38, &qword_18AFD9A58);
      return (*(v5 + 8))(v10, v4);
    }

    __break(1u);
  }

  else
  {
    sub_18AED2C20(v7);
    (*v11)(v3, *MEMORY[0x1E697DC20], v4);
    sub_18AF32DBC(&qword_1EA99AF40, MEMORY[0x1E697DC48]);
    result = sub_18AFCDDF4();
    if (result)
    {
      sub_18AF32DBC(&qword_1EA99AF48, MEMORY[0x1E697DC40]);
      sub_18AFCDDB4();
      sub_18AE7BA80(v3, &qword_1EA99AF38, &qword_18AFD9A58);
      return (*(v5 + 8))(v7, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18AF30E04@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_18AFCC474();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AF18, &qword_18AFD9A38);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AF20, &qword_18AFD9A40);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v45 - v10;
  v11 = sub_18AFCC534();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18AFCD4A4();
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v12 + 104);
  v19(v18, *MEMORY[0x1E697F468], v11, v16);
  v20 = sub_18AF312E0();
  (v19)(v14, *MEMORY[0x1E697F480], v11);
  v21 = sub_18AFCC524();
  v22.n128_f64[0] = (*(v12 + 8))(v14, v11);
  sub_18AEF0D88(v18, v22);
  v23 = type metadata accessor for MacWindowControlElement(0);
  LOBYTE(v19) = *(a1 + v23[10]);
  LOBYTE(v12) = *(a1 + v23[11]);
  v24 = *(v7 + 44);
  v25 = *MEMORY[0x1E6981DA0];
  v26 = sub_18AFCDBC4();
  (*(*(v26 - 8) + 104))(&v9[v24], v25, v26);
  *v9 = v19;
  v9[1] = v12;
  v27 = a1 + v23[6];
  v28 = *v27;
  if (*(v27 + 8) != 1)
  {

    sub_18AFCE024();
    v29 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v30 = v45;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v28, 0);
    (*(v46 + 8))(v30, v47);
    LOBYTE(v28) = v50;
  }

  v31 = *&v20 & 0xFFFFFFFFFFFFFFFELL | ((v21 & 1) == 0);
  if (v28)
  {
    v32 = 1.0;
  }

  else
  {
    v32 = 0.65;
  }

  v33 = v49;
  sub_18AF32D4C(v9, v49);
  *(v33 + *(v48 + 36)) = v32;
  sub_18AF312E0();
  sub_18AFCBB94();
  v34 = v50;
  v35 = v52;
  v36 = v53;
  v37 = v54;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AF28, &qword_18AFD9A48);
  sub_18AE83A40(v33, a2 + *(v38 + 52), &qword_1EA99AF20, &qword_18AFD9A40);
  *a2 = v31;
  v39 = v51;
  a2[1] = v34;
  a2[2] = v39;
  a2[3] = v35;
  a2[4] = v36;
  a2[5] = v37;
  *(a2 + *(v38 + 56)) = 256;
  v40 = sub_18AFCDB44();
  v42 = v41;
  sub_18AE7BA80(v33, &qword_1EA99AF20, &qword_18AFD9A40);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AF30, &qword_18AFD9A50);
  v44 = (a2 + *(result + 36));
  *v44 = v40;
  v44[1] = v42;
  return result;
}

double sub_18AF312E0()
{
  v1 = sub_18AFCC474();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MacWindowControlElement(0);
  v6 = v0 + *(v5 + 24);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    result = 1.0;
    if (v7)
    {
      return result;
    }
  }

  else
  {

    sub_18AFCE024();
    v9 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v7, 0);
    (*(v2 + 8))(v4, v1);
    result = 1.0;
    if (v16)
    {
      return result;
    }
  }

  v10 = v0 + *(v5 + 36);
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    v12 = *v10;
  }

  else
  {

    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v11, 0);
    (*(v2 + 8))(v4, v1);
    v12 = v15;
  }

  v14 = v12 < 2.0;
  result = 0.5;
  if (!v14)
  {
    return 0.25;
  }

  return result;
}

uint64_t sub_18AF31514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_18AFCCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18AFCBA54();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_18AF31744(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18AFCD014();
  (*(v6 + 104))(v8, *MEMORY[0x1E6981630], v5);
  v11 = sub_18AFCD004();

  (*(v6 + 8))(v8, v5);
  v12 = type metadata accessor for MacWindowControlElement(0);
  LOBYTE(v5) = *(a1 + *(v12 + 40));
  LOBYTE(v8) = *(a1 + *(v12 + 44));
  KeyPath = swift_getKeyPath();
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AF00, &qword_18AFD9A20) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AF08, &qword_18AFD9A28) + 28);
  sub_18AFCD524();
  v16 = sub_18AFCDAD4();
  result = (*(*(v16 - 8) + 56))(v14 + v15, 0, 1, v16);
  *v14 = KeyPath;
  *a2 = v11;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 18) = v5;
  *(a2 + 19) = v8;
  return result;
}

uint64_t sub_18AF31744@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18AFCBA54();
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + *(type metadata accessor for MacWindowControlElement(0) + 40));
  v7 = v6 >> 5;
  if (v6 >> 5 > 1)
  {
    if (v7 == 2)
    {
      if (qword_1EA997980 != -1)
      {
        swift_once();
      }

      v8 = qword_1EA9B0118;
    }

    else if (v7 == 3)
    {
      if (qword_1EA997978 != -1)
      {
        swift_once();
      }

      v8 = qword_1EA9B0100;
    }

    else if (v6 == 128)
    {
      if (qword_1EA997970 != -1)
      {
        swift_once();
      }

      v8 = qword_1EA9B00E8;
    }

    else
    {
      if (qword_1EA997988 != -1)
      {
        swift_once();
      }

      v8 = qword_1EA9B0130;
    }

LABEL_29:
    v10 = __swift_project_value_buffer(v3, v8);
    v11 = *(v15 + 16);

    return v11(a1, v10, v3);
  }

  if (!v7)
  {
    if (v6)
    {
      if (qword_1EA997958 != -1)
      {
        swift_once();
      }

      v8 = qword_1EA9B00A0;
    }

    else
    {
      if (qword_1EA997950 != -1)
      {
        swift_once();
      }

      v8 = qword_1EA9B0088;
    }

    goto LABEL_29;
  }

  if (v6)
  {
    if (qword_1EA997968 != -1)
    {
      swift_once();
    }

    v9 = qword_1EA9B00D0;
  }

  else
  {
    if (qword_1EA997960 != -1)
    {
      swift_once();
    }

    v9 = qword_1EA9B00B8;
  }

  v13 = __swift_project_value_buffer(v3, v9);
  (*(v15 + 16))(v5, v13, v3);
  return (*(v15 + 32))(a1, v5, v3);
}