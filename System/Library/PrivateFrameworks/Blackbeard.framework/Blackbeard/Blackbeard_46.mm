void *sub_1E6404414(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079390, &qword_1E66014F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  v8 = *(v51 - 8);
  v9 = MEMORY[0x1EEE9AC00](v51);
  v43 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v36 - v11;
  v12 = sub_1E65D8258();
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v46 = v14 + 16;
  v47 = v14;
  v50 = (v14 + 8);
  v45 = (v8 + 48);
  v40 = v8;
  v41 = (v8 + 32);
  v52 = a3;
  v22 = v13;

  v24 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v25 = v24;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v47 + 16))(v16, *(v52 + 48) + *(v47 + 72) * (__clz(__rbit64(v20)) | (v24 << 6)), v22);
    v49(v16);
    if (v3)
    {
      (*v50)(v16, v22);
      v35 = v44;

      return v35;
    }

    v20 &= v20 - 1;
    (*v50)(v16, v22);
    if ((*v45)(v7, 1, v51) == 1)
    {
      result = sub_1E5DFE50C(v7, &qword_1ED079390, &qword_1E66014F8);
    }

    else
    {
      v39 = v22;
      v26 = *v41;
      (*v41)(v42, v7, v51);
      v26(v43, v42, v51);
      v27 = v26;
      v28 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1E64F60E8(0, v28[2] + 1, 1, v28);
      }

      v30 = v28[2];
      v29 = v28[3];
      v44 = v28;
      v31 = v30 + 1;
      v22 = v39;
      if (v30 >= v29 >> 1)
      {
        v37 = v30;
        v38 = v30 + 1;
        v34 = sub_1E64F60E8((v29 > 1), v30 + 1, 1, v44);
        v30 = v37;
        v31 = v38;
        v44 = v34;
      }

      v32 = v43;
      v33 = v44;
      v44[2] = v31;
      result = (v27)(v33 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v30, v32, v51);
    }
  }

  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      return v44;
    }

    v20 = *(v17 + 8 * v24);
    ++v25;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E640486C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792B0, &qword_1E6601440);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - v6;
  v51 = sub_1E65D8258();
  v8 = *(v51 - 8);
  v9 = MEMORY[0x1EEE9AC00](v51);
  v43 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v36 - v11;
  v12 = sub_1E65DAEB8();
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v46 = v14 + 16;
  v47 = v14;
  v50 = (v14 + 8);
  v45 = (v8 + 48);
  v40 = v8;
  v41 = (v8 + 32);
  v52 = a3;
  v22 = v13;

  v24 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v25 = v24;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v47 + 16))(v16, *(v52 + 48) + *(v47 + 72) * (__clz(__rbit64(v20)) | (v24 << 6)), v22);
    v49(v16);
    if (v3)
    {
      (*v50)(v16, v22);
      v35 = v44;

      return v35;
    }

    v20 &= v20 - 1;
    (*v50)(v16, v22);
    if ((*v45)(v7, 1, v51) == 1)
    {
      result = sub_1E5DFE50C(v7, &qword_1ED0792B0, &qword_1E6601440);
    }

    else
    {
      v39 = v22;
      v26 = *v41;
      (*v41)(v42, v7, v51);
      v26(v43, v42, v51);
      v27 = v26;
      v28 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1E64F66F0(0, v28[2] + 1, 1, v28);
      }

      v30 = v28[2];
      v29 = v28[3];
      v44 = v28;
      v31 = v30 + 1;
      v22 = v39;
      if (v30 >= v29 >> 1)
      {
        v37 = v30;
        v38 = v30 + 1;
        v34 = sub_1E64F66F0((v29 > 1), v30 + 1, 1, v44);
        v30 = v37;
        v31 = v38;
        v44 = v34;
      }

      v32 = v43;
      v33 = v44;
      v44[2] = v31;
      result = (v27)(v33 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v30, v32, v51);
    }
  }

  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      return v44;
    }

    v20 = *(v17 + 8 * v24);
    ++v25;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

char *sub_1E6404CB8(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079390, &qword_1E66014F8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v31 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = *(sub_1E65D8258() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = MEMORY[0x1E69E7CC0];
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
      sub_1E5DFE50C(v8, &qword_1ED079390, &qword_1E66014F8);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1E64F60E8(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_1E64F60E8((v20 > 1), v21 + 1, 1, v32);
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

void *sub_1E6404FF0(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0794D8, &qword_1E6601620);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072CA0, &unk_1E65EC630);
  v8 = *(v51 - 8);
  v9 = MEMORY[0x1EEE9AC00](v51);
  v43 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CD0, &qword_1E65F3528);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - v15;
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v46 = v14 + 16;
  v47 = v14;
  v50 = (v14 + 8);
  v45 = (v8 + 48);
  v40 = v8;
  v41 = (v8 + 32);
  v52 = a3;
  v22 = v13;

  v24 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v25 = v24;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v47 + 16))(v16, *(v52 + 48) + *(v47 + 72) * (__clz(__rbit64(v20)) | (v24 << 6)), v22);
    v49(v16);
    if (v3)
    {
      (*v50)(v16, v22);
      v35 = v44;

      return v35;
    }

    v20 &= v20 - 1;
    (*v50)(v16, v22);
    if ((*v45)(v7, 1, v51) == 1)
    {
      result = sub_1E5DFE50C(v7, &qword_1ED0794D8, &qword_1E6601620);
    }

    else
    {
      v39 = v22;
      v26 = *v41;
      (*v41)(v42, v7, v51);
      v26(v43, v42, v51);
      v27 = v26;
      v28 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1E64F6AB8(0, v28[2] + 1, 1, v28);
      }

      v30 = v28[2];
      v29 = v28[3];
      v44 = v28;
      v31 = v30 + 1;
      v22 = v39;
      if (v30 >= v29 >> 1)
      {
        v37 = v30;
        v38 = v30 + 1;
        v34 = sub_1E64F6AB8((v29 > 1), v30 + 1, 1, v44);
        v30 = v37;
        v31 = v38;
        v44 = v34;
      }

      v32 = v43;
      v33 = v44;
      v44[2] = v31;
      result = (v27)(v33 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v30, v32, v51);
    }
  }

  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      return v44;
    }

    v20 = *(v17 + 8 * v24);
    ++v25;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E6405450(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768B0, &qword_1E65F6E78);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_1E65DFAA8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v32 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v30 = &v26 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = *(sub_1E65D88D8() - 8);
  v27 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v31 = *(v16 + 72);
  v19 = MEMORY[0x1E69E7CC0];
  v28 = v10;
  v29 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_1E5DFE50C(v9, &qword_1ED0768B0, &qword_1E65F6E78);
    }

    else
    {
      v20 = a1;
      v21 = MEMORY[0x1E699D4B8];
      v22 = v30;
      sub_1E5E24EEC(v9, v30, MEMORY[0x1E699D4B8]);
      sub_1E5E24EEC(v22, v32, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1E64F6B2C(0, v19[2] + 1, 1, v19);
      }

      v24 = v19[2];
      v23 = v19[3];
      if (v24 >= v23 >> 1)
      {
        v19 = sub_1E64F6B2C((v23 > 1), v24 + 1, 1, v19);
      }

      v19[2] = v24 + 1;
      sub_1E5E24EEC(v32, v19 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, MEMORY[0x1E699D4B8]);
      a1 = v20;
      v10 = v28;
    }

    v18 += v31;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_1E640576C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079360, &qword_1E66014C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B88, &qword_1E65EC618);
  v8 = *(v51 - 8);
  v9 = MEMORY[0x1EEE9AC00](v51);
  v43 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v36 - v11;
  v12 = sub_1E65DA488();
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v46 = v14 + 16;
  v47 = v14;
  v50 = (v14 + 8);
  v45 = (v8 + 48);
  v40 = v8;
  v41 = (v8 + 32);
  v52 = a3;
  v22 = v13;

  v24 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v25 = v24;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v47 + 16))(v16, *(v52 + 48) + *(v47 + 72) * (__clz(__rbit64(v20)) | (v24 << 6)), v22);
    v49(v16);
    if (v3)
    {
      (*v50)(v16, v22);
      v35 = v44;

      return v35;
    }

    v20 &= v20 - 1;
    (*v50)(v16, v22);
    if ((*v45)(v7, 1, v51) == 1)
    {
      result = sub_1E5DFE50C(v7, &qword_1ED079360, &qword_1E66014C8);
    }

    else
    {
      v39 = v22;
      v26 = *v41;
      (*v41)(v42, v7, v51);
      v26(v43, v42, v51);
      v27 = v26;
      v28 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1E64F6B54(0, v28[2] + 1, 1, v28);
      }

      v30 = v28[2];
      v29 = v28[3];
      v44 = v28;
      v31 = v30 + 1;
      v22 = v39;
      if (v30 >= v29 >> 1)
      {
        v37 = v30;
        v38 = v30 + 1;
        v34 = sub_1E64F6B54((v29 > 1), v30 + 1, 1, v44);
        v30 = v37;
        v31 = v38;
        v44 = v34;
      }

      v32 = v43;
      v33 = v44;
      v44[2] = v31;
      result = (v27)(v33 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v30, v32, v51);
    }
  }

  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      return v44;
    }

    v20 = *(v17 + 8 * v24);
    ++v25;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E6405BC4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079388, &qword_1E66014F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_1E65DFFB8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v32 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v30 = &v26 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = *(sub_1E65D9898() - 8);
  v27 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v31 = *(v16 + 72);
  v19 = MEMORY[0x1E69E7CC0];
  v28 = v10;
  v29 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_1E5DFE50C(v9, &qword_1ED079388, &qword_1E66014F0);
    }

    else
    {
      v20 = a1;
      v21 = MEMORY[0x1E699D618];
      v22 = v30;
      sub_1E5E24EEC(v9, v30, MEMORY[0x1E699D618]);
      sub_1E5E24EEC(v22, v32, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1E64F6BC8(0, v19[2] + 1, 1, v19);
      }

      v24 = v19[2];
      v23 = v19[3];
      if (v24 >= v23 >> 1)
      {
        v19 = sub_1E64F6BC8((v23 > 1), v24 + 1, 1, v19);
      }

      v19[2] = v24 + 1;
      sub_1E5E24EEC(v32, v19 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, MEMORY[0x1E699D618]);
      a1 = v20;
      v10 = v28;
    }

    v18 += v31;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_1E6405EE0(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079428, &qword_1E6601580);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - v6;
  v51 = sub_1E65E2CB8();
  v8 = *(v51 - 8);
  v9 = MEMORY[0x1EEE9AC00](v51);
  v43 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v36 - v11;
  v12 = sub_1E65D9D28();
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v46 = v14 + 16;
  v47 = v14;
  v50 = (v14 + 8);
  v45 = (v8 + 48);
  v40 = v8;
  v41 = (v8 + 32);
  v52 = a3;
  v22 = v13;

  v24 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v25 = v24;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v47 + 16))(v16, *(v52 + 48) + *(v47 + 72) * (__clz(__rbit64(v20)) | (v24 << 6)), v22);
    v49(v16);
    if (v3)
    {
      (*v50)(v16, v22);
      v35 = v44;

      return v35;
    }

    v20 &= v20 - 1;
    (*v50)(v16, v22);
    if ((*v45)(v7, 1, v51) == 1)
    {
      result = sub_1E5DFE50C(v7, &qword_1ED079428, &qword_1E6601580);
    }

    else
    {
      v39 = v22;
      v26 = *v41;
      (*v41)(v42, v7, v51);
      v26(v43, v42, v51);
      v27 = v26;
      v28 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1E64F6CE4(0, v28[2] + 1, 1, v28);
      }

      v30 = v28[2];
      v29 = v28[3];
      v44 = v28;
      v31 = v30 + 1;
      v22 = v39;
      if (v30 >= v29 >> 1)
      {
        v37 = v30;
        v38 = v30 + 1;
        v34 = sub_1E64F6CE4((v29 > 1), v30 + 1, 1, v44);
        v30 = v37;
        v31 = v38;
        v44 = v34;
      }

      v32 = v43;
      v33 = v44;
      v44[2] = v31;
      result = (v27)(v33 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v30, v32, v51);
    }
  }

  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      return v44;
    }

    v20 = *(v17 + 8 * v24);
    ++v25;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E640632C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0794C0, &qword_1E6601608);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - v6;
  v51 = sub_1E65E33F8();
  v8 = *(v51 - 8);
  v9 = MEMORY[0x1EEE9AC00](v51);
  v43 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v36 - v11;
  v12 = sub_1E65D8E78();
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v46 = v14 + 16;
  v47 = v14;
  v50 = (v14 + 8);
  v45 = (v8 + 48);
  v40 = v8;
  v41 = (v8 + 32);
  v52 = a3;
  v22 = v13;

  v24 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v25 = v24;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v47 + 16))(v16, *(v52 + 48) + *(v47 + 72) * (__clz(__rbit64(v20)) | (v24 << 6)), v22);
    v49(v16);
    if (v3)
    {
      (*v50)(v16, v22);
      v35 = v44;

      return v35;
    }

    v20 &= v20 - 1;
    (*v50)(v16, v22);
    if ((*v45)(v7, 1, v51) == 1)
    {
      result = sub_1E5DFE50C(v7, &qword_1ED0794C0, &qword_1E6601608);
    }

    else
    {
      v39 = v22;
      v26 = *v41;
      (*v41)(v42, v7, v51);
      v26(v43, v42, v51);
      v27 = v26;
      v28 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1E64F6D34(0, v28[2] + 1, 1, v28);
      }

      v30 = v28[2];
      v29 = v28[3];
      v44 = v28;
      v31 = v30 + 1;
      v22 = v39;
      if (v30 >= v29 >> 1)
      {
        v37 = v30;
        v38 = v30 + 1;
        v34 = sub_1E64F6D34((v29 > 1), v30 + 1, 1, v44);
        v30 = v37;
        v31 = v38;
        v44 = v34;
      }

      v32 = v43;
      v33 = v44;
      v44[2] = v31;
      result = (v27)(v33 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v30, v32, v51);
    }
  }

  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      return v44;
    }

    v20 = *(v17 + 8 * v24);
    ++v25;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

