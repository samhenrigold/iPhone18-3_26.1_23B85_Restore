void sub_25BB7B53C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v32[0] = *v1;
  v32[1] = v2;
  v33 = *(v1 + 32);
  sub_25BB92394(v32, __dst);
  sub_25BB8A7E8(v32, sub_25BB8E45C, 0, __src);
  memcpy(__dst, __src, 0x48uLL);
  v3 = __dst[8];
  v4 = __dst[6];
  memcpy(v30, __src, sizeof(v30));
  sub_25BAA486C(__dst, v29, &qword_27FBB52A8, &qword_25BCC3938);
  while (1)
  {
    v5 = v30[5];
    if (!*(v30[5] + 16))
    {
      memcpy(v28, __src, sizeof(v28));
      sub_25BAA6F5C(v28, &qword_27FBB52A8, &qword_25BCC3938);
      memcpy(v29, v30, sizeof(v29));
      sub_25BAA6F5C(v29, &qword_27FBB52A8, &qword_25BCC3938);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19694();
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    v30[5] = v5;
    v28[0] = v9;
    if (v4)
    {
      v11 = *(v10 + 32);
      swift_beginAccess();

      LOBYTE(v11) = v4(v11, v28);
      swift_endAccess();
      if (v11)
      {
        v12 = *(v10 + 32);

        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB52B0, &qword_25BCC3940);
        v14 = sub_25BB92940(&qword_27FBB52C8, &qword_27FBB52B0, &qword_25BCC3940);
        sub_25BAB89AC(v12, v10, v30, v28, v13, v12, v14);
      }

      else
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB52B0, &qword_25BCC3940);
    swift_dynamicCastClassUnconditional();
    v15 = *(v10 + 16);
    v16 = *(v15 + 16);
    v17 = *(v3 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v3 + 24) >> 1, v19 = v3, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_32;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB52B8, &qword_25BCC3948);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB52C0, &qword_25BCC3950), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v26 = sub_25BB1B740(a1);
      }

      v24(v29, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7B978(uint64_t a1)
{
  v2 = v1[1];
  v33[0] = *v1;
  v33[1] = v2;
  v3 = v1[3];
  v33[2] = v1[2];
  v33[3] = v3;
  sub_25BB920D4(v33, __dst);
  sub_25BB8AAD8(v33, sub_25BB8E45C, 0, __src);
  memcpy(__dst, __src, 0x60uLL);
  v4 = __dst[11];
  v5 = __dst[9];
  memcpy(v31, __src, sizeof(v31));
  sub_25BAA486C(__dst, v30, &qword_27FBB51E8, &qword_25BCC3898);
  while (1)
  {
    v6 = v31[8];
    if (!*(v31[8] + 16))
    {
      memcpy(v29, __src, sizeof(v29));
      sub_25BAA6F5C(v29, &qword_27FBB51E8, &qword_25BCC3898);
      memcpy(v30, v31, sizeof(v30));
      sub_25BAA6F5C(v30, &qword_27FBB51E8, &qword_25BCC3898);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC196AC();
      v6 = v7;
    }

    v8 = *(v6 + 16);
    if (!v8)
    {
      break;
    }

    v9 = v8 - 1;
    v10 = v6 + 16 * v9;
    v11 = *(v10 + 32);
    LODWORD(v10) = *(v10 + 40);
    *(v6 + 16) = v9;
    v31[8] = v6;
    v29[0] = v10;
    if (v5)
    {
      v12 = *(v11 + 32);
      swift_beginAccess();

      LOBYTE(v12) = v5(v12, v29);
      swift_endAccess();
      if (v12)
      {
        v13 = *(v11 + 32);

        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51F0, &qword_25BCC38A0);
        v15 = sub_25BB92940(&qword_27FBB5208, &qword_27FBB51F0, &qword_25BCC38A0);
        sub_25BAB89AC(v13, v11, v31, v29, v14, v13, v15);
      }

      else
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51F0, &qword_25BCC38A0);
    swift_dynamicCastClassUnconditional();
    v16 = *(v11 + 16);
    v17 = *(v16 + 16);
    v18 = *(v4 + 16);
    if (__OFADD__(v18, v17))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v19 = *(v4 + 24) >> 1, v20 = v4, v19 < v18 + v17))
    {
      sub_25BAB1E30();
      v20 = v21;
      v19 = *(v21 + 24) >> 1;
    }

    if (*(v16 + 16))
    {
      if (v19 - *(v20 + 16) < v17)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v22 = *(v20 + 16);
        v23 = __OFADD__(v22, v17);
        v24 = v22 + v17;
        if (v23)
        {
          goto LABEL_32;
        }

        *(v20 + 16) = v24;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51F8, &qword_25BCC38A8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5200, &unk_25BCC38B0), swift_dynamicCastClass()))
    {

      v25 = swift_modifyAtWritableKeyPath();
      v27 = v26;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v27 = sub_25BB1B740(a1);
      }

      v25(v30, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7BDB4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v32[0] = *v1;
  v32[1] = v2;
  v32[2] = *(v1 + 32);
  v33 = *(v1 + 48);
  sub_25BB92234(v32, __dst);
  sub_25BB8ADC4(v32, sub_25BB8E45C, 0, __src);
  memcpy(__dst, __src, 0x58uLL);
  v3 = __dst[10];
  v4 = __dst[8];
  memcpy(v30, __src, sizeof(v30));
  sub_25BAA486C(__dst, v29, &qword_27FBB5238, &qword_25BCC38E0);
  while (1)
  {
    v5 = v30[7];
    if (!*(v30[7] + 16))
    {
      memcpy(v28, __src, sizeof(v28));
      sub_25BAA6F5C(v28, &qword_27FBB5238, &qword_25BCC38E0);
      memcpy(v29, v30, sizeof(v29));
      sub_25BAA6F5C(v29, &qword_27FBB5238, &qword_25BCC38E0);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC196C4();
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    v30[7] = v5;
    v28[0] = v9;
    if (v4)
    {
      v11 = *(v10 + 32);
      swift_beginAccess();

      LOBYTE(v11) = v4(v11, v28);
      swift_endAccess();
      if (v11)
      {
        v12 = *(v10 + 32);

        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5240, &qword_25BCC38E8);
        v14 = sub_25BB92940(&qword_27FBB5258, &qword_27FBB5240, &qword_25BCC38E8);
        sub_25BAB89AC(v12, v10, v30, v28, v13, v12, v14);
      }

      else
      {
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5240, &qword_25BCC38E8);
    swift_dynamicCastClassUnconditional();
    v15 = *(v10 + 16);
    v16 = *(v15 + 16);
    v17 = *(v3 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v3 + 24) >> 1, v19 = v3, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_32;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5248, &qword_25BCC38F0);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5250, &qword_25BCC38F8), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v26 = sub_25BB1B740(a1);
      }

      v24(v29, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7C1F8(uint64_t a1)
{
  sub_25BB8B0D0(*v1, *(v1 + 8) | (*(v1 + 9) << 8), sub_25BB8E45C, 0, &v41);
  v2 = v44;
  v3 = v45;
  v4 = v46;
  v5 = v47;
  v34 = v41;
  v35 = v42;
  v36 = v43;
  v37 = v44;
  v38 = v45;
  v39 = v46;
  v40 = v47;

  sub_25BA9D8C4(v3, v4);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {
      v27 = v38;
      v28 = v39;

      sub_25BA9D148(v27, v28);

      v29 = v45;
      v30 = v46;

      sub_25BA9D148(v29, v30);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC196F4();
      v2 = v6;
    }

    v7 = *(v2 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v2 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v2 + 16) = v8;
    v37 = v2;
    v33 = v9;
    if (v3)
    {
      v11 = *(v10 + 32);
      swift_beginAccess();
      LOBYTE(v11) = v3(v11, &v33);
      swift_endAccess();
      if (v11)
      {
        v12 = *(v10 + 32);
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A78, &qword_25BCC3F58);
        v14 = sub_25BB92940(&qword_27FBB5A90, &qword_27FBB5A78, &qword_25BCC3F58);
        sub_25BAB89AC(v12, v10, &v34, &v33, v13, v12, v14);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A78, &qword_25BCC3F58);
    swift_dynamicCastClassUnconditional();
    v15 = *(v10 + 16);
    v16 = *(v15 + 16);
    v17 = *(v5 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v5 + 24) >> 1, v19 = v5, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_31;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A80, &qword_25BCC3F60);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A88, &qword_25BCC3F68), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v26 = sub_25BB1B740(a1);
      }

      v24(v32, 0);
    }

    v2 = v37;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB7C5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_25BB8CFC8(sub_25BB8E45C, 0, &type metadata for Hardshrink, sub_25BAAF54C, sub_25BB00E68, a6, a7);
  v8 = *(&v39 + 1);
  v7 = v39;
  v9 = v40;
  v41 = v40;
  v42[0] = *(&v38 + 1);
  v36[0] = v38;
  v36[1] = v39;
  v37 = v40;
  sub_25BAA486C(v42, v34, &qword_27FBB5478, &qword_25BCC3AA8);
  v32 = v8;
  sub_25BA9D8C4(v7, v8);
  sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v10 = *(&v36[0] + 1);
    if (!*(*(&v36[0] + 1) + 16))
    {

      sub_25BA9D148(v7, v32);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v42, &qword_27FBB5478, &qword_25BCC3AA8);
      sub_25BA9D148(v7, v32);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1970C();
      v10 = v11;
    }

    v12 = *(v10 + 16);
    if (!v12)
    {
      break;
    }

    v13 = v12 - 1;
    v14 = v10 + 16 * v13;
    v15 = *(v14 + 32);
    LODWORD(v14) = *(v14 + 40);
    *(v10 + 16) = v13;
    *(&v36[0] + 1) = v10;
    v35 = v14;
    if (v7)
    {
      v16 = *(v15 + 32);
      swift_beginAccess();
      LOBYTE(v16) = v7(v16, &v35);
      swift_endAccess();
      if (v16)
      {
        v17 = *(v15 + 32);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5480, &qword_25BCC3AB0);
        v19 = sub_25BB92940(&qword_27FBB5498, &qword_27FBB5480, &qword_25BCC3AB0);
        sub_25BAB89AC(v17, v15, v36, &v35, v18, v17, v19);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5480, &qword_25BCC3AB0);
    swift_dynamicCastClassUnconditional();
    v20 = *(v15 + 16);
    v21 = *(v20 + 16);
    v22 = *(v9 + 16);
    if (__OFADD__(v22, v21))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v23 = *(v9 + 24) >> 1, v23 >= v22 + v21))
    {
      v24 = v9;
    }

    else
    {
      sub_25BAB1E30();
      v24 = v25;
      v23 = *(v25 + 24) >> 1;
    }

    if (*(v20 + 16))
    {
      if (v23 - *(v24 + 16) < v21)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v21)
      {
        v26 = *(v24 + 16);
        v27 = __OFADD__(v26, v21);
        v28 = v26 + v21;
        if (v27)
        {
          goto LABEL_32;
        }

        *(v24 + 16) = v28;
      }
    }

    else
    {

      if (v21)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5488, &qword_25BCC3AB8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5490, &qword_25BCC3AC0), swift_dynamicCastClass()))
    {

      v29 = swift_modifyAtWritableKeyPath();
      v31 = v30;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v31 = sub_25BB1B740(a1);
      }

      v29(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7CA40(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for LogSigmoid.Kind, sub_25BAAF54C, sub_25BB00E88);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v34[0] = v1;
  v34[1] = v3;
  v34[2] = v5;
  v34[3] = v7;

  v30 = v6;
  sub_25BA9D8C4(v4, v6);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4, v30);

      sub_25BA9D148(v4, v30);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19724();
      v2 = v9;
    }

    v10 = *(v2 + 16);
    if (!v10)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = v2 + 16 * v11;
    v13 = *(v12 + 32);
    LODWORD(v12) = *(v12 + 40);
    *(v2 + 16) = v11;
    v34[0] = v2;
    v33 = v12;
    if (v4)
    {
      v14 = *(v13 + 32);
      swift_beginAccess();
      LOBYTE(v14) = v4(v14, &v33);
      swift_endAccess();
      if (v14)
      {
        v15 = *(v13 + 32);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5600, &qword_25BCC3BD8);
        v17 = sub_25BB92940(&qword_27FBB5618, &qword_27FBB5600, &qword_25BCC3BD8);
        sub_25BAB89AC(v15, v13, v34, &v33, v16, v15, v17);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5600, &qword_25BCC3BD8);
    swift_dynamicCastClassUnconditional();
    v18 = *(v13 + 16);
    v19 = *(v18 + 16);
    v20 = *(v8 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v8 + 24) >> 1, v22 = v8, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5608, &qword_25BCC3BE0);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5610, &qword_25BCC3BE8), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v29 = sub_25BB1B740(a1);
      }

      v27(v32, 0);
    }

    v2 = v34[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB7CE2C(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for LogSoftmax.Kind, sub_25BAAF54C, sub_25BB00EA8);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v34[0] = v1;
  v34[1] = v3;
  v34[2] = v5;
  v34[3] = v7;

  v30 = v6;
  sub_25BA9D8C4(v4, v6);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4, v30);

      sub_25BA9D148(v4, v30);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1973C();
      v2 = v9;
    }

    v10 = *(v2 + 16);
    if (!v10)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = v2 + 16 * v11;
    v13 = *(v12 + 32);
    LODWORD(v12) = *(v12 + 40);
    *(v2 + 16) = v11;
    v34[0] = v2;
    v33 = v12;
    if (v4)
    {
      v14 = *(v13 + 32);
      swift_beginAccess();
      LOBYTE(v14) = v4(v14, &v33);
      swift_endAccess();
      if (v14)
      {
        v15 = *(v13 + 32);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5570, &qword_25BCC3B68);
        v17 = sub_25BB92940(&qword_27FBB5588, &qword_27FBB5570, &qword_25BCC3B68);
        sub_25BAB89AC(v15, v13, v34, &v33, v16, v15, v17);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5570, &qword_25BCC3B68);
    swift_dynamicCastClassUnconditional();
    v18 = *(v13 + 16);
    v19 = *(v18 + 16);
    v20 = *(v8 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v8 + 24) >> 1, v22 = v8, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5578, &qword_25BCC3B70);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5580, &qword_25BCC3B78), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v29 = sub_25BB1B740(a1);
      }

      v27(v32, 0);
    }

    v2 = v34[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB7D218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_25BB8D6DC(sub_25BB8E45C, 0, &type metadata for ScaledTanh, sub_25BAAF54C, sub_25BB00EC8, a6, a7);
  v8 = *(&v39 + 1);
  v9 = v39;
  v7 = v40;
  v41 = v40;
  v42[0] = *(&v38 + 1);
  v36[0] = v38;
  v36[1] = v39;
  v37 = v40;
  sub_25BAA486C(v42, v34, &qword_27FBB5640, &qword_25BCC3C08);
  v32 = v8;
  sub_25BA9D8C4(v9, v8);
  sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v10 = *(&v36[0] + 1);
    if (!*(*(&v36[0] + 1) + 16))
    {

      sub_25BA9D148(v9, v32);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v42, &qword_27FBB5640, &qword_25BCC3C08);
      sub_25BA9D148(v9, v32);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19754();
      v10 = v11;
    }

    v12 = *(v10 + 16);
    if (!v12)
    {
      break;
    }

    v13 = v12 - 1;
    v14 = v10 + 16 * v13;
    v15 = *(v14 + 32);
    LODWORD(v14) = *(v14 + 40);
    *(v10 + 16) = v13;
    *(&v36[0] + 1) = v10;
    v35 = v14;
    if (v9)
    {
      v16 = *(v15 + 32);
      swift_beginAccess();
      LOBYTE(v16) = v9(v16, &v35);
      swift_endAccess();
      if (v16)
      {
        v17 = *(v15 + 32);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5648, &qword_25BCC3C10);
        v19 = sub_25BB92940(&qword_27FBB5660, &qword_27FBB5648, &qword_25BCC3C10);
        sub_25BAB89AC(v17, v15, v36, &v35, v18, v17, v19);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5648, &qword_25BCC3C10);
    swift_dynamicCastClassUnconditional();
    v20 = *(v15 + 16);
    v21 = *(v20 + 16);
    v22 = *(v7 + 16);
    if (__OFADD__(v22, v21))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v23 = *(v7 + 24) >> 1, v23 >= v22 + v21))
    {
      v24 = v7;
    }

    else
    {
      sub_25BAB1E30();
      v24 = v25;
      v23 = *(v25 + 24) >> 1;
    }

    if (*(v20 + 16))
    {
      if (v23 - *(v24 + 16) < v21)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v21)
      {
        v26 = *(v24 + 16);
        v27 = __OFADD__(v26, v21);
        v28 = v26 + v21;
        if (v27)
        {
          goto LABEL_32;
        }

        *(v24 + 16) = v28;
      }
    }

    else
    {

      if (v21)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5650, &qword_25BCC3C18);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5658, &qword_25BCC3C20), swift_dynamicCastClass()))
    {

      v29 = swift_modifyAtWritableKeyPath();
      v31 = v30;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v31 = sub_25BB1B740(a1);
      }

      v29(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7D678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_25BB8CFC8(sub_25BB8E45C, 0, &type metadata for Softshrink, sub_25BAAF54C, sub_25BB00EE8, a6, a7);
  v8 = *(&v39 + 1);
  v7 = v39;
  v9 = v40;
  v41 = v40;
  v42[0] = *(&v38 + 1);
  v36[0] = v38;
  v36[1] = v39;
  v37 = v40;
  sub_25BAA486C(v42, v34, &qword_27FBB5408, &qword_25BCC3A50);
  v32 = v8;
  sub_25BA9D8C4(v7, v8);
  sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v10 = *(&v36[0] + 1);
    if (!*(*(&v36[0] + 1) + 16))
    {

      sub_25BA9D148(v7, v32);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v42, &qword_27FBB5408, &qword_25BCC3A50);
      sub_25BA9D148(v7, v32);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1976C();
      v10 = v11;
    }

    v12 = *(v10 + 16);
    if (!v12)
    {
      break;
    }

    v13 = v12 - 1;
    v14 = v10 + 16 * v13;
    v15 = *(v14 + 32);
    LODWORD(v14) = *(v14 + 40);
    *(v10 + 16) = v13;
    *(&v36[0] + 1) = v10;
    v35 = v14;
    if (v7)
    {
      v16 = *(v15 + 32);
      swift_beginAccess();
      LOBYTE(v16) = v7(v16, &v35);
      swift_endAccess();
      if (v16)
      {
        v17 = *(v15 + 32);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5410, &qword_25BCC3A58);
        v19 = sub_25BB92940(&qword_27FBB5428, &qword_27FBB5410, &qword_25BCC3A58);
        sub_25BAB89AC(v17, v15, v36, &v35, v18, v17, v19);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5410, &qword_25BCC3A58);
    swift_dynamicCastClassUnconditional();
    v20 = *(v15 + 16);
    v21 = *(v20 + 16);
    v22 = *(v9 + 16);
    if (__OFADD__(v22, v21))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v23 = *(v9 + 24) >> 1, v23 >= v22 + v21))
    {
      v24 = v9;
    }

    else
    {
      sub_25BAB1E30();
      v24 = v25;
      v23 = *(v25 + 24) >> 1;
    }

    if (*(v20 + 16))
    {
      if (v23 - *(v24 + 16) < v21)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v21)
      {
        v26 = *(v24 + 16);
        v27 = __OFADD__(v26, v21);
        v28 = v26 + v21;
        if (v27)
        {
          goto LABEL_32;
        }

        *(v24 + 16) = v28;
      }
    }

    else
    {

      if (v21)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5418, &qword_25BCC3A60);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5420, &qword_25BCC3A68), swift_dynamicCastClass()))
    {

      v29 = swift_modifyAtWritableKeyPath();
      v31 = v30;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v31 = sub_25BB1B740(a1);
      }

      v29(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7DAD8(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for Tanhshrink.Kind, sub_25BAAF54C, sub_25BB00F08);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v34[0] = v1;
  v34[1] = v3;
  v34[2] = v5;
  v34[3] = v7;

  v30 = v6;
  sub_25BA9D8C4(v4, v6);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4, v30);

      sub_25BA9D148(v4, v30);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19784();
      v2 = v9;
    }

    v10 = *(v2 + 16);
    if (!v10)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = v2 + 16 * v11;
    v13 = *(v12 + 32);
    LODWORD(v12) = *(v12 + 40);
    *(v2 + 16) = v11;
    v34[0] = v2;
    v33 = v12;
    if (v4)
    {
      v14 = *(v13 + 32);
      swift_beginAccess();
      LOBYTE(v14) = v4(v14, &v33);
      swift_endAccess();
      if (v14)
      {
        v15 = *(v13 + 32);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5430, &qword_25BCC3A70);
        v17 = sub_25BB92940(&qword_27FBB5448, &qword_27FBB5430, &qword_25BCC3A70);
        sub_25BAB89AC(v15, v13, v34, &v33, v16, v15, v17);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5430, &qword_25BCC3A70);
    swift_dynamicCastClassUnconditional();
    v18 = *(v13 + 16);
    v19 = *(v18 + 16);
    v20 = *(v8 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v8 + 24) >> 1, v22 = v8, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5438, &qword_25BCC3A78);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5440, &qword_25BCC3A80), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v29 = sub_25BB1B740(a1);
      }

      v27(v32, 0);
    }

    v2 = v34[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB7DEC4(uint64_t a1)
{
  sub_25BB8B3A8(*v1, *(v1 + 8), *(v1 + 16) | (*(v1 + 17) << 8), sub_25BB8E45C, 0, &v35);
  v39[1] = v36;
  v39[2] = v37;
  v39[0] = v35;
  v2 = v38;
  v40 = v38;
  v3 = v37;
  v31 = v35;
  v32 = v36;
  v33 = v37;
  v34 = v38;
  sub_25BAA486C(v39, v29, &qword_27FBB5A50, &qword_25BCC3F38);
  while (1)
  {
    v4 = *(&v32 + 1);
    if (!*(*(&v32 + 1) + 16))
    {
      v27[0] = v31;
      v27[1] = v32;
      v27[2] = v33;
      v28 = v34;
      sub_25BAA6F5C(v27, &qword_27FBB5A50, &qword_25BCC3F38);
      v29[0] = v35;
      v29[1] = v36;
      v29[2] = v37;
      v30 = v38;
      sub_25BAA6F5C(v29, &qword_27FBB5A50, &qword_25BCC3F38);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1979C();
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    *(&v32 + 1) = v4;
    LODWORD(v27[0]) = v8;
    if (v3)
    {
      v10 = *(v9 + 32);
      swift_beginAccess();
      LOBYTE(v10) = v3(v10, v27);
      swift_endAccess();
      if (v10)
      {
        v11 = *(v9 + 32);
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A58, &qword_25BCC3F40);
        v13 = sub_25BB92940(&qword_27FBB5A70, &qword_27FBB5A58, &qword_25BCC3F40);
        sub_25BAB89AC(v11, v9, &v31, v27, v12, v11, v13);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A58, &qword_25BCC3F40);
    swift_dynamicCastClassUnconditional();
    v14 = *(v9 + 16);
    v15 = *(v14 + 16);
    v16 = *(v2 + 16);
    if (__OFADD__(v16, v15))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v17 = *(v2 + 24) >> 1, v18 = v2, v17 < v16 + v15))
    {
      sub_25BAB1E30();
      v18 = v19;
      v17 = *(v19 + 24) >> 1;
    }

    if (*(v14 + 16))
    {
      if (v17 - *(v18 + 16) < v15)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v20 = *(v18 + 16);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_31;
        }

        *(v18 + 16) = v22;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A60, &qword_25BCC3F48);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A68, &qword_25BCC3F50), swift_dynamicCastClass()))
    {

      v23 = swift_modifyAtWritableKeyPath();
      v25 = v24;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v25 = sub_25BB1B740(a1);
      }

      v23(v29, 0);
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB7E2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_25BB8D6DC(sub_25BB8E45C, 0, &type metadata for Hardsigmoid, sub_25BAAF54C, sub_25BB00F48, a6, a7);
  v8 = *(&v39 + 1);
  v9 = v39;
  v7 = v40;
  v41 = v40;
  v42[0] = *(&v38 + 1);
  v36[0] = v38;
  v36[1] = v39;
  v37 = v40;
  sub_25BAA486C(v42, v34, &qword_27FBB5340, &qword_25BCC39B0);
  v32 = v8;
  sub_25BA9D8C4(v9, v8);
  sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v10 = *(&v36[0] + 1);
    if (!*(*(&v36[0] + 1) + 16))
    {

      sub_25BA9D148(v9, v32);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v42, &qword_27FBB5340, &qword_25BCC39B0);
      sub_25BA9D148(v9, v32);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC197B4();
      v10 = v11;
    }

    v12 = *(v10 + 16);
    if (!v12)
    {
      break;
    }

    v13 = v12 - 1;
    v14 = v10 + 16 * v13;
    v15 = *(v14 + 32);
    LODWORD(v14) = *(v14 + 40);
    *(v10 + 16) = v13;
    *(&v36[0] + 1) = v10;
    v35 = v14;
    if (v9)
    {
      v16 = *(v15 + 32);
      swift_beginAccess();
      LOBYTE(v16) = v9(v16, &v35);
      swift_endAccess();
      if (v16)
      {
        v17 = *(v15 + 32);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5348, &qword_25BCC39B8);
        v19 = sub_25BB92940(&qword_27FBB5360, &qword_27FBB5348, &qword_25BCC39B8);
        sub_25BAB89AC(v17, v15, v36, &v35, v18, v17, v19);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5348, &qword_25BCC39B8);
    swift_dynamicCastClassUnconditional();
    v20 = *(v15 + 16);
    v21 = *(v20 + 16);
    v22 = *(v7 + 16);
    if (__OFADD__(v22, v21))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v23 = *(v7 + 24) >> 1, v23 >= v22 + v21))
    {
      v24 = v7;
    }

    else
    {
      sub_25BAB1E30();
      v24 = v25;
      v23 = *(v25 + 24) >> 1;
    }

    if (*(v20 + 16))
    {
      if (v23 - *(v24 + 16) < v21)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v21)
      {
        v26 = *(v24 + 16);
        v27 = __OFADD__(v26, v21);
        v28 = v26 + v21;
        if (v27)
        {
          goto LABEL_32;
        }

        *(v24 + 16) = v28;
      }
    }

    else
    {

      if (v21)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5350, &qword_25BCC39C0);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5358, &qword_25BCC39C8), swift_dynamicCastClass()))
    {

      v29 = swift_modifyAtWritableKeyPath();
      v31 = v30;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v31 = sub_25BB1B740(a1);
      }

      v29(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7E730(uint64_t a1)
{
  sub_25BB8B668(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), sub_25BB8E45C, 0, &v33);
  v37[2] = v35;
  v37[3] = v36;
  v37[0] = v33;
  v37[1] = v34;
  v2 = *(&v36 + 1);
  v3 = *(&v35 + 1);
  v29 = v33;
  v30 = v34;
  v31 = v35;
  v32 = v36;
  sub_25BAA486C(v37, v28, &qword_27FBB57D0, &qword_25BCC3D38);
  while (1)
  {
    v4 = v31;
    if (!*(v31 + 16))
    {
      v27[0] = v29;
      v27[1] = v30;
      v27[2] = v31;
      v27[3] = v32;
      sub_25BAA6F5C(v27, &qword_27FBB57D0, &qword_25BCC3D38);
      v28[0] = v33;
      v28[1] = v34;
      v28[2] = v35;
      v28[3] = v36;
      sub_25BAA6F5C(v28, &qword_27FBB57D0, &qword_25BCC3D38);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC197CC();
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    *&v31 = v4;
    LODWORD(v27[0]) = v8;
    if (v3)
    {
      v10 = *(v9 + 32);
      swift_beginAccess();
      LOBYTE(v10) = v3(v10, v27);
      swift_endAccess();
      if (v10)
      {
        v11 = *(v9 + 32);
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB57D8, &qword_25BCC3D40);
        v13 = sub_25BB92940(&qword_27FBB57F0, &qword_27FBB57D8, &qword_25BCC3D40);
        sub_25BAB89AC(v11, v9, &v29, v27, v12, v11, v13);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB57D8, &qword_25BCC3D40);
    swift_dynamicCastClassUnconditional();
    v14 = *(v9 + 16);
    v15 = *(v14 + 16);
    v16 = *(v2 + 16);
    if (__OFADD__(v16, v15))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v17 = *(v2 + 24) >> 1, v18 = v2, v17 < v16 + v15))
    {
      sub_25BAB1E30();
      v18 = v19;
      v17 = *(v19 + 24) >> 1;
    }

    if (*(v14 + 16))
    {
      if (v17 - *(v18 + 16) < v15)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v20 = *(v18 + 16);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_31;
        }

        *(v18 + 16) = v22;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB57E0, &qword_25BCC3D48);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB57E8, &qword_25BCC3D50), swift_dynamicCastClass()))
    {

      v23 = swift_modifyAtWritableKeyPath();
      v25 = v24;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v25 = sub_25BB1B740(a1);
      }

      v23(v28, 0);
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB7EB18(uint64_t a1)
{
  v2 = *(v1 + 16);
  v32[0] = *v1;
  v32[1] = v2;
  v32[2] = *(v1 + 32);
  v33 = *(v1 + 48);
  sub_25BB8B910(v32, sub_25BB8E45C, 0, __src);
  memcpy(__dst, __src, 0x58uLL);
  v3 = __dst[10];
  v4 = __dst[8];
  memcpy(v30, __src, sizeof(v30));
  sub_25BAA486C(__dst, v29, &qword_27FBB57A8, &qword_25BCC3D18);
  while (1)
  {
    v5 = v30[7];
    if (!*(v30[7] + 16))
    {
      memcpy(v28, v30, sizeof(v28));
      sub_25BAA6F5C(v28, &qword_27FBB57A8, &qword_25BCC3D18);
      memcpy(v29, __src, sizeof(v29));
      sub_25BAA6F5C(v29, &qword_27FBB57A8, &qword_25BCC3D18);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC197E4();
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    v30[7] = v5;
    v28[0] = v9;
    if (v4)
    {
      v11 = *(v10 + 32);
      swift_beginAccess();
      LOBYTE(v11) = v4(v11, v28);
      swift_endAccess();
      if (v11)
      {
        v12 = *(v10 + 32);
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB57B0, &qword_25BCC3D20);
        v14 = sub_25BB92940(&qword_27FBB57C8, &qword_27FBB57B0, &qword_25BCC3D20);
        sub_25BAB89AC(v12, v10, v30, v28, v13, v12, v14);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB57B0, &qword_25BCC3D20);
    swift_dynamicCastClassUnconditional();
    v15 = *(v10 + 16);
    v16 = *(v15 + 16);
    v17 = *(v3 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v3 + 24) >> 1, v19 = v3, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_31;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB57B8, &qword_25BCC3D28);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB57C0, &qword_25BCC3D30), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v26 = sub_25BB1B740(a1);
      }

      v24(v29, 0);
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB7EF18(uint64_t a1)
{
  sub_25BB8BBCC(*v1, *(v1 + 8), sub_25BB8E45C, 0, &v35, *(v1 + 16));
  v3 = *(&v37 + 1);
  v2 = v37;
  v4 = v38;
  v39 = v38;
  v40[0] = *(&v36 + 1);
  v31 = v35;
  v32 = v36;
  v33 = v37;
  v34 = v38;
  sub_25BAA486C(v40, v29, &qword_27FBB5898, &qword_25BCC3DD8);
  v27 = v3;
  sub_25BA9D8C4(v2, v3);
  sub_25BAA486C(&v39, v29, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v5 = *(&v32 + 1);
    if (!*(*(&v32 + 1) + 16))
    {

      sub_25BA9D148(v2, v27);
      sub_25BAA6F5C(&v39, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v40, &qword_27FBB5898, &qword_25BCC3DD8);
      sub_25BA9D148(v2, v27);
      sub_25BAA6F5C(&v39, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC197FC();
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    *(&v32 + 1) = v5;
    v30 = v9;
    if (v2)
    {
      v11 = *(v10 + 32);
      swift_beginAccess();
      LOBYTE(v11) = v2(v11, &v30);
      swift_endAccess();
      if (v11)
      {
        v12 = *(v10 + 32);
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB58A0, &qword_25BCC3DE0);
        v14 = sub_25BB92940(&qword_27FBB58B8, &qword_27FBB58A0, &qword_25BCC3DE0);
        sub_25BAB89AC(v12, v10, &v31, &v30, v13, v12, v14);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB58A0, &qword_25BCC3DE0);
    swift_dynamicCastClassUnconditional();
    v15 = *(v10 + 16);
    v16 = *(v15 + 16);
    v17 = *(v4 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v39, v29, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v18 = *(v4 + 24) >> 1, v18 >= v17 + v16))
    {
      v19 = v4;
    }

    else
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_32;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB58A8, &qword_25BCC3DE8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB58B0, &qword_25BCC3DF0), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v26 = sub_25BB1B740(a1);
      }

      v24(v29, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7F35C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v32[0] = *v1;
  v32[1] = v2;
  v33 = *(v1 + 32);
  sub_25BB8BE44(v32, sub_25BB8E45C, 0, __src);
  memcpy(__dst, __src, 0x48uLL);
  v3 = __dst[8];
  v4 = __dst[6];
  memcpy(v30, __src, sizeof(v30));
  sub_25BAA486C(__dst, v29, &qword_27FBB5870, &qword_25BCC3DB8);
  while (1)
  {
    v5 = v30[5];
    if (!*(v30[5] + 16))
    {
      memcpy(v28, v30, sizeof(v28));
      sub_25BAA6F5C(v28, &qword_27FBB5870, &qword_25BCC3DB8);
      memcpy(v29, __src, sizeof(v29));
      sub_25BAA6F5C(v29, &qword_27FBB5870, &qword_25BCC3DB8);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19814();
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    v30[5] = v5;
    v28[0] = v9;
    if (v4)
    {
      v11 = *(v10 + 32);
      swift_beginAccess();
      LOBYTE(v11) = v4(v11, v28);
      swift_endAccess();
      if (v11)
      {
        v12 = *(v10 + 32);
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5878, &qword_25BCC3DC0);
        v14 = sub_25BB92940(&qword_27FBB5890, &qword_27FBB5878, &qword_25BCC3DC0);
        sub_25BAB89AC(v12, v10, v30, v28, v13, v12, v14);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5878, &qword_25BCC3DC0);
    swift_dynamicCastClassUnconditional();
    v15 = *(v10 + 16);
    v16 = *(v15 + 16);
    v17 = *(v3 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v3 + 24) >> 1, v19 = v3, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_31;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5880, &qword_25BCC3DC8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5888, &qword_25BCC3DD0), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v26 = sub_25BB1B740(a1);
      }

      v24(v29, 0);
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB7F754(uint64_t a1)
{
  sub_25BB8D8D0(*v1, v1[1], sub_25BB8E45C, 0, &type metadata for SymmetricPad1D, sub_25BAAF54C, sub_25BB00FE8);
  v2 = *(&v33 + 1);
  v3 = v34;
  v35 = *(&v34 + 1);
  v36[0] = v33;
  v29 = v32;
  v30 = v33;
  v31 = v34;
  sub_25BAA486C(v36, v27, &qword_27FBB58E8, &qword_25BCC3E18);
  sub_25BA9D8C4(v2, v3);
  sub_25BAA486C(&v35, v27, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v4 = v30;
    if (!*(v30 + 16))
    {

      sub_25BA9D148(v2, v3);
      sub_25BAA6F5C(&v35, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v36, &qword_27FBB58E8, &qword_25BCC3E18);
      sub_25BA9D148(v2, v3);
      sub_25BAA6F5C(&v35, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1982C();
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    *&v30 = v4;
    v28 = v8;
    if (v2)
    {
      v10 = *(v9 + 32);
      swift_beginAccess();
      LOBYTE(v10) = v2(v10, &v28);
      swift_endAccess();
      if (v10)
      {
        v11 = *(v9 + 32);
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB58F0, &qword_25BCC3E20);
        v13 = sub_25BB92940(&qword_27FBB5908, &qword_27FBB58F0, &qword_25BCC3E20);
        sub_25BAB89AC(v11, v9, &v29, &v28, v12, v11, v13);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB58F0, &qword_25BCC3E20);
    swift_dynamicCastClassUnconditional();
    v14 = *(v9 + 16);
    v15 = *(v14 + 16);
    v16 = *(*(&v3 + 1) + 16);
    if (__OFADD__(v16, v15))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v35, v27, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v17 = *(*(&v3 + 1) + 24) >> 1, v17 >= v16 + v15))
    {
      v18 = *(&v3 + 1);
    }

    else
    {
      sub_25BAB1E30();
      v18 = v19;
      v17 = *(v19 + 24) >> 1;
    }

    if (*(v14 + 16))
    {
      if (v17 - *(v18 + 16) < v15)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v20 = *(v18 + 16);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_32;
        }

        *(v18 + 16) = v22;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB58F8, &qword_25BCC3E28);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5900, &qword_25BCC3E30), swift_dynamicCastClass()))
    {

      v23 = swift_modifyAtWritableKeyPath();
      v25 = v24;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v25 = sub_25BB1B740(a1);
      }

      v23(v27, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7FBBC(uint64_t a1)
{
  sub_25BB8C0F4(*v1, v1[1], v1[2], v1[3], sub_25BB8E45C, 0, &v33);
  v37[2] = v35;
  v37[3] = v36;
  v37[0] = v33;
  v37[1] = v34;
  v2 = *(&v36 + 1);
  v3 = *(&v35 + 1);
  v29 = v33;
  v30 = v34;
  v31 = v35;
  v32 = v36;
  sub_25BAA486C(v37, v28, &qword_27FBB58C0, &qword_25BCC3DF8);
  while (1)
  {
    v4 = v31;
    if (!*(v31 + 16))
    {
      v27[0] = v29;
      v27[1] = v30;
      v27[2] = v31;
      v27[3] = v32;
      sub_25BAA6F5C(v27, &qword_27FBB58C0, &qword_25BCC3DF8);
      v28[0] = v33;
      v28[1] = v34;
      v28[2] = v35;
      v28[3] = v36;
      sub_25BAA6F5C(v28, &qword_27FBB58C0, &qword_25BCC3DF8);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19844();
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    *&v31 = v4;
    LODWORD(v27[0]) = v8;
    if (v3)
    {
      v10 = *(v9 + 32);
      swift_beginAccess();
      LOBYTE(v10) = v3(v10, v27);
      swift_endAccess();
      if (v10)
      {
        v11 = *(v9 + 32);
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB58C8, &qword_25BCC3E00);
        v13 = sub_25BB92940(&qword_27FBB58E0, &qword_27FBB58C8, &qword_25BCC3E00);
        sub_25BAB89AC(v11, v9, &v29, v27, v12, v11, v13);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB58C8, &qword_25BCC3E00);
    swift_dynamicCastClassUnconditional();
    v14 = *(v9 + 16);
    v15 = *(v14 + 16);
    v16 = *(v2 + 16);
    if (__OFADD__(v16, v15))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v17 = *(v2 + 24) >> 1, v18 = v2, v17 < v16 + v15))
    {
      sub_25BAB1E30();
      v18 = v19;
      v17 = *(v19 + 24) >> 1;
    }

    if (*(v14 + 16))
    {
      if (v17 - *(v18 + 16) < v15)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v20 = *(v18 + 16);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_31;
        }

        *(v18 + 16) = v22;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB58D0, &qword_25BCC3E08);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB58D8, &qword_25BCC3E10), swift_dynamicCastClass()))
    {

      v23 = swift_modifyAtWritableKeyPath();
      v25 = v24;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v25 = sub_25BB1B740(a1);
      }

      v23(v28, 0);
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB7FFA0(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for GlobalMaxPool1D.Kind, sub_25BAAF54C, sub_25BB01028);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v34[0] = v1;
  v34[1] = v3;
  v34[2] = v5;
  v34[3] = v7;

  v30 = v6;
  sub_25BA9D8C4(v4, v6);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4, v30);

      sub_25BA9D148(v4, v30);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1985C();
      v2 = v9;
    }

    v10 = *(v2 + 16);
    if (!v10)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = v2 + 16 * v11;
    v13 = *(v12 + 32);
    LODWORD(v12) = *(v12 + 40);
    *(v2 + 16) = v11;
    v34[0] = v2;
    v33 = v12;
    if (v4)
    {
      v14 = *(v13 + 32);
      swift_beginAccess();
      LOBYTE(v14) = v4(v14, &v33);
      swift_endAccess();
      if (v14)
      {
        v15 = *(v13 + 32);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5748, &qword_25BCC3CD0);
        v17 = sub_25BB92940(&qword_27FBB5760, &qword_27FBB5748, &qword_25BCC3CD0);
        sub_25BAB89AC(v15, v13, v34, &v33, v16, v15, v17);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5748, &qword_25BCC3CD0);
    swift_dynamicCastClassUnconditional();
    v18 = *(v13 + 16);
    v19 = *(v18 + 16);
    v20 = *(v8 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v8 + 24) >> 1, v22 = v8, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5750, &qword_25BCC3CD8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5758, &qword_25BCC3CE0), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v29 = sub_25BB1B740(a1);
      }

      v27(v32, 0);
    }

    v2 = v34[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB8038C(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for GlobalMaxPool2D.Kind, sub_25BAAF54C, sub_25BB01048);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v34[0] = v1;
  v34[1] = v3;
  v34[2] = v5;
  v34[3] = v7;

  v30 = v6;
  sub_25BA9D8C4(v4, v6);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4, v30);

      sub_25BA9D148(v4, v30);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19874();
      v2 = v9;
    }

    v10 = *(v2 + 16);
    if (!v10)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = v2 + 16 * v11;
    v13 = *(v12 + 32);
    LODWORD(v12) = *(v12 + 40);
    *(v2 + 16) = v11;
    v34[0] = v2;
    v33 = v12;
    if (v4)
    {
      v14 = *(v13 + 32);
      swift_beginAccess();
      LOBYTE(v14) = v4(v14, &v33);
      swift_endAccess();
      if (v14)
      {
        v15 = *(v13 + 32);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5728, &qword_25BCC3CB8);
        v17 = sub_25BB92940(&qword_27FBB5740, &qword_27FBB5728, &qword_25BCC3CB8);
        sub_25BAB89AC(v15, v13, v34, &v33, v16, v15, v17);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5728, &qword_25BCC3CB8);
    swift_dynamicCastClassUnconditional();
    v18 = *(v13 + 16);
    v19 = *(v18 + 16);
    v20 = *(v8 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v8 + 24) >> 1, v22 = v8, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5730, &qword_25BCC3CC0);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5738, &qword_25BCC3CC8), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v29 = sub_25BB1B740(a1);
      }

      v27(v32, 0);
    }

    v2 = v34[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB80778(uint64_t a1)
{
  sub_25BB8D8D0(*v1, v1[1], sub_25BB8E45C, 0, &type metadata for ReflectionPad1D, sub_25BAAF54C, sub_25BB01068);
  v2 = *(&v33 + 1);
  v3 = v34;
  v35 = *(&v34 + 1);
  v36[0] = v33;
  v29 = v32;
  v30 = v33;
  v31 = v34;
  sub_25BAA486C(v36, v27, &qword_27FBB5938, &qword_25BCC3E58);
  sub_25BA9D8C4(v2, v3);
  sub_25BAA486C(&v35, v27, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v4 = v30;
    if (!*(v30 + 16))
    {

      sub_25BA9D148(v2, v3);
      sub_25BAA6F5C(&v35, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v36, &qword_27FBB5938, &qword_25BCC3E58);
      sub_25BA9D148(v2, v3);
      sub_25BAA6F5C(&v35, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1988C();
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    *&v30 = v4;
    v28 = v8;
    if (v2)
    {
      v10 = *(v9 + 32);
      swift_beginAccess();
      LOBYTE(v10) = v2(v10, &v28);
      swift_endAccess();
      if (v10)
      {
        v11 = *(v9 + 32);
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5940, &qword_25BCC3E60);
        v13 = sub_25BB92940(&qword_27FBB5958, &qword_27FBB5940, &qword_25BCC3E60);
        sub_25BAB89AC(v11, v9, &v29, &v28, v12, v11, v13);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5940, &qword_25BCC3E60);
    swift_dynamicCastClassUnconditional();
    v14 = *(v9 + 16);
    v15 = *(v14 + 16);
    v16 = *(*(&v3 + 1) + 16);
    if (__OFADD__(v16, v15))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v35, v27, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v17 = *(*(&v3 + 1) + 24) >> 1, v17 >= v16 + v15))
    {
      v18 = *(&v3 + 1);
    }

    else
    {
      sub_25BAB1E30();
      v18 = v19;
      v17 = *(v19 + 24) >> 1;
    }

    if (*(v14 + 16))
    {
      if (v17 - *(v18 + 16) < v15)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v20 = *(v18 + 16);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_32;
        }

        *(v18 + 16) = v22;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5948, &qword_25BCC3E68);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5950, &qword_25BCC3E70), swift_dynamicCastClass()))
    {

      v23 = swift_modifyAtWritableKeyPath();
      v25 = v24;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v25 = sub_25BB1B740(a1);
      }

      v23(v27, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB80BE0(uint64_t a1)
{
  sub_25BB8C398(*v1, v1[1], v1[2], v1[3], sub_25BB8E45C, 0, &v33);
  v37[2] = v35;
  v37[3] = v36;
  v37[0] = v33;
  v37[1] = v34;
  v2 = *(&v36 + 1);
  v3 = *(&v35 + 1);
  v29 = v33;
  v30 = v34;
  v31 = v35;
  v32 = v36;
  sub_25BAA486C(v37, v28, &qword_27FBB5910, &qword_25BCC3E38);
  while (1)
  {
    v4 = v31;
    if (!*(v31 + 16))
    {
      v27[0] = v29;
      v27[1] = v30;
      v27[2] = v31;
      v27[3] = v32;
      sub_25BAA6F5C(v27, &qword_27FBB5910, &qword_25BCC3E38);
      v28[0] = v33;
      v28[1] = v34;
      v28[2] = v35;
      v28[3] = v36;
      sub_25BAA6F5C(v28, &qword_27FBB5910, &qword_25BCC3E38);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC198A4();
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    *&v31 = v4;
    LODWORD(v27[0]) = v8;
    if (v3)
    {
      v10 = *(v9 + 32);
      swift_beginAccess();
      LOBYTE(v10) = v3(v10, v27);
      swift_endAccess();
      if (v10)
      {
        v11 = *(v9 + 32);
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5918, &qword_25BCC3E40);
        v13 = sub_25BB92940(&qword_27FBB5930, &qword_27FBB5918, &qword_25BCC3E40);
        sub_25BAB89AC(v11, v9, &v29, v27, v12, v11, v13);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5918, &qword_25BCC3E40);
    swift_dynamicCastClassUnconditional();
    v14 = *(v9 + 16);
    v15 = *(v14 + 16);
    v16 = *(v2 + 16);
    if (__OFADD__(v16, v15))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v17 = *(v2 + 24) >> 1, v18 = v2, v17 < v16 + v15))
    {
      sub_25BAB1E30();
      v18 = v19;
      v17 = *(v19 + 24) >> 1;
    }

    if (*(v14 + 16))
    {
      if (v17 - *(v18 + 16) < v15)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v20 = *(v18 + 16);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_31;
        }

        *(v18 + 16) = v22;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5920, &qword_25BCC3E48);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5928, &qword_25BCC3E50), swift_dynamicCastClass()))
    {

      v23 = swift_modifyAtWritableKeyPath();
      v25 = v24;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v25 = sub_25BB1B740(a1);
      }

      v23(v28, 0);
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB80FC4(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for GlobalAveragePool1D.Kind, sub_25BAAF54C, sub_25BB010A8);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v34[0] = v1;
  v34[1] = v3;
  v34[2] = v5;
  v34[3] = v7;

  v30 = v6;
  sub_25BA9D8C4(v4, v6);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4, v30);

      sub_25BA9D148(v4, v30);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC198BC();
      v2 = v9;
    }

    v10 = *(v2 + 16);
    if (!v10)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = v2 + 16 * v11;
    v13 = *(v12 + 32);
    LODWORD(v12) = *(v12 + 40);
    *(v2 + 16) = v11;
    v34[0] = v2;
    v33 = v12;
    if (v4)
    {
      v14 = *(v13 + 32);
      swift_beginAccess();
      LOBYTE(v14) = v4(v14, &v33);
      swift_endAccess();
      if (v14)
      {
        v15 = *(v13 + 32);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5788, &qword_25BCC3D00);
        v17 = sub_25BB92940(&qword_27FBB57A0, &qword_27FBB5788, &qword_25BCC3D00);
        sub_25BAB89AC(v15, v13, v34, &v33, v16, v15, v17);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5788, &qword_25BCC3D00);
    swift_dynamicCastClassUnconditional();
    v18 = *(v13 + 16);
    v19 = *(v18 + 16);
    v20 = *(v8 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v8 + 24) >> 1, v22 = v8, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5790, &qword_25BCC3D08);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5798, &qword_25BCC3D10), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v29 = sub_25BB1B740(a1);
      }

      v27(v32, 0);
    }

    v2 = v34[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB813B0(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for GlobalAveragePool2D.Kind, sub_25BAAF54C, sub_25BB010C8);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v34[0] = v1;
  v34[1] = v3;
  v34[2] = v5;
  v34[3] = v7;

  v30 = v6;
  sub_25BA9D8C4(v4, v6);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4, v30);

      sub_25BA9D148(v4, v30);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC198D4();
      v2 = v9;
    }

    v10 = *(v2 + 16);
    if (!v10)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = v2 + 16 * v11;
    v13 = *(v12 + 32);
    LODWORD(v12) = *(v12 + 40);
    *(v2 + 16) = v11;
    v34[0] = v2;
    v33 = v12;
    if (v4)
    {
      v14 = *(v13 + 32);
      swift_beginAccess();
      LOBYTE(v14) = v4(v14, &v33);
      swift_endAccess();
      if (v14)
      {
        v15 = *(v13 + 32);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5768, &qword_25BCC3CE8);
        v17 = sub_25BB92940(&qword_27FBB5780, &qword_27FBB5768, &qword_25BCC3CE8);
        sub_25BAB89AC(v15, v13, v34, &v33, v16, v15, v17);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5768, &qword_25BCC3CE8);
    swift_dynamicCastClassUnconditional();
    v18 = *(v13 + 16);
    v19 = *(v18 + 16);
    v20 = *(v8 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v8 + 24) >> 1, v22 = v8, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5770, &qword_25BCC3CF0);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5778, &qword_25BCC3CF8), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v29 = sub_25BB1B740(a1);
      }

      v27(v32, 0);
    }

    v2 = v34[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB8179C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_25BB8CFC8(sub_25BB8E45C, 0, &type metadata for ELU, sub_25BAAF54C, sub_25BB010E8, a6, a7);
  v8 = *(&v39 + 1);
  v7 = v39;
  v9 = v40;
  v41 = v40;
  v42[0] = *(&v38 + 1);
  v36[0] = v38;
  v36[1] = v39;
  v37 = v40;
  sub_25BAA486C(v42, v34, &qword_27FBB5548, &qword_25BCC3B48);
  v32 = v8;
  sub_25BA9D8C4(v7, v8);
  sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v10 = *(&v36[0] + 1);
    if (!*(*(&v36[0] + 1) + 16))
    {

      sub_25BA9D148(v7, v32);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v42, &qword_27FBB5548, &qword_25BCC3B48);
      sub_25BA9D148(v7, v32);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC198EC();
      v10 = v11;
    }

    v12 = *(v10 + 16);
    if (!v12)
    {
      break;
    }

    v13 = v12 - 1;
    v14 = v10 + 16 * v13;
    v15 = *(v14 + 32);
    LODWORD(v14) = *(v14 + 40);
    *(v10 + 16) = v13;
    *(&v36[0] + 1) = v10;
    v35 = v14;
    if (v7)
    {
      v16 = *(v15 + 32);
      swift_beginAccess();
      LOBYTE(v16) = v7(v16, &v35);
      swift_endAccess();
      if (v16)
      {
        v17 = *(v15 + 32);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5550, &qword_25BCC3B50);
        v19 = sub_25BB92940(&qword_27FBB5568, &qword_27FBB5550, &qword_25BCC3B50);
        sub_25BAB89AC(v17, v15, v36, &v35, v18, v17, v19);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5550, &qword_25BCC3B50);
    swift_dynamicCastClassUnconditional();
    v20 = *(v15 + 16);
    v21 = *(v20 + 16);
    v22 = *(v9 + 16);
    if (__OFADD__(v22, v21))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v23 = *(v9 + 24) >> 1, v23 >= v22 + v21))
    {
      v24 = v9;
    }

    else
    {
      sub_25BAB1E30();
      v24 = v25;
      v23 = *(v25 + 24) >> 1;
    }

    if (*(v20 + 16))
    {
      if (v23 - *(v24 + 16) < v21)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v21)
      {
        v26 = *(v24 + 16);
        v27 = __OFADD__(v26, v21);
        v28 = v26 + v21;
        if (v27)
        {
          goto LABEL_32;
        }

        *(v24 + 16) = v28;
      }
    }

    else
    {

      if (v21)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5558, &qword_25BCC3B58);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5560, &qword_25BCC3B60), swift_dynamicCastClass()))
    {

      v29 = swift_modifyAtWritableKeyPath();
      v31 = v30;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v31 = sub_25BB1B740(a1);
      }

      v29(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB81BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_25BB8CFC8(sub_25BB8E45C, 0, &type metadata for CELU, sub_25BAAF54C, sub_25BB01108, a6, a7);
  v8 = *(&v39 + 1);
  v7 = v39;
  v9 = v40;
  v41 = v40;
  v42[0] = *(&v38 + 1);
  v36[0] = v38;
  v36[1] = v39;
  v37 = v40;
  sub_25BAA486C(v42, v34, &qword_27FBB5450, &qword_25BCC3A88);
  v32 = v8;
  sub_25BA9D8C4(v7, v8);
  sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v10 = *(&v36[0] + 1);
    if (!*(*(&v36[0] + 1) + 16))
    {

      sub_25BA9D148(v7, v32);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v42, &qword_27FBB5450, &qword_25BCC3A88);
      sub_25BA9D148(v7, v32);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19904();
      v10 = v11;
    }

    v12 = *(v10 + 16);
    if (!v12)
    {
      break;
    }

    v13 = v12 - 1;
    v14 = v10 + 16 * v13;
    v15 = *(v14 + 32);
    LODWORD(v14) = *(v14 + 40);
    *(v10 + 16) = v13;
    *(&v36[0] + 1) = v10;
    v35 = v14;
    if (v7)
    {
      v16 = *(v15 + 32);
      swift_beginAccess();
      LOBYTE(v16) = v7(v16, &v35);
      swift_endAccess();
      if (v16)
      {
        v17 = *(v15 + 32);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5458, &qword_25BCC3A90);
        v19 = sub_25BB92940(&qword_27FBB5470, &qword_27FBB5458, &qword_25BCC3A90);
        sub_25BAB89AC(v17, v15, v36, &v35, v18, v17, v19);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5458, &qword_25BCC3A90);
    swift_dynamicCastClassUnconditional();
    v20 = *(v15 + 16);
    v21 = *(v20 + 16);
    v22 = *(v9 + 16);
    if (__OFADD__(v22, v21))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v23 = *(v9 + 24) >> 1, v23 >= v22 + v21))
    {
      v24 = v9;
    }

    else
    {
      sub_25BAB1E30();
      v24 = v25;
      v23 = *(v25 + 24) >> 1;
    }

    if (*(v20 + 16))
    {
      if (v23 - *(v24 + 16) < v21)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v21)
      {
        v26 = *(v24 + 16);
        v27 = __OFADD__(v26, v21);
        v28 = v26 + v21;
        if (v27)
        {
          goto LABEL_32;
        }

        *(v24 + 16) = v28;
      }
    }

    else
    {

      if (v21)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5460, &qword_25BCC3A98);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5468, &qword_25BCC3AA0), swift_dynamicCastClass()))
    {

      v29 = swift_modifyAtWritableKeyPath();
      v31 = v30;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v31 = sub_25BB1B740(a1);
      }

      v29(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB8205C(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for GELU.Kind, sub_25BAAF54C, sub_25BB01128);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v34[0] = v1;
  v34[1] = v3;
  v34[2] = v5;
  v34[3] = v7;

  v30 = v6;
  sub_25BA9D8C4(v4, v6);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4, v30);

      sub_25BA9D148(v4, v30);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1991C();
      v2 = v9;
    }

    v10 = *(v2 + 16);
    if (!v10)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = v2 + 16 * v11;
    v13 = *(v12 + 32);
    LODWORD(v12) = *(v12 + 40);
    *(v2 + 16) = v11;
    v34[0] = v2;
    v33 = v12;
    if (v4)
    {
      v14 = *(v13 + 32);
      swift_beginAccess();
      LOBYTE(v14) = v4(v14, &v33);
      swift_endAccess();
      if (v14)
      {
        v15 = *(v13 + 32);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5528, &qword_25BCC3B30);
        v17 = sub_25BB92940(&qword_27FBB5540, &qword_27FBB5528, &qword_25BCC3B30);
        sub_25BAB89AC(v15, v13, v34, &v33, v16, v15, v17);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5528, &qword_25BCC3B30);
    swift_dynamicCastClassUnconditional();
    v18 = *(v13 + 16);
    v19 = *(v18 + 16);
    v20 = *(v8 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v8 + 24) >> 1, v22 = v8, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5530, &qword_25BCC3B38);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5538, &qword_25BCC3B40), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v29 = sub_25BB1B740(a1);
      }

      v27(v32, 0);
    }

    v2 = v34[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB82448(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for SELU.Kind, sub_25BAAF54C, sub_25BB01148);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v34[0] = v1;
  v34[1] = v3;
  v34[2] = v5;
  v34[3] = v7;

  v30 = v6;
  sub_25BA9D8C4(v4, v6);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4, v30);

      sub_25BA9D148(v4, v30);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19934();
      v2 = v9;
    }

    v10 = *(v2 + 16);
    if (!v10)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = v2 + 16 * v11;
    v13 = *(v12 + 32);
    LODWORD(v12) = *(v12 + 40);
    *(v2 + 16) = v11;
    v34[0] = v2;
    v33 = v12;
    if (v4)
    {
      v14 = *(v13 + 32);
      swift_beginAccess();
      LOBYTE(v14) = v4(v14, &v33);
      swift_endAccess();
      if (v14)
      {
        v15 = *(v13 + 32);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54A0, &qword_25BCC3AC8);
        v17 = sub_25BB92940(&qword_27FBB54B8, &qword_27FBB54A0, &qword_25BCC3AC8);
        sub_25BAB89AC(v15, v13, v34, &v33, v16, v15, v17);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54A0, &qword_25BCC3AC8);
    swift_dynamicCastClassUnconditional();
    v18 = *(v13 + 16);
    v19 = *(v18 + 16);
    v20 = *(v8 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v8 + 24) >> 1, v22 = v8, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54A8, &qword_25BCC3AD0);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54B0, &qword_25BCC3AD8), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v29 = sub_25BB1B740(a1);
      }

      v27(v32, 0);
    }

    v2 = v34[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB82834(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for Tanh.Kind, sub_25BAAF54C, sub_25BB01168);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v34[0] = v1;
  v34[1] = v3;
  v34[2] = v5;
  v34[3] = v7;

  v30 = v6;
  sub_25BA9D8C4(v4, v6);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4, v30);

      sub_25BA9D148(v4, v30);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1994C();
      v2 = v9;
    }

    v10 = *(v2 + 16);
    if (!v10)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = v2 + 16 * v11;
    v13 = *(v12 + 32);
    LODWORD(v12) = *(v12 + 40);
    *(v2 + 16) = v11;
    v34[0] = v2;
    v33 = v12;
    if (v4)
    {
      v14 = *(v13 + 32);
      swift_beginAccess();
      LOBYTE(v14) = v4(v14, &v33);
      swift_endAccess();
      if (v14)
      {
        v15 = *(v13 + 32);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5668, &qword_25BCC3C28);
        v17 = sub_25BB92940(&qword_27FBB5680, &qword_27FBB5668, &qword_25BCC3C28);
        sub_25BAB89AC(v15, v13, v34, &v33, v16, v15, v17);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5668, &qword_25BCC3C28);
    swift_dynamicCastClassUnconditional();
    v18 = *(v13 + 16);
    v19 = *(v18 + 16);
    v20 = *(v8 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v8 + 24) >> 1, v22 = v8, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5670, &qword_25BCC3C30);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5678, &qword_25BCC3C38), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v29 = sub_25BB1B740(a1);
      }

      v27(v32, 0);
    }

    v2 = v34[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB82C20(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for ReLU6.Kind, sub_25BAAF54C, sub_25BB01188);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v34[0] = v1;
  v34[1] = v3;
  v34[2] = v5;
  v34[3] = v7;

  v30 = v6;
  sub_25BA9D8C4(v4, v6);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4, v30);

      sub_25BA9D148(v4, v30);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19964();
      v2 = v9;
    }

    v10 = *(v2 + 16);
    if (!v10)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = v2 + 16 * v11;
    v13 = *(v12 + 32);
    LODWORD(v12) = *(v12 + 40);
    *(v2 + 16) = v11;
    v34[0] = v2;
    v33 = v12;
    if (v4)
    {
      v14 = *(v13 + 32);
      swift_beginAccess();
      LOBYTE(v14) = v4(v14, &v33);
      swift_endAccess();
      if (v14)
      {
        v15 = *(v13 + 32);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54E8, &qword_25BCC3B00);
        v17 = sub_25BB92940(&qword_27FBB5500, &qword_27FBB54E8, &qword_25BCC3B00);
        sub_25BAB89AC(v15, v13, v34, &v33, v16, v15, v17);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54E8, &qword_25BCC3B00);
    swift_dynamicCastClassUnconditional();
    v18 = *(v13 + 16);
    v19 = *(v18 + 16);
    v20 = *(v8 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v8 + 24) >> 1, v22 = v8, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54F0, &qword_25BCC3B08);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54F8, &qword_25BCC3B10), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v29 = sub_25BB1B740(a1);
      }

      v27(v32, 0);
    }

    v2 = v34[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB8300C(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for Flatten.Kind, sub_25BAAF54C, sub_25BB011A8);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v34[0] = v1;
  v34[1] = v3;
  v34[2] = v5;
  v34[3] = v7;

  v30 = v6;
  sub_25BA9D8C4(v4, v6);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4, v30);

      sub_25BA9D148(v4, v30);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1997C();
      v2 = v9;
    }

    v10 = *(v2 + 16);
    if (!v10)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = v2 + 16 * v11;
    v13 = *(v12 + 32);
    LODWORD(v12) = *(v12 + 40);
    *(v2 + 16) = v11;
    v34[0] = v2;
    v33 = v12;
    if (v4)
    {
      v14 = *(v13 + 32);
      swift_beginAccess();
      LOBYTE(v14) = v4(v14, &v33);
      swift_endAccess();
      if (v14)
      {
        v15 = *(v13 + 32);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5288, &qword_25BCC3920);
        v17 = sub_25BB92940(&qword_27FBB52A0, &qword_27FBB5288, &qword_25BCC3920);
        sub_25BAB89AC(v15, v13, v34, &v33, v16, v15, v17);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5288, &qword_25BCC3920);
    swift_dynamicCastClassUnconditional();
    v18 = *(v13 + 16);
    v19 = *(v18 + 16);
    v20 = *(v8 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v8 + 24) >> 1, v22 = v8, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5290, &qword_25BCC3928);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5298, &qword_25BCC3930), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v29 = sub_25BB1B740(a1);
      }

      v27(v32, 0);
    }

    v2 = v34[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB833F8(uint64_t a1)
{
  v1 = sub_25BCB617C();
  sub_25BB8C63C(v1, sub_25BB8E45C, 0, &v39);
  v2 = v40;
  v4 = v41;
  v3 = v42;
  v5 = v43;
  v34 = v39;
  v35 = v40;
  v36 = v41;
  v37 = v42;
  v38 = v43;
  sub_25BCB617C();

  sub_25BA9D8C4(v4, v3);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {
      v27 = v36;
      v28 = v37;

      sub_25BA9D148(v27, v28);

      v29 = v41;
      v30 = v42;

      sub_25BA9D148(v29, v30);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19994();
      v2 = v6;
    }

    v7 = *(v2 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v2 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v2 + 16) = v8;
    v35 = v2;
    v33 = v9;
    if (v4)
    {
      v11 = *(v10 + 32);
      swift_beginAccess();
      LOBYTE(v11) = v4(v11, &v33);
      swift_endAccess();
      if (v11)
      {
        v12 = *(v10 + 32);
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5688, &qword_25BCC3C40);
        v14 = sub_25BB92940(&qword_27FBB56A0, &qword_27FBB5688, &qword_25BCC3C40);
        sub_25BAB89AC(v12, v10, &v34, &v33, v13, v12, v14);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5688, &qword_25BCC3C40);
    swift_dynamicCastClassUnconditional();
    v15 = *(v10 + 16);
    v16 = *(v15 + 16);
    v17 = *(v5 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v5 + 24) >> 1, v19 = v5, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_31;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5690, &qword_25BCC3C48);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5698, &qword_25BCC3C50), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v26 = sub_25BB1B740(a1);
      }

      v24(v32, 0);
    }

    v2 = v35;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB837E4(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for Sigmoid.Kind, sub_25BAAF54C, sub_25BB011E8);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v34[0] = v1;
  v34[1] = v3;
  v34[2] = v5;
  v34[3] = v7;

  v30 = v6;
  sub_25BA9D8C4(v4, v6);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4, v30);

      sub_25BA9D148(v4, v30);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC199AC();
      v2 = v9;
    }

    v10 = *(v2 + 16);
    if (!v10)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = v2 + 16 * v11;
    v13 = *(v12 + 32);
    LODWORD(v12) = *(v12 + 40);
    *(v2 + 16) = v11;
    v34[0] = v2;
    v33 = v12;
    if (v4)
    {
      v14 = *(v13 + 32);
      swift_beginAccess();
      LOBYTE(v14) = v4(v14, &v33);
      swift_endAccess();
      if (v14)
      {
        v15 = *(v13 + 32);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5620, &qword_25BCC3BF0);
        v17 = sub_25BB92940(&qword_27FBB5638, &qword_27FBB5620, &qword_25BCC3BF0);
        sub_25BAB89AC(v15, v13, v34, &v33, v16, v15, v17);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5620, &qword_25BCC3BF0);
    swift_dynamicCastClassUnconditional();
    v18 = *(v13 + 16);
    v19 = *(v18 + 16);
    v20 = *(v8 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v8 + 24) >> 1, v22 = v8, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5628, &qword_25BCC3BF8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5630, &qword_25BCC3C00), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v29 = sub_25BB1B740(a1);
      }

      v27(v32, 0);
    }

    v2 = v34[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB83BD0(uint64_t a1)
{
  sub_25BB8C908(*v1, sub_25BB8E45C, 0, &type metadata for Softmax, sub_25BAAF54C, sub_25BB01208);
  v3 = *(&v34 + 1);
  v2 = v34;
  v4 = v35;
  v36 = v35;
  v37[0] = *(&v33 + 1);
  v31[0] = v33;
  v31[1] = v34;
  v32 = v35;
  sub_25BAA486C(v37, v29, &qword_27FBB5590, &qword_25BCC3B80);
  v27 = v3;
  sub_25BA9D8C4(v2, v3);
  sub_25BAA486C(&v36, v29, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v5 = *(&v31[0] + 1);
    if (!*(*(&v31[0] + 1) + 16))
    {

      sub_25BA9D148(v2, v27);
      sub_25BAA6F5C(&v36, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v37, &qword_27FBB5590, &qword_25BCC3B80);
      sub_25BA9D148(v2, v27);
      sub_25BAA6F5C(&v36, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC199C4();
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    *(&v31[0] + 1) = v5;
    v30 = v9;
    if (v2)
    {
      v11 = *(v10 + 32);
      swift_beginAccess();
      LOBYTE(v11) = v2(v11, &v30);
      swift_endAccess();
      if (v11)
      {
        v12 = *(v10 + 32);
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5598, &qword_25BCC3B88);
        v14 = sub_25BB92940(&qword_27FBB55B0, &qword_27FBB5598, &qword_25BCC3B88);
        sub_25BAB89AC(v12, v10, v31, &v30, v13, v12, v14);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5598, &qword_25BCC3B88);
    swift_dynamicCastClassUnconditional();
    v15 = *(v10 + 16);
    v16 = *(v15 + 16);
    v17 = *(v4 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v36, v29, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v18 = *(v4 + 24) >> 1, v18 >= v17 + v16))
    {
      v19 = v4;
    }

    else
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_32;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB55A0, &qword_25BCC3B90);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB55A8, &qword_25BCC3B98), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v26 = sub_25BB1B740(a1);
      }

      v24(v29, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB84030(uint64_t a1)
{
  sub_25BB8C908(*v1, sub_25BB8E45C, 0, &type metadata for Softmin, sub_25BAAF54C, sub_25BB01228);
  v3 = *(&v34 + 1);
  v2 = v34;
  v4 = v35;
  v36 = v35;
  v37[0] = *(&v33 + 1);
  v31[0] = v33;
  v31[1] = v34;
  v32 = v35;
  sub_25BAA486C(v37, v29, &qword_27FBB5368, &qword_25BCC39D0);
  v27 = v3;
  sub_25BA9D8C4(v2, v3);
  sub_25BAA486C(&v36, v29, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v5 = *(&v31[0] + 1);
    if (!*(*(&v31[0] + 1) + 16))
    {

      sub_25BA9D148(v2, v27);
      sub_25BAA6F5C(&v36, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v37, &qword_27FBB5368, &qword_25BCC39D0);
      sub_25BA9D148(v2, v27);
      sub_25BAA6F5C(&v36, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC199DC();
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    *(&v31[0] + 1) = v5;
    v30 = v9;
    if (v2)
    {
      v11 = *(v10 + 32);
      swift_beginAccess();
      LOBYTE(v11) = v2(v11, &v30);
      swift_endAccess();
      if (v11)
      {
        v12 = *(v10 + 32);
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5370, &qword_25BCC39D8);
        v14 = sub_25BB92940(&qword_27FBB5388, &qword_27FBB5370, &qword_25BCC39D8);
        sub_25BAB89AC(v12, v10, v31, &v30, v13, v12, v14);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5370, &qword_25BCC39D8);
    swift_dynamicCastClassUnconditional();
    v15 = *(v10 + 16);
    v16 = *(v15 + 16);
    v17 = *(v4 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v36, v29, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v18 = *(v4 + 24) >> 1, v18 >= v17 + v16))
    {
      v19 = v4;
    }

    else
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_32;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5378, &qword_25BCC39E0);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5380, &qword_25BCC39E8), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v26 = sub_25BB1B740(a1);
      }

      v24(v29, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB84490(uint64_t a1)
{
  sub_25BB8CB4C(sub_25BB8E45C, 0, &v33, *v1, v1[1]);
  v3 = *(&v34 + 1);
  v2 = v34;
  v4 = v35;
  v36 = v35;
  v37[0] = *(&v33 + 1);
  v31[0] = v33;
  v31[1] = v34;
  v32 = v35;
  sub_25BAA486C(v37, v29, &qword_27FBB53B8, &qword_25BCC3A10);
  v27 = v3;
  sub_25BA9D8C4(v2, v3);
  sub_25BAA486C(&v36, v29, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v5 = *(&v31[0] + 1);
    if (!*(*(&v31[0] + 1) + 16))
    {

      sub_25BA9D148(v2, v27);
      sub_25BAA6F5C(&v36, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v37, &qword_27FBB53B8, &qword_25BCC3A10);
      sub_25BA9D148(v2, v27);
      sub_25BAA6F5C(&v36, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC199F4();
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    *(&v31[0] + 1) = v5;
    v30 = v9;
    if (v2)
    {
      v11 = *(v10 + 32);
      swift_beginAccess();
      LOBYTE(v11) = v2(v11, &v30);
      swift_endAccess();
      if (v11)
      {
        v12 = *(v10 + 32);
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB53C0, &qword_25BCC3A18);
        v14 = sub_25BB92940(&qword_27FBB53D8, &qword_27FBB53C0, &qword_25BCC3A18);
        sub_25BAB89AC(v12, v10, v31, &v30, v13, v12, v14);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB53C0, &qword_25BCC3A18);
    swift_dynamicCastClassUnconditional();
    v15 = *(v10 + 16);
    v16 = *(v15 + 16);
    v17 = *(v4 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v36, v29, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v18 = *(v4 + 24) >> 1, v18 >= v17 + v16))
    {
      v19 = v4;
    }

    else
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_32;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB53C8, &qword_25BCC3A20);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB53D0, &qword_25BCC3A28), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v26 = sub_25BB1B740(a1);
      }

      v24(v29, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB848C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_25BB8D6DC(sub_25BB8E45C, 0, &type metadata for Softplus, sub_25BAAF54C, sub_25BB01268, a6, a7);
  v8 = *(&v39 + 1);
  v9 = v39;
  v7 = v40;
  v41 = v40;
  v42[0] = *(&v38 + 1);
  v36[0] = v38;
  v36[1] = v39;
  v37 = v40;
  sub_25BAA486C(v42, v34, &qword_27FBB55D8, &qword_25BCC3BB8);
  v32 = v8;
  sub_25BA9D8C4(v9, v8);
  sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v10 = *(&v36[0] + 1);
    if (!*(*(&v36[0] + 1) + 16))
    {

      sub_25BA9D148(v9, v32);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v42, &qword_27FBB55D8, &qword_25BCC3BB8);
      sub_25BA9D148(v9, v32);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19A0C();
      v10 = v11;
    }

    v12 = *(v10 + 16);
    if (!v12)
    {
      break;
    }

    v13 = v12 - 1;
    v14 = v10 + 16 * v13;
    v15 = *(v14 + 32);
    LODWORD(v14) = *(v14 + 40);
    *(v10 + 16) = v13;
    *(&v36[0] + 1) = v10;
    v35 = v14;
    if (v9)
    {
      v16 = *(v15 + 32);
      swift_beginAccess();
      LOBYTE(v16) = v9(v16, &v35);
      swift_endAccess();
      if (v16)
      {
        v17 = *(v15 + 32);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB55E0, &qword_25BCC3BC0);
        v19 = sub_25BB92940(&qword_27FBB55F8, &qword_27FBB55E0, &qword_25BCC3BC0);
        sub_25BAB89AC(v17, v15, v36, &v35, v18, v17, v19);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB55E0, &qword_25BCC3BC0);
    swift_dynamicCastClassUnconditional();
    v20 = *(v15 + 16);
    v21 = *(v20 + 16);
    v22 = *(v7 + 16);
    if (__OFADD__(v22, v21))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v23 = *(v7 + 24) >> 1, v23 >= v22 + v21))
    {
      v24 = v7;
    }

    else
    {
      sub_25BAB1E30();
      v24 = v25;
      v23 = *(v25 + 24) >> 1;
    }

    if (*(v20 + 16))
    {
      if (v23 - *(v24 + 16) < v21)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v21)
      {
        v26 = *(v24 + 16);
        v27 = __OFADD__(v26, v21);
        v28 = v26 + v21;
        if (v27)
        {
          goto LABEL_32;
        }

        *(v24 + 16) = v28;
      }
    }

    else
    {

      if (v21)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB55E8, &qword_25BCC3BC8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB55F0, &qword_25BCC3BD0), swift_dynamicCastClass()))
    {

      v29 = swift_modifyAtWritableKeyPath();
      v31 = v30;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v31 = sub_25BB1B740(a1);
      }

      v29(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB84D28(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for Softsign.Kind, sub_25BAAF54C, sub_25BB01288);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v34[0] = v1;
  v34[1] = v3;
  v34[2] = v5;
  v34[3] = v7;

  v30 = v6;
  sub_25BA9D8C4(v4, v6);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4, v30);

      sub_25BA9D148(v4, v30);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19A24();
      v2 = v9;
    }

    v10 = *(v2 + 16);
    if (!v10)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = v2 + 16 * v11;
    v13 = *(v12 + 32);
    LODWORD(v12) = *(v12 + 40);
    *(v2 + 16) = v11;
    v34[0] = v2;
    v33 = v12;
    if (v4)
    {
      v14 = *(v13 + 32);
      swift_beginAccess();
      LOBYTE(v14) = v4(v14, &v33);
      swift_endAccess();
      if (v14)
      {
        v15 = *(v13 + 32);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB55B8, &qword_25BCC3BA0);
        v17 = sub_25BB92940(&qword_27FBB55D0, &qword_27FBB55B8, &qword_25BCC3BA0);
        sub_25BAB89AC(v15, v13, v34, &v33, v16, v15, v17);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB55B8, &qword_25BCC3BA0);
    swift_dynamicCastClassUnconditional();
    v18 = *(v13 + 16);
    v19 = *(v18 + 16);
    v20 = *(v8 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v8 + 24) >> 1, v22 = v8, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB55C0, &qword_25BCC3BA8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB55C8, &qword_25BCC3BB0), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v29 = sub_25BB1B740(a1);
      }

      v27(v32, 0);
    }

    v2 = v34[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB85114(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for Hardswish.Kind, sub_25BAAF54C, sub_25BB012A8);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v34[0] = v1;
  v34[1] = v3;
  v34[2] = v5;
  v34[3] = v7;

  v30 = v6;
  sub_25BA9D8C4(v4, v6);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4, v30);

      sub_25BA9D148(v4, v30);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19A3C();
      v2 = v9;
    }

    v10 = *(v2 + 16);
    if (!v10)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = v2 + 16 * v11;
    v13 = *(v12 + 32);
    LODWORD(v12) = *(v12 + 40);
    *(v2 + 16) = v11;
    v34[0] = v2;
    v33 = v12;
    if (v4)
    {
      v14 = *(v13 + 32);
      swift_beginAccess();
      LOBYTE(v14) = v4(v14, &v33);
      swift_endAccess();
      if (v14)
      {
        v15 = *(v13 + 32);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB52F8, &qword_25BCC3978);
        v17 = sub_25BB92940(&qword_27FBB5310, &qword_27FBB52F8, &qword_25BCC3978);
        sub_25BAB89AC(v15, v13, v34, &v33, v16, v15, v17);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB52F8, &qword_25BCC3978);
    swift_dynamicCastClassUnconditional();
    v18 = *(v13 + 16);
    v19 = *(v18 + 16);
    v20 = *(v8 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v8 + 24) >> 1, v22 = v8, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5300, &qword_25BCC3980);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5308, &qword_25BCC3988), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v29 = sub_25BB1B740(a1);
      }

      v27(v32, 0);
    }

    v2 = v34[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB85500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_25BB8CFC8(sub_25BB8E45C, 0, &type metadata for LeakyReLU, sub_25BAAF54C, sub_25BB012C8, a6, a7);
  v8 = *(&v39 + 1);
  v7 = v39;
  v9 = v40;
  v41 = v40;
  v42[0] = *(&v38 + 1);
  v36[0] = v38;
  v36[1] = v39;
  v37 = v40;
  sub_25BAA486C(v42, v34, &qword_27FBB54C0, &qword_25BCC3AE0);
  v32 = v8;
  sub_25BA9D8C4(v7, v8);
  sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v10 = *(&v36[0] + 1);
    if (!*(*(&v36[0] + 1) + 16))
    {

      sub_25BA9D148(v7, v32);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v42, &qword_27FBB54C0, &qword_25BCC3AE0);
      sub_25BA9D148(v7, v32);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19A54();
      v10 = v11;
    }

    v12 = *(v10 + 16);
    if (!v12)
    {
      break;
    }

    v13 = v12 - 1;
    v14 = v10 + 16 * v13;
    v15 = *(v14 + 32);
    LODWORD(v14) = *(v14 + 40);
    *(v10 + 16) = v13;
    *(&v36[0] + 1) = v10;
    v35 = v14;
    if (v7)
    {
      v16 = *(v15 + 32);
      swift_beginAccess();
      LOBYTE(v16) = v7(v16, &v35);
      swift_endAccess();
      if (v16)
      {
        v17 = *(v15 + 32);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54C8, &qword_25BCC3AE8);
        v19 = sub_25BB92940(&qword_27FBB54E0, &qword_27FBB54C8, &qword_25BCC3AE8);
        sub_25BAB89AC(v17, v15, v36, &v35, v18, v17, v19);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54C8, &qword_25BCC3AE8);
    swift_dynamicCastClassUnconditional();
    v20 = *(v15 + 16);
    v21 = *(v20 + 16);
    v22 = *(v9 + 16);
    if (__OFADD__(v22, v21))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v23 = *(v9 + 24) >> 1, v23 >= v22 + v21))
    {
      v24 = v9;
    }

    else
    {
      sub_25BAB1E30();
      v24 = v25;
      v23 = *(v25 + 24) >> 1;
    }

    if (*(v20 + 16))
    {
      if (v23 - *(v24 + 16) < v21)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v21)
      {
        v26 = *(v24 + 16);
        v27 = __OFADD__(v26, v21);
        v28 = v26 + v21;
        if (v27)
        {
          goto LABEL_32;
        }

        *(v24 + 16) = v28;
      }
    }

    else
    {

      if (v21)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54D0, &qword_25BCC3AF0);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54D8, &qword_25BCC3AF8), swift_dynamicCastClass()))
    {

      v29 = swift_modifyAtWritableKeyPath();
      v31 = v30;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v31 = sub_25BB1B740(a1);
      }

      v29(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB85960(uint64_t a1)
{
  sub_25BB8D1BC(*v1, v1[1], v1[2], sub_25BB8E45C, 0, &v35);
  v3 = *(&v37 + 1);
  v2 = v37;
  v4 = v38;
  v39 = v38;
  v40[0] = *(&v36 + 1);
  v31 = v35;
  v32 = v36;
  v33 = v37;
  v34 = v38;
  sub_25BAA486C(v40, v29, &qword_27FBB5820, &qword_25BCC3D78);
  v27 = v3;
  sub_25BA9D8C4(v2, v3);
  sub_25BAA486C(&v39, v29, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v5 = *(&v32 + 1);
    if (!*(*(&v32 + 1) + 16))
    {

      sub_25BA9D148(v2, v27);
      sub_25BAA6F5C(&v39, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v40, &qword_27FBB5820, &qword_25BCC3D78);
      sub_25BA9D148(v2, v27);
      sub_25BAA6F5C(&v39, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19A6C();
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    *(&v32 + 1) = v5;
    v30 = v9;
    if (v2)
    {
      v11 = *(v10 + 32);
      swift_beginAccess();
      LOBYTE(v11) = v2(v11, &v30);
      swift_endAccess();
      if (v11)
      {
        v12 = *(v10 + 32);
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5828, &qword_25BCC3D80);
        v14 = sub_25BB92940(&qword_27FBB5840, &qword_27FBB5828, &qword_25BCC3D80);
        sub_25BAB89AC(v12, v10, &v31, &v30, v13, v12, v14);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5828, &qword_25BCC3D80);
    swift_dynamicCastClassUnconditional();
    v15 = *(v10 + 16);
    v16 = *(v15 + 16);
    v17 = *(v4 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v39, v29, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v18 = *(v4 + 24) >> 1, v18 >= v17 + v16))
    {
      v19 = v4;
    }

    else
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_32;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5830, &qword_25BCC3D88);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5838, &qword_25BCC3D90), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v26 = sub_25BB1B740(a1);
      }

      v24(v29, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB85DA4(uint64_t a1)
{
  v2 = v1[1];
  v32[0] = *v1;
  v32[1] = v2;
  v32[2] = v1[2];
  sub_25BB8D428(v32, sub_25BB8E45C, 0, __src);
  memcpy(__dst, __src, 0x50uLL);
  v3 = __dst[9];
  v4 = __dst[7];
  memcpy(v30, __src, sizeof(v30));
  sub_25BAA486C(__dst, v29, &qword_27FBB57F8, &qword_25BCC3D58);
  while (1)
  {
    v5 = v30[6];
    if (!*(v30[6] + 16))
    {
      memcpy(v28, v30, sizeof(v28));
      sub_25BAA6F5C(v28, &qword_27FBB57F8, &qword_25BCC3D58);
      memcpy(v29, __src, sizeof(v29));
      sub_25BAA6F5C(v29, &qword_27FBB57F8, &qword_25BCC3D58);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19A84();
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    v30[6] = v5;
    v28[0] = v9;
    if (v4)
    {
      v11 = *(v10 + 32);
      swift_beginAccess();
      LOBYTE(v11) = v4(v11, v28);
      swift_endAccess();
      if (v11)
      {
        v12 = *(v10 + 32);
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5800, &qword_25BCC3D60);
        v14 = sub_25BB92940(&qword_27FBB5818, &qword_27FBB5800, &qword_25BCC3D60);
        sub_25BAB89AC(v12, v10, v30, v28, v13, v12, v14);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5800, &qword_25BCC3D60);
    swift_dynamicCastClassUnconditional();
    v15 = *(v10 + 16);
    v16 = *(v15 + 16);
    v17 = *(v3 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v3 + 24) >> 1, v19 = v3, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_31;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5808, &qword_25BCC3D68);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5810, &qword_25BCC3D70), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v26 = sub_25BB1B740(a1);
      }

      v24(v29, 0);
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB8619C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_25BB8D6DC(sub_25BB8E45C, 0, &type metadata for Threshold, sub_25BAAF54C, sub_25BB01328, a6, a7);
  v8 = *(&v39 + 1);
  v9 = v39;
  v7 = v40;
  v41 = v40;
  v42[0] = *(&v38 + 1);
  v36[0] = v38;
  v36[1] = v39;
  v37 = v40;
  sub_25BAA486C(v42, v34, &qword_27FBB5318, &qword_25BCC3990);
  v32 = v8;
  sub_25BA9D8C4(v9, v8);
  sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v10 = *(&v36[0] + 1);
    if (!*(*(&v36[0] + 1) + 16))
    {

      sub_25BA9D148(v9, v32);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v42, &qword_27FBB5318, &qword_25BCC3990);
      sub_25BA9D148(v9, v32);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19A9C();
      v10 = v11;
    }

    v12 = *(v10 + 16);
    if (!v12)
    {
      break;
    }

    v13 = v12 - 1;
    v14 = v10 + 16 * v13;
    v15 = *(v14 + 32);
    LODWORD(v14) = *(v14 + 40);
    *(v10 + 16) = v13;
    *(&v36[0] + 1) = v10;
    v35 = v14;
    if (v9)
    {
      v16 = *(v15 + 32);
      swift_beginAccess();
      LOBYTE(v16) = v9(v16, &v35);
      swift_endAccess();
      if (v16)
      {
        v17 = *(v15 + 32);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5320, &qword_25BCC3998);
        v19 = sub_25BB92940(&qword_27FBB5338, &qword_27FBB5320, &qword_25BCC3998);
        sub_25BAB89AC(v17, v15, v36, &v35, v18, v17, v19);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5320, &qword_25BCC3998);
    swift_dynamicCastClassUnconditional();
    v20 = *(v15 + 16);
    v21 = *(v20 + 16);
    v22 = *(v7 + 16);
    if (__OFADD__(v22, v21))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v23 = *(v7 + 24) >> 1, v23 >= v22 + v21))
    {
      v24 = v7;
    }

    else
    {
      sub_25BAB1E30();
      v24 = v25;
      v23 = *(v25 + 24) >> 1;
    }

    if (*(v20 + 16))
    {
      if (v23 - *(v24 + 16) < v21)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v21)
      {
        v26 = *(v24 + 16);
        v27 = __OFADD__(v26, v21);
        v28 = v26 + v21;
        if (v27)
        {
          goto LABEL_32;
        }

        *(v24 + 16) = v28;
      }
    }

    else
    {

      if (v21)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5328, &qword_25BCC39A0);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5330, &qword_25BCC39A8), swift_dynamicCastClass()))
    {

      v29 = swift_modifyAtWritableKeyPath();
      v31 = v30;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v31 = sub_25BB1B740(a1);
      }

      v29(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB865FC(uint64_t a1)
{
  sub_25BB8D8D0(*v1, v1[1], sub_25BB8E45C, 0, &type metadata for ZeroPad1D, sub_25BAAF54C, sub_25BB01348);
  v2 = *(&v33 + 1);
  v3 = v34;
  v35 = *(&v34 + 1);
  v36[0] = v33;
  v29 = v32;
  v30 = v33;
  v31 = v34;
  sub_25BAA486C(v36, v27, &qword_27FBB5988, &qword_25BCC3E98);
  sub_25BA9D8C4(v2, v3);
  sub_25BAA486C(&v35, v27, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v4 = v30;
    if (!*(v30 + 16))
    {

      sub_25BA9D148(v2, v3);
      sub_25BAA6F5C(&v35, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v36, &qword_27FBB5988, &qword_25BCC3E98);
      sub_25BA9D148(v2, v3);
      sub_25BAA6F5C(&v35, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19AB4();
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    *&v30 = v4;
    v28 = v8;
    if (v2)
    {
      v10 = *(v9 + 32);
      swift_beginAccess();
      LOBYTE(v10) = v2(v10, &v28);
      swift_endAccess();
      if (v10)
      {
        v11 = *(v9 + 32);
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5990, &qword_25BCC3EA0);
        v13 = sub_25BB92940(&qword_27FBB59A8, &qword_27FBB5990, &qword_25BCC3EA0);
        sub_25BAB89AC(v11, v9, &v29, &v28, v12, v11, v13);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5990, &qword_25BCC3EA0);
    swift_dynamicCastClassUnconditional();
    v14 = *(v9 + 16);
    v15 = *(v14 + 16);
    v16 = *(*(&v3 + 1) + 16);
    if (__OFADD__(v16, v15))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v35, v27, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v17 = *(*(&v3 + 1) + 24) >> 1, v17 >= v16 + v15))
    {
      v18 = *(&v3 + 1);
    }

    else
    {
      sub_25BAB1E30();
      v18 = v19;
      v17 = *(v19 + 24) >> 1;
    }

    if (*(v14 + 16))
    {
      if (v17 - *(v18 + 16) < v15)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v20 = *(v18 + 16);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_32;
        }

        *(v18 + 16) = v22;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5998, &qword_25BCC3EA8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB59A0, &qword_25BCC3EB0), swift_dynamicCastClass()))
    {

      v23 = swift_modifyAtWritableKeyPath();
      v25 = v24;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v25 = sub_25BB1B740(a1);
      }

      v23(v27, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB86A64(uint64_t a1)
{
  sub_25BB8DB1C(*v1, v1[1], v1[2], v1[3], sub_25BB8E45C, 0, &v33);
  v37[2] = v35;
  v37[3] = v36;
  v37[0] = v33;
  v37[1] = v34;
  v2 = *(&v36 + 1);
  v3 = *(&v35 + 1);
  v29 = v33;
  v30 = v34;
  v31 = v35;
  v32 = v36;
  sub_25BAA486C(v37, v28, &qword_27FBB5960, &qword_25BCC3E78);
  while (1)
  {
    v4 = v31;
    if (!*(v31 + 16))
    {
      v27[0] = v29;
      v27[1] = v30;
      v27[2] = v31;
      v27[3] = v32;
      sub_25BAA6F5C(v27, &qword_27FBB5960, &qword_25BCC3E78);
      v28[0] = v33;
      v28[1] = v34;
      v28[2] = v35;
      v28[3] = v36;
      sub_25BAA6F5C(v28, &qword_27FBB5960, &qword_25BCC3E78);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19ACC();
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    *&v31 = v4;
    LODWORD(v27[0]) = v8;
    if (v3)
    {
      v10 = *(v9 + 32);
      swift_beginAccess();
      LOBYTE(v10) = v3(v10, v27);
      swift_endAccess();
      if (v10)
      {
        v11 = *(v9 + 32);
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5968, &qword_25BCC3E80);
        v13 = sub_25BB92940(&qword_27FBB5980, &qword_27FBB5968, &qword_25BCC3E80);
        sub_25BAB89AC(v11, v9, &v29, v27, v12, v11, v13);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5968, &qword_25BCC3E80);
    swift_dynamicCastClassUnconditional();
    v14 = *(v9 + 16);
    v15 = *(v14 + 16);
    v16 = *(v2 + 16);
    if (__OFADD__(v16, v15))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v17 = *(v2 + 24) >> 1, v18 = v2, v17 < v16 + v15))
    {
      sub_25BAB1E30();
      v18 = v19;
      v17 = *(v19 + 24) >> 1;
    }

    if (*(v14 + 16))
    {
      if (v17 - *(v18 + 16) < v15)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v20 = *(v18 + 16);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_31;
        }

        *(v18 + 16) = v22;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5970, &qword_25BCC3E88);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5978, &qword_25BCC3E90), swift_dynamicCastClass()))
    {

      v23 = swift_modifyAtWritableKeyPath();
      v25 = v24;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(a1);
      }

      else
      {
        *v25 = sub_25BB1B740(a1);
      }

      v23(v28, 0);
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void Layer.place(on:)()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_9();
  v28 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v5 = v4 - v3;
  v6 = sub_25BCB720C();
  OUTLINED_FUNCTION_6_2();
  WitnessTable = swift_getWitnessTable();
  v8 = type metadata accessor for RecursiveStoredPropertiesIterator(0, v6, WitnessTable, v7);
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &WitnessTable - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &WitnessTable - v19;
  OUTLINED_FUNCTION_46_7();
  v21();
  sub_25BAB1090(v5, sub_25BB8E45C, 0, v6, WitnessTable, v20);
  WitnessTable = v20;
  v28 = v10;
  (*(v10 + 16))(v14, v20, v8);
  OUTLINED_FUNCTION_4_5();
  v22 = swift_getWitnessTable();
  MEMORY[0x25F876DC0](v8, v22);
  while (1)
  {
    sub_25BAB173C(v8, v29);
    if (!v29[0])
    {
      break;
    }

    OUTLINED_FUNCTION_48_6();
    sub_25BCB736C();
    if (swift_dynamicCastClass() || (sub_25BCB736C(), swift_dynamicCastClass()))
    {

      v23 = swift_modifyAtWritableKeyPath();
      v25 = v24;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_25BB1B644(v0);
      }

      else
      {
        *v25 = sub_25BB1B740(v0);
      }

      v23(v29, 0);
    }
  }

  v26 = *(v28 + 8);
  v26(v17, v8);
  v26(WitnessTable, v8);
  OUTLINED_FUNCTION_10_16();
}

