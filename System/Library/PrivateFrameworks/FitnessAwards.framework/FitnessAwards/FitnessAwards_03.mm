uint64_t sub_24B41A504(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v56 = sub_24B45836C();
  v3 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardProgressLoadState(0);
  v58 = *(State - 8);
  v5 = MEMORY[0x28223BE20](State);
  v64 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v65 = &v53 - v8;
  MEMORY[0x28223BE20](v7);
  v57 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8948, &qword_24B4606E8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v61 = &v53 - v14;
  v15 = a2 + 64;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 64);
  v19 = (v16 + 63) >> 6;
  v54 = (v3 + 32);
  v53 = (v3 + 8);
  v59 = a2;

  v21 = 0;
  v22 = 0;
  v63 = v13;
  while (1)
  {
    v66 = v21;
    if (!v18)
    {
      break;
    }

    v25 = v22;
LABEL_16:
    v28 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v29 = v28 | (v25 << 6);
    v30 = (*(v59 + 48) + 16 * v29);
    v32 = *v30;
    v31 = v30[1];
    v33 = v57;
    sub_24B41BFE0(*(v59 + 56) + *(v58 + 72) * v29, v57, type metadata accessor for AwardProgressLoadState);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8950, &qword_24B4606F0);
    v35 = *(v34 + 48);
    v36 = v63;
    *v63 = v32;
    *(v36 + 1) = v31;
    v37 = v33;
    v13 = v36;
    sub_24B41C048(v37, &v36[v35], type metadata accessor for AwardProgressLoadState);
    (*(*(v34 - 8) + 56))(v13, 0, 1, v34);

LABEL_17:
    v38 = v61;
    sub_24B41C0B0(v13, v61, &qword_27EFE8948, &qword_24B4606E8);
    v39 = v38;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8950, &qword_24B4606F0);
    if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
    {

      return MEMORY[0x24C2403C0](v66);
    }

    v41 = v65;
    sub_24B41C048(v39 + *(v40 + 48), v65, type metadata accessor for AwardProgressLoadState);
    v42 = *(v62 + 48);
    v69 = *(v62 + 32);
    v70 = v42;
    v71 = *(v62 + 64);
    v43 = *(v62 + 16);
    v67 = *v62;
    v68 = v43;
    sub_24B458E6C();

    sub_24B41BFE0(v41, v64, type metadata accessor for AwardProgressLoadState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v46 = *v64;
        v45 = *(v64 + 8);
        v48 = *(v64 + 16);
        v47 = *(v64 + 24);
        v49 = *(v64 + 32);
        MEMORY[0x24C2403C0](2);
        if (v49)
        {
          MEMORY[0x24C2403C0](1);
          MEMORY[0x24C2403C0](v46);
          sub_24B45924C();
          MEMORY[0x24C2403C0](v48);
        }

        else
        {
          MEMORY[0x24C2403C0](0);
          sub_24B458E6C();
          if ((v48 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v51 = v48;
          }

          else
          {
            v51 = 0;
          }

          MEMORY[0x24C2403E0](v51);
          if ((v47 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v52 = v47;
          }

          else
          {
            v52 = 0;
          }

          MEMORY[0x24C2403E0](v52);
          sub_24B3DF468(v46, v45, v48, v47, 0);
        }

        v13 = v63;
      }

      else
      {
        MEMORY[0x24C2403C0](0);
      }
    }

    else
    {
      v24 = v55;
      v23 = v56;
      (*v54)(v55, v64, v56);
      MEMORY[0x24C2403C0](1);
      sub_24B41BF98(&qword_27EFE7E70, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_24B458D9C();
      (*v53)(v24, v23);
    }

    sub_24B41C118(v65, type metadata accessor for AwardProgressLoadState);
    result = sub_24B45926C();
    v21 = result ^ v66;
  }

  if (v19 <= v22 + 1)
  {
    v26 = v22 + 1;
  }

  else
  {
    v26 = v19;
  }

  v27 = v26 - 1;
  while (1)
  {
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v25 >= v19)
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8950, &qword_24B4606F0);
      (*(*(v50 - 8) + 56))(v13, 1, 1, v50);
      v18 = 0;
      v22 = v27;
      goto LABEL_17;
    }

    v18 = *(v15 + 8 * v25);
    ++v22;
    if (v18)
    {
      v22 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B41AB64(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= result)
  {
    v12 = i;
LABEL_9:
    v13 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v7)) | (v12 << 6)));
    v7 &= v7 - 1;
    v14 = *(a1 + 48);
    v16[2] = *(a1 + 32);
    v16[3] = v14;
    v17 = *(a1 + 64);
    v15 = *(a1 + 16);
    v16[0] = *a1;
    v16[1] = v15;

    sub_24B458E6C();

    sub_24B41ACC0(v16, v13);

    result = sub_24B45926C();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x24C2403C0](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B41ACC0(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v61 = sub_24B45830C();
  v3 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_24B45836C();
  v5 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardImageLoadState(0);
  v63 = *(State - 8);
  v7 = MEMORY[0x28223BE20](State);
  v68 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v54 - v10;
  MEMORY[0x28223BE20](v9);
  v62 = &v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8958, &qword_24B4606F8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v67 = (&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v17 = (&v54 - v16);
  v18 = a2 + 64;
  v19 = 1 << *(a2 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a2 + 64);
  v22 = (v19 + 63) >> 6;
  v57 = (v3 + 32);
  v56 = v3 + 8;
  v55 = (v5 + 32);
  v54 = v5 + 8;
  v64 = a2;

  v24 = 0;
  v25 = 0;
  v69 = v11;
  while (v21)
  {
    v29 = v24;
    v30 = v25;
LABEL_17:
    v33 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v34 = v33 | (v30 << 6);
    v35 = (*(v64 + 48) + 16 * v34);
    v36 = *v35;
    v37 = v35[1];
    v38 = v62;
    sub_24B41BFE0(*(v64 + 56) + *(v63 + 72) * v34, v62, type metadata accessor for AwardImageLoadState);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8960, &qword_24B460700);
    v40 = *(v39 + 48);
    v41 = v67;
    *v67 = v36;
    v41[1] = v37;
    v42 = v41;
    sub_24B41C048(v38, v41 + v40, type metadata accessor for AwardImageLoadState);
    (*(*(v39 - 8) + 56))(v42, 0, 1, v39);
    v24 = v29;
LABEL_18:
    sub_24B41C0B0(v42, v17, &qword_27EFE8958, &qword_24B4606F8);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8960, &qword_24B460700);
    if ((*(*(v43 - 8) + 48))(v17, 1, v43) == 1)
    {

      return MEMORY[0x24C2403C0](v24);
    }

    v44 = *v17;
    v45 = v17[1];
    v46 = v69;
    sub_24B41C048(v17 + *(v43 + 48), v69, type metadata accessor for AwardImageLoadState);
    v47 = *(v66 + 48);
    v72 = *(v66 + 32);
    v73 = v47;
    v74 = *(v66 + 64);
    v48 = *(v66 + 16);
    v70 = *v66;
    v71 = v48;
    if (v44 == 0.0)
    {
      v49 = 0.0;
    }

    else
    {
      v49 = v44;
    }

    MEMORY[0x24C2403E0](*&v49);
    if (v45 == 0.0)
    {
      v50 = 0.0;
    }

    else
    {
      v50 = v45;
    }

    MEMORY[0x24C2403E0](*&v50);
    sub_24B41BFE0(v46, v68, type metadata accessor for AwardImageLoadState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v26 = v58;
      v27 = v59;
      (*v55)(v58, v68, v59);
      MEMORY[0x24C2403C0](1);
      sub_24B41BF98(&qword_27EFE7E70, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_24B458D9C();
      v28 = &v75;
LABEL_5:
      (**(v28 - 32))(v26, v27);
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v26 = v60;
      v27 = v61;
      (*v57)(v60, v68, v61);
      MEMORY[0x24C2403C0](2);
      sub_24B41BF98(&qword_27EFE8968, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      sub_24B458D9C();
      v28 = &v76;
      goto LABEL_5;
    }

    MEMORY[0x24C2403C0](0);
LABEL_6:
    sub_24B41C118(v69, type metadata accessor for AwardImageLoadState);
    result = sub_24B45926C();
    v24 ^= result;
  }

  if (v22 <= v25 + 1)
  {
    v31 = v25 + 1;
  }

  else
  {
    v31 = v22;
  }

  v32 = v31 - 1;
  while (1)
  {
    v30 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v30 >= v22)
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8960, &qword_24B460700);
      v53 = v67;
      (*(*(v52 - 8) + 56))(v67, 1, 1, v52);
      v21 = 0;
      v25 = v32;
      v42 = v53;
      goto LABEL_18;
    }

    v21 = *(v18 + 8 * v30);
    ++v25;
    if (v21)
    {
      v29 = v24;
      v25 = v30;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B41B3E4(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v50 = sub_24B45836C();
  v3 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardEarnedLoadState(0);
  v53 = *(State - 8);
  v5 = MEMORY[0x28223BE20](State);
  v59 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v60 = &v47 - v8;
  MEMORY[0x28223BE20](v7);
  v52 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8970, &qword_24B460708);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v58 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - v13;
  v15 = a2 + 64;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 64);
  v19 = (v16 + 63) >> 6;
  v48 = (v3 + 32);
  v47 = (v3 + 8);
  v54 = a2;

  v21 = 0;
  v22 = 0;
  v51 = v14;
  v55 = a2 + 64;
  while (v18)
  {
    v25 = v21;
    v26 = v22;
LABEL_16:
    v30 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v31 = v30 | (v26 << 6);
    v32 = (*(v54 + 48) + 16 * v31);
    v33 = *v32;
    v34 = v32[1];
    v35 = v52;
    sub_24B41BFE0(*(v54 + 56) + *(v53 + 72) * v31, v52, type metadata accessor for AwardEarnedLoadState);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8978, &qword_24B460710);
    v37 = *(v36 + 48);
    v38 = v58;
    *v58 = v33;
    v38[1] = v34;
    v29 = v38;
    sub_24B41C048(v35, v38 + v37, type metadata accessor for AwardEarnedLoadState);
    (*(*(v36 - 8) + 56))(v29, 0, 1, v36);

    v21 = v25;
    v14 = v51;
LABEL_17:
    sub_24B41C0B0(v29, v14, &qword_27EFE8970, &qword_24B460708);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8978, &qword_24B460710);
    if ((*(*(v39 - 8) + 48))(v14, 1, v39) == 1)
    {

      return MEMORY[0x24C2403C0](v21);
    }

    v40 = v60;
    sub_24B41C048(&v14[*(v39 + 48)], v60, type metadata accessor for AwardEarnedLoadState);
    v41 = *(v57 + 48);
    v63 = *(v57 + 32);
    v64 = v41;
    v65 = *(v57 + 64);
    v42 = *(v57 + 16);
    v61 = *v57;
    v62 = v42;
    sub_24B458E6C();

    sub_24B41BFE0(v40, v59, type metadata accessor for AwardEarnedLoadState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v15 = v55;
      if (EnumCaseMultiPayload == 1)
      {
        v44 = *v59;
        MEMORY[0x24C2403C0](2);
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      MEMORY[0x24C2403C0](v45);
    }

    else
    {
      v24 = v49;
      v23 = v50;
      (*v48)(v49, v59, v50);
      MEMORY[0x24C2403C0](1);
      sub_24B41BF98(&qword_27EFE7E70, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_24B458D9C();
      (*v47)(v24, v23);
      v15 = v55;
    }

    sub_24B41C118(v60, type metadata accessor for AwardEarnedLoadState);
    result = sub_24B45926C();
    v21 ^= result;
  }

  if (v19 <= v22 + 1)
  {
    v27 = v22 + 1;
  }

  else
  {
    v27 = v19;
  }

  v28 = v27 - 1;
  v29 = v58;
  while (1)
  {
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v26 >= v19)
    {
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8978, &qword_24B460710);
      (*(*(v46 - 8) + 56))(v29, 1, 1, v46);
      v18 = 0;
      v22 = v28;
      goto LABEL_17;
    }

    v18 = *(v15 + 8 * v26);
    ++v22;
    if (v18)
    {
      v25 = v21;
      v22 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B41B9E4(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v16 = 0;
  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = (v10 << 10) | (16 * __clz(__rbit64(v6)));
      v12 = *(*(a2 + 48) + v11 + 8);
      v13 = (*(a2 + 56) + v11);
      v14 = *v13;
      v15 = v13[1];

      sub_24B41C178(v14, v15);
      if (!v12)
      {
        break;
      }

      v6 &= v6 - 1;
      sub_24B458E6C();

      sub_24B45832C();
      sub_24B41C1CC(v14, v15);
      result = sub_24B45926C();
      v16 ^= result;
      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x24C2403C0](v16);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_11;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s13FitnessAwards16AwardToastDetailV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (sub_24B40EB18(*a1, *a2) & 1) != 0 && (v2 == v6 && v4 == v8 || (sub_24B4591AC()))
  {
    if (v5)
    {
      if (v10 && (v3 == v7 && v5 == v10 || (sub_24B4591AC() & 1) != 0))
      {
        return sub_24B45540C(v13, v9) & (v14 == v11);
      }
    }

    else if (!v10)
    {
      return sub_24B45540C(v13, v9) & (v14 == v11);
    }
  }

  return 0;
}

unint64_t sub_24B41BC6C()
{
  result = qword_27EFE8928;
  if (!qword_27EFE8928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8928);
  }

  return result;
}

unint64_t sub_24B41BCD4()
{
  result = qword_27EFE8930;
  if (!qword_27EFE8930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8930);
  }

  return result;
}

unint64_t sub_24B41BD2C()
{
  result = qword_27EFE8938;
  if (!qword_27EFE8938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8938);
  }

  return result;
}

unint64_t sub_24B41BD84()
{
  result = qword_27EFE8940;
  if (!qword_27EFE8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8940);
  }

  return result;
}