char *sub_1E6406778(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792B8, &qword_1E6601448);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074EA8, &qword_1E65F1140);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v31 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = *(sub_1E65D7D18() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = MEMORY[0x1E69E7CC0];
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
      sub_1E5DFE50C(v8, &qword_1ED0792B8, &qword_1E6601448);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1E64F6E5C(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_1E64F6E5C((v20 > 1), v21 + 1, 1, v32);
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

uint64_t sub_1E6406AB0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_1E65DA838();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v21, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v22;
      if (v22)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v14 = v23;
    v19 = v21;
    v20 = v24;
    result = swift_isUniquelyReferenced_nonNull_native();
    v25 = v14;
    if ((result & 1) == 0)
    {
      result = sub_1E64F6EF8(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v16 = v8[2];
    v15 = v8[3];
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_1E64F6EF8((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    v8[2] = v17;
    v18 = &v8[4 * v16];
    v18[4] = v19;
    v18[5] = v13;
    v18[6] = v25;
    v18[7] = v20;
  }

  while (v7 != v4);
  return v8;
}

char *sub_1E6406C60(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079608, &qword_1E6601738);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_1E65DC818();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v31 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = *(sub_1E65D9E18() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = MEMORY[0x1E69E7CC0];
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
      sub_1E5DFE50C(v8, &qword_1ED079608, &qword_1E6601738);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1E64F702C(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_1E64F702C((v20 > 1), v21 + 1, 1, v32);
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

char *sub_1E6406F8C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792B0, &qword_1E6601440);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_1E65D8258();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v31 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = *(sub_1E65D88D8() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = MEMORY[0x1E69E7CC0];
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
      sub_1E5DFE50C(v8, &qword_1ED0792B0, &qword_1E6601440);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1E64F66F0(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_1E64F66F0((v20 > 1), v21 + 1, 1, v32);
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

char *sub_1E64072E4(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = 0;
  result = MEMORY[0x1E69E7CC0];
  do
  {
    v28 = result;
    for (i = v9; ; ++i)
    {
      if (i >= v5)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v12 = (a4)(0, a2);
      v14 = *(v12 - 8);
      result = (v12 - 8);
      v13 = v14;
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_19;
      }

      result = a1(&v26, a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * i);
      if (v4)
      {
        v24 = v28;

        return v24;
      }

      v15 = v27;
      if (v27)
      {
        break;
      }

      if (v9 == v5)
      {
        return v28;
      }
    }

    v25 = v26;
    v16 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1E64F6718(0, *(v16 + 2) + 1, 1, v16);
    }

    v17 = v16;
    v18 = *(v16 + 2);
    v19 = v17;
    v20 = *(v17 + 3);
    v21 = (v18 + 1);
    if (v18 >= v20 >> 1)
    {
      v28 = (v18 + 1);
      v23 = sub_1E64F6718((v20 > 1), v18 + 1, 1, v19);
      v21 = v28;
      v19 = v23;
    }

    *(v19 + 2) = v21;
    v22 = &v19[16 * v18];
    result = v19;
    *(v22 + 4) = v25;
    *(v22 + 5) = v15;
  }

  while (v9 != v5);
  return result;
}

uint64_t sub_1E64074A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1E6420774(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1E6215038(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1E64237E4();
        v16 = v18;
      }

      result = sub_1E641EF5C(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

unint64_t sub_1E64075B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    v5 = *(a1 + 16);
    v18 = *a1;
    v19 = v5;
    v20 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_1E6420AC4(&v18, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v16;
  }

  else
  {
    sub_1E5DFE50C(a1, &qword_1ED0792A0, &qword_1E6601430);
    v8 = sub_1E5E008AC(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v17 = *v3;
      if (!v11)
      {
        sub_1E6423E9C();
        v12 = v17;
      }

      v13 = (*(v12 + 56) + 48 * v10);
      v15 = v13[1];
      v14 = v13[2];
      v18 = *v13;
      v19 = v15;
      v20 = v14;
      sub_1E641F3F4(v10, v12);
      *v3 = v12;
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
    }

    return sub_1E5DFE50C(&v18, &qword_1ED0792A0, &qword_1E6601430);
  }

  return result;
}

uint64_t sub_1E64076CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB0, &qword_1E65EC480);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - v14;
  if ((*(v13 + 48))(a1, 1, v12) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED072AB0, &qword_1E65EC480);
    sub_1E64183B8(a2, a3, a4, v11);
    sub_1E6001C2C(a2, a3, a4);
    return sub_1E5DFE50C(v11, &qword_1ED072AB0, &qword_1E65EC480);
  }

  else
  {
    (*(v13 + 32))(v15, a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    sub_1E6420C24(v15, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    result = sub_1E6001C2C(a2, a3, a4);
    *v4 = v19;
  }

  return result;
}

uint64_t sub_1E64078D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 255)
  {
    sub_1E5DFE50C(a1, &qword_1ED079340, &qword_1E66014A8);
    sub_1E6418548(a2, &v8);
    sub_1E608E17C(a2);
    return sub_1E5DFE50C(&v8, &qword_1ED079340, &qword_1E66014A8);
  }

  else
  {
    v4 = *(a1 + 16);
    v8 = *a1;
    v9[0] = v4;
    *(v9 + 9) = *(a1 + 25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_1E6420F24(&v8, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1E608E17C(a2);
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1E6407998(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743C0, &qword_1E65F0988);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1E65DF438();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED0743C0, &qword_1E65F0988);
    v13 = sub_1E64170B8(a2, MEMORY[0x1E699E670], MEMORY[0x1E699E670]);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1E642491C();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_1E641FA14(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1E5DFE50C(v8, &qword_1ED0743C0, &qword_1E65F0988);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1E64210BC(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1E6407C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758B0, &qword_1E65F1FB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED0758B0, &qword_1E65F1FB0);
    sub_1E64187B8(a2, a3, &qword_1ED072810, &qword_1E65EBE08, &qword_1ED079480, &qword_1E66015C8, v9);

    return sub_1E5DFE50C(v9, &qword_1ED0758B0, &qword_1E65F1FB0);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E64217FC(v13, a2, a3, isUniquelyReferenced_nonNull_native, &qword_1ED072810, &qword_1E65EBE08, &qword_1ED079480, &qword_1E66015C8);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1E6407E30(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075F00, &qword_1E65F45F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1E65DAFD8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED075F00, &qword_1E65F45F8);
    sub_1E641860C(a2, v7);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1E5DFE50C(v7, &qword_1ED075F00, &qword_1E65F45F8);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1E642148C(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1E6408074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB0, &qword_1E65EC480);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED072AB0, &qword_1E65EC480);
    sub_1E64187B8(a2, a3, &qword_1ED072AE0, &qword_1E65F9E00, &qword_1ED0792E8, &qword_1E6601468, v9);

    return sub_1E5DFE50C(v9, &qword_1ED072AB0, &qword_1E65EC480);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E64217FC(v13, a2, a3, isUniquelyReferenced_nonNull_native, &qword_1ED072AE0, &qword_1E65F9E00, &qword_1ED0792E8, &qword_1E6601468);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1E6408294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077EF0, &qword_1E65FAE38);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762E8, &qword_1E65F53C8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED077EF0, &qword_1E65FAE38);
    sub_1E64187B8(a2, a3, &qword_1ED0762E8, &qword_1E65F53C8, &qword_1ED0792E0, &qword_1E6601460, v9);

    return sub_1E5DFE50C(v9, &qword_1ED077EF0, &qword_1E65FAE38);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E64217FC(v13, a2, a3, isUniquelyReferenced_nonNull_native, &qword_1ED0762E8, &qword_1E65F53C8, &qword_1ED0792E0, &qword_1E6601460);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1E64084B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077EE8, &qword_1E65FAE30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076308, &qword_1E65F53D8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED077EE8, &qword_1E65FAE30);
    sub_1E64187B8(a2, a3, &qword_1ED076308, &qword_1E65F53D8, &qword_1ED0792D8, &qword_1E6601458, v9);

    return sub_1E5DFE50C(v9, &qword_1ED077EE8, &qword_1E65FAE30);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E64217FC(v13, a2, a3, isUniquelyReferenced_nonNull_native, &qword_1ED076308, &qword_1E65F53D8, &qword_1ED0792D8, &qword_1E6601458);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1E64086D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077EE0, &qword_1E65FAE28);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762C8, &qword_1E65F53B8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED077EE0, &qword_1E65FAE28);
    sub_1E64187B8(a2, a3, &qword_1ED0762C8, &qword_1E65F53B8, &qword_1ED0792D0, &qword_1E6601450, v9);

    return sub_1E5DFE50C(v9, &qword_1ED077EE0, &qword_1E65FAE28);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E64217FC(v13, a2, a3, isUniquelyReferenced_nonNull_native, &qword_1ED0762C8, &qword_1E65F53B8, &qword_1ED0792D0, &qword_1E6601450);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1E64088F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788A0, &qword_1E65FDE20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1E65DBD88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED0788A0, &qword_1E65FDE20);
    sub_1E6418960(a2, a3, v9);

    return sub_1E5DFE50C(v9, &qword_1ED0788A0, &qword_1E65FDE20);
  }

  else
  {
    sub_1E5E24EEC(a1, v12, MEMORY[0x1E699D2D0]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E64219C4(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1E6408AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C08, &qword_1E65FF540);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1E65E3468();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED078C08, &qword_1E65FF540);
    sub_1E6418AE0(a2, a3, v9);

    return sub_1E5DFE50C(v9, &qword_1ED078C08, &qword_1E65FF540);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E6421B30(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1E6408CA0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079048, &qword_1E6600A10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_1E65E0D48();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED079048, &qword_1E6600A10);
    sub_1E6418C88(a2, v7);
    sub_1E6428F80(a2, MEMORY[0x1E699DD40]);
    return sub_1E5DFE50C(v7, &qword_1ED079048, &qword_1E6600A10);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1E6421D0C(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1E6428F80(a2, MEMORY[0x1E699DD40]);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_1E6408E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079270, &qword_1E6601400);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1E65DBED8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED079270, &qword_1E6601400);
    sub_1E6418E24(a2, a3, v9);

    return sub_1E5DFE50C(v9, &qword_1ED079270, &qword_1E6601400);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E6421EE8(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1E640906C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079330, &qword_1E6601498);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1E65E3508();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED079330, &qword_1E6601498);
    sub_1E6418FCC(a2, a3, v9);

    return sub_1E5DFE50C(v9, &qword_1ED079330, &qword_1E6601498);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E64220C4(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1E6409244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0793D0, &qword_1E6601538);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1E65E2F28();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED0793D0, &qword_1E6601538);
    sub_1E6419174(a2, a3, v9);

    return sub_1E5DFE50C(v9, &qword_1ED0793D0, &qword_1E6601538);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E6422490(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1E640941C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079510, &qword_1E6601648);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1E65E31D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED079510, &qword_1E6601648);
    sub_1E641931C(a2, a3, v9);

    return sub_1E5DFE50C(v9, &qword_1ED079510, &qword_1E6601648);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E64227E8(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1E64095F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079348, &qword_1E66014B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1E65E2498();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED079348, &qword_1E66014B0);
    sub_1E64194C4(a2, a3, v9);

    return sub_1E5DFE50C(v9, &qword_1ED079348, &qword_1E66014B0);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E64229C4(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1E64097CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079378, &qword_1E66014E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1E65DFA08();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED079378, &qword_1E66014E0);
    sub_1E641966C(a2, a3, v9);

    return sub_1E5DFE50C(v9, &qword_1ED079378, &qword_1E66014E0);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1E6422BA0(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1E64099A4(uint64_t result, void (*a2)(uint64_t *, char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    v7 = (a4 + 32);
    while (1)
    {
      v8 = *v7++;
      v9 = v8;
      a2(&v10, &v9, a3);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

uint64_t sub_1E6409A24(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v22 = sub_1E65D9D28();
  v7 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v10 = a4 + 56;
  v11 = 1 << *(a4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a4 + 56);
  v14 = (v11 + 63) >> 6;
  v19[1] = v7 + 16;
  v21 = (v7 + 8);
  v23 = a4;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
      v18 = v22;
LABEL_9:
      (*(v7 + 16))(v9, *(v23 + 48) + *(v7 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v18);
      v20(&v24, v9);
      if (v4)
      {
        break;
      }

      v13 &= v13 - 1;
      result = (*v21)(v9, v18);
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    (*v21)(v9, v18);
  }

  else
  {
LABEL_5:
    v18 = v22;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        return v24;
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E6409C44()
{
  v0 = sub_1E65D76A8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741D8, &unk_1E6606270);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20[-v5];
  v7 = sub_1E65D92D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
  sub_1E65E4C98();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    (*(v8 + 32))(v10, v6, v7);
LABEL_7:
    sub_1E65D7698();
    v14 = sub_1E65D92A8();
    (*(v1 + 8))(v3, v0);
    (*(v8 + 8))(v10, v7);
    if (v14)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077038, &qword_1E65F9300) + 48);
    (*(v8 + 32))(v10, v6, v7);
    (*(v1 + 8))(&v6[v12], v0);
    goto LABEL_7;
  }

  v15 = *(v6 + 2);

  v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v17 = sub_1E65E5C48();

  v18 = [v16 initWithDomain:v17 code:v15 userInfo:0];

  v20[15] = 4;
  sub_1E5FFF464();
  v19 = v18;
  LOBYTE(v17) = sub_1E65D97C8();

  if (v17)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E6409F80@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for RouteSource(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65DC7D8();
  if (v5 <= 3)
  {
    if (v5 > 1)
    {
      if (v5 != 2 || sub_1E65DC7A8() == 2)
      {
        goto LABEL_4;
      }
    }

    else if (!v5)
    {
      v9 = sub_1E65DC7E8();
      v11 = v10;
      swift_storeEnumTagMultiPayload();
      *a1 = v9;
      a1[1] = v11;
      type metadata accessor for RouteResource(0);
      swift_storeEnumTagMultiPayload();
      v12 = type metadata accessor for RouteDestination(0);
      sub_1E5E24EEC(v4, a1 + *(v12 + 20), type metadata accessor for RouteSource);
      *(a1 + *(v12 + 24)) = MEMORY[0x1E69E7CD0];
      return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
    }
  }

  else
  {
    if (v5 <= 5)
    {
      if (v5 == 4)
      {
        v16 = sub_1E65DC7E8();
        v18 = v17;
        swift_storeEnumTagMultiPayload();
        *a1 = v16;
        a1[1] = v18;
        type metadata accessor for PlaylistType(0);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v19 = sub_1E65DC7E8();
        v21 = v20;
        swift_storeEnumTagMultiPayload();
        *a1 = v19;
        a1[1] = v21;
      }

      type metadata accessor for RouteResource(0);
      goto LABEL_18;
    }

    if (v5 != 6)
    {
LABEL_4:
      v6 = sub_1E65DC7E8();
      v8 = v7;
      swift_storeEnumTagMultiPayload();
      *a1 = v6;
      a1[1] = v8;
      type metadata accessor for RouteResource(0);
LABEL_18:
      swift_storeEnumTagMultiPayload();
      v12 = type metadata accessor for RouteDestination(0);
      sub_1E6429004(v4, a1 + *(v12 + 20), type metadata accessor for RouteSource);
      *(a1 + *(v12 + 24)) = MEMORY[0x1E69E7CD0];
      sub_1E6428F80(v4, type metadata accessor for RouteSource);
      return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
    }
  }

  v13 = type metadata accessor for RouteDestination(0);
  v14 = *(*(v13 - 8) + 56);

  return v14(a1, 1, 1, v13);
}

uint64_t sub_1E640A330@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v159 = a2;
  v137 = a3;
  v151 = sub_1E65D8F28();
  v138 = *(v151 - 8);
  v5 = MEMORY[0x1EEE9AC00](v151);
  v133 = v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v136 = v132 - v7;
  v167 = sub_1E65E03F8();
  v8 = MEMORY[0x1EEE9AC00](v167);
  v157 = v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v156 = v132 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v155 = v132 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v154 = v132 - v14;
  v150 = sub_1E65D7048();
  v164 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v149 = v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v148 = (v132 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v166 = v132 - v19;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  MEMORY[0x1EEE9AC00](v147);
  v165 = (v132 - v20);
  v180 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v180);
  v179 = (v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079638, &qword_1E6601768);
  v22 = MEMORY[0x1EEE9AC00](v177);
  v24 = v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v176 = v132 - v25;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A8, &qword_1E65EA790);
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v178 = v132 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072630, &qword_1E65EB948);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v135 = (v132 - v28);
  v29 = sub_1E65E0438();
  v183 = *(v29 - 8);
  v184 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v139 = v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072648, &qword_1E65EB960);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = v132 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = v132 - v35;
  v132[2] = sub_1E65DC8B8();
  v132[1] = v37;
  v38 = sub_1E65DC8C8();
  LODWORD(v182) = sub_1E640BB10(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  v40 = v185;
  v153 = v39;
  v158 = a1;
  v41 = sub_1E65E0678();
  v42 = sub_1E65DC8F8();
  v44 = v43;
  v45 = sub_1E65DC928();
  v132[3] = v36;
  sub_1E60930E0(v40, v41, v42, v44, v45, v46, v182, v36);

  v134 = v33;
  sub_1E6412180(v33);
  (*(v183 + 104))(v139, *MEMORY[0x1E699D7D8], v184);
  v183 = v3;
  v47 = sub_1E65DC8E8();
  v48 = *(v47 + 16);
  if (!v48)
  {

    v49 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v107 = v138;
    v108 = sub_1E65DC8C8();
    v109 = sub_1E640BB10(v108);
    v184 = v49;
    if (v109 == 44)
    {
      v110 = sub_1E65E28E8();
    }

    else
    {
      v110 = sub_1E65DC8B8();
    }

    v181 = v111;
    v182 = v110;
    v112 = sub_1E65DC8F8();
    v114 = v113;
    v115 = sub_1E65DC8C8();
    v116 = sub_1E640BB10(v115);
    v117 = v133;
    v118 = v151;
    (*(v107 + 104))(v133, **(&unk_1E8797590 + v116 - 2), v151);
    if (v114)
    {
      v119 = v114;
    }

    else
    {
      v119 = 0xE600000000000000;
    }

    v179 = v119;
    if (v114)
    {
      v120 = v112;
    }

    else
    {
      v120 = 0x756F59726F46;
    }

    v121 = *(v107 + 32);
    v122 = v136;
    v121(v136, v117, v118);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072370, &qword_1E65EABA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E65EA670;
    *(inited + 32) = 0x64496F636572;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = sub_1E65DC918();
    *(inited + 56) = v124;
    v125 = sub_1E6427498(inited);
    swift_setDeallocating();
    sub_1E5DFE50C(inited + 32, &qword_1ED072378, &qword_1E65EABA8);
    v126 = v135;
    v127 = v181;
    *v135 = v182;
    v126[1] = v127;
    v128 = v179;
    v126[2] = v120;
    v126[3] = v128;
    v129 = type metadata accessor for SectionMetrics(0);
    v121(v126 + *(v129 + 24), v122, v118);
    *(v126 + *(v129 + 32)) = v125;
    (*(*(v129 - 8) + 56))(v126, 0, 1, v129);
    v183 = type metadata accessor for ActionButtonDescriptor(0);
    v182 = type metadata accessor for ArtworkDescriptor(0);
    v181 = type metadata accessor for ContextMenu(0);
    v179 = type metadata accessor for ItemMetrics(0);
    v178 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
    v177 = type metadata accessor for ViewDescriptor(0);
    v176 = sub_1E642906C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
    v175 = sub_1E642906C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    sub_1E642906C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
    sub_1E642906C(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E642906C(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E642906C(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E642906C(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
    sub_1E642906C(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
    sub_1E5DF11E0();
    sub_1E642906C(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
    sub_1E642906C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
    v130 = v137;
    sub_1E65E0418();
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A0, &qword_1E65EA788);
    return (*(*(v131 - 8) + 56))(v130, 0, 1, v131);
  }

  v187 = MEMORY[0x1E69E7CC0];
  sub_1E601BE24(0, v48, 0);
  v49 = v187;
  v173 = *(v47 + 16);
  result = sub_1E65DC818();
  v51 = 0;
  v182 = result;
  v52 = *(result - 8);
  v169 = v47 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
  v181 = v52 + 16;
  v170 = v52;
  v168 = v52 + 32;
  v146 = (v164 + 8);
  v152 = *MEMORY[0x1E699E0A0];
  v145 = *MEMORY[0x1E699E0A8];
  v144 = *MEMORY[0x1E69CBAA0];
  v143 = *MEMORY[0x1E69CC468];
  v142 = *MEMORY[0x1E69CBCD8];
  v141 = (v138 + 104);
  v140 = *MEMORY[0x1E69CCA80];
  v172 = v47;
  v171 = v48;
  while (v173 != v51)
  {
    if (v51 >= *(v47 + 16))
    {
      goto LABEL_34;
    }

    v54 = v176;
    v53 = v177;
    v55 = *(v177 + 48);
    v56 = v170;
    v57 = *(v170 + 16);
    v58 = v182;
    v57(&v176[v55], v169 + *(v170 + 72) * v51, v182);
    *v24 = v51;
    v59 = *(v53 + 48);
    (*(v56 + 32))(&v24[v59], &v54[v55], v58);
    v60 = sub_1E65DC8C8();
    v184 = v49;
    if (v60)
    {
      v61 = sub_1E65DC8C8();
      sub_1E65E0678();
      sub_1E65E0708();
      v62 = byte_1E6601772[v61];
      v63 = v154;
      sub_1E6093784(v185, v62, v154);
      v64 = v156;
      sub_1E6429004(v63, v156, MEMORY[0x1E699D780]);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1E6428F80(v64, MEMORY[0x1E699D780]);
        v65 = v155;
        sub_1E6429004(v63, v155, MEMORY[0x1E699D780]);
LABEL_14:
        v98 = v63;
        v99 = &v24[v59];
        v88 = v24;
        v100 = v179;
        v57(v179, v99, v182);
        v101 = sub_1E65DC508();
        (*(*(v101 - 8) + 104))(v100, v152, v101);
        swift_storeEnumTagMultiPayload();
        sub_1E6429004(v65, v157, MEMORY[0x1E699D780]);
        v102 = v65;
        sub_1E642906C(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        sub_1E642906C(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        sub_1E642906C(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        v95 = v178;
        sub_1E65E04D8();
        v103 = MEMORY[0x1E699D780];
        sub_1E6428F80(v102, MEMORY[0x1E699D780]);
        sub_1E6428F80(v98, v103);
        goto LABEL_15;
      }

      v96 = sub_1E65E0908();
      (*(*(v96 - 8) + 8))(v64, v96);
      if (sub_1E65DC7A8() == 2)
      {
        v97 = sub_1E65DC7D8();
        v65 = v155;
        if (((1 << v97) & 0xEF) != 0)
        {
          goto LABEL_11;
        }

        sub_1E65DC7F8();
        if (v106)
        {

LABEL_11:
          sub_1E65E08C8();
        }

        else
        {
          sub_1E65E08E8();
        }
      }

      else
      {
        v65 = v155;
        sub_1E65E08D8();
      }

      swift_storeEnumTagMultiPayload();
      goto LABEL_14;
    }

    v66 = sub_1E65DC798();
    v68 = v67;
    v69 = sub_1E65DC7F8();
    v71 = v70;
    v72 = sub_1E65DC7B8();
    v73 = v179;
    *v179 = v66;
    v73[1] = v68;
    v73[2] = v69;
    v73[3] = v71;
    *(v73 + 32) = v72;
    v74 = v73;
    v75 = sub_1E65DC508();
    (*(*(v75 - 8) + 104))(v74, v145, v75);
    swift_storeEnumTagMultiPayload();
    v76 = sub_1E65DC7E8();
    v77 = v165;
    *v165 = v76;
    v77[1] = v78;
    v164 = type metadata accessor for ViewDescriptor(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v163 = type metadata accessor for ContextMenu(0);
    (*(*(v163 - 8) + 56))(v166, 1, 1, v163);
    v185 = sub_1E65DC7E8();
    v186 = v79;
    v80 = v149;
    sub_1E65D7038();
    sub_1E5F9AEA8();
    v81 = sub_1E65E6698();
    (*v146)(v80, v150);

    v185 = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
    sub_1E5FED46C(&qword_1EE2D4838, &qword_1ED074F18, &qword_1E65F1150, MEMORY[0x1E69E6310]);
    v82 = sub_1E65E5B68();
    v84 = v83;

    v85 = type metadata accessor for ItemMetrics(0);
    v86 = v85[5];
    v87 = sub_1E65D8C68();
    v88 = v24;
    v89 = v148;
    (*(*(v87 - 8) + 104))(v148 + v86, v144, v87);
    v90 = v85[7];
    v91 = sub_1E65D9908();
    (*(*(v91 - 8) + 104))(v89 + v90, v143, v91);
    (*v141)(v89 + v85[8], v142, v151);
    v92 = v85[10];
    v93 = sub_1E65D9F88();
    (*(*(v93 - 8) + 104))(v89 + v92, v140, v93);
    *v89 = v82;
    v89[1] = v84;
    v94 = (v89 + v85[6]);
    *v94 = 0;
    v94[1] = 0;
    (*(*(v85 - 1) + 56))(v89, 0, 1, v85);
    v162 = type metadata accessor for ActionButtonDescriptor(0);
    v161 = type metadata accessor for ArtworkDescriptor(0);
    v160 = sub_1E642906C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
    sub_1E642906C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    sub_1E642906C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
    sub_1E642906C(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E642906C(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E642906C(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E642906C(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
    sub_1E642906C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
    v95 = v178;
    sub_1E65E0488();
LABEL_15:
    swift_storeEnumTagMultiPayload();
    sub_1E5DFE50C(v88, &qword_1ED079638, &qword_1E6601768);
    v49 = v184;
    v187 = v184;
    v105 = *(v184 + 16);
    v104 = *(v184 + 24);
    v24 = v88;
    if (v105 >= v104 >> 1)
    {
      sub_1E601BE24((v104 > 1), v105 + 1, 1);
      v49 = v187;
    }

    ++v51;
    *(v49 + 16) = v105 + 1;
    result = sub_1E5FAB460(v95, v49 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v105, &qword_1ED0720A8, &qword_1E65EA790);
    v47 = v172;
    if (v171 == v51)
    {

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1E640BB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v238 = a5;
  v257 = a4;
  LODWORD(v266) = a3;
  v250 = a2;
  v255 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v254 = &v219 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v251 = &v219 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v252 = &v219 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v253 = &v219 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v265 = &v219 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v264 = &v219 - v18;
  v19 = sub_1E65E03F8();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v263 = &v219 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v267 = &v219 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v274 = &v219 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v236 = &v219 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v233 = &v219 - v28;
  v234 = sub_1E65DAC98();
  v231 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234);
  v228 = &v219 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_1E65DB268();
  MEMORY[0x1EEE9AC00](v235);
  v229 = &v219 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_1E65DA0B8();
  v230 = *(v232 - 8);
  v31 = MEMORY[0x1EEE9AC00](v232);
  v227 = &v219 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v226 = &v219 - v33;
  v225 = sub_1E65D9D58();
  v224 = *(v225 - 8);
  v34 = MEMORY[0x1EEE9AC00](v225);
  v223 = &v219 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v222 = &v219 - v36;
  v239 = sub_1E65D8BB8();
  v37 = MEMORY[0x1EEE9AC00](v239);
  v240 = &v219 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v243 = &v219 - v39;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074530, &qword_1E65F0CA8);
  v40 = MEMORY[0x1EEE9AC00](v242);
  v241 = &v219 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v273 = (&v219 - v42);
  v256 = type metadata accessor for ActionButtonDescriptor.Kind(0);
  MEMORY[0x1EEE9AC00](v256);
  v220 = &v219 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E65DC758();
  MEMORY[0x1EEE9AC00](v44 - 8);
  v237 = &v219 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v47 = MEMORY[0x1EEE9AC00](v46 - 8);
  v244 = &v219 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v260 = &v219 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v221 = &v219 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v219 = &v219 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v272 = &v219 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v269 = &v219 - v57;
  v58 = sub_1E65D7348();
  MEMORY[0x1EEE9AC00](v58 - 8);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v60 = MEMORY[0x1EEE9AC00](v59 - 8);
  v258 = &v219 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v64 = &v219 - v63;
  v65 = MEMORY[0x1EEE9AC00](v62);
  v271 = &v219 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v270 = &v219 - v68;
  MEMORY[0x1EEE9AC00](v67);
  v275 = &v219 - v69;
  v262 = sub_1E65DC818();
  v70 = *(v262 - 8);
  MEMORY[0x1EEE9AC00](v262);
  v277 = &v219 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for ItemContext(0);
  v73 = MEMORY[0x1EEE9AC00](v72);
  v261 = &v219 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v219 - v75;
  v77 = sub_1E65DC508();
  v78 = *(v77 - 8);
  v79 = MEMORY[0x1EEE9AC00](v77);
  v81 = &v219 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v83 = &v219 - v82;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v268 = a1;
  sub_1E65E04E8();
  v248 = v72;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1E6428F80(v76, type metadata accessor for ItemContext);
LABEL_63:
    v279 = 0;
    v280 = 0xE000000000000000;
    sub_1E65E68A8();
    MEMORY[0x1E694D7C0](0xD00000000000003FLL, 0x80000001E6617030);
    v215 = v261;
    sub_1E65E04E8();
    sub_1E65E69B8();
    sub_1E6428F80(v215, type metadata accessor for ItemContext);
    result = sub_1E65E69D8();
    __break(1u);
    return result;
  }

  (*(v78 + 32))(v83, v76, v77);
  (*(v78 + 16))(v81, v83, v77);
  if ((*(v78 + 88))(v81, v77) != *MEMORY[0x1E699E0A0])
  {
    v214 = *(v78 + 8);
    v214(v83, v77);
    v214(v81, v77);
    goto LABEL_63;
  }

  v246 = v78;
  v84 = *(v78 + 96);
  v247 = v77;
  v84(v81, v77);
  (*(v70 + 32))(v277, v81, v262);
  v85 = *(sub_1E65D8248() + 16);

  v86 = v275;
  v87 = v238;
  v249 = v70;
  v245 = v83;
  if (v85)
  {
    v88 = sub_1E65D8248();
    sub_1E63C4134(v257, v87, v88, v86);

    v89 = 0;
  }

  else
  {
    v89 = 1;
  }

  v90 = sub_1E65D72D8();
  v91 = *(*(v90 - 8) + 56);
  v92 = 1;
  v91(v86, v89, 1, v90);
  v93 = *(sub_1E65D80A8() + 16);

  if (v93)
  {
    v94 = sub_1E65D80A8();
    v95 = v270;
    sub_1E63C4134(v257, v87, v94, v270);

    v92 = 0;
  }

  else
  {
    v95 = v270;
  }

  v91(v95, v92, 1, v90);
  sub_1E65DC808();
  if (v96)
  {
    sub_1E65D7338();
    v97 = v271;
    sub_1E65D72E8();
    v91(v97, 0, 1, v90);
  }

  else
  {
    v98 = *(sub_1E65D8068() + 16);

    if (v98)
    {
      v99 = sub_1E65D8068();
      sub_1E63C4134(v257, v87, v99, v64);

      v100 = 0;
    }

    else
    {
      v100 = 1;
    }

    v91(v64, v100, 1, v90);
    sub_1E5FAB460(v64, v271, &qword_1ED072D90, &qword_1E66040F0);
  }

  v101 = sub_1E65DAE38();
  v102 = sub_1E65DAE38();
  v103 = sub_1E65D80C8();
  v105 = v104;
  v279 = v103;
  v280 = v104;
  v107 = v106 & 1;
  v281 = v106 & 1;
  v278 = 8;
  sub_1E6018A94();
  sub_1E6018AE8();
  v108 = sub_1E65D7FE8();
  sub_1E5F87058(v103, v105, v107);
  if ((v108 & 1) == 0)
  {
    v122 = sub_1E65DC7A8();
    v112 = v269;
    if (v122 != 2)
    {
      v141 = sub_1E65DC848();
      v143 = v142;
      if (v141 == sub_1E65DC848() && v143 == v144)
      {
        goto LABEL_34;
      }

      v145 = sub_1E65E6C18();

      if (v145)
      {
        goto LABEL_35;
      }
    }

    if (sub_1E65DC7A8() == 2)
    {
      goto LABEL_23;
    }

    v146 = sub_1E65DC848();
    v148 = v147;
    if (v146 != sub_1E65DC848() || v148 != v149)
    {
      v213 = sub_1E65E6C18();

      if ((v213 & 1) == 0)
      {
LABEL_23:
        v123 = sub_1E65D80C8();
        v125 = v124;
        v279 = v123;
        v280 = v124;
        v127 = v126 & 1;
        v281 = v126 & 1;
        v278 = 1;
        v128 = sub_1E65D7FE8();
        sub_1E5F87058(v123, v125, v127);
        if ((v128 & 1) != 0 && v101 == v102)
        {
          v129 = type metadata accessor for ActionButtonDescriptor(0);
          v130 = v112 + *(v129 + 20);
          *v130 = sub_1E65D8078();
          *(v130 + 8) = v131;
          v132 = 1;
        }

        else
        {
          v154 = sub_1E65D80C8();
          v156 = v155;
          v279 = v154;
          v280 = v155;
          v158 = v157 & 1;
          v281 = v157 & 1;
          v278 = 4;
          v159 = sub_1E65D7FE8();
          sub_1E5F87058(v154, v156, v158);
          v160 = type metadata accessor for ActionButtonDescriptor(0);
          v129 = v160;
          if ((v159 & 1) == 0 || v101 != v102)
          {
            v162 = *(*(v160 - 8) + 56);
            v162(v112, 1, 1, v160);
            goto LABEL_43;
          }

          v130 = v112 + *(v160 + 20);
          *v130 = sub_1E65D8078();
          *(v130 + 8) = v161;
          v132 = 4;
        }

        *(v130 + 16) = v132;
LABEL_42:
        swift_storeEnumTagMultiPayload();
        sub_1E65D76E8();
        v162 = *(*(v129 - 8) + 56);
        v162(v112, 0, 1, v129);
LABEL_43:
        v162(v272, 1, 1, v129);
        goto LABEL_44;
      }

LABEL_35:
      v129 = type metadata accessor for ActionButtonDescriptor(0);
      v150 = v112 + *(v129 + 20);
      *v150 = 1;
      *(v150 + 8) = 0;
      *(v150 + 16) = 0;
      goto LABEL_42;
    }

LABEL_34:

    goto LABEL_35;
  }

  v109 = v237;
  sub_1E65DC7C8();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079618, &qword_1E6601748);
  v111 = (*(*(v110 - 8) + 48))(v109, 1, v110);
  v112 = v269;
  if (v111 != 1)
  {
    v133 = v109[*(v110 + 48)];
    v134 = type metadata accessor for ActionButtonDescriptor(0);
    v135 = v112 + *(v134 + 20);
    if (v133 == 1)
    {
      v136 = v101 != v102;
      *v135 = sub_1E65D8078();
      *(v135 + 8) = v137;
      *(v135 + 16) = 12;
      swift_storeEnumTagMultiPayload();
      sub_1E65D76E8();
      v138 = *(*(v134 - 8) + 56);
      v138(v112, 0, 1, v134);
      v139 = v220;
      *v220 = v136;
      v109 = v237;
      swift_storeEnumTagMultiPayload();
      v140 = v219;
      sub_1E65D76E8();
      sub_1E5E24EEC(v139, v140 + *(v134 + 20), type metadata accessor for ActionButtonDescriptor.Kind);
      v138(v140, 0, 1, v134);
      sub_1E5FAB460(v140, v272, &qword_1ED072638, &qword_1E65EB950);
    }

    else
    {
      *v135 = 0;
      swift_storeEnumTagMultiPayload();
      sub_1E65D76E8();
      v151 = *(*(v134 - 8) + 56);
      v151(v112, 0, 1, v134);
      v151(v272, 1, 1, v134);
    }

    v152 = v243;
    v153 = sub_1E65D76F8();
    (*(*(v153 - 8) + 8))(v109, v153);
    goto LABEL_45;
  }

  v113 = type metadata accessor for ActionButtonDescriptor(0);
  v114 = v112 + *(v113 + 20);
  *v114 = sub_1E65D8078();
  *(v114 + 8) = v115;
  *(v114 + 16) = 12;
  swift_storeEnumTagMultiPayload();
  sub_1E65D76E8();
  v116 = *(*(v113 - 8) + 56);
  v117 = 1;
  v116(v112, 0, 1, v113);
  v118 = v101 == v102;
  v119 = v221;
  if (v118)
  {
    v120 = &v221[*(v113 + 20)];
    *v120 = sub_1E65D8078();
    *(v120 + 1) = v121;
    v120[16] = 8;
    swift_storeEnumTagMultiPayload();
    sub_1E65D76E8();
    v117 = 0;
  }

  v116(v119, v117, 1, v113);
  sub_1E5FAB460(v119, v272, &qword_1ED072638, &qword_1E65EB950);
LABEL_44:
  v152 = v243;
LABEL_45:
  v163 = v240;
  sub_1E65D8128();
  sub_1E6429004(v152, v163, MEMORY[0x1E69CB950]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v164 = v230;
    v165 = v226;
    v166 = v232;
    (*(v230 + 32))(v226, v163, v232);
    v167 = v227;
    (*(v164 + 16))(v227, v165, v166);
    v168 = v228;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DB248();
    (*(v231 + 8))(v168, v234);
    sub_1E65DA0A8();
    sub_1E642906C(&qword_1EE2D6D80, MEMORY[0x1E699D120], MEMORY[0x1E699D118]);
    v169 = v241;
    sub_1E65DC438();
    v170 = *(v164 + 8);
    v170(v167, v166);
    v171 = v165;
    v112 = v269;
    v170(v171, v166);
  }

  else
  {
    v172 = v224;
    v173 = v222;
    v174 = v163;
    v175 = v225;
    (*(v224 + 32))(v222, v174, v225);
    v176 = v223;
    (*(v172 + 16))(v223, v173, v175);
    v169 = v241;
    sub_1E6134678(v176, v241);
    (*(v172 + 8))(v173, v175);
  }

  sub_1E6428F80(v152, MEMORY[0x1E69CB950]);
  swift_storeEnumTagMultiPayload();
  sub_1E5FAB460(v169, v273, &qword_1ED074530, &qword_1E65F0CA8);
  v177 = sub_1E65E04F8();
  v257 = sub_1E63B0584(v177);
  v178 = sub_1E65D81E8();
  if (v180 == -1)
  {
    v184 = 4;
  }

  else
  {
    v279 = v178;
    v280 = v179;
    v281 = v180 & 1;
    v181 = v178;
    v182 = v179;
    v183 = v180;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074538, &qword_1E65F0D18);
    sub_1E65D7FB8();
    sub_1E5F87158(v181, v182, v183);
    v184 = v278;
  }

  LODWORD(v256) = v184;
  sub_1E65D8158();
  sub_1E65D8178();
  v185 = v258;
  sub_1E5DFD1CC(v271, v258, &qword_1ED072D90, &qword_1E66040F0);
  v186 = v260;
  sub_1E5DFD1CC(v112, v260, &qword_1ED072638, &qword_1E65EB950);
  v187 = v244;
  sub_1E5DFD1CC(v272, v244, &qword_1ED072638, &qword_1E65EB950);
  v243 = sub_1E65D8088();
  v189 = v188;
  v242 = v188;
  v190 = sub_1E65D80C8();
  v192 = v191;
  v194 = v193;
  v195 = sub_1E65D81B8();
  v197 = v196;
  v198 = sub_1E65DC7A8();
  if (v198)
  {
    v199 = 2;
  }

  else
  {
    v199 = 1;
  }

  if (v198 == 2)
  {
    v200 = 7;
  }

  else
  {
    v200 = v199;
  }

  v201 = v194 & 1;
  v218 = v189;
  v217 = v186;
  v216 = v185;
  v203 = v264;
  v202 = v265;
  v204 = v263;
  sub_1E63A0574(v250, v273, v257, v256, v275, v264, v270, v265, v274, v216, v266, v217, v187, v243, v218, v190, v192, v201, v195, v197, v200);

  sub_1E5F87058(v190, v192, v201);

  sub_1E5DFE50C(v187, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v260, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v258, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5DFE50C(v202, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v203, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E6428F80(v204, MEMORY[0x1E699D780]);
  v205 = sub_1E65D80C8();
  v207 = v206;
  LOBYTE(v202) = v208;
  v209 = v251;
  sub_1E60E5944(v205, v206, v208 & 1, v251);
  v210 = sub_1E5F87058(v205, v207, v202 & 1);
  MEMORY[0x1EEE9AC00](v210);
  v211 = v253;
  sub_1E622B948(sub_1E6428FE0, v253);
  sub_1E5DFE50C(v209, &qword_1ED072330, &qword_1E65EAB70);
  sub_1E65E04E8();
  sub_1E5DFD1CC(v274, v267, &qword_1ED072610, &qword_1E65EB930);
  sub_1E62E2980(v254);
  sub_1E5DFD1CC(v211, v252, &qword_1ED072668, &qword_1E65EB978);
  v276 = type metadata accessor for ActionButtonDescriptor(0);
  v268 = type metadata accessor for ArtworkDescriptor(0);
  v266 = type metadata accessor for ContextMenu(0);
  v265 = type metadata accessor for ItemMetrics(0);
  v264 = type metadata accessor for ViewDescriptor(0);
  sub_1E642906C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  sub_1E642906C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E642906C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  sub_1E642906C(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E642906C(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E642906C(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E642906C(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E642906C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  sub_1E65E0488();
  sub_1E5DFE50C(v211, &qword_1ED072668, &qword_1E65EB978);
  sub_1E5DFE50C(v274, &qword_1ED072610, &qword_1E65EB930);
  sub_1E5DFE50C(v273, &qword_1ED074530, &qword_1E65F0CA8);
  sub_1E5DFE50C(v272, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v269, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v271, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5DFE50C(v270, &qword_1ED072D90, &qword_1E66040F0);
  (*(v246 + 8))(v245, v247);
  sub_1E5DFE50C(v275, &qword_1ED072D90, &qword_1E66040F0);
  return (*(v249 + 8))(v277, v262);
}

char *PersonalizationInferenceResponse.makeSectionDescriptors(environment:locale:configuration:bodyFocuses:themes:musicGenres:skillLevels:trainers:modalities:isPlanCreationSupported:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v257 = a8;
  v259 = a7;
  v260 = a6;
  v258 = a5;
  v245 = a3;
  v243 = a2;
  v244 = a10;
  v261 = a9;
  v276 = sub_1E65DA708();
  v274 = *(v276 - 1);
  MEMORY[0x1EEE9AC00](v276);
  v275 = &v243 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = sub_1E65D8B68();
  v251 = *(v263 - 8);
  MEMORY[0x1EEE9AC00](v263);
  v262 = &v243 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = sub_1E65D7F08();
  v252 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v264 = &v243 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_1E65D7B18();
  v253 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v269);
  v266 = &v243 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_1E65D7A68();
  v254 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271);
  v270 = (&v243 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v273 = sub_1E65D9D28();
  v255 = *(v273 - 8);
  MEMORY[0x1EEE9AC00](v273);
  v272 = &v243 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65DAEF8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v243 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  v22 = a4 + 56;
  v23 = 1 << *(a4 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a4 + 56);
  v26 = (v23 + 63) >> 6;
  v249 = v18 + 16;
  v250 = v18;
  v247 = (v18 + 8);
  v256 = a4;

  v27 = 0;
  v246 = a4 + 56;
  v248 = v17;
  while (v25)
  {
    v30 = v27;
LABEL_11:
    (v250[2])(v20, *(v256 + 48) + v250[9] * (__clz(__rbit64(v25)) | (v30 << 6)), v17);
    v31 = sub_1E65DAED8();
    v33 = v32;
    v267 = sub_1E65DAEE8();
    v268 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v277 = v21;
    v37 = sub_1E6215038(v31, v33);
    v38 = v21;
    v39 = v21[2];
    v40 = (v36 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_149;
    }

    v42 = v36;
    if (v38[3] >= v41)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E64237E4();
      }
    }

    else
    {
      sub_1E6419E3C(v41, isUniquelyReferenced_nonNull_native);
      v43 = sub_1E6215038(v31, v33);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_161;
      }

      v37 = v43;
    }

    v25 &= v25 - 1;
    if (v42)
    {

      v21 = v277;
      v28 = (v277[7] + 16 * v37);
      v29 = v268;
      *v28 = v267;
      v28[1] = v29;

      v17 = v248;
      (*v247)(v20, v248);
    }

    else
    {
      v21 = v277;
      v277[(v37 >> 6) + 8] |= 1 << v37;
      v45 = (v21[6] + 16 * v37);
      *v45 = v31;
      v45[1] = v33;
      v46 = (v21[7] + 16 * v37);
      v47 = v268;
      *v46 = v267;
      v46[1] = v47;
      v17 = v248;
      (*v247)(v20, v248);
      v48 = v21[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_154;
      }

      v21[2] = v50;
    }

    v27 = v30;
    v22 = v246;
  }

  while (1)
  {
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
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
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    if (v30 >= v26)
    {
      break;
    }

    v25 = *(v22 + 8 * v30);
    ++v27;
    if (v25)
    {
      goto LABEL_11;
    }
  }

  v250 = v21;

  v249 = sub_1E65D82A8();
  v51 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  v52 = v261 + 56;
  v53 = 1 << *(v261 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(v261 + 56);
  v56 = (v53 + 63) >> 6;
  v267 = (v255 + 8);
  v268 = v255 + 16;

  v57 = 0;
  v256 = v52;
  while (v55)
  {
    v60 = v57;
LABEL_30:
    (*(v255 + 16))(v272, *(v261 + 48) + *(v255 + 72) * (__clz(__rbit64(v55)) | (v60 << 6)), v273);
    v61 = sub_1E65D9CD8();
    v63 = v62;
    v64 = sub_1E65D9D18();
    v66 = v65;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v277 = v51;
    v68 = sub_1E6215038(v61, v63);
    v70 = v51;
    v71 = v51[2];
    v72 = (v69 & 1) == 0;
    v49 = __OFADD__(v71, v72);
    v73 = v71 + v72;
    if (v49)
    {
      goto LABEL_150;
    }

    v74 = v69;
    if (v70[3] >= v73)
    {
      if ((v67 & 1) == 0)
      {
        v80 = v68;
        sub_1E64237E4();
        v68 = v80;
      }
    }

    else
    {
      sub_1E6419E3C(v73, v67);
      v68 = sub_1E6215038(v61, v63);
      if ((v74 & 1) != (v75 & 1))
      {
        goto LABEL_161;
      }
    }

    v55 &= v55 - 1;
    if (v74)
    {
      v58 = v68;

      v51 = v277;
      v59 = (v277[7] + 16 * v58);
      *v59 = v64;
      v59[1] = v66;

      (*v267)(v272, v273);
    }

    else
    {
      v51 = v277;
      v277[(v68 >> 6) + 8] |= 1 << v68;
      v76 = (v51[6] + 16 * v68);
      *v76 = v61;
      v76[1] = v63;
      v77 = (v51[7] + 16 * v68);
      *v77 = v64;
      v77[1] = v66;
      (*v267)(v272, v273);
      v78 = v51[2];
      v49 = __OFADD__(v78, 1);
      v79 = v78 + 1;
      if (v49)
      {
        goto LABEL_155;
      }

      v51[2] = v79;
    }

    v57 = v60;
    v52 = v256;
  }

  while (1)
  {
    v60 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      goto LABEL_141;
    }

    if (v60 >= v56)
    {
      break;
    }

    v55 = *(v52 + 8 * v60);
    ++v57;
    if (v55)
    {
      goto LABEL_30;
    }
  }

  v256 = v51;

  v268 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  v81 = v260 + 56;
  v82 = 1 << *(v260 + 32);
  v83 = -1;
  if (v82 < 64)
  {
    v83 = ~(-1 << v82);
  }

  v84 = v83 & *(v260 + 56);
  v85 = (v82 + 63) >> 6;
  v272 = (v254 + 16);
  v267 = (v254 + 8);

  v86 = 0;
  if (v84)
  {
    goto LABEL_44;
  }

  while (1)
  {
LABEL_45:
    v90 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      goto LABEL_142;
    }

    if (v90 >= v85)
    {
      break;
    }

    v84 = *(v81 + 8 * v90);
    ++v86;
    if (v84)
    {
      while (1)
      {
        (*(v254 + 16))(v270, *(v260 + 48) + *(v254 + 72) * (__clz(__rbit64(v84)) | (v90 << 6)), v271);
        v91 = sub_1E65D7A48();
        v93 = v92;
        v94 = sub_1E65D7A58();
        v273 = v95;
        v96 = v268;
        v97 = swift_isUniquelyReferenced_nonNull_native();
        v277 = v96;
        v98 = sub_1E6215038(v91, v93);
        v100 = *(v96 + 16);
        v101 = (v99 & 1) == 0;
        v49 = __OFADD__(v100, v101);
        v102 = v100 + v101;
        if (v49)
        {
          goto LABEL_151;
        }

        v103 = v99;
        if (*(v96 + 24) >= v102)
        {
          if ((v97 & 1) == 0)
          {
            v111 = v98;
            sub_1E64237E4();
            v98 = v111;
          }
        }

        else
        {
          sub_1E6419E3C(v102, v97);
          v98 = sub_1E6215038(v91, v93);
          if ((v103 & 1) != (v104 & 1))
          {
            goto LABEL_161;
          }
        }

        v84 &= v84 - 1;
        if (v103)
        {
          v87 = v98;

          v268 = v277;
          v88 = (v277[7] + 16 * v87);
          v89 = v273;
          *v88 = v94;
          v88[1] = v89;

          (*v267)(v270, v271);
          v86 = v90;
          if (!v84)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v105 = v277;
          v277[(v98 >> 6) + 8] |= 1 << v98;
          v106 = (v105[6] + 16 * v98);
          *v106 = v91;
          v106[1] = v93;
          v107 = (v105[7] + 16 * v98);
          v108 = v273;
          *v107 = v94;
          v107[1] = v108;
          (*v267)(v270, v271);
          v109 = v105[2];
          v49 = __OFADD__(v109, 1);
          v110 = v109 + 1;
          if (v49)
          {
            goto LABEL_156;
          }

          v268 = v105;
          v105[2] = v110;
          v86 = v90;
          if (!v84)
          {
            goto LABEL_45;
          }
        }

LABEL_44:
        v90 = v86;
      }
    }
  }

  v267 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  v112 = v259 + 56;
  v113 = 1 << *(v259 + 32);
  v114 = -1;
  if (v113 < 64)
  {
    v114 = ~(-1 << v113);
  }

  v115 = v114 & *(v259 + 56);
  v116 = (v113 + 63) >> 6;
  v271 = v253 + 8;
  v272 = (v253 + 16);

  v117 = 0;
  if (v115)
  {
    goto LABEL_63;
  }

  while (1)
  {
LABEL_64:
    v121 = v117 + 1;
    if (__OFADD__(v117, 1))
    {
      goto LABEL_143;
    }

    if (v121 >= v116)
    {
      break;
    }

    v115 = *(v112 + 8 * v121);
    ++v117;
    if (v115)
    {
      while (1)
      {
        (*(v253 + 16))(v266, *(v259 + 48) + *(v253 + 72) * (__clz(__rbit64(v115)) | (v121 << 6)), v269);
        v122 = sub_1E65D7AE8();
        v124 = v123;
        v125 = sub_1E65D7B08();
        v273 = v126;
        v127 = v267;
        v128 = swift_isUniquelyReferenced_nonNull_native();
        v277 = v127;
        v129 = sub_1E6215038(v122, v124);
        v131 = v127[2];
        v132 = (v130 & 1) == 0;
        v49 = __OFADD__(v131, v132);
        v133 = v131 + v132;
        if (v49)
        {
          goto LABEL_152;
        }

        v134 = v130;
        if (v127[3] >= v133)
        {
          if ((v128 & 1) == 0)
          {
            v142 = v129;
            sub_1E64237E4();
            v129 = v142;
          }
        }

        else
        {
          sub_1E6419E3C(v133, v128);
          v129 = sub_1E6215038(v122, v124);
          if ((v134 & 1) != (v135 & 1))
          {
            goto LABEL_161;
          }
        }

        v115 &= v115 - 1;
        if (v134)
        {
          v118 = v129;

          v267 = v277;
          v119 = (v277[7] + 16 * v118);
          v120 = v273;
          *v119 = v125;
          v119[1] = v120;

          (*v271)(v266, v269);
          v117 = v121;
          if (!v115)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v136 = v277;
          v277[(v129 >> 6) + 8] |= 1 << v129;
          v137 = (v136[6] + 16 * v129);
          *v137 = v122;
          v137[1] = v124;
          v138 = (v136[7] + 16 * v129);
          v139 = v273;
          *v138 = v125;
          v138[1] = v139;
          (*v271)(v266, v269);
          v140 = v136[2];
          v49 = __OFADD__(v140, 1);
          v141 = v140 + 1;
          if (v49)
          {
            goto LABEL_157;
          }

          v267 = v136;
          v136[2] = v141;
          v117 = v121;
          if (!v115)
          {
            goto LABEL_64;
          }
        }

LABEL_63:
        v121 = v117;
      }
    }
  }

  v143 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  v144 = v258 + 56;
  v145 = 1 << *(v258 + 32);
  v146 = -1;
  if (v145 < 64)
  {
    v146 = ~(-1 << v145);
  }

  v147 = v146 & *(v258 + 56);
  v148 = (v145 + 63) >> 6;
  v271 = v252 + 8;
  v272 = (v252 + 16);

  v149 = 0;
  if (v147)
  {
    goto LABEL_82;
  }

LABEL_83:
  while (2)
  {
    v153 = v149 + 1;
    if (__OFADD__(v149, 1))
    {
      goto LABEL_144;
    }

    if (v153 >= v148)
    {
      v265 = v143;

      v174 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
      v175 = v257 + 56;
      v176 = 1 << *(v257 + 32);
      v177 = -1;
      if (v176 < 64)
      {
        v177 = ~(-1 << v176);
      }

      v178 = v177 & *(v257 + 56);
      v179 = (v176 + 63) >> 6;
      v180 = (v251 + 8);

      v181 = 0;
      while (2)
      {
        while (2)
        {
          v266 = v174;
          v182 = v181;
          if (!v178)
          {
            goto LABEL_101;
          }

          while (1)
          {
            v181 = v182;
LABEL_104:
            v183 = __clz(__rbit64(v178));
            v178 &= v178 - 1;
            (*(v251 + 16))(v262, *(v257 + 48) + *(v251 + 72) * (v183 | (v181 << 6)), v263);
            v184 = sub_1E65D8B28();
            v186 = v185;
            v187 = sub_1E65D8B38();
            if (v188)
            {
              break;
            }

            v174 = v266;
            v189 = sub_1E6215038(v184, v186);
            v191 = v190;

            if (v191)
            {
              v200 = swift_isUniquelyReferenced_nonNull_native();
              v277 = v174;
              if (!v200)
              {
                sub_1E64237E4();
                v174 = v277;
              }

              sub_1E641EF5C(v189, v174);
              goto LABEL_118;
            }

            (*v180)(v262, v263);
            v182 = v181;
            if (!v178)
            {
              while (1)
              {
LABEL_101:
                v181 = v182 + 1;
                if (__OFADD__(v182, 1))
                {
                  goto LABEL_145;
                }

                if (v181 >= v179)
                {
                  break;
                }

                v178 = *(v175 + 8 * v181);
                ++v182;
                if (v178)
                {
                  goto LABEL_104;
                }
              }

              v210 = sub_1E65DA8E8();
              v273 = *(v210 + 16);
              if (!v273)
              {
                v212 = MEMORY[0x1E69E7CC8];
LABEL_139:

                v233 = sub_1E65DA918();
                v276 = &v243;
                MEMORY[0x1EEE9AC00](v233);
                v234 = v261;
                *(&v243 - 12) = v245;
                *(&v243 - 11) = v234;
                v235 = v243;
                *(&v243 - 10) = v250;
                *(&v243 - 9) = v235;
                v237 = v267;
                v236 = v268;
                *(&v243 - 8) = v256;
                *(&v243 - 7) = v236;
                v239 = v265;
                v238 = v266;
                *(&v243 - 6) = v237;
                *(&v243 - 5) = v239;
                v240 = v249;
                *(&v243 - 4) = v238;
                *(&v243 - 3) = v240;
                *(&v243 - 16) = v244 & 1;
                *(&v243 - 1) = v212;
                v241 = sub_1E64032DC(sub_1E64275AC, (&v243 - 14), v233);

                return v241;
              }

              v211 = 0;
              v272 = (v210 + ((*(v274 + 80) + 32) & ~*(v274 + 80)));
              v270 = (v274 + 8);
              v271 = v274 + 16;
              v212 = MEMORY[0x1E69E7CC8];
              v269 = v210;
              while (2)
              {
                if (v211 >= *(v210 + 16))
                {
                  goto LABEL_146;
                }

                (*(v274 + 16))(v275, &v272[*(v274 + 72) * v211], v276);
                v214 = sub_1E65DA6E8();
                v216 = v215;
                v217 = sub_1E65DA6F8();
                v219 = v218;
                v220 = swift_isUniquelyReferenced_nonNull_native();
                v277 = v212;
                v222 = sub_1E6215038(v214, v216);
                v223 = v212[2];
                v224 = (v221 & 1) == 0;
                v225 = v223 + v224;
                if (__OFADD__(v223, v224))
                {
                  goto LABEL_147;
                }

                v226 = v221;
                if (v212[3] >= v225)
                {
                  if (v220)
                  {
                    if ((v221 & 1) == 0)
                    {
                      goto LABEL_134;
                    }
                  }

                  else
                  {
                    sub_1E64237E4();
                    if ((v226 & 1) == 0)
                    {
                      goto LABEL_134;
                    }
                  }
                }

                else
                {
                  sub_1E6419E3C(v225, v220);
                  v227 = sub_1E6215038(v214, v216);
                  if ((v226 & 1) != (v228 & 1))
                  {
                    goto LABEL_161;
                  }

                  v222 = v227;
                  if ((v226 & 1) == 0)
                  {
LABEL_134:
                    v212 = v277;
                    v277[(v222 >> 6) + 8] |= 1 << v222;
                    v229 = (v212[6] + 16 * v222);
                    *v229 = v214;
                    v229[1] = v216;
                    v230 = (v212[7] + 16 * v222);
                    *v230 = v217;
                    v230[1] = v219;
                    (*v270)(v275, v276);
                    v231 = v212[2];
                    v49 = __OFADD__(v231, 1);
                    v232 = v231 + 1;
                    if (v49)
                    {
                      goto LABEL_148;
                    }

                    v212[2] = v232;
                    goto LABEL_125;
                  }
                }

                v212 = v277;
                v213 = (v277[7] + 16 * v222);
                *v213 = v217;
                v213[1] = v219;

                (*v270)(v275, v276);
LABEL_125:
                ++v211;
                v210 = v269;
                if (v273 == v211)
                {
                  goto LABEL_139;
                }

                continue;
              }
            }
          }

          v272 = v187;
          v273 = v188;
          v192 = v266;
          v193 = swift_isUniquelyReferenced_nonNull_native();
          v277 = v192;
          v194 = sub_1E6215038(v184, v186);
          v196 = *(v192 + 2);
          v197 = (v195 & 1) == 0;
          v49 = __OFADD__(v196, v197);
          v198 = v196 + v197;
          if (v49)
          {
            goto LABEL_159;
          }

          if (*(v192 + 3) >= v198)
          {
            if ((v193 & 1) == 0)
            {
              v271 = v194;
              v204 = v195;
              sub_1E64237E4();
              v194 = v271;
              if (v204)
              {
LABEL_117:
                v201 = v194;

                v174 = v277;
                v202 = (v277[7] + 16 * v201);
                v203 = v273;
                *v202 = v272;
                v202[1] = v203;

LABEL_118:
                (*v180)(v262, v263);
                continue;
              }

              goto LABEL_120;
            }
          }

          else
          {
            LODWORD(v271) = v195;
            sub_1E6419E3C(v198, v193);
            v194 = sub_1E6215038(v184, v186);
            v199 = v195 & 1;
            LOBYTE(v195) = v271;
            if ((v271 & 1) != v199)
            {
              goto LABEL_161;
            }
          }

          break;
        }

        if (v195)
        {
          goto LABEL_117;
        }

LABEL_120:
        v174 = v277;
        v277[(v194 >> 6) + 8] |= 1 << v194;
        v205 = (*(v174 + 6) + 16 * v194);
        *v205 = v184;
        v205[1] = v186;
        v206 = (*(v174 + 7) + 16 * v194);
        v207 = v273;
        *v206 = v272;
        v206[1] = v207;
        (*v180)(v262, v263);
        v208 = *(v174 + 2);
        v49 = __OFADD__(v208, 1);
        v209 = v208 + 1;
        if (v49)
        {
          goto LABEL_160;
        }

        *(v174 + 2) = v209;
        continue;
      }
    }

    v147 = *(v144 + 8 * v153);
    ++v149;
    if (!v147)
    {
      continue;
    }

    break;
  }

  while (1)
  {
    (*(v252 + 16))(v264, *(v258 + 48) + *(v252 + 72) * (__clz(__rbit64(v147)) | (v153 << 6)), v265);
    v154 = sub_1E65D7ED8();
    v156 = v155;
    v157 = sub_1E65D7EE8();
    v273 = v158;
    v159 = v143;
    v160 = swift_isUniquelyReferenced_nonNull_native();
    v277 = v159;
    v161 = sub_1E6215038(v154, v156);
    v163 = v159[2];
    v164 = (v162 & 1) == 0;
    v49 = __OFADD__(v163, v164);
    v165 = v163 + v164;
    if (v49)
    {
      break;
    }

    v166 = v162;
    if (v159[3] >= v165)
    {
      if ((v160 & 1) == 0)
      {
        v173 = v161;
        sub_1E64237E4();
        v161 = v173;
      }
    }

    else
    {
      sub_1E6419E3C(v165, v160);
      v161 = sub_1E6215038(v154, v156);
      if ((v166 & 1) != (v167 & 1))
      {
        goto LABEL_161;
      }
    }

    v147 &= v147 - 1;
    if (v166)
    {
      v150 = v161;

      v143 = v277;
      v151 = (v277[7] + 16 * v150);
      v152 = v273;
      *v151 = v157;
      v151[1] = v152;

      (*v271)(v264, v265);
      v149 = v153;
      if (!v147)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v143 = v277;
      v277[(v161 >> 6) + 8] |= 1 << v161;
      v168 = (v143[6] + 16 * v161);
      *v168 = v154;
      v168[1] = v156;
      v169 = (v143[7] + 16 * v161);
      v170 = v273;
      *v169 = v157;
      v169[1] = v170;
      (*v271)(v264, v265);
      v171 = v143[2];
      v49 = __OFADD__(v171, 1);
      v172 = v171 + 1;
      if (v49)
      {
        goto LABEL_158;
      }

      v143[2] = v172;
      v149 = v153;
      if (!v147)
      {
        goto LABEL_83;
      }
    }

LABEL_82:
    v153 = v149;
  }

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
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  result = sub_1E65E6C68();
  __break(1u);
  return result;
}

void *sub_1E640F12C(uint64_t a1)
{
  v105 = sub_1E65DBE68();
  v2 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1E65DC898();
  v4 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65DBF98();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1E65DC988();
  MEMORY[0x1EEE9AC00](v90);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 64);
  v74 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v73 = (v15 + 63) >> 6;
  v88 = v8 + 16;
  v101 = v2 + 16;
  v83 = v2;
  v17 = (v2 + 8);
  v18 = v16 & v14;
  v102 = v4;
  v99 = v4 + 32;
  v100 = v17;
  v91 = v8;
  v87 = (v8 + 8);
  v89 = v11;
  v86 = v11 + 32;
  v72 = a1;

  v19 = 0;
  v77 = MEMORY[0x1E69E7CC8];
  while (v18)
  {
    v23 = v19;
LABEL_11:
    v24 = __clz(__rbit64(v18)) | (v23 << 6);
    v25 = *(v72 + 56);
    v26 = (*(v72 + 48) + 16 * v24);
    v27 = v26[1];
    v78 = *v26;
    v28 = *(v25 + 8 * v24);
    v76 = v18;
    v75 = v23;
    if (v28)
    {
      if (v28 == 1)
      {

        v29 = 1;
      }

      else
      {
        v30 = *(v28 + 16);
        if (v30)
        {
          v71 = v27;

          sub_1E5E06368(v28);
          v108 = MEMORY[0x1E69E7CC0];
          sub_1E601BF64(0, v30, 0);
          v31 = 0;
          v32 = v108;
          v84 = v28 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
          v82 = v7;
          v81 = v10;
          v80 = v13;
          v79 = v28;
          v85 = v30;
          while (v31 < *(v28 + 16))
          {
            v33 = *(v91 + 72);
            v98 = v31;
            (*(v91 + 16))(v10, v84 + v33 * v31, v7);
            v34 = sub_1E65DBF68();
            v97 = v35;
            v36 = sub_1E65DBF78();
            v95 = v37;
            v96 = v36;
            v38 = sub_1E65DBF88();
            v39 = *(v38 + 16);
            if (v39)
            {
              v93 = v34;
              v94 = v32;
              v107 = MEMORY[0x1E69E7CC0];
              v40 = v38;
              sub_1E601BFEC(0, v39, 0);
              v41 = v107;
              v42 = *(v83 + 80);
              v92 = v40;
              v43 = v40 + ((v42 + 32) & ~v42);
              v106 = *(v83 + 72);
              v44 = *(v83 + 16);
              do
              {
                v45 = v104;
                v46 = v105;
                v44(v104, v43, v105);
                sub_1E65DBE48();
                sub_1E65DBE38();
                sub_1E65DBE58();
                sub_1E65DC858();
                (*v100)(v45, v46);
                v107 = v41;
                v48 = *(v41 + 16);
                v47 = *(v41 + 24);
                if (v48 >= v47 >> 1)
                {
                  sub_1E601BFEC((v47 > 1), v48 + 1, 1);
                  v41 = v107;
                }

                *(v41 + 16) = v48 + 1;
                (*(v102 + 32))(v41 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v48, v6, v103);
                v43 += v106;
                --v39;
              }

              while (v39);

              v7 = v82;
              v10 = v81;
              v13 = v80;
              v28 = v79;
              v32 = v94;
            }

            else
            {
            }

            sub_1E65DC948();
            (*v87)(v10, v7);
            v108 = v32;
            v50 = *(v32 + 16);
            v49 = *(v32 + 24);
            v51 = v98;
            if (v50 >= v49 >> 1)
            {
              sub_1E601BF64((v49 > 1), v50 + 1, 1);
              v32 = v108;
            }

            v31 = v51 + 1;
            *(v32 + 16) = v50 + 1;
            (*(v89 + 32))(v32 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v50, v13, v90);
            if (v31 == v85)
            {
              v29 = v32;
              v27 = v71;
              goto LABEL_30;
            }
          }

          goto LABEL_41;
        }

        sub_1E5E06368(v28);
        v29 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {

      v29 = 0;
    }

LABEL_30:

    v52 = v77;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = v52;
    v54 = v27;
    v55 = sub_1E6215038(v78, v27);
    v57 = v52[2];
    v58 = (v56 & 1) == 0;
    v59 = __OFADD__(v57, v58);
    v60 = v57 + v58;
    if (v59)
    {
      goto LABEL_42;
    }

    v61 = v56;
    if (v52[3] >= v60)
    {
      v63 = v76;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v68 = v55;
        sub_1E642395C(&qword_1ED079628, &qword_1E6601758, sub_1E64290E8);
        v63 = v76;
        v55 = v68;
      }
    }

    else
    {
      sub_1E641A0FC(v60, isUniquelyReferenced_nonNull_native, &qword_1ED079628, &qword_1E6601758, sub_1E64290E8);
      v55 = sub_1E6215038(v78, v54);
      if ((v61 & 1) != (v62 & 1))
      {
        goto LABEL_44;
      }

      v63 = v76;
    }

    v18 = (v63 - 1) & v63;
    if (v61)
    {
      v20 = v55;

      v77 = v108;
      v21 = v108[7];
      v22 = *(v21 + 8 * v20);
      *(v21 + 8 * v20) = v29;
      sub_1E5F87148(v22);

      sub_1E5F87148(v28);
    }

    else
    {
      v64 = v108;
      v108[(v55 >> 6) + 8] |= 1 << v55;
      v65 = (v64[6] + 16 * v55);
      *v65 = v78;
      v65[1] = v54;
      *(v64[7] + 8 * v55) = v29;

      sub_1E5F87148(v28);
      v66 = v64[2];
      v59 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (v59)
      {
        goto LABEL_43;
      }

      v77 = v64;
      v64[2] = v67;
    }

    v19 = v75;
  }

  while (1)
  {
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v23 >= v73)
    {

      return v77;
    }

    v18 = *(v74 + 8 * v23);
    ++v19;
    if (v18)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_1E65E6C68();
  __break(1u);
  return result;
}

void *sub_1E640F9F8(uint64_t a1)
{
  v105 = sub_1E65DC898();
  v2 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1E65DBE68();
  v4 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65DC988();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1E65DBF98();
  MEMORY[0x1EEE9AC00](v90);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 64);
  v74 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v73 = (v15 + 63) >> 6;
  v88 = v8 + 16;
  v101 = v2 + 16;
  v83 = v2;
  v17 = (v2 + 8);
  v18 = v16 & v14;
  v102 = v4;
  v99 = v4 + 32;
  v100 = v17;
  v91 = v8;
  v87 = (v8 + 8);
  v89 = v11;
  v86 = v11 + 32;
  v72 = a1;

  v19 = 0;
  v77 = MEMORY[0x1E69E7CC8];
  while (v18)
  {
    v23 = v19;
LABEL_11:
    v24 = __clz(__rbit64(v18)) | (v23 << 6);
    v25 = *(v72 + 56);
    v26 = (*(v72 + 48) + 16 * v24);
    v27 = v26[1];
    v78 = *v26;
    v28 = *(v25 + 8 * v24);
    v76 = v18;
    v75 = v23;
    if (v28)
    {
      if (v28 == 1)
      {

        v29 = 1;
      }

      else
      {
        v30 = *(v28 + 16);
        if (v30)
        {
          v71 = v27;

          sub_1E5E06368(v28);
          v108 = MEMORY[0x1E69E7CC0];
          sub_1E601C030(0, v30, 0);
          v31 = 0;
          v32 = v108;
          v84 = v28 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
          v82 = v7;
          v81 = v10;
          v80 = v13;
          v79 = v28;
          v85 = v30;
          while (v31 < *(v28 + 16))
          {
            v33 = *(v91 + 72);
            v98 = v31;
            (*(v91 + 16))(v10, v84 + v33 * v31, v7);
            v34 = sub_1E65DC958();
            v97 = v35;
            v36 = sub_1E65DC968();
            v95 = v37;
            v96 = v36;
            v38 = sub_1E65DC978();
            v39 = *(v38 + 16);
            if (v39)
            {
              v93 = v34;
              v94 = v32;
              v107 = MEMORY[0x1E69E7CC0];
              v40 = v38;
              sub_1E601C074(0, v39, 0);
              v41 = v107;
              v42 = *(v83 + 80);
              v92 = v40;
              v43 = v40 + ((v42 + 32) & ~v42);
              v106 = *(v83 + 72);
              v44 = *(v83 + 16);
              do
              {
                v45 = v104;
                v46 = v105;
                v44(v104, v43, v105);
                sub_1E65DC878();
                sub_1E65DC868();
                sub_1E65DC888();
                sub_1E65DBE28();
                (*v100)(v45, v46);
                v107 = v41;
                v48 = *(v41 + 16);
                v47 = *(v41 + 24);
                if (v48 >= v47 >> 1)
                {
                  sub_1E601C074((v47 > 1), v48 + 1, 1);
                  v41 = v107;
                }

                *(v41 + 16) = v48 + 1;
                (*(v102 + 32))(v41 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v48, v6, v103);
                v43 += v106;
                --v39;
              }

              while (v39);

              v7 = v82;
              v10 = v81;
              v13 = v80;
              v28 = v79;
              v32 = v94;
            }

            else
            {
            }

            sub_1E65DBF58();
            (*v87)(v10, v7);
            v108 = v32;
            v50 = *(v32 + 16);
            v49 = *(v32 + 24);
            v51 = v98;
            if (v50 >= v49 >> 1)
            {
              sub_1E601C030((v49 > 1), v50 + 1, 1);
              v32 = v108;
            }

            v31 = v51 + 1;
            *(v32 + 16) = v50 + 1;
            (*(v89 + 32))(v32 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v50, v13, v90);
            if (v31 == v85)
            {
              v29 = v32;
              v27 = v71;
              goto LABEL_30;
            }
          }

          goto LABEL_41;
        }

        sub_1E5E06368(v28);
        v29 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {

      v29 = 0;
    }

LABEL_30:

    v52 = v77;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = v52;
    v54 = v27;
    v55 = sub_1E6215038(v78, v27);
    v57 = v52[2];
    v58 = (v56 & 1) == 0;
    v59 = __OFADD__(v57, v58);
    v60 = v57 + v58;
    if (v59)
    {
      goto LABEL_42;
    }

    v61 = v56;
    if (v52[3] >= v60)
    {
      v63 = v76;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v68 = v55;
        sub_1E642395C(&qword_1ED0794D0, &qword_1E6601618, sub_1E5E06368);
        v63 = v76;
        v55 = v68;
      }
    }

    else
    {
      sub_1E641A0FC(v60, isUniquelyReferenced_nonNull_native, &qword_1ED0794D0, &qword_1E6601618, sub_1E5E06368);
      v55 = sub_1E6215038(v78, v54);
      if ((v61 & 1) != (v62 & 1))
      {
        goto LABEL_44;
      }

      v63 = v76;
    }

    v18 = (v63 - 1) & v63;
    if (v61)
    {
      v20 = v55;

      v77 = v108;
      v21 = v108[7];
      v22 = *(v21 + 8 * v20);
      *(v21 + 8 * v20) = v29;
      sub_1E5F87148(v22);

      sub_1E5F87148(v28);
    }

    else
    {
      v64 = v108;
      v108[(v55 >> 6) + 8] |= 1 << v55;
      v65 = (v64[6] + 16 * v55);
      *v65 = v78;
      v65[1] = v54;
      *(v64[7] + 8 * v55) = v29;

      sub_1E5F87148(v28);
      v66 = v64[2];
      v59 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (v59)
      {
        goto LABEL_43;
      }

      v77 = v64;
      v64[2] = v67;
    }

    v19 = v75;
  }

  while (1)
  {
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v23 >= v73)
    {

      return v77;
    }

    v18 = *(v74 + 8 * v23);
    ++v19;
    if (v18)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_1E65E6C68();
  __break(1u);
  return result;
}

uint64_t sub_1E641031C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, char *a4@<X8>)
{
  v5 = v4;
  v33 = a1;
  v29 = a4;
  v39 = a3(0);
  v7 = MEMORY[0x1EEE9AC00](v39);
  v38 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v29 - v10;
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v34 = v9 + 32;
  v35 = v9;
  v30 = (v9 + 8);
  v31 = v9 + 16;
  v36 = a2;

  v17 = 0;
  v18 = v32;
  if (v14)
  {
    while (1)
    {
      v37 = v5;
      v19 = v17;
LABEL_9:
      v20 = v35;
      v21 = v39;
      (*(v35 + 16))(v18, *(v36 + 48) + *(v35 + 72) * (__clz(__rbit64(v14)) | (v19 << 6)), v39);
      v22 = *(v20 + 32);
      v23 = v38;
      v22(v38, v18, v21);
      v24 = v37;
      v25 = v33(v23);
      v5 = v24;
      if (v24)
      {
        (*v30)(v38, v39);
      }

      if (v25)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v30)(v38, v39);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v28 = v29;
    v22(v29, v38, v39);
    v27 = v28;
    v26 = 0;
    return (*(v35 + 56))(v27, v26, 1, v39);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        v26 = 1;
        v27 = v29;
        return (*(v35 + 56))(v27, v26, 1, v39);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v37 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E64105E0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = sub_1E65E2CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

uint64_t sub_1E64107B4@<X0>(uint64_t a1@<X0>, unsigned int a2@<W2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v172 = a4;
  v171 = a3;
  v157 = a2;
  v170 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0794E0, &qword_1E6601628);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v169 = &v140 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BB0, &qword_1E65F7908);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v168 = &v140 - v9;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075930, &qword_1E65F2258);
  v165 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v164 = &v140 - v10;
  v11 = sub_1E65D7268();
  v179 = *(v11 - 8);
  v180 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v178 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v156 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0794E8, &qword_1E6601630);
  v15 = MEMORY[0x1EEE9AC00](v163);
  v187 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v188 = &v140 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v153 = &v140 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v151 = &v140 - v21;
  v152 = sub_1E65DAC98();
  v150 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v147 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_1E65DB268();
  v161 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v176 = &v140 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1E65DA0B8();
  v148 = *(v149 - 8);
  v24 = MEMORY[0x1EEE9AC00](v149);
  v146 = &v140 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v145 = &v140 - v26;
  v144 = sub_1E65D9D58();
  v143 = *(v144 - 8);
  v27 = MEMORY[0x1EEE9AC00](v144);
  v142 = &v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v141 = &v140 - v29;
  v154 = sub_1E65D8BB8();
  v30 = MEMORY[0x1EEE9AC00](v154);
  v32 = &v140 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v181 = (&v140 - v33);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074530, &qword_1E65F0CA8);
  v34 = MEMORY[0x1EEE9AC00](v183);
  v155 = &v140 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v193 = &v140 - v36;
  v175 = sub_1E65D7348();
  MEMORY[0x1EEE9AC00](v175);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v182 = &v140 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v174 = &v140 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v173 = &v140 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v140 = &v140 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v192 = &v140 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v191 = &v140 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v140 - v50;
  v52 = sub_1E65DC508();
  v53 = *(v52 - 8);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v185 = &v140 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v140 - v56;
  v58 = sub_1E65DC818();
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v140 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CD0, &qword_1E65F3528);
  v167 = a1;
  sub_1E65E04E8();
  if ((*(v53 + 88))(v57, v52) == *MEMORY[0x1E699E0A0])
  {
    v62 = *(v53 + 96);
    v162 = v52;
    v62(v57, v52);
    v63 = *(v59 + 32);
    v184 = v61;
    v63(v61, v57, v58);
    v64 = *(sub_1E65D8248() + 16);

    v160 = v58;
    v159 = v59;
    if (v64)
    {
      v65 = sub_1E65D8248();
      sub_1E63C4134(v171, v172, v65, v51);

      v66 = 0;
    }

    else
    {
      v66 = 1;
    }

    v67 = sub_1E65D72D8();
    v190 = *(v67 - 8);
    v68 = *(v190 + 56);
    v69 = 1;
    v186 = v51;
    v194 = v190 + 56;
    v68(v51, v66, 1, v67);
    v70 = *(sub_1E65D80A8() + 16);

    if (v70)
    {
      v71 = sub_1E65D80A8();
      v72 = v191;
      sub_1E63C4134(v171, v172, v71, v191);

      v69 = 0;
    }

    else
    {
      v72 = v191;
    }

    v68(v72, v69, 1, v67);
    sub_1E65DC808();
    v189 = v68;
    if (v73)
    {
      sub_1E65D7338();
      v74 = v192;
      sub_1E65D72E8();
      v75 = v74;
      v68 = v189;
      v189(v75, 0, 1, v67);
    }

    else
    {
      v76 = *(sub_1E65D8068() + 16);

      if (v76)
      {
        v77 = sub_1E65D8068();
        v78 = v140;
        sub_1E63C4134(v171, v172, v77, v140);

        v79 = 0;
      }

      else
      {
        v79 = 1;
        v78 = v140;
      }

      v68(v78, v79, 1, v67);
      sub_1E5FAB460(v78, v192, &qword_1ED072D90, &qword_1E66040F0);
    }

    v80 = v181;
    sub_1E65D8128();
    sub_1E6429004(v80, v32, MEMORY[0x1E69CB950]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v81 = v148;
      v82 = v145;
      v83 = v149;
      (*(v148 + 32))(v145, v32, v149);
      v84 = v146;
      (*(v81 + 16))(v146, v82, v83);
      v85 = v147;
      sub_1E65DA098();
      sub_1E65DAC38();
      sub_1E65DC2D8();
      sub_1E65DAC78();
      sub_1E65D74C8();

      sub_1E65DB248();
      (*(v150 + 8))(v85, v152);
      sub_1E65DA0A8();
      sub_1E642906C(&qword_1EE2D6D80, MEMORY[0x1E699D120], MEMORY[0x1E699D118]);
      v86 = v155;
      sub_1E65DC438();
      v87 = *(v81 + 8);
      v87(v84, v83);
      v88 = v82;
      v68 = v189;
      v87(v88, v83);
    }

    else
    {
      v89 = v143;
      v90 = v141;
      v91 = v144;
      (*(v143 + 32))(v141, v32, v144);
      v92 = v142;
      (*(v89 + 16))(v142, v90, v91);
      v86 = v155;
      sub_1E6134678(v92, v155);
      (*(v89 + 8))(v90, v91);
    }

    v93 = v186;
    sub_1E6428F80(v181, MEMORY[0x1E69CB950]);
    swift_storeEnumTagMultiPayload();
    sub_1E5FAB460(v86, v193, &qword_1ED074530, &qword_1E65F0CA8);
    v94 = v156;
    sub_1E64FB75C(v156);
    v95 = sub_1E65DAE38();
    v96 = sub_1E65DAE38();
    v97 = sub_1E65E4B48();
    v98 = 4.0;
    if (v97)
    {
      v98 = 8.0;
    }

    v99 = 16.0;
    if (v97)
    {
      v99 = 18.0;
    }

    if (v95 == v96)
    {
      v100 = v99;
    }

    else
    {
      v100 = v98;
    }

    if (v95 == v96)
    {
      v101 = 12.0;
    }

    else
    {
      v101 = 8.0;
    }

    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A88, &qword_1E65FEF70);
    v103 = v188;
    v104 = v188 + v102[12];
    v105 = v102[16];
    sub_1E5E24EEC(v94, v104, type metadata accessor for ArtworkContent);
    v106 = type metadata accessor for ArtworkDescriptor(0);
    *(v104 + v106[5]) = MEMORY[0x1E69E7CD0];
    v107 = v104 + v106[6];
    *v107 = 0;
    *(v107 + 8) = v100;
    *(v107 + 16) = v100;
    *(v107 + 24) = v101;
    *(v104 + v106[7]) = 1;
    v181 = v106;
    v108 = (v104 + v106[8]);
    *v108 = 0;
    v108[1] = 0;
    v109 = v173;
    sub_1E5DFD1CC(v93, v173, &qword_1ED072D90, &qword_1E66040F0);
    v110 = *(v190 + 48);
    if (v110(v109, 1, v67) == 1)
    {
      sub_1E5DFE50C(v109, &qword_1ED072D90, &qword_1E66040F0);
      v111 = 1;
    }

    else
    {
      if (qword_1ED071B08 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v175, qword_1ED096678);
      v113 = v178;
      v112 = v179;
      v114 = v180;
      (*(v179 + 104))(v178, *MEMORY[0x1E69686E8], v180);
      sub_1E642906C(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      v115 = v173;
      sub_1E65D73C8();
      (*(v112 + 8))(v113, v114);
      (*(v190 + 8))(v115, v67);
      v111 = 0;
      v68 = v189;
    }

    v68((v103 + v105), v111, 1, v67);
    v116 = v102[20];
    v117 = v174;
    sub_1E5DFD1CC(v191, v174, &qword_1ED072D90, &qword_1E66040F0);
    v118 = v110(v117, 1, v67);
    v119 = v182;
    if (v118 == 1)
    {
      sub_1E5DFE50C(v117, &qword_1ED072D90, &qword_1E66040F0);
      v120 = 1;
    }

    else
    {
      if (qword_1ED071B10 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v175, qword_1ED096690);
      v122 = v178;
      v121 = v179;
      v123 = v180;
      (*(v179 + 104))(v178, *MEMORY[0x1E69686E8], v180);
      sub_1E642906C(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      v124 = v174;
      sub_1E65D73C8();
      (*(v121 + 8))(v122, v123);
      (*(v190 + 8))(v124, v67);
      v120 = 0;
      v119 = v182;
      v68 = v189;
    }

    v68((v103 + v116), v120, 1, v67);
    v125 = v102[24];
    sub_1E5DFD1CC(v192, v119, &qword_1ED072D90, &qword_1E66040F0);
    if (v110(v119, 1, v67) == 1)
    {
      sub_1E5DFE50C(v119, &qword_1ED072D90, &qword_1E66040F0);
      v126 = 1;
    }

    else
    {
      if (qword_1ED071B18 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v175, qword_1ED0966A8);
      v128 = v178;
      v127 = v179;
      v129 = v180;
      (*(v179 + 104))(v178, *MEMORY[0x1E69686E8], v180);
      sub_1E642906C(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      v130 = v182;
      sub_1E65D73C8();
      (*(v127 + 8))(v128, v129);
      (*(v190 + 8))(v130, v67);
      v126 = 0;
    }

    v68((v103 + v125), v126, 1, v67);
    v131 = v164;
    sub_1E65DC358();
    v132 = v176;
    v133 = v166;
    sub_1E65DC448();
    (*(v165 + 8))(v131, v133);
    sub_1E65DB238();
    (*(v161 + 8))(v132, v177);
    sub_1E65E0918();
    swift_storeEnumTagMultiPayload();
    sub_1E65E04E8();
    sub_1E5DFD1CC(v103, v187, &qword_1ED0794E8, &qword_1E6601630);
    v134 = sub_1E65E07E8();
    (*(*(v134 - 8) + 56))(v168, 1, 1, v134);
    v135 = sub_1E65E07F8();
    (*(*(v135 - 8) + 56))(v169, 1, 1, v135);
    v194 = sub_1E65E0A38();
    v190 = sub_1E65E0828();
    v189 = sub_1E642906C(&qword_1ED076BC0, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
    sub_1E642906C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    sub_1E642906C(&qword_1ED076BC8, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
    v136 = MEMORY[0x1E699E0B0];
    sub_1E642906C(&qword_1ED076778, MEMORY[0x1E699E0B0], MEMORY[0x1E699E0C8]);
    sub_1E642906C(&qword_1EE2D6B48, v136, MEMORY[0x1E699E0B8]);
    sub_1E642906C(&qword_1EE2D6B40, v136, MEMORY[0x1E699E0C0]);
    sub_1E642906C(&qword_1ED0794F0, MEMORY[0x1E699D990], MEMORY[0x1E699D988]);
    sub_1E642906C(&qword_1ED0794F8, MEMORY[0x1E699DA08], MEMORY[0x1E699DA00]);
    sub_1E65E0488();
    sub_1E5DFE50C(v188, &qword_1ED0794E8, &qword_1E6601630);
    sub_1E5DFE50C(v193, &qword_1ED074530, &qword_1E65F0CA8);
    sub_1E5DFE50C(v192, &qword_1ED072D90, &qword_1E66040F0);
    sub_1E5DFE50C(v191, &qword_1ED072D90, &qword_1E66040F0);
    sub_1E5DFE50C(v186, &qword_1ED072D90, &qword_1E66040F0);
    return (*(v159 + 8))(v184, v160);
  }

  else
  {
    v138 = *(v53 + 8);
    v138(v57, v52);
    v195 = 0;
    v196 = 0xE000000000000000;
    sub_1E65E68A8();
    MEMORY[0x1E694D7C0](0xD00000000000003FLL, 0x80000001E6617030);
    v139 = v185;
    sub_1E65E04E8();
    sub_1E65E69B8();
    v138(v139, v52);
    result = sub_1E65E69D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6412180@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072640, &qword_1E65EB958);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_1E65D72D8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DC8F8();
  if (v15 || (sub_1E65DC928(), v16) || (sub_1E65DC908(), v17))
  {

    sub_1E65DC8F8();
    if (v18)
    {
      if (qword_1EE2D7270 != -1)
      {
        swift_once();
      }

      v19 = sub_1E65D7348();
      __swift_project_value_buffer(v19, qword_1EE2EA268);
      sub_1E65E5D38();

      (*(v12 + 56))(v10, 0, 1, v11);
      (*(v12 + 32))(v14, v10, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
      sub_1E65D72C8();
      if ((*(v12 + 48))(v10, 1, v11) != 1)
      {
        sub_1E5DFE50C(v10, &qword_1ED072D90, &qword_1E66040F0);
      }
    }

    sub_1E6412604(v7);
    v20 = type metadata accessor for ActionButtonDescriptor(0);
    (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
    type metadata accessor for SectionHeaderSubtitleDescriptor(0);
    sub_1E642906C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
    sub_1E642906C(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
    sub_1E65E0458();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
    return (*(*(v21 - 8) + 56))(a1, 0, 1, v21);
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
    v24 = *(*(v23 - 8) + 56);

    return v24(a1, 1, 1, v23);
  }
}

uint64_t sub_1E6412604@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E65DC8D8();
  sub_1E65DC928();
  if (v2)
  {
    if (v3)
    {
      if (qword_1EE2D7258 != -1)
      {
        swift_once();
      }

      v4 = sub_1E65D7348();
      __swift_project_value_buffer(v4, qword_1EE2EA238);
      sub_1E65E5D38();

      v5 = sub_1E65D72D8();
      (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
      v6 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
      swift_storeEnumTagMultiPayload();
      v7 = *(*(v6 - 8) + 56);
      v8 = a1;
      v9 = 0;
      v10 = v6;
      goto LABEL_15;
    }

LABEL_14:
    v15 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
    v7 = *(*(v15 - 8) + 56);
    v10 = v15;
    v8 = a1;
    v9 = 1;
LABEL_15:

    return v7(v8, v9, 1, v10);
  }

  if (!v3)
  {
    goto LABEL_14;
  }

  sub_1E65DC908();
  if (!v11)
  {

    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DF0, &qword_1E65F0110);
  sub_1E5F9AEA8();
  sub_1E65E66A8();

  if (qword_1ED071A30 != -1)
  {
    swift_once();
  }

  v12 = sub_1E65D7348();
  __swift_project_value_buffer(v12, qword_1ED096408);
  sub_1E65E5D38();

  sub_1E65E66A8();

  if (qword_1ED071A28 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1ED0963F0);
  sub_1E65E5D38();

  v13 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t sub_1E6412948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, char *a4@<X8>)
{
  v71 = a1;
  v72 = a3;
  v67 = a2;
  v70 = a4;
  v4 = sub_1E65E0908();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v63 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v62 - v7;
  v68 = sub_1E65E03F8();
  v8 = MEMORY[0x1EEE9AC00](v68);
  v78 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v62 - v10;
  v77 = sub_1E65D8F28();
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1E65D9908();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v62 - v14;
  v16 = sub_1E65D72D8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E65D8C68();
  v80 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v79 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1E65DC7A8() == 2)
  {
    v73[0] = sub_1E65D8078();
    v73[1] = v22;
  }

  else
  {
    HIWORD(v73[1]) = -4864;
    strcpy(v73, "BuildYourPlan");
  }

  v23 = *MEMORY[0x1E69CBAA0];
  v24 = *(v80 + 104);
  v74 = v20;
  v24(v79, v23, v20);
  sub_1E5DFD1CC(v67, v15, &qword_1ED072D90, &qword_1E66040F0);
  v25 = *(v17 + 48);
  v26 = v25(v15, 1, v16);
  v27 = v69;
  if (v26 == 1)
  {
    sub_1E65D7228();
    v28 = v25(v15, 1, v16);
    v29 = v77;
    if (v28 != 1)
    {
      sub_1E5DFE50C(v15, &qword_1ED072D90, &qword_1E66040F0);
    }
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v29 = v77;
  }

  v30 = sub_1E65E5D58();
  v32 = v31;
  (*(v82 + 16))(v81, v71, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  sub_1E65E04F8();
  v72 = sub_1E65D80C8();
  v67 = v33;
  LODWORD(v71) = v34;
  v35 = sub_1E65DC7A8();
  sub_1E6429004(v27, v78, MEMORY[0x1E699D780]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37 = v75;
  v38 = v76;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1E6428F80(v27, MEMORY[0x1E699D780]);
      v39 = sub_1E65E0A08();
      goto LABEL_23;
    case 2:
      sub_1E6428F80(v27, MEMORY[0x1E699D780]);
      v39 = sub_1E65E0A28();
      goto LABEL_23;
    case 3:
    case 5:
      sub_1E6428F80(v27, MEMORY[0x1E699D780]);
      v39 = sub_1E65E0948();
      goto LABEL_23;
    case 4:
      sub_1E6428F80(v27, MEMORY[0x1E699D780]);
      v39 = sub_1E65E0A58();
      goto LABEL_23;
    case 6:
      sub_1E6428F80(v27, MEMORY[0x1E699D780]);
      v39 = sub_1E65E0968();
      goto LABEL_23;
    case 7:
      sub_1E6428F80(v27, MEMORY[0x1E699D780]);
      v39 = sub_1E65E0AD8();
      goto LABEL_23;
    case 8:
      sub_1E6428F80(v27, MEMORY[0x1E699D780]);
      v39 = sub_1E65E0A88();
      goto LABEL_23;
    case 9:
      sub_1E6428F80(v27, MEMORY[0x1E699D780]);
      v39 = sub_1E65E0928();
      goto LABEL_23;
    case 10:
      sub_1E6428F80(v27, MEMORY[0x1E699D780]);
      v39 = sub_1E65E0848();
      goto LABEL_23;
    case 11:
      sub_1E6428F80(v27, MEMORY[0x1E699D780]);
      v39 = sub_1E65E09C8();
LABEL_23:
      (*(*(v39 - 8) + 8))(v78, v39);
      goto LABEL_24;
    case 12:
    case 13:
      sub_1E6428F80(v27, MEMORY[0x1E699D780]);
LABEL_24:
      v50 = v38;
      if (v71)
      {
        v40 = v32;
        v51 = v29;
        v41 = v30;
        if (((1 << v72) & 0x1DB) != 0)
        {
          v52 = MEMORY[0x1E69CBCD8];
        }

        else if (v72 == 2)
        {
          v52 = MEMORY[0x1E69CBC98];
        }

        else
        {
          v52 = MEMORY[0x1E69CBCE0];
        }
      }

      else
      {
        v40 = v32;
        v51 = v29;
        v41 = v30;
        sub_1E5F87058(v72, v67, 0);
        v52 = MEMORY[0x1E69CBCE8];
      }

      v53 = *v52;
      v48 = *(v37 + 104);
      break;
    default:
      v40 = v32;
      v41 = v30;
      v43 = v64;
      v42 = v65;
      v44 = v66;
      (*(v64 + 32))(v66, v78, v65);
      if (v35 == 2)
      {
        v45 = v63;
        sub_1E65E08E8();
        v46 = MEMORY[0x1E6948300](v44, v45);
        sub_1E5F87058(v72, v67, v71 & 1);
        v47 = *(v43 + 8);
        v47(v45, v42);
        v47(v66, v42);
        sub_1E6428F80(v27, MEMORY[0x1E699D780]);
        v48 = *(v37 + 104);
        if (v46)
        {
          v49 = MEMORY[0x1E69CBC80];
        }

        else
        {
          v49 = MEMORY[0x1E69CBCC8];
        }

        v53 = *v49;
      }

      else
      {
        sub_1E5F87058(v72, v67, v71 & 1);
        (*(v43 + 8))(v44, v42);
        sub_1E6428F80(v27, MEMORY[0x1E699D780]);
        v53 = *MEMORY[0x1E69CBC80];
        v48 = *(v37 + 104);
      }

      v50 = v76;
      v51 = v77;
      break;
  }

  v48(v50, v53, v51);
  v54 = type metadata accessor for ItemMetrics(0);
  v55 = v54[10];
  v56 = *MEMORY[0x1E69CCA80];
  v57 = sub_1E65D9F88();
  v58 = v70;
  (*(*(v57 - 8) + 104))(&v70[v55], v56, v57);
  v59 = v73[1];
  *v58 = v73[0];
  *(v58 + 1) = v59;
  (*(v80 + 32))(&v58[v54[5]], v79, v74);
  v60 = &v58[v54[6]];
  *v60 = v41;
  v60[1] = v40;
  (*(v82 + 32))(&v58[v54[7]], v81, v83);
  return (*(v37 + 32))(&v58[v54[8]], v50, v51);
}

uint64_t sub_1E6413384(uint64_t a1, uint64_t a2, char a3)
{
  sub_1E6428E34();
  sub_1E6428E88();
  v3 = 0;
  if ((sub_1E65D7FF8() & 1) == 0)
  {
    v3 = 1;
    if ((sub_1E65D7FF8() & 1) == 0)
    {
      v3 = 2;
      if ((sub_1E65D7FF8() & 1) == 0)
      {
        v3 = 3;
        if ((sub_1E65D7FF8() & 1) == 0)
        {
          v3 = 4;
          if ((sub_1E65D7FF8() & 1) == 0)
          {
            v3 = 5;
            if ((sub_1E65D7FF8() & 1) == 0)
            {
              v3 = 6;
              if ((sub_1E65D7FF8() & 1) == 0)
              {
                v3 = 7;
                if ((sub_1E65D7FF8() & 1) == 0)
                {
                  if (sub_1E65D7FF8())
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

uint64_t sub_1E64135A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  v139 = a8;
  v146 = a6;
  v147 = a7;
  v144 = a4;
  v145 = a5;
  i = a3;
  v18 = sub_1E65D99B8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v138 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B98, &qword_1E65F78F8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v155 = &v119 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795F0, &qword_1E6601720);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v143 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v141 = &v119 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v140 = &v119 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v119 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v119 - v33;
  v137 = a2;
  v35 = sub_1E65D82B8();
  v142 = a1;
  v36 = sub_1E65DA738();
  if (!*(v35 + 16))
  {

    goto LABEL_6;
  }

  v135 = v19;
  v38 = sub_1E6215038(v36, v37);
  v40 = v39;

  if ((v40 & 1) == 0)
  {
LABEL_6:

    v45 = 1;
    goto LABEL_7;
  }

  v131 = a9;
  v41 = *(v35 + 56) + 24 * v38;
  v42 = *v41;
  v43 = *(v41 + 8);
  v44 = *(v41 + 16);
  sub_1E5F8710C(*v41, v43, v44);

  v152 = v42;
  v153 = v43;
  v154 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795F8, &qword_1E6601728);
  sub_1E65D7FB8();
  sub_1E5F87058(v42, v43, v44);
  if (v150 == 49)
  {
    v45 = 1;
    a9 = v131;
LABEL_7:
    v46 = sub_1E65DC938();
    return (*(*(v46 - 8) + 56))(a9, v45, 1, v46);
  }

  v126 = v150;
  sub_1E65DA768();
  v48 = sub_1E65D9278();
  v49 = *(v48 - 8);
  v50 = *(v49 + 48);
  v134 = v49 + 48;
  v133 = v50;
  v51 = v50(v34, 1, v48);
  v127 = v18;
  v128 = v49;
  if (v51 == 1)
  {
    sub_1E5DFE50C(v34, &qword_1ED0795F0, &qword_1E6601720);
    v125 = 1;
    v53 = v140;
    v52 = v141;
  }

  else
  {
    v54 = sub_1E65D9258();
    v55 = v48;
    v57 = v56;
    v59 = v58;
    v60 = ~v58;
    v61 = v34;
    v62 = v55;
    (*(v49 + 8))(v61, v55);
    if (!v60 || (v152 = v54, v153 = v57, v154 = v59 & 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079600, &qword_1E6601730), sub_1E65D7FB8(), sub_1E5F87158(v54, v57, v59), v63 = v150, v150 == 2))
    {
      v63 = 1;
    }

    v125 = v63;
    v49 = v128;
    v53 = v140;
    v52 = v141;
    v48 = v62;
  }

  sub_1E65DA748();
  if (v133(v32, 1, v48) == 1)
  {
    sub_1E5DFE50C(v32, &qword_1ED0795F0, &qword_1E6601720);
    v64 = sub_1E65D9D28();
    (*(*(v64 - 8) + 56))(v155, 1, 1, v64);
  }

  else
  {
    PersonalizationText.getModalityReferenceFromTitle(allModalities:)(i, v155);
    (*(v49 + 8))(v32, v48);
  }

  v130 = a11;
  v129 = a10;
  v124 = sub_1E65DA728();
  v123 = v65;
  sub_1E65DA748();
  v66 = v133(v53, 1, v48);
  v67 = v143;
  if (v66 == 1)
  {
    sub_1E5DFE50C(v53, &qword_1ED0795F0, &qword_1E6601720);
    v132 = 0;
    i = 0;
LABEL_37:
    sub_1E65DA768();
    if (v133(v52, 1, v48) == 1)
    {
      sub_1E5DFE50C(v52, &qword_1ED0795F0, &qword_1E6601720);
      v141 = 0;
      v142 = 0;
    }

    else
    {
      v94 = sub_1E65D9248();
      v141 = v95;
      v142 = v94;
      (*(v49 + 8))(v52, v48);
    }

    sub_1E65DA768();
    if (v133(v67, 1, v48) == 1)
    {
      sub_1E5DFE50C(v67, &qword_1ED0795F0, &qword_1E6601720);
      v96 = 0;
    }

    else
    {
      v97 = sub_1E65D9238();
      v98 = v97;
      if (v97)
      {
        MEMORY[0x1EEE9AC00](v97);
        v99 = v146;
        *(&v119 - 10) = v145;
        *(&v119 - 9) = v99;
        v100 = v130;
        *(&v119 - 8) = v147;
        *(&v119 - 7) = v100;
        v113 = v144;
        v114 = v129;
        v115 = v155;
        v116 = v101;
        v117 = v139;
        v102 = sub_1E64072E4(sub_1E64290B4, (&v119 - 12), v98, MEMORY[0x1E69CCFD8]);

        v152 = v102;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
        sub_1E5FED46C(&qword_1EE2D4838, &qword_1ED074F18, &qword_1E65F1150, MEMORY[0x1E69E6310]);
        sub_1E65E5B68();
        v96 = v103;
        v67 = v143;
      }

      else
      {
        v96 = 0;
      }

      (*(v128 + 8))(v67, v48);
    }

    v104 = sub_1E65DA718();
    MEMORY[0x1EEE9AC00](v104);
    *(&v119 - 12) = v137;
    *(&v119 - 88) = a13 & 1;
    *(&v119 - 10) = a14;
    v105 = v126;
    *(&v119 - 72) = v126;
    v106 = v145;
    *(&v119 - 8) = v144;
    *(&v119 - 7) = v106;
    v113 = v146;
    v114 = v147;
    v115 = v139;
    v116 = v129;
    v117 = v130;
    v107 = sub_1E6406C60(sub_1E6428EDC, (&v119 - 14), v104);

    v108 = sub_1E6415698(v105);
    v109 = v138;
    sub_1E65DA758();
    v110 = sub_1E65D99A8();
    v112 = v111;
    (*(v135 + 8))(v109, v127);
    v116 = v110;
    v117 = v112;
    LOBYTE(v115) = v108;
    v113 = v96;
    v114 = v107;
    a9 = v131;
    sub_1E65DC8A8();
    sub_1E5DFE50C(v155, &qword_1ED076B98, &qword_1E65F78F8);
    v45 = 0;
    goto LABEL_7;
  }

  v68 = sub_1E65D9268();
  if (!v68)
  {
    v132 = sub_1E65D9248();
    i = v72;
LABEL_36:
    (*(v49 + 8))(v53, v48);
    goto LABEL_37;
  }

  v69 = v68;
  MEMORY[0x1EEE9AC00](v68);
  v113 = v145;
  v114 = v146;
  v115 = v147;
  v116 = v130;
  v117 = v144;
  v118 = v129;
  v70 = sub_1E6406AB0(sub_1E64290CC, (&v119 - 8), v69);

  if (*(v70 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079268, &qword_1E66013F8);
    v71 = sub_1E65E6A28();
  }

  else
  {
    v71 = MEMORY[0x1E69E7CC8];
  }

  v152 = v71;

  sub_1E64267D8(v73, 1, &v152);
  if (!v14)
  {

    v74 = v152;
    v132 = sub_1E65D9248();
    v76 = v75;
    v77 = v74 + 64;
    v78 = 1 << *(v74 + 32);
    v79 = -1;
    if (v78 < 64)
    {
      v79 = ~(-1 << v78);
    }

    v80 = v79 & *(v74 + 64);
    v81 = (v78 + 63) >> 6;
    v122 = v74;

    v82 = 0;
    v120 = v48;
    v121 = 0;
    for (i = v76; v80; i = v93)
    {
      v83 = v82;
LABEL_33:
      v84 = __clz(__rbit64(v80));
      v80 &= v80 - 1;
      v85 = (v83 << 10) | (16 * v84);
      v86 = (*(v122 + 48) + v85);
      v87 = *v86;
      v88 = v86[1];
      v89 = (*(v122 + 56) + v85);
      v90 = *v89;
      v91 = v89[1];
      v152 = v132;
      v153 = v76;
      v150 = 123;
      v151 = 0xE100000000000000;

      MEMORY[0x1E694D7C0](v87, v88);
      MEMORY[0x1E694D7C0](125, 0xE100000000000000);
      v148 = v90;
      v149 = v91;
      v117 = sub_1E5F9AEA8();
      v118 = v117;
      v116 = v117;
      v115 = MEMORY[0x1E69E6158];
      v132 = sub_1E65E66B8();
      v93 = v92;

      v76 = v93;
      v48 = v120;
    }

    while (1)
    {
      v83 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        break;
      }

      if (v83 >= v81)
      {

        v67 = v143;
        v49 = v128;
        v53 = v140;
        v52 = v141;
        goto LABEL_36;
      }

      v80 = *(v77 + 8 * v83);
      ++v82;
      if (v80)
      {
        v82 = v83;
        goto LABEL_33;
      }
    }

    __break(1u);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t PersonalizationText.getModalityReferenceFromTitle(allModalities:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1E65DA838();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v41 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - v14;
  result = sub_1E65D9268();
  if (result)
  {
    v42 = v8;
    v43 = v11;
    v44 = a1;
    v45 = a2;
    v17 = result;
    v52 = *(result + 16);
    if (v52)
    {
      v18 = 0;
      v51 = v5 + 16;
      v47 = (v5 + 8);
      v49 = (v5 + 32);
      v19 = MEMORY[0x1E69E7CC0];
      v46 = v4;
      v48 = result;
      while (1)
      {
        if (v18 >= *(v17 + 16))
        {
          __break(1u);
          return result;
        }

        v20 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v21 = *(v5 + 72);
        (*(v5 + 16))(v15, v17 + v20 + v21 * v18, v4);
        v22 = sub_1E65DA818();
        if (v24)
        {
          v25 = sub_1E65DABF8();
          v27 = v26;
          if (v25 == sub_1E65DABF8() && v27 == v28)
          {

LABEL_13:
            v30 = *v49;
            (*v49)(v50, v15, v4);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v53 = v19;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1E601D090(0, *(v19 + 16) + 1, 1);
              v19 = v53;
            }

            v33 = *(v19 + 16);
            v32 = *(v19 + 24);
            if (v33 >= v32 >> 1)
            {
              sub_1E601D090((v32 > 1), v33 + 1, 1);
              v19 = v53;
            }

            *(v19 + 16) = v33 + 1;
            v34 = v19 + v20 + v33 * v21;
            v4 = v46;
            result = (v30)(v34, v50, v46);
            v17 = v48;
            goto LABEL_6;
          }

          v29 = sub_1E65E6C18();

          v17 = v48;
          if (v29)
          {
            goto LABEL_13;
          }
        }

        else
        {
          sub_1E5F87058(v22, v23, 0);
        }

        result = (*v47)(v15, v4);
LABEL_6:
        if (v52 == ++v18)
        {
          goto LABEL_22;
        }
      }
    }

    v19 = MEMORY[0x1E69E7CC0];
LABEL_22:

    if (*(v19 + 16) == 1)
    {
      v37 = v42;
      (*(v5 + 16))(v42, v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

      v38 = v43;
      v39 = (*(v5 + 32))(v43, v37, v4);
      MEMORY[0x1EEE9AC00](v39);
      *(&v41 - 2) = v38;
      sub_1E641031C(sub_1E64275FC, v44, MEMORY[0x1E69CC8D0], v45);
      return (*(v5 + 8))(v38, v4);
    }

    else
    {

      v40 = sub_1E65D9D28();
      return (*(*(v40 - 8) + 56))(v45, 1, 1, v40);
    }
  }

  else
  {
    v35 = sub_1E65D9D28();
    v36 = *(*(v35 - 8) + 56);

    return v36(a2, 1, 1, v35);
  }
}

uint64_t PersonalizationText.localizeFillers(bodyFocusMap:locale:modalityMap:musicGenreMap:skillLevelMap:themeMap:trainerMap:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1E65D9268();
  if (v13)
  {
    v14 = v13;
    MEMORY[0x1EEE9AC00](v13);
    v40[2] = a2;
    v40[3] = a3;
    v41 = a4;
    v42 = a7;
    v43 = a1;
    v44 = a6;
    v15 = sub_1E6406AB0(sub_1E642761C, v40, v14);

    if (*(v15 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079268, &qword_1E66013F8);
      v16 = sub_1E65E6A28();
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC8];
    }

    v50[0] = v16;

    sub_1E64267D8(v18, 1, v50);

    v19 = v50[0];
    v17 = sub_1E65D9248();
    v21 = v20;
    v22 = v19 + 64;
    v23 = 1 << *(v19 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v19 + 64);
    v26 = (v23 + 63) >> 6;
    v45 = v19;

    for (i = 0; v25; v21 = v38)
    {
      v28 = i;
LABEL_14:
      v29 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v30 = (v28 << 10) | (16 * v29);
      v31 = (*(v45 + 48) + v30);
      v33 = *v31;
      v32 = v31[1];
      v34 = (*(v45 + 56) + v30);
      v36 = *v34;
      v35 = v34[1];
      v50[0] = v17;
      v50[1] = v21;
      v48 = 123;
      v49 = 0xE100000000000000;

      MEMORY[0x1E694D7C0](v33, v32);
      MEMORY[0x1E694D7C0](125, 0xE100000000000000);
      v46 = v36;
      v47 = v35;
      v43 = sub_1E5F9AEA8();
      v44 = v43;
      v42 = v43;
      v41 = MEMORY[0x1E69E6158];
      v17 = sub_1E65E66B8();
      v38 = v37;
    }

    while (1)
    {
      v28 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v28 >= v26)
      {

        return v17;
      }

      v25 = *(v22 + 8 * v28);
      ++i;
      if (v25)
      {
        i = v28;
        goto LABEL_14;
      }
    }

    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    return sub_1E65D9248();
  }

  return result;
}

uint64_t PersonalizationText.localizeTags(bodyFocusMap:filterConfigurations:locale:modalityMap:modalityReference:musicGenreMap:skillLevelMap:themeMap:trainerMap:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_1E65D9238();
  v17 = v16;
  if (v16)
  {
    MEMORY[0x1EEE9AC00](v16);
    v21[2] = a3;
    v21[3] = a4;
    v21[4] = a6;
    v21[5] = v18;
    v21[6] = a1;
    v21[7] = a8;
    v21[8] = a5;
    v21[9] = a2;
    v21[10] = a7;
    v19 = sub_1E64072E4(sub_1E6427634, v21, v17, MEMORY[0x1E69CCFD8]);

    v21[12] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
    sub_1E5FED46C(&qword_1EE2D4838, &qword_1ED074F18, &qword_1E65F1150, MEMORY[0x1E69E6310]);
    v17 = sub_1E65E5B68();
  }

  return v17;
}

uint64_t sub_1E6414B8C@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v135 = a6;
  v136 = a7;
  v137 = a5;
  LODWORD(i) = a4;
  v139 = a3;
  v144 = sub_1E65DA378();
  v142 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v138 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079610, &qword_1E6601740);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v141 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v147 = &v126 - v16;
  v17 = sub_1E65DC758();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v143 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795F0, &qword_1E6601720);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v145 = &v126 - v20;
  v21 = sub_1E65D9DD8();
  v23 = v22;
  v25 = v24;
  v156 = sub_1E6413384(v21, v22, v24 & 1);
  v26 = v156;
  sub_1E5F87058(v21, v23, v25 & 1);
  if (v26 == 9)
  {
    v27 = sub_1E65DC818();
    return (*(*(v27 - 8) + 56))(a8, 1, 1, v27);
  }

  v134 = a8;
  v140 = v8;
  v29 = sub_1E65D9DB8();
  if (!v30)
  {
    v42 = 7;
    v37 = v156;
    goto LABEL_12;
  }

  v31 = v30;
  v32 = v29;
  v33 = sub_1E65D82C8();
  if (!*(v33 + 16))
  {

    v37 = v156;
    goto LABEL_11;
  }

  v34 = sub_1E6215038(v32, v31);
  v36 = v35;

  v37 = v156;
  if ((v36 & 1) == 0)
  {
LABEL_11:

    v42 = 7;
    goto LABEL_12;
  }

  v38 = *(v33 + 56) + 24 * v34;
  v39 = *v38;
  v40 = *(v38 + 8);
  v41 = *(v38 + 16);
  sub_1E5F8710C(*v38, v40, v41);

  v148 = v39;
  v149 = v40;
  v150 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079620, &qword_1E6601750);
  sub_1E65D7FB8();
  sub_1E5F87058(v39, v40, v41);
  v42 = v153;
  if (v153 - 3 >= 0xFFFFFFFE && (a2 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_12:
  v43 = sub_1E65D9DA8();
  v45 = v44;
  if (v37)
  {
    v132 = v42;
    v133 = v43;
    goto LABEL_14;
  }

  v67 = v139;
  if (!*(v139 + 16))
  {

    goto LABEL_29;
  }

  v68 = sub_1E6215038(v43, v44);
  v70 = v69;

  if ((v70 & 1) == 0)
  {
LABEL_29:
    v81 = sub_1E65DC818();
    return (*(*(v81 - 8) + 56))(v134, 1, 1, v81);
  }

  v132 = v42;
  v71 = (*(v67 + 56) + 16 * v68);
  v45 = v71[1];
  v133 = *v71;

LABEL_14:
  v46 = i;
  v47 = sub_1E65D8E48();
  v49 = v48;
  v50 = sub_1E65D9DA8();
  v52 = v51;
  v53 = sub_1E65D9DE8();
  if (v54)
  {
    v55 = v53;
  }

  else
  {
    v55 = 0;
  }

  if (v54)
  {
    v56 = v54;
  }

  else
  {
    v56 = 0xE000000000000000;
  }

  v148 = v50;
  v149 = v52;

  MEMORY[0x1E694D7C0](v55, v56);

  MEMORY[0x1E694D7C0](v47, v49);
  swift_bridgeObjectRelease_n();

  v58 = v148;
  v57 = v149;
  v131 = sub_1E65D9DE8();
  v130 = v59;
  v155 = sub_1E6415698(v46);
  v60 = v145;
  sub_1E65D9E08();
  v61 = sub_1E65D9278();
  v62 = *(v61 - 8);
  v63 = (*(v62 + 48))(v60, 1, v61);
  v139 = v45;
  if (v63 == 1)
  {
    sub_1E5DFE50C(v60, &qword_1ED0795F0, &qword_1E6601720);
    v64 = 0;
    i = 0;
    v65 = v142;
    v66 = v147;
LABEL_45:
    v107 = 0x202020202010002uLL >> (8 * v132);
    sub_1E65D9DC8();
    v108 = v141;
    sub_1E5DFD1CC(v66, v141, &qword_1ED079610, &qword_1E6601740);
    v109 = v144;
    if ((*(v65 + 48))(v108, 1, v144) == 1)
    {
      sub_1E5DFE50C(v66, &qword_1ED079610, &qword_1E6601740);
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079618, &qword_1E6601748);
      v111 = v143;
      (*(*(v110 - 8) + 56))(v143, 1, 1, v110);
    }

    else
    {
      v112 = *(v65 + 32);
      v142 = v107;
      v113 = v138;
      v112(v138, v108, v109);
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079618, &qword_1E6601748);
      v115 = v65;
      v116 = *(v114 + 48);
      v145 = v64;
      v117 = v143;
      v118 = v109;
      sub_1E65DA358();
      v119 = sub_1E65DA368();
      (*(v115 + 8))(v113, v118);
      sub_1E5DFE50C(v147, &qword_1ED079610, &qword_1E6601740);
      v117[v116] = v119 & 1;
      v111 = v117;
      v64 = v145;
      (*(*(v114 - 8) + 56))(v111, 0, 1, v114);
    }

    v120 = v134;
    v125 = v111;
    v123 = v64;
    v124 = i;
    LOBYTE(v122) = v155;
    sub_1E65DC788();
    v121 = sub_1E65DC818();
    return (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
  }

  v129 = v62;
  v72 = sub_1E65D9268();
  v66 = v147;
  if (!v72)
  {
    v82 = sub_1E65D9248();
    i = v83;
LABEL_44:
    (*(v129 + 8))(v60, v61);
    v65 = v142;
    v64 = v82;
    goto LABEL_45;
  }

  v73 = v72;
  v127 = v61;
  v128 = v57;
  MEMORY[0x1EEE9AC00](v72);
  v74 = v136;
  *(&v126 - 6) = v135;
  *(&v126 - 5) = v74;
  v122 = v76;
  v123 = v75;
  v124 = v137;
  v125 = v77;
  v78 = v140;
  v79 = sub_1E6406AB0(sub_1E64290CC, (&v126 - 8), v73);

  if (*(v79 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079268, &qword_1E66013F8);
    v80 = sub_1E65E6A28();
  }

  else
  {
    v80 = MEMORY[0x1E69E7CC8];
  }

  v135 = v58;
  v136 = a1;
  v148 = v80;

  sub_1E64267D8(v84, 1, &v148);
  v140 = v78;
  if (!v78)
  {

    v85 = v148;
    v86 = sub_1E65D9248();
    v88 = v87;
    v89 = v85 + 64;
    v90 = 1 << *(v85 + 32);
    v91 = -1;
    if (v90 < 64)
    {
      v91 = ~(-1 << v90);
    }

    v92 = v91 & *(v85 + 64);
    v93 = (v90 + 63) >> 6;
    v137 = v85;

    v94 = 0;
    for (i = v88; v92; i = v106)
    {
      v95 = v86;
      v96 = v94;
LABEL_41:
      v97 = __clz(__rbit64(v92));
      v92 &= v92 - 1;
      v98 = (v96 << 10) | (16 * v97);
      v99 = (*(v137 + 48) + v98);
      v100 = *v99;
      v101 = v99[1];
      v102 = (*(v137 + 56) + v98);
      v103 = *v102;
      v104 = v102[1];
      v148 = v95;
      v149 = v88;
      v153 = 123;
      v154 = 0xE100000000000000;

      MEMORY[0x1E694D7C0](v100, v101);
      MEMORY[0x1E694D7C0](125, 0xE100000000000000);
      v151 = v103;
      v152 = v104;
      v124 = sub_1E5F9AEA8();
      v125 = v124;
      v123 = v124;
      v122 = MEMORY[0x1E69E6158];
      v86 = sub_1E65E66B8();
      v106 = v105;

      v88 = v106;
    }

    while (1)
    {
      v96 = v94 + 1;
      if (__OFADD__(v94, 1))
      {
        break;
      }

      if (v96 >= v93)
      {
        v82 = v86;

        v66 = v147;
        v60 = v145;
        v61 = v127;
        goto LABEL_44;
      }

      v92 = *(v89 + 8 * v96);
      ++v94;
      if (v92)
      {
        v95 = v86;
        v94 = v96;
        goto LABEL_41;
      }
    }

    __break(1u);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1E6415698(char a1)
{
  result = 0;
  switch(a1)
  {
    case 2:
      return result;
    case 3:
      result = 2;
      break;
    case 5:
      result = 1;
      break;
    case 6:
      result = 3;
      break;
    case 9:
      result = 4;
      break;
    case 10:
      result = 5;
      break;
    case 13:
      result = 6;
      break;
    case 14:
      result = 7;
      break;
    case 16:
      result = 8;
      break;
    case 20:
      result = 9;
      break;
    case 21:
      result = 10;
      break;
    case 22:
      result = 11;
      break;
    case 31:
      result = 12;
      break;
    case 32:
      result = 13;
      break;
    case 33:
      result = 14;
      break;
    case 38:
      result = 16;
      break;
    case 44:
      result = 15;
      break;
    default:
      sub_1E65E68A8();
      MEMORY[0x1E694D7C0](0xD00000000000001ELL, 0x80000001E6617070);
      sub_1E65E69B8();
      MEMORY[0x1E694D7C0](0x59726F46206E6F20, 0xEA0000000000756FLL);
      result = sub_1E65E69D8();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1E6415818(uint64_t a1)
{
  v1 = sub_1E65D9CD8();
  v3 = v2;
  if (v1 == sub_1E65DA808() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E65E6C18();
  }

  return v5 & 1;
}

unint64_t sub_1E64158B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v99 = a1;
  v13 = sub_1E65D7848();
  v97 = *(v13 - 8);
  v98 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v96 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v95 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65E5C08();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = sub_1E65DA818();
  v20 = v18;
  if ((v21 & 1) == 0)
  {
    result = sub_1E5F87058(v18, v19, 0);
    goto LABEL_10;
  }

  result = sub_1E65DA828();
  if (!v23)
  {
LABEL_10:
    *a7 = 0u;
    *(a7 + 16) = 0u;
    return result;
  }

  if (v20 > 2u)
  {
    if (v20 <= 4u)
    {
      v24 = result;
      v25 = v23;
      if (v20 == 3)
      {
        v26 = sub_1E65DA808();
        if (*(a3 + 16))
        {
          v28 = sub_1E6215038(v26, v27);
          v30 = v29;

          if (v30)
          {
            v31 = (*(a3 + 56) + 16 * v28);
LABEL_43:
            v64 = *v31;

LABEL_49:
            v100 = v64;
            v101 = v65;
            result = sub_1E65E5E58();
            *a7 = v24;
            *(a7 + 8) = v25;
LABEL_108:
            *(a7 + 16) = result;
            *(a7 + 24) = v74;
            return result;
          }

          goto LABEL_48;
        }
      }

      else
      {
        v59 = sub_1E65DA808();
        if (*(a2 + 16))
        {
          v61 = sub_1E6215038(v59, v60);
          v63 = v62;

          if (v63)
          {
            v31 = (*(a2 + 56) + 16 * v61);
            goto LABEL_43;
          }

LABEL_48:
          v64 = 0;
          v65 = 0xE000000000000000;
          goto LABEL_49;
        }
      }

      goto LABEL_48;
    }

    if (v20 == 5)
    {

      goto LABEL_10;
    }

    v66 = result;
    v42 = v23;
    v67 = sub_1E65DA808();
    if (*(a4 + 16))
    {
      v69 = sub_1E6215038(v67, v68);
      v71 = v70;

      if (v71)
      {
        v72 = *(*(a4 + 56) + 16 * v69);

LABEL_68:
        v100 = v72;
        v101 = v73;
        result = sub_1E65E5E58();
        *a7 = v66;
        goto LABEL_69;
      }
    }

    else
    {
    }

    v72 = 0;
    v73 = 0xE000000000000000;
    goto LABEL_68;
  }

  if (!v20)
  {
    v41 = result;
    v42 = v23;
    v43 = sub_1E65DA808();
    if (*(a5 + 16))
    {
      v45 = sub_1E6215038(v43, v44);
      v47 = v46;

      if (v47)
      {
        v48 = *(*(a5 + 56) + 16 * v45);

LABEL_62:
        v100 = v48;
        v101 = v49;
        result = sub_1E65E5E58();
        *a7 = v41;
LABEL_69:
        *(a7 + 8) = v42;
        goto LABEL_108;
      }
    }

    else
    {
    }

    v48 = 0;
    v49 = 0xE000000000000000;
    goto LABEL_62;
  }

  v32 = result;
  v33 = v23;
  if (v20 == 1)
  {
    v34 = sub_1E65DA808();
    if (*(a6 + 16))
    {
      v36 = sub_1E6215038(v34, v35);
      v38 = v37;

      if (v38)
      {
        v39 = *(*(a6 + 56) + 16 * v36);

LABEL_65:
        v100 = v39;
        v101 = v40;
        result = sub_1E65E5E58();
LABEL_107:
        *a7 = v32;
        *(a7 + 8) = v33;
        goto LABEL_108;
      }
    }

    else
    {
    }

    v39 = 0;
    v40 = 0xE000000000000000;
    goto LABEL_65;
  }

  result = sub_1E65DA808();
  v51 = HIBYTE(v50) & 0xF;
  v52 = result & 0xFFFFFFFFFFFFLL;
  if ((v50 & 0x2000000000000000) != 0)
  {
    v53 = HIBYTE(v50) & 0xF;
  }

  else
  {
    v53 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v53)
  {

    goto LABEL_103;
  }

  if ((v50 & 0x1000000000000000) != 0)
  {
    v102 = 0;
    v55 = sub_1E6426B88(result, v50, 10);
    v91 = v90;

    if (v91)
    {
      goto LABEL_103;
    }

    goto LABEL_106;
  }

  if ((v50 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v50 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1E65E6908();
      v52 = v94;
    }

    v54 = *result;
    if (v54 == 43)
    {
      if (v52 >= 1)
      {
        if (--v52)
        {
          v55 = 0;
          if (result)
          {
            v78 = (result + 1);
            while (1)
            {
              v79 = *v78 - 48;
              if (v79 > 9)
              {
                goto LABEL_101;
              }

              v80 = 10 * v55;
              if ((v55 * 10) >> 64 != (10 * v55) >> 63)
              {
                goto LABEL_101;
              }

              v55 = v80 + v79;
              if (__OFADD__(v80, v79))
              {
                goto LABEL_101;
              }

              ++v78;
              if (!--v52)
              {
                goto LABEL_102;
              }
            }
          }

          goto LABEL_100;
        }

        goto LABEL_101;
      }

      goto LABEL_112;
    }

    if (v54 != 45)
    {
      if (v52)
      {
        v55 = 0;
        if (result)
        {
          while (1)
          {
            v84 = *result - 48;
            if (v84 > 9)
            {
              goto LABEL_101;
            }

            v85 = 10 * v55;
            if ((v55 * 10) >> 64 != (10 * v55) >> 63)
            {
              goto LABEL_101;
            }

            v55 = v85 + v84;
            if (__OFADD__(v85, v84))
            {
              goto LABEL_101;
            }

            ++result;
            if (!--v52)
            {
              goto LABEL_102;
            }
          }
        }

        goto LABEL_100;
      }

LABEL_101:
      v55 = 0;
      LOBYTE(v52) = 1;
LABEL_102:
      v102 = v52;
      v89 = v52;

      if (v89)
      {
LABEL_103:

        *a7 = 0u;
        *(a7 + 16) = 0u;
        return result;
      }

LABEL_106:
      sub_1E65E5BF8();
      sub_1E65E5BE8();
      v100 = v55;
      sub_1E65E5BC8();
      sub_1E65E5BE8();
      sub_1E65E5C18();
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v93 = [objc_opt_self() bundleForClass_];
      (*(v97 + 16))(v96, v99, v98);
      result = sub_1E65E5D48();
      goto LABEL_107;
    }

    if (v52 >= 1)
    {
      if (--v52)
      {
        v55 = 0;
        if (result)
        {
          v56 = (result + 1);
          while (1)
          {
            v57 = *v56 - 48;
            if (v57 > 9)
            {
              goto LABEL_101;
            }

            v58 = 10 * v55;
            if ((v55 * 10) >> 64 != (10 * v55) >> 63)
            {
              goto LABEL_101;
            }

            v55 = v58 - v57;
            if (__OFSUB__(v58, v57))
            {
              goto LABEL_101;
            }

            ++v56;
            if (!--v52)
            {
              goto LABEL_102;
            }
          }
        }

LABEL_100:
        LOBYTE(v52) = 0;
        goto LABEL_102;
      }

      goto LABEL_101;
    }

    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v100 = result;
  v101 = v50 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v51)
      {
        v55 = 0;
        v86 = &v100;
        while (1)
        {
          v87 = *v86 - 48;
          if (v87 > 9)
          {
            break;
          }

          v88 = 10 * v55;
          if ((v55 * 10) >> 64 != (10 * v55) >> 63)
          {
            break;
          }

          v55 = v88 + v87;
          if (__OFADD__(v88, v87))
          {
            break;
          }

          v86 = (v86 + 1);
          if (!--v51)
          {
            goto LABEL_100;
          }
        }
      }

      goto LABEL_101;
    }

    if (v51)
    {
      v52 = v51 - 1;
      if (v51 != 1)
      {
        v55 = 0;
        v75 = &v100 + 1;
        while (1)
        {
          v76 = *v75 - 48;
          if (v76 > 9)
          {
            break;
          }

          v77 = 10 * v55;
          if ((v55 * 10) >> 64 != (10 * v55) >> 63)
          {
            break;
          }

          v55 = v77 - v76;
          if (__OFSUB__(v77, v76))
          {
            break;
          }

          ++v75;
          if (!--v52)
          {
            goto LABEL_102;
          }
        }
      }

      goto LABEL_101;
    }

    goto LABEL_111;
  }

  if (v51)
  {
    v52 = v51 - 1;
    if (v51 != 1)
    {
      v55 = 0;
      v81 = &v100 + 1;
      while (1)
      {
        v82 = *v81 - 48;
        if (v82 > 9)
        {
          break;
        }

        v83 = 10 * v55;
        if ((v55 * 10) >> 64 != (10 * v55) >> 63)
        {
          break;
        }

        v55 = v83 + v82;
        if (__OFADD__(v83, v82))
        {
          break;
        }

        ++v81;
        if (!--v52)
        {
          goto LABEL_102;
        }
      }
    }

    goto LABEL_101;
  }

LABEL_113:
  __break(1u);
  return result;
}

unint64_t sub_1E64160A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v107 = a7;
  v108 = a2;
  v110 = a4;
  v111 = a6;
  v109 = a3;
  v103 = a1;
  v13 = sub_1E65D91F8();
  v14 = *(v13 - 8);
  v105 = v13;
  v106 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v104 = v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079478, &qword_1E66015C0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v99 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B98, &qword_1E65F78F8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v99 - v23;
  v25 = sub_1E65D9D28();
  v112 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E65D7848();
  v101 = *(v28 - 8);
  v102 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v100 = v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v30 - 8);
  v99[2] = v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1E65E5C08();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v99[1] = v99 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1E65DA818();
  if ((v36 & 1) == 0)
  {
    result = sub_1E5F87058(v34, v35, 0);
    *a8 = 0;
    a8[1] = 0;
    return result;
  }

  v99[0] = v10;
  if (v34 > 2u)
  {
    if (v34 <= 4u)
    {
      if (v34 == 3)
      {
        v37 = sub_1E65DA808();
        a5 = v109;
        if (!*(v109 + 16))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v37 = sub_1E65DA808();
        a5 = v108;
        if (!*(v108 + 16))
        {
          goto LABEL_11;
        }
      }

LABEL_16:
      v41 = sub_1E6215038(v37, v38);
      v43 = v42;

      if (v43)
      {
        v44 = *(*(a5 + 56) + 16 * v41);

LABEL_19:
        v113 = v44;
        v114 = v45;
        result = sub_1E65E5E58();
        *a8 = result;
        a8[1] = v46;
        return result;
      }

LABEL_18:
      v44 = 0;
      v45 = 0xE000000000000000;
      goto LABEL_19;
    }

    if (v34 != 5)
    {
      v37 = sub_1E65DA808();
      a5 = v110;
      if (!*(v110 + 16))
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }

    sub_1E5DFD1CC(v107, v24, &qword_1ED076B98, &qword_1E65F78F8);
    v40 = v112;
    if ((*(v112 + 48))(v24, 1, v25) == 1)
    {
      result = sub_1E5DFE50C(v24, &qword_1ED076B98, &qword_1E65F78F8);
      *a8 = 0;
      a8[1] = 0;
      return result;
    }

    v57 = (*(v40 + 32))(v27, v24, v25);
    MEMORY[0x1EEE9AC00](v57);
    v99[-2] = v27;
    sub_1E641031C(sub_1E6428DAC, a9, MEMORY[0x1E69CBF30], v21);
    sub_1E5DFD1CC(v21, v19, &qword_1ED079478, &qword_1E66015C0);
    v59 = v105;
    v58 = v106;
    if ((*(v106 + 48))(v19, 1, v105) == 1)
    {
      sub_1E5DFE50C(v21, &qword_1ED079478, &qword_1E66015C0);
      v21 = v19;
    }

    else
    {
      (*(v58 + 32))(v104, v19, v59);
      v63 = sub_1E65DA808();
      if (*(a10 + 16))
      {
        v65 = sub_1E6215038(v63, v64);
        v67 = v66;
        v59 = v105;

        if (v67)
        {
          v68 = (*(a10 + 56) + 16 * v65);
          v70 = *v68;
          v69 = v68[1];

          v71 = sub_1E65D91D8();
          if (*(v71 + 16))
          {
            v72 = sub_1E6215038(v70, v69);
            v74 = v73;

            if (v74)
            {
              v75 = (*(v71 + 56) + 16 * v72);
              v77 = *v75;
              v76 = v75[1];
            }

            else
            {

              v77 = 0;
              v76 = 0xE000000000000000;
            }

            v59 = v105;
          }

          else
          {

            v77 = 0;
            v76 = 0xE000000000000000;
          }

          v113 = v77;
          v114 = v76;
          v90 = sub_1E65E5E58();
          v92 = v91;
          (*(v106 + 8))(v104, v59);
          sub_1E5DFE50C(v21, &qword_1ED079478, &qword_1E66015C0);
          *a8 = v90;
          a8[1] = v92;
          return (*(v112 + 8))(v27, v25);
        }
      }

      else
      {
      }

      (*(v106 + 8))(v104, v59);
    }

    sub_1E5DFE50C(v21, &qword_1ED079478, &qword_1E66015C0);
    *a8 = 0;
    a8[1] = 0;
    return (*(v112 + 8))(v27, v25);
  }

  if (!v34)
  {
    v37 = sub_1E65DA808();
    if (*(a5 + 16))
    {
      goto LABEL_16;
    }

LABEL_11:

    goto LABEL_18;
  }

  if (v34 == 1)
  {
    v37 = sub_1E65DA808();
    a5 = v111;
    if (*(v111 + 16))
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  result = sub_1E65DA808();
  v48 = HIBYTE(v47) & 0xF;
  v49 = result & 0xFFFFFFFFFFFFLL;
  if ((v47 & 0x2000000000000000) != 0)
  {
    v50 = HIBYTE(v47) & 0xF;
  }

  else
  {
    v50 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v50)
  {

    v51 = a8;
    goto LABEL_93;
  }

  v51 = a8;
  if ((v47 & 0x1000000000000000) != 0)
  {
    v115 = 0;
    v53 = sub_1E6426B88(result, v47, 10);
    v94 = v93;

    if (v94)
    {
      goto LABEL_93;
    }

LABEL_104:
    sub_1E65E5BF8();
    sub_1E65E5BE8();
    v113 = v53;
    sub_1E65E5BC8();
    sub_1E65E5BE8();
    sub_1E65E5C18();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v96 = [objc_opt_self() bundleForClass_];
    (*(v101 + 16))(v100, v103, v102);
    result = sub_1E65E5D48();
    *v51 = result;
    v51[1] = v97;
    return result;
  }

  if ((v47 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v47 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1E65E6908();
      v49 = v98;
    }

    v52 = *result;
    if (v52 == 43)
    {
      if (v49 >= 1)
      {
        if (--v49)
        {
          v53 = 0;
          if (result)
          {
            v78 = (result + 1);
            while (1)
            {
              v79 = *v78 - 48;
              if (v79 > 9)
              {
                goto LABEL_91;
              }

              v80 = 10 * v53;
              if ((v53 * 10) >> 64 != (10 * v53) >> 63)
              {
                goto LABEL_91;
              }

              v53 = v80 + v79;
              if (__OFADD__(v80, v79))
              {
                goto LABEL_91;
              }

              ++v78;
              if (!--v49)
              {
                goto LABEL_92;
              }
            }
          }

          goto LABEL_90;
        }

        goto LABEL_91;
      }

      goto LABEL_108;
    }

    if (v52 != 45)
    {
      if (v49)
      {
        v53 = 0;
        if (result)
        {
          while (1)
          {
            v84 = *result - 48;
            if (v84 > 9)
            {
              goto LABEL_91;
            }

            v85 = 10 * v53;
            if ((v53 * 10) >> 64 != (10 * v53) >> 63)
            {
              goto LABEL_91;
            }

            v53 = v85 + v84;
            if (__OFADD__(v85, v84))
            {
              goto LABEL_91;
            }

            ++result;
            if (!--v49)
            {
              goto LABEL_92;
            }
          }
        }

        goto LABEL_90;
      }

LABEL_91:
      v53 = 0;
      LOBYTE(v49) = 1;
LABEL_92:
      v115 = v49;
      v89 = v49;

      if (v89)
      {
LABEL_93:
        *v51 = 0;
        v51[1] = 0;
        return result;
      }

      goto LABEL_104;
    }

    if (v49 >= 1)
    {
      if (--v49)
      {
        v53 = 0;
        if (result)
        {
          v54 = (result + 1);
          while (1)
          {
            v55 = *v54 - 48;
            if (v55 > 9)
            {
              goto LABEL_91;
            }

            v56 = 10 * v53;
            if ((v53 * 10) >> 64 != (10 * v53) >> 63)
            {
              goto LABEL_91;
            }

            v53 = v56 - v55;
            if (__OFSUB__(v56, v55))
            {
              goto LABEL_91;
            }

            ++v54;
            if (!--v49)
            {
              goto LABEL_92;
            }
          }
        }

LABEL_90:
        LOBYTE(v49) = 0;
        goto LABEL_92;
      }

      goto LABEL_91;
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v113 = result;
  v114 = v47 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v48)
      {
        v53 = 0;
        v86 = &v113;
        while (1)
        {
          v87 = *v86 - 48;
          if (v87 > 9)
          {
            break;
          }

          v88 = 10 * v53;
          if ((v53 * 10) >> 64 != (10 * v53) >> 63)
          {
            break;
          }

          v53 = v88 + v87;
          if (__OFADD__(v88, v87))
          {
            break;
          }

          v86 = (v86 + 1);
          if (!--v48)
          {
            goto LABEL_90;
          }
        }
      }

      goto LABEL_91;
    }

    if (v48)
    {
      v49 = v48 - 1;
      if (v48 != 1)
      {
        v53 = 0;
        v60 = &v113 + 1;
        while (1)
        {
          v61 = *v60 - 48;
          if (v61 > 9)
          {
            break;
          }

          v62 = 10 * v53;
          if ((v53 * 10) >> 64 != (10 * v53) >> 63)
          {
            break;
          }

          v53 = v62 - v61;
          if (__OFSUB__(v62, v61))
          {
            break;
          }

          ++v60;
          if (!--v49)
          {
            goto LABEL_92;
          }
        }
      }

      goto LABEL_91;
    }

    goto LABEL_107;
  }

  if (v48)
  {
    v49 = v48 - 1;
    if (v48 != 1)
    {
      v53 = 0;
      v81 = &v113 + 1;
      while (1)
      {
        v82 = *v81 - 48;
        if (v82 > 9)
        {
          break;
        }

        v83 = 10 * v53;
        if ((v53 * 10) >> 64 != (10 * v53) >> 63)
        {
          break;
        }

        v53 = v83 + v82;
        if (__OFADD__(v83, v82))
        {
          break;
        }

        ++v81;
        if (!--v49)
        {
          goto LABEL_92;
        }
      }
    }

    goto LABEL_91;
  }

LABEL_109:
  __break(1u);
  return result;
}

BOOL sub_1E6416BB4()
{
  v0 = sub_1E65D9CF8();
  v1 = sub_1E65D91A8();
  v2 = *(v0 + 16);
  v3 = 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *(v0 + v3);
    v3 += 8;
  }

  while (v6 != v1);
  v7 = v4 != 0;

  return v7;
}

unint64_t sub_1E6416C60(uint64_t a1)
{
  sub_1E65DB048();
  v2 = MEMORY[0x1E699CFF0];
  sub_1E642906C(&qword_1EE2D6DB8, MEMORY[0x1E699CFF0], MEMORY[0x1E699D000]);
  v3 = sub_1E65E5B38();
  return sub_1E64176A0(a1, v3, MEMORY[0x1E699CFF0], &qword_1EE2D6DB0, v2, MEMORY[0x1E699D008]);
}

unint64_t sub_1E6416D34(uint64_t a1)
{
  sub_1E65DB0E8();
  v2 = MEMORY[0x1E699D028];
  sub_1E642906C(&qword_1ED079320, MEMORY[0x1E699D028], MEMORY[0x1E699D038]);
  v3 = sub_1E65E5B38();
  return sub_1E64176A0(a1, v3, MEMORY[0x1E699D028], &qword_1ED079328, v2, MEMORY[0x1E699D040]);
}

unint64_t sub_1E6416E08(uint64_t a1)
{
  sub_1E65E6D28();
  sub_1E65E0B38();
  v2 = sub_1E65E6D78();

  return sub_1E6417840(a1, v2);
}

unint64_t sub_1E6416E74(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  sub_1E5FED46C(&qword_1EE2D6B88, &qword_1ED074A08, &qword_1E65F3920, MEMORY[0x1E699DC20]);
  v2 = sub_1E65E5B38();

  return sub_1E64179A0(a1, v2);
}

unint64_t sub_1E6416F1C(double a1, double a2)
{
  sub_1E65E6D28();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x1E694E770](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x1E694E770](*&v5);
  v6 = sub_1E65E6D78();

  return sub_1E6417B64(v6, a1, a2);
}

unint64_t sub_1E6416FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v3);
  sub_1E65E5D78();
  v6 = sub_1E65E6D78();

  return sub_1E6417BDC(a1, a2, v3, v6);
}

unint64_t sub_1E6417048(uint64_t a1)
{
  v2 = sub_1E65E6818();

  return sub_1E6417D0C(a1, v2);
}

unint64_t sub_1E64170B8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  sub_1E65E6D28();
  a2(a1);
  sub_1E65E5D78();

  v6 = sub_1E65E6D78();
  return sub_1E6418080(a1, v6, a3);
}

unint64_t sub_1E6417154(uint64_t a1)
{
  sub_1E65E2BA8();
  v2 = MEMORY[0x1E699F568];
  sub_1E642906C(&qword_1ED079410, MEMORY[0x1E699F568], MEMORY[0x1E699F570]);
  v3 = sub_1E65E5B38();
  return sub_1E64176A0(a1, v3, MEMORY[0x1E699F568], &qword_1ED079418, v2, MEMORY[0x1E699F578]);
}

unint64_t sub_1E6417254(uint64_t a1)
{
  sub_1E65E6D28();
  sub_1E608E000(a1, v7);
  if (v9)
  {
    v5[0] = v7[0];
    v5[1] = v7[1];
    v6 = v8;
    MEMORY[0x1E694E740](1);
    sub_1E65E6838();
    sub_1E6009FC0(v5);
  }

  else
  {
    v2 = *&v7[0];
    MEMORY[0x1E694E740](0);
    MEMORY[0x1E694E740](v2);
  }

  v3 = sub_1E65E6D78();
  return sub_1E6417DD4(a1, v3);
}

unint64_t sub_1E6417318(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a3 & 1;
  sub_1E65E6D28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D40, &qword_1E65EED28);
  sub_1E637E76C();
  sub_1E65D7FC8();
  v6 = sub_1E65E6D78();
  return sub_1E6417F74(a1, a2, v5, v6);
}

unint64_t sub_1E64173CC(uint64_t a1)
{
  sub_1E65D76A8();
  v2 = MEMORY[0x1E6969530];
  sub_1E642906C(&qword_1ED079528, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  v3 = sub_1E65E5B38();
  return sub_1E64176A0(a1, v3, MEMORY[0x1E6969530], &qword_1EE2D71D0, v2, MEMORY[0x1E6969550]);
}

unint64_t sub_1E64174A0(uint64_t a1)
{
  sub_1E65D8EF8();
  v2 = MEMORY[0x1E69CBBF8];
  sub_1E642906C(&qword_1ED0792C0, MEMORY[0x1E69CBBF8], MEMORY[0x1E69CBC00]);
  v3 = sub_1E65E5B38();
  return sub_1E64176A0(a1, v3, MEMORY[0x1E69CBBF8], &qword_1ED0792C8, v2, MEMORY[0x1E69CBC08]);
}

unint64_t sub_1E64175A0(uint64_t a1)
{
  sub_1E65D96F8();
  v2 = MEMORY[0x1E69CC278];
  sub_1E642906C(&qword_1ED074190, MEMORY[0x1E69CC278], MEMORY[0x1E69CC280]);
  v3 = sub_1E65E5B38();
  return sub_1E64176A0(a1, v3, MEMORY[0x1E69CC278], &qword_1ED0763C8, v2, MEMORY[0x1E69CC290]);
}

unint64_t sub_1E64176A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_1E642906C(v23, v24, v25);
      v19 = sub_1E65E5B98();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_1E6417840(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E65E0B48() - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1E6429004(*(v2 + 48) + v12 * v10, v8, MEMORY[0x1E699DD40]);
      v13 = MEMORY[0x1E6948530](v8, a1);
      sub_1E6428F80(v8, MEMORY[0x1E699DD40]);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1E64179A0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
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
      sub_1E5FED46C(&qword_1ED079300, &qword_1ED074A08, &qword_1E65F3920, MEMORY[0x1E699DC28]);
      v15 = sub_1E65E5B98();
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

unint64_t sub_1E6417B64(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E6417BDC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(v13 + 16);
      if (v16 <= 1)
      {
        if (v16)
        {
          if (a3 != 1)
          {
            goto LABEL_4;
          }
        }

        else if (a3)
        {
          goto LABEL_4;
        }
      }

      else if (v16 == 2)
      {
        if (a3 != 2)
        {
          goto LABEL_4;
        }
      }

      else if (v16 == 3)
      {
        if (a3 != 3)
        {
          goto LABEL_4;
        }
      }

      else if (a3 != 4)
      {
        goto LABEL_4;
      }

      v17 = v14 == a1 && v15 == a2;
      if (v17 || (sub_1E65E6C18() & 1) != 0)
      {
        return v7;
      }

LABEL_4:
      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1E6417D0C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1E604FBF8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E694E230](v9, a1);
      sub_1E6009FC0(v9);
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

unint64_t sub_1E6417DD4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1E608E000(*(v2 + 48) + 48 * v4, v16);
      sub_1E608E000(v16, v12);
      sub_1E608E000(a1, v13);
      if (v12[40])
      {
        sub_1E608E000(v12, v11);
        if (v15)
        {
          v9[0] = v13[0];
          v9[1] = v13[1];
          v10 = v14;
          v7 = MEMORY[0x1E694E230](v11, v9);
          sub_1E6009FC0(v9);
          sub_1E608E17C(v16);
          sub_1E6009FC0(v11);
          if (v7)
          {
            goto LABEL_14;
          }

LABEL_12:
          sub_1E608E17C(v12);
          goto LABEL_5;
        }

        sub_1E608E17C(v16);
        sub_1E6009FC0(v11);
      }

      else
      {
        sub_1E608E17C(v16);
        sub_1E608E000(v12, v11);
        if ((v15 & 1) == 0)
        {
          if (v11[0] == *&v13[0])
          {
LABEL_14:
            sub_1E608E17C(v12);
            return v4;
          }

          goto LABEL_12;
        }
      }

      sub_1E5DFE50C(v12, &qword_1ED074210, &qword_1E65EFDF8);
LABEL_5:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1E6417F74(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1E6217698();
    sub_1E6069558();
    do
    {
      if (sub_1E65D7FD8())
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1E6418080(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    while (1)
    {
      v9 = a3(*(*(v3 + 48) + v5));
      v11 = v10;
      if (v9 == a3(a1) && v11 == v12)
      {
        break;
      }

      v14 = sub_1E65E6C18();

      if ((v14 & 1) == 0)
      {
        v5 = (v5 + 1) & v8;
        if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

double sub_1E6418198@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1E6215038(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E642342C();
      v10 = v14;
    }

    v11 = *(v10 + 56) + 40 * v8;
    v12 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v12;
    *(a3 + 32) = *(v11 + 32);
    sub_1E641EDA0(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1E641824C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1E5E2575C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6423C40();
      v10 = v20;
    }

    sub_1E5E0476C(*(*(v10 + 48) + 16 * v8), *(*(v10 + 48) + 16 * v8 + 8));
    v11 = *(v10 + 56);
    v12 = type metadata accessor for NavigationControllerRoutingContext(0);
    v19 = *(v12 - 8);
    sub_1E5E24EEC(v11 + *(v19 + 72) * v8, a3, type metadata accessor for NavigationControllerRoutingContext);
    sub_1E641F10C(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for NavigationControllerRoutingContext(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1E64183B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = sub_1E6416FB4(a1, a2, a3);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    v21 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6424024();
      v11 = v21;
    }

    sub_1E6001C2C(*(*(v11 + 48) + 24 * v9), *(*(v11 + 48) + 24 * v9 + 8), *(*(v11 + 48) + 24 * v9 + 16));
    v12 = *(v11 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a4, v12 + *(v20 + 72) * v9, v13);
    sub_1E641F594(v9, v11);
    *v5 = v11;
    v14 = *(v20 + 56);
    v15 = a4;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a4;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_1E6418548@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1E6417254(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6424340();
      v9 = v13;
    }

    sub_1E608E17C(*(v9 + 48) + 48 * v7);
    v10 = (*(v9 + 56) + 48 * v7);
    v11 = v10[1];
    *a2 = *v10;
    *(a2 + 16) = v11;
    *(a2 + 25) = *(v10 + 25);
    sub_1E641F7E0(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = -1;
  }

  return result;
}

uint64_t sub_1E641860C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1E6416E74(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E642511C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_1E65DAFD8();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1E641FBF8(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_1E65DAFD8();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1E64187B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_1E6215038(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E64257C4(a3, a4, a5, a6);
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v27 = *(v20 - 8);
    (*(v27 + 32))(a7, v19 + *(v27 + 72) * v16, v20);
    sub_1E641FF40(v16, v18, a3, a4);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t sub_1E6418960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1E6215038(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6425A40();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1E65DBD88();
    v19 = *(v12 - 8);
    sub_1E5E24EEC(v11 + *(v19 + 72) * v8, a3, MEMORY[0x1E699D2D0]);
    sub_1E64203F0(v8, v10, MEMORY[0x1E699D2D0]);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1E65DBD88();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1E6418AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1E6215038(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6426550(MEMORY[0x1E699EC68], &qword_1ED0793F8, &qword_1E6601560);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1E65E3468();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1E64203F0(v8, v10, MEMORY[0x1E699EC68]);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1E65E3468();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1E6418C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1E6416E08(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6425CC0();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1E65E0B48();
    sub_1E6428F80(v10 + *(*(v11 - 8) + 72) * v7, MEMORY[0x1E699DD40]);
    v12 = *(v9 + 56);
    v13 = sub_1E65E0D48();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1E642013C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_1E65E0D48();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1E6418E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1E6215038(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6426550(MEMORY[0x1E699D318], &qword_1ED079278, &qword_1E6601408);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1E65DBED8();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1E64203F0(v8, v10, MEMORY[0x1E699D318]);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1E65DBED8();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1E6418FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1E6215038(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6426550(MEMORY[0x1E699ECC8], &qword_1ED079338, &qword_1E66014A0);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1E65E3508();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1E64203F0(v8, v10, MEMORY[0x1E699ECC8]);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1E65E3508();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1E6419174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1E6215038(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6426550(MEMORY[0x1E699EA38], &qword_1ED0793D8, &qword_1E6601540);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1E65E2F28();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1E64203F0(v8, v10, MEMORY[0x1E699EA38]);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1E65E2F28();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1E641931C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1E6215038(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6426550(MEMORY[0x1E699EB58], &qword_1ED079518, &qword_1E6601650);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1E65E31D8();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1E64203F0(v8, v10, MEMORY[0x1E699EB58]);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1E65E31D8();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1E64194C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1E6215038(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6426550(MEMORY[0x1E699F2C0], &qword_1ED079350, &qword_1E66014B8);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1E65E2498();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1E64203F0(v8, v10, MEMORY[0x1E699F2C0]);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1E65E2498();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1E641966C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1E6215038(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E6426550(MEMORY[0x1E699D450], &qword_1ED079380, &qword_1E66014E8);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1E65DFA08();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1E64203F0(v8, v10, MEMORY[0x1E699D450]);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1E65DFA08();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1E6419814(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0723C0, &qword_1E65EABF8);
  v38 = v4;
  result = sub_1E65E6A18();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_1E604FBF8(v27, &v39);
      }

      sub_1E65E6D28();
      sub_1E65E5D78();
      result = sub_1E65E6D78();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1E6419AF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079298, &qword_1E6601428);
  result = sub_1E65E6A18();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(v5 + 56) + 40 * v22;
      if (v4)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v37 = *(v24 + 32);
        v35 = v25;
        v36 = v26;
      }

      else
      {
        sub_1E604FBF8(v24, &v35);
      }

      sub_1E65E6D28();
      sub_1E65D9228();
      sub_1E65E5D78();

      result = sub_1E65E6D78();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v23;
      v16 = *(v7 + 56) + 40 * v15;
      v17 = v35;
      v18 = v36;
      *(v16 + 32) = v37;
      *v16 = v17;
      *(v16 + 16) = v18;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1E6419E3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079268, &qword_1E66013F8);
  v37 = v4;
  result = sub_1E65E6A18();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1E65E6D28();
      sub_1E65E5D78();
      result = sub_1E65E6D78();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1E641A0FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v38 = v7;
  result = sub_1E65E6A18();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    v37 = v8;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v8 + 56) + 8 * v23);
      if ((v38 & 1) == 0)
      {

        a5(v27);
      }

      sub_1E65E6D28();
      sub_1E65E5D78();
      result = sub_1E65E6D78();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v8 = v37;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_33;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero(v12, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_33:
  *v6 = v10;
  return result;
}

uint64_t sub_1E641A3AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795D8, &qword_1E6601708);
  v33 = v4;
  result = sub_1E65E6A18();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_1E65E6D28();
      sub_1E65E5D78();
      result = sub_1E65E6D78();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}