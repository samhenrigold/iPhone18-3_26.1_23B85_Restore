uint64_t sub_1D188B1C8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for StaticService(0);
  v47 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v41 - v11;
  v53 = sub_1D1E66A7C();
  v12 = *(v53 - 8);
  v13 = MEMORY[0x1EEE9AC00](v53);
  v52 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v41 - v15;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AB8, &qword_1D1E7E7A0);
  result = sub_1D1E68BCC();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v43 = v12 + 16;
  v44 = a1;
  v51 = v12 + 32;
  v20 = result + 64;
  v41 = v12;
  v42 = a4;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v48 = (v18 - 1) & v18;
LABEL_16:
    v24 = v21 | (v19 << 6);
    v25 = a4[6];
    v50 = *(v12 + 72);
    v26 = v45;
    v27 = v53;
    (*(v12 + 16))(v45, v25 + v50 * v24, v53);
    v28 = a4[7];
    v49 = *(v47 + 72);
    v29 = v28 + v49 * v24;
    v30 = v46;
    sub_1D18921C8(v29, v46, type metadata accessor for StaticService);
    v31 = *(v12 + 32);
    v31(v52, v26, v27);
    sub_1D1892230(v30, v54, type metadata accessor for StaticService);
    sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
    result = sub_1D1E676DC();
    v32 = -1 << *(v17 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
    {
      v36 = 0;
      v37 = (63 - v32) >> 6;
      a1 = v44;
      while (++v34 != v37 || (v36 & 1) == 0)
      {
        v38 = v34 == v37;
        if (v34 == v37)
        {
          v34 = 0;
        }

        v36 |= v38;
        v39 = *(v20 + 8 * v34);
        if (v39 != -1)
        {
          v35 = __clz(__rbit64(~v39)) + (v34 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v35 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
    a1 = v44;
LABEL_26:
    *(v20 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    v31((*(v17 + 48) + v35 * v50), v52, v53);
    result = sub_1D1892230(v54, *(v17 + 56) + v35 * v49, type metadata accessor for StaticService);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v12 = v41;
    a4 = v42;
    v18 = v48;
    if (!a3)
    {
      return v17;
    }
  }

  v22 = v19;
  while (1)
  {
    v19 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v23 = a1[v19];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v48 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D188B630(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for StaticServiceGroup(0);
  v47 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v41 - v11;
  v53 = sub_1D1E66A7C();
  v12 = *(v53 - 8);
  v13 = MEMORY[0x1EEE9AC00](v53);
  v52 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v41 - v15;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A88, &qword_1D1E6E7D8);
  result = sub_1D1E68BCC();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v43 = v12 + 16;
  v44 = a1;
  v51 = v12 + 32;
  v20 = result + 64;
  v41 = v12;
  v42 = a4;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v48 = (v18 - 1) & v18;
LABEL_16:
    v24 = v21 | (v19 << 6);
    v25 = a4[6];
    v50 = *(v12 + 72);
    v26 = v45;
    v27 = v53;
    (*(v12 + 16))(v45, v25 + v50 * v24, v53);
    v28 = a4[7];
    v49 = *(v47 + 72);
    v29 = v28 + v49 * v24;
    v30 = v46;
    sub_1D18921C8(v29, v46, type metadata accessor for StaticServiceGroup);
    v31 = *(v12 + 32);
    v31(v52, v26, v27);
    sub_1D1892230(v30, v54, type metadata accessor for StaticServiceGroup);
    sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
    result = sub_1D1E676DC();
    v32 = -1 << *(v17 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
    {
      v36 = 0;
      v37 = (63 - v32) >> 6;
      a1 = v44;
      while (++v34 != v37 || (v36 & 1) == 0)
      {
        v38 = v34 == v37;
        if (v34 == v37)
        {
          v34 = 0;
        }

        v36 |= v38;
        v39 = *(v20 + 8 * v34);
        if (v39 != -1)
        {
          v35 = __clz(__rbit64(~v39)) + (v34 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v35 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
    a1 = v44;
LABEL_26:
    *(v20 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    v31((*(v17 + 48) + v35 * v50), v52, v53);
    result = sub_1D1892230(v54, *(v17 + 56) + v35 * v49, type metadata accessor for StaticServiceGroup);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v12 = v41;
    a4 = v42;
    v18 = v48;
    if (!a3)
    {
      return v17;
    }
  }

  v22 = v19;
  while (1)
  {
    v19 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v23 = a1[v19];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v48 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D188BA98(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for StaticMediaProfile(0);
  v47 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v41 - v11;
  v53 = sub_1D1E66A7C();
  v12 = *(v53 - 8);
  v13 = MEMORY[0x1EEE9AC00](v53);
  v52 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v41 - v15;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AF8, &unk_1D1E6E840);
  result = sub_1D1E68BCC();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v43 = v12 + 16;
  v44 = a1;
  v51 = v12 + 32;
  v20 = result + 64;
  v41 = v12;
  v42 = a4;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v48 = (v18 - 1) & v18;
LABEL_16:
    v24 = v21 | (v19 << 6);
    v25 = a4[6];
    v50 = *(v12 + 72);
    v26 = v45;
    v27 = v53;
    (*(v12 + 16))(v45, v25 + v50 * v24, v53);
    v28 = a4[7];
    v49 = *(v47 + 72);
    v29 = v28 + v49 * v24;
    v30 = v46;
    sub_1D18921C8(v29, v46, type metadata accessor for StaticMediaProfile);
    v31 = *(v12 + 32);
    v31(v52, v26, v27);
    sub_1D1892230(v30, v54, type metadata accessor for StaticMediaProfile);
    sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
    result = sub_1D1E676DC();
    v32 = -1 << *(v17 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
    {
      v36 = 0;
      v37 = (63 - v32) >> 6;
      a1 = v44;
      while (++v34 != v37 || (v36 & 1) == 0)
      {
        v38 = v34 == v37;
        if (v34 == v37)
        {
          v34 = 0;
        }

        v36 |= v38;
        v39 = *(v20 + 8 * v34);
        if (v39 != -1)
        {
          v35 = __clz(__rbit64(~v39)) + (v34 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v35 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
    a1 = v44;
LABEL_26:
    *(v20 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    v31((*(v17 + 48) + v35 * v50), v52, v53);
    result = sub_1D1892230(v54, *(v17 + 56) + v35 * v49, type metadata accessor for StaticMediaProfile);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v12 = v41;
    a4 = v42;
    v18 = v48;
    if (!a3)
    {
      return v17;
    }
  }

  v22 = v19;
  while (1)
  {
    v19 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v23 = a1[v19];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v48 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D188BF00(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for StaticMediaSystem(0);
  v47 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v41 - v11;
  v53 = sub_1D1E66A7C();
  v12 = *(v53 - 8);
  v13 = MEMORY[0x1EEE9AC00](v53);
  v52 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v41 - v15;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B00, &unk_1D1E7BBF0);
  result = sub_1D1E68BCC();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v43 = v12 + 16;
  v44 = a1;
  v51 = v12 + 32;
  v20 = result + 64;
  v41 = v12;
  v42 = a4;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v48 = (v18 - 1) & v18;
LABEL_16:
    v24 = v21 | (v19 << 6);
    v25 = a4[6];
    v50 = *(v12 + 72);
    v26 = v45;
    v27 = v53;
    (*(v12 + 16))(v45, v25 + v50 * v24, v53);
    v28 = a4[7];
    v49 = *(v47 + 72);
    v29 = v28 + v49 * v24;
    v30 = v46;
    sub_1D18921C8(v29, v46, type metadata accessor for StaticMediaSystem);
    v31 = *(v12 + 32);
    v31(v52, v26, v27);
    sub_1D1892230(v30, v54, type metadata accessor for StaticMediaSystem);
    sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
    result = sub_1D1E676DC();
    v32 = -1 << *(v17 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
    {
      v36 = 0;
      v37 = (63 - v32) >> 6;
      a1 = v44;
      while (++v34 != v37 || (v36 & 1) == 0)
      {
        v38 = v34 == v37;
        if (v34 == v37)
        {
          v34 = 0;
        }

        v36 |= v38;
        v39 = *(v20 + 8 * v34);
        if (v39 != -1)
        {
          v35 = __clz(__rbit64(~v39)) + (v34 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v35 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
    a1 = v44;
LABEL_26:
    *(v20 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    v31((*(v17 + 48) + v35 * v50), v52, v53);
    result = sub_1D1892230(v54, *(v17 + 56) + v35 * v49, type metadata accessor for StaticMediaSystem);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v12 = v41;
    a4 = v42;
    v18 = v48;
    if (!a3)
    {
      return v17;
    }
  }

  v22 = v19;
  while (1)
  {
    v19 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v23 = a1[v19];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v48 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D188C368(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for StaticCameraProfile(0);
  v47 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v41 - v11;
  v53 = sub_1D1E66A7C();
  v12 = *(v53 - 8);
  v13 = MEMORY[0x1EEE9AC00](v53);
  v52 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v41 - v15;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B30, &qword_1D1E6E878);
  result = sub_1D1E68BCC();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v43 = v12 + 16;
  v44 = a1;
  v51 = v12 + 32;
  v20 = result + 64;
  v41 = v12;
  v42 = a4;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v48 = (v18 - 1) & v18;
LABEL_16:
    v24 = v21 | (v19 << 6);
    v25 = a4[6];
    v50 = *(v12 + 72);
    v26 = v45;
    v27 = v53;
    (*(v12 + 16))(v45, v25 + v50 * v24, v53);
    v28 = a4[7];
    v49 = *(v47 + 72);
    v29 = v28 + v49 * v24;
    v30 = v46;
    sub_1D18921C8(v29, v46, type metadata accessor for StaticCameraProfile);
    v31 = *(v12 + 32);
    v31(v52, v26, v27);
    sub_1D1892230(v30, v54, type metadata accessor for StaticCameraProfile);
    sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
    result = sub_1D1E676DC();
    v32 = -1 << *(v17 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
    {
      v36 = 0;
      v37 = (63 - v32) >> 6;
      a1 = v44;
      while (++v34 != v37 || (v36 & 1) == 0)
      {
        v38 = v34 == v37;
        if (v34 == v37)
        {
          v34 = 0;
        }

        v36 |= v38;
        v39 = *(v20 + 8 * v34);
        if (v39 != -1)
        {
          v35 = __clz(__rbit64(~v39)) + (v34 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v35 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
    a1 = v44;
LABEL_26:
    *(v20 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    v31((*(v17 + 48) + v35 * v50), v52, v53);
    result = sub_1D1892230(v54, *(v17 + 56) + v35 * v49, type metadata accessor for StaticCameraProfile);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v12 = v41;
    a4 = v42;
    v18 = v48;
    if (!a3)
    {
      return v17;
    }
  }

  v22 = v19;
  while (1)
  {
    v19 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v23 = a1[v19];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v48 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D188C7D0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for StaticActionSet(0);
  v47 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v41 - v11;
  v53 = sub_1D1E66A7C();
  v12 = *(v53 - 8);
  v13 = MEMORY[0x1EEE9AC00](v53);
  v52 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v41 - v15;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B08, &unk_1D1E6E850);
  result = sub_1D1E68BCC();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v43 = v12 + 16;
  v44 = a1;
  v51 = v12 + 32;
  v20 = result + 64;
  v41 = v12;
  v42 = a4;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v48 = (v18 - 1) & v18;
LABEL_16:
    v24 = v21 | (v19 << 6);
    v25 = a4[6];
    v50 = *(v12 + 72);
    v26 = v45;
    v27 = v53;
    (*(v12 + 16))(v45, v25 + v50 * v24, v53);
    v28 = a4[7];
    v49 = *(v47 + 72);
    v29 = v28 + v49 * v24;
    v30 = v46;
    sub_1D18921C8(v29, v46, type metadata accessor for StaticActionSet);
    v31 = *(v12 + 32);
    v31(v52, v26, v27);
    sub_1D1892230(v30, v54, type metadata accessor for StaticActionSet);
    sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
    result = sub_1D1E676DC();
    v32 = -1 << *(v17 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
    {
      v36 = 0;
      v37 = (63 - v32) >> 6;
      a1 = v44;
      while (++v34 != v37 || (v36 & 1) == 0)
      {
        v38 = v34 == v37;
        if (v34 == v37)
        {
          v34 = 0;
        }

        v36 |= v38;
        v39 = *(v20 + 8 * v34);
        if (v39 != -1)
        {
          v35 = __clz(__rbit64(~v39)) + (v34 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v35 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
    a1 = v44;
LABEL_26:
    *(v20 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    v31((*(v17 + 48) + v35 * v50), v52, v53);
    result = sub_1D1892230(v54, *(v17 + 56) + v35 * v49, type metadata accessor for StaticActionSet);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v12 = v41;
    a4 = v42;
    v18 = v48;
    if (!a3)
    {
      return v17;
    }
  }

  v22 = v19;
  while (1)
  {
    v19 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v23 = a1[v19];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v48 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D188CC38(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for StaticAccessory(0);
  v47 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v41 - v11;
  v53 = sub_1D1E66A7C();
  v12 = *(v53 - 8);
  v13 = MEMORY[0x1EEE9AC00](v53);
  v52 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v41 - v15;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A80, &qword_1D1E6E7D0);
  result = sub_1D1E68BCC();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v43 = v12 + 16;
  v44 = a1;
  v51 = v12 + 32;
  v20 = result + 64;
  v41 = v12;
  v42 = a4;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v48 = (v18 - 1) & v18;
LABEL_16:
    v24 = v21 | (v19 << 6);
    v25 = a4[6];
    v50 = *(v12 + 72);
    v26 = v45;
    v27 = v53;
    (*(v12 + 16))(v45, v25 + v50 * v24, v53);
    v28 = a4[7];
    v49 = *(v47 + 72);
    v29 = v28 + v49 * v24;
    v30 = v46;
    sub_1D18921C8(v29, v46, type metadata accessor for StaticAccessory);
    v31 = *(v12 + 32);
    v31(v52, v26, v27);
    sub_1D1892230(v30, v54, type metadata accessor for StaticAccessory);
    sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
    result = sub_1D1E676DC();
    v32 = -1 << *(v17 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
    {
      v36 = 0;
      v37 = (63 - v32) >> 6;
      a1 = v44;
      while (++v34 != v37 || (v36 & 1) == 0)
      {
        v38 = v34 == v37;
        if (v34 == v37)
        {
          v34 = 0;
        }

        v36 |= v38;
        v39 = *(v20 + 8 * v34);
        if (v39 != -1)
        {
          v35 = __clz(__rbit64(~v39)) + (v34 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v35 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
    a1 = v44;
LABEL_26:
    *(v20 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    v31((*(v17 + 48) + v35 * v50), v52, v53);
    result = sub_1D1892230(v54, *(v17 + 56) + v35 * v49, type metadata accessor for StaticAccessory);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v12 = v41;
    a4 = v42;
    v18 = v48;
    if (!a3)
    {
      return v17;
    }
  }

  v22 = v19;
  while (1)
  {
    v19 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v23 = a1[v19];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v48 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D188D0A0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v62 = sub_1D1E66A7C();
  v59 = *(v62 - 8);
  v8 = MEMORY[0x1EEE9AC00](v62);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v51 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C28, &unk_1D1E7BBE0);
  result = sub_1D1E68BCC();
  v61 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v53 = v59 + 16;
  v54 = a1;
  v60 = v59 + 32;
  v15 = v61 + 64;
  v52 = a4;
  v55 = v10;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v57 = (v13 - 1) & v13;
LABEL_16:
    v19 = v16 | (v14 << 6);
    v20 = a4[6];
    v21 = v59;
    v58 = *(v59 + 72);
    v22 = v56;
    v23 = v62;
    (*(v59 + 16))(v56, v20 + v58 * v19, v62);
    v24 = (a4[7] + (v19 << 7));
    v25 = v24[3];
    v27 = *v24;
    v26 = v24[1];
    v66 = v24[2];
    v67 = v25;
    v64 = v27;
    v65 = v26;
    v28 = v24[7];
    v30 = v24[4];
    v29 = v24[5];
    v70 = v24[6];
    v71 = v28;
    v68 = v30;
    v69 = v29;
    v31 = *(v21 + 32);
    v32 = v55;
    v31(v55, v22, v23);
    v33 = v61;
    sub_1D1741C08(&v64, &v63, &qword_1EC642C30, &qword_1D1E6E980);
    sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
    result = sub_1D1E676DC();
    v34 = -1 << *(v33 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v15 + 8 * (v35 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v34) >> 6;
      a1 = v54;
      while (++v36 != v39 || (v38 & 1) == 0)
      {
        v40 = v36 == v39;
        if (v36 == v39)
        {
          v36 = 0;
        }

        v38 |= v40;
        v41 = *(v15 + 8 * v36);
        if (v41 != -1)
        {
          v37 = __clz(__rbit64(~v41)) + (v36 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v15 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
    a1 = v54;
LABEL_26:
    *(v15 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v42 = v61;
    result = (v31)(*(v61 + 48) + v37 * v58, v32, v62);
    v43 = (*(v42 + 56) + (v37 << 7));
    v45 = v70;
    v44 = v71;
    v46 = v69;
    v43[4] = v68;
    v43[5] = v46;
    v43[6] = v45;
    v43[7] = v44;
    v48 = v66;
    v47 = v67;
    v49 = v65;
    *v43 = v64;
    v43[1] = v49;
    v43[2] = v48;
    v43[3] = v47;
    ++*(v42 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v52;
    v13 = v57;
    if (!a3)
    {
      return v61;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v61;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v57 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D188D47C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1D1E66A7C();
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v40 - v12;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642968, &qword_1D1E6E6C8);
  result = sub_1D1E68BCC();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v43 = v50 + 16;
  v44 = result;
  v17 = v50 + 32;
  v18 = result + 64;
  v45 = a1;
  v41 = a4;
  v42 = a2;
  while (v15)
  {
    v19 = v17;
    v20 = v11;
    v21 = __clz(__rbit64(v15));
    v47 = (v15 - 1) & v15;
LABEL_16:
    v24 = v21 | (v16 << 6);
    v25 = a4[6];
    v27 = v50;
    v26 = v51;
    v49 = *(v50 + 72);
    v28 = v46;
    (*(v50 + 16))(v46, v25 + v49 * v24, v51);
    v48 = *(a4[7] + 8 * v24);
    v29 = *(v27 + 32);
    v11 = v20;
    v30 = v20;
    v17 = v19;
    v29(v30, v28, v26);
    v14 = v44;
    sub_1D174A5FC(qword_1EE07DD78, MEMORY[0x1E69695B8]);
    result = sub_1D1E676DC();
    v31 = -1 << *(v14 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v31) >> 6;
      a1 = v45;
      a2 = v42;
      while (++v33 != v36 || (v35 & 1) == 0)
      {
        v37 = v33 == v36;
        if (v33 == v36)
        {
          v33 = 0;
        }

        v35 |= v37;
        v38 = *(v18 + 8 * v33);
        if (v38 != -1)
        {
          v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
    a1 = v45;
    a2 = v42;
LABEL_26:
    *(v18 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    result = (v29)(*(v14 + 48) + v34 * v49, v11, v51);
    *(*(v14 + 56) + 8 * v34) = v48;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v41;
    v15 = v47;
    if (!a3)
    {
      return v14;
    }
  }

  v22 = v16;
  while (1)
  {
    v16 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v23 = a1[v16];
    ++v22;
    if (v23)
    {
      v19 = v17;
      v20 = v11;
      v21 = __clz(__rbit64(v23));
      v47 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D188D804(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for StaticMatterDevice(0);
  v36 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v34 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B98, &unk_1D1E6E8E0);
  result = sub_1D1E68BCC();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v34 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v20 = v17 | (v15 << 6);
    v21 = a4[7];
    v22 = *(a4[6] + 8 * v20);
    v23 = v35;
    v24 = *(v36 + 72);
    sub_1D18921C8(v21 + v24 * v20, v35, type metadata accessor for StaticMatterDevice);
    sub_1D1892230(v23, v37, type metadata accessor for StaticMatterDevice);
    result = sub_1D1E691FC();
    v25 = -1 << *(v13 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v16 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v13 + 48) + 8 * v28) = v22;
    result = sub_1D1892230(v37, *(v13 + 56) + v28 * v24, type metadata accessor for StaticMatterDevice);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v34;
    if (!a3)
    {
      return v13;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D188DB08(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642978, &unk_1D1E7BC00);
  result = sub_1D1E68BCC();
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
  v11 = result + 64;
  v33 = v4;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v34 = (v9 - 1) & v9;
LABEL_16:
    v15 = v12 | (v10 << 6);
    v16 = *(*(v4 + 48) + 8 * v15);
    v17 = *(v4 + 56) + 24 * v15;
    v19 = *v17;
    v18 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = v16;
    sub_1D1741830(v19, v18, v20);
    result = sub_1D1E684EC();
    v22 = -1 << *(v8 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v11 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v11 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v8 + 48) + 8 * v25) = v21;
    v30 = *(v8 + 56) + 24 * v25;
    *v30 = v19;
    *(v30 + 8) = v18;
    *(v30 + 16) = v20;
    ++*(v8 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    v9 = v34;
    if (!v5)
    {
      return v8;
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
      return v8;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v34 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D188DD5C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6429D0, &qword_1D1E7E660);
  result = sub_1D1E68BCC();
  v8 = a2;
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v35 = a2;
  v36 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v37 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(v4 + 56) + 32 * v16;
    v20 = *v18;
    v19 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    v23 = v17;
    sub_1D17418FC(v20, v19, v21, v22);
    result = sub_1D1E684EC();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
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
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(*(v9 + 48) + 8 * v27) = v23;
    v32 = *(v9 + 56) + 32 * v27;
    *v32 = v20;
    *(v32 + 8) = v19;
    *(v32 + 16) = v21;
    *(v32 + 24) = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v36;
    v10 = v37;
    v8 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v37 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1D188DFC4(uint64_t a1)
{
  v42 = sub_1D1E66A7C();
  v2 = *(v42 - 8);
  v3 = MEMORY[0x1EEE9AC00](v42);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v32 - v6;
  sub_1D1741C08(a1, v46, &qword_1EC649700, &qword_1D1E6E910);
  if (v47)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AD8, &qword_1D1E7BBC8);
    if (swift_dynamicCast())
    {
      v8 = v43;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D1741A30(v46, &qword_1EC649700, &qword_1D1E6E910);
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E696AD18]) init];
LABEL_6:
  v9 = [v8 objectEnumerator];
  if (v9)
  {
    v33 = v8;
    v10 = v9;
    v11 = [v9 allObjects];

    v12 = sub_1D1E67C1C();
    v35 = *(v12 + 16);
    if (v35)
    {
      v13 = 0;
      v36 = v12 + 32;
      v14 = MEMORY[0x1E69E7CC0];
      v15 = (v2 + 8);
      v34 = v12;
      while (v13 < *(v12 + 16))
      {
        v37 = v13;
        sub_1D1741970(v36 + 32 * v13, v49);
        sub_1D1741970(v49, v46);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AA8, &qword_1D1E7BA30);
        if (swift_dynamicCast())
        {
          v16 = v43;
          v40 = *(v43 + 16);
          if (v40)
          {
            v17 = 0;
            v38 = v43;
            v39 = v43 + 32;
            while (v17 < *(v16 + 16))
            {
              sub_1D17419CC(v39 + 40 * v17, v46);
              v41 = v17 + 1;
              v18 = (v14 + 4);
              v19 = -v14[2];
              v20 = -1;
              while (v19 + v20 != -1)
              {
                if (++v20 >= v14[2])
                {
                  __break(1u);
                  goto LABEL_29;
                }

                v21 = v14;
                v22 = v18 + 40;
                sub_1D17419CC(v18, &v43);
                v23 = v44;
                v24 = v45;
                __swift_project_boxed_opaque_existential_1(&v43, v44);
                (*(v24 + 56))(v23, v24);
                v25 = v47;
                v26 = v48;
                __swift_project_boxed_opaque_existential_1(v46, v47);
                (*(v26 + 56))(v25, v26);
                v27 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
                v28 = *v15;
                v29 = v42;
                (*v15)(v5, v42);
                v28(v7, v29);
                __swift_destroy_boxed_opaque_existential_1(&v43);
                v18 = v22;
                v14 = v21;
                if (v27)
                {
                  v16 = v38;
                  v17 = v41;
                  goto LABEL_16;
                }
              }

              sub_1D17419CC(v46, &v43);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v14 = sub_1D177DCF4(0, v14[2] + 1, 1, v14);
              }

              v16 = v38;
              v17 = v41;
              v31 = v14[2];
              v30 = v14[3];
              if (v31 >= v30 >> 1)
              {
                v14 = sub_1D177DCF4((v30 > 1), v31 + 1, 1, v14);
              }

              v14[2] = v31 + 1;
              sub_1D16EEE20(&v43, &v14[5 * v31 + 4]);
LABEL_16:
              __swift_destroy_boxed_opaque_existential_1(v46);
              if (v17 == v40)
              {
                goto LABEL_9;
              }
            }

            __break(1u);
            break;
          }

LABEL_9:
        }

        __swift_destroy_boxed_opaque_existential_1(v49);
        v13 = v37 + 1;
        v12 = v34;
        if (v37 + 1 == v35)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_29:
    }
  }

  else
  {
  }
}

void sub_1D188E494(uint64_t a1)
{
  v42 = sub_1D1E66A7C();
  v2 = *(v42 - 8);
  v3 = MEMORY[0x1EEE9AC00](v42);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v32 - v6;
  sub_1D1741C08(a1, v46, &qword_1EC649700, &qword_1D1E6E910);
  if (v47)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AD8, &qword_1D1E7BBC8);
    if (swift_dynamicCast())
    {
      v8 = v43;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D1741A30(v46, &qword_1EC649700, &qword_1D1E6E910);
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E696AD18]) init];
LABEL_6:
  v9 = [v8 objectEnumerator];
  if (v9)
  {
    v33 = v8;
    v10 = v9;
    v11 = [v9 allObjects];

    v12 = sub_1D1E67C1C();
    v35 = *(v12 + 16);
    if (v35)
    {
      v13 = 0;
      v36 = v12 + 32;
      v14 = MEMORY[0x1E69E7CC0];
      v15 = (v2 + 8);
      v34 = v12;
      while (v13 < *(v12 + 16))
      {
        v37 = v13;
        sub_1D1741970(v36 + 32 * v13, v49);
        sub_1D1741970(v49, v46);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AB0, &qword_1D1E7BA50);
        if (swift_dynamicCast())
        {
          v16 = v43;
          v40 = *(v43 + 16);
          if (v40)
          {
            v17 = 0;
            v38 = v43;
            v39 = v43 + 32;
            while (v17 < *(v16 + 16))
            {
              sub_1D17419CC(v39 + 40 * v17, v46);
              v41 = v17 + 1;
              v18 = (v14 + 4);
              v19 = -v14[2];
              v20 = -1;
              while (v19 + v20 != -1)
              {
                if (++v20 >= v14[2])
                {
                  __break(1u);
                  goto LABEL_29;
                }

                v21 = v14;
                v22 = v18 + 40;
                sub_1D17419CC(v18, &v43);
                v23 = v44;
                v24 = v45;
                __swift_project_boxed_opaque_existential_1(&v43, v44);
                (*(v24 + 64))(v23, v24);
                v25 = v47;
                v26 = v48;
                __swift_project_boxed_opaque_existential_1(v46, v47);
                (*(v26 + 64))(v25, v26);
                v27 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
                v28 = *v15;
                v29 = v42;
                (*v15)(v5, v42);
                v28(v7, v29);
                __swift_destroy_boxed_opaque_existential_1(&v43);
                v18 = v22;
                v14 = v21;
                if (v27)
                {
                  v16 = v38;
                  v17 = v41;
                  goto LABEL_16;
                }
              }

              sub_1D17419CC(v46, &v43);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v14 = sub_1D177DD18(0, v14[2] + 1, 1, v14);
              }

              v16 = v38;
              v17 = v41;
              v31 = v14[2];
              v30 = v14[3];
              if (v31 >= v30 >> 1)
              {
                v14 = sub_1D177DD18((v30 > 1), v31 + 1, 1, v14);
              }

              v14[2] = v31 + 1;
              sub_1D16EEE20(&v43, &v14[5 * v31 + 4]);
LABEL_16:
              __swift_destroy_boxed_opaque_existential_1(v46);
              if (v17 == v40)
              {
                goto LABEL_9;
              }
            }

            __break(1u);
            break;
          }

LABEL_9:
        }

        __swift_destroy_boxed_opaque_existential_1(v49);
        v13 = v37 + 1;
        v12 = v34;
        if (v37 + 1 == v35)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_29:
    }
  }

  else
  {
  }
}

uint64_t sub_1D188E964(uint64_t a1, uint64_t a2, void *a3)
{
  v4[135] = v3;
  v4[134] = a2;
  v4[133] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v4[136] = swift_task_alloc();
  v6 = sub_1D1E66A7C();
  v4[137] = v6;
  v7 = *(v6 - 8);
  v4[138] = v7;
  v4[139] = *(v7 + 64);
  v4[140] = swift_task_alloc();
  v4[141] = swift_task_alloc();
  v4[142] = swift_task_alloc();
  v4[143] = swift_task_alloc();
  v4[144] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AC8, &qword_1D1E7BB98);
  v4[145] = swift_task_alloc();
  v4[146] = swift_task_alloc();
  v4[147] = swift_task_alloc();
  v4[148] = swift_task_alloc();
  v4[149] = *a3;
  v4[150] = sub_1D1E67E1C();
  v4[151] = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();
  v4[152] = v9;
  v4[153] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D188EB40, v9, v8);
}

uint64_t sub_1D188EB40()
{
  v81 = (v0 + 912);
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1072);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + 1040) = MEMORY[0x1E69E7CC0];
  v83 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = 63 - v5;
  v8 = *(v0 + 1104);
  v9 = v7 >> 6;
  v80 = (v8 + 16);
  v86 = (v8 + 32);
  v77 = v8;
  v78 = v2;
  v82 = (v8 + 8);

  v10 = 0;
  v79 = v1;
  v76 = v9;
LABEL_4:
  v74 = v3;
  *(v0 + 1240) = v3;
  *(v0 + 1232) = 0;
  while (v6)
  {
    v11 = v10;
LABEL_17:
    v84 = *(v0 + 1176);
    v14 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v15 = v14 | (v11 << 6);
    (*(v77 + 16))(*(v0 + 1152), *(v78 + 48) + *(v77 + 72) * v15, *(v0 + 1096));
    v16 = (*(v78 + 56) + (v15 << 7));
    v17 = v16[4];
    v18 = v16[5];
    v19 = v16[7];
    *(v0 + 112) = v16[6];
    *(v0 + 128) = v19;
    *(v0 + 80) = v17;
    *(v0 + 96) = v18;
    v20 = *v16;
    v21 = v16[1];
    v22 = v16[3];
    *(v0 + 48) = v16[2];
    *(v0 + 64) = v22;
    *(v0 + 16) = v20;
    *(v0 + 32) = v21;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A50, &unk_1D1E7B910);
    v24 = (v84 + *(v23 + 48));
    (*(v77 + 32))();
    v25 = *(v0 + 64);
    v27 = *(v0 + 16);
    v26 = *(v0 + 32);
    v24[2] = *(v0 + 48);
    v24[3] = v25;
    *v24 = v27;
    v24[1] = v26;
    v28 = *(v0 + 128);
    v30 = *(v0 + 80);
    v29 = *(v0 + 96);
    v24[6] = *(v0 + 112);
    v24[7] = v28;
    v24[4] = v30;
    v24[5] = v29;
    (*(*(v23 - 8) + 56))(v84, 0, 1, v23);
    sub_1D1741C08(v0 + 16, v0 + 144, &qword_1EC642C30, &qword_1D1E6E980);
    v1 = v79;
    v9 = v76;
LABEL_18:
    v31 = *(v0 + 1184);
    sub_1D1891DC8(*(v0 + 1176), v31);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A50, &unk_1D1E7B910);
    *(v0 + 1248) = v32;
    v33 = *(v32 - 8);
    *(v0 + 1256) = v33;
    v34 = *(v33 + 48);
    *(v0 + 1264) = v34;
    *(v0 + 1272) = (v33 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v34(v31, 1, v32) == 1)
    {

      if (qword_1EC642200 != -1)
      {
        swift_once();
      }

      *(v0 + 1280) = qword_1EC6BE0C8;
      v61 = swift_task_alloc();
      *(v0 + 1288) = v61;
      *v61 = v0;
      v61[1] = sub_1D188F354;
      v62 = *(v0 + 1064);

      return sub_1D18A2E60(v0 + 1048, v62, v74);
    }

    v35 = *(v0 + 1184);
    v36 = *(v0 + 1144);
    v37 = *(v0 + 1096);
    v38 = (v35 + *(v32 + 48));
    v39 = v38[3];
    v41 = *v38;
    v40 = v38[1];
    *(v0 + 944) = v38[2];
    *(v0 + 960) = v39;
    *v81 = v41;
    *(v0 + 928) = v40;
    v42 = v38[7];
    v44 = v38[4];
    v43 = v38[5];
    *(v0 + 1008) = v38[6];
    *(v0 + 1024) = v42;
    *(v0 + 976) = v44;
    *(v0 + 992) = v43;
    sub_1D1741A30(v81, &qword_1EC642C30, &qword_1D1E6E980);
    (*v86)(v36, v35, v37);
    if (v1)
    {
      if (*(v1 + 16))
      {
        v45 = sub_1D1742188();
        if (v46)
        {
          v47 = *(v1 + 56) + 32 * v45;
          v49 = *(v47 + 16);
          v48 = *(v47 + 24);

          sub_1D1741C70(v49);
          v85 = v48;
          sub_1D1741C70(v48);
          if ((sub_1D186E41C() & 1) != 0 || !*(v1 + 16) || (sub_1D1742188(), (v50 & 1) == 0))
          {
            v67 = *(v0 + 1096);
            v70 = *(v0 + 1136);
            v66 = *v80;
            (*v80)();
            type metadata accessor for _CoordinationClassObject(0);
            v75 = swift_allocObject();
            v65 = OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id;
            (v66)(v75 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id, v70, v67);
            v53 = swift_task_alloc();
            *(v53 + 16) = v70;
            v68 = sub_1D18924D8(sub_1D18922C0, v53, MEMORY[0x1E69E7CC0]);
            v71 = *(v0 + 1136);

            *(v75 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarms) = v68;
            v54 = swift_task_alloc();
            *(v54 + 16) = v71;
            v55 = sub_1D1788104(sub_1D18922A0, v54, MEMORY[0x1E69E7CC0]);
            v56 = *(v0 + 1096);
            v72 = *(v0 + 1136);
            v57 = v55;

            v58 = v72;
            *(v75 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timers) = v57;
            *(v75 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarmError) = 1;
            *(v75 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timerError) = 1;
            v73 = *v82;
            v59 = (*v82)(v58, v56);
            MEMORY[0x1D3891220](v59);
            if (*((*(v0 + 1040) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 1040) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D1E67C5C();
            }

            v60 = *(v0 + 1144);
            v69 = *(v0 + 1096);
            sub_1D1E67CAC();

            sub_1D1757B18(v49);
            sub_1D1757B18(v85);
            v73(v60, v69);
            v3 = *(v0 + 1040);
            v1 = v79;
            goto LABEL_4;
          }

          sub_1D1757B18(v49);
          sub_1D1757B18(v48);
        }
      }
    }

    (*v82)(*(v0 + 1144), *(v0 + 1096));
  }

  if (v9 <= v10 + 1)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      v51 = *(v0 + 1176);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A50, &unk_1D1E7B910);
      (*(*(v52 - 8) + 56))(v51, 1, 1, v52);
      v6 = 0;
      v10 = v13;
      goto LABEL_18;
    }

    v6 = *(v83 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_17;
    }
  }

  __break(1u);
  v64 = *(v0 + 1096);

  (*v82)(v74 + v65, v64);

  return swift_deallocPartialClassInstance();
}

uint64_t sub_1D188F354()
{
  v1 = *v0;

  v2 = *(v1 + 1224);
  v3 = *(v1 + 1216);

  return MEMORY[0x1EEE6DFA0](sub_1D188F48C, v3, v2);
}

uint64_t sub_1D188F48C()
{
  v1 = *(v0 + 1072);

  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 1040) = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 32);
  *(v0 + 1416) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 64);
  v7 = *(v0 + 1232);

  v9 = 0;
  while (1)
  {
    *(v0 + 1304) = v2;
    *(v0 + 1296) = v7;
    v102 = v2;
    if (!v6)
    {
      break;
    }

    v10 = *(v0 + 1072);
LABEL_15:
    v15 = *(v0 + 1256);
    v16 = *(v0 + 1248);
    v17 = *(v0 + 1160);
    v18 = *(v0 + 1152);
    v19 = *(v0 + 1104);
    v20 = *(v0 + 1096);
    v101 = (v6 - 1) & v6;
    v21 = __clz(__rbit64(v6)) | (v9 << 6);
    (*(v19 + 16))(v18, *(v10 + 48) + *(v19 + 72) * v21, v20);
    v22 = (*(v10 + 56) + (v21 << 7));
    v23 = v22[4];
    v24 = v22[5];
    v25 = v22[7];
    *(v0 + 368) = v22[6];
    *(v0 + 384) = v25;
    *(v0 + 336) = v23;
    *(v0 + 352) = v24;
    v26 = *v22;
    v27 = v22[1];
    v28 = v22[3];
    *(v0 + 304) = v22[2];
    *(v0 + 320) = v28;
    *(v0 + 272) = v26;
    *(v0 + 288) = v27;
    v29 = (v17 + *(v16 + 48));
    (*(v19 + 32))(v17, v18, v20);
    v30 = *(v0 + 320);
    v32 = *(v0 + 272);
    v31 = *(v0 + 288);
    v29[2] = *(v0 + 304);
    v29[3] = v30;
    *v29 = v32;
    v29[1] = v31;
    v33 = *(v0 + 384);
    v35 = *(v0 + 336);
    v34 = *(v0 + 352);
    v29[6] = *(v0 + 368);
    v29[7] = v33;
    v29[4] = v35;
    v29[5] = v34;
    (*(v15 + 56))(v17, 0, 1, v16);
    sub_1D1741C08(v0 + 272, v0 + 400, &qword_1EC642C30, &qword_1D1E6E980);
    v36 = v101;
    v13 = v9;
LABEL_16:
    *(v0 + 1320) = v13;
    *(v0 + 1312) = v36;
    v37 = *(v0 + 1264);
    v38 = *(v0 + 1248);
    v39 = *(v0 + 1168);
    sub_1D1891DC8(*(v0 + 1160), v39);
    if (v37(v39, 1, v38) == 1)
    {

      v80 = swift_task_alloc();
      *(v0 + 1408) = v80;
      *v80 = v0;
      v80[1] = sub_1D18915B0;
      v81 = *(v0 + 1064);

      return sub_1D18A2E60(v0 + 1056, v81, v102);
    }

    v40 = *(v0 + 1128);
    v41 = *(v0 + 1104);
    v42 = (*(v0 + 1168) + *(*(v0 + 1248) + 48));
    v43 = *v42;
    v44 = v42[1];
    v45 = v42[3];
    *(v0 + 560) = v42[2];
    *(v0 + 576) = v45;
    *(v0 + 528) = v43;
    *(v0 + 544) = v44;
    v46 = v42[4];
    v47 = v42[5];
    v48 = v42[7];
    *(v0 + 624) = v42[6];
    *(v0 + 640) = v48;
    *(v0 + 592) = v46;
    *(v0 + 608) = v47;
    v49 = *(v41 + 32);
    *(v0 + 1328) = v49;
    *(v0 + 1336) = (v41 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v49(v40);
    v50 = sub_1D187845C(v40);
    *(v0 + 1344) = v50;
    v51 = *(v0 + 640);
    *(v0 + 1352) = v51;
    if (!v51)
    {
      v82 = v50;
      sub_1D1757B18(0);
      sub_1D1757B18(0);
      v83 = swift_task_alloc();
      *(v0 + 1360) = v83;
      *v83 = v0;
      v83[1] = sub_1D188FF00;

      return sub_1D1888C14(v82);
    }

    sub_1D1741C70(v51);
    sub_1D1757B18(v51);
    sub_1D1757B18(0);
    *(v0 + 1376) = MEMORY[0x1E69E7CC0];
    v52 = *(v0 + 648);
    *(v0 + 1384) = v52;
    if (!v52)
    {
      sub_1D1757B18(0);
      sub_1D1757B18(0);
      v84 = swift_task_alloc();
      *(v0 + 1392) = v84;
      *v84 = v0;
      v84[1] = sub_1D1890A48;
      v85 = *(v0 + 1344);

      return sub_1D1888258(v85);
    }

    sub_1D1741C70(v52);
    sub_1D1757B18(v52);
    sub_1D1757B18(0);

    v53 = *(v0 + 1384);
    v89 = *(v0 + 1352);
    v96 = *(v0 + 1296);
    v97 = *(v0 + 1376);
    v92 = *(v0 + 1096);
    v94 = *(v0 + 1120);
    v88 = (*(v0 + 1104) + 16);
    v99 = *v88;
    (*v88)();
    sub_1D1741C08(v0 + 528, v0 + 656, &qword_1EC642C30, &qword_1D1E6E980);
    sub_1D1757B18(v53);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1D1741C08(v0 + 528, v0 + 784, &qword_1EC642C30, &qword_1D1E6E980);
    sub_1D1757B18(v89);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    type metadata accessor for _CoordinationClassObject(0);
    v54 = swift_allocObject();
    v55 = OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id;
    (v99)(v54 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id, v94, v92);
    v56 = swift_task_alloc();
    *(v56 + 16) = v94;
    v57 = sub_1D18924D8(sub_1D1891E38, v56, v97);
    if (v96)
    {
      v86 = *(v0 + 1104);
      v87 = *(v0 + 1096);

      (*(v86 + 8))(v54 + v55, v87);

      return swift_deallocPartialClassInstance();
    }

    v58 = v57;
    v59 = *(v0 + 1120);

    *(v54 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarms) = v58;
    v60 = swift_task_alloc();
    *(v60 + 16) = v59;
    v61 = sub_1D1788104(sub_1D1891E58, v60, MEMORY[0x1E69E7CC0]);
    v62 = *(v0 + 1384);
    v63 = *(v0 + 1352);
    v64 = *(v0 + 1120);
    v65 = *(v0 + 1104);
    v66 = *(v0 + 1096);

    v67 = *(v65 + 8);
    *(v54 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timers) = v61;
    *(v54 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarmError) = v63;
    *(v54 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timerError) = v62;
    v100 = v67;
    v68 = v67(v64, v66);
    MEMORY[0x1D3891220](v68);
    if (*((*(v0 + 1040) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 1040) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D1E67C5C();
    }

    v98 = *(v0 + 1376);
    v69 = *(v0 + 1152);
    v70 = *(v0 + 1128);
    v93 = v70;
    v95 = *(v0 + 1328);
    v90 = *(v0 + 1104);
    v91 = *(v0 + 1112);
    v71 = *(v0 + 1096);
    v72 = *(v0 + 1088);
    v73 = *(v0 + 1080);
    sub_1D1E67CAC();
    v103 = *(v0 + 1040);
    v74 = sub_1D1E67E7C();
    (*(*(v74 - 8) + 56))(v72, 1, 1, v74);
    (v99)(v69, v70, v71);
    v75 = v73;
    v76 = sub_1D1E67E0C();
    v77 = (*(v90 + 80) + 40) & ~*(v90 + 80);
    v78 = (v91 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = swift_allocObject();
    *(v79 + 2) = v76;
    *(v79 + 3) = MEMORY[0x1E69E85E0];
    *(v79 + 4) = v75;
    v95(&v79[v77], v69, v71);
    *&v79[v78] = v98;
    *&v79[(v78 + 15) & 0xFFFFFFFFFFFFFFF8] = MEMORY[0x1E69E7CC0];
    sub_1D17C6EF0(0, 0, v72, &unk_1D1E7BBA0, v79);

    sub_1D1741A30(v0 + 528, &qword_1EC642C30, &qword_1D1E6E980);
    result = v100(v93, v71);
    v2 = v103;
    v7 = 0;
    v9 = *(v0 + 1320);
    v6 = *(v0 + 1312);
  }

  v11 = ((1 << *(v0 + 1416)) + 63) >> 6;
  if (v11 <= (v9 + 1))
  {
    v12 = v9 + 1;
  }

  else
  {
    v12 = ((1 << *(v0 + 1416)) + 63) >> 6;
  }

  v13 = v12 - 1;
  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      (*(*(v0 + 1256) + 56))(*(v0 + 1160), 1, 1, *(v0 + 1248));
      v36 = 0;
      goto LABEL_16;
    }

    v10 = *(v0 + 1072);
    v6 = *(v10 + 8 * v14 + 64);
    ++v9;
    if (v6)
    {
      v9 = v14;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D188FF00(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 1368) = a1;

  v3 = *(v2 + 1224);
  v4 = *(v2 + 1216);

  return MEMORY[0x1EEE6DFA0](sub_1D1890028, v4, v3);
}

uint64_t sub_1D1890028()
{
  for (i = *(v0 + 1368); ; i = MEMORY[0x1E69E7CC0])
  {
    *(v0 + 1376) = i;
    v2 = *(v0 + 648);
    *(v0 + 1384) = v2;
    if (!v2)
    {
      sub_1D1757B18(0);
      sub_1D1757B18(0);
      v75 = swift_task_alloc();
      *(v0 + 1392) = v75;
      *v75 = v0;
      v75[1] = sub_1D1890A48;
      v76 = *(v0 + 1344);

      return sub_1D1888258(v76);
    }

    sub_1D1741C70(v2);
    sub_1D1757B18(v2);
    sub_1D1757B18(0);

    v3 = *(v0 + 1384);
    v84 = *(v0 + 1352);
    v91 = *(v0 + 1296);
    v92 = *(v0 + 1376);
    v87 = *(v0 + 1096);
    v89 = *(v0 + 1120);
    v83 = (*(v0 + 1104) + 16);
    v94 = *v83;
    (*v83)();
    sub_1D1741C08(v0 + 528, v0 + 656, &qword_1EC642C30, &qword_1D1E6E980);
    sub_1D1757B18(v3);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1D1741C08(v0 + 528, v0 + 784, &qword_1EC642C30, &qword_1D1E6E980);
    sub_1D1757B18(v84);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    type metadata accessor for _CoordinationClassObject(0);
    v4 = swift_allocObject();
    v5 = OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id;
    (v94)(v4 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id, v89, v87);
    v6 = swift_task_alloc();
    *(v6 + 16) = v89;
    v7 = sub_1D18924D8(sub_1D1891E38, v6, v92);
    if (v91)
    {
      v77 = *(v0 + 1104);
      v78 = *(v0 + 1096);

      (*(v77 + 8))(v4 + v5, v78);

      return swift_deallocPartialClassInstance();
    }

    v8 = v7;
    v9 = *(v0 + 1120);

    *(v4 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarms) = v8;
    v10 = swift_task_alloc();
    *(v10 + 16) = v9;
    v11 = sub_1D1788104(sub_1D1891E58, v10, MEMORY[0x1E69E7CC0]);
    v12 = *(v0 + 1384);
    v13 = *(v0 + 1352);
    v14 = *(v0 + 1120);
    v15 = *(v0 + 1104);
    v16 = *(v0 + 1096);

    v17 = *(v15 + 8);
    *(v4 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timers) = v11;
    *(v4 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarmError) = v13;
    *(v4 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timerError) = v12;
    v95 = v17;
    v18 = v17(v14, v16);
    MEMORY[0x1D3891220](v18);
    if (*((*(v0 + 1040) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 1040) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D1E67C5C();
    }

    v93 = *(v0 + 1376);
    v19 = *(v0 + 1152);
    v20 = *(v0 + 1128);
    v88 = v20;
    v90 = *(v0 + 1328);
    v85 = *(v0 + 1104);
    v86 = *(v0 + 1112);
    v21 = *(v0 + 1096);
    v22 = *(v0 + 1088);
    v23 = *(v0 + 1080);
    sub_1D1E67CAC();
    v97 = *(v0 + 1040);
    v24 = sub_1D1E67E7C();
    (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
    (v94)(v19, v20, v21);
    v25 = v23;
    v26 = sub_1D1E67E0C();
    v27 = (*(v85 + 80) + 40) & ~*(v85 + 80);
    v28 = (v86 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 2) = v26;
    *(v29 + 3) = MEMORY[0x1E69E85E0];
    *(v29 + 4) = v25;
    v90(&v29[v27], v19, v21);
    *&v29[v28] = v93;
    *&v29[(v28 + 15) & 0xFFFFFFFFFFFFFFF8] = MEMORY[0x1E69E7CC0];
    sub_1D17C6EF0(0, 0, v22, &unk_1D1E7BBA0, v29);

    sub_1D1741A30(v0 + 528, &qword_1EC642C30, &qword_1D1E6E980);
    result = v95(v88, v21);
    v31 = *(v0 + 1320);
    v32 = *(v0 + 1312);
    *(v0 + 1304) = v97;
    *(v0 + 1296) = 0;
    if (!v32)
    {
      break;
    }

    v33 = *(v0 + 1072);
LABEL_16:
    v38 = *(v0 + 1256);
    v39 = *(v0 + 1248);
    v40 = *(v0 + 1160);
    v41 = *(v0 + 1152);
    v42 = *(v0 + 1104);
    v43 = *(v0 + 1096);
    v96 = (v32 - 1) & v32;
    v44 = __clz(__rbit64(v32)) | (v31 << 6);
    (*(v42 + 16))(v41, *(v33 + 48) + *(v42 + 72) * v44, v43);
    v45 = (*(v33 + 56) + (v44 << 7));
    v46 = v45[4];
    v47 = v45[5];
    v48 = v45[7];
    *(v0 + 368) = v45[6];
    *(v0 + 384) = v48;
    *(v0 + 336) = v46;
    *(v0 + 352) = v47;
    v49 = *v45;
    v50 = v45[1];
    v51 = v45[3];
    *(v0 + 304) = v45[2];
    *(v0 + 320) = v51;
    *(v0 + 272) = v49;
    *(v0 + 288) = v50;
    v52 = (v40 + *(v39 + 48));
    (*(v42 + 32))(v40, v41, v43);
    v53 = *(v0 + 320);
    v55 = *(v0 + 272);
    v54 = *(v0 + 288);
    v52[2] = *(v0 + 304);
    v52[3] = v53;
    *v52 = v55;
    v52[1] = v54;
    v56 = *(v0 + 384);
    v58 = *(v0 + 336);
    v57 = *(v0 + 352);
    v52[6] = *(v0 + 368);
    v52[7] = v56;
    v52[4] = v58;
    v52[5] = v57;
    (*(v38 + 56))(v40, 0, 1, v39);
    sub_1D1741C08(v0 + 272, v0 + 400, &qword_1EC642C30, &qword_1D1E6E980);
    v59 = v96;
    v36 = v31;
LABEL_17:
    *(v0 + 1320) = v36;
    *(v0 + 1312) = v59;
    v60 = *(v0 + 1264);
    v61 = *(v0 + 1248);
    v62 = *(v0 + 1168);
    sub_1D1891DC8(*(v0 + 1160), v62);
    if (v60(v62, 1, v61) == 1)
    {

      v79 = swift_task_alloc();
      *(v0 + 1408) = v79;
      *v79 = v0;
      v79[1] = sub_1D18915B0;
      v80 = *(v0 + 1064);

      return sub_1D18A2E60(v0 + 1056, v80, v97);
    }

    v63 = *(v0 + 1128);
    v64 = *(v0 + 1104);
    v65 = (*(v0 + 1168) + *(*(v0 + 1248) + 48));
    v66 = *v65;
    v67 = v65[1];
    v68 = v65[3];
    *(v0 + 560) = v65[2];
    *(v0 + 576) = v68;
    *(v0 + 528) = v66;
    *(v0 + 544) = v67;
    v69 = v65[4];
    v70 = v65[5];
    v71 = v65[7];
    *(v0 + 624) = v65[6];
    *(v0 + 640) = v71;
    *(v0 + 592) = v69;
    *(v0 + 608) = v70;
    v72 = *(v64 + 32);
    *(v0 + 1328) = v72;
    *(v0 + 1336) = (v64 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v72(v63);
    v73 = sub_1D187845C(v63);
    *(v0 + 1344) = v73;
    v74 = *(v0 + 640);
    *(v0 + 1352) = v74;
    if (!v74)
    {
      v81 = v73;
      sub_1D1757B18(0);
      sub_1D1757B18(0);
      v82 = swift_task_alloc();
      *(v0 + 1360) = v82;
      *v82 = v0;
      v82[1] = sub_1D188FF00;

      return sub_1D1888C14(v81);
    }

    sub_1D1741C70(v74);
    sub_1D1757B18(v74);
    sub_1D1757B18(0);
  }

  v34 = ((1 << *(v0 + 1416)) + 63) >> 6;
  if (v34 <= (v31 + 1))
  {
    v35 = v31 + 1;
  }

  else
  {
    v35 = ((1 << *(v0 + 1416)) + 63) >> 6;
  }

  v36 = v35 - 1;
  while (1)
  {
    v37 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v37 >= v34)
    {
      (*(*(v0 + 1256) + 56))(*(v0 + 1160), 1, 1, *(v0 + 1248));
      v59 = 0;
      goto LABEL_17;
    }

    v33 = *(v0 + 1072);
    v32 = *(v33 + 8 * v37 + 64);
    ++v31;
    if (v32)
    {
      v31 = v37;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1890A48(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 1400) = a1;

  v3 = *(v2 + 1224);
  v4 = *(v2 + 1216);

  return MEMORY[0x1EEE6DFA0](sub_1D1890B94, v4, v3);
}

uint64_t sub_1D1890B94()
{
  for (i = *(v0 + 1400); ; i = v73)
  {
    v1 = *(v0 + 1384);
    v84 = *(v0 + 1352);
    v91 = *(v0 + 1296);
    v92 = *(v0 + 1376);
    v87 = *(v0 + 1096);
    v89 = *(v0 + 1120);
    v83 = (*(v0 + 1104) + 16);
    v95 = *v83;
    (*v83)();
    sub_1D1741C08(v0 + 528, v0 + 656, &qword_1EC642C30, &qword_1D1E6E980);
    sub_1D1757B18(v1);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1D1741C08(v0 + 528, v0 + 784, &qword_1EC642C30, &qword_1D1E6E980);
    sub_1D1757B18(v84);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    type metadata accessor for _CoordinationClassObject(0);
    v2 = swift_allocObject();
    v3 = OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id;
    (v95)(v2 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id, v89, v87);
    v4 = swift_task_alloc();
    *(v4 + 16) = v89;
    v5 = sub_1D18924D8(sub_1D1891E38, v4, v92);
    if (v91)
    {
      v75 = *(v0 + 1104);
      v76 = *(v0 + 1096);

      (*(v75 + 8))(v2 + v3, v76);

      return swift_deallocPartialClassInstance();
    }

    v6 = v5;
    v7 = *(v0 + 1120);

    *(v2 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarms) = v6;
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    v9 = sub_1D1788104(sub_1D1891E58, v8, i);
    v10 = *(v0 + 1384);
    v11 = *(v0 + 1352);
    v12 = *(v0 + 1120);
    v13 = *(v0 + 1104);
    v14 = *(v0 + 1096);

    v15 = *(v13 + 8);
    *(v2 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timers) = v9;
    *(v2 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarmError) = v11;
    *(v2 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timerError) = v10;
    v96 = v15;
    v16 = v15(v12, v14);
    MEMORY[0x1D3891220](v16);
    if (*((*(v0 + 1040) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 1040) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D1E67C5C();
    }

    v93 = *(v0 + 1376);
    v17 = *(v0 + 1152);
    v18 = *(v0 + 1128);
    v88 = v18;
    v90 = *(v0 + 1328);
    v85 = *(v0 + 1104);
    v86 = *(v0 + 1112);
    v19 = *(v0 + 1096);
    v20 = *(v0 + 1088);
    v21 = *(v0 + 1080);
    sub_1D1E67CAC();
    v98 = *(v0 + 1040);
    v22 = sub_1D1E67E7C();
    (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
    (v95)(v17, v18, v19);
    v23 = v21;
    v24 = sub_1D1E67E0C();
    v25 = (*(v85 + 80) + 40) & ~*(v85 + 80);
    v26 = (v86 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 2) = v24;
    *(v27 + 3) = MEMORY[0x1E69E85E0];
    *(v27 + 4) = v23;
    v90(&v27[v25], v17, v19);
    *&v27[v26] = v93;
    *&v27[(v26 + 15) & 0xFFFFFFFFFFFFFFF8] = i;
    sub_1D17C6EF0(0, 0, v20, &unk_1D1E7BBA0, v27);

    sub_1D1741A30(v0 + 528, &qword_1EC642C30, &qword_1D1E6E980);
    result = v96(v88, v19);
    v29 = *(v0 + 1320);
    v30 = *(v0 + 1312);
    *(v0 + 1304) = v98;
    *(v0 + 1296) = 0;
    if (!v30)
    {
      break;
    }

    v31 = *(v0 + 1072);
LABEL_15:
    v36 = *(v0 + 1256);
    v37 = *(v0 + 1248);
    v38 = *(v0 + 1160);
    v39 = *(v0 + 1152);
    v40 = *(v0 + 1104);
    v41 = *(v0 + 1096);
    v97 = (v30 - 1) & v30;
    v42 = __clz(__rbit64(v30)) | (v29 << 6);
    (*(v40 + 16))(v39, *(v31 + 48) + *(v40 + 72) * v42, v41);
    v43 = (*(v31 + 56) + (v42 << 7));
    v44 = v43[4];
    v45 = v43[5];
    v46 = v43[7];
    *(v0 + 368) = v43[6];
    *(v0 + 384) = v46;
    *(v0 + 336) = v44;
    *(v0 + 352) = v45;
    v47 = *v43;
    v48 = v43[1];
    v49 = v43[3];
    *(v0 + 304) = v43[2];
    *(v0 + 320) = v49;
    *(v0 + 272) = v47;
    *(v0 + 288) = v48;
    v50 = (v38 + *(v37 + 48));
    (*(v40 + 32))(v38, v39, v41);
    v51 = *(v0 + 320);
    v53 = *(v0 + 272);
    v52 = *(v0 + 288);
    v50[2] = *(v0 + 304);
    v50[3] = v51;
    *v50 = v53;
    v50[1] = v52;
    v54 = *(v0 + 384);
    v56 = *(v0 + 336);
    v55 = *(v0 + 352);
    v50[6] = *(v0 + 368);
    v50[7] = v54;
    v50[4] = v56;
    v50[5] = v55;
    (*(v36 + 56))(v38, 0, 1, v37);
    sub_1D1741C08(v0 + 272, v0 + 400, &qword_1EC642C30, &qword_1D1E6E980);
    v57 = v97;
    v34 = v29;
LABEL_16:
    *(v0 + 1320) = v34;
    *(v0 + 1312) = v57;
    v58 = *(v0 + 1264);
    v59 = *(v0 + 1248);
    v60 = *(v0 + 1168);
    sub_1D1891DC8(*(v0 + 1160), v60);
    if (v58(v60, 1, v59) == 1)
    {

      v77 = swift_task_alloc();
      *(v0 + 1408) = v77;
      *v77 = v0;
      v77[1] = sub_1D18915B0;
      v78 = *(v0 + 1064);

      return sub_1D18A2E60(v0 + 1056, v78, v98);
    }

    v61 = *(v0 + 1128);
    v62 = *(v0 + 1104);
    v63 = (*(v0 + 1168) + *(*(v0 + 1248) + 48));
    v64 = *v63;
    v65 = v63[1];
    v66 = v63[3];
    *(v0 + 560) = v63[2];
    *(v0 + 576) = v66;
    *(v0 + 528) = v64;
    *(v0 + 544) = v65;
    v67 = v63[4];
    v68 = v63[5];
    v69 = v63[7];
    *(v0 + 624) = v63[6];
    *(v0 + 640) = v69;
    *(v0 + 592) = v67;
    *(v0 + 608) = v68;
    v70 = *(v62 + 32);
    *(v0 + 1328) = v70;
    *(v0 + 1336) = (v62 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v70(v61);
    v71 = sub_1D187845C(v61);
    *(v0 + 1344) = v71;
    v72 = *(v0 + 640);
    *(v0 + 1352) = v72;
    if (!v72)
    {
      v79 = v71;
      sub_1D1757B18(0);
      sub_1D1757B18(0);
      v80 = swift_task_alloc();
      *(v0 + 1360) = v80;
      *v80 = v0;
      v80[1] = sub_1D188FF00;

      return sub_1D1888C14(v79);
    }

    sub_1D1741C70(v72);
    sub_1D1757B18(v72);
    sub_1D1757B18(0);
    v73 = MEMORY[0x1E69E7CC0];
    *(v0 + 1376) = MEMORY[0x1E69E7CC0];
    v74 = *(v0 + 648);
    *(v0 + 1384) = v74;
    if (!v74)
    {
      sub_1D1757B18(0);
      sub_1D1757B18(0);
      v81 = swift_task_alloc();
      *(v0 + 1392) = v81;
      *v81 = v0;
      v81[1] = sub_1D1890A48;
      v82 = *(v0 + 1344);

      return sub_1D1888258(v82);
    }

    sub_1D1741C70(v74);
    sub_1D1757B18(v74);
    sub_1D1757B18(0);
  }

  v32 = ((1 << *(v0 + 1416)) + 63) >> 6;
  if (v32 <= (v29 + 1))
  {
    v33 = v29 + 1;
  }

  else
  {
    v33 = ((1 << *(v0 + 1416)) + 63) >> 6;
  }

  v34 = v33 - 1;
  while (1)
  {
    v35 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v35 >= v32)
    {
      (*(*(v0 + 1256) + 56))(*(v0 + 1160), 1, 1, *(v0 + 1248));
      v57 = 0;
      goto LABEL_16;
    }

    v31 = *(v0 + 1072);
    v30 = *(v31 + 8 * v35 + 64);
    ++v29;
    if (v30)
    {
      v29 = v35;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18915B0()
{
  v1 = *v0;

  v2 = *(v1 + 1224);
  v3 = *(v1 + 1216);

  return MEMORY[0x1EEE6DFA0](sub_1D189170C, v3, v2);
}

uint64_t sub_1D189170C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1891808(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v46 = a2;
  v55 = a4;
  v47 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A50, &unk_1D1E7B910);
  MEMORY[0x1EEE9AC00](v54);
  v69 = &v45 - v5;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = 0;
  v57 = a3;
  v11 = 0;
  v14 = a3[8];
  v13 = a3 + 8;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v52 = v7;
  v53 = v7 + 16;
  v49 = v13;
  v50 = (v7 + 8);
  v48 = v18;
  v51 = v10;
LABEL_6:
  if (v17)
  {
    v19 = __clz(__rbit64(v17));
    v59 = (v17 - 1) & v17;
LABEL_13:
    v22 = v57;
    v23 = *(v7 + 72);
    v24 = *(v7 + 16);
    v25 = v19 | (v11 << 6);
    v24(v10, v57[6] + v23 * v25, v6);
    v26 = v22[7];
    v58 = v25;
    v27 = (v26 + (v25 << 7));
    v28 = v27[3];
    v30 = *v27;
    v29 = v27[1];
    v63 = v27[2];
    v64 = v28;
    v61 = v30;
    v62 = v29;
    v31 = v27[7];
    v33 = v27[4];
    v32 = v27[5];
    v67 = v27[6];
    v68 = v31;
    v65 = v33;
    v66 = v32;
    v34 = v69;
    v24(v69, v10, v6);
    v7 = v52;
    v35 = (v34 + *(v54 + 48));
    v36 = v66;
    v35[4] = v65;
    v35[5] = v36;
    v37 = v68;
    v35[6] = v67;
    v35[7] = v37;
    v38 = v62;
    *v35 = v61;
    v35[1] = v38;
    v39 = v64;
    v35[2] = v63;
    v35[3] = v39;
    v40 = v55;
    v41 = *(v55 + 16);
    sub_1D1741C08(&v61, v60, &qword_1EC642C30, &qword_1D1E6E980);
    sub_1D1741C08(&v61, v60, &qword_1EC642C30, &qword_1D1E6E980);
    v42 = v41 + 1;
    v43 = v40;
    do
    {
      if (!--v42)
      {
        sub_1D1741A30(v69, &qword_1EC645A50, &unk_1D1E7B910);
        sub_1D1741A30(&v61, &qword_1EC642C30, &qword_1D1E6E980);
        v10 = v51;
        result = (*v50)(v51, v6);
LABEL_5:
        v18 = v48;
        v13 = v49;
        v17 = v59;
        goto LABEL_6;
      }

      sub_1D174A5FC(&qword_1EE07D170, MEMORY[0x1E69695C8]);
      v43 += v23;
    }

    while ((sub_1D1E6775C() & 1) == 0);
    sub_1D1741A30(v69, &qword_1EC645A50, &unk_1D1E7B910);
    sub_1D1741A30(&v61, &qword_1EC642C30, &qword_1D1E6E980);
    v10 = v51;
    result = (*v50)(v51, v6);
    *(v47 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
    if (!__OFADD__(v56++, 1))
    {
      goto LABEL_5;
    }

    __break(1u);
    return sub_1D188D0A0(v47, v46, v56, v57);
  }

  else
  {
    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v18)
      {
        return sub_1D188D0A0(v47, v46, v56, v57);
      }

      v21 = v13[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v59 = (v21 - 1) & v21;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1891C08(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_1D188AEF4(v12, v7, a1, a2);
      MEMORY[0x1D3893640](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_1D1891808((v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_1D1891DC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AC8, &qword_1D1E7BB98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1891E74(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D1E66A7C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4BFC;

  return sub_1D187538C(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_17Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1D189212C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = *(v5 + 16);
  v10 = v5 + ((*(v8 + 80) + 24) & ~*(v8 + 80));

  return a5(a1, a2, v9, v10);
}

uint64_t sub_1D18921C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1892230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D18922DC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for BoxedTileInfoBearer(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1D178CD64(0, v10, 0);
  v11 = v21;
  v12 = *(type metadata accessor for StaticService(0) - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D178CD64((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_1D18A2B2C(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for BoxedTileInfoBearer);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18924D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v16[0] = a1;
  v16[1] = a2;
  v6 = type metadata accessor for StaticAlarm(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1D178D4EC(0, v10, 0);
  v11 = v17;
  for (i = a3 + 32; ; i += 40)
  {
    (v16[0])(i);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v17 = v11;
    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1D178D4EC((v13 > 1), v14 + 1, 1);
      v11 = v17;
    }

    *(v11 + 16) = v14 + 1;
    sub_1D18A2B2C(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, type metadata accessor for StaticAlarm);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1892678(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643010, &qword_1D1E90E20);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1D178D744(0, v10, 0);
  v11 = v21;
  v12 = *(sub_1D1E66A7C() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D178D744((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_1D1741A90(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, &qword_1EC643010, &qword_1D1E90E20);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1892878(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643018, &qword_1D1E9AC00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1D178D704(0, v10, 0);
  v11 = v21;
  v12 = (a3 + 32);
  while (1)
  {
    v13 = *v12++;
    v20 = v13;
    v18(&v20);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D178D704((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_1D1741A90(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, &qword_1EC643018, &qword_1D1E9AC00);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1892A20(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v30 = a2;
  v5 = type metadata accessor for MatterTilePath(0);
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v33 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1D178D9D0(0, v7, 0);
    v34 = v36;
    v9 = a3 + 64;
    v10 = sub_1D1E6869C();
    v11 = 0;
    v26 = a3 + 72;
    v27 = v7;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a3 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      v31 = v11;
      v14 = *(a3 + 36);
      v35 = *(*(a3 + 48) + 8 * v10);
      v29(&v35);
      v32 = v3;
      if (v3)
      {
        goto LABEL_27;
      }

      v15 = v34;
      v36 = v34;
      v17 = *(v34 + 16);
      v16 = *(v34 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D178D9D0((v16 > 1), v17 + 1, 1);
        v15 = v36;
      }

      *(v15 + 16) = v17 + 1;
      v18 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v34 = v15;
      sub_1D18A2B2C(v33, v15 + v18 + *(v28 + 72) * v17, type metadata accessor for MatterTilePath);
      v12 = 1 << *(a3 + 32);
      if (v10 >= v12)
      {
        goto LABEL_24;
      }

      v19 = *(v9 + 8 * v13);
      if ((v19 & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      if (v14 != *(a3 + 36))
      {
        goto LABEL_26;
      }

      v20 = v19 & (-2 << (v10 & 0x3F));
      if (v20)
      {
        v12 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v13 << 6;
        v22 = v13 + 1;
        v23 = (v26 + 8 * v13);
        while (v22 < (v12 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_1D1716920(v10, v14, 0);
            v12 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        sub_1D1716920(v10, v14, 0);
      }

LABEL_4:
      v3 = v32;
      v11 = v31 + 1;
      v10 = v12;
      if (v31 + 1 == v27)
      {
        return v34;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1892D24(void *(*a1)(uint64_t *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1D1E6899C();
    v9 = (a3 + 36);
    while (1)
    {
      v10 = *v9;
      v11[0] = *(v9 - 4);
      v12 = v10;
      a1(&v13, v11);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v9 += 2;
      sub_1D1E6896C();
      sub_1D1E689AC();
      sub_1D1E689BC();
      sub_1D1E6897C();
      if (!--v6)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1892E1C(void (*a1)(unint64_t), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v39 = a1;
  v40 = a2;
  v38 = sub_1D1E66A7C();
  v6 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v37 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v45 = &v31 - v10;
  v11 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v36 = v8;
    v47 = MEMORY[0x1E69E7CC0];
    v41 = v6;
    sub_1D178DBC0(0, v11, 0);
    v13 = v41;
    v46 = v47;
    v14 = a3 + 56;
    v15 = sub_1D1E6869C();
    v16 = 0;
    v34 = v13 + 16;
    v35 = (v13 + 8);
    v32 = a3 + 64;
    v33 = v11;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a3 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v14 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      v42 = v16;
      v44 = *(a3 + 36);
      v19 = a3;
      v20 = *(a3 + 48) + *(v13 + 72) * v15;
      v11 = v36;
      a3 = v38;
      (*(v13 + 16))(v36, v20, v38);
      v39(v11);
      v43 = v4;
      if (v4)
      {
        goto LABEL_27;
      }

      (*v35)(v11, a3);
      v21 = v46;
      v47 = v46;
      v11 = *(v46 + 16);
      v22 = *(v46 + 24);
      a3 = v11 + 1;
      if (v11 >= v22 >> 1)
      {
        sub_1D178DBC0((v22 > 1), v11 + 1, 1);
        v21 = v47;
      }

      *(v21 + 16) = a3;
      v23 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v46 = v21;
      sub_1D1741A90(v45, v21 + v23 + *(v37 + 72) * v11, &qword_1EC6436C8, &unk_1D1E97C40);
      v17 = 1 << *(v19 + 32);
      if (v15 >= v17)
      {
        goto LABEL_24;
      }

      v24 = *(v14 + 8 * v18);
      if ((v24 & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      a3 = v19;
      if (v44 != *(v19 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v15 & 0x3F));
      if (v25)
      {
        v17 = __clz(__rbit64(v25)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v18 << 6;
        v27 = v18 + 1;
        v28 = (v32 + 8 * v18);
        while (v27 < (v17 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            sub_1D1716920(v15, v44, 0);
            v17 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        sub_1D1716920(v15, v44, 0);
      }

LABEL_4:
      v4 = v43;
      v16 = v42 + 1;
      v15 = v17;
      v11 = v33;
      v13 = v41;
      if (v42 + 1 == v33)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    (*v35)(v11, a3);

    __break(1u);
  }

  return result;
}

uint64_t CoordinationDataModel.toggleAlarm(staticAlarmID:parentContainerID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[87] = v3;
  v4[86] = a3;
  v4[85] = a2;
  v4[84] = a1;
  v4[88] = swift_getObjectType();
  v4[89] = type metadata accessor for CoordinationSnapshot.UpdateType(0);
  v4[90] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v4[91] = v5;
  v4[92] = *(v5 - 8);
  v4[93] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v4[94] = swift_task_alloc();
  v4[95] = *(type metadata accessor for StaticAlarm(0) - 8);
  v4[96] = swift_task_alloc();
  v6 = sub_1D1E66A7C();
  v4[97] = v6;
  v7 = *(v6 - 8);
  v4[98] = v7;
  v4[99] = *(v7 + 64);
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v4[103] = swift_task_alloc();
  v4[104] = sub_1D1E67E1C();
  v4[105] = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();
  v4[106] = v9;
  v4[107] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1893478, v9, v8);
}

uint64_t sub_1D1893478()
{
  v153 = v0;
  v1 = *(v0 + 696);
  v2 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!*(v3 + 16))
  {
    goto LABEL_10;
  }

  v4 = sub_1D1742188();
  if ((v5 & 1) == 0)
  {

LABEL_10:
    v41 = *(v0 + 672);

    *v41 = 0;
    goto LABEL_19;
  }

  v6 = (*(v3 + 56) + (v4 << 7));
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  *(v0 + 48) = v6[2];
  *(v0 + 64) = v7;
  *(v0 + 16) = v9;
  *(v0 + 32) = v8;
  v10 = v6[7];
  v12 = v6[4];
  v11 = v6[5];
  *(v0 + 112) = v6[6];
  *(v0 + 128) = v10;
  *(v0 + 80) = v12;
  *(v0 + 96) = v11;
  sub_1D18783EC(v0 + 16, v0 + 144);

  sub_1D187695C(v0 + 408);
  if (*(v0 + 432))
  {
    sub_1D16EEE20((v0 + 408), v0 + 368);
    v13 = swift_allocObject();
    *(v0 + 864) = v13;
    v14 = *(v0 + 392);
    v15 = *(v0 + 400);
    __swift_project_boxed_opaque_existential_1((v0 + 368), v14);
    (*(v15 + 80))(v14, v15);
    if (*(v0 + 472))
    {
      sub_1D16EEE20((v0 + 448), (v13 + 2));
      if (qword_1EC642210 != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 824);
      v17 = *(v0 + 784);
      v18 = *(v0 + 776);
      v19 = *(v0 + 688);
      v20 = sub_1D1E6709C();
      __swift_project_value_buffer(v20, qword_1EC6459E8);
      v146 = *(v17 + 16);
      v146(v16, v19, v18);

      v21 = sub_1D1E6707C();
      v22 = sub_1D1E6835C();

      v23 = os_log_type_enabled(v21, v22);
      v24 = *(v0 + 824);
      v25 = *(v0 + 784);
      v26 = *(v0 + 776);
      if (v23)
      {
        v27 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        *&v151[0] = v147;
        *v27 = 136315394;
        swift_beginAccess();
        v144 = v22;
        v140 = v24;
        v28 = v13[5];
        v29 = v13[6];
        v30 = __swift_project_boxed_opaque_existential_1(v13 + 2, v28);
        v31 = *(v28 - 8);
        loga = v21;
        v32 = swift_task_alloc();
        (*(v31 + 16))(v32, v30, v28);
        v33 = (*(*(v29 + 8) + 64))(v28);
        v35 = v34;
        (*(v31 + 8))(v32, v28);

        v36 = sub_1D1B1312C(v33, v35, v151);

        *(v27 + 4) = v36;
        *(v27 + 12) = 2080;
        sub_1D1886B8C();
        v37 = sub_1D1E68FAC();
        v39 = v38;
        (*(v25 + 8))(v140, v26);
        v40 = sub_1D1B1312C(v37, v39, v151);

        *(v27 + 14) = v40;
        _os_log_impl(&dword_1D16EC000, loga, v144, "attempt to toggle alarm %s for parent %s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v147, -1, -1);
        MEMORY[0x1D3893640](v27, -1, -1);
      }

      else
      {

        (*(v25 + 8))(v24, v26);
      }

      v70 = *(v0 + 816);
      v149 = *(v0 + 784);
      v71 = *(v0 + 776);
      v145 = *(v0 + 768);
      v137 = *(v0 + 752);
      v138 = *(v0 + 696);
      v72 = *(v0 + 688);
      v133 = v71;
      swift_beginAccess();
      v74 = v13[5];
      v73 = v13[6];
      __swift_project_boxed_opaque_existential_1(v13 + 2, v74);
      LOBYTE(v73) = (*(*(v73 + 8) + 48))(v74);
      swift_endAccess();
      swift_beginAccess();
      v75 = v13[5];
      v76 = v13[6];
      __swift_mutable_project_boxed_opaque_existential_1((v13 + 2), v75);
      (*(v76 + 64))((v73 & 1) == 0, v75, v76);
      swift_endAccess();
      v77 = v13[5];
      v78 = v13[6];
      v79 = __swift_project_boxed_opaque_existential_1(v13 + 2, v77);
      v80 = *(v77 - 8);
      v81 = swift_task_alloc();
      (*(v80 + 16))(v81, v79, v77);
      v146(v70, v72, v71);
      sub_1D1869A54(v81, v70, v77, *(v78 + 8), v145);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643168, &unk_1D1E715C0);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_1D1E739C0;
      v83 = v13[5];
      v84 = v13[6];
      v85 = __swift_project_boxed_opaque_existential_1(v13 + 2, v83);
      *(v82 + 56) = v83;
      *(v82 + 64) = *(v84 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v82 + 32));
      (*(*(v83 - 8) + 16))(boxed_opaque_existential_1, v85, v83);
      v87 = sub_1D1E67E7C();
      (*(*(v87 - 8) + 56))(v137, 1, 1, v87);
      v128 = v13;
      v146(v70, v72, v133);
      v88 = v138;
      v89 = sub_1D1E67E0C();
      v90 = *(v149 + 80);
      v130 = ~v90;
      v91 = (v90 + 56) & ~v90;
      v127 = v90;
      v92 = swift_allocObject();
      v93 = MEMORY[0x1E69E85E0];
      *(v92 + 16) = v89;
      *(v92 + 24) = v93;
      *(v92 + 32) = 0;
      *(v92 + 40) = v82;
      *(v92 + 48) = v88;
      log = *(v149 + 32);
      (log)(v92 + v91, v70, v133);
      sub_1D17C6EF0(0, 0, v137, &unk_1D1E7BA28, v92);

      if (qword_1EE07B1E8 != -1)
      {
        swift_once();
      }

      v129 = *(v0 + 792);
      v94 = *(v0 + 776);
      v139 = *(v0 + 816);
      v95 = *(v0 + 760);
      v96 = *(v0 + 744);
      v97 = *(v0 + 736);
      v126 = *(v0 + 728);
      v98 = *(v0 + 720);
      v125 = *(v0 + 768);
      v131 = *(v0 + 696);
      v132 = *(v0 + 704);
      v99 = *(v0 + 688);
      v141 = v99;
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
      __swift_project_value_buffer(v100, qword_1EE07B210);
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868);
      v101 = *(v135 + 48);
      v146(v98, v99, v94);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643438, &qword_1D1E72010);
      v102 = (*(v95 + 80) + 32) & ~*(v95 + 80);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_1D1E739C0;
      v134 = v102;
      sub_1D18A1F94(v125, v103 + v102, type metadata accessor for StaticAlarm);
      *(v98 + v101) = v103;
      swift_storeEnumTagMultiPayload();
      sub_1D1E67ECC();
      (*(v97 + 8))(v96, v126);
      sub_1D17419CC((v128 + 2), v0 + 488);
      v104 = *(v0 + 512);
      v105 = __swift_project_boxed_opaque_existential_1((v0 + 488), v104);
      v106 = *(v0 + 64);
      v107 = *(v0 + 32);
      v151[0] = *(v0 + 16);
      v151[1] = v107;
      v151[2] = *(v0 + 48);
      v152 = v106;
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AF8, &qword_1D1E7BC28);
      v109 = sub_1D1871BF8(v105, v108, v104);
      v146(v139, v141, v94);
      v110 = (v127 + 24) & v130;
      v111 = swift_allocObject();
      *(v111 + 16) = v128;
      (log)(v111 + v110, v139, v94);
      *(v0 + 304) = sub_1D18A1CF0;
      *(v0 + 312) = v111;
      *(v0 + 272) = MEMORY[0x1E69E9820];
      *(v0 + 280) = 1107296256;
      *(v0 + 288) = sub_1D18A2E5C;
      *(v0 + 296) = &block_descriptor_9;
      v112 = _Block_copy((v0 + 272));

      aBlock = [v109 addSuccessBlock_];
      _Block_release(v112);

      __swift_destroy_boxed_opaque_existential_1((v0 + 488));
      v146(v139, v141, v94);
      sub_1D17419CC(v0 + 368, v0 + 528);
      v113 = (v129 + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
      v114 = (v113 + 47) & 0xFFFFFFFFFFFFFFF8;
      v115 = swift_allocObject();
      *(v115 + 16) = v128;
      (log)(v115 + v110, v139, v94);
      sub_1D16EEE20((v0 + 528), v115 + v113);
      *(v115 + v114) = v131;
      *(v115 + ((v114 + 15) & 0xFFFFFFFFFFFFFFF8)) = v132;
      *(v0 + 352) = sub_1D18A1D7C;
      *(v0 + 360) = v115;
      *(v0 + 320) = MEMORY[0x1E69E9820];
      *(v0 + 328) = 1107296256;
      *(v0 + 336) = sub_1D189C628;
      *(v0 + 344) = &block_descriptor_13;
      v116 = _Block_copy((v0 + 320));

      v117 = v131;

      v118 = [aBlock addFailureBlock_];
      _Block_release(v116);

      if (qword_1EC642200 != -1)
      {
        swift_once();
      }

      v119 = *(v0 + 768);
      v120 = *(v0 + 720);
      v121 = *(v135 + 48);
      v146(v120, *(v0 + 688), *(v0 + 776));
      v122 = swift_allocObject();
      *(v122 + 16) = xmmword_1D1E739C0;
      sub_1D18A1F94(v119, v122 + v134, type metadata accessor for StaticAlarm);
      *(v120 + v121) = v122;
      swift_storeEnumTagMultiPayload();
      v123 = swift_task_alloc();
      *(v0 + 872) = v123;
      *v123 = v0;
      v123[1] = sub_1D1894548;
      v124 = *(v0 + 720);

      return sub_1D18A2E60(v0 + 664, v124, 0);
    }

    sub_1D1741A30(v0 + 448, &qword_1EC645AF0, &qword_1D1E7BC20);
    swift_deallocUninitializedObject();
    __swift_destroy_boxed_opaque_existential_1((v0 + 368));
  }

  else
  {

    sub_1D1741A30(v0 + 408, &qword_1EC645670, &qword_1D1E7B950);
  }

  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v42 = *(v0 + 808);
  v43 = *(v0 + 800);
  v44 = *(v0 + 784);
  v45 = *(v0 + 776);
  v46 = *(v0 + 688);
  v47 = *(v0 + 680);
  v48 = sub_1D1E6709C();
  __swift_project_value_buffer(v48, qword_1EC6459E8);
  v49 = *(v44 + 16);
  v49(v42, v47, v45);
  v49(v43, v46, v45);
  v50 = sub_1D1E6707C();
  v51 = sub_1D1E6833C();
  v52 = os_log_type_enabled(v50, v51);
  v53 = *(v0 + 808);
  v54 = *(v0 + 800);
  v55 = *(v0 + 784);
  v56 = *(v0 + 776);
  if (v52)
  {
    v148 = v51;
    v57 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    *&v151[0] = v150;
    *v57 = 136315394;
    sub_1D1886B8C();
    v58 = sub_1D1E68FAC();
    v60 = v59;
    v61 = *(v55 + 8);
    v61(v53, v56);
    v62 = sub_1D1B1312C(v58, v60, v151);

    *(v57 + 4) = v62;
    *(v57 + 12) = 2080;
    v63 = sub_1D1E68FAC();
    v65 = v64;
    v61(v54, v56);
    v66 = sub_1D1B1312C(v63, v65, v151);

    *(v57 + 14) = v66;
    _os_log_impl(&dword_1D16EC000, v50, v148, "failed to found alarm with %s for parent %s", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v150, -1, -1);
    MEMORY[0x1D3893640](v57, -1, -1);

    sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
  }

  else
  {

    sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
    v67 = *(v55 + 8);
    v67(v54, v56);
    v67(v53, v56);
  }

  **(v0 + 672) = 0;
LABEL_19:

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_1D1894548()
{
  v1 = *v0;
  v2 = *(*v0 + 720);

  sub_1D18A21A8(v2, type metadata accessor for CoordinationSnapshot.UpdateType);
  v3 = *(v1 + 856);
  v4 = *(v1 + 848);

  return MEMORY[0x1EEE6DFA0](sub_1D18946A0, v4, v3);
}

uint64_t sub_1D18946A0()
{
  v1 = v0[96];
  v2 = v0[84];

  sub_1D1741A30((v0 + 2), &qword_1EC642C30, &qword_1D1E6E980);
  sub_1D18A21A8(v1, type metadata accessor for StaticAlarm);

  *v2 = v0[83];
  __swift_destroy_boxed_opaque_existential_1(v0 + 46);

  v3 = v0[1];

  return v3();
}

uint64_t CoordinationDataModel.deleteAlarm(_:parentContainerID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[78] = v3;
  v4[77] = a3;
  v4[76] = a2;
  v4[75] = a1;
  v4[79] = swift_getObjectType();
  v4[80] = type metadata accessor for CoordinationSnapshot.UpdateType(0);
  v4[81] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v4[82] = v5;
  v4[83] = *(v5 - 8);
  v4[84] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v4[85] = swift_task_alloc();
  v6 = *(type metadata accessor for StaticAlarm(0) - 8);
  v4[86] = v6;
  v4[87] = *(v6 + 64);
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v7 = sub_1D1E66A7C();
  v4[90] = v7;
  v8 = *(v7 - 8);
  v4[91] = v8;
  v4[92] = *(v8 + 64);
  v4[93] = swift_task_alloc();
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();
  v4[96] = swift_task_alloc();
  v4[97] = sub_1D1E67E1C();
  v4[98] = sub_1D1E67E0C();
  v10 = sub_1D1E67D4C();
  v4[99] = v10;
  v4[100] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D1894A48, v10, v9);
}

uint64_t sub_1D1894A48()
{
  v134 = v0;
  v1 = *(v0 + 624);
  v2 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!*(v3 + 16))
  {
    goto LABEL_9;
  }

  v4 = sub_1D1742188();
  if ((v5 & 1) == 0)
  {

LABEL_9:
    v35 = *(v0 + 600);

    *v35 = 0;
    goto LABEL_10;
  }

  v6 = (*(v3 + 56) + (v4 << 7));
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  *(v0 + 48) = v6[2];
  *(v0 + 64) = v7;
  *(v0 + 16) = v9;
  *(v0 + 32) = v8;
  v10 = v6[7];
  v12 = v6[4];
  v11 = v6[5];
  *(v0 + 112) = v6[6];
  *(v0 + 128) = v10;
  *(v0 + 80) = v12;
  *(v0 + 96) = v11;
  sub_1D18783EC(v0 + 16, v0 + 144);

  sub_1D187695C(v0 + 408);
  if (*(v0 + 432))
  {
    sub_1D16EEE20((v0 + 408), v0 + 368);
    if (qword_1EC642210 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 768);
    v14 = *(v0 + 728);
    v15 = *(v0 + 720);
    v16 = *(v0 + 616);
    v17 = sub_1D1E6709C();
    __swift_project_value_buffer(v17, qword_1EC6459E8);
    sub_1D17419CC(v0 + 368, v0 + 448);
    v129 = *(v14 + 16);
    v129(v13, v16, v15);
    v18 = sub_1D1E6707C();
    v19 = sub_1D1E6835C();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 768);
    v22 = *(v0 + 728);
    v23 = *(v0 + 720);
    if (v20)
    {
      v24 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *&v132[0] = v127;
      *v24 = 136315394;
      v25 = *(v0 + 472);
      v26 = *(v0 + 480);
      __swift_project_boxed_opaque_existential_1((v0 + 448), v25);
      v27 = (*(v26 + 64))(v25, v26);
      v29 = v28;
      __swift_destroy_boxed_opaque_existential_1((v0 + 448));
      v30 = sub_1D1B1312C(v27, v29, v132);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      sub_1D1886B8C();
      v31 = sub_1D1E68FAC();
      v33 = v32;
      (*(v22 + 8))(v21, v23);
      v34 = sub_1D1B1312C(v31, v33, v132);

      *(v24 + 14) = v34;
      _os_log_impl(&dword_1D16EC000, v18, v19, "attempt to delete alarm %s for parent %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v127, -1, -1);
      MEMORY[0x1D3893640](v24, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v21, v23);
      __swift_destroy_boxed_opaque_existential_1((v0 + 448));
    }

    v63 = *(v0 + 760);
    v126 = *(v0 + 736);
    v64 = *(v0 + 728);
    v65 = *(v0 + 720);
    v128 = *(v0 + 712);
    v119 = *(v0 + 680);
    v66 = *(v0 + 616);
    v122 = v66;
    v124 = *(v0 + 624);
    v67 = *(v0 + 392);
    v68 = *(v0 + 400);
    v69 = __swift_project_boxed_opaque_existential_1((v0 + 368), v67);
    v70 = *(v67 - 8);
    v71 = swift_task_alloc();
    (*(v70 + 16))(v71, v69, v67);
    v129(v63, v66, v65);
    sub_1D1869A54(v71, v63, v67, v68, v128);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643168, &unk_1D1E715C0);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1D1E739C0;
    sub_1D17419CC(v0 + 368, v72 + 32);
    v73 = sub_1D1E67E7C();
    (*(*(v73 - 8) + 56))(v119, 1, 1, v73);
    v129(v63, v122, v65);
    v74 = v124;
    v75 = sub_1D1E67E0C();
    v76 = (*(v64 + 80) + 56) & ~*(v64 + 80);
    v121 = v76 + v126;
    v77 = swift_allocObject();
    v78 = MEMORY[0x1E69E85E0];
    *(v77 + 16) = v75;
    *(v77 + 24) = v78;
    *(v77 + 32) = 1;
    *(v77 + 40) = v72;
    *(v77 + 48) = v74;
    v125 = v76;
    v123 = *(v64 + 32);
    v123(v77 + v76, v63, v65);
    sub_1D17C6EF0(0, 0, v119, &unk_1D1E7BC38, v77);

    if (qword_1EE07B1E8 != -1)
    {
      swift_once();
    }

    v79 = *(v0 + 720);
    v120 = v79;
    v80 = *(v0 + 712);
    v112 = *(v0 + 760);
    v113 = *(v0 + 704);
    v114 = *(v0 + 696);
    v81 = *(v0 + 688);
    v82 = *(v0 + 672);
    v83 = *(v0 + 664);
    v84 = *(v0 + 648);
    v111 = *(v0 + 656);
    v115 = *(v0 + 624);
    v116 = *(v0 + 632);
    v85 = *(v0 + 616);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
    __swift_project_value_buffer(v86, qword_1EE07B210);
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868);
    v87 = *(v117 + 48);
    v129(v84, v85, v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643438, &qword_1D1E72010);
    v88 = *(v81 + 80);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_1D1E739C0;
    sub_1D18A1F94(v80, v89 + ((v88 + 32) & ~v88), type metadata accessor for StaticAlarm);
    *(v84 + v87) = v89;
    swift_storeEnumTagMultiPayload();
    sub_1D1E67ECC();
    (*(v83 + 8))(v82, v111);
    v90 = *(v0 + 392);
    v91 = __swift_project_boxed_opaque_existential_1((v0 + 368), v90);
    v92 = *(v0 + 64);
    v93 = *(v0 + 32);
    v132[0] = *(v0 + 16);
    v132[1] = v93;
    v132[2] = *(v0 + 48);
    v133 = v92;
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AF8, &qword_1D1E7BC28);
    v95 = sub_1D1872064(v91, v94, v90);
    sub_1D17419CC(v0 + 368, v0 + 488);
    v129(v112, v85, v120);
    v96 = swift_allocObject();
    sub_1D16EEE20((v0 + 488), v96 + 16);
    v123(v96 + v125, v112, v120);
    *(v0 + 304) = sub_1D18A1E34;
    *(v0 + 312) = v96;
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_1D18A2E5C;
    *(v0 + 296) = &block_descriptor_25;
    v97 = _Block_copy((v0 + 272));

    aBlock = [v95 addSuccessBlock_];
    _Block_release(v97);

    sub_1D17419CC(v0 + 368, v0 + 528);
    v129(v112, v85, v120);
    sub_1D18A1F94(v80, v113, type metadata accessor for StaticAlarm);
    v98 = (v121 + 7) & 0xFFFFFFFFFFFFFFF8;
    v99 = (v98 + v88 + 8) & ~v88;
    v100 = swift_allocObject();
    sub_1D16EEE20((v0 + 528), v100 + 16);
    v123(v100 + v125, v112, v120);
    *(v100 + v98) = v115;
    sub_1D18A2B2C(v113, v100 + v99, type metadata accessor for StaticAlarm);
    *(v100 + ((v114 + v99 + 7) & 0xFFFFFFFFFFFFFFF8)) = v116;
    *(v0 + 352) = sub_1D18A1E54;
    *(v0 + 360) = v100;
    *(v0 + 320) = MEMORY[0x1E69E9820];
    *(v0 + 328) = 1107296256;
    *(v0 + 336) = sub_1D189C628;
    *(v0 + 344) = &block_descriptor_31;
    v101 = _Block_copy((v0 + 320));
    v102 = v115;

    v103 = [aBlock addFailureBlock_];
    _Block_release(v101);

    if (qword_1EC642200 != -1)
    {
      swift_once();
    }

    v104 = *(v0 + 712);
    v105 = *(v0 + 648);
    v106 = *(v117 + 48);
    v129(v105, *(v0 + 616), *(v0 + 720));
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_1D1E739C0;
    sub_1D18A1F94(v104, v107 + ((v88 + 32) & ~v88), type metadata accessor for StaticAlarm);
    *(v105 + v106) = v107;
    swift_storeEnumTagMultiPayload();
    v108 = swift_task_alloc();
    *(v0 + 808) = v108;
    *v108 = v0;
    v108[1] = sub_1D18958B8;
    v109 = *(v0 + 648);

    return sub_1D18A2E60(v0 + 592, v109, 0);
  }

  sub_1D1741A30(v0 + 408, &qword_1EC645670, &qword_1D1E7B950);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 752);
  v39 = *(v0 + 744);
  v40 = *(v0 + 728);
  v41 = *(v0 + 720);
  v42 = *(v0 + 616);
  v43 = *(v0 + 608);
  v44 = sub_1D1E6709C();
  __swift_project_value_buffer(v44, qword_1EC6459E8);
  v45 = *(v40 + 16);
  v45(v38, v43, v41);
  v45(v39, v42, v41);
  v46 = sub_1D1E6707C();
  v47 = sub_1D1E6833C();
  v48 = os_log_type_enabled(v46, v47);
  v49 = *(v0 + 752);
  v50 = *(v0 + 744);
  v51 = *(v0 + 728);
  v52 = *(v0 + 720);
  if (v48)
  {
    v130 = v47;
    v53 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    *&v132[0] = v131;
    *v53 = 136315394;
    sub_1D1886B8C();
    v54 = sub_1D1E68FAC();
    v56 = v55;
    v57 = *(v51 + 8);
    v57(v49, v52);
    v58 = sub_1D1B1312C(v54, v56, v132);

    *(v53 + 4) = v58;
    *(v53 + 12) = 2080;
    v59 = sub_1D1E68FAC();
    v61 = v60;
    v57(v50, v52);
    v62 = sub_1D1B1312C(v59, v61, v132);

    *(v53 + 14) = v62;
    _os_log_impl(&dword_1D16EC000, v46, v130, "failed to found alarm with %s for parent %s", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v131, -1, -1);
    MEMORY[0x1D3893640](v53, -1, -1);

    sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
  }

  else
  {

    sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
    v110 = *(v51 + 8);
    v110(v50, v52);
    v110(v49, v52);
  }

  **(v0 + 600) = 0;
LABEL_10:

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1D18958B8()
{
  v1 = *v0;
  v2 = *(*v0 + 648);

  sub_1D18A21A8(v2, type metadata accessor for CoordinationSnapshot.UpdateType);
  v3 = *(v1 + 800);
  v4 = *(v1 + 792);

  return MEMORY[0x1EEE6DFA0](sub_1D1895A10, v4, v3);
}

uint64_t sub_1D1895A10()
{
  v1 = v0[89];
  v2 = v0[75];

  sub_1D1741A30((v0 + 2), &qword_1EC642C30, &qword_1D1E6E980);
  sub_1D18A21A8(v1, type metadata accessor for StaticAlarm);
  *v2 = v0[74];
  __swift_destroy_boxed_opaque_existential_1(v0 + 46);

  v3 = v0[1];

  return v3();
}

uint64_t CoordinationDataModel.toggleTimerState(staticTimerID:parentContainerID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[98] = v3;
  v4[97] = a3;
  v4[96] = a2;
  v4[95] = a1;
  v4[99] = swift_getObjectType();
  v4[100] = type metadata accessor for CoordinationSnapshot.UpdateType(0);
  v4[101] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v4[102] = v5;
  v4[103] = *(v5 - 8);
  v4[104] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v4[105] = swift_task_alloc();
  sub_1D1E669FC();
  v4[106] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643860, &qword_1D1E72008);
  v4[107] = swift_task_alloc();
  v6 = type metadata accessor for StaticTimer(0);
  v4[108] = v6;
  v4[109] = *(v6 - 8);
  v4[110] = swift_task_alloc();
  v7 = sub_1D1E66A7C();
  v4[111] = v7;
  v8 = *(v7 - 8);
  v4[112] = v8;
  v4[113] = *(v8 + 64);
  v4[114] = swift_task_alloc();
  v4[115] = swift_task_alloc();
  v4[116] = swift_task_alloc();
  v4[117] = swift_task_alloc();
  v4[118] = swift_task_alloc();
  v4[119] = swift_task_alloc();
  v4[120] = sub_1D1E67E1C();
  v4[121] = sub_1D1E67E0C();
  v10 = sub_1D1E67D4C();
  v4[122] = v10;
  v4[123] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D1895E28, v10, v9);
}

uint64_t sub_1D1895E28()
{
  v175 = v0;
  v1 = *(v0 + 784);
  v2 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!*(v3 + 16))
  {
    goto LABEL_9;
  }

  v4 = sub_1D1742188();
  if ((v5 & 1) == 0)
  {

LABEL_9:
    v35 = *(v0 + 760);

    *v35 = 0;
LABEL_10:

    v36 = *(v0 + 8);

    return v36();
  }

  v6 = (*(v3 + 56) + (v4 << 7));
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  *(v0 + 48) = v6[2];
  *(v0 + 64) = v7;
  *(v0 + 16) = v9;
  *(v0 + 32) = v8;
  v10 = v6[7];
  v12 = v6[4];
  v11 = v6[5];
  *(v0 + 112) = v6[6];
  *(v0 + 128) = v10;
  *(v0 + 80) = v12;
  *(v0 + 96) = v11;
  sub_1D18783EC(v0 + 16, v0 + 144);

  sub_1D1876968(v0 + 408);
  if (!*(v0 + 432))
  {

    sub_1D1741A30(v0 + 408, &qword_1EC6456C0, &unk_1D1E7A3F0);
    if (qword_1EC642210 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 920);
    v39 = *(v0 + 912);
    v40 = *(v0 + 896);
    v41 = *(v0 + 888);
    v42 = *(v0 + 776);
    v43 = *(v0 + 768);
    v44 = sub_1D1E6709C();
    __swift_project_value_buffer(v44, qword_1EC6459E8);
    v45 = *(v40 + 16);
    v45(v38, v43, v41);
    v45(v39, v42, v41);
    v46 = sub_1D1E6707C();
    v47 = sub_1D1E6833C();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 920);
    v50 = *(v0 + 912);
    v51 = *(v0 + 896);
    v52 = *(v0 + 888);
    if (v48)
    {
      v168 = *(v0 + 912);
      v53 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      *&v173[0] = v171;
      *v53 = 136315394;
      sub_1D1886B8C();
      v54 = sub_1D1E68FAC();
      v56 = v55;
      v57 = *(v51 + 8);
      v57(v49, v52);
      v58 = sub_1D1B1312C(v54, v56, v173);

      *(v53 + 4) = v58;
      *(v53 + 12) = 2080;
      v59 = sub_1D1E68FAC();
      v61 = v60;
      v57(v168, v52);
      v62 = sub_1D1B1312C(v59, v61, v173);

      *(v53 + 14) = v62;
      _os_log_impl(&dword_1D16EC000, v46, v47, "failed to found timer with %s for parent %s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v171, -1, -1);
      MEMORY[0x1D3893640](v53, -1, -1);

      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
    }

    else
    {

      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
      v139 = *(v51 + 8);
      v139(v50, v52);
      v139(v49, v52);
    }

    **(v0 + 760) = 0;
    goto LABEL_10;
  }

  sub_1D16EEE20((v0 + 408), v0 + 368);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 952);
  v14 = *(v0 + 896);
  v15 = *(v0 + 888);
  v16 = *(v0 + 776);
  v17 = sub_1D1E6709C();
  __swift_project_value_buffer(v17, qword_1EC6459E8);
  sub_1D17419CC(v0 + 368, v0 + 448);
  v170 = *(v14 + 16);
  v170(v13, v16, v15);
  v18 = sub_1D1E6707C();
  v19 = sub_1D1E6835C();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 952);
  v22 = *(v0 + 896);
  v23 = *(v0 + 888);
  if (v20)
  {
    v24 = swift_slowAlloc();
    v167 = swift_slowAlloc();
    *&v173[0] = v167;
    *v24 = 136315394;
    v25 = *(v0 + 472);
    v26 = *(v0 + 480);
    __swift_project_boxed_opaque_existential_1((v0 + 448), v25);
    v27 = (*(v26 + 72))(v25, v26);
    v29 = v28;
    __swift_destroy_boxed_opaque_existential_1((v0 + 448));
    v30 = sub_1D1B1312C(v27, v29, v173);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2080;
    sub_1D1886B8C();
    v31 = sub_1D1E68FAC();
    v33 = v32;
    v152 = *(v22 + 8);
    v152(v21, v23);
    v34 = sub_1D1B1312C(v31, v33, v173);

    *(v24 + 14) = v34;
    _os_log_impl(&dword_1D16EC000, v18, v19, "attempt to update timer %s for parent %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v167, -1, -1);
    MEMORY[0x1D3893640](v24, -1, -1);
  }

  else
  {

    v152 = *(v22 + 8);
    v152(v21, v23);
    __swift_destroy_boxed_opaque_existential_1((v0 + 448));
  }

  v157 = *(v0 + 944);
  v160 = *(v0 + 888);
  v165 = *(v0 + 872);
  v169 = *(v0 + 864);
  v163 = *(v0 + 856);
  v159 = *(v0 + 848);
  v155 = *(v0 + 776);
  v63 = *(v0 + 392);
  v64 = *(v0 + 400);
  __swift_project_boxed_opaque_existential_1((v0 + 368), v63);
  (*(v64 + 88))(v63, v64);
  v66 = *(v0 + 392);
  v65 = *(v0 + 400);
  __swift_project_boxed_opaque_existential_1((v0 + 368), v66);
  v67 = *(v0 + 512);
  v68 = *(v0 + 520);
  v69 = __swift_project_boxed_opaque_existential_1((v0 + 488), v67);
  v70 = *(v65 + 96);
  *(v0 + 552) = v66;
  *(v0 + 560) = v65;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 528));
  v70(v69, v67, v68, v66, v65);
  __swift_project_boxed_opaque_existential_1((v0 + 528), *(v0 + 552));
  v170(v157, v155, v160);
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  v72 = *(v66 - 8);
  v73 = swift_task_alloc();
  v156 = boxed_opaque_existential_1;
  (*(v72 + 16))(v73, boxed_opaque_existential_1, v66);
  v161 = v65;
  sub_1D186EF48(v73, v157, v159, v66, v65, v163);

  if ((*(v165 + 48))(v163, 1, v169) == 1)
  {
    v74 = *(v0 + 928);
    v75 = *(v0 + 888);
    v76 = *(v0 + 856);
    v77 = *(v0 + 776);

    sub_1D1741A30(v76, &qword_1EC643860, &qword_1D1E72008);
    sub_1D17419CC(v0 + 528, v0 + 568);
    v170(v74, v77, v75);
    v78 = sub_1D1E6707C();
    v79 = sub_1D1E6833C();
    v80 = os_log_type_enabled(v78, v79);
    v81 = *(v0 + 928);
    v82 = *(v0 + 888);
    if (v80)
    {
      v83 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      *&v173[0] = v172;
      *v83 = 136315394;
      v84 = *(v0 + 592);
      v85 = *(v0 + 600);
      __swift_project_boxed_opaque_existential_1((v0 + 568), v84);
      v86 = v161[9](v84, v85);
      v88 = v87;
      __swift_destroy_boxed_opaque_existential_1((v0 + 568));
      v89 = sub_1D1B1312C(v86, v88, v173);

      *(v83 + 4) = v89;
      *(v83 + 12) = 2080;
      sub_1D1886B8C();
      v90 = sub_1D1E68FAC();
      v92 = v91;
      v152(v81, v82);
      v93 = sub_1D1B1312C(v90, v92, v173);

      *(v83 + 14) = v93;
      _os_log_impl(&dword_1D16EC000, v78, v79, "failed to create StaticTimer with %s for parent %s", v83, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v172, -1, -1);
      MEMORY[0x1D3893640](v83, -1, -1);

      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
    }

    else
    {
      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);

      v152(v81, v82);
      __swift_destroy_boxed_opaque_existential_1((v0 + 568));
    }

    **(v0 + 760) = 0;
    __swift_destroy_boxed_opaque_existential_1((v0 + 528));
    __swift_destroy_boxed_opaque_existential_1((v0 + 488));
    __swift_destroy_boxed_opaque_existential_1((v0 + 368));
    goto LABEL_10;
  }

  v94 = *(v0 + 944);
  v166 = *(v0 + 904);
  v95 = *(v0 + 896);
  v96 = *(v0 + 888);
  v97 = *(v0 + 840);
  v153 = v97;
  v98 = *(v0 + 784);
  v99 = *(v0 + 776);
  sub_1D18A2B2C(*(v0 + 856), *(v0 + 880), type metadata accessor for StaticTimer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643178, &unk_1D1E715D0);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_1D1E739C0;
  sub_1D17419CC(v0 + 528, v100 + 32);
  v101 = sub_1D1E67E7C();
  (*(*(v101 - 8) + 56))(v97, 1, 1, v101);
  v102 = v96;
  v170(v94, v99, v96);
  v103 = v98;
  v104 = sub_1D1E67E0C();
  v105 = *(v95 + 80);
  v149 = ~v105;
  v106 = (v105 + 56) & ~v105;
  v150 = v105;
  v148 = v106 + v166;
  v107 = swift_allocObject();
  v108 = MEMORY[0x1E69E85E0];
  *(v107 + 16) = v104;
  *(v107 + 24) = v108;
  *(v107 + 32) = 0;
  *(v107 + 40) = v100;
  *(v107 + 48) = v103;
  v164 = v106;
  v158 = *(v95 + 32);
  v158(v107 + v106, v94, v102);
  sub_1D17C6EF0(0, 0, v153, &unk_1D1E7BA48, v107);

  if (qword_1EE07B1E8 != -1)
  {
    swift_once();
  }

  v154 = *(v0 + 936);
  v109 = *(v0 + 888);
  v142 = v109;
  v143 = *(v0 + 944);
  v110 = *(v0 + 872);
  v111 = *(v0 + 832);
  v112 = *(v0 + 824);
  v113 = *(v0 + 808);
  v140 = *(v0 + 880);
  v147 = *(v0 + 792);
  v145 = *(v0 + 904);
  v146 = *(v0 + 784);
  v114 = *(v0 + 776);
  v141 = *(v0 + 816);
  v144 = *(v0 + 768);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
  __swift_project_value_buffer(v115, qword_1EE07B210);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860);
  v116 = *(v151 + 48);
  v170(v113, v114, v109);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643430, &unk_1D1E718B0);
  v117 = (*(v110 + 80) + 32) & ~*(v110 + 80);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_1D1E739C0;
  sub_1D18A1F94(v140, v118 + v117, type metadata accessor for StaticTimer);
  *(v113 + v116) = v118;
  swift_storeEnumTagMultiPayload();
  v119 = v0;
  sub_1D1E67ECC();
  (*(v112 + 8))(v111, v141);
  v120 = *(v0 + 120);
  v121 = *(v0 + 88);
  v173[0] = *(v0 + 72);
  v173[1] = v121;
  v173[2] = *(v0 + 104);
  v174 = v120;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645B00, &qword_1D1E7BC48);
  v123 = sub_1D1871BF8(v156, v122, v66);
  sub_1D17419CC(v0 + 528, v0 + 608);
  v170(v143, v114, v142);
  v124 = swift_allocObject();
  sub_1D16EEE20((v0 + 608), v124 + 16);
  v158(v124 + v164, v143, v142);
  *(v0 + 304) = sub_1D18A20C0;
  *(v0 + 312) = v124;
  *(v0 + 272) = MEMORY[0x1E69E9820];
  *(v0 + 280) = 1107296256;
  *(v0 + 288) = sub_1D18A2E5C;
  *(v0 + 296) = &block_descriptor_42_0;
  v125 = _Block_copy((v0 + 272));

  v162 = [v123 addSuccessBlock_];
  _Block_release(v125);

  sub_1D17419CC((v119 + 66), (v119 + 81));
  v170(v143, v114, v142);
  sub_1D17419CC((v119 + 46), (v119 + 86));
  v170(v154, v144, v142);
  v126 = (v148 + 7) & 0xFFFFFFFFFFFFFFF8;
  v127 = (v126 + 47) & 0xFFFFFFFFFFFFFFF8;
  v128 = (v150 + v127 + 8) & v149;
  v129 = swift_allocObject();
  sub_1D16EEE20((v0 + 648), v129 + 16);
  v158(v129 + v164, v143, v142);
  sub_1D16EEE20((v0 + 688), v129 + v126);
  *(v129 + v127) = v146;
  v158(v129 + v128, v154, v142);
  *(v129 + ((v128 + v145 + 7) & 0xFFFFFFFFFFFFFFF8)) = v147;
  *(v0 + 352) = sub_1D18A20E0;
  *(v0 + 360) = v129;
  *(v0 + 320) = MEMORY[0x1E69E9820];
  *(v0 + 328) = 1107296256;
  *(v0 + 336) = sub_1D189C628;
  *(v0 + 344) = &block_descriptor_48;
  v130 = _Block_copy((v0 + 320));
  v131 = v146;

  v132 = [v162 addFailureBlock_];
  _Block_release(v130);

  if (qword_1EC642200 != -1)
  {
    swift_once();
  }

  v133 = *(v0 + 880);
  v134 = *(v0 + 808);
  v135 = *(v151 + 48);
  v170(v119[101], v119[97], v119[111]);
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_1D1E739C0;
  sub_1D18A1F94(v133, v136 + v117, type metadata accessor for StaticTimer);
  *(v134 + v135) = v136;
  swift_storeEnumTagMultiPayload();
  v137 = swift_task_alloc();
  v119[124] = v137;
  *v137 = v119;
  v137[1] = sub_1D189707C;
  v138 = v119[101];

  return sub_1D18A2E60((v119 + 94), v138, 0);
}

uint64_t sub_1D189707C()
{
  v1 = *v0;
  v2 = *(*v0 + 808);

  sub_1D18A21A8(v2, type metadata accessor for CoordinationSnapshot.UpdateType);
  v3 = *(v1 + 984);
  v4 = *(v1 + 976);

  return MEMORY[0x1EEE6DFA0](sub_1D18971D4, v4, v3);
}

uint64_t sub_1D18971D4()
{
  v1 = v0[110];
  v2 = v0[95];

  sub_1D1741A30((v0 + 2), &qword_1EC642C30, &qword_1D1E6E980);
  sub_1D18A21A8(v1, type metadata accessor for StaticTimer);
  *v2 = v0[94];
  __swift_destroy_boxed_opaque_existential_1(v0 + 66);
  __swift_destroy_boxed_opaque_existential_1(v0 + 61);
  __swift_destroy_boxed_opaque_existential_1(v0 + 46);

  v3 = v0[1];

  return v3();
}

uint64_t CoordinationDataModel.deleteTimer(staticTimerID:parentContainerID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[83] = v3;
  v4[82] = a3;
  v4[81] = a2;
  v4[80] = a1;
  v4[84] = swift_getObjectType();
  v4[85] = type metadata accessor for CoordinationSnapshot.UpdateType(0);
  v4[86] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v4[87] = v5;
  v4[88] = *(v5 - 8);
  v4[89] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v4[90] = swift_task_alloc();
  sub_1D1E669FC();
  v4[91] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643860, &qword_1D1E72008);
  v4[92] = swift_task_alloc();
  v6 = type metadata accessor for StaticTimer(0);
  v4[93] = v6;
  v7 = *(v6 - 8);
  v4[94] = v7;
  v4[95] = *(v7 + 64);
  v4[96] = swift_task_alloc();
  v4[97] = swift_task_alloc();
  v8 = sub_1D1E66A7C();
  v4[98] = v8;
  v9 = *(v8 - 8);
  v4[99] = v9;
  v4[100] = *(v9 + 64);
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v4[105] = swift_task_alloc();
  v4[106] = sub_1D1E67E1C();
  v4[107] = sub_1D1E67E0C();
  v11 = sub_1D1E67D4C();
  v4[108] = v11;
  v4[109] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D1897630, v11, v10);
}

uint64_t sub_1D1897630()
{
  v166 = v0;
  v1 = *(v0 + 664);
  v2 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!*(v3 + 16))
  {
    goto LABEL_9;
  }

  v4 = sub_1D1742188();
  if ((v5 & 1) == 0)
  {

LABEL_9:
    v35 = *(v0 + 640);

    *v35 = 0;
LABEL_10:

    v36 = *(v0 + 8);

    return v36();
  }

  v6 = (*(v3 + 56) + (v4 << 7));
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  *(v0 + 48) = v6[2];
  *(v0 + 64) = v7;
  *(v0 + 16) = v9;
  *(v0 + 32) = v8;
  v10 = v6[7];
  v12 = v6[4];
  v11 = v6[5];
  *(v0 + 112) = v6[6];
  *(v0 + 128) = v10;
  *(v0 + 80) = v12;
  *(v0 + 96) = v11;
  sub_1D18783EC(v0 + 16, v0 + 144);

  sub_1D1876968(v0 + 408);
  if (!*(v0 + 432))
  {

    sub_1D1741A30(v0 + 408, &qword_1EC6456C0, &unk_1D1E7A3F0);
    if (qword_1EC642210 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 816);
    v39 = *(v0 + 808);
    v40 = *(v0 + 792);
    v41 = *(v0 + 784);
    v42 = *(v0 + 656);
    v43 = *(v0 + 648);
    v44 = sub_1D1E6709C();
    __swift_project_value_buffer(v44, qword_1EC6459E8);
    v45 = *(v40 + 16);
    v45(v38, v43, v41);
    v45(v39, v42, v41);
    v46 = sub_1D1E6707C();
    v47 = sub_1D1E6833C();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 816);
    v50 = *(v0 + 808);
    v51 = *(v0 + 792);
    v52 = *(v0 + 784);
    if (v48)
    {
      v159 = *(v0 + 808);
      v53 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      *&v164[0] = v162;
      *v53 = 136315394;
      sub_1D1886B8C();
      v54 = sub_1D1E68FAC();
      v56 = v55;
      v57 = *(v51 + 8);
      v57(v49, v52);
      v58 = sub_1D1B1312C(v54, v56, v164);

      *(v53 + 4) = v58;
      *(v53 + 12) = 2080;
      v59 = sub_1D1E68FAC();
      v61 = v60;
      v57(v159, v52);
      v62 = sub_1D1B1312C(v59, v61, v164);

      *(v53 + 14) = v62;
      _os_log_impl(&dword_1D16EC000, v46, v47, "failed to found timer with %s for parent %s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v162, -1, -1);
      MEMORY[0x1D3893640](v53, -1, -1);

      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
    }

    else
    {

      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
      v138 = *(v51 + 8);
      v138(v50, v52);
      v138(v49, v52);
    }

    **(v0 + 640) = 0;
    goto LABEL_10;
  }

  sub_1D16EEE20((v0 + 408), v0 + 368);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 840);
  v14 = *(v0 + 792);
  v15 = *(v0 + 784);
  v16 = *(v0 + 656);
  v17 = sub_1D1E6709C();
  __swift_project_value_buffer(v17, qword_1EC6459E8);
  sub_1D17419CC(v0 + 368, v0 + 448);
  v161 = *(v14 + 16);
  v161(v13, v16, v15);
  v18 = sub_1D1E6707C();
  v19 = sub_1D1E6835C();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 840);
  v22 = *(v0 + 792);
  v23 = *(v0 + 784);
  if (v20)
  {
    v24 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    *&v164[0] = v158;
    *v24 = 136315394;
    v26 = *(v0 + 472);
    v25 = *(v0 + 480);
    __swift_project_boxed_opaque_existential_1((v0 + 448), v26);
    v27 = (*(v25 + 72))(v26, v25);
    v29 = v28;
    __swift_destroy_boxed_opaque_existential_1((v0 + 448));
    v30 = sub_1D1B1312C(v27, v29, v164);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2080;
    sub_1D1886B8C();
    v31 = sub_1D1E68FAC();
    v33 = v32;
    v152 = *(v22 + 8);
    v152(v21, v23);
    v34 = sub_1D1B1312C(v31, v33, v164);

    *(v24 + 14) = v34;
    _os_log_impl(&dword_1D16EC000, v18, v19, "attempt to delete timer %s for parent %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v158, -1, -1);
    MEMORY[0x1D3893640](v24, -1, -1);
  }

  else
  {

    v152 = *(v22 + 8);
    v152(v21, v23);
    __swift_destroy_boxed_opaque_existential_1((v0 + 448));
  }

  v63 = *(v0 + 832);
  v154 = *(v0 + 784);
  v64 = *(v0 + 752);
  v160 = *(v0 + 744);
  v65 = *(v0 + 736);
  v66 = *(v0 + 728);
  v67 = *(v0 + 656);
  v68 = *(v0 + 392);
  v156 = *(v0 + 400);
  v69 = __swift_project_boxed_opaque_existential_1((v0 + 368), v68);
  v70 = *(v68 - 8);
  v71 = swift_task_alloc();
  (*(v70 + 16))(v71, v69, v68);
  v161(v63, v67, v154);
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  sub_1D186EF48(v71, v63, v66, v68, v156, v65);

  if ((*(v64 + 48))(v65, 1, v160) == 1)
  {
    v72 = *(v0 + 824);
    v73 = *(v0 + 784);
    v74 = *(v0 + 736);
    v75 = *(v0 + 656);

    sub_1D1741A30(v74, &qword_1EC643860, &qword_1D1E72008);
    sub_1D17419CC(v0 + 368, v0 + 488);
    v161(v72, v75, v73);
    v76 = sub_1D1E6707C();
    v77 = sub_1D1E6833C();
    v78 = os_log_type_enabled(v76, v77);
    v79 = *(v0 + 824);
    v80 = *(v0 + 784);
    if (v78)
    {
      v81 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      *&v164[0] = v163;
      *v81 = 136315394;
      v82 = *(v0 + 512);
      v83 = *(v0 + 520);
      __swift_project_boxed_opaque_existential_1((v0 + 488), v82);
      v84 = (*(v83 + 72))(v82, v83);
      v86 = v85;
      __swift_destroy_boxed_opaque_existential_1((v0 + 488));
      v87 = sub_1D1B1312C(v84, v86, v164);

      *(v81 + 4) = v87;
      *(v81 + 12) = 2080;
      sub_1D1886B8C();
      v88 = sub_1D1E68FAC();
      v90 = v89;
      v152(v79, v80);
      v91 = sub_1D1B1312C(v88, v90, v164);

      *(v81 + 14) = v91;
      _os_log_impl(&dword_1D16EC000, v76, v77, "failed to create StaticTimer with %s for parent %s", v81, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v163, -1, -1);
      MEMORY[0x1D3893640](v81, -1, -1);

      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
    }

    else
    {
      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);

      v152(v79, v80);
      __swift_destroy_boxed_opaque_existential_1((v0 + 488));
    }

    **(v0 + 640) = 0;
    __swift_destroy_boxed_opaque_existential_1((v0 + 368));
    goto LABEL_10;
  }

  aBlock = (v0 + 272);
  v148 = (v0 + 320);
  v92 = *(v0 + 832);
  v157 = *(v0 + 800);
  v93 = *(v0 + 792);
  v94 = *(v0 + 784);
  v95 = *(v0 + 720);
  v149 = v95;
  v96 = *(v0 + 664);
  v97 = *(v0 + 656);
  sub_1D18A2B2C(*(v0 + 736), *(v0 + 776), type metadata accessor for StaticTimer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643178, &unk_1D1E715D0);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_1D1E739C0;
  sub_1D17419CC(v0 + 368, v98 + 32);
  v99 = sub_1D1E67E7C();
  (*(*(v99 - 8) + 56))(v95, 1, 1, v99);
  v100 = v94;
  v161(v92, v97, v94);
  v101 = v96;
  v102 = sub_1D1E67E0C();
  v103 = (*(v93 + 80) + 56) & ~*(v93 + 80);
  v151 = v103 + v157;
  v104 = swift_allocObject();
  v105 = MEMORY[0x1E69E85E0];
  *(v104 + 16) = v102;
  *(v104 + 24) = v105;
  *(v104 + 32) = 1;
  *(v104 + 40) = v98;
  *(v104 + 48) = v101;
  v155 = v103;
  v153 = *(v93 + 32);
  v153(v104 + v103, v92, v100);
  sub_1D17C6EF0(0, 0, v149, &unk_1D1E7BC58, v104);

  v106 = v0;
  if (qword_1EE07B1E8 != -1)
  {
    swift_once();
  }

  v107 = *(v0 + 784);
  v150 = v107;
  v108 = *(v0 + 776);
  v140 = *(v0 + 832);
  v141 = *(v0 + 768);
  v142 = *(v0 + 760);
  v109 = *(v0 + 752);
  v110 = *(v0 + 712);
  v111 = *(v0 + 704);
  v112 = *(v106 + 688);
  v139 = *(v106 + 696);
  v143 = *(v106 + 664);
  v144 = *(v106 + 672);
  v113 = *(v106 + 656);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
  __swift_project_value_buffer(v114, qword_1EE07B210);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860);
  v115 = *(v145 + 48);
  v161(v112, v113, v107);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643430, &unk_1D1E718B0);
  v116 = *(v109 + 80);
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_1D1E739C0;
  sub_1D18A1F94(v108, v117 + ((v116 + 32) & ~v116), type metadata accessor for StaticTimer);
  *(v112 + v115) = v117;
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  (*(v111 + 8))(v110, v139);
  v118 = *(v106 + 392);
  v119 = __swift_project_boxed_opaque_existential_1((v106 + 368), v118);
  v120 = *(v106 + 120);
  v121 = *(v106 + 88);
  v164[0] = *(v106 + 72);
  v164[1] = v121;
  v164[2] = *(v106 + 104);
  v165 = v120;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645B00, &qword_1D1E7BC48);
  v123 = sub_1D1872064(v119, v122, v118);
  sub_1D17419CC(v106 + 368, v106 + 528);
  v161(v140, v113, v150);
  v124 = swift_allocObject();
  sub_1D16EEE20((v106 + 528), v124 + 16);
  v153(v124 + v155, v140, v150);
  *(v106 + 304) = sub_1D18A2208;
  *(v106 + 312) = v124;
  *(v106 + 272) = MEMORY[0x1E69E9820];
  *(v106 + 280) = 1107296256;
  *(v106 + 288) = sub_1D18A2E5C;
  *(v106 + 296) = &block_descriptor_60;
  v125 = _Block_copy(aBlock);

  aBlocka = [v123 addSuccessBlock_];
  _Block_release(v125);

  sub_1D17419CC(v106 + 368, v106 + 568);
  v161(v140, v113, v150);
  sub_1D18A1F94(v108, v141, type metadata accessor for StaticTimer);
  v126 = (v151 + 7) & 0xFFFFFFFFFFFFFFF8;
  v127 = (v126 + v116 + 8) & ~v116;
  v128 = swift_allocObject();
  sub_1D16EEE20((v106 + 568), v128 + 16);
  v153(v128 + v155, v140, v150);
  *(v128 + v126) = v143;
  sub_1D18A2B2C(v141, v128 + v127, type metadata accessor for StaticTimer);
  *(v128 + ((v142 + v127 + 7) & 0xFFFFFFFFFFFFFFF8)) = v144;
  *(v106 + 352) = sub_1D18A2228;
  *(v106 + 360) = v128;
  *(v106 + 320) = MEMORY[0x1E69E9820];
  *(v106 + 328) = 1107296256;
  *(v106 + 336) = sub_1D189C628;
  *(v106 + 344) = &block_descriptor_66;
  v129 = _Block_copy(v148);
  v130 = v143;

  v131 = [aBlocka addFailureBlock_];
  _Block_release(v129);

  if (qword_1EC642200 != -1)
  {
    swift_once();
  }

  v132 = *(v106 + 776);
  v133 = *(v106 + 688);
  v134 = *(v145 + 48);
  v161(v133, *(v106 + 656), *(v106 + 784));
  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_1D1E739C0;
  sub_1D18A1F94(v132, v135 + ((v116 + 32) & ~v116), type metadata accessor for StaticTimer);
  *(v133 + v134) = v135;
  swift_storeEnumTagMultiPayload();
  v136 = swift_task_alloc();
  *(v106 + 880) = v136;
  *v136 = v106;
  v136[1] = sub_1D189878C;
  v137 = *(v106 + 688);

  return sub_1D18A2E60(v106 + 632, v137, 0);
}

uint64_t sub_1D189878C()
{
  v1 = *v0;
  v2 = *(*v0 + 688);

  sub_1D18A21A8(v2, type metadata accessor for CoordinationSnapshot.UpdateType);
  v3 = *(v1 + 872);
  v4 = *(v1 + 864);

  return MEMORY[0x1EEE6DFA0](sub_1D18988E4, v4, v3);
}

uint64_t sub_1D18988E4()
{
  v1 = v0[97];
  v2 = v0[80];

  sub_1D1741A30((v0 + 2), &qword_1EC642C30, &qword_1D1E6E980);
  sub_1D18A21A8(v1, type metadata accessor for StaticTimer);
  *v2 = v0[79];
  __swift_destroy_boxed_opaque_existential_1(v0 + 46);

  v3 = v0[1];

  return v3();
}

uint64_t CoordinationDataModel.onboard(siriEndpointProfile:parentContainerID:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[32] = a2;
  v2[33] = ObjectType;
  v2[31] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v2[34] = v6;
  v2[35] = *(v6 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = type metadata accessor for CoordinationSnapshot.UpdateType(0);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v7 = sub_1D1E66A7C();
  v2[40] = v7;
  v2[41] = *(v7 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = sub_1D1E67E1C();
  v2[49] = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();
  v2[50] = v9;
  v2[51] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1898C34, v9, v8);
}

uint64_t sub_1D1898C34()
{
  v73 = v0;
  if ([*(v0 + 248) sessionState] == 1)
  {

    if (qword_1EC642210 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 376);
    v2 = *(v0 + 320);
    v3 = *(v0 + 328);
    v5 = *(v0 + 248);
    v4 = *(v0 + 256);
    v6 = sub_1D1E6709C();
    __swift_project_value_buffer(v6, qword_1EC6459E8);
    (*(v3 + 16))(v1, v4, v2);
    v7 = v5;
    v8 = sub_1D1E6707C();
    v9 = sub_1D1E6835C();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 376);
    v13 = *(v0 + 320);
    v12 = *(v0 + 328);
    if (v10)
    {
      v14 = *(v0 + 248);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v72[0] = v70;
      *v15 = 138412546;
      *(v15 + 4) = v14;
      *v16 = v14;
      *(v15 + 12) = 2080;
      sub_1D1886B8C();
      v17 = v14;
      v18 = sub_1D1E68FAC();
      v20 = v19;
      (*(v12 + 8))(v11, v13);
      v21 = sub_1D1B1312C(v18, v20, v72);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_1D16EC000, v8, v9, "Session already active for %@ with parentUUID: %s, no need to onboard", v15, 0x16u);
      sub_1D1741A30(v16, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v70);
      MEMORY[0x1D3893640](v70, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    v44 = *(v0 + 8);

    return v44(1);
  }

  else
  {
    if (qword_1EC642210 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 368);
    v23 = *(v0 + 320);
    v24 = *(v0 + 328);
    v26 = *(v0 + 248);
    v25 = *(v0 + 256);
    v27 = sub_1D1E6709C();
    *(v0 + 416) = __swift_project_value_buffer(v27, qword_1EC6459E8);
    v28 = *(v24 + 16);
    *(v0 + 424) = v28;
    *(v0 + 432) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v69 = v28;
    v28(v22, v25, v23);
    v29 = v26;
    v30 = sub_1D1E6707C();
    v31 = sub_1D1E6835C();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 368);
    v35 = *(v0 + 320);
    v34 = *(v0 + 328);
    if (v32)
    {
      v36 = *(v0 + 248);
      v37 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v72[0] = v68;
      *v37 = 138412546;
      *(v37 + 4) = v36;
      *v67 = v36;
      *(v37 + 12) = 2080;
      sub_1D1886B8C();
      v38 = v36;
      v39 = sub_1D1E68FAC();
      v41 = v40;
      v42 = *(v34 + 8);
      v42(v33, v35);
      v43 = sub_1D1B1312C(v39, v41, v72);

      *(v37 + 14) = v43;
      _os_log_impl(&dword_1D16EC000, v30, v31, "Update to loading state for %@ with parentUUID: %s", v37, 0x16u);
      sub_1D1741A30(v67, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v67, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x1D3893640](v68, -1, -1);
      MEMORY[0x1D3893640](v37, -1, -1);
    }

    else
    {

      v42 = *(v34 + 8);
      v42(v33, v35);
    }

    v71 = v42;
    *(v0 + 440) = v42;
    if (qword_1EC642200 != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 360);
    v47 = *(v0 + 320);
    v48 = *(v0 + 328);
    v49 = *(v0 + 312);
    v50 = *(v0 + 256);
    *(v0 + 448) = qword_1EC6BE0C8;
    *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
    *(v0 + 464) = *(v48 + 72);
    v51 = *(v48 + 80);
    *(v0 + 584) = v51;
    v52 = (v51 + 32) & ~v51;
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1D1E739C0;
    v69(v53 + v52, v50, v47);
    *v49 = v53;
    swift_storeEnumTagMultiPayload();
    *(v0 + 472) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    inited = swift_initStackObject();
    *(v0 + 480) = inited;
    *(inited + 16) = xmmword_1D1E73FA0;
    v69(v46, v50, v47);
    *(v0 + 488) = type metadata accessor for _CoordinationClassObject(0);
    v55 = swift_allocObject();
    v69(v55 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id, v46, v47);
    v56 = swift_task_alloc();
    *(v56 + 16) = v46;
    v57 = sub_1D18924D8(sub_1D1891E38, v56, MEMORY[0x1E69E7CC0]);
    v58 = *(v0 + 360);

    *(v55 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarms) = v57;
    v59 = swift_task_alloc();
    *(v59 + 16) = v58;
    v60 = sub_1D1788104(sub_1D1891E58, v59, MEMORY[0x1E69E7CC0]);
    *(v0 + 496) = 0;
    v61 = v60;
    v62 = *(v0 + 360);
    v63 = *(v0 + 320);
    v64 = *(v0 + 328);

    *(v55 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timers) = v61;
    *(v55 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarmError) = 1;
    *(v55 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timerError) = 1;
    *(v0 + 504) = (v64 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v71(v62, v63);
    *(inited + 32) = v55;
    v65 = swift_task_alloc();
    *(v0 + 512) = v65;
    *v65 = v0;
    v65[1] = sub_1D18994E4;
    v66 = *(v0 + 312);

    return sub_1D18A2E60(v0 + 224, v66, inited);
  }
}

uint64_t sub_1D18994E4()
{
  v1 = *v0;
  v2 = *(*v0 + 312);

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1D18A21A8(v2, type metadata accessor for CoordinationSnapshot.UpdateType);

  v3 = *(v1 + 408);
  v4 = *(v1 + 400);

  return MEMORY[0x1EEE6DFA0](sub_1D1899688, v4, v3);
}

uint64_t sub_1D1899688()
{
  v44 = v0;
  v1 = v0[62];
  v2 = v0[53];
  v3 = v0[44];
  v4 = v0[40];
  v2(v3, v0[32], v4);
  v5 = swift_allocObject();
  v0[65] = v5;
  v6 = OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id;
  v2(v5 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id, v3, v4);
  v7 = swift_task_alloc();
  *(v7 + 16) = v3;
  v8 = sub_1D18924D8(sub_1D18922C0, v7, MEMORY[0x1E69E7CC0]);
  if (v1)
  {
    v9 = v0[55];
    v10 = v0[40];

    v9(v5 + v6, v10);

    return swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v8;
    v12 = v0[44];

    *(v5 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarms) = v11;
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    v14 = sub_1D1788104(sub_1D18922A0, v13, MEMORY[0x1E69E7CC0]);
    v15 = v0[55];
    v17 = v14;
    v40 = v0[53];
    v18 = v0[43];
    v19 = v0[44];
    v20 = v0[40];
    v21 = v0[32];
    v39 = v0[31];

    *(v5 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timers) = v17;
    *(v5 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarmError) = 3;
    *(v5 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timerError) = 3;
    v15(v19, v20);
    v40(v18, v21, v20);
    v22 = v39;
    v23 = sub_1D1E6707C();
    v24 = sub_1D1E6835C();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[55];
    v27 = v0[43];
    v28 = v0[40];
    if (v25)
    {
      v29 = v0[31];
      v30 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v42;
      *v30 = 138412546;
      *(v30 + 4) = v29;
      *v41 = v29;
      *(v30 + 12) = 2080;
      sub_1D1886B8C();
      v31 = v29;
      v32 = sub_1D1E68FAC();
      v34 = v33;
      v26(v27, v28);
      v35 = sub_1D1B1312C(v32, v34, &v43);

      *(v30 + 14) = v35;
      _os_log_impl(&dword_1D16EC000, v23, v24, "Perform onboarding for %@ with parentUUID: %s", v30, 0x16u);
      sub_1D1741A30(v41, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v41, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1D3893640](v42, -1, -1);
      MEMORY[0x1D3893640](v30, -1, -1);
    }

    else
    {

      v26(v27, v28);
    }

    v36 = v0[31];
    v37 = [objc_allocWithZone(MEMORY[0x1E696CC58]) init];
    v0[66] = v37;
    v0[2] = v0;
    v0[7] = v0 + 29;
    v0[3] = sub_1D1899B70;
    v38 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645B08, &qword_1D1E7BC68);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D189A7DC;
    v0[13] = &block_descriptor_72;
    v0[14] = v38;
    [v36 applyOnboardingSelections:v37 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1D1899B70()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 536) = v2;
  v3 = *(v1 + 408);
  v4 = *(v1 + 400);
  if (v2)
  {
    v5 = sub_1D189A3D0;
  }

  else
  {
    v5 = sub_1D1899CA0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D1899CA0()
{
  v45 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);

  v1(v2, v4, v3);
  v6 = v5;
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6835C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 440);
  v11 = *(v0 + 336);
  v12 = *(v0 + 320);
  v13 = *(v0 + 248);
  if (v9)
  {
    v40 = v8;
    v14 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v44 = v42;
    *v14 = 138412802;
    *(v14 + 4) = v13;
    *v38 = v13;
    *(v14 + 12) = 2080;
    sub_1D1886B8C();
    v15 = v13;
    v16 = sub_1D1E68FAC();
    v18 = v17;
    v10(v11, v12);
    v19 = sub_1D1B1312C(v16, v18, &v44);

    *(v14 + 14) = v19;
    *(v14 + 22) = 1024;
    v20 = [v15 sessionState];

    *(v14 + 24) = v20 == 1;
    _os_log_impl(&dword_1D16EC000, v7, v40, "Perform onboarding finish for %@ with parentUUID: %s with result %{BOOL}d", v14, 0x1Cu);
    sub_1D1741A30(v38, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  else
  {

    v10(v11, v12);
  }

  if ([*(v0 + 248) sessionState] == 1)
  {

    if (qword_1EE07B1E8 != -1)
    {
      swift_once();
    }

    v37 = *(v0 + 424);
    v36 = *(v0 + 320);
    v21 = *(v0 + 304);
    v22 = *(v0 + 280);
    v39 = *(v0 + 288);
    v41 = *(v0 + 272);
    v23 = (*(v0 + 584) + 32) & ~*(v0 + 584);
    v24 = *(v0 + 256);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
    __swift_project_value_buffer(v25, qword_1EE07B210);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D1E739C0;
    v37(v26 + v23, v24, v36);
    *v21 = v26;
    swift_storeEnumTagMultiPayload();
    sub_1D1E67ECC();

    (*(v22 + 8))(v39, v41);

    v27 = *(v0 + 8);

    return v27(1);
  }

  else
  {
    v29 = *(v0 + 520);
    v30 = *(v0 + 264);
    v43 = *(v0 + 248);
    v31 = sub_1D1E67E0C();
    *(v0 + 544) = v31;
    v32 = swift_task_alloc();
    *(v0 + 552) = v32;
    *(v32 + 16) = v43;
    *(v32 + 32) = v29;
    *(v32 + 40) = v30;
    v33 = swift_task_alloc();
    *(v0 + 560) = v33;
    *v33 = v0;
    v33[1] = sub_1D189A184;
    v34 = MEMORY[0x1E69E85E0];
    v35 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DDE0](v0 + 588, v31, v34, 0xD00000000000002FLL, 0x80000001D1EBB540, sub_1D18A2394, v32, v35);
  }
}

uint64_t sub_1D189A184()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return MEMORY[0x1EEE6DFA0](sub_1D189A2E4, v3, v2);
}

uint64_t sub_1D189A2E4()
{

  v1 = *(v0 + 588);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D189A3D0(uint64_t a1)
{
  v2 = *(v1 + 528);
  v13 = *(v1 + 520);
  v12 = *(v1 + 424);
  v3 = *(v1 + 320);
  v4 = *(v1 + 304);
  v5 = *(v1 + 256);
  v6 = (*(v1 + 584) + 32) & ~*(v1 + 584);
  swift_willThrow();

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D1E739C0;
  v12(v7 + v6, v5, v3);
  *v4 = v7;
  swift_storeEnumTagMultiPayload();
  inited = swift_initStackObject();
  *(v1 + 568) = inited;
  *(inited + 16) = xmmword_1D1E73FA0;
  *(inited + 32) = v13;

  v9 = swift_task_alloc();
  *(v1 + 576) = v9;
  *v9 = v1;
  v9[1] = sub_1D189A54C;
  v10 = *(v1 + 304);

  return sub_1D18A2E60(v1 + 240, v10, inited);
}

uint64_t sub_1D189A54C()
{
  v1 = *v0;
  v2 = *(*v0 + 304);

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1D18A21A8(v2, type metadata accessor for CoordinationSnapshot.UpdateType);

  v3 = *(v1 + 408);
  v4 = *(v1 + 400);

  return MEMORY[0x1EEE6DFA0](sub_1D189A6F0, v4, v3);
}

uint64_t sub_1D189A6F0()
{
  v1 = *(v0 + 536);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1D189A7DC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v6 = swift_allocError();
    *v7 = a2;
    v8 = a2;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a3;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

void sub_1D189A8A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v27 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645B10, &qword_1D1E7BCB8);
  v25 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v26 = &v25 - v10;
  v12 = sub_1D1E66A7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = objc_opt_self();
  (*(v13 + 16))(v15, a3, v12);
  (*(v8 + 16))(v11, a1, v7);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v27;
  *(v19 + 16) = v27;
  (*(v13 + 32))(v19 + v16, v15, v12);
  (*(v8 + 32))(v19 + v17, v26, v25);
  v21 = v30;
  *(v19 + v18) = v29;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
  aBlock[4] = sub_1D18A2B94;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D18A2E5C;
  aBlock[3] = &block_descriptor_147;
  v22 = _Block_copy(aBlock);
  v23 = v20;

  v24 = [v28 scheduledTimerWithTimeInterval:0 repeats:v22 block:20.0];
  _Block_release(v22);
}

uint64_t sub_1D189AB94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = a6;
  v62 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v60 = &v49 - v10;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v58 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v49 - v13;
  v14 = sub_1D1E66A7C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v53 = v17;
  v54 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v49 - v18;
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v20 = sub_1D1E6709C();
  __swift_project_value_buffer(v20, qword_1EC6459E8);
  v63 = *(v15 + 16);
  v64 = v15 + 16;
  v63(v19, a3, v14);
  v21 = a2;
  v22 = sub_1D1E6707C();
  v23 = sub_1D1E6835C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v52 = a4;
    v25 = v24;
    v26 = swift_slowAlloc();
    v49 = v26;
    v50 = swift_slowAlloc();
    v65 = v50;
    *v25 = 138412802;
    *(v25 + 4) = v21;
    *v26 = v21;
    *(v25 + 12) = 2080;
    sub_1D1886B8C();
    v27 = v15;
    v28 = v21;
    v51 = a3;
    v29 = v28;
    v30 = sub_1D1E68FAC();
    v32 = v31;
    (*(v27 + 8))(v19, v14);
    v33 = sub_1D1B1312C(v30, v32, &v65);
    v15 = v27;

    *(v25 + 14) = v33;
    *(v25 + 22) = 1024;
    v34 = [v29 sessionState];

    *(v25 + 24) = v34 == 1;
    a3 = v51;
    _os_log_impl(&dword_1D16EC000, v22, v23, "20 seconds timer time up for %@ with parentUUID: %s with result %{BOOL}d", v25, 0x1Cu);
    v35 = v49;
    sub_1D1741A30(v49, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v35, -1, -1);
    v36 = v50;
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x1D3893640](v36, -1, -1);
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v19, v14);
  }

  if ([v21 sessionState] == 1)
  {
    if (qword_1EE07B1E8 != -1)
    {
      swift_once();
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
    __swift_project_value_buffer(v37, qword_1EE07B210);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
    v38 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1D1E739C0;
    v63((v39 + v38), a3, v14);
    *v58 = v39;
    swift_storeEnumTagMultiPayload();
    v40 = v55;
    sub_1D1E67ECC();
    (*(v56 + 8))(v40, v57);
    v66 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645B10, &qword_1D1E7BCB8);
  }

  else
  {
    v41 = sub_1D1E67E7C();
    v42 = v60;
    (*(*(v41 - 8) + 56))(v60, 1, 1, v41);
    v43 = v54;
    v63(v54, a3, v14);
    v44 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v45 = (v53 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    (*(v15 + 32))(v46 + v44, v43, v14);
    v47 = v61;
    *(v46 + v45) = v62;
    *(v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8)) = v47;

    sub_1D17C7818(0, 0, v42, &unk_1D1E7BCC8, v46);

    v67 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645B10, &qword_1D1E7BCB8);
  }

  return sub_1D1E67D6C();
}

uint64_t sub_1D189B248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v5[10] = type metadata accessor for CoordinationSnapshot.UpdateType(0);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D189B2E0, 0, 0);
}

uint64_t sub_1D189B2E0()
{
  *(v0 + 96) = sub_1D1E67E1C();
  *(v0 + 104) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D189B378, v2, v1);
}

uint64_t sub_1D189B378()
{

  if (qword_1EC642200 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D189B410, 0, 0);
}

uint64_t sub_1D189B410(uint64_t a1)
{
  *(v1 + 112) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D189B49C, v3, v2);
}

uint64_t sub_1D189B49C()
{

  *(v0 + 120) = qword_1EC6BE0C8;

  return MEMORY[0x1EEE6DFA0](sub_1D189B510, 0, 0);
}

uint64_t sub_1D189B510()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D1E739C0;
  (*(v5 + 16))(v7 + v6, v3, v4);
  *v1 = v7;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
  inited = swift_initStackObject();
  v0[16] = inited;
  *(inited + 16) = xmmword_1D1E73FA0;
  *(inited + 32) = v2;

  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_1D189B6D4;
  v10 = v0[11];
  v11 = v0[7];

  return sub_1D18A2E60(v11, v10, inited);
}

uint64_t sub_1D189B6D4(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 144) = a1;

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1D18A21A8(v2, type metadata accessor for CoordinationSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D189B83C, 0, 0);
}

uint64_t sub_1D189B83C()
{
  *(v0[7] + 8) = v0[18];

  v1 = v0[1];

  return v1();
}

uint64_t CoordinationDataModel.addAlarm(_:parentContainerID:)(uint64_t a1, uint64_t a2)
{
  v3[77] = v2;
  v3[76] = a2;
  v3[75] = a1;
  v3[78] = swift_getObjectType();
  v3[79] = type metadata accessor for CoordinationSnapshot.UpdateType(0);
  v3[80] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v3[81] = v4;
  v3[82] = *(v4 - 8);
  v3[83] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v3[84] = swift_task_alloc();
  v5 = *(type metadata accessor for StaticAlarm(0) - 8);
  v3[85] = v5;
  v3[86] = *(v5 + 64);
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v6 = sub_1D1E66A7C();
  v3[89] = v6;
  v7 = *(v6 - 8);
  v3[90] = v7;
  v3[91] = *(v7 + 64);
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v3[94] = sub_1D1E67E1C();
  v3[95] = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D189BB04, v9, v8);
}

uint64_t sub_1D189BB04()
{
  v101 = v0;
  v1 = *(v0 + 616);

  v2 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {

    v4 = sub_1D1742188();
    if (v5)
    {
      v6 = *(v0 + 600);
      v7 = (*(v3 + 56) + (v4 << 7));
      v8 = v7[3];
      v10 = *v7;
      v9 = v7[1];
      *(v0 + 48) = v7[2];
      *(v0 + 64) = v8;
      *(v0 + 16) = v10;
      *(v0 + 32) = v9;
      v11 = v7[7];
      v13 = v7[4];
      v12 = v7[5];
      *(v0 + 112) = v7[6];
      *(v0 + 128) = v11;
      *(v0 + 80) = v13;
      *(v0 + 96) = v12;
      sub_1D18783EC(v0 + 16, v0 + 144);

      *(v0 + 592) = v6;
      sub_1D1877D48();
      v14 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643170, &qword_1D1E7A060);
      if (swift_dynamicCast())
      {
        sub_1D16EEE20((v0 + 408), v0 + 368);
        if (qword_1EC642210 != -1)
        {
          swift_once();
        }

        v15 = *(v0 + 744);
        v16 = *(v0 + 720);
        v17 = *(v0 + 712);
        v18 = *(v0 + 608);
        v19 = sub_1D1E6709C();
        __swift_project_value_buffer(v19, qword_1EC6459E8);
        sub_1D17419CC(v0 + 368, v0 + 448);
        v98 = *(v16 + 16);
        v98(v15, v18, v17);
        v20 = sub_1D1E6707C();
        v21 = sub_1D1E6835C();
        v22 = os_log_type_enabled(v20, v21);
        v23 = *(v0 + 744);
        v24 = *(v0 + 720);
        v25 = *(v0 + 712);
        if (v22)
        {
          v26 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          *&v99[0] = v96;
          *v26 = 136315394;
          v27 = *(v0 + 472);
          v28 = *(v0 + 480);
          __swift_project_boxed_opaque_existential_1((v0 + 448), v27);
          v29 = (*(v28 + 64))(v27, v28);
          v31 = v30;
          __swift_destroy_boxed_opaque_existential_1((v0 + 448));
          v32 = sub_1D1B1312C(v29, v31, v99);

          *(v26 + 4) = v32;
          *(v26 + 12) = 2080;
          sub_1D1886B8C();
          v33 = sub_1D1E68FAC();
          v35 = v34;
          (*(v24 + 8))(v23, v25);
          v36 = sub_1D1B1312C(v33, v35, v99);

          *(v26 + 14) = v36;
          _os_log_impl(&dword_1D16EC000, v20, v21, "attempt to add alarm %s for parent %s", v26, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D3893640](v96, -1, -1);
          MEMORY[0x1D3893640](v26, -1, -1);
        }

        else
        {

          (*(v24 + 8))(v23, v25);
          __swift_destroy_boxed_opaque_existential_1((v0 + 448));
        }

        v37 = *(v0 + 736);
        v97 = *(v0 + 728);
        v38 = *(v0 + 720);
        v39 = *(v0 + 712);
        v89 = *(v0 + 704);
        v91 = *(v0 + 672);
        v95 = *(v0 + 616);
        v40 = *(v0 + 608);
        v41 = *(v0 + 392);
        v42 = *(v0 + 400);
        v43 = __swift_project_boxed_opaque_existential_1((v0 + 368), v41);
        v44 = *(v41 - 8);
        v45 = swift_task_alloc();
        (*(v44 + 16))(v45, v43, v41);
        v98(v37, v40, v39);
        v93 = v37;
        sub_1D1869A54(v45, v37, v41, v42, v89);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643168, &unk_1D1E715C0);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1D1E739C0;
        sub_1D17419CC(v0 + 368, v46 + 32);
        v47 = sub_1D1E67E7C();
        (*(*(v47 - 8) + 56))(v91, 1, 1, v47);
        v48 = v37;
        v49 = v39;
        v98(v48, v40, v39);
        v50 = v95;
        v51 = sub_1D1E67E0C();
        v52 = (*(v38 + 80) + 56) & ~*(v38 + 80);
        v53 = swift_allocObject();
        v54 = MEMORY[0x1E69E85E0];
        *(v53 + 16) = v51;
        *(v53 + 24) = v54;
        *(v53 + 32) = 0;
        *(v53 + 40) = v46;
        *(v53 + 48) = v50;
        v55 = v93;
        v94 = *(v38 + 32);
        v94(v53 + v52, v55, v49);
        sub_1D17C6EF0(0, 0, v91, &unk_1D1E7BC78, v53);

        if (qword_1EE07B1E8 != -1)
        {
          swift_once();
        }

        v56 = *(v0 + 712);
        v83 = v56;
        v84 = *(v0 + 736);
        v92 = *(v0 + 704);
        v85 = *(v0 + 696);
        v86 = *(v0 + 688);
        v57 = *(v0 + 680);
        v58 = *(v0 + 664);
        v59 = *(v0 + 656);
        v60 = *(v0 + 640);
        v82 = *(v0 + 648);
        v87 = *(v0 + 616);
        v88 = *(v0 + 624);
        v61 = *(v0 + 608);
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
        __swift_project_value_buffer(v62, qword_1EE07B210);
        v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48);
        v98(v60, v61, v56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643438, &qword_1D1E72010);
        v64 = *(v57 + 80);
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_1D1E739C0;
        sub_1D18A1F94(v92, v65 + ((v64 + 32) & ~v64), type metadata accessor for StaticAlarm);
        *(v60 + v63) = v65;
        swift_storeEnumTagMultiPayload();
        sub_1D1E67ECC();
        (*(v59 + 8))(v58, v82);
        v66 = *(v0 + 392);
        v67 = __swift_project_boxed_opaque_existential_1((v0 + 368), v66);
        v68 = *(v0 + 64);
        v69 = *(v0 + 32);
        v99[0] = *(v0 + 16);
        v99[1] = v69;
        v99[2] = *(v0 + 48);
        v100 = v68;
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AF8, &qword_1D1E7BC28);
        v71 = sub_1D187178C(v67, v70, v66);
        sub_1D17419CC(v0 + 368, v0 + 488);
        v98(v84, v61, v83);
        v72 = swift_allocObject();
        sub_1D16EEE20((v0 + 488), v72 + 16);
        v94(v72 + v52, v84, v83);
        *(v0 + 304) = sub_1D18A23A0;
        *(v0 + 312) = v72;
        *(v0 + 272) = MEMORY[0x1E69E9820];
        *(v0 + 280) = 1107296256;
        *(v0 + 288) = sub_1D18A2E5C;
        *(v0 + 296) = &block_descriptor_86;
        v73 = _Block_copy((v0 + 272));

        aBlock = [v71 addSuccessBlock_];
        _Block_release(v73);

        sub_1D17419CC(v0 + 368, v0 + 528);
        v98(v84, v61, v83);
        sub_1D18A1F94(v92, v85, type metadata accessor for StaticAlarm);
        v74 = (v52 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
        v75 = (v74 + v64 + 8) & ~v64;
        v76 = swift_allocObject();
        sub_1D16EEE20((v0 + 528), v76 + 16);
        v94(v76 + v52, v84, v83);
        *(v76 + v74) = v87;
        sub_1D18A2B2C(v85, v76 + v75, type metadata accessor for StaticAlarm);
        *(v76 + ((v86 + v75 + 7) & 0xFFFFFFFFFFFFFFF8)) = v88;
        *(v0 + 352) = sub_1D18A2558;
        *(v0 + 360) = v76;
        *(v0 + 320) = MEMORY[0x1E69E9820];
        *(v0 + 328) = 1107296256;
        *(v0 + 336) = sub_1D189C628;
        *(v0 + 344) = &block_descriptor_92_0;
        v77 = _Block_copy((v0 + 320));
        v78 = v87;

        v79 = [aBlock addFailureBlock_];
        _Block_release(v77);

        sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
        sub_1D18A21A8(v92, type metadata accessor for StaticAlarm);
        __swift_destroy_boxed_opaque_existential_1((v0 + 368));
      }

      else
      {
        sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
        *(v0 + 408) = 0u;
        *(v0 + 424) = 0u;
        *(v0 + 440) = 0;
        sub_1D1741A30(v0 + 408, &qword_1EC645670, &qword_1D1E7B950);
      }
    }

    else
    {
    }
  }

  v80 = *(v0 + 8);

  return v80();
}

void sub_1D189C630(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1D189C69C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC6459E8);
  sub_1D17419CC(a2, v30);
  (*(v8 + 16))(v10, a3, v7);
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6835C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = a4;
    v29 = v15;
    v16 = v15;
    *v14 = 136315394;
    v17 = v31;
    v18 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v19 = (*(v18 + 64))(v17, v18);
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1(v30);
    v22 = sub_1D1B1312C(v19, v21, &v29);

    *(v14 + 4) = v22;
    *(v14 + 12) = 2080;
    sub_1D1886B8C();
    v23 = sub_1D1E68FAC();
    v25 = v24;
    (*(v8 + 8))(v10, v7);
    v26 = sub_1D1B1312C(v23, v25, &v29);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1D16EC000, v12, v13, v28, v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v16, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    __swift_destroy_boxed_opaque_existential_1(v30);
  }
}

uint64_t sub_1D189C96C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, unsigned int a11)
{
  v73 = a8;
  *&v66 = a7;
  v81 = a5;
  v72 = a4;
  v75 = a10;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v79 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v77 = *(v15 - 8);
  v78 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v71 = &v64 - v18;
  v19 = sub_1D1E66A7C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v67 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v64 - v23;
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v74 = a11;
  v68 = a9;
  v25 = sub_1D1E6709C();
  __swift_project_value_buffer(v25, qword_1EC6459E8);
  sub_1D17419CC(a2, v85);
  v83 = *(v20 + 16);
  v83(v24, a3, v19);
  v26 = a1;
  v27 = sub_1D1E6707C();
  v28 = sub_1D1E6833C();

  v29 = os_log_type_enabled(v27, v28);
  v82 = a3;
  v70 = v20 + 16;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v65 = a2;
    v31 = v30;
    v64 = swift_slowAlloc();
    v84 = v64;
    *v31 = 136315650;
    v32 = v86;
    v33 = v87;
    __swift_project_boxed_opaque_existential_1(v85, v86);
    v34 = (*(v33 + 64))(v32, v33);
    v36 = v35;
    __swift_destroy_boxed_opaque_existential_1(v85);
    v37 = sub_1D1B1312C(v34, v36, &v84);

    *(v31 + 4) = v37;
    *(v31 + 12) = 2080;
    sub_1D1886B8C();
    v38 = sub_1D1E68FAC();
    v40 = v39;
    (*(v20 + 8))(v24, v19);
    v41 = sub_1D1B1312C(v38, v40, &v84);

    *(v31 + 14) = v41;
    *(v31 + 22) = 2080;
    swift_getErrorValue();
    v42 = sub_1D1E6915C();
    v44 = sub_1D1B1312C(v42, v43, &v84);

    *(v31 + 24) = v44;
    a3 = v82;
    _os_log_impl(&dword_1D16EC000, v27, v28, v66, v31, 0x20u);
    v45 = v64;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v45, -1, -1);
    v46 = v31;
    a2 = v65;
    MEMORY[0x1D3893640](v46, -1, -1);
  }

  else
  {

    (*(v20 + 8))(v24, v19);
    __swift_destroy_boxed_opaque_existential_1(v85);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643168, &unk_1D1E715C0);
  v47 = swift_allocObject();
  v66 = xmmword_1D1E739C0;
  *(v47 + 16) = xmmword_1D1E739C0;
  sub_1D17419CC(a2, v47 + 32);
  v48 = sub_1D1E67E7C();
  v49 = v71;
  (*(*(v48 - 8) + 56))(v71, 1, 1, v48);
  v50 = v67;
  v83(v67, a3, v19);
  sub_1D1E67E1C();
  v51 = v72;
  v52 = sub_1D1E67E0C();
  v53 = (*(v20 + 80) + 56) & ~*(v20 + 80);
  v54 = swift_allocObject();
  v55 = MEMORY[0x1E69E85E0];
  *(v54 + 16) = v52;
  *(v54 + 24) = v55;
  *(v54 + 32) = v68;
  *(v54 + 40) = v47;
  *(v54 + 48) = v51;
  (*(v20 + 32))(v54 + v53, v50, v19);
  sub_1D17C6EF0(0, 0, v49, v75, v54);

  if (qword_1EE07B1E8 != -1)
  {
    swift_once();
  }

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
  __swift_project_value_buffer(v56, qword_1EE07B210);
  v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48);
  v58 = v79;
  v83(v79, v82, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643438, &qword_1D1E72010);
  v59 = *(type metadata accessor for StaticAlarm(0) - 8);
  v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = v66;
  sub_1D18A1F94(v81, v61 + v60, type metadata accessor for StaticAlarm);
  *&v58[v57] = v61;
  swift_storeEnumTagMultiPayload();
  v62 = v76;
  sub_1D1E67ECC();
  return (*(v77 + 8))(v62, v78);
}

void sub_1D189D11C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC6459E8);
  (*(v6 + 16))(v8, a3, v5);

  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6835C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v12 = 136315394;
    swift_beginAccess();
    v13 = a2[5];
    v14 = a2[6];
    v15 = __swift_project_boxed_opaque_existential_1(a2 + 2, v13);
    v28[1] = v28;
    v16 = *(v13 - 8);
    MEMORY[0x1EEE9AC00](v15);
    v29 = v11;
    v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v18);
    v19 = (*(*(v14 + 8) + 64))(v13);
    v21 = v20;
    (*(v16 + 8))(v18, v13);
    v22 = sub_1D1B1312C(v19, v21, &v31);

    *(v12 + 4) = v22;
    *(v12 + 12) = 2080;
    sub_1D1886B8C();
    v23 = sub_1D1E68FAC();
    v25 = v24;
    (*(v6 + 8))(v8, v5);
    v26 = sub_1D1B1312C(v23, v25, &v31);

    *(v12 + 14) = v26;
    _os_log_impl(&dword_1D16EC000, v10, v29, "successfully toggled alarm %s for parent %s", v12, 0x16u);
    v27 = v30;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v27, -1, -1);
    MEMORY[0x1D3893640](v12, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1D189D4B0(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v89 = a5;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v94 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v92 = *(v10 - 8);
  v93 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v91 = v78 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v88 = v78 - v13;
  v14 = type metadata accessor for StaticAlarm(0);
  v90 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v97 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D1E66A7C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v85 = v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = v78 - v20;
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v22 = sub_1D1E6709C();
  __swift_project_value_buffer(v22, qword_1EC6459E8);
  v23 = *(v17 + 16);
  v96 = v17 + 16;
  v87 = v23;
  v23(v21, a3, v16);

  v24 = a1;
  v25 = sub_1D1E6707C();
  v26 = sub_1D1E6833C();

  v27 = os_log_type_enabled(v25, v26);
  v84 = v17;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v80 = v26;
    v29 = v17;
    v30 = v28;
    v81 = swift_slowAlloc();
    v98[0] = v81;
    *v30 = 136315650;
    swift_beginAccess();
    *&v83 = a4;
    v31 = a2[5];
    v32 = a2[6];
    v33 = __swift_project_boxed_opaque_existential_1(a2 + 2, v31);
    v78[0] = v78;
    v34 = *(v31 - 8);
    v78[1] = a1;
    v35 = a3;
    v36 = v34;
    MEMORY[0x1EEE9AC00](v33);
    v79 = v25;
    v38 = v78 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v38);
    v39 = (*(*(v32 + 8) + 64))(v31);
    v41 = v40;
    (*(v36 + 8))(v38, v31);
    a3 = v35;
    v42 = sub_1D1B1312C(v39, v41, v98);
    a4 = v83;

    *(v30 + 4) = v42;
    *(v30 + 12) = 2080;
    sub_1D1886B8C();
    v43 = sub_1D1E68FAC();
    v45 = v44;
    (*(v29 + 8))(v21, v16);
    v46 = sub_1D1B1312C(v43, v45, v98);

    *(v30 + 14) = v46;
    *(v30 + 22) = 2080;
    swift_getErrorValue();
    v47 = sub_1D1E6915C();
    v49 = sub_1D1B1312C(v47, v48, v98);

    *(v30 + 24) = v49;
    v50 = v79;
    _os_log_impl(&dword_1D16EC000, v79, v80, "failed to toggle alarm %s for parent %s due to %s", v30, 0x20u);
    v51 = v81;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v51, -1, -1);
    MEMORY[0x1D3893640](v30, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v21, v16);
  }

  v82 = a3;
  v52 = a4[3];
  v53 = a4[4];
  v54 = __swift_project_boxed_opaque_existential_1(a4, v52);
  MEMORY[0x1EEE9AC00](v54);
  v56 = v78 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v57 + 16))(v56);
  v58 = v85;
  v59 = v87;
  v87(v85, a3, v16);
  sub_1D1869A54(v56, v58, v52, v53, v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643168, &unk_1D1E715C0);
  v60 = swift_allocObject();
  v83 = xmmword_1D1E739C0;
  *(v60 + 16) = xmmword_1D1E739C0;
  sub_1D17419CC(a4, v60 + 32);
  v61 = sub_1D1E67E7C();
  v62 = v88;
  (*(*(v61 - 8) + 56))(v88, 1, 1, v61);
  v59(v58, a3, v16);
  sub_1D1E67E1C();
  v63 = v89;
  v64 = sub_1D1E67E0C();
  v65 = v84;
  v66 = (*(v84 + 80) + 56) & ~*(v84 + 80);
  v67 = swift_allocObject();
  v68 = MEMORY[0x1E69E85E0];
  *(v67 + 16) = v64;
  *(v67 + 24) = v68;
  *(v67 + 32) = 0;
  *(v67 + 40) = v60;
  *(v67 + 48) = v63;
  (*(v65 + 32))(v67 + v66, v58, v16);
  sub_1D17C6EF0(0, 0, v62, &unk_1D1E7BCE8, v67);

  if (qword_1EE07B1E8 != -1)
  {
    swift_once();
  }

  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
  __swift_project_value_buffer(v69, qword_1EE07B210);
  v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48);
  v71 = v94;
  v59(v94, v82, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643438, &qword_1D1E72010);
  v72 = (*(v90 + 80) + 32) & ~*(v90 + 80);
  v73 = swift_allocObject();
  *(v73 + 16) = v83;
  v74 = v73 + v72;
  v75 = v97;
  sub_1D18A1F94(v97, v74, type metadata accessor for StaticAlarm);
  *&v71[v70] = v73;
  swift_storeEnumTagMultiPayload();
  v76 = v91;
  sub_1D1E67ECC();
  (*(v92 + 8))(v76, v93);
  return sub_1D18A21A8(v75, type metadata accessor for StaticAlarm);
}

uint64_t CoordinationDataModel.updateAlarm(_:parentContainerID:)(uint64_t a1, uint64_t a2)
{
  v3[97] = v2;
  v3[96] = a2;
  v3[95] = a1;
  v3[98] = swift_getObjectType();
  v3[99] = type metadata accessor for CoordinationSnapshot.UpdateType(0);
  v3[100] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v3[101] = v4;
  v3[102] = *(v4 - 8);
  v3[103] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v3[104] = swift_task_alloc();
  v3[105] = *(type metadata accessor for StaticAlarm(0) - 8);
  v3[106] = swift_task_alloc();
  v5 = sub_1D1E66A7C();
  v3[107] = v5;
  v6 = *(v5 - 8);
  v3[108] = v6;
  v3[109] = *(v6 + 64);
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v3[112] = swift_task_alloc();
  v3[113] = sub_1D1E67E1C();
  v3[114] = sub_1D1E67E0C();
  v8 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D189E090, v8, v7);
}

uint64_t sub_1D189E090()
{
  v134 = v0;
  v1 = *(v0 + 776);

  v2 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {

    v4 = sub_1D1742188();
    if ((v5 & 1) == 0)
    {

      goto LABEL_22;
    }

    v6 = *(v0 + 760);
    v7 = (*(v3 + 56) + (v4 << 7));
    v8 = v7[3];
    v10 = *v7;
    v9 = v7[1];
    *(v0 + 48) = v7[2];
    *(v0 + 64) = v8;
    *(v0 + 16) = v10;
    *(v0 + 32) = v9;
    v11 = v7[7];
    v13 = v7[4];
    v12 = v7[5];
    *(v0 + 112) = v7[6];
    *(v0 + 128) = v11;
    *(v0 + 80) = v13;
    *(v0 + 96) = v12;
    sub_1D18783EC(v0 + 16, v0 + 144);

    *(v0 + 752) = v6;
    sub_1D1877D48();
    v14 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643170, &qword_1D1E7A060);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
      *(v0 + 408) = 0u;
      *(v0 + 424) = 0u;
      *(v0 + 440) = 0;
      sub_1D1741A30(v0 + 408, &qword_1EC645670, &qword_1D1E7B950);
      goto LABEL_22;
    }

    v15 = *(v0 + 896);
    v16 = *(v0 + 864);
    v17 = *(v0 + 856);
    sub_1D16EEE20((v0 + 408), v0 + 368);
    v18 = *(v0 + 392);
    v19 = *(v0 + 400);
    __swift_project_boxed_opaque_existential_1((v0 + 368), v18);
    (*(v19 + 56))(v18, v19);
    v20 = sub_1D187695C(v0 + 488);
    v21 = *(v16 + 8);
    v21(v15, v17, v20);
    if (*(v0 + 512))
    {
      sub_1D16EEE20((v0 + 488), v0 + 448);
      if (qword_1EC642210 != -1)
      {
        swift_once();
      }

      v22 = *(v0 + 888);
      v23 = *(v0 + 864);
      v24 = *(v0 + 856);
      v25 = *(v0 + 768);
      v26 = sub_1D1E6709C();
      __swift_project_value_buffer(v26, qword_1EC6459E8);
      sub_1D17419CC(v0 + 368, v0 + 568);
      v129 = *(v23 + 16);
      v129(v22, v25, v24);
      v27 = sub_1D1E6707C();
      v28 = sub_1D1E6835C();
      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v0 + 888);
      v31 = *(v0 + 856);
      if (v29)
      {
        v32 = swift_slowAlloc();
        v126 = v21;
        v33 = swift_slowAlloc();
        *&v132[0] = v33;
        *v32 = 136315394;
        v34 = *(v0 + 592);
        v35 = *(v0 + 600);
        __swift_project_boxed_opaque_existential_1((v0 + 568), v34);
        v36 = (*(v35 + 64))(v34, v35);
        v38 = v37;
        __swift_destroy_boxed_opaque_existential_1((v0 + 568));
        v39 = sub_1D1B1312C(v36, v38, v132);

        *(v32 + 4) = v39;
        *(v32 + 12) = 2080;
        sub_1D1886B8C();
        v40 = sub_1D1E68FAC();
        v42 = v41;
        v126(v30, v31);
        v43 = sub_1D1B1312C(v40, v42, v132);

        *(v32 + 14) = v43;
        _os_log_impl(&dword_1D16EC000, v27, v28, "attempt to update alarm %s for parent %s", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v33, -1, -1);
        MEMORY[0x1D3893640](v32, -1, -1);
      }

      else
      {

        (v21)(v30, v31);
        __swift_destroy_boxed_opaque_existential_1((v0 + 568));
      }

      v65 = *(v0 + 896);
      v128 = *(v0 + 872);
      v66 = *(v0 + 864);
      v67 = *(v0 + 856);
      v120 = *(v0 + 832);
      v121 = *(v0 + 848);
      v68 = *(v0 + 768);
      v123 = v68;
      v125 = *(v0 + 776);
      v69 = *(v0 + 392);
      v70 = *(v0 + 400);
      v71 = __swift_project_boxed_opaque_existential_1((v0 + 368), v69);
      v72 = *(v69 - 8);
      v73 = swift_task_alloc();
      (*(v72 + 16))(v73, v71, v69);
      v129(v65, v68, v67);
      v118 = v65;
      sub_1D1869A54(v73, v65, v69, v70, v121);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643168, &unk_1D1E715C0);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_1D1E739C0;
      sub_1D17419CC(v0 + 368, v74 + 32);
      v75 = sub_1D1E67E7C();
      (*(*(v75 - 8) + 56))(v120, 1, 1, v75);
      v76 = v65;
      v77 = v67;
      v129(v76, v123, v67);
      v78 = v125;
      v79 = sub_1D1E67E0C();
      v80 = (*(v66 + 80) + 56) & ~*(v66 + 80);
      v122 = v80 + v128;
      v81 = swift_allocObject();
      v82 = MEMORY[0x1E69E85E0];
      *(v81 + 16) = v79;
      *(v81 + 24) = v82;
      *(v81 + 32) = 0;
      *(v81 + 40) = v74;
      *(v81 + 48) = v78;
      v127 = v80;
      v124 = *(v66 + 32);
      v124(v81 + v80, v118, v77);
      sub_1D17C6EF0(0, 0, v120, &unk_1D1E7BC88, v81);

      if (qword_1EE07B1E8 != -1)
      {
        swift_once();
      }

      v83 = *(v0 + 856);
      v116 = *(v0 + 896);
      v84 = *(v0 + 848);
      v85 = *(v0 + 840);
      v86 = *(v0 + 824);
      v87 = *(v0 + 816);
      v88 = *(v0 + 800);
      v114 = *(v0 + 808);
      v119 = *(v0 + 784);
      v117 = *(v0 + 776);
      v89 = *(v0 + 768);
      v115 = v89;
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
      __swift_project_value_buffer(v90, qword_1EE07B210);
      v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48);
      v129(v88, v89, v83);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643438, &qword_1D1E72010);
      v92 = (*(v85 + 80) + 32) & ~*(v85 + 80);
      v93 = swift_allocObject();
      *(v93 + 16) = xmmword_1D1E739C0;
      sub_1D18A1F94(v84, v93 + v92, type metadata accessor for StaticAlarm);
      *(v88 + v91) = v93;
      swift_storeEnumTagMultiPayload();
      sub_1D1E67ECC();
      (*(v87 + 8))(v86, v114);
      v94 = *(v0 + 392);
      v95 = __swift_project_boxed_opaque_existential_1((v0 + 368), v94);
      v96 = *(v0 + 64);
      v97 = *(v0 + 32);
      v132[0] = *(v0 + 16);
      v132[1] = v97;
      v132[2] = *(v0 + 48);
      v133 = v96;
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AF8, &qword_1D1E7BC28);
      v99 = sub_1D1871BF8(v95, v98, v94);
      sub_1D17419CC(v0 + 368, v0 + 608);
      v129(v116, v115, v83);
      v100 = swift_allocObject();
      sub_1D16EEE20((v0 + 608), v100 + 16);
      v124(v100 + v127, v116, v83);
      *(v0 + 304) = sub_1D18A269C;
      *(v0 + 312) = v100;
      *(v0 + 272) = MEMORY[0x1E69E9820];
      *(v0 + 280) = 1107296256;
      *(v0 + 288) = sub_1D18A2E5C;
      *(v0 + 296) = &block_descriptor_103;
      v101 = _Block_copy((v0 + 272));

      v102 = [v99 addSuccessBlock_];
      _Block_release(v101);

      sub_1D17419CC(v0 + 368, v0 + 648);
      v129(v116, v115, v83);
      sub_1D17419CC(v0 + 448, v0 + 688);
      v103 = (v122 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = (v103 + 47) & 0xFFFFFFFFFFFFFFF8;
      v105 = swift_allocObject();
      sub_1D16EEE20((v0 + 648), v105 + 16);
      v124(v105 + v127, v116, v83);
      sub_1D16EEE20((v0 + 688), v105 + v103);
      *(v105 + v104) = v117;
      *(v105 + ((v104 + 15) & 0xFFFFFFFFFFFFFFF8)) = v119;
      *(v0 + 352) = sub_1D18A26BC;
      *(v0 + 360) = v105;
      *(v0 + 320) = MEMORY[0x1E69E9820];
      *(v0 + 328) = 1107296256;
      *(v0 + 336) = sub_1D189C628;
      *(v0 + 344) = &block_descriptor_109;
      v106 = _Block_copy((v0 + 320));
      v107 = v117;

      v108 = [v102 addFailureBlock_];
      _Block_release(v106);

      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
      sub_1D18A21A8(v84, type metadata accessor for StaticAlarm);
      v109 = (v0 + 448);
    }

    else
    {
      sub_1D1741A30(v0 + 488, &qword_1EC645670, &qword_1D1E7B950);
      if (qword_1EC642210 != -1)
      {
        swift_once();
      }

      v44 = *(v0 + 880);
      v45 = *(v0 + 864);
      v46 = *(v0 + 856);
      v47 = *(v0 + 768);
      v48 = sub_1D1E6709C();
      __swift_project_value_buffer(v48, qword_1EC6459E8);
      sub_1D17419CC(v0 + 368, v0 + 528);
      (*(v45 + 16))(v44, v47, v46);
      v49 = sub_1D1E6707C();
      v50 = sub_1D1E6833C();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = *(v0 + 896);
        v130 = *(v0 + 880);
        v52 = v21;
        v53 = *(v0 + 856);
        v54 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        *&v132[0] = v131;
        *v54 = 136315394;
        v55 = *(v0 + 552);
        v56 = *(v0 + 560);
        __swift_project_boxed_opaque_existential_1((v0 + 528), v55);
        (*(v56 + 56))(v55, v56);
        sub_1D1886B8C();
        v57 = sub_1D1E68FAC();
        v59 = v58;
        v52(v51, v53);
        __swift_destroy_boxed_opaque_existential_1((v0 + 528));
        v60 = sub_1D1B1312C(v57, v59, v132);

        *(v54 + 4) = v60;
        *(v54 + 12) = 2080;
        v61 = sub_1D1E68FAC();
        v63 = v62;
        v52(v130, v53);
        v64 = sub_1D1B1312C(v61, v63, v132);

        *(v54 + 14) = v64;
        _os_log_impl(&dword_1D16EC000, v49, v50, "failed to found alarm with %s for parent %s", v54, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v131, -1, -1);
        MEMORY[0x1D3893640](v54, -1, -1);

        sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
LABEL_21:
        __swift_destroy_boxed_opaque_existential_1((v0 + 368));
        goto LABEL_22;
      }

      v110 = *(v0 + 880);
      v111 = *(v0 + 856);
      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);

      (v21)(v110, v111);
      v109 = (v0 + 528);
    }

    __swift_destroy_boxed_opaque_existential_1(v109);
    goto LABEL_21;
  }

LABEL_22:

  v112 = *(v0 + 8);

  return v112();
}

uint64_t sub_1D189EEA8(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v79 = a5;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v85 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v83 = *(v10 - 8);
  v84 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v72 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v78 = &v72 - v13;
  v14 = type metadata accessor for StaticAlarm(0);
  v80 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D1E66A7C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v76 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v72 - v21;
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v89 = v16;
  v23 = sub_1D1E6709C();
  __swift_project_value_buffer(v23, qword_1EC6459E8);
  sub_1D17419CC(a2, v91);
  v24 = *(v18 + 16);
  v81 = a3;
  v88 = v24;
  v24(v22, a3, v17);
  v25 = a1;
  v26 = sub_1D1E6707C();
  v27 = sub_1D1E6833C();

  v28 = os_log_type_enabled(v26, v27);
  v87 = v18 + 16;
  v75 = v18;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v90 = v73;
    *v29 = 136315650;
    v30 = v18;
    *&v74 = a4;
    v31 = v92;
    v32 = v93;
    __swift_project_boxed_opaque_existential_1(v91, v92);
    v33 = (*(v32 + 64))(v31, v32);
    v35 = v34;
    __swift_destroy_boxed_opaque_existential_1(v91);
    v36 = sub_1D1B1312C(v33, v35, &v90);

    *(v29 + 4) = v36;
    *(v29 + 12) = 2080;
    sub_1D1886B8C();
    v37 = sub_1D1E68FAC();
    v39 = v38;
    (*(v30 + 8))(v22, v17);
    v40 = sub_1D1B1312C(v37, v39, &v90);

    *(v29 + 14) = v40;
    *(v29 + 22) = 2080;
    a4 = v74;
    swift_getErrorValue();
    v41 = sub_1D1E6915C();
    v43 = sub_1D1B1312C(v41, v42, &v90);

    *(v29 + 24) = v43;
    _os_log_impl(&dword_1D16EC000, v26, v27, "failed to update alarm %s for parent %s due to %s", v29, 0x20u);
    v44 = v73;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v44, -1, -1);
    MEMORY[0x1D3893640](v29, -1, -1);
  }

  else
  {

    (*(v18 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_1(v91);
  }

  v45 = a4[3];
  v46 = a4[4];
  v47 = __swift_project_boxed_opaque_existential_1(a4, v45);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v72 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v50 + 16))(v49);
  v51 = v76;
  v52 = v81;
  v53 = v88;
  v88(v76, v81, v17);
  sub_1D1869A54(v49, v51, v45, v46, v89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643168, &unk_1D1E715C0);
  v54 = swift_allocObject();
  v74 = xmmword_1D1E739C0;
  *(v54 + 16) = xmmword_1D1E739C0;
  sub_1D17419CC(a4, v54 + 32);
  v55 = sub_1D1E67E7C();
  v56 = v78;
  (*(*(v55 - 8) + 56))(v78, 1, 1, v55);
  v53(v51, v52, v17);
  sub_1D1E67E1C();
  v57 = v79;
  v58 = sub_1D1E67E0C();
  v59 = v75;
  v60 = (*(v75 + 80) + 56) & ~*(v75 + 80);
  v61 = swift_allocObject();
  v62 = MEMORY[0x1E69E85E0];
  *(v61 + 16) = v58;
  *(v61 + 24) = v62;
  *(v61 + 32) = 0;
  *(v61 + 40) = v54;
  *(v61 + 48) = v57;
  (*(v59 + 32))(v61 + v60, v51, v17);
  sub_1D17C6EF0(0, 0, v56, &unk_1D1E7BCA8, v61);

  if (qword_1EE07B1E8 != -1)
  {
    swift_once();
  }

  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
  __swift_project_value_buffer(v63, qword_1EE07B210);
  v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48);
  v65 = v85;
  v88(v85, v52, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643438, &qword_1D1E72010);
  v66 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = v74;
  v68 = v67 + v66;
  v69 = v89;
  sub_1D18A1F94(v89, v68, type metadata accessor for StaticAlarm);
  *&v65[v64] = v67;
  swift_storeEnumTagMultiPayload();
  v70 = v82;
  sub_1D1E67ECC();
  (*(v83 + 8))(v70, v84);
  return sub_1D18A21A8(v69, type metadata accessor for StaticAlarm);
}

uint64_t CoordinationDataModel.addTimer(_:parentContainerID:)(uint64_t a1, uint64_t a2)
{
  v3[82] = v2;
  v3[81] = a2;
  v3[80] = a1;
  v3[83] = swift_getObjectType();
  v3[84] = type metadata accessor for CoordinationSnapshot.UpdateType(0);
  v3[85] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v3[86] = v4;
  v3[87] = *(v4 - 8);
  v3[88] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v3[89] = swift_task_alloc();
  sub_1D1E669FC();
  v3[90] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643860, &qword_1D1E72008);
  v3[91] = swift_task_alloc();
  v5 = type metadata accessor for StaticTimer(0);
  v3[92] = v5;
  v6 = *(v5 - 8);
  v3[93] = v6;
  v3[94] = *(v6 + 64);
  v3[95] = swift_task_alloc();
  v3[96] = swift_task_alloc();
  v7 = sub_1D1E66A7C();
  v3[97] = v7;
  v8 = *(v7 - 8);
  v3[98] = v8;
  v3[99] = *(v8 + 64);
  v3[100] = swift_task_alloc();
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  v3[103] = sub_1D1E67E1C();
  v3[104] = sub_1D1E67E0C();
  v10 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D189FA2C, v10, v9);
}

uint64_t sub_1D189FA2C()
{
  v129 = v0;
  v1 = *(v0 + 656);

  v2 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {

    v4 = sub_1D1742188();
    if (v5)
    {
      v6 = *(v0 + 640);
      v7 = (*(v3 + 56) + (v4 << 7));
      v8 = v7[3];
      v10 = *v7;
      v9 = v7[1];
      *(v0 + 48) = v7[2];
      *(v0 + 64) = v8;
      *(v0 + 16) = v10;
      *(v0 + 32) = v9;
      v11 = v7[7];
      v13 = v7[4];
      v12 = v7[5];
      *(v0 + 112) = v7[6];
      *(v0 + 128) = v11;
      *(v0 + 80) = v13;
      *(v0 + 96) = v12;
      sub_1D18783EC(v0 + 16, v0 + 144);

      *(v0 + 632) = v6;
      sub_1D1877D48();
      v14 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643180, &unk_1D1E71CD0);
      if (swift_dynamicCast())
      {
        sub_1D16EEE20((v0 + 408), v0 + 368);
        if (qword_1EC642210 != -1)
        {
          swift_once();
        }

        v15 = *(v0 + 816);
        v16 = *(v0 + 784);
        v17 = *(v0 + 776);
        v18 = *(v0 + 648);
        v19 = sub_1D1E6709C();
        __swift_project_value_buffer(v19, qword_1EC6459E8);
        sub_1D17419CC(v0 + 368, v0 + 448);
        v125 = *(v16 + 16);
        v125(v15, v18, v17);
        v20 = sub_1D1E6707C();
        v21 = sub_1D1E6835C();
        v22 = os_log_type_enabled(v20, v21);
        v23 = *(v0 + 816);
        v24 = *(v0 + 784);
        v25 = *(v0 + 776);
        if (v22)
        {
          v26 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          *&v127[0] = v122;
          *v26 = 136315394;
          v28 = *(v0 + 472);
          v27 = *(v0 + 480);
          __swift_project_boxed_opaque_existential_1((v0 + 448), v28);
          v29 = (*(v27 + 72))(v28, v27);
          v31 = v30;
          __swift_destroy_boxed_opaque_existential_1((v0 + 448));
          v32 = sub_1D1B1312C(v29, v31, v127);

          *(v26 + 4) = v32;
          *(v26 + 12) = 2080;
          sub_1D1886B8C();
          v33 = sub_1D1E68FAC();
          v35 = v34;
          v115 = *(v24 + 8);
          v115(v23, v25);
          v36 = sub_1D1B1312C(v33, v35, v127);

          *(v26 + 14) = v36;
          _os_log_impl(&dword_1D16EC000, v20, v21, "attempt to add timer %s for parent %s", v26, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D3893640](v122, -1, -1);
          MEMORY[0x1D3893640](v26, -1, -1);
        }

        else
        {

          v115 = *(v24 + 8);
          v115(v23, v25);
          __swift_destroy_boxed_opaque_existential_1((v0 + 448));
        }

        v37 = *(v0 + 808);
        v38 = *(v0 + 744);
        v123 = *(v0 + 736);
        v39 = *(v0 + 728);
        v40 = *(v0 + 720);
        v41 = *(v0 + 648);
        v42 = *(v0 + 392);
        v119 = *(v0 + 776);
        v120 = *(v0 + 400);
        v43 = __swift_project_boxed_opaque_existential_1((v0 + 368), v42);
        v44 = *(v42 - 8);
        v45 = swift_task_alloc();
        (*(v44 + 16))(v45, v43, v42);
        v125(v37, v41, v119);
        _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
        sub_1D186EF48(v45, v37, v40, v42, v120, v39);

        if ((*(v38 + 48))(v39, 1, v123) == 1)
        {
          v46 = *(v0 + 800);
          v47 = *(v0 + 776);
          v48 = *(v0 + 648);
          sub_1D1741A30(*(v0 + 728), &qword_1EC643860, &qword_1D1E72008);
          sub_1D17419CC(v0 + 368, v0 + 488);
          v125(v46, v48, v47);
          v49 = sub_1D1E6707C();
          v50 = sub_1D1E6833C();
          v51 = os_log_type_enabled(v49, v50);
          v52 = *(v0 + 800);
          v53 = *(v0 + 776);
          if (v51)
          {
            v54 = swift_slowAlloc();
            v126 = swift_slowAlloc();
            *&v127[0] = v126;
            *v54 = 136315394;
            v55 = *(v0 + 512);
            v56 = *(v0 + 520);
            __swift_project_boxed_opaque_existential_1((v0 + 488), v55);
            v57 = (*(v56 + 72))(v55, v56);
            v59 = v58;
            __swift_destroy_boxed_opaque_existential_1((v0 + 488));
            v60 = sub_1D1B1312C(v57, v59, v127);

            *(v54 + 4) = v60;
            *(v54 + 12) = 2080;
            sub_1D1886B8C();
            v61 = sub_1D1E68FAC();
            v63 = v62;
            v115(v52, v53);
            v64 = sub_1D1B1312C(v61, v63, v127);

            *(v54 + 14) = v64;
            _os_log_impl(&dword_1D16EC000, v49, v50, "failed to create StaticTimer with %s for parent %s", v54, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D3893640](v126, -1, -1);
            MEMORY[0x1D3893640](v54, -1, -1);

            sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
          }

          else
          {
            sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);

            v115(v52, v53);
            __swift_destroy_boxed_opaque_existential_1((v0 + 488));
          }
        }

        else
        {
          v65 = *(v0 + 808);
          v124 = *(v0 + 792);
          v66 = *(v0 + 784);
          v67 = *(v0 + 776);
          v68 = *(v0 + 712);
          v116 = v68;
          v69 = *(v0 + 656);
          v70 = *(v0 + 648);
          sub_1D18A2B2C(*(v0 + 728), *(v0 + 768), type metadata accessor for StaticTimer);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643178, &unk_1D1E715D0);
          v71 = swift_allocObject();
          *(v71 + 16) = xmmword_1D1E739C0;
          sub_1D17419CC(v0 + 368, v71 + 32);
          v72 = sub_1D1E67E7C();
          (*(*(v72 - 8) + 56))(v68, 1, 1, v72);
          v73 = v67;
          v125(v65, v70, v67);
          v74 = v69;
          v75 = sub_1D1E67E0C();
          v76 = (*(v66 + 80) + 56) & ~*(v66 + 80);
          v113 = v76 + v124;
          v77 = swift_allocObject();
          v78 = MEMORY[0x1E69E85E0];
          *(v77 + 16) = v75;
          *(v77 + 24) = v78;
          *(v77 + 32) = 0;
          *(v77 + 40) = v71;
          *(v77 + 48) = v74;
          v121 = v76;
          v118 = *(v66 + 32);
          v118(v77 + v76, v65, v73);
          sub_1D17C6EF0(0, 0, v116, &unk_1D1E7BC98, v77);

          if (qword_1EE07B1E8 != -1)
          {
            swift_once();
          }

          v79 = *(v0 + 776);
          v107 = v79;
          v108 = *(v0 + 808);
          v117 = *(v0 + 768);
          v109 = *(v0 + 760);
          v110 = *(v0 + 752);
          v80 = *(v0 + 744);
          v81 = *(v0 + 704);
          v82 = *(v0 + 696);
          v83 = *(v0 + 680);
          v105 = *(v0 + 688);
          v111 = *(v0 + 656);
          v112 = *(v0 + 664);
          v84 = *(v0 + 648);
          v106 = v84;
          v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
          __swift_project_value_buffer(v85, qword_1EE07B210);
          v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860) + 48);
          v125(v83, v84, v79);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643430, &unk_1D1E718B0);
          v87 = *(v80 + 80);
          v88 = swift_allocObject();
          *(v88 + 16) = xmmword_1D1E739C0;
          sub_1D18A1F94(v117, v88 + ((v87 + 32) & ~v87), type metadata accessor for StaticTimer);
          *(v83 + v86) = v88;
          swift_storeEnumTagMultiPayload();
          sub_1D1E67ECC();
          (*(v82 + 8))(v81, v105);
          v89 = *(v0 + 392);
          v90 = __swift_project_boxed_opaque_existential_1((v0 + 368), v89);
          v91 = *(v0 + 120);
          v92 = *(v0 + 88);
          v127[0] = *(v0 + 72);
          v127[1] = v92;
          v127[2] = *(v0 + 104);
          v128 = v91;
          v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645B00, &qword_1D1E7BC48);
          v94 = sub_1D187178C(v90, v93, v89);
          sub_1D17419CC(v0 + 368, v0 + 528);
          v125(v108, v106, v79);
          v95 = swift_allocObject();
          sub_1D16EEE20((v0 + 528), v95 + 16);
          v118(v95 + v121, v108, v79);
          *(v0 + 304) = sub_1D18A2774;
          *(v0 + 312) = v95;
          *(v0 + 272) = MEMORY[0x1E69E9820];
          *(v0 + 280) = 1107296256;
          *(v0 + 288) = sub_1D18A2E5C;
          *(v0 + 296) = &block_descriptor_120;
          v96 = _Block_copy((v0 + 272));

          aBlock = [v94 addSuccessBlock_];
          _Block_release(v96);

          sub_1D17419CC(v0 + 368, v0 + 568);
          v125(v108, v106, v79);
          sub_1D18A1F94(v117, v109, type metadata accessor for StaticTimer);
          v97 = (v113 + 7) & 0xFFFFFFFFFFFFFFF8;
          v98 = (v97 + v87 + 8) & ~v87;
          v99 = swift_allocObject();
          sub_1D16EEE20((v0 + 568), v99 + 16);
          v118(v99 + v121, v108, v107);
          *(v99 + v97) = v111;
          sub_1D18A2B2C(v109, v99 + v98, type metadata accessor for StaticTimer);
          *(v99 + ((v110 + v98 + 7) & 0xFFFFFFFFFFFFFFF8)) = v112;
          *(v0 + 352) = sub_1D18A29E8;
          *(v0 + 360) = v99;
          *(v0 + 320) = MEMORY[0x1E69E9820];
          *(v0 + 328) = 1107296256;
          *(v0 + 336) = sub_1D189C628;
          *(v0 + 344) = &block_descriptor_126;
          v100 = _Block_copy((v0 + 320));
          v101 = v111;

          v102 = [aBlock addFailureBlock_];
          _Block_release(v100);

          sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
          sub_1D18A21A8(v117, type metadata accessor for StaticTimer);
        }

        __swift_destroy_boxed_opaque_existential_1((v0 + 368));
      }

      else
      {
        sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
        *(v0 + 408) = 0u;
        *(v0 + 424) = 0u;
        *(v0 + 440) = 0;
        sub_1D1741A30(v0 + 408, &qword_1EC6456C0, &unk_1D1E7A3F0);
      }
    }

    else
    {
    }
  }

  v103 = *(v0 + 8);

  return v103();
}

