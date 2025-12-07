char *sub_2527A4850(void (*a1)(__int128 *__return_ptr, char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = *v6++;
    v16 = v10;
    a1(&v15, &v16, a2);
    if (v3)
    {
      break;
    }

    if (v15)
    {
      v14 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_252737C04(0, *(v7 + 2) + 1, 1, v7);
      }

      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      v9 = v14;
      if (v12 >= v11 >> 1)
      {
        v8 = sub_252737C04((v11 > 1), v12 + 1, 1, v7);
        v9 = v14;
        v7 = v8;
      }

      *(v7 + 2) = v12 + 1;
      *&v7[16 * v12 + 32] = v9;
    }

    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

void sub_2527A497C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v47 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A8, &qword_2528C8920);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v49 = sub_2528C01C0();
  v8 = *(v49 - 8);
  v9 = MEMORY[0x28223BE20](v49);
  v41 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = &v34 - v11;
  v12 = sub_2528BFDE0();
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v44 = v14 + 16;
  v45 = v14;
  v48 = (v14 + 8);
  v43 = (v8 + 48);
  v38 = v8;
  v39 = (v8 + 32);
  v50 = a3;
  v22 = v13;

  v23 = 0;
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    v24 = v23;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v45 + 16))(v16, *(v50 + 48) + *(v45 + 72) * (__clz(__rbit64(v20)) | (v23 << 6)), v22);
    v47(v16);
    if (v3)
    {
      (*v48)(v16, v22);

      return;
    }

    v20 &= v20 - 1;
    (*v48)(v16, v22);
    if ((*v43)(v7, 1, v49) == 1)
    {
      sub_2527213D8(v7, &qword_27F4FD6A8, &qword_2528C8920);
    }

    else
    {
      v37 = v22;
      v25 = *v39;
      (*v39)(v40, v7, v49);
      v25(v41, v40, v49);
      v26 = v25;
      v27 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_2527384E8(0, v27[2] + 1, 1, v27);
      }

      v29 = v27[2];
      v28 = v27[3];
      v42 = v27;
      v30 = v29 + 1;
      v22 = v37;
      if (v29 >= v28 >> 1)
      {
        v35 = v29;
        v36 = v29 + 1;
        v33 = sub_2527384E8((v28 > 1), v29 + 1, 1, v42);
        v29 = v35;
        v30 = v36;
        v42 = v33;
      }

      v31 = v41;
      v32 = v42;
      v42[2] = v30;
      v26(&v32[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v29], v31, v49);
    }
  }

  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      return;
    }

    v20 = *(v17 + 8 * v23);
    ++v24;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_2527A4DC8(void (*result)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    do
    {
      for (i = v7; ; ++i)
      {
        if (i >= v4)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          return;
        }

        v10 = *(sub_2528BF9D0() - 8);
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_20;
        }

        result(&v25, a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * i);
        if (v3)
        {

          return;
        }

        if (v29 <= 0xFDu)
        {
          break;
        }

        sub_2527AAB1C(v25, v26, v27, v28, v29);
        if (v7 == v4)
        {
          return;
        }
      }

      v30 = v25;
      v23 = v26;
      v24 = v27;
      v11 = v28;
      v22 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_252737E74(0, *(v8 + 2) + 1, 1, v8);
      }

      v13 = *(v8 + 2);
      v12 = *(v8 + 3);
      v14 = v13 + 1;
      v15 = v22;
      v17 = v23;
      v16 = v24;
      v18 = v30;
      if (v13 >= v12 >> 1)
      {
        v21 = sub_252737E74((v12 > 1), v13 + 1, 1, v8);
        v14 = v13 + 1;
        v17 = v23;
        v16 = v24;
        v19 = v11;
        v15 = v22;
        v8 = v21;
        v18 = v30;
      }

      else
      {
        v19 = v11;
      }

      *(v8 + 2) = v14;
      v20 = &v8[40 * v13];
      *(v20 + 4) = v18;
      *(v20 + 5) = v17;
      *(v20 + 6) = v16;
      *(v20 + 7) = v19;
      v20[64] = v15;
    }

    while (v7 != v4);
  }
}

char *sub_2527A4FA4(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD660, &qword_2528D4D00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_2528C0020();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v31 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = *(sub_2528BECF0() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = MEMORY[0x277D84F90];
  v26 = v9;
  v27 = a1;
  v24 = v17;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      sub_2527213D8(v8, &qword_27F4FD660, &qword_2528D4D00);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_252738614(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_252738614((v20 > 1), v21 + 1, 1, v32);
      }

      v22 = v32;
      *(v32 + 2) = v21 + 1;
      v9 = v26;
      v19(&v22[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21], v31, v26);
      a1 = v27;
      v17 = v24;
    }

    v16 += v17;
    if (!--v14)
    {
      return v32;
    }
  }

  return v32;
}

void sub_2527A52D0(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD668, &qword_2528C8900);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v41 = type metadata accessor for DeviceEntity(0);
  v8 = *(v41 - 8);
  v9 = MEMORY[0x28223BE20](v41);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v36 = &v33 - v11;
  v12 = sub_2528BFF90();
  v13 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v42 = v14 + 16;
  v43 = v14;
  v46 = (v14 + 8);
  v37 = v8;
  v40 = (v8 + 48);
  v22 = v13;
  v47 = a3;

  v23 = 0;
  v39 = MEMORY[0x277D84F90];
  while (1)
  {
    v24 = v23;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v43 + 16))(v16, *(v47 + 48) + *(v43 + 72) * (__clz(__rbit64(v20)) | (v23 << 6)), v22);
    v45(v16);
    if (v3)
    {
      (*v46)(v16, v22);

      return;
    }

    v20 &= v20 - 1;
    (*v46)(v16, v22);
    if ((*v40)(v7, 1, v41) == 1)
    {
      sub_2527213D8(v7, &qword_27F4FD668, &qword_2528C8900);
    }

    else
    {
      v35 = v22;
      v25 = v36;
      sub_2527AAAB4(v7, v36, type metadata accessor for DeviceEntity);
      sub_2527AAAB4(v25, v38, type metadata accessor for DeviceEntity);
      v26 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_252738010(0, v26[2] + 1, 1, v26);
      }

      v28 = v26[2];
      v27 = v26[3];
      v39 = v26;
      v29 = v28 + 1;
      v22 = v35;
      if (v28 >= v27 >> 1)
      {
        v34 = v28;
        v32 = sub_252738010((v27 > 1), v28 + 1, 1, v39);
        v28 = v34;
        v39 = v32;
      }

      v30 = v38;
      v31 = v39;
      v39[2] = v29;
      sub_2527AAAB4(v30, v31 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v28, type metadata accessor for DeviceEntity);
    }
  }

  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      return;
    }

    v20 = *(v17 + 8 * v23);
    ++v24;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_2527A5718(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD668, &qword_2528C8900);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v41 = type metadata accessor for DeviceEntity(0);
  v8 = *(v41 - 8);
  v9 = MEMORY[0x28223BE20](v41);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v36 = &v33 - v11;
  v12 = sub_2528C0130();
  v13 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v42 = v14 + 16;
  v43 = v14;
  v46 = (v14 + 8);
  v37 = v8;
  v40 = (v8 + 48);
  v22 = v13;
  v47 = a3;

  v23 = 0;
  v39 = MEMORY[0x277D84F90];
  while (1)
  {
    v24 = v23;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v43 + 16))(v16, *(v47 + 48) + *(v43 + 72) * (__clz(__rbit64(v20)) | (v23 << 6)), v22);
    v45(v16);
    if (v3)
    {
      (*v46)(v16, v22);

      return;
    }

    v20 &= v20 - 1;
    (*v46)(v16, v22);
    if ((*v40)(v7, 1, v41) == 1)
    {
      sub_2527213D8(v7, &qword_27F4FD668, &qword_2528C8900);
    }

    else
    {
      v35 = v22;
      v25 = v36;
      sub_2527AAAB4(v7, v36, type metadata accessor for DeviceEntity);
      sub_2527AAAB4(v25, v38, type metadata accessor for DeviceEntity);
      v26 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_252738010(0, v26[2] + 1, 1, v26);
      }

      v28 = v26[2];
      v27 = v26[3];
      v39 = v26;
      v29 = v28 + 1;
      v22 = v35;
      if (v28 >= v27 >> 1)
      {
        v34 = v28;
        v32 = sub_252738010((v27 > 1), v28 + 1, 1, v39);
        v28 = v34;
        v39 = v32;
      }

      v30 = v38;
      v31 = v39;
      v39[2] = v29;
      sub_2527AAAB4(v30, v31 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v28, type metadata accessor for DeviceEntity);
    }
  }

  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      return;
    }

    v20 = *(v17 + 8 * v23);
    ++v24;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_2527A5B60(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD668, &qword_2528C8900);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v41 = type metadata accessor for DeviceEntity(0);
  v8 = *(v41 - 8);
  v9 = MEMORY[0x28223BE20](v41);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v36 = &v33 - v11;
  v12 = sub_2528BF9D0();
  v13 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v42 = v14 + 16;
  v43 = v14;
  v46 = (v14 + 8);
  v37 = v8;
  v40 = (v8 + 48);
  v22 = v13;
  v47 = a3;

  v23 = 0;
  v39 = MEMORY[0x277D84F90];
  while (1)
  {
    v24 = v23;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v43 + 16))(v16, *(v47 + 48) + *(v43 + 72) * (__clz(__rbit64(v20)) | (v23 << 6)), v22);
    v45(v16);
    if (v3)
    {
      (*v46)(v16, v22);

      return;
    }

    v20 &= v20 - 1;
    (*v46)(v16, v22);
    if ((*v40)(v7, 1, v41) == 1)
    {
      sub_2527213D8(v7, &qword_27F4FD668, &qword_2528C8900);
    }

    else
    {
      v35 = v22;
      v25 = v36;
      sub_2527AAAB4(v7, v36, type metadata accessor for DeviceEntity);
      sub_2527AAAB4(v25, v38, type metadata accessor for DeviceEntity);
      v26 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_252738010(0, v26[2] + 1, 1, v26);
      }

      v28 = v26[2];
      v27 = v26[3];
      v39 = v26;
      v29 = v28 + 1;
      v22 = v35;
      if (v28 >= v27 >> 1)
      {
        v34 = v28;
        v32 = sub_252738010((v27 > 1), v28 + 1, 1, v39);
        v28 = v34;
        v39 = v32;
      }

      v30 = v38;
      v31 = v39;
      v39[2] = v29;
      sub_2527AAAB4(v30, v31 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v28, type metadata accessor for DeviceEntity);
    }
  }

  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      return;
    }

    v20 = *(v17 + 8 * v23);
    ++v24;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void *sub_2527A5FD4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD668, &qword_2528C8900);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for DeviceEntity(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v32 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v30 = &v26 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = *(a4(0) - 8);
  v27 = v13;
  v19 = (v13 + 48);
  v20 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v31 = *(v18 + 72);
  v21 = MEMORY[0x277D84F90];
  v28 = v12;
  v29 = a2;
  while (1)
  {
    a1(v20);
    if (v4)
    {
      break;
    }

    if ((*v19)(v11, 1, v12) == 1)
    {
      sub_2527213D8(v11, &qword_27F4FD668, &qword_2528C8900);
    }

    else
    {
      v22 = v30;
      sub_2527AAAB4(v11, v30, type metadata accessor for DeviceEntity);
      sub_2527AAAB4(v22, v32, type metadata accessor for DeviceEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_252738010(0, v21[2] + 1, 1, v21);
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_252738010((v23 > 1), v24 + 1, 1, v21);
      }

      v21[2] = v24 + 1;
      sub_2527AAAB4(v32, v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, type metadata accessor for DeviceEntity);
      v12 = v28;
    }

    v20 += v31;
    if (!--v17)
    {
      return v21;
    }
  }

  return v21;
}

void *sub_2527A62F8(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(sub_2528BECF0() - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = MEMORY[0x277D84F90];
  v10 = *(v7 + 72);
  while (1)
  {
    a1(&v14, v8);
    if (v3)
    {
      break;
    }

    if (v15)
    {
      sub_25271A650(&v14, v16);
      sub_25271A650(v16, &v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_25273863C(0, v9[2] + 1, 1, v9);
      }

      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = sub_25273863C((v11 > 1), v12 + 1, 1, v9);
      }

      v9[2] = v12 + 1;
      sub_25271A650(&v14, &v9[5 * v12 + 4]);
    }

    else
    {
      sub_2527213D8(&v14, &qword_27F4FD6C0, &qword_2528C8930);
    }

    v8 += v10;
    if (!--v4)
    {
      return v9;
    }
  }

  return v9;
}

void sub_2527A64A8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD690, &unk_2528D2D30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v41 = type metadata accessor for RoomEntity(0);
  v8 = *(v41 - 8);
  v9 = MEMORY[0x28223BE20](v41);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v36 = &v33 - v11;
  v12 = sub_2528BF030();
  v13 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v42 = v14 + 16;
  v43 = v14;
  v46 = (v14 + 8);
  v37 = v8;
  v40 = (v8 + 48);
  v22 = v13;
  v47 = a3;

  v23 = 0;
  v39 = MEMORY[0x277D84F90];
  while (1)
  {
    v24 = v23;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v43 + 16))(v16, *(v47 + 48) + *(v43 + 72) * (__clz(__rbit64(v20)) | (v23 << 6)), v22);
    v45(v16);
    if (v3)
    {
      (*v46)(v16, v22);

      return;
    }

    v20 &= v20 - 1;
    (*v46)(v16, v22);
    if ((*v40)(v7, 1, v41) == 1)
    {
      sub_2527213D8(v7, &qword_27F4FD690, &unk_2528D2D30);
    }

    else
    {
      v35 = v22;
      v25 = v36;
      sub_2527AAAB4(v7, v36, type metadata accessor for RoomEntity);
      sub_2527AAAB4(v25, v38, type metadata accessor for RoomEntity);
      v26 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_2527384C0(0, v26[2] + 1, 1, v26);
      }

      v28 = v26[2];
      v27 = v26[3];
      v39 = v26;
      v29 = v28 + 1;
      v22 = v35;
      if (v28 >= v27 >> 1)
      {
        v34 = v28;
        v32 = sub_2527384C0((v27 > 1), v28 + 1, 1, v39);
        v28 = v34;
        v39 = v32;
      }

      v30 = v38;
      v31 = v39;
      v39[2] = v29;
      sub_2527AAAB4(v30, v31 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v28, type metadata accessor for RoomEntity);
    }
  }

  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      return;
    }

    v20 = *(v17 + 8 * v23);
    ++v24;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_2527A68F0(uint64_t (*a1)(uint64_t, __n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v37 = a2;
  v38 = a1;
  v35 = a4;
  v7 = &qword_27F4FD6A0;
  v8 = &qword_2528D4290;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A0, &qword_2528D4290);
  v34 = *(v39 - 8);
  v9 = MEMORY[0x28223BE20](v39);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v36 = &v34 - v11;
  v12 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 64);
  v16 = (v13 + 63) >> 6;
  v40 = a3;

  v17 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v8;
      v19 = v7;
      v41 = v5;
      v20 = v17;
LABEL_9:
      v21 = __clz(__rbit64(v15)) | (v20 << 6);
      v22 = v40;
      v23 = *(v40 + 48);
      v24 = sub_2528BFB20();
      v25 = *(v24 - 8);
      v26 = v23 + *(v25 + 72) * v21;
      v27 = v36;
      (*(v25 + 16))(v36, v26, v24);
      *&v27[*(v39 + 48)] = *(*(v22 + 56) + 8 * v21);
      v28 = v27;
      v29 = v42;
      v7 = v19;
      v30 = v19;
      v8 = v18;
      sub_25274AA0C(v28, v42, v30, v18);

      v31 = v41;
      v32 = (v38)(v29);
      v5 = v31;
      if (v31)
      {
        sub_2527213D8(v42, &qword_27F4FD6A0, &qword_2528D4290);

        return;
      }

      if (v32)
      {
        break;
      }

      v15 &= v15 - 1;
      sub_2527213D8(v42, v7, v18);
      v17 = v20;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v33 = v35;
    sub_25274AA0C(v42, v35, &qword_27F4FD6A0, &qword_2528D4290);
    (*(v34 + 56))(v33, 0, 1, v39);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v16)
      {

        (*(v34 + 56))(v35, 1, 1, v39);
        return;
      }

      v15 = *(v12 + 8 * v20);
      ++v17;
      if (v15)
      {
        v18 = v8;
        v19 = v7;
        v41 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

void *sub_2527A6BE0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2528C0EF0())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530A84E0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_2527A6D20@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v24 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v8;
    v22 = a4;
    v13 = *(v8 + 16);
    v12 = v8 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v7);
      v17 = v24(v10);
      if (v4)
      {
        return (*v14)(v10, v7);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v7);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v8 = v21;
        a4 = v22;
        return (*(v8 + 56))(a4, v18, 1, v7);
      }
    }

    v8 = v21;
    a4 = v22;
    (*(v21 + 32))(v22, v10, v7);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v8 + 56))(a4, v18, 1, v7);
}

