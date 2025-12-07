void sub_1C1ED3888(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C1F52964() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1C1F528B4();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_1C1ED3A14(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1C1F52034();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1C1EB4BE4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1C1ED3D58();
      goto LABEL_7;
    }

    sub_1C1ED2F24(v17, a3 & 1);
    v22 = sub_1C1EB4BE4(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1C1EB5894(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1C1F52CA4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

id sub_1C1ED3BE0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1C1ED2A90(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1C1ED3300(v13, a3 & 1);
      v8 = sub_1C1ED2A90(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1C1E785A4(0, &qword_1EDC2C2D8, 0x1E696ADA0);
        sub_1C1F52CA4();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v16 = v8;
      sub_1C1ED3FD8();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return a2;
}

char *sub_1C1ED3D58()
{
  v1 = v0;
  v33 = sub_1C1F52034();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21360, &qword_1C1F57500);
  v3 = *v0;
  v4 = sub_1C1F52BB4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
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

  return result;
}

id sub_1C1ED3FD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21358, &qword_1C1F574F8);
  v2 = *v0;
  v3 = sub_1C1F52BB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        result = v19;
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

  return result;
}

unint64_t sub_1C1ED4138(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21378, &qword_1C1F57518);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21360, &qword_1C1F57500);
    v7 = sub_1C1F52BE4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1C1ED50C8(v9, v5);
      result = sub_1C1EB4BE4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1C1F52034();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1ED430C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21358, &qword_1C1F574F8);
    v3 = sub_1C1F52BE4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1C1ED2A90(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C1ED4404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = a1;
  v79 = a2;
  v6 = sub_1C1F52034();
  v87 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v86 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21368, &qword_1C1F57508);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v77 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v77 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v77 - v19;
  result = [*(v4 + OBJC_IVAR____TtC9Calculate24_NumberFormatterObserver_numberFormatter) shouldIgnoreChanges];
  if ((result & 1) == 0)
  {
    v80 = v6;
    if (a4 && *(a4 + 16) && (v22 = sub_1C1E81EB0(*MEMORY[0x1E696A4F8]), (v23 & 1) != 0) && (sub_1C1EB0E00(*(a4 + 56) + 32 * v22, v91), sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98), (swift_dynamicCast() & 1) != 0) && (v24 = v90, v25 = [v90 BOOLValue], v24, v25))
    {
      v26 = OBJC_IVAR____TtC9Calculate24_NumberFormatterObserver_observers;
      swift_beginAccess();
      v27 = *(v4 + v26);
      v28 = v27 + 64;
      v29 = 1 << *(v27 + 32);
      v30 = -1;
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      v31 = v30 & *(v27 + 64);
      v32 = (v29 + 63) >> 6;
      v81 = (v87 + 32);
      v82 = v87 + 16;
      v89 = (v87 + 8);
      v85 = v27;

      v33 = 0;
      v83 = v20;
      v84 = v16;
      v88 = v28;
      while (v31)
      {
        v34 = v33;
LABEL_21:
        v37 = __clz(__rbit64(v31));
        v31 &= v31 - 1;
        v38 = v37 | (v34 << 6);
        v39 = v85;
        v40 = v86;
        v41 = v87;
        v42 = v80;
        (*(v87 + 16))(v86, *(v85 + 48) + *(v87 + 72) * v38, v80);
        v43 = *(*(v39 + 56) + 8 * v38);
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21370, &qword_1C1F57510);
        v45 = *(v44 + 48);
        v46 = *(v41 + 32);
        v16 = v84;
        v46(v84, v40, v42);
        *&v16[v45] = v43;
        (*(*(v44 - 8) + 56))(v16, 0, 1, v44);

        v20 = v83;
LABEL_22:
        sub_1C1ED5058(v16, v20);
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21370, &qword_1C1F57510);
        if ((*(*(v47 - 8) + 48))(v20, 1, v47) == 1)
        {
        }

        v48 = (*(**&v20[*(v47 + 48)] + 104))();
        if (v48)
        {
          v50 = *(v48 + 40);
          v49 = *(v48 + 48);
          sub_1C1E7A714(v50, v49);

          if (v50)
          {
            v50(v78, v79);
            sub_1C1E7A724(v50, v49);
          }
        }

        result = (*v89)(v20, v80);
        v28 = v88;
      }

      if (v32 <= v33 + 1)
      {
        v35 = v33 + 1;
      }

      else
      {
        v35 = v32;
      }

      v36 = v35 - 1;
      while (1)
      {
        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v34 >= v32)
        {
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21370, &qword_1C1F57510);
          (*(*(v51 - 8) + 56))(v16, 1, 1, v51);
          v31 = 0;
          v33 = v36;
          goto LABEL_22;
        }

        v31 = *(v28 + 8 * v34);
        ++v33;
        if (v31)
        {
          v33 = v34;
          goto LABEL_21;
        }
      }
    }

    else
    {
      v52 = OBJC_IVAR____TtC9Calculate24_NumberFormatterObserver_observers;
      swift_beginAccess();
      v53 = *(v4 + v52);
      v54 = v53 + 64;
      v55 = 1 << *(v53 + 32);
      v56 = -1;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      v57 = v56 & *(v53 + 64);
      v58 = (v55 + 63) >> 6;
      v82 = v87 + 32;
      v83 = (v87 + 16);
      v89 = (v87 + 8);
      v85 = v53;

      v59 = 0;
      v84 = v10;
      v81 = v13;
      v88 = v54;
      while (v57)
      {
        v61 = v59;
LABEL_42:
        v64 = __clz(__rbit64(v57));
        v57 &= v57 - 1;
        v65 = v64 | (v61 << 6);
        v66 = v85;
        v67 = v87;
        (*(v87 + 16))(v86, *(v85 + 48) + *(v87 + 72) * v65, v6);
        v68 = *(*(v66 + 56) + 8 * v65);
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21370, &qword_1C1F57510);
        v70 = v6;
        v71 = *(v69 + 48);
        v72 = *(v67 + 32);
        v10 = v84;
        v73 = v70;
        v72();
        *&v10[v71] = v68;
        (*(*(v69 - 8) + 56))(v10, 0, 1, v69);

        v13 = v81;
LABEL_43:
        sub_1C1ED5058(v10, v13);
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21370, &qword_1C1F57510);
        if ((*(*(v74 - 8) + 48))(v13, 1, v74) == 1)
        {
        }

        v75 = (*(**&v13[*(v74 + 48)] + 104))();
        if (v75)
        {
          v60 = *(v75 + 24);

          v60(v78, v79);
          v6 = v80;
        }

        else
        {

          v6 = v73;
        }

        v54 = v88;
        result = (*v89)(v13, v6);
      }

      if (v58 <= v59 + 1)
      {
        v62 = v59 + 1;
      }

      else
      {
        v62 = v58;
      }

      v63 = v62 - 1;
      while (1)
      {
        v61 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          break;
        }

        if (v61 >= v58)
        {
          v73 = v6;
          v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21370, &qword_1C1F57510);
          (*(*(v76 - 8) + 56))(v10, 1, 1, v76);
          v57 = 0;
          v59 = v63;
          goto LABEL_43;
        }

        v57 = *(v54 + 8 * v61);
        ++v59;
        if (v57)
        {
          v59 = v61;
          goto LABEL_42;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

id sub_1C1ED4C30(void *a1)
{
  v3 = OBJC_IVAR____TtC9Calculate24_NumberFormatterObserver_observers;
  *&v1[v3] = sub_1C1ED4138(MEMORY[0x1E69E7CC0]);
  *&v1[OBJC_IVAR____TtC9Calculate24_NumberFormatterObserver_numberFormatter] = a1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for _NumberFormatterObserver();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v13, sel_init);

  v6 = sub_1C1F52424();

  [v4 addObserver:v5 forKeyPath:v6 options:8 context:{0, v13.receiver, v13.super_class}];

  v7 = sub_1C1F52424();

  [v4 addObserver:v5 forKeyPath:v7 options:8 context:0];

  v8 = sub_1C1F52424();

  [v4 addObserver:v5 forKeyPath:v8 options:8 context:0];

  v9 = sub_1C1F52424();

  [v4 addObserver:v5 forKeyPath:v9 options:8 context:0];

  v10 = sub_1C1F52424();

  [v4 addObserver:v5 forKeyPath:v10 options:8 context:0];

  v11 = sub_1C1F52424();

  [v4 addObserver:v5 forKeyPath:v11 options:8 context:0];

  return v5;
}

uint64_t sub_1C1ED4F24(uint64_t a1)
{
  result = sub_1C1F52034();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata accessor for NSKeyValueChangeKey()
{
  if (!qword_1EDC2C2A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EDC2C2A0);
    }
  }
}

uint64_t sub_1C1ED5058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21368, &qword_1C1F57508);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1ED50C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21378, &qword_1C1F57518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1ED5210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1ED52B4()
{
  result = sub_1C1E91DC4(&unk_1F418DF10);
  qword_1EBF22018 = result;
  return result;
}

uint64_t sub_1C1ED52DC()
{
  result = sub_1C1E91DC4(&unk_1F418DF38);
  qword_1EDC2F668 = result;
  return result;
}

uint64_t sub_1C1ED5304()
{
  result = sub_1C1E91DC4(&unk_1F418DF70);
  qword_1EDC2F628 = result;
  return result;
}

uint64_t sub_1C1ED532C()
{
  result = sub_1C1E91DC4(&unk_1F418DFA0);
  qword_1EBF22028 = result;
  return result;
}

uint64_t sub_1C1ED5354()
{
  result = sub_1C1E91DC4(&unk_1F418E000);
  qword_1EBF22040 = result;
  return result;
}

uint64_t sub_1C1ED537C()
{
  result = sub_1C1E91DC4(&unk_1F418E028);
  qword_1EDC2F610 = result;
  return result;
}

uint64_t sub_1C1ED53A4()
{
  result = sub_1C1E91DC4(&unk_1F418E050);
  qword_1EDC2F680 = result;
  return result;
}

uint64_t sub_1C1ED53CC()
{
  result = sub_1C1E91DC4(&unk_1F418E078);
  qword_1EDC2F640 = result;
  return result;
}

uint64_t sub_1C1ED53F4()
{
  result = sub_1C1E91DC4(&unk_1F418E0A0);
  qword_1EDC2F5F0 = result;
  return result;
}

uint64_t sub_1C1ED541C()
{
  result = sub_1C1E91DC4(&unk_1F418E0D0);
  qword_1EDC2F5E0 = result;
  return result;
}

uint64_t sub_1C1ED5444()
{
  result = sub_1C1E91DC4(&unk_1F418E100);
  qword_1EDC2F5D0 = result;
  return result;
}

uint64_t sub_1C1ED546C()
{
  result = sub_1C1E91DC4(&unk_1F418E130);
  qword_1EDC2F650 = result;
  return result;
}

unint64_t sub_1C1ED5654()
{
  result = sub_1C1EEB9F0(&unk_1F418E158);
  qword_1EBF22050 = result;
  return result;
}

unint64_t CalculateExpression.TokenType.match.getter@<X0>(char *a1@<X8>)
{
  result = *v1;
  if (qword_1EBF22048 != -1)
  {
    v7 = *v1;
    swift_once();
    result = v7;
  }

  v4 = qword_1EBF22050;
  if (*(qword_1EBF22050 + 16) && (result = sub_1C1E901F0(result), (v5 & 1) != 0))
  {
    v6 = *(*(v4 + 56) + result);
  }

  else
  {
    v6 = 53;
  }

  *a1 = v6;
  return result;
}

unint64_t sub_1C1ED5708()
{
  result = sub_1C1EEBAD0(&unk_1F418E1A0);
  qword_1EDC2F6B0 = result;
  return result;
}

unint64_t sub_1C1ED5730@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  if (qword_1EDC2F6A8 != -1)
  {
    v6 = result;
    swift_once();
    result = v6;
  }

  v3 = qword_1EDC2F6B0;
  if (*(qword_1EDC2F6B0 + 16) && (result = sub_1C1EE9778(result), (v4 & 1) != 0))
  {
    v5 = *(*(v3 + 56) + result);
  }

  else
  {
    v5 = 52;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1C1ED57B8()
{
  v0 = *sub_1C1E9E410();

  v1 = sub_1C1EEBBB0(&unk_1F418E520, v0);
  result = swift_arrayDestroy();
  qword_1EBF22060 = v1;
  return result;
}

uint64_t sub_1C1ED5818(uint64_t result, uint64_t a2)
{
  v2 = result;
  v16 = a2;
  if ((result & 0xC000000000000001) != 0)
  {
    sub_1C1F52984();
    type metadata accessor for CalculateExpression.Operation();
    sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);
    result = sub_1C1F527F4();
    v2 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(result + 32);
    v3 = result + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(result + 56);
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
LABEL_18:
      sub_1C1E96B60(v2);
      return v16;
    }

    while (1)
    {
      sub_1C1E7E554(&v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1C1F529C4())
      {
        type metadata accessor for CalculateExpression.Operation();
        swift_dynamicCast();
        v14 = v15;
        v12 = v5;
        v13 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t static CalculateExpression.allWordBasedSymbols.getter()
{
  if (qword_1EBF22058 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C1ED5A80()
{
  v1 = *v0;
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](qword_1C1F58578[v1]);
  return sub_1C1F52CF4();
}

uint64_t sub_1C1ED5B08(uint64_t a1)
{
  v2 = *v1;
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](qword_1C1F58578[v2]);
  return sub_1C1F52CF4();
}

uint64_t sub_1C1ED5B5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
  swift_beginAccess();
  v5 = sub_1C1F52034();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1C1ED5C54(uint64_t a1)
{
  v2 = sub_1C1F52034();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1C1ED5D20(v5);
}

uint64_t sub_1C1ED5D20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1F52034();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1C1E77790(&qword_1EDC2E8F0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v9 = sub_1C1F52414();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  return (v10)(a1, v4);
}

uint64_t CalculateExpression.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1C1F52034();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v10 = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v7 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
  swift_beginAccess();
  (*(v4 + 16))(v6, v2 + v7, v3);
  sub_1C1E77790(&qword_1EDC2E8F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1C1F523C4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t CalculateExpression.debugDescription.getter(uint64_t a1)
{
  v7 = 0;
  v8 = 0;
  v2 = *(*sub_1C1EEBC30() + 264);

  v4 = v2(v3);

  sub_1C1EEBFC4(v4, v1, &v8, &v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211B8, &qword_1C1F57100);
  sub_1C1E785EC(&qword_1EDC2C328, &qword_1EBF211B8, &qword_1C1F57100, MEMORY[0x1E69E6310]);
  v5 = sub_1C1F523E4();

  return v5;
}

uint64_t CalculateExpression.plain.getter(uint64_t a1)
{
  sub_1C1EEBC30();
}

void sub_1C1ED62E0(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_1C1EB1C58(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_1C1EEA928(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    sub_1C1E83580(a1, &qword_1EBF212D8, &qword_1C1F574F0);
    sub_1C1EE9EA0(a2, v6);

    sub_1C1E83580(v6, &qword_1EBF212D8, &qword_1C1F574F0);
  }
}

void *sub_1C1ED6394()
{
  swift_getKeyPath();
  v5 = v0;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v1 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

id sub_1C1ED6458@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1C1ED652C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C1ED655C(v1);
}

void sub_1C1ED655C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C1E785A4(0, &qword_1EDC2C300, off_1E815B848);
  v6 = v5;
  v7 = a1;
  v8 = sub_1C1F528C4();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1C1ED66E8(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

id CalculateExpression.result.getter()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
  {
    sub_1C1ED6924();
  }

  swift_getKeyPath();
  sub_1C1F52104();

  v2 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
  swift_beginAccess();
  result = *(v1 + v2);
  if (result)
  {
    return [result ignoringNaN];
  }

  return result;
}

void sub_1C1ED6924()
{
  v1 = v0;
  swift_getKeyPath();
  *&v37 = v0;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong || (v3 = (*(*Strong + 216))(Strong), , (v3 & 1) != 0))
  {
    swift_getKeyPath();
    *&v37 = v0;
    sub_1C1F52104();

    if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C1F520F4();

      v5 = sub_1C1ED73F4();
      v7 = v6;
      swift_getKeyPath();
      *&v37 = v0;
      sub_1C1F52104();

      v8 = OBJC_IVAR____TtC9Calculate19CalculateExpression__options;
      swift_beginAccess();
      v9 = *(v1 + v8);
      swift_getKeyPath();
      *&v37 = v1;

      sub_1C1F52104();

      v10 = swift_weakLoadStrong();
      v35 = v7;
      if (v10)
      {
        v11 = (*(*v10 + 168))(v10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v37 = v11;
        sub_1C1EEDCDC(v9, sub_1C1EAF22C, 0, isUniquelyReferenced_nonNull_native, &v37);
        v13 = v5;

        v9 = v37;
      }

      else
      {
        v13 = v5;
      }

      v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v15 = sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
      v38 = v15;
      *&v37 = v14;
      sub_1C1EB1C58(&v37, v36);
      v16 = swift_isUniquelyReferenced_nonNull_native();
      sub_1C1EEA928(v36, @"CalculateKeyForceResult", v16);
      v17 = sub_1C1E83C94();
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21398, &qword_1C1F57828);
      *&v37 = v17;
      sub_1C1EB1C58(&v37, v36);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      sub_1C1EEA928(v36, @"CalculateKeyVariables", v18);
      if (!*(v9 + 16) || (, sub_1C1EE987C(@"CalculateKeyAllowEqualSign"), v20 = v19, , (v20 & 1) == 0))
      {
        v38 = MEMORY[0x1E69E6370];
        LOBYTE(v37) = 1;
        sub_1C1EB1C58(&v37, v36);
        v21 = swift_isUniquelyReferenced_nonNull_native();
        sub_1C1EEA928(v36, @"CalculateKeyAllowEqualSign", v21);
      }

      v22 = *(*sub_1C1EEBC30() + 448);

      v22();
      v24 = v23;

      if (v24)
      {

        v25 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        v38 = v15;
        *&v37 = v25;
        sub_1C1EB1C58(&v37, v36);
        v26 = swift_isUniquelyReferenced_nonNull_native();
        sub_1C1EEA928(v36, @"CalculateKeyConvertTrivial", v26);
      }

      v27 = OBJC_IVAR____TtC9Calculate19CalculateExpression_internalRequest;
      swift_beginAccess();
      v28 = *(v1 + v27);
      if (v28)
      {
        [v28 cancel];
      }

      v29 = OBJC_IVAR____TtC9Calculate19CalculateExpression__isEvaluating;
      swift_beginAccess();
      if (*(v1 + v29) == 1)
      {
        *(v1 + v29) = 1;
      }

      else
      {
        v30 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v30);
        sub_1C1F520F4();
      }

      v31 = OBJC_IVAR____TtC9Calculate19CalculateExpression_rebuild;
      swift_beginAccess();
      *(v1 + v31) = 0;
      v32 = swift_allocObject();
      swift_weakInit();

      v33 = evaluate(_:options:resultHandler:)(v13, v35, v9, sub_1C1EEC708, v32);

      v34 = *(v1 + v27);
      *(v1 + v27) = v33;
    }
  }
}

void *sub_1C1ED6FF0()
{
  swift_getKeyPath();
  v5 = v0;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v1 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalError;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

id sub_1C1ED70B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalError;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;
  return v5;
}

void sub_1C1ED71A0(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalError;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

void *CalculateExpression.error.getter()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
  {
    sub_1C1ED6924();
  }

  swift_getKeyPath();
  sub_1C1F52104();

  v2 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalError;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t CalculateExpression.activeError.getter()
{
  v0 = *(*sub_1C1E7F10C() + 344);

  v2 = v0(v1);

  return v2;
}

uint64_t sub_1C1ED73F4()
{
  v0 = sub_1C1E83618();

  v1 = *(*sub_1C1EEBC30() + 448);

  v1();
  v3 = v2;

  if (!v3)
  {
    return v0;
  }

  sub_1C1E94E48();
  if (sub_1C1F52934())
  {
    v4 = sub_1C1F52904();

    if (*(v4 + 16) >= 2uLL)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if ((sub_1C1F52934() & 1) == 0)
  {
    return v0;
  }

  v5 = sub_1C1F52904();

  if (*(v5 + 16) >= 2uLL)
  {
LABEL_7:

    return sub_1C1F525E4();
  }

  __break(1u);
  return result;
}

uint64_t CalculateExpression.declaredSymbol.getter(uint64_t a1)
{
  v1 = *(*sub_1C1EEBC30() + 448);

  v3 = v1(v2);

  return v3;
}

void sub_1C1ED76F4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C1ED7724(v1);
}

void sub_1C1ED7724(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableResult;
  v5 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableResult);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C1E785A4(0, &qword_1EDC2C300, off_1E815B848);
  v6 = v5;
  v7 = a1;
  v8 = sub_1C1F528C4();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t CalculateExpression.graphableType.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) == 1)
  {
    sub_1C1EDA348();
  }

  swift_getKeyPath();
  sub_1C1F52104();

  *a1 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType);
  return result;
}