void sub_1D18A080C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC6459E8);
  sub_1D17419CC(a2, v30);
  (*(v8 + 16))(v10, a3, v7);
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6835C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = a4;
    v29 = v15;
    v16 = v15;
    *v14 = 136315394;
    v17 = v31;
    v18 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v19 = (*(v18 + 72))(v17, v18);
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1(v30);
    v22 = sub_1D1B1312C(v19, v21, &v29);

    *(v14 + 4) = v22;
    *(v14 + 12) = 2080;
    sub_1D1886B8C();
    v23 = sub_1D1E68FAC();
    v25 = v24;
    (*(v8 + 8))(v10, v7);
    v26 = sub_1D1B1312C(v23, v25, &v29);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1D16EC000, v12, v13, v28, v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v16, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    __swift_destroy_boxed_opaque_existential_1(v30);
  }
}

uint64_t sub_1D18A0ADC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v95 = a6;
  v96 = a5;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v93 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = v85 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v89 = v85 - v13;
  v14 = sub_1D1E669FC();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v99 = v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643860, &qword_1D1E72008);
  MEMORY[0x1EEE9AC00](v16 - 8);
  *&v100 = v85 - v17;
  v98 = type metadata accessor for StaticTimer(0);
  v104 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D1E66A7C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v101 = v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = v85 - v23;
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v25 = sub_1D1E6709C();
  __swift_project_value_buffer(v25, qword_1EC6459E8);
  sub_1D17419CC(a2, v107);
  v26 = *(v20 + 16);
  v105 = a3;
  v102 = v26;
  v103 = v20 + 16;
  v26(v24, a3, v19);
  v27 = a1;
  v28 = sub_1D1E6707C();
  v29 = sub_1D1E6833C();

  v30 = os_log_type_enabled(v28, v29);
  v88 = v20;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v85[1] = a1;
    v32 = v31;
    v33 = swift_slowAlloc();
    v106 = v33;
    *v32 = 136315650;
    v86 = a4;
    v34 = v108;
    v35 = v109;
    __swift_project_boxed_opaque_existential_1(v107, v108);
    v36 = (*(v35 + 72))(v34, v35);
    v38 = v37;
    __swift_destroy_boxed_opaque_existential_1(v107);
    v39 = sub_1D1B1312C(v36, v38, &v106);

    *(v32 + 4) = v39;
    *(v32 + 12) = 2080;
    sub_1D1886B8C();
    v40 = sub_1D1E68FAC();
    v42 = v41;
    (*(v20 + 8))(v24, v19);
    v43 = sub_1D1B1312C(v40, v42, &v106);

    *(v32 + 14) = v43;
    *(v32 + 22) = 2080;
    a4 = v86;
    swift_getErrorValue();
    v44 = sub_1D1E6915C();
    v46 = sub_1D1B1312C(v44, v45, &v106);

    *(v32 + 24) = v46;
    _os_log_impl(&dword_1D16EC000, v28, v29, "failed to update timer %s for parent %s due to %s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v33, -1, -1);
    MEMORY[0x1D3893640](v32, -1, -1);
  }

  else
  {

    (*(v20 + 8))(v24, v19);
    __swift_destroy_boxed_opaque_existential_1(v107);
  }

  v47 = v19;
  v48 = a4[3];
  v49 = a4[4];
  v50 = __swift_project_boxed_opaque_existential_1(a4, v48);
  MEMORY[0x1EEE9AC00](v50);
  v52 = v85 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v53 + 16))(v52);
  v54 = v101;
  v55 = v105;
  v102(v101, v105, v47);
  v56 = v99;
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  v57 = v48;
  v58 = v100;
  sub_1D186EF48(v52, v54, v56, v57, v49, v100);
  if ((*(v104 + 48))(v58, 1, v98) == 1)
  {
    v59 = &qword_1EC643860;
    v60 = &qword_1D1E72008;
    v61 = v58;
    return sub_1D1741A30(v61, v59, v60);
  }

  v62 = v97;
  sub_1D18A2B2C(v58, v97, type metadata accessor for StaticTimer);
  v63 = v96;
  sub_1D1876968(v107);
  if (!v108)
  {
    sub_1D18A21A8(v62, type metadata accessor for StaticTimer);
    v59 = &qword_1EC6456C0;
    v60 = &unk_1D1E7A3F0;
    v61 = v107;
    return sub_1D1741A30(v61, v59, v60);
  }

  sub_1D1741A30(v107, &qword_1EC6456C0, &unk_1D1E7A3F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643178, &unk_1D1E715D0);
  v64 = swift_allocObject();
  v100 = xmmword_1D1E739C0;
  *(v64 + 16) = xmmword_1D1E739C0;
  sub_1D17419CC(a4, v64 + 32);
  v65 = sub_1D1E67E7C();
  v66 = v89;
  (*(*(v65 - 8) + 56))(v89, 1, 1, v65);
  v67 = v101;
  v68 = v102;
  v102(v101, v55, v47);
  sub_1D1E67E1C();
  v69 = v63;
  v70 = sub_1D1E67E0C();
  v71 = v47;
  v72 = v88;
  v73 = (*(v88 + 80) + 56) & ~*(v88 + 80);
  v74 = swift_allocObject();
  v75 = MEMORY[0x1E69E85E0];
  *(v74 + 16) = v70;
  *(v74 + 24) = v75;
  *(v74 + 32) = 0;
  *(v74 + 40) = v64;
  *(v74 + 48) = v69;
  (*(v72 + 32))(v74 + v73, v67, v71);
  sub_1D17C6EF0(0, 0, v66, &unk_1D1E7BCD8, v74);

  if (qword_1EE07B1E8 != -1)
  {
    swift_once();
  }

  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
  __swift_project_value_buffer(v76, qword_1EE07B210);
  v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860) + 48);
  v78 = v93;
  v68(v93, v105, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643430, &unk_1D1E718B0);
  v79 = (*(v104 + 80) + 32) & ~*(v104 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = v100;
  v81 = v80 + v79;
  v82 = v97;
  sub_1D18A1F94(v97, v81, type metadata accessor for StaticTimer);
  *&v78[v77] = v80;
  swift_storeEnumTagMultiPayload();
  v83 = v90;
  sub_1D1E67ECC();
  (*(v91 + 8))(v83, v92);
  return sub_1D18A21A8(v82, type metadata accessor for StaticTimer);
}