void sub_2527A6EF4(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v31 = a1;
  v27 = a3;
  v37 = sub_2528C0020();
  v6 = MEMORY[0x28223BE20](v37);
  v36 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v30 = &v27 - v9;
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v32 = v8 + 32;
  v33 = v8;
  v28 = (v8 + 8);
  v29 = v8 + 16;
  v34 = a2;

  v15 = 0;
  v16 = v30;
  if (v13)
  {
    while (1)
    {
      v35 = v4;
      v17 = v15;
LABEL_9:
      v18 = v33;
      v19 = v37;
      (*(v33 + 16))(v16, *(v34 + 48) + *(v33 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v37);
      v20 = *(v18 + 32);
      v21 = v36;
      v20(v36, v16, v19);
      v22 = v35;
      v23 = v31(v21);
      v4 = v22;
      if (v22)
      {
        (*v28)(v36, v37);

        return;
      }

      if (v23)
      {
        break;
      }

      v13 &= v13 - 1;
      (*v28)(v36, v37);
      v15 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v26 = v27;
    v20(v27, v36, v37);
    v25 = v26;
    v24 = 0;
LABEL_14:
    (*(v33 + 56))(v25, v24, 1, v37);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        v24 = 1;
        v25 = v27;
        goto LABEL_14;
      }

      v13 = *(v10 + 8 * v17);
      ++v15;
      if (v13)
      {
        v35 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t Collection<>.annotationProvider(snapshot:)@<X0>(uint64_t *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD630, &qword_2528C88E0);
  sub_2527A72BC();
  result = sub_2528C0AB0();
  *a5 = result;
  return result;
}

uint64_t sub_2527A7250@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = TileInfoBearer.appEntitiesFromTile(snapshot:)(v3, AssociatedTypeWitness);
  *a1 = result;
  return result;
}

unint64_t sub_2527A72BC()
{
  result = qword_27F4FD638;
  if (!qword_27F4FD638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FD630, &qword_2528C88E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD638);
  }

  return result;
}

uint64_t TileInfoBearer.appEntitiesFromTile(snapshot:)(uint64_t a1, uint64_t a2)
{
  v283 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD640, &qword_2528C88E8);
  MEMORY[0x28223BE20](v3 - 8);
  v237 = &v226 - v4;
  v239 = sub_2528BFF00();
  v238 = *(v239 - 8);
  MEMORY[0x28223BE20](v239);
  v234 = &v226 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  MEMORY[0x28223BE20](v6 - 8);
  v279 = &v226 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD648, &qword_2528C88F0);
  MEMORY[0x28223BE20](v8 - 8);
  v247 = &v226 - v9;
  v255 = sub_2528BFD90();
  v256 = *(v255 - 8);
  MEMORY[0x28223BE20](v255);
  v248 = &v226 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = sub_2528BECF0();
  v244 = *(v289 - 1);
  v11 = MEMORY[0x28223BE20](v289);
  v277 = &v226 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v240 = &v226 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD650, &qword_2528C88F8);
  MEMORY[0x28223BE20](v14 - 8);
  v250 = &v226 - v15;
  v275 = sub_2528C0130();
  v257 = *(v275 - 8);
  MEMORY[0x28223BE20](v275);
  v251 = &v226 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD658, &qword_2528D35A0);
  MEMORY[0x28223BE20](v17 - 8);
  v254 = &v226 - v18;
  v281 = sub_2528BFC70();
  v287 = *(v281 - 8);
  v19 = MEMORY[0x28223BE20](v281);
  v280 = &v226 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v232 = &v226 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v233 = &v226 - v24;
  MEMORY[0x28223BE20](v23);
  v245 = &v226 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD660, &qword_2528D4D00);
  MEMORY[0x28223BE20](v26 - 8);
  v266 = &v226 - v27;
  v274 = sub_2528C0020();
  v267 = *(v274 - 1);
  MEMORY[0x28223BE20](v274);
  v253 = &v226 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = sub_2528BF400();
  v262 = *(v263 - 8);
  MEMORY[0x28223BE20](v263);
  v261 = &v226 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD668, &qword_2528C8900);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v229 = &v226 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v235 = &v226 - v34;
  MEMORY[0x28223BE20](v33);
  v258 = &v226 - v35;
  v264 = type metadata accessor for DeviceEntity(0);
  v260 = *(v264 - 8);
  v36 = MEMORY[0x28223BE20](v264);
  v227 = &v226 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v230 = &v226 - v39;
  MEMORY[0x28223BE20](v38);
  v243 = &v226 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD670, &qword_2528D3570);
  v42 = MEMORY[0x28223BE20](v41 - 8);
  v288 = (&v226 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = MEMORY[0x28223BE20](v42);
  v278 = &v226 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v231 = &v226 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v241 = &v226 - v49;
  MEMORY[0x28223BE20](v48);
  v271 = &v226 - v50;
  v269 = sub_2528BF9D0();
  v286 = *(v269 - 8);
  v51 = MEMORY[0x28223BE20](v269);
  v284 = &v226 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v228 = &v226 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v242 = &v226 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v259 = &v226 - v58;
  MEMORY[0x28223BE20](v57);
  v273 = &v226 - v59;
  v270 = sub_2528BEE30();
  v276 = *(v270 - 1);
  MEMORY[0x28223BE20](v270);
  v272 = &v226 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD678, &qword_2528C8908);
  v62 = MEMORY[0x28223BE20](v61 - 8);
  v282 = (&v226 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v62);
  v268 = (&v226 - v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD680, &unk_2528C9030);
  v66 = MEMORY[0x28223BE20](v65 - 8);
  v68 = &v226 - v67;
  v69 = *(a2 - 8);
  v70 = MEMORY[0x28223BE20](v66);
  v236 = &v226 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x28223BE20](v70);
  v246 = &v226 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v249 = &v226 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v252 = &v226 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v265 = &v226 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v82 = &v226 - v81;
  MEMORY[0x28223BE20](v80);
  v84 = &v226 - v83;
  v85 = sub_2528BFCE0();
  v86 = *(v85 - 8);
  v87 = MEMORY[0x28223BE20](v85);
  v89 = &v226 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v87);
  v91 = &v226 - v90;
  v94 = *(v69 + 16);
  v93 = (v69 + 16);
  v92 = v94;
  (v94)(v84, v285, a2);
  v95 = swift_dynamicCast();
  v96 = *(v86 + 7);
  if (v95)
  {
    v96(v68, 0, 1, v85);
    (*(v86 + 4))(v91, v68, v85);
    v97 = sub_2528BF310();
    MEMORY[0x28223BE20](v97);
    *(&v226 - 2) = v91;
    v98 = v268;
    sub_2527A6D20(sub_2527AAA20, v97, MEMORY[0x277D15200], v268);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD688, &qword_2528C8910);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_2528C3910;
    v288 = v86;
    v289 = v89;
    (*(v86 + 2))(v89, v91, v85);
    v100 = v282;
    sub_25272006C(v98, v282, &qword_27F4FD678, &qword_2528C8908);
    v101 = *(v276 + 48);
    v102 = v270;
    if (v101(v100, 1, v270) == 1)
    {
      v103 = v272;
      sub_2528BF2F0();
      if (v101(v282, 1, v102) != 1)
      {
        sub_2527213D8(v282, &qword_27F4FD678, &qword_2528C8908);
      }
    }

    else
    {
      v103 = v272;
      (*(v276 + 32))(v272, v282, v102);
    }

    *(v99 + 56) = type metadata accessor for SceneEntity(0);
    *(v99 + 64) = sub_2527AACF0(&qword_27F4FC518, type metadata accessor for SceneEntity, &protocol conformance descriptor for SceneEntity);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v99 + 32));
    SceneEntity.init(staticActionSet:staticHome:)(v289, v103, boxed_opaque_existential_0Tm);
    sub_2527213D8(v98, &qword_27F4FD678, &qword_2528C8908);
    v288[1](v91, v85);
    return v99;
  }

  v96(v68, 1, 1, v85);
  sub_2527213D8(v68, &qword_27F4FD680, &unk_2528C9030);
  v104 = v285;
  v270 = v93;
  v272 = v92;
  (v92)(v82, v285, a2);
  v105 = v271;
  v106 = v269;
  v107 = swift_dynamicCast();
  v108 = v286;
  v110 = v286 + 56;
  v109 = *(v286 + 56);
  v282 = v109;
  if (v107)
  {
    (v109)(v105, 0, 1, v106);
    v111 = v273;
    (*(v108 + 32))(v273, v105, v106);
    v112 = v259;
    (*(v108 + 16))(v259, v111, v106);
    v113 = v261;
    (*(v262 + 16))(v261, v283, v263);
    v114 = v112;
    v115 = v258;
    DeviceEntity.init(staticService:snapshot:)(v114, v113, v258);
    v116 = v264;
    v117 = (*(v260 + 48))(v115, 1, v264);
    v118 = v280;
    v119 = v274;
    if (v117 != 1)
    {
      v142 = v115;
      v143 = v243;
      sub_2527AAAB4(v142, v243, type metadata accessor for DeviceEntity);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD688, &qword_2528C8910);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_2528C3910;
      *(v99 + 56) = v116;
      *(v99 + 64) = sub_2527AACF0(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
      v144 = __swift_allocate_boxed_opaque_existential_0Tm((v99 + 32));
      sub_2527AAAB4(v143, v144, type metadata accessor for DeviceEntity);
      (*(v108 + 8))(v273, v106);
      return v99;
    }

    (*(v108 + 8))(v273, v106);
    sub_2527213D8(v115, &qword_27F4FD668, &qword_2528C8900);
  }

  else
  {
    (v109)(v105, 1, 1, v106);
    sub_2527213D8(v105, &qword_27F4FD670, &qword_2528D3570);
    v118 = v280;
    v119 = v274;
  }

  v121 = v272;
  (v272)(v265, v104, a2);
  v122 = v266;
  v123 = swift_dynamicCast();
  v124 = *(v267 + 56);
  v125 = v275;
  if (v123)
  {
    v126 = v267;
    v124(v122, 0, 1, v119);
    v127 = v253;
    (*(v126 + 32))(v253, v122, v119);
    v128 = sub_2528BFFE0();
    MEMORY[0x28223BE20](v128);
    *(&v226 - 2) = v283;
    sub_2527A3B60(sub_2527AAA04, (&v226 - 4), v128);
    v130 = v129;

    v99 = sub_2527A9A64(v130);

    (*(v126 + 8))(v127, v119);
    return v99;
  }

  v124(v122, 1, 1, v119);
  sub_2527213D8(v122, &qword_27F4FD660, &qword_2528D4D00);
  (v121)(v252, v104, a2);
  v131 = v254;
  v132 = v281;
  v133 = swift_dynamicCast();
  v134 = v287;
  v135 = *(v287 + 56);
  v136 = a2;
  if (v133)
  {
    v135(v131, 0, 1, v132);
    v137 = v245;
    (*(v134 + 32))(v245, v131, v132);
    v138 = v241;
    sub_2528BFBE0();
    v139 = v286;
    v140 = (*(v286 + 48))(v138, 1, v106);
    v141 = v272;
    if (v140 == 1)
    {
      (*(v134 + 8))(v137, v132);
      sub_2527213D8(v138, &qword_27F4FD670, &qword_2528D3570);
      v125 = v275;
    }

    else
    {
      v205 = v242;
      (*(v139 + 32))(v242, v138, v106);
      v206 = v259;
      (*(v139 + 16))(v259, v205, v106);
      v207 = v261;
      (*(v262 + 16))(v261, v283, v263);
      v208 = v235;
      DeviceEntity.init(staticService:snapshot:)(v206, v207, v235);
      v209 = v264;
      v210 = (*(v260 + 48))(v208, 1, v264);
      v125 = v275;
      if (v210 != 1)
      {
        v212 = v208;
        v213 = v230;
        sub_2527AAAB4(v212, v230, type metadata accessor for DeviceEntity);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD688, &qword_2528C8910);
        v99 = swift_allocObject();
        *(v99 + 16) = xmmword_2528C3910;
        *(v99 + 56) = v209;
        *(v99 + 64) = sub_2527AACF0(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
        v214 = __swift_allocate_boxed_opaque_existential_0Tm((v99 + 32));
        sub_2527AAAB4(v213, v214, type metadata accessor for DeviceEntity);
        (*(v139 + 8))(v242, v106);
        (*(v134 + 8))(v245, v281);
        return v99;
      }

      (*(v139 + 8))(v242, v106);
      (*(v134 + 8))(v245, v281);
      sub_2527213D8(v208, &qword_27F4FD668, &qword_2528C8900);
    }
  }

  else
  {
    v135(v131, 1, 1, v132);
    sub_2527213D8(v131, &qword_27F4FD658, &qword_2528D35A0);
    v141 = v272;
    v139 = v286;
  }

  v276 = v110;
  v145 = v285;
  (v141)(v249, v285, v136);
  v146 = v250;
  v147 = swift_dynamicCast();
  v148 = *(v257 + 56);
  if ((v147 & 1) == 0)
  {
    v148(v146, 1, 1, v125);
    sub_2527213D8(v146, &qword_27F4FD650, &qword_2528C88F8);
    goto LABEL_26;
  }

  v149 = v257;
  v148(v146, 0, 1, v125);
  (*(v149 + 32))(v251, v146, v125);
  v150 = sub_2528BF390();
  v151 = v240;
  sub_2528C00E0();
  if (!*(v150 + 16) || (v152 = sub_252785C40(v151), (v153 & 1) == 0))
  {

    (*(v244 + 8))(v151, v289);
    (*(v257 + 8))(v251, v275);
    goto LABEL_25;
  }

  v154 = v232;
  v155 = v139;
  v156 = v281;
  (*(v134 + 16))(v232, *(v150 + 56) + *(v134 + 72) * v152, v281);
  (*(v244 + 8))(v151, v289);

  v157 = v233;
  (*(v134 + 32))(v233, v154, v156);
  v158 = v231;
  sub_2528BFBE0();
  if ((*(v155 + 48))(v158, 1, v106) == 1)
  {
    (*(v134 + 8))(v157, v156);
    (*(v257 + 8))(v251, v275);
    sub_2527213D8(v158, &qword_27F4FD670, &qword_2528D3570);
LABEL_25:
    v145 = v285;
    goto LABEL_26;
  }

  v216 = v228;
  (*(v155 + 32))(v228, v158, v106);
  v217 = v259;
  (*(v155 + 16))(v259, v216, v106);
  v218 = v261;
  (*(v262 + 16))(v261, v283, v263);
  v219 = v229;
  DeviceEntity.init(staticService:snapshot:)(v217, v218, v229);
  v220 = (*(v260 + 48))(v219, 1, v264);
  v221 = v155;
  v145 = v285;
  if (v220 != 1)
  {
    v222 = v219;
    v223 = v227;
    sub_2527AAAB4(v222, v227, type metadata accessor for DeviceEntity);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD688, &qword_2528C8910);
    v224 = v157;
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_2528C3910;
    *(v99 + 56) = v264;
    *(v99 + 64) = sub_2527AACF0(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
    v225 = __swift_allocate_boxed_opaque_existential_0Tm((v99 + 32));
    sub_2527AAAB4(v223, v225, type metadata accessor for DeviceEntity);
    (*(v221 + 8))(v216, v106);
    (*(v134 + 8))(v224, v281);
    (*(v257 + 8))(v251, v275);
    return v99;
  }

  (*(v155 + 8))(v216, v106);
  (*(v134 + 8))(v157, v281);
  (*(v257 + 8))(v251, v275);
  sub_2527213D8(v219, &qword_27F4FD668, &qword_2528C8900);
LABEL_26:
  v159 = v272;
  (v272)(v246, v145, v136);
  v160 = v247;
  v161 = v255;
  v162 = swift_dynamicCast();
  v163 = *(v256 + 56);
  if (!v162)
  {
    v163(v160, 1, 1, v161);
    sub_2527213D8(v160, &qword_27F4FD648, &qword_2528C88F0);
    (v159)(v236, v145, v136);
    v194 = v237;
    v195 = v239;
    v196 = swift_dynamicCast();
    v197 = v238;
    v198 = *(v238 + 56);
    if (v196)
    {
      v198(v194, 0, 1, v195);
      v199 = v234;
      (*(v197 + 32))(v234, v194, v195);
      v200 = sub_2528BFEF0();
      MEMORY[0x28223BE20](v200);
      v201 = v283;
      *(&v226 - 2) = v199;
      *(&v226 - 1) = v201;
      sub_2527A33EC(sub_2527AA350, (&v226 - 4), v200);
      v203 = v202;

      v99 = sub_2527A9A64(v203);

      (*(v197 + 8))(v199, v195);
    }

    else
    {
      v198(v194, 1, 1, v195);
      sub_2527213D8(v194, &qword_27F4FD640, &qword_2528C88E8);
      return MEMORY[0x277D84F90];
    }

    return v99;
  }

  v164 = v134;
  v165 = v256;
  v163(v160, 0, 1, v161);
  v166 = v161;
  (*(v165 + 32))(v248, v160, v161);
  v167 = sub_2528BFD80();
  MEMORY[0x28223BE20](v167);
  v168 = v283;
  *(&v226 - 2) = v283;
  sub_2527A3FBC(sub_2527AA36C, (&v226 - 4), v167);
  v170 = v169;

  v171 = v170;
  v172 = *(v170 + 2);
  if (v172)
  {
    v266 = 0;
    v174 = *(v164 + 16);
    v173 = v164 + 16;
    v285 = v174;
    v175 = (*(v173 + 64) + 32) & ~*(v173 + 64);
    v265 = v171;
    v176 = &v171[v175];
    v275 = *(v173 + 56);
    v274 = (v244 + 48);
    v270 = (v244 + 32);
    v268 = (v244 + 8);
    v287 = v173;
    v273 = (v173 - 8);
    v267 = v286 + 16;
    v271 = (v286 + 32);
    v272 = (v286 + 48);
    v177 = MEMORY[0x277D84F90];
    v179 = v278;
    v178 = v279;
    v180 = v281;
    while (1)
    {
      v181 = v177;
      v285(v118, v176, v180);
      sub_2528BFC10();
      v182 = v289;
      if ((*v274)(v178, 1, v289) != 1)
      {
        break;
      }

      (*v273)(v118, v180);
      sub_2527213D8(v178, &qword_27F4FC628, &qword_2528C4750);
      v183 = 1;
LABEL_40:
      v177 = v181;
      v190 = v288;
      (v282)(v288, v183, 1, v106);
      sub_25274AA0C(v190, v179, &qword_27F4FD670, &qword_2528D3570);
      if ((*v272)(v179, 1, v106) == 1)
      {
        sub_2527213D8(v179, &qword_27F4FD670, &qword_2528D3570);
      }

      else
      {
        v191 = *v271;
        (*v271)(v284, v179, v106);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v177 = sub_2527382F4(0, v181[2] + 1, 1, v181);
        }

        v193 = v177[2];
        v192 = v177[3];
        if (v193 >= v192 >> 1)
        {
          v177 = sub_2527382F4((v192 > 1), v193 + 1, 1, v177);
        }

        v177[2] = v193 + 1;
        v191(v177 + ((*(v286 + 80) + 32) & ~*(v286 + 80)) + *(v286 + 72) * v193, v284, v106);
        v178 = v279;
        v180 = v281;
      }

      v176 += v275;
      if (!--v172)
      {

        v168 = v283;
        v166 = v255;
        goto LABEL_53;
      }
    }

    v184 = v106;
    v185 = v118;
    v186 = v277;
    (*v270)(v277, v178, v182);
    v187 = sub_2528BFC40();
    if (*(v187 + 16))
    {
      v188 = sub_2527AA96C(v186);
      if (v189)
      {
        v106 = v184;
        (*(v286 + 16))(v288, *(v187 + 56) + *(v286 + 72) * v188, v184);
        (*v268)(v186, v289);
        v118 = v280;
        (*v273)(v280, v180);

        v183 = 0;
LABEL_39:
        v179 = v278;
        goto LABEL_40;
      }

      (*v268)(v186, v289);
      v118 = v280;
      (*v273)(v280, v180);
      v183 = 1;
    }

    else
    {

      (*v268)(v186, v182);
      (*v273)(v185, v180);
      v183 = 1;
      v118 = v185;
    }

    v106 = v184;
    goto LABEL_39;
  }

  v177 = MEMORY[0x277D84F90];
LABEL_53:
  MEMORY[0x28223BE20](v204);
  *(&v226 - 2) = v168;
  v211 = sub_2527A5FD4(sub_2527AA388, (&v226 - 4), v177, MEMORY[0x277D15AC0]);

  v99 = sub_2527A9A64(v211);

  (*(v256 + 8))(v248, v166);
  return v99;
}

uint64_t Collection<>.annotationProvider(snapshot:)@<X0>(uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD630, &qword_2528C88E0);
  sub_2527A72BC();
  result = sub_2528C0AB0();
  *a4 = result;
  return result;
}

uint64_t sub_2527A978C()
{
  v0 = sub_2528BECF0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - v5;
  sub_2528BEE00();
  sub_2528BFCC0();
  v7 = sub_2528BECC0();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_2527A98C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a3;
  v5 = sub_2528BF400();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6C8, &unk_2528D3C60);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  sub_25272006C(a1, &v16 - v11, &qword_27F4FD6C8, &unk_2528D3C60);
  v13 = *(v10 + 56);
  (*(v6 + 16))(v8, a2, v5);
  DeviceEntity.init(staticService:snapshot:)(&v12[v13], v8, v17);
  v14 = sub_2528BECF0();
  return (*(*(v14 - 8) + 8))(v12, v14);
}

uint64_t sub_2527A9A64(uint64_t a1)
{
  v2 = type metadata accessor for DeviceEntity(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_25282F174(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_2527AAD38(v8, v5, type metadata accessor for DeviceEntity);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_25282F174((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_2527AACF0(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v14);
      sub_2527AAD38(v5, boxed_opaque_existential_0Tm, type metadata accessor for DeviceEntity);
      *(v7 + 16) = v11 + 1;
      sub_25271A650(&v14, v7 + 40 * v11 + 32);
      sub_2527AADA0(v5, type metadata accessor for DeviceEntity);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_2527A9C58(uint64_t a1)
{
  v2 = type metadata accessor for SceneEntity(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_25282F174(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_2527AAD38(v8, v5, type metadata accessor for SceneEntity);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_25282F174((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_2527AACF0(&qword_27F4FC518, type metadata accessor for SceneEntity, &protocol conformance descriptor for SceneEntity);
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v14);
      sub_2527AAD38(v5, boxed_opaque_existential_0Tm, type metadata accessor for SceneEntity);
      *(v7 + 16) = v11 + 1;
      sub_25271A650(&v14, v7 + 40 * v11 + 32);
      sub_2527AADA0(v5, type metadata accessor for SceneEntity);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_2527A9E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2528BF390();
  if (*(v4 + 16) && (v5 = sub_252785C40(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = sub_2528BFC70();
    v10 = *(v9 - 8);
    (*(v10 + 16))(a2, v8 + *(v10 + 72) * v7, v9);

    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  else
  {

    v12 = sub_2528BFC70();
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }
}

uint64_t sub_2527A9FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2528BF400();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2528BF9D0();
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a1);
  (*(v7 + 16))(v9, a2, v6);
  return DeviceEntity.init(staticService:snapshot:)(v12, v9, a3);
}

uint64_t sub_2527AA12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a3;
  v20 = a4;
  v6 = sub_2528BF400();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2528BFF00();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2528BFB20();
  MEMORY[0x28223BE20](v14);
  v16 = (&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, a1);
  (*(v11 + 16))(v13, a2, v10);
  (*(v7 + 16))(v9, v19, v6);
  return DeviceEntity.init(staticEndpoint:staticMatterDevice:snapshot:)(v16, v13, v9, v20);
}

uint64_t Collection<>.annotationProvider(homeName:)@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v6 = Collection<>.appEntities(homeName:)(a2, a3, a4, a5);
  v7 = sub_2527A9C58(v6);

  *a1 = v7;
  return result;
}

uint64_t sub_2527AA454@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, char *a3@<X8>)
{
  v32 = a1;
  v33 = a2;
  v4 = sub_2528BEC40();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBBC0, &qword_2528C1800);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = sub_2528BECF0();
  v34 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2528BFCB0();
  v30 = v15;
  v31 = v14;
  v38 = v13;
  sub_2528BFCA0();
  sub_2528BFC80();
  v16 = sub_2528C0CD0();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v10, 1, v16);
  v35 = v11;
  if (v18 == 1)
  {
    goto LABEL_2;
  }

  sub_25272006C(v10, v8, &qword_27F4FBBC0, &qword_2528C1800);
  v20 = (*(v17 + 88))(v8, v16);
  if (v20 == *MEMORY[0x277D16EF0])
  {
    v19 = 0;
  }

  else if (v20 == *MEMORY[0x277D16F10])
  {
    v19 = 1;
  }

  else if (v20 == *MEMORY[0x277D16F38])
  {
    v19 = 2;
  }

  else if (v20 == *MEMORY[0x277D16F28])
  {
    v19 = 3;
  }

  else
  {
    if (v20 != *MEMORY[0x277D16EF8])
    {
      (*(v17 + 8))(v8, v16);
LABEL_2:
      v19 = 5;
      goto LABEL_13;
    }

    v19 = 4;
  }

LABEL_13:
  sub_2527213D8(v10, &qword_27F4FBBC0, &qword_2528C1800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  *a3 = sub_2528BE730();
  v21 = type metadata accessor for SceneEntity(0);
  v22 = v21[6];
  sub_2528BEC20();
  *&a3[v22] = sub_2528BE730();
  v23 = v21[7];
  sub_2528BEC20();
  *&a3[v23] = sub_2528BE730();
  v25 = v34;
  v24 = v35;
  (*(v34 + 16))(&a3[v21[5]], v38, v35);
  v36 = v31;
  v37 = v30;
  sub_2528BE6C0();
  v36 = v32;
  v37 = v33;

  sub_2528BE6C0();
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v26 = 0xE500000000000000;
      v27 = 0x7065656C73;
    }

    else if (v19 == 4)
    {
      v26 = 0xEB0000000064656ELL;
      v27 = 0x6966654472657375;
    }

    else
    {
      v27 = 1701736302;
      v26 = 0xE400000000000000;
    }
  }

  else if (v19)
  {
    if (v19 == 1)
    {
      v26 = 0xED00006572757472;
      v27 = 0x61706544656D6F68;
    }

    else
    {
      v26 = 0xE600000000000000;
      v27 = 0x7055656B6177;
    }
  }

  else
  {
    v26 = 0xEB000000006C6176;
    v27 = 0x69727241656D6F68;
  }

  v36 = v27;
  v37 = v26;
  sub_2528BE6C0();
  (*(v25 + 8))(v38, v24);
  return (*(*(v21 - 1) + 56))(a3, 0, 1, v21);
}

unint64_t sub_2527AA96C(uint64_t a1)
{
  sub_2528BECF0();
  sub_2527AACF0(&qword_27F4FBD88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_2528C0900();

  return sub_2527AAB30(a1, v2);
}

uint64_t sub_2527AAA40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v5);
  result = TileInfoBearer.appEntitiesFromTile(snapshot:)(v4, v5);
  *a2 = result;
  return result;
}

uint64_t sub_2527AAAB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2527AAB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 <= 0xFDu)
  {
    sub_25272C15C(a1, a2, a3, a4, a5);
  }
}

