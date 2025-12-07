void sub_1D24ECE1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAF8, &qword_1D288E860);
  v2 = *v0;
  v3 = sub_1D28793C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_1D24ECF68()
{
  v1 = v0;
  v44 = sub_1D2871818();
  v46 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAE0, &qword_1D288E858);
  v3 = *v0;
  v4 = sub_1D28793C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v38 = v1;
    v39 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v45 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v42 = v14;
    v15 = v43;
    if (v13)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v52 = (v13 - 1) & v13;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v46;
        v21 = *(v46 + 72) * v19;
        v22 = v44;
        (*(v46 + 16))(v15, *(v3 + 48) + v21, v44);
        v23 = 56 * v19;
        v24 = (*(v3 + 56) + 56 * v19);
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[3];
        v50 = v24[2];
        v51 = v25;
        v28 = v24[4];
        v29 = v24[5];
        v48 = v26;
        v49 = v28;
        v47 = v24[6];
        v30 = v3;
        v31 = v45;
        (*(v20 + 32))(*(v45 + 48) + v21, v15, v22);
        v32 = *(v31 + 56);
        v3 = v30;
        v33 = (v32 + v23);
        v34 = v50;
        v36 = v47;
        v35 = v48;
        *v33 = v51;
        v33[1] = v35;
        v33[2] = v34;
        v33[3] = v27;
        v33[4] = v49;
        v33[5] = v29;
        v33[6] = v36;
        sub_1D2870F68();
        sub_1D2870F68();
        sub_1D2870F68();
        sub_1D2870F68();
        v14 = v42;
        v13 = v52;
      }

      while (v52);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v38;
        v5 = v45;
        goto LABEL_18;
      }

      v18 = *(v39 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v52 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1D24ED24C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAB8, &qword_1D28A11A0);
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = &v27 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAC0, &qword_1D288E838);
  v4 = *v0;
  v5 = sub_1D28793C8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v27 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v30 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v28;
        v22 = *(v29 + 72) * v20;
        sub_1D22BD1D0(*(v4 + 48) + v22, v28, &qword_1EC6DCAB8, &qword_1D28A11A0);
        v23 = *(*(v4 + 56) + 8 * v20);
        v24 = v4;
        v25 = v30;
        sub_1D22EC9BC(v21, *(v30 + 48) + v22, &qword_1EC6DCAB8, &qword_1D28A11A0);
        v26 = *(v25 + 56);
        v4 = v24;
        *(v26 + 8 * v20) = v23;
        sub_1D2870F78();
      }

      while (v15);
    }

    v18 = v10;
    v6 = v30;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }
}

void sub_1D24ED4A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAD8, &qword_1D288E850);
  v2 = *v0;
  v3 = sub_1D28793C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_1D24ED5F0()
{
  v1 = v0;
  v33 = sub_1D2871818();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAE8, &unk_1D2898DE0);
  v3 = *v0;
  v4 = sub_1D28793C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;
        sub_1D2870F78();
        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1D24ED898()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB80, &qword_1D288E8A0);
  v2 = *v0;
  v3 = sub_1D28793C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        LOBYTE(v21) = *(v21 + 8);
        v23 = (*(v4 + 48) + v17);
        *v23 = v20;
        v23[1] = v19;
        v24 = *(v4 + 56) + v17;
        *v24 = v22;
        *(v24 + 8) = v21;
        sub_1D2870F68();
        sub_1D2870F78();
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
}

void sub_1D24EDA3C()
{
  v1 = v0;
  v33 = sub_1D2871D58();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB18, &unk_1D2897390);
  v3 = *v0;
  v4 = sub_1D28793C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;
        sub_1D2870F68();
        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1D24EDCBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB20, &qword_1D288E878);
  v2 = *v0;
  v3 = sub_1D28793C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
        sub_1D2870F68();
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
}

void sub_1D24EDE24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB10, &unk_1D2897220);
  v2 = *v0;
  v3 = sub_1D28793C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1D23C3EE4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D23C3FAC(v25, (*(v4 + 56) + v22));
        sub_1D2870F68();
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_1D24EDFEC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA810, &qword_1D28972B0);
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v28 - v3;
  v4 = type metadata accessor for GeneratedPreviewOptions(0);
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA58, &qword_1D288E810);
  v6 = *v0;
  v7 = sub_1D28793C8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v34 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    v16 = *(v6 + 64);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v17 = v15 & v16;
    v18 = (v14 + 63) >> 6;
    if ((v15 & v16) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v35 = (v17 - 1) & v17;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = v30;
        v24 = *(v31 + 72) * v22;
        sub_1D24F0AD8(*(v6 + 48) + v24, v30, type metadata accessor for GeneratedPreviewOptions);
        v25 = v32;
        v26 = *(v33 + 72) * v22;
        sub_1D22BD1D0(*(v6 + 56) + v26, v32, &qword_1EC6DA810, &qword_1D28972B0);
        v27 = v34;
        sub_1D24F0B40(v23, *(v34 + 48) + v24, type metadata accessor for GeneratedPreviewOptions);
        sub_1D22EC9BC(v25, *(v27 + 56) + v26, &qword_1EC6DA810, &qword_1D28972B0);
        v17 = v35;
      }

      while (v35);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v29;
        v8 = v34;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v35 = (v21 - 1) & v21;
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
}

void sub_1D24EE2EC()
{
  v1 = v0;
  v2 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GeneratedPreviewOptions(0);
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA30, &unk_1D2897260);
  v6 = *v0;
  v7 = sub_1D28793C8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v6 + 64;
    if (v8 != v6 || v9 >= &v10[8 * v11])
    {
      memmove(v9, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v33 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v34 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v29;
        v23 = *(v30 + 72) * v21;
        sub_1D24F0AD8(*(v6 + 48) + v23, v29, type metadata accessor for GeneratedPreviewOptions);
        v24 = v31;
        v25 = *(v32 + 72) * v21;
        sub_1D24F0AD8(*(v6 + 56) + v25, v31, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
        v26 = v33;
        sub_1D24F0B40(v22, *(v33 + 48) + v23, type metadata accessor for GeneratedPreviewOptions);
        sub_1D24F0B40(v24, *(v26 + 56) + v25, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
        v16 = v34;
      }

      while (v34);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v27;
        v8 = v33;
        goto LABEL_18;
      }

      v20 = *(v28 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v34 = (v20 - 1) & v20;
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
}

void sub_1D24EE604(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v50 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v36 - v8;
  v45 = sub_1D2871818();
  v49 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *v4;
  v11 = sub_1D28793C8();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = (v11 + 64);
    v14 = (v10 + 64);
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    v36 = v7;
    v37 = v10 + 64;
    if (v12 != v10 || v13 >= &v14[8 * v15])
    {
      memmove(v13, v14, 8 * v15);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v48 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = v49 + 16;
    v42 = v21;
    v39 = v49 + 32;
    v40 = v50 + 16;
    v38 = v50 + 32;
    v43 = v10;
    v23 = v44;
    v22 = v45;
    if (v20)
    {
      do
      {
        v24 = __clz(__rbit64(v20));
        v51 = (v20 - 1) & v20;
LABEL_14:
        v27 = v24 | (v16 << 6);
        v28 = v49;
        v29 = *(v49 + 72) * v27;
        (*(v49 + 16))(v23, *(v10 + 48) + v29, v22);
        v30 = v50;
        v31 = *(v50 + 72) * v27;
        v32 = v46;
        v33 = v47;
        (*(v50 + 16))(v46, *(v10 + 56) + v31, v47);
        v34 = v48;
        (*(v28 + 32))(*(v48 + 48) + v29, v23, v22);
        v35 = *(v34 + 56);
        v10 = v43;
        (*(v30 + 32))(v35 + v31, v32, v33);
        v21 = v42;
        v20 = v51;
      }

      while (v51);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v36;
        v12 = v48;
        goto LABEL_18;
      }

      v26 = *(v37 + 8 * v16);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v51 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v12;
  }
}

void sub_1D24EE950()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA808, &unk_1D2884480);
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v28 - v3;
  v4 = type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA40, &qword_1D288E808);
  v6 = *v0;
  v7 = sub_1D28793C8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v34 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    v16 = *(v6 + 64);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v17 = v15 & v16;
    v18 = (v14 + 63) >> 6;
    if ((v15 & v16) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v35 = (v17 - 1) & v17;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = v30;
        v24 = *(v31 + 72) * v22;
        sub_1D24F0AD8(*(v6 + 48) + v24, v30, type metadata accessor for ImageKeyFaceLoader.Context.ID);
        v25 = v32;
        v26 = *(v33 + 72) * v22;
        sub_1D22BD1D0(*(v6 + 56) + v26, v32, &qword_1EC6DA808, &unk_1D2884480);
        v27 = v34;
        sub_1D24F0B40(v23, *(v34 + 48) + v24, type metadata accessor for ImageKeyFaceLoader.Context.ID);
        sub_1D22EC9BC(v25, *(v27 + 56) + v26, &qword_1EC6DA808, &unk_1D2884480);
        v17 = v35;
      }

      while (v35);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v29;
        v8 = v34;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v35 = (v21 - 1) & v21;
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
}

void sub_1D24EEC50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA38, &unk_1D28972E0);
  v2 = *v0;
  v3 = sub_1D28793C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        sub_1D2870F68();
        v22 = v20;
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
}

void sub_1D24EEDC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB00, &qword_1D288E868);
  v2 = *v0;
  v3 = sub_1D28793C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 2 * v17;
        v19 = (*(v2 + 48) + 2 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 40 * v17;
        sub_1D22D7044(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        sub_1D227268C(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_1D24EEF68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB98, &qword_1D288E8B0);
  v2 = *v0;
  v3 = sub_1D28793C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_1D24EF0B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBB0, &qword_1D288E8C0);
  v2 = *v0;
  v3 = sub_1D28793C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        sub_1D2870F68();
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
}

void sub_1D24EF21C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBA8, &unk_1D28974E0);
  v2 = *v0;
  v3 = sub_1D28793C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
        sub_1D2870F68();
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
}

void sub_1D24EF384()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB48, &qword_1D28947C0);
  v2 = *v0;
  v3 = sub_1D28793C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_1D2870F78();
        v19 = v18;
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
}

void sub_1D24EF4E4()
{
  v1 = v0;
  v39 = sub_1D2871818();
  v41 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA88, &unk_1D2897380);
  v3 = *v0;
  v4 = sub_1D28793C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v40 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v34 = v41 + 32;
    v35 = v41 + 16;
    v36 = v14;
    v37 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v42 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v41;
        v20 = *(v41 + 72) * v18;
        v22 = v38;
        v21 = v39;
        (*(v41 + 16))(v38, *(v3 + 48) + v20, v39);
        v23 = 24 * v18;
        v24 = (*(v3 + 56) + 24 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[2];
        v28 = v40;
        (*(v19 + 32))(*(v40 + 48) + v20, v22, v21);
        v29 = *(v28 + 56);
        v3 = v37;
        v30 = (v29 + v23);
        *v30 = v25;
        v30[1] = v26;
        v30[2] = v27;
        sub_1D2396784(v25, v26, v27);
        v14 = v36;
        v13 = v42;
      }

      while (v42);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v32;
        v5 = v40;
        goto LABEL_18;
      }

      v17 = *(v33 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v42 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1D24EF788()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA78, &qword_1D288E818);
  v2 = *v0;
  v3 = sub_1D28793C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
        sub_1D2870F68();
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
}

void sub_1D24EF8F8()
{
  v1 = v0;
  v2 = type metadata accessor for Bubble(0);
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB50, &unk_1D2897360);
  v5 = *v0;
  v6 = sub_1D28793C8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v28 + 72) * v20;
        sub_1D24F0AD8(*(v5 + 48) + v21, v4, type metadata accessor for Bubble);
        v20 *= 32;
        v22 = (*(v5 + 56) + v20);
        v23 = *(v7 + 48);
        v24 = *v22;
        v29 = v22[1];
        v30 = v24;
        sub_1D24F0B40(v4, v23 + v21, type metadata accessor for Bubble);
        v25 = (*(v7 + 56) + v20);
        v26 = v29;
        *v25 = v30;
        v25[1] = v26;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }
}

void sub_1D24EFB38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB40, &qword_1D288E888);
  v2 = *v0;
  v3 = sub_1D28793C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_1D2870F78();
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
}

void sub_1D24EFC94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB08, &qword_1D288E870);
  v2 = *v0;
  v3 = sub_1D28793C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 48) + 2 * v14);
      v18 = *v17;
      LOBYTE(v17) = v17[1];
      v19 = *(*(v2 + 56) + 4 * v14);
      v20 = (*(v4 + 48) + 2 * v14);
      *v20 = v18;
      v20[1] = v17;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_1D24EFDF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB58, &unk_1D28973E0);
  v2 = *v0;
  v3 = sub_1D28793C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v20[1] = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + 32 * v14);
      v18 = *v17;
      v19 = v17[1];
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v20 = (*(v4 + 56) + 32 * v14);
      *v20 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_1D24EFF4C()
{
  v1 = v0;
  v2 = type metadata accessor for ConversationContextItem(0);
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCB70, &unk_1D2897410);
  v4 = *v0;
  v5 = sub_1D28793C8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_1D24F0AD8(v21 + v27, v32, type metadata accessor for ConversationContextItem);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_1D24F0B40(v26, *(v28 + 56) + v27, type metadata accessor for ConversationContextItem);
        sub_1D2870F68();
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1D24F01AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBB8, &unk_1D28974F0);
  v2 = *v0;
  v3 = sub_1D28793C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_1D24F0320(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v40 = a1(0);
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_1D28793C8();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v34 = v6;
    v35 = (v8 + 64);
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v12)
    {
      memmove(v11, v35, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v41 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v36 = v42 + 32;
    v37 = v42 + 16;
    v38 = v8;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v43 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v42;
        v25 = *(v42 + 72) * v23;
        v26 = v39;
        v27 = v40;
        (*(v42 + 16))(v39, *(v8 + 48) + v25, v40);
        v28 = 16 * v23;
        v29 = (*(v8 + 56) + 16 * v23);
        v30 = *v29;
        v31 = v29[1];
        v32 = v41;
        (*(v24 + 32))(*(v41 + 48) + v25, v26, v27);
        v33 = (*(v32 + 56) + v28);
        *v33 = v30;
        v33[1] = v31;
        v8 = v38;
        sub_1D2870F68();
        v18 = v43;
      }

      while (v43);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v34;
        v10 = v41;
        goto LABEL_21;
      }

      v22 = *(v35 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v43 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }
}

unint64_t sub_1D24F05B0()
{
  sub_1D22BCFD0(0, &qword_1ED89CDA0, 0x1E695E000);
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 dictionaryForKey_];

  if (!v2 || (v3 = sub_1D2877E98(), v2, sub_1D24DCD78(v3), v5 = v4, , !v5))
  {
    v5 = sub_1D25D6E38(MEMORY[0x1E69E7CC0]);
  }

  return v5;
}

uint64_t sub_1D24F06A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA428, &unk_1D28A7FD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v24 - v3;
  v5 = sub_1D28729E8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8A3548 != -1)
  {
    swift_once();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA430, &unk_1D28835E0);
  v10 = __swift_project_value_buffer(v9, qword_1ED8A3550);
  os_unfair_lock_lock(v10);
  sub_1D22BD1D0(v10 + *(v9 + 28), v4, &qword_1EC6DA428, &unk_1D28A7FD0);
  os_unfair_lock_unlock(v10);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D22BD238(v4, &qword_1EC6DA428, &unk_1D28A7FD0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v11 = sub_1D28729C8();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    if (v13)
    {
      v14 = sub_1D2871F98();
      v16 = v15;
      v17 = sub_1D24F05B0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24[1] = v17;
      sub_1D24E7BD8(v14, v16, v11, v13, isUniquelyReferenced_nonNull_native);

      sub_1D22BCFD0(0, &qword_1ED89CDA0, 0x1E695E000);
      v19 = sub_1D2878A58();
      v20 = sub_1D2877E78();

      v21 = sub_1D2878068();
      [v19 setValue:v20 forKey:v21];
    }
  }

  v22 = sub_1D2872008();
  return (*(*(v22 - 8) + 8))(a1, v22);
}