uint64_t sub_1D18A1540(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, unsigned int a11)
{
  v73 = a8;
  *&v66 = a7;
  v81 = a5;
  v72 = a4;
  v75 = a10;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v79 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v77 = *(v15 - 8);
  v78 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v71 = &v64 - v18;
  v19 = sub_1D1E66A7C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v67 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v64 - v23;
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v74 = a11;
  v68 = a9;
  v25 = sub_1D1E6709C();
  __swift_project_value_buffer(v25, qword_1EC6459E8);
  sub_1D17419CC(a2, v85);
  v83 = *(v20 + 16);
  v83(v24, a3, v19);
  v26 = a1;
  v27 = sub_1D1E6707C();
  v28 = sub_1D1E6833C();

  v29 = os_log_type_enabled(v27, v28);
  v82 = a3;
  v70 = v20 + 16;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v65 = a2;
    v31 = v30;
    v64 = swift_slowAlloc();
    v84 = v64;
    *v31 = 136315650;
    v32 = v86;
    v33 = v87;
    __swift_project_boxed_opaque_existential_1(v85, v86);
    v34 = (*(v33 + 72))(v32, v33);
    v36 = v35;
    __swift_destroy_boxed_opaque_existential_1(v85);
    v37 = sub_1D1B1312C(v34, v36, &v84);

    *(v31 + 4) = v37;
    *(v31 + 12) = 2080;
    sub_1D1886B8C();
    v38 = sub_1D1E68FAC();
    v40 = v39;
    (*(v20 + 8))(v24, v19);
    v41 = sub_1D1B1312C(v38, v40, &v84);

    *(v31 + 14) = v41;
    *(v31 + 22) = 2080;
    swift_getErrorValue();
    v42 = sub_1D1E6915C();
    v44 = sub_1D1B1312C(v42, v43, &v84);

    *(v31 + 24) = v44;
    a3 = v82;
    _os_log_impl(&dword_1D16EC000, v27, v28, v66, v31, 0x20u);
    v45 = v64;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v45, -1, -1);
    v46 = v31;
    a2 = v65;
    MEMORY[0x1D3893640](v46, -1, -1);
  }

  else
  {

    (*(v20 + 8))(v24, v19);
    __swift_destroy_boxed_opaque_existential_1(v85);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643178, &unk_1D1E715D0);
  v47 = swift_allocObject();
  v66 = xmmword_1D1E739C0;
  *(v47 + 16) = xmmword_1D1E739C0;
  sub_1D17419CC(a2, v47 + 32);
  v48 = sub_1D1E67E7C();
  v49 = v71;
  (*(*(v48 - 8) + 56))(v71, 1, 1, v48);
  v50 = v67;
  v83(v67, a3, v19);
  sub_1D1E67E1C();
  v51 = v72;
  v52 = sub_1D1E67E0C();
  v53 = (*(v20 + 80) + 56) & ~*(v20 + 80);
  v54 = swift_allocObject();
  v55 = MEMORY[0x1E69E85E0];
  *(v54 + 16) = v52;
  *(v54 + 24) = v55;
  *(v54 + 32) = v68;
  *(v54 + 40) = v47;
  *(v54 + 48) = v51;
  (*(v20 + 32))(v54 + v53, v50, v19);
  sub_1D17C6EF0(0, 0, v49, v75, v54);

  if (qword_1EE07B1E8 != -1)
  {
    swift_once();
  }

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
  __swift_project_value_buffer(v56, qword_1EE07B210);
  v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860) + 48);
  v58 = v79;
  v83(v79, v82, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643430, &unk_1D1E718B0);
  v59 = *(type metadata accessor for StaticTimer(0) - 8);
  v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = v66;
  sub_1D18A1F94(v81, v61 + v60, type metadata accessor for StaticTimer);
  *&v58[v57] = v61;
  swift_storeEnumTagMultiPayload();
  v62 = v76;
  sub_1D1E67ECC();
  return (*(v77 + 8))(v62, v78);
}