unint64_t sub_2527AAB30(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_2528BECF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2527AACF0(&qword_27F4FC680, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_2528C0930();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_2527AACF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2527AAD38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2527AADA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ZoneEntity.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2528BECF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ZoneEntity.id.setter(uint64_t a1)
{
  v3 = sub_2528BECF0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2527AAF08()
{
  type metadata accessor for ZoneEntity(0);
  sub_2528BE6B0();
  return v1;
}

uint64_t sub_2527AAF78()
{
  type metadata accessor for ZoneEntity(0);
  sub_2528BE6B0();
  return v1;
}

uint64_t ZoneEntity.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_2528BEC40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = sub_2528C09B0();
  MEMORY[0x28223BE20](v8 - 8);
  sub_2528C09A0();
  sub_2528C0990();
  type metadata accessor for ZoneEntity(0);
  sub_2528BE6B0();
  sub_2528C0970();

  sub_2528C0990();
  sub_2528BEC30();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_2528BE8D0();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_2528BE900();
}

uint64_t type metadata accessor for ZoneEntity(uint64_t a1)
{
  result = qword_27F4FD798;
  if (!qword_27F4FD798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2527AB2B0()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FD6D0);
  __swift_project_value_buffer(v0, qword_27F4FD6D0);
  return sub_2528BE9D0();
}

uint64_t static ZoneEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FD6D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ZoneEntity.init(name:id:homeName:)@<X0>(uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v8 = sub_2528BEC40();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = type metadata accessor for ZoneEntity(0);
  v10 = *(v9 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  *(a6 + v10) = sub_2528BE730();
  v11 = *(v9 + 24);
  sub_2528BEC20();
  *(a6 + v11) = sub_2528BE730();
  v12 = sub_2528BECF0();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a6, a3, v12);
  sub_2528BE6C0();
  sub_2528BE6C0();
  return (*(v13 + 8))(a3, v12);
}

uint64_t sub_2527AB568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2528BEC40();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for ZoneEntity(0);
  v8 = *(v7 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  *(a3 + v8) = sub_2528BE730();
  v9 = *(v7 + 24);
  sub_2528BEC20();
  *(a3 + v9) = sub_2528BE730();
  sub_2528BF040();
  sub_2528BF050();
  sub_2528BE6C0();
  sub_2528BEE20();
  sub_2528BE6C0();
  v10 = sub_2528BEE30();
  (*(*(v10 - 8) + 8))(a2, v10);
  v11 = sub_2528BF070();
  return (*(*(v11 - 8) + 8))(a1, v11);
}

uint64_t sub_2527AB71C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FD6D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2527AB7C4(uint64_t a1)
{
  v2 = sub_2527B1594(&qword_27F4FCCB0, type metadata accessor for ZoneEntity, &protocol conformance descriptor for ZoneEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2527AB844(uint64_t a1)
{
  v2 = sub_2527B1594(&qword_27F4FD758, type metadata accessor for ZoneEntity, &protocol conformance descriptor for ZoneEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2527AB8C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD718, &qword_2528C8938);
  __swift_allocate_value_buffer(v0, qword_27F4FD6E8);
  __swift_project_value_buffer(v0, qword_27F4FD6E8);
  type metadata accessor for ZoneEntity(0);
  sub_2527B1594(&qword_27F4FCCB0, type metadata accessor for ZoneEntity, &protocol conformance descriptor for ZoneEntity);
  return sub_2528BE990();
}

uint64_t sub_2527AB97C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD828, &qword_2528C8E50);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  swift_getKeyPath();
  sub_2527B1594(&qword_27F4FCCB0, type metadata accessor for ZoneEntity, &protocol conformance descriptor for ZoneEntity);
  sub_25272275C(&qword_27F4FC948, &qword_27F4FC458, &unk_2528C3F40, MEMORY[0x277CB9E70]);
  sub_2528BEAD0();
  type metadata accessor for ZoneEntity(0);
  sub_2528BEAF0();
  v7 = *(v1 + 8);
  v7(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD830, &qword_2528C8E58);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2528C3910;
  (*(v1 + 16))(v9 + v8, v6, v0);
  v10 = sub_2528BEAE0();

  v7(v6, v0);
  return v10;
}

uint64_t static ZoneEntityQuery.sortingOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB6B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD718, &qword_2528C8938);
  v3 = __swift_project_value_buffer(v2, qword_27F4FD6E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2527ABC7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD720, &qword_2528C8940);
  __swift_allocate_value_buffer(v0, qword_27F4FD700);
  __swift_project_value_buffer(v0, qword_27F4FD700);
  type metadata accessor for ZoneEntity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7C0, ">f");
  sub_2527B1594(&qword_27F4FCCB0, type metadata accessor for ZoneEntity, &protocol conformance descriptor for ZoneEntity);
  return sub_2528BE920();
}

uint64_t sub_2527ABD5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7C8, &qword_2528C8D78);
  swift_getKeyPath();
  sub_2528BE870();
  sub_2527B1594(&qword_27F4FCCB0, type metadata accessor for ZoneEntity, &protocol conformance descriptor for ZoneEntity);
  v0 = sub_2528BEA50();

  swift_getKeyPath();
  sub_2528BEA50();
  sub_2528BE870();
  v1 = sub_2528BEA50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8C8, &qword_2528C49E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2528C54C0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  type metadata accessor for ZoneEntity(0);
  sub_2528BEA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7C0, ">f");
  v3 = sub_2528BEA40();

  return v3;
}

uint64_t sub_2527ABF2C(uint64_t *a1)
{
  type metadata accessor for ZoneEntity(0);

  return sub_2528BE6C0();
}

uint64_t sub_2527ABF9C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7D0, &qword_2528C8DD0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7D8, &qword_2528C8DD8);
  swift_allocObject();
  sub_2528BE850();
  type metadata accessor for ZoneEntity(0);
  sub_2527B1594(&qword_27F4FCCB0, type metadata accessor for ZoneEntity, &protocol conformance descriptor for ZoneEntity);
  sub_2528BEAC0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7E0, &qword_2528C8DE0);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2528C3910;
  (*(v2 + 16))(v6 + v5, v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7C0, ">f");
  sub_25274690C();
  v7 = sub_2528BEAB0();

  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_2527AC264@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v21 = a4;
  v22 = a2;
  v23 = a3;
  v24 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8E8, &qword_2528C4A00);
  v6 = *(v5 - 8);
  v25 = v5;
  v26 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7E8, &qword_2528C8DE8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7F0, &qword_2528C8DF0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  sub_25272275C(&qword_27F4FD7F8, &qword_27F4FD7E8, &qword_2528C8DE8, MEMORY[0x277CC90F8]);
  sub_2528BEB90();
  swift_getKeyPath();
  sub_2528BEB40();

  (*(v10 + 8))(v12, v9);
  v27 = v22;
  v28 = v23;
  sub_2528BEB80();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD800, &qword_2528C8E20);
  v18 = v24;
  v24[3] = v17;
  v18[4] = sub_2527B1600();
  __swift_allocate_boxed_opaque_existential_0Tm(v18);
  sub_25272275C(&qword_27F4FD820, &qword_27F4FD7F0, &qword_2528C8DF0, MEMORY[0x277CC90C0]);
  sub_25272275C(&qword_27F4FC938, &qword_27F4FC8E8, &qword_2528C4A00, MEMORY[0x277CC9080]);
  v19 = v25;
  sub_2528BEB20();
  (*(v26 + 8))(v8, v19);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_2527AC5D0(uint64_t *a1)
{
  type metadata accessor for ZoneEntity(0);

  return sub_2528BE6C0();
}

uint64_t static ZoneEntityQuery.properties.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB6C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD720, &qword_2528C8940);
  v3 = __swift_project_value_buffer(v2, qword_27F4FD700);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ZoneEntityQuery.entities(for:)(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  v1[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527AC7EC, 0, 0);
}

uint64_t sub_2527AC7EC()
{
  v21 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  v0[7] = __swift_project_value_buffer(v1, qword_27F5025C8);

  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    v7 = sub_2528BECF0();
    v8 = MEMORY[0x2530A81A0](v4, v7);
    v10 = sub_2527389AC(v8, v9, &v20);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_252711000, v2, v3, "Searching for zones with identifiers: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2530A8D80](v6, -1, -1);
    MEMORY[0x2530A8D80](v5, -1, -1);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v12 = v0[5];
  v11 = v0[6];
  v13 = sub_2528C0820();
  v0[8] = __swift_project_value_buffer(v13, qword_27F5025E0);

  v0[9] = sub_2528BAD50();

  v14 = type metadata accessor for HomeEntity(0);
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = sub_2528C05D0();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_task_alloc();
  v0[10] = v16;
  *v16 = v0;
  v16[1] = sub_2527ACAE4;
  v17 = v0[5];
  v18 = v0[6];

  return sub_25277ECE4(v18, 0, 1, v17);
}

uint64_t sub_2527ACAE4(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  *(*v1 + 88) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v2, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_2527ACC40, 0, 0);
}

void sub_2527ACC40(uint64_t a1, uint64_t a2)
{
  v54 = v2;
  v3 = v2[11];
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v49 = v2[3];
  v50 = v2[11];
  v7 = -1;
  v8 = -1 << *(v50 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  v51 = v2;
  while (v9)
  {
    v52 = v12;
LABEL_11:
    v14 = v2[4];
    v15 = v2[2];
    v16 = __clz(__rbit64(v9)) | (v11 << 6);
    v17 = *(v50 + 48);
    v18 = sub_2528BECF0();
    (*(*(v18 - 8) + 16))(v14, v17 + *(*(v18 - 8) + 72) * v16, v18);
    v19 = *(v50 + 56);
    v20 = v19 + *(*(type metadata accessor for HomeEntity.SnapshotPair(0) - 8) + 72) * v16;
    v21 = *(v49 + 48);
    sub_2527B144C(v20, v14 + v21, type metadata accessor for HomeEntity.SnapshotPair);
    v22 = sub_2527AD0D0(v14, v14 + v21, v15);
    sub_2527213D8(v14, &qword_27F4FCDC0, &unk_2528C5CD0);
    v23 = *(v22 + 16);
    v12 = v52;
    v24 = v52[2];
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v25 > v52[3] >> 1)
    {
      if (v24 <= v25)
      {
        v27 = v24 + v23;
      }

      else
      {
        v27 = v24;
      }

      v12 = sub_252738344(isUniquelyReferenced_nonNull_native, v27, 1, v52);
    }

    v9 &= v9 - 1;
    if (*(v22 + 16))
    {
      v28 = (v12[3] >> 1) - v12[2];
      type metadata accessor for ZoneEntity(0);
      if (v28 < v23)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      v2 = v51;
      if (v23)
      {
        v29 = v12[2];
        v30 = __OFADD__(v29, v23);
        v31 = v29 + v23;
        if (v30)
        {
          goto LABEL_32;
        }

        v12[2] = v31;
      }
    }

    else
    {

      v2 = v51;
      if (v23)
      {
        goto LABEL_30;
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v13);
    ++v11;
    if (v9)
    {
      v52 = v12;
      v11 = v13;
      goto LABEL_11;
    }
  }

  v33 = v2[8];
  v32 = v2[9];

  sub_2528BAD58(4, v32, v33, v12);

  v34 = sub_2528C0890();
  v35 = sub_2528C0D10();

  v36 = v51;

  if (os_log_type_enabled(v34, v35))
  {
    v37 = v51[2];
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v53 = v39;
    *v38 = 136315394;
    v40 = type metadata accessor for ZoneEntity(0);
    v41 = MEMORY[0x2530A81A0](v12, v40);
    v43 = sub_2527389AC(v41, v42, &v53);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2080;
    v44 = sub_2528BECF0();
    v45 = MEMORY[0x2530A81A0](v37, v44);
    v47 = sub_2527389AC(v45, v46, &v53);

    *(v38 + 14) = v47;
    _os_log_impl(&dword_252711000, v34, v35, "Found zoneEntities: %s for identifiers: %s", v38, 0x16u);
    swift_arrayDestroy();
    v36 = v51;
    MEMORY[0x2530A8D80](v39, -1, -1);
    MEMORY[0x2530A8D80](v38, -1, -1);
  }

  v48 = v36[1];

  v48(v12);
}

uint64_t sub_2527AD0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ZoneEntity(0);
  v28 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = sub_2528BF330();
  v11 = sub_2527AE664(v10);
  v31 = a2;
  sub_2527A4408(sub_2527B1760, v30, v11);
  v13 = v12;

  v27 = *(v13 + 16);
  if (v27)
  {
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    v25 = v13;
    while (v15 < *(v13 + 16))
    {
      v17 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v18 = v15 + 1;
      v29 = *(v28 + 72);
      sub_2527B144C(v13 + v17 + v29 * v15, v9, type metadata accessor for ZoneEntity);
      v19 = 0;
      v20 = *(a3 + 16);
      do
      {
        if (v20 == v19)
        {
          result = sub_2527B14D4(v9);
          goto LABEL_4;
        }

        sub_2528BECF0();
        sub_2527B1594(&qword_27F4FC680, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        ++v19;
      }

      while ((sub_2528C0930() & 1) == 0);
      sub_2527B1530(v9, v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25282F194(0, *(v16 + 16) + 1, 1);
        v16 = v32;
      }

      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_25282F194((v22 > 1), v23 + 1, 1);
        v16 = v32;
      }

      *(v16 + 16) = v23 + 1;
      result = sub_2527B1530(v26, v16 + v17 + v23 * v29);
LABEL_4:
      v15 = v18;
      v13 = v25;
      if (v18 == v27)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
LABEL_15:

    return v16;
  }

  return result;
}

uint64_t ZoneEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  v2[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527AD4EC, 0, 0);
}

uint64_t sub_2527AD4EC()
{
  v18 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  v0[8] = __swift_project_value_buffer(v1, qword_27F5025C8);

  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2527389AC(v5, v4, &v17);
    _os_log_impl(&dword_252711000, v2, v3, "Searching for zones with string: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2530A8D80](v7, -1, -1);
    MEMORY[0x2530A8D80](v6, -1, -1);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = sub_2528C0820();
  v0[9] = __swift_project_value_buffer(v10, qword_27F5025E0);

  v0[10] = sub_2528BAD5C();

  v11 = type metadata accessor for HomeEntity(0);
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = sub_2528C05D0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_2527AD7CC;
  v14 = v0[6];
  v15 = v0[7];

  return sub_25277ECE4(v15, 0, 1, v14);
}

uint64_t sub_2527AD7CC(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  *(*v1 + 96) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v2, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_2527AD928, 0, 0);
}

void sub_2527AD928(uint64_t a1, uint64_t a2)
{
  v52 = v2;
  v3 = *(v2 + 96);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v47 = *(v2 + 96);
  v46 = *(v2 + 32);
  v7 = -1;
  v8 = -1 << *(v47 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
    v49 = v12;
LABEL_11:
    v14 = v48[5];
    v16 = v48[2];
    v15 = v48[3];
    v17 = __clz(__rbit64(v9)) | (v11 << 6);
    v18 = *(v47 + 48);
    v19 = sub_2528BECF0();
    (*(*(v19 - 8) + 16))(v14, v18 + *(*(v19 - 8) + 72) * v17, v19);
    v20 = *(v47 + 56);
    v21 = v20 + *(*(type metadata accessor for HomeEntity.SnapshotPair(0) - 8) + 72) * v17;
    v22 = *(v46 + 48);
    sub_2527B144C(v21, v14 + v22, type metadata accessor for HomeEntity.SnapshotPair);
    v23 = sub_2527ADD9C(v14, v14 + v22, v16, v15);
    sub_2527213D8(v14, &qword_27F4FCDC0, &unk_2528C5CD0);
    v24 = *(v23 + 16);
    v12 = v49;
    v25 = v49[2];
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v26 > v49[3] >> 1)
    {
      if (v25 <= v26)
      {
        v28 = v25 + v24;
      }

      else
      {
        v28 = v25;
      }

      v12 = sub_252738344(isUniquelyReferenced_nonNull_native, v28, 1, v49);
    }

    v9 &= v9 - 1;
    if (*(v23 + 16))
    {
      v29 = (v12[3] >> 1) - v12[2];
      type metadata accessor for ZoneEntity(0);
      if (v29 < v24)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v24)
      {
        v30 = v12[2];
        v31 = __OFADD__(v30, v24);
        v32 = v30 + v24;
        if (v31)
        {
          goto LABEL_32;
        }

        v12[2] = v32;
      }
    }

    else
    {

      if (v24)
      {
        goto LABEL_30;
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v13);
    ++v11;
    if (v9)
    {
      v49 = v12;
      v11 = v13;
      goto LABEL_11;
    }
  }

  v33 = v48;
  v35 = v48[9];
  v34 = v48[10];

  sub_2528BAD58(4, v34, v35, v12);

  v36 = sub_2528C0890();
  v37 = sub_2528C0D10();

  if (os_log_type_enabled(v36, v37))
  {
    v50 = v48[3];
    v38 = v48[2];
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v51 = v40;
    *v39 = 136315394;
    v41 = type metadata accessor for ZoneEntity(0);
    v42 = MEMORY[0x2530A81A0](v12, v41);
    v44 = sub_2527389AC(v42, v43, &v51);

    *(v39 + 4) = v44;
    *(v39 + 12) = 2080;
    v33 = v48;
    *(v39 + 14) = sub_2527389AC(v38, v50, &v51);
    _os_log_impl(&dword_252711000, v36, v37, "Found zoneEntities: %s for string: %s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v40, -1, -1);
    MEMORY[0x2530A8D80](v39, -1, -1);
  }

  v45 = v33[1];

  v45(v12);
}

uint64_t sub_2527ADD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = type metadata accessor for ZoneEntity(0);
  v7 = *(v30 - 8);
  v8 = MEMORY[0x28223BE20](v30);
  v31 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = sub_2528BF330();
  v13 = sub_2527AE664(v12);
  v33 = a2;
  sub_2527A4408(sub_2527B1760, v32, v13);
  v15 = v14;

  v29 = *(v15 + 16);
  if (v29)
  {
    v17 = 0;
    v18 = MEMORY[0x277D84F90];
    v27 = a4;
    v28 = a3;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
        return result;
      }

      v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v20 = *(v7 + 72);
      sub_2527B144C(v15 + v19 + v20 * v17, v11, type metadata accessor for ZoneEntity);
      sub_2528BE6B0();
      if (v34 == a3 && v35 == a4)
      {
        break;
      }

      v22 = sub_2528C1060();

      if (v22)
      {
        goto LABEL_13;
      }

      result = sub_2527B14D4(v11);
LABEL_4:
      ++v17;
      a3 = v28;
      if (v29 == v17)
      {
        goto LABEL_19;
      }
    }

LABEL_13:
    sub_2527B1530(v11, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25282F194(0, *(v18 + 16) + 1, 1);
      v18 = v36;
    }

    v25 = *(v18 + 16);
    v24 = *(v18 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_25282F194((v24 > 1), v25 + 1, 1);
      v18 = v36;
    }

    *(v18 + 16) = v25 + 1;
    result = sub_2527B1530(v31, v18 + v19 + v25 * v20);
    a4 = v27;
    goto LABEL_4;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_19:

  return v18;
}

uint64_t ZoneEntityQuery.entities(matching:mode:sortedBy:limit:)(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25274BC70;

  return sub_2527AF6A0(a1, a2 & 1);
}

uint64_t sub_2527AE0E8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB6C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD720, &qword_2528C8940);
  v3 = __swift_project_value_buffer(v2, qword_27F4FD700);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2527AE19C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB6B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD718, &qword_2528C8938);
  v3 = __swift_project_value_buffer(v2, qword_27F4FD6E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2527AE250(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_25274BC30;

  return sub_2527AF6A0(a2, a3 & 1);
}

uint64_t sub_2527AE30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_25273430C;

  return ZoneEntityQuery.entities(matching:)(a2, a3);
}

uint64_t sub_2527AE3AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25274BC70;

  return ZoneEntityQuery.entities(for:)(a1);
}

uint64_t sub_2527AE440(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_2527B03E8();
  *v5 = v2;
  v5[1] = sub_2527228B0;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_2527AE4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2528BEE30();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2528BF070();
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1);
  sub_2528BF2F0();
  sub_2527AB568(v9, v6, a2);
  v11 = type metadata accessor for ZoneEntity(0);
  return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
}