uint64_t sub_24B41BDD8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000024B466F30 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061 || (sub_24B4591AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_24B4591AC();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24B41BF98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B41BFE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B41C048(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B41C0B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24B41C118(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B41C178(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24B41C1CC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24B41C220(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = *(a1 + 48) + 40 * (v10 | (v8 << 6));
      if ((*(v11 + 32) & 1) == 0)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v14 = *v11;
    v13 = *(v11 + 8);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24B3F13B4(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v15 = *(v9 + 16);
    v16 = *(v9 + 24);
    v17 = v15 + 1;
    if (v15 >= v16 >> 1)
    {
      v21 = v15 + 1;
      v19 = v9;
      v20 = *(v9 + 16);
      result = sub_24B3F13B4((v16 > 1), v15 + 1, 1, v19);
      v15 = v20;
      v17 = v21;
      v9 = result;
    }

    *(v9 + 16) = v17;
    v18 = v9 + 16 * v15;
    *(v18 + 32) = v14;
    *(v18 + 40) = v13;
  }

  while (v5);
LABEL_6:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v12);
    ++v8;
    if (v5)
    {
      v8 = v12;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B41C398(_OWORD *a1, uint64_t a2)
{
  *(v2 + 304) = a2;
  v3 = a1[7];
  *(v2 + 112) = a1[6];
  *(v2 + 128) = v3;
  *(v2 + 144) = a1[8];
  v4 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v4;
  v5 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v5;
  v6 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;

  return MEMORY[0x2822009F8](sub_24B41C450, 0, 0);
}

uint64_t sub_24B41C450()
{
  v44 = v0;
  v43[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 304);
  v2 = *(v1 + 32);
  v3 = v2 & 0x3F;
  v4 = ((1 << v2) + 63) >> 6;
  v5 = 8 * v4;

  v7 = v1;
  if (v3 > 0xD)
  {
LABEL_41:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    v7 = *(v0 + 304);
    if ((isStackAllocationSafe & 1) == 0)
    {
      v41 = swift_slowAlloc();
      v26 = sub_24B41D6FC(v41, v4, v7, sub_24B41D648);
      MEMORY[0x24C2408A0](v41, -1, -1);
      goto LABEL_27;
    }
  }

  MEMORY[0x28223BE20](isStackAllocationSafe);
  bzero(&v43[-1] - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0), v5);
  v8 = 0;
  v9 = 0;
  v10 = 1 << *(v1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v7 + 56);
  while (1)
  {
    if (!v12)
    {
      v15 = v9;
      while (1)
      {
        v9 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v9 >= ((v10 + 63) >> 6))
        {
          goto LABEL_26;
        }

        v16 = *(v7 + 56 + 8 * v9);
        ++v15;
        if (v16)
        {
          v12 = (v16 - 1) & v16;
          v14 = __clz(__rbit64(v16)) | (v9 << 6);
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v13 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v14 = v13 | (v9 << 6);
LABEL_12:
    v17 = *(v7 + 48) + 40 * v14;
    if ((*(v17 + 32) & 1) == 0)
    {
      v18 = *(v17 + 24);
      v19 = v18;
      if (v18 <= -9.22337204e18)
      {
        goto LABEL_35;
      }

      if (v18 >= 9.22337204e18)
      {
        goto LABEL_36;
      }

      v20 = *(v17 + 16);
      v21 = *&v18 & 0x7FF0000000000000;
      if ((~*&v20 & 0x7FF0000000000000) == 0 || v21 == 0x7FF0000000000000)
      {
        goto LABEL_37;
      }

      v23 = v20;
      if (v20 <= -9.22337204e18)
      {
        goto LABEL_38;
      }

      if (v20 >= 9.22337204e18)
      {
        goto LABEL_39;
      }

      v24 = v19 - v20;
      if (__OFSUB__(v19, v23))
      {
        goto LABEL_40;
      }

      if (v24 == 1)
      {
        *(&v43[-1] + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v14;
        if (__OFADD__(v8++, 1))
        {
          break;
        }
      }
    }
  }

  __break(1u);
LABEL_26:
  v26 = sub_24B41DC6C((&v43[-1] - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0)), v4, v8, *(v0 + 304));
LABEL_27:
  *(v0 + 312) = v26;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v27 = sub_24B45847C();
  *(v0 + 320) = __swift_project_value_buffer(v27, qword_2810E3618);

  v28 = sub_24B45845C();
  v29 = sub_24B458F4C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v43[0] = v31;
    *v30 = 136315138;
    sub_24B41DF30();
    v32 = sub_24B458F2C();
    v34 = sub_24B3F17BC(v32, v33, v43);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_24B3CE000, v28, v29, "Earnable awards %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x24C2408A0](v31, -1, -1);
    MEMORY[0x24C2408A0](v30, -1, -1);
  }

  v35 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v35;
  *(v0 + 288) = *(v0 + 144);
  v36 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v36;
  v37 = *(v0 + 96);
  *(v0 + 224) = *(v0 + 80);
  *(v0 + 240) = v37;
  v38 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v38;
  v39 = swift_task_alloc();
  *(v0 + 328) = v39;
  *v39 = v0;
  v39[1] = sub_24B41C908;

  return sub_24B41CBE4(v0 + 160, v26);
}

uint64_t sub_24B41C908(uint64_t a1)
{
  *(*v1 + 336) = a1;

  return MEMORY[0x2822009F8](sub_24B41CA54, 0, 0);
}

uint64_t sub_24B41CA54()
{
  v12 = v0;
  v11[1] = *MEMORY[0x277D85DE8];

  v1 = sub_24B45845C();
  v2 = sub_24B458F4C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11[0] = v4;
    *v3 = 136315138;
    sub_24B41DF30();
    v5 = sub_24B458F2C();
    v7 = sub_24B3F17BC(v5, v6, v11);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_24B3CE000, v1, v2, "Awards eligible to present %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x24C2408A0](v4, -1, -1);
    MEMORY[0x24C2408A0](v3, -1, -1);
  }

  v8 = *(v0 + 8);
  v9 = *(v0 + 336);

  return v8(v9);
}

uint64_t sub_24B41CBE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 176) = a2;
  *(v2 + 184) = *(a1 + 128);
  return MEMORY[0x2822009F8](sub_24B41CC0C, 0, 0);
}

uint64_t sub_24B41CC0C()
{
  *(v0 + 160) = MEMORY[0x277D84FA0];
  v1 = *(v0 + 176);
  v2 = *(v1 + 32);
  *(v0 + 49) = v2;
  v3 = v1 + 56;
  v4 = 1 << v2;
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_10:
    *(v0 + 200) = v6;
    *(v0 + 208) = v10;
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(result + 48) + 40 * (v11 | (v10 << 6));
    v13 = *v12;
    v14 = *(v12 + 16);
    *(v0 + 48) = *(v12 + 32);
    *(v0 + 16) = v13;
    *(v0 + 32) = v14;
    if ((*(v0 + 48) & 1) == 0)
    {
      v15 = *(v0 + 184);
      v16 = *(v0 + 16);
      v17 = *(v0 + 24);
      *(v0 + 216) = v16;
      *(v0 + 224) = v17;
      *(v0 + 232) = *(v12 + 8);

      v21 = (v15 + *v15);
      v18 = swift_task_alloc();
      *(v0 + 240) = v18;
      *v18 = v0;
      v18[1] = sub_24B41CE20;

      return v21(v16, v17);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  v19 = *(v0 + 160);
  v20 = *(v0 + 8);

  return v20(v19);
}

uint64_t sub_24B41CE20(char a1)
{
  v4 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v5 = sub_24B41D2A0;
  }

  else
  {
    *(v4 + 50) = a1 & 1;
    v5 = sub_24B41CF4C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24B41CF4C()
{
  v26 = v0;
  if (*(v0 + 50))
  {
    sub_24B41DF84(v0 + 96, v0 + 16);
    sub_24B3DF468(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));
  }

  else
  {
    if (qword_2810E3610 != -1)
    {
LABEL_23:
      swift_once();
    }

    v1 = sub_24B45847C();
    __swift_project_value_buffer(v1, qword_2810E3618);

    v2 = sub_24B45845C();
    v3 = sub_24B458F4C();
    if (os_log_type_enabled(v2, v3))
    {
      v5 = *(v0 + 216);
      v4 = *(v0 + 224);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v25 = v7;
      *v6 = 136315138;
      v8 = sub_24B3F17BC(v5, v4, &v25);
      sub_24B3EE5B0(v0 + 16);
      *(v6 + 4) = v8;
      _os_log_impl(&dword_24B3CE000, v2, v3, "%s has already been toasted, not notifying", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x24C2408A0](v7, -1, -1);
      MEMORY[0x24C2408A0](v6, -1, -1);
    }

    else
    {

      sub_24B3EE5B0(v0 + 16);
    }

    sub_24B3EE5B0(v0 + 16);
  }

  v9 = *(v0 + 208);
  v10 = (*(v0 + 200) - 1) & *(v0 + 200);
  while (v10)
  {
    v11 = *(v0 + 176);
LABEL_15:
    *(v0 + 200) = v10;
    *(v0 + 208) = v9;
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v14 = *(v11 + 48) + 40 * (v13 | (v9 << 6));
    v15 = *v14;
    v16 = *(v14 + 16);
    *(v0 + 48) = *(v14 + 32);
    *(v0 + 16) = v15;
    *(v0 + 32) = v16;
    if ((*(v0 + 48) & 1) == 0)
    {
      v17 = *(v0 + 184);
      v18 = *(v0 + 16);
      v19 = *(v0 + 24);
      *(v0 + 216) = v18;
      *(v0 + 224) = v19;
      *(v0 + 232) = *(v14 + 8);

      v24 = (v17 + *v17);
      v20 = swift_task_alloc();
      *(v0 + 240) = v20;
      *v20 = v0;
      v20[1] = sub_24B41CE20;

      return v24(v18, v19);
    }
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    v11 = *(v0 + 176);
    if (v12 >= (((1 << *(v0 + 49)) + 63) >> 6))
    {
      break;
    }

    v10 = *(v11 + 8 * v12 + 56);
    ++v9;
    if (v10)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  v22 = *(v0 + 160);
  v23 = *(v0 + 8);

  return v23(v22);
}

uint64_t sub_24B41D2A0()
{
  v32 = v0;
  if (qword_2810E3610 != -1)
  {
LABEL_20:
    swift_once();
  }

  v1 = *(v0 + 248);
  v2 = sub_24B45847C();
  __swift_project_value_buffer(v2, qword_2810E3618);
  sub_24B3F24BC(v0 + 16, v0 + 56);
  MEMORY[0x24C2406E0](v1);
  v3 = sub_24B45845C();
  v4 = sub_24B458F4C();
  MEMORY[0x24C2406D0](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 248);
  if (v5)
  {
    v8 = *(v0 + 216);
    v7 = *(v0 + 224);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315394;
    v11 = sub_24B3F17BC(v8, v7, &v31);
    sub_24B3EE5B0(v0 + 16);
    *(v9 + 4) = v11;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v12 = sub_24B4591DC();
    v14 = sub_24B3F17BC(v12, v13, &v31);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_24B3CE000, v3, v4, "Toast eligibility query for %s failed with error %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C2408A0](v10, -1, -1);
    MEMORY[0x24C2408A0](v9, -1, -1);
    MEMORY[0x24C2406D0](v6);

    sub_24B3EE5B0(v0 + 16);
  }

  else
  {

    sub_24B3EE5B0(v0 + 16);
    sub_24B3EE5B0(v0 + 16);
    MEMORY[0x24C2406D0](v6);
  }

  v15 = *(v0 + 208);
  v16 = (*(v0 + 200) - 1) & *(v0 + 200);
  while (v16)
  {
    v17 = *(v0 + 176);
LABEL_12:
    *(v0 + 200) = v16;
    *(v0 + 208) = v15;
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v20 = *(v17 + 48) + 40 * (v19 | (v15 << 6));
    v21 = *v20;
    v22 = *(v20 + 16);
    *(v0 + 48) = *(v20 + 32);
    *(v0 + 16) = v21;
    *(v0 + 32) = v22;
    if ((*(v0 + 48) & 1) == 0)
    {
      v23 = *(v0 + 184);
      v24 = *(v0 + 16);
      v25 = *(v0 + 24);
      *(v0 + 216) = v24;
      *(v0 + 224) = v25;
      *(v0 + 232) = *(v20 + 8);

      v30 = (v23 + *v23);
      v26 = swift_task_alloc();
      *(v0 + 240) = v26;
      *v26 = v0;
      v26[1] = sub_24B41CE20;

      return v30(v24, v25);
    }
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v18 >= (((1 << *(v0 + 49)) + 63) >> 6))
    {
      break;
    }

    v17 = *(v0 + 176);
    v16 = *(v17 + 8 * v18 + 56);
    ++v15;
    if (v16)
    {
      v15 = v18;
      goto LABEL_12;
    }
  }

  v28 = *(v0 + 160);
  v29 = *(v0 + 8);

  return v29(v28);
}

BOOL sub_24B41D648(_BOOL8 result)
{
  if (*(result + 32))
  {
    return 0;
  }

  v1 = *(result + 24);
  if (v1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = *(result + 16);
  if ((~*&v2 & 0x7FF0000000000000) == 0 || (*(result + 24) & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    goto LABEL_15;
  }

  v4 = *(result + 16);
  if (v2 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!__OFSUB__(v1, v4))
  {
    return v1 - v4 == 1;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t *sub_24B41D6FC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_24B41DAA4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_24B41D78C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8980, &qword_24B460728);
  result = sub_24B458FBC();
  v5 = result;
  if (*(v3 + 16))
  {
    v37 = v2;
    v38 = v3;
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
    v39 = result;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v41 = (v10 - 1) & v10;
LABEL_15:
      v20 = *(v3 + 48) + 40 * (v17 | (v6 << 6));
      v22 = *v20;
      v21 = *(v20 + 8);
      v23 = *(v20 + 16);
      v24 = *(v20 + 24);
      v25 = *(v20 + 32);
      sub_24B45922C();
      v40 = v25;
      if (v25)
      {
        v26 = v24;
        MEMORY[0x24C2403C0](1);
        MEMORY[0x24C2403C0](v22);
        sub_24B45924C();
        MEMORY[0x24C2403C0](v23);
      }

      else
      {
        MEMORY[0x24C2403C0](0);
        sub_24B458E6C();
        if ((v23 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = 0;
        }

        MEMORY[0x24C2403E0](v27);
        v26 = v24;
        if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v28 = v24;
        }

        else
        {
          v28 = 0;
        }

        MEMORY[0x24C2403E0](v28);
      }

      result = sub_24B45926C();
      v5 = v39;
      v29 = -1 << *(v39 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v12 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v14 = v26;
        v15 = v22;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v12 + 8 * v31);
          if (v35 != -1)
          {
            v13 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v30) & ~*(v12 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v14 = v26;
      v15 = v22;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v16 = *(v39 + 48) + 40 * v13;
      *v16 = v15;
      *(v16 + 8) = v21;
      *(v16 + 16) = v23;
      *(v16 + 24) = v14;
      *(v16 + 32) = v40;
      ++*(v39 + 16);
      v3 = v38;
      v10 = v41;
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v36 = 1 << *(v3 + 32);
    if (v36 >= 64)
    {
      bzero(v7, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v36;
    }

    v2 = v37;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t *sub_24B41DAA4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v21 = result;
  v4 = 0;
  v24 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 56);
  v22 = 0;
  v23 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v28 = (v7 - 1) & v7;
LABEL_11:
    v25 = v8 | (v4 << 6);
    v11 = *(a3 + 48) + 40 * v25;
    v13 = *v11;
    v12 = *(v11 + 8);
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    v16 = *(v11 + 32);
    v29[0] = v13;
    v29[1] = v12;
    v29[2] = v15;
    v29[3] = v14;
    v30 = v16;
    sub_24B3F1F54(v13, v12, v15, v14, v16);
    v17 = v31;
    v18 = a4(v29);
    result = sub_24B3DF468(v13, v12, v15, v14, v16);
    v31 = v17;
    if (v17)
    {
      return result;
    }

    v7 = v28;
    if (v18)
    {
      *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_24B41DC6C(v21, a2, v22, a3);
      }
    }
  }

  v9 = v4;
  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v23)
    {
      goto LABEL_16;
    }

    v10 = *(v24 + 8 * v4);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v28 = (v10 - 1) & v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B41DC6C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v8 = MEMORY[0x277D84FA0];
LABEL_6:

    return v8;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8980, &qword_24B460728);
  result = sub_24B458FCC();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 56;
  v35 = v4;
  v36 = result;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v37 = (v9 - 1) & v9;
LABEL_17:
    v15 = *(v4 + 48) + 40 * (v12 | (v10 << 6));
    v17 = *v15;
    v16 = *(v15 + 8);
    v19 = *(v15 + 16);
    v18 = *(v15 + 24);
    v20 = *(v15 + 32);
    sub_24B45922C();
    v38 = v20;
    if (v20)
    {
      MEMORY[0x24C2403C0](1);
      v21 = v17;
      MEMORY[0x24C2403C0](v17);
      sub_24B45924C();
      MEMORY[0x24C2403C0](v19);
    }

    else
    {
      MEMORY[0x24C2403C0](0);

      v21 = v17;
      sub_24B458E6C();
      if ((v19 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v22 = v19;
      }

      else
      {
        v22 = 0;
      }

      MEMORY[0x24C2403E0](v22);
      if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v23 = v18;
      }

      else
      {
        v23 = 0;
      }

      MEMORY[0x24C2403E0](v23);
    }

    result = sub_24B45926C();
    v8 = v36;
    v24 = -1 << *(v36 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v11 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_36;
        }
      }

      goto LABEL_40;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_36:
    *(v11 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = *(v36 + 48) + 40 * v27;
    *v32 = v21;
    *(v32 + 8) = v16;
    *(v32 + 16) = v19;
    *(v32 + 24) = v18;
    *(v32 + 32) = v38;
    ++*(v36 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_41;
    }

    v4 = v35;
    v9 = v37;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      goto LABEL_6;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v37 = (v14 - 1) & v14;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_24B41DF30()
{
  result = qword_2810E35B8;
  if (!qword_2810E35B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35B8);
  }

  return result;
}

uint64_t sub_24B41DF84(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_24B45922C();
  AwardProgress.hash(into:)(v30);
  v6 = sub_24B45926C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v2;
    sub_24B3F24BC(a2, v30);
    sub_24B41E168(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v29;
    v21 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v21;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }

  v9 = ~v7;
  v10 = *(v5 + 48);
  while (1)
  {
    v12 = (v10 + 40 * v8);
    v13 = *v12;
    v14 = *(v12 + 1);
    if ((v12[4] & 1) == 0)
    {
      break;
    }

    if ((*(a2 + 32) & 1) != 0 && *&v13 == *a2 && ((*(a2 + 8) ^ v14) & 1) == 0 && *(v12 + 2) == *(a2 + 16))
    {
      goto LABEL_23;
    }

LABEL_7:
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (*(a2 + 32))
  {
    goto LABEL_7;
  }

  v15 = v12[3];
  v16 = v12[2];
  v18 = *(a2 + 16);
  v17 = *(a2 + 24);
  v19 = *&v13 == *a2 && v14 == *(a2 + 8);
  if (!v19 && (sub_24B4591AC() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (v18 != v16 || v15 != v17)
  {
    goto LABEL_7;
  }

  sub_24B3EE5B0(a2);
LABEL_23:
  v23 = *(v5 + 48) + 40 * v8;
  v24 = *v23;
  v25 = *(v23 + 8);
  v26 = *(v23 + 16);
  v27 = *(v23 + 24);
  v28 = *(v23 + 32);
  *a1 = *v23;
  *(a1 + 8) = v25;
  *(a1 + 16) = v26;
  *(a1 + 24) = v27;
  *(a1 + 32) = v28;
  sub_24B3F1F54(v24, v25, v26, v27, v28);
  return 0;
}

uint64_t sub_24B41E168(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_24B41D78C(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_24B41E364();
        goto LABEL_28;
      }

      sub_24B41E4D4(v7 + 1);
    }

    v9 = *v3;
    sub_24B45922C();
    AwardProgress.hash(into:)(v28);
    result = sub_24B45926C();
    v10 = v9 + 56;
    v11 = -1 << *(v9 + 32);
    a2 = result & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      v13 = *(v9 + 48);
      do
      {
        v15 = v13 + 40 * a2;
        result = *v15;
        v16 = *(v15 + 8);
        if (*(v15 + 32))
        {
          if ((*(v6 + 32) & 1) != 0 && result == *v6 && ((*(v6 + 8) ^ v16) & 1) == 0 && *(v15 + 16) == *(v6 + 16))
          {
            goto LABEL_31;
          }
        }

        else if ((*(v6 + 32) & 1) == 0)
        {
          v17 = *(v15 + 24);
          v18 = *(v15 + 16);
          v20 = *(v6 + 16);
          v19 = *(v6 + 24);
          v21 = result == *v6 && v16 == *(v6 + 8);
          if (v21 || (result = sub_24B4591AC(), (result & 1) != 0))
          {
            if (v20 == v18 && v17 == v19)
            {
              goto LABEL_31;
            }
          }
        }

        a2 = (a2 + 1) & v12;
      }

      while (((*(v10 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v22 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v23 = *(v22 + 48) + 40 * a2;
  v24 = *(v6 + 16);
  *v23 = *v6;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(v6 + 32);
  v25 = *(v22 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
LABEL_31:
    result = sub_24B4591BC();
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v27;
  }

  return result;
}

void *sub_24B41E364()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8980, &qword_24B460728);
  v2 = *v0;
  v3 = sub_24B458FAC();
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v4 + 48) + v17;
        *v24 = *v18;
        *(v24 + 8) = v20;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v23;
        result = sub_24B3F1F54(v19, v20, v21, v22, v23);
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

uint64_t sub_24B41E4D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8980, &qword_24B460728);
  result = sub_24B458FBC();
  v5 = result;
  if (*(v3 + 16))
  {
    v36 = v2;
    v37 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v38 = result;
    while (v10)
    {
      v16 = __clz(__rbit64(v10));
      v41 = (v10 - 1) & v10;
LABEL_15:
      v19 = *(v3 + 48) + 40 * (v16 | (v6 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      v24 = *(v19 + 32);
      sub_24B45922C();
      v40 = v20;
      v42 = v21;
      v39 = v24;
      if (v24)
      {
        v25 = v22;
        MEMORY[0x24C2403C0](1);
        MEMORY[0x24C2403C0](v20);
        sub_24B45924C();
        v26 = v23;
        MEMORY[0x24C2403C0](v23);
      }

      else
      {
        MEMORY[0x24C2403C0](0);

        sub_24B458E6C();
        v26 = v23;
        if ((v23 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = 0;
        }

        MEMORY[0x24C2403E0](v27);
        v25 = v22;
        if ((v22 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v28 = v22;
        }

        else
        {
          v28 = 0;
        }

        MEMORY[0x24C2403E0](v28);
      }

      result = sub_24B45926C();
      v5 = v38;
      v29 = -1 << *(v38 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v12 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v14 = v42;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v12 + 8 * v31);
          if (v35 != -1)
          {
            v13 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_37;
      }

      v13 = __clz(__rbit64((-1 << v30) & ~*(v12 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v14 = v42;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v15 = *(v38 + 48) + 40 * v13;
      v10 = v41;
      *v15 = v40;
      *(v15 + 8) = v14;
      *(v15 + 16) = v26;
      *(v15 + 24) = v25;
      *(v15 + 32) = v39;
      ++*(v38 + 16);
      v3 = v37;
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v36;
        goto LABEL_35;
      }

      v18 = *(v7 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {

LABEL_35:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24B41E7D0(uint64_t a1)
{
  v2 = sub_24B41FFC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B41E80C(uint64_t a1)
{
  v2 = sub_24B41FFC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B41E860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4C52556567616D69 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B4591AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B41E8E8(uint64_t a1)
{
  v2 = sub_24B420018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B41E924(uint64_t a1)
{
  v2 = sub_24B420018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B41E960(uint64_t a1)
{
  v2 = sub_24B42006C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B41E99C(uint64_t a1)
{
  v2 = sub_24B42006C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B41E9D8(uint64_t a1)
{
  v2 = sub_24B4200C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B41EA14(uint64_t a1)
{
  v2 = sub_24B4200C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardImageLoadState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8988, &qword_24B460730);
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v33 - v3;
  v4 = sub_24B45830C();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8990, &qword_24B460738);
  v34 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v44 = &v33 - v6;
  v7 = sub_24B45836C();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8998, &qword_24B460740);
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  State = type metadata accessor for AwardImageLoadState(0);
  MEMORY[0x28223BE20](State);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE89A0, &qword_24B460748);
  v46 = *(v16 - 8);
  v47 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B41FFC4();
  sub_24B45928C();
  sub_24B412634(v45, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v26 = v34;
    v27 = v35;
    v28 = v15;
    v29 = v36;
    (*(v35 + 32))(v9, v28, v36);
    v49 = 1;
    sub_24B42006C();
    v24 = v47;
    sub_24B45910C();
    sub_24B42015C(&qword_27EFE7E38, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    v30 = v37;
    sub_24B45918C();
    (*(v26 + 8))(v44, v30);
    (*(v27 + 8))(v9, v29);
    return (*(v46 + 8))(v18, v24);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v21 = v40;
    v20 = v41;
    v22 = v38;
    (*(v40 + 32))(v38, v15, v41);
    v50 = 2;
    sub_24B420018();
    v23 = v39;
    v24 = v47;
    sub_24B45910C();
    sub_24B42015C(&qword_2810E36E0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    v25 = v43;
    sub_24B45918C();
    (*(v42 + 8))(v23, v25);
    (*(v21 + 8))(v22, v20);
    return (*(v46 + 8))(v18, v24);
  }

  v48 = 0;
  sub_24B4200C0();
  v32 = v47;
  sub_24B45910C();
  (*(v33 + 8))(v12, v10);
  return (*(v46 + 8))(v18, v32);
}

uint64_t AwardImageLoadState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE89C8, &qword_24B460750);
  v4 = *(v3 - 8);
  v58 = v3;
  v59 = v4;
  MEMORY[0x28223BE20](v3);
  v65 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE89D0, &qword_24B460758);
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  MEMORY[0x28223BE20](v6);
  v64 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE89D8, &qword_24B460760);
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE89E0, &unk_24B460768);
  v66 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v13 = &v52 - v12;
  State = type metadata accessor for AwardImageLoadState(0);
  v15 = MEMORY[0x28223BE20](State);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v52 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v52 - v21;
  v23 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24B41FFC4();
  v24 = v67;
  sub_24B45927C();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v68);
  }

  v26 = v61;
  v25 = v62;
  v53 = v20;
  v54 = v17;
  v28 = v64;
  v27 = v65;
  v67 = 0;
  v55 = v22;
  v29 = State;
  v30 = v63;
  v31 = sub_24B4590FC();
  v32 = (2 * *(v31 + 16)) | 1;
  v69 = v31;
  v70 = v31 + 32;
  v71 = 0;
  v72 = v32;
  v33 = sub_24B3E3808();
  v34 = v30;
  if (v33 == 3 || v71 != v72 >> 1)
  {
    v37 = sub_24B458FFC();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0);
    *v39 = v29;
    sub_24B45906C();
    sub_24B458FEC();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    (*(v66 + 8))(v13, v34);
    goto LABEL_9;
  }

  if (v33)
  {
    if (v33 == 1)
    {
      v73 = 1;
      sub_24B42006C();
      v35 = v67;
      sub_24B45905C();
      v36 = v66;
      if (v35)
      {
LABEL_7:
        (*(v66 + 8))(v13, v30);
LABEL_9:
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v68);
      }

      sub_24B45836C();
      sub_24B42015C(&qword_27EFE7E68, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
      v48 = v53;
      v49 = v28;
      v50 = v56;
      sub_24B4590EC();
      (*(v57 + 8))(v49, v50);
      (*(v36 + 8))(v13, v30);
      swift_unknownObjectRelease();
      v67 = 0;
      swift_storeEnumTagMultiPayload();
      v51 = v55;
      sub_24B412848(v48, v55);
      v44 = v60;
    }

    else
    {
      v73 = 2;
      sub_24B420018();
      v42 = v30;
      v43 = v67;
      sub_24B45905C();
      v44 = v60;
      v45 = v66;
      if (v43)
      {
        (*(v66 + 8))(v13, v42);
        goto LABEL_9;
      }

      v64 = v29;
      sub_24B45830C();
      sub_24B42015C(&qword_27EFE89E8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
      v46 = v54;
      v47 = v58;
      sub_24B4590EC();
      v67 = 0;
      (*(v59 + 8))(v27, v47);
      (*(v45 + 8))(v13, v42);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v51 = v55;
      sub_24B412848(v46, v55);
    }
  }

  else
  {
    v73 = 0;
    sub_24B4200C0();
    v41 = v67;
    sub_24B45905C();
    if (v41)
    {
      goto LABEL_7;
    }

    v67 = 0;
    (*(v26 + 8))(v11, v25);
    (*(v66 + 8))(v13, v30);
    swift_unknownObjectRelease();
    v51 = v55;
    swift_storeEnumTagMultiPayload();
    v44 = v60;
  }

  sub_24B412848(v51, v44);
  return __swift_destroy_boxed_opaque_existential_1(v68);
}

uint64_t AwardImageLoadState.hash(into:)(uint64_t a1)
{
  v2 = sub_24B45830C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B45836C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardImageLoadState(0);
  MEMORY[0x28223BE20](State);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B412634(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 32))(v5, v12, v2);
      MEMORY[0x24C2403C0](2);
      sub_24B42015C(&qword_27EFE8968, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      sub_24B458D9C();
      return (*(v3 + 8))(v5, v2);
    }

    else
    {
      return MEMORY[0x24C2403C0](0);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    MEMORY[0x24C2403C0](1);
    sub_24B42015C(&qword_27EFE7E70, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_24B458D9C();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t AwardImageLoadState.hashValue.getter()
{
  sub_24B45922C();
  AwardImageLoadState.hash(into:)(v1);
  return sub_24B45926C();
}

uint64_t sub_24B41FBA8()
{
  sub_24B45922C();
  AwardImageLoadState.hash(into:)(v1);
  return sub_24B45926C();
}

uint64_t sub_24B41FBEC(uint64_t a1)
{
  sub_24B45922C();
  AwardImageLoadState.hash(into:)(v2);
  return sub_24B45926C();
}

uint64_t _s13FitnessAwards19AwardImageLoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B45830C();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B45836C();
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardImageLoadState(0);
  v11 = MEMORY[0x28223BE20](State);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8A48, &qword_24B460C60);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  sub_24B412634(a1, &v29 - v18);
  sub_24B412634(a2, &v19[v20]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v26 = v32;
    sub_24B412634(v19, v15);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v26 + 32))(v9, &v19[v20], v7);
      v24 = sub_24B45834C();
      v27 = *(v26 + 8);
      v27(v9, v7);
      v27(v15, v7);
      goto LABEL_12;
    }

    (*(v26 + 8))(v15, v7);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_24B412634(v19, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v30;
      v22 = v31;
      (*(v30 + 32))(v6, &v19[v20], v31);
      v24 = sub_24B4582EC();
      v25 = *(v23 + 8);
      v25(v6, v22);
      v25(v13, v22);
LABEL_12:
      sub_24B420614(v19);
      return v24 & 1;
    }

    (*(v30 + 8))(v13, v31);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_24B4205AC(v19);
    v24 = 0;
    return v24 & 1;
  }

  sub_24B420614(v19);
  v24 = 1;
  return v24 & 1;
}

unint64_t sub_24B41FFC4()
{
  result = qword_27EFE89A8;
  if (!qword_27EFE89A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE89A8);
  }

  return result;
}

unint64_t sub_24B420018()
{
  result = qword_27EFE89B0;
  if (!qword_27EFE89B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE89B0);
  }

  return result;
}

unint64_t sub_24B42006C()
{
  result = qword_27EFE89B8;
  if (!qword_27EFE89B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE89B8);
  }

  return result;
}

unint64_t sub_24B4200C0()
{
  result = qword_27EFE89C0;
  if (!qword_27EFE89C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE89C0);
  }

  return result;
}

uint64_t sub_24B42015C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B4201E8()
{
  result = qword_27EFE89F0;
  if (!qword_27EFE89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE89F0);
  }

  return result;
}

unint64_t sub_24B420240()
{
  result = qword_27EFE89F8;
  if (!qword_27EFE89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE89F8);
  }

  return result;
}

unint64_t sub_24B420298()
{
  result = qword_27EFE8A00;
  if (!qword_27EFE8A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A00);
  }

  return result;
}

unint64_t sub_24B4202F0()
{
  result = qword_27EFE8A08;
  if (!qword_27EFE8A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A08);
  }

  return result;
}

unint64_t sub_24B420348()
{
  result = qword_27EFE8A10;
  if (!qword_27EFE8A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A10);
  }

  return result;
}

unint64_t sub_24B4203A0()
{
  result = qword_27EFE8A18;
  if (!qword_27EFE8A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A18);
  }

  return result;
}

unint64_t sub_24B4203F8()
{
  result = qword_27EFE8A20;
  if (!qword_27EFE8A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A20);
  }

  return result;
}