uint64_t sub_1D24F09CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24F0A90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D24F0AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24F0B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24F0BA8(uint64_t a1, void *a2, void (*a3)(void, void, void, void), uint64_t a4, uint64_t a5)
{
  v190 = a5;
  v189 = a4;
  v200 = a3;
  v211 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBC0, &qword_1D288E8C8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v197 = &v172 - v7;
  v199 = sub_1D2873158();
  *&v198 = *(v199 - 1);
  MEMORY[0x1EEE9AC00](v199);
  v196 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBC8, &qword_1D288E8D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v181 = &v172 - v10;
  v180 = sub_1D28731A8();
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v178 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_1D2873198();
  v182 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v201 = &v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v175 = &v172 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v172 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v195 = &v172 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v188 = &v172 - v21;
  v207 = sub_1D2873758();
  v209 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v202 = &v172 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v177 = &v172 - v24;
  v25 = type metadata accessor for PlaygroundImage(0);
  v214 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v172 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v172 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v192 = &v172 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v193 = &v172 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBD0, &qword_1D288E8D8);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v186 = &v172 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA510, &qword_1D28ABCA0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v194 = (&v172 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39);
  v187 = (&v172 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v210 = (&v172 - v42);
  v191 = sub_1D28730A8();
  v203 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v208 = &v172 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1D2873CB8();
  v45 = *(v44 - 8);
  v212 = v44;
  v213 = v45;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v172 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v172 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v185 = &v172 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v176 = &v172 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v184 = &v172 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v174 = &v172 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v172 - v60;
  v62 = sub_1D2873088();
  v205 = *(v62 - 8);
  v206 = v62;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v172 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v66 = MEMORY[0x1EEE9AC00](v65).n128_u64[0];
  v204 = &v172 - v67;
  v68 = [a2 baseImage];
  v69 = [a2 sketchImage];
  v215 = v68;
  if (!v68)
  {
    v70 = v69;
    if (v69)
    {
LABEL_13:
      v81 = objc_opt_self();
      v82 = v70;
      v83 = [v81 currentTraitCollection];
      v84 = [v83 userInterfaceStyle];

      if (v84 != 2)
      {
        v85 = v82;
        v86 = v207;
        v88 = v201;
        v87 = v202;
LABEL_17:
        v89 = v85;
        *(v30 + 4) = 0;
        *(v30 + 5) = 0;
        v90 = &v30[v25[9]];
        *v90 = 0u;
        *(v90 + 1) = 0u;
        *&v30[v25[10]] = xmmword_1D28809A0;
        v91 = v25[11];
        v92 = sub_1D2873AA8();
        (*(*(v92 - 8) + 56))(&v30[v91], 1, 1, v92);
        *v30 = v70;
        v30[8] = 3;
        *(v30 + 6) = 1;
        *(v30 + 2) = 0;
        v30[v25[12]] = 1;
        v208 = v89;
        sub_1D2871808();
        v93 = v195;
        sub_1D262A994(v195);
        sub_1D23D4DFC(v30);
        if ((*(v214 + 48))(v93, 1, v25) == 1)
        {
          sub_1D22BD238(v93, &unk_1EC6DE5A0, &unk_1D287F0E0);
          v94 = v209;
          v95 = v194;
          (*(v209 + 56))(v194, 1, 1, v86);
        }

        else
        {
          v95 = v194;
          sub_1D262C1D0(v194);
          sub_1D23D4DFC(v93);
          v94 = v209;
          if ((*(v209 + 48))(v95, 1, v86) != 1)
          {
            (*(v94 + 32))(v87, v95, v86);
            sub_1D2873188();
            sub_1D2873168();
            (*(v179 + 104))(v178, *MEMORY[0x1E69DFF78], v180);
            sub_1D2873178();
            v139 = v210;
            (*(v94 + 16))(v210, v87, v86);
            (*(v94 + 56))(v139, 0, 1, v86);
            sub_1D2873028();
            v140 = v182;
            v141 = v181;
            v142 = v183;
            (*(v182 + 16))(v181, v88, v183);
            (*(v140 + 56))(v141, 0, 1, v142);
            sub_1D2872F38();
            v143 = v176;
            sub_1D28725B8();
            v144 = sub_1D2873CA8();
            v145 = sub_1D28789F8();
            if (os_log_type_enabled(v144, v145))
            {
              v146 = v140;
              v147 = swift_slowAlloc();
              *v147 = 0;
              _os_log_impl(&dword_1D226E000, v144, v145, "generate - running PromptConditioningImageAssignmentTask with sketchImage", v147, 2u);
              MEMORY[0x1D38A3520](v147, -1, -1);

              (*(v213 + 8))(v143, v212);
              (*(v146 + 8))(v88, v142);
              (*(v94 + 8))(v202, v86);
            }

            else
            {

              (*(v213 + 8))(v143, v212);
              (*(v140 + 8))(v88, v142);
              (*(v94 + 8))(v87, v86);
            }

LABEL_43:
            v164 = v196;
            sub_1D2873148();
            v165 = v210;
            v166 = v208;
            *v210 = v208;
            (*(v94 + 104))(v165, *MEMORY[0x1E69E0108], v86);
            (*(v94 + 56))(v165, 0, 1, v86);
            v167 = v166;
            sub_1D2872FF8();
            v169 = v197;
            v168 = v198;
            v170 = v199;
            (*(v198 + 16))(v197, v164, v199);
            (*(v168 + 56))(v169, 0, 1, v170);
            sub_1D2872F28();

            return (*(v168 + 8))(v164, v170);
          }
        }

        sub_1D22BD238(v95, &qword_1EC6DA510, &qword_1D28ABCA0);
        v96 = v185;
        sub_1D28725B8();
        v97 = sub_1D2873CA8();
        v98 = sub_1D28789F8();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          *v99 = 0;
          _os_log_impl(&dword_1D226E000, v97, v98, "generate - skipping PromptConditioningImageAssignmentTask with sketchImage", v99, 2u);
          MEMORY[0x1D38A3520](v99, -1, -1);
        }

        (*(v213 + 8))(v96, v212);
        goto LABEL_43;
      }

      v85 = sub_1D2878948();
      v86 = v207;
      v88 = v201;
      v87 = v202;
      if (v85)
      {
        v70 = v85;
        goto LABEL_17;
      }

      sub_1D28725B8();
      v148 = sub_1D2873CA8();
      v149 = sub_1D2878A18();
      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        *v150 = 0;
        _os_log_impl(&dword_1D226E000, v148, v149, "generate - failed to create a normalized sketch image", v150, 2u);
        MEMORY[0x1D38A3520](v150, -1, -1);
      }

      else
      {
      }

      v100 = *(v213 + 8);
      v101 = v50;
      return v100(v101, v212);
    }

LABEL_8:
    sub_1D247E07C(v200, v17);
    if ((*(v214 + 48))(v17, 1, v25) != 1)
    {
      sub_1D23EEBD4(v17, v27);
      sub_1D262C1D0(v210);
      sub_1D2873028();

      return sub_1D23D4DFC(v27);
    }

    sub_1D22BD238(v17, &unk_1EC6DE5A0, &unk_1D287F0E0);
    sub_1D28725B8();
    v77 = sub_1D2873CA8();
    v78 = sub_1D28789F8();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_1D226E000, v77, v78, "generate - skipping assignment of draw-on-image recipe", v79, 2u);
      MEMORY[0x1D38A3520](v79, -1, -1);
    }

    else
    {
    }

    v100 = *(v213 + 8);
    v101 = v47;
    return v100(v101, v212);
  }

  v70 = v69;
  if (!v69)
  {
    goto LABEL_8;
  }

  v71 = v215;
  v72 = v70;
  v73 = [a2 sketchMask];
  if (!v73)
  {

    goto LABEL_13;
  }

  v74 = v73;
  v75 = [a2 drawOnImageAssignmentOptions];
  v173 = v70;
  v172 = v74;
  v200 = v72;
  if (v75)
  {
    if (v75 == 1)
    {
      v76 = MEMORY[0x1E69DFF58];
      goto LABEL_29;
    }

    sub_1D28725B8();
    v102 = sub_1D2873CA8();
    v103 = sub_1D2878A18();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_1D226E000, v102, v103, "generate - unsupported DOI render mode", v104, 2u);
      MEMORY[0x1D38A3520](v104, -1, -1);
    }

    (*(v213 + 8))(v61, v212);
  }

  v76 = MEMORY[0x1E69DFF50];
LABEL_29:
  v106 = v204;
  v105 = v205;
  v107 = v206;
  (*(v205 + 104))(v204, *v76, v206);
  (*(v105 + 16))(v64, v106, v107);
  sub_1D2873098();
  v109 = v209;
  v108 = v210;
  *v210 = v71;
  v110 = *MEMORY[0x1E69E0108];
  v111 = v71;
  v112 = *(v109 + 104);
  v113 = v207;
  v112(v108, v110, v207);
  v114 = *(v109 + 56);
  v197 = (v109 + 56);
  v114(v108, 0, 1, v113);
  v199 = v111;
  sub_1D2873048();
  v115 = v200;
  *v108 = v200;
  v112(v108, v110, v113);
  v114(v108, 0, 1, v113);
  v201 = v115;
  sub_1D2872FF8();
  v116 = v172;
  *v108 = v172;
  v112(v108, v110, v113);
  v200 = v114;
  v114(v108, 0, 1, v113);
  v202 = v116;
  sub_1D2872F68();
  v117 = v203;
  v118 = v186;
  v119 = v191;
  (*(v203 + 16))(v186, v208, v191);
  (*(v117 + 56))(v118, 0, 1, v119);
  sub_1D2872F08();
  sub_1D22A58B8(v189, v190);
  sub_1D2872EF8();
  v120 = v193;
  *(v193 + 32) = 0;
  *(v120 + 40) = 0;
  v121 = (v120 + v25[9]);
  *v121 = 0u;
  v121[1] = 0u;
  v122 = v25[10];
  v198 = xmmword_1D28809A0;
  *(v120 + v122) = xmmword_1D28809A0;
  v123 = v25[11];
  v124 = sub_1D2873AA8();
  v125 = *(*(v124 - 8) + 56);
  v125(v120 + v123, 1, 1, v124);
  *v120 = v173;
  *(v120 + 8) = 3;
  *(v120 + 24) = 1;
  *(v120 + 16) = 0;
  *(v120 + v25[12]) = 1;
  v201 = v201;
  sub_1D2871808();
  v126 = v192;
  *(v192 + 32) = 0;
  *(v126 + 40) = 0;
  v127 = (v126 + v25[9]);
  *v127 = 0u;
  v127[1] = 0u;
  *(v126 + v25[10]) = v198;
  v125(v126 + v25[11], 1, 1, v124);
  *v126 = v215;
  *(v126 + 8) = 3;
  *(v126 + 24) = 1;
  *(v126 + 16) = 0;
  *(v126 + v25[12]) = 1;
  v128 = v199;
  sub_1D2871808();
  v129 = v188;
  sub_1D262A704(v188);
  if ((*(v214 + 48))(v129, 1, v25) == 1)
  {
    sub_1D23D4DFC(v126);
    sub_1D23D4DFC(v120);
    sub_1D22BD238(v129, &unk_1EC6DE5A0, &unk_1D287F0E0);
    v130 = v187;
    v200(v187, 1, 1, v113);
LABEL_33:
    sub_1D22BD238(v130, &qword_1EC6DA510, &qword_1D28ABCA0);
    v132 = v184;
    sub_1D28725B8();
    v133 = sub_1D2873CA8();
    v134 = sub_1D28789F8();
    v135 = os_log_type_enabled(v133, v134);
    v136 = v204;
    if (v135)
    {
      v137 = swift_slowAlloc();
      *v137 = 0;
      _os_log_impl(&dword_1D226E000, v133, v134, "generate - skipping PromptConditioningImageAssignmentTask with blendedImage", v137, 2u);
      MEMORY[0x1D38A3520](v137, -1, -1);
    }

    v138 = v201;
    (*(v213 + 8))(v132, v212);
    (*(v203 + 8))(v208, v119);
    return (*(v205 + 8))(v136, v206);
  }

  v131 = v200;
  v130 = v187;
  sub_1D262C1D0(v187);
  sub_1D23D4DFC(v129);
  if ((*(v209 + 48))(v130, 1, v113) == 1)
  {
    sub_1D23D4DFC(v126);
    sub_1D23D4DFC(v120);
    goto LABEL_33;
  }

  v151 = v209;
  v152 = v177;
  (*(v209 + 32))(v177, v130, v113);
  v153 = v175;
  sub_1D2873188();
  sub_1D2873168();
  (*(v179 + 104))(v178, *MEMORY[0x1E69DFF70], v180);
  sub_1D2873178();
  v154 = v210;
  (*(v151 + 16))(v210, v152, v113);
  v131(v154, 0, 1, v113);
  sub_1D2873028();
  v155 = v182;
  v156 = v181;
  v157 = v183;
  (*(v182 + 16))(v181, v153, v183);
  (*(v155 + 56))(v156, 0, 1, v157);
  sub_1D2872F38();
  v158 = v174;
  sub_1D28725B8();
  v159 = sub_1D2873CA8();
  v160 = sub_1D28789F8();
  if (os_log_type_enabled(v159, v160))
  {
    v161 = v155;
    v162 = swift_slowAlloc();
    *v162 = 0;
    _os_log_impl(&dword_1D226E000, v159, v160, "generate - running PromptConditioningImageAssignmentTask with blendedImage", v162, 2u);
    MEMORY[0x1D38A3520](v162, -1, -1);

    v163 = v201;
    (*(v213 + 8))(v158, v212);
    (*(v161 + 8))(v153, v157);
  }

  else
  {

    v171 = v201;
    (*(v213 + 8))(v158, v212);
    (*(v155 + 8))(v153, v157);
  }

  (*(v209 + 8))(v177, v113);
  sub_1D23D4DFC(v192);
  sub_1D23D4DFC(v193);
  (*(v203 + 8))(v208, v119);
  return (*(v205 + 8))(v204, v206);
}