double (*CalculateExpression.graphableFunction2D.getter())()
{
  v1 = v0;
  swift_getKeyPath();
  v11 = v0;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v2 = v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphableVariable;
  swift_beginAccess();
  if (*(v2 + 8))
  {

    v3 = sub_1C1EEC754();
    if (v3)
    {
      v4 = v3;
      v5 = sub_1C1F52424();

      v6 = [v4 graphableFunction2DFor_];

      v7 = sub_1C1EEE5C0;
LABEL_11:
      *(swift_allocObject() + 16) = v6;
      return v7;
    }
  }

  swift_getKeyPath();
  sub_1C1F52104();

  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) == 1)
  {
    sub_1C1EDA348();
  }

  swift_getKeyPath();
  sub_1C1F52104();

  if (!*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType))
  {
    return sub_1C1ED7D60;
  }

  v8 = sub_1C1EEC754();
  if (!v8)
  {
    return sub_1C1ED7D60;
  }

  v9 = [v8 graphableFunction2D];
  v7 = sub_1C1EC44EC;
  if (v9)
  {
    v6 = v9;
    goto LABEL_11;
  }

  return sub_1C1ED7D60;
}

BOOL CalculateExpression.isGraphable.getter()
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) == 1)
  {
    sub_1C1EDA348();
  }

  swift_getKeyPath();
  sub_1C1F52104();

  return *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType) != 0;
}

uint64_t (*CalculateExpression.graphableFunction3D.getter())()
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) == 1)
  {
    sub_1C1EDA348();
  }

  swift_getKeyPath();
  sub_1C1F52104();

  v1 = sub_1C1ED7D60;
  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType) == 2)
  {
    v2 = sub_1C1EEC754();
    v1 = sub_1C1ED7D60;
    if (v2)
    {
      v3 = [v2 graphableFunction3D];
      v1 = sub_1C1ED7D60;
      if (v3)
      {
        *(swift_allocObject() + 16) = v3;
        return sub_1C1EC44EC;
      }
    }
  }

  return v1;
}

uint64_t sub_1C1ED7F04()
{
  if (qword_1EDC2FEF8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC2FF00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1F576C0;

  *(inited + 32) = *sub_1C1EB971C();

  *(inited + 40) = *sub_1C1EB97BC();

  *(inited + 48) = *sub_1C1EB980C();

  *(inited + 56) = *sub_1C1EB985C();

  *(inited + 64) = *sub_1C1EB98AC();

  *(inited + 72) = *sub_1C1EB9C6C();

  *(inited + 80) = *sub_1C1EB9CBC();

  *(inited + 88) = *sub_1C1EB98FC();

  *(inited + 96) = *sub_1C1EB994C();

  *(inited + 104) = *sub_1C1EB999C();

  *(inited + 112) = *sub_1C1EB99EC();

  *(inited + 120) = *sub_1C1EB9A3C();

  *(inited + 128) = *sub_1C1EB9A8C();

  *(inited + 136) = *sub_1C1EB9ADC();

  *(inited + 144) = *sub_1C1EB9B2C();

  *(inited + 152) = *sub_1C1EB9B7C();

  *(inited + 160) = *sub_1C1EB9BCC();

  *(inited + 168) = *sub_1C1EB9C1C();

  v2 = sub_1C1E81D78(inited, v0);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_1EBF22070 = v2;
  return result;
}

uint64_t sub_1C1ED80F8()
{
  if (qword_1EBF22068 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBF22070;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1F56430;

  *(inited + 32) = *sub_1C1E7D7BC();

  *(inited + 40) = *sub_1C1E7D80C();

  v2 = sub_1C1E81D78(inited, v0);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_1EDC2FEF0 = v2;
  return result;
}

uint64_t sub_1C1ED81EC()
{
  if (qword_1EBF22078 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC2FEF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1F576E0;

  *(inited + 32) = *sub_1C1EB953C();

  *(inited + 40) = *sub_1C1EB958C();

  *(inited + 48) = *sub_1C1EB95DC();

  *(inited + 56) = *sub_1C1EB962C();

  *(inited + 64) = *sub_1C1EB967C();

  *(inited + 72) = *sub_1C1EB96CC();

  *(inited + 80) = *sub_1C1EB976C();

  v2 = sub_1C1E81D78(inited, v0);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_1EDC2FEE0 = v2;
  return result;
}

uint64_t sub_1C1ED8330()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1F576F0;
  *(inited + 32) = *sub_1C1EB9E0C();

  *(inited + 40) = *sub_1C1EB9EAC();

  *(inited + 48) = *sub_1C1EB9EFC();

  *(inited + 56) = *sub_1C1EB9E5C();

  *(inited + 64) = *sub_1C1EB9F4C();

  *(inited + 72) = *sub_1C1EB9F9C();

  v1 = sub_1C1E7D41C(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_1EDC2FF10 = v1;
  return result;
}

Swift::Void __swiftcall CalculateExpression.setNeedsEvaluation(rebuild:)(Swift::Bool rebuild)
{
  v2 = v1;
  if (rebuild)
  {
    v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression_rebuild;
    swift_beginAccess();
    *(v2 + v3) = 1;
  }

  if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
  {
    *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphNeedsEvaluation) == 1)
  {
    *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphNeedsEvaluation) = 1;
  }

  else
  {
    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }
}

uint64_t CalculateExpression.referenceCount.getter()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v2 = OBJC_IVAR____TtC9Calculate19CalculateExpression___documentReferenceCount;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_getKeyPath();
  sub_1C1F52104();

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression___graphReferenceCount;
  swift_beginAccess();
  v5 = *(v1 + v4);
  result = v3 + v5;
  if (__OFADD__(v3, v5))
  {
    __break(1u);
  }

  return result;
}

void sub_1C1ED88EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21400, &unk_1C1F58440);
    v2 = sub_1C1F52BE4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        sub_1C1E785A4(0, &qword_1EDC2C300, off_1E815B848);

        v19 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21308, &qword_1C1F572A0);
        swift_dynamicCast();
        v20 = sub_1C1EAC150(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v26;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v26;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1C1ED8B28(void *a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21288, &qword_1C1F56D58);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a2;
    v10[4] = a1;
    v11 = objc_opt_self();
    v12 = a1;
    v13 = a2;

    v14 = [v11 currentThread];
    v15 = [v14 isMainThread];

    if (v15)
    {
      sub_1C1ED8D38(v9, a2, a1);
    }

    else
    {
      v16 = sub_1C1F527A4();
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
      sub_1C1F52784();

      v17 = sub_1C1F52774();
      v18 = swift_allocObject();
      v19 = MEMORY[0x1E69E85E0];
      v18[2] = v17;
      v18[3] = v19;
      v18[4] = sub_1C1EEE2F8;
      v18[5] = v10;
      sub_1C1EBE044(0, 0, v7, &unk_1C1F58488, v18);
    }
  }

  return result;
}

uint64_t sub_1C1ED8D38(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F520F4();

  v5 = a3;
  sub_1C1ED655C(a3);
  v6 = OBJC_IVAR____TtC9Calculate19CalculateExpression__isEvaluating;
  result = swift_beginAccess();
  if (*(a1 + v6))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1F520F4();
  }

  else
  {
    *(a1 + v6) = 0;
  }

  return result;
}

uint64_t sub_1C1ED8ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1C1F52784();
  v5[4] = sub_1C1F52774();
  v7 = sub_1C1F52764();

  return MEMORY[0x1EEE6DFA0](sub_1C1ED8F68, v7, v6);
}

uint64_t sub_1C1ED8F68()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t CalculateExpression.foundSymbols.getter(uint64_t a1)
{
  v1 = *(*sub_1C1EEBC30() + 456);

  v3 = v1(v2);

  return v3;
}

uint64_t sub_1C1ED9080(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a1)
    {
      type metadata accessor for CalculateDocument(0);
      sub_1C1E77790(&qword_1EBF21408, type metadata accessor for CalculateDocument, &protocol conformance descriptor for CalculateDocument);

      v2 = sub_1C1F52414();

      if ((v2 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      swift_weakAssign();
      sub_1C1E77A68();
    }
  }

  else
  {

    if (!a1)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F520F4();
}

uint64_t sub_1C1ED9284@<X0>(uint64_t *a4@<X8>)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a4 = result;
  return result;
}

uint64_t CalculateExpression.parent.setter(void (*a1)(char *, uint64_t, uint64_t))
{
  v2 = v1;
  v4 = sub_1C1F52034();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a1)
    {
      v12 = Strong;
      swift_getKeyPath();
      v19 = v5;
      v21 = v12;
      v18[1] = sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
      sub_1C1F52104();

      v13 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
      swift_beginAccess();
      v18[0] = *(v5 + 16);
      (v18[0])(v10, v12 + v13, v4);
      swift_getKeyPath();
      v20 = a1;
      sub_1C1F52104();

      v14 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
      swift_beginAccess();
      (v18[0])(v7, a1 + v14, v4);
      LOBYTE(v14) = sub_1C1F52014();

      v15 = *(v19 + 8);
      v15(v7, v4);
      v15(v10, v4);
      if ((v14 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      swift_weakAssign();
    }
  }

  else if (!a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v18[-2] = v2;
  v18[-1] = a1;
  v22 = v2;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F520F4();
}

uint64_t (*CalculateExpression.parent.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9Calculate19CalculateExpression___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1F52124();

  v4[7] = OBJC_IVAR____TtC9Calculate19CalculateExpression__parent;
  swift_beginAccess();
  v4[3] = swift_weakLoadStrong();
  return sub_1C1ED984C;
}

void sub_1C1ED984C(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  v4 = v3[4];
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  *v3 = v4;
  swift_getKeyPath();
  sub_1C1F52114();

  free(v3);
}

uint64_t CalculateExpression.__allocating_init(_:options:base:id:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  CalculateExpression.init(_:options:base:id:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_1C1ED99A0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1C1F52034();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1E74EC0(MEMORY[0x1E69E7CC0]);
  v12 = 1;
  sub_1C1F52024();
  type metadata accessor for CalculateExpression(0);
  v9 = swift_allocObject();
  result = CalculateExpression.init(_:options:base:id:)(a2, 0xE100000000000000, v8, &v12, v7);
  *a3 = v9;
  return result;
}

uint64_t sub_1C1ED9ACC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___variableResults;
  swift_beginAccess();

  sub_1C1EE93E4(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }
}

uint64_t sub_1C1ED9C30(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
}

void sub_1C1ED9D28(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression__variables;
  swift_beginAccess();

  v5 = sub_1C1EE958C(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;

    v6 = sub_1C1E7635C(MEMORY[0x1E69E7CC0]);
    sub_1C1ED9ACC(v6);
    sub_1C1E77A68();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }
}

uint64_t sub_1C1ED9F00@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  *a1 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType);
  return result;
}

uint64_t sub_1C1ED9FB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  *a2 = *(v3 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType);
  return result;
}

unsigned __int8 *sub_1C1EDA098(unsigned __int8 *result)
{
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  return result;
}

uint64_t sub_1C1EDA1FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableVariables;
  if (sub_1C1EEB85C(*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableVariables), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }
}

uint64_t sub_1C1EDA348()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) != 1)
  {
    return result;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1F520F4();

  v4 = *(*sub_1C1EEBC30() + 264);

  v6 = v4(v5);

  v36 = v0;
  if (v6 >> 62)
  {
LABEL_17:
    v7 = sub_1C1F52994();
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_18:

    v12 = *(*sub_1C1EEBC30() + 400);

    v14 = v12(v13);

    if (v14 >= 3)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    if (*(v36 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType) != v15)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_4:
  v8 = 0;
  while ((v6 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1C6911DB0](v8, v6);
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_13;
    }

LABEL_8:
    v11 = *((*(*v9 + 232))() + 16);

    if (v11)
    {
      goto LABEL_14;
    }

    ++v8;
    if (v10 == v7)
    {
      goto LABEL_18;
    }
  }

  if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(v6 + 8 * v8 + 32);

  v10 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
LABEL_14:

  if (!*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType))
  {
    goto LABEL_23;
  }

LABEL_22:
  v16 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C1F520F4();

LABEL_23:
  v17 = *(*sub_1C1EEBC30() + 264);

  v19 = v17(v18);

  if (v19 >> 62)
  {
    goto LABEL_43;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20)
  {
LABEL_25:
    v21 = 0;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1C6911DB0](v21, v19);
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_38:
          __break(1u);
LABEL_39:

LABEL_41:

          v32 = MEMORY[0x1E69E7CC0];
          return sub_1C1EDA1FC(v32);
        }
      }

      else
      {
        if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_43:
          v20 = sub_1C1F52994();
          if (!v20)
          {
            break;
          }

          goto LABEL_25;
        }

        v22 = *(v19 + 8 * v21 + 32);

        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_38;
        }
      }

      v24 = *(*v22 + 232);
      v25 = *(v24() + 16);

      if (v25)
      {
        v27 = *((v24)(v26) + 16);

        if (v27 != 1)
        {
          goto LABEL_39;
        }

        v29 = (v24)(v28);
        if (!*(v29 + 16))
        {

          goto LABEL_41;
        }

        v30 = *(v29 + 32);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21200, &qword_1C1F568F0);
        sub_1C1E785A4(0, &qword_1EBF213C8, 0x1E696ABC0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_39;
        }

        v31 = [v37 code];

        if (v31 != -1003)
        {
          goto LABEL_39;
        }
      }

      ++v21;
    }

    while (v23 != v20);
  }

  v33 = *(*sub_1C1EEBC30() + 424);

  v35 = v33(v34);

  v32 = v35;
  return sub_1C1EDA1FC(v32);
}

uint64_t sub_1C1EDA988(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1C1F525D4();
  }

  else
  {
    return 0;
  }
}

uint64_t CalculateExpression.effectiveGraphableType.getter@<X0>(char *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable;
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) == 1)
  {
    sub_1C1EDA348();
  }

  swift_getKeyPath();
  sub_1C1F52104();

  v5 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType);
  if (!v5)
  {
    swift_getKeyPath();
    sub_1C1F52104();

    if (*(v1 + v3) == 1)
    {
      sub_1C1EDA348();
    }

    swift_getKeyPath();
    sub_1C1F52104();

    if (*(*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableVariables) + 16))
    {
      v5 = 1;
    }
  }

  *a1 = v5;
  return result;
}

uint64_t CalculateExpression.graphableVariables.getter()
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) == 1)
  {
    sub_1C1EDA348();
  }

  swift_getKeyPath();
  sub_1C1F52104();
}

void sub_1C1EDAC74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (v3 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphableVariable);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;

  v7 = sub_1C1E7635C(MEMORY[0x1E69E7CC0]);
  sub_1C1ED9ACC(v7);
  sub_1C1E77A68();
  if (*(v3 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) = 0;
  }

  CalculateExpression.setNeedsEvaluation(rebuild:)(0);
}

uint64_t (*sub_1C1EDADE4(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1EDAE48;
}

void sub_1C1EDAE48(void *a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = a1[3];
    v5 = sub_1C1E7635C(MEMORY[0x1E69E7CC0]);
    sub_1C1ED9ACC(v5);
    sub_1C1E77A68();
    if (*(v4 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
    {
      v6 = a1[3];
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *a1 = v6;
      sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
      sub_1C1F520F4();
    }

    else
    {
      *(v4 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) = 0;
    }

    CalculateExpression.setNeedsEvaluation(rebuild:)(0);
  }
}

uint64_t sub_1C1EDAF94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v4 = (v3 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphableVariable);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

void sub_1C1EDB060(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  CalculateExpression.graphableVariable.setter(v1, v2);
}

void CalculateExpression.graphableVariable.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphableVariable);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1C1F52C64() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    sub_1C1EDAC74(a1, a2);
    return;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F520F4();
}

uint64_t (*CalculateExpression.graphableVariable.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9Calculate19CalculateExpression___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1F52124();

  v4[7] = sub_1C1EDADE4(v4);
  return sub_1C1EDB344;
}

uint64_t CalculateExpression.isLikelyMath.getter(uint64_t a1)
{
  v1 = *(*sub_1C1EEBC30() + 488);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

uint64_t sub_1C1EDB430()
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v1 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___expression);

  return v1;
}

uint64_t sub_1C1EDB4EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v4 = *(v3 + OBJC_IVAR____TtC9Calculate19CalculateExpression___expression + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC9Calculate19CalculateExpression___expression);
  a2[1] = v4;
}

uint64_t sub_1C1EDB5BC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___expression);
  v6 = *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___expression) == a1 && *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___expression + 8) == a2;
  if (v6 || (sub_1C1F52C64() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }
}

uint64_t sub_1C1EDB728@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C1E83618();
  a1[1] = v2;
}

uint64_t sub_1C1EDB780(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t CalculateExpression.expression.setter(uint64_t a1, uint64_t a2)
{
  sub_1C1EDB5BC(a1, a2);
  if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) = 0;
  }

  sub_1C1EE6250(0, &OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableOperation, &unk_1C1F57C90, sub_1C1EEE164);
  sub_1C1EDBB90(0);
  sub_1C1E77A68();
  if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation))
  {
    v4 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v4);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) = 0;
  }

  if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphNeedsEvaluation))
  {
    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphNeedsEvaluation) = 0;
  }

  CalculateExpression.setNeedsEvaluation(rebuild:)(1);
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 488))(result);
  }

  return result;
}

uint64_t sub_1C1EDBB90(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableExpression;
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableExpression))
  {
    if (a1)
    {
      type metadata accessor for CalculateExpression.RichExpression();
      sub_1C1E77790(&qword_1EDC2E8C8, type metadata accessor for CalculateExpression.RichExpression, &protocol conformance descriptor for CalculateExpression.RichExpression);

      v5 = sub_1C1F52414();

      if (v5)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + v4) = a1;
}

uint64_t (*CalculateExpression.expression.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1C1E83618();
  a1[1] = v3;

  return sub_1C1EDBD94;
}

uint64_t sub_1C1EDBD94(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return CalculateExpression.expression.setter(*a1, v2);
  }

  CalculateExpression.expression.setter(v3, v2);
}

uint64_t CalculateExpression.copyableExpression.getter(uint64_t a1)
{
  v1 = *(*sub_1C1EEBC30() + 304);

  v3 = v1(v2);

  return v3;
}

uint64_t sub_1C1EDBE7C()
{
  sub_1C1E7F10C();
  v1 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
  result = swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    *(v0 + v1) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) == 1)
  {
    *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) = 1;
  }

  else
  {
    v4 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v4);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  return result;
}

uint64_t sub_1C1EDC0A0@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

uint64_t sub_1C1EDC18C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F520F4();
}

uint64_t sub_1C1EDC248(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__options;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_1C1EDC2B0()
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v1 = v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__selectedRange;
  swift_beginAccess();
  return *v1;
}

__n128 sub_1C1EDC374@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v4 = (v3 + OBJC_IVAR____TtC9Calculate19CalculateExpression__selectedRange);
  swift_beginAccess();
  v5 = v4[1].n128_u8[0];
  result = *v4;
  *a2 = *v4;
  a2[1].n128_u8[0] = v5;
  return result;
}

uint64_t sub_1C1EDC478(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC9Calculate19CalculateExpression__selectedRange;
  result = swift_beginAccess();
  if ((*(v7 + 16) & 1) == 0)
  {
    if (a3)
    {
      goto LABEL_11;
    }

    if (*v7 != a1 || *(v7 + 8) != a2)
    {
      goto LABEL_11;
    }

LABEL_10:
    *v7 = a1;
    *(v7 + 8) = a2;
    *(v7 + 16) = a3 & 1;
    return result;
  }

  if (a3)
  {
    goto LABEL_10;
  }

LABEL_11:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F520F4();
}

uint64_t CalculateExpression.assumeDegrees.setter(char a1)
{
  v2 = a1 & 1;
  sub_1C1EDBE7C();
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___assumeDegrees) == v2)
  {
    *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___assumeDegrees) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v7[0] = v1;
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  v4 = sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  v5 = @"CalculateKeyAssumeDegrees";
  sub_1C1F52104();

  v7[3] = v4;
  v7[0] = sub_1C1F528A4();
  swift_getKeyPath();
  sub_1C1F52104();

  swift_getKeyPath();
  sub_1C1F52124();

  swift_beginAccess();
  sub_1C1ED62E0(v7, v5);
  swift_endAccess();
  swift_getKeyPath();
  sub_1C1F52114();

  CalculateExpression.setNeedsEvaluation(rebuild:)(0);
  swift_getKeyPath();
  v7[0] = v1;
  sub_1C1F52104();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 488))(result);
  }

  return result;
}

uint64_t (*CalculateExpression.assumeDegrees.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  swift_getKeyPath();
  *a1 = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  *(a1 + 16) = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___assumeDegrees);
  return sub_1C1EDCA50;
}

uint64_t CalculateExpression.allowPartialExpressions.setter(char a1)
{
  v2 = a1 & 1;
  sub_1C1EDBE7C();
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___allowPartialExpressions) == v2)
  {
    *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___allowPartialExpressions) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v7[0] = v1;
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  v4 = sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  v5 = @"CalculateKeyAllowPartialExpressions";
  sub_1C1F52104();

  v7[3] = v4;
  v7[0] = sub_1C1F528A4();
  swift_getKeyPath();
  sub_1C1F52104();

  swift_getKeyPath();
  sub_1C1F52124();

  swift_beginAccess();
  sub_1C1ED62E0(v7, v5);
  swift_endAccess();
  swift_getKeyPath();
  sub_1C1F52114();

  CalculateExpression.setNeedsEvaluation(rebuild:)(1);
  swift_getKeyPath();
  v7[0] = v1;
  sub_1C1F52104();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 488))(result);
  }

  return result;
}

uint64_t (*CalculateExpression.allowPartialExpressions.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  swift_getKeyPath();
  *a1 = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  *(a1 + 16) = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___allowPartialExpressions);
  return sub_1C1EDCEE8;
}

uint64_t CalculateExpression.flexibleFractionDigits.setter(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___flexibleFractionDigits) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___flexibleFractionDigits) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v6[0] = v1;
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  v3 = sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  v4 = @"CalculateKeyFlexibleFractionDigits";
  sub_1C1F52104();

  v6[3] = v3;
  v6[0] = sub_1C1F528A4();
  swift_getKeyPath();
  sub_1C1F52104();

  swift_getKeyPath();
  sub_1C1F52124();

  swift_beginAccess();
  sub_1C1ED62E0(v6, v4);
  swift_endAccess();
  swift_getKeyPath();
  sub_1C1F52114();

  return sub_1C1EDD220();
}

uint64_t sub_1C1EDD220()
{
  isUniquelyReferenced_nonNull_native = v0;
  v89 = *v0;
  v2 = sub_1C1F52034();
  v93 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v88 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v101 = &v84 - v5;
  swift_getKeyPath();
  v6 = OBJC_IVAR____TtC9Calculate19CalculateExpression___observationRegistrar;
  *v103 = v0;
  v7 = sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___format) != 2)
  {
    return sub_1C1E7BACC(MEMORY[0x1E69E7CC0], &OBJC_IVAR____TtC9Calculate19CalculateExpression__postfixStack, sub_1C1E767BC, &unk_1C1F57BA0, sub_1C1EED600);
  }

  v104 = MEMORY[0x1E69E7CC0];
  v105 = MEMORY[0x1E69E7CC0];
  v100 = sub_1C1E74A5C(MEMORY[0x1E69E7CC0]);
  swift_getKeyPath();
  *v103 = v0;
  sub_1C1F52104();

  v8 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__postfixStack);
  if (v8 >> 62)
  {
    goto LABEL_116;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v96 = v6;
  v90 = isUniquelyReferenced_nonNull_native;
  v91 = v7;
  if (v9)
  {
    v99 = v8 & 0xC000000000000001;
    v92 = v8 & 0xFFFFFFFFFFFFFF8;
    v97 = (v93 + 16);
    v95 = v93 + 8;

    v7 = 0;
    v94 = v8;
    v98 = v9;
    while (1)
    {
      if (v99)
      {
        v10 = MEMORY[0x1C6911DB0](v7, v8);
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_108;
        }
      }

      else
      {
        if (v7 >= *(v92 + 16))
        {
          goto LABEL_112;
        }

        v10 = *(v8 + 8 * v7 + 32);

        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
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
          v9 = sub_1C1F52994();
          goto LABEL_4;
        }
      }

      v102 = v11;
      isUniquelyReferenced_nonNull_native = sub_1C1E7F10C();
      v12 = *(*isUniquelyReferenced_nonNull_native + 392);

      v13 = v12();

      if (v13 >> 62)
      {
        if (!sub_1C1F52994())
        {
LABEL_6:

          goto LABEL_7;
        }
      }

      else if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_6;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1C6911DB0](0, v13);
      }

      else
      {
        if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_111;
        }

        v14 = *(v13 + 32);
      }

      v15 = *v97;
      v16 = v101;
      v8 = v2;
      (*v97)(v101, v14 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_id, v2);

      v17 = v100;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v103 = v17;
      v6 = sub_1C1EB4BE4(v16);
      v19 = *(v17 + 16);
      v20 = (v18 & 1) == 0;
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        goto LABEL_110;
      }

      v22 = v18;
      if (*(v17 + 24) >= v21)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C1EB594C();
        }
      }

      else
      {
        sub_1C1EB4FF8(v21, isUniquelyReferenced_nonNull_native);
        v23 = sub_1C1EB4BE4(v101);
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_123;
        }

        v6 = v23;
      }

      v25 = *v103;
      v100 = *v103;
      if (v22)
      {
        *(*(*v103 + 56) + 8 * v6) = v10;

        v2 = v8;
        (*v95)(v101, v8);
      }

      else
      {
        *(*v103 + 8 * (v6 >> 6) + 64) |= 1 << v6;
        isUniquelyReferenced_nonNull_native = v93;
        v26 = v101;
        v15(v25[6] + *(v93 + 72) * v6, v101, v8);
        *(v25[7] + 8 * v6) = v10;

        v27 = v26;
        v2 = v8;
        (*(isUniquelyReferenced_nonNull_native + 8))(v27, v8);
        v28 = v25[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_114;
        }

        v25[2] = v30;
      }

      v6 = v96;
      v8 = v94;