unint64_t sub_24B420450()
{
  result = qword_27EFE8A28;
  if (!qword_27EFE8A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A28);
  }

  return result;
}

unint64_t sub_24B4204A8()
{
  result = qword_27EFE8A30;
  if (!qword_27EFE8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A30);
  }

  return result;
}

unint64_t sub_24B420500()
{
  result = qword_27EFE8A38;
  if (!qword_27EFE8A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A38);
  }

  return result;
}

unint64_t sub_24B420558()
{
  result = qword_27EFE8A40;
  if (!qword_27EFE8A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A40);
  }

  return result;
}

uint64_t sub_24B4205AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8A48, &qword_24B460C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B420614(uint64_t a1)
{
  State = type metadata accessor for AwardImageLoadState(0);
  (*(*(State - 8) + 8))(a1, State);
  return a1;
}

FitnessAwards::FontDescriptor __swiftcall FontDescriptor.init(style:weight:)(FitnessAwards::FontStyle style, FitnessAwards::FontWeight weight)
{
  v3 = *weight;
  *v2 = *style;
  v2[1] = v3;
  result.style = style;
  return result;
}

uint64_t sub_24B42069C()
{
  if (*v0)
  {
    return 0x746867696577;
  }

  else
  {
    return 0x656C797473;
  }
}

uint64_t sub_24B4206D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v6 || (sub_24B4591AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B4591AC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B4207A4(uint64_t a1)
{
  v2 = sub_24B4209B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4207E0(uint64_t a1)
{
  v2 = sub_24B4209B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FontDescriptor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8A50, &qword_24B460C68);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4209B8();
  sub_24B45928C();
  v15 = v8;
  v14 = 0;
  sub_24B420A0C();
  sub_24B45918C();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_24B420A60();
    sub_24B45918C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24B4209B8()
{
  result = qword_27EFE8A58;
  if (!qword_27EFE8A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A58);
  }

  return result;
}

unint64_t sub_24B420A0C()
{
  result = qword_27EFE8A60;
  if (!qword_27EFE8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A60);
  }

  return result;
}

unint64_t sub_24B420A60()
{
  result = qword_27EFE8A68;
  if (!qword_27EFE8A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A68);
  }

  return result;
}

uint64_t FontDescriptor.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8A70, &qword_24B460C70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4209B8();
  sub_24B45927C();
  if (!v2)
  {
    v15 = 0;
    sub_24B420C88();
    sub_24B4590EC();
    v9 = v16;
    v13 = 1;
    sub_24B420CDC();
    sub_24B4590EC();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B420C88()
{
  result = qword_27EFE8A78;
  if (!qword_27EFE8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A78);
  }

  return result;
}

unint64_t sub_24B420CDC()
{
  result = qword_27EFE8A80;
  if (!qword_27EFE8A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A80);
  }

  return result;
}

uint64_t FontDescriptor.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x24C2403C0](*v0);
  return MEMORY[0x24C2403C0](v1);
}

uint64_t FontDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B45922C();
  MEMORY[0x24C2403C0](v1);
  MEMORY[0x24C2403C0](v2);
  return sub_24B45926C();
}

uint64_t sub_24B420E28()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B45922C();
  MEMORY[0x24C2403C0](v1);
  MEMORY[0x24C2403C0](v2);
  return sub_24B45926C();
}

uint64_t sub_24B420E88()
{
  v1 = v0[1];
  MEMORY[0x24C2403C0](*v0);
  return MEMORY[0x24C2403C0](v1);
}

uint64_t sub_24B420EC8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_24B45922C();
  MEMORY[0x24C2403C0](v2);
  MEMORY[0x24C2403C0](v3);
  return sub_24B45926C();
}

unint64_t sub_24B420F50()
{
  result = qword_27EFE8A88;
  if (!qword_27EFE8A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FontDescriptor(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
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

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FontDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
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
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B421118()
{
  result = qword_27EFE8A90;
  if (!qword_27EFE8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A90);
  }

  return result;
}

unint64_t sub_24B421170()
{
  result = qword_27EFE8A98;
  if (!qword_27EFE8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8A98);
  }

  return result;
}

unint64_t sub_24B4211C8()
{
  result = qword_27EFE8AA0;
  if (!qword_27EFE8AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8AA0);
  }

  return result;
}

uint64_t SectionDensityFactor.init(count:spacing:span:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

void static SectionDensityFactor.zero.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_24B421238()
{
  v1 = 0x676E6963617073;
  if (*v0 != 1)
  {
    v1 = 1851879539;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E756F63;
  }
}

uint64_t sub_24B421288@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B421B78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4212B0(uint64_t a1)
{
  v2 = sub_24B4214E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4212EC(uint64_t a1)
{
  v2 = sub_24B4214E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SectionDensityFactor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8AA8, &qword_24B460E80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *(v1 + 8);
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4214E8();
  sub_24B45928C();
  v14 = 0;
  sub_24B45917C();
  if (!v2)
  {
    v13 = v8;
    v12 = 1;
    sub_24B3E3CF4();
    sub_24B45918C();
    v11 = 2;
    sub_24B45917C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_24B4214E8()
{
  result = qword_27EFE8AB0;
  if (!qword_27EFE8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8AB0);
  }

  return result;
}

uint64_t SectionDensityFactor.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8AB8, &qword_24B460E88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4214E8();
  sub_24B45927C();
  if (!v2)
  {
    v15 = 0;
    v9 = sub_24B4590DC();
    v13[15] = 1;
    sub_24B3E4088();
    sub_24B4590EC();
    v11 = v14;
    v13[14] = 2;
    v12 = sub_24B4590DC();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SectionDensityFactor.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x24C2403C0](*v0);
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x24C2403E0](*&v3);
  return MEMORY[0x24C2403C0](v2);
}

uint64_t SectionDensityFactor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  sub_24B45922C();
  MEMORY[0x24C2403C0](*&v1);
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  MEMORY[0x24C2403E0](*&v4);
  MEMORY[0x24C2403C0](v3);
  return sub_24B45926C();
}

uint64_t sub_24B421880()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x24C2403C0](*v0);
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x24C2403E0](*&v3);
  return MEMORY[0x24C2403C0](v2);
}

uint64_t sub_24B4218E0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 2);
  sub_24B45922C();
  MEMORY[0x24C2403C0](*&v2);
  v5 = 0.0;
  if (v3 != 0.0)
  {
    v5 = v3;
  }

  MEMORY[0x24C2403E0](*&v5);
  MEMORY[0x24C2403C0](v4);
  return sub_24B45926C();
}

unint64_t sub_24B421964()
{
  result = qword_27EFE8AC0;
  if (!qword_27EFE8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8AC0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SectionDensityFactor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SectionDensityFactor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_24B421A74()
{
  result = qword_27EFE8AC8;
  if (!qword_27EFE8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8AC8);
  }

  return result;
}

unint64_t sub_24B421ACC()
{
  result = qword_27EFE8AD0;
  if (!qword_27EFE8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8AD0);
  }

  return result;
}

unint64_t sub_24B421B24()
{
  result = qword_27EFE8AD8;
  if (!qword_27EFE8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8AD8);
  }

  return result;
}