uint64_t *sub_1D24F2508(uint64_t *result, uint64_t a2, uint64_t *a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4)
  {
    v7 = result;
    v8 = sub_1D27CE9A8(a2 - result, 0);
    result = sub_1D286CDD0(v10, (v8 + 32), v4, v7, a2);
    if (result == v4)
    {
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v11 = v8;
  sub_1D24F5088(&v11, a3);
  v9 = v11;
  if (v3)
  {
  }

  return v9;
}

void sub_1D24F25CC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, char *a10)
{
  v94 = a4;
  LODWORD(v95) = a8;
  v96 = a7;
  v93 = *&a3;
  v86 = a2;
  v88 = a1;
  v87 = a10;
  v89 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBE0, &unk_1D288EA40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v99 = v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v97 = v84 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v85 = v84 - v16;
  v90 = type metadata accessor for VStackWithCenteredSubviewLayout.View(0);
  v92 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v18 = v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v98 = (v84 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v91 = (v84 - v22);
  v23 = sub_1D2874B38();
  v100 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D2874C68();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA08, &unk_1D288E670);
  v31 = v30 - 8;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = v84 - v33;
  v35.n128_f64[0] = (*(v27 + 16))(v29, a5, v26, v32);
  sub_1D24DB6A0(&qword_1ED89DEA8, MEMORY[0x1E697E3D0], v35);
  sub_1D2878318();
  v36 = *(v31 + 44);
  sub_1D24DB6A0(&qword_1ED89DEA0, MEMORY[0x1E697E3D8], v37);
  sub_1D2878868();
  if (*&v34[v36] == *v103)
  {
    v101 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v50 = (v100 + 16);
    if (v94)
    {
      v51 = 0.0;
    }

    else
    {
      v51 = v93;
    }

    v52 = (v100 + 8);
    v84[1] = v100 + 32;
    v101 = MEMORY[0x1E69E7CC0];
    do
    {
      v53 = sub_1D28788B8();
      (*v50)(v25);
      v53(v103, 0);
      sub_1D2878878();
      sub_1D24F4EA0();
      sub_1D2874B48();
      if (v103[0] == 1 && ((v103[1] & 1) == 0 ? (v54 = 210.0) : (v54 = 300.0), v51 < v54))
      {
        (*v52)(v25, v23);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_1D27CD310(0, v101[2] + 1, 1, v101);
        }

        v55 = v100;
        v57 = v101[2];
        v56 = v101[3];
        v58 = v57 + 1;
        if (v57 >= v56 >> 1)
        {
          v84[0] = v57 + 1;
          v60 = sub_1D27CD310((v56 > 1), v57 + 1, 1, v101);
          v58 = v84[0];
          v55 = v100;
          v101 = v60;
        }

        v59 = v101;
        v101[2] = v58;
        v55[4](v59 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + v55[9] * v57, v25, v23);
      }

      sub_1D2878868();
    }

    while (*&v34[v36] != *v103);
  }

  sub_1D22BD238(v34, &qword_1EC6DCA08, &unk_1D288E670);
  v103[0] = v86 & 1;
  v102 = v94 & 1;
  v38 = sub_1D24F2F94(v101, v88, v86 & 1, *&v93, v94 & 1, v96, v95 & 1, v89, v87);

  v39 = *(v38 + 16);
  if (!v39)
  {
    goto LABEL_43;
  }

  v40 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v41 = v38 + v40;
  v42 = v91;
  sub_1D24F4EF4(v38 + v40, v91);
  v43 = *v42;
  v44 = v90;
  v45 = v42 + *(v90 + 20);
  v46 = v85;
  sub_1D24F4F58(v45, v85);
  v47 = sub_1D2874DE8();
  v48 = *(v47 - 8);
  v100 = *(v48 + 48);
  v101 = (v48 + 48);
  if ((v100)(v46, 1, v47) == 1)
  {
    sub_1D22BD238(v46, &qword_1EC6DCBE0, &unk_1D288EA40);
    v49 = 0.0;
  }

  else
  {
    sub_1D2874DC8();
    v49 = v61;
    (*(v48 + 8))(v46, v47);
  }

  v62 = v98;
  v63 = v99;
  v64 = v43 + v49;
  if (v43 > v43 + v49)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v88 = v48;
  v89 = v38;
  v65 = v39 - 1;
  if (v39 != 1)
  {
    v96 = *(v44 + 20);
    v66 = *(v92 + 72);
    v95 = (v88 + 8);
    v67 = v89 + v66 + v40;
    while (1)
    {
      sub_1D24F4EF4(v67, v62);
      v68 = *v62;
      if (*v62 < v43)
      {
        v43 = *v62;
      }

      v69 = v62 + v96;
      v70 = v62;
      v71 = v97;
      sub_1D24F4F58(v69, v97);
      if ((v100)(v71, 1, v47) == 1)
      {
        sub_1D24F4FC8(v70);
        sub_1D22BD238(v71, &qword_1EC6DCBE0, &unk_1D288EA40);
        v72 = v68 + 0.0;
      }

      else
      {
        sub_1D2874DC8();
        v63 = v99;
        v74 = v73;
        sub_1D24F4FC8(v70);
        (*v95)(v71, v47);
        v68 = v68 + v74;
        v72 = v68;
      }

      if (v64 <= v68)
      {
        v64 = v72;
      }

      if (v43 > v64)
      {
        break;
      }

      v67 += v66;
      --v65;
      v62 = v98;
      if (!v65)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

LABEL_37:
  sub_1D24F4FC8(v91);
  if (v39 <= *(v89 + 16))
  {
    v75 = *(v90 + 20);
    v76 = *(v90 + 32);
    v77 = (v88 + 8);
    v78 = 0.0;
    v79 = *(v92 + 72);
    do
    {
      sub_1D24F4EF4(v41, v18);
      sub_1D24F4F58(&v18[v75], v63);
      if ((v100)(v63, 1, v47) == 1)
      {
        sub_1D22BD238(v63, &qword_1EC6DCBE0, &unk_1D288EA40);
        v80 = 0.0;
      }

      else
      {
        sub_1D2874DD8();
        v63 = v99;
        v80 = v83;
        (*v77)(v99, v47);
      }

      v81 = v78 + v80;
      v82 = *&v18[v76];
      sub_1D24F4FC8(v18);
      v78 = v81 + v82;
      v41 += v79;
      --v39;
    }

    while (v39);
LABEL_43:

    return;
  }

LABEL_46:
  __break(1u);
}

uint64_t sub_1D24F2F94(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v121 = a5;
  v120 = a4;
  v122 = a3;
  v123 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBE0, &unk_1D288EA40);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v134 = &v119 - v13;
  v14 = sub_1D2874DE8();
  v126 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v124 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1D2874B38();
  v140 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v145 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC9E8, &unk_1D288E650);
  v17 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v129 = (&v119 - v18);
  v144 = sub_1D2874638();
  v19 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v138 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v132 = &v119 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC9F0, &unk_1D28A7730);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v119 - v27;
  v139 = type metadata accessor for VStackWithCenteredSubviewLayout.View(0);
  v142 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v133 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v127 = (&v119 - v31);
  v137 = a1;
  v32 = *(a1 + 16);
  if (v32 <= 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = *(a1 + 16);
  }

  result = sub_1D24F5E10(0, v33 - 1, *(a1 + 16), 0, *(a1 + 16));
  if (v35)
  {
    v36 = v32;
  }

  else
  {
    v36 = result;
  }

  if (v36 < 0)
  {
    goto LABEL_68;
  }

  v125 = v17;
  v130 = v25;
  v143 = v32;
  v135 = v14;
  if (!v36)
  {
    v136 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v52 = v133;
    v133 = a9;
    v53 = v139;
    v54 = *(v126 + 56);
    v55 = v127;
    v56 = v127 + *(v139 + 20);
    v132 = (v126 + 56);
    v131 = v54;
    v54(v56, 1, 1, v14);
    v57 = sub_1D2875148();
    *v55 = 0;
    v55[1] = 0;
    v58 = v55 + v53[6];
    *v58 = v57;
    v58[8] = v59 & 1;
    *(v58 + 2) = v60;
    v58[24] = v61 & 1;
    *(v55 + v53[7]) = 0;
    *(v55 + v53[8]) = 0;
    sub_1D24F4EF4(v55, v52);
    result = sub_1D2583C80(v52, v32);
    v62 = result;
    v63 = 0;
    v128 = v140 + 16;
    v64 = (v125 + 56);
    v65 = (v125 + 48);
    v66 = (v140 + 32);
    v67 = (v140 + 8);
    v68 = v141;
    v69 = v130;
    while (1)
    {
      v149 = v62;
      if (v63 == v32)
      {
        v70 = 1;
        v144 = v32;
      }

      else
      {
        if (v63 >= v32)
        {
          goto LABEL_63;
        }

        v71 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          goto LABEL_64;
        }

        v72 = v140;
        v68 = v141;
        v73 = v137 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v63;
        v138 = v62;
        v74 = *(v141 + 48);
        v75 = v129;
        *v129 = v63;
        (*(v72 + 16))(v75 + v74, v73, v146);
        v76 = v75;
        v69 = v130;
        sub_1D22EC9BC(v76, v130, &qword_1EC6DC9E8, &unk_1D288E650);
        v70 = 0;
        v144 = v71;
        v62 = v138;
      }

      (*v64)(v69, v70, 1, v68);
      sub_1D22EC9BC(v69, v28, &qword_1EC6DC9F0, &unk_1D28A7730);
      if ((*v65)(v28, 1, v68) == 1)
      {
        break;
      }

      v77 = *v28;
      (*v66)(v145, &v28[*(v68 + 48)], v146);
      sub_1D2875158();
      v148 = v78 & 1;
      v147 = v79 & 1;
      sub_1D2874B08();
      v81 = v80;
      sub_1D2875168();
      v148 = v82 & 1;
      v147 = v83 & 1;
      sub_1D2874B08();
      v85 = v84;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_1D278BDBC(v62);
      }

      result = (*v67)(v145, v146);
      v68 = v141;
      if ((v77 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v77 >= v62[2])
      {
        goto LABEL_59;
      }

      *(v62 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v77 + *(v139 + 28)) = v85 - v81;
      v32 = v143;
      v63 = v144;
    }

    result = sub_1D24F2508(0, v32, &v149);
    v86 = result;
    v87 = v136;
    v88 = *(v136 + 16);
    if (v88)
    {
      v89 = v124;
      v90 = v139;
      if (v88 > 3)
      {
        v91 = v88 & 0x7FFFFFFFFFFFFFFCLL;
        v93 = (v136 + 48);
        v92 = 0.0;
        v94 = v88 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v92 = v92 + *(v93 - 2) + *(v93 - 1) + *v93 + v93[1];
          v93 += 4;
          v94 -= 4;
        }

        while (v94);
        if (v88 == v91)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v91 = 0;
        v92 = 0.0;
      }

      v95 = v88 - v91;
      v96 = (v136 + 8 * v91 + 32);
      do
      {
        v97 = *v96++;
        v92 = v92 + v97;
        --v95;
      }

      while (v95);
    }

    else
    {
      v92 = 0.0;
      v89 = v124;
      v90 = v139;
    }

LABEL_40:
    v98 = *(result + 16);
    if (v98)
    {
      v99 = *&v120;
      if (v121)
      {
        v99 = 10.0;
      }

      v100 = v99 - v92;
      v101 = 0x4024000000000000;
      if ((v122 & 1) == 0)
      {
        v101 = v123;
      }

      v146 = v101;
      v141 = v137 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
      v137 = v136 + 32;
      v102 = v149;
      v138 = (v126 + 8);
      v139 = v126 + 16;
      v103 = 32;
      v104 = v143;
      while (1)
      {
        v105 = *(v86 + v103);
        if (v105 >= v143)
        {
          break;
        }

        v144 = v103;
        v145 = v98;
        v148 = 0;
        v147 = 0;
        result = sub_1D2874AF8();
        v106 = 0;
        if (v105 < v88)
        {
          if (v105 >= *(v87 + 16))
          {
            goto LABEL_67;
          }

          v106 = *(v137 + 8 * v105);
        }

        v107 = MEMORY[0x1D389D880](v133);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D278BDBC(v102);
          v102 = result;
        }

        if (v105 >= v102[2])
        {
          goto LABEL_61;
        }

        v108 = v86;
        v109 = (v102 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v105);
        *v109 = -v107;
        v110 = (v109 + *(v90 + 24));
        *v110 = v146;
        *(v110 + 8) = 0;
        v110[2] = v100 / v104;
        *(v110 + 24) = 0;
        v111 = v90;
        v112 = v102;
        v113 = v89;
        v114 = v134;
        v115 = v89;
        v116 = v135;
        (*v139)(v134, v115, v135);
        v131(v114, 0, 1, v116);
        result = sub_1D24F5E78(v114, v109 + *(v111 + 20));
        if (v105 >= v112[2])
        {
          goto LABEL_62;
        }

        v102 = v112;
        *(v109 + *(v111 + 32)) = v106;
        sub_1D2874DD8();
        v118 = v117;
        result = (*v138)(v113, v116);
        --v104;
        v100 = v100 - v118;
        v103 = v144 + 8;
        v98 = v145 - 1;
        v89 = v113;
        v90 = v111;
        v87 = v136;
        v86 = v108;
        if (v145 == 1)
        {

          goto LABEL_57;
        }
      }

LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v102 = v149;
LABEL_57:
    sub_1D24F4FC8(v127);
    return v102;
  }

  v149 = MEMORY[0x1E69E7CC0];
  result = sub_1D23D87B4(0, v36, 0);
  v37 = 0;
  v38 = v149;
  v136 = v19 + 8;
  v39 = v132;
  while (1)
  {
    v40 = v37 + 1;
    v41 = a6;
    if ((a7 & 1) == 0)
    {
      goto LABEL_14;
    }

    v42 = v36;
    v43 = a7;
    v44 = v143;
    if (v37 >= v143)
    {
      break;
    }

    result = sub_1D2874B28();
    if (v40 >= v44)
    {
      goto LABEL_66;
    }

    v45 = v138;
    sub_1D2874B28();
    sub_1D2874628();
    v41 = v46;
    v47 = *v136;
    v48 = v45;
    v49 = v144;
    (*v136)(v48, v144);
    result = v47(v39, v49);
    a7 = v43;
    v36 = v42;
LABEL_14:
    v149 = v38;
    v51 = *(v38 + 16);
    v50 = *(v38 + 24);
    if (v51 >= v50 >> 1)
    {
      result = sub_1D23D87B4((v50 > 1), v51 + 1, 1);
      v39 = v132;
      v38 = v149;
    }

    *(v38 + 16) = v51 + 1;
    *(v38 + 8 * v51 + 32) = v41;
    v37 = v40;
    if (v36 == v40)
    {
      v136 = v38;
      v32 = v143;
      v14 = v135;
      goto LABEL_19;
    }
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

void sub_1D24F3B98(uint64_t a1, int a2, unint64_t a3, int a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, char *a14)
{
  v144 = a12;
  v145 = a11;
  v141 = a2;
  v143 = a1;
  v142 = a14;
  v147 = a13;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBD8, &qword_1D288EA38);
  MEMORY[0x1EEE9AC00](v153);
  v152 = &v137 - v21;
  v166 = sub_1D2874DE8();
  v150 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v138 = &v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBE0, &unk_1D288EA40);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v151 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v160 = (&v137 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v140 = &v137 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v154 = &v137 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v137 = &v137 - v32;
  v162 = type metadata accessor for VStackWithCenteredSubviewLayout.View(0);
  v148 = *(v162 - 1);
  MEMORY[0x1EEE9AC00](v162);
  v159 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v139 = &v137 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v164 = &v137 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v155 = (&v137 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v146 = (&v137 - v41);
  v168 = sub_1D2874B38();
  v42 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v161 = &v137 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v165 = &v137 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v137 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCA08, &unk_1D288E670);
  v50 = v49 - 8;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v137 - v51;
  v53 = sub_1D2874C68();
  v54 = MEMORY[0x1EEE9AC00](v53);
  v57.n128_f64[0] = (*(v56 + 16))(&v137 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v53, v54);
  sub_1D24DB6A0(&qword_1ED89DEA8, MEMORY[0x1E697E3D0], v57);
  sub_1D2878318();
  v58 = *(v50 + 44);
  sub_1D24DB6A0(&qword_1ED89DEA0, MEMORY[0x1E697E3D8], v59);
  sub_1D2878868();
  v60 = *&v52[v58];
  v163 = v42;
  if (v60 == v170)
  {
    v167 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v156 = (v42 + 16);
    if (a4)
    {
      v73 = 0.0;
    }

    else
    {
      v73 = *&a3;
    }

    v74 = (v42 + 32);
    v167 = MEMORY[0x1E69E7CC0];
    v149 = (v42 + 8);
    v158 = a3;
    LODWORD(v157) = a4;
    do
    {
      v79 = sub_1D28788B8();
      (*v156)(v48);
      v79(&v170, 0);
      sub_1D2878878();
      sub_1D24F4EA0();
      sub_1D2874B48();
      v80 = v167;
      if (v170 == 1 && ((v170 & 0x100) == 0 ? (v81 = 210.0) : (v81 = 300.0), v73 < v81))
      {
        sub_1D2875158();
        v76 = v75;
        v78 = v77;
        sub_1D2877A98();
        LOBYTE(v170) = v76 & 1;
        v169 = v78 & 1;
        sub_1D2874B18();
        (*v149)(v48, v168);
      }

      else
      {
        v82 = *v74;
        (*v74)(v165, v48, v168);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v171 = v80;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D23D87D4(0, *(v80 + 16) + 1, 1);
          v80 = v171;
        }

        v85 = *(v80 + 16);
        v84 = *(v80 + 24);
        if (v85 >= v84 >> 1)
        {
          sub_1D23D87D4((v84 > 1), v85 + 1, 1);
          v80 = v171;
        }

        *(v80 + 16) = v85 + 1;
        v86 = (*(v163 + 80) + 32) & ~*(v163 + 80);
        v167 = v80;
        v82((v80 + v86 + *(v163 + 72) * v85), v165, v168);
      }

      sub_1D2878868();
      a3 = v158;
      LOBYTE(a4) = v157;
    }

    while (*&v52[v58] != v170);
  }

  sub_1D22BD238(v52, &qword_1EC6DCA08, &unk_1D288E670);
  LOBYTE(v170) = v141 & 1;
  LOBYTE(v171) = a4 & 1;
  v61 = v147;
  v62 = sub_1D24F2F94(v167, v143, v141 & 1, a3, a4 & 1, v145, v144 & 1, v147, v142);
  v63 = v62;
  v64 = *(v62 + 16);
  v157 = v62;
  v158 = v64;
  if (v64)
  {
    v65 = (*(v148 + 80) + 32) & ~*(v148 + 80);
    v66 = v62 + v65;
    v67 = v146;
    sub_1D24F4EF4(v62 + v65, v146);
    v68 = *v67;
    v69 = v137;
    sub_1D24F4F58(v67 + v162[5], v137);
    v70 = v150;
    v71 = v166;
    v165 = *(v150 + 48);
    if ((v165)(v69, 1, v166) == 1)
    {
      sub_1D22BD238(v69, &qword_1EC6DCBE0, &unk_1D288EA40);
      v72 = 0.0;
    }

    else
    {
      sub_1D2874DC8();
      v71 = v166;
      v72 = v89;
      (*(v70 + 8))(v69, v166);
    }

    v90 = v164;
    v91 = v155;
    v92 = v68 + v72;
    if (v68 > v68 + v72)
    {
      goto LABEL_66;
    }

    v93 = v158 - 1;
    if (v158 != 1)
    {
      v156 = v162[5];
      v94 = *(v148 + 72);
      v52 = (v150 + 8);
      v95 = v157 + v94 + v65;
      while (1)
      {
        sub_1D24F4EF4(v95, v91);
        v96 = *v91;
        if (*v91 < v68)
        {
          v68 = *v91;
        }

        v97 = v154;
        sub_1D24F4F58(v156 + v91, v154);
        if ((v165)(v97, 1, v71) == 1)
        {
          sub_1D24F4FC8(v91);
          sub_1D22BD238(v97, &qword_1EC6DCBE0, &unk_1D288EA40);
          v98 = 0.0;
        }

        else
        {
          sub_1D2874DC8();
          v90 = v164;
          v71 = v166;
          v98 = v99;
          sub_1D24F4FC8(v91);
          (*v52)(v97, v71);
        }

        if (v92 <= v96 + v98)
        {
          v92 = v96 + v98;
        }

        if (v68 > v92)
        {
          break;
        }

        v95 += v94;
        --v93;
        v91 = v155;
        if (!v93)
        {
          goto LABEL_36;
        }
      }

LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_36:
    sub_1D24F4FC8(v146);
    v100 = v158;
    if (v158 > *(v157 + 16))
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v101 = v162[5];
    v102 = v162[8];
    v103 = (v150 + 8);
    v87 = 0.0;
    v104 = *(v148 + 72);
    do
    {
      sub_1D24F4EF4(v66, v90);
      v108 = v160;
      sub_1D24F4F58(v90 + v101, v160);
      if ((v165)(v108, 1, v71) == 1)
      {
        sub_1D22BD238(v108, &qword_1EC6DCBE0, &unk_1D288EA40);
        v105 = 0.0;
      }

      else
      {
        sub_1D2874DD8();
        v71 = v166;
        v105 = v109;
        (*v103)(v108, v166);
      }

      v106 = v87 + v105;
      v90 = v164;
      v107 = *(v164 + v102);
      sub_1D24F4FC8(v164);
      v87 = v106 + v107;
      v66 += v104;
      --v100;
    }

    while (v100);
    v88 = v163;
    v61 = v147;
    v52 = v140;
    v63 = v157;
  }

  else
  {
    v87 = 0.0;
    v71 = v166;
    v88 = v163;
    v52 = v140;
  }

  v110 = v150;
  v111 = v139;
  if ((v61 & 0x8000000000000000) != 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (*(v63 + 16) <= v61)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v112 = v63 + ((*(v148 + 80) + 32) & ~*(v148 + 80));
  v165 = *(v148 + 72);
  sub_1D24F4EF4(v112 + v165 * v61, v139);
  v113 = v162[5];
  sub_1D24F4F58(v111 + v113, v52);
  v114 = *(v110 + 48);
  v164 = v110 + 48;
  v160 = v114;
  if ((v114)(v52, 1, v71) != 1)
  {
    v115 = v138;
    (*(v110 + 32))(v138, v52, v71);
    sub_1D22BD238(v111 + v113, &qword_1EC6DCBE0, &unk_1D288EA40);
    v116 = sub_1D28756A8();
    v117 = MEMORY[0x1D389D870](v116);
    v155 = *(v110 + 8);
    (v155)(v115, v166);
    v118 = a9 * 0.5 + a7 - v117;
    v150 = v110 + 8;
    if (v118 >= a7)
    {
      v172.origin.x = a6;
      v172.origin.y = a7;
      v172.size.width = a8;
      v172.size.height = a9;
      MaxY = CGRectGetMaxY(v172);
      v119 = v167;
      if (MaxY < v87 + v118)
      {
        v173.origin.x = a6;
        v173.origin.y = a7;
        v173.size.width = a8;
        v173.size.height = a9;
        CGRectGetMaxY(v173);
      }
    }

    else
    {
      v119 = v167;
    }

    v121 = *(v119 + 16);
    if (!v121)
    {
LABEL_60:

      return;
    }

    v122 = 0;
    v156 = (v88 + 16);
    v123 = (v88 + 32);
    v124 = (v88 + 8);
    v125 = 0.0;
    v126 = v168;
    while (v122 < *(v119 + 16))
    {
      (*(v88 + 16))(v161, v119 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v122, v168);
      if (v158 == v122)
      {
        (*v124)(v161, v168);
        goto LABEL_60;
      }

      if (v122 >= *(v63 + 16))
      {
        goto LABEL_63;
      }

      v129 = *(v153 + 48);
      v130 = v152;
      (*v123)(v152, v161, v126);
      sub_1D24F4EF4(v112, &v130[v129]);
      v131 = &v130[v129];
      v132 = v151;
      v52 = v159;
      sub_1D24F5024(v131, v159);
      sub_1D2877A98();
      v133 = v162;
      v134 = &v52[v162[6]];
      v135 = v134[8];
      LOBYTE(v134) = v134[24];
      LOBYTE(v170) = v135;
      LOBYTE(v171) = v134;
      sub_1D2874B18();
      (*v124)(v130, v126);
      sub_1D24F4F58(&v52[v133[5]], v132);
      if ((v160)(v132, 1, v166) == 1)
      {
        sub_1D22BD238(v132, &qword_1EC6DCBE0, &unk_1D288EA40);
        v127 = 0.0;
      }

      else
      {
        sub_1D2874DD8();
        v127 = v136;
        (v155)(v132, v166);
      }

      v88 = v163;
      v119 = v167;
      ++v122;
      v128 = *&v159[v162[8]];
      sub_1D24F4FC8(v159);
      v125 = v125 + v127 + v128;
      v112 += v165;
      v63 = v157;
      if (v121 == v122)
      {
        goto LABEL_60;
      }
    }

    __break(1u);
    goto LABEL_62;
  }

LABEL_68:
  sub_1D22BD238(v52, &qword_1EC6DCBE0, &unk_1D288EA40);
  __break(1u);
}

uint64_t sub_1D24F4BC4(uint64_t result, unint64_t *a2, uint64_t *a3, __n128 a4)
{
  v4 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = *a3;
  v6 = *(*a3 + 16);
  if (v4 >= v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *a2;
  v8 = type metadata accessor for VStackWithCenteredSubviewLayout.View(0);
  v9 = *(v8 - 8);
  result = v8 - 8;
  v10 = *(v9 + 80);
  v11 = *(v9 + 72);
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v7 >= v6)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v12 = v5 + ((v10 + 32) & ~v10);
  v13 = *(result + 36);
  v14 = *(v12 + v11 * v4 + v13);
  v15 = *(v12 + v11 * v7 + v13);
  if (v14 < v15)
  {
    return 1;
  }

  if (v15 >= v14)
  {
    return v4 < v7;
  }

  return 0;
}

void (*sub_1D24F4D6C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1D2874228();
  return sub_1D24DA5F4;
}

unint64_t sub_1D24F4DF8()
{
  result = qword_1ED89EC58[0];
  if (!qword_1ED89EC58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED89EC58);
  }

  return result;
}