LABEL_7:
      isUniquelyReferenced_nonNull_native = *(*sub_1C1E7F10C() + 352);

      (isUniquelyReferenced_nonNull_native)(0);

      ++v7;
      if (v102 == v98)
      {

        isUniquelyReferenced_nonNull_native = v90;
        v7 = v91;
        break;
      }
    }
  }

  v32 = *(*sub_1C1E7F10C() + 392);

  v34 = v32(v33);

  if (v34 >> 62)
  {
    v35 = sub_1C1F52994();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = MEMORY[0x1E69E7CC0];
  if (v35)
  {
    v101 = v34 & 0xC000000000000001;
    v92 = OBJC_IVAR____TtC9Calculate19CalculateExpression__base;
    v93 = OBJC_IVAR____TtC9Calculate19CalculateExpression___engine;
    swift_beginAccess();
    v37 = 0;
    v8 = 0;
    v97 = (v34 + 32);
    v98 = v34 & 0xFFFFFFFFFFFFFF8;
    v87 = @"CalculateKeyEngine";
    v86 = xmmword_1C1F56480;
    v94 = v34;
    v95 = v36;
    v99 = v35;
    while (1)
    {
      if (v101)
      {
        v2 = MEMORY[0x1C6911DB0](v37, v34);
        v29 = __OFADD__(v37++, 1);
        if (v29)
        {
          goto LABEL_109;
        }
      }

      else
      {
        if (v37 >= *(v98 + 16))
        {
          goto LABEL_113;
        }

        v2 = v97[v37];

        v29 = __OFADD__(v37++, 1);
        if (v29)
        {
          goto LABEL_109;
        }
      }

      MEMORY[0x1C6911980](v38);
      if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C1F526E4();
      }

      sub_1C1F52724();
      v102 = v104;
      v39 = *(v2 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      if (qword_1EDC2F690 != -1)
      {
        swift_once();
      }

      isUniquelyReferenced_nonNull_native = qword_1EDC2F698;
      if (*(qword_1EDC2F698 + 16))
      {
        sub_1C1F52CD4();
        MEMORY[0x1C6911FD0](v39);
        v40 = sub_1C1F52CF4();
        v41 = -1 << *(isUniquelyReferenced_nonNull_native + 32);
        v42 = v40 & ~v41;
        if ((*(isUniquelyReferenced_nonNull_native + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
        {
          v43 = ~v41;
          while (*(*(isUniquelyReferenced_nonNull_native + 48) + v42) != v39)
          {
            v42 = (v42 + 1) & v43;
            if (((*(isUniquelyReferenced_nonNull_native + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          v44 = v102;
          if (v102 >> 62)
          {
            if (sub_1C1F52994() > 0)
            {
              if (!sub_1C1F52994())
              {
LABEL_81:
                v95 = v8;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21178, &qword_1C1F57C50);
                inited = swift_initStackObject();
                *(inited + 16) = v86;
                v56 = v87;
                *(inited + 32) = v87;
                swift_getKeyPath();
                v57 = v90;
                *v103 = v90;
                v58 = v56;
                sub_1C1F52104();

                v59 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
                *(inited + 64) = sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
                *(inited + 40) = v59;
                v60 = sub_1C1E74EC0(inited);
                swift_setDeallocating();
                sub_1C1E83580(inited + 32, &qword_1EBF21180, &qword_1C1F564D0);
                v103[0] = 1;
                v61 = v88;
                sub_1C1F52024();
                v62 = swift_allocObject();
                CalculateExpression.init(_:options:base:id:)(0, 0xE000000000000000, v60, v103, v61);
                swift_getKeyPath();
                *v103 = v57;
                v7 = v91;
                sub_1C1F52104();

                v63 = *(v57 + v92);
                v64 = *(v57 + v92);
                v65 = OBJC_IVAR____TtC9Calculate19CalculateExpression__base;
                swift_beginAccess();
                if (qword_1C1F58578[*(v62 + v65)] == qword_1C1F58578[v63])
                {
                  *(v62 + v65) = v64;
                  sub_1C1EE1790();
                  v8 = v95;
                }

                else
                {
                  KeyPath = swift_getKeyPath();
                  MEMORY[0x1EEE9AC00](KeyPath);
                  *(&v84 - 2) = v62;
                  *(&v84 - 8) = v64;
                  *v103 = v62;
                  v8 = v95;
                  sub_1C1F520F4();
                }

                v67 = sub_1C1E7F10C();
                v68 = *(*v67 + 400);
                isUniquelyReferenced_nonNull_native = *v67 + 400;

                v68(v69);

                CalculateExpression.parent.setter(v70);
                v71 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
                swift_beginAccess();
                v34 = v94;
                if (*(v62 + v71) == 1)
                {
                  *(v62 + v71) = 1;
                }

                else
                {
                  v72 = swift_getKeyPath();
                  isUniquelyReferenced_nonNull_native = &v84;
                  MEMORY[0x1EEE9AC00](v72);
                  *(&v84 - 2) = v62;
                  *(&v84 - 8) = 1;
                  *v103 = v62;
                  sub_1C1F520F4();
                }

                v73 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateRich;
                swift_beginAccess();
                if (*(v62 + v73))
                {
                  v74 = swift_getKeyPath();
                  isUniquelyReferenced_nonNull_native = &v84;
                  MEMORY[0x1EEE9AC00](v74);
                  *(&v84 - 2) = v62;
                  *(&v84 - 8) = 0;
                  *v103 = v62;
                  sub_1C1F520F4();
                }

                else
                {
                  *(v62 + v73) = 0;
                }

                if (*(v62 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) == 1)
                {
                  *(v62 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) = 1;
                }

                else
                {
                  v75 = swift_getKeyPath();
                  isUniquelyReferenced_nonNull_native = &v84;
                  MEMORY[0x1EEE9AC00](v75);
                  *(&v84 - 2) = v62;
                  *(&v84 - 8) = 1;
                  *v103 = v62;
                  sub_1C1F520F4();
                }

                MEMORY[0x1C6911980](v76);
                if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1C1F526E4();
                }

                sub_1C1F52724();

                v95 = v105;

                goto LABEL_96;
              }

LABEL_59:
              if ((v44 & 0xC000000000000001) != 0)
              {
                v46 = MEMORY[0x1C6911DB0](0, v44);
                if (*(v100 + 16))
                {
                  goto LABEL_62;
                }
              }

              else
              {
                v45 = v100;
                if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_115;
                }

                v46 = *(v44 + 32);

                if (*(v45 + 16))
                {
LABEL_62:
                  v47 = sub_1C1EB4BE4(v46 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_id);
                  if (v48)
                  {
                    v49 = *(*(v100 + 56) + 8 * v47);
                    v50 = swift_retain_n();
                    MEMORY[0x1C6911980](v50);
                    if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_1C1F526E4();
                    }

                    sub_1C1F52724();
                    v95 = v105;
                    v51 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
                    swift_beginAccess();
                    if (*(v49 + v51) == 1)
                    {
                      *(v49 + v51) = 1;
                    }

                    else
                    {
                      v52 = swift_getKeyPath();
                      MEMORY[0x1EEE9AC00](v52);
                      *(&v84 - 2) = v49;
                      *(&v84 - 8) = 1;
                      *v103 = v49;
                      sub_1C1F520F4();
                    }

                    v53 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateRich;
                    swift_beginAccess();
                    if (*(v49 + v53) == 1)
                    {
                      *(v49 + v53) = 1;
                      goto LABEL_71;
                    }

                    isUniquelyReferenced_nonNull_native = swift_getKeyPath();
                    v85 = &v84;
                    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
                    *(&v84 - 2) = v49;
                    *(&v84 - 8) = 1;
                    *v103 = v49;
                    sub_1C1F520F4();

                    if (*(v49 + v53))
                    {
LABEL_71:
                      isUniquelyReferenced_nonNull_native = swift_getKeyPath();
                      MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
                      *(&v84 - 2) = v49;
                      *(&v84 - 8) = 0;
                      *v103 = v49;
                      sub_1C1F520F4();
                    }

                    else
                    {
                      *(v49 + v53) = 0;
                    }

                    v54 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression;
                    if (*(v49 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) == 1)
                    {

                      *(v49 + v54) = 1;

                      v7 = v91;
                    }

                    else
                    {
                      isUniquelyReferenced_nonNull_native = swift_getKeyPath();
                      v85 = &v84;
                      MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
                      *(&v84 - 2) = v49;
                      *(&v84 - 8) = 1;
                      *v103 = v49;
                      v7 = v91;
                      sub_1C1F520F4();
                    }

LABEL_96:
                    v104 = MEMORY[0x1E69E7CC0];
                    v102 = MEMORY[0x1E69E7CC0];
                    v6 = v96;
                    goto LABEL_40;
                  }
                }
              }

              goto LABEL_81;
            }
          }

          else if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }
        }
      }

LABEL_39:

LABEL_40:
      if (v37 == v99)
      {
        goto LABEL_98;
      }
    }
  }

  v102 = MEMORY[0x1E69E7CC0];
  v95 = MEMORY[0x1E69E7CC0];
LABEL_98:

  v77 = v95;
  if (v95 >> 62)
  {
    v78 = sub_1C1F52994();
  }

  else
  {
    v78 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v78)
  {
    goto LABEL_107;
  }

  v29 = __OFSUB__(v78, 1);
  v79 = v78 - 1;
  if (v29)
  {
    __break(1u);
    goto LABEL_120;
  }

  if ((v77 & 0xC000000000000001) != 0)
  {
LABEL_120:
    MEMORY[0x1C6911DB0](v79, v77);
    goto LABEL_106;
  }

  if ((v79 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v79 < *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_106:
    v80 = sub_1C1E7F10C();

    v81 = *(*sub_1C1E7F10C() + 344);

    v83 = v81(v82);

    (*(*v80 + 352))(v83);

LABEL_107:
    sub_1C1E7BACC(v77, &OBJC_IVAR____TtC9Calculate19CalculateExpression__postfixStack, sub_1C1E767BC, &unk_1C1F57BA0, sub_1C1EED600);
  }

  __break(1u);
LABEL_123:
  result = sub_1C1F52CA4();
  __break(1u);
  return result;
}

uint64_t (*CalculateExpression.flexibleFractionDigits.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  swift_getKeyPath();
  *a1 = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  *(a1 + 16) = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___flexibleFractionDigits);
  return sub_1C1EDE660;
}

void CalculateExpression.engine.setter(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v25[0] = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression___engine;
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___engine) != a1)
  {
    v5 = *(*sub_1C1E7F10C() + 344);

    v24 = v5(v6);

    CalculateExpression.setNeedsEvaluation(rebuild:)(0);
    swift_getKeyPath();
    v25[0] = v1;
    sub_1C1F52104();

    v23 = OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation;
    if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
    {
      sub_1C1ED6924();
    }

    swift_getKeyPath();
    v25[0] = v1;
    sub_1C1F52104();

    v7 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
    swift_beginAccess();
    v8 = *(v1 + v7);
    if (v8)
    {
      v9 = [v8 ignoringNaN];
      CalculateExpression.clearAll()();
      if (v9)
      {
        type metadata accessor for CalculateExpression.CustomOperandOperation();
        v9 = v9;
        v10 = CalculateExpression.CustomOperandOperation.__allocating_init(_:)(v9);
        CalculateExpression.update(_:)(v10);
      }
    }

    else
    {
      CalculateExpression.clearAll()();
      v9 = 0;
    }

    if (*(v1 + v4) != a1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v25[0] = v1;
      sub_1C1F520F4();
    }

    swift_getKeyPath();
    v25[0] = v1;
    v12 = @"CalculateKeyEngine";
    sub_1C1F52104();

    v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    v25[3] = sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
    v25[0] = v13;
    swift_getKeyPath();
    sub_1C1F52104();

    swift_getKeyPath();
    sub_1C1F52124();

    swift_beginAccess();
    sub_1C1ED62E0(v25, v12);
    swift_endAccess();
    swift_getKeyPath();
    sub_1C1F52114();

    CalculateExpression.setNeedsEvaluation(rebuild:)(1);
    swift_getKeyPath();
    v25[0] = v2;
    sub_1C1F52104();

    if (*(v2 + v23) == 1)
    {
      sub_1C1ED6924();
    }

    swift_getKeyPath();
    v25[0] = v2;
    sub_1C1F52104();

    v14 = *(v2 + v7);
    if (v14)
    {
      v15 = [v14 ignoringNaN];
      CalculateExpression.clearAll()();
      if (v15)
      {
        type metadata accessor for CalculateExpression.CustomOperandOperation();
        v15 = v15;
        v16 = CalculateExpression.CustomOperandOperation.__allocating_init(_:)(v15);
        CalculateExpression.update(_:)(v16);
      }
    }

    else
    {
      CalculateExpression.clearAll()();
      v15 = 0;
    }

    sub_1C1E7BEDC();
    v17 = *(*sub_1C1E7F10C() + 352);

    v18 = v24;
    v17(v24);

    v19 = *(*sub_1C1E7F10C() + 232);

    v19(1);

    v20 = OBJC_IVAR____TtC9Calculate19CalculateExpression___prefersClear;
    swift_beginAccess();
    if (*(v2 + v20))
    {
      v21 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v21);
      sub_1C1F520F4();
    }

    else
    {
      *(v2 + v20) = 0;
    }

    sub_1C1EDD220();
    swift_getKeyPath();
    sub_1C1F52104();

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(*Strong + 488))(Strong);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall CalculateExpression.clearAll()()
{
  v1 = v0;
  v2 = *(*sub_1C1E7F10C() + 424);

  v2(v3);

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression___prefersClear;
  swift_beginAccess();
  if (*(v1 + v4))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  else
  {
    *(v1 + v4) = 0;
  }

  sub_1C1EE6250(0, &OBJC_IVAR____TtC9Calculate19CalculateExpression__activeOperation, &unk_1C1F57D58, sub_1C1EED620);
  CalculateExpression.removed.setter(0);
  sub_1C1EE6250(0, &OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableOperation, &unk_1C1F57C90, sub_1C1EEE164);
  sub_1C1EDBB90(0);
  v6 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
  swift_beginAccess();
  if (*(v1 + v6) == 1)
  {
    *(v1 + v6) = 1;
  }

  else
  {
    v7 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v7);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) == 1)
  {
    *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) = 1;
  }

  else
  {
    v8 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v8);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  sub_1C1EDD220();
  v9 = OBJC_IVAR____TtC9Calculate19CalculateExpression___notifyUpdatedRich;
  swift_beginAccess();
  if (*(v1 + v9) == 1)
  {
    *(v1 + v9) = 1;
  }

  else
  {
    v10 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v10);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  CalculateExpression.setNeedsEvaluation(rebuild:)(1);
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 488))(Strong);
  }
}

uint64_t CalculateExpression.update(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v48 = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression___notifyUpdatedRich;
    swift_beginAccess();
    if (*(v1 + v4) == 1)
    {
      *(v1 + v4) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v51 = v1;
      sub_1C1F520F4();
    }

    v7 = CalculateExpression.update(_:)(a1);

    return v7 & 1;
  }

  CalculateExpression.removed.setter(0);
  v5 = sub_1C1E7F10C();
  swift_getKeyPath();

  sub_1C1F52104();

  v48 = v1;
  swift_getKeyPath();
  sub_1C1F52124();

  v6 = OBJC_IVAR____TtC9Calculate19CalculateExpression__selectedRange;
  swift_beginAccess();
  v7 = (*(*v5 + 720))(a1, v2 + v6);
  swift_endAccess();

  v48 = v2;
  swift_getKeyPath();
  sub_1C1F52114();

  type metadata accessor for CalculateExpression.LiteralOperation();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for CalculateExpression.NegateOperation();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for CalculateExpression.EqualsOperation();
      if (!swift_dynamicCastClass())
      {
        sub_1C1EE6250(0, &OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableOperation, &unk_1C1F57C90, sub_1C1EEE164);
        sub_1C1EDBB90(0);
      }
    }
  }

  v8 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
  swift_beginAccess();
  if (*(v2 + v8) == 1)
  {
    *(v2 + v8) = 1;
  }

  else
  {
    v10 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v10);
    v48 = v2;
    sub_1C1F520F4();
  }

  if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) == 1)
  {
    *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) = 1;
  }

  else
  {
    v11 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v11);
    v48 = v2;
    sub_1C1F520F4();
  }

  sub_1C1EDD220();
  v12 = OBJC_IVAR____TtC9Calculate19CalculateExpression___notifyUpdatedRich;
  swift_beginAccess();
  if (*(v2 + v12) == 1)
  {
    *(v2 + v12) = 1;
  }

  else
  {
    v13 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v13);
    v48 = v2;
    sub_1C1F520F4();
  }

  sub_1C1E7F10C();

  v14 = CalculateExpression.RichExpression.editingTokens()();

  v15 = *(v14 + 16);
  if (!v15)
  {
    goto LABEL_39;
  }

  v16 = v14 + 32 * v15;
  v17 = *(**v16 + 272);

  v17(&v48, v18);

  if (v48 != 4)
  {
    sub_1C1EB1200();
    result = sub_1C1F52414();
    if (result)
    {

      sub_1C1E81CD8();

LABEL_40:
      sub_1C1EE6250(v20, &OBJC_IVAR____TtC9Calculate19CalculateExpression__activeOperation, &unk_1C1F57D58, sub_1C1EED620);
LABEL_41:
      CalculateExpression.setNeedsEvaluation(rebuild:)(1);
      return v7 & 1;
    }
  }

  if (v15 > *(v14 + 16))
  {
    __break(1u);
    goto LABEL_53;
  }

  v21 = *(v16 + 24);
  v48 = *v16;
  v49 = *(v16 + 8);
  v50 = v21;
  result = CalculateExpression.RichExpression.EditingToken.token.getter();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type) == 1)
    {
      v22 = *(*result + 232);
      v22();
      v23 = sub_1C1F525A4();

      if (v23 & 1) != 0 || ((v22)(v24), v25 = sub_1C1F525A4(), v26 = , (v25) || ((v22)(v26), v27 = sub_1C1F525A4(), , (v27))
      {

        sub_1C1E7D99C();

        sub_1C1EE6250(v28, &OBJC_IVAR____TtC9Calculate19CalculateExpression__activeOperation, &unk_1C1F57D58, sub_1C1EED620);
LABEL_51:

        goto LABEL_41;
      }
    }
  }

  v29 = *(v14 + 16);
  v30 = v29 - 2;
  if (v29 < 2)
  {
LABEL_39:

    v20 = 0;
    goto LABEL_40;
  }

  if (v15 > v29)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v31 = *(v16 + 24);
  v48 = *v16;
  v49 = *(v16 + 8);
  v50 = v31;
  v32 = CalculateExpression.RichExpression.EditingToken.token.getter();
  if (!v32)
  {
    goto LABEL_39;
  }

  v33 = *(v32 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  if (v33 != 18)
  {
    goto LABEL_39;
  }

  if (v30 < *(v14 + 16))
  {
    v34 = (v14 + 32 * v30);
    v36 = v34[4];
    v35 = v34[5];
    v38 = v34[6];
    v37 = v34[7];

    v48 = v36;
    *&v49 = v35;
    *(&v49 + 1) = v38;
    v50 = v37;
    v39 = CalculateExpression.RichExpression.EditingToken.token.getter();
    if (v39)
    {
      v40 = *(v39 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      if (v40 == 7)
      {
        sub_1C1E7DCC0();
LABEL_48:

LABEL_50:
        sub_1C1EE6250(v47, &OBJC_IVAR____TtC9Calculate19CalculateExpression__activeOperation, &unk_1C1F57D58, sub_1C1EED620);

        goto LABEL_51;
      }
    }

    if (v37)
    {
      v41 = *(*v37 + 384);

      v43 = v41(v42);

      if (v43)
      {
        sub_1C1E81BB8();
        goto LABEL_48;
      }

      v44 = *(*v37 + 368);

      v46 = v44(v45);

      if (v46)
      {
        sub_1C1E7DEA0();
        goto LABEL_48;
      }
    }

    v47 = 0;
    goto LABEL_50;
  }

LABEL_54:
  __break(1u);
  return result;
}

void (*CalculateExpression.engine.modify(void *a1))(uint64_t *a1)
{
  a1[2] = v1;
  swift_getKeyPath();
  a1[1] = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  *a1 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___engine);
  return sub_1C1EDFDDC;
}

uint64_t sub_1C1EDFE50(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  return result;
}

uint64_t sub_1C1EDFF48@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  *a4 = *(v6 + *a3);
  return result;
}