uint64_t sub_24B421B78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6963617073 && a2 == 0xE700000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1851879539 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B4591AC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t AwardLockupState.init(templateUniqueName:layout:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for AwardLockupState(0);
  sub_24B421D80(a3, &a5[*(v8 + 20)]);
  v9 = *(v8 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v11 = *(*(v10 - 8) + 32);

  return v11(&a5[v9], a4, v10);
}

uint64_t type metadata accessor for AwardLockupState(uint64_t a1)
{
  result = qword_2810E33C0;
  if (!qword_2810E33C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B421D80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardLockupLayout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AwardLockupState.templateUniqueName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AwardLockupState.layout.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AwardLockupState(0) + 20);

  return sub_24B421EA4(a1, v3);
}

uint64_t sub_24B421EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardLockupLayout(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AwardLockupState.description.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AwardLockupState(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AwardLockupState.description.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AwardLockupState(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_24B4220A8()
{
  v1 = 0x74756F79616CLL;
  if (*v0 != 1)
  {
    v1 = 0x7470697263736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_24B42210C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B422E24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B422134(uint64_t a1)
{
  v2 = sub_24B4223C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B422170(uint64_t a1)
{
  v2 = sub_24B4223C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardLockupState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8AE0, &qword_24B4610A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4223C0();
  sub_24B45928C();
  v8[15] = 0;
  sub_24B45914C();
  if (!v1)
  {
    type metadata accessor for AwardLockupState(0);
    v8[14] = 1;
    type metadata accessor for AwardLockupLayout(0);
    sub_24B4228E8(&qword_27EFE8AF0, &protocol conformance descriptor for AwardLockupLayout);
    sub_24B45918C();
    v8[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
    sub_24B42292C(&qword_27EFE8AF8, MEMORY[0x277D04390]);
    sub_24B45918C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24B4223C0()
{
  result = qword_27EFE8AE8;
  if (!qword_27EFE8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8AE8);
  }

  return result;
}

unint64_t sub_24B422414()
{
  result = qword_27EFE8B00;
  if (!qword_27EFE8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8B00);
  }

  return result;
}

unint64_t sub_24B422468()
{
  result = qword_27EFE8B08;
  if (!qword_27EFE8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8B08);
  }

  return result;
}

uint64_t AwardLockupState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - v3;
  v4 = type metadata accessor for AwardLockupLayout(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8B10, &qword_24B4610B0);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for AwardLockupState(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4223C0();
  v32 = v9;
  v13 = v33;
  sub_24B45927C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = a1;
  v25 = v12;
  v36 = 0;
  v15 = v30;
  v16 = sub_24B4590AC();
  v17 = v25;
  *v25 = v16;
  v17[1] = v18;
  v33 = v18;
  v35 = 1;
  sub_24B4228E8(&qword_27EFE8B18, &protocol conformance descriptor for AwardLockupLayout);
  v19 = v6;
  sub_24B4590EC();
  v20 = v25;
  sub_24B421D80(v19, v25 + *(v10 + 20));
  v34 = 2;
  sub_24B42292C(&qword_27EFE8B20, MEMORY[0x277D04398]);
  v22 = v28;
  v21 = v29;
  sub_24B4590EC();
  (*(v15 + 8))(v32, v31);
  (*(v26 + 32))(v20 + *(v10 + 24), v22, v21);
  sub_24B4229A4(v20, v27, type metadata accessor for AwardLockupState);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return sub_24B422A0C(v20, type metadata accessor for AwardLockupState);
}

uint64_t sub_24B4228E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AwardLockupLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B42292C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7DB8, &qword_24B4610A0);
    sub_24B422414();
    sub_24B422468();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B4229A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B422A0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static AwardLockupState.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24B4591AC() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for AwardLockupState(0);
  if (!_s13FitnessAwards17AwardLockupLayoutV2eeoiySbAC_ACtFZ_0((a1 + *(v5 + 20)), (a2 + *(v5 + 20))))
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = sub_24B3FB720();

  return MEMORY[0x282159AE8](a1 + v6, a2 + v6, &type metadata for AwardDescription, v7);
}

uint64_t sub_24B422B4C(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_24B4591AC() & 1) == 0 || !_s13FitnessAwards17AwardLockupLayoutV2eeoiySbAC_ACtFZ_0((a1 + *(a3 + 20)), (a2 + *(a3 + 20))))
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v8 = sub_24B3FB720();

  return MEMORY[0x282159AE8](a1 + v7, a2 + v7, &type metadata for AwardDescription, v8);
}

void sub_24B422C1C(uint64_t a1)
{
  type metadata accessor for AwardLockupLayout(319);
  if (v1 <= 0x3F)
  {
    sub_24B422CB0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B422CB0(uint64_t a1)
{
  if (!qword_2810E27D8)
  {
    sub_24B3FB720();
    v1 = sub_24B458D1C();
    if (!v2)
    {
      atomic_store(v1, &qword_2810E27D8);
    }
  }
}

unint64_t sub_24B422D20()
{
  result = qword_27EFE8B28;
  if (!qword_27EFE8B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8B28);
  }

  return result;
}

unint64_t sub_24B422D78()
{
  result = qword_27EFE8B30;
  if (!qword_27EFE8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8B30);
  }

  return result;
}

unint64_t sub_24B422DD0()
{
  result = qword_27EFE8B38;
  if (!qword_27EFE8B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8B38);
  }

  return result;
}

uint64_t sub_24B422E24(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000024B466A10 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 2;
  }

  else
  {
    v5 = sub_24B4591AC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t AwardProgressState.init(fontDescriptor:templateUniqueName:loadState:storefrontLocale:)@<X0>(_WORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = *a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  v9 = type metadata accessor for AwardProgressState(0);
  sub_24B3EDF64(a4, a6 + *(v9 + 24));
  v10 = *(v9 + 28);
  v11 = sub_24B45839C();
  v12 = *(*(v11 - 8) + 32);

  return v12(a6 + v10, a5, v11);
}

uint64_t type metadata accessor for AwardProgressState(uint64_t a1)
{
  result = qword_2810E30E8;
  if (!qword_2810E30E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AwardProgressState.templateUniqueName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AwardProgressState.loadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AwardProgressState(0) + 24);

  return sub_24B423104(a1, v3);
}

uint64_t sub_24B423104(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardProgressLoadState(0);
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t AwardProgressState.storefrontLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AwardProgressState(0) + 28);
  v4 = sub_24B45839C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AwardProgressState.storefrontLocale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AwardProgressState(0) + 28);
  v4 = sub_24B45839C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t sub_24B4232F0()
{
  v1 = 0x63736544746E6F66;
  v2 = 0x7461745364616F6CLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B423380@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4243F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4233A8(uint64_t a1)
{
  v2 = sub_24B4236CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4233E4(uint64_t a1)
{
  v2 = sub_24B4236CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardProgressState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8B40, &qword_24B461280);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4236CC();
  sub_24B45928C();
  v11 = *v3;
  v10[13] = 0;
  sub_24B423720();
  sub_24B45918C();
  if (!v2)
  {
    v10[12] = 1;
    sub_24B45914C();
    type metadata accessor for AwardProgressState(0);
    v10[11] = 2;
    type metadata accessor for AwardProgressLoadState(0);
    sub_24B4241D4(&qword_27EFE8B58, type metadata accessor for AwardProgressLoadState, &protocol conformance descriptor for AwardProgressLoadState);
    sub_24B45918C();
    v10[10] = 3;
    sub_24B45839C();
    sub_24B4241D4(&qword_27EFE8B60, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
    sub_24B45918C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24B4236CC()
{
  result = qword_27EFE8B48;
  if (!qword_27EFE8B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8B48);
  }

  return result;
}

unint64_t sub_24B423720()
{
  result = qword_27EFE8B50;
  if (!qword_27EFE8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8B50);
  }

  return result;
}

uint64_t AwardProgressState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v28 = sub_24B45839C();
  v24 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v26 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardProgressLoadState(0);
  MEMORY[0x28223BE20](State);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8B68, &qword_24B461288);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v24 - v7;
  v9 = type metadata accessor for AwardProgressState(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24B4236CC();
  v13 = v30;
  sub_24B45927C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v30 = v6;
  v14 = v27;
  v15 = v28;
  v16 = v11;
  v35 = 0;
  sub_24B423C18();
  v17 = v29;
  sub_24B4590EC();
  v18 = v16;
  *v16 = v36;
  v34 = 1;
  *(v16 + 1) = sub_24B4590AC();
  *(v16 + 2) = v19;
  v33 = 2;
  sub_24B4241D4(&qword_27EFE8B78, type metadata accessor for AwardProgressLoadState, &protocol conformance descriptor for AwardProgressLoadState);
  v20 = v30;
  sub_24B4590EC();
  sub_24B3EDF64(v20, v18 + *(v9 + 24));
  v32 = 3;
  sub_24B4241D4(&qword_27EFE8B80, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
  v21 = v18;
  v22 = v26;
  sub_24B4590EC();
  (*(v14 + 8))(v8, v17);
  (*(v24 + 32))(v21 + *(v9 + 28), v22, v15);
  sub_24B423C6C(v21, v25, type metadata accessor for AwardProgressState);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_24B423CD4(v21, type metadata accessor for AwardProgressState);
}

unint64_t sub_24B423C18()
{
  result = qword_27EFE8B70;
  if (!qword_27EFE8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8B70);
  }

  return result;
}

uint64_t sub_24B423C6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B423CD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AwardProgressState.hash(into:)(uint64_t a1)
{
  v3 = sub_24B45836C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardProgressLoadState(0);
  MEMORY[0x28223BE20](State);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[1];
  MEMORY[0x24C2403C0](*v1);
  MEMORY[0x24C2403C0](v10);
  sub_24B458E6C();
  v11 = type metadata accessor for AwardProgressState(0);
  sub_24B423C6C(&v1[*(v11 + 24)], v9, type metadata accessor for AwardProgressLoadState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *(v9 + 1);
      v15[0] = *v9;
      v15[1] = v13;
      v16 = v9[32];
      MEMORY[0x24C2403C0](2);
      AwardProgress.hash(into:)(a1);
      sub_24B3EE5B0(v15);
    }

    else
    {
      MEMORY[0x24C2403C0](0);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x24C2403C0](1);
    sub_24B4241D4(&qword_27EFE7E70, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_24B458D9C();
    (*(v4 + 8))(v6, v3);
  }

  sub_24B45839C();
  sub_24B4241D4(&qword_27EFE8B88, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  return sub_24B458D9C();
}

uint64_t AwardProgressState.hashValue.getter()
{
  sub_24B45922C();
  AwardProgressState.hash(into:)(v1);
  return sub_24B45926C();
}

uint64_t sub_24B42404C()
{
  sub_24B45922C();
  AwardProgressState.hash(into:)(v1);
  return sub_24B45926C();
}

uint64_t sub_24B424090(uint64_t a1)
{
  sub_24B45922C();
  AwardProgressState.hash(into:)(v2);
  return sub_24B45926C();
}

uint64_t _s13FitnessAwards18AwardProgressStateV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v5 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
    if (v5 || (sub_24B4591AC() & 1) != 0)
    {
      v6 = type metadata accessor for AwardProgressState(0);
      if (_s13FitnessAwards22AwardProgressLoadStateO2eeoiySbAC_ACtFZ_0(&a1[*(v6 + 24)], &a2[*(v6 + 24)]))
      {

        JUMPOUT(0x24C23F500);
      }
    }
  }

  return 0;
}

uint64_t sub_24B4241D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B424244(uint64_t a1)
{
  result = type metadata accessor for AwardProgressLoadState(319);
  if (v2 <= 0x3F)
  {
    result = sub_24B45839C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24B4242F4()
{
  result = qword_27EFE8B90;
  if (!qword_27EFE8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8B90);
  }

  return result;
}

unint64_t sub_24B42434C()
{
  result = qword_27EFE8B98;
  if (!qword_27EFE8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8B98);
  }

  return result;
}

unint64_t sub_24B4243A4()
{
  result = qword_27EFE8BA0;
  if (!qword_27EFE8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8BA0);
  }

  return result;
}

uint64_t sub_24B4243F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63736544746E6F66 && a2 == 0xEE00726F74706972;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B466A10 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B466F50 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B4591AC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t PlaceholderReferenceType.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6472617761;
    v6 = 0xD000000000000013;
    if (a1 != 2)
    {
      v6 = 0x7974696C61646F6DLL;
    }

    if (a1)
    {
      v5 = 0x6169726F74696465;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 7367028;
    v2 = 0x72656E69617274;
    if (a1 != 7)
    {
      v2 = 0x74756F6B726F77;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7473696C79616C70;
    if (a1 != 4)
    {
      v3 = 0x6D6172676F7270;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24B42469C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = PlaceholderReferenceType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == PlaceholderReferenceType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24B4591AC();
  }

  return v8 & 1;
}

unint64_t sub_24B424724@<X0>(Swift::String *a1@<X0>, FitnessAwards::PlaceholderReferenceType_optional *a2@<X8>)
{
  result = _s13FitnessAwards24PlaceholderReferenceTypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_24B424754@<X0>(unint64_t *a1@<X8>)
{
  result = PlaceholderReferenceType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24B424830()
{
  v1 = *v0;
  sub_24B45922C();
  PlaceholderReferenceType.rawValue.getter(v1);
  sub_24B458E6C();

  return sub_24B45926C();
}

uint64_t sub_24B424894(uint64_t a1)
{
  PlaceholderReferenceType.rawValue.getter(*v1);
  sub_24B458E6C();
}

uint64_t sub_24B4248E8(uint64_t a1)
{
  v2 = *v1;
  sub_24B45922C();
  PlaceholderReferenceType.rawValue.getter(v2);
  sub_24B458E6C();

  return sub_24B45926C();
}

unint64_t _s13FitnessAwards24PlaceholderReferenceTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24B45904C();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24B424998()
{
  result = qword_27EFE8BA8;
  if (!qword_27EFE8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8BA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaceholderReferenceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaceholderReferenceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B424B3C()
{
  result = qword_2810E2C68;
  if (!qword_2810E2C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2C68);
  }

  return result;
}

id static NSBundle.awardsLocalization.getter(uint64_t a1)
{
  type metadata accessor for AwardsLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];

  return v2;
}

uint64_t AwardHeaderState.init(templateUniqueName:layout:tvLayout:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v18 = *(a4 + 32);
  v10 = *(a4 + 48);
  *a6 = a1;
  *(a6 + 1) = a2;
  v11 = type metadata accessor for AwardHeaderState(0);
  sub_24B424D54(a3, &a6[v11[5]]);
  v12 = &a6[v11[6]];
  v13 = *(a4 + 16);
  *v12 = *a4;
  *(v12 + 1) = v13;
  *(v12 + 2) = v18;
  *(v12 + 6) = v10;
  v14 = v11[7];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v16 = *(*(v15 - 8) + 32);

  return v16(&a6[v14], a5, v15);
}

uint64_t type metadata accessor for AwardHeaderState(uint64_t a1)
{
  result = qword_27EFE8BE8;
  if (!qword_27EFE8BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B424D54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardHeaderLayout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AwardHeaderState.templateUniqueName.getter()
{
  v1 = *v0;

  return v1;
}

double AwardHeaderState.tvLayout.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AwardHeaderState(0) + 24);
  result = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = result;
  return result;
}

uint64_t AwardHeaderState.description.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AwardHeaderState(0) + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AwardHeaderState.description.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AwardHeaderState(0) + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t sub_24B424FD4()
{
  v1 = 0x74756F79616CLL;
  v2 = 0x74756F79614C7674;
  if (*v0 != 2)
  {
    v2 = 0x7470697263736564;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B425058@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B425D24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B425080(uint64_t a1)
{
  v2 = sub_24B425364();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4250BC(uint64_t a1)
{
  v2 = sub_24B425364();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardHeaderState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8BB0, &qword_24B4615F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B425364();
  sub_24B45928C();
  LOBYTE(v15) = 0;
  sub_24B45914C();
  if (!v2)
  {
    v9 = type metadata accessor for AwardHeaderState(0);
    LOBYTE(v15) = 1;
    type metadata accessor for AwardHeaderLayout(0);
    sub_24B4258A4(&qword_27EFE8BC0, &protocol conformance descriptor for AwardHeaderLayout);
    sub_24B45918C();
    v10 = (v3 + *(v9 + 24));
    v11 = *(v10 + 6);
    v12 = v10[1];
    v15 = *v10;
    v16 = v12;
    v17 = v10[2];
    v18 = v11;
    v14[15] = 2;
    sub_24B4253B8();
    sub_24B45918C();
    LOBYTE(v15) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
    sub_24B42292C(&qword_27EFE8AF8, MEMORY[0x277D04390]);
    sub_24B45918C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24B425364()
{
  result = qword_27EFE8BB8;
  if (!qword_27EFE8BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8BB8);
  }

  return result;
}

unint64_t sub_24B4253B8()
{
  result = qword_27EFE8BC8;
  if (!qword_27EFE8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8BC8);
  }

  return result;
}

uint64_t AwardHeaderState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v29 = v25 - v3;
  v4 = type metadata accessor for AwardHeaderLayout(0);
  MEMORY[0x28223BE20](v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8BD0, &qword_24B461600);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v25 - v8;
  v10 = type metadata accessor for AwardHeaderState(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B425364();
  v32 = v9;
  v13 = v33;
  sub_24B45927C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v6;
  v15 = v30;
  LOBYTE(v34) = 0;
  *v12 = sub_24B4590AC();
  v12[1] = v16;
  v25[1] = v16;
  v33 = v12;
  LOBYTE(v34) = 1;
  sub_24B4258A4(&qword_27EFE8BD8, &protocol conformance descriptor for AwardHeaderLayout);
  sub_24B4590EC();
  sub_24B424D54(v14, v33 + v10[5]);
  v38 = 2;
  sub_24B4258E8();
  sub_24B4590EC();
  v17 = a1;
  v18 = v37;
  v19 = v33 + v10[6];
  v20 = v35;
  *v19 = v34;
  *(v19 + 1) = v20;
  *(v19 + 2) = v36;
  *(v19 + 6) = v18;
  LOBYTE(v34) = 3;
  sub_24B42292C(&qword_27EFE8B20, MEMORY[0x277D04398]);
  v21 = v28;
  v22 = v29;
  sub_24B4590EC();
  (*(v15 + 8))(v32, v31);
  v24 = v33;
  (*(v26 + 32))(v33 + v10[7], v22, v21);
  sub_24B42593C(v24, v27, type metadata accessor for AwardHeaderState);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_24B4259A4(v24, type metadata accessor for AwardHeaderState);
}

uint64_t sub_24B4258A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AwardHeaderLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B4258E8()
{
  result = qword_27EFE8BE0;
  if (!qword_27EFE8BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8BE0);
  }

  return result;
}

uint64_t sub_24B42593C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B4259A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s13FitnessAwards16AwardHeaderStateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24B4591AC() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for AwardHeaderState(0);
  if (!_s13FitnessAwards17AwardHeaderLayoutV2eeoiySbAC_ACtFZ_0((a1 + v5[5]), (a2 + v5[5])))
  {
    return 0;
  }

  v6 = a1 + v5[6];
  v7 = *(v6 + 6);
  v8 = *(v6 + 1);
  v17[0] = *v6;
  v17[1] = v8;
  v17[2] = *(v6 + 2);
  v18 = v7;
  v9 = a2 + v5[6];
  v10 = *(v9 + 6);
  v11 = *(v9 + 1);
  v15[0] = *v9;
  v15[1] = v11;
  v15[2] = *(v9 + 2);
  v16 = v10;
  if (!_s13FitnessAwards19TVAwardHeaderLayoutV2eeoiySbAC_ACtFZ_0(v17, v15))
  {
    return 0;
  }

  v12 = v5[7];
  v13 = sub_24B3FB720();

  return MEMORY[0x282159AE8](a1 + v12, a2 + v12, &type metadata for AwardDescription, v13);
}

void sub_24B425B70(uint64_t a1)
{
  type metadata accessor for AwardHeaderLayout(319);
  if (v1 <= 0x3F)
  {
    sub_24B422CB0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24B425C20()
{
  result = qword_27EFE8BF8;
  if (!qword_27EFE8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8BF8);
  }

  return result;
}

unint64_t sub_24B425C78()
{
  result = qword_27EFE8C00;
  if (!qword_27EFE8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8C00);
  }

  return result;
}

unint64_t sub_24B425CD0()
{
  result = qword_27EFE8C08;
  if (!qword_27EFE8C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8C08);
  }

  return result;
}

uint64_t sub_24B425D24(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000024B466A10 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74756F79614C7674 && a2 == 0xE800000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 3;
  }

  else
  {
    v5 = sub_24B4591AC();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t AwardRemoteParticipantStatusMonitorState.earnedLoadStates.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AwardRemoteParticipantStatusMonitorState.imageLoadStates.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t AwardRemoteParticipantStatusMonitorState.progressLoadStates.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t AwardRemoteParticipantStatusMonitorState.suggestedWorkoutsStates.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t type metadata accessor for AwardRemoteParticipantStatusMonitorState(uint64_t a1)
{
  result = qword_27EFE8CB8;
  if (!qword_27EFE8CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AwardRemoteParticipantStatusMonitorState.toastLoadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AwardRemoteParticipantStatusMonitorState(0) + 32);

  return sub_24B4260C0(a1, v3);
}

uint64_t sub_24B4260C0(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardToastLoadState(0);
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t AwardRemoteParticipantStatusMonitorState.init(earnedLoadStates:imageLoadStates:progressLoadStates:suggestedWorkoutsStates:toastLoadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v7 = a6 + *(type metadata accessor for AwardRemoteParticipantStatusMonitorState(0) + 32);

  return sub_24B3D00C4(a5, v7);
}

unint64_t sub_24B4261C0()
{
  v1 = *v0;
  v2 = 0x616F4C6567616D69;
  v3 = 0xD000000000000017;
  if (v1 != 3)
  {
    v3 = 0x616F4C7473616F74;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B426280@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B42787C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4262A8(uint64_t a1)
{
  v2 = sub_24B426FC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4262E4(uint64_t a1)
{
  v2 = sub_24B426FC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardRemoteParticipantStatusMonitorState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C10, &qword_24B4617D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B426FC4();
  sub_24B45928C();
  v11 = *v3;
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C20, &qword_24B4617D8);
  sub_24B427018();
  sub_24B45918C();
  if (!v2)
  {
    v11 = v3[1];
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C30, &unk_24B4617E0);
    sub_24B4270D4(&qword_27EFE8C38, sub_24B427158, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_24B45918C();
    v11 = v3[2];
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C50, &qword_24B4617F0);
    sub_24B427244();
    sub_24B45918C();
    v11 = v3[3];
    HIBYTE(v10) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C60, &qword_24B4617F8);
    sub_24B427300(&qword_27EFE8C68, sub_24B3D898C, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_24B45918C();
    type metadata accessor for AwardRemoteParticipantStatusMonitorState(0);
    LOBYTE(v11) = 4;
    type metadata accessor for AwardToastLoadState(0);
    sub_24B4276F4(&qword_27EFE8C70, type metadata accessor for AwardToastLoadState, &protocol conformance descriptor for AwardToastLoadState);
    sub_24B45918C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AwardRemoteParticipantStatusMonitorState.hash(into:)(uint64_t a1)
{
  v3 = sub_24B45836C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardToastLoadState(0);
  MEMORY[0x28223BE20](State);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B41B3E4(a1, *v1);
  sub_24B41AB64(a1, v1[1]);
  sub_24B41A504(a1, v1[2]);
  sub_24B41A114(a1, v1[3]);
  v10 = type metadata accessor for AwardRemoteParticipantStatusMonitorState(0);
  sub_24B4275E8(v1 + *(v10 + 32), v9, type metadata accessor for AwardToastLoadState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *v9;
      v13 = *(v9 + 1);
      v14 = *(v9 + 2);
      v15 = *(v9 + 3);
      v16 = *(v9 + 4);
      v17 = *(v9 + 5);
      v18 = v9[48];
      MEMORY[0x24C2403C0](2);
      v20[1] = v12;
      v20[2] = v13;
      v20[3] = v14;
      v20[4] = v15;
      v20[5] = v16;
      v20[6] = v17;
      v21 = v18;
      AwardToastDetail.hash(into:)(a1);
    }

    else
    {
      return MEMORY[0x24C2403C0](0);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x24C2403C0](1);
    sub_24B4276F4(&qword_27EFE7E70, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_24B458D9C();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t AwardRemoteParticipantStatusMonitorState.hashValue.getter()
{
  sub_24B45922C();
  AwardRemoteParticipantStatusMonitorState.hash(into:)(v1);
  return sub_24B45926C();
}

uint64_t AwardRemoteParticipantStatusMonitorState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  State = type metadata accessor for AwardToastLoadState(0);
  MEMORY[0x28223BE20](State);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C78, &qword_24B461800);
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = v19 - v6;
  v8 = type metadata accessor for AwardRemoteParticipantStatusMonitorState(0);
  MEMORY[0x28223BE20](v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B426FC4();
  v22 = v7;
  v11 = v24;
  sub_24B45927C();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v5;
  v12 = v21;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C20, &qword_24B4617D8);
  v25 = 0;
  sub_24B427384();
  v14 = v23;
  v15 = v22;
  sub_24B4590EC();
  v19[1] = v26;
  *v13 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C30, &unk_24B4617E0);
  v25 = 1;
  sub_24B4270D4(&qword_27EFE8C88, sub_24B427440, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_24B4590EC();
  v13[1] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C50, &qword_24B4617F0);
  v25 = 2;
  sub_24B42752C();
  v19[0] = 0;
  sub_24B4590EC();
  v16 = a1;
  v13[2] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C60, &qword_24B4617F8);
  v25 = 3;
  sub_24B427300(&qword_27EFE8CA8, sub_24B3D8E2C, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_24B4590EC();
  v13[3] = v26;
  LOBYTE(v26) = 4;
  sub_24B4276F4(&qword_27EFE8CB0, type metadata accessor for AwardToastLoadState, &protocol conformance descriptor for AwardToastLoadState);
  v17 = v24;
  sub_24B4590EC();
  (*(v12 + 8))(v15, v14);
  sub_24B3D00C4(v17, v13 + *(v8 + 32));
  sub_24B4275E8(v13, v20, type metadata accessor for AwardRemoteParticipantStatusMonitorState);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return sub_24B427650(v13);
}

uint64_t sub_24B426EA8()
{
  sub_24B45922C();
  AwardRemoteParticipantStatusMonitorState.hash(into:)(v1);
  return sub_24B45926C();
}

uint64_t sub_24B426EEC(uint64_t a1)
{
  sub_24B45922C();
  AwardRemoteParticipantStatusMonitorState.hash(into:)(v2);
  return sub_24B45926C();
}

uint64_t _s13FitnessAwards40AwardRemoteParticipantStatusMonitorStateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_24B3D0270(*a1, *a2) & 1) == 0 || (sub_24B3D1534(a1[1], a2[1]) & 1) == 0 || (sub_24B3D0A7C(a1[2], a2[2]) & 1) == 0 || (sub_24B3D1A04(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for AwardRemoteParticipantStatusMonitorState(0) + 32);

  return _s13FitnessAwards19AwardToastLoadStateO2eeoiySbAC_ACtFZ_0(a1 + v4, a2 + v4);
}

unint64_t sub_24B426FC4()
{
  result = qword_27EFE8C18;
  if (!qword_27EFE8C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8C18);
  }

  return result;
}

unint64_t sub_24B427018()
{
  result = qword_27EFE8C28;
  if (!qword_27EFE8C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8C20, &qword_24B4617D8);
    sub_24B4276F4(&qword_27EFE7918, type metadata accessor for AwardEarnedLoadState, &protocol conformance descriptor for AwardEarnedLoadState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8C28);
  }

  return result;
}

uint64_t sub_24B4270D4(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8C30, &unk_24B4617E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B427158()
{
  result = qword_27EFE8C40;
  if (!qword_27EFE8C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8090, &qword_24B45C2C0);
    sub_24B4276F4(&qword_2810E2768, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
    sub_24B4276F4(&qword_27EFE8C48, type metadata accessor for AwardImageLoadState, &protocol conformance descriptor for AwardImageLoadState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8C40);
  }

  return result;
}

unint64_t sub_24B427244()
{
  result = qword_27EFE8C58;
  if (!qword_27EFE8C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8C50, &qword_24B4617F0);
    sub_24B4276F4(&qword_27EFE8B58, type metadata accessor for AwardProgressLoadState, &protocol conformance descriptor for AwardProgressLoadState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8C58);
  }

  return result;
}

uint64_t sub_24B427300(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8C60, &qword_24B4617F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B427384()
{
  result = qword_27EFE8C80;
  if (!qword_27EFE8C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8C20, &qword_24B4617D8);
    sub_24B4276F4(&qword_27EFE7938, type metadata accessor for AwardEarnedLoadState, &protocol conformance descriptor for AwardEarnedLoadState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8C80);
  }

  return result;
}

unint64_t sub_24B427440()
{
  result = qword_27EFE8C90;
  if (!qword_27EFE8C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8090, &qword_24B45C2C0);
    sub_24B4276F4(&qword_27EFE7A60, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
    sub_24B4276F4(&qword_27EFE8C98, type metadata accessor for AwardImageLoadState, &protocol conformance descriptor for AwardImageLoadState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8C90);
  }

  return result;
}

unint64_t sub_24B42752C()
{
  result = qword_27EFE8CA0;
  if (!qword_27EFE8CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8C50, &qword_24B4617F0);
    sub_24B4276F4(&qword_27EFE8B78, type metadata accessor for AwardProgressLoadState, &protocol conformance descriptor for AwardProgressLoadState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8CA0);
  }

  return result;
}

uint64_t sub_24B4275E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B427650(uint64_t a1)
{
  v2 = type metadata accessor for AwardRemoteParticipantStatusMonitorState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B4276F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B427778()
{
  result = qword_27EFE8CC8;
  if (!qword_27EFE8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8CC8);
  }

  return result;
}

unint64_t sub_24B4277D0()
{
  result = qword_27EFE8CD0;
  if (!qword_27EFE8CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8CD0);
  }

  return result;
}

unint64_t sub_24B427828()
{
  result = qword_27EFE8CD8;
  if (!qword_27EFE8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8CD8);
  }

  return result;
}

uint64_t sub_24B42787C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000024B466FA0 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616F4C6567616D69 && a2 == 0xEF73657461745364 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B466FC0 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024B466FE0 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616F4C7473616F74 && a2 == 0xEE00657461745364)
  {

    return 4;
  }

  else
  {
    v5 = sub_24B4591AC();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

__n128 AwardHeaderFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  type metadata accessor for AwardHeaderFeature(0);
  sub_24B45835C();
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t type metadata accessor for AwardHeaderFeature(uint64_t a1)
{
  result = qword_27EFE8D00;
  if (!qword_27EFE8D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AwardHeaderFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v33 = a3;
  v4 = type metadata accessor for AwardHeaderFeature(0);
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7F30, &qword_24B45BCB0);
  v7 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v29 - v8;
  v10 = *a2;
  v11 = a2[1];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
  v29 = v12[12];
  v13 = v12[16];
  v14 = v12[20];
  v15 = &v9[v12[24]];
  v34 = v10;
  v35 = v11;
  v36 = 0;
  sub_24B427E30();
  swift_bridgeObjectRetain_n();
  sub_24B458F9C();
  v16 = *MEMORY[0x277D04400];
  v17 = sub_24B458D4C();
  (*(*(v17 - 8) + 104))(&v9[v13], v16, v17);
  v18 = *MEMORY[0x277D043E0];
  v19 = sub_24B458D3C();
  (*(*(v19 - 8) + 104))(&v9[v14], v18, v19);
  sub_24B428140(v32, v6);
  v20 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v21 = v30;
  v22 = swift_allocObject();
  *(v22 + 16) = v10;
  *(v22 + 24) = v11;
  v23 = v22 + v20;
  v24 = v33;
  sub_24B4281A4(v6, v23);
  *v15 = &unk_24B461A28;
  *(v15 + 1) = v22;
  sub_24B458EFC();
  (*(v7 + 104))(v9, *MEMORY[0x277D043B0], v21);
  v25 = *v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_24B3F14C0(0, v25[2] + 1, 1, v25);
  }

  v27 = v25[2];
  v26 = v25[3];
  if (v27 >= v26 >> 1)
  {
    v25 = sub_24B3F14C0((v26 > 1), v27 + 1, 1, v25);
  }

  v25[2] = v27 + 1;
  result = (*(v7 + 32))(v25 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v27, v9, v21);
  *v24 = v25;
  return result;
}

unint64_t sub_24B427E30()
{
  result = qword_27EFE8CE0;
  if (!qword_27EFE8CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8CE0);
  }

  return result;
}