uint64_t type metadata accessor for VStackWithCenteredSubviewLayout.View(uint64_t a1)
{
  result = qword_1ED89ECB8;
  if (!qword_1ED89ECB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D24F4EA0()
{
  result = qword_1ED89E5C0;
  if (!qword_1ED89E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89E5C0);
  }

  return result;
}

uint64_t sub_1D24F4EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VStackWithCenteredSubviewLayout.View(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24F4F58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBE0, &unk_1D288EA40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24F4FC8(uint64_t a1)
{
  v2 = type metadata accessor for VStackWithCenteredSubviewLayout.View(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D24F5024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VStackWithCenteredSubviewLayout.View(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D24F5088(char **a1, uint64_t *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1D286FD28(v4);
  }

  v5 = *(v4 + 2);
  v6[0] = (v4 + 32);
  v6[1] = v5;
  sub_1D24F50FC(v6, a2);
  *a1 = v4;
}

void sub_1D24F50FC(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = sub_1D28795B8();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v7 = v5;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1D2878468();
        *(v8 + 16) = v4 / 2;
      }

      v10[0] = v8 + 32;
      v10[1] = v4 / 2;
      v9 = v8;
      sub_1D24F5358(v10, v6, v11, a1, v7, a2);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1D24F5200(0, v4, 1, a1, a2);
  }
}

uint64_t sub_1D24F5200(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = (*a4 + 8 * a3 - 8);
    v9 = result - a3;
LABEL_5:
    v10 = *(v7 + 8 * v6);
    v24 = v9;
    v25 = v8;
    while ((v10 & 0x8000000000000000) == 0)
    {
      v11 = *a5;
      v12 = *(*a5 + 16);
      if (v10 >= v12)
      {
        goto LABEL_19;
      }

      v13 = *v8;
      v14 = type metadata accessor for VStackWithCenteredSubviewLayout.View(0);
      v15 = *(v14 - 8);
      result = v14 - 8;
      v16 = *(v15 + 80);
      v17 = *(v15 + 72);
      if (v13 >= v12)
      {
        goto LABEL_20;
      }

      v18 = v11 + ((v16 + 32) & ~v16);
      v19 = *(result + 36);
      v20 = *(v18 + v17 * v10 + v19);
      v21 = *(v18 + v17 * v13 + v19);
      if (v20 < v21 || (v21 >= v20 ? (v22 = v10 >= v13) : (v22 = 1), !v22))
      {
        if (!v7)
        {
          goto LABEL_21;
        }

        *v8 = v10;
        v8[1] = v13;
        --v8;
        v22 = __CFADD__(v9++, 1);
        if (!v22)
        {
          continue;
        }
      }

      ++v6;
      v8 = v25 + 1;
      v9 = v24 - 1;
      if (v6 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

void sub_1D24F5358(uint64_t *a1, __n128 a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v7 = a4[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_109:
    v6 = *a1;
    if (*a1)
    {
      v10 = v110;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_147;
      }

      goto LABEL_111;
    }

    goto LABEL_154;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      ++v8;
      goto LABEL_32;
    }

    v6 = *a4;
    v12 = *(*a4 + 8 * v11);
    v112 = *(*a4 + 8 * v8);
    v113 = v12;
    v13 = sub_1D24F4BC4(&v113, &v112, a6, a2);
    if (v110)
    {
      goto LABEL_123;
    }

    v14 = v13;
    v8 += 2;
    if (v10 + 2 >= v7)
    {
      goto LABEL_22;
    }

    v102 = v10;
    v15 = v10 + 2;
    v16 = *a6;
    v17 = *(v6 + 8 * v11);
    while (1)
    {
      v18 = *(v6 + 8 * v15);
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_127;
      }

      v10 = *(v16 + 16);
      if (v18 >= v10)
      {
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
        v9 = sub_1D269163C(v9);
LABEL_111:
        v114 = v9;
        v98 = *(v9 + 2);
        if (v98 < 2)
        {
          goto LABEL_123;
        }

        while (*a4)
        {
          v99 = *&v9[16 * v98];
          v100 = *&v9[16 * v98 + 24];
          sub_1D24F5A94(*a4 + 8 * v99, (*a4 + 8 * *&v9[16 * v98 + 16]), (*a4 + 8 * v100), v6, a6);
          if (v10)
          {
            goto LABEL_123;
          }

          if (v100 < v99)
          {
            goto LABEL_140;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1D269163C(v9);
          }

          if (v98 - 2 >= *(v9 + 2))
          {
            goto LABEL_141;
          }

          v101 = &v9[16 * v98];
          *v101 = v99;
          *(v101 + 1) = v100;
          v114 = v9;
          sub_1D26915B0(v98 - 1);
          v9 = v114;
          v98 = *(v114 + 2);
          if (v98 <= 1)
          {
            goto LABEL_123;
          }
        }

LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
        return;
      }

      v8 = v15;
      v19 = type metadata accessor for VStackWithCenteredSubviewLayout.View(0);
      v21 = *(v19 - 8);
      v20 = v19 - 8;
      v22 = *(v21 + 80);
      v23 = *(v21 + 72);
      if (v17 >= v10)
      {
        goto LABEL_129;
      }

      v24 = v16 + ((v22 + 32) & ~v22);
      v25 = *(v20 + 36);
      v26 = *(v24 + v23 * v18 + v25);
      v27 = *(v24 + v23 * v17 + v25);
      if (v26 < v27)
      {
        if ((v14 & 1) == 0)
        {
          v10 = v102;
          goto LABEL_32;
        }

        goto LABEL_9;
      }

      if (v27 >= v26)
      {
        if (((v14 ^ (v18 >= v17)) & 1) == 0)
        {
          v11 = v8 - 1;
          goto LABEL_21;
        }

        goto LABEL_9;
      }

      if (v14)
      {
        break;
      }

LABEL_9:
      v15 = v8 + 1;
      v17 = v18;
      if (v7 == v8 + 1)
      {
        v11 = v7 - 1;
        v8 = v7;
LABEL_21:
        v10 = v102;
LABEL_22:
        if ((v14 & 1) == 0)
        {
          goto LABEL_32;
        }

        if (v8 >= v10)
        {
          goto LABEL_24;
        }

LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
        goto LABEL_151;
      }
    }

    v11 = v8 - 1;
    v10 = v102;
    if (v8 < v102)
    {
      goto LABEL_148;
    }

LABEL_24:
    if (v10 <= v11)
    {
      v28 = v8 - 1;
      v29 = v10;
      do
      {
        if (v29 != v28)
        {
          v31 = *a4;
          if (!*a4)
          {
            goto LABEL_152;
          }

          v32 = *(v31 + 8 * v29);
          *(v31 + 8 * v29) = *(v31 + 8 * v28);
          *(v31 + 8 * v28) = v32;
        }
      }

      while (++v29 < v28--);
    }

LABEL_32:
    v33 = a4[1];
    if (v8 >= v33)
    {
      goto LABEL_56;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_144;
    }

    if (v8 - v10 >= a5)
    {
      goto LABEL_56;
    }

    v34 = v10 + a5;
    if (__OFADD__(v10, a5))
    {
      goto LABEL_145;
    }

    if (v34 >= v33)
    {
      v34 = a4[1];
    }

    if (v34 < v10)
    {
      goto LABEL_146;
    }

    if (v8 == v34)
    {
LABEL_56:
      if (v8 < v10)
      {
        goto LABEL_143;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1D2691650(0, *(v9 + 2) + 1, 1, v9);
      }

      v53 = *(v9 + 2);
      v52 = *(v9 + 3);
      v54 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        v9 = sub_1D2691650((v52 > 1), v53 + 1, 1, v9);
      }

      *(v9 + 2) = v54;
      v55 = &v9[16 * v53];
      *(v55 + 4) = v10;
      *(v55 + 5) = v8;
      v56 = *a1;
      if (!*a1)
      {
        goto LABEL_153;
      }

      if (v53)
      {
        while (1)
        {
          v57 = v54 - 1;
          if (v54 >= 4)
          {
            break;
          }

          if (v54 == 3)
          {
            v58 = *(v9 + 4);
            v59 = *(v9 + 5);
            v68 = __OFSUB__(v59, v58);
            v60 = v59 - v58;
            v61 = v68;
LABEL_76:
            if (v61)
            {
              goto LABEL_132;
            }

            v74 = &v9[16 * v54];
            v76 = *v74;
            v75 = *(v74 + 1);
            v77 = __OFSUB__(v75, v76);
            v78 = v75 - v76;
            v79 = v77;
            if (v77)
            {
              goto LABEL_135;
            }

            v80 = &v9[16 * v57 + 32];
            v82 = *v80;
            v81 = *(v80 + 1);
            v68 = __OFSUB__(v81, v82);
            v83 = v81 - v82;
            if (v68)
            {
              goto LABEL_138;
            }

            if (__OFADD__(v78, v83))
            {
              goto LABEL_139;
            }

            if (v78 + v83 >= v60)
            {
              if (v60 < v83)
              {
                v57 = v54 - 2;
              }

              goto LABEL_97;
            }

            goto LABEL_90;
          }

          v84 = &v9[16 * v54];
          v86 = *v84;
          v85 = *(v84 + 1);
          v68 = __OFSUB__(v85, v86);
          v78 = v85 - v86;
          v79 = v68;
LABEL_90:
          if (v79)
          {
            goto LABEL_134;
          }

          v87 = &v9[16 * v57];
          v89 = *(v87 + 4);
          v88 = *(v87 + 5);
          v68 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v68)
          {
            goto LABEL_137;
          }

          if (v90 < v78)
          {
            goto LABEL_3;
          }

LABEL_97:
          v95 = v57 - 1;
          if (v57 - 1 >= v54)
          {
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          if (!*a4)
          {
            goto LABEL_150;
          }

          v96 = *&v9[16 * v95 + 32];
          v6 = *&v9[16 * v57 + 40];
          sub_1D24F5A94(*a4 + 8 * v96, (*a4 + 8 * *&v9[16 * v57 + 32]), (*a4 + 8 * v6), v56, a6);
          v10 = v110;
          if (v110)
          {
            goto LABEL_123;
          }

          if (v6 < v96)
          {
            goto LABEL_125;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1D269163C(v9);
          }

          if (v95 >= *(v9 + 2))
          {
            goto LABEL_126;
          }

          v110 = 0;
          v97 = &v9[16 * v95];
          *(v97 + 4) = v96;
          *(v97 + 5) = v6;
          v114 = v9;
          sub_1D26915B0(v57);
          v9 = v114;
          v54 = *(v114 + 2);
          if (v54 <= 1)
          {
            goto LABEL_3;
          }
        }

        v62 = &v9[16 * v54 + 32];
        v63 = *(v62 - 64);
        v64 = *(v62 - 56);
        v68 = __OFSUB__(v64, v63);
        v65 = v64 - v63;
        if (v68)
        {
          goto LABEL_130;
        }

        v67 = *(v62 - 48);
        v66 = *(v62 - 40);
        v68 = __OFSUB__(v66, v67);
        v60 = v66 - v67;
        v61 = v68;
        if (v68)
        {
          goto LABEL_131;
        }

        v69 = &v9[16 * v54];
        v71 = *v69;
        v70 = *(v69 + 1);
        v68 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v68)
        {
          goto LABEL_133;
        }

        v68 = __OFADD__(v60, v72);
        v73 = v60 + v72;
        if (v68)
        {
          goto LABEL_136;
        }

        if (v73 >= v65)
        {
          v91 = &v9[16 * v57 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v68 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v68)
          {
            goto LABEL_142;
          }

          if (v60 < v94)
          {
            v57 = v54 - 2;
          }

          goto LABEL_97;
        }

        goto LABEL_76;
      }

LABEL_3:
      v7 = a4[1];
      if (v8 >= v7)
      {
        goto LABEL_109;
      }

      continue;
    }

    break;
  }

  v35 = *a4;
  v6 = *a4 + 8 * v8 - 8;
  v103 = v10;
  v36 = v10 - v8;
  v106 = v34;
LABEL_42:
  v107 = v6;
  v108 = v8;
  v37 = *(v35 + 8 * v8);
  v38 = v36;
  while ((v37 & 0x8000000000000000) == 0)
  {
    v39 = *a6;
    v40 = *(*a6 + 16);
    if (v37 >= v40)
    {
      goto LABEL_121;
    }

    v41 = *v6;
    v42 = type metadata accessor for VStackWithCenteredSubviewLayout.View(0);
    v44 = *(v42 - 8);
    v43 = v42 - 8;
    v45 = *(v44 + 80);
    v46 = *(v44 + 72);
    if (v41 >= v40)
    {
      goto LABEL_122;
    }

    v47 = v39 + ((v45 + 32) & ~v45);
    v48 = *(v43 + 36);
    v49 = *(v47 + v46 * v37 + v48);
    v50 = *(v47 + v46 * v41 + v48);
    if (v49 < v50 || (v50 >= v49 ? (v51 = v37 >= v41) : (v51 = 1), !v51))
    {
      if (!v35)
      {
        goto LABEL_149;
      }

      *v6 = v37;
      *(v6 + 8) = v41;
      v6 -= 8;
      v51 = __CFADD__(v38++, 1);
      if (!v51)
      {
        continue;
      }
    }

    v8 = v108 + 1;
    v6 = v107 + 8;
    --v36;
    if (v108 + 1 != v106)
    {
      goto LABEL_42;
    }

    v8 = v106;
    v10 = v103;
    goto LABEL_56;
  }

  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
}