uint64_t sub_2527AE664(uint64_t a1)
{
  v2 = sub_2528BF070();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = *(a1 + 16);
  v10 = sub_2527B1594(&qword_27F4FD7A8, MEMORY[0x277D154F8], MEMORY[0x277D15500]);
  result = MEMORY[0x2530A82F0](v9, v2, v10);
  v12 = 0;
  v23 = a1;
  v24 = result;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v22[1] = v3 + 16;
  if ((v17 & v13) != 0)
  {
    do
    {
      v20 = v12;
LABEL_9:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v3 + 16))(v8, *(v23 + 56) + *(v3 + 72) * (v21 | (v20 << 6)), v2);
      sub_2527AE878(v6, v8);
      result = (*(v3 + 8))(v6, v2);
    }

    while (v18);
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return v24;
    }

    v18 = *(v14 + 8 * v20);
    ++v12;
    if (v18)
    {
      v12 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2527AE878(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2528BF070();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2527B1594(&qword_27F4FD7A8, MEMORY[0x277D154F8], MEMORY[0x277D15500]);
  v33 = a2;
  v11 = sub_2528C0900();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2527B1594(&qword_27F4FD7B0, MEMORY[0x277D154F8], MEMORY[0x277D15508]);
      v21 = sub_2528C0930();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_2527AEB58(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2527AEB58(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_2528BF070();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v11 <= v10)
  {
    v12 = v10 + 1;
    if (a3)
    {
      sub_2527AF344(v12);
    }

    else
    {
      sub_2527AF028(v12);
    }

    v13 = *v3;
    sub_2527B1594(&qword_27F4FD7A8, MEMORY[0x277D154F8], MEMORY[0x277D15500]);
    v14 = sub_2528C0900();
    v15 = v13 + 56;
    v31 = v13;
    v16 = -1 << *(v13 + 32);
    a2 = v14 & ~v16;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v17 = ~v16;
      v20 = *(v7 + 16);
      v19 = v7 + 16;
      v18 = v20;
      v21 = *(v19 + 56);
      do
      {
        v18(v9, *(v31 + 48) + v21 * a2, v6);
        sub_2527B1594(&qword_27F4FD7B0, MEMORY[0x277D154F8], MEMORY[0x277D15508]);
        v22 = sub_2528C0930();
        (*(v19 - 8))(v9, v6);
        if (v22)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v17;
      }

      while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_2527AEDF0();
  }

  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

void *sub_2527AEDF0()
{
  v1 = v0;
  v2 = sub_2528BF070();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7B8, &qword_2528C8D70);
  v6 = *v0;
  v7 = sub_2528C0E30();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_2527AF028(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2528BF070();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7B8, &qword_2528C8D70);
  v7 = sub_2528C0E40();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_2527B1594(&qword_27F4FD7A8, MEMORY[0x277D154F8], MEMORY[0x277D15500]);
      result = sub_2528C0900();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_2527AF344(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2528BF070();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7B8, &qword_2528C8D70);
  result = sub_2528C0E40();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_2527B1594(&qword_27F4FD7A8, MEMORY[0x277D154F8], MEMORY[0x277D15500]);
      result = sub_2528C0900();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_2527AF6A0(uint64_t a1, char a2)
{
  *(v2 + 128) = a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  *(v2 + 32) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  *(v2 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527AF7B4, 0, 0);
}

uint64_t sub_2527AF7B4()
{
  v23 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  v0[7] = __swift_project_value_buffer(v1, qword_27F5025C8);

  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7C0, ">f");
    v8 = MEMORY[0x2530A81A0](v4, v7);
    v10 = sub_2527389AC(v8, v9, &v22);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_252711000, v2, v3, "Searching for zones with comparators: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2530A8D80](v6, -1, -1);
    MEMORY[0x2530A8D80](v5, -1, -1);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v12 = v0[5];
  v11 = v0[6];
  v13 = v0[2];
  v14 = sub_2528C0820();
  v15 = __swift_project_value_buffer(v14, qword_27F5025E0);
  v0[8] = v15;

  v0[9] = sub_2528B9D4C(4, 0, v15, v13);

  v16 = type metadata accessor for HomeEntity(0);
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = sub_2528C05D0();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = swift_task_alloc();
  v0[10] = v18;
  *v18 = v0;
  v18[1] = sub_2527AFAB8;
  v19 = v0[5];
  v20 = v0[6];

  return sub_25277ECE4(v20, 0, 1, v19);
}

uint64_t sub_2527AFAB8(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  *(*v1 + 88) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v2, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_2527AFC14, 0, 0);
}

void sub_2527AFC14(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 88);
  v4 = *(v3 + 64);
  v36 = v3 + 64;
  v38 = *(v2 + 24);
  v39 = v3;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v4;
  v8 = (63 - v6) >> 6;

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v37 = v2;
  while (1)
  {
    *(v2 + 96) = v10;
    if (!v7)
    {
      break;
    }

    v40 = v10;
LABEL_11:
    v12 = *(v2 + 32);
    v13 = __clz(__rbit64(v7)) | (v9 << 6);
    v14 = *(v39 + 48);
    v15 = sub_2528BECF0();
    (*(*(v15 - 8) + 16))(v12, v14 + *(*(v15 - 8) + 72) * v13, v15);
    v16 = *(v39 + 56);
    v17 = v16 + *(*(type metadata accessor for HomeEntity.SnapshotPair(0) - 8) + 72) * v13;
    v18 = v12 + *(v38 + 48);
    sub_2527B144C(v17, v18, type metadata accessor for HomeEntity.SnapshotPair);
    v19 = sub_2528BF330();
    v20 = sub_2527AE664(v19);
    v21 = swift_task_alloc();
    *(v21 + 16) = v18;
    sub_2527A4408(sub_2527B1760, v21, v20);
    v23 = v22;

    sub_2527213D8(v12, &qword_27F4FCDC0, &unk_2528C5CD0);
    v24 = *(v23 + 16);
    v10 = v40;
    v25 = v40[2];
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v26 > v40[3] >> 1)
    {
      if (v25 <= v26)
      {
        v28 = v25 + v24;
      }

      else
      {
        v28 = v25;
      }

      v10 = sub_252738344(isUniquelyReferenced_nonNull_native, v28, 1, v40);
    }

    v7 &= v7 - 1;
    if (*(v23 + 16))
    {
      v29 = (v10[3] >> 1) - v10[2];
      type metadata accessor for ZoneEntity(0);
      if (v29 < v24)
      {
        goto LABEL_29;
      }

      swift_arrayInitWithCopy();

      v2 = v37;
      if (v24)
      {
        v30 = v10[2];
        v31 = __OFADD__(v30, v24);
        v32 = v30 + v24;
        if (v31)
        {
          goto LABEL_30;
        }

        v10[2] = v32;
      }
    }

    else
    {

      v2 = v37;
      if (v24)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v36 + 8 * v11);
    ++v9;
    if (v7)
    {
      v40 = v10;
      v9 = v11;
      goto LABEL_11;
    }
  }

  v33 = *(v2 + 128);

  v34 = swift_task_alloc();
  *(v2 + 104) = v34;
  *v34 = v2;
  v34[1] = sub_2527AFFA4;
  v35 = *(v2 + 16);

  sub_2528AE450(v35, v33 & 1, v10);
}

uint64_t sub_2527AFFA4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_2527B0284;
  }

  else
  {
    v4 = sub_2527B00D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2527B00D8(uint64_t a1, uint64_t a2)
{
  v19 = v2;
  v3 = v2[14];
  v4 = v2[8];
  v5 = v2[9];

  sub_2528BAD58(4, v5, v4, v3);
  v6 = sub_2528C0890();
  v7 = sub_2528C0D10();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v2[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = type metadata accessor for ZoneEntity(0);
    v12 = MEMORY[0x2530A81A0](v8, v11);
    v14 = sub_2527389AC(v12, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_252711000, v6, v7, "Found zoneEntities: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x2530A8D80](v10, -1, -1);
    MEMORY[0x2530A8D80](v9, -1, -1);
  }

  v15 = v2[1];
  v16 = v2[14];

  return v15(v16);
}

uint64_t sub_2527B0284()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_2527B03E8()
{
  result = qword_27F4FD740;
  if (!qword_27F4FD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD740);
  }

  return result;
}

unint64_t sub_2527B05A4()
{
  result = qword_27F4FD778;
  if (!qword_27F4FD778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD778);
  }

  return result;
}

unint64_t sub_2527B05FC()
{
  result = qword_27F4FD780;
  if (!qword_27F4FD780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD780);
  }

  return result;
}

unint64_t sub_2527B069C()
{
  result = qword_27F4FD788;
  if (!qword_27F4FD788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD788);
  }

  return result;
}

unint64_t sub_2527B06F4()
{
  result = qword_27F4FD790;
  if (!qword_27F4FD790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCD78, &qword_2528C5C90);
    sub_2527B1594(&qword_27F4FCD90, type metadata accessor for ZoneEntity, &protocol conformance descriptor for ZoneEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD790);
  }

  return result;
}

void sub_2527B07D0(uint64_t a1)
{
  sub_2528BECF0();
  if (v1 <= 0x3F)
  {
    sub_2527468B0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2527B0864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v4 = type metadata accessor for ZoneEntity(0);
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = sub_2528BF330();
  v10 = sub_2527AE664(v9);
  v30 = a2;
  sub_2527A4408(sub_2527B1430, v29, v10);
  v12 = v11;

  v24 = *(v12 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    while (v14 < *(v12 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_2527B144C(v12 + v16 + v17 * v14, v8, type metadata accessor for ZoneEntity);
      v18 = sub_2528BE6B0();
      MEMORY[0x28223BE20](v18);
      *(&v23 - 2) = &v31;
      v19 = sub_25281A4D4(sub_2527B14B4, (&v23 - 4), v28);

      if (v19)
      {
        sub_2527B1530(v8, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25282F194(0, *(v15 + 16) + 1, 1);
          v15 = v32;
        }

        v22 = *(v15 + 16);
        v21 = *(v15 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_25282F194((v21 > 1), v22 + 1, 1);
          v15 = v32;
        }

        *(v15 + 16) = v22 + 1;
        result = sub_2527B1530(v25, v15 + v16 + v22 * v17);
      }

      else
      {
        result = sub_2527B14D4(v8);
      }

      if (v24 == ++v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_13:

    return v15;
  }

  return result;
}

uint64_t sub_2527B0B0C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  v2[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527B0BE4, 0, 0);
}

uint64_t sub_2527B0BE4()
{
  v20 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  v0[7] = __swift_project_value_buffer(v1, qword_27F5025C8);

  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    v7 = MEMORY[0x2530A81A0](v4, MEMORY[0x277D837D0]);
    v9 = sub_2527389AC(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_252711000, v2, v3, "Searching for zones with names: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2530A8D80](v6, -1, -1);
    MEMORY[0x2530A8D80](v5, -1, -1);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v10 = v0[6];
  v11 = v0[2];
  v12 = sub_2528C0820();
  v13 = __swift_project_value_buffer(v12, qword_27F5025E0);
  v0[8] = v13;

  v0[9] = sub_2528BA170(4u, 1, v13, v11);

  v14 = sub_2528C05D0();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = swift_task_alloc();
  v0[10] = v15;
  *v15 = v0;
  v15[1] = sub_2527B0E9C;
  v16 = v0[6];
  v17 = v0[3];

  return sub_25277ECE4(v17, 0, 0, v16);
}

uint64_t sub_2527B0E9C(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 88) = a1;

  sub_2527213D8(v2, &qword_27F4FC480, &unk_2528C7FA0);

  return MEMORY[0x2822009F8](sub_2527B0FCC, 0, 0);
}

void sub_2527B0FCC(uint64_t a1, uint64_t a2)
{
  v51 = v2;
  v3 = *(v2 + 88);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = *(v2 + 88);
  v8 = -1;
  v9 = -1 << *(v7 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & v4;
  v11 = (63 - v9) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v10)
  {
LABEL_10:
    v15 = v49[5];
    v16 = v49[2];
    v17 = __clz(__rbit64(v10)) | (v12 << 6);
    v18 = *(v7 + 48);
    v19 = sub_2528BECF0();
    (*(*(v19 - 8) + 16))(v15, v18 + *(*(v19 - 8) + 72) * v17, v19);
    v20 = *(v7 + 56);
    v21 = v20 + *(*(type metadata accessor for HomeEntity.SnapshotPair(0) - 8) + 72) * v17;
    v22 = *(v48 + 48);
    sub_2527B144C(v21, v15 + v22, type metadata accessor for HomeEntity.SnapshotPair);
    v23 = sub_2527B0864(v15, v15 + v22, v16);
    sub_2527213D8(v15, &qword_27F4FCDC0, &unk_2528C5CD0);
    v24 = *(v23 + 16);
    v25 = v13[2];
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v26 > v13[3] >> 1)
    {
      if (v25 <= v26)
      {
        v28 = v25 + v24;
      }

      else
      {
        v28 = v25;
      }

      v13 = sub_252738344(isUniquelyReferenced_nonNull_native, v28, 1, v13);
    }

    v10 &= v10 - 1;
    if (*(v23 + 16))
    {
      v29 = (v13[3] >> 1) - v13[2];
      type metadata accessor for ZoneEntity(0);
      if (v29 < v24)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v24)
      {
        v30 = v13[2];
        v31 = __OFADD__(v30, v24);
        v32 = v30 + v24;
        if (v31)
        {
          goto LABEL_31;
        }

        v13[2] = v32;
      }
    }

    else
    {

      if (v24)
      {
        goto LABEL_29;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v5 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  v34 = v49[8];
  v33 = v49[9];

  sub_2528BAD58(4, v33, v34, v13);

  v35 = sub_2528C0890();
  v36 = sub_2528C0D10();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = v49[2];
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v50 = v39;
    *v38 = 136315394;
    v40 = type metadata accessor for ZoneEntity(0);
    v41 = MEMORY[0x2530A81A0](v13, v40);
    v43 = sub_2527389AC(v41, v42, &v50);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2080;
    v44 = MEMORY[0x2530A81A0](v37, MEMORY[0x277D837D0]);
    v46 = sub_2527389AC(v44, v45, &v50);

    *(v38 + 14) = v46;
    _os_log_impl(&dword_252711000, v35, v36, "Found zoneEntities: %s for names: %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v39, -1, -1);
    MEMORY[0x2530A8D80](v38, -1, -1);
  }

  v47 = v49[1];

  v47(v13);
}

uint64_t sub_2527B144C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2527B14D4(uint64_t a1)
{
  v2 = type metadata accessor for ZoneEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2527B1530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZoneEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527B1594(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2527B1600()
{
  result = qword_27F4FD808;
  if (!qword_27F4FD808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FD800, &qword_2528C8E20);
    sub_2527B168C();
    sub_25274AD48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD808);
  }

  return result;
}

unint64_t sub_2527B168C()
{
  result = qword_27F4FD810;
  if (!qword_27F4FD810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FD7F0, &qword_2528C8DF0);
    sub_25272275C(&qword_27F4FD818, &qword_27F4FD7E8, &qword_2528C8DE8, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD810);
  }

  return result;
}

unint64_t sub_2527B1788()
{
  result = qword_27F4FD838;
  if (!qword_27F4FD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD838);
  }

  return result;
}

unint64_t sub_2527B17E0()
{
  result = qword_27F4FD840;
  if (!qword_27F4FD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD840);
  }

  return result;
}

unint64_t sub_2527B18B8()
{
  result = qword_27F4FD848;
  if (!qword_27F4FD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD848);
  }

  return result;
}

uint64_t sub_2527B1930()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F502920);
  __swift_project_value_buffer(v0, qword_27F502920);
  return sub_2528BEC20();
}

uint64_t sub_2527B19C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD858, &qword_2528C8FB8);
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v4[10] = *(v6 + 64);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527B1A9C, 0, 0);
}

uint64_t sub_2527B1A9C()
{
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = sub_2528C08B0();
  v0[12] = __swift_project_value_buffer(v4, qword_27F5025C8);
  sub_2527BC3D4(v3, v1, v2);
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  v8 = sub_2528C0820();
  v0[13] = __swift_project_value_buffer(v8, qword_27F5025E0);
  v0[14] = sub_2528B8A3C(v7, v5, v6);
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_2527B1C08;
  v10 = v0[6];
  v11 = v0[7];
  v12 = v0[5];

  return sub_2527B1FA8(v12, v10, v11);
}

uint64_t sub_2527B1C08(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v7 = sub_2527B1EDC;
  }

  else
  {
    *(v6 + 136) = a2;
    *(v6 + 144) = a1;
    v7 = sub_2527B1D3C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2527B1D3C()
{
  v1 = v0[17];
  v13 = v0[14];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[8];
  v12 = v0[7];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v0[2] = v0[18];
  v0[3] = v1;
  sub_2527466B0();
  sub_2528BE660();

  (*(v3 + 16))(v2, v7, v4);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v2, v4);
  sub_2527BD80C(v6, v5, v12, v13, sub_2527B5B1C, v9);

  sub_2527BE68C(v6, v5, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2527B1EDC()
{
  v1 = v0[16];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_2527BF9E4(v4, v3, v2, v0[14], v1);
  sub_2527C0A64(v4, v3, v2, v1);
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_2527B1FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD078, &qword_2528C74A8);
  v3[9] = swift_task_alloc();
  v4 = sub_2528BECF0();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for SceneEntity(0);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v5 = sub_2528BF400();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v6 = sub_2528BEEC0();
  v3[24] = v6;
  v3[25] = *(v6 - 8);
  v3[26] = swift_task_alloc();
  v7 = type metadata accessor for HomeEntity(0);
  v3[27] = v7;
  v3[28] = *(v7 - 8);
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD680, &unk_2528C9030);
  v3[30] = swift_task_alloc();
  v8 = sub_2528BFCE0();
  v3[31] = v8;
  v3[32] = *(v8 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v3[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v9 = sub_2528C05D0();
  v3[41] = v9;
  v3[42] = *(v9 - 8);
  v3[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  v3[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527B2430, 0, 0);
}

uint64_t sub_2527B2430()
{
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  v0[45] = __swift_project_value_buffer(v1, qword_27F5025C8);
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_252711000, v2, v3, "Running ActivateSceneIntent", v4, 2u);
    MEMORY[0x2530A8D80](v4, -1, -1);
  }

  v5 = v0[44];
  v6 = v0[42];
  v32 = v0[43];
  v33 = v0[40];
  v34 = v0[41];
  v35 = v0[37];
  v7 = v0[28];
  v36 = v0[27];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[6];

  v11 = sub_2528C0C40();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v12[5] = v8;
  v12[6] = v9;
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2527D3E74(0, 0, v5, &unk_2528C9048, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC490, &unk_2528C9050);
  v13 = sub_2528BF3E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2528C17E0;
  v18 = v17 + v16;
  v19 = *(v14 + 104);
  v19(v18, *MEMORY[0x277D15A30], v13);
  *(v18 + v15) = 0;
  v19(v18 + v15, *MEMORY[0x277D15A28], v13);
  sub_252744570(v17);
  swift_setDeallocating();
  v20 = 1;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2528C05A0();
  v21 = *(v6 + 16);
  v0[46] = v21;
  v0[47] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v33, v32, v34);
  v22 = *(v6 + 56);
  v0[48] = v22;
  v0[49] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v22(v33, 0, 1, v34);
  sub_2528BE790();
  v23 = *(v7 + 48);
  v0[50] = v23;
  v0[51] = (v7 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (!v23(v35, 1, v36))
  {
    (*(v0[11] + 16))(v0[38], v0[37], v0[10]);
    v20 = 0;
  }

  v24 = v0[38];
  v25 = v0[10];
  v26 = v0[11];
  sub_2527213D8(v0[37], &qword_27F4FC488, &unk_2528C3F80);
  v27 = *(v26 + 56);
  v0[52] = v27;
  v27(v24, v20, 1, v25);
  v28 = swift_task_alloc();
  v0[53] = v28;
  *v28 = v0;
  v28[1] = sub_2527B28A4;
  v29 = v0[40];
  v30 = v0[38];

  return sub_25279E2F8(v29, v30);
}

uint64_t sub_2527B28A4(uint64_t a1)
{
  v2 = *(*v1 + 320);
  v3 = *(*v1 + 304);
  *(*v1 + 432) = a1;

  sub_2527213D8(v3, &qword_27F4FC628, &qword_2528C4750);
  sub_2527213D8(v2, &qword_27F4FC480, &unk_2528C7FA0);

  return MEMORY[0x2822009F8](sub_2527B2A00, 0, 0);
}

uint64_t sub_2527B2A00()
{
  v1 = v0[50];
  v2 = v0[36];
  v3 = v0[27];
  sub_2528BE790();
  v4 = v1(v2, 1, v3);
  v5 = v0[54];
  if (v4 == 1)
  {
    v6 = v0[48];
    v7 = v0[46];
    v8 = v0[43];
    v9 = v0[41];
    v10 = v0[39];
    v11 = v0[36];

    sub_2527213D8(v11, &qword_27F4FC488, &unk_2528C3F80);
    v7(v10, v8, v9);
    v6(v10, 0, 1, v9);
    v12 = swift_task_alloc();
    v0[55] = v12;
    *v12 = v0;
    v12[1] = sub_2527B30F0;
    v13 = v0[39];
    v14 = v0[9];

    return sub_252799538(v14, v13);
  }

  sub_2527B5C50(v0[36], v0[29]);
  if (*(v5 + 16) && (v16 = sub_252785C40(v0[29]), (v17 & 1) != 0))
  {
    v19 = v0[25];
    v18 = v0[26];
    v21 = v0[23];
    v20 = v0[24];
    v22 = v0[21];
    v23 = v0[19];
    v56 = v0[20];
    v57 = v0[15];
    v24 = v0[11];
    v58 = v0[10];
    v59 = v0[14];
    (*(v19 + 16))(v18, *(v0[54] + 56) + *(v19 + 72) * v16, v20);

    sub_2528BEE70();
    (*(v19 + 8))(v18, v20);
    v25 = sub_2528BF380();
    (*(v22 + 8))(v21, v56);
    sub_2528BE790();
    (*(v24 + 16))(v59, v23 + *(v57 + 20), v58);
    sub_2527B5CB4(v23, type metadata accessor for SceneEntity);
    if (*(v25 + 16))
    {
      v26 = sub_252785C40(v0[14]);
      if (v27)
      {
        v28 = v0[29];
        v29 = v0[14];
        v30 = v0[10];
        v31 = v0[11];
        (*(v0[32] + 16))(v0[30], *(v25 + 56) + *(v0[32] + 72) * v26, v0[31]);
        (*(v31 + 8))(v29, v30);
        sub_2527B5CB4(v28, type metadata accessor for HomeEntity);

        v32 = 0;
        goto LABEL_13;
      }
    }

    v33 = v0[29];
    v34 = v0[14];
    v35 = v0[10];
    v36 = v0[11];

    (*(v36 + 8))(v34, v35);
  }

  else
  {
    v33 = v0[29];
  }

  sub_2527B5CB4(v33, type metadata accessor for HomeEntity);
  v32 = 1;
LABEL_13:
  v37 = v0[31];
  v38 = v0[32];
  v39 = v0[30];
  (*(v38 + 56))(v39, v32, 1, v37);
  if ((*(v38 + 48))(v39, 1, v37) == 1)
  {
    v55 = v0[43];
    v40 = v0[42];
    v53 = v0[52];
    v54 = v0[41];
    v41 = v0[17];
    v52 = v0[16];
    v42 = v0[15];
    v43 = v0[10];
    v44 = v0[11];
    sub_2527213D8(v0[30], &qword_27F4FD680, &unk_2528C9030);
    type metadata accessor for HomeAppIntentError(0);
    sub_2527B5D14(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    v46 = v45;
    v47 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48));
    sub_2528BE790();
    (*(v44 + 16))(v46, v41 + *(v42 + 20), v43);
    sub_2527B5CB4(v41, type metadata accessor for SceneEntity);
    v53(v46, 0, 1, v43);
    sub_2528BE790();
    sub_2528BE6B0();
    v48 = v0[2];
    v49 = v0[3];
    sub_2527B5CB4(v52, type metadata accessor for SceneEntity);
    *v47 = v48;
    v47[1] = v49;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v40 + 8))(v55, v54);

    v50 = v0[1];

    return v50();
  }

  else
  {
    (*(v0[32] + 32))(v0[35], v0[30], v0[31]);
    sub_2528BEFC0();
    v51 = swift_task_alloc();
    v0[56] = v51;
    *v51 = v0;
    v51[1] = sub_2527B37C8;

    return MEMORY[0x28216EA40]();
  }
}

uint64_t sub_2527B30F0()
{
  v1 = *(*v0 + 312);

  sub_2527213D8(v1, &qword_27F4FC480, &unk_2528C7FA0);

  return MEMORY[0x2822009F8](sub_2527B3218, 0, 0);
}