void CalculateExpression.format.setter(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v43[0] = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression___format;
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___format) == a1)
  {
    return;
  }

  v5 = *(*sub_1C1E7F10C() + 224);

  v40 = v5(v6);

  if (a1 != 2)
  {
    swift_getKeyPath();
    v43[0] = v1;
    sub_1C1F52104();

    if (*(v1 + v4) != 2)
    {
      sub_1C1EDBE7C();
    }
  }

  v7 = *(*sub_1C1E7F10C() + 344);

  v9 = v7(v8);

  if (a1 == 2)
  {
    swift_getKeyPath();
    v43[0] = v1;
    sub_1C1F52104();

    if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
    {
      sub_1C1ED6924();
    }

    swift_getKeyPath();
    v43[0] = v1;
    sub_1C1F52104();

    v11 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
    swift_beginAccess();
    v10 = *(v2 + v11);
    if (v10)
    {
      v10 = [v10 ignoringNaN];
    }
  }

  else
  {
    v10 = 0;
  }

  v41 = v9;
  v42 = v10;
  swift_getKeyPath();
  v43[0] = v2;
  sub_1C1F52104();

  v12 = *(v2 + v4);
  if (v12 != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v43[0] = v2;
    sub_1C1F520F4();
  }

  swift_getKeyPath();
  v43[0] = v2;
  v14 = @"CalculateKeyFormat";
  sub_1C1F52104();

  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  v43[3] = sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
  v43[0] = v15;
  swift_getKeyPath();
  sub_1C1F52104();

  swift_getKeyPath();
  sub_1C1F52124();

  swift_beginAccess();
  sub_1C1ED62E0(v43, v14);
  swift_endAccess();
  swift_getKeyPath();
  sub_1C1F52114();

  if (a1 != 2 || v12)
  {
    v17 = v41;
    v16 = v42;
    if (a1 || v12 != 2)
    {
      goto LABEL_30;
    }

    swift_getKeyPath();
    v43[0] = v2;
    sub_1C1F52104();

    v20 = *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__postfixStack);
    if (v20 >> 62)
    {
      v21 = sub_1C1F52994();
      if (v21)
      {
LABEL_21:
        v22 = v21 - 1;
        if (__OFSUB__(v21, 1))
        {
          __break(1u);
        }

        else if ((v20 & 0xC000000000000001) == 0)
        {
          if ((v22 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v22 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {

LABEL_26:
            v23 = sub_1C1E7F10C();

            v24 = *(*sub_1C1E7F10C() + 392);

            v26 = v24(v25);

            (*(*v23 + 400))(v26);

            v16 = v42;
            goto LABEL_30;
          }

          __break(1u);
          return;
        }

        MEMORY[0x1C6911DB0](v22, v20);

        goto LABEL_26;
      }
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        goto LABEL_21;
      }
    }

    v27 = *(*sub_1C1E7F10C() + 400);

    v27(MEMORY[0x1E69E7CC0]);
    goto LABEL_29;
  }

  CalculateExpression.clearAll()();
  v17 = v41;
  v16 = v42;
  if (v42)
  {
    type metadata accessor for CalculateExpression.CustomOperandOperation();
    v18 = v42;
    v19 = CalculateExpression.CustomOperandOperation.__allocating_init(_:)(v18);
    CalculateExpression.update(_:)(v19);

LABEL_29:
  }

LABEL_30:
  v28 = *(*sub_1C1E7F10C() + 352);

  v29 = v17;
  v28(v17);

  v30 = *(*sub_1C1E7F10C() + 232);

  v30(1);

  v31 = *(*sub_1C1E7F10C() + 256);

  v31((v40 & 1) == 0);

  v32 = OBJC_IVAR____TtC9Calculate19CalculateExpression___prefersClear;
  swift_beginAccess();
  if (*(v2 + v32))
  {
    v33 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v33);
    sub_1C1F520F4();
  }

  else
  {
    *(v2 + v32) = 0;
  }

  sub_1C1E7BEDC();
  v34 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
  swift_beginAccess();
  if (*(v2 + v34) == 1)
  {
    *(v2 + v34) = 1;
  }

  else
  {
    v35 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v35);
    sub_1C1F520F4();
  }

  if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) == 1)
  {
    *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) = 1;
  }

  else
  {
    v36 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v36);
    sub_1C1F520F4();
  }

  sub_1C1EDD220();
  v37 = OBJC_IVAR____TtC9Calculate19CalculateExpression___notifyUpdatedRich;
  swift_beginAccess();
  if (*(v2 + v37) == 1)
  {
    *(v2 + v37) = 1;
  }

  else
  {
    v38 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v38);
    sub_1C1F520F4();
  }

  CalculateExpression.setNeedsEvaluation(rebuild:)(1);
  swift_getKeyPath();
  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 488))(Strong);
  }

  else
  {
  }
}

void (*CalculateExpression.format.modify(void *a1))(uint64_t *a1)
{
  a1[2] = v1;
  swift_getKeyPath();
  a1[1] = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  *a1 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___format);
  return sub_1C1EE0C1C;
}

uint64_t CalculateExpression.locales.setter(uint64_t a1)
{
  v2 = v1;
  sub_1C1EDBE7C();
  sub_1C1E7BACC(a1, &OBJC_IVAR____TtC9Calculate19CalculateExpression___locales, sub_1C1E7BC2C, &unk_1C1F57BF8, sub_1C1EEE0C0);
  swift_getKeyPath();
  v7[0] = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  v4 = @"CalculateKeyLocales";
  sub_1C1F52104();

  v5 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___locales);
  v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213A0, &qword_1C1F57C20);
  v7[0] = v5;
  swift_getKeyPath();

  sub_1C1F52104();

  swift_getKeyPath();
  sub_1C1F52124();

  swift_beginAccess();
  sub_1C1ED62E0(v7, v4);
  swift_endAccess();
  swift_getKeyPath();
  sub_1C1F52114();

  CalculateExpression.setNeedsEvaluation(rebuild:)(1);
  swift_getKeyPath();
  v7[0] = v2;
  sub_1C1F52104();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 488))(result);
  }

  return result;
}

uint64_t (*CalculateExpression.locales.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  a1[1] = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  *a1 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___locales);

  return sub_1C1EE1048;
}

uint64_t sub_1C1EE1048(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return CalculateExpression.locales.setter(*a1);
  }

  CalculateExpression.locales.setter(v2);
}

uint64_t sub_1C1EE10F8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_getKeyPath();
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F52104();

    if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___format) == 2)
    {
      sub_1C1EDD220();
    }

    v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___notifyUpdatedRich;
    swift_beginAccess();
    if (*(v2 + v3) == 1)
    {
      *(v2 + v3) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C1F520F4();
    }
  }

  return result;
}

void sub_1C1EE12A8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C1E7B090(v1);
}

id sub_1C1EE12D8@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

void sub_1C1EE139C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CalculateExpression.numberFormatter.setter(v1);
}

void CalculateExpression.numberFormatter.setter(void *a1)
{
  v2 = v1;
  sub_1C1EDBE7C();
  v4 = a1;
  sub_1C1E7B090(a1);
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  v5 = @"CalculateKeyNumberFormatter";
  sub_1C1F52104();

  v6 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter);
  if (v6)
  {
    v7 = sub_1C1E785A4(0, &qword_1EDC2C2D8, 0x1E696ADA0);
  }

  else
  {
    v7 = 0;
    v10[1] = 0;
    v10[2] = 0;
  }

  v10[0] = v6;
  v10[3] = v7;
  swift_getKeyPath();
  v8 = v6;
  sub_1C1F52104();

  swift_getKeyPath();
  sub_1C1F52124();

  swift_beginAccess();
  sub_1C1ED62E0(v10, v5);
  swift_endAccess();
  swift_getKeyPath();
  sub_1C1F52114();

  CalculateExpression.setNeedsEvaluation(rebuild:)(1);
  swift_getKeyPath();
  v10[0] = v2;
  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 488))(Strong);
  }
}

void (*CalculateExpression.numberFormatter.modify(void *a1))(void **a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  a1[1] = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v3 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter);
  *a1 = v3;
  v4 = v3;
  return sub_1C1EE1724;
}

void sub_1C1EE1724(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    CalculateExpression.numberFormatter.setter(v2);
  }

  else
  {
    CalculateExpression.numberFormatter.setter(*a1);
  }
}

uint64_t sub_1C1EE1790()
{
  v1 = v0;
  sub_1C1E7BEDC();
  sub_1C1E7F10C();

  sub_1C1EE1C50(v2);

  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
  swift_beginAccess();
  if (*(v0 + v3) == 1)
  {
    *(v0 + v3) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) == 1)
  {
    *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) = 1;
  }

  else
  {
    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  sub_1C1EDD220();
  v6 = OBJC_IVAR____TtC9Calculate19CalculateExpression___notifyUpdatedRich;
  swift_beginAccess();
  if (*(v0 + v6) == 1)
  {
    *(v0 + v6) = 1;
  }

  else
  {
    v7 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v7);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  v8 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
  swift_beginAccess();
  if (*(v1 + v8))
  {
    v9 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v9);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  CalculateExpression.setNeedsEvaluation(rebuild:)(1);
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 488))(result);
  }

  return result;
}

unint64_t sub_1C1EE1C50(uint64_t a1)
{
  result = (*(*a1 + 392))();
  v3 = result;
  if (result >> 62)
  {
    result = sub_1C1F52994();
    v4 = result;
    if (result)
    {
LABEL_3:
      if (v4 < 1)
      {
        __break(1u);
      }

      else
      {
        v5 = OBJC_IVAR____TtC9Calculate19CalculateExpression__base;
        swift_beginAccess();
        for (i = 0; i != v4; ++i)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x1C6911DB0](i, v3);
          }

          else
          {
            v7 = *(v3 + 8 * i + 32);
          }

          if (*(v7 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type) == 1)
          {
            swift_getKeyPath();
            v11 = v1;
            sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
            sub_1C1F52104();

            LOBYTE(v11) = *(v1 + v5);
            (*(*v7 + 424))(&v11);
          }

          else
          {
            v8 = (*(*v7 + 280))();
            if (v8)
            {
              sub_1C1EE1C50(v8);
            }

            v9 = (*(*v7 + 304))(v8);
            if (v9)
            {
              v10 = v9;
              if (((*(*v7 + 392))() & 1) == 0)
              {
                sub_1C1EE1C50(v10);
              }
            }
          }
        }
      }

      return result;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }
}

uint64_t (*sub_1C1EE1F50(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1EE1FB4;
}

uint64_t sub_1C1EE1FB4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1C1EE1790();
  }

  return result;
}

uint64_t sub_1C1EE1FE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__base;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t CalculateExpression.base.setter(char *a1)
{
  v2 = *a1;
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__base;
  swift_beginAccess();
  if (qword_1C1F58578[*(v1 + v4)] == qword_1C1F58578[v2])
  {
    *(v1 + v4) = v3;
    return sub_1C1EE1790();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }
}

uint64_t (*CalculateExpression.base.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9Calculate19CalculateExpression___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1F52124();

  v4[7] = sub_1C1EE1F50(v4);
  return sub_1C1EE2360;
}

uint64_t CalculateExpression.lastOperand.getter()
{
  v3 = v0;
  v4 = sub_1C1EE3BB0(0);
  if (!v4)
  {
    goto LABEL_31;
  }

  v7 = v5;
  v8 = v6;
  v9 = v4;
  v10 = (*(*v4 + 392))();
  v12 = __OFADD__(v8, 1);
  v13 = v8 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v1 = v10;
    v11 = v10 & 0xFFFFFFFFFFFFFF8;
    v2 = v10 >> 62;
    if (!(v10 >> 62))
    {
      v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14 < v7)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (v14 >= v13)
      {
        goto LABEL_6;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }
  }

  if (v1 < 0)
  {
    v9 = v1;
  }

  else
  {
    v9 = v11;
  }

  if (sub_1C1F52994() < v7)
  {
    goto LABEL_41;
  }

  if (sub_1C1F52994() < v13)
  {
    goto LABEL_40;
  }

LABEL_6:
  if (v13 < 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if ((v1 & 0xC000000000000001) == 0)
  {
LABEL_10:

    goto LABEL_15;
  }

  if (v13 < v7)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v7 == v13)
  {
    goto LABEL_10;
  }

  if (v7 >= v13)
  {
    __break(1u);
LABEL_46:
    __break(1u);

    __break(1u);
    return result;
  }

  type metadata accessor for CalculateExpression.RichToken(0);

  v15 = v7;
  do
  {
    v16 = v15 + 1;
    sub_1C1F52AA4();
    v15 = v16;
  }

  while (v13 != v16);
LABEL_15:

  if (v2)
  {
    v9 = sub_1C1F52BA4();
    v2 = v17;
    v7 = v18;
    v13 = v19;

    if (v13)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1C1EAFAA4(v9, v2, v7, v13);
    v21 = v20;
    goto LABEL_26;
  }

  v9 = v1 & 0xFFFFFFFFFFFFFF8;
  v2 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
  v13 = (2 * v13) | 1;
  if ((v13 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_20:
  sub_1C1F52C74();
  swift_unknownObjectRetain_n();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v22 + 16);

  if (__OFSUB__(v13 >> 1, v7))
  {
    goto LABEL_44;
  }

  if (v23 != (v13 >> 1) - v7)
  {
LABEL_45:
    swift_unknownObjectRelease_n();
    goto LABEL_19;
  }

  v21 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v21)
  {
    goto LABEL_27;
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_26:
  swift_unknownObjectRelease();
LABEL_27:
  type metadata accessor for CalculateExpression.RichExpression();

  CalculateExpression.RichExpression.__allocating_init(tokens:parent:)(v21, v3);
  type metadata accessor for CalculateExpression.PlainExpression();

  v25 = *CalculateExpression.PlainExpression.__allocating_init(_:)(v24);
  _ = (*(v25 + 296))();
  v27 = v26;
  swift_getKeyPath();
  v47[4] = v3;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v28 = OBJC_IVAR____TtC9Calculate19CalculateExpression__options;
  swift_beginAccess();
  v29 = *(v3 + v28);
  swift_getKeyPath();
  v47[1] = v3;

  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v32 = (*(*Strong + 168))(Strong);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47[0] = v32;
    sub_1C1EEDCDC(v29, sub_1C1EAF22C, 0, isUniquelyReferenced_nonNull_native, v47);

    v29 = v47[0];
  }

  v34._countAndFlagsBits = _;
  v34._object = v27;
  evaluate(_:options:)(v31, v34, v29);
  v36 = v35;

  if (v36)
  {
    return v36;
  }

LABEL_31:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21178, &qword_1C1F57C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1F56480;
  *(inited + 32) = @"CalculateKeyLocales";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213A8, &unk_1C1F57C58);
  sub_1C1F520E4();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C1F56480;
  v40 = @"CalculateKeyLocales";
  sub_1C1F52044();
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213A0, &qword_1C1F57C20);
  *(inited + 40) = v39;
  v41 = sub_1C1E74EC0(inited);
  swift_setDeallocating();
  sub_1C1E83580(inited + 32, &qword_1EBF21180, &qword_1C1F564D0);
  v42._countAndFlagsBits = 48;
  v42._object = 0xE100000000000000;
  evaluate(_:options:)(v43, v42, v41);
  v45 = v44;

  if (!v45)
  {
    goto LABEL_46;
  }

  return v45;
}