void sub_1D18A1CF0(uint64_t a1)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1D189D11C(a1, v4, v5);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D18A1D7C(void *a1)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D189D4B0(a1, v6, v1 + v4, (v1 + v5), v7);
}

uint64_t sub_1D18A1E54(void *a1)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for StaticAlarm(0) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  return sub_1D189C96C(a1, v1 + 16, v1 + v4, *(v1 + v5), v1 + v7, *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)), "failed to delete alarm %s for parent %s due to %s", &unk_1F4D6D290, 0, &unk_1D1E7BCE0, 2u);
}

uint64_t sub_1D18A1F94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_21Tm()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D18A20E0(void *a1)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = (*(v3 + 64) + 7 + v5) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v7);

  return sub_1D18A0ADC(a1, v1 + 16, v1 + v5, (v1 + v6), v8, v1 + ((v4 + v7 + 8) & ~v4));
}

uint64_t sub_1D18A21A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D18A2228(void *a1)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for StaticTimer(0) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  return sub_1D18A1540(a1, v1 + 16, v1 + v4, *(v1 + v5), v1 + v7, *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)), "failed to delete timer %s for parent %s due to %s", &unk_1F4D6D240, 0, &unk_1D1E7BCD0, 4u);
}

uint64_t objectdestroy_27Tm_0()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for StaticAlarm(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v11 = *(v2 + 8);
  v11(v0 + v4, v1);

  v11(v0 + v8 + v6[11], v1);
  v11(v0 + v8 + v6[12], v1);

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v9 | 7);
}