uint64_t sub_2527B3218()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[9];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[31];
    v5 = v0[32];
    v6 = v0[30];
    sub_2527213D8(v3, &qword_27F4FD078, &qword_2528C74A8);
    (*(v5 + 56))(v6, 1, 1, v4);
LABEL_9:
    v41 = v0[43];
    v25 = v0[42];
    v39 = v0[52];
    v40 = v0[41];
    v26 = v0[17];
    v38 = v0[16];
    v27 = v0[15];
    v28 = v0[10];
    v29 = v0[11];
    sub_2527213D8(v0[30], &qword_27F4FD680, &unk_2528C9030);
    type metadata accessor for HomeAppIntentError(0);
    sub_2527B5D14(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    v31 = v30;
    v32 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48));
    sub_2528BE790();
    (*(v29 + 16))(v31, v26 + *(v27 + 20), v28);
    sub_2527B5CB4(v26, type metadata accessor for SceneEntity);
    v39(v31, 0, 1, v28);
    sub_2528BE790();
    sub_2528BE6B0();
    v33 = v0[2];
    v34 = v0[3];
    sub_2527B5CB4(v38, type metadata accessor for SceneEntity);
    *v32 = v33;
    v32[1] = v34;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v25 + 8))(v41, v40);

    v35 = v0[1];

    return v35();
  }

  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[20];
  v10 = v0[18];
  v44 = v0[13];
  v11 = v0[11];
  v42 = v0[15];
  v43 = v0[10];
  sub_2528BEE70();
  (*(v2 + 8))(v3, v1);
  v12 = sub_2528BF380();
  (*(v8 + 8))(v7, v9);
  sub_2528BE790();
  (*(v11 + 16))(v44, v10 + *(v42 + 20), v43);
  sub_2527B5CB4(v10, type metadata accessor for SceneEntity);
  v13 = v0[13];
  if (*(v12 + 16))
  {
    v14 = sub_252785C40(v0[13]);
    if (v15)
    {
      v16 = v0[13];
      v17 = v0[10];
      v18 = v0[11];
      (*(v0[32] + 16))(v0[30], *(v12 + 56) + *(v0[32] + 72) * v14, v0[31]);
      (*(v18 + 8))(v16, v17);

      v19 = 0;
      goto LABEL_8;
    }

    v13 = v0[13];
  }

  v20 = v0[10];
  v21 = v0[11];

  (*(v21 + 8))(v13, v20);
  v19 = 1;
LABEL_8:
  v22 = v0[31];
  v23 = v0[32];
  v24 = v0[30];
  (*(v23 + 56))(v24, v19, 1, v22);
  if ((*(v23 + 48))(v24, 1, v22) == 1)
  {
    goto LABEL_9;
  }

  (*(v0[32] + 32))(v0[35], v0[30], v0[31]);
  sub_2528BEFC0();
  v37 = swift_task_alloc();
  v0[56] = v37;
  *v37 = v0;
  v37[1] = sub_2527B37C8;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_2527B37C8(uint64_t a1)
{
  *(*v1 + 456) = a1;

  return MEMORY[0x2822009F8](sub_2527B38C8, 0, 0);
}

uint64_t sub_2527B38C8()
{
  sub_2528C0C20();
  *(v0 + 464) = sub_2528C0C10();
  v2 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_2527B395C, v2, v1);
}

uint64_t sub_2527B395C()
{
  v1 = *(v0 + 456);

  *(v0 + 472) = sub_2528BEEF0();

  return MEMORY[0x2822009F8](sub_2527B39D0, 0, 0);
}

uint64_t sub_2527B39D0(uint64_t a1)
{
  v25 = v1;
  v2 = v1[59];
  if (v2)
  {
    v3 = swift_task_alloc();
    v1[60] = v3;
    *v3 = v1;
    v3[1] = sub_2527B3CCC;
    v4 = v1[35];
    v5 = v1[7];
    v6 = v1[8];
    v7 = v1[6];

    return sub_2527B46C4((v1 + 4), v4, v7, v5, v6, v2);
  }

  else
  {
    v9 = sub_2528C0890();
    v10 = sub_2528C0CF0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_252711000, v9, v10, "Failed to execution actionSet because we are missing a homeManager (THIS SHOULD NEVER HAPPEN", v11, 2u);
      MEMORY[0x2530A8D80](v11, -1, -1);
    }

    v13 = v1[42];
    v12 = v1[43];
    v14 = v1[41];
    v15 = v1[35];
    v16 = v1[31];
    v17 = v1[32];
    v18 = v1[17];

    sub_2528BE790();
    v23 = 10;
    v24 = 0;
    v22 = sub_252749330(v18, &v23);
    v21 = v19;
    (*(v17 + 8))(v15, v16);
    (*(v13 + 8))(v12, v14);

    v20 = v1[1];

    return v20(v22, v21);
  }
}

uint64_t sub_2527B3CCC()
{

  return MEMORY[0x2822009F8](sub_2527B3DC8, 0, 0);
}

uint64_t sub_2527B3DC8()
{
  v52 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 32);
  v47 = *(v0 + 40);
  v5 = *(*(v0 + 256) + 16);
  v5(*(v0 + 272), v1, v3);
  v5(v2, v1, v3);
  v6 = sub_2528C0890();
  v7 = sub_2528C0D10();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 264);
  v10 = *(v0 + 272);
  v11 = *(v0 + 248);
  v12 = *(v0 + 256);
  if (v8)
  {
    loga = v6;
    v39 = *(v0 + 96);
    v45 = *(v0 + 88);
    v13 = *(v0 + 80);
    v41 = v7;
    v14 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v49 = v42;
    *v14 = 136381187;
    v15 = sub_2528BFCB0();
    v40 = v4;
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v10, v11);
    v19 = sub_2527389AC(v15, v17, &v49);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    sub_2528BFCA0();
    sub_2527B5D14(&qword_27F4FD070, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = sub_2528C1040();
    v22 = v21;
    (*(v45 + 8))(v39, v13);
    v46 = v18;
    v18(v9, v11);
    v23 = sub_2527389AC(v20, v22, &v49);

    *(v14 + 14) = v23;
    *(v14 + 22) = 2082;
    v24 = v40;
    v50 = v40;
    v51 = v47;
    v25 = sub_2527348DC();
    v27 = sub_2527389AC(v25, v26, &v49);

    *(v14 + 24) = v27;
    _os_log_impl(&dword_252711000, loga, v41, "ActivateSceneIntent completed executing %{private}s(%{public}s) with results: %{public}s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v42, -1, -1);
    MEMORY[0x2530A8D80](v14, -1, -1);
  }

  else
  {

    v28 = *(v12 + 8);
    v28(v9, v11);
    v46 = v28;
    v28(v10, v11);
    v24 = v4;
  }

  v29 = *(v0 + 472);
  v31 = *(v0 + 336);
  v30 = *(v0 + 344);
  v32 = *(v0 + 328);
  v33 = *(v0 + 280);
  v34 = *(v0 + 248);
  v35 = *(v0 + 136);
  sub_2528BE790();
  v50 = v24;
  v51 = v47;
  v48 = sub_252749330(v35, &v50);
  log = v36;

  v46(v33, v34);
  (*(v31 + 8))(v30, v32);

  v37 = *(v0 + 8);

  return v37(v48, log);
}

uint64_t sub_2527B427C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a1;
  v6[27] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20);
  v6[30] = swift_task_alloc();
  v7 = sub_2528BE8B0();
  v6[31] = v7;
  v6[32] = *(v7 - 8);
  v6[33] = swift_task_alloc();
  type metadata accessor for SceneEntity(0);
  v6[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527B43A4, 0, 0);
}

uint64_t sub_2527B43A4()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 216);
  v9 = *(v0 + 224);
  sub_2528BE790();
  *(v0 + 184) = v4;
  *(v0 + 192) = v9;
  sub_2527B18B8();
  sub_2528BE5B0();
  sub_2528BE8A0();
  (*(v3 + 8))(v1, v2);
  v5 = swift_task_alloc();
  *(v0 + 280) = v5;
  *v5 = v0;
  v5[1] = sub_2527B44D8;
  v6 = *(v0 + 272);
  v7 = *(v0 + 240);

  return sub_2527F75E4(v0 + 16, v6, v7);
}

uint64_t sub_2527B44D8()
{

  return MEMORY[0x2822009F8](sub_2527B45D4, 0, 0);
}

uint64_t sub_2527B45D4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    *(v0 + 128) = *(v0 + 16);
    v2 = *(v0 + 48);
    *(v0 + 144) = *(v0 + 32);
    *(v0 + 160) = v2;
    *(v0 + 176) = *(v0 + 64);
    *(v0 + 136) = v1;
    sub_2527B5D5C();
    sub_2528BFA10();
    v3 = *(v0 + 144);
    *(v0 + 72) = *(v0 + 128);
    *(v0 + 88) = v3;
    *(v0 + 104) = *(v0 + 160);
    *(v0 + 120) = *(v0 + 176);
    sub_2527B5DB0(v0 + 72);
  }

  **(v0 + 208) = v1 == 0;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2527B46C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a1;
  v6[12] = a2;
  return MEMORY[0x2822009F8](sub_2527B46E8, 0, 0);
}

uint64_t sub_2527B46E8()
{
  sub_2528BE790();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_2527B47A4;
  v4 = *(v0 + 112);

  return MEMORY[0x28216FB38](v1, v2, v4);
}

uint64_t sub_2527B47A4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_2527B48DC;
  }

  else
  {
    v2 = sub_2527B48B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2527B48B8()
{
  v1 = *(v0 + 88);
  *v1 = 0;
  *(v1 + 8) = 2;
  return (*(v0 + 8))();
}

uint64_t sub_2527B48DC()
{
  v16 = v0;
  v1 = *(v0 + 128);
  *(v0 + 32) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC210, &qword_2528C6230);
  type metadata accessor for HMError(0);
  if ((swift_dynamicCast() & 1) != 0 && (v3 = *(v0 + 40), *(v0 + 72) = v3, sub_2527B5D14(&qword_27F4FC0D0, type metadata accessor for HMError, &unk_2528C3258), sub_2528BEBE0(), v3, sub_2527A0688(*(v0 + 80), &v15), v4 = v15, v15 != 20))
  {
    v12 = *(v0 + 88);

    *v12 = v4;
    *(v12 + 8) = 0;
  }

  else
  {
    v5 = *(v0 + 128);
    *(v0 + 48) = v5;
    v6 = v5;
    v7 = swift_dynamicCast();
    v8 = *(v0 + 128);
    v9 = *(v0 + 88);
    if (v7)
    {
      v10 = *(v0 + 56);
      *(v0 + 64) = v10;
      sub_2527B5D14(&qword_27F4FC0D0, type metadata accessor for HMError, &unk_2528C3258);
      v11 = sub_2528BEC00();

      *v9 = v11;
      *(v9 + 8) = 1;
    }

    else
    {

      *v9 = 10;
      *(v9 + 8) = 0;
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2527B4AD0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB6C8 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F502920);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2527B4B78(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25271F3AC;

  return sub_2527B19C4(a1, v4, v5, v6);
}

uint64_t sub_2527B4C2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2527B524C();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_2527B4C58(uint64_t a1)
{
  v2 = sub_2527B18B8();

  return MEMORY[0x28210B538](a1, v2);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2527B4CA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2527B4CF0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2527B4D40()
{
  v0 = type metadata accessor for SceneEntity(0);
  MEMORY[0x28223BE20](v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  MEMORY[0x28223BE20](v1);
  sub_2528C0E70();

  strcpy(v6, "homeEntity: ");
  sub_2528BE790();
  v2 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v2);

  MEMORY[0x2530A80B0](0x6E45656E6563730ALL, 0xEE00203A79746974);
  sub_2528BE790();
  v3 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v3);

  MEMORY[0x2530A80B0](0x74756F656D69740ALL, 0xEA0000000000203ALL);
  sub_2528BE790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE10, &unk_2528C6280);
  v4 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v4);

  return v6[0];
}

uint64_t sub_2527B4F50()
{
  v0 = type metadata accessor for HomeEntity(0);
  v1 = sub_2527B5AC8();
  MEMORY[0x2530A60E0](v1, v0, &type metadata for ActivateSceneIntentHomeResolver, v1);
  sub_2527B5D14(&qword_27F4FC4A0, type metadata accessor for HomeEntity, &protocol conformance descriptor for HomeEntity);

  return sub_2528BEAA0();
}

uint64_t sub_2527B4FFC@<X0>(uint64_t a1@<X8>)
{
  v9[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD888, &unk_2528C8FE0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC450, &qword_2528C3F10);
  swift_getKeyPath();
  v11 = sub_2528BE9C0();
  v5 = type metadata accessor for SceneEntity(0);
  v6 = sub_2527B5A20();
  MEMORY[0x2530A60E0](&v12, &v11, v5, &type metadata for SceneEntityFromNameResolver, v6);

  swift_getKeyPath();
  v10 = sub_2528BE9C0();
  v7 = sub_2527B5A74();
  MEMORY[0x2530A60E0](&v11, &v10, v5, &type metadata for SceneEntityFromSceneTypeResolver, v7);

  v10 = v12;
  sub_2527B5D14(&qword_27F4FC4E0, type metadata accessor for SceneEntity, &protocol conformance descriptor for SceneEntity);
  sub_2528BEA50();
  sub_2528BEAA0();

  v9[4] = v11;
  sub_2528BEA50();
  v9[2] = v6;
  v9[3] = &type metadata for SceneEntityFromNameResolver;
  sub_2528BEA90();

  (*(v2 + 8))(v4, v1);
}

uint64_t sub_2527B524C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC78, &unk_2528C5B30);
  v40 = *(v0 - 8);
  v41 = v0;
  MEMORY[0x28223BE20](v0);
  v39 = &v33 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC470, &unk_2528CDE00);
  MEMORY[0x28223BE20](v2 - 8);
  v38 = &v33 - v3;
  v45 = sub_2528BE950();
  v4 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v10;
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - v14;
  v35 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v33 - v17;
  v42 = &v33 - v17;
  v19 = sub_2528BEC40();
  v48 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC88, &unk_2528C5B40);
  sub_2528BEC20();
  v21 = *(v20 + 56);
  v47 = v20 + 56;
  v49 = v21;
  v21(v18, 1, 1, v19);
  v22 = type metadata accessor for HomeEntity(0);
  (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
  v23 = sub_2528BE630();
  v24 = *(*(v23 - 8) + 56);
  v24(v12, 1, 1, v23);
  v24(v10, 1, 1, v23);
  v43 = *MEMORY[0x277CBA308];
  v25 = *(v4 + 104);
  v44 = v4 + 104;
  v46 = v25;
  v26 = v6;
  v25(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD860, &unk_2528C8FC0);
  v36 = MEMORY[0x277CBA480];
  sub_25272275C(&qword_27F4FD868, &qword_27F4FD860, &unk_2528C8FC0, MEMORY[0x277CBA480]);
  sub_2527B5D14(&qword_27F4FCC90, type metadata accessor for HomeEntity, &protocol conformance descriptor for HomeEntity);
  v27 = v42;
  v28 = v34;
  v33 = v12;
  v37 = sub_2528BE7E0();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD870, &unk_2528CDE10);
  sub_2528BEC20();
  v49(v27, 1, 1, v48);
  v29 = type metadata accessor for SceneEntity(0);
  (*(*(v29 - 8) + 56))(v38, 1, 1, v29);
  v24(v12, 1, 1, v23);
  v24(v28, 1, 1, v23);
  v46(v26, v43, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD878, &unk_2528C8FD0);
  sub_25272275C(&qword_27F4FD880, &qword_27F4FD878, &unk_2528C8FD0, v36);
  sub_2527B5D14(&qword_27F4FC518, type metadata accessor for SceneEntity, &protocol conformance descriptor for SceneEntity);
  v30 = v42;
  v31 = v33;
  sub_2528BE7E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCF8, &unk_2528C5B80);
  sub_2528BEC20();
  v49(v30, 1, 1, v48);
  v50 = 0;
  v51 = 1;
  v24(v31, 1, 1, v23);
  (*(v40 + 104))(v39, *MEMORY[0x277CB9ED0], v41);
  v46(v26, v43, v45);
  sub_2528BE820();
  return v37;
}

unint64_t sub_2527B5A20()
{
  result = qword_27F4FD890;
  if (!qword_27F4FD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD890);
  }

  return result;
}

unint64_t sub_2527B5A74()
{
  result = qword_27F4FD898;
  if (!qword_27F4FD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD898);
  }

  return result;
}

unint64_t sub_2527B5AC8()
{
  result = qword_27F4FD8A0;
  if (!qword_27F4FD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD8A0);
  }

  return result;
}

uint64_t sub_2527B5B1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD858, &qword_2528C8FB8);

  return sub_2527BB568();
}

uint64_t sub_2527B5B88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25271F3AC;

  return sub_2527B427C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2527B5C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527B5CB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2527B5D14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2527B5D5C()
{
  result = qword_27F4FD8A8;
  if (!qword_27F4FD8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD8A8);
  }

  return result;
}

uint64_t sub_2527B5E04()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F502938);
  __swift_project_value_buffer(v0, qword_27F502938);
  return sub_2528BEC20();
}

uint64_t sub_2527B5E68(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD948, &qword_2528C94A0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527B5F3C, 0, 0);
}

uint64_t sub_2527B5F3C()
{
  sub_2527B63D8();
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_2528C08B0();
  v0[8] = __swift_project_value_buffer(v2, qword_27F5025C8);
  sub_2527BC5E4(v1);
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v3 = v0[3];
  v4 = sub_2528C0820();
  v0[9] = __swift_project_value_buffer(v4, qword_27F5025E0);
  v0[10] = sub_2528B8DD4(v3);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_2527B60DC;
  v6 = v0[2];

  return sub_2527B65F4(v6);
}

uint64_t sub_2527B60DC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_2527B6328;
  }

  else
  {
    v2 = sub_2527B61F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2527B61F0()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[5];
  v5 = v0[3];
  v4 = v0[4];
  (*(v3 + 16))(v2, v0[2], v4);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v2, v4);
  sub_2527BDBD8(v5, v1, sub_2527C3D8C, v7);

  sub_2527BE824(v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2527B6328()
{
  v1 = v0[12];
  v2 = v0[3];
  sub_2527BFDCC(v2, v0[10], v1);
  sub_2527C0C70(v2, v1);
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2527B63D8()
{
  sub_2528BE790();
  v0 = *(v9 + 16);

  if (!v0)
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v8 = sub_2528C08B0();
    __swift_project_value_buffer(v8, qword_27F5025C8);
    v4 = sub_2528C0890();
    v5 = sub_2528C0CF0();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_12;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Attributes are empty";
    goto LABEL_11;
  }

  sub_2528BE790();
  v1 = *(v9 + 16);

  if (v1)
  {
    return result;
  }

  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v3 = sub_2528C08B0();
  __swift_project_value_buffer(v3, qword_27F5025C8);
  v4 = sub_2528C0890();
  v5 = sub_2528C0CF0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Devices are empty";
LABEL_11:
    _os_log_impl(&dword_252711000, v4, v5, v7, v6, 2u);
    MEMORY[0x2530A8D80](v6, -1, -1);
  }

LABEL_12:

  type metadata accessor for HomeAppIntentError(0);
  sub_2527C3FAC(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_2527B65F4(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;
  v3 = type metadata accessor for HomeEntity(0);
  v2[51] = v3;
  v2[52] = *(v3 - 8);
  v2[53] = swift_task_alloc();
  v4 = sub_2528C0690();
  v2[54] = v4;
  v2[55] = *(v4 - 8);
  v2[56] = swift_task_alloc();
  type metadata accessor for TriggerRecurrenceWeekdaysEntity(0);
  v2[57] = swift_task_alloc();
  v5 = sub_2528BECF0();
  v2[58] = v5;
  v2[59] = *(v5 - 8);
  v2[60] = swift_task_alloc();
  type metadata accessor for TriggerEventType(0);
  v2[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v2[62] = swift_task_alloc();
  v6 = sub_2528BF400();
  v2[63] = v6;
  v2[64] = *(v6 - 8);
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v7 = sub_2528BEE30();
  v2[67] = v7;
  v2[68] = *(v7 - 8);
  v2[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA8, &unk_2528C5CB0);
  v2[70] = swift_task_alloc();
  v2[71] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD090, &unk_2528C95C0);
  v2[72] = swift_task_alloc();
  v2[73] = type metadata accessor for HomeEntity.SnapshotPair(0);
  v2[74] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  v2[75] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v8 = sub_2528C05D0();
  v2[79] = v8;
  v2[80] = *(v8 - 8);
  v2[81] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527B6A48, 0, 0);
}

uint64_t sub_2527B6A48()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[75];
  v5 = v0[50];
  sub_2528C05B0();
  v0[82] = *(v5 + 16);
  sub_2528BE790();
  v0[83] = *(v5 + 8);
  sub_2528BE790();
  v6 = v0[42];
  v0[84] = v6;
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v7 = swift_task_alloc();
  v0[85] = v7;
  *v7 = v0;
  v7[1] = sub_2527B6B9C;
  v8 = v0[78];
  v9 = v0[75];

  return sub_25277ECE4(v8, v6, 0, v9);
}

uint64_t sub_2527B6B9C(uint64_t a1)
{
  v2 = *(*v1 + 624);
  v3 = *(*v1 + 600);
  *(*v1 + 688) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v2, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_2527B6D1C, 0, 0);
}

uint64_t sub_2527B6D1C()
{
  v1 = v0[86];
  if (*(v1 + 16) != 1)
  {
    v20 = v0[81];
    v21 = v0[80];
    v22 = v0[79];
    v23 = v0[58];
    v24 = v0[59];

    type metadata accessor for HomeAppIntentError(0);
    sub_2527C3FAC(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    v26 = v25;
    v27 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48));
    (*(v24 + 56))(v26, 1, 1, v23);
    *v27 = 0;
    v27[1] = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v21 + 8))(v20, v22);