void sub_25BB87168(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(v2 + 32);
  *(a2 + 48) = *(v2 + 48);
  sub_25BB92234(v2, v5);
  sub_25BB7BDB4(a1);
}

void sub_25BB871CC(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[1];
  *a2 = *v2;
  a2[1] = v4;
  v5 = v2[3];
  a2[2] = v2[2];
  a2[3] = v5;
  sub_25BB920D4(v2, &v6);
  sub_25BB7B978(a1);
}

void sub_25BB87228(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(v2 + 32);
  sub_25BB92394(v2, v5);
  sub_25BB7B53C(a1);
}

void sub_25BB87284(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(a2, v2, 0x50uLL);
  sub_25BB922E4(v2, &v4);
  sub_25BB7B100(a1);
}

void sub_25BB872E0(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  *a5 = a6;
  *(a5 + 4) = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;

  sub_25BB7AC88(a1);
}

void sub_25BB87338(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(a2, v2, 0x78uLL);
  sub_25BB927E0(v2, v4);
  sub_25BB7A84C(a1);
}

void sub_25BB87394(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[1];
  *a2 = *v2;
  a2[1] = v4;
  sub_25BB924A0(v2, &v5);
  sub_25BB79FE4(a1);
}

void sub_25BB873E8(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a2;
  *(a5 + 8) = a3 & 1;
  *(a5 + 9) = HIBYTE(a3) & 1;
  *(a5 + 16) = a4;

  sub_25BB79B78(a1);
}

