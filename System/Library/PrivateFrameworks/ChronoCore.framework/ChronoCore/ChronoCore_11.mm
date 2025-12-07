void sub_224B26C8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C20, &qword_224DB48E8);
  v2 = *v0;
  v3 = sub_224DAFB88();
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

void sub_224B26DFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3D70, &qword_224DB41E0);
  v2 = *v0;
  v3 = sub_224DAFB88();
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

void sub_224B26F48(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v37 = a1(0);
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v7);
  v36 = &v32 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_224DAFB88();
  v11 = v10;
  if (*(v9 + 16))
  {
    v33 = v6;
    v12 = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || v12 >= v9 + 64 + 8 * v13)
    {
      memmove(v12, (v9 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v39;
        v26 = *(v39 + 72) * v24;
        v27 = v36;
        v28 = v37;
        (*(v39 + 16))(v36, *(v9 + 48) + v26, v37);
        v24 *= 16;
        v29 = v38;
        v30 = *(v38 + 48);
        v31 = *(v25 + 32);
        v40 = *(*(v9 + 56) + v24);
        v31(v30 + v26, v27, v28);
        *(*(v29 + 56) + v24) = v40;
        swift_unknownObjectRetain();
        v19 = v41;
      }

      while (v41);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v33;
        v11 = v38;
        goto LABEL_21;
      }

      v23 = *(v9 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v41 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }
}

void sub_224B271CC()
{
  v1 = v0;
  v2 = type metadata accessor for PlatterContentError(0);
  v40 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_224DAC918();
  v42 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v5);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3CA0, &qword_224DB4958);
  v7 = *v0;
  v8 = sub_224DAFB88();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v7 + 64;
    if (v9 != v7 || v10 >= &v11[8 * v12])
    {
      memmove(v10, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v41 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v42 + 32;
    v35 = v42 + 16;
    v36 = v7;
    v19 = v42;
    v20 = v9;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = *(v19 + 72) * v24;
        v27 = v37;
        v26 = v38;
        (*(v19 + 16))(v37, *(v7 + 48) + v25, v38);
        v28 = *(v7 + 56);
        v29 = v39;
        v30 = *(v40 + 72) * v24;
        sub_224B313D0(v28 + v30, v39, type metadata accessor for PlatterContentError);
        (*(v19 + 32))(*(v20 + 48) + v25, v27, v26);
        v31 = v29;
        v7 = v36;
        sub_224B31438(v31, *(v20 + 56) + v30, type metadata accessor for PlatterContentError);
        v17 = v43;
      }

      while (v43);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v32;
        v9 = v41;
        goto LABEL_18;
      }

      v23 = *(v33 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }
}

void sub_224B274F0()
{
  v1 = v0;
  v37 = sub_224DAC918();
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v2);
  v36 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F70E0, &qword_224DB4950);
  v4 = *v0;
  v5 = sub_224DAFB88();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v38 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    v16 = v6;
    if (v14)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v40 = (v14 - 1) & v14;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v39;
        v22 = *(v39 + 72) * v20;
        v24 = v36;
        v23 = v37;
        (*(v39 + 16))(v36, *(v4 + 48) + v22, v37);
        v20 *= 24;
        v25 = *(v4 + 56) + v20;
        v26 = *v25;
        v27 = *(v16 + 48);
        v28 = *(v21 + 32);
        v41 = *(v25 + 8);
        v28(v27 + v22, v24, v23);
        v29 = *(v16 + 56) + v20;
        *v29 = v26;
        *(v29 + 8) = v41;
        v30 = v26;
        swift_unknownObjectRetain();
        v14 = v40;
      }

      while (v40);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v32;
        v6 = v38;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
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

void sub_224B277F4()
{
  v1 = v0;
  v43 = sub_224DA9878();
  v46 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v2);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v45 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v4);
  v40 = &v32 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F39D0, &qword_224DB4788);
  v6 = *v0;
  v7 = sub_224DAFB88();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || v9 >= &v10[8 * v11])
    {
      memmove(v9, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
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

void sub_224B27BD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C60, &qword_224DB4920);
  v2 = *v0;
  v3 = sub_224DAFB88();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void sub_224B27D34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C58, &unk_224DC3C90);
  v2 = *v0;
  v3 = sub_224DAFB88();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        swift_unknownObjectRetain();
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

void sub_224B27EB8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_224DAFB88();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        v23 = v21;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_224B28068(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v44 = a1(0);
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v7);
  v43 = &v38 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_224DAFB88();
  v11 = v10;
  if (*(v9 + 16))
  {
    v39 = v6;
    v12 = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || v12 >= v9 + 64 + 8 * v14)
    {
      memmove(v12, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v45 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v42 = v9;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = *v28;
        v30 = v28[1];
        v31 = v46;
        v32 = *(v46 + 72) * v25;
        v33 = v43;
        v34 = v44;
        (*(v46 + 16))(v43, v27 + v32, v44);
        v35 = v45;
        v36 = (*(v45 + 48) + v26);
        *v36 = v29;
        v36[1] = v30;
        v37 = *(v35 + 56) + v32;
        v9 = v42;
        (*(v31 + 32))(v37, v33, v34);

        v20 = v47;
      }

      while (v47);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v39;
        v11 = v45;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }
}

void sub_224B2832C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v38 = a1(0);
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v7);
  v37 = &v32 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_224DAFB88();
  v11 = v10;
  if (*(v9 + 16))
  {
    v12 = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v33 = v6;
    v34 = (v9 + 64);
    if (v11 != v9 || v12 >= v9 + 64 + 8 * v13)
    {
      memmove(v12, v34, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v39 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    v21 = v11;
    if (v19)
    {
      do
      {
        v22 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
LABEL_17:
        v25 = v22 | (v15 << 6);
        v26 = v40;
        v27 = *(v40 + 72) * v25;
        v29 = v37;
        v28 = v38;
        (*(v40 + 16))(v37, *(v9 + 48) + v27, v38);
        v30 = *(*(v9 + 56) + 8 * v25);
        (*(v26 + 32))(*(v21 + 48) + v27, v29, v28);
        *(*(v21 + 56) + 8 * v25) = v30;
        v31 = v30;
        v19 = v41;
      }

      while (v41);
    }

    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v33;
        v11 = v39;
        goto LABEL_21;
      }

      v24 = *(v34 + v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v41 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }
}

void sub_224B28668()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord(0);
  v40 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_224DAAF48();
  v42 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v5);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C10, &qword_224DB48D8);
  v7 = *v0;
  v8 = sub_224DAFB88();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v7 + 64;
    if (v9 != v7 || v10 >= &v11[8 * v12])
    {
      memmove(v10, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v41 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v42 + 32;
    v35 = v42 + 16;
    v36 = v7;
    v19 = v42;
    v20 = v9;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = *(v19 + 72) * v24;
        v27 = v37;
        v26 = v38;
        (*(v19 + 16))(v37, *(v7 + 48) + v25, v38);
        v28 = *(v7 + 56);
        v29 = v39;
        v30 = *(v40 + 72) * v24;
        sub_224B313D0(v28 + v30, v39, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
        (*(v19 + 32))(*(v20 + 48) + v25, v27, v26);
        v31 = v29;
        v7 = v36;
        sub_224B31438(v31, *(v20 + 56) + v30, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
        v17 = v43;
      }

      while (v43);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v32;
        v9 = v41;
        goto LABEL_18;
      }

      v23 = *(v33 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }
}

void sub_224B2898C()
{
  v1 = v0;
  v2 = type metadata accessor for SimpleWorkScheduler.Work(0);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3B38, &qword_224DB4848);
  v5 = *v0;
  v6 = sub_224DAFB88();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v29 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = *(*(v5 + 48) + 8 * v21);
        v23 = v27;
        v24 = *(v28 + 72) * v21;
        sub_224B313D0(*(v5 + 56) + v24, v27, type metadata accessor for SimpleWorkScheduler.Work);
        v25 = v29;
        *(*(v29 + 48) + 8 * v21) = v22;
        sub_224B31438(v23, *(v25 + 56) + v24, type metadata accessor for SimpleWorkScheduler.Work);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v26;
        v7 = v29;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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

void sub_224B28BC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C00, &qword_224DC3C70);
  v2 = *v0;
  v3 = sub_224DAFB88();
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

void sub_224B28D68(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v8);
  v37 = &v32 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *v4;
  v11 = sub_224DAFB88();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    v33 = v7;
    v34 = (v10 + 64);
    if (v12 != v10 || v13 >= v10 + 64 + 8 * v14)
    {
      memmove(v13, v34, 8 * v14);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v39 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v41 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = v40;
        v27 = *(v40 + 72) * v25;
        v29 = v37;
        v28 = v38;
        (*(v40 + 16))(v37, *(v10 + 48) + v27, v38);
        v30 = *(*(v10 + 56) + 8 * v25);
        v31 = v39;
        (*(v26 + 32))(*(v39 + 48) + v27, v29, v28);
        *(*(v31 + 56) + 8 * v25) = v30;

        v20 = v41;
      }

      while (v41);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v33;
        v12 = v39;
        goto LABEL_21;
      }

      v24 = *(v34 + v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v41 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }
}

void sub_224B28FD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BA0, &qword_224DB4890);
  v2 = *v0;
  v3 = sub_224DAFB88();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void sub_224B29134()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3AA8, &qword_224DB47F0);
  v2 = *v0;
  v3 = sub_224DAFB88();
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
        v20 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v20;
        v19 = v18;
        sub_224A77FD0(v20, *(&v20 + 1));
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

void sub_224B292B0()
{
  v1 = v0;
  v31 = sub_224DA9908();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v2);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F39A0, &qword_224DB4778);
  v4 = *v0;
  v5 = sub_224DAFB88();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v33 + 16;
    v27 = v4 + 64;
    v28 = v33 + 32;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v33;
      v20 = *(v33 + 72) * v18;
      v21 = v30;
      v22 = v31;
      (*(v33 + 16))(v30, *(v4 + 48) + v20, v31);
      v18 *= 16;
      v23 = v32;
      v24 = *(v32 + 48);
      v25 = *(v19 + 32);
      v34 = *(*(v4 + 56) + v18);
      v25(v24 + v20, v21, v22);
      *(*(v23 + 56) + v18) = v34;
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

        v1 = v26;
        v6 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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

void sub_224B29544(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_224DAFB88();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_224B296A4()
{
  v1 = v0;
  v32 = sub_224DAC268();
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v2);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3B68, &qword_224DB4860);
  v4 = *v0;
  v5 = sub_224DAFB88();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
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

void sub_224B2993C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F39B8, &qword_224DC3D70);
  v2 = *v0;
  v3 = sub_224DAFB88();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void sub_224B29A98()
{
  v1 = v0;
  v32 = sub_224DAC268();
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v2);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C38, &qword_224DB4900);
  v4 = *v0;
  v5 = sub_224DAFB88();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
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

void sub_224B29D30(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, unint64_t))
{
  v36 = a3;
  v6 = v3;
  v35 = sub_224DAC268();
  v38 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v7);
  v34 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = *v3;
  v10 = sub_224DAFB88();
  v11 = v10;
  if (*(v9 + 16))
  {
    v33[0] = v6;
    v12 = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || v12 >= v9 + 64 + 8 * v14)
    {
      memmove(v12, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v37 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v33[1] = v38 + 32;
    v33[2] = v38 + 16;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = v38;
        v27 = *(v38 + 72) * v25;
        v28 = v34;
        v29 = v35;
        (*(v38 + 16))(v34, *(v9 + 48) + v27, v35);
        v25 *= 40;
        sub_224A3317C(*(v9 + 56) + v25, v40);
        v30 = v9;
        v31 = v37;
        (*(v26 + 32))(*(v37 + 48) + v27, v28, v29);
        v32 = *(v31 + 56);
        v9 = v30;
        v36(v40, v32 + v25);
        v20 = v39;
      }

      while (v39);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v33[0];
        v11 = v37;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v39 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }
}

void sub_224B29FDC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_224DAFB88();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        v24 = v22;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_224B2A138()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3AA0, &qword_224DC3C00);
  v2 = *v0;
  v3 = sub_224DAFB88();
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        sub_224A77FD0(v22, *(&v22 + 1));
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

void sub_224B2A308(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v8);
  v38 = &v33 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *v4;
  v11 = sub_224DAFB88();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    v34 = v7;
    v35 = (v10 + 64);
    if (v12 != v10 || v13 >= v10 + 64 + 8 * v14)
    {
      memmove(v13, v35, 8 * v14);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v40 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    v36 = v41 + 32;
    v37 = v41 + 16;
    v22 = v12;
    if (v20)
    {
      do
      {
        v23 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
LABEL_17:
        v26 = v23 | (v16 << 6);
        v27 = v41;
        v28 = *(v41 + 72) * v26;
        v30 = v38;
        v29 = v39;
        (*(v41 + 16))(v38, *(v10 + 48) + v28, v39);
        v31 = *(*(v10 + 56) + 8 * v26);
        (*(v27 + 32))(*(v22 + 48) + v28, v30, v29);
        *(*(v22 + 56) + 8 * v26) = v31;
        v32 = v31;
        v20 = v42;
      }

      while (v42);
    }

    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v34;
        v12 = v40;
        goto LABEL_21;
      }

      v25 = *(v35 + v16);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v42 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }
}

void sub_224B2A574(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_224DAFB88();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_224B2A6C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7030, &qword_224DB47E0);
  v2 = *v0;
  v3 = sub_224DAFB88();
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