uint64_t sub_24B427E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  sub_24B458EEC();
  v4[5] = sub_24B458EDC();
  v6 = sub_24B458EBC();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_24B427F20, v6, v5);
}

uint64_t sub_24B427F20()
{
  v14 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = sub_24B45847C();
  __swift_project_value_buffer(v1, qword_2810E3618);

  v2 = sub_24B45845C();
  v3 = sub_24B458F4C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_24B3F17BC(v5, v4, &v13);
    _os_log_impl(&dword_24B3CE000, v2, v3, "[AwardHeaderFeature] Resolving award description state on viewAppeared for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x24C2408A0](v7, -1, -1);
    MEMORY[0x24C2408A0](v6, -1, -1);
  }

  v12 = (**(v0 + 32) + ***(v0 + 32));
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_24B40BE9C;
  v10 = *(v0 + 16);
  v9 = *(v0 + 24);

  return v12(v10, v9);
}

uint64_t sub_24B428140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardHeaderFeature(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4281A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardHeaderFeature(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B428208(uint64_t a1)
{
  v4 = *(type metadata accessor for AwardHeaderFeature(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B3F1E60;

  return sub_24B427E84(a1, v6, v7, v1 + v5);
}

unint64_t sub_24B428300()
{
  result = qword_27EFE8CE8;
  if (!qword_27EFE8CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8CE8);
  }

  return result;
}

unint64_t sub_24B428358()
{
  result = qword_27EFE8CF0;
  if (!qword_27EFE8CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8CF0);
  }

  return result;
}

unint64_t sub_24B4283B0()
{
  result = qword_27EFE8CF8;
  if (!qword_27EFE8CF8)
  {
    type metadata accessor for AwardHeaderState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8CF8);
  }

  return result;
}

uint64_t sub_24B428430(uint64_t a1)
{
  result = sub_24B45836C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24B4284CC()
{
  result = qword_27EFE8D10;
  if (!qword_27EFE8D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8D10);
  }

  return result;
}

uint64_t sub_24B428520@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_24B458F6C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_24B42858C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8E10, qword_24B461C90);
  sub_24B3DF11C(&qword_27EFE8E18, &qword_27EFE8E10, qword_24B461C90, MEMORY[0x277D04410]);

  return sub_24B45851C();
}

uint64_t sub_24B42862C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  swift_getFunctionTypeMetadata1();
  return sub_24B4583AC();
}

uint64_t (*sub_24B4286CC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  swift_getFunctionTypeMetadata1();
  sub_24B4583CC();
  sub_24B4583BC();
  v3 = swift_allocObject();
  v4 = *(a1 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 32) = v6;
  return sub_24B42D3A4;
}

uint64_t AwardToastView.init(store:imageViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *a7 = sub_24B3DB5A8;
  *(a7 + 8) = v14;
  *(a7 + 16) = 0;
  type metadata accessor for AwardToastView(0, a5, a6, v15);
  return sub_24B42862C(a3, a4, a5, a6);
}