void sub_25BB8744C(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[1];
  *a2 = *v2;
  a2[1] = v4;
  a2[2] = v2[2];
  sub_25BB925D0(v2, &v5);
  sub_25BB7973C(a1);
}

void sub_25BB874CC(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(a2, v2, 0x43uLL);
  sub_25BB924FC(v2, v4);
  sub_25BB78F18(a1);
}

void sub_25BB87528(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(a2, v2, 0x9CuLL);
  sub_25BB923F0(v2, &v4);
  sub_25BB78AD8(a1);
}

void sub_25BB87584(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(a2, v2, 0x88uLL);
  sub_25BB92680(v2, v4);
  sub_25BB7869C(a1);
}

uint64_t sub_25BB875E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_30_1();
  memcpy(v7, v3, 0x58uLL);
  v4(v3, v9);
  return a3(v5);
}

void sub_25BB87650(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(a2, v2, 0x60uLL);
  sub_25BB92184(v2, &v4);
  sub_25BB77E24(a1);
}

double sub_25BB876AC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  sub_25BB85DA4(a1);
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

void sub_25BB87888(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a2;
  sub_25BCB617C();
  sub_25BB833F8(a1);
}

float sub_25BB87A78@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  v7 = v2[8];
  sub_25BB7F35C(a1);
  result = v7;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