uint64_t sub_1D18A2558(void *a1)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for StaticAlarm(0) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  return sub_1D189C96C(a1, v1 + 16, v1 + v4, *(v1 + v5), v1 + v7, *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)), "failed to add alarm %s for parent %s due to %s", &unk_1F4D6D1A0, 1u, &unk_1D1E7BCB0, 3u);
}

uint64_t sub_1D18A26BC(void *a1)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D189EEA8(a1, v1 + 16, v1 + v4, (v1 + v5), v6);
}

uint64_t objectdestroy_62Tm()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for StaticTimer(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v11 = *(v2 + 8);
  v11(v0 + v4, v1);

  v12 = v6[7];
  v13 = sub_1D1E669FC();
  (*(*(v13 - 8) + 8))(v0 + v8 + v12, v13);

  v11(v0 + v8 + v6[12], v1);
  v11(v0 + v8 + v6[13], v1);

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v9 | 7);
}

uint64_t sub_1D18A29E8(void *a1)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for StaticTimer(0) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  return sub_1D18A1540(a1, v1 + 16, v1 + v4, *(v1 + v5), v1 + v7, *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)), "failed to add timer %s for parent %s due to %s", &unk_1F4D6D150, 1u, &unk_1D1E7BCA0, 5u);
}

uint64_t sub_1D18A2B2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D18A2B94(uint64_t a1)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645B10, &qword_1D1E7BCB8) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + v8);
  v11 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D189AB94(a1, v9, v1 + v4, v1 + v7, v10, v11);
}