uint64_t AwardToastView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v172 = a2;
  v166 = sub_24B45873C();
  MEMORY[0x28223BE20](v166);
  v165 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24B4584FC();
  v170 = *(v4 - 8);
  v171 = v4;
  MEMORY[0x28223BE20](v4);
  v168 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8D18, &qword_24B461BA0);
  v169 = *(v183 - 8);
  v6 = MEMORY[0x28223BE20](v183);
  v167 = &v117 - v7;
  v185 = a1;
  v8 = *(a1 - 8);
  a1 -= 8;
  v164 = v8;
  MEMORY[0x28223BE20](v6);
  v184 = v9;
  v163 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B4584BC();
  v161 = *(v10 - 8);
  v162 = v10;
  MEMORY[0x28223BE20](v10);
  v160 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24B458C8C();
  v158 = *(v12 - 8);
  v159 = v12;
  MEMORY[0x28223BE20](v12);
  v157 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8D20, &qword_24B461BA8);
  v182 = v14;
  MEMORY[0x28223BE20](v14);
  v173 = &v117 - v15;
  v188 = *(a1 + 24);
  sub_24B4585BC();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D28, &qword_24B461BB0);
  sub_24B4585BC();
  v17 = sub_24B458F6C();
  v18 = sub_24B42BE44();
  v192 = v16;
  v193 = MEMORY[0x277D83B88];
  v194 = v17;
  v195 = v18;
  v196 = MEMORY[0x277D83B98];
  sub_24B458C5C();
  v186 = *(a1 + 32);
  v216 = v186;
  v217 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v215 = MEMORY[0x277CDF748];
  v213 = swift_getWitnessTable();
  v212 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B458C3C();
  sub_24B45872C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D50, &qword_24B461BC0);
  swift_getTupleTypeMetadata3();
  v179 = sub_24B458CDC();
  v178 = swift_getWitnessTable();
  v19 = sub_24B458BFC();
  v180 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v177 = &v117 - v20;
  v175 = v19;
  v21 = sub_24B4585BC();
  v148 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v176 = &v117 - v22;
  v174 = swift_getWitnessTable();
  v210 = v174;
  v211 = MEMORY[0x277CDF918];
  v23 = swift_getWitnessTable();
  v24 = sub_24B3DF11C(&qword_27EFE8D58, &qword_27EFE8D20, &qword_24B461BA8, MEMORY[0x277D84470]);
  v192 = v21;
  v193 = v14;
  v194 = v23;
  v195 = v24;
  v181 = MEMORY[0x277CE0D08];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v138 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v135 = &v117 - v26;
  v139 = v27;
  v28 = sub_24B4585BC();
  v147 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v144 = &v117 - v29;
  v30 = sub_24B4585BC();
  v150 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v146 = &v117 - v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8050, &qword_24B45C190);
  v32 = sub_24B4585BC();
  v153 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v149 = &v117 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D60, &qword_24B461BC8);
  v34 = sub_24B4585BC();
  v155 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v154 = &v117 - v35;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8058, &qword_24B45C198);
  v36 = sub_24B4585BC();
  v151 = v21;
  v192 = v21;
  v193 = v182;
  v37 = v173;
  v132 = v24;
  v133 = v23;
  v194 = v23;
  v195 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v208 = OpaqueTypeConformance2;
  v209 = MEMORY[0x277CDFC60];
  v122 = v28;
  v119 = swift_getWitnessTable();
  v206 = v119;
  v207 = MEMORY[0x277CDF678];
  v145 = v30;
  v38 = swift_getWitnessTable();
  v39 = sub_24B3DF11C(&qword_2810E2810, &qword_27EFE8050, &qword_24B45C190, MEMORY[0x277CE0728]);
  v120 = v38;
  v204 = v38;
  v205 = v39;
  v152 = v32;
  v40 = swift_getWitnessTable();
  v41 = sub_24B3DF11C(&qword_27EFE8D68, &qword_27EFE8D60, &qword_24B461BC8, MEMORY[0x277CE0868]);
  v121 = v40;
  v202 = v40;
  v203 = v41;
  v42 = swift_getWitnessTable();
  v43 = sub_24B3DF11C(&qword_2810E28E0, &qword_27EFE8058, &qword_24B45C198, MEMORY[0x277CDF4F0]);
  v200 = v42;
  v201 = v43;
  v44 = swift_getWitnessTable();
  v45 = MEMORY[0x277CE1350];
  v192 = v34;
  v193 = MEMORY[0x277CE1350];
  v194 = v36;
  v195 = v36;
  v46 = MEMORY[0x277CE1340];
  v196 = v42;
  v197 = MEMORY[0x277CE1340];
  v198 = v44;
  v199 = v44;
  v47 = swift_getOpaqueTypeMetadata2();
  v128 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v125 = v42;
  v126 = &v117 - v48;
  v156 = v34;
  v192 = v34;
  v193 = v45;
  v194 = v36;
  v143 = v36;
  v195 = v36;
  v196 = v42;
  v197 = v46;
  v198 = v44;
  v199 = v44;
  v49 = swift_getOpaqueTypeConformance2();
  v192 = v47;
  v193 = v49;
  v50 = swift_getOpaqueTypeMetadata2();
  v129 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v127 = &v117 - v51;
  v130 = v47;
  v192 = v47;
  v123 = v49;
  v193 = v49;
  v52 = swift_getOpaqueTypeConformance2();
  v192 = v50;
  v193 = v52;
  v53 = swift_getOpaqueTypeMetadata2();
  v134 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v181 = &v117 - v54;
  v131 = v50;
  v192 = v50;
  v124 = v52;
  v193 = v52;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = sub_24B3DF11C(&qword_27EFE8D70, &qword_27EFE8D18, &qword_24B461BA0, MEMORY[0x277CDF728]);
  v192 = v53;
  v193 = v183;
  v140 = v55;
  v194 = v55;
  v137 = v56;
  v195 = v56;
  v57 = swift_getOpaqueTypeMetadata2();
  v141 = *(v57 - 8);
  v142 = v57;
  v58 = MEMORY[0x28223BE20](v57);
  v60 = &v117 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v136 = &v117 - v61;
  v189 = v188;
  v190 = v186;
  v191 = v187;
  sub_24B4586BC();
  v62 = v177;
  sub_24B458BEC();
  sub_24B4587BC();
  v63 = v175;
  v64 = v176;
  sub_24B458A9C();
  (*(v180 + 8))(v62, v63);
  v65 = *MEMORY[0x277CDFA10];
  v66 = sub_24B45859C();
  (*(*(v66 - 8) + 104))(v37, v65, v66);
  sub_24B42CFC8(&qword_27EFE8D78, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_24B458DAC();
  if (result)
  {
    v177 = v60;
    v68 = v135;
    v69 = v151;
    sub_24B4589FC();
    sub_24B3DF4F0(v37, &qword_27EFE8D20, &qword_24B461BA8);
    (*(v148 + 8))(v64, v69);
    sub_24B458CBC();
    v70 = v139;
    v71 = v144;
    sub_24B458A5C();
    (*(v138 + 8))(v68, v70);
    sub_24B42858C();
    swift_getKeyPath();
    sub_24B458D5C();

    sub_24B458CBC();
    v72 = v146;
    v73 = v122;
    sub_24B458A4C();
    (*(v147 + 8))(v71, v73);
    v74 = v157;
    sub_24B458C7C();
    sub_24B4587CC();
    v75 = v149;
    v76 = v145;
    v77 = v159;
    sub_24B45897C();
    (*(v158 + 8))(v74, v77);
    (*(v150 + 8))(v72, v76);
    swift_getKeyPath();
    v78 = *MEMORY[0x277CDF3C0];
    v176 = v53;
    v80 = v160;
    v79 = v161;
    v81 = v162;
    (*(v161 + 104))(v160, v78, v162);
    v82 = v154;
    v83 = v152;
    sub_24B4589AC();

    (*(v79 + 8))(v80, v81);
    (*(v153 + 8))(v75, v83);
    v84 = sub_24B458C9C();
    v85 = MEMORY[0x28223BE20](v84);
    v86 = v186;
    MEMORY[0x28223BE20](v85);
    v88 = v87;
    swift_checkMetadataState();
    v89 = v126;
    v90 = v156;
    sub_24B458ADC();
    (*(v155 + 8))(v82, v90);
    v91 = v163;
    v92 = v164;
    v93 = *(v164 + 16);
    v180 = v164 + 16;
    v182 = v93;
    v94 = v187;
    v95 = v185;
    v93(v163, v187, v185);
    v179 = *(v92 + 80);
    v96 = (v179 + 32) & ~v179;
    v97 = swift_allocObject();
    *(v97 + 16) = v88;
    *(v97 + 24) = v86;
    v178 = *(v92 + 32);
    v178(v97 + v96, v91, v95);
    v98 = v127;
    v99 = v130;
    sub_24B4589DC();

    (*(v128 + 8))(v89, v99);
    v100 = v185;
    v182(v91, v94, v185);
    v101 = swift_allocObject();
    v102 = v186;
    *(v101 + 16) = v188;
    *(v101 + 24) = v102;
    v178(v101 + v96, v91, v100);
    v103 = v131;
    sub_24B458A1C();

    (*(v129 + 8))(v98, v103);
    sub_24B45876C();
    v104 = v168;
    sub_24B4584CC();
    v182(v91, v187, v100);
    v105 = swift_allocObject();
    *(v105 + 16) = v188;
    *(v105 + 24) = v102;
    v178(v105 + v96, v91, v100);
    sub_24B42CFC8(qword_27EFE8D80, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
    v106 = v167;
    v107 = v171;
    sub_24B458C6C();

    (*(v170 + 8))(v104, v107);
    sub_24B45850C();
    v109 = v176;
    v108 = v177;
    v110 = v183;
    v111 = v140;
    v112 = v137;
    v113 = v181;
    sub_24B458A7C();
    (*(v169 + 8))(v106, v110);
    (*(v134 + 8))(v113, v109);
    v192 = v109;
    v193 = v110;
    v194 = v111;
    v195 = v112;
    swift_getOpaqueTypeConformance2();
    v114 = v136;
    v115 = v142;
    sub_24B3ECD00();
    v116 = *(v141 + 8);
    v116(v108, v115);
    sub_24B3ECD00();
    return (v116)(v114, v115);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B429F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v99 = a3;
  v96 = a1;
  v91 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D28, &qword_24B461BB0);
  v7 = sub_24B4585BC();
  sub_24B4585BC();
  v8 = sub_24B458F6C();
  v9 = sub_24B42BE44();
  *&v158 = v6;
  *(&v158 + 1) = MEMORY[0x277D83B88];
  *&v159 = v8;
  *(&v159 + 1) = v9;
  *&v160 = MEMORY[0x277D83B98];
  v10 = sub_24B458C5C();
  v177 = a3;
  v178 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v175 = WitnessTable;
  v176 = MEMORY[0x277CDF748];
  v174 = swift_getWitnessTable();
  v173 = swift_getWitnessTable();
  v85 = swift_getWitnessTable();
  v87 = v10;
  v11 = sub_24B458C3C();
  v84 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v86 = &v76 - v16;
  v79 = *(a2 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v78 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(v7 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v80 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v82 = &v76 - v21;
  v93 = v7;
  v22 = sub_24B45872C();
  v89 = *(v22 - 8);
  v90 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v88 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v97 = &v76 - v25;
  v26 = v99;
  v83 = type metadata accessor for AwardToastView(0, a2, v99, v27);
  v28 = v96;
  sub_24B42858C();
  swift_getKeyPath();
  sub_24B458D5C();

  v29 = v158;

  v30 = v29[2];
  v92 = v30 - 1;
  v94 = a2;
  v95 = v11;
  v31 = a2;
  if (v30 == 1)
  {
    v77 = 1;
    v32 = v14;
    v34 = v29[4];
    v33 = v29[5];

    v35 = v83;
    sub_24B42858C();
    swift_getKeyPath();
    sub_24B458D5C();

    v36 = *(&v160 + 1);

    if (*(v36 + 16))
    {
      v37 = sub_24B412140(v34, v33);
      v39 = v38;

      if (v39)
      {

        v40 = (*(v36 + 56) + 16 * v37);
        v41 = *v40;
        v42 = v40[1];
        v86 = v42;
        v87 = v41;
        sub_24B41C178(v41, v42);

        v43 = v96;
        v44 = sub_24B4286CC(v35);
        v45 = v78;
        v44(v41, v42);

        sub_24B42858C();
        swift_getKeyPath();
        sub_24B458D5C();

        sub_24B42858C();
        swift_getKeyPath();
        sub_24B458D5C();

        sub_24B458CBC();
        v46 = v80;
        v47 = v94;
        v48 = v99;
        sub_24B458A4C();
        (*(v79 + 8))(v45, v47);
        v49 = v93;
        v50 = WitnessTable;
        sub_24B3ECD00();
        v85 = *(v81 + 8);
        v85(v46, v49);
        sub_24B3ECD00();
        v51 = v95;
        v52 = swift_getWitnessTable();
        v53 = v97;
        sub_24B437B98(v46, v49, v51, v50, v52);
        sub_24B41C1CC(v87, v86);
        v54 = v46;
        v55 = v53;
        v56 = v85;
        v85(v54, v49);
        result = v56(v82, v49);
        goto LABEL_8;
      }
    }

    else
    {
    }

    v31 = v94;
    v11 = v95;
    v26 = v99;
    v28 = v96;
    v14 = v32;
    v30 = v77;
  }

  v58 = sub_24B458CBC();
  MEMORY[0x28223BE20](v58);
  *(&v76 - 6) = v31;
  *(&v76 - 5) = v26;
  *(&v76 - 4) = v30;
  *(&v76 - 3) = v29;
  v43 = v28;
  *(&v76 - 2) = v28;
  sub_24B458C2C();

  v59 = swift_getWitnessTable();
  v60 = v86;
  sub_24B3ECD00();
  v61 = v11;
  v62 = *(v84 + 8);
  v62(v14, v61);
  sub_24B3ECD00();
  v55 = v97;
  sub_24B437C90(v14, v93, v61, WitnessTable, v59);
  v62(v14, v61);
  result = (v62)(v60, v61);
  v48 = v99;
LABEL_8:
  if ((v92 * 7) >> 64 == (7 * v92) >> 63)
  {
    sub_24B458CBC();
    sub_24B45855C();
    v87 = v179;
    v96 = v183;
    v92 = v181;
    v93 = v184;
    v139 = 1;
    v137 = v180;
    v135 = v182;
    v63 = sub_24B4586FC();
    LOBYTE(v106) = 1;
    sub_24B42B8A4(v43, v94, v48, &v158);
    v148 = v166;
    v149 = v167;
    v150 = v168;
    v144 = v162;
    v145 = v163;
    v146 = v164;
    v147 = v165;
    v140 = v158;
    v141 = v159;
    v142 = v160;
    v143 = v161;
    v152[8] = v166;
    v152[9] = v167;
    v152[10] = v168;
    v152[4] = v162;
    v152[5] = v163;
    v152[6] = v164;
    v152[7] = v165;
    v152[0] = v158;
    v152[1] = v159;
    v151 = v169;
    v153 = v169;
    v152[2] = v160;
    v152[3] = v161;
    sub_24B3DF488(&v140, &v154, &qword_27EFE8E20, &qword_24B461CC8);
    sub_24B3DF4F0(v152, &qword_27EFE8E20, &qword_24B461CC8);
    *(&v133[8] + 7) = v148;
    *(&v133[9] + 7) = v149;
    *(&v133[10] + 7) = v150;
    *(&v133[4] + 7) = v144;
    *(&v133[5] + 7) = v145;
    *(&v133[6] + 7) = v146;
    *(&v133[7] + 7) = v147;
    *(v133 + 7) = v140;
    *(&v133[1] + 7) = v141;
    *(&v133[2] + 7) = v142;
    *(&v133[11] + 7) = v151;
    *(&v133[3] + 7) = v143;
    v64 = v106;
    v65 = sub_24B4587FC();
    sub_24B45848C();
    *(&v155[8] + 1) = v133[8];
    *(&v155[9] + 1) = v133[9];
    *(&v155[10] + 1) = v133[10];
    *(&v155[10] + 12) = *(&v133[10] + 11);
    *(&v155[4] + 1) = v133[4];
    *(&v155[5] + 1) = v133[5];
    *(&v155[6] + 1) = v133[6];
    *(&v155[7] + 1) = v133[7];
    *(v155 + 1) = v133[0];
    *(&v155[1] + 1) = v133[1];
    *(&v155[2] + 1) = v133[2];
    LOBYTE(v158) = 0;
    v154 = v63;
    LOBYTE(v155[0]) = v64;
    *(&v155[3] + 1) = v133[3];
    LOBYTE(v156) = v65;
    *(&v156 + 1) = v66;
    *&v157[0] = v67;
    *(&v157[0] + 1) = v68;
    *&v157[1] = v69;
    BYTE8(v157[1]) = 0;
    v71 = v88;
    v70 = v89;
    v72 = v55;
    v73 = v90;
    (*(v89 + 16))(v88, v72, v90);
    v121 = 0;
    v122 = v139;
    *v123 = *v138;
    *&v123[3] = *&v138[3];
    v124 = v87;
    v125 = v137;
    *v126 = *v136;
    *&v126[3] = *&v136[3];
    v127 = v92;
    v128 = v135;
    *v129 = *v134;
    *&v129[3] = *&v134[3];
    v130 = v96;
    v131 = v93;
    v132[0] = v71;
    v132[1] = &v121;
    v118 = v155[11];
    v119 = v156;
    v120[0] = v157[0];
    *(v120 + 9) = *(v157 + 9);
    v114 = v155[7];
    v115 = v155[8];
    v116 = v155[9];
    v117 = v155[10];
    v110 = v155[3];
    v111 = v155[4];
    v112 = v155[5];
    v113 = v155[6];
    v106 = v154;
    v107 = v155[0];
    v108 = v155[1];
    v109 = v155[2];
    v132[2] = &v106;
    sub_24B3DF488(&v154, &v158, &qword_27EFE8D50, &qword_24B461BC0);
    v105[0] = v73;
    v105[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7D08, &qword_24B45D850);
    v105[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8D50, &qword_24B461BC0);
    v74 = swift_getWitnessTable();
    v100 = WitnessTable;
    v101 = v74;
    v102 = swift_getWitnessTable();
    v103 = sub_24B3EC908();
    v104 = sub_24B42D1DC();
    sub_24B437D88(v132, 3uLL, v105);
    sub_24B3DF4F0(&v154, &qword_27EFE8D50, &qword_24B461BC0);
    v75 = *(v70 + 8);
    v75(v97, v73);
    v170 = v118;
    v171 = v119;
    v172[0] = v120[0];
    *(v172 + 9) = *(v120 + 9);
    v166 = v114;
    v167 = v115;
    v168 = v116;
    v169 = v117;
    v162 = v110;
    v163 = v111;
    v164 = v112;
    v165 = v113;
    v158 = v106;
    v159 = v107;
    v160 = v108;
    v161 = v109;
    sub_24B3DF4F0(&v158, &qword_27EFE8D50, &qword_24B461BC0);
    return (v75)(v71, v73);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B42ACA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v31 = a2;
  v33 = a4;
  v34 = a1;
  v7 = type metadata accessor for AwardToastView(0, a3, a4, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D28, &qword_24B461BB0);
  v30[2] = sub_24B4585BC();
  v32 = sub_24B4585BC();
  v12 = sub_24B458F6C();
  v13 = sub_24B42BE44();
  v36 = v12;
  v37 = v11;
  v44 = v11;
  v45 = MEMORY[0x277D83B88];
  v46 = v12;
  v47 = v13;
  v35 = v13;
  v48 = MEMORY[0x277D83B98];
  v14 = sub_24B458C5C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v22 = v30 - v21;
  if (v20 < 0)
  {
    __break(1u);
  }

  else
  {
    v44 = 0;
    v45 = v20;
    v30[1] = swift_getKeyPath();
    (*(v8 + 16))(v10, v31, v7);
    v23 = *(v8 + 80);
    v31 = a5;
    v24 = (v23 + 40) & ~v23;
    v25 = swift_allocObject();
    v26 = v7;
    v27 = v33;
    *(v25 + 2) = a3;
    *(v25 + 3) = v27;
    *(v25 + 4) = v34;
    (*(v8 + 32))(&v25[v24], v10, v26);
    v42 = v27;
    v43 = MEMORY[0x277CDF678];

    WitnessTable = swift_getWitnessTable();
    v41 = MEMORY[0x277CDF748];
    v39 = swift_getWitnessTable();
    v29 = swift_getWitnessTable();
    sub_24B458C4C();
    v38 = v29;
    swift_getWitnessTable();
    sub_24B3ECD00();
    v28 = *(v15 + 8);
    v28(v18, v14);
    sub_24B3ECD00();
    return (v28)(v22, v14);
  }

  return result;
}

uint64_t sub_24B42B070@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v74 = a3;
  v11 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v65 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24B4585BC();
  v63 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v66 = &v59 - v14;
  v15 = sub_24B4585BC();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v64 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v62 = &v59 - v19;
  v20 = sub_24B458F6C();
  v21 = MEMORY[0x28223BE20](v20);
  v73 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v21);
  v27 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v27 < *(a2 + 16))
  {
    v67 = result;
    v68 = v16;
    v69 = &v59 - v25;
    v71 = v26;
    v72 = v13;
    v70 = a6;
    v28 = a2 + 16 * v27;
    v29 = *(v28 + 32);
    v30 = *(v28 + 40);
    v75 = a5;
    v31 = type metadata accessor for AwardToastView(0, a4, a5, v24);

    sub_24B42858C();
    swift_getKeyPath();
    sub_24B458D5C();

    v32 = v89;

    v33 = MEMORY[0x277CDF748];
    if (*(v32 + 16))
    {
      v34 = sub_24B412140(v29, v30);
      v36 = v35;

      if (v36)
      {
        v37 = (*(v32 + 56) + 16 * v34);
        v38 = *v37;
        v39 = v37[1];
        sub_24B41C178(*v37, v39);

        v40 = sub_24B4286CC(v31);
        v41 = v65;
        v61 = v38;
        v60 = v39;
        v40(v38, v39);

        sub_24B42858C();
        swift_getKeyPath();
        sub_24B458D5C();

        sub_24B42858C();
        swift_getKeyPath();
        sub_24B458D5C();

        sub_24B458CBC();
        v42 = v66;
        v43 = v75;
        sub_24B458A4C();
        result = (*(v11 + 8))(v41, a4);
        v44 = (v27 * 7) >> 64 == (7 * v27) >> 63;
        v45 = v72;
        v46 = v71;
        if (!v44)
        {
          goto LABEL_13;
        }

        v78 = v43;
        v47 = MEMORY[0x277CDF678];
        v79 = MEMORY[0x277CDF678];
        WitnessTable = swift_getWitnessTable();
        v49 = v64;
        sub_24B458A6C();
        sub_24B41C1CC(v61, v60);
        (*(v63 + 8))(v42, v45);
        v76 = WitnessTable;
        v77 = MEMORY[0x277CDF748];
        swift_getWitnessTable();
        v50 = v62;
        sub_24B3ECD00();
        v51 = v68;
        v52 = *(v68 + 8);
        v52(v49, v15);
        sub_24B3ECD00();
        v52(v50, v15);
        v53 = v73;
        v54 = v49;
        v33 = MEMORY[0x277CDF748];
        (*(v51 + 32))(v73, v54, v15);
        (*(v51 + 56))(v53, 0, 1, v15);
LABEL_10:
        v56 = v69;
        v57 = v67;
        (*(v46 + 16))(v69, v53, v67);
        v58 = *(v46 + 8);
        v58(v53, v57);
        v83 = v75;
        v84 = v47;
        v81 = swift_getWitnessTable();
        v82 = v33;
        v80 = swift_getWitnessTable();
        swift_getWitnessTable();
        sub_24B3ECD00();
        return (v58)(v56, v57);
      }
    }

    else
    {
    }

    v55 = v75;
    v46 = v71;
    v53 = v73;
    (*(v68 + 56))(v73, 1, 1, v15);
    v87 = v55;
    v47 = MEMORY[0x277CDF678];
    v88 = MEMORY[0x277CDF678];
    v85 = swift_getWitnessTable();
    v86 = v33;
    swift_getWitnessTable();
    goto LABEL_10;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_24B42B8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a1;
  v7 = sub_24B45888C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AwardToastView(0, a2, a3, v11);
  sub_24B42858C();
  swift_getKeyPath();
  sub_24B458D5C();

  v12 = v100;
  v13 = v101;

  *&v93 = v12;
  *(&v93 + 1) = v13;
  v57 = sub_24B3EC9AC();
  v67 = sub_24B45892C();
  v63 = v14;
  v64 = v15;
  LOBYTE(a3) = v16;
  KeyPath = swift_getKeyPath();
  v62 = swift_getKeyPath();
  v65 = a3 & 1;
  LOBYTE(v99) = a3 & 1;
  LOBYTE(v93) = 0;
  sub_24B45880C();
  sub_24B45882C();
  sub_24B45887C();

  v17 = *(v8 + 104);
  v56 = *MEMORY[0x277CE0A10];
  v55 = v17;
  v17(v10);
  v61 = sub_24B4588AC();

  v18 = *(v8 + 8);
  v58 = v7;
  v18(v10, v7);
  v60 = swift_getKeyPath();
  sub_24B42858C();
  swift_getKeyPath();
  sub_24B458D5C();

  v19 = v102;
  v20 = v103;

  if (v20)
  {
    *&v93 = v19;
    *(&v93 + 1) = v20;
    v59 = sub_24B45892C();
    v57 = v21;
    v23 = v22;
    v54 = v24;
    v53 = swift_getKeyPath();
    v52 = swift_getKeyPath();
    LOBYTE(v93) = v23 & 1;
    LOBYTE(v68[0]) = 0;
    sub_24B45880C();
    v25 = v58;
    v55(v10, v56, v58);
    v26 = sub_24B4588AC();

    v18(v10, v25);
    v27 = swift_getKeyPath();
    v28 = sub_24B45875C();
    v29 = v26;
    v30 = v23 & 1;
    v32 = v52;
    v31 = v53;
    v33 = v54;
    v34 = v57;
    v35 = v59;
    v36 = 2;
  }

  else
  {
    v35 = 0;
    v34 = 0;
    v33 = 0;
    v31 = 0;
    v32 = 0;
    v36 = 0;
    v27 = 0;
    v29 = 0;
    v28 = 0;
    v30 = 0;
  }

  v37 = v63;
  v38 = v64;
  *&v87 = v67;
  *(&v87 + 1) = v63;
  LOBYTE(v88) = v65;
  *(&v88 + 1) = v113[0];
  DWORD1(v88) = *(v113 + 3);
  *(&v88 + 1) = v64;
  *&v89 = KeyPath;
  BYTE8(v89) = 0;
  HIDWORD(v89) = *&v112[3];
  *(&v89 + 9) = *v112;
  v40 = v61;
  v39 = v62;
  *&v90 = v62;
  *(&v90 + 1) = 2;
  LOBYTE(v91) = 0;
  *(&v91 + 1) = *v111;
  DWORD1(v91) = *&v111[3];
  v41 = v60;
  *(&v91 + 1) = v60;
  v92 = v61;
  v81 = v87;
  v82 = v88;
  *&v86[0] = v61;
  v84 = v90;
  v85 = v91;
  v83 = v89;
  *&v93 = v35;
  *(&v93 + 1) = v34;
  *&v94 = v30;
  *(&v94 + 1) = v33;
  v95 = v31;
  v96 = 0;
  *&v97 = v32;
  *(&v97 + 1) = v36;
  *&v98[0] = 0;
  *(&v98[0] + 1) = v27;
  *&v98[1] = v29;
  DWORD2(v98[1]) = v28;
  *(&v86[1] + 8) = v94;
  *(v86 + 8) = v93;
  *(&v86[5] + 4) = *(v98 + 12);
  *(&v86[4] + 8) = v98[0];
  *(&v86[3] + 8) = v97;
  *(&v86[2] + 8) = v31;
  v42 = v87;
  v43 = v88;
  v44 = v90;
  *(a4 + 32) = v89;
  *(a4 + 48) = v44;
  *a4 = v42;
  *(a4 + 16) = v43;
  v45 = v85;
  v46 = v86[0];
  v47 = v86[2];
  *(a4 + 96) = v86[1];
  *(a4 + 112) = v47;
  *(a4 + 64) = v45;
  *(a4 + 80) = v46;
  v48 = v86[3];
  v49 = v86[4];
  v50 = v86[5];
  *(a4 + 176) = v86[6];
  *(a4 + 144) = v49;
  *(a4 + 160) = v50;
  *(a4 + 128) = v48;
  v99 = v35;
  v100 = v34;
  v101 = v30;
  v102 = v33;
  v103 = v31;
  v104 = 0;
  v105 = v32;
  v106 = v36;
  v107 = 0;
  v108 = v27;
  v109 = v29;
  v110 = v28;
  sub_24B3DF488(&v87, v68, &qword_27EFE8E40, &qword_24B461D68);
  sub_24B3DF488(&v93, v68, &qword_27EFE8E48, &unk_24B461D70);
  sub_24B3DF4F0(&v99, &qword_27EFE8E48, &unk_24B461D70);
  v68[0] = v67;
  v68[1] = v37;
  v69 = v65;
  *v70 = v113[0];
  *&v70[3] = *(v113 + 3);
  v71 = v38;
  v72 = KeyPath;
  v73 = 0;
  *v74 = *v112;
  *&v74[3] = *&v112[3];
  v75 = v39;
  v76 = 2;
  v77 = 0;
  *&v78[3] = *&v111[3];
  *v78 = *v111;
  v79 = v41;
  v80 = v40;
  return sub_24B3DF4F0(v68, &qword_27EFE8E40, &qword_24B461D68);
}

unint64_t sub_24B42BE44()
{
  result = qword_27EFE8D30;
  if (!qword_27EFE8D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D28, &qword_24B461BB0);
    sub_24B42BEC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8D30);
  }

  return result;
}