void sub_25BB87B04(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(v2 + 32);
  *(a2 + 48) = *(v2 + 48);
  sub_25BB7EB18(a1);
}

void sub_25BB87B84(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4 & 1;
  *(a5 + 17) = HIBYTE(a4);
  sub_25BB7DEC4(a1);
}

void sub_25BB87C6C(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a2;
  *(a4 + 8) = a3 & 1;
  *(a4 + 9) = HIBYTE(a3);
  sub_25BB7C1F8(a1);
}

uint64_t Layer.placed(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v9 = *(v7 + 16);
  OUTLINED_FUNCTION_16_20();
  v9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51C8, &unk_25BCC3730);
  if (swift_dynamicCast())
  {
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD000000000000088, 0x800000025BCDD8A0);
    OUTLINED_FUNCTION_35_8();
    swift_getDynamicType();
    v11 = sub_25BCB7C1C();
    MEMORY[0x25F876C90](v11);

    MEMORY[0x25F876C90](11872, 0xE200000000000000);
    result = sub_25BCB74CC("Fatal error", 11, 2, 0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/Layer.swift", 94, 2, 217);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_16_20();
    v9();
    return (*(*(a3 + 16) + 8))(a1, a2);
  }

  return result;
}

uint64_t sub_25BB87E98()
{
  OUTLINED_FUNCTION_4_27();
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_7_21();
  return sub_25BB875E0(v1, v2, v3);
}