void CalculateExpression.lastOperand.setter(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(MEMORY[0x1E696ADA0]);
  v5 = a1;
  v6 = [v4 init];
  [v6 setNumberStyle_];
  [v6 setUsesGroupingSeparator_];
  [v5 setNumberFormatter_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213A8, &unk_1C1F57C58);
  sub_1C1F520E4();
  *(swift_allocObject() + 16) = xmmword_1C1F56480;
  sub_1C1F52044();
  v7 = sub_1C1F526A4();

  [v5 setLocales_];

  v8 = [v5 formattedResult];
  v9 = sub_1C1F52454();
  v11 = v10;

  v12 = HIBYTE(v11) & 0xF;
  v13 = v9 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v14 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    goto LABEL_65;
  }

  if ((v11 & 0x1000000000000000) != 0)
  {
    LOBYTE(v61) = 0;
    v17 = sub_1C1E9A8B4(v9, v11, 10);
    v59 = v58;

    if ((v59 & 1) == 0)
    {
LABEL_66:
      type metadata accessor for CalculateExpression.RichToken(0);
      v60[0] = v17;
      swift_getKeyPath();
      v61 = v2;
      sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
      sub_1C1F52104();

      v31 = OBJC_IVAR____TtC9Calculate19CalculateExpression__base;
      swift_beginAccess();
      sub_1C1EB05DC();
      v32 = sub_1C1F525C4();
      v34 = v33;
      swift_getKeyPath();
      v60[0] = v2;
      sub_1C1F52104();

      LOBYTE(v60[0]) = *(v2 + v31);

      sub_1C1E8FBEC(v32, v34, v60, v2);
      v35 = sub_1C1EE3BB0(0);
      if (!v35)
      {

        v48 = v5;

LABEL_87:
        return;
      }

      v38 = v36;
      v39 = v37;
      v40 = v6;
      v41 = (*v35 + 408);
      v42 = *v41;
      v43 = (*v41)(v60);
      if (__OFADD__(v39, 1))
      {
        __break(1u);
      }

      else
      {
        v44 = v43;
        sub_1C1E98F60(v38, v39 + 1);
        v44(v60, 0);

        v38 = v42(v60);
        v46 = v45;
        MEMORY[0x1C6911980]();
        if (*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_69:
          sub_1C1F52724();
          v38(v60, 0);
          v47 = OBJC_IVAR____TtC9Calculate19CalculateExpression___prefersClear;
          swift_beginAccess();
          if (*(v2 + v47) == 1)
          {
            *(v2 + v47) = 1;
          }

          else
          {
            KeyPath = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](KeyPath);
            sub_1C1F520F4();
          }

          v50 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
          swift_beginAccess();
          if (*(v2 + v50) == 1)
          {
            *(v2 + v50) = 1;
          }

          else
          {
            v51 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v51);
            sub_1C1F520F4();
          }

          if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) == 1)
          {
            *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) = 1;
          }

          else
          {
            v52 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v52);
            sub_1C1F520F4();
          }

          sub_1C1EDD220();
          v53 = OBJC_IVAR____TtC9Calculate19CalculateExpression___notifyUpdatedRich;
          swift_beginAccess();
          if (*(v2 + v53) == 1)
          {
            *(v2 + v53) = 1;
          }

          else
          {
            v54 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v54);
            sub_1C1F520F4();
          }

          v55 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
          swift_beginAccess();
          if (*(v2 + v55))
          {
            v56 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v56);
            sub_1C1F520F4();
          }

          CalculateExpression.setNeedsEvaluation(rebuild:)(1);
          swift_getKeyPath();
          sub_1C1F52104();

          swift_beginAccess();
          Strong = swift_weakLoadStrong();
          if (Strong)
          {
            (*(*Strong + 488))(Strong);
          }

          v48 = v40;
          goto LABEL_87;
        }
      }

      sub_1C1F526E4();
      goto LABEL_69;
    }