uint64_t sub_1D24F5A94(uint64_t __dst, char *__src, char *a3, char *a4, uint64_t *a5)
{
  v51 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = &__src[-__dst];
  v9 = &__src[-__dst + 7];
  if (&__src[-__dst] >= 0)
  {
    v9 = &__src[-__dst];
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || __dst + 8 * v10 <= a4)
    {
      __dst = memmove(a4, __dst, 8 * v10);
      a4 = v51;
    }

    v14 = &a4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_51;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6;
      if ((*v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_57;
      }

      v17 = *a5;
      v18 = *(*a5 + 16);
      if (v16 >= v18)
      {
        goto LABEL_58;
      }

      v19 = a4;
      v20 = *a4;
      v21 = type metadata accessor for VStackWithCenteredSubviewLayout.View(0);
      v22 = *(v21 - 8);
      __dst = v21 - 8;
      v23 = *(v22 + 80);
      v24 = *(v22 + 72);
      if (v20 >= v18)
      {
        goto LABEL_60;
      }

      v25 = v17 + ((v23 + 32) & ~v23);
      v26 = *(__dst + 36);
      v27 = *(v25 + v24 * v16 + v26);
      v28 = *(v25 + v24 * v20 + v26);
      if (v27 >= v28 && (v28 < v27 || v16 >= v20))
      {
        break;
      }

      v15 = v7 == v6;
      v6 += 8;
      a4 = v19;
      if (!v15)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (a4 >= v14)
      {
        goto LABEL_10;
      }
    }

    a4 = v19 + 8;
    v16 = v20;
    if (v7 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    __dst = memmove(a4, __src, 8 * v13);
    a4 = v51;
  }

  v14 = &a4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
    v50 = v7;
    v30 = v6;
    while (2)
    {
      v31 = v30 - 8;
      v5 -= 8;
      v32 = v14;
      v6 = v30;
      while (1)
      {
        v34 = *(v32 - 1);
        v32 -= 8;
        v33 = v34;
        if ((v34 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
          return __dst;
        }

        v35 = *a5;
        v36 = *(*a5 + 16);
        if (v33 >= v36)
        {
          goto LABEL_59;
        }

        v37 = v14;
        v38 = v31;
        v39 = *v31;
        v40 = type metadata accessor for VStackWithCenteredSubviewLayout.View(0);
        v41 = *(v40 - 8);
        __dst = v40 - 8;
        v42 = *(v41 + 80);
        v43 = *(v41 + 72);
        if (v39 >= v36)
        {
          goto LABEL_61;
        }

        v44 = v35 + ((v42 + 32) & ~v42);
        v45 = *(__dst + 36);
        v46 = *(v44 + v43 * v33 + v45);
        v47 = *(v44 + v43 * v39 + v45);
        if (v46 < v47)
        {
          break;
        }

        if (v47 >= v46 && v33 < v39)
        {
          break;
        }

        a4 = v51;
        v31 = v38;
        if (v5 + 8 != v37)
        {
          *v5 = v33;
        }

        v5 -= 8;
        v14 = v32;
        if (v32 <= v51)
        {
          v14 = v32;
          goto LABEL_51;
        }
      }

      a4 = v51;
      if (v5 + 8 != v6)
      {
        *v5 = v39;
      }

      if (v37 <= v51)
      {
        v6 = v38;
        v14 = v37;
      }

      else
      {
        v6 = v38;
        v30 = v38;
        v49 = v38 > v50;
        v14 = v37;
        if (v49)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_51:
  if (v6 != a4 || v6 >= &a4[(v14 - a4 + (v14 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, a4, 8 * ((v14 - a4) / 8));
  }

  return 1;
}

uint64_t sub_1D24F5E10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a2 >= 1)
  {
    if (v5 < 0 || v5 >= a2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v5 <= 0 && v5 > a2)
  {
    return 0;
  }

LABEL_9:
  v6 = __OFADD__(result, a2);
  result += a2;
  if (v6)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (result < a4 || result > a5)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1D24F5E78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBE0, &unk_1D288EA40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D24F5F10(uint64_t a1)
{
  type metadata accessor for CGPoint(319);
  if (v1 <= 0x3F)
  {
    sub_1D24F5FA8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D24F5FA8(uint64_t a1)
{
  if (!qword_1ED89DE80)
  {
    sub_1D2874DE8();
    v1 = sub_1D2878F18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED89DE80);
    }
  }
}

uint64_t getEnumTagSinglePayload for ComposingFeedbackButtonRemovalLayoutKey.Value(unsigned __int16 *a1, unsigned int a2)
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

_WORD *storeEnumTagSinglePayload for ComposingFeedbackButtonRemovalLayoutKey.Value(_WORD *result, unsigned int a2, unsigned int a3)
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

BOOL static GPMagicPaperState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = v2 & v3;
  if ((v2 & 1) == 0 && (v3 & 1) == 0)
  {
    return CGRectEqualToRect(*a1, *a2);
  }

  return v4;
}

BOOL sub_1D24F61B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = v2 & v3;
  if ((v2 & 1) == 0 && (v3 & 1) == 0)
  {
    return CGRectEqualToRect(*a1, *a2);
  }

  return v4;
}

uint64_t initializeBufferWithCopyOfBuffer for GPMagicPaperState(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  sub_1D2870F78();
  return v2 + 16;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GPMagicPaperState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GPMagicPaperState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 1;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_1D24F6298(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D24F62B4(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 32) = 1;
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

void sub_1D24F62E8(uint64_t a1@<X8>)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 8);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 32);
  if (v10)
  {
    *a1 = *v1;
    *(a1 + 8) = v7;
    *(a1 + 16) = v9;
    *(a1 + 24) = v8;
  }

  else
  {
    v11 = *v1;
    v12 = *(v1 + 8);
    v13 = *(v1 + 16);
    v14 = *(v1 + 24);
    v32.origin.x = *v1;
    v32.origin.y = v12;
    v32.size.width = v13;
    v32.size.height = v14;
    Width = CGRectGetWidth(v32);
    v33.origin.x = v11;
    v33.origin.y = v12;
    v33.size.width = v13;
    v33.size.height = v14;
    Height = CGRectGetHeight(v33);
    if (Height >= Width)
    {
      Height = Width;
    }

    if (Height <= 300.0)
    {
      Height = 300.0;
    }

    if (Height <= 512.0)
    {
      v17 = Height;
    }

    else
    {
      v17 = 512.0;
    }

    v34.origin.x = v11;
    v34.origin.y = v12;
    v34.size.width = v13;
    v34.size.height = v14;
    v18 = CGRectGetMidX(v34) - v17 * 0.5;
    v35.origin.x = v11;
    v35.origin.y = v12;
    v35.size.width = v13;
    v35.size.height = v14;
    v19 = CGRectGetMidY(v35) - v17 * 0.5;
    sub_1D28724E8();
    v20 = sub_1D2873CA8();
    v21 = sub_1D2878A08();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v22 = 136315394;
      v23 = sub_1D2878CA8();
      v25 = sub_1D23D7C84(v23, v24, &v31);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v26 = sub_1D2878CA8();
      v28 = sub_1D23D7C84(v26, v27, &v31);

      *(v22 + 14) = v28;
      _os_log_impl(&dword_1D226E000, v20, v21, "proposedFrame: %s - adjustedSquareFrame: %s", v22, 0x16u);
      v29 = v30;
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v29, -1, -1);
      MEMORY[0x1D38A3520](v22, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    *a1 = v18;
    *(a1 + 8) = v19;
    *(a1 + 16) = v17;
    *(a1 + 24) = v17;
  }

  *(a1 + 32) = v10;
}

uint64_t sub_1D24F65CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = swift_getKeyPath();
  *(a9 + 56) = 0;
  v19[0] = a7;
  v19[1] = a8;
  v20 = a10;
  v21 = a11;
  v14 = type metadata accessor for PagingContentView(0, v19);
  v15 = v14[19];
  *(a9 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50, &qword_1D288EB20);
  swift_storeEnumTagMultiPayload();
  v16 = v14[20];
  *(a9 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC780, &unk_1D288DBD0);
  swift_storeEnumTagMultiPayload();
  v17 = v14[21];
  *(a9 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC778, &unk_1D288EB90);
  return swift_storeEnumTagMultiPayload();
}

double sub_1D24F66FC(void *a1)
{
  v55 = sub_1D2875628();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D2874EA8();
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v59 = (v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = a1;
  v5 = *--a1;
  v58 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v57 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  v9 = sub_1D28784C8();
  v10 = a1[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = a1[3];
  sub_1D2874F68();
  v12 = sub_1D2874F68();
  WitnessTable = swift_getWitnessTable();
  v65 = v10;
  v66 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v75[0] = v9;
  v75[1] = AssociatedTypeWitness;
  v75[2] = v12;
  v75[3] = WitnessTable;
  v75[4] = AssociatedConformanceWitness;
  sub_1D2877598();
  v63 = a1[5];
  v73 = v63;
  v74 = MEMORY[0x1E697E040];
  v71 = swift_getWitnessTable();
  v72 = MEMORY[0x1E697E070];
  v15 = swift_getWitnessTable();
  v70 = v15;
  swift_getWitnessTable();
  v16 = sub_1D2874318();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v48 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCC10, &qword_1D288EC38);
  v20 = sub_1D2874F68();
  *&result = MEMORY[0x1EEE9AC00](v20).n128_u64[0];
  v23 = v48 - v22;
  v24 = v67;
  v25 = *(v67 + 24);
  if (v25)
  {
    v51 = v15;
    v52 = v17;
    v56 = v25;
    v26 = *(v67 + 32);
    v75[0] = *v67;
    sub_1D2870F78();
    swift_getWitnessTable();
    if (sub_1D2878898())
    {
      sub_1D22A576C(v56, v26);
      return result;
    }

    v50 = v26;
    v27 = swift_getWitnessTable();
    v48[0] = v27;
    v28 = sub_1D24F91D8();
    v68 = v27;
    v69 = v28;
    swift_getWitnessTable();
    v48[1] = sub_1D2874A58();
    v29 = v58;
    v30 = v57;
    v31 = v62;
    (*(v58 + 16))(v57, v24, v62);
    v32 = (*(v29 + 80) + 56) & ~*(v29 + 80);
    v33 = swift_allocObject();
    v34 = v66;
    *(v33 + 2) = v64;
    *(v33 + 3) = v34;
    v35 = v31[5];
    *(v33 + 4) = v63;
    *(v33 + 5) = v35;
    v49 = v35;
    *(v33 + 6) = v65;
    (*(v29 + 32))(&v33[v32], v30, v31);
    sub_1D24F7240();

    swift_getKeyPath();
    v36 = v59;
    sub_1D24CC6D4(v59);
    sub_1D28767F8();

    (*(v60 + 8))(v36, v61);
    (*(v52 + 8))(v19, v16);
    MEMORY[0x1D389D4B0](v23);
    v37 = *(v24 + 48);
    if (*(v24 + 56) != 1)
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v38 = sub_1D28762E8();
      sub_1D2873BE8();

      v39 = v53;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v37, 0);
      (*(v54 + 8))(v39, v55);
    }

    v40 = sub_1D2874A18();
    v75[0] = 0;
    MEMORY[0x1EEE9AC00](v40);
    v41 = v66;
    v48[-8] = v64;
    v48[-7] = v41;
    v42 = v49;
    v48[-6] = v63;
    v48[-5] = v42;
    v48[-4] = v65;
    v48[-3] = v24;
    v48[-2] = v75;
    sub_1D2874A28();
    if (v75[0])
    {
      v43 = v75[0];
      Image = CGBitmapContextCreateImage(v43);
      v45 = v50;
      if (Image)
      {
        v46 = Image;
        v47 = v56;
        v56();

        sub_1D22A576C(v47, v45);

        return result;
      }

      sub_1D22A576C(v56, v50);
    }

    else
    {
      sub_1D22A576C(v56, v50);
    }
  }

  return result;
}

uint64_t sub_1D24F6F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a6;
  v31 = a7;
  v34 = a5;
  v35 = a8;
  v29 = a1;
  v32 = sub_1D2871DD8();
  v11 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D2874F68();
  v33 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - v20;
  (*(a2 + 8))(v29, v19);
  if (qword_1ED8A4BA8 != -1)
  {
    swift_once();
  }

  v38[0] = a3;
  v38[1] = a4;
  v22 = v34;
  v38[2] = v34;
  v38[3] = v30;
  v38[4] = v31;
  type metadata accessor for PagingContentView(0, v38);
  sub_1D24CC6FC(v13);
  sub_1D2871DA8();
  (*(v11 + 8))(v13, v32);
  sub_1D2877848();
  sub_1D2876E28();
  (*(v14 + 8))(v17, a3);
  sub_1D2877AE8();
  v24 = v23;
  v26 = v25;
  v36 = v22;
  v37 = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1D389F2D0](v18, WitnessTable, 1.0, -1.0, v24, v26);
  return (*(v33 + 8))(v21, v18);
}

uint64_t sub_1D24F7240()
{
  v6 = sub_1D2875C68();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1D28756A8();
  sub_1D28784C8();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1D2877598();
  swift_getWitnessTable();
  sub_1D24F7C78();
  return sub_1D2874308();
}

void sub_1D24F740C(void (*a1)(CGContext *), uint64_t a2, uint64_t a3, void **a4, double a5, double a6)
{
  v34 = a4;
  v11 = sub_1D2878988();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1D2875628();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 48);
  v17 = *(a3 + 56);
  if (v17 == 1)
  {
    v18 = *(a3 + 48);
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v19 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v16, 0);
    (*(v13 + 8))(v15, v12);
    v18 = v35;
  }

  v20 = v18 * a5;
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v17)
  {
    v21 = *&v16;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v22 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v16, 0);
    (*(v13 + 8))(v15, v12);
    v21 = v35;
  }

  type metadata accessor for CGContext(0);
  v23 = v21 * a6;
  if (COERCE__INT64(fabs(v21 * a6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v33[1] = a2;
  v24 = a1;
  sub_1D2878978();
  v25 = sub_1D2871A48();
  if (v25)
  {
    v26 = v25;
    if (v17)
    {
      v27 = *&v16;
      v28 = *&v16;
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v29 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v16, 0);
      v30 = *(v13 + 8);
      v30(v15, v12);
      v28 = v35;
      sub_1D2870F78();
      sub_1D2878A28();
      v31 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v16, 0);
      v30(v15, v12);
      v27 = v35;
    }

    CGContextScaleCTM(v26, v28, v27);
    v24(v26);
    v32 = *v34;
    *v34 = v26;
  }
}

uint64_t sub_1D24F78A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v30 = a4;
  v31 = a8;
  v33 = a7;
  v34 = a3;
  v32 = a2;
  v26 = a1;
  v35 = a9;
  v29 = sub_1D28784C8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v36 = v29;
  v37 = AssociatedTypeWitness;
  v38 = a6;
  v39 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = sub_1D2877598();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  v36 = *v26;
  v20 = swift_allocObject();
  v20[2] = v30;
  v20[3] = a5;
  v21 = v33;
  v20[4] = a6;
  v20[5] = v21;
  v22 = v32;
  v20[6] = v31;
  v20[7] = a10;
  v20[8] = a11;
  v20[9] = v22;
  v20[10] = v34;
  sub_1D2870F68();
  sub_1D2870F78();
  sub_1D2877588();
  swift_getWitnessTable();
  sub_1D245980C();
  v23 = *(v14 + 8);
  v23(v16, v13);
  sub_1D245980C();
  return (v23)(v19, v13);
}

uint64_t sub_1D24F7B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  v14(v11);
  sub_1D245980C();
  v15 = *(v7 + 8);
  v15(v9, a6);
  sub_1D245980C();
  return (v15)(v13, a6);
}