unint64_t sub_24B42BEC8()
{
  result = qword_27EFE8D38;
  if (!qword_27EFE8D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D40, &qword_24B461BB8);
    sub_24B42BF54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8D38);
  }

  return result;
}

unint64_t sub_24B42BF54()
{
  result = qword_27EFE8D48;
  if (!qword_27EFE8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8D48);
  }

  return result;
}

uint64_t sub_24B42BFB4(uint64_t a1)
{
  v2 = sub_24B4584BC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24B45864C();
}

uint64_t sub_24B42C07C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a1;
  v28 = a4;
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D28, &qword_24B461BB0);
  sub_24B4585BC();
  sub_24B458F6C();
  sub_24B42BE44();
  v51 = MEMORY[0x277D83B98];
  sub_24B458C5C();
  v45 = a3;
  v46 = MEMORY[0x277CDF678];
  v5 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v44 = MEMORY[0x277CDF748];
  v26 = v5;
  v42 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B458C3C();
  sub_24B45872C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D50, &qword_24B461BC0);
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458BFC();
  v6 = sub_24B4585BC();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D20, &qword_24B461BA8);
  v39 = swift_getWitnessTable();
  v40 = MEMORY[0x277CDF918];
  v23 = swift_getWitnessTable();
  v7 = sub_24B3DF11C(&qword_27EFE8D58, &qword_27EFE8D20, &qword_24B461BA8, MEMORY[0x277D84470]);
  v47 = v6;
  v48 = v24;
  v49 = v23;
  v50 = v7;
  swift_getOpaqueTypeMetadata2();
  sub_24B4585BC();
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8050, &qword_24B45C190);
  v25 = sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D60, &qword_24B461BC8);
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8058, &qword_24B45C198);
  v8 = sub_24B4585BC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  sub_24B4583DC();
  v47 = v6;
  v48 = v24;
  v49 = v23;
  v50 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = MEMORY[0x277CDFC60];
  v35 = swift_getWitnessTable();
  v36 = MEMORY[0x277CDF678];
  v15 = swift_getWitnessTable();
  v16 = sub_24B3DF11C(&qword_2810E2810, &qword_27EFE8050, &qword_24B45C190, MEMORY[0x277CE0728]);
  v33 = v15;
  v34 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_24B3DF11C(&qword_27EFE8D68, &qword_27EFE8D60, &qword_24B461BC8, MEMORY[0x277CE0868]);
  v31 = v17;
  v32 = v18;
  v19 = swift_getWitnessTable();
  sub_24B4589CC();
  v20 = sub_24B3DF11C(&qword_2810E28E0, &qword_27EFE8058, &qword_24B45C198, MEMORY[0x277CDF4F0]);
  v29 = v19;
  v30 = v20;
  swift_getWitnessTable();
  sub_24B3ECD00();
  v21 = *(v9 + 8);
  v21(v12, v8);
  sub_24B3ECD00();
  return (v21)(v14, v8);
}

uint64_t sub_24B42C6B0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a1;
  v28 = a4;
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D28, &qword_24B461BB0);
  sub_24B4585BC();
  sub_24B458F6C();
  sub_24B42BE44();
  v51 = MEMORY[0x277D83B98];
  sub_24B458C5C();
  v45 = a3;
  v46 = MEMORY[0x277CDF678];
  v5 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v44 = MEMORY[0x277CDF748];
  v26 = v5;
  v42 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B458C3C();
  sub_24B45872C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D50, &qword_24B461BC0);
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458BFC();
  v6 = sub_24B4585BC();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D20, &qword_24B461BA8);
  v39 = swift_getWitnessTable();
  v40 = MEMORY[0x277CDF918];
  v23 = swift_getWitnessTable();
  v7 = sub_24B3DF11C(&qword_27EFE8D58, &qword_27EFE8D20, &qword_24B461BA8, MEMORY[0x277D84470]);
  v47 = v6;
  v48 = v24;
  v49 = v23;
  v50 = v7;
  swift_getOpaqueTypeMetadata2();
  sub_24B4585BC();
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8050, &qword_24B45C190);
  v25 = sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D60, &qword_24B461BC8);
  sub_24B4585BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8058, &qword_24B45C198);
  v8 = sub_24B4585BC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v47 = v6;
  v48 = v24;
  v49 = v23;
  v50 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = MEMORY[0x277CDFC60];
  v35 = swift_getWitnessTable();
  v36 = MEMORY[0x277CDF678];
  v15 = swift_getWitnessTable();
  v16 = sub_24B3DF11C(&qword_2810E2810, &qword_27EFE8050, &qword_24B45C190, MEMORY[0x277CE0728]);
  v33 = v15;
  v34 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_24B3DF11C(&qword_27EFE8D68, &qword_27EFE8D60, &qword_24B461BC8, MEMORY[0x277CE0868]);
  v31 = v17;
  v32 = v18;
  v19 = swift_getWitnessTable();
  sub_24B4589CC();
  v20 = sub_24B3DF11C(&qword_2810E28E0, &qword_27EFE8058, &qword_24B45C198, MEMORY[0x277CDF4F0]);
  v29 = v19;
  v30 = v20;
  swift_getWitnessTable();
  sub_24B3ECD00();
  v21 = *(v9 + 8);
  v21(v12, v8);
  sub_24B3ECD00();
  return (v21)(v14, v8);
}

uint64_t sub_24B42CCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AwardToastView(0, a2, a3, a4);
  sub_24B42858C();
  sub_24B458D6C();
}

uint64_t sub_24B42CD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for AwardToastView(0, v5, v6, a4) - 8);
  return sub_24B42CCCC(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v6, v8);
}

uint64_t sub_24B42CD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24B4584EC();
  v7 = v6;
  result = sub_24B4584DC();
  if (v7 - v10 > 20.0)
  {
    type metadata accessor for AwardToastView(0, a3, a4, v9);
    sub_24B42858C();
    sub_24B458D6C();
  }

  return result;
}

uint64_t objectdestroy_4Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for AwardToastView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  sub_24B3DE5B8(*(v4 + v6), *(v4 + v6 + 8));
  v7 = v5[11];
  swift_getFunctionTypeMetadata1();
  v8 = sub_24B4583CC();
  (*(*(v8 - 8) + 8))(v4 + v6 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_24B42CF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for AwardToastView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_24B42CD90(a1, v9, v6, v7);
}

uint64_t sub_24B42CFC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24B42D060(uint64_t a1)
{
  sub_24B42D128(319);
  if (v1 <= 0x3F)
  {
    swift_getFunctionTypeMetadata1();
    sub_24B4583CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B42D128(uint64_t a1)
{
  if (!qword_27EFE8E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8E10, qword_24B461C90);
    sub_24B3DF11C(&qword_27EFE8E18, &qword_27EFE8E10, qword_24B461C90, MEMORY[0x277D04410]);
    v1 = sub_24B45852C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EFE8E08);
    }
  }
}

unint64_t sub_24B42D1DC()
{
  result = qword_27EFE8E28;
  if (!qword_27EFE8E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8D50, &qword_24B461BC0);
    sub_24B3DF11C(&qword_27EFE8E30, &qword_27EFE8E38, &qword_24B461CD0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8E28);
  }

  return result;
}

uint64_t sub_24B42D294@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B45865C();
  *a1 = result;
  return result;
}

uint64_t sub_24B42D2E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B45867C();
  *a1 = result;
  return result;
}

uint64_t sub_24B42D340@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B45869C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B42D3A4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t sub_24B42D3DC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(type metadata accessor for AwardToastView(0, v6, v7, a2) - 8);
  v9 = v3[4];
  v10 = v3 + ((*(v8 + 80) + 40) & ~*(v8 + 80));

  return sub_24B42B070(a1, v9, v10, v6, v7, a3);
}

__n128 AwardToastFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_24B42D4EC()
{
  v1 = *(v0 + 8);
  sub_24B45922C();
  if (v1)
  {
    MEMORY[0x24C2403C0](0);
    sub_24B458E6C();
  }

  else
  {
    MEMORY[0x24C2403C0](1);
  }

  return sub_24B45926C();
}

void sub_24B42D55C(uint64_t a1)
{
  if (*(v1 + 8))
  {
    MEMORY[0x24C2403C0](0);

    sub_24B458E6C();
  }

  else
  {
    MEMORY[0x24C2403C0](1);
  }
}

uint64_t sub_24B42D5D4(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_24B45922C();
  if (v2)
  {
    MEMORY[0x24C2403C0](0);
    sub_24B458E6C();
  }

  else
  {
    MEMORY[0x24C2403C0](1);
  }

  return sub_24B45926C();
}

uint64_t sub_24B42D640(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return v4 == 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  else
  {
    return sub_24B4591AC();
  }
}

double AwardToastFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v95 = a3;
  v90 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7F20, &qword_24B45BCA0);
  v92 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v75 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v75 - v13;
  v16 = *v4;
  v15 = v4[1];
  v17 = v4[2];
  v93 = v4[3];
  v94 = v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
  v19 = v18[16];
  v91 = v18[20];
  v20 = v18[24];
  if (a4)
  {
    v21 = &v9[v20];
    sub_24B42DE30();
    v96 = 0;
    v97 = 0;
    sub_24B458F9C();
    sub_24B458EFC();
    v22 = *MEMORY[0x277D043F0];
    v23 = sub_24B458D4C();
    (*(*(v23 - 8) + 104))(&v9[v19], v22, v23);
    v24 = swift_allocObject();
    v25 = v93;
    v26 = v94;
    v24[2] = v16;
    v24[3] = v26;
    v24[4] = v17;
    v24[5] = v25;
    *v21 = &unk_24B461DB8;
    *(v21 + 1) = v24;
    v27 = *MEMORY[0x277D043E8];
    v28 = sub_24B458D3C();
    (*(*(v28 - 8) + 104))(&v9[v91], v27, v28);
    v29 = v92;
    v92[13](v9, *MEMORY[0x277D043B0], v6);
    v30 = v95;
    v31 = *v95;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_24B3F14E4(0, v31[2] + 1, 1, v31);
    }

    v33 = v31[2];
    v32 = v31[3];
    if (v33 >= v32 >> 1)
    {
      v31 = sub_24B3F14E4((v32 > 1), v33 + 1, 1, v31);
    }

    v31[2] = v33 + 1;
    (v29[4])(v31 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + v29[9] * v33, v9);
    *v30 = v31;
  }

  else
  {
    v35 = v18;
    v89 = v12;
    v36 = &v14[v20];
    v37 = sub_24B42DE30();
    v96 = 0;
    v97 = 0;
    v86 = v37;
    sub_24B458F9C();
    sub_24B458EFC();
    v38 = *MEMORY[0x277D043F0];
    v39 = sub_24B458D4C();
    v40 = *(v39 - 8);
    v41 = *(v40 + 104);
    v85 = v38;
    v83 = v41;
    v84 = v39;
    v82 = v40 + 104;
    (v41)(&v14[v19], v38);
    v42 = swift_allocObject();
    v87 = v16;
    v88 = v17;
    v43 = v94;
    v42[2] = v16;
    v42[3] = v43;
    v44 = v93;
    v42[4] = v17;
    v42[5] = v44;
    *v36 = &unk_24B461DC8;
    *(v36 + 1) = v42;
    v45 = *MEMORY[0x277D043E8];
    v46 = sub_24B458D3C();
    v47 = *(v46 - 8);
    v78 = *(v47 + 104);
    v79 = v46;
    v77 = v47 + 104;
    v78(&v14[v91], v45);
    v48 = v92;
    v49 = v92[13];
    v81 = *MEMORY[0x277D043B0];
    v91 = v6;
    v80 = v49;
    v49(v14);
    v50 = v95;
    v51 = *v95;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = sub_24B3F14E4(0, v51[2] + 1, 1, v51);
    }

    v53 = v51[2];
    v52 = v51[3];
    v54 = v89;
    if (v53 >= v52 >> 1)
    {
      v51 = sub_24B3F14E4((v52 > 1), v53 + 1, 1, v51);
    }

    v51[2] = v53 + 1;
    v56 = v48[4];
    v55 = v48 + 4;
    v76 = (*(v55 + 48) + 32) & ~*(v55 + 48);
    v75 = v55[5];
    v92 = v56;
    (v56)(v51 + v76 + v75 * v53, v14, v91);
    *v50 = v51;
    v57 = v90;
    *(v90 + 112) = 0;
    v58 = *v57;
    if (*(*v57 + 16) == 1)
    {
      v60 = *(v58 + 32);
      v59 = *(v58 + 40);
      v61 = v93;
      v62 = v35[16];
      v90 = v35[20];
      v63 = &v54[v35[24]];
      v96 = v60;
      v97 = v59;
      swift_bridgeObjectRetain_n();
      sub_24B458F9C();
      sub_24B458EFC();
      v83(&v54[v62], v85, v84);
      (v78)(&v54[v90], *MEMORY[0x277D043E0], v79);
      v64 = swift_allocObject();
      v64[2] = v60;
      v64[3] = v59;
      v65 = v91;
      v66 = v88;
      v67 = v94;
      v64[4] = v87;
      v64[5] = v67;
      v64[6] = v66;
      v64[7] = v61;
      *v63 = &unk_24B461DD8;
      *(v63 + 1) = v64;
      v80(v54, v81, v65);
      v68 = v51[2];
      v69 = v51[3];

      if (v68 >= v69 >> 1)
      {
        v51 = sub_24B3F14E4((v69 > 1), v68 + 1, 1, v51);
      }

      v70 = v95;
      v51[2] = v68 + 1;
      (v92)(v51 + v76 + v68 * v75, v54, v65);
      *v70 = v51;
    }

    else
    {
      if (qword_2810E3610 != -1)
      {
        swift_once();
      }

      v71 = sub_24B45847C();
      __swift_project_value_buffer(v71, qword_2810E3618);
      v72 = sub_24B45845C();
      v73 = sub_24B458F4C();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_24B3CE000, v72, v73, "[AwardToastFeature] Coalesced toast, setting scroll position identifier", v74, 2u);
        MEMORY[0x24C2408A0](v74, -1, -1);
      }

      *(v57 + 112) = 1;

      *&result = 0x736472617761;
      *(v57 + 96) = xmmword_24B461DA0;
    }
  }

  return result;
}

unint64_t sub_24B42DE30()
{
  result = qword_27EFE8E50;
  if (!qword_27EFE8E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8E50);
  }

  return result;
}

uint64_t sub_24B42DE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_24B458EEC();
  v3[4] = sub_24B458EDC();
  v5 = sub_24B458EBC();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x2822009F8](sub_24B42DF1C, v5, v4);
}

uint64_t sub_24B42DF1C()
{
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = sub_24B45847C();
  __swift_project_value_buffer(v1, qword_2810E3618);
  v2 = sub_24B45845C();
  v3 = sub_24B458F4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24B3CE000, v2, v3, "[AwardToastFeature] toast tapped, requesting dismissal", v4, 2u);
    MEMORY[0x24C2408A0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_24B42E0C8;

  return v8(0);
}

uint64_t sub_24B42E0C8()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_24B42EF60, v3, v2);
}

uint64_t sub_24B42E1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a2;
  v7[3] = a3;
  sub_24B458EEC();
  v7[6] = sub_24B458EDC();
  v9 = sub_24B458EBC();
  v7[7] = v9;
  v7[8] = v8;

  return MEMORY[0x2822009F8](sub_24B42E284, v9, v8);
}

uint64_t sub_24B42E284()
{
  v14 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = sub_24B45847C();
  __swift_project_value_buffer(v1, qword_2810E3618);

  v2 = sub_24B45845C();
  v3 = sub_24B458F4C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_24B3F17BC(v5, v4, &v13);
    _os_log_impl(&dword_24B3CE000, v2, v3, "[AwardToastFeature] Presenting detail page for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x24C2408A0](v7, -1, -1);
    MEMORY[0x24C2408A0](v6, -1, -1);
  }

  v12 = (v0[4] + *v0[4]);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_24B42E4A4;
  v10 = v0[2];
  v9 = v0[3];

  return v12(v10, v9);
}

uint64_t sub_24B42E4A4()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_24B42E644;
  }

  else
  {
    v5 = sub_24B42E5E0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B42E5E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B42E644()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B42E6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_24B458EEC();
  v3[4] = sub_24B458EDC();
  v5 = sub_24B458EBC();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x2822009F8](sub_24B42E740, v5, v4);
}

uint64_t sub_24B42E740()
{
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = sub_24B45847C();
  __swift_project_value_buffer(v1, qword_2810E3618);
  v2 = sub_24B45845C();
  v3 = sub_24B458F4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24B3CE000, v2, v3, "[AwardToastFeature] toast swiped, requesting dismissal", v4, 2u);
    MEMORY[0x24C2408A0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_24B42E8EC;

  return v8(1);
}

uint64_t sub_24B42E8EC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_24B42EA0C, v3, v2);
}

uint64_t sub_24B42EA0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B42EA70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B3F2574;

  return sub_24B42E6A8(a1, v4, v5);
}

uint64_t objectdestroyTm()
{

  return swift_deallocObject();
}

uint64_t sub_24B42EB78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B3F2574;

  return sub_24B42DE84(a1, v4, v5);
}

uint64_t sub_24B42EC34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24B3F1E60;

  return sub_24B42E1E8(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_24B42ED08()
{
  result = qword_27EFE8E58;
  if (!qword_27EFE8E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8E58);
  }

  return result;
}

unint64_t sub_24B42ED60()
{
  result = qword_27EFE8E60;
  if (!qword_27EFE8E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8E60);
  }

  return result;
}

unint64_t sub_24B42EDB8()
{
  result = qword_27EFE8E68;
  if (!qword_27EFE8E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8E68);
  }

  return result;
}

uint64_t sub_24B42EE1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B42EE6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24B42EEC0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_24B42EED8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_24B42EF0C()
{
  result = qword_27EFE8E70;
  if (!qword_27EFE8E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8E70);
  }

  return result;
}

uint64_t sub_24B42EF74()
{
  if (*v0)
  {
    return 0x6977537473616F74;
  }

  else
  {
    return 0x7061547473616F74;
  }
}