LABEL_65:
    v17 = 0;
    goto LABEL_66;
  }

  if ((v11 & 0x2000000000000000) == 0)
  {
    if ((v9 & 0x1000000000000000) != 0)
    {
      v15 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v15 = sub_1C1F52AE4();
    }

    v16 = *v15;
    if (v16 == 43)
    {
      if (v13 >= 1)
      {
        v12 = v13 - 1;
        if (v13 != 1)
        {
          v17 = 0;
          if (v15)
          {
            v23 = v15 + 1;
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v17, 0xAuLL))
              {
                goto LABEL_63;
              }

              v20 = __CFADD__(10 * v17, v24);
              v17 = 10 * v17 + v24;
              if (v20)
              {
                goto LABEL_63;
              }

              ++v23;
              if (!--v12)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_96;
    }

    if (v16 != 45)
    {
      if (v13)
      {
        v17 = 0;
        if (v15)
        {
          while (1)
          {
            v27 = *v15 - 48;
            if (v27 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v17, 0xAuLL))
            {
              goto LABEL_63;
            }

            v20 = __CFADD__(10 * v17, v27);
            v17 = 10 * v17 + v27;
            if (v20)
            {
              goto LABEL_63;
            }

            ++v15;
            if (!--v13)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v17 = 0;
      LOBYTE(v12) = 1;
LABEL_64:
      LOBYTE(v61) = v12;
      v30 = v12;

      if ((v30 & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    if (v13 >= 1)
    {
      v12 = v13 - 1;
      if (v13 != 1)
      {
        v17 = 0;
        if (v15)
        {
          v18 = v15 + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v17, 0xAuLL))
            {
              goto LABEL_63;
            }

            v20 = 10 * v17 >= v19;
            v17 = 10 * v17 - v19;
            if (!v20)
            {
              goto LABEL_63;
            }

            ++v18;
            if (!--v12)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v12) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v60[0] = v9;
  v60[1] = v11 & 0xFFFFFFFFFFFFFFLL;
  if (v9 != 43)
  {
    if (v9 != 45)
    {
      if (v12)
      {
        v17 = 0;
        v28 = v60;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          if (!is_mul_ok(v17, 0xAuLL))
          {
            break;
          }

          v20 = __CFADD__(10 * v17, v29);
          v17 = 10 * v17 + v29;
          if (v20)
          {
            break;
          }

          ++v28;
          if (!--v12)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v12)
    {
      if (--v12)
      {
        v17 = 0;
        v21 = v60 + 1;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          if (!is_mul_ok(v17, 0xAuLL))
          {
            break;
          }

          v20 = 10 * v17 >= v22;
          v17 = 10 * v17 - v22;
          if (!v20)
          {
            break;
          }

          ++v21;
          if (!--v12)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_95;
  }

  if (v12)
  {
    if (--v12)
    {
      v17 = 0;
      v25 = v60 + 1;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          break;
        }

        if (!is_mul_ok(v17, 0xAuLL))
        {
          break;
        }

        v20 = __CFADD__(10 * v17, v26);
        v17 = 10 * v17 + v26;
        if (v20)
        {
          break;
        }

        ++v25;
        if (!--v12)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_97:
  __break(1u);
}

void CalculateExpression.bits.getter()
{
  v0 = sub_1C1F52704();
  *(v0 + 16) = 64;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  v1 = CalculateExpression.lastOperand.getter();
  v3 = resultTree(v1, v2);
  v4 = treeIntegerValue(v3);

  if (v4)
  {
    v5 = 95;
    while ((v5 - 32) < *(v0 + 16))
    {
      *(v0 + v5) = v4 & 1;
      if (v4 >= 2)
      {
        v4 >>= 1;
        if (v5-- != 32)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

void CalculateExpression.bits.setter(uint64_t a1)
{
  if (*(a1 + 16) == 64)
  {
    v1 = 0;
    v2 = 0;
    v3 = 1;
    v4 = 95;
    v5 = 1;
    do
    {
      if (*(a1 + v4) == 1)
      {
        v7 = __CFADD__(v1, v5);
        v1 += v5;
        if (v7)
        {
          __break(1u);
          goto LABEL_15;
        }

        v3 = v5;
      }

      v6 = 2 * v3;
      if (v2 < 0x3F)
      {
        v3 *= 2;
        v5 = v6;
      }

      --v4;
      ++v2;
    }

    while (v4 != 31);

    v23 = v1;
    v8 = sub_1C1F52C34();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21178, &qword_1C1F57C50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1F57710;
    *(inited + 32) = @"CalculateKeyEngine";
    v12 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v13 = @"CalculateKeyEngine";
    v14 = [v12 initWithUnsignedInteger_];
    v15 = sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
    *(inited + 40) = v14;
    *(inited + 64) = v15;
    *(inited + 72) = @"CalculateKeyLocales";
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213A8, &unk_1C1F57C58);
    sub_1C1F520E4();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C1F56480;
    v17 = @"CalculateKeyLocales";
    sub_1C1F52044();
    *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213A0, &qword_1C1F57C20);
    *(inited + 80) = v16;
    v18 = sub_1C1E74EC0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21180, &qword_1C1F564D0);
    swift_arrayDestroy();
    v19._countAndFlagsBits = v8;
    v19._object = v10;
    evaluate(_:options:)(v20, v19, v18);
    v22 = v21;

    if (v22)
    {
      CalculateExpression.lastOperand.setter(v22);
      return;
    }

LABEL_15:
    __break(1u);
  }

  else
  {
  }
}

void (*CalculateExpression.bits.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  CalculateExpression.bits.getter();
  *a1 = v3;
  return sub_1C1EE38C0;
}

void sub_1C1EE38C0(uint64_t *a1, char a2)
{
  if (a2)
  {

    CalculateExpression.bits.setter(v2);
  }

  else
  {
    CalculateExpression.bits.setter(*a1);
  }
}

uint64_t CalculateExpression.ascii.getter()
{
  v0 = CalculateExpression.lastOperand.getter();
  v2 = resultTree(v0, v1);
  v3 = treeIntegerValue(v2);

  v4 = 0;
  v5 = 0xE000000000000000;
  if (v3)
  {
    do
    {
      v9 = sub_1C1F52494();
      v10 = v6;

      MEMORY[0x1C69117F0](v4, v5);

      v4 = v9;
      v5 = v10;
      v7 = v3 >= 0x100;
      v3 >>= 8;
    }

    while (v7);
  }

  return v4;
}

void CalculateExpression.unicode.getter()
{
  v0 = CalculateExpression.lastOperand.getter();
  v2 = resultTree(v0, v1);
  v3 = treeIntegerValue(v2);

  if (HIWORD(v3) <= 0x10u && (v3 & 0xFFFFF800) != 55296)
  {
    if ((*&v3 & 0x1FFF80) == 0 && v3 > 0xFF)
    {
      __break(1u);
    }

    goto LABEL_13;
  }

  if ((v3 & 0xF800) != 0xD800)
  {
    if ((v3 & 0xFF80) != 0 || v3 <= 0xFFu)
    {
LABEL_13:
      sub_1C1F52494();
      return;
    }

    __break(1u);
  }
}

uint64_t sub_1C1EE3BB0(char a1)
{
  v2 = v1;
  sub_1C1E7F10C();

  CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EB63C4, v37);

  v4 = v37[0];
  if (!v37[0])
  {
    return v4;
  }

  v5 = v37[1];
  v6 = v37[2];
  v7 = v37[3];

  v8 = CalculateExpression.RichExpression.EditingToken.token.getter();
  if (!v8)
  {
LABEL_52:
    sub_1C1E98278(v4, v5, v6, v7);
LABEL_53:

    return 0;
  }

  v9 = v8;
  LOBYTE(v35) = a1;
  swift_getKeyPath();
  v37[0] = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v10 = &OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___format) == 2)
  {
    v11 = *(v9 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    if (qword_1EDC2F690 != -1)
    {
      v33 = v7;
      v34 = *(v9 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      swift_once();
      v11 = v34;
      v7 = v33;
      v10 = &OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
    }

    if (sub_1C1E91F6C(v11, qword_1EDC2F698))
    {

      result = sub_1C1E98278(v4, v5, v6, v7);
      v14 = v5;
      goto LABEL_41;
    }
  }

  v36 = v7;
  v15 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  v16 = *(v9 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  if (qword_1EDC2F690 != -1)
  {
    v32 = *(v9 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    swift_once();
    v16 = v32;
  }

  result = sub_1C1E91F6C(v16, qword_1EDC2F698);
  if (result)
  {
    v35 = v6;
    v17 = (v5 - 1);
    v18 = __OFSUB__(v5, 1);
    v19 = *v4;
    if (v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_15:
    v6 = *(v19 + 416);
    v10 = v5;
    while (1)
    {
      v20 = v6(v17);
      if (!v20)
      {

        result = sub_1C1E98278(v4, v5, v35, v36);
        v14 = v10;
        goto LABEL_41;
      }

      v21 = *(v20 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      v22 = qword_1EDC2F698;
      if (!*(qword_1EDC2F698 + 16))
      {
        break;
      }

      sub_1C1F52CD4();
      MEMORY[0x1C6911FD0](v21);
      v23 = sub_1C1F52CF4();
      v24 = -1 << *(v22 + 32);
      v25 = v23 & ~v24;
      if (((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        break;
      }

      v26 = ~v24;
      while (*(*(v22 + 48) + v25) != v21)
      {
        v25 = (v25 + 1) & v26;
        if (((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v10 = v17;
      v27 = __OFSUB__(v17, 1);
      v17 = (v17 - 1);
      if (v27)
      {
        goto LABEL_25;
      }
    }

LABEL_26:

    sub_1C1E98278(v4, v5, v35, v36);

    v14 = v10;
    goto LABEL_41;
  }

  v13 = *(v9 + v15);
  if (v13 == 9)
  {
    swift_getKeyPath();
    v37[0] = v2;
    sub_1C1F52104();
    v10 = &OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;

    if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___engine) == 1)
    {
LABEL_35:
      v13 = *(v9 + v15);
      goto LABEL_36;
    }
  }

  else if (v13 != 7)
  {
LABEL_36:
    if (v13 > 0x10 || ((1 << v13) & 0x10180) == 0)
    {
      goto LABEL_44;
    }

    v38 = v5;
    sub_1C1EBA588(&v38);

    result = sub_1C1E98278(v4, v5, v6, v36);
    v14 = v38;
LABEL_41:
    while ((v14 & 0x8000000000000000) == 0)
    {
      if (v5 >= v14)
      {
        return v4;
      }

      __break(1u);
LABEL_44:
      v7 = v36;
      if ((v35 & 1) == 0 || v13 != 15)
      {

        goto LABEL_52;
      }

      if (__OFSUB__(v5, 1))
      {
        goto LABEL_57;
      }

      v30 = (*(*v4 + 416))(v5 - 1);

      result = sub_1C1E98278(v4, v5, v6, v36);
      v14 = v5;
      if (v30)
      {
        v31 = *(v30 + *v10);

        if (v31 == 10)
        {
          v14 = v5 - 1;
        }

        else
        {
          v14 = v5;
        }
      }
    }

    goto LABEL_53;
  }

  v17 = (v5 - 1);
  if (!__OFSUB__(v5, 1))
  {
    result = (*(*v4 + 416))(v5 - 1);
    if (result)
    {
      v28 = *(result + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      result = sub_1C1E91F6C(v28, qword_1EDC2F698);
      if (result)
      {
        v35 = v6;
        v19 = *v4;
        goto LABEL_15;
      }
    }

    goto LABEL_35;
  }

  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_1C1EE414C@<X0>(uint64_t *a1@<X8>)
{
  result = CalculateExpression.lastOperand.getter();
  *a1 = result;
  return result;
}

void (*CalculateExpression.lastOperand.modify(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = CalculateExpression.lastOperand.getter();
  return sub_1C1EE41EC;
}

void sub_1C1EE41EC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    CalculateExpression.lastOperand.setter(v3);
  }

  else
  {
    CalculateExpression.lastOperand.setter(v2);
  }
}

void CalculateExpression.inlineEvaluate(_:)(uint64_t a1)
{
  v2 = v1;
  CalculateExpression.setRepeatableOperation(from:)(a1);
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  swift_getKeyPath();

  sub_1C1F52104();

  v4 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableExpression);
  swift_getKeyPath();
  v39[0] = a1;
  v38 = v4;

  sub_1C1F52104();

  v5 = OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation;
  if (*(a1 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
  {
    sub_1C1ED6924();
  }

  swift_getKeyPath();
  v39[0] = a1;
  sub_1C1F52104();

  v6 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (v7)
  {
    v8 = [v7 ignoringNaN];
  }

  else
  {
    v8 = 0;
  }

  swift_getKeyPath();
  v39[0] = a1;
  sub_1C1F52104();

  if (*(a1 + v5) == 1)
  {
    sub_1C1ED6924();
  }

  swift_getKeyPath();
  v39[0] = a1;
  sub_1C1F52104();

  v9 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalError;
  swift_beginAccess();
  v10 = *(a1 + v9);
  v11 = v10;
  CalculateExpression.clearAll()();
  if (!v8)
  {
LABEL_18:
    sub_1C1ED6924();
    v26 = v8;
    if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v39[0] = v2;
      sub_1C1F520F4();
    }

    else
    {
      *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) = 0;
    }

    v28 = *(*sub_1C1E7F10C() + 352);
    v29 = v10;

    v28(v10);

    v30 = *(*sub_1C1E7F10C() + 232);

    v30(1);

    v31 = *(*sub_1C1E7F10C() + 256);

    v31(0);

    v32 = OBJC_IVAR____TtC9Calculate19CalculateExpression___prefersClear;
    swift_beginAccess();
    if (*(v2 + v32))
    {
      v33 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v33);
      v39[5] = v2;
      sub_1C1F520F4();

      v34 = v38;
      if (!v10)
      {
        goto LABEL_26;
      }
    }

    else
    {
      *(v2 + v32) = 0;
      v34 = v38;
      if (!v10)
      {
LABEL_26:

        sub_1C1EE6250(v35, &OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableOperation, &unk_1C1F57C90, sub_1C1EEE164);
        sub_1C1EDBB90(v34);

        return;
      }
    }

    v34 = 0;
    goto LABEL_26;
  }

  type metadata accessor for CalculateExpression.CustomOperandOperation();
  v12 = v8;
  v13 = CalculateExpression.CustomOperandOperation.__allocating_init(_:)(v12);
  CalculateExpression.update(_:)(v13);

  v14 = *(*sub_1C1E7F10C() + 528);

  v16 = v14(v15);

  if ((v16 & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  v17 = *(*sub_1C1E7F10C() + 408);

  v19 = v17(v39);
  v20 = v18;
  if (!(*v18 >> 62))
  {
    if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!sub_1C1F52994())
  {
    goto LABEL_28;
  }

LABEL_12:
  v37 = v8;
  if (sub_1C1EAFB88())
  {
LABEL_16:

    v19(v39, 0);

    v24 = *(*sub_1C1E7F10C() + 408);

    v25 = v24(v39);
    sub_1C1EE4E8C();

    v25(v39, 0);

    v8 = v37;
    goto LABEL_17;
  }

  if (*v20 >> 62)
  {
LABEL_29:
    v36 = sub_1C1F52994();
    v22 = __OFSUB__(v36, 1);
    v23 = v36 - 1;
    if (!v22)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

  v21 = *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (!v22)
  {
LABEL_15:
    sub_1C1E98338(v23);
    goto LABEL_16;
  }

LABEL_31:
  __break(1u);
}

Swift::Void __swiftcall CalculateExpression.repeatOperation()()
{
  swift_getKeyPath();
  v21[0] = v0;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v1 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableOperation);
  if (v1)
  {
    swift_getKeyPath();
    v21[0] = v0;

    sub_1C1F52104();

    v2 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableExpression);
    if (!v2)
    {
LABEL_16:

      return;
    }

    v3 = *(*sub_1C1E7F10C() + 344);

    v5 = v3(v4);

    if (v5)
    {

      goto LABEL_16;
    }

    CalculateExpression.update(_:)(v1);
    sub_1C1E7F10C();

    v6 = CalculateExpression.RichExpression.editingTokens()();

    v7 = *(v6 + 16);
    if (!v7)
    {

      return;
    }

    v8 = *(v6 + 32 * v7);

    v10 = (*(*v8 + 392))(v9);
    if (v10 >> 62)
    {
      v15 = v10;
      v16 = sub_1C1F52994();
      v10 = v15;
      if (v16)
      {
        goto LABEL_8;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:
      if ((v10 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1C6911DB0](0, v10);

        v20 = *(v19 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
        v13 = swift_unknownObjectRelease();
        if (v20 != 18)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v11 = *(v10 + 32);

        v12 = *(v11 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

        if (v12 != 18)
        {
          goto LABEL_15;
        }
      }

      v14 = (*(*v8 + 408))(v21);
      sub_1C1EE4E8C();

      v13 = v14(v21, 0);
LABEL_15:
      v17 = (*(*v2 + 392))(v13);
      v18 = (*(*v8 + 408))(v21);
      sub_1C1E8CECC(v17);
      v18(v21, 0);

      goto LABEL_16;
    }

    goto LABEL_15;
  }
}

void sub_1C1EE4E8C()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_1C1F52994())
  {
    if (sub_1C1F52994())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x1C6911DB0](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_1C1F52994();
LABEL_13:
      if (v3)
      {
        sub_1C1E98F60(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t CalculateExpression.setRepeatableOperation(from:)(uint64_t a1)
{
  v4 = v1;
  sub_1C1E7F10C();

  v5 = CalculateExpression.RichExpression.editingTokens()();

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32 * v6);
    v8 = *(**v7 + 272);
    v2 = **v7 + 272;

    v8(&v69, v9);

    if (v69 != 4)
    {
      LOBYTE(v72) = 3;
      sub_1C1EB1200();
      if (sub_1C1F52414())
      {
        sub_1C1E81CD8();
        v10 = *(v5 + 16);
        if (v6 <= v10)
        {
          v11 = *v7;

LABEL_73:

LABEL_112:

          sub_1C1EE6250(v64, &OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableOperation, &unk_1C1F57C90, sub_1C1EEE164);
          sub_1C1EDBB90(v11);
        }

        goto LABEL_118;
      }
    }

    v10 = *(v5 + 16);
    v12 = v10 - 2;
    if (v10 >= 2)
    {
      if (v6 > v10)
      {
        __break(1u);
        goto LABEL_117;
      }

      v13 = *(**v7 + 296);
      v2 = **v7 + 296;

      v6 = v13(v14);

      if (v6)
      {
        v10 = *(v5 + 16);
        if (v12 >= v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        v15 = v5 + 32 + 32 * v12;
        v16 = *(v15 + 24);
        v69 = *v15;
        v70 = *(v15 + 8);
        v71 = v16;

        v17 = CalculateExpression.RichExpression.EditingToken.token.getter();
        if (v17)
        {
          v18 = *(v17 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

          if (v18 == 7)
          {
            sub_1C1E7DCC0();
LABEL_72:

            v11 = *v7;

            goto LABEL_73;
          }
        }

        if (v16)
        {
          v46 = *(*v16 + 384);

          v48 = v46(v47);

          if (v48)
          {
            sub_1C1E81BB8();
            goto LABEL_72;
          }

          v49 = *(*v16 + 368);

          v51 = v49(v50);

          if (v51)
          {
            sub_1C1E7DEA0();
            goto LABEL_72;
          }
        }

LABEL_111:
        v11 = 0;
        goto LABEL_112;
      }
    }
  }

  v19 = sub_1C1E7F10C();
  v6 = *(*v19 + 392);
  v20 = *v19 + 392;

  v22 = (v6)();
  if (v22 >> 62)
  {
    v23 = sub_1C1F52994();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = v23 - 1;
  if (!__OFSUB__(v23, 1))
  {
    v25 = (*v19 + 416);
    v3 = *v25;
    v7 = v25;
    v26 = (*v25)(v23 - 1);
    v20 = v26;
    if (!v26)
    {
      goto LABEL_110;
    }

    v66 = v6;
    v68 = v4;
    v10 = &OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
    v4 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
    v21 = *(v26 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    if (v21 != 9)
    {
      v6 = v23 - 1;
      goto LABEL_22;
    }

    v6 = v23 - 2;
    if (!__OFSUB__(v24, 1))
    {
      v27 = (v3)(v23 - 2);

      if (!v27)
      {
        goto LABEL_110;
      }

      v4 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
      v21 = *(v27 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      v20 = v27;
      v24 = v23 - 1;
LABEL_22:
      v28 = qword_1EDC2F690;

      if (v28 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_115;
    }

LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  __break(1u);
LABEL_115:
  swift_once();
LABEL_23:
  v2 = &unk_1EDC2F000;
  v67 = v23;
  if (sub_1C1E91F6C(v21, qword_1EDC2F698))
  {
    v65 = v24;
    v29 = v6 - 1;
    if (!__OFSUB__(v6, 1))
    {
      goto LABEL_25;
    }

LABEL_34:
    __break(1u);
LABEL_35:

    v72 = v6;
    v4 = v68;
    v24 = v65;
    v23 = v67;
    if ((v6 & 0x8000000000000000) != 0)
    {
      goto LABEL_110;
    }

    goto LABEL_47;
  }

  v38 = *(v20 + v4);
  if (v38 == 7)
  {
    v65 = v24;
    v29 = v6 - 1;
    if (__OFSUB__(v6, 1))
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    v39 = (v3)(v6 - 1);
    if (v39)
    {
      v40 = *(v39 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      if (sub_1C1E91F6C(v40, qword_1EDC2F698))
      {
LABEL_25:
        while (1)
        {
          v30 = (v3)(v29);
          if (!v30)
          {
            break;
          }

          v31 = *(v30 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

          v32 = v2;
          v2 = *(v2 + 1688);
          if (!*(v2 + 16))
          {
            goto LABEL_35;
          }

          sub_1C1F52CD4();
          MEMORY[0x1C6911FD0](v31);
          v33 = sub_1C1F52CF4();
          v34 = -1 << *(v2 + 32);
          v35 = v33 & ~v34;
          if (((*(v2 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
          {
            goto LABEL_35;
          }

          v36 = ~v34;
          while (*(*(v2 + 48) + v35) != v31)
          {
            v35 = (v35 + 1) & v36;
            if (((*(v2 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          v6 = v29;
          v37 = __OFSUB__(v29--, 1);
          v2 = v32;
          v23 = v67;
          if (v37)
          {
            goto LABEL_34;
          }
        }

        v72 = v6;
        v4 = v68;
        v24 = v65;
        if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_110;
        }

        goto LABEL_47;
      }
    }

    v38 = *(v20 + v4);
    v24 = v65;
  }

  v41 = v38 > 0x10;
  v42 = (1 << v38) & 0x10180;
  if (v41 || v42 == 0)
  {
    goto LABEL_109;
  }

  v72 = v6;
  sub_1C1EBA588(&v72);

  v6 = v72;
  v4 = v68;
  if ((v72 & 0x8000000000000000) != 0)
  {
LABEL_110:

    goto LABEL_111;
  }

LABEL_47:
  v44 = (v3)(v6 - 1);
  if (!v44)
  {
    goto LABEL_110;
  }

  v45 = *(v44 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  if (v45 > 0x1B)
  {
    if (*(v44 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type) <= 0x1Du)
    {
      if (v45 == 28)
      {
        v7 = v24;
        sub_1C1EB98AC();
        goto LABEL_83;
      }

      if (v45 == 29)
      {
        v7 = v24;
        sub_1C1EB99EC();
        goto LABEL_83;
      }
    }

    else
    {
      switch(v45)
      {
        case 0x1Eu:
          v7 = v24;
          sub_1C1EB9A3C();
          goto LABEL_83;
        case 0x1Fu:
          v7 = v24;
          sub_1C1EB9B2C();
          goto LABEL_83;
        case 0x20u:
          v7 = v24;
          sub_1C1EB9B7C();
          goto LABEL_83;
      }
    }

LABEL_109:

    goto LABEL_110;
  }

  if (*(v44 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type) <= 4u)
  {
    if (v45 == 3)
    {
      v7 = v24;
      sub_1C1E7CD3C();
      goto LABEL_83;
    }

    if (v45 == 4)
    {
      v7 = v24;
      sub_1C1E7CE54();
      goto LABEL_83;
    }

    goto LABEL_109;
  }

  switch(v45)
  {
    case 5u:
      v7 = v24;
      sub_1C1E7CF1C();
      break;
    case 6u:
      v7 = v24;
      sub_1C1E7CFA8();
      break;
    case 0x1Bu:
      v7 = v24;
      sub_1C1EB985C();
      break;
    default:
      goto LABEL_109;
  }

LABEL_83:

  if (v7 < v6)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v21 = v19;
  v53 = v66(v52);
  v2 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v3 = v53;
  v10 = (v53 & 0xFFFFFFFFFFFFFF8);
  v7 = (v53 >> 62);
  if (!(v53 >> 62))
  {
    result = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < v6)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (result < v2)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    goto LABEL_88;
  }

LABEL_122:
  if (v3 < 0)
  {
    v21 = v3;
  }

  else
  {
    v21 = v10;
  }

  result = sub_1C1F52994();
  if (result < v6)
  {
    goto LABEL_135;
  }

  result = sub_1C1F52994();
  v23 = v67;
  if (result < v2)
  {
    goto LABEL_127;
  }

LABEL_88:
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if ((v3 & 0xC000000000000001) == 0)
  {
    goto LABEL_92;
  }

  if (v2 < v6)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (v6 == v2)
  {
LABEL_92:

    goto LABEL_96;
  }

  if (v6 < v2)
  {
    type metadata accessor for CalculateExpression.RichToken(0);

    v55 = v6;
    do
    {
      v56 = v55 + 1;
      sub_1C1F52AA4();
      v55 = v56;
    }

    while (v23 != v56);
LABEL_96:

    if (v7)
    {
      v21 = sub_1C1F52BA4();
      v23 = v57;
      v6 = v58;
      v2 = v59;

      v4 = v68;
      if (v2)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v21 = v3 & 0xFFFFFFFFFFFFFF8;
      v23 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
      v2 = (2 * v2) | 1;
      v4 = v68;
      if (v2)
      {
LABEL_101:
        sub_1C1F52C74();
        swift_unknownObjectRetain_n();
        v62 = swift_dynamicCastClass();
        if (!v62)
        {
          swift_unknownObjectRelease();
          v62 = MEMORY[0x1E69E7CC0];
        }

        v63 = *(v62 + 16);

        if (!__OFSUB__(v2 >> 1, v6))
        {
          if (v63 == (v2 >> 1) - v6)
          {
            v61 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            if (v61)
            {
LABEL_108:
              type metadata accessor for CalculateExpression.RichExpression();

              v11 = CalculateExpression.RichExpression.__allocating_init(tokens:parent:)(v61, v4);

              goto LABEL_112;
            }

            v61 = MEMORY[0x1E69E7CC0];
LABEL_107:
            swift_unknownObjectRelease();
            goto LABEL_108;
          }

          goto LABEL_133;
        }

LABEL_132:
        __break(1u);
LABEL_133:
        swift_unknownObjectRelease_n();
      }
    }

    sub_1C1EAFAA4(v21, v23, v6, v2);
    v61 = v60;
    goto LABEL_107;
  }

  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

unint64_t CalculateExpression.__allocating_init(result:error:options:base:id:)(void *a1, void *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v10 = sub_1C1F52034();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[0] = *a4;
  v44 = v15;
  v45 = v14;
  (*(v15 + 16))(v13, a5, v11);
  v16 = swift_allocObject();
  CalculateExpression.init(_:options:base:id:)(0, 0xE000000000000000, a3, v47, v13);
  v46 = a5;
  if (!a1)
  {

    goto LABEL_12;
  }

  type metadata accessor for CalculateExpression.CustomOperandOperation();
  v17 = a1;

  v18 = v17;
  v19 = CalculateExpression.CustomOperandOperation.__allocating_init(_:)(v18);
  CalculateExpression.update(_:)(v19);

  v20 = *(*sub_1C1E7F10C() + 528);

  v22 = v20(v21);

  if (v22)
  {
    v23 = *(*sub_1C1E7F10C() + 408);

    v25 = v23(v47);
    v26 = v24;
    if (*v24 >> 62)
    {
      if (sub_1C1F52994())
      {
LABEL_5:
        if (sub_1C1EAFB88())
        {
LABEL_9:

          v25(v47, 0);

          v30 = *(*sub_1C1E7F10C() + 408);

          v31 = v30(v47);
          sub_1C1EE4E8C();

          v31(v47, 0);

          goto LABEL_10;
        }

        if (!(*v26 >> 62))
        {
          v27 = *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v28 = __OFSUB__(v27, 1);
          result = v27 - 1;
          if (!v28)
          {
LABEL_8:
            sub_1C1E98338(result);
            goto LABEL_9;
          }

LABEL_20:
          __break(1u);
          return result;
        }

LABEL_18:
        v43 = sub_1C1F52994();
        v28 = __OFSUB__(v43, 1);
        result = v43 - 1;
        if (!v28)
        {
          goto LABEL_8;
        }

        goto LABEL_20;
      }
    }

    else if (*((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_10:

LABEL_12:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v44 - 2) = v16;
  *(&v44 - 1) = a2;
  *v47 = v16;
  v33 = a2;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F520F4();

  v34 = a1;
  sub_1C1ED655C(a1);
  if (*(v16 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation))
  {
    v35 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v35);
    *(&v44 - 2) = v16;
    *(&v44 - 8) = 0;
    *v47 = v16;
    sub_1C1F520F4();
  }

  else
  {
    *(v16 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) = 0;
  }

  v37 = v45;
  v36 = v46;
  v38 = v44;
  v39 = *(*sub_1C1E7F10C() + 352);
  v40 = a2;

  v39(a2);

  v41 = *(*sub_1C1E7F10C() + 232);

  v41(1);

  v42 = *(*sub_1C1E7F10C() + 256);

  v42(0);

  (*(v38 + 8))(v36, v37);
  return v16;
}

uint64_t sub_1C1EE5F58(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___plain;
  swift_beginAccess();
  if (*(v1 + v3) == a1)
  {
    return sub_1C1EE6650(a1);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F520F4();
}

uint64_t CalculateExpression.removed.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__removed;
  swift_beginAccess();
  if (*(v1 + v4))
  {
    if (a1)
    {
      type metadata accessor for CalculateExpression.RichExpression();
      sub_1C1E77790(&qword_1EDC2E8C8, type metadata accessor for CalculateExpression.RichExpression, &protocol conformance descriptor for CalculateExpression.RichExpression);

      v5 = sub_1C1F52414();

      if (v5)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + v4) = a1;
}

uint64_t sub_1C1EE6250(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a2;
  if (*(v4 + *a2))
  {
    if (a1)
    {
      type metadata accessor for CalculateExpression.Operation();
      sub_1C1E77790(&qword_1EDC2CA88, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);

      v8 = sub_1C1F52414();

      if (v8)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v5 + v7) = a1;
}

uint64_t sub_1C1EE63F8(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  return result;
}

uint64_t sub_1C1EE6524(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
}

uint64_t sub_1C1EE6650(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___plain;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable;
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) == 1)
  {

    *(v1 + v4) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  return result;
}

void sub_1C1EE67F0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_1C1F52114();

  free(v3);
}

uint64_t sub_1C1EE6920@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v7 = *a3;
  result = swift_beginAccess();
  *a4 = *(v6 + v7);
  return result;
}

uint64_t sub_1C1EE6A48@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

uint64_t CalculateExpression.removed.getter()
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
}

uint64_t sub_1C1EE6C00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__removed;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t (*CalculateExpression.removed.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC9Calculate19CalculateExpression___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1F52124();

  swift_beginAccess();
  return sub_1C1EE6E3C;
}

void sub_1C1EE6E48(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_endAccess();
  *v3 = v3[3];
  swift_getKeyPath();
  sub_1C1F52114();

  free(v3);
}

uint64_t sub_1C1EE6EE0@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  *a4 = *(v6 + *a3);
}

uint64_t sub_1C1EE6FFC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();
}

uint64_t sub_1C1EE70B4@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  *a4 = *(v6 + *a3);
}

uint64_t sub_1C1EE721C@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t CalculateExpression.allowsArabicMath.setter(char a1)
{
  v2 = a1 & 1;
  sub_1C1EDBE7C();
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___allowsArabicMath) == v2)
  {
    *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___allowsArabicMath) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  CalculateExpression.setNeedsEvaluation(rebuild:)(1);
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 488))(result);
  }

  return result;
}

uint64_t (*CalculateExpression.allowsArabicMath.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  swift_getKeyPath();
  *a1 = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  *(a1 + 16) = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___allowsArabicMath);
  return sub_1C1EE75BC;
}

uint64_t CalculateExpression.deinit()
{
  v1 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
  v2 = sub_1C1F52034();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_weakDestroy();
  swift_weakDestroy();

  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___observationRegistrar;
  v4 = sub_1C1F52144();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t CalculateExpression.__deallocating_deinit()
{
  CalculateExpression.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t CalculateExpression.hashValue.getter()
{
  sub_1C1F52CD4();
  sub_1C1E77790(&qword_1EBF213C0, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F523C4();
  return sub_1C1F52CF4();
}

uint64_t sub_1C1EE7900(uint64_t a1, uint64_t a2)
{
  sub_1C1F52CD4();
  sub_1C1F523C4();
  return sub_1C1F52CF4();
}

uint64_t sub_1C1EE7964(uint64_t a1)
{
  v2 = sub_1C1F52034();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  swift_getKeyPath();
  v9[1] = v6;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v7 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
  swift_beginAccess();
  (*(v3 + 16))(v5, v6 + v7, v2);
  sub_1C1E77790(&qword_1EDC2E8F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1C1F523C4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C1EE7B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C1F52CD4();
  sub_1C1F523C4();
  return sub_1C1F52CF4();
}

uint64_t sub_1C1EE7B88@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
  swift_beginAccess();
  v5 = sub_1C1F52034();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1C1EE7CA4(uint64_t *a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v5 = a1[2];
  if (Strong)
  {
    v6 = Strong;

    if (v6 != v5)
    {
LABEL_3:
      v7 = 0;
      return v7 & 1;
    }
  }

  else if (v5)
  {
    goto LABEL_3;
  }

  v8 = *a1;
  v9 = a1[1];
  if (v8 == sub_1C1ED73F4() && v9 == v10)
  {

    v7 = 0;
  }

  else
  {
    v11 = sub_1C1F52C64();

    v7 = v11 ^ 1;
  }

  v12 = OBJC_IVAR____TtC9Calculate19CalculateExpression_rebuild;
  swift_beginAccess();
  *(v2 + v12) = 0;
  v13 = a1[5];
  if (!v13)
  {
    if (!a1[6])
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v14 = OBJC_IVAR____TtC9Calculate19CalculateExpression___plain;
  swift_beginAccess();
  if (*(v2 + v14) == v13)
  {
    v16 = swift_retain_n();
    sub_1C1EE6650(v16);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);

    sub_1C1F520F4();
  }

  v17 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
  swift_beginAccess();
  if (*(v2 + v17))
  {
    v18 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v18);
    sub_1C1F520F4();
  }

  else
  {

    *(v2 + v17) = 0;
  }

  if (a1[6])
  {
LABEL_19:
    v19 = swift_retain_n();
    sub_1C1E917DC(v19);
    v20 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateRich;
    swift_beginAccess();
    if (*(v2 + v20))
    {
      v21 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v21);
      sub_1C1F520F4();
    }

    else
    {

      *(v2 + v20) = 0;
    }
  }

LABEL_22:
  swift_getKeyPath();
  sub_1C1F52104();

  v22 = OBJC_IVAR____TtC9Calculate19CalculateExpression___documentReferenceCount;
  swift_beginAccess();
  if (*(v2 + v22) != a1[10])
  {
    v23 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v23);
    sub_1C1F520F4();
  }

  swift_getKeyPath();
  sub_1C1F52104();

  v24 = OBJC_IVAR____TtC9Calculate19CalculateExpression__variables;
  swift_beginAccess();
  v25 = *(v2 + v24);
  v26 = a1[4];

  v27 = sub_1C1EE958C(v25, v26);

  if (v27)
  {
  }

  else
  {
    sub_1C1ED9D28(v26);
  }

  swift_getKeyPath();
  sub_1C1F52104();

  v28 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalError;
  swift_beginAccess();
  v29 = *(v2 + v28);
  if (v29 && (v30 = v29, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21200, &qword_1C1F568F0), sub_1C1E785A4(0, &qword_1EBF213C8, 0x1E696ABC0), swift_dynamicCast()))
  {
    v31 = v48;
    v32 = a1[8];
    if (!v32)
    {
LABEL_36:
      v34 = 0;
      if (v31)
      {
        goto LABEL_37;
      }

LABEL_34:
      if (!v34)
      {
        goto LABEL_40;
      }

      swift_unknownObjectRelease();
      goto LABEL_39;
    }
  }

  else
  {
    v31 = 0;
    v32 = a1[8];
    if (!v32)
    {
      goto LABEL_36;
    }
  }

  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21200, &qword_1C1F568F0);
  sub_1C1E785A4(0, &qword_1EBF213C8, 0x1E696ABC0);
  if (!swift_dynamicCast())
  {
    goto LABEL_36;
  }

  v34 = v48;
  if (!v31)
  {
    goto LABEL_34;
  }

LABEL_37:
  swift_unknownObjectRelease();
  if (!v34 || (swift_unknownObjectRelease(), v31 != v34))
  {
LABEL_39:
    v35 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v35);
    sub_1C1F520F4();
  }

LABEL_40:
  swift_getKeyPath();
  sub_1C1F52104();

  v36 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
  swift_beginAccess();
  v37 = *(v2 + v36);
  v38 = a1[7];
  if (v37)
  {
    if (v37 == v38)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v38)
  {
LABEL_42:
    v39 = v38;
    sub_1C1ED655C(v38);
  }

LABEL_43:
  v40 = sub_1C1E7635C(MEMORY[0x1E69E7CC0]);
  sub_1C1ED9ACC(v40);
  if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphNeedsEvaluation) == 1)
  {
    *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphNeedsEvaluation) = 1;
  }

  else
  {
    v41 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v41);
    sub_1C1F520F4();
  }

  v42 = OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation;
  if (*(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
  {
    *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) = 1;
LABEL_49:
    v44 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v44);
    sub_1C1F520F4();

    goto LABEL_53;
  }

  v43 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C1F520F4();

  if (*(v2 + v42))
  {
    goto LABEL_49;
  }

  *(v2 + v42) = 0;
LABEL_53:
  v45 = OBJC_IVAR____TtC9Calculate19CalculateExpression__isEvaluating;
  swift_beginAccess();
  if (*(v2 + v45))
  {
    v46 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v46);
    sub_1C1F520F4();
  }

  else
  {
    *(v2 + v45) = 0;
  }

  return v7 & 1;
}

void (*CalculateExpression.graphReferenceCount.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 40) = v1;
  swift_getKeyPath();
  v5[6] = OBJC_IVAR____TtC9Calculate19CalculateExpression___observationRegistrar;
  *v5 = v1;
  v5[7] = sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v6 = OBJC_IVAR____TtC9Calculate19CalculateExpression___graphReferenceCount;
  v5[8] = OBJC_IVAR____TtC9Calculate19CalculateExpression___graphReferenceCount;
  swift_beginAccess();
  v5[3] = *(v2 + v6);
  return sub_1C1EE8874;
}

uint64_t sub_1C1EE88BC(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1C1EE8970@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v7 = *a3;
  result = swift_beginAccess();
  *a4 = *(v6 + v7);
  return result;
}

uint64_t sub_1C1EE8A88(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  result = swift_beginAccess();
  if (*(v4 + v6) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  return result;
}

void (*CalculateExpression.documentReferenceCount.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 40) = v1;
  swift_getKeyPath();
  v5[6] = OBJC_IVAR____TtC9Calculate19CalculateExpression___observationRegistrar;
  *v5 = v1;
  v5[7] = sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v6 = OBJC_IVAR____TtC9Calculate19CalculateExpression___documentReferenceCount;
  v5[8] = OBJC_IVAR____TtC9Calculate19CalculateExpression___documentReferenceCount;
  swift_beginAccess();
  v5[3] = *(v2 + v6);
  return sub_1C1EE8CB0;
}

void sub_1C1EE8CE4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = *(*a1 + 24);
  v7 = *(*a1 + 40);
  v8 = *(v7 + *(*a1 + 64));
  if (a2)
  {
    if (v8 != v6)
    {
      goto LABEL_5;
    }
  }

  else if (v8 != v6)
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v5[4] = v7;
    sub_1C1F520F4();
  }

  free(v5);
}

uint64_t sub_1C1EE8DD4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_getKeyPath();
  v27[7] = a1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_getKeyPath();
    v27[4] = v9;
    sub_1C1F52104();

    v10 = OBJC_IVAR____TtC9Calculate19CalculateExpression__options;
    swift_beginAccess();
    v11 = *(v9 + v10);
  }

  else
  {
    v11 = sub_1C1E74EC0(MEMORY[0x1E69E7CC0]);
  }

  swift_getKeyPath();
  v27[1] = a1;
  sub_1C1F52104();

  v12 = OBJC_IVAR____TtC9Calculate19CalculateExpression__options;
  swift_beginAccess();
  v13 = *(a1 + v12);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27[0] = v11;
  sub_1C1EEDCDC(v13, sub_1C1EAF22C, 0, isUniquelyReferenced_nonNull_native, v27);

  v15 = v27[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21178, &qword_1C1F57C50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1F56480;
  *(inited + 32) = @"CalculateKeyNumberFormatter";
  *(inited + 64) = sub_1C1E785A4(0, &qword_1EDC2C2D8, 0x1E696ADA0);
  *(inited + 40) = a2;
  v17 = @"CalculateKeyNumberFormatter";
  v18 = a2;
  v19 = sub_1C1E74EC0(inited);
  swift_setDeallocating();
  sub_1C1E83580(inited + 32, &qword_1EBF21180, &qword_1C1F564D0);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v27[0] = v15;
  sub_1C1EEDCDC(v19, sub_1C1EAF22C, 0, v20, v27);

  v21 = sub_1C1F52424();
  type metadata accessor for CalculateKey();
  sub_1C1E77790(&qword_1EDC2C320, type metadata accessor for CalculateKey, &unk_1C1F58590);
  v22 = sub_1C1F52344();

  v23 = 0;
  if (a5 != 2)
  {
    v23 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  v24 = CalculateTermFormatDecimalString(v21, v22, v23);

  if (!v24)
  {
    return 0;
  }

  v25 = sub_1C1F52454();

  return v25;
}

uint64_t CalculateExpression.accessibilityMathEquation.getter()
{
  v0 = *(*sub_1C1E7F10C() + 760);

  v2 = v0(v1);

  return v2;
}

void CalculateExpression.accessibilityMathEquationDescription.getter()
{
  v0 = objc_opt_self();
  v1 = *(*sub_1C1E7F10C() + 760);

  v1(v2);

  v3 = sub_1C1F52344();

  v4 = [v0 mathExpressionWithDictionary_];

  if (v4)
  {
    sub_1C1F52944();
    swift_unknownObjectRelease();
    sub_1C1EB1C58(&v6, &v7);
    sub_1C1E785A4(0, &qword_1EDC2C2C0, 0x1E69C9CF0);
    swift_dynamicCast();
    if ([v5 speakableDescription])
    {
      sub_1C1F51FA4();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C1EE93A0(uint64_t a1)
{
  v2 = *v1;
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](v2);
  return sub_1C1F52CF4();
}

void sub_1C1EE93E4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;
    while (v6)
    {
      v8 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_14:
      v11 = v8 | (v3 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(a1 + 56) + 8 * v11);
      v16 = v15;

      v17 = sub_1C1EAC150(v13, v14);
      v19 = v18;

      if ((v19 & 1) == 0)
      {
LABEL_20:

        return;
      }

      v20 = *(*(a2 + 56) + 8 * v17);
      if (v20)
      {
        if (!v15)
        {
          return;
        }

        sub_1C1E785A4(0, &qword_1EDC2C300, off_1E815B848);
        v21 = v20;
        v22 = v16;
        v23 = sub_1C1F528C4();

        if ((v23 & 1) == 0)
        {
          return;
        }
      }

      else if (v15)
      {
        goto LABEL_20;
      }
    }

    v9 = v3;
    while (1)
    {
      v3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v3 >= v7)
      {
        return;
      }

      v10 = *(a1 + 64 + 8 * v3);
      ++v9;
      if (v10)
      {
        v8 = __clz(__rbit64(v10));
        v6 = (v10 - 1) & v10;
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C1EE958C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 64);
  v23 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v5) != 0)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v11 = (v8 - 1) & v8;
LABEL_12:
      v14 = (*(v3 + 48) + 16 * (v10 | (v4 << 6)));
      v15 = *v14;
      v16 = v14[1];

      sub_1C1EAC150(v15, v16);
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        break;
      }

      v24 = v11;
      v19 = v9;
      v20 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213E8, &unk_1C1F58430);
      v21 = v2;
      sub_1C1E785EC(&qword_1EBF213F0, &qword_1EBF213E8, &unk_1C1F58430, &unk_1C1F56AD8);
      v22 = sub_1C1F52414();

      if ((v22 & 1) == 0)
      {
        return 0;
      }

      v2 = v21;
      v3 = v20;
      v9 = v19;
      v8 = v24;
      if (!v24)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

LABEL_7:
  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v23 + 8 * v4);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1EE9778(uint64_t a1)
{
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](a1);
  v2 = sub_1C1F52CF4();

  return sub_1C1EAC308(a1, v2);
}

uint64_t sub_1C1EE97E4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
  swift_beginAccess();
  v4 = sub_1C1F52034();
  (*(*(v4 - 8) + 24))(v2 + v3, v1, v4);
  return swift_endAccess();
}

unint64_t sub_1C1EE987C(uint64_t a1)
{
  sub_1C1F52454();
  sub_1C1F52CD4();
  sub_1C1F524A4();
  v2 = sub_1C1F52CF4();

  return sub_1C1E81F44(a1, v2);
}

uint64_t sub_1C1EE990C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213E0, &unk_1C1F583F0);
    v2 = sub_1C1F52A24();
    v15 = v2;
    sub_1C1F52984();
    if (sub_1C1F529C4())
    {
      type metadata accessor for CalculateExpression.Operation();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1C1E7EB2C(v9 + 1);
        }

        v2 = v15;
        sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);
        result = sub_1C1F523B4();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1C1F529C4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t sub_1C1EE9B40(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CalculateExpression.Operation();
  sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);
  sub_1C1F523B4();
  result = sub_1C1F52974();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1C1EE9C28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213E0, &unk_1C1F583F0);
  result = sub_1C1F52A14();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for CalculateExpression.Operation();
      sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);

      result = sub_1C1F523B4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
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
    *v2 = v5;
  }

  return result;
}

double sub_1C1EE9EA0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1C1EE987C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C1EAF8FC();
      v9 = v11;
    }

    sub_1C1EB1C58((*(v9 + 56) + 32 * v7), a2);
    sub_1C1EEA484(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1C1EE9F40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21410, &unk_1C1F58498);
  v34 = v4;
  result = sub_1C1F52BC4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1C1F52CD4();
      sub_1C1F524A4();
      result = sub_1C1F52CF4();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_1C1EEA1E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21400, &unk_1C1F58440);
  v35 = v4;
  result = sub_1C1F52BC4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        v25 = v24;
      }

      sub_1C1F52CD4();
      sub_1C1F524A4();
      result = sub_1C1F52CF4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1C1EEA484(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C1F52964() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1C1F52454();
      sub_1C1F52CD4();
      v11 = v10;
      sub_1C1F524A4();
      v12 = sub_1C1F52CF4();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_1C1EEA64C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1C1EAC150(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C1EE9F40(v16, a4 & 1);
      result = sub_1C1EAC150(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1C1F52CA4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1C1EEAAD0();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_1C1EEA7B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C1EAC150(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C1EEA1E0(v16, a4 & 1);
      v11 = sub_1C1EAC150(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1C1F52CA4();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1C1EEAC38();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

_OWORD *sub_1C1EEA928(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1C1EE987C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1C1EAF8FC();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1C1EAF4E0(v13, a3 & 1);
    v8 = sub_1C1EE987C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CalculateKey();
      result = sub_1C1F52CA4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return sub_1C1EB1C58(a1, v19);
  }

  else
  {
    sub_1C1EEAA68(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_1C1EEAA68(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1C1EB1C58(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *sub_1C1EEAAD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21410, &unk_1C1F58498);
  v2 = *v0;
  v3 = sub_1C1F52BB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

  return result;
}