uint64_t sub_1D18A2CB0(uint64_t a1)
{
  v4 = *(sub_1D1E66A7C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D189B248(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D18A2E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_1D1E6702C();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_1D1E66FDC();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  type metadata accessor for CoordinationSnapshot.UpdateType(0);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D18A2FD0, v3, 0);
}

uint64_t sub_1D18A2FD0()
{
  v66 = v0;
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 56);
  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EC6459E8);
  sub_1D187832C(v2, v1);

  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6835C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 152);
  v8 = *(v0 + 72);
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v65 = v10;
    *v9 = 134218242;
    *(v9 + 4) = *(v8 + 120);

    *(v9 + 12) = 2080;
    updated = CoordinationSnapshot.UpdateType.description.getter();
    v13 = v12;
    sub_1D1878390(v7);
    v14 = sub_1D1B1312C(updated, v13, &v65);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_1D16EC000, v4, v5, "new snapshot based on iteration %ld, %s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  else
  {

    sub_1D1878390(v7);
  }

  v15 = sub_1D18A3D68(*(v0 + 56));
  v17 = v16;
  if (qword_1EC642218 != -1)
  {
    swift_once();
  }

  v18 = sub_1D1E6701C();
  __swift_project_value_buffer(v18, qword_1EC6BE0F8);
  sub_1D1E66FCC();
  v19 = sub_1D1E66FFC();
  v20 = sub_1D1E683EC();
  v21 = sub_1D1E6855C();
  if (v21)
  {
    if (v17)
    {
      if (v15 >> 32)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if ((v15 & 0xFFFFF800) == 0xD800)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      if (v15 >> 16 > 0x10)
      {
        goto LABEL_41;
      }

      v24 = (v0 + 40);
    }

    else
    {
      if (!v15)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v24 = v15;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v19, v20, v26, v24, "", v25, 2u);
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v62 = v17;
  name = v15;

  v28 = *(v0 + 136);
  v27 = *(v0 + 144);
  v29 = *(v0 + 104);
  v30 = *(v0 + 112);
  v32 = *(v0 + 64);
  v31 = *(v0 + 72);
  v33 = *(v0 + 56);
  (*(v30 + 16))(*(v0 + 128), v28, v29);
  sub_1D1E6705C();
  swift_allocObject();
  *(v0 + 160) = sub_1D1E6704C();
  v34 = v29;
  v35 = *(v30 + 8);
  v35(v28, v34);
  sub_1D187832C(v33, v27);
  v65 = *(v31 + 112);

  sub_1D1DDD368(v27, v32, &v65, &v64);
  v36 = v64;
  *(v0 + 168) = v64;
  v61 = v31;

  v38 = sub_1D184782C(v37, v36);

  v39 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v40 = sub_1D1E683DC();
  v21 = sub_1D1E6855C();
  if (v21)
  {
    v60 = v35;
    if ((v62 & 1) == 0)
    {
      if (name)
      {
LABEL_25:
        v42 = *(v0 + 88);
        v41 = *(v0 + 96);
        v43 = *(v0 + 80);

        sub_1D1E6706C();

        if ((*(v42 + 88))(v41, v43) == *MEMORY[0x1E69E93E8])
        {
          v44 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
          v44 = "";
        }

        v45 = swift_slowAlloc();
        *v45 = 0;
        v46 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v39, v40, v46, name, v44, v45, 2u);
        MEMORY[0x1D3893640](v45, -1, -1);
        v35 = v60;
        goto LABEL_29;
      }

      __break(1u);
    }

    if (name >> 32)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if ((name & 0xFFFFF800) == 0xD800)
    {
LABEL_44:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v21, v22, v23);
    }

    if (name >> 16 > 0x10)
    {
      goto LABEL_42;
    }

    name = (v0 + 32);
    goto LABEL_25;
  }