void sub_224B2A828()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3A80, &unk_224DC3BF0);
  v2 = *v0;
  v3 = sub_224DAFB88();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;

        swift_unknownObjectRetain();
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

void sub_224B2A9A0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_224DAFB88();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_224B2AAF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3A68, &qword_224DB47D0);
  v2 = *v0;
  v3 = sub_224DAFB88();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        v21 = v19;
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

void sub_224B2AC58(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_224DAFB88();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_224B2ADD4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v37 = a1(0);
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v7);
  v36 = &v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_224DAFB88();
  v11 = v10;
  if (*(v9 + 16))
  {
    v12 = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v32 = v6;
    v33 = (v9 + 64);
    if (v11 != v9 || v12 >= v9 + 64 + 8 * v13)
    {
      memmove(v12, v33, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v39;
        v26 = *(v39 + 72) * v24;
        v28 = v36;
        v27 = v37;
        (*(v39 + 16))(v36, *(v9 + 48) + v26, v37);
        v29 = *(*(v9 + 56) + 8 * v24);
        v30 = v38;
        (*(v25 + 32))(*(v38 + 48) + v26, v28, v27);
        *(*(v30 + 56) + 8 * v24) = v29;

        v19 = v40;
      }

      while (v40);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32;
        v11 = v38;
        goto LABEL_21;
      }

      v23 = *(v33 + v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v40 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }
}

void sub_224B2B08C(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v8 = v4;
  v50 = a1(0);
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v9);
  v49 = &v39 - v10;
  v48 = a2(0);
  v52 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v11);
  v47 = &v39 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = *v4;
  v14 = sub_224DAFB88();
  v15 = v14;
  if (*(v13 + 16))
  {
    v16 = (v14 + 64);
    v17 = (v13 + 64);
    v18 = ((1 << *(v15 + 32)) + 63) >> 6;
    v39 = v8;
    v40 = v13 + 64;
    if (v15 != v13 || v16 >= &v17[8 * v18])
    {
      memmove(v16, v17, 8 * v18);
    }

    v19 = 0;
    v20 = *(v13 + 16);
    v51 = v15;
    *(v15 + 16) = v20;
    v21 = 1 << *(v13 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v13 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = v52 + 16;
    v45 = v24;
    v42 = v52 + 32;
    v43 = v53 + 16;
    v41 = v53 + 32;
    v46 = v13;
    v26 = v47;
    v25 = v48;
    if (v23)
    {
      do
      {
        v27 = __clz(__rbit64(v23));
        v54 = (v23 - 1) & v23;
LABEL_14:
        v30 = v27 | (v19 << 6);
        v31 = v52;
        v32 = *(v52 + 72) * v30;
        (*(v52 + 16))(v26, *(v13 + 48) + v32, v25);
        v33 = v53;
        v34 = *(v53 + 72) * v30;
        v35 = v49;
        v36 = v50;
        (*(v53 + 16))(v49, *(v13 + 56) + v34, v50);
        v37 = v51;
        (*(v31 + 32))(*(v51 + 48) + v32, v26, v25);
        v38 = *(v37 + 56);
        v13 = v46;
        (*(v33 + 32))(v38 + v34, v35, v36);
        v24 = v45;
        v23 = v54;
      }

      while (v54);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v8 = v39;
        v15 = v51;
        goto LABEL_18;
      }

      v29 = *(v40 + 8 * v19);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v54 = (v29 - 1) & v29;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v8 = v15;
  }
}

void sub_224B2B410(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v37 = a1(0);
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v7);
  v36 = &v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_224DAFB88();
  v11 = v10;
  if (*(v9 + 16))
  {
    v12 = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v32 = v6;
    v33 = (v9 + 64);
    if (v11 != v9 || v12 >= v9 + 64 + 8 * v13)
    {
      memmove(v12, v33, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v39;
        v26 = *(v39 + 72) * v24;
        v28 = v36;
        v27 = v37;
        (*(v39 + 16))(v36, *(v9 + 48) + v26, v37);
        v29 = *(*(v9 + 56) + 8 * v24);
        v30 = v38;
        (*(v25 + 32))(*(v38 + 48) + v26, v28, v27);
        *(*(v30 + 56) + 8 * v24) = v29;

        v19 = v40;
      }

      while (v40);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32;
        v11 = v38;
        goto LABEL_21;
      }

      v23 = *(v33 + v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v40 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }
}