void sub_25BB87F08()
{
  OUTLINED_FUNCTION_4_27();
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_7_21();
  sub_25BB87338(v1, v2);
}

uint64_t sub_25BB87F50()
{
  OUTLINED_FUNCTION_4_27();
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_7_21();
  return sub_25BB875E0(v1, v2, v3);
}

void sub_25BB87FC0()
{
  OUTLINED_FUNCTION_4_27();
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_7_21();
  sub_25BB87584(v1, v2);
}

uint64_t sub_25BB88008()
{
  OUTLINED_FUNCTION_18_19();
  result = sub_25BB879D0(v1, v2, v3, sub_25BB865FC);
  *v0 = result;
  v0[1] = v5;
  return result;
}

uint64_t sub_25BB88064()
{
  OUTLINED_FUNCTION_18_19();
  result = sub_25BB879D0(v1, v2, v3, sub_25BB80778);
  *v0 = result;
  v0[1] = v5;
  return result;
}

uint64_t sub_25BB880BC()
{
  OUTLINED_FUNCTION_18_19();
  result = sub_25BB87A38(v2, v3, v4, *(v1 + 16), *(v1 + 24), v5);
  *v0 = result;
  v0[1] = v7;
  v0[2] = v8;
  v0[3] = v9;
  return result;
}