LABEL_29:
  v47 = *(v0 + 120);
  v48 = *(v0 + 104);

  v21 = (v35)(v47, v48);
  if ((v38 & 1) == 0)
  {
    v53 = *(v0 + 72);
    v54 = *(v53 + 120);
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (!v55)
    {
      *(v53 + 120) = v56;
      *(v61 + 112) = v36;

      *(v0 + 176) = sub_1D1E67E1C();
      *(v0 + 184) = sub_1D1E67E0C();
      v57 = sub_1D1E67D4C();
      v59 = v58;
      v21 = sub_1D18A365C;
      v22 = v57;
      v23 = v59;

      return MEMORY[0x1EEE6DFA0](v21, v22, v23);
    }

    __break(1u);
    goto LABEL_38;
  }

  v49 = *(v0 + 72);
  **(v0 + 48) = *(v0 + 168);
  v50 = *(v49 + 120);

  v51 = *(v0 + 8);

  return v51(v50);
}

uint64_t sub_1D18A365C()
{

  if (qword_1EE07B1D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D18A36F4, v1, 0);
}

uint64_t sub_1D18A36F4(uint64_t a1)
{
  *(v1 + 192) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18A3780, v3, v2);
}

uint64_t sub_1D18A3780()
{
  v1 = *(v0 + 72);

  *(v0 + 200) = qword_1EE07B1E0;

  return MEMORY[0x1EEE6DFA0](sub_1D18A37F8, v1, 0);
}