uint64_t sub_24B42EFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7061547473616F74 && a2 == 0xEB00000000646570;
  if (v6 || (sub_24B4591AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6977537473616F74 && a2 == 0xEB00000000646570)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B4591AC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B42F090(uint64_t a1)
{
  v2 = sub_24B42F524();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B42F0CC(uint64_t a1)
{
  v2 = sub_24B42F524();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B42F108(uint64_t a1)
{
  v2 = sub_24B42F578();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B42F144(uint64_t a1)
{
  v2 = sub_24B42F578();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B42F180(uint64_t a1)
{
  v2 = sub_24B42F5CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B42F1BC(uint64_t a1)
{
  v2 = sub_24B42F5CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardToastAction.hashValue.getter(char a1)
{
  sub_24B45922C();
  MEMORY[0x24C2403C0](a1 & 1);
  return sub_24B45926C();
}

uint64_t AwardToastAction.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8E78, &qword_24B461F20);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8E80, &qword_24B461F28);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8E88, &qword_24B461F30);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B42F524();
  sub_24B45928C();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_24B42F578();
    sub_24B45910C();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_24B42F5CC();
    sub_24B45910C();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_24B42F524()
{
  result = qword_27EFE8E90;
  if (!qword_27EFE8E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8E90);
  }

  return result;
}

unint64_t sub_24B42F578()
{
  result = qword_27EFE8E98;
  if (!qword_27EFE8E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8E98);
  }

  return result;
}

unint64_t sub_24B42F5CC()
{
  result = qword_27EFE8EA0;
  if (!qword_27EFE8EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8EA0);
  }

  return result;
}

uint64_t sub_24B42F63C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B42F688(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_24B42F688(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8EE8, &qword_24B4622A0);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8EF0, &qword_24B4622A8);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8EF8, &unk_24B4622B0);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B42F524();
  v11 = v26;
  sub_24B45927C();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_24B4590FC();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_24B3E3810();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_24B458FFC();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0);
    *v19 = &type metadata for AwardToastAction;
    sub_24B45906C();
    sub_24B458FEC();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_24B42F578();
    sub_24B45905C();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_24B42F5CC();
    sub_24B45905C();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

unint64_t sub_24B42FB48()
{
  result = qword_27EFE8EA8;
  if (!qword_27EFE8EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8EA8);
  }

  return result;
}

unint64_t sub_24B42FBE0()
{
  result = qword_27EFE8EB0;
  if (!qword_27EFE8EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8EB0);
  }

  return result;
}

unint64_t sub_24B42FC38()
{
  result = qword_27EFE8EB8;
  if (!qword_27EFE8EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8EB8);
  }

  return result;
}

unint64_t sub_24B42FC90()
{
  result = qword_27EFE8EC0;
  if (!qword_27EFE8EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8EC0);
  }

  return result;
}

unint64_t sub_24B42FCE8()
{
  result = qword_27EFE8EC8;
  if (!qword_27EFE8EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8EC8);
  }

  return result;
}

unint64_t sub_24B42FD40()
{
  result = qword_27EFE8ED0;
  if (!qword_27EFE8ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8ED0);
  }

  return result;
}

unint64_t sub_24B42FD98()
{
  result = qword_27EFE8ED8;
  if (!qword_27EFE8ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8ED8);
  }

  return result;
}

unint64_t sub_24B42FDF0()
{
  result = qword_27EFE8EE0;
  if (!qword_27EFE8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8EE0);
  }

  return result;
}

uint64_t AwardToastLayout.transformed()()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t AwardToastPresentationState.suggestedWorkoutsLoadStates.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t type metadata accessor for AwardToastPresentationState(uint64_t a1)
{
  result = qword_2810E2C50;
  if (!qword_2810E2C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AwardToastPresentationState.loadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AwardToastPresentationState(0) + 24);

  return sub_24B4260C0(a1, v3);
}

uint64_t AwardToastPresentationState.progressLoadStates.getter()
{
  type metadata accessor for AwardToastPresentationState(0);
}

uint64_t AwardToastPresentationState.progressLoadStates.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AwardToastPresentationState(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AwardToastPresentationState.init(shouldObserveAppActivation:suggestedWorkoutsLoadStates:loadState:progressLoadStates:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  v8 = type metadata accessor for AwardToastPresentationState(0);
  result = sub_24B3D00C4(a3, a5 + *(v8 + 24));
  *(a5 + *(v8 + 28)) = a4;
  return result;
}

unint64_t sub_24B4300F0()
{
  v1 = 0x7461745364616F6CLL;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000012;
  }

  v2 = 0xD00000000000001BLL;
  if (!*v0)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24B430178@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B430DFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4301A0(uint64_t a1)
{
  v2 = sub_24B4304B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4301DC(uint64_t a1)
{
  v2 = sub_24B4304B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardToastPresentationState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F00, &qword_24B4622C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4304B8();
  sub_24B45928C();
  LOBYTE(v12) = 0;
  sub_24B45915C();
  if (!v2)
  {
    v12 = *(v3 + 8);
    HIBYTE(v11) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C60, &qword_24B4617F8);
    sub_24B430940(&qword_27EFE8C68, sub_24B3D898C, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_24B45918C();
    v9 = type metadata accessor for AwardToastPresentationState(0);
    LOBYTE(v12) = 2;
    type metadata accessor for AwardToastLoadState(0);
    sub_24B4309C4(&qword_27EFE8C70, type metadata accessor for AwardToastLoadState, &protocol conformance descriptor for AwardToastLoadState);
    sub_24B45918C();
    v12 = *(v3 + *(v9 + 28));
    HIBYTE(v11) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C50, &qword_24B4617F0);
    sub_24B427244();
    sub_24B45918C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24B4304B8()
{
  result = qword_27EFE8F08;
  if (!qword_27EFE8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8F08);
  }

  return result;
}

uint64_t AwardToastPresentationState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  State = type metadata accessor for AwardToastLoadState(0);
  MEMORY[0x28223BE20](State);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F10, &qword_24B4622C8);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for AwardToastPresentationState(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v22 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24B4304B8();
  v13 = v21;
  sub_24B45927C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v21 = v9;
  v14 = v19;
  v15 = v20;
  LOBYTE(v24) = 0;
  *v11 = sub_24B4590BC() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C60, &qword_24B4617F8);
  v23 = 1;
  sub_24B430940(&qword_27EFE8CA8, sub_24B3D8E2C, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_24B4590EC();
  *(v11 + 1) = v24;
  LOBYTE(v24) = 2;
  sub_24B4309C4(&qword_27EFE8CB0, type metadata accessor for AwardToastLoadState, &protocol conformance descriptor for AwardToastLoadState);
  sub_24B4590EC();
  v16 = v21;
  sub_24B3D00C4(v5, &v11[*(v21 + 24)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8C50, &qword_24B4617F0);
  v23 = 3;
  sub_24B42752C();
  sub_24B4590EC();
  (*(v14 + 8))(v8, v15);
  *&v11[*(v16 + 28)] = v24;
  sub_24B430A0C(v11, v18, type metadata accessor for AwardToastPresentationState);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return sub_24B430A74(v11, type metadata accessor for AwardToastPresentationState);
}

uint64_t sub_24B430940(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8C60, &qword_24B4617F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B4309C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B430A0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B430A74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s13FitnessAwards27AwardToastPresentationStateV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((sub_24B3D1A04(*(a1 + 1), *(a2 + 1)) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AwardToastPresentationState(0);
  if ((_s13FitnessAwards19AwardToastLoadStateO2eeoiySbAC_ACtFZ_0(&a1[*(v4 + 24)], &a2[*(v4 + 24)]) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = *&a1[v5];
  v7 = *&a2[v5];

  return sub_24B3D0A7C(v6, v7);
}

void sub_24B430BD0(uint64_t a1)
{
  sub_24B3D0064();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AwardToastLoadState(319);
    if (v2 <= 0x3F)
    {
      sub_24B430C7C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B430C7C(uint64_t a1)
{
  if (!qword_2810E27A0)
  {
    type metadata accessor for AwardProgressLoadState(255);
    v1 = sub_24B458D8C();
    if (!v2)
    {
      atomic_store(v1, &qword_2810E27A0);
    }
  }
}

unint64_t sub_24B430CF8()
{
  result = qword_27EFE8F18;
  if (!qword_27EFE8F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8F18);
  }

  return result;
}

unint64_t sub_24B430D50()
{
  result = qword_27EFE8F20;
  if (!qword_27EFE8F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8F20);
  }

  return result;
}

unint64_t sub_24B430DA8()
{
  result = qword_27EFE8F28;
  if (!qword_27EFE8F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8F28);
  }

  return result;
}

uint64_t sub_24B430DFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x800000024B467000 == a2;
  if (v3 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000024B467020 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B466FC0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B4591AC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24B430F74()
{
  v1 = *v0;
  v2 = 0x7465466567616D69;
  v3 = 0x616D496863746566;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6570704177656976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x616F4C6567616D69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B431034@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4336EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B43105C(uint64_t a1)
{
  v2 = sub_24B431E18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B431098(uint64_t a1)
{
  v2 = sub_24B431E18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4310D4(uint64_t a1)
{
  v2 = sub_24B431F78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B431110(uint64_t a1)
{
  v2 = sub_24B431F78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B43114C()
{
  if (*v0)
  {
    return 1702521203;
  }

  else
  {
    return 0x4C5255656C6966;
  }
}

uint64_t sub_24B431180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
  if (v6 || (sub_24B4591AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B4591AC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B43125C(uint64_t a1)
{
  v2 = sub_24B432020();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B431298(uint64_t a1)
{
  v2 = sub_24B432020();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4312D4(uint64_t a1)
{
  v2 = sub_24B431FCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B431310(uint64_t a1)
{
  v2 = sub_24B431FCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B43134C(uint64_t a1)
{
  v2 = sub_24B431F24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B431388(uint64_t a1)
{
  v2 = sub_24B431F24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4313C4(uint64_t a1)
{
  v2 = sub_24B431ED0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B431400(uint64_t a1)
{
  v2 = sub_24B431ED0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardImageAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F30, &qword_24B462490);
  v60 = *(v2 - 8);
  v61 = v2;
  MEMORY[0x28223BE20](v2);
  v59 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F38, &qword_24B462498);
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v56 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F40, &qword_24B4624A0);
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v53 = &v50 - v7;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F48, &qword_24B4624A8);
  v52 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v50 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F50, &qword_24B4624B0);
  v51 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v10 = &v50 - v9;
  v11 = sub_24B45830C();
  v62 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AwardImageAction(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F58, &qword_24B4624B8);
  v18 = *(v17 - 8);
  v69 = v17;
  v70 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B431E18();
  v67 = v20;
  sub_24B45928C();
  sub_24B431E6C(v66, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v41 = *v16;
      v42 = v16[1];
      LOBYTE(v71) = 2;
      sub_24B431F78();
      v24 = v53;
      v25 = v69;
      v26 = v67;
      sub_24B45910C();
      v71 = v41;
      v72 = v42;
      type metadata accessor for CGSize();
      sub_24B432EB0(&qword_2810E2768, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
      v27 = v55;
      sub_24B45918C();
      v28 = v54;
    }

    else
    {
      v22 = *v16;
      v23 = v16[1];
      if (EnumCaseMultiPayload == 3)
      {
        LOBYTE(v71) = 3;
        sub_24B431F24();
        v24 = v56;
        v25 = v69;
        v26 = v67;
        sub_24B45910C();
        v71 = v22;
        v72 = v23;
        type metadata accessor for CGSize();
        sub_24B432EB0(&qword_2810E2768, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
        v27 = v58;
        sub_24B45918C();
        v28 = v57;
      }

      else
      {
        LOBYTE(v71) = 4;
        sub_24B431ED0();
        v24 = v59;
        v25 = v69;
        v26 = v67;
        sub_24B45910C();
        v71 = v22;
        v72 = v23;
        type metadata accessor for CGSize();
        sub_24B432EB0(&qword_2810E2768, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
        v27 = v61;
        sub_24B45918C();
        v28 = v60;
      }
    }

    (*(v28 + 8))(v24, v27);
    goto LABEL_12;
  }

  v29 = v64;
  v30 = v65;
  v66 = v13;
  v31 = v62;
  v32 = v63;
  if (EnumCaseMultiPayload)
  {
    v43 = *v16;
    v44 = v16[1];
    LOBYTE(v71) = 1;
    sub_24B431FCC();
    v45 = v29;
    v25 = v69;
    v26 = v67;
    sub_24B45910C();
    v71 = v43;
    v72 = v44;
    type metadata accessor for CGSize();
    sub_24B432EB0(&qword_2810E2768, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
    sub_24B45918C();
    (*(v52 + 8))(v45, v30);
LABEL_12:
    v46 = *(v70 + 8);
    v47 = v26;
    v48 = v25;
    return v46(v47, v48);
  }

  v33 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87D0, &qword_24B4624C0) + 48));
  v34 = *v33;
  v35 = v33[1];
  v36 = v66;
  (*(v31 + 32))(v66, v16, v11);
  LOBYTE(v71) = 0;
  sub_24B432020();
  v37 = v10;
  v38 = v69;
  v39 = v67;
  sub_24B45910C();
  LOBYTE(v71) = 0;
  sub_24B432EB0(&qword_2810E36E0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
  v40 = v68;
  sub_24B45918C();
  if (v40)
  {
    (*(v51 + 8))(v37, v32);
    (*(v31 + 8))(v36, v11);
  }

  else
  {
    v71 = v34;
    v72 = v35;
    v73 = 1;
    type metadata accessor for CGSize();
    sub_24B432EB0(&qword_2810E2768, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
    sub_24B45918C();
    (*(v51 + 8))(v37, v32);
    (*(v31 + 8))(v66, v11);
  }

  v46 = *(v70 + 8);
  v47 = v39;
  v48 = v38;
  return v46(v47, v48);
}

uint64_t type metadata accessor for AwardImageAction(uint64_t a1)
{
  result = qword_2810E3470;
  if (!qword_2810E3470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B431E18()
{
  result = qword_2810E34C8;
  if (!qword_2810E34C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E34C8);
  }

  return result;
}

uint64_t sub_24B431E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardImageAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B431ED0()
{
  result = qword_2810E34B0;
  if (!qword_2810E34B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E34B0);
  }

  return result;
}

unint64_t sub_24B431F24()
{
  result = qword_27EFE8F60;
  if (!qword_27EFE8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8F60);
  }

  return result;
}

unint64_t sub_24B431F78()
{
  result = qword_2810E3508;
  if (!qword_2810E3508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3508);
  }

  return result;
}

unint64_t sub_24B431FCC()
{
  result = qword_27EFE8F68;
  if (!qword_27EFE8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8F68);
  }

  return result;
}

unint64_t sub_24B432020()
{
  result = qword_2810E34F0;
  if (!qword_2810E34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E34F0);
  }

  return result;
}

uint64_t AwardImageAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F70, &qword_24B4624C8);
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x28223BE20](v3);
  v80 = &v65 - v4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F78, &qword_24B4624D0);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v87 = &v65 - v5;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F80, &qword_24B4624D8);
  v74 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v82 = &v65 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F88, &qword_24B4624E0);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v85 = &v65 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F90, &qword_24B4624E8);
  v75 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v81 = &v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8F98, &unk_24B4624F0);
  v83 = *(v9 - 8);
  v84 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v65 - v10;
  v89 = type metadata accessor for AwardImageAction(0);
  v12 = MEMORY[0x28223BE20](v89);
  v70 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v65 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v65 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v65 - v21);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v65 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v65 - v26;
  v28 = a1[3];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_24B431E18();
  v29 = v96;
  sub_24B45927C();
  if (v29)
  {
    goto LABEL_9;
  }

  v65 = v22;
  v66 = v19;
  v67 = v16;
  v30 = v85;
  v68 = v25;
  v31 = v86;
  v32 = v87;
  v69 = v27;
  v33 = v88;
  v34 = v84;
  v96 = v11;
  v35 = sub_24B4590FC();
  v36 = (2 * *(v35 + 16)) | 1;
  v92 = v35;
  v93 = v35 + 32;
  v94 = 0;
  v95 = v36;
  v37 = sub_24B3E3814();
  if (v37 == 5 || v94 != v95 >> 1)
  {
    v41 = sub_24B458FFC();
    swift_allocError();
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0);
    *v43 = v89;
    v44 = v96;
    sub_24B45906C();
    sub_24B458FEC();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    (*(v83 + 8))(v44, v34);
    swift_unknownObjectRelease();
LABEL_9:
    v45 = v90;
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  if (v37 <= 1u)
  {
    if (v37)
    {
      v64 = v33;
      LOBYTE(v91) = 1;
      sub_24B431FCC();
      v56 = v30;
      sub_24B45905C();
      v57 = v83;
      type metadata accessor for CGSize();
      sub_24B432EB0(&qword_27EFE7A60, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
      v58 = v73;
      sub_24B4590EC();
      (*(v72 + 8))(v56, v58);
      (*(v57 + 8))(v96, v34);
      swift_unknownObjectRelease();
      v61 = v65;
      *v65 = v91;
      swift_storeEnumTagMultiPayload();
      v62 = v69;
      sub_24B432E4C(v61, v69);
      v63 = v90;
    }

    else
    {
      LOBYTE(v91) = 0;
      sub_24B432020();
      v47 = v96;
      sub_24B45905C();
      v48 = v83;
      sub_24B45830C();
      LOBYTE(v91) = 0;
      sub_24B432EB0(&qword_27EFE89E8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
      v49 = v68;
      v50 = v71;
      sub_24B4590EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87D0, &qword_24B4624C0);
      type metadata accessor for CGSize();
      LOBYTE(v91) = 1;
      sub_24B432EB0(&qword_27EFE7A60, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
      v60 = v81;
      sub_24B4590EC();
      (*(v75 + 8))(v60, v50);
      (*(v48 + 8))(v47, v34);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v62 = v69;
      sub_24B432E4C(v49, v69);
      v63 = v90;
      v64 = v88;
    }
  }

  else
  {
    if (v37 == 2)
    {
      LOBYTE(v91) = 2;
      sub_24B431F78();
      v51 = v96;
      sub_24B45905C();
      type metadata accessor for CGSize();
      sub_24B432EB0(&qword_27EFE7A60, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
      v52 = v82;
      sub_24B4590EC();
      v53 = v83;
      (*(v74 + 8))(v52, v31);
      (*(v53 + 8))(v51, v34);
      swift_unknownObjectRelease();
      v59 = v66;
      *v66 = v91;
    }

    else
    {
      v38 = v96;
      if (v37 == 3)
      {
        LOBYTE(v91) = 3;
        sub_24B431F24();
        sub_24B45905C();
        type metadata accessor for CGSize();
        sub_24B432EB0(&qword_27EFE7A60, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
        v39 = v77;
        sub_24B4590EC();
        v40 = v83;
        (*(v76 + 8))(v32, v39);
        (*(v40 + 8))(v38, v34);
        swift_unknownObjectRelease();
        v59 = v67;
        *v67 = v91;
      }

      else
      {
        LOBYTE(v91) = 4;
        sub_24B431ED0();
        v54 = v80;
        sub_24B45905C();
        type metadata accessor for CGSize();
        sub_24B432EB0(&qword_27EFE7A60, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
        v55 = v79;
        sub_24B4590EC();
        (*(v78 + 8))(v54, v55);
        (*(v83 + 8))(v38, v34);
        swift_unknownObjectRelease();
        v59 = v70;
        *v70 = v91;
      }
    }

    swift_storeEnumTagMultiPayload();
    v62 = v69;
    sub_24B432E4C(v59, v69);
    v63 = v90;
    v64 = v33;
  }

  sub_24B432E4C(v62, v64);
  v45 = v63;
  return __swift_destroy_boxed_opaque_existential_1(v45);
}