uint64_t sub_25BB880F4()
{
  OUTLINED_FUNCTION_18_19();
  result = sub_25BB879D0(v1, v2, v3, sub_25BB7F754);
  *v0 = result;
  v0[1] = v5;
  return result;
}

void sub_25BB88150()
{
  OUTLINED_FUNCTION_18_19();
  v3 = sub_25BB87AC8(v2, *(v1 + 16));
  *v0 = v4;
  *(v0 + 8) = v5;
  *(v0 + 16) = v3;
}

double sub_25BB88184@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v9 = *v2;
  v10 = v4;
  v11 = *(v2 + 8);
  sub_25BB87A78(a1, v7);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

unint64_t sub_25BB88210@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = MEMORY[0x277D84F90];
  __srca[12] = MEMORY[0x277D84F90];
  memcpy(v30, __src, 0x60uLL);
  memcpy(__srca, __src, 0x60uLL);
  __srca[13] = a3;
  __srca[14] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  sub_25BB92184(v30, v27);
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  __srca[15] = v9;
  v27[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for InstanceNorm.Kind, &type metadata for InstanceNorm, v27, &type metadata for InstanceNorm, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = v27[0];
  result = sub_25BAAF54C(v27[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v24 = a1;
    if (!result)
    {
LABEL_19:

      memcpy(v25, __srca, sizeof(v25));
      memcpy(v24, __srca, 0x80uLL);
      memcpy(v26, __dst, sizeof(v26));
      sub_25BAA486C(v25, v27, &qword_27FBB5210, &qword_25BCC38C0);
      sub_25BB921E0(v26);
      memcpy(v27, __srca, sizeof(v27));
      return sub_25BAA6F5C(v27, &qword_27FBB5210, &qword_25BCC38C0);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __srca[12] = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB008F4(0, *(v18 + 16) + 1, 1);
        v18 = __srca[12];
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_25BB008F4(v21 > 1, v22 + 1, 1);
        v18 = __srca[12];
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_25BB88510@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = MEMORY[0x277D84F90];
  __srca[11] = MEMORY[0x277D84F90];
  memcpy(v30, __src, 0x58uLL);
  memcpy(__srca, __src, 0x58uLL);
  __srca[12] = a3;
  __srca[13] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  sub_25BB92730(v30, v27);
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  __srca[14] = v9;
  v27[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for TransposedConv1D.Kind, &type metadata for TransposedConv1D, v27, &type metadata for TransposedConv1D, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = v27[0];
  result = sub_25BAAF54C(v27[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v24 = a1;
    if (!result)
    {
LABEL_19:

      memcpy(v25, __srca, sizeof(v25));
      memcpy(v24, __srca, 0x78uLL);
      memcpy(v26, __dst, sizeof(v26));
      sub_25BAA486C(v25, v27, &qword_27FBB59D8, &qword_25BCC3ED8);
      sub_25BB9278C(v26);
      memcpy(v27, __srca, sizeof(v27));
      return sub_25BAA6F5C(v27, &qword_27FBB59D8, &qword_25BCC3ED8);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __srca[11] = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB00914(0, *(v18 + 16) + 1, 1);
        v18 = __srca[11];
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_25BB00914(v21 > 1, v22 + 1, 1);
        v18 = __srca[11];
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_25BB88810@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = MEMORY[0x277D84F90];
  __srca[17] = MEMORY[0x277D84F90];
  memcpy(v30, __src, 0x88uLL);
  memcpy(__srca, __src, 0x88uLL);
  __srca[18] = a3;
  __srca[19] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  sub_25BB92680(v30, v27);
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  __srca[20] = v9;
  v27[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for TransposedConv2D.Kind, &type metadata for TransposedConv2D, v27, &type metadata for TransposedConv2D, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = v27[0];
  result = sub_25BAAF54C(v27[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v24 = a1;
    if (!result)
    {
LABEL_19:

      memcpy(v25, __srca, sizeof(v25));
      memcpy(v24, __srca, 0xA8uLL);
      memcpy(v26, __dst, sizeof(v26));
      sub_25BAA486C(v25, v27, &qword_27FBB59B0, &qword_25BCC3EB8);
      sub_25BB926DC(v26);
      memcpy(v27, __srca, sizeof(v27));
      return sub_25BAA6F5C(v27, &qword_27FBB59B0, &qword_25BCC3EB8);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __srca[17] = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB00934(0, *(v18 + 16) + 1, 1);
        v18 = __srca[17];
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_25BB00934(v21 > 1, v22 + 1, 1);
        v18 = __srca[17];
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_25BB88B14@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = MEMORY[0x277D84F90];
  __srca[20] = MEMORY[0x277D84F90];
  memcpy(v30, __src, 0x9CuLL);
  memcpy(__srca, __src, 0x9CuLL);
  __srca[21] = a3;
  __srca[22] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  sub_25BB923F0(v30, v27);
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  __srca[23] = v9;
  v27[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for MultiheadAttention.Kind, &type metadata for MultiheadAttention, v27, &type metadata for MultiheadAttention, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = v27[0];
  result = sub_25BAAF54C(v27[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v24 = a1;
    if (!result)
    {
LABEL_19:

      memcpy(v25, __srca, sizeof(v25));
      memcpy(v24, __srca, 0xC0uLL);
      memcpy(v26, __dst, 0x9CuLL);
      sub_25BAA486C(v25, v27, &qword_27FBB52D0, &qword_25BCC3958);
      sub_25BB9244C(v26);
      memcpy(v27, __srca, sizeof(v27));
      return sub_25BAA6F5C(v27, &qword_27FBB52D0, &qword_25BCC3958);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __srca[20] = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB00954(0, *(v18 + 16) + 1, 1);
        v18 = __srca[20];
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_25BB00954(v21 > 1, v22 + 1, 1);
        v18 = __srca[20];
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_25BB88E18()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  memcpy(v47, v8, sizeof(v47));
  v12 = MEMORY[0x277D84F90];
  __dst[9] = MEMORY[0x277D84F90];
  memcpy(v48, v9, 0x43uLL);
  memcpy(__dst, v9, 0x43uLL);
  __dst[10] = v7;
  __dst[11] = v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v14 = OUTLINED_FUNCTION_31(v13);
  *(v14 + 16) = xmmword_25BCBAE50;
  sub_25BB924FC(v48, v45);
  *(v14 + 32) = sub_25BCB7C1C();
  *(v14 + 40) = v15;
  __dst[12] = v14;
  v45[0] = v12;
  if (sub_25BCB5B2C())
  {
    v16 = 0;
    while (v16 < sub_25BCB5B2C())
    {
      v17 = sub_25BCB5AFC();
      OUTLINED_FUNCTION_50_5(v17, v16++, v18, v19, v45);
      if (v16 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  OUTLINED_FUNCTION_35(v45);
  v20 = v45[0];
  v21 = sub_25BAAF54C(v45[0]);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = v21;
    v40 = v11;
    v41 = v3;
    v42 = v1;
    if (!v21)
    {
LABEL_19:

      memcpy(v43, __dst, sizeof(v43));
      memcpy(v40, __dst, 0x68uLL);
      memcpy(v44, v47, 0x43uLL);
      sub_25BAA486C(v43, v45, v41, v42);
      sub_25BB92558(v44);
      memcpy(v45, __dst, sizeof(v45));
      OUTLINED_FUNCTION_42_8();
      sub_25BAA6F5C(v37, v38, v39);
      OUTLINED_FUNCTION_10_16();
      return;
    }

    v23 = 0;
    v24 = v21 - 1;
    v25 = MEMORY[0x277D84F90];
    while (1)
    {
      v26 = v24 - v23;
      if (__OFSUB__(v24, v23))
      {
        goto LABEL_21;
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x25F8779B0](v26, v20);
      }

      else
      {
        if (v26 < 0)
        {
          goto LABEL_22;
        }

        OUTLINED_FUNCTION_20_14();
        if (v29)
        {
          goto LABEL_23;
        }

        v27 = *(v20 + 32 + 8 * v28);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[9] = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_23();
        v31 = OUTLINED_FUNCTION_8_0();
        sub_25BB008B4(v31, v32, v33);
        v25 = __dst[9];
      }

      v35 = *(v25 + 16);
      v34 = *(v25 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_25BB008B4(v34 > 1, v35 + 1, 1);
        v25 = __dst[9];
      }

      ++v23;
      *(v25 + 16) = v35 + 1;
      v36 = v25 + 16 * v35;
      *(v36 + 32) = v27;
      *(v36 + 40) = 0;
      if (v22 == v23)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
}

unint64_t sub_25BB890D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  v26 = a1;
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BCBAE50;
  *(v7 + 32) = sub_25BCB7C1C();
  *(v7 + 40) = v8;
  v28 = v7;
  v24 = v6;
  if (sub_25BCB5B2C())
  {
    v9 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v9 >= result)
      {
        break;
      }

      v11 = sub_25BCB5AFC();
      sub_25BAB5F30(v11, v9++, &type metadata for ReLU.Kind, &type metadata for ReLU, &v24, &type metadata for ReLU, v11);
      if (v9 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_5:
  swift_beginAccess();
  v12 = v24;
  result = sub_25BAAF54C(v24);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v13 = result;
  if (result)
  {
    v23 = a3;
    v14 = 0;
    v15 = result - 1;
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v15 - v14;
      if (__OFSUB__(v15, v14))
      {
        break;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x25F8779B0](result, v12);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        if (result >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v17 = *(v12 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB00974(0, *(v16 + 16) + 1, 1);
        v16 = v25;
      }

      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_25BB00974(v19 > 1, v20 + 1, 1);
        v16 = v25;
      }

      ++v14;
      *(v16 + 16) = v20 + 1;
      v21 = v16 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = 0;
      if (v13 == v14)
      {

        v22 = v25;
        v4 = v26;
        v3 = v27;
        v7 = v28;
        a3 = v23;
        goto LABEL_21;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_21:
  *a3 = v22;
  a3[1] = v4;
  a3[2] = v3;
  a3[3] = v7;

  sub_25BA9D8C4(v4, v3);
  sub_25BCB617C();

  sub_25BA9D148(v4, v3);
}

unint64_t sub_25BB8936C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a1[1];
  v29 = *a1;
  v30 = v5;
  v7 = *a1;
  v6 = a1[1];
  v31 = a1[2];
  v8 = MEMORY[0x277D84F90];
  v32[0] = v7;
  v32[1] = v6;
  v33 = a1[2];
  __src[0] = v7;
  __src[1] = v6;
  __src[2] = v33;
  *&__src[3] = MEMORY[0x277D84F90];
  *(&__src[3] + 1) = a2;
  *&__src[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  sub_25BB925D0(v32, v27);
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  *(&__src[4] + 1) = v9;
  v27[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for Dense.Kind, &type metadata for Dense, v27, &type metadata for Dense, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = v27[0];
  result = sub_25BAAF54C(v27[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v24 = a4;
    if (!result)
    {
LABEL_19:

      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v24, __src, 0x50uLL);
      v26[0] = v29;
      v26[1] = v30;
      v26[2] = v31;
      sub_25BAA486C(__dst, v27, &qword_27FBB5848, &qword_25BCC3D98);
      sub_25BB9262C(v26);
      memcpy(v27, __src, sizeof(v27));
      return sub_25BAA6F5C(v27, &qword_27FBB5848, &qword_25BCC3D98);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&__src[3] = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB00994(0, *(v18 + 16) + 1, 1);
        v18 = *&__src[3];
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_25BB00994(v21 > 1, v22 + 1, 1);
        v18 = *&__src[3];
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_25BB89658@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = MEMORY[0x277D84F90];
  *&v31 = a1;
  WORD4(v31) = a2 & 0x101;
  *&v32 = a3;
  *(&v32 + 1) = MEMORY[0x277D84F90];
  *&v33 = a4;
  *(&v33 + 1) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25BCBAE50;

  *(v8 + 32) = sub_25BCB7C1C();
  *(v8 + 40) = v9;
  v34 = v8;
  *&v29[0] = v7;
  if (sub_25BCB5B2C())
  {
    v10 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v10 >= result)
      {
        break;
      }

      v12 = sub_25BCB5AFC();
      sub_25BAB5F30(v12, v10++, &type metadata for PReLU.Kind, &type metadata for PReLU, v29, &type metadata for PReLU, v12);
      if (v10 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v13 = *&v29[0];
  result = sub_25BAAF54C(*&v29[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v14 = result;
    v26 = a6;
    if (!result)
    {
LABEL_19:

      v23 = v32;
      v27[0] = v31;
      v27[1] = v32;
      v27[2] = v33;
      v24 = v33;
      v28 = v34;
      v25 = v34;
      *v26 = v31;
      *(v26 + 16) = v23;
      *(v26 + 32) = v24;
      *(v26 + 48) = v25;
      sub_25BAA486C(v27, v29, &qword_27FBB53E0, &qword_25BCC3A30);

      v29[0] = v31;
      v29[1] = v32;
      v29[2] = v33;
      v30 = v34;
      return sub_25BAA6F5C(v29, &qword_27FBB53E0, &qword_25BCC3A30);
    }

    v15 = 0;
    v16 = result - 1;
    v17 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v16 - v15;
      if (__OFSUB__(v16, v15))
      {
        goto LABEL_21;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x25F8779B0](result, v13);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v18 = *(v13 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(&v32 + 1) = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB009B4(0, *(v17 + 16) + 1, 1);
        v17 = *(&v32 + 1);
      }

      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_25BB009B4(v20 > 1, v21 + 1, 1);
        v17 = *(&v32 + 1);
      }

      ++v15;
      *(v17 + 16) = v21 + 1;
      v22 = v17 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = 0;
      if (v14 == v15)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_25BB8994C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = *(a1 + 12);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = MEMORY[0x277D84F90];
  LOBYTE(v30) = *a1;
  *(&v30 + 4) = *(a1 + 4);
  HIDWORD(v30) = v5;
  *&v31 = v7;
  *(&v31 + 1) = v6;
  *&v32 = MEMORY[0x277D84F90];
  *(&v32 + 1) = a2;
  *&v33 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;

  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  *(&v33 + 1) = v9;
  *&v29[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for RReLU.Kind, &type metadata for RReLU, v29, &type metadata for RReLU, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = *&v29[0];
  result = sub_25BAAF54C(*&v29[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v27 = a4;
    if (!result)
    {
LABEL_19:

      v24 = v31;
      v28[0] = v30;
      v28[1] = v31;
      v26 = v33;
      v28[2] = v32;
      v25 = v32;
      v28[3] = v33;
      *v27 = v30;
      v27[1] = v24;
      v27[2] = v25;
      v27[3] = v26;
      sub_25BAA486C(v28, v29, &qword_27FBB5390, &qword_25BCC39F0);

      v29[0] = v30;
      v29[1] = v31;
      v29[2] = v32;
      v29[3] = v33;
      return sub_25BAA6F5C(v29, &qword_27FBB5390, &qword_25BCC39F0);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v32 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB009D4(0, *(v18 + 16) + 1, 1);
        v18 = v32;
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_25BB009D4(v21 > 1, v22 + 1, 1);
        v18 = v32;
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_25BB89C28@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = MEMORY[0x277D84F90];
  __srca[11] = MEMORY[0x277D84F90];
  memcpy(v30, __src, 0x58uLL);
  memcpy(__srca, __src, 0x58uLL);
  __srca[12] = a3;
  __srca[13] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  sub_25BB92890(v30, v27);
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  __srca[14] = v9;
  v27[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for Conv1D.Kind, &type metadata for Conv1D, v27, &type metadata for Conv1D, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = v27[0];
  result = sub_25BAAF54C(v27[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v24 = a1;
    if (!result)
    {
LABEL_19:

      memcpy(v25, __srca, sizeof(v25));
      memcpy(v24, __srca, 0x78uLL);
      memcpy(v26, __dst, sizeof(v26));
      sub_25BAA486C(v25, v27, &qword_27FBB5A28, &qword_25BCC3F18);
      sub_25BB928EC(v26);
      memcpy(v27, __srca, sizeof(v27));
      return sub_25BAA6F5C(v27, &qword_27FBB5A28, &qword_25BCC3F18);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __srca[11] = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB009F4(0, *(v18 + 16) + 1, 1);
        v18 = __srca[11];
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_25BB009F4(v21 > 1, v22 + 1, 1);
        v18 = __srca[11];
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_25BB89F28@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = MEMORY[0x277D84F90];
  __srca[15] = MEMORY[0x277D84F90];
  memcpy(v30, __src, 0x78uLL);
  memcpy(__srca, __src, 0x78uLL);
  __srca[16] = a3;
  __srca[17] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  sub_25BB927E0(v30, v27);
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  __srca[18] = v9;
  v27[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for Conv2D.Kind, &type metadata for Conv2D, v27, &type metadata for Conv2D, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = v27[0];
  result = sub_25BAAF54C(v27[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v24 = a1;
    if (!result)
    {
LABEL_19:

      memcpy(v25, __srca, sizeof(v25));
      memcpy(v24, __srca, 0x98uLL);
      memcpy(v26, __dst, sizeof(v26));
      sub_25BAA486C(v25, v27, &qword_27FBB5A00, &qword_25BCC3EF8);
      sub_25BB9283C(v26);
      memcpy(v27, __srca, sizeof(v27));
      return sub_25BAA6F5C(v27, &qword_27FBB5A00, &qword_25BCC3EF8);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __srca[15] = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB00A14(0, *(v18 + 16) + 1, 1);
        v18 = __srca[15];
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_25BB00A14(v21 > 1, v22 + 1, 1);
        v18 = __srca[15];
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_25BB8A22C(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>, float a9@<S0>)
{
  v12 = MEMORY[0x277D84F90];
  *&v50 = a9;
  BYTE4(v50) = a1;
  *(&v50 + 1) = a2;
  *&v51 = a3;
  *(&v51 + 1) = MEMORY[0x277D84F90];
  *&v52 = a4;
  *(&v52 + 1) = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v14 = OUTLINED_FUNCTION_31(v13);
  *(v14 + 16) = xmmword_25BCBAE50;

  *(v14 + 32) = sub_25BCB7C1C();
  *(v14 + 40) = v15;
  v53 = v14;
  *&v48[0] = v12;
  if (sub_25BCB5B2C())
  {
    v16 = 0;
    while (v16 < sub_25BCB5B2C())
    {
      v17 = sub_25BCB5AFC();
      OUTLINED_FUNCTION_50_5(v17, v16++, v18, v19, v48);
      if (v16 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  v45 = a8;
  OUTLINED_FUNCTION_35(v48);
  v20 = *&v48[0];
  v21 = sub_25BAAF54C(*&v48[0]);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = v21;
    v43 = a6;
    v44 = a7;
    if (!v21)
    {
LABEL_19:

      v37 = v51;
      v46[0] = v50;
      v46[1] = v51;
      v46[2] = v52;
      v38 = v52;
      v47 = v53;
      v39 = v53;
      *v45 = v50;
      *(v45 + 16) = v37;
      *(v45 + 32) = v38;
      *(v45 + 48) = v39;
      sub_25BAA486C(v46, v48, v43, v44);

      v48[0] = v50;
      v48[1] = v51;
      v48[2] = v52;
      v49 = v53;
      OUTLINED_FUNCTION_42_8();
      sub_25BAA6F5C(v40, v41, v42);
      return;
    }

    v23 = 0;
    v24 = v21 - 1;
    v25 = MEMORY[0x277D84F90];
    while (1)
    {
      v26 = v24 - v23;
      if (__OFSUB__(v24, v23))
      {
        goto LABEL_21;
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x25F8779B0](v26, v20);
      }

      else
      {
        if (v26 < 0)
        {
          goto LABEL_22;
        }

        OUTLINED_FUNCTION_20_14();
        if (v29)
        {
          goto LABEL_23;
        }

        v27 = *(v20 + 32 + 8 * v28);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(&v51 + 1) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_23();
        v31 = OUTLINED_FUNCTION_8_0();
        sub_25BB008D4(v31, v32, v33);
        v25 = *(&v51 + 1);
      }

      v35 = *(v25 + 16);
      v34 = *(v25 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_25BB008D4(v34 > 1, v35 + 1, 1);
        v25 = *(&v51 + 1);
      }

      ++v23;
      *(v25 + 16) = v35 + 1;
      v36 = v25 + 16 * v35;
      *(v36 + 32) = v27;
      *(v36 + 40) = 0;
      if (v22 == v23)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
}

unint64_t sub_25BB8A4E8@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = MEMORY[0x277D84F90];
  __srca[10] = MEMORY[0x277D84F90];
  memcpy(v30, __src, 0x50uLL);
  memcpy(__srca, __src, 0x50uLL);
  __srca[11] = a3;
  __srca[12] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  sub_25BB922E4(v30, v27);
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  __srca[13] = v9;
  v27[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for BatchNorm.Kind, &type metadata for BatchNorm, v27, &type metadata for BatchNorm, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = v27[0];
  result = sub_25BAAF54C(v27[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v24 = a1;
    if (!result)
    {
LABEL_19:

      memcpy(v25, __srca, sizeof(v25));
      memcpy(v24, __srca, 0x70uLL);
      memcpy(v26, __dst, sizeof(v26));
      sub_25BAA486C(v25, v27, &qword_27FBB5260, &qword_25BCC3900);
      sub_25BB92340(v26);
      memcpy(v27, __srca, sizeof(v27));
      return sub_25BAA6F5C(v27, &qword_27FBB5260, &qword_25BCC3900);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __srca[10] = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB00A34(0, *(v18 + 16) + 1, 1);
        v18 = __srca[10];
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_25BB00A34(v21 > 1, v22 + 1, 1);
        v18 = __srca[10];
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_25BB8A7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = MEMORY[0x277D84F90];
  v8 = *(a1 + 32);
  *&__src[0] = *a1;
  BYTE8(__src[0]) = v5 & 1;
  BYTE9(__src[0]) = v6 & 1;
  __src[1] = *(a1 + 16);
  *&__src[2] = v8;
  *(&__src[2] + 1) = MEMORY[0x277D84F90];
  *&__src[3] = a2;
  *(&__src[3] + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;

  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  *&__src[4] = v9;
  v26[0] = v7;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for Embedding.Kind, &type metadata for Embedding, v26, &type metadata for Embedding, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = v26[0];
  result = sub_25BAAF54C(v26[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v24 = a4;
    if (!result)
    {
LABEL_19:

      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v24, __src, 0x48uLL);
      sub_25BAA486C(__dst, v26, &qword_27FBB52A8, &qword_25BCC3938);

      memcpy(v26, __src, sizeof(v26));
      return sub_25BAA6F5C(v26, &qword_27FBB52A8, &qword_25BCC3938);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(&__src[2] + 1) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB00A54(0, *(v18 + 16) + 1, 1);
        v18 = *(&__src[2] + 1);
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_25BB00A54(v21 > 1, v22 + 1, 1);
        v18 = *(&__src[2] + 1);
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_25BB8AAD8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a1[1];
  v31 = *a1;
  v32 = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v33 = a1[2];
  v34 = v6;
  v9 = MEMORY[0x277D84F90];
  v35[0] = v8;
  v35[1] = v7;
  v10 = a1[3];
  v36 = a1[2];
  v37 = v10;
  __src[0] = v8;
  __src[1] = v7;
  __src[2] = v36;
  __src[3] = v10;
  *&__src[4] = MEMORY[0x277D84F90];
  *(&__src[4] + 1) = a2;
  *&__src[5] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25BCBAE50;
  sub_25BB920D4(v35, v29);
  *(v11 + 32) = sub_25BCB7C1C();
  *(v11 + 40) = v12;
  *(&__src[5] + 1) = v11;
  v29[0] = v9;
  if (sub_25BCB5B2C())
  {
    v13 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v13 >= result)
      {
        break;
      }

      v15 = sub_25BCB5AFC();
      sub_25BAB5F30(v15, v13++, &type metadata for GroupNorm.Kind, &type metadata for GroupNorm, v29, &type metadata for GroupNorm, v15);
      if (v13 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v16 = v29[0];
  result = sub_25BAAF54C(v29[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v17 = result;
    v26 = a4;
    if (!result)
    {
LABEL_19:

      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v26, __src, 0x60uLL);
      v28[0] = v31;
      v28[1] = v32;
      v28[2] = v33;
      v28[3] = v34;
      sub_25BAA486C(__dst, v29, &qword_27FBB51E8, &qword_25BCC3898);
      sub_25BB92130(v28);
      memcpy(v29, __src, sizeof(v29));
      return sub_25BAA6F5C(v29, &qword_27FBB51E8, &qword_25BCC3898);
    }

    v18 = 0;
    v19 = result - 1;
    v20 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v19 - v18;
      if (__OFSUB__(v19, v18))
      {
        goto LABEL_21;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x25F8779B0](result, v16);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v21 = *(v16 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&__src[4] = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB00A74(0, *(v20 + 16) + 1, 1);
        v20 = *&__src[4];
      }

      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_25BB00A74(v23 > 1, v24 + 1, 1);
        v20 = *&__src[4];
      }

      ++v18;
      *(v20 + 16) = v24 + 1;
      v25 = v20 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = 0;
      if (v17 == v18)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_25BB8ADC4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a1[1];
  v30 = *a1;
  v31 = v5;
  v7 = *a1;
  v6 = a1[1];
  v32 = a1[2];
  v33 = *(a1 + 6);
  v8 = MEMORY[0x277D84F90];
  v34[0] = v7;
  v34[1] = v6;
  v35 = a1[2];
  v36 = *(a1 + 6);
  __src[0] = v7;
  __src[1] = v6;
  __src[2] = v35;
  *&__src[3] = v36;
  *(&__src[3] + 1) = MEMORY[0x277D84F90];
  *&__src[4] = a2;
  *(&__src[4] + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  sub_25BB92234(v34, v28);
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  *&__src[5] = v9;
  v28[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for LayerNorm.Kind, &type metadata for LayerNorm, v28, &type metadata for LayerNorm, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = v28[0];
  result = sub_25BAAF54C(v28[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v24 = a4;
    if (!result)
    {
LABEL_19:

      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v24, __src, 0x58uLL);
      v26[0] = v30;
      v26[1] = v31;
      v26[2] = v32;
      v27 = v33;
      sub_25BAA486C(__dst, v28, &qword_27FBB5238, &qword_25BCC38E0);
      sub_25BB92290(v26);
      memcpy(v28, __src, sizeof(v28));
      return sub_25BAA6F5C(v28, &qword_27FBB5238, &qword_25BCC38E0);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(&__src[3] + 1) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB00A94(0, *(v18 + 16) + 1, 1);
        v18 = *(&__src[3] + 1);
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_25BB00A94(v21 > 1, v22 + 1, 1);
        v18 = *(&__src[3] + 1);
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_25BB8B0D0@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v30 = a1;
  v10 = MEMORY[0x277D84F90];
  v31 = a2 & 0xFF01;
  v32 = MEMORY[0x277D84F90];
  v33 = a3;
  v34 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25BCBAE50;
  *(v11 + 32) = sub_25BCB7C1C();
  *(v11 + 40) = v12;
  v35 = v11;
  v29 = v10;
  if (sub_25BCB5B2C())
  {
    v13 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v13 >= result)
      {
        break;
      }

      v15 = sub_25BCB5AFC();
      sub_25BAB5F30(v15, v13++, &type metadata for Upsample1D.Kind, &type metadata for Upsample1D, &v29, &type metadata for Upsample1D, v15);
      if (v13 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_5:
  swift_beginAccess();
  v16 = v29;
  result = sub_25BAAF54C(v29);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v17 = result;
  if (result)
  {
    v28 = a5;
    v18 = 0;
    v19 = result - 1;
    v20 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v19 - v18;
      if (__OFSUB__(v19, v18))
      {
        break;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x25F8779B0](result, v16);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        if (result >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v21 = *(v16 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB00E48(0, *(v20 + 16) + 1, 1);
        v20 = v32;
      }

      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_25BB00E48(v23 > 1, v24 + 1, 1);
        v20 = v32;
      }

      ++v18;
      *(v20 + 16) = v24 + 1;
      v25 = v20 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = 0;
      if (v17 == v18)
      {

        v8 = v30;
        LOBYTE(v7) = v31;
        v26 = HIBYTE(v31);
        v27 = v32;
        v6 = v33;
        v5 = v34;
        v11 = v35;
        a5 = v28;
        goto LABEL_21;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v26 = HIBYTE(v7);

  v27 = MEMORY[0x277D84F90];
LABEL_21:
  *a5 = v8;
  *(a5 + 8) = v7 & 1;
  *(a5 + 9) = v26;
  *(a5 + 16) = v27;
  *(a5 + 24) = v6;
  *(a5 + 32) = v5;
  *(a5 + 40) = v11;

  sub_25BA9D8C4(v6, v5);
  sub_25BCB617C();

  sub_25BA9D148(v6, v5);
}

unint64_t sub_25BB8B3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = MEMORY[0x277D84F90];
  *&v33 = a1;
  *(&v33 + 1) = a2;
  LOWORD(v34) = a3 & 0xFF01;
  *(&v34 + 1) = MEMORY[0x277D84F90];
  *&v35 = a4;
  *(&v35 + 1) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25BCBAE50;
  *(v8 + 32) = sub_25BCB7C1C();
  *(v8 + 40) = v9;
  v36 = v8;
  *&v31[0] = v7;
  if (sub_25BCB5B2C())
  {
    v10 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v10 >= result)
      {
        break;
      }

      v12 = sub_25BCB5AFC();
      sub_25BAB5F30(v12, v10++, &type metadata for Upsample2D.Kind, &type metadata for Upsample2D, v31, &type metadata for Upsample2D, v12);
      if (v10 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v13 = *&v31[0];
  result = sub_25BAAF54C(*&v31[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v14 = result;
    v27 = a6;
    if (!result)
    {
LABEL_19:

      v23 = v33;
      v24 = v34;
      v29[0] = v33;
      v29[1] = v34;
      v29[2] = v35;
      v25 = v35;
      v30 = v36;
      v26 = v36;
      *v27 = v33;
      *(v27 + 16) = v24;
      *(v27 + 32) = v25;
      *(v27 + 48) = v26;
      v31[0] = v23;
      v31[1] = v24;
      v31[2] = v25;
      v32 = v26;
      sub_25BAA486C(v29, v28, &qword_27FBB5A50, &qword_25BCC3F38);
      return sub_25BAA6F5C(v31, &qword_27FBB5A50, &qword_25BCC3F38);
    }

    v15 = 0;
    v16 = result - 1;
    v17 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v16 - v15;
      if (__OFSUB__(v16, v15))
      {
        goto LABEL_21;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x25F8779B0](result, v13);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v18 = *(v13 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(&v34 + 1) = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB00F28(0, *(v17 + 16) + 1, 1);
        v17 = *(&v34 + 1);
      }

      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_25BB00F28(v20 > 1, v21 + 1, 1);
        v17 = *(&v34 + 1);
      }

      ++v15;
      *(v17 + 16) = v21 + 1;
      v22 = v17 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = 0;
      if (v14 == v15)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_25BB8B668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v8 = MEMORY[0x277D84F90];
  *&v32 = a1;
  *(&v32 + 1) = a2;
  *&v33 = a3;
  BYTE8(v33) = a4;
  *&v34 = MEMORY[0x277D84F90];
  *(&v34 + 1) = a5;
  *&v35 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  *(&v35 + 1) = v9;
  *&v31[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for AveragePool1D.Kind, &type metadata for AveragePool1D, v31, &type metadata for AveragePool1D, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = *&v31[0];
  result = sub_25BAAF54C(*&v31[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v28 = a7;
    if (!result)
    {
LABEL_19:

      v24 = v32;
      v25 = v33;
      v30[0] = v32;
      v30[1] = v33;
      v27 = v35;
      v30[2] = v34;
      v26 = v34;
      v30[3] = v35;
      *v28 = v32;
      v28[1] = v25;
      v28[2] = v26;
      v28[3] = v27;
      v31[0] = v24;
      v31[1] = v25;
      v31[2] = v26;
      v31[3] = v27;
      sub_25BAA486C(v30, v29, &qword_27FBB57D0, &qword_25BCC3D38);
      return sub_25BAA6F5C(v31, &qword_27FBB57D0, &qword_25BCC3D38);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v34 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BB00F68(0, *(v18 + 16) + 1, 1);
        v18 = v34;
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_25BB00F68(v21 > 1, v22 + 1, 1);
        v18 = v34;
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}