LABEL_13:

    v43 = v0[1];

    return v43();
  }

  v2 = v0[70];
  sub_2527D38F8(v1, v2);

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    sub_2527213D8(v0[70], &qword_27F4FCDA8, &unk_2528C5CB0);
    v4 = v0[77];
    v6 = v0[51];
    v5 = v0[52];
    type metadata accessor for HomeAppIntentError(0);
    sub_2527C3FAC(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    v8 = v7;
    sub_2528BE790();
    v9 = *(v5 + 48);
    v10 = 1;
    if (!v9(v4, 1, v6))
    {
      (*(v0[59] + 16))(v8, v0[77], v0[58]);
      v10 = 0;
    }

    v11 = v0[76];
    v13 = v0[58];
    v12 = v0[59];
    v14 = v0[51];
    sub_2527213D8(v0[77], &qword_27F4FC488, &unk_2528C3F80);
    (*(v12 + 56))(v8, v10, 1, v13);
    v15 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48));
    sub_2528BE790();
    v16 = v9(v11, 1, v14);
    v17 = v0[76];
    if (v16)
    {
      sub_2527213D8(v17, &qword_27F4FC488, &unk_2528C3F80);
      v18 = 0;
      v19 = 0;
    }

    else
    {
      v38 = v0[53];
      v39 = v0[76];
      sub_2527C3E7C(v17, v38, type metadata accessor for HomeEntity);
      sub_2527213D8(v39, &qword_27F4FC488, &unk_2528C3F80);
      sub_2528BE6B0();
      v18 = v0[32];
      v19 = v0[33];
      sub_2527C3F4C(v38, type metadata accessor for HomeEntity);
    }

    v40 = v0[81];
    v41 = v0[80];
    v42 = v0[79];
    *v15 = v18;
    v15[1] = v19;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v41 + 8))(v40, v42);
    goto LABEL_13;
  }

  v28 = v0[74];
  v29 = v0[72];
  v30 = v0[71];
  v31 = v0[70];
  v32 = v0[58];
  v33 = v0[59];
  v34 = *(v3 + 48);
  v35 = *(v30 + 48);
  (*(v33 + 32))(v29, v31, v32);
  sub_2527C3EE4(v31 + v34, v29 + v35, type metadata accessor for HomeEntity.SnapshotPair);
  sub_2527C3EE4(v29 + *(v30 + 48), v28, type metadata accessor for HomeEntity.SnapshotPair);
  v36 = *(v33 + 8);
  v0[87] = v36;
  v0[88] = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36(v29, v32);
  sub_2528BF2F0();
  v37 = swift_task_alloc();
  v0[89] = v37;
  *v37 = v0;
  v37[1] = sub_2527B7324;

  return MEMORY[0x28216E680]();
}

uint64_t sub_2527B7324(uint64_t a1)
{
  v2 = *(*v1 + 552);
  v3 = *(*v1 + 544);
  v4 = *(*v1 + 536);
  *(*v1 + 720) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_2527B7484, 0, 0);
}

uint64_t sub_2527B7484()
{
  v84 = v0;
  v1 = *(v0 + 720);
  if (!v1)
  {
    sub_2527C3F4C(*(v0 + 592), type metadata accessor for HomeEntity.SnapshotPair);
    v23 = *(v0 + 616);
    v25 = *(v0 + 408);
    v24 = *(v0 + 416);
    type metadata accessor for HomeAppIntentError(0);
    sub_2527C3FAC(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    v27 = v26;
    sub_2528BE790();
    v28 = *(v24 + 48);
    v29 = 1;
    if (!v28(v23, 1, v25))
    {
      (*(*(v0 + 472) + 16))(v27, *(v0 + 616), *(v0 + 464));
      v29 = 0;
    }

    v30 = *(v0 + 608);
    v32 = *(v0 + 464);
    v31 = *(v0 + 472);
    v33 = *(v0 + 408);
    sub_2527213D8(*(v0 + 616), &qword_27F4FC488, &unk_2528C3F80);
    (*(v31 + 56))(v27, v29, 1, v32);
    v34 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48));
    sub_2528BE790();
    v35 = v28(v30, 1, v33);
    v36 = *(v0 + 608);
    if (v35)
    {
      sub_2527213D8(v36, &qword_27F4FC488, &unk_2528C3F80);
      v37 = 0;
      v38 = 0;
    }

    else
    {
      v39 = *(v0 + 424);
      v40 = *(v0 + 608);
      sub_2527C3E7C(v36, v39, type metadata accessor for HomeEntity);
      sub_2527213D8(v40, &qword_27F4FC488, &unk_2528C3F80);
      sub_2528BE6B0();
      v37 = *(v0 + 256);
      v38 = *(v0 + 264);
      sub_2527C3F4C(v39, type metadata accessor for HomeEntity);
    }

    v41 = *(v0 + 648);
    v42 = *(v0 + 640);
    v43 = *(v0 + 632);
    *v34 = v37;
    v34[1] = v38;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v42 + 8))(v41, v43);

    v48 = *(v0 + 8);
LABEL_29:

    return v48();
  }

  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 528);
  v5 = *(v0 + 504);
  v6 = *(v0 + 512);
  v7 = *(v0 + 496);
  v8 = *(v0 + 400);
  v9 = *(v6 + 16);
  *(v0 + 728) = v9;
  *(v0 + 736) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v4, v2, v5);
  sub_25272006C(v2 + *(v3 + 20), v7, &qword_27F4FCDB8, &unk_2528C5CC0);
  *(v0 + 744) = *(v8 + 48);
  sub_2528BE790();
  v10 = *(v0 + 280);
  v78 = v1;
  if (v10)
  {
    v11 = *(v0 + 272);
    v12 = [v1 triggers];
    sub_2527C3E30();
    v13 = sub_2528C0B30();

    v76 = v9;
    if (v13 >> 62)
    {
LABEL_44:
      v79 = v13 & 0xFFFFFFFFFFFFFF8;
      v81 = sub_2528C0EF0();
    }

    else
    {
      v79 = v13 & 0xFFFFFFFFFFFFFF8;
      v81 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0;
    while (1)
    {
      if (v81 == v14)
      {

        goto LABEL_25;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x2530A84E0](v14, v13);
      }

      else
      {
        if (v14 >= *(v79 + 16))
        {
          goto LABEL_43;
        }

        v15 = *(v13 + 8 * v14 + 32);
      }

      v16 = v15;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v17 = [v15 name];
      v18 = sub_2528C09F0();
      v20 = v19;

      if (v18 == v11 && v10 == v20)
      {
        break;
      }

      v22 = sub_2528C1060();

      ++v14;
      if (v22)
      {
        goto LABEL_28;
      }
    }

LABEL_28:
    v80 = *(v0 + 632);
    v82 = *(v0 + 648);
    v77 = *(v0 + 592);
    v49 = *(v0 + 528);
    v50 = *(v0 + 520);
    v51 = *(v0 + 504);
    v52 = *(v0 + 512);
    v53 = *(v0 + 488);
    v74 = *(v0 + 496);
    v75 = *(v0 + 640);

    sub_2528BE790();
    v76(v50, v49, v51);
    LOBYTE(v83[0]) = 19;
    sub_2527C1AE8(v11, v10, v53, v50, v83, (v0 + 96));
    v54 = *(v0 + 112);
    *(v0 + 216) = *(v0 + 96);
    *(v0 + 232) = v54;
    *(v0 + 248) = *(v0 + 128);
    sub_2527BA254();
    sub_2528BE660();

    sub_2527213D8(v74, &qword_27F4FCDB8, &unk_2528C5CC0);
    (*(v52 + 8))(v49, v51);
    sub_2527C3F4C(v77, type metadata accessor for HomeEntity.SnapshotPair);
    (*(v75 + 8))(v82, v80);

    v48 = *(v0 + 8);
    goto LABEL_29;
  }

LABEL_25:
  v44 = *(v0 + 528);
  v45 = *(v0 + 496);
  sub_2528BE790();
  v46 = *(v0 + 344);
  sub_2528BE790();
  v47 = sub_2527E50C0(v46, *(v0 + 352), v44, v45);

  sub_2527C227C(v47, v44, v45);

  sub_2527B89C4();
  sub_2528BE790();
  if (!*(v0 + 296))
  {
    v56 = *(v0 + 696);
    v57 = *(v0 + 480);
    v58 = *(v0 + 464);
    sub_2528BE550();
    sub_2528BECB0();
    v56(v57, v58);
  }

  v60 = *(v0 + 448);
  v59 = *(v0 + 456);
  v62 = *(v0 + 432);
  v61 = *(v0 + 440);
  sub_2528BE790();
  v63 = MEMORY[0x277D16C68];
  sub_2527C3FAC(&qword_27F4FBEA0, MEMORY[0x277D16C68], MEMORY[0x277D16C88]);
  sub_2528C0DE0();
  sub_2527C3FAC(&qword_27F4FDA10, v63, MEMORY[0x277D16C78]);
  sub_2528C0930();
  v64 = *(v61 + 8);
  v64(v60, v62);
  v64(v59, v62);
  sub_2528BFBC0();
  swift_allocObject();
  *(v0 + 752) = sub_2528BFBB0();
  sub_2528BE790();
  if (*(v0 + 312))
  {
  }

  sub_2528BFBA0();
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v65 = sub_2528C08B0();
  *(v0 + 760) = __swift_project_value_buffer(v65, qword_27F5025C8);
  sub_2528BEA50();
  v66 = sub_2528C0890();
  v67 = sub_2528C0D10();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v83[0] = v69;
    *v68 = 136315138;
    v70 = sub_2528BFB90();
    v72 = sub_2527389AC(v70, v71, v83);

    *(v68 + 4) = v72;
    _os_log_impl(&dword_252711000, v66, v67, "Produced trigger builder: %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v69);
    MEMORY[0x2530A8D80](v69, -1, -1);
    MEMORY[0x2530A8D80](v68, -1, -1);
  }

  v73 = swift_task_alloc();
  *(v0 + 768) = v73;
  *v73 = v0;
  v73[1] = sub_2527B8070;

  return MEMORY[0x28216F920](v78);
}

uint64_t sub_2527B8070(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 776) = a1;
  *(v3 + 784) = v1;

  if (v1)
  {
    v4 = sub_2527B8548;
  }

  else
  {
    v4 = sub_2527B8188;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2527B8188()
{
  v31 = v0;
  v1 = *(v0 + 776);
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 776);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&dword_252711000, v2, v3, "Created new trigger successfully: %@", v5, 0xCu);
    sub_2527213D8(v6, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v6, -1, -1);
    MEMORY[0x2530A8D80](v5, -1, -1);
  }

  v8 = *(v0 + 776);
  v9 = *(v0 + 728);
  v22 = v8;
  v23 = *(v0 + 720);
  v28 = *(v0 + 632);
  v29 = *(v0 + 648);
  v26 = *(v0 + 592);
  v27 = *(v0 + 640);
  v10 = *(v0 + 528);
  v11 = *(v0 + 520);
  v12 = *(v0 + 504);
  v25 = *(v0 + 512);
  v13 = *(v0 + 488);
  v24 = *(v0 + 496);

  v14 = [v8 name];
  v15 = sub_2528C09F0();
  v17 = v16;

  sub_2528BE790();
  v9(v11, v10, v12);
  v30 = 20;
  sub_2527C1AE8(v15, v17, v13, v11, &v30, (v0 + 56));
  v18 = *(v0 + 88);
  v19 = *(v0 + 72);
  *(v0 + 176) = *(v0 + 56);
  *(v0 + 192) = v19;
  *(v0 + 208) = v18;
  sub_2527BA254();
  sub_2528BE660();

  sub_2527213D8(v24, &qword_27F4FCDB8, &unk_2528C5CC0);
  (*(v25 + 8))(v10, v12);
  sub_2527C3F4C(v26, type metadata accessor for HomeEntity.SnapshotPair);
  (*(v27 + 8))(v29, v28);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2527B8548()
{
  v36 = v0;
  v1 = *(v0 + 784);
  v2 = v1;
  v3 = sub_2528C0890();
  v4 = sub_2528C0D10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 784);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_252711000, v3, v4, "Failed to create trigger with error: %@", v6, 0xCu);
    sub_2527213D8(v7, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v7, -1, -1);
    MEMORY[0x2530A8D80](v6, -1, -1);
  }

  v10 = *(v0 + 784);

  *(v0 + 360) = v10;
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC210, &qword_2528C6230);
  type metadata accessor for HMError(0);
  if (swift_dynamicCast())
  {
    v12 = *(v0 + 368);
    *(v0 + 376) = v12;
    sub_2527C3FAC(&qword_27F4FC0D0, type metadata accessor for HMError, &unk_2528C3258);
    sub_2528BEBE0();

    sub_2527A0688(*(v0 + 384), &v35);
    v13 = v35;
    if (v35 == 20)
    {
      v13 = 2;
    }
  }

  else
  {
    v13 = 2;
  }

  v25 = v13;
  v27 = *(v0 + 784);
  v14 = *(v0 + 728);
  v32 = *(v0 + 632);
  v33 = *(v0 + 648);
  v30 = *(v0 + 592);
  v31 = *(v0 + 640);
  v15 = *(v0 + 528);
  v16 = *(v0 + 520);
  v17 = *(v0 + 504);
  v18 = *(v0 + 488);
  v28 = *(v0 + 496);
  v29 = *(v0 + 512);
  v26 = *(v0 + 720);
  sub_2528BE790();
  v19 = *(v0 + 320);
  v20 = *(v0 + 328);
  sub_2528BE790();
  v14(v16, v15, v17);
  v34 = v25;
  sub_2527C1AE8(v19, v20, v18, v16, &v34, (v0 + 16));
  v21 = *(v0 + 48);
  v22 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v22;
  *(v0 + 168) = v21;
  sub_2527BA254();
  sub_2528BE660();

  sub_2527213D8(v28, &qword_27F4FCDB8, &unk_2528C5CC0);
  (*(v29 + 8))(v15, v17);
  sub_2527C3F4C(v30, type metadata accessor for HomeEntity.SnapshotPair);
  (*(v31 + 8))(v33, v32);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2527B89C4()
{
  v1 = sub_2528C0730();
  v65 = *(v1 - 8);
  v66 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v63 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v64 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDC0, &qword_2528C23E8);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v60 - v6;
  v7 = type metadata accessor for TriggerRecurrenceWeekdaysEntity(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2528C0770();
  v10 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v12 = (&v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = sub_2528C0740();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2528BEC90();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TriggerEventType(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v0;
  sub_2528BE790();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = *v21;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBDF8, &qword_2528C95D0);
      v25 = v69;
      sub_25274AA0C(&v21[*(v24 + 48)], v69, &qword_27F4FBDC0, &qword_2528C23E8);
      v26 = v65;
      v27 = MEMORY[0x277D16E58];
      if (!v23)
      {
        v27 = MEMORY[0x277D16E60];
      }

      v28 = v63;
      v29 = v9;
      v30 = v66;
      (*(v65 + 104))(v63, *v27, v66);
      v31 = v64;
      (*(v26 + 32))(v64, v28, v30);
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDA20, &qword_2528C95D8) + 48);
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDA28, &qword_2528C95E0) + 48);
      (*(v26 + 16))(v12, v31, v30);
      sub_25272006C(v25, v12 + v33, &qword_27F4FBDC0, &qword_2528C23E8);
      (*(v68 + 104))(v12, *MEMORY[0x277D16E68], v70);
      sub_2528BE790();
      v34 = sub_2528C0690();
      (*(*(v34 - 8) + 32))(v12 + v32, v29, v34);
      v35 = v71;
      (*(v10 + 104))(v12, *MEMORY[0x277D16E88], v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDA30, &qword_2528C95E8);
      v36 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_2528C3910;
      (*(v10 + 16))(v37 + v36, v12, v35);
      v38 = sub_252749F30(v37);
      swift_setDeallocating();
      v39 = *(v10 + 8);
      v39(v37 + v36, v35);
      swift_deallocClassInstance();
      v39(v12, v35);
      (*(v26 + 8))(v31, v30);
      sub_2527213D8(v69, &qword_27F4FBDC0, &qword_2528C23E8);
    }

    else
    {
      if (*v21)
      {
        v49 = 3;
      }

      else
      {
        v49 = 4;
      }

      v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDA38, &unk_2528C95F0) + 48);
      *v12 = v49;
      v51 = *MEMORY[0x277D16E80];
      v52 = sub_2528C0750();
      (*(*(v52 - 8) + 104))(v12 + v50, v51, v52);
      v53 = *MEMORY[0x277D16E78];
      v54 = sub_2528C0760();
      (*(*(v54 - 8) + 104))(v12, v53, v54);
      v55 = v71;
      (*(v10 + 104))(v12, *MEMORY[0x277D16E90], v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDA30, &qword_2528C95E8);
      v56 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_2528C3910;
      (*(v10 + 16))(v57 + v56, v12, v55);
      v38 = sub_252749F30(v57);
      swift_setDeallocating();
      v58 = *(v10 + 8);
      v58(v57 + v56, v55);
      swift_deallocClassInstance();
      v58(v12, v55);
    }
  }

  else
  {
    v61 = v15;
    v62 = v16;
    (*(v16 + 32))(v18, v21, v15);
    (*(v16 + 16))(v14, v18, v15);
    v40 = v9;
    v41 = v68;
    v42 = v70;
    (*(v68 + 104))(v14, *MEMORY[0x277D16E70], v70);
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDA20, &qword_2528C95D8) + 48);
    (*(v41 + 16))(v12, v14, v42);
    sub_2528BE790();
    v44 = sub_2528C0690();
    (*(*(v44 - 8) + 32))(v12 + v43, v40, v44);
    v45 = v71;
    (*(v10 + 104))(v12, *MEMORY[0x277D16E88], v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDA30, &qword_2528C95E8);
    v46 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_2528C3910;
    (*(v10 + 16))(v47 + v46, v12, v45);
    v38 = sub_252749F30(v47);
    swift_setDeallocating();
    v48 = *(v10 + 8);
    v48(v47 + v46, v45);
    swift_deallocClassInstance();
    v48(v12, v45);
    (*(v41 + 8))(v14, v70);
    (*(v62 + 8))(v18, v61);
  }

  return v38;
}

void *sub_2527B9350@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_2527D83BC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2527B939C(uint64_t a1)
{
  v2 = sub_2528C07B0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v23 - v8;
  result = MEMORY[0x28223BE20](v7);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      sub_25273A60C(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void StateSnapshot.staticAccessory(withNodeID:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v40 = a2;
  v2 = &qword_27F4FD8B0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD8B0, &qword_2528C9070);
  v41 = *(v45 - 8);
  v3 = MEMORY[0x28223BE20](v45);
  v46 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v44 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD8B8, &unk_2528C9078);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v39 - v7;
  v8 = sub_2528BF390();
  v9 = v8;
  v10 = v8 + 64;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v8 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v16 = v44;
  while (v13)
  {
    v17 = v2;
LABEL_11:
    v19 = __clz(__rbit64(v13)) | (v15 << 6);
    v20 = *(v9 + 48);
    v21 = sub_2528BECF0();
    (*(*(v21 - 8) + 16))(v16, v20 + *(*(v21 - 8) + 72) * v19, v21);
    v22 = *(v9 + 56);
    v23 = sub_2528BFC70();
    (*(*(v23 - 8) + 16))(v16 + *(v45 + 48), v22 + *(*(v23 - 8) + 72) * v19, v23);
    v2 = v17;
    sub_25274AA0C(v16, v46, v17, &qword_2528C9070);
    v24 = sub_2528BFBF0();
    if ((v25 & 1) == 0 && v24 == v43)
    {

      v26 = v42;
      sub_25274AA0C(v46, v42, &qword_27F4FD8B0, &qword_2528C9070);
      v27 = v41;
      v28 = *(v41 + 56);
      v29 = v26;
      v30 = 0;
LABEL_15:
      v31 = v45;
      v28(v29, v30, 1, v45);

      if ((*(v27 + 48))(v26, 1, v31) == 1)
      {
        sub_2527213D8(v26, &qword_27F4FD8B8, &unk_2528C9078);
        v32 = sub_2528BFC70();
        (*(*(v32 - 8) + 56))(v40, 1, 1, v32);
      }

      else
      {
        v33 = *(v31 + 48);
        v34 = sub_2528BFC70();
        v35 = *(v34 - 8);
        v36 = v26 + v33;
        v37 = v40;
        (*(v35 + 32))(v40, v36, v34);
        (*(v35 + 56))(v37, 0, 1, v34);
        v38 = sub_2528BECF0();
        (*(*(v38 - 8) + 8))(v26, v38);
      }

      return;
    }

    v13 &= v13 - 1;
    sub_2527213D8(v46, v17, &qword_2528C9070);
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      v27 = v41;
      v26 = v42;
      v28 = *(v41 + 56);
      v29 = v42;
      v30 = 1;
      goto LABEL_15;
    }

    v13 = *(v10 + 8 * v18);
    ++v15;
    if (v13)
    {
      v17 = v2;
      v15 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_2527B9A40()
{
  result = qword_27F4FD8C0;
  if (!qword_27F4FD8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD8C0);
  }

  return result;
}

unint64_t sub_2527B9A98()
{
  result = qword_27F4FD8C8;
  if (!qword_27F4FD8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD8C8);
  }

  return result;
}

unint64_t sub_2527B9B70()
{
  result = qword_27F4FD8D0;
  if (!qword_27F4FD8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD8D0);
  }

  return result;
}

uint64_t sub_2527B9BC4@<X0>(uint64_t a1@<X0>, void (**a2)(void, void)@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_2528BECF0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v11 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v11;
  v16 = v9;
  sub_2528BFC50();
  v12 = sub_2527F2AF4(a2, v10);
  if (v3)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v14 = v12;
  result = (*(v8 + 8))(v10, v7);
  *a3 = v14;
  return result;
}

uint64_t sub_2527B9D38(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = *(v1 + 48);
  v5 = swift_task_alloc();
  *(v2 + 72) = v5;
  *v5 = v2;
  v5[1] = sub_25276726C;

  return sub_2527B5E68(a1);
}

double sub_2527B9DEC@<D0>(uint64_t a1@<X8>)
{
  sub_2527C0E90(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_2527B9E38(uint64_t a1)
{
  v2 = sub_2527B9B70();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_2527B9E78()
{
  result = qword_27F4FD8D8;
  if (!qword_27F4FD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD8D8);
  }

  return result;
}

uint64_t sub_2527B9ECC()
{
  if (*v0 == 20)
  {
    return 0x73736563637553;
  }

  MEMORY[0x2530A80B0](0x3A6572756C696146, 0xE900000000000020);
  sub_2528C0ED0();
  return 0;
}

uint64_t sub_2527B9F68()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F502950);
  __swift_project_value_buffer(v0, qword_27F502950);
  return sub_2528BE9D0();
}