uint64_t sub_1D24F7C78()
{
  sub_1D2875C68();
  sub_1D24F95CC(&qword_1ED89D4C0, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  return sub_1D2879968();
}

uint64_t sub_1D24F7CF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = sub_1D2874388();
  v75 = v3;
  v86 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v85 = (&v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = *(a1 - 1);
  v95 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = sub_1D28784C8();
  v94 = a1[6];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v90 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCC08, &qword_1D288EC30);
  sub_1D2875B08();
  v10 = sub_1D2877178();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v103 = v8;
  v104 = AssociatedTypeWitness;
  v105 = v10;
  v106 = WitnessTable;
  v78 = v10;
  v107 = AssociatedConformanceWitness;
  sub_1D2877598();
  *&v89 = a1[4];
  v13 = v89;
  v14 = a1;
  v103 = MEMORY[0x1E69815C0];
  v104 = MEMORY[0x1E6981580];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v101 = v13;
  v102 = OpaqueTypeConformance2;
  v100 = swift_getWitnessTable();
  v77 = swift_getWitnessTable();
  v99 = v77;
  swift_getWitnessTable();
  v16 = sub_1D2874318();
  v82 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v92 = &v65 - v17;
  v19 = v18;
  v20 = swift_getWitnessTable();
  v66 = a1;
  v98 = a1[5];
  v21 = v98;
  v22 = swift_getWitnessTable();
  v103 = v19;
  v104 = v8;
  v23 = v19;
  v67 = v19;
  v24 = v8;
  v70 = v8;
  v105 = v20;
  v106 = v22;
  v69 = v20;
  v25 = v22;
  v68 = v22;
  v26 = MEMORY[0x1E6981440];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = OpaqueTypeMetadata2;
  v83 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v93 = &v65 - v28;
  v103 = v23;
  v104 = v24;
  v105 = v20;
  v106 = v25;
  v79 = v26;
  v29 = swift_getOpaqueTypeConformance2();
  v73 = v29;
  v72 = sub_1D24F95CC(&qword_1ED89E0A8, MEMORY[0x1E697BE48], MEMORY[0x1E697BE50]);
  v103 = OpaqueTypeMetadata2;
  v104 = v3;
  v105 = v29;
  v106 = v72;
  v80 = swift_getOpaqueTypeMetadata2();
  v81 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v71 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v76 = &v65 - v33;
  v34 = v97;
  v35 = *(v97 + 16);
  v88 = v97 + 16;
  v91 = v35;
  v36 = v84;
  v37 = v96;
  (v35)(v84, v96, v14, v32);
  v38 = (*(v34 + 80) + 56) & ~*(v34 + 80);
  v39 = swift_allocObject();
  *&v40 = v90;
  *(&v40 + 1) = v7;
  *&v41 = v89;
  *(&v41 + 1) = v21;
  v89 = v41;
  v90 = v40;
  *(v39 + 16) = v40;
  *(v39 + 32) = v41;
  v42 = v94;
  *(v39 + 48) = v94;
  v43 = *(v34 + 32);
  v44 = v36;
  v45 = v36;
  v46 = v66;
  v43(v39 + v38, v44, v66);
  v97 = v34 + 32;
  sub_1D24F7240();

  v103 = *v37;
  v91(v45, v37, v46);
  v47 = swift_allocObject();
  v48 = v89;
  *(v47 + 16) = v90;
  *(v47 + 32) = v48;
  *(v47 + 48) = v42;
  v43(v47 + v38, v45, v46);
  sub_1D2870F68();
  v49 = v92;
  v50 = v67;
  sub_1D2876F48();

  (*(v82 + 8))(v49, v50);
  v51 = v96;
  v52 = v85;
  sub_1D24CC724(v85);
  v91(v45, v51, v46);
  v53 = swift_allocObject();
  v54 = v89;
  *(v53 + 16) = v90;
  *(v53 + 32) = v54;
  *(v53 + 48) = v94;
  v43(v53 + v38, v45, v46);
  v55 = v71;
  v56 = v74;
  v57 = v75;
  v58 = v73;
  v59 = v72;
  v60 = v93;
  sub_1D2876F48();

  (*(v86 + 8))(v52, v57);
  (*(v83 + 8))(v60, v56);
  v103 = v56;
  v104 = v57;
  v105 = v58;
  v106 = v59;
  swift_getOpaqueTypeConformance2();
  v61 = v76;
  v62 = v80;
  sub_1D245980C();
  v63 = *(v81 + 8);
  v63(v55, v62);
  sub_1D245980C();
  return (v63)(v61, v62);
}

uint64_t sub_1D24F865C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCC08, &qword_1D288EC30);
  sub_1D2875B08();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return sub_1D2877168();
}

uint64_t sub_1D24F874C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v34 = a4;
  v35 = a5;
  v32 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC08, &qword_1D288EC30);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v18 = sub_1D2875B08();
  v33 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v32 - v20;
  if (*(a1 + 24))
  {
    v38 = sub_1D2877098();
    sub_1D28762F8();
    sub_1D2877848();
    v32 = v18;
    v22 = MEMORY[0x1E69815C0];
    v23 = MEMORY[0x1E6981580];
    sub_1D2876C78();

    v38 = v22;
    v39 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v25 = v34;
    sub_1D24CB7CC(v10, a3, v7, v34, OpaqueTypeConformance2);
    v18 = v32;
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    (*(a1 + 8))(v32, v19);
    v25 = v34;
    sub_1D245980C();
    v26 = *(v11 + 8);
    v26(v14, a3);
    sub_1D245980C();
    v38 = MEMORY[0x1E69815C0];
    v27 = MEMORY[0x1E6981580];
    v39 = MEMORY[0x1E6981580];
    v28 = swift_getOpaqueTypeConformance2();
    sub_1D24CB6D4(v14, a3, v7, v25, v28);
    v26(v14, a3);
    v29 = v17;
    v23 = v27;
    v26(v29, a3);
    v22 = MEMORY[0x1E69815C0];
  }

  v38 = v22;
  v39 = v23;
  v30 = swift_getOpaqueTypeConformance2();
  v36 = v25;
  v37 = v30;
  swift_getWitnessTable();
  sub_1D245980C();
  return (*(v33 + 8))(v21, v18);
}

double sub_1D24F8B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a7;
  v25 = a8;
  v22 = a5;
  v23 = a6;
  v10 = sub_1D2874388();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 40) == 1)
  {
    v15 = *(v11 + 104);
    v15(v14, *MEMORY[0x1E697BE40], v10, v12);
    v16 = sub_1D2874378();
    v17 = *(v11 + 8);
    v17(v14, v10);
    if (v16)
    {
      (v15)(v14, *MEMORY[0x1E697BE38], v10);
      v18 = sub_1D2874378();
      v17(v14, v10);
      if (v18)
      {
        v26[0] = a4;
        v26[1] = v22;
        v26[2] = v23;
        v26[3] = v24;
        v26[4] = v25;
        v19 = type metadata accessor for PagingContentView(0, v26);
        v12.n128_f64[0] = sub_1D24F66FC(v19);
      }
    }
  }

  return v12.n128_f64[0];
}

uint64_t sub_1D24F8D08(uint64_t a1)
{
  v2 = sub_1D2874388();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1D28752B8();
}