void sub_224B2B68C()
{
  v1 = v0;
  v39 = sub_224DA9878();
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v2);
  v38 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3A20, &qword_224DB47A8);
  v4 = *v0;
  v5 = sub_224DAFB88();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v40 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v41 + 32;
    v36 = v41 + 16;
    v37 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v42 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 24 * v19;
        v21 = *(v4 + 56);
        v22 = *(v4 + 48) + 24 * v19;
        v24 = *v22;
        v23 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = v41;
        v27 = *(v41 + 72) * v19;
        v29 = v38;
        v28 = v39;
        (*(v41 + 16))(v38, v21 + v27, v39);
        v30 = v40;
        v31 = (*(v40 + 48) + v20);
        *v31 = v24;
        v31[1] = v23;
        v4 = v37;
        v31[2] = v25;
        (*(v26 + 32))(*(v30 + 56) + v27, v29, v28);
        v32 = v24;

        v14 = v42;
      }

      while (v42);
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

        v1 = v33;
        v6 = v40;
        goto LABEL_18;
      }

      v18 = *(v34 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v42 = (v18 - 1) & v18;
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

void *sub_224B2B924(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = v3;
  v6 = a1;
  v20[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = (1 << v7) + 63;
  v10 = v9 >> 6;
  v11 = 8 * (v9 >> 6);
  if (v8 <= 0xD)
  {
    goto LABEL_2;
  }

  v16 = 8 * (v9 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v11 = v16;
LABEL_2:
    MEMORY[0x28223BE20](a1, v11);
    v13 = v20 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a2(v13, v10, v6);
    if (v5)
    {
      return swift_willThrow();
    }

    return result;
  }

  v17 = swift_slowAlloc();
  v18 = v5;
  v19 = sub_224B2C5F0(v17, v10, v6, a3);
  result = MEMORY[0x22AA5EED0](v17, -1, -1);
  if (!v18)
  {
    return v19;
  }

  return result;
}

uint64_t sub_224B2BA94(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v60 = a2;
  v61 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v78 = &v59 - v6;
  v76 = sub_224DA9878();
  v7 = *(v76 - 8);
  v9 = MEMORY[0x28223BE20](v76, v8);
  v69 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v68 = &v59 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38B0, &qword_224DB46F8);
  v14 = MEMORY[0x28223BE20](v75, v13);
  v82 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v83 = &v59 - v17;
  v81 = sub_224DAE438();
  result = MEMORY[0x28223BE20](v81, v18);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v24 = 0;
  v77 = a3;
  v25 = *(a3 + 64);
  v64 = a3 + 64;
  v26 = 1 << *(a3 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v63 = (v26 + 63) >> 6;
  v72 = (v7 + 48);
  v73 = v20 + 16;
  v66 = (v7 + 8);
  v67 = (v7 + 32);
  v74 = v20;
  v70 = v22;
  v71 = (v20 + 8);
  while (2)
  {
    v62 = v23;
    while (1)
    {
      if (!v28)
      {
        v31 = v24;
        v30 = v78;
        while (1)
        {
          v24 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v24 >= v63)
          {
            return sub_224B2C754(v61, v60, v62, v77, MEMORY[0x277CF9EF8], &qword_27D6F38B8, &qword_224DB4700);
          }

          v32 = *(v64 + 8 * v24);
          ++v31;
          if (v32)
          {
            v80 = (v32 - 1) & v32;
            v29 = __clz(__rbit64(v32)) | (v24 << 6);
            goto LABEL_12;
          }
        }

        __break(1u);
        return result;
      }

      v80 = (v28 - 1) & v28;
      v29 = __clz(__rbit64(v28)) | (v24 << 6);
      v30 = v78;
LABEL_12:
      v33 = v77[7];
      v34 = (v77[6] + 16 * v29);
      v36 = *v34;
      v35 = v34[1];
      v37 = *(v74 + 72);
      v65 = v29;
      v38 = *(v74 + 16);
      v39 = v81;
      v38(v22, v33 + v37 * v29, v81);
      v40 = v83;
      *v83 = v36;
      *(v40 + 1) = v35;
      v41 = v22;
      v42 = v75;
      v38(&v40[*(v75 + 48)], v41, v39);
      sub_224B30F7C(v40, v82);
      v79 = v35;
      swift_bridgeObjectRetain_n();

      v43 = *(v42 + 48);
      sub_224DAE3E8();
      v44 = v76;
      v45 = (*v72)(v30, 1, v76);
      v46 = v30;
      if (v45 == 1)
      {
        break;
      }

      v47 = v68;
      (*v67)(v68, v46, v44);
      v48 = v69;
      sub_224DA9808();
      v49 = sub_224DA9798();
      v50 = *v66;
      v51 = v48;
      v52 = v81;
      v53 = v82;
      (*v66)(v51, v44);
      v50(v47, v44);
      sub_224A3311C(v83, &qword_27D6F38B0, &qword_224DB46F8);
      v54 = *v71;
      (*v71)(v53 + v43, v52);
      v55 = v70;
      v54(v70, v52);

      v22 = v55;
      v28 = v80;
      if ((v49 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    sub_224A3311C(v83, &qword_27D6F38B0, &qword_224DB46F8);
    sub_224A3311C(v30, &qword_27D6F32B0, &qword_224DB3EA0);
    v56 = *v71;
    v57 = v81;
    (*v71)(v82 + v43, v81);
    v58 = v70;
    v56(v70, v57);

    v22 = v58;
    v28 = v80;
LABEL_16:
    *(v61 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
    v23 = v62 + 1;
    if (!__OFADD__(v62, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
  return sub_224B2C754(v61, v60, v62, v77, MEMORY[0x277CF9EF8], &qword_27D6F38B8, &qword_224DB4700);
}

uint64_t sub_224B2C04C(unint64_t *a1, uint64_t a2, void *a3)
{
  v57[0] = a2;
  v58 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v75 = v57 - v6;
  v77 = sub_224DA9878();
  v7 = *(v77 - 8);
  v9 = MEMORY[0x28223BE20](v77, v8);
  v64 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v63 = v57 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38B0, &qword_224DB46F8);
  v14 = MEMORY[0x28223BE20](v74, v13);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v57 - v18;
  v20 = sub_224DAE438();
  result = MEMORY[0x28223BE20](v20, v21);
  v25 = v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = 0;
  v26 = 0;
  v76 = a3;
  v29 = a3[8];
  v28 = a3 + 8;
  v27 = v29;
  v30 = 1 << *(v28 - 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v27;
  v33 = (v30 + 63) >> 6;
  v69 = (v7 + 48);
  v70 = v23 + 16;
  v61 = (v7 + 8);
  v62 = (v7 + 32);
  v72 = v28;
  v73 = v23;
  v68 = (v23 + 8);
  v71 = v33;
  v60 = v16;
  while (v32)
  {
    v35 = v25;
    v36 = __clz(__rbit64(v32));
    v79 = (v32 - 1) & v32;
LABEL_12:
    v39 = v36 | (v26 << 6);
    v40 = v76[7];
    v41 = (v76[6] + 16 * v39);
    v42 = *v41;
    v43 = v41[1];
    v44 = *(v73 + 72);
    v67 = v39;
    v45 = *(v73 + 16);
    v45(v35, v40 + v44 * v39, v20);
    *v19 = v42;
    *(v19 + 1) = v43;
    v46 = v74;
    v45(&v19[*(v74 + 48)], v35, v20);
    sub_224B30F7C(v19, v16);
    v78 = v43;
    swift_bridgeObjectRetain_n();

    v47 = *(v46 + 48);
    v48 = v16;
    v49 = v75;
    sub_224DAE3E8();
    v50 = v49;
    if ((*v69)(v49, 1, v77) == 1)
    {
      sub_224A3311C(v19, &qword_27D6F38B0, &qword_224DB46F8);
      sub_224A3311C(v49, &qword_27D6F32B0, &qword_224DB3EA0);
      v34 = *v68;
      (*v68)(&v48[v47], v20);
      v34(v35, v20);

      v16 = v48;
      v25 = v35;
      v33 = v71;
      v28 = v72;
      v32 = v79;
    }

    else
    {
      v51 = v63;
      v52 = v77;
      (*v62)(v63, v50, v77);
      v65 = v47;
      v53 = v64;
      sub_224DA9808();
      v66 = sub_224DA9798();
      v54 = *v61;
      (*v61)(v53, v52);
      v54(v51, v52);
      sub_224A3311C(v19, &qword_27D6F38B0, &qword_224DB46F8);
      v55 = *v68;
      v16 = v60;
      (*v68)(&v60[v65], v20);
      v55(v35, v20);

      v25 = v35;
      v33 = v71;
      v28 = v72;
      v32 = v79;
      if (v66)
      {
        *(v58 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
        if (__OFADD__(v59++, 1))
        {
          __break(1u);
          return sub_224B2C754(v58, v57[0], v59, v76, MEMORY[0x277CF9EF8], &qword_27D6F38B8, &qword_224DB4700);
        }
      }
    }
  }

  v37 = v26;
  while (1)
  {
    v26 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v26 >= v33)
    {
      return sub_224B2C754(v58, v57[0], v59, v76, MEMORY[0x277CF9EF8], &qword_27D6F38B8, &qword_224DB4700);
    }

    v38 = v28[v26];
    ++v37;
    if (v38)
    {
      v35 = v25;
      v36 = __clz(__rbit64(v38));
      v79 = (v38 - 1) & v38;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_224B2C5F0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_224B2C678(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = a6(v11, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

uint64_t sub_224B2C754(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v52 = a1;
  v59 = a5(0);
  v57 = *(v59 - 8);
  v13 = MEMORY[0x28223BE20](v59, v12);
  v58 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v53 = &v48 - v16;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  result = sub_224DAFBB8();
  v18 = result;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *v52;
  }

  v20 = 0;
  v50 = result;
  v51 = v57 + 16;
  v21 = v57 + 32;
  v22 = result + 64;
  v49 = a4;
  while (v19)
  {
    v23 = v21;
    v24 = __clz(__rbit64(v19));
    v54 = (v19 - 1) & v19;
LABEL_16:
    v27 = v24 | (v20 << 6);
    v28 = a4[7];
    v29 = (a4[6] + 16 * v27);
    v30 = *v29;
    v31 = v29[1];
    v32 = v57;
    v56 = *(v57 + 72);
    v33 = v53;
    v34 = v59;
    (*(v57 + 16))(v53, v28 + v56 * v27, v59);
    v35 = *(v32 + 32);
    v36 = v33;
    v21 = v23;
    v35(v58, v36, v34);
    v18 = v50;
    sub_224DAFE68();

    v55 = v30;
    sub_224DAEE78();
    result = sub_224DAFEA8();
    v37 = -1 << *(v18 + 32);
    v38 = result & ~v37;
    v39 = v38 >> 6;
    if (((-1 << v38) & ~*(v22 + 8 * (v38 >> 6))) == 0)
    {
      v41 = 0;
      v42 = (63 - v37) >> 6;
      while (++v39 != v42 || (v41 & 1) == 0)
      {
        v43 = v39 == v42;
        if (v39 == v42)
        {
          v39 = 0;
        }

        v41 |= v43;
        v44 = *(v22 + 8 * v39);
        if (v44 != -1)
        {
          v40 = __clz(__rbit64(~v44)) + (v39 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v40 = __clz(__rbit64((-1 << v38) & ~*(v22 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v22 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
    v45 = (*(v18 + 48) + 16 * v40);
    v46 = v56;
    *v45 = v55;
    v45[1] = v31;
    result = (v35)(*(v18 + 56) + v40 * v46, v58, v59);
    ++*(v18 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v49;
    v19 = v54;
    if (!a3)
    {
      return v18;
    }
  }

  v25 = v20;
  while (1)
  {
    v20 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v20 >= a2)
    {
      return v18;
    }

    v26 = v52[v20];
    ++v25;
    if (v26)
    {
      v23 = v21;
      v24 = __clz(__rbit64(v26));
      v54 = (v26 - 1) & v26;
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

uint64_t sub_224B2CAC4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ReloadRequestKey(0);
  v42 = *(v8 - 8);
  v43 = v8;
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v41 = &v38 - v14;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (*(a4 + 16) == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3918, &qword_224DB4728);
  result = sub_224DAFBB8();
  v16 = result;
  v40 = a4;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v19 = result + 64;
  v39 = result;
  while (v17)
  {
    v20 = v12;
    v21 = __clz(__rbit64(v17));
    v44 = (v17 - 1) & v17;
LABEL_16:
    v24 = v21 | (v18 << 6);
    v25 = v40;
    v26 = v41;
    v27 = *(v40 + 48);
    v46 = *(v42 + 72);
    sub_224B313D0(v27 + v46 * v24, v41, type metadata accessor for ReloadRequestKey);
    v28 = *(*(v25 + 56) + 8 * v24);
    v12 = v20;
    sub_224B31438(v26, v20, type metadata accessor for ReloadRequestKey);
    v16 = v39;
    sub_224DAFE68();
    v45 = v28;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
    sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FA8]);
    sub_224DAED98();
    sub_224DAEE78();
    result = sub_224DAFEA8();
    v29 = -1 << *(v16 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v19 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v19 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    result = sub_224B31438(v12, *(v16 + 48) + v32 * v46, type metadata accessor for ReloadRequestKey);
    *(*(v16 + 56) + 8 * v32) = v45;
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v17 = v44;
    if (!a3)
    {
      return v16;
    }
  }

  v22 = v18;
  while (1)
  {
    v18 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      return v16;
    }

    v23 = a1[v18];
    ++v22;
    if (v23)
    {
      v20 = v12;
      v21 = __clz(__rbit64(v23));
      v44 = (v23 - 1) & v23;
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

uint64_t sub_224B2CE74(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3D70, &qword_224DB41E0);
  result = sub_224DAFBB8();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + v16);
    v27 = *(*(v4 + 56) + 8 * v16);
    sub_224DAFE68();
    MEMORY[0x22AA5E1E0](v17);
    result = sub_224DAFEA8();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v17;
    *(*(v9 + 56) + 8 * v21) = v27;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_224B2D094(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v62 = sub_224DA9908();
  v58 = *(v62 - 8);
  v9 = MEMORY[0x28223BE20](v62, v8);
  v61 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v52 = v48 - v12;
  v13 = sub_224DAAF48();
  v57 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v60 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v51 = v48 - v18;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3998, &qword_224DB4770);
  result = sub_224DAFBB8();
  v20 = result;
  if (a2 < 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = *a1;
  }

  v22 = 0;
  v48[3] = v57 + 16;
  v49 = a2;
  v59 = v57 + 32;
  v23 = result + 64;
  v50 = a1;
  v48[0] = a4;
  v48[1] = v58 + 32;
  v48[2] = v58 + 16;
  while (v21)
  {
    v24 = __clz(__rbit64(v21));
    v53 = (v21 - 1) & v21;
LABEL_16:
    v27 = v24 | (v22 << 6);
    v28 = a4[6];
    v29 = v57;
    v56 = *(v57 + 72);
    v30 = v51;
    (*(v57 + 16))(v51, v28 + v56 * v27, v13);
    v31 = a4[7];
    v32 = v58;
    v55 = *(v58 + 72);
    v33 = v31 + v55 * v27;
    v34 = v13;
    v35 = v52;
    v36 = v62;
    (*(v58 + 16))(v52, v33, v62);
    v54 = *(v29 + 32);
    v54(v60, v30, v34);
    v37 = *(v32 + 32);
    v38 = v35;
    v13 = v34;
    v37(v61, v38, v36);
    sub_224A439BC(&qword_281351738, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
    result = sub_224DAED88();
    v39 = -1 << *(v20 + 32);
    v40 = result & ~v39;
    v41 = v40 >> 6;
    if (((-1 << v40) & ~*(v23 + 8 * (v40 >> 6))) == 0)
    {
      v43 = 0;
      v44 = (63 - v39) >> 6;
      a2 = v49;
      a1 = v50;
      while (++v41 != v44 || (v43 & 1) == 0)
      {
        v45 = v41 == v44;
        if (v41 == v44)
        {
          v41 = 0;
        }

        v43 |= v45;
        v46 = *(v23 + 8 * v41);
        if (v46 != -1)
        {
          v42 = __clz(__rbit64(~v46)) + (v41 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v42 = __clz(__rbit64((-1 << v40) & ~*(v23 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
    a2 = v49;
    a1 = v50;
LABEL_26:
    *(v23 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
    v54((*(v20 + 48) + v42 * v56), v60, v34);
    result = (v37)(*(v20 + 56) + v42 * v55, v61, v62);
    ++*(v20 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v48[0];
    v21 = v53;
    if (!a3)
    {
      return v20;
    }
  }

  v25 = v22;
  while (1)
  {
    v22 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v22 >= a2)
    {
      return v20;
    }

    v26 = a1[v22];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v53 = (v26 - 1) & v26;
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

uint64_t sub_224B2D538(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v62 = sub_224DA9878();
  v58 = *(v62 - 8);
  v9 = MEMORY[0x28223BE20](v62, v8);
  v61 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v52 = v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v57 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v60 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v51 = v48 - v18;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F39D0, &qword_224DB4788);
  result = sub_224DAFBB8();
  v20 = result;
  if (a2 < 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = *a1;
  }

  v22 = 0;
  v48[3] = v57 + 16;
  v49 = a2;
  v59 = v57 + 32;
  v23 = result + 64;
  v50 = a1;
  v48[0] = a4;
  v48[1] = v58 + 32;
  v48[2] = v58 + 16;
  while (v21)
  {
    v24 = __clz(__rbit64(v21));
    v53 = (v21 - 1) & v21;
LABEL_16:
    v27 = v24 | (v22 << 6);
    v28 = a4[6];
    v29 = v57;
    v56 = *(v57 + 72);
    v30 = v51;
    (*(v57 + 16))(v51, v28 + v56 * v27, v13);
    v31 = a4[7];
    v32 = v58;
    v55 = *(v58 + 72);
    v33 = v31 + v55 * v27;
    v34 = v13;
    v35 = v52;
    v36 = v62;
    (*(v58 + 16))(v52, v33, v62);
    v54 = *(v29 + 32);
    v54(v60, v30, v34);
    v37 = *(v32 + 32);
    v38 = v35;
    v13 = v34;
    v37(v61, v38, v36);
    sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA018]);
    result = sub_224DAED88();
    v39 = -1 << *(v20 + 32);
    v40 = result & ~v39;
    v41 = v40 >> 6;
    if (((-1 << v40) & ~*(v23 + 8 * (v40 >> 6))) == 0)
    {
      v43 = 0;
      v44 = (63 - v39) >> 6;
      a2 = v49;
      a1 = v50;
      while (++v41 != v44 || (v43 & 1) == 0)
      {
        v45 = v41 == v44;
        if (v41 == v44)
        {
          v41 = 0;
        }

        v43 |= v45;
        v46 = *(v23 + 8 * v41);
        if (v46 != -1)
        {
          v42 = __clz(__rbit64(~v46)) + (v41 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v42 = __clz(__rbit64((-1 << v40) & ~*(v23 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
    a2 = v49;
    a1 = v50;
LABEL_26:
    *(v23 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
    v54((*(v20 + 48) + v42 * v56), v60, v34);
    result = (v37)(*(v20 + 56) + v42 * v55, v61, v62);
    ++*(v20 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v48[0];
    v21 = v53;
    if (!a3)
    {
      return v20;
    }
  }

  v25 = v22;
  while (1)
  {
    v22 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v22 >= a2)
    {
      return v20;
    }

    v26 = a1[v22];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v53 = (v26 - 1) & v26;
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

uint64_t sub_224B2DA0C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v6 = a4;
  v7 = a3;
  if (*(a4 + 16) == a3)
  {

    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_224DAFBB8();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 64;
  v31 = v6;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v18 = v15 | (v13 << 6);
    v19 = *(*(v6 + 48) + 8 * v18);
    v20 = *(*(v6 + 56) + 8 * v18);
    v21 = v19;

    result = sub_224DAF698();
    v22 = -1 << *(v11 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
        v29 = *(v14 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v11 + 48) + 8 * v25) = v21;
    *(*(v11 + 56) + 8 * v25) = v20;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    v6 = v31;
    if (!v7)
    {
      return v11;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      return v11;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
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

uint64_t sub_224B2DC20(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v62 = sub_224DAD9C8();
  v58 = *(v62 - 8);
  v9 = MEMORY[0x28223BE20](v62, v8);
  v61 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v52 = v48 - v12;
  v13 = sub_224DA9908();
  v57 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v60 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v51 = v48 - v18;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3BE0, &qword_224DB48B8);
  result = sub_224DAFBB8();
  v20 = result;
  if (a2 < 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = *a1;
  }

  v22 = 0;
  v48[3] = v57 + 16;
  v49 = a2;
  v59 = v57 + 32;
  v23 = result + 64;
  v50 = a1;
  v48[0] = a4;
  v48[1] = v58 + 32;
  v48[2] = v58 + 16;
  while (v21)
  {
    v24 = __clz(__rbit64(v21));
    v53 = (v21 - 1) & v21;
LABEL_16:
    v27 = v24 | (v22 << 6);
    v28 = a4[6];
    v29 = v57;
    v56 = *(v57 + 72);
    v30 = v51;
    (*(v57 + 16))(v51, v28 + v56 * v27, v13);
    v31 = a4[7];
    v32 = v58;
    v55 = *(v58 + 72);
    v33 = v31 + v55 * v27;
    v34 = v13;
    v35 = v52;
    v36 = v62;
    (*(v58 + 16))(v52, v33, v62);
    v54 = *(v29 + 32);
    v54(v60, v30, v34);
    v37 = *(v32 + 32);
    v38 = v35;
    v13 = v34;
    v37(v61, v38, v36);
    sub_224A439BC(&qword_281351A18, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = sub_224DAED88();
    v39 = -1 << *(v20 + 32);
    v40 = result & ~v39;
    v41 = v40 >> 6;
    if (((-1 << v40) & ~*(v23 + 8 * (v40 >> 6))) == 0)
    {
      v43 = 0;
      v44 = (63 - v39) >> 6;
      a2 = v49;
      a1 = v50;
      while (++v41 != v44 || (v43 & 1) == 0)
      {
        v45 = v41 == v44;
        if (v41 == v44)
        {
          v41 = 0;
        }

        v43 |= v45;
        v46 = *(v23 + 8 * v41);
        if (v46 != -1)
        {
          v42 = __clz(__rbit64(~v46)) + (v41 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v42 = __clz(__rbit64((-1 << v40) & ~*(v23 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
    a2 = v49;
    a1 = v50;
LABEL_26:
    *(v23 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
    v54((*(v20 + 48) + v42 * v56), v60, v34);
    result = (v37)(*(v20 + 56) + v42 * v55, v61, v62);
    ++*(v20 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v48[0];
    v21 = v53;
    if (!a3)
    {
      return v20;
    }
  }

  v25 = v22;
  while (1)
  {
    v22 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v22 >= a2)
    {
      return v20;
    }

    v26 = a1[v22];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v53 = (v26 - 1) & v26;
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

uint64_t sub_224B2E0C4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a1;
  v48 = sub_224DABE18();
  v7 = *(v48 - 8);
  v9 = MEMORY[0x28223BE20](v48, v8);
  v47 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v41 = &v35 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F39E0, &qword_224DB4798);
  result = sub_224DAFBB8();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v40;
  }

  v16 = 0;
  v37 = v7 + 16;
  v38 = result;
  v46 = v7 + 32;
  v17 = result + 64;
  v36 = a4;
  v39 = v7;
  v18 = v48;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v42 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[6];
    v45 = *(v7 + 72);
    v24 = v41;
    (*(v7 + 16))(v41, v23 + v45 * v22, v18);
    v25 = *(a4[7] + 8 * v22);
    v43 = *(v7 + 32);
    v43(v47, v24, v18);
    v14 = v38;
    sub_224A439BC(&qword_281350E88, MEMORY[0x277CF98E0], MEMORY[0x277CF98E8]);
    v44 = v25;

    result = sub_224DAED88();
    v26 = -1 << *(v14 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      v7 = v39;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v17 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v7 = v39;
LABEL_26:
    *(v17 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v43)(*(v14 + 48) + v29 * v45, v47, v48);
    *(*(v14 + 56) + 8 * v29) = v44;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v36;
    v15 = v42;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = v40[v16];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v42 = (v21 - 1) & v21;
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

uint64_t sub_224B2E464(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord(0);
  v51 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v58 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v50 = &v45 - v13;
  v14 = sub_224DAAF48();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v57 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v49 = &v45 - v20;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C10, &qword_224DB48D8);
  result = sub_224DAFBB8();
  v22 = result;
  if (a2 < 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = *a1;
  }

  v24 = 0;
  v47 = v15 + 16;
  v48 = a1;
  v56 = v15 + 32;
  v25 = result + 64;
  v45 = v15;
  v46 = a4;
  while (v23)
  {
    v26 = __clz(__rbit64(v23));
    v52 = (v23 - 1) & v23;
LABEL_16:
    v29 = v26 | (v24 << 6);
    v30 = a4[6];
    v55 = *(v15 + 72);
    v31 = v49;
    (*(v15 + 16))(v49, v30 + v55 * v29, v14);
    v32 = a4[7];
    v54 = *(v51 + 72);
    v33 = v14;
    v34 = v50;
    sub_224B313D0(v32 + v54 * v29, v50, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
    v53 = *(v15 + 32);
    v53(v57, v31, v33);
    v35 = v34;
    v14 = v33;
    sub_224B31438(v35, v58, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
    sub_224A439BC(&qword_281351738, MEMORY[0x277D46790], MEMORY[0x277D467A8]);
    result = sub_224DAED88();
    v36 = -1 << *(v22 + 32);
    v37 = result & ~v36;
    v38 = v37 >> 6;
    if (((-1 << v37) & ~*(v25 + 8 * (v37 >> 6))) == 0)
    {
      v40 = 0;
      v41 = (63 - v36) >> 6;
      a1 = v48;
      while (++v38 != v41 || (v40 & 1) == 0)
      {
        v42 = v38 == v41;
        if (v38 == v41)
        {
          v38 = 0;
        }

        v40 |= v42;
        v43 = *(v25 + 8 * v38);
        if (v43 != -1)
        {
          v39 = __clz(__rbit64(~v43)) + (v38 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v39 = __clz(__rbit64((-1 << v37) & ~*(v25 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
    a1 = v48;
LABEL_26:
    *(v25 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
    v53((*(v22 + 48) + v39 * v55), v57, v33);
    result = sub_224B31438(v58, *(v22 + 56) + v39 * v54, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
    ++*(v22 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v15 = v45;
    a4 = v46;
    v23 = v52;
    if (!a3)
    {
      return v22;
    }
  }

  v27 = v24;
  while (1)
  {
    v24 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v24 >= a2)
    {
      return v22;
    }

    v28 = a1[v24];
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v52 = (v28 - 1) & v28;
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

uint64_t sub_224B2E8E0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v49 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v43 = &v38 - v14;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F39B0, &unk_224DC3B70);
  result = sub_224DAFBB8();
  v48 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v40 = a4;
  v41 = v9 + 16;
  v47 = v9 + 32;
  v18 = v48 + 64;
  v39 = a1;
  v42 = v9;
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v44 = (v16 - 1) & v16;
LABEL_16:
    v22 = v19 | (v17 << 6);
    v23 = a4[6];
    v46 = *(v9 + 72);
    v24 = v43;
    (*(v9 + 16))(v43, v23 + v46 * v22, v8);
    v25 = *(a4[7] + 8 * v22);
    v45 = *(v9 + 32);
    v45(v49, v24, v8);
    v26 = v48;
    sub_224A33088(&qword_281351878, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA018]);
    v27 = v25;
    result = sub_224DAED88();
    v28 = -1 << *(v26 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      v9 = v42;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v18 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    v9 = v42;
LABEL_26:
    *(v18 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v36 = v48;
    result = (v45)(*(v48 + 48) + v31 * v46, v49, v8);
    *(*(v36 + 56) + 8 * v31) = v27;
    ++*(v36 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a1 = v39;
    a4 = v40;
    v16 = v44;
    if (!a3)
    {
      return v48;
    }
  }

  v20 = v17;
  while (1)
  {
    v17 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      return v48;
    }

    v21 = a1[v17];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v44 = (v21 - 1) & v21;
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

uint64_t sub_224B2EC7C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3940, &qword_224DB4740);
  result = sub_224DAFBB8();
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    v19 = v17;

    result = sub_224DAF698();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v19;
    *(*(v9 + 56) + 8 * v23) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
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

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_224B2EEC8(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_224DAFA68();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_224DAFB28())
      {
        goto LABEL_31;
      }

      sub_224A3B79C(0, &qword_2813508E8, 0x277D7BC20);
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

void *sub_224B2F0C4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_224B2F218(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_224B2F374(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_224B2F4CC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_224DAF7E8();
  sub_224DAF538();
  sub_224A439BC(&unk_2813509A0, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
  result = sub_224DAF1F8();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_224DAF878())
      {
        goto LABEL_30;
      }

      sub_224DAF538();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_224B2F73C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v44 = *(v42 - 8);
  v9 = MEMORY[0x28223BE20](v42, v8);
  v43 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9, v11);
  v41 = &v35 - v13;
  v14 = a4 + 64;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return a3;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 64;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      a3 = v40;
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      result = a1;
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    a3 = result;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_224B2FA18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v38 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13, v16);
  v19 = &v34 - v18;
  v39 = a4;
  v22 = *(a4 + 64);
  v21 = a4 + 64;
  v20 = v22;
  v23 = -1 << *(v21 - 32);
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & v20;
  if (!a2)
  {
LABEL_18:
    v26 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v39;
    a1[1] = v21;
    a1[2] = ~v23;
    a1[3] = v26;
    a1[4] = v25;
    return a3;
  }

  if (!a3)
  {
    v26 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = a1;
    v37 = a3;
    result = 0;
    v26 = 0;
    v35 = v23;
    v27 = (63 - v23) >> 6;
    v28 = 1;
    while (v25)
    {
LABEL_14:
      v31 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      a1 = *(v38 + 72);
      sub_224B313D0(*(v39 + 56) + a1 * (v31 | (v26 << 6)), v15, a6);
      sub_224B31438(v15, v19, a6);
      sub_224B31438(v19, a2, a6);
      if (v28 == v37)
      {
        a1 = v36;
        a3 = v37;
        goto LABEL_23;
      }

      a2 += a1;
      result = v28;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v29 = v26;
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v30 >= v27)
      {
        break;
      }

      v25 = *(v21 + 8 * v30);
      ++v29;
      if (v25)
      {
        v26 = v30;
        goto LABEL_14;
      }
    }

    v25 = 0;
    if (v27 <= v26 + 1)
    {
      v33 = v26 + 1;
    }

    else
    {
      v33 = v27;
    }

    v26 = v33 - 1;
    a3 = result;
    a1 = v36;
LABEL_23:
    v23 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_224B2FC64(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v17 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v10 = v19 & *(v4 + 64);
    v21 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_224DAFA68();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v21 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v22 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_224DAFB18())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      type metadata accessor for WidgetRendererSession(0);
      swift_dynamicCast();
      result = v23;
      v15 = v11;
      if (!v23)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v10 &= v10 - 1;

    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v22;
    if (v13 == v22)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v20 = v11 + 1;
  }

  else
  {
    v20 = v12;
  }

  v15 = v20 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v21;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

void *sub_224B2FE70(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_20:
    v10 = 0;
    v17 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v11 = v19 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v12 = 0;
    goto LABEL_31;
  }

  sub_224DAF7E8();
  type metadata accessor for EmptyKey();
  sub_224A439BC(&qword_27D6F3798, type metadata accessor for EmptyKey, &unk_224DB4AEC);
  result = sub_224DAF1F8();
  v4 = v24;
  v8 = v25;
  v9 = v26;
  v10 = v27;
  v11 = v28;
  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_31;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v21 = v9;
  v22 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (v4 < 0)
  {
    if (!sub_224DAF878())
    {
      goto LABEL_29;
    }

    type metadata accessor for EmptyKey();
    swift_dynamicCast();
    result = v23;
    if (!v23)
    {
      goto LABEL_29;
    }

LABEL_16:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_29;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  v14 = v10;
  if (v11)
  {
LABEL_12:
    v11 &= v11 - 1;

    if (!result)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_12;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v20 = v10 + 1;
  }

  else
  {
    v20 = v13;
  }

  v10 = v20 - 1;
LABEL_29:
  v9 = v21;
  v7 = v22;
LABEL_31:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_224B300B8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v26 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *v11 = *v18;
      v11[1] = v20;
      v11[2] = v21;
      if (v14 == v10)
      {
        v25 = v19;

        goto LABEL_23;
      }

      v11 += 3;
      v22 = v19;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = v13;
    }

    v12 = v24 - 1;
    v10 = result;
LABEL_23:
    v7 = v26;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_224B30250(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v43 = a5(0);
  v45 = *(v43 - 8);
  v10 = MEMORY[0x28223BE20](v43, v9);
  v44 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10, v12);
  v42 = &v36 - v14;
  v15 = a4 + 64;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v34 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v15;
    *(a1 + 16) = ~v16;
    *(a1 + 24) = v34;
    *(a1 + 32) = v18;
    return a3;
  }

  if (!a3)
  {
    v34 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(a4 + 32);
    v37 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v38 = v45 + 32;
    v39 = v45 + 16;
    a1 = 1;
    v40 = a4 + 64;
    v41 = a3;
    v21 = v42;
    while (v18)
    {
      v47 = a2;
LABEL_15:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v46 = v19;
      v25 = a4;
      v26 = *(a4 + 56);
      v27 = v44;
      v28 = v45;
      v29 = *(v45 + 72);
      v30 = v43;
      (*(v45 + 16))(v44, v26 + v29 * (v24 | (v19 << 6)), v43);
      v31 = *(v28 + 32);
      v31(v21, v27, v30);
      v32 = v47;
      v31(v47, v21, v30);
      a3 = v41;
      if (a1 == v41)
      {
        v16 = v36;
        a1 = v37;
        a4 = v25;
        v34 = v46;
        v15 = v40;
        goto LABEL_25;
      }

      a2 = &v32[v29];
      result = a1;
      v33 = __OFADD__(a1++, 1);
      a4 = v25;
      v19 = v46;
      v15 = v40;
      if (v33)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        v47 = a2;
        v19 = v23;
        goto LABEL_15;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v35 = v19 + 1;
    }

    else
    {
      v35 = v20;
    }

    v34 = v35 - 1;
    a3 = result;
    v16 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_224B304F8()
{
  sub_224DAFE68();
  v0 = sub_224DAFEA8();
  return sub_224AA27D0(v0);
}

uint64_t sub_224B30540(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a2;
  v59 = a5;
  v46 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38B0, &qword_224DB46F8);
  v8 = MEMORY[0x28223BE20](v56, v7);
  v55 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v45 - v11;
  v62 = sub_224DAE438();
  result = MEMORY[0x28223BE20](v62, v13);
  v61 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v57 = a4;
  v58 = a3;
  v18 = *(a3 + 64);
  v47 = 0;
  v48 = a3 + 64;
  v19 = 1 << *(a3 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v49 = (v19 + 63) >> 6;
  v52 = v15 + 16;
  v53 = v15;
  v54 = v12;
  v51 = v15 + 8;
  while (v21)
  {
    v23 = v12;
    v24 = __clz(__rbit64(v21));
    v60 = (v21 - 1) & v21;
LABEL_12:
    v27 = v24 | (v17 << 6);
    v28 = v58[7];
    v29 = (v58[6] + 16 * v27);
    v31 = *v29;
    v30 = v29[1];
    v32 = v53;
    v33 = *(v53 + 72);
    v50 = v27;
    v34 = *(v53 + 16);
    v35 = v61;
    v36 = v62;
    v34(v61, v28 + v33 * v27, v62);
    *v23 = v31;
    *(v23 + 1) = v30;
    v37 = v56;
    v34(&v23[*(v56 + 48)], v35, v36);
    v38 = v55;
    sub_224B30F7C(v23, v55);
    swift_bridgeObjectRetain_n();

    v39 = *(v37 + 48);
    v40 = sub_224DAE3F8();
    v42 = v41;
    v43 = *(v32 + 8);
    v43(v38 + v39, v36);
    if (v40 == v57 && v42 == v59)
    {

      v12 = v54;
      sub_224A3311C(v54, &qword_27D6F38B0, &qword_224DB46F8);
      v43(v61, v62);

      v21 = v60;
      goto LABEL_15;
    }

    v22 = sub_224DAFD88();

    v12 = v54;
    sub_224A3311C(v54, &qword_27D6F38B0, &qword_224DB46F8);
    v43(v61, v62);

    v21 = v60;
    if (v22)
    {
LABEL_15:
      *(v46 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      if (__OFADD__(v47++, 1))
      {
        __break(1u);
        return sub_224B2C754(v46, v45, v47, v58, MEMORY[0x277CF9EF8], &qword_27D6F38B8, &qword_224DB4700);
      }
    }
  }

  v25 = v17;
  while (1)
  {
    v17 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v17 >= v49)
    {
      return sub_224B2C754(v46, v45, v47, v58, MEMORY[0x277CF9EF8], &qword_27D6F38B8, &qword_224DB4700);
    }

    v26 = *(v48 + 8 * v17);
    ++v25;
    if (v26)
    {
      v23 = v12;
      v24 = __clz(__rbit64(v26));
      v60 = (v26 - 1) & v26;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224B30938(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a2;
  v58 = a5;
  v59 = a4;
  v46 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38B0, &qword_224DB46F8);
  v7 = MEMORY[0x28223BE20](v56, v6);
  v55 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v45 - v10);
  v12 = sub_224DAE438();
  result = MEMORY[0x28223BE20](v12, v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v57 = a3;
  v19 = *(a3 + 64);
  v47 = 0;
  v48 = a3 + 64;
  v20 = 1 << *(a3 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v49 = (v20 + 63) >> 6;
  v52 = v15 + 2;
  v53 = v17;
  v62 = v15;
  v54 = v11;
  v51 = v15 + 1;
  while (v22)
  {
    v24 = __clz(__rbit64(v22));
    v61 = (v22 - 1) & v22;
LABEL_12:
    v27 = v24 | (v18 << 6);
    v28 = v57[7];
    v29 = (v57[6] + 16 * v27);
    v30 = *v29;
    v31 = v29[1];
    v32 = v62[9];
    v50 = v27;
    v33 = v62[2];
    v34 = v12;
    v33(v17, v28 + v32 * v27, v12);
    *v11 = v30;
    v11[1] = v31;
    v35 = v56;
    v33(v11 + *(v56 + 48), v17, v12);
    v36 = v11;
    v37 = v55;
    sub_224B30F7C(v36, v55);
    v60 = v31;
    swift_bridgeObjectRetain_n();

    v38 = *(v35 + 48);
    v39 = sub_224DAE3F8();
    v41 = v40;
    v42 = v62[1];
    v43 = v37 + v38;
    v12 = v34;
    v42(v43, v34);
    if (v39 == v59 && v41 == v58)
    {

      v11 = v54;
      sub_224A3311C(v54, &qword_27D6F38B0, &qword_224DB46F8);
      v17 = v53;
      v42(v53, v34);

      v22 = v61;
    }

    else
    {
      v23 = sub_224DAFD88();

      v11 = v54;
      sub_224A3311C(v54, &qword_27D6F38B0, &qword_224DB46F8);
      v17 = v53;
      v42(v53, v34);

      v22 = v61;
      if ((v23 & 1) == 0)
      {
        *(v46 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        if (__OFADD__(v47++, 1))
        {
          __break(1u);
          return sub_224B2C754(v46, v45, v47, v57, MEMORY[0x277CF9EF8], &qword_27D6F38B8, &qword_224DB4700);
        }
      }
    }
  }

  v25 = v18;
  while (1)
  {
    v18 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v18 >= v49)
    {
      return sub_224B2C754(v46, v45, v47, v57, MEMORY[0x277CF9EF8], &qword_27D6F38B8, &qword_224DB4700);
    }

    v26 = *(v48 + 8 * v18);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v61 = (v26 - 1) & v26;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_224B30D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v20[1] = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;
  v15 = swift_bridgeObjectRetain_n();
  if (v12 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v19 = swift_slowAlloc();

      v17 = sub_224B2C678(v19, v13, a1, a2, a3, a5);
      MEMORY[0x22AA5EED0](v19, -1, -1);
      swift_bridgeObjectRelease_n();
      return v17;
    }
  }

  MEMORY[0x28223BE20](v15, v16);
  bzero(v20 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0), v14);

  v17 = a4(v20 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0), v13, a1, a2, a3);

  if (v5)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v17;
}

uint64_t sub_224B30F7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38B0, &qword_224DB46F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B30FEC(uint64_t a1)
{
  v2 = type metadata accessor for ReloadRequestKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224B31048(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v30 = a1;
  v10 = sub_224DA9908();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a4;
  v17 = sub_224A438E8(a2);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_224B26F48(MEMORY[0x277CC95F0], &qword_27D6F3950, &qword_224DB4748);
      goto LABEL_9;
    }

    sub_224B105B0(v20, a3 & 1);
    v23 = sub_224A438E8(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_224DAFDD8();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v30;
  v26 = *a4;
  if (v21)
  {
    v27 = (v26[7] + 16 * v17);
    *v27 = v30;
    v27[1] = a6;

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v11 + 16))(v14, a2, v10);
    return sub_224B3124C(v17, v14, v25, v26, v29, a6);
  }
}

uint64_t sub_224B3124C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = sub_224DA9908();
  result = (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  v14 = (a4[7] + 16 * a1);
  *v14 = a3;
  v14[1] = a6;
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_224B31368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_224B313D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224B31438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_224B314A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38B0, &qword_224DB46F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_224B31520()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  __swift_allocate_value_buffer(v0, qword_281365440);
  v1 = __swift_project_value_buffer(v0, qword_281365440);
  sub_224B31578(v1);
}

void sub_224B31578(uint64_t a1@<X8>)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v2 = sub_224DA9688();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  v40 = 0;
  v8 = [v7 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:0 error:&v40];

  v9 = v40;
  if (v8)
  {
    sub_224DA9638();
    v10 = v9;

    sub_224DA9608();
    (*(v3 + 8))(v6, v2);
    (*(v3 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v11 = v40;
    v12 = sub_224DA9528();

    swift_willThrow();
    v40 = v12;
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
    sub_224AD1978();
    if (swift_dynamicCast())
    {

      v14 = v39;
      if (qword_281351400 != -1)
      {
        swift_once();
      }

      v15 = sub_224DAB258();
      __swift_project_value_buffer(v15, qword_281364D18);
      v16 = v14;
      v17 = sub_224DAB228();
      v18 = sub_224DAF298();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v41[0] = v38;
        *v19 = 136446722;
        v20 = [v16 domain];
        v21 = sub_224DAEE18();
        v23 = v22;

        v24 = sub_224A33F74(v21, v23, v41);

        *(v19 + 4) = v24;
        *(v19 + 12) = 2050;
        v25 = [v16 code];

        *(v19 + 14) = v25;
        *(v19 + 22) = 2114;
        *(v19 + 24) = v16;
        v26 = v37;
        *v37 = v16;
        v16 = v16;
        _os_log_impl(&dword_224A2F000, v17, v18, "Couldn't access old chrono path: (%{public}s: %{public}ld): %{public}@", v19, 0x20u);
        sub_224A3311C(v26, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v26, -1, -1);
        v27 = v38;
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x22AA5EED0](v27, -1, -1);
        MEMORY[0x22AA5EED0](v19, -1, -1);
      }

      else
      {
      }

      (*(v3 + 56))(a1, 1, 1, v2);
    }

    else
    {

      if (qword_281351400 != -1)
      {
        swift_once();
      }

      v28 = sub_224DAB258();
      __swift_project_value_buffer(v28, qword_281364D18);
      v29 = v12;
      v30 = sub_224DAB228();
      v31 = sub_224DAF298();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138543362;
        v34 = v12;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 4) = v35;
        *v33 = v35;
        _os_log_impl(&dword_224A2F000, v30, v31, "Couldn't access old chrono path: %{public}@", v32, 0xCu);
        sub_224A3311C(v33, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v33, -1, -1);
        MEMORY[0x22AA5EED0](v32, -1, -1);
      }

      else
      {
      }

      (*(v3 + 56))(a1, 1, 1, v2);
    }
  }
}

uint64_t sub_224B31AF8()
{
  v50 = sub_224DABD78();
  v0 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v1);
  v49 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v36 - v5;
  v7 = sub_224DA9688();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v47 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v36 - v14;
  v48 = v16;
  MEMORY[0x28223BE20](v13, v17);
  v19 = &v36 - v18;
  sub_224DA9CA8();
  v39 = v6;
  v38 = v8 + 56;
  v54 = v7;
  v44 = v8 + 16;
  v45 = v8 + 32;
  v42 = (v0 + 104);
  v41 = *MEMORY[0x277CF98D8];
  v46 = (v8 + 8);
  v40 = *(v8 + 56);
  v53 = 4;
  *&v20 = 138543362;
  v36 = v20;
  v52 = 100000;
  v37 = v8;
  v43 = v15;
  v40(v6, 0, 1, v7);
  v21 = *(v8 + 32);
  v21(v19, v6, v7);
  sub_224DA9608();
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3DA0, &unk_224DB4A10) + 48);
  v23 = *(v8 + 16);
  v24 = v15;
  v25 = v49;
  v23(v49, v24, v7);
  *&v25[v22] = 1;
  (*v42)(v25, v41, v50);
  v26 = v47;
  v27 = v19;
  v23(v47, v19, v54);
  v28 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v51;
  v30 = v26;
  v31 = v54;
  v21((v29 + v28), v30, v54);
  v32 = sub_224DABBD8();
  v33 = *v46;
  v34 = v32;
  (*v46)(v43, v31);
  v33(v27, v31);
  return v34;
}

void sub_224B321FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a1;
  v4 = sub_224DAF128();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224B324C4(a3);
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  sub_224DABC18();
  sub_224DAF0F8();
  *(swift_allocObject() + 16) = v9;
  v9;
  sub_224DABBF8();

  (*(v5 + 8))(v8, v4);
  sub_224DAF2F8();
  v10[2] = 0;
  v10[3] = 0xE000000000000000;
  sub_224DAF938();
  MEMORY[0x22AA5D210](0xD00000000000002CLL, 0x8000000224DC5F40);
  v10[1] = v10[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
  sub_224DAFA48();
  sub_224DAFB58();
  __break(1u);
}

void sub_224B32450(uint64_t a1)
{
  v3 = *(sub_224DA9688() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_224B321FC(a1, v4, v5);
}

void sub_224B324C4(uint64_t a1)
{
  v98[1] = *MEMORY[0x277D85DE8];
  v2 = sub_224DA9688();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v89 = v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = v83 - v9;
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = v83 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = v83 - v16;
  v91 = objc_opt_self();
  v18 = [v91 defaultManager];
  v19 = sub_224DA95F8();
  v98[0] = 0;
  v20 = [v18 contentsOfDirectoryAtURL:v19 includingPropertiesForKeys:0 options:0 error:v98];

  v21 = v98[0];
  if (v20)
  {
    v22 = sub_224DAF008();
    v23 = v21;

    v25 = v22;
    v26 = *(v22 + 16);
    if (v26)
    {
      v28 = v3 + 16;
      v27 = *(v3 + 16);
      v29 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v83[1] = v25;
      v30 = v25 + v29;
      v96 = *(v28 + 56);
      v97 = (v28 - 8);
      *&v24 = 136446210;
      v88 = v24;
      *&v24 = 136446466;
      v84 = v24;
      v90 = v28;
      v93 = v27;
      v94 = v14;
      v27(v17, (v25 + v29), v2);
      while (1)
      {
        sub_224DA95E8();
        v31 = sub_224DAEEF8();

        if (v31)
        {
          if (qword_281351438 != -1)
          {
            swift_once();
          }

          v32 = sub_224DAB258();
          v33 = __swift_project_value_buffer(v32, qword_281364D78);
          v27(v14, v17, v2);
          v92 = v33;
          v34 = sub_224DAB228();
          v35 = sub_224DAF2A8();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = v2;
            v38 = swift_slowAlloc();
            v98[0] = v38;
            *v36 = v88;
            sub_224B32DE8();
            v39 = sub_224DAFD28();
            v41 = v40;
            v95 = *v97;
            v95(v94, v37);
            v42 = sub_224A33F74(v39, v41, v98);
            v14 = v94;

            *(v36 + 4) = v42;
            _os_log_impl(&dword_224A2F000, v34, v35, "Removing %{public}s", v36, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v38);
            v43 = v38;
            v2 = v37;
            MEMORY[0x22AA5EED0](v43, -1, -1);
            MEMORY[0x22AA5EED0](v36, -1, -1);
          }

          else
          {

            v95 = *v97;
            v95(v14, v2);
          }

          v44 = [v91 defaultManager];
          v45 = sub_224DA95F8();
          v98[0] = 0;
          v46 = [v44 removeItemAtURL:v45 error:v98];

          v47 = v98[0];
          if (v46)
          {
            v95(v17, v2);
          }

          else
          {
            v48 = v47;
            v49 = sub_224DA9528();

            swift_willThrow();
            v50 = v89;
            v93(v89, v17, v2);
            v51 = v49;
            v52 = sub_224DAB228();
            v53 = sub_224DAF2A8();

            if (os_log_type_enabled(v52, v53))
            {
              v54 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              v92 = swift_slowAlloc();
              v98[0] = v92;
              *v54 = v84;
              sub_224B32DE8();
              v86 = v52;
              v55 = sub_224DAFD28();
              v56 = v50;
              v58 = v57;
              v85 = v53;
              v59 = v95;
              v95(v56, v2);
              v60 = sub_224A33F74(v55, v58, v98);

              *(v54 + 4) = v60;
              *(v54 + 12) = 2114;
              v61 = v49;
              v62 = _swift_stdlib_bridgeErrorToNSError();
              *(v54 + 14) = v62;
              v63 = v86;
              v64 = v87;
              *v87 = v62;
              _os_log_impl(&dword_224A2F000, v63, v85, "Unable to clean up item at %{public}s: %{public}@", v54, 0x16u);
              sub_224A3311C(v64, &unk_27D6F69F0, &unk_224DB3900);
              MEMORY[0x22AA5EED0](v64, -1, -1);
              v65 = v92;
              __swift_destroy_boxed_opaque_existential_1(v92);
              MEMORY[0x22AA5EED0](v65, -1, -1);
              MEMORY[0x22AA5EED0](v54, -1, -1);

              v59(v17, v2);
            }

            else
            {

              v66 = v95;
              v95(v50, v2);
              v66(v17, v2);
            }

            v14 = v94;
          }

          v27 = v93;
        }

        else
        {
          (*v97)(v17, v2);
        }

        v30 += v96;
        if (!--v26)
        {
          break;
        }

        v27(v17, v30, v2);
      }
    }
  }

  else
  {
    v67 = v98[0];
    v68 = sub_224DA9528();

    swift_willThrow();
    if (qword_281351438 != -1)
    {
      swift_once();
    }

    v69 = sub_224DAB258();
    __swift_project_value_buffer(v69, qword_281364D78);
    (*(v3 + 16))(v10, a1, v2);
    v70 = v68;
    v71 = sub_224DAB228();
    v72 = sub_224DAF2A8();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v74 = v2;
      v75 = swift_slowAlloc();
      v98[0] = v75;
      *v73 = 136446466;
      sub_224B32DE8();
      v76 = sub_224DAFD28();
      v78 = v77;
      (*(v3 + 8))(v10, v74);
      v79 = sub_224A33F74(v76, v78, v98);

      *(v73 + 4) = v79;
      *(v73 + 12) = 2114;
      v80 = v68;
      v81 = _swift_stdlib_bridgeErrorToNSError();
      *(v73 + 14) = v81;
      v82 = v97;
      *v97 = v81;
      _os_log_impl(&dword_224A2F000, v71, v72, "Unable to clean up %{public}s: %{public}@", v73, 0x16u);
      sub_224A3311C(v82, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v82, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x22AA5EED0](v75, -1, -1);
      MEMORY[0x22AA5EED0](v73, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v10, v2);
    }
  }
}

unint64_t sub_224B32DE8()
{
  result = qword_281351A70;
  if (!qword_281351A70)
  {
    sub_224DA9688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281351A70);
  }

  return result;
}

uint64_t sub_224B32E48()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v17[-v2];
  v4 = sub_224DA9688();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28135CCF0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_281365440);
  sub_224B330C4(v9, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_224A3311C(v3, &unk_27D6F4680, &unk_224DB4610);
  }

  (*(v5 + 32))(v8, v3, v4);
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_224DA95F8();
  v18[0] = 0;
  v13 = [v11 removeItemAtURL:v12 error:v18];

  if (v13)
  {
    v14 = v18[0];
  }

  else
  {
    v15 = v18[0];
    v16 = sub_224DA9528();

    swift_willThrow();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_224B330C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance CHSPairingState(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 == 2)
  {
    return 0;
  }

  v4 = *a2;
  if (*a2 == 2)
  {
    return 1;
  }

  if (v2 == 1)
  {
    return 0;
  }

  if (v4 == 1)
  {
    return 1;
  }

  if (v2 == 3)
  {
    return 0;
  }

  if (v2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v4 == 3)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_224B331A4()
{
  result = qword_27D6F3DA8;
  if (!qword_27D6F3DA8)
  {
    type metadata accessor for CHSPairingState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3DA8);
  }

  return result;
}

uint64_t sub_224B331FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == 2)
  {
    return 1;
  }

  v4 = *a1;
  if (*a1 == 2)
  {
    return 0;
  }

  if (v2 == 1)
  {
    return 1;
  }

  if (v4 == 1)
  {
    return 0;
  }

  if (v2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = !v5;
  if (v4 == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if (v2 == 3)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_224B33260(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 == 2)
  {
    return 1;
  }

  v4 = *a2;
  if (*a2 == 2)
  {
    return 0;
  }

  if (v2 == 1)
  {
    return 1;
  }

  if (v4 == 1)
  {
    return 0;
  }

  if (v2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = !v5;
  if (v4 == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  if (v2 == 3)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_224B332C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == 2)
  {
    return 0;
  }

  v4 = *a1;
  if (*a1 == 2)
  {
    return 1;
  }

  if (v2 == 1)
  {
    return 0;
  }

  if (v4 == 1)
  {
    return 1;
  }

  if (v2 == 3)
  {
    return 0;
  }

  if (v2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v4 == 3)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_224B3340C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_224B334D4()
{
  v1 = *(*v0 + 16);

  return v1;
}

unint64_t sub_224B3350C()
{
  result = qword_281351D08[0];
  if (!qword_281351D08[0])
  {
    type metadata accessor for EmptyKey();
    result = swift_getWitnessTable();
    atomic_store(result, qword_281351D08);
  }

  return result;
}

id sub_224B336C0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_224B3372C()
{
  v12 = v0;
  ObjectType = swift_getObjectType();
  v1 = sub_224DA9538();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3DD8, &qword_224DB4B60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_224DB30F0;
  *(v6 + 32) = sub_224A3B79C(0, &unk_27D6F3DE0, 0x277CBEA60);
  *(v6 + 40) = sub_224A3B79C(0, &qword_2813509B8, 0x277CFA210);

  sub_224DAF628();

  if (v21)
  {
    sub_224A739A4(&v20, &v22);
    swift_dynamicCast();
    v8 = v19;
    v9 = MEMORY[0x277D84F90];
    v18 = MEMORY[0x277D84F90];
    sub_224DAF618();
    sub_224B339F4();
    while (1)
    {
      sub_224DAF738();
      if (!v17)
      {
        break;
      }

      sub_224A739A4(&v16, &v13);
      if ((swift_dynamicCast() & 1) != 0 && v14)
      {
        MEMORY[0x22AA5D350]();
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_224DAF038();
        }

        sub_224DAF078();
        v9 = v18;
      }
    }

    (*(v2 + 8))(v5, v1);
    v10 = v12;
    *&v12[OBJC_IVAR___CHSReplicatedControlDescriptorsBox_descriptors] = v9;
    v15.receiver = v10;
    v15.super_class = ObjectType;
    return objc_msgSendSuper2(&v15, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_224B339F4()
{
  result = qword_27D6F3DF0;
  if (!qword_27D6F3DF0)
  {
    sub_224DA9538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3DF0);
  }

  return result;
}

id sub_224B33A70()
{
  v0 = sub_224DAA0D8();
  v1 = [v0 extensionIdentity];

  return v1;
}

uint64_t sub_224B33AB8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_224DAA0D8();
  a1[3] = sub_224AB43D8();
  result = sub_224B36084(&qword_27D6F3E88, sub_224AB43D8, MEMORY[0x277D85378]);
  a1[4] = result;
  *a1 = v2;
  return result;
}

uint64_t sub_224B33B2C(uint64_t a1)
{
  result = sub_224B36084(&qword_2813518A8, MEMORY[0x277CF9FD8], MEMORY[0x277CF9FE0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224B33B84(uint64_t a1)
{
  v2 = v1;
  v3 = sub_224DA9F08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10ChronoCore14ControlSession_taskPriority;
  swift_beginAccess();
  v9 = *(v4 + 16);
  v9(v7, v1 + v8, v3);
  sub_224B36084(&qword_2813519D8, MEMORY[0x277CF9F40], MEMORY[0x277CF9F50]);
  v10 = sub_224DAEDD8();
  v11 = *(v4 + 8);
  result = v11(v7, v3);
  if ((v10 & 1) == 0)
  {
    v36 = v11;
    if (qword_281351620 != -1)
    {
      swift_once();
    }

    v13 = sub_224DAB258();
    __swift_project_value_buffer(v13, qword_281364FE8);

    v14 = sub_224DAB228();
    v15 = sub_224DAF2A8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v38[0] = v35;
      *v16 = 136446466;
      v34 = v14;
      v17 = sub_224DAA0C8();
      v19 = sub_224A33F74(v17, v18, v38);
      v33 = v15;
      v20 = v9;
      v21 = v19;

      *(v16 + 4) = v21;
      *(v16 + 12) = 2082;
      v20(v7, v2 + v8, v3);
      v22 = sub_224DA9EC8();
      v24 = v23;
      v36(v7, v3);
      v25 = sub_224A33F74(v22, v24, v38);
      v9 = v20;

      *(v16 + 14) = v25;
      v14 = v34;
      _os_log_impl(&dword_224A2F000, v34, v33, "[%{public}s] Task priority did change: %{public}s", v16, 0x16u);
      v26 = v35;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v26, -1, -1);
      MEMORY[0x22AA5EED0](v16, -1, -1);
    }

    sub_224A3317C(*(v2 + 24) + 96, v38);
    v27 = v39;
    v28 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v9(v7, v2 + v8, v3);
    v29 = *(v2 + 16);
    v37[3] = sub_224DAA0F8();
    v37[4] = sub_224B36084(&qword_2813518B0, MEMORY[0x277CF9FD8], &unk_224DB4B68);
    v37[0] = v29;
    v30 = *(v28 + 8);
    v31 = *(v30 + 8);

    v31(v7, v37, v27, v30);
    v36(v7, v3);
    __swift_destroy_boxed_opaque_existential_1(v37);
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return result;
}

void sub_224B33F84()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v48 = &v47 - v4;
  v5 = sub_224DAC2B8();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v49 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAD158();
  v53 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281351620 != -1)
  {
    swift_once();
  }

  v12 = sub_224DAB258();
  __swift_project_value_buffer(v12, qword_281364FE8);

  v13 = sub_224DAB228();
  v14 = sub_224DAF2A8();

  v15 = os_log_type_enabled(v13, v14);
  v50 = v8;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v58[0] = v17;
    *v16 = 136446466;
    v18 = sub_224DAA0C8();
    v20 = sub_224A33F74(v18, v19, v58);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v21 = OBJC_IVAR____TtC10ChronoCore14ControlSession_environmentModifiers;
    swift_beginAccess();
    v22 = v53;
    (*(v53 + 16))(v11, v1 + v21, v8);
    v23 = sub_224DAD008();
    v25 = v24;
    (*(v22 + 8))(v11, v8);
    v26 = sub_224A33F74(v23, v25, v58);

    *(v16 + 14) = v26;
    _os_log_impl(&dword_224A2F000, v13, v14, "[%{public}s] Environment modifiers did change: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v17, -1, -1);
    MEMORY[0x22AA5EED0](v16, -1, -1);
  }

  v27 = OBJC_IVAR____TtC10ChronoCore14ControlSession__environmentModifierAssertion;
  v28 = *(v1 + OBJC_IVAR____TtC10ChronoCore14ControlSession__environmentModifierAssertion);

  sub_224B35158(&v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3E60, &qword_224DB4C28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3E68, &qword_224DB4C30);
  if (swift_dynamicCast())
  {
    sub_224A36F98(v54, v58);
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_224DAF938();

    v56 = 0x536C6F72746E6F43;
    v57 = 0xEF2D6E6F69737365;
    v29 = sub_224DAA0E8();
    [v29 contentType];

    v30 = NSStringFromCHSControlContentType();
    if (v30)
    {
      v31 = v30;
      v32 = sub_224DAEE18();
      v34 = v33;
    }

    else
    {
      v34 = 0xE700000000000000;
      v32 = 0x6E776F6E6B6E55;
    }

    MEMORY[0x22AA5D210](v32, v34);

    MEMORY[0x22AA5D210](45, 0xE100000000000000);
    v35 = sub_224DAA0B8();
    MEMORY[0x22AA5D210](v35);

    v36 = v56;
    v37 = v57;
    sub_224DAA0D8();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    (*(*(v38 - 8) + 56))(v48, 1, 1, v38);
    v39 = v49;
    sub_224DAC298();
    v40 = v59;
    v41 = v60;
    __swift_project_boxed_opaque_existential_1(v58, v59);
    v42 = (*(v41 + 8))(v39, v36, v37, v40, v41);

    *(v1 + v27) = v42;

    v43 = OBJC_IVAR____TtC10ChronoCore14ControlSession_environmentModifiers;
    swift_beginAccess();
    (*(v53 + 16))(v11, v1 + v43, v50);
    sub_224DADCB8();

    (*(v51 + 8))(v39, v52);
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  else
  {
    v55 = 0;
    memset(v54, 0, sizeof(v54));
    sub_224A3311C(v54, &qword_27D6F3E70, &qword_224DB4C38);
  }

  v44 = sub_224DAA0E8();
  v45 = [v44 contentType];

  if (!v45)
  {
    sub_224A3317C(*(v1 + 24) + 16, v58);
    __swift_project_boxed_opaque_existential_1(v58, v59);
    v46 = sub_224DAA0D8();
    sub_224C80650(v46);

    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  if (v28)
  {

    sub_224DADCC8();
  }
}

void sub_224B34624(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DACB98();
  v6 = MEMORY[0x28223BE20](v4, v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC10ChronoCore14ControlSession_visibility;
  if (*(v2 + OBJC_IVAR____TtC10ChronoCore14ControlSession_visibility) != a1)
  {
    v55 = v7;
    v56 = v6;
    if (qword_281351620 != -1)
    {
      swift_once();
    }

    v11 = sub_224DAB258();
    __swift_project_value_buffer(v11, qword_281364FE8);

    v12 = sub_224DAB228();
    v13 = sub_224DAF2A8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v57[0] = v15;
      *v14 = 136446466;
      v16 = sub_224DAA0C8();
      v18 = sub_224A33F74(v16, v17, v57);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v19 = sub_224DAF4D8();
      v21 = sub_224A33F74(v19, v20, v57);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_224A2F000, v12, v13, "[%{public}s] Visibility did change: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v15, -1, -1);
      MEMORY[0x22AA5EED0](v14, -1, -1);
    }

    v22 = *(v2 + OBJC_IVAR____TtC10ChronoCore14ControlSession__visibilityAssertion);
    if (v22)
    {
      v23 = *(v2 + v10) == 2;
      v24 = *(v22 + 144);
      v25 = *(v24 + 16);

      os_unfair_lock_lock(v25);
      sub_224A71EF0(v22, v23);
      os_unfair_lock_unlock(*(v24 + 16));
    }

    v26 = *(v2 + 24);
    sub_224A3317C(v26 + 216, v57);
    __swift_project_boxed_opaque_existential_1(v57, v58);
    if (sub_224DADA48())
    {
      v27 = sub_224DAA0D8();
      v28 = sub_224DACFB8();
    }

    else
    {
      v28 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v57);
    v29 = *(v2 + v10);
    if (v29 == 2 && v28)
    {
      if ([v28 disablesControlStateCaching])
      {

        v30 = sub_224DAB228();
        v31 = sub_224DAF2A8();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v54 = v26;
          v34 = v33;
          v57[0] = v33;
          *v32 = 136315138;
          v35 = sub_224DAA0C8();
          v37 = sub_224A33F74(v35, v36, v57);

          *(v32 + 4) = v37;
          _os_log_impl(&dword_224A2F000, v30, v31, "[%s] Updating non-cachable control state because we're now visible.", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v34);
          v38 = v34;
          v26 = v54;
          MEMORY[0x22AA5EED0](v38, -1, -1);
          MEMORY[0x22AA5EED0](v32, -1, -1);
        }

        v39 = sub_224DAA0E8();
        v40 = [v39 contentType];

        if (!v40)
        {
          sub_224A3317C(v26 + 16, v57);
          v41 = v58;
          v53 = v59;
          __swift_project_boxed_opaque_existential_1(v57, v58);
          v42 = sub_224DAA0D8();
          v43 = *MEMORY[0x277CF9BE8];
          v44 = v55;
          v45 = *(v55 + 104);
          v54 = v26;
          v46 = v56;
          v45(v9, v43, v56);
          (*(*(v53 + 8) + 32))(v42, v9, v41);

          v47 = v46;
          v26 = v54;
          (*(v44 + 8))(v9, v47);
          __swift_destroy_boxed_opaque_existential_1(v57);
        }
      }

      v29 = *(v2 + v10);
    }

    if (v29 >= 2)
    {
      if (v29 == 2)
      {
        v49 = *(v2 + OBJC_IVAR____TtC10ChronoCore14ControlSession_hasBeenVisiblySettledForCurrentVisibilitySession);
        *(v2 + OBJC_IVAR____TtC10ChronoCore14ControlSession_hasBeenVisiblySettledForCurrentVisibilitySession) = 1;
        sub_224B34BBC(v49);
        v50 = sub_224DAA0E8();
        v51 = [v50 contentType];

        if (!v51)
        {
          sub_224A3317C(v26 + 16, v57);
          __swift_project_boxed_opaque_existential_1(v57, v58);
          v52 = sub_224DAA0D8();
          sub_224C7E044(v52);

          __swift_destroy_boxed_opaque_existential_1(v57);
          return;
        }
      }
    }

    else
    {
      v48 = *(v2 + OBJC_IVAR____TtC10ChronoCore14ControlSession_hasBeenVisiblySettledForCurrentVisibilitySession);
      *(v2 + OBJC_IVAR____TtC10ChronoCore14ControlSession_hasBeenVisiblySettledForCurrentVisibilitySession) = 0;
      sub_224B34BBC(v48);
    }
  }
}

void sub_224B34BBC(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_224DADAA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10ChronoCore14ControlSession_hasBeenVisiblySettledForCurrentVisibilitySession;
  if (*(v1 + OBJC_IVAR____TtC10ChronoCore14ControlSession_hasBeenVisiblySettledForCurrentVisibilitySession) == v3)
  {
    return;
  }

  v10 = *(v1 + 24);
  sub_224A3317C(v10 + 176, &v53);
  v11 = *(&v54 + 1);
  v12 = v55;
  __swift_project_boxed_opaque_existential_1(&v53, *(&v54 + 1));
  v13 = (*(v12 + 24))(256, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  if (!v13)
  {
    return;
  }

  v42[1] = v9;
  v43 = v8;
  v47 = v5;
  v14 = sub_224A7B208(v13);
  v15 = v14;
  *&v53 = MEMORY[0x277D84F90];
  if (v14 >> 62)
  {
LABEL_27:
    v51 = v15 & 0xFFFFFFFFFFFFFF8;
    v16 = sub_224DAF838();
    v48 = v4;
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_28:
    v17 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v51 = v14 & 0xFFFFFFFFFFFFFF8;
  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v48 = v4;
  if (!v16)
  {
    goto LABEL_28;
  }

LABEL_5:
  v4 = 0;
  v50 = v15 & 0xC000000000000001;
  v17 = MEMORY[0x277D84F90];
  v45 = v13;
  v46 = v10;
  v49 = v16;
  do
  {
    v44 = v17;
    v18 = v4;
    while (1)
    {
      if (v50)
      {
        v19 = MEMORY[0x22AA5DCC0](v18, v15);
      }

      else
      {
        if (v18 >= *(v51 + 16))
        {
          goto LABEL_26;
        }

        v19 = *(v15 + 8 * v18 + 32);
      }

      v10 = v19;
      v4 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v20 = [v19 uniqueIdentifier];
      v21 = sub_224DAEE18();
      v13 = v22;

      v23 = sub_224DAA0E8();
      v24 = [v23 configurationIdentifier];

      if (!v24)
      {

        goto LABEL_8;
      }

      v25 = v15;
      v26 = v2;
      v27 = sub_224DAEE18();
      v29 = v28;

      if (v21 == v27 && v13 == v29)
      {
        break;
      }

      v30 = sub_224DAFD88();

      v2 = v26;
      v15 = v25;
      v16 = v49;
      if (v30)
      {
        goto LABEL_20;
      }

LABEL_8:

      ++v18;
      if (v4 == v16)
      {
        v10 = v46;
        v17 = v44;
        goto LABEL_29;
      }
    }

    v2 = v26;
    v15 = v25;
    v16 = v49;
LABEL_20:
    MEMORY[0x22AA5D350](v31);
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_224DAF038();
    }

    sub_224DAF078();
    v17 = v53;
    v13 = v45;
    v10 = v46;
  }

  while (v4 != v16);
LABEL_29:

  if (v17 >> 62)
  {
    v41 = sub_224DAF838();
    v33 = v47;
    v32 = v48;
    if (!v41)
    {
      goto LABEL_49;
    }

LABEL_31:
    if ((v17 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x22AA5DCC0](0, v17);
    }

    else
    {
      if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v34 = *(v17 + 32);
    }

    v35 = v34;

    sub_224A3317C(v10 + 216, &v53);
    __swift_project_boxed_opaque_existential_1(&v53, *(&v54 + 1));
    if (sub_224DADA48())
    {
      v36 = [v35 controlIdentity];
      v37 = sub_224DACFB8();

      __swift_destroy_boxed_opaque_existential_1(&v53);
      if (!v37)
      {

        return;
      }

      [v37 supportsPush];
      sub_224DAF5B8();
      swift_beginAccess();
      if (*(v10 + 45))
      {
        sub_224A3317C(v10 + 336, &v53);
        if (*(&v54 + 1))
        {
LABEL_38:
          sub_224A3317C(&v53, v52);
          if (*(&v54 + 1))
          {
            __swift_destroy_boxed_opaque_existential_1(&v53);
          }

          __swift_project_boxed_opaque_existential_1(v52, v52[3]);
          v38 = v43;
          sub_224DAD328();

          (*(v33 + 8))(v38, v32);
          v39 = v52;
          goto LABEL_43;
        }
      }

      else
      {
        v40 = *(v10 + 22);
        v53 = *(v10 + 21);
        v54 = v40;
        v55 = *(v10 + 46);
        if (*(&v40 + 1))
        {
          goto LABEL_38;
        }
      }

      (*(v33 + 8))(v43, v32);

      if (!*(&v54 + 1))
      {
        return;
      }
    }

    else
    {
    }

    v39 = &v53;
LABEL_43:
    __swift_destroy_boxed_opaque_existential_1(v39);
    return;
  }

  v33 = v47;
  v32 = v48;
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

LABEL_49:
}

uint64_t sub_224B35158@<X0>(uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = sub_224DAA0E8();
  v6 = [v5 contentType];

  v7 = *(v3 + 24);
  if (v6 == 1)
  {
    return sub_224A3317C((v7 + 7), a2);
  }

  v8 = v7[5];
  v9 = v7[6];
  v10 = __swift_project_boxed_opaque_existential_1(v7 + 2, v8);
  a2[3] = v8;
  a2[4] = *(v9 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v12 = *(*(v8 - 8) + 16);

  return v12(boxed_opaque_existential_1, v10, v8);
}

void sub_224B35230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a3;
  v9 = sub_224DAD158();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281351620 != -1)
  {
    swift_once();
  }

  v14 = sub_224DAB258();
  __swift_project_value_buffer(v14, qword_281364FE8);

  v15 = sub_224DAB228();
  v16 = sub_224DAF2A8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v42 = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v43 = a4;
    v41 = v19;
    *&v48[0] = v19;
    *v18 = 136446210;
    v20 = sub_224DAA0C8();
    v22 = v10;
    v23 = v13;
    v24 = v9;
    v25 = a5;
    v26 = sub_224A33F74(v20, v21, v48);

    *(v18 + 4) = v26;
    a5 = v25;
    v9 = v24;
    v13 = v23;
    v10 = v22;
    _os_log_impl(&dword_224A2F000, v15, v16, "[%{public}s] Initialized", v18, 0xCu);
    v27 = v41;
    __swift_destroy_boxed_opaque_existential_1(v41);
    a4 = v43;
    MEMORY[0x22AA5EED0](v27, -1, -1);
    v28 = v18;
    a2 = v42;
    MEMORY[0x22AA5EED0](v28, -1, -1);
  }

  (*(v10 + 16))(v13, a2, v9);
  v29 = OBJC_IVAR____TtC10ChronoCore14ControlSession_environmentModifiers;
  swift_beginAccess();
  (*(v10 + 24))(a1 + v29, v13, v9);
  swift_endAccess();
  sub_224B33F84();
  (*(v10 + 8))(v13, v9);
  v30 = sub_224DAA0D8();
  v31 = [v30 extensionIdentity];

  sub_224A3317C(a4 + 136, v48);
  sub_224A3317C(a4 + 296, &v45);
  type metadata accessor for ExtensionVisibilityAssertion();
  v32 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v33 = swift_allocObject();
  v34 = swift_slowAlloc();
  *v34 = 0;
  *(v33 + 16) = v34;
  v35 = v48[1];
  *(v32 + 24) = v48[0];
  *(v32 + 168) = 0u;
  *(v32 + 184) = 0u;
  *(v32 + 200) = 0u;
  *(v32 + 216) = 0u;
  *(v32 + 232) = 0u;
  *(v32 + 248) = 0u;
  *(v32 + 152) = 0u;
  *(v32 + 257) = 0u;
  *(v32 + 16) = v31;
  *(v32 + 40) = v35;
  *(v32 + 56) = v49;
  *(v32 + 96) = 0;
  *(v32 + 64) = 0u;
  *(v32 + 80) = 0u;
  *(v32 + 136) = v47;
  *(v32 + 144) = v33;
  v36 = v45;
  *(v32 + 120) = v46;
  *(v32 + 104) = v36;
  *(a1 + OBJC_IVAR____TtC10ChronoCore14ControlSession__visibilityAssertion) = v32;

  sub_224B35158(&v45);
  __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
  v37 = sub_224DAA0D8();
  sub_224DAD858();

  v38 = OBJC_IVAR____TtC10ChronoCore14ControlSession__lifetimeAssertion;
  swift_beginAccess();
  sub_224A71D4C(v48, a1 + v38);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v39 = *(a1 + OBJC_IVAR____TtC10ChronoCore14ControlSession_visibility);
  *(a1 + OBJC_IVAR____TtC10ChronoCore14ControlSession_visibility) = a5;
  sub_224B34624(v39);
}

void sub_224B35664()
{
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore14ControlSession__invalidated) == 1)
  {

    v1 = OBJC_IVAR____TtC10ChronoCore14ControlSession_taskPriority;
    v2 = sub_224DA9F08();
    (*(*(v2 - 8) + 8))(v0 + v1, v2);

    v3 = OBJC_IVAR____TtC10ChronoCore14ControlSession_environmentModifiers;
    v4 = sub_224DAD158();
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
    sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCore14ControlSession__lifetimeAssertion, &qword_27D6F3AE8, &unk_224DB9600);

    swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for ControlSession(uint64_t a1)
{
  result = qword_28135B9A8;
  if (!qword_28135B9A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224B357FC(uint64_t a1)
{
  result = sub_224DA9F08();
  if (v2 <= 0x3F)
  {
    result = sub_224DAD158();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_224B35900()
{
  v1 = OBJC_IVAR____TtC10ChronoCore14ControlSession__invalidated;
  if ((*(v0 + OBJC_IVAR____TtC10ChronoCore14ControlSession__invalidated) & 1) == 0)
  {
    v2 = v0;
    if (qword_281351620 != -1)
    {
      swift_once();
    }

    v3 = sub_224DAB258();
    __swift_project_value_buffer(v3, qword_281364FE8);

    v4 = sub_224DAB228();
    v5 = sub_224DAF2A8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20[0] = v7;
      *v6 = 136446210;
      v8 = sub_224DAA0C8();
      v10 = sub_224A33F74(v8, v9, v20);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_224A2F000, v4, v5, "[%{public}s] Invalidated", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x22AA5EED0](v7, -1, -1);
      MEMORY[0x22AA5EED0](v6, -1, -1);
    }

    *(v0 + v1) = 1;
    *(v0 + OBJC_IVAR____TtC10ChronoCore14ControlSession__visibilityAssertion) = 0;

    v11 = OBJC_IVAR____TtC10ChronoCore14ControlSession__lifetimeAssertion;
    swift_beginAccess();
    sub_224A8FA54(v2 + v11, v20);
    if (v21)
    {
      sub_224A3317C(v20, v17);
      sub_224A3311C(v20, &qword_27D6F3AE8, &unk_224DB9600);
      __swift_project_boxed_opaque_existential_1(v17, v18);
      sub_224DAE1F8();
      __swift_destroy_boxed_opaque_existential_1(v17);
    }

    else
    {
      sub_224A3311C(v20, &qword_27D6F3AE8, &unk_224DB9600);
    }

    if (*(v2 + OBJC_IVAR____TtC10ChronoCore14ControlSession__environmentModifierAssertion))
    {

      sub_224DADCC8();
    }

    sub_224A3317C(*(v2 + 24) + 96, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v14 = *(v2 + 16);
    v18 = sub_224DAA0F8();
    v19 = sub_224B36084(&qword_2813518B0, MEMORY[0x277CF9FD8], &unk_224DB4B68);
    v17[0] = v14;
    v15 = *(v13 + 8);
    v16 = *(v15 + 16);

    v16(v17, v12, v15);
    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }
}

uint64_t sub_224B35BF0()
{
  v1 = v0;
  v29 = sub_224DAD158();
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DA9F08();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_224DAF938();
  v32 = v30;
  v33 = v31;
  MEMORY[0x22AA5D210](0xD00000000000001CLL, 0x8000000224DC6140);
  v11 = sub_224DAA0B8();
  MEMORY[0x22AA5D210](v11);

  MEMORY[0x22AA5D210](0x6F72746E6F63202CLL, 0xEA00000000003D6CLL);
  v12 = sub_224DAA0E8();
  v13 = [v12 control];

  v14 = [v13 _loggingIdentifier];
  v15 = sub_224DAEE18();
  v17 = v16;

  MEMORY[0x22AA5D210](v15, v17);

  MEMORY[0x22AA5D210](0x6E65746E6F63202CLL, 0xEE003D6570795474);
  v18 = sub_224DAA0E8();
  [v18 contentType];

  v19 = sub_224DAF578();
  MEMORY[0x22AA5D210](v19);

  MEMORY[0x22AA5D210](0x69726F697270202CLL, 0xEB000000003D7974);
  v20 = OBJC_IVAR____TtC10ChronoCore14ControlSession_taskPriority;
  swift_beginAccess();
  (*(v7 + 16))(v10, v1 + v20, v6);
  sub_224B36084(&qword_27D6F3E78, MEMORY[0x277CF9F40], MEMORY[0x277CF9F60]);
  v21 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v21);

  (*(v7 + 8))(v10, v6);
  MEMORY[0x22AA5D210](0xD000000000000011, 0x8000000224DC6160);
  v22 = sub_224DAF4D8();
  MEMORY[0x22AA5D210](v22);

  MEMORY[0x22AA5D210](0xD000000000000018, 0x8000000224DC6180);
  v23 = OBJC_IVAR____TtC10ChronoCore14ControlSession_environmentModifiers;
  swift_beginAccess();
  v24 = v1 + v23;
  v25 = v29;
  (*(v2 + 16))(v5, v24, v29);
  sub_224B36084(&qword_27D6F3E80, MEMORY[0x277CF9C60], MEMORY[0x277CF9C70]);
  v26 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v26);

  (*(v2 + 8))(v5, v25);
  MEMORY[0x22AA5D210](62, 0xE100000000000000);
  return v32;
}

uint64_t sub_224B36084(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t EventReplicatorMessageType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7265766F63736964;
  v3 = 0x7974697669746361;
  v4 = 0x73656E656C617473;
  if (v1 != 4)
  {
    v4 = 7037793;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7463617265746E69;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t EventType.description.getter()
{
  v1 = v0[1];
  switch(v1)
  {
    case 0:
      return 0x7463617265746E69;
    case 1:
      return 0xD000000000000012;
    case 2:
      return 0x73656E656C617473;
  }

  v3 = *v0;
  sub_224DAF938();

  MEMORY[0x22AA5D210](v3, v1);
  return 0xD00000000000001BLL;
}

unint64_t sub_224B36294()
{
  v1 = 0x7463617265746E69;
  v2 = 0x73656E656C617473;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_224B36320@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_224B3D7B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_224B36360(uint64_t a1)
{
  v2 = sub_224B36B68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224B3639C(uint64_t a1)
{
  v2 = sub_224B36B68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224B363D8(uint64_t a1)
{
  v2 = sub_224B36C10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224B36414(uint64_t a1)
{
  v2 = sub_224B36C10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224B36450()
{
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](0);
  return sub_224DAFEA8();
}

uint64_t sub_224B36494(uint64_t a1)
{
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](0);
  return sub_224DAFEA8();
}

uint64_t sub_224B364E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_224DAFD88();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_224B36560(uint64_t a1)
{
  v2 = sub_224B36CB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224B3659C(uint64_t a1)
{
  v2 = sub_224B36CB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224B365D8(uint64_t a1)
{
  v2 = sub_224B36C64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224B36614(uint64_t a1)
{
  v2 = sub_224B36C64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224B36650(uint64_t a1)
{
  v2 = sub_224B36BBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224B3668C(uint64_t a1)
{
  v2 = sub_224B36BBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EventType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3E90, &qword_224DB4C40);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v35 = v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3E98, &qword_224DB4C48);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v32 = v27 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3EA0, &qword_224DB4C50);
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v9);
  v11 = v27 - v10;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3EA8, &qword_224DB4C58);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v12);
  v14 = v27 - v13;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3EB0, &qword_224DB4C60);
  v15 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v16);
  v18 = v27 - v17;
  v19 = v1[1];
  v27[1] = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224B36B68();
  sub_224DAFF08();
  switch(v19)
  {
    case 0:
      v40 = 1;
      sub_224B36C64();
      v21 = v38;
      sub_224DAFC98();
      (*(v29 + 8))(v11, v31);
      return (*(v15 + 8))(v18, v21);
    case 1:
      v41 = 2;
      sub_224B36C10();
      v20 = v32;
      v21 = v38;
      sub_224DAFC98();
      v23 = v33;
      v22 = v34;
      goto LABEL_6;
    case 2:
      v42 = 3;
      sub_224B36BBC();
      v20 = v35;
      v21 = v38;
      sub_224DAFC98();
      v23 = v36;
      v22 = v37;
LABEL_6:
      (*(v23 + 8))(v20, v22);
      return (*(v15 + 8))(v18, v21);
  }

  v39 = 0;
  sub_224B36CB8();
  v25 = v38;
  sub_224DAFC98();
  v26 = v30;
  sub_224DAFCC8();
  (*(v28 + 8))(v14, v26);
  return (*(v15 + 8))(v18, v25);
}

unint64_t sub_224B36B68()
{
  result = qword_27D6F3EB8;
  if (!qword_27D6F3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3EB8);
  }

  return result;
}

unint64_t sub_224B36BBC()
{
  result = qword_27D6F3EC0;
  if (!qword_27D6F3EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3EC0);
  }

  return result;
}

unint64_t sub_224B36C10()
{
  result = qword_27D6F3EC8;
  if (!qword_27D6F3EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3EC8);
  }

  return result;
}

unint64_t sub_224B36C64()
{
  result = qword_27D6F3ED0;
  if (!qword_27D6F3ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3ED0);
  }

  return result;
}

unint64_t sub_224B36CB8()
{
  result = qword_27D6F3ED8;
  if (!qword_27D6F3ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3ED8);
  }

  return result;
}

uint64_t EventType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3EE0, &qword_224DB4C68);
  v59 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v3);
  v67 = &v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3EE8, &qword_224DB4C70);
  v6 = *(v5 - 8);
  v63 = v5;
  v64 = v6;
  MEMORY[0x28223BE20](v5, v7);
  v66 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3EF0, &qword_224DB4C78);
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3EF8, &qword_224DB4C80);
  v60 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3F00, &qword_224DB4C88);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v55 - v20;
  v22 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_224B36B68();
  v23 = v69;
  sub_224DAFEF8();
  if (!v23)
  {
    v24 = v16;
    v56 = v13;
    v57 = 0;
    v25 = v66;
    v26 = v67;
    v27 = v68;
    v69 = v18;
    v58 = v21;
    v28 = sub_224DAFC78();
    v29 = *(v28 + 16);
    if (!v29 || ((v30 = *(v28 + 32), v29 == 1) ? (v31 = v30 == 4) : (v31 = 1), v31))
    {
      v32 = sub_224DAF988();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3F08, &qword_224DB4C90);
      *v34 = &type metadata for EventType;
      v35 = v58;
      sub_224DAFC18();
      sub_224DAF978();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
      (*(v69 + 8))(v35, v17);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v70);
    }

    if (*(v28 + 32) <= 1u)
    {
      if (!*(v28 + 32))
      {
        v71 = 0;
        sub_224B36CB8();
        v37 = v57;
        v38 = v58;
        sub_224DAFC08();
        if (v37)
        {
          v39 = *(v69 + 8);
          v40 = v38;
LABEL_21:
          v39(v40, v17);
          goto LABEL_9;
        }

        v52 = v17;
        v53 = v56;
        v45 = sub_224DAFC58();
        v46 = v54;
        (*(v60 + 8))(v24, v53);
        (*(v69 + 8))(v38, v52);
        swift_unknownObjectRelease();
        goto LABEL_27;
      }

      v72 = 1;
      sub_224B36C64();
      v47 = v57;
      v42 = v58;
      sub_224DAFC08();
      if (!v47)
      {
        (*(v61 + 8))(v12, v62);
        (*(v69 + 8))(v42, v17);
        swift_unknownObjectRelease();
        v45 = 0;
        v46 = 0;
LABEL_27:
        v41 = v65;
        goto LABEL_28;
      }

      v44 = v69;
LABEL_20:
      v39 = *(v44 + 8);
      v40 = v42;
      goto LABEL_21;
    }

    v41 = v65;
    if (v30 == 2)
    {
      v73 = 2;
      sub_224B36C10();
      v43 = v57;
      v42 = v58;
      sub_224DAFC08();
      v44 = v69;
      if (v43)
      {
        goto LABEL_20;
      }

      (*(v64 + 8))(v25, v63);
      (*(v44 + 8))(v42, v17);
      swift_unknownObjectRelease();
      v45 = 0;
      v46 = 1;
    }

    else
    {
      v74 = 3;
      sub_224B36BBC();
      v48 = v26;
      v50 = v57;
      v49 = v58;
      sub_224DAFC08();
      v51 = v69;
      v57 = v50;
      if (v50)
      {
        (*(v69 + 8))(v49, v17);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v70);
      }

      (*(v59 + 8))(v48, v27);
      (*(v51 + 8))(v49, v17);
      swift_unknownObjectRelease();
      v45 = 0;
      v46 = 2;
    }

LABEL_28:
    *v41 = v45;
    v41[1] = v46;
  }

  return __swift_destroy_boxed_opaque_existential_1(v70);
}

ChronoCore::EventReplicatorMessageType_optional __swiftcall EventReplicatorMessageType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_224DAFBF8();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_224B374E4()
{
  result = qword_27D6F3F10;
  if (!qword_27D6F3F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3F10);
  }

  return result;
}

uint64_t sub_224B37540(uint64_t a1)
{
  sub_224DAEE78();
}

void sub_224B3765C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0x7265766F63736964;
  v5 = 0xEE0068636E75614CLL;
  v6 = 0x7974697669746361;
  v7 = 0xEA00000000007373;
  v8 = 0x73656E656C617473;
  if (v2 != 4)
  {
    v8 = 7037793;
    v7 = 0xE300000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB000000006E6F69;
  v10 = 0x7463617265746E69;
  if (v2 != 1)
  {
    v10 = 0xD000000000000012;
    v9 = 0x8000000224DC4510;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t get_enum_tag_for_layout_string_10ChronoCore9EventTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_224B377AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224B37808(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_224B37858(void *result, int a2)
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

uint64_t getEnumTagSinglePayload for EventReplicatorMessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}