double sub_2527B9FCC@<D0>(uint64_t a1@<X8>)
{
  sub_2527C395C(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

unint64_t sub_2527BA014()
{
  result = qword_27F4FD8E0;
  if (!qword_27F4FD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD8E0);
  }

  return result;
}

unint64_t sub_2527BA06C()
{
  result = qword_27F4FD8E8;
  if (!qword_27F4FD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD8E8);
  }

  return result;
}

unint64_t sub_2527BA0C4()
{
  result = qword_27F4FD8F0;
  if (!qword_27F4FD8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD8F0);
  }

  return result;
}

uint64_t sub_2527BA15C(uint64_t a1)
{
  v2 = sub_2527BB3C4();

  return MEMORY[0x28210B2E8](a1, v2);
}

unint64_t sub_2527BA1AC()
{
  result = qword_27F4FD908;
  if (!qword_27F4FD908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD908);
  }

  return result;
}

unint64_t sub_2527BA200()
{
  result = qword_27F4FD910;
  if (!qword_27F4FD910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD910);
  }

  return result;
}

unint64_t sub_2527BA254()
{
  result = qword_27F4FD918;
  if (!qword_27F4FD918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD918);
  }

  return result;
}

unint64_t sub_2527BA2AC()
{
  result = qword_27F4FD920;
  if (!qword_27F4FD920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD920);
  }

  return result;
}

uint64_t sub_2527BA300(uint64_t a1)
{
  sub_2527BB3C4();

  return sub_2528BE550();
}

uint64_t sub_2527BA3C8(uint64_t a1)
{
  v2 = sub_2527B9E78();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_2527BA418()
{
  result = qword_27F4FD938;
  if (!qword_27F4FD938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD938);
  }

  return result;
}

uint64_t sub_2527BA46C()
{
  sub_2528BE6B0();
  if (v1)
  {
    return sub_2528BE8C0();
  }

  else
  {
    return sub_2528BE8E0();
  }
}

uint64_t sub_2527BA4C0(uint64_t a1)
{
  v2 = sub_2527BA2AC();

  return MEMORY[0x28210C4B8](a1, v2);
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

uint64_t sub_2527BA520(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2527BA568(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2527BA5EC()
{
  result = qword_27F4FD950;
  if (!qword_27F4FD950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD950);
  }

  return result;
}

uint64_t sub_2527BA640()
{
  v0 = type metadata accessor for TriggerEventType(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_2528C0E70();

  v15 = 0x3A72656767697274;
  v16 = 0xE900000000000020;
  sub_2528BE790();
  v3 = sub_25271A6D8();
  MEMORY[0x2530A80B0](v3);

  sub_2527C3F4C(v2, type metadata accessor for TriggerEventType);
  MEMORY[0x2530A80B0](0x7365636976656420, 0xEA0000000000203ALL);
  sub_2528BE790();
  v4 = v14;
  v5 = type metadata accessor for DeviceEntity(0);
  v6 = MEMORY[0x2530A81C0](v4, v5);
  v8 = v7;

  MEMORY[0x2530A80B0](v6, v8);

  MEMORY[0x2530A80B0](0x7562697274746120, 0xED0000203A736574);
  sub_2528BE790();
  v9 = MEMORY[0x2530A81A0](v14, &type metadata for Attribute);
  v11 = v10;

  MEMORY[0x2530A80B0](v9, v11);

  return v15;
}

uint64_t sub_2527BA808()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD968, &qword_2528C9538);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - v2;
  v4 = sub_2527BB31C();
  MEMORY[0x2530A60E0](v4, &type metadata for AutomationOutcome, &type metadata for AutomationOutcome.SuccessCase.Resolver, v4);
  v5 = sub_2527BB370();
  MEMORY[0x2530A60E0](v5, &type metadata for AutomationOutcome, &type metadata for AutomationOutcome.FailureCase.Resolver, v5);
  sub_2527BA5EC();
  sub_2528BEAA0();
  v7[0] = v4;
  v7[1] = &type metadata for AutomationOutcome.SuccessCase.Resolver;
  sub_2528BEA90();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2527BA9E0(uint64_t a1)
{
  v2 = sub_2527C4B18();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_2527BAA2C(uint64_t a1)
{
  sub_2527C4B18();

  return sub_2528BE550();
}

uint64_t sub_2527BAACC(uint64_t a1)
{
  v2 = sub_2527C45E0();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2527BAB18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_2528BEC40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  sub_2528BEC20();
  (*(v7 + 56))(v5, 1, 1, v6);
  v8 = sub_2528BE8D0();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  return sub_2528BE900();
}

uint64_t sub_2527BACE0(uint64_t a1)
{
  v2 = sub_2527C4390();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2527BAD48(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  return sub_2528BE9D0();
}

uint64_t sub_2527BADA4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2527BADC8, 0, 0);
}

uint64_t sub_2527BADC8()
{
  v1 = *(v0 + 16);
  sub_2528BE6B0();
  *v1 = *(v0 + 32);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2527BAE38@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5C8, &qword_2528C4728);
  sub_2528BEC20();
  sub_252746B7C();
  result = sub_2528BE6E0();
  *a1 = result;
  return result;
}

uint64_t sub_2527BAEE8(uint64_t a1)
{
  v2 = sub_2527C4AC4();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_2527BAF34(uint64_t a1)
{
  sub_2527C4AC4();

  return sub_2528BE550();
}

uint64_t sub_2527BAFD4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_2527BB07C(uint64_t a1)
{
  v2 = sub_2527C4938();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2527BB0C8(uint64_t a1)
{
  v2 = sub_2527C46E8();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2527BB114()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE28, &qword_2528C4730);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2528C17E0;
  v1 = sub_2527BB2C8();
  *(v0 + 32) = &type metadata for AutomationOutcome.SuccessCase;
  *(v0 + 40) = v1;
  v2 = sub_2527BB274();
  *(v0 + 48) = &type metadata for AutomationOutcome.FailureCase;
  *(v0 + 56) = v2;
  return v0;
}

unint64_t sub_2527BB184@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_2528BEC40();
  MEMORY[0x28223BE20](v3 - 8);
  if (*v1 == 20)
  {
    v4 = &type metadata for AutomationOutcome.SuccessCase;
    result = sub_2527BB2C8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5C8, &qword_2528C4728);
    sub_2528BEC20();
    sub_252746B7C();
    v6 = sub_2528BE6E0();
    sub_2528BE6C0();
    result = sub_2527BB274();
    *a1 = v6;
    v4 = &type metadata for AutomationOutcome.FailureCase;
  }

  a1[3] = v4;
  a1[4] = result;
  return result;
}

unint64_t sub_2527BB274()
{
  result = qword_27F4FD958;
  if (!qword_27F4FD958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD958);
  }

  return result;
}

unint64_t sub_2527BB2C8()
{
  result = qword_27F4FD960;
  if (!qword_27F4FD960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD960);
  }

  return result;
}

unint64_t sub_2527BB31C()
{
  result = qword_27F4FD970;
  if (!qword_27F4FD970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD970);
  }

  return result;
}

unint64_t sub_2527BB370()
{
  result = qword_27F4FD978;
  if (!qword_27F4FD978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD978);
  }

  return result;
}

unint64_t sub_2527BB3C4()
{
  result = qword_27F4FD980;
  if (!qword_27F4FD980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD980);
  }

  return result;
}

uint64_t sub_2527BB418()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC68, &qword_2528C6CC0);
  sub_25272275C(&qword_27F4FDA50, &qword_27F4FCC68, &qword_2528C6CC0, MEMORY[0x277CBA268]);
  sub_2528BE640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDA58, &unk_2528C9610);
  return sub_2528C0A10();
}

uint64_t sub_2527BB4C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEE0, &qword_2528C6A78);
  sub_25272275C(&qword_27F4FDA60, &qword_27F4FCEE0, &qword_2528C6A78, MEMORY[0x277CBA268]);
  sub_2528BE640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDA68, &qword_2528C9620);
  return sub_2528C0A10();
}

uint64_t sub_2527BB568()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD858, &qword_2528C8FB8);
  sub_25272275C(&qword_27F4FDA40, &qword_27F4FD858, &qword_2528C8FB8, MEMORY[0x277CBA268]);
  sub_2528BE640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDA48, &unk_2528C9600);
  return sub_2528C0A10();
}

uint64_t sub_2527BB610()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD948, &qword_2528C94A0);
  sub_25272275C(&qword_27F4FDA00, &qword_27F4FD948, &qword_2528C94A0, MEMORY[0x277CBA268]);
  sub_2528BE640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FDA08, &unk_2528C95B0);
  return sub_2528C0A10();
}

uint64_t sub_2527BB6B8@<X0>(uint64_t a1@<X8>)
{
  v9[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD00, &unk_2528C6A90);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  sub_2527FECD0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD08, &unk_2528C5B90);
  v6 = sub_252755F54();
  MEMORY[0x2530A60E0](&v31, &v45, v5, &type metadata for DeviceEntityFromAccessoryTypeResolver, v6);
  v38[4] = v49;
  v38[5] = v50;
  v38[6] = v51;
  v38[0] = v45;
  v38[1] = v46;
  v38[2] = v47;
  v38[3] = v48;
  sub_252755FA8(v38);
  sub_2527FECD0();
  v7 = sub_252755FFC();
  MEMORY[0x2530A60E0](&v24, &v45, v5, &type metadata for DeviceEntityFromInputTypeResolver, v7);
  v39[4] = v49;
  v39[5] = v50;
  v39[6] = v51;
  v39[0] = v45;
  v39[1] = v46;
  v39[2] = v47;
  v39[3] = v48;
  sub_252756050(v39);
  v40[4] = v35;
  v40[5] = v36;
  v40[6] = v37;
  v40[0] = v31;
  v40[1] = v32;
  v40[2] = v33;
  v40[3] = v34;
  v21 = v35;
  v22 = v36;
  v23 = v37;
  v17 = v31;
  v18 = v32;
  v19 = v33;
  v20 = v34;
  sub_2527560A4(v40, &v45);
  sub_252756100();
  sub_2528BEAA0();
  v41[4] = v21;
  v41[5] = v22;
  v41[6] = v23;
  v41[0] = v17;
  v41[1] = v18;
  v41[2] = v19;
  v41[3] = v20;
  sub_252755FA8(v41);
  v42[4] = v28;
  v42[5] = v29;
  v42[6] = v30;
  v42[0] = v24;
  v42[1] = v25;
  v42[2] = v26;
  v42[3] = v27;
  v14 = v28;
  v15 = v29;
  v16 = v30;
  v10 = v24;
  v11 = v25;
  v12 = v26;
  v13 = v27;
  sub_2527561B4(v42, &v45);
  v9[2] = v6;
  v9[3] = &type metadata for DeviceEntityFromAccessoryTypeResolver;
  sub_2528BEA90();
  v43[4] = v14;
  v43[5] = v15;
  v43[6] = v16;
  v43[0] = v10;
  v43[1] = v11;
  v43[3] = v13;
  v43[2] = v12;
  sub_252756050(v43);
  (*(v2 + 8))(v4, v1);
  v44[4] = v28;
  v44[5] = v29;
  v44[6] = v30;
  v44[0] = v24;
  v44[1] = v25;
  v44[3] = v27;
  v44[2] = v26;
  sub_252756050(v44);
  v49 = v35;
  v50 = v36;
  v51 = v37;
  v45 = v31;
  v46 = v32;
  v47 = v33;
  v48 = v34;
  return sub_252755FA8(&v45);
}

uint64_t sub_2527BB9EC()
{
  v0 = type metadata accessor for TriggerRecurrenceWeekdaysEntity(0);
  v1 = sub_2527C3D38();
  MEMORY[0x2530A60E0](v1, v0, &type metadata for TriggerRecurrenceWeekdaysEntity.Resolver, v1);
  sub_2527C3FAC(&qword_27F4FBD28, type metadata accessor for TriggerRecurrenceWeekdaysEntity, &unk_2528C22A8);

  return sub_2528BEAA0();
}