void sub_1D24F8DD8(uint64_t a1)
{
  sub_1D28784C8();
  if (v1 <= 0x3F)
  {
    sub_1D22BFAB4();
    if (v2 <= 0x3F)
    {
      sub_1D24BA3D8(319);
      if (v3 <= 0x3F)
      {
        sub_1D24F8F5C();
        if (v4 <= 0x3F)
        {
          sub_1D24F8FAC(319, &qword_1ED89DFD0, MEMORY[0x1E697E7E0]);
          if (v5 <= 0x3F)
          {
            sub_1D24F8FAC(319, &qword_1ED89DFF0, MEMORY[0x1E697BE48]);
            if (v6 <= 0x3F)
            {
              sub_1D24F8FAC(319, &qword_1EC6DCC00, MEMORY[0x1E696E290]);
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

void sub_1D24F8F5C()
{
  if (!qword_1ED89E060)
  {
    v0 = sub_1D28744A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89E060);
    }
  }
}

void sub_1D24F8FAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D28744A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_1D24F9068()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v8 = v0[2];
  v1 = v8;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  type metadata accessor for PagingContentView(0, &v8);
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v6 = type metadata accessor for PagingContentView(0, &v8);
  return sub_1D24F66FC(v6);
}

double sub_1D24F9110(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v13[0] = v2[2];
  v5 = v13[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v10 = *(type metadata accessor for PagingContentView(0, v13) - 8);
  v11 = v2 + ((*(v10 + 80) + 56) & ~*(v10 + 80));

  return sub_1D24F8B50(a1, a2, v11, v5, v6, v7, v8, v9);
}

unint64_t sub_1D24F91D8()
{
  result = qword_1ED89D308;
  if (!qword_1ED89D308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCC10, &qword_1D288EC38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D308);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v12[0] = *(v0 + 16);
  v12[1] = v2;
  v13 = v1;
  v3 = type metadata accessor for PagingContentView(0, v12);
  v4 = v0 + ((*(*(v3 - 1) + 80) + 56) & ~*(*(v3 - 1) + 80));

  if (*(v4 + 24))
  {
  }

  sub_1D2273818(*(v4 + 48), *(v4 + 56));
  v5 = v3[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50, &qword_1D288EB20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1D2874EA8();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v3[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC780, &unk_1D288DBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D2874388();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
  }

  v9 = v3[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC778, &unk_1D288EB90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D2871DD8();
    (*(*(v10 - 8) + 8))(v4 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D24F9490(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v13[0] = v2[2];
  v4 = v13[0];
  v13[1] = v5;
  v13[2] = v6;
  v13[3] = v7;
  v13[4] = v8;
  v9 = *(type metadata accessor for PagingContentView(0, v13) - 8);
  v10 = v2 + ((*(v9 + 80) + 56) & ~*(v9 + 80));

  return a2(a1, v10, v4, v5, v6, v7, v8);
}

uint64_t sub_1D24F95CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D24F966C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1D24F96BC(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
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

uint64_t sub_1D24F9738(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  if (a1[2] < 0)
  {
    if (v8 < 0)
    {
      return MEMORY[0x1EEDE0A20](v4, v5, a1[2] & 1, a1[3], v6, v7, a2[2] & 1, a2[3]);
    }

    return 0;
  }

  if (v8 < 0)
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  else
  {
    return sub_1D2879618();
  }
}

uint64_t type metadata accessor for ContextualMenuItems(uint64_t a1)
{
  result = qword_1EC6DCC18;
  if (!qword_1EC6DCC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D24F9810(uint64_t a1)
{
  type metadata accessor for MagicViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ImageGeneration.PreviewImage(319);
    if (v2 <= 0x3F)
    {
      sub_1D22BFAB4();
      if (v3 <= 0x3F)
      {
        sub_1D24F98C4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D24F98C4(uint64_t a1)
{
  if (!qword_1ED89E028)
  {
    type metadata accessor for ObservableDebugSettings(255);
    v1 = sub_1D28744A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED89E028);
    }
  }
}

uint64_t sub_1D24F9938@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v118 = a1;
  v102 = sub_1D2871CA8();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC28, &unk_1D28A1A00);
  v115 = *(v4 - 8);
  v116 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v103 = &v97 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1040, &qword_1D288ED70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v117 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v120 = &v97 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC30, &qword_1D288ED78);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v99 = &v97 - v11;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC38, &unk_1D288ED80);
  v121 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v98 = &v97 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490, &qword_1D287D3F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v104 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v108 = &v97 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC40, &qword_1D288ED90);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v114 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v126 = &v97 - v20;
  v111 = type metadata accessor for ContextualMenuItems(0);
  v21 = *(v111 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v23 = (&v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99D8, &unk_1D28A71D0);
  MEMORY[0x1EEE9AC00](v24);
  v112 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v113 = &v97 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v124 = &v97 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v97 - v31;
  sub_1D24FB478(v2, v23);
  v33 = *(v21 + 80);
  v34 = (v33 + 16) & ~v33;
  v119 = v22;
  v35 = swift_allocObject();
  sub_1D24FB4DC(v23, v35 + v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8, &unk_1D288C480);
  v122 = sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8, &unk_1D288C480, MEMORY[0x1E697D658]);
  sub_1D2877368();
  v123 = v2;
  v37 = *v2;
  swift_getKeyPath();
  v129 = v37;
  sub_1D24FBAE0(&qword_1EC6DCC48, type metadata accessor for MagicViewModel, &protocol conformance descriptor for MagicViewModel);
  sub_1D28719E8();

  v38 = *(v37 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentlyUpscalingInBackground);
  KeyPath = swift_getKeyPath();
  v40 = swift_allocObject();
  *(v40 + 16) = v38;
  v110 = v24;
  v41 = *(v24 + 36);
  v125 = v32;
  v42 = &v32[v41];
  *v42 = KeyPath;
  v42[1] = sub_1D22C03D8;
  v42[2] = v40;
  v43 = v108;
  sub_1D280DAE0(v108);
  v44 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v45 = *(*(v44 - 8) + 48);
  LODWORD(KeyPath) = v45(v43, 1, v44);
  v46 = v43;
  v47 = v109;
  sub_1D22BD238(v46, &qword_1EC6D9490, &qword_1D287D3F0);
  v48 = 1;
  v49 = KeyPath == 1;
  v50 = v121;
  v107 = v36;
  v106 = v34;
  v105 = v33;
  if (!v49)
  {
    v51 = v123;
    sub_1D2870F78();
    v52 = v104;
    sub_1D280DAE0(v104);
    if (v45(v52, 1, v44) == 1)
    {

      sub_1D22BD238(v52, &qword_1EC6D9490, &qword_1D287D3F0);
      v48 = 1;
      v34 = v106;
      v50 = v121;
    }

    else
    {
      sub_1D22BD238(v52, &qword_1EC6D9490, &qword_1D287D3F0);
      v129 = &unk_1D288EE60;
      v130 = v37;
      swift_retain_n();
      sub_1D2875798();
      if (qword_1ED89E0E8 != -1)
      {
        swift_once();
      }

      v53 = qword_1ED8B0058;
      sub_1D2876668();
      v127 = &unk_1D288EE68;
      v128 = v37;
      sub_1D24FB8DC();
      sub_1D2870F78();
      sub_1D2874788();
      sub_1D24FB478(v51, v23);
      v34 = v106;
      v54 = swift_allocObject();
      sub_1D24FB4DC(v23, v54 + v34);
      v55 = v98;
      sub_1D2877A08();

      v50 = v121;
      v121[4](v126, v55, v47);
      v48 = 0;
    }
  }

  (*(v50 + 56))(v126, v48, 1, v47);
  v56 = v123;
  sub_1D24FB478(v123, v23);
  v57 = swift_allocObject();
  sub_1D24FB4DC(v23, v57 + v34);
  v58 = v124;
  sub_1D2877368();
  v59 = sub_1D24FB23C(v56 + *(v111 + 20));
  v60 = swift_getKeyPath();
  v61 = swift_allocObject();
  *(v61 + 16) = (v59 & 1) == 0;
  v62 = (v58 + *(v110 + 36));
  *v62 = v60;
  v62[1] = sub_1D22C04E0;
  v62[2] = v61;
  v63 = *(sub_1D28054FC() + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  v129 = v63;
  sub_1D24FBAE0(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore, &unk_1D28951F8);
  sub_1D28719E8();

  swift_beginAccess();
  v64 = v63[2];
  sub_1D2870F68();

  v65 = *(v64 + 16);

  v66 = v120;
  v67 = v126;
  if (!v65)
  {
    v68 = sub_1D2805AB0();
    if (v70 != 0xFF)
    {
      sub_1D22FD918(v68, v69, v70);
      if ((sub_1D2811164() & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    v71 = 1;
    v72 = v116;
    goto LABEL_16;
  }

  if (sub_1D2811164())
  {
    goto LABEL_12;
  }

LABEL_13:
  v121 = v23;
  v110 = sub_1D2875798();
  v111 = v73;
  LODWORD(v109) = v74;
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v75 = sub_1D23C7998()[4];
  v76 = v101;
  v77 = v100;
  v78 = v102;
  (*(v101 + 104))(v100, *MEMORY[0x1E699C1D8], v102);
  v79 = v75;
  sub_1D2877C18();

  (*(v76 + 8))(v77, v78);
  v80 = v121;
  sub_1D24FB478(v123, v121);
  v81 = v106;
  v82 = swift_allocObject();
  v83 = sub_1D24FB4DC(v80, v82 + v81);
  MEMORY[0x1EEE9AC00](v83);
  sub_1D2870F78();
  v84 = v103;
  sub_1D2877368();

  v85 = (v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1050, &unk_1D288EE18) + 36));
  v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FF0, &qword_1D288C4C0) + 28);
  sub_1D2875968();
  v87 = sub_1D2875998();
  (*(*(v87 - 8) + 56))(v85 + v86, 0, 1, v87);
  *v85 = swift_getKeyPath();
  v88 = sub_1D2875D98();
  v72 = v116;
  *(v84 + *(v116 + 36)) = v88;
  v66 = v120;
  sub_1D24FB734(v84, v120);
  v71 = 0;
  v67 = v126;
LABEL_16:
  (*(v115 + 56))(v66, v71, 1, v72);
  v89 = v113;
  sub_1D22BD1D0(v125, v113, &qword_1EC6D99D8, &unk_1D28A71D0);
  v90 = v114;
  sub_1D22BD1D0(v67, v114, &qword_1EC6DCC40, &qword_1D288ED90);
  v91 = v124;
  v92 = v112;
  sub_1D22BD1D0(v124, v112, &qword_1EC6D99D8, &unk_1D28A71D0);
  v93 = v117;
  sub_1D22BD1D0(v66, v117, &qword_1EC6E1040, &qword_1D288ED70);
  v94 = v118;
  sub_1D22BD1D0(v89, v118, &qword_1EC6D99D8, &unk_1D28A71D0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC50, &qword_1D288EE58);
  sub_1D22BD1D0(v90, v94 + v95[12], &qword_1EC6DCC40, &qword_1D288ED90);
  sub_1D22BD1D0(v92, v94 + v95[16], &qword_1EC6D99D8, &unk_1D28A71D0);
  sub_1D22BD1D0(v93, v94 + v95[20], &qword_1EC6E1040, &qword_1D288ED70);
  sub_1D22BD238(v66, &qword_1EC6E1040, &qword_1D288ED70);
  sub_1D22BD238(v91, &qword_1EC6D99D8, &unk_1D28A71D0);
  sub_1D22BD238(v126, &qword_1EC6DCC40, &qword_1D288ED90);
  sub_1D22BD238(v125, &qword_1EC6D99D8, &unk_1D28A71D0);
  sub_1D22BD238(v93, &qword_1EC6E1040, &qword_1D288ED70);
  sub_1D22BD238(v92, &qword_1EC6D99D8, &unk_1D28A71D0);
  sub_1D22BD238(v90, &qword_1EC6DCC40, &qword_1D288ED90);
  return sub_1D22BD238(v89, &qword_1EC6D99D8, &unk_1D28A71D0);
}

uint64_t sub_1D24FA9E4(uint64_t a1)
{
  v2 = sub_1D23C7CA8();
  v3 = sub_1D2878068();
  v4 = sub_1D2878068();
  v5 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v2 + 48))
  {
    sub_1D2870F68();
    v6 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E8054(v6, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  v8 = sub_1D2878068();
  v9 = sub_1D2418030(v5);

  if (v9)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22ED23C();
    sub_1D24FBAE0(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey, &unk_1D287E68C);
    v10 = sub_1D2877E78();
  }

  else
  {
    v10 = 0;
  }

  [objc_opt_self() asyncSendSignal:v4 toChannel:v3 withNullableUniqueStringID:v8 withPayload:v10];

  v11 = type metadata accessor for ContextualMenuItems(0);
  return (*(a1 + *(v11 + 24)))();
}

double sub_1D24FABE0()
{
  v0 = sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1D2877248();

  return result;
}

void sub_1D24FAD50(char a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_isShareLinkVisible) = a1;
  if (a1)
  {
    v2 = sub_1D23C7CA8();
    v3 = sub_1D2878068();
    v10 = sub_1D2878068();
    v4 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
    if (*(v2 + 48))
    {
      sub_1D2870F68();
      v5 = sub_1D2878068();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D24E8054(v5, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    }

    v7 = sub_1D2878068();
    v8 = sub_1D2418030(v4);

    if (v8)
    {
      type metadata accessor for IAPayloadKey(0);
      sub_1D22ED23C();
      sub_1D24FBAE0(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey, &unk_1D287E68C);
      v9 = sub_1D2877E78();
    }

    else
    {
      v9 = 0;
    }

    [objc_opt_self() asyncSendSignal:v10 toChannel:v3 withNullableUniqueStringID:v7 withPayload:v9];
  }
}

double sub_1D24FAF4C()
{
  v0 = sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1D2877248();

  return result;
}

double sub_1D24FB0C0()
{
  v0 = sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1D2877248();

  return result;
}

uint64_t sub_1D24FB23C(uint64_t a1)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1D24FBAE0(&qword_1EC6DCC48, type metadata accessor for MagicViewModel, &protocol conformance descriptor for MagicViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__previewsSavedInBackground;
  swift_beginAccess();
  if (*(*(v3 + v4) + 16) && (sub_1D2870F68(), sub_1D25D064C(a1), v6 = v5, , (v6 & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    swift_getKeyPath();
    sub_1D28719E8();

    v7 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentlyUpscalingInBackground) ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_1D24FB37C()
{
  v0 = sub_1D2871CA8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E699C1D8], v0, v2);
  sub_1D27FF854(v4);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1D24FB478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextualMenuItems(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24FB4DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextualMenuItems(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1D24FB558@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D24FBAE0(&qword_1EC6DCC48, type metadata accessor for MagicViewModel, &protocol conformance descriptor for MagicViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__previewsSavedInBackground;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  sub_1D2870F68();
  return result;
}

uint64_t sub_1D24FB6C0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ContextualMenuItems(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1D24FB734(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC28, &unk_1D28A1A00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D24FB7A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D22BDFF8;

  return sub_1D280DE70(a1);
}

uint64_t sub_1D24FB840(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D22BC8FC;

  return sub_1D280EBF8(a1, v1);
}

unint64_t sub_1D24FB8DC()
{
  result = qword_1EC6D8B00;
  if (!qword_1EC6D8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D8B00);
  }

  return result;
}

uint64_t objectdestroyTm_12()
{
  v1 = (type metadata accessor for ContextualMenuItems(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[7];
  v4 = sub_1D2871818();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = type metadata accessor for ImageGeneration.PreviewImage(0);
  __swift_destroy_boxed_opaque_existential_0((v3 + *(v5 + 24)));

  return swift_deallocObject();
}

void sub_1D24FBA70(char a1)
{
  v3 = *(type metadata accessor for ContextualMenuItems(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_1D24FAD50(a1, v4);
}

uint64_t sub_1D24FBAE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D24FBB28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v31 = MEMORY[0x1E69E7CC0];
    sub_1D23D81D8(0, v1, 0);
    v3 = v2 + 64;
    v4 = sub_1D2879098();
    v5 = 0;
    v6 = *(v2 + 36);
    v23 = v2 + 72;
    v24 = v1;
    v25 = v6;
    v26 = v2 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v27 = v5;
      v30 = *(*(v2 + 48) + v4);
      v9 = (*(v2 + 56) + 32 * v4);
      v10 = v9[1];
      v28 = v9[2];
      v29 = *v9;
      v11 = v2;
      v12 = v9[3];
      v13 = *(v31 + 16);
      v14 = *(v31 + 24);
      sub_1D2870F68();
      sub_1D2870F68();
      if (v13 >= v14 >> 1)
      {
        sub_1D23D81D8((v14 > 1), v13 + 1, 1);
      }

      *(v31 + 16) = v13 + 1;
      v15 = v31 + 40 * v13;
      *(v15 + 32) = v30;
      *(v15 + 40) = v29;
      *(v15 + 48) = v10;
      *(v15 + 56) = v28;
      *(v15 + 64) = v12;
      v7 = 1 << *(v11 + 32);
      if (v4 >= v7)
      {
        goto LABEL_24;
      }

      v2 = v11;
      v3 = v26;
      v16 = *(v26 + 8 * v8);
      if ((v16 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v6 = v25;
      if (v25 != *(v2 + 36))
      {
        goto LABEL_26;
      }

      v17 = v16 & (-2 << (v4 & 0x3F));
      if (v17)
      {
        v7 = __clz(__rbit64(v17)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v8 << 6;
        v19 = v8 + 1;
        v20 = (v23 + 8 * v8);
        while (v19 < (v7 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_1D2459248(v4, v25, 0);
            v7 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        sub_1D2459248(v4, v25, 0);
      }

LABEL_4:
      v5 = v27 + 1;
      v4 = v7;
      if (v27 + 1 == v24)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_1D24FBD9C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D2870F68();
  sub_1D24FBB28(v1);
  v19 = v4;
  sub_1D2870F68();
  sub_1D24FD028(&v19);

  v5 = v19;
  v6 = *(v19 + 16);
  if (v6)
  {
    v18 = v2;
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D23D81B8(0, v6, 0);
    v7 = v19;
    v8 = (v5 + 64);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v19 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      sub_1D2870F68();
      if (v12 >= v11 >> 1)
      {
        sub_1D23D81B8((v11 > 1), v12 + 1, 1);
        v7 = v19;
      }

      *(v7 + 16) = v12 + 1;
      v13 = v7 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      v8 += 5;
      --v6;
    }

    while (v6);

    v2 = v18;
    v19 = v7;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
    v19 = MEMORY[0x1E69E7CC0];
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  v14 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v14 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    if (*(v7 + 16))
    {
      goto LABEL_14;
    }

LABEL_16:

    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F500;
  *(inited + 32) = v2;
  *(inited + 40) = v3;
  sub_1D274DC9C(inited);
  v7 = v19;
LABEL_13:
  if (!*(v7 + 16))
  {
    goto LABEL_16;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358, &qword_1D2883920);
  sub_1D238D968();
  v16 = sub_1D2877F68();

  return v16;
}

void sub_1D24FBFBC(void *a1@<X8>)
{
  v36 = type metadata accessor for PersonAttributesPickerViewModel(0);
  v37 = v1;
  v3 = *(v1 + *(v36 + 32));
  v41 = *(v3 + 16);
  if (v41)
  {
    v4 = 0;
    v38 = MEMORY[0x1E69E7CC8];
    v39 = v3 + 32;
    v40 = *(v1 + *(v36 + 32));
    while (v4 < *(v3 + 16))
    {
      v5 = (v39 + 24 * v4);
      v6 = *v5;
      v7 = *(v5 + 1);
      v8 = *(v5 + 2);
      if (*v5)
      {
        if (v6 == 1)
        {
          v9 = qword_1EC6D8D38;
          sub_1D2870F68();
          v10 = &qword_1EC6DF458;
          if (v9 != -1)
          {
            swift_once();
            v10 = &qword_1EC6DF458;
          }
        }

        else
        {
          v12 = qword_1EC6D8D40;
          sub_1D2870F68();
          v10 = &qword_1EC6DF460;
          if (v12 != -1)
          {
            swift_once();
            v10 = &qword_1EC6DF460;
          }
        }
      }

      else
      {
        v11 = qword_1EC6D8D30;
        sub_1D2870F68();
        v10 = &off_1EC6DF450;
        if (v11 != -1)
        {
          swift_once();
          v10 = &off_1EC6DF450;
        }
      }

      ++v4;
      v13 = *v10;
      v14 = (v13 + 56);
      v15 = *(v13 + 16) + 1;
      while (--v15)
      {
        v17 = *(v14 - 1);
        v16 = *v14;
        if (*(v14 - 3) != v7 || *(v14 - 2) != v8)
        {
          v14 += 4;
          if ((sub_1D2879618() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

      if (qword_1EC6D8D48 != -1)
      {
        swift_once();
      }

      v17 = qword_1EC6E3F38;
      v16 = qword_1EC6E3F40;
LABEL_23:
      sub_1D2870F68();
      sub_1D2870F68();

      v19 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v19 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        v35 = a1;
        if (v6)
        {
          if (v6 == 1)
          {
            v20 = &qword_1EC6DF458;
            if (qword_1EC6D8D38 != -1)
            {
              swift_once();
              v20 = &qword_1EC6DF458;
            }
          }

          else
          {
            v20 = &qword_1EC6DF460;
            if (qword_1EC6D8D40 != -1)
            {
              swift_once();
              v20 = &qword_1EC6DF460;
            }
          }
        }

        else
        {
          v20 = &off_1EC6DF450;
          if (qword_1EC6D8D30 != -1)
          {
            swift_once();
            v20 = &off_1EC6DF450;
          }
        }

        v21 = *v20;
        v22 = (v21 + 56);
        v23 = *(v21 + 16) + 1;
        while (--v23)
        {
          v25 = *(v22 - 3);
          v24 = *(v22 - 2);
          v27 = *(v22 - 1);
          v26 = *v22;
          if (v25 == v7 && v24 == v8)
          {
            v25 = v7;
            goto LABEL_48;
          }

          v22 += 4;
          if (sub_1D2879618())
          {
            goto LABEL_48;
          }
        }

        if (qword_1EC6D8D48 != -1)
        {
          swift_once();
        }

        v25 = qword_1EC6E3F28;
        v24 = qword_1EC6E3F30;
        v27 = qword_1EC6E3F38;
        v26 = qword_1EC6E3F40;
LABEL_48:
        sub_1D2870F68();
        sub_1D2870F68();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1D24E7ECC(v25, v24, v27, v26, v6, isUniquelyReferenced_nonNull_native);

        a1 = v35;
        v3 = v40;
        if (v4 == v41)
        {
          goto LABEL_51;
        }
      }

      else
      {

        v3 = v40;
        if (v4 == v41)
        {
          goto LABEL_51;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC8];
LABEL_51:
    v30 = (v37 + *(v36 + 36));
    v32 = *v30;
    v31 = v30[1];
    v33 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v33 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      v34 = sub_1D2870F68();
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    *a1 = v38;
    a1[1] = v32;
    a1[2] = v34;
  }
}

void sub_1D24FC438(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (!*(a2 + 16) || (v6 = sub_1D25DB1BC(), (v7 & 1) == 0))
  {
    if (!v5)
    {
      if (qword_1EC6D8D30 != -1)
      {
        swift_once();
      }

      v10 = &off_1EC6DF450;
      goto LABEL_14;
    }

    if (v5 != 1)
    {
      if (qword_1EC6D8D40 != -1)
      {
        swift_once();
      }

      v10 = &qword_1EC6DF460;
      goto LABEL_14;
    }

    if (qword_1EC6D8D38 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_7;
  }

  v8 = (*(a2 + 56) + 32 * v6);
  for (i = v8 + 1; ; i = (v11 + 40))
  {
    v12 = *i;
    v13 = *v8;
    sub_1D2870F68();
    sub_1D2870F68();
    if (!*(a2 + 16))
    {
      break;
    }

    v14 = sub_1D25DB1BC();
    if ((v15 & 1) == 0)
    {
      break;
    }

    v16 = (*(a2 + 56) + 32 * v14);
    v17 = *v16 == 0xD000000000000014 && 0x80000001D28B9140 == v16[1];
    if (!v17 && (sub_1D2879618() & 1) == 0)
    {
      break;
    }

    if (v5)
    {
      if (v5 == 1)
      {
        if (qword_1EC6D8D38 != -1)
        {
          swift_once();
        }

        v18 = &qword_1EC6DF458;
      }

      else
      {
        if (qword_1EC6D8D40 != -1)
        {
          swift_once();
        }

        v18 = &qword_1EC6DF460;
      }
    }

    else
    {
      if (qword_1EC6D8D30 != -1)
      {
        swift_once();
      }

      v18 = &off_1EC6DF450;
    }

    v19 = *v18;
    if (v19[2] >= 3uLL)
    {
      v13 = v19[12];
      v12 = v19[13];
      sub_1D2870F68();
      sub_1D2870F68();
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_39:
      swift_once();
LABEL_7:
      v10 = &qword_1EC6DF458;
LABEL_14:
      v11 = *v10;
      if (*(*v10 + 16))
      {
        break;
      }

      __break(1u);
    }

    v8 = (v11 + 32);
  }

  *a3 = v5;
  *(a3 + 8) = v13;
  *(a3 + 16) = v12;
}

uint64_t sub_1D24FC6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 36);
  v7 = a1 + v6;
  v8 = *(a1 + v6);
  v9 = (a2 + v6);
  v10 = v8 == *v9 && *(v7 + 8) == v9[1];
  if (!v10 && (sub_1D2879618() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 32);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_1D23375FC(v12, v13);
}

unint64_t sub_1D24FC78C()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000013;
  }
}

void sub_1D24FC7C8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001D28B9100 == a2 || (sub_1D2879618() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D28B9120 == a2)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1D2879618();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1D24FC8AC(uint64_t a1)
{
  v2 = sub_1D24FE498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D24FC8E8(uint64_t a1)
{
  v2 = sub_1D24FE498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonAttributes.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC68, &qword_1D288EEA0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11[1] = v1[2];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D24FE498();
  sub_1D2870F68();
  sub_1D2879888();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC78, &qword_1D288EEA8);
  sub_1D24FE958(&qword_1EC6DCC80, sub_1D24FE4EC, sub_1D24FE540, MEMORY[0x1E69E5E38]);
  sub_1D2879598();

  if (!v2)
  {
    v12 = 1;
    sub_1D2879558();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t PersonAttributes.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  sub_1D24FE258(a1, *v1);
  if (!v2)
  {
    return sub_1D28797F8();
  }

  sub_1D28797F8();

  return sub_1D2877F38();
}

uint64_t PersonAttributes.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1D28797D8();
  sub_1D24FE258(v4, v1);
  sub_1D28797F8();
  if (v2)
  {
    sub_1D2877F38();
  }

  return sub_1D2879828();
}

void PersonAttributes.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC98, &qword_1D288EEB0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  sub_1D25DA23C(MEMORY[0x1E69E7CC0]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D24FE498();
  sub_1D2879868();
  if (!v2)
  {
    v8 = v5;
    v9 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCC78, &qword_1D288EEA8);
    v16 = 0;
    sub_1D24FE958(&qword_1EC6DCCA0, sub_1D24FE9E8, sub_1D24FEA3C, MEMORY[0x1E69E5E58]);
    sub_1D2879528();

    v10 = v17;
    v15 = 1;
    v11 = sub_1D28794C8();
    v13 = v12;
    (*(v8 + 8))(v7, v4);
    *v9 = v10;
    v9[1] = v11;
    v9[2] = v13;
    sub_1D2870F68();
    sub_1D2870F68();
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D24FCEAC()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1D28797D8();
  sub_1D24FE258(v4, v1);
  sub_1D28797F8();
  if (v2)
  {
    sub_1D2877F38();
  }

  return sub_1D2879828();
}

uint64_t sub_1D24FCF2C(uint64_t a1)
{
  v2 = v1[2];
  sub_1D24FE258(a1, *v1);
  if (!v2)
  {
    return sub_1D28797F8();
  }

  sub_1D28797F8();

  return sub_1D2877F38();
}

uint64_t sub_1D24FCFA8()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1D28797D8();
  sub_1D24FE258(v4, v1);
  sub_1D28797F8();
  if (v2)
  {
    sub_1D2877F38();
  }

  return sub_1D2879828();
}

void sub_1D24FD028(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D286FCEC(v2);
  }

  v3 = v2[2];
  v22[0] = (v2 + 4);
  v22[1] = v3;
  v4 = sub_1D28795B8();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 7;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = LOBYTE(v2[5 * i + 4]);
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 24))
          {
            break;
          }

          v14 = v13[3];
          v15 = v13[4];
          v17 = v13[5];
          v16 = v13[6];
          v18 = *(v13 - 1);
          *(v13 + 1) = *(v13 - 3);
          *(v13 + 2) = v18;
          v13[6] = v13[1];
          *(v13 - 24) = v11;
          *(v13 - 2) = v14;
          *(v13 - 1) = v15;
          *v13 = v17;
          v13[1] = v16;
          v13 -= 5;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 5;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DACF0, &unk_1D2885340);
      v7 = sub_1D2878468();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_1D24FD198(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_1D24FD198(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = sub_1D269163C(v9);
    }

    v93 = v9 + 16;
    v94 = *(v9 + 2);
    if (v94 >= 2)
    {
      while (*a3)
      {
        v95 = &v9[16 * v94];
        v96 = *v95;
        v97 = &v93[2 * v94];
        v98 = v97[1];
        sub_1D24FD768((*a3 + 40 * *v95), (*a3 + 40 * *v97), *a3 + 40 * v98, a1);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v98 < v96)
        {
          goto LABEL_112;
        }

        if (v94 - 2 >= *v93)
        {
          goto LABEL_113;
        }

        *v95 = v96;
        *(v95 + 1) = v98;
        v99 = *v93 - v94;
        if (*v93 < v94)
        {
          goto LABEL_114;
        }

        v94 = *v93 - 1;
        memmove(v97, v97 + 2, 16 * v99);
        *v93 = v94;
        if (v94 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 40 * v8);
      v12 = (*a3 + 40 * v10);
      v15 = *v12;
      v14 = v12 + 80;
      v13 = v15;
      v16 = v10 + 2;
      v17 = v11;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 40;
        v19 = (v11 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v8 = v16 - 1;
          if (v11 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v20 = 40 * v8 - 16;
        v21 = 40 * v10 + 32;
        v22 = v8;
        v23 = v10;
        do
        {
          if (v23 != --v22)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v24 = (v32 + v21);
            v25 = *(v32 + v21 - 32);
            v26 = (v32 + v20);
            v27 = *(v24 - 3);
            v28 = *(v24 - 1);
            v29 = *v24;
            v30 = v26[1];
            v31 = *(v26 - 1);
            *(v24 - 2) = *(v26 - 3);
            *(v24 - 1) = v31;
            *v24 = v30;
            *(v26 - 24) = v25;
            *(v26 - 1) = v27;
            *v26 = v28;
            v26[1] = v29;
          }

          ++v23;
          v20 -= 40;
          v21 += 40;
        }

        while (v23 < v22);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D2691650(0, *(v9 + 2) + 1, 1, v9);
    }

    v47 = *(v9 + 2);
    v46 = *(v9 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      v9 = sub_1D2691650((v46 > 1), v47 + 1, 1, v9);
    }

    *(v9 + 2) = v48;
    v49 = &v9[16 * v47];
    *(v49 + 4) = v10;
    *(v49 + 5) = v8;
    v50 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v9 + 4);
          v53 = *(v9 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_57:
          if (v55)
          {
            goto LABEL_103;
          }

          v68 = &v9[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_106;
          }

          v74 = &v9[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_110;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v78 = &v9[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_71:
        if (v73)
        {
          goto LABEL_105;
        }

        v81 = &v9[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_108;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_78:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v90 = *&v9[16 * v89 + 32];
        v91 = *&v9[16 * v51 + 40];
        sub_1D24FD768((*a3 + 40 * v90), (*a3 + 40 * *&v9[16 * v51 + 32]), *a3 + 40 * v91, v50);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v91 < v90)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D269163C(v9);
        }

        if (v89 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v92 = &v9[16 * v89];
        *(v92 + 4) = v90;
        *(v92 + 5) = v91;
        sub_1D26915B0(v51);
        v48 = *(v9 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v9[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_101;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_102;
      }

      v63 = &v9[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_104;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_107;
      }

      if (v67 >= v59)
      {
        v85 = &v9[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_111;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v33 = *a3;
  v34 = *a3 + 40 * v8 - 40;
  v35 = v10 - v8;
LABEL_30:
  v36 = *(v33 + 40 * v8);
  v37 = v35;
  v38 = v34;
  while (1)
  {
    v39 = v38 + 40;
    if (v36 >= *v38)
    {
LABEL_29:
      ++v8;
      v34 += 40;
      --v35;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v33)
    {
      break;
    }

    v40 = *(v38 + 3);
    v41 = *(v38 + 8);
    v42 = *(v38 + 9);
    v43 = *(v38 + 1);
    *v39 = *v38;
    *(v38 + 56) = v43;
    v44 = *(v38 + 4);
    *v38 = v36;
    *(v38 + 8) = v40;
    *(v38 + 3) = v41;
    *(v38 + 4) = v42;
    v38 -= 40;
    *(v39 + 4) = v44;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_1D24FD768(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[40 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[40 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 40;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 40;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = v13[1];
    *(v7 + 4) = *(v13 + 4);
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[40 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[40 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v17 = v6 - 40;
    v5 -= 40;
    v18 = v12;
    do
    {
      v19 = (v5 + 40);
      v20 = *(v18 - 40);
      v18 -= 40;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          v23 = *v17;
          v24 = *(v6 - 24);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v23;
          *(v5 + 16) = v24;
        }

        if (v12 <= v4 || (v6 -= 40, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v19 != v12)
      {
        v21 = *v18;
        v22 = *(v18 + 16);
        *(v5 + 32) = *(v18 + 32);
        *v5 = v21;
        *(v5 + 16) = v22;
      }

      v5 -= 40;
      v12 = v18;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v25 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v26 = (v25 >> 4) + (v25 >> 63);
  if (v6 != v4 || v6 >= &v4[40 * v26])
  {
    memmove(v6, v4, 40 * v26);
  }

  return 1;
}

void sub_1D24FD9A4(__int128 *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;
  sub_1D2870F68();
  v7 = 0;
  v8 = 0;
  v19 = v6;
  v20 = v2;
LABEL_6:
  if (v5)
  {
    v22 = v7;
    v9 = v8;
LABEL_12:
    v10 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v5 &= v5 - 1;
    sub_1D2870F68();
    sub_1D2870F68();
    sub_1D2877F38();

    v11 = v10 + 64;
    v12 = 1 << *(v10 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v10 + 64);
    v15 = (v12 + 63) >> 6;
    sub_1D2870F68();
    v16 = 0;
    for (i = 0; v14; v16 = sub_1D2879828() ^ v23)
    {
      v23 = v16;
LABEL_21:
      v14 &= v14 - 1;
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2877F38();

      sub_1D2877F38();
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        MEMORY[0x1D38A2260](v16);

        v7 = sub_1D2879828() ^ v22;
        v8 = v9;
        v6 = v19;
        v2 = v20;
        goto LABEL_6;
      }

      v14 = *(v11 + 8 * v18);
      ++i;
      if (v14)
      {
        v23 = v16;
        i = v18;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        MEMORY[0x1D38A2260](v7);
        return;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        v22 = v7;
        goto LABEL_12;
      }
    }
  }

  __break(1u);
}

void sub_1D24FDC3C(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v51 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  v48 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v56 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v41 - v5;
  v50 = type metadata accessor for GeneratedPreviewOptions(0);
  v46 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCCD8, &unk_1D288F170);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v16 = *(a2 + 64);
  v53 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v42 = (v17 + 63) >> 6;
  v49 = a2;
  sub_1D2870F68();
  v20 = 0;
  v21 = 0;
  v44 = v7;
  v43 = v12;
  v54 = v15;
  while (1)
  {
    v55 = v20;
    if (!v19)
    {
      break;
    }

    v22 = v21;
LABEL_16:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v26 = v25 | (v22 << 6);
    v27 = v49;
    v28 = v45;
    sub_1D249A0FC(*(v49 + 48) + *(v46 + 72) * v26, v45, type metadata accessor for GeneratedPreviewOptions);
    v29 = v47;
    sub_1D249A0FC(*(v27 + 56) + *(v48 + 72) * v26, v47, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE20, &unk_1D28939F0);
    v31 = *(v30 + 48);
    v32 = v28;
    v12 = v43;
    sub_1D24FEE4C(v32, v43, type metadata accessor for GeneratedPreviewOptions);
    sub_1D24FEE4C(v29, &v12[v31], type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
    (*(*(v30 - 8) + 56))(v12, 0, 1, v30);
    v7 = v44;
    v15 = v54;
LABEL_17:
    sub_1D24FEEB4(v12, v15);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE20, &unk_1D28939F0);
    if ((*(*(v33 - 8) + 48))(v15, 1, v33) == 1)
    {

      MEMORY[0x1D38A2260](v55);
      return;
    }

    v34 = *(v33 + 48);
    sub_1D24FEE4C(v15, v7, type metadata accessor for GeneratedPreviewOptions);
    sub_1D24FEE4C(&v15[v34], v56, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
    v35 = *(v52 + 48);
    v57[2] = *(v52 + 32);
    v57[3] = v35;
    v58 = *(v52 + 64);
    v36 = *(v52 + 16);
    v57[0] = *v52;
    v57[1] = v36;
    sub_1D2877F38();
    v37 = v50;
    sub_1D2871F98();
    sub_1D2877F38();

    if (*&v7[*(v37 + 24) + 8])
    {
      sub_1D28797F8();
      sub_1D2877F38();
    }

    else
    {
      sub_1D28797F8();
    }

    sub_1D24FEF7C(v7, type metadata accessor for GeneratedPreviewOptions);
    type metadata accessor for PlaygroundImage(0);
    sub_1D2871818();
    sub_1D24FEF24();
    v38 = v56;
    sub_1D2877F08();
    v39 = *(v38 + *(v51 + 20));
    sub_1D28797F8();
    if (v39)
    {
      sub_1D24FD9A4(v57, v39);
    }

    v15 = v54;
    sub_1D24FEF7C(v56, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
    v20 = sub_1D2879828() ^ v55;
  }

  if (v42 <= v21 + 1)
  {
    v23 = v21 + 1;
  }

  else
  {
    v23 = v42;
  }

  v24 = v23 - 1;
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v42)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE20, &unk_1D28939F0);
      (*(*(v40 - 8) + 56))(v12, 1, 1, v40);
      v19 = 0;
      v21 = v24;
      goto LABEL_17;
    }

    v19 = *(v53 + 8 * v22);
    ++v21;
    if (v19)
    {
      v21 = v22;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1D24FE258(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;
  sub_1D2870F68();
  v7 = 0;
  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v5)) | (v9 << 6);
      v11 = *(*(a2 + 48) + v10);
      v12 = *(*(a2 + 56) + 32 * v10 + 8);
      sub_1D2870F68();
      sub_1D2870F68();
      if (!v12)
      {
        break;
      }

      v5 &= v5 - 1;
      MEMORY[0x1D38A2260](v11);
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2877F38();

      sub_1D2877F38();
      swift_bridgeObjectRelease_n();

      v7 ^= sub_1D2879828();
      v8 = v9;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    MEMORY[0x1D38A2260](v7);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        goto LABEL_11;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t _s23ImagePlaygroundInternal16PersonAttributesV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1D25559F4(*a2, *a1) & 1) == 0)
  {
    return 0;
  }

  result = (v3 | v5) == 0;
  if (v3)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D2879618();
    }
  }

  return result;
}

unint64_t sub_1D24FE498()
{
  result = qword_1EC6DCC70;
  if (!qword_1EC6DCC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCC70);
  }

  return result;
}

unint64_t sub_1D24FE4EC()
{
  result = qword_1EC6DCC88;
  if (!qword_1EC6DCC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCC88);
  }

  return result;
}

unint64_t sub_1D24FE540()
{
  result = qword_1EC6DCC90;
  if (!qword_1EC6DCC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCC90);
  }

  return result;
}

void sub_1D24FE594()
{
  v9 = MEMORY[0x1E69E7CC0];
  sub_1D23D866C(0, 3, 0);
  v0 = 0;
  while (1)
  {
    v1 = byte_1F4DBD468[v0 + 32];
    if (byte_1F4DBD468[v0 + 32])
    {
      if (v1 == 1)
      {
        v2 = &qword_1EC6DF458;
        if (qword_1EC6D8D38 != -1)
        {
          swift_once();
          v2 = &qword_1EC6DF458;
        }
      }

      else
      {
        v2 = &qword_1EC6DF460;
        if (qword_1EC6D8D40 != -1)
        {
          swift_once();
          v2 = &qword_1EC6DF460;
        }
      }
    }

    else
    {
      v2 = &off_1EC6DF450;
      if (qword_1EC6D8D30 != -1)
      {
        swift_once();
        v2 = &off_1EC6DF450;
      }
    }

    v3 = *v2;
    if (!v3[2])
    {
      break;
    }

    v4 = v3[4];
    v5 = v3[5];
    v6 = *(v9 + 16);
    v7 = *(v9 + 24);
    sub_1D2870F68();
    if (v6 >= v7 >> 1)
    {
      sub_1D23D866C((v7 > 1), v6 + 1, 1);
    }

    *(v9 + 16) = v6 + 1;
    v8 = v9 + 24 * v6;
    *(v8 + 32) = v1;
    ++v0;
    *(v8 + 40) = v4;
    *(v8 + 48) = v5;
    if (v0 == 3)
    {
      return;
    }
  }

  __break(1u);
}

void sub_1D24FE754(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D23D866C(0, 3, 0);
    v2 = v25;
    v21 = byte_1F4DBD4B0;
    sub_1D24FC438(&v21, v1, v22);
    v3 = v22[0];
    v4 = v23;
    v5 = v24;
    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_1D23D866C((v6 > 1), v7 + 1, 1);
      v2 = v25;
    }

    *(v2 + 16) = v7 + 1;
    v8 = v2 + 24 * v7;
    *(v8 + 32) = v3;
    *(v8 + 40) = v4;
    *(v8 + 48) = v5;
    v21 = byte_1F4DBD4B1;
    sub_1D24FC438(&v21, v1, v22);
    v9 = v22[0];
    v10 = v23;
    v11 = v24;
    v25 = v2;
    v13 = *(v2 + 16);
    v12 = *(v2 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1D23D866C((v12 > 1), v13 + 1, 1);
      v2 = v25;
    }

    *(v2 + 16) = v13 + 1;
    v14 = v2 + 24 * v13;
    *(v14 + 32) = v9;
    *(v14 + 40) = v10;
    *(v14 + 48) = v11;
    v21 = byte_1F4DBD4B2;
    sub_1D24FC438(&v21, v1, v22);
    v15 = v22[0];
    v16 = v23;
    v17 = v24;
    v25 = v2;
    v19 = *(v2 + 16);
    v18 = *(v2 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1D23D866C((v18 > 1), v19 + 1, 1);
      v2 = v25;
    }

    *(v2 + 16) = v19 + 1;
    v20 = v2 + 24 * v19;
    *(v20 + 32) = v15;
    *(v20 + 40) = v16;
    *(v20 + 48) = v17;
  }

  else
  {

    sub_1D24FE594();
  }
}

uint64_t sub_1D24FE958(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCC78, &qword_1D288EEA8);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D24FE9E8()
{
  result = qword_1EC6DCCA8;
  if (!qword_1EC6DCCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCCA8);
  }

  return result;
}

unint64_t sub_1D24FEA3C()
{
  result = qword_1EC6DCCB0;
  if (!qword_1EC6DCCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCCB0);
  }

  return result;
}

unint64_t sub_1D24FEA94()
{
  result = qword_1EC6DCCB8;
  if (!qword_1EC6DCCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCCB8);
  }

  return result;
}

uint64_t type metadata accessor for PersonAttributesPickerViewModel(uint64_t a1)
{
  result = qword_1EC6D80D0;
  if (!qword_1EC6D80D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D24FEB6C(uint64_t a1)
{
  type metadata accessor for ServicesFetcher();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PersonAttributesManager();
    if (v2 <= 0x3F)
    {
      sub_1D24FEC8C(319);
      if (v3 <= 0x3F)
      {
        sub_1D24FECE4(319, &qword_1EC6D7598, &type metadata for PersonAttributeRow, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1D24FECE4(319, qword_1ED8A6D28, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D24FEC8C(uint64_t a1)
{
  if (!qword_1ED8A6C80)
  {
    sub_1D2871818();
    v1 = sub_1D2878F18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8A6C80);
    }
  }
}

void sub_1D24FECE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D24FED48()
{
  result = qword_1EC6DCCC0;
  if (!qword_1EC6DCCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCCC0);
  }

  return result;
}

unint64_t sub_1D24FEDA0()
{
  result = qword_1EC6DCCC8;
  if (!qword_1EC6DCCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCCC8);
  }

  return result;
}

unint64_t sub_1D24FEDF8()
{
  result = qword_1EC6DCCD0;
  if (!qword_1EC6DCCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DCCD0);
  }

  return result;
}

uint64_t sub_1D24FEE4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D24FEEB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCCD8, &unk_1D288F170);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D24FEF24()
{
  result = qword_1ED8A6CB0;
  if (!qword_1ED8A6CB0)
  {
    sub_1D2871818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A6CB0);
  }

  return result;
}