uint64_t sub_1D18A37F8()
{
  v0[26] = *(v0[9] + 112);

  v0[27] = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18A3894, v2, v1);
}

uint64_t sub_1D18A3894()
{
  v1 = v0[26];
  v2 = v0[25];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v1;

  v3 = v2;
  sub_1D1E6712C();
  if (qword_1EC642208 != -1)
  {
    swift_once();
  }

  v4 = v0[9];
  v0[3] = v0[26];
  sub_1D1E670BC();

  return MEMORY[0x1EEE6DFA0](sub_1D18A39AC, v4, 0);
}

uint64_t sub_1D18A39AC()
{

  v1 = *(v0 + 72);
  **(v0 + 48) = *(v0 + 168);
  v2 = *(v1 + 120);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t CoordinationSnapshotModerator.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CoordinationSnapshotModerator.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D18A3ADC()
{
  v0 = sub_1D1E6701C();
  __swift_allocate_value_buffer(v0, qword_1EC6BE0F8);
  __swift_project_value_buffer(v0, qword_1EC6BE0F8);
  return sub_1D1E6700C();
}

void sub_1D18A3B28()
{
  v0 = sub_1D1E6680C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_1EC645B18);
  __swift_project_value_buffer(v0, qword_1EC645B18);
  v5 = [objc_opt_self() defaultManager];
  v6 = [v5 URLForUbiquityContainerIdentifier_];

  if (v6)
  {
    sub_1D1E667CC();

    sub_1D1E667AC();
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t static CoordinationSnapshotModerator.iCloudDocumentsURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC642220 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6680C();
  v3 = __swift_project_value_buffer(v2, qword_1EC645B18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

const char *sub_1D18A3D68(uint64_t a1)
{
  updated = type metadata accessor for CoordinationSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D187832C(a1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return "updateType: .snapshotStream(_)";
      }

      else
      {
        return "updateType: .all";
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860);

      v7 = sub_1D1E66A7C();
      (*(*(v7 - 8) + 8))(v4, v7);
      return "updateType: .timers(_,_)";
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860);

      v9 = sub_1D1E66A7C();
      (*(*(v9 - 8) + 8))(v4, v9);
      return "updateType: .removeTimers(_,_)";
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868);

      v8 = sub_1D1E66A7C();
      (*(*(v8 - 8) + 8))(v4, v8);
      return "updateType: .alarms(_,_)";
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868);

      v10 = sub_1D1E66A7C();
      (*(*(v10 - 8) + 8))(v4, v10);
      return "updateType: .removeAlarms(_,_)";
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D1878390(v4);
    return "updateType: .remove(_)";
  }

  else
  {
    sub_1D1878390(v4);
    return "updateType: .data(_)";
  }
}

void *sub_1D18A4014(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - v4;
  v37 = sub_1D1E66A7C();
  v6 = *(v37 - 8);
  v7 = MEMORY[0x1EEE9AC00](v37);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v29 - v9;
  v34 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = sub_1D1E68ACC() | 0x8000000000000000;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v11 = ~v14;
    v10 = a1 + 64;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v12 = v16 & *(a1 + 64);
    v13 = a1;
  }

  v18 = 0;
  v33 = v11;
  v36 = (v6 + 48);
  v29 = v6;
  v30 = (v6 + 32);
  v35 = MEMORY[0x1E69E7CC0];
  while ((v13 & 0x8000000000000000) != 0)
  {
    v22 = sub_1D1E68AEC();
    if (!v22 || (v38 = v22, sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0), swift_dynamicCast(), (v21 = v39) == 0))
    {
LABEL_24:
      sub_1D1716918(v13);
      return v35;
    }

LABEL_17:
    sub_1D1E6781C();
    sub_1D1E66A0C();

    if ((*v36)(v5, 1, v37) == 1)
    {
      result = sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
    }

    else
    {
      v23 = *v30;
      v24 = v37;
      (*v30)(v31, v5, v37);
      v23(v32, v31, v24);
      v25 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1D177D0AC(0, v35[2] + 1, 1, v35);
      }

      v27 = v35[2];
      v26 = v35[3];
      if (v27 >= v26 >> 1)
      {
        v35 = sub_1D177D0AC((v26 > 1), v27 + 1, 1, v35);
      }

      v28 = v35;
      v35[2] = v27 + 1;
      result = (v25)(v28 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v27, v32, v37);
    }
  }

  v19 = v18;
  v20 = v12;
  if (v12)
  {
LABEL_13:
    v12 = (v20 - 1) & v20;
    v21 = *(*(v13 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v21)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= ((v11 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v20 = *(v10 + 8 * v18);
    ++v19;
    if (v20)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t HMAccessory.shouldShowInDashboard.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

void HMAccessory.shouldShowInDashboard.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18A64FC;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_10;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*HMAccessory.shouldShowInDashboard.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = HMAccessory.shouldShowInDashboard.getter() & 1;
  return sub_1D18A4748;
}

uint64_t HMAccessory.isFavorite.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (!v3)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

void HMAccessory.isFavorite.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18A64FC;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_6_0;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

void (*HMAccessory.isFavorite.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = HMAccessory.isFavorite.getter() & 1;
  return sub_1D18A4A18;
}

uint64_t HMAccessory.contributesToHomeStatus.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

void HMAccessory.contributesToHomeStatus.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18A4C9C;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_13_0;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

void (*HMAccessory.contributesToHomeStatus.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = HMAccessory.contributesToHomeStatus.getter() & 1;
  return sub_1D18A4D04;
}

uint64_t HMAccessory.showAsIndividualTiles.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (!v3)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

void HMAccessory.showAsIndividualTiles.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18A64FC;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_20_0;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

void (*HMAccessory.showAsIndividualTiles.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = HMAccessory.showAsIndividualTiles.getter() & 1;
  return sub_1D18A4FD4;
}

uint64_t HMAccessory.dateAdded.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - v4;
  v6 = [v1 applicationData];
  v7 = sub_1D1E677EC();
  v8 = [v6 objectForKeyedSubscript_];

  if (!v8)
  {
    goto LABEL_5;
  }

  v20[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = v20[1];
  v9 = v20[2];
  sub_1D1741B10(0, &qword_1EC645B90, 0x1E696ACD0);
  sub_1D1741B10(0, &qword_1EC645B98, 0x1E695DF00);
  v11 = sub_1D1E6836C();
  if (!v11)
  {
    sub_1D174E7C4(v10, v9);
LABEL_5:
    v12 = sub_1D1E669FC();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  v14 = v11;
  v15 = sub_1D1E669FC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v17(v5, 1, 1, v15);
  sub_1D18A52E4();
  sub_1D1E68C1C();
  sub_1D174E7C4(v10, v9);

  if ((*(v16 + 48))(v5, 1, v15) == 1)
  {
    v18 = a1;
    v19 = 1;
  }

  else
  {
    (*(v16 + 32))(a1, v5, v15);
    v18 = a1;
    v19 = 0;
  }

  return (v17)(v18, v19, 1, v15);
}

unint64_t sub_1D18A52E4()
{
  result = qword_1EC645BA0;
  if (!qword_1EC645BA0)
  {
    sub_1D1E669FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645BA0);
  }

  return result;
}

uint64_t sub_1D18A533C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D174A548(a1, &v6 - v3);
  return HMAccessory.dateAdded.setter(v4);
}

uint64_t HMAccessory.dateAdded.setter(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27[-v4];
  sub_1D174A548(a1, &v27[-v4]);
  v6 = sub_1D1E669FC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC642570, &qword_1D1E6C6A0);
    v33 = 0u;
    v34 = 0u;
    v8 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
    v30 = sub_1D1741B10(0, &qword_1EC645B98, 0x1E695DF00);
    *&aBlock = v8;
    if (*(&v34 + 1))
    {
      sub_1D1741A30(&v33, &qword_1EC649700, &qword_1D1E6E910);
    }
  }

  else
  {
    *(&v34 + 1) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
    (*(v7 + 32))(boxed_opaque_existential_1, v5, v6);
    sub_1D1742194(&v33, &aBlock);
  }

  v10 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(&aBlock, v30);
  v11 = sub_1D1E6903C();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *&aBlock = 0;
  v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&aBlock];
  swift_unknownObjectRelease();
  v13 = aBlock;
  if (v12)
  {
    v14 = sub_1D1E668BC();
    v16 = v15;

    v17 = [v1 applicationData];
    v18 = sub_1D1E6688C();
    v19 = sub_1D1E677EC();
    [v17 setObject:v18 forKeyedSubscript:v19];

    v20 = [v1 applicationData];
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    v31 = sub_1D18A64FC;
    v32 = v21;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v29 = sub_1D1C40BA8;
    v30 = &block_descriptor_27_0;
    v22 = _Block_copy(&aBlock);
    v23 = v1;

    [v23 updateApplicationData:v20 completionHandler:v22];
    _Block_release(v22);

    sub_1D174E7C4(v14, v16);
  }

  else
  {
    v24 = v13;
    v25 = sub_1D1E6656C();

    swift_willThrow();
  }

  return sub_1D1741A30(a1, &qword_1EC642570, &qword_1D1E6C6A0);
}

void (*HMAccessory.dateAdded.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  HMAccessory.dateAdded.getter(v4);
  return sub_1D18A5870;
}

void sub_1D18A5870(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1D174A548(v3, v2);
    HMAccessory.dateAdded.setter(v2);
    sub_1D1741A30(v3, &qword_1EC642570, &qword_1D1E6C6A0);
  }

  else
  {
    HMAccessory.dateAdded.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t HMAccessory.customNearbyAccessoryIdentifiers.getter()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v27 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - v9;
  v11 = [v0 applicationData];
  v12 = sub_1D1E677EC();
  v13 = [v11 objectForKeyedSubscript_];

  if (!v13)
  {
    return 0;
  }

  v33 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v15 = v31;
  v14 = v32;
  sub_1D1741B10(0, &qword_1EC645B90, 0x1E696ACD0);
  sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
  v16 = sub_1D1E6837C();
  if (!v16)
  {
    sub_1D174E7C4(v15, v14);
    return 0;
  }

  v18 = sub_1D18A4014(v16);

  v31 = MEMORY[0x1E69E7CD0];
  v19 = v18[2];
  if (v19)
  {
    v28 = v15;
    v29 = v14;
    v22 = *(v2 + 16);
    v21 = v2 + 16;
    v20 = v22;
    v23 = *(v21 + 64);
    v27 = v18;
    v24 = v18 + ((v23 + 32) & ~v23);
    v30 = *(v21 + 56);
    v25 = (v21 - 8);
    do
    {
      v20(v10, v24, v1);
      v20(v5, v10, v1);
      sub_1D1762CB8(v8, v5);
      v26 = *v25;
      (*v25)(v8, v1);
      v26(v10, v1);
      v24 += v30;
      --v19;
    }

    while (v19);
    sub_1D174E7C4(v28, v29);

    return v31;
  }

  else
  {
    sub_1D174E7C4(v15, v14);

    return MEMORY[0x1E69E7CD0];
  }
}

void HMAccessory.customNearbyAccessoryIdentifiers.setter(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    a1 = MEMORY[0x1E69E7CD0];
  }

  v6 = sub_1D18D95FC(MEMORY[0x1E69E7CC0]);
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;
  v53 = v3 + 16;
  v54 = v3;
  v50 = (v3 + 8);
  v55 = a1;

  v12 = 0;
  v52 = v2;
  v51 = v5;
  if (v10)
  {
    goto LABEL_8;
  }

  while (1)
  {
LABEL_9:
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      while (1)
      {
        (*(v54 + 16))(v5, *(v55 + 48) + *(v54 + 72) * (__clz(__rbit64(v10)) | (v14 << 6)), v2);
        sub_1D1E66A1C();
        v15 = sub_1D1E677EC();

        *&v59 = v15;
        v16 = sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
        sub_1D18A646C();
        v17 = v15;
        sub_1D1E687DC();
        v60 = v16;
        *&v59 = v17;
        sub_1D1742194(&v59, v58);
        v18 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v6;
        v21 = sub_1D171D804(aBlock);
        v22 = v6[2];
        v23 = (v20 & 1) == 0;
        v24 = v22 + v23;
        if (__OFADD__(v22, v23))
        {
          goto LABEL_26;
        }

        v25 = v20;
        if (v6[3] >= v24)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D1739124();
          }
        }

        else
        {
          sub_1D1728940(v24, isUniquelyReferenced_nonNull_native);
          v26 = sub_1D171D804(aBlock);
          if ((v25 & 1) != (v27 & 1))
          {
            sub_1D1E690FC();
            __break(1u);
            return;
          }

          v21 = v26;
        }

        v10 &= v10 - 1;
        v6 = v56;
        if (v25)
        {
          v13 = (v56[7] + 32 * v21);
          __swift_destroy_boxed_opaque_existential_1(v13);
          sub_1D1742194(v58, v13);

          sub_1D1741BB4(aBlock);
          v5 = v51;
          v2 = v52;
          (*v50)(v51, v52);
          v12 = v14;
          if (!v10)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v56[(v21 >> 6) + 8] |= 1 << v21;
          sub_1D1741B58(aBlock, v6[6] + 40 * v21);
          sub_1D1742194(v58, (v6[7] + 32 * v21));

          sub_1D1741BB4(aBlock);
          v5 = v51;
          v2 = v52;
          (*v50)(v51, v52);
          v28 = v6[2];
          v29 = __OFADD__(v28, 1);
          v30 = v28 + 1;
          if (v29)
          {
            goto LABEL_27;
          }

          v6[2] = v30;
          v12 = v14;
          if (!v10)
          {
            goto LABEL_9;
          }
        }

LABEL_8:
        v14 = v12;
      }
    }
  }

  v31 = objc_opt_self();
  v32 = sub_1D1E675DC();

  aBlock[0] = 0;
  v33 = [v31 archivedDataWithRootObject:v32 requiringSecureCoding:1 error:aBlock];

  v34 = aBlock[0];
  if (v33)
  {
    v35 = sub_1D1E668BC();
    v37 = v36;

    v38 = v49;
    v39 = [v49 applicationData];
    v40 = sub_1D1E6688C();
    v41 = sub_1D1E677EC();
    [v39 setObject:v40 forKeyedSubscript:v41];

    v42 = [v38 applicationData];
    v43 = swift_allocObject();
    v43[2] = v38;
    aBlock[4] = sub_1D18A64FC;
    aBlock[5] = v43;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1C40BA8;
    aBlock[3] = &block_descriptor_33;
    v44 = _Block_copy(aBlock);
    v45 = v38;

    [v45 updateApplicationData:v42 completionHandler:v44];
    _Block_release(v44);

    sub_1D174E7C4(v35, v37);
  }

  else
  {
    v46 = v34;
    v47 = sub_1D1E6656C();

    swift_willThrow();
  }
}