uint64_t sub_2527BBAF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_OWORD *))
{
  v27[3] = a3;
  v27[4] = a4;
  v8 = swift_allocObject();
  v27[0] = v8;
  v9 = *(a1 + 1);
  v8[1] = *a1;
  v8[2] = v9;
  v8[3] = *(a1 + 2);
  sub_25276E828(v27, v26);
  sub_25276E828(v27, v25);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v10 = sub_2528C0890();
  v11 = sub_2528C0D10();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136446466;
    sub_25276E828(v26, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v14 = sub_2528C0A10();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    v17 = sub_2527389AC(v14, v16, &v24);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v18 = __swift_project_boxed_opaque_existential_0(v25, v25[3]);
    v28[0] = *v18;
    v28[1] = v18[1];
    v28[2] = v18[2];
    v19 = a6(v18);
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    v22 = sub_2527389AC(v19, v21, &v24);

    *(v12 + 14) = v22;
    _os_log_impl(&dword_252711000, v10, v11, "HomeAppIntents: Performing %{public}s: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v13, -1, -1);
    MEMORY[0x2530A8D80](v12, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v27);
}

uint64_t sub_2527BBD58(uint64_t a1)
{
  v21[3] = &type metadata for ToggleAttributeIntent;
  v21[4] = &off_286496B88;
  v2 = swift_allocObject();
  v21[0] = v2;
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  sub_25276E828(v21, v20);
  sub_25276E828(v21, v19);
  sub_2527691BC(a1, v22);
  v4 = sub_2528C0890();
  v5 = sub_2528C0D10();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446466;
    sub_25276E828(v20, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v8 = sub_2528C0A10();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    v11 = sub_2527389AC(v8, v10, &v18);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    v12 = __swift_project_boxed_opaque_existential_0(v19, v19[3]);
    v22[0] = *v12;
    v22[1] = *(v12 + 1);
    v22[2] = *(v12 + 2);
    v23 = v12[6];
    v13 = sub_2527674A8();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    v16 = sub_2527389AC(v13, v15, &v18);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_252711000, v4, v5, "HomeAppIntents: Performing %{public}s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v7, -1, -1);
    MEMORY[0x2530A8D80](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v21);
}

uint64_t sub_2527BBF9C(uint64_t a1, uint64_t a2)
{
  v19[3] = &type metadata for GetDeviceInfoIntent;
  v19[4] = &off_286496CA8;
  v19[0] = a1;
  v19[1] = a2;
  sub_25276E828(v19, v18);
  sub_25276E828(v19, v17);
  sub_2528BEA50();
  sub_2528BEA50();
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446466;
    sub_25276E828(v18, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v6 = sub_2528C0A10();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    v9 = sub_2527389AC(v6, v8, &v16);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2080;
    __swift_project_boxed_opaque_existential_0(v17, v17[3]);
    v10 = sub_25276CFF4();
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    v13 = sub_2527389AC(v10, v12, &v16);

    *(v4 + 14) = v13;
    _os_log_impl(&dword_252711000, v2, v3, "HomeAppIntents: Performing %{public}s: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v5, -1, -1);
    MEMORY[0x2530A8D80](v4, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v19);
}

uint64_t sub_2527BC198(_OWORD *a1)
{
  v22[3] = &type metadata for DeltaAttributeValueIntent;
  v22[4] = &off_286496D88;
  v2 = swift_allocObject();
  v22[0] = v2;
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v4 = a1[3];
  v2[3] = a1[2];
  v2[4] = v4;
  sub_25276E828(v22, v21);
  sub_25276E828(v22, v20);
  sub_25277AFA0(a1, v23);
  v5 = sub_2528C0890();
  v6 = sub_2528C0D10();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446466;
    sub_25276E828(v21, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v9 = sub_2528C0A10();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    v12 = sub_2527389AC(v9, v11, &v19);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v13 = __swift_project_boxed_opaque_existential_0(v20, v20[3]);
    v23[0] = *v13;
    v23[1] = v13[1];
    v23[2] = v13[2];
    v23[3] = v13[3];
    v14 = sub_252776108();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    v17 = sub_2527389AC(v14, v16, &v19);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_252711000, v5, v6, "HomeAppIntents: Performing %{public}s: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v8, -1, -1);
    MEMORY[0x2530A8D80](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v22);
}

uint64_t sub_2527BC3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[3] = &type metadata for ActivateSceneIntent;
  v20[4] = &off_2864972C0;
  v20[0] = a1;
  v20[1] = a2;
  v20[2] = a3;
  sub_25276E828(v20, v19);
  sub_25276E828(v20, v18);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v3 = sub_2528C0890();
  v4 = sub_2528C0D10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446466;
    sub_25276E828(v19, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v7 = sub_2528C0A10();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    v10 = sub_2527389AC(v7, v9, &v17);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    __swift_project_boxed_opaque_existential_0(v18, v18[3]);
    v11 = sub_2527B4D40();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    v14 = sub_2527389AC(v11, v13, &v17);

    *(v5 + 14) = v14;
    _os_log_impl(&dword_252711000, v3, v4, "HomeAppIntents: Performing %{public}s: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v6, -1, -1);
    MEMORY[0x2530A8D80](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v20);
}

uint64_t sub_2527BC5E4(uint64_t a1)
{
  v21[3] = &type metadata for AutomateAttributeValueIntent;
  v21[4] = &off_2864973A8;
  v2 = swift_allocObject();
  v21[0] = v2;
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  sub_25276E828(v21, v20);
  sub_25276E828(v21, v19);
  sub_2527C3DF8(a1, v22);
  v4 = sub_2528C0890();
  v5 = sub_2528C0D10();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446466;
    sub_25276E828(v20, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v8 = sub_2528C0A10();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    v11 = sub_2527389AC(v8, v10, &v18);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    v12 = __swift_project_boxed_opaque_existential_0(v19, v19[3]);
    v22[0] = *v12;
    v22[1] = *(v12 + 1);
    v22[2] = *(v12 + 2);
    v23 = v12[6];
    v13 = sub_2527BA640();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    v16 = sub_2527389AC(v13, v15, &v18);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_252711000, v4, v5, "HomeAppIntents: Performing %{public}s: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v7, -1, -1);
    MEMORY[0x2530A8D80](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v21);
}

uint64_t sub_2527BC860(void *a1, const char *a2, uint64_t (*a3)(uint64_t), uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a2;
  v43 = a5;
  v41 = a3;
  v40 = sub_2528C0830();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2528C07F0();
  v12 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[3] = a6;
  v48[4] = a7;
  v15 = swift_allocObject();
  v48[0] = v15;
  v16 = *(a1 + 1);
  v15[1] = *a1;
  v15[2] = v16;
  v15[3] = *(a1 + 2);
  sub_25276E828(v48, v47);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v17 = sub_2528C0810();
  sub_2528C0840();
  v18 = sub_2528C0D30();

  if (sub_2528C0D90())
  {
    v43 = v14;
    v19 = v44;
    sub_2528BEA50();
    v20 = v38;
    sub_2528C0870();

    v21 = v39;
    v22 = v40;
    if ((*(v39 + 88))(v20, v40) == *MEMORY[0x277D85B00])
    {
      v23 = 0;
      v42 = "[Error] Interval already ended";
    }

    else
    {
      (*(v21 + 8))(v20, v22);
      v42 = "%s\n%s";
      v23 = 2;
    }

    v24 = v12;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v46 = v26;
    *v25 = v23;
    *(v25 + 1) = v23;
    *(v25 + 2) = 2080;
    sub_25276E828(v47, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v27 = sub_2528C0A10();
    v29 = v28;
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    v30 = sub_2527389AC(v27, v29, &v46);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    v32 = v41(v31);
    v34 = sub_2527389AC(v32, v33, &v46);

    *(v25 + 14) = v34;
    v35 = v43;
    v36 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v17, v18, v36, "HomeAppIntents", v42, v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v26, -1, -1);
    MEMORY[0x2530A8D80](v25, -1, -1);

    (*(v24 + 8))(v35, v19);
  }

  else
  {

    (*(v12 + 8))(v14, v44);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v48);
}

uint64_t sub_2527BCC8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v31 = a3;
  v5 = sub_2528C0830();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2528C07F0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[3] = &type metadata for ToggleAttributeIntent;
  v35[4] = &off_286496B88;
  v13 = swift_allocObject();
  v35[0] = v13;
  v14 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(a1 + 32);
  *(v13 + 64) = *(a1 + 48);
  sub_25276E828(v35, v34);
  sub_2527691BC(a1, v33);
  sub_2528BEA50();
  v15 = sub_2528C0810();
  sub_2528C0840();
  v30 = sub_2528C0D30();

  if (sub_2528C0D90())
  {
    sub_2528BEA50();
    sub_2528C0870();

    if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
    {
      v16 = 0;
      v29 = "[Error] Interval already ended";
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      v29 = "%s\n%s";
      v16 = 2;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v17 = v16;
    *(v17 + 1) = v16;
    *(v17 + 2) = 2080;
    sub_25276E828(v34, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v19 = sub_2528C0A10();
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    v22 = sub_2527389AC(v19, v21, &v32);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v24 = v31(v23);
    v26 = sub_2527389AC(v24, v25, &v32);

    *(v17 + 14) = v26;
    v27 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v15, v30, v27, "HomeAppIntents", v29, v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v18, -1, -1);
    MEMORY[0x2530A8D80](v17, -1, -1);

    (*(v10 + 8))(v12, v9);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v35);
}

uint64_t sub_2527BD068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v33 = a4;
  v7 = sub_2528C0830();
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2528C07F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[3] = &type metadata for GetDeviceInfoIntent;
  v37[4] = &off_286496CA8;
  v37[0] = a1;
  v37[1] = a2;
  sub_25276E828(v37, v36);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v14 = sub_2528C0810();
  sub_2528C0840();
  v32 = sub_2528C0D30();

  if (sub_2528C0D90())
  {
    v30 = v10;
    sub_2528BEA50();
    sub_2528C0870();

    v15 = v31;
    if ((*(v31 + 11))(v9, v7) == *MEMORY[0x277D85B00])
    {
      v16 = 0;
      v31 = "[Error] Interval already ended";
    }

    else
    {
      (*(v15 + 1))(v9, v7);
      v31 = "%s\n%s";
      v16 = 2;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v35 = v18;
    *v17 = v16;
    *(v17 + 1) = v16;
    *(v17 + 2) = 2080;
    sub_25276E828(v36, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v19 = sub_2528C0A10();
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    v22 = sub_2527389AC(v19, v21, &v35);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v24 = v33(v23);
    v26 = sub_2527389AC(v24, v25, &v35);

    *(v17 + 14) = v26;
    v27 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v14, v32, v27, "HomeAppIntents", v31, v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v18, -1, -1);
    MEMORY[0x2530A8D80](v17, -1, -1);

    (*(v11 + 8))(v13, v30);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v37);
}

uint64_t sub_2527BD42C(_OWORD *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v33 = a3;
  v5 = sub_2528C0830();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2528C07F0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[3] = &type metadata for DeltaAttributeValueIntent;
  v37[4] = &off_286496D88;
  v13 = swift_allocObject();
  v37[0] = v13;
  v14 = a1[1];
  v13[1] = *a1;
  v13[2] = v14;
  v15 = a1[3];
  v13[3] = a1[2];
  v13[4] = v15;
  sub_25276E828(v37, v36);
  sub_25277AFA0(a1, v35);
  sub_2528BEA50();
  v16 = sub_2528C0810();
  sub_2528C0840();
  v32 = sub_2528C0D30();

  if (sub_2528C0D90())
  {
    sub_2528BEA50();
    sub_2528C0870();

    if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
    {
      v17 = 0;
      v31 = "[Error] Interval already ended";
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      v31 = "%s\n%s";
      v17 = 2;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34 = v19;
    *v18 = v17;
    *(v18 + 1) = v17;
    *(v18 + 2) = 2080;
    sub_25276E828(v36, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v20 = sub_2528C0A10();
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    v23 = sub_2527389AC(v20, v22, &v34);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v25 = v33(v24);
    v27 = sub_2527389AC(v25, v26, &v34);

    *(v18 + 14) = v27;
    v28 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v16, v32, v28, "HomeAppIntents", v31, v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v19, -1, -1);
    MEMORY[0x2530A8D80](v18, -1, -1);

    (*(v10 + 8))(v12, v9);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v37);
}

uint64_t sub_2527BD80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v42 = a5;
  v10 = sub_2528C0830();
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2528C07F0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[3] = &type metadata for ActivateSceneIntent;
  v46[4] = &off_2864972C0;
  v46[0] = a1;
  v46[1] = a2;
  v46[2] = a3;
  sub_25276E828(v46, v45);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v17 = sub_2528C0810();
  sub_2528C0840();
  v18 = sub_2528C0D30();
  v41 = a6;

  if (sub_2528C0D90())
  {
    v19 = v14;
    v38 = v13;
    sub_2528BEA50();
    sub_2528C0870();

    v21 = v39;
    v20 = v40;
    v22 = v18;
    if ((*(v39 + 88))(v12, v40) == *MEMORY[0x277D85B00])
    {
      v23 = 0;
      v24 = "[Error] Interval already ended";
    }

    else
    {
      (*(v21 + 8))(v12, v20);
      v24 = "%s\n%s";
      v23 = 2;
    }

    v25 = v19;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v44 = v27;
    *v26 = v23;
    *(v26 + 1) = v23;
    *(v26 + 2) = 2080;
    sub_25276E828(v45, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v28 = sub_2528C0A10();
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    v31 = sub_2527389AC(v28, v30, &v44);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    v33 = v42(v32);
    v35 = sub_2527389AC(v33, v34, &v44);

    *(v26 + 14) = v35;
    v36 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v17, v22, v36, "HomeAppIntents", v24, v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v27, -1, -1);
    MEMORY[0x2530A8D80](v26, -1, -1);

    (*(v25 + 8))(v16, v38);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v46);
}

uint64_t sub_2527BDBD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v31 = a3;
  v5 = sub_2528C0830();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2528C07F0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[3] = &type metadata for AutomateAttributeValueIntent;
  v35[4] = &off_2864973A8;
  v13 = swift_allocObject();
  v35[0] = v13;
  v14 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(a1 + 32);
  *(v13 + 64) = *(a1 + 48);
  sub_25276E828(v35, v34);
  sub_2527C3DF8(a1, v33);
  sub_2528BEA50();
  v15 = sub_2528C0810();
  sub_2528C0840();
  v30 = sub_2528C0D30();

  if (sub_2528C0D90())
  {
    sub_2528BEA50();
    sub_2528C0870();

    if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
    {
      v16 = 0;
      v29 = "[Error] Interval already ended";
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      v29 = "%s\n%s";
      v16 = 2;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v17 = v16;
    *(v17 + 1) = v16;
    *(v17 + 2) = 2080;
    sub_25276E828(v34, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v19 = sub_2528C0A10();
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    v22 = sub_2527389AC(v19, v21, &v32);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v24 = v31(v23);
    v26 = sub_2527389AC(v24, v25, &v32);

    *(v17 + 14) = v26;
    v27 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v15, v30, v27, "HomeAppIntents", v29, v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v18, -1, -1);
    MEMORY[0x2530A8D80](v17, -1, -1);

    (*(v10 + 8))(v12, v9);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v35);
}

uint64_t sub_2527BDFEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[3] = a3;
  v20[4] = a4;
  v6 = swift_allocObject();
  v20[0] = v6;
  v7 = *(a1 + 1);
  v6[1] = *a1;
  v6[2] = v7;
  v6[3] = *(a1 + 2);
  sub_25276E828(v20, v19);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v8 = sub_2528C0890();
  v9 = sub_2528C0D10();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    sub_25276E828(v19, &v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v12 = sub_2528C0A10();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    v15 = sub_2527389AC(v12, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_252711000, v8, v9, "HomeAppIntents: Finished performing %{public}s: success", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x2530A8D80](v11, -1, -1);
    MEMORY[0x2530A8D80](v10, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v20);
}

uint64_t sub_2527BE1B4(uint64_t a1)
{
  v16[3] = &type metadata for ToggleAttributeIntent;
  v16[4] = &off_286496B88;
  v2 = swift_allocObject();
  v16[0] = v2;
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  sub_25276E828(v16, v15);
  sub_2527691BC(a1, v14);
  v4 = sub_2528C0890();
  v5 = sub_2528C0D10();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    sub_25276E828(v15, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v8 = sub_2528C0A10();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    v11 = sub_2527389AC(v8, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_252711000, v4, v5, "HomeAppIntents: Finished performing %{public}s: success", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2530A8D80](v7, -1, -1);
    MEMORY[0x2530A8D80](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

uint64_t sub_2527BE360(uint64_t a1, uint64_t a2)
{
  v14[3] = &type metadata for GetDeviceInfoIntent;
  v14[4] = &off_286496CA8;
  v14[0] = a1;
  v14[1] = a2;
  sub_25276E828(v14, v13);
  sub_2528BEA50();
  sub_2528BEA50();
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    sub_25276E828(v13, &v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v6 = sub_2528C0A10();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v9 = sub_2527389AC(v6, v8, &v12);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_252711000, v2, v3, "HomeAppIntents: Finished performing %{public}s: success", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x2530A8D80](v5, -1, -1);
    MEMORY[0x2530A8D80](v4, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v14);
}

uint64_t sub_2527BE4E8(_OWORD *a1)
{
  v17[3] = &type metadata for DeltaAttributeValueIntent;
  v17[4] = &off_286496D88;
  v2 = swift_allocObject();
  v17[0] = v2;
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v4 = a1[3];
  v2[3] = a1[2];
  v2[4] = v4;
  sub_25276E828(v17, v16);
  sub_25277AFA0(a1, v15);
  v5 = sub_2528C0890();
  v6 = sub_2528C0D10();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    sub_25276E828(v16, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v9 = sub_2528C0A10();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    v12 = sub_2527389AC(v9, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_252711000, v5, v6, "HomeAppIntents: Finished performing %{public}s: success", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2530A8D80](v8, -1, -1);
    MEMORY[0x2530A8D80](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

uint64_t sub_2527BE68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[3] = &type metadata for ActivateSceneIntent;
  v15[4] = &off_2864972C0;
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3;
  sub_25276E828(v15, v14);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v3 = sub_2528C0890();
  v4 = sub_2528C0D10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    sub_25276E828(v14, &v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v7 = sub_2528C0A10();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    v10 = sub_2527389AC(v7, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_252711000, v3, v4, "HomeAppIntents: Finished performing %{public}s: success", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2530A8D80](v6, -1, -1);
    MEMORY[0x2530A8D80](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v15);
}

uint64_t sub_2527BE824(uint64_t a1)
{
  v16[3] = &type metadata for AutomateAttributeValueIntent;
  v16[4] = &off_2864973A8;
  v2 = swift_allocObject();
  v16[0] = v2;
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  sub_25276E828(v16, v15);
  sub_2527C3DF8(a1, v14);
  v4 = sub_2528C0890();
  v5 = sub_2528C0D10();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    sub_25276E828(v15, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v8 = sub_2528C0A10();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    v11 = sub_2527389AC(v8, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_252711000, v4, v5, "HomeAppIntents: Finished performing %{public}s: success", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2530A8D80](v7, -1, -1);
    MEMORY[0x2530A8D80](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

uint64_t sub_2527BEA08(void *a1, const char *a2, void *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a2;
  v45 = a4;
  v11 = sub_2528C0830();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v41 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2528C07F0();
  v13 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = a5;
  v50[4] = a6;
  v16 = swift_allocObject();
  v50[0] = v16;
  v17 = *(a1 + 1);
  v16[1] = *a1;
  v16[2] = v17;
  v16[3] = *(a1 + 2);
  sub_25276E828(v50, v49);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v18 = a3;
  v19 = sub_2528C0810();
  sub_2528C0840();
  v20 = sub_2528C0D30();
  v21 = a3;

  if (sub_2528C0D90())
  {
    v45 = v15;
    v22 = v46;
    sub_2528BEA50();
    v23 = v41;
    sub_2528C0870();

    v25 = v42;
    v24 = v43;
    if ((*(v42 + 88))(v23, v43) == *MEMORY[0x277D85B00])
    {
      v26 = 0;
      v44 = "[Error] Interval already ended";
    }

    else
    {
      (*(v25 + 8))(v23, v24);
      v44 = "%s\n failed with error: %@";
      v26 = 2;
    }

    v27 = v13;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v48 = v30;
    *v28 = v26;
    *(v28 + 1) = v26;
    *(v28 + 2) = 2080;
    sub_25276E828(v49, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v31 = sub_2528C0A10();
    v33 = v32;
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    v34 = sub_2527389AC(v31, v33, &v48);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2112;
    v35 = v21;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 14) = v36;
    *v29 = v36;
    v37 = v45;
    v38 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v19, v20, v38, "HomeAppIntents", v44, v28, 0x16u);
    sub_2527213D8(v29, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v29, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x2530A8D80](v30, -1, -1);
    MEMORY[0x2530A8D80](v28, -1, -1);

    (*(v27 + 8))(v37, v22);
  }

  else
  {

    (*(v13 + 8))(v15, v46);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v50);
}

uint64_t sub_2527BEE38(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2528C0830();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2528C07F0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[3] = &type metadata for ToggleAttributeIntent;
  v35[4] = &off_286496B88;
  v13 = swift_allocObject();
  v35[0] = v13;
  v14 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(a1 + 32);
  *(v13 + 64) = *(a1 + 48);
  sub_25276E828(v35, v34);
  sub_2527691BC(a1, v33);
  v15 = a3;
  v16 = sub_2528C0810();
  sub_2528C0840();
  v31 = sub_2528C0D30();

  if (sub_2528C0D90())
  {
    sub_2528BEA50();
    sub_2528C0870();

    if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
    {
      v17 = 0;
      v30 = "[Error] Interval already ended";
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      v30 = "%s\n failed with error: %@";
      v17 = 2;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v18 = v17;
    *(v18 + 1) = v17;
    *(v18 + 2) = 2080;
    sub_25276E828(v34, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v21 = sub_2528C0A10();
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    v24 = sub_2527389AC(v21, v23, &v32);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2112;
    v25 = a3;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v26;
    *v19 = v26;
    v27 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v16, v31, v27, "HomeAppIntents", v30, v18, 0x16u);
    sub_2527213D8(v19, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x2530A8D80](v20, -1, -1);
    MEMORY[0x2530A8D80](v18, -1, -1);

    (*(v10 + 8))(v12, v9);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v35);
}

uint64_t sub_2527BF228(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_2528C0830();
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2528C07F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[3] = &type metadata for GetDeviceInfoIntent;
  v36[4] = &off_286496CA8;
  v36[0] = a1;
  v36[1] = a2;
  sub_25276E828(v36, v35);
  sub_2528BEA50();
  sub_2528BEA50();
  v14 = a4;
  v15 = sub_2528C0810();
  sub_2528C0840();
  v16 = sub_2528C0D30();

  if (sub_2528C0D90())
  {
    v31 = v10;
    sub_2528BEA50();
    sub_2528C0870();

    v17 = v32;
    if ((*(v32 + 11))(v9, v7) == *MEMORY[0x277D85B00])
    {
      v18 = 0;
      v32 = "[Error] Interval already ended";
    }

    else
    {
      (*(v17 + 1))(v9, v7);
      v32 = "%s\n failed with error: %@";
      v18 = 2;
    }

    v19 = v11;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34 = v22;
    *v20 = v18;
    *(v20 + 1) = v18;
    *(v20 + 2) = 2080;
    sub_25276E828(v35, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v23 = sub_2528C0A10();
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    v26 = sub_2527389AC(v23, v25, &v34);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2112;
    v27 = a4;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v28;
    *v21 = v28;
    v29 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v15, v16, v29, "HomeAppIntents", v32, v20, 0x16u);
    sub_2527213D8(v21, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x2530A8D80](v22, -1, -1);
    MEMORY[0x2530A8D80](v20, -1, -1);

    (*(v19 + 8))(v13, v31);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v36);
}

uint64_t sub_2527BF5FC(_OWORD *a1, uint64_t a2, void *a3)
{
  v5 = sub_2528C0830();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2528C07F0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[3] = &type metadata for DeltaAttributeValueIntent;
  v35[4] = &off_286496D88;
  v13 = swift_allocObject();
  v35[0] = v13;
  v14 = a1[1];
  v13[1] = *a1;
  v13[2] = v14;
  v15 = a1[3];
  v13[3] = a1[2];
  v13[4] = v15;
  sub_25276E828(v35, v34);
  sub_25277AFA0(a1, v33);
  v16 = a3;
  v17 = sub_2528C0810();
  sub_2528C0840();
  v31 = sub_2528C0D30();

  if (sub_2528C0D90())
  {
    sub_2528BEA50();
    sub_2528C0870();

    if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
    {
      v18 = 0;
      v30 = "[Error] Interval already ended";
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      v30 = "%s\n failed with error: %@";
      v18 = 2;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32 = v21;
    *v19 = v18;
    *(v19 + 1) = v18;
    *(v19 + 2) = 2080;
    sub_25276E828(v34, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v22 = sub_2528C0A10();
    v24 = v23;
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    v25 = sub_2527389AC(v22, v24, &v32);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2112;
    v26 = a3;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v27;
    *v20 = v27;
    v28 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v17, v31, v28, "HomeAppIntents", v30, v19, 0x16u);
    sub_2527213D8(v20, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x2530A8D80](v21, -1, -1);
    MEMORY[0x2530A8D80](v19, -1, -1);

    (*(v10 + 8))(v12, v9);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v35);
}

uint64_t sub_2527BF9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_2528C0830();
  v39 = *(v9 - 1);
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2528C07F0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[3] = &type metadata for ActivateSceneIntent;
  v44[4] = &off_2864972C0;
  v44[0] = a1;
  v44[1] = a2;
  v44[2] = a3;
  sub_25276E828(v44, v43);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v16 = a5;
  v17 = sub_2528C0810();
  sub_2528C0840();
  v18 = sub_2528C0D30();
  v19 = a5;

  if (sub_2528C0D90())
  {
    v37 = v13;
    v38 = v12;
    sub_2528BEA50();
    sub_2528C0870();

    v21 = v39;
    v20 = v40;
    v22 = v18;
    if ((*(v39 + 88))(v11, v40) == *MEMORY[0x277D85B00])
    {
      v23 = 0;
      v40 = "[Error] Interval already ended";
    }

    else
    {
      (*(v21 + 8))(v11, v20);
      v40 = "%s\n failed with error: %@";
      v23 = 2;
    }

    v24 = v15;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v42 = v27;
    *v25 = v23;
    *(v25 + 1) = v23;
    *(v25 + 2) = 2080;
    sub_25276E828(v43, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v28 = sub_2528C0A10();
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    v31 = sub_2527389AC(v28, v30, &v42);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2112;
    v32 = v19;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v33;
    *v26 = v33;
    v34 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v17, v22, v34, "HomeAppIntents", v40, v25, 0x16u);
    sub_2527213D8(v26, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x2530A8D80](v27, -1, -1);
    MEMORY[0x2530A8D80](v25, -1, -1);

    (*(v37 + 8))(v24, v38);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v44);
}

uint64_t sub_2527BFDCC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2528C0830();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2528C07F0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[3] = &type metadata for AutomateAttributeValueIntent;
  v35[4] = &off_2864973A8;
  v13 = swift_allocObject();
  v35[0] = v13;
  v14 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(a1 + 32);
  *(v13 + 64) = *(a1 + 48);
  sub_25276E828(v35, v34);
  sub_2527C3DF8(a1, v33);
  v15 = a3;
  v16 = sub_2528C0810();
  sub_2528C0840();
  v31 = sub_2528C0D30();

  if (sub_2528C0D90())
  {
    sub_2528BEA50();
    sub_2528C0870();

    if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
    {
      v17 = 0;
      v30 = "[Error] Interval already ended";
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      v30 = "%s\n failed with error: %@";
      v17 = 2;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v18 = v17;
    *(v18 + 1) = v17;
    *(v18 + 2) = 2080;
    sub_25276E828(v34, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v21 = sub_2528C0A10();
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    v24 = sub_2527389AC(v21, v23, &v32);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2112;
    v25 = a3;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v26;
    *v19 = v26;
    v27 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v16, v31, v27, "HomeAppIntents", v30, v18, 0x16u);
    sub_2527213D8(v19, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x2530A8D80](v20, -1, -1);
    MEMORY[0x2530A8D80](v18, -1, -1);

    (*(v10 + 8))(v12, v9);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v35);
}

uint64_t sub_2527C01F4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[3] = a4;
  v26[4] = a5;
  v8 = swift_allocObject();
  v26[0] = v8;
  v9 = *(a1 + 1);
  v8[1] = *a1;
  v8[2] = v9;
  v8[3] = *(a1 + 2);
  sub_25276E828(v26, v25);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v10 = a2;
  v11 = sub_2528C0890();
  v12 = sub_2528C0D10();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v13 = 136446466;
    sub_25276E828(v25, &v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v16 = sub_2528C0A10();
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    v19 = sub_2527389AC(v16, v18, &v24);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    v20 = a2;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v21;
    *v14 = v21;
    _os_log_impl(&dword_252711000, v11, v12, "HomeAppIntents: Finished performing %{public}s: failed with error %@", v13, 0x16u);
    sub_2527213D8(v14, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x2530A8D80](v15, -1, -1);
    MEMORY[0x2530A8D80](v13, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v26);
}

uint64_t sub_2527C0430(uint64_t a1, void *a2)
{
  v22[3] = &type metadata for ToggleAttributeIntent;
  v22[4] = &off_286496B88;
  v4 = swift_allocObject();
  v22[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = *(a1 + 48);
  sub_25276E828(v22, v21);
  sub_2527691BC(a1, v20);
  v6 = a2;
  v7 = sub_2528C0890();
  v8 = sub_2528C0D10();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136446466;
    sub_25276E828(v21, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v12 = sub_2528C0A10();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    v15 = sub_2527389AC(v12, v14, &v19);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    v16 = a2;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_252711000, v7, v8, "HomeAppIntents: Finished performing %{public}s: failed with error %@", v9, 0x16u);
    sub_2527213D8(v10, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x2530A8D80](v11, -1, -1);
    MEMORY[0x2530A8D80](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v22);
}

uint64_t sub_2527C0650(uint64_t a1, uint64_t a2, void *a3)
{
  v20[3] = &type metadata for GetDeviceInfoIntent;
  v20[4] = &off_286496CA8;
  v20[0] = a1;
  v20[1] = a2;
  sub_25276E828(v20, v19);
  sub_2528BEA50();
  sub_2528BEA50();
  v4 = a3;
  v5 = sub_2528C0890();
  v6 = sub_2528C0D10();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136446466;
    sub_25276E828(v19, &v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v10 = sub_2528C0A10();
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    v13 = sub_2527389AC(v10, v12, &v18);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    v14 = a3;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&dword_252711000, v5, v6, "HomeAppIntents: Finished performing %{public}s: failed with error %@", v7, 0x16u);
    sub_2527213D8(v8, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x2530A8D80](v9, -1, -1);
    MEMORY[0x2530A8D80](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v20);
}

uint64_t sub_2527C084C(_OWORD *a1, void *a2)
{
  v23[3] = &type metadata for DeltaAttributeValueIntent;
  v23[4] = &off_286496D88;
  v4 = swift_allocObject();
  v23[0] = v4;
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  v6 = a1[3];
  v4[3] = a1[2];
  v4[4] = v6;
  sub_25276E828(v23, v22);
  sub_25277AFA0(a1, v21);
  v7 = a2;
  v8 = sub_2528C0890();
  v9 = sub_2528C0D10();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136446466;
    sub_25276E828(v22, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v13 = sub_2528C0A10();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    v16 = sub_2527389AC(v13, v15, &v20);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2112;
    v17 = a2;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&dword_252711000, v8, v9, "HomeAppIntents: Finished performing %{public}s: failed with error %@", v10, 0x16u);
    sub_2527213D8(v11, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x2530A8D80](v12, -1, -1);
    MEMORY[0x2530A8D80](v10, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v23);
}

uint64_t sub_2527C0A64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21[0] = a1;
  v21[3] = &type metadata for ActivateSceneIntent;
  v21[4] = &off_2864972C0;
  v21[1] = a2;
  v21[2] = a3;
  sub_25276E828(v21, v20);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v5 = a4;
  v6 = sub_2528C0890();
  v7 = sub_2528C0D10();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136446466;
    sub_25276E828(v20, &v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9F8, &qword_2528C95A8);
    v11 = sub_2528C0A10();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    v14 = sub_2527389AC(v11, v13, &v19);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    v15 = a4;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v16;
    *v9 = v16;
    _os_log_impl(&dword_252711000, v6, v7, "HomeAppIntents: Finished performing %{public}s: failed with error %@", v8, 0x16u);
    sub_2527213D8(v9, &qword_27F4FC230, &qword_2528C3928);
    MEMORY[0x2530A8D80](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x2530A8D80](v10, -1, -1);
    MEMORY[0x2530A8D80](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v21);
}