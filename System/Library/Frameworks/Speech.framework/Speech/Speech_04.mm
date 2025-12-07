unint64_t sub_1AC61AB20()
{
  result = qword_1EB56BDC8;
  if (!qword_1EB56BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56BDC8);
  }

  return result;
}

unint64_t sub_1AC61AB74()
{
  result = qword_1EB56BDD8;
  if (!qword_1EB56BDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56BDD8);
  }

  return result;
}

unint64_t sub_1AC61ABC8()
{
  result = qword_1EB56BDE8;
  if (!qword_1EB56BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56BDE8);
  }

  return result;
}

unint64_t sub_1AC61AC1C()
{
  result = qword_1EB56BE00;
  if (!qword_1EB56BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56BE00);
  }

  return result;
}

uint64_t sub_1AC61AC70()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C5380;
  v3 = OUTLINED_FUNCTION_70_2();

  return sub_1AC60CBFC(v3);
}

void *sub_1AC61AD08(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_19:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            v13 = v15;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

LABEL_14:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      result = sub_1AC5DC8D8(*(a4 + 48) + 40 * (v16 | (v13 << 6)), v19);
      v17 = v20;
      v18 = v19[1];
      *v11 = v19[0];
      *(v11 + 16) = v18;
      *(v11 + 32) = v17;
      v11 += 40;
      v12 = v14;
      if (v14 == v10)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1AC61AE5C(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1AC79FB18();
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v32 - v12;
  v14 = a4 + 56;
  v13 = *(a4 + 56);
  v38 = -1 << *(a4 + 32);
  if (-v38 < 64)
  {
    v15 = ~(-1 << -v38);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  if (!a2)
  {
    v19 = 0;
    result = 0;
LABEL_22:
    v31 = ~v38;
    *a1 = a4;
    a1[1] = v14;
    a1[2] = v31;
    a1[3] = v19;
    a1[4] = v16;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v19 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = a1;
    v34 = a4 + 56;
    v18 = 0;
    v19 = 0;
    v20 = (63 - v38) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    v37 = result;
    while (v18 < result)
    {
      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }

      if (!v16)
      {
        v14 = v34;
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v20)
          {
            v16 = 0;
            result = v18;
            a1 = v33;
            goto LABEL_22;
          }

          v16 = *(v34 + 8 * v21);
          ++v19;
          if (v16)
          {
            v43 = v18 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v43 = v18 + 1;
      v21 = v19;
LABEL_17:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = a4;
      v24 = *(a4 + 48);
      v26 = v41;
      v25 = v42;
      v27 = *(v42 + 72);
      v28 = v40;
      (*(v42 + 16))(v40, v24 + v27 * (v22 | (v21 << 6)), v41);
      v29 = *(v25 + 32);
      v30 = v39;
      v29(v39, v28, v26);
      v29(a2, v30, v26);
      result = v37;
      v18 = v43;
      if (v43 == v37)
      {
        v19 = v21;
        a1 = v33;
        v14 = v34;
        a4 = v23;
        goto LABEL_22;
      }

      a2 += v27;
      v19 = v21;
      a4 = v23;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1AC61B0F4(void *result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1AC61B250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, int64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_62();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  if ((v30 & 0xC000000000000001) != 0)
  {
    sub_1AC7A08A8();
    sub_1AC5CF764(0, &qword_1EB56ABA0, 0x1E6958418);
    sub_1AC61B8BC();
    sub_1AC7A0488();
    v31 = a14;
    if (!v35)
    {
      goto LABEL_26;
    }
  }

  else
  {
    a17 = 0;
    OUTLINED_FUNCTION_63_0();
    a15 = v31 + 56;
    a16 = ~v49;
    v50 = -v49;
    if (v50 < 64)
    {
      v51 = ~(v48 << v50);
    }

    else
    {
      v51 = v48;
    }

    a18 = v51 & *(v31 + 56);
    if (!v35)
    {
      goto LABEL_26;
    }
  }

  if (!v33)
  {
LABEL_26:
    *v37 = v31;
    v37[1] = a15;
    v37[2] = a16;
    v37[3] = a17;
    v37[4] = a18;
    OUTLINED_FUNCTION_61_0();
    return;
  }

  if ((v33 & 0x8000000000000000) == 0)
  {
    v52 = a16;
    v53 = v37;
    v42 = 0;
    v43 = (a16 + 64) >> 6;
    while (1)
    {
      v44 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v31 < 0)
      {
        if (!sub_1AC7A0918() || (sub_1AC5CF764(0, &qword_1EB56ABA0, 0x1E6958418), swift_dynamicCast(), (v47 = a13) == 0))
        {
LABEL_25:
          a16 = v52;
          v37 = v53;
          goto LABEL_26;
        }
      }

      else
      {
        if (!a18)
        {
          while (1)
          {
            v45 = a17 + 1;
            if (__OFADD__(a17, 1))
            {
              break;
            }

            if (v45 >= v43)
            {
              a18 = 0;
              goto LABEL_25;
            }

            a18 = *(a15 + 8 * v45);
            ++a17;
            if (a18)
            {
              a17 = v45;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        OUTLINED_FUNCTION_168_0();
        v47 = *(*(v31 + 48) + ((a17 << 9) | (8 * v46)));
        if (!v47)
        {
          goto LABEL_25;
        }
      }

      *v35++ = v47;
      ++v42;
      if (v44 == v33)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1AC61B420(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  v30 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - v13;
  v31 = a4;
  v17 = *(a4 + 64);
  v16 = a4 + 64;
  v15 = v17;
  v18 = -1 << *(v16 - 32);
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v15;
  if (!a2)
  {
    v22 = 0;
    a3 = 0;
LABEL_21:
    *a1 = v31;
    a1[1] = v16;
    a1[2] = ~v18;
    a1[3] = v22;
    a1[4] = v20;
    return a3;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = -1 << *(v16 - 32);
    v29 = a1;
    v21 = 0;
    v22 = 0;
    v23 = (63 - v18) >> 6;
    while (1)
    {
      if (v21 >= a3)
      {
        goto LABEL_24;
      }

      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_25;
      }

      if (!v20)
      {
        while (1)
        {
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v25 >= v23)
          {
            v20 = 0;
            a3 = v21;
            goto LABEL_19;
          }

          v20 = *(v16 + 8 * v25);
          ++v22;
          if (v20)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v25 = v22;
LABEL_15:
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v27 = *(v30 + 72);
      sub_1AC61B924(*(v31 + 48) + v27 * (v26 | (v25 << 6)), v11);
      sub_1AC61B988(v11, v14);
      result = sub_1AC61B988(v14, a2);
      if (v24 == a3)
      {
        break;
      }

      a2 += v27;
      v21 = v24;
      v22 = v25;
    }

    v22 = v25;
LABEL_19:
    v18 = v28;
    a1 = v29;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_1AC61B634(void *result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      ++v11;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1AC61B78C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
LABEL_12:
    v7 = a4;
LABEL_14:
    *result = a4;
    result[1] = a5;
    result[2] = v7;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (!(a4 - a5 + v5))
      {
        v7 = a5;
        a3 = a5 - a4;
        goto LABEL_14;
      }

      if (a5 < a4)
      {
        goto LABEL_16;
      }

      if (a4 + v5 >= a5)
      {
        goto LABEL_17;
      }

      *(a2 + 8 * v5) = a4 + v5;
      ++v5;
      if (v6 == a3)
      {
        v7 = a4 + v5;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1AC61B814()
{
  result = qword_1EB56B2C8;
  if (!qword_1EB56B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B2C8);
  }

  return result;
}

unint64_t sub_1AC61B868()
{
  result = qword_1EB56B2B8;
  if (!qword_1EB56B2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B2B8);
  }

  return result;
}

unint64_t sub_1AC61B8BC()
{
  result = qword_1EB56BF00;
  if (!qword_1EB56BF00)
  {
    sub_1AC5CF764(255, &qword_1EB56ABA0, 0x1E6958418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56BF00);
  }

  return result;
}

uint64_t sub_1AC61B924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC61B988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AC61B9EC()
{
  result = qword_1EB56AD40;
  if (!qword_1EB56AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AD40);
  }

  return result;
}

unint64_t sub_1AC61BA40()
{
  result = qword_1EB56AF40;
  if (!qword_1EB56AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AF40);
  }

  return result;
}

unint64_t sub_1AC61BA94()
{
  result = qword_1EB56AF18;
  if (!qword_1EB56AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AF18);
  }

  return result;
}

uint64_t sub_1AC61BAE8()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_64_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);
  v5 = OUTLINED_FUNCTION_170();

  return sub_1AC60C390(v5, v6, v1);
}

uint64_t sub_1AC61BB80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC61BBF0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_130_0(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AC61BC4C()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;

  return sub_1AC6E0BC4();
}

uint64_t objectdestroy_53Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AC61BD30()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29_0(v3);
  *v4 = v5;
  v4[1] = sub_1AC5C4D48;
  v6 = OUTLINED_FUNCTION_70_2();

  return sub_1AC60A294(v6, v7, v1, v2);
}

uint64_t sub_1AC61BDD0()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;
  v3 = OUTLINED_FUNCTION_70_2();

  return v4(v3);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AC61BEBC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1AC61BFB0;

  return v5(v2 + 32);
}

uint64_t sub_1AC61BFB0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = v1;
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_18();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_44();

  return v8();
}

uint64_t sub_1AC61C0A8()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_149_0();

  return sub_1AC608444(v3, v4, v5, v6, v7);
}

uint64_t sub_1AC61C14C()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_29_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC5C4D48;
  v3 = OUTLINED_FUNCTION_70_2();

  return v4(v3);
}

uint64_t sub_1AC61C1F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_130_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_48_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_97_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_109_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_135_0()
{

  return sub_1AC7A0E78();
}

uint64_t OUTLINED_FUNCTION_147_0(uint64_t a1)
{

  return sub_1AC79FED8();
}

BOOL OUTLINED_FUNCTION_151_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_152_0(uint64_t a1, uint64_t a2)
{

  return sub_1AC7A0968();
}

void OUTLINED_FUNCTION_153_1()
{

  sub_1AC60DAF8();
}

uint64_t OUTLINED_FUNCTION_188_0()
{

  return swift_getObjectType();
}

void Assets.init(locale:taskHint:clientID:modelOverridePath:)()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v34 = v2;
  v35 = v3;
  v5 = v4;
  v7 = v6;
  v33 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v10 = OUTLINED_FUNCTION_167(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v32 = v11 - v12;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v31 - v14;
  v16 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v31 - v24;
  v31[3] = *v5 == 13;
  v26 = *(v18 + 16);
  v26(v31 - v24, v7, v16);
  sub_1AC61CB64(v1, v15);
  v26(v22, v25, v16);
  sub_1AC61CB64(v15, v32);
  sub_1AC61CBD4();
  sub_1AC5C720C(v1, &qword_1EB56BB68, &qword_1AC7A8490);
  v27 = *(v18 + 8);
  v27(v7, v16);
  OUTLINED_FUNCTION_51();
  sub_1AC5C720C(v28, v29, v30);
  v27(v25, v16);
  OUTLINED_FUNCTION_105();
}

void Assets.init(locale:taskHint:clientID:modelOverridePath:isSpelling:)()
{
  OUTLINED_FUNCTION_104();
  v14[3] = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  OUTLINED_FUNCTION_167(v5);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v14 - v7;
  v9 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  (*(v11 + 16))(v14 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v9);
  sub_1AC61CB64(v2, v8);
  sub_1AC61CBD4();
  sub_1AC5C720C(v2, &qword_1EB56BB68, &qword_1AC7A8490);
  (*(v11 + 8))(v4, v9);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC61CB64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AC61CBD4()
{
  OUTLINED_FUNCTION_104();
  HIDWORD(v85) = v1;
  v3 = v2;
  v86 = v4;
  v87 = v5;
  v83 = v6;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v12 = OUTLINED_FUNCTION_167(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v84 = v13 - v14;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v78 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  OUTLINED_FUNCTION_167(v18);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v78 - v20;
  v22 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = v26 - v27;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_53_1();
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v78 - v32;
  Locale.languageRegionLocale.getter(v31, v34, v35, v36, v37, v38, v39, v40, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v8, v89);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    v59 = v22;
    v60 = v88;
    v61 = v24;
    sub_1AC5C720C(v21, &qword_1EB56BFD8, &qword_1AC7A83F0);
    if (off_1ED937D60 != -1)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v62 = sub_1AC79FDE8();
      __swift_project_value_buffer(v62, qword_1ED9386C8);
      v63 = OUTLINED_FUNCTION_57_3();
      v64(v63, v60, v59);
      v60 = sub_1AC79FDC8();
      v65 = sub_1AC7A05F8();
      if (os_log_type_enabled(v60, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        OUTLINED_FUNCTION_38_1(v67, 4.8149e-34);
        OUTLINED_FUNCTION_64_2();
        OUTLINED_FUNCTION_20_2();
        v70 = sub_1AC622350(v68, v69, MEMORY[0x1E6969798]);
        v71 = OUTLINED_FUNCTION_68_1(v70);
        MEMORY[0x1B26E8C40](v71);

        MEMORY[0x1B26E8C40](46, 0xE100000000000000);
        v72 = v89;
        v0 = v90;
        v61 += 8;
        v73 = OUTLINED_FUNCTION_54_1();
        v74(v73);
        v59 = sub_1AC5CFE74(v72, v0, &v91);

        *(v66 + 4) = v59;
        OUTLINED_FUNCTION_67_2(&dword_1AC5BC000, v75, v76, "Failed precondition: %s");
        __swift_destroy_boxed_opaque_existential_0(v67);
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_70();
      }

      else
      {

        v77 = *(v61 + 8);
        v61 += 8;
        v77(v0, v59);
      }

      __break(1u);
LABEL_8:
      OUTLINED_FUNCTION_3(&off_1ED937D60);
    }
  }

  (*(v24 + 32))(v33, v21, v22);
  v41 = *(v24 + 16);
  v81 = v28;
  v82 = v33;
  v41(v28, v33, v22);
  v42 = objc_allocWithZone(SFEntitledAssetConfig);
  v43 = v24;
  v44 = sub_1AC751A98(v83, v28, 0, 0);
  v45 = OUTLINED_FUNCTION_54_1();
  v47 = v46;
  v80 = v46;
  (v41)(v45);
  v79 = v3;
  sub_1AC61CB64(v3, v17);
  v48 = v10;
  v41(v10, v28, v47);
  v49 = type metadata accessor for Assets(0);
  *(v10 + v49[8]) = v44;
  v50 = (v10 + v49[5]);
  v51 = v86;
  v52 = v17;
  v53 = v87;
  *v50 = v86;
  v50[1] = v53;
  sub_1AC61CB64(v52, v48 + v49[6]);
  LOBYTE(v41) = BYTE4(v85) & 1;
  *(v48 + v49[7]) = BYTE4(v85) & 1;
  v54 = v84;
  sub_1AC61CB64(v52, v84);
  OUTLINED_FUNCTION_46_2();
  v55 = v44;

  v56 = sub_1AC61F634(v55, 1, v51, v53, v54, v41);
  sub_1AC5C720C(v79, &qword_1EB56BB68, &qword_1AC7A8490);
  v57 = v80;
  v58 = *(v43 + 8);
  v58(v88, v80);
  sub_1AC5C720C(v52, &qword_1EB56BB68, &qword_1AC7A8490);
  v58(v81, v57);
  v58(v82, v57);
  *(v48 + v49[9]) = v56;
  OUTLINED_FUNCTION_105();
}

void sub_1AC61D5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v25 = OUTLINED_FUNCTION_167(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C060, &unk_1AC7A8760);
  OUTLINED_FUNCTION_167(v32);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C068, &unk_1AC7B09E0);
  OUTLINED_FUNCTION_167(v36);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &a9 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C070, &qword_1AC7A8770);
  OUTLINED_FUNCTION_167(v40);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &a9 - v42;
  v44 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &a9 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AC79F998();
  v50 = sub_1AC79F9C8();
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v50);
  v51 = sub_1AC79FA78();
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v51);
  v52 = sub_1AC79FA48();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v52);
  sub_1AC79F9D8();
  v53 = SFEntitledAssetConfigForLanguageDetector();
  v54 = sub_1AC79F7F8();
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v54);
  (*(v46 + 16))(v23, v49, v44);
  v55 = type metadata accessor for Assets(0);
  *(v23 + v55[8]) = v53;
  v56 = (v23 + v55[5]);
  *v56 = 0;
  v56[1] = 0xE000000000000000;
  sub_1AC61CB64(v31, v23 + v55[6]);
  *(v23 + v55[7]) = 0;
  sub_1AC61CB64(v31, v28);
  OUTLINED_FUNCTION_46_2();
  v57 = sub_1AC61F634(v53, 0, 0, 0xE000000000000000, v28, 0);
  sub_1AC5C720C(v31, &qword_1EB56BB68, &qword_1AC7A8490);
  (*(v46 + 8))(v49, v44);
  *(v23 + v55[9]) = v57;
  OUTLINED_FUNCTION_105();
}

uint64_t Assets.locale.getter()
{
  OUTLINED_FUNCTION_56();
  sub_1AC79FB18();
  OUTLINED_FUNCTION_80();
  v0 = OUTLINED_FUNCTION_39();

  return v1(v0);
}

uint64_t Assets.clientID.getter()
{
  type metadata accessor for Assets(0);

  return OUTLINED_FUNCTION_39();
}

uint64_t Assets.modelOverridePath.getter()
{
  v2 = OUTLINED_FUNCTION_56();
  v3 = v1 + *(type metadata accessor for Assets(v2) + 24);

  return sub_1AC61CB64(v3, v0);
}

uint64_t Assets.modelRoot.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC61DA5C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_55(v0);
  *v1 = v2;
  v1[1] = sub_1AC61DAF0;

  return sub_1AC61F6D8();
}

uint64_t sub_1AC61DAF0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC61DBE4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC61F910();
}

uint64_t sub_1AC61DC6C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_50();
  v4 = *v3;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  OUTLINED_FUNCTION_43_1();
  if (!v1)
  {
    v6 = v2;
    v7 = v0;
  }

  return v8(v6, v7);
}

uint64_t sub_1AC61DD78()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC61FB58();
}

uint64_t sub_1AC61DE00()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_7_3();
  v3 = *v2;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_82();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1AC61DEFC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC61FFCC();
}

uint64_t sub_1AC61DF84()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_7_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_18();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_11_3();

    return v8();
  }

  else
  {
    *(v4 + 32) = v0;

    return MEMORY[0x1EEE6DFA0](sub_1AC61E0AC, 0, 0);
  }
}

uint64_t sub_1AC61E0AC()
{
  OUTLINED_FUNCTION_85();
  sub_1AC608F68(*(v0 + 32));
  OUTLINED_FUNCTION_82();

  return v1();
}

uint64_t sub_1AC61E11C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC61FD84();
}

uint64_t Assets.contextualNamedEntitySources(forApplication:taskName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC61E1C0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_42_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_41_1(v1);

  return sub_1AC620318();
}

uint64_t sub_1AC61E248()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_7_3();
  v3 = *v2;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_82();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t Assets.contextualRankedContactSources(forApplication:taskName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC61E34C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_42_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_41_1(v1);

  return sub_1AC620978();
}

uint64_t Assets.geoLMRegionID(forLatitude:longitude:)()
{
  OUTLINED_FUNCTION_85();
  v1[4] = v0;
  v1[2] = v2;
  v1[3] = v3;
  v4 = sub_1AC79FB18();
  OUTLINED_FUNCTION_167(v4);
  v1[5] = OUTLINED_FUNCTION_126();
  v5 = sub_1AC79FF48();
  OUTLINED_FUNCTION_167(v5);
  v1[6] = OUTLINED_FUNCTION_126();
  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC61E470()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_2();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_42_1(v1);
  *v2 = v3;
  v2[1] = sub_1AC61E500;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return sub_1AC620F70(v4, v5);
}

uint64_t sub_1AC61E500()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 64) = v5;
  *(v3 + 72) = v6;

  if (v0)
  {

    OUTLINED_FUNCTION_27();

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1AC61E640, 0, 0);
  }
}

uint64_t sub_1AC61E640()
{
  v1 = *(v0 + 72);
  if (v1)
  {

    OUTLINED_FUNCTION_43_1();
    v3 = *(v0 + 64);

    return v2(v3, v1);
  }

  else
  {
    sub_1AC79FEE8();
    if (qword_1EB56B610 != -1)
    {
      swift_once();
    }

    v5 = qword_1EB56DF80;
    sub_1AC79FA88();
    OUTLINED_FUNCTION_39();
    v6 = sub_1AC79FFC8();
    related decl 'e' for SFSpeechErrorCode.init(_:description:)(1, v6, v7);
    swift_willThrow();

    OUTLINED_FUNCTION_44();

    return v8();
  }
}

uint64_t ContextualNamedEntitySource.toDate.getter()
{
  v2 = OUTLINED_FUNCTION_56();
  v3 = *(type metadata accessor for ContextualNamedEntitySource(v2) + 24);
  sub_1AC79F8E8();
  OUTLINED_FUNCTION_80();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

void ContextualNamedEntitySource.init(sourceApplications:fromDate:toDate:limit:)()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  *v6 = v8;
  v9 = type metadata accessor for ContextualNamedEntitySource(0);
  v10 = v9[5];
  v11 = sub_1AC79F8E8();
  OUTLINED_FUNCTION_80();
  v13 = *(v12 + 32);
  v13(&v7[v10], v5, v11);
  v13(&v7[v9[6]], v3, v11);
  *&v7[v9[7]] = v1;
  OUTLINED_FUNCTION_105();
}

void sub_1AC61E98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_62();
  if (v31 != v30 && (v32 = v30, OUTLINED_FUNCTION_16_1(), v51))
  {
    v34 = 0;
    v35 = v33 + 56;
    v36 = 1 << *(v33 + 32);
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v38 = v37 & *(v33 + 56);
    v39 = (v36 + 63) >> 6;
    v53 = v33;
    if (v38)
    {
      while (2)
      {
        v40 = __clz(__rbit64(v38));
        v38 &= v38 - 1;
LABEL_14:
        v44 = (*(v33 + 48) + 16 * (v40 | (v34 << 6)));
        v46 = *v44;
        v45 = v44[1];
        sub_1AC7A0E78();

        sub_1AC7A0048();
        v47 = sub_1AC7A0EC8();
        v48 = ~(-1 << *(v32 + 32));
        do
        {
          v49 = v47 & v48;
          if (((*(v32 + 56 + (((v47 & v48) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v47 & v48)) & 1) == 0)
          {

            goto LABEL_25;
          }

          v50 = (*(v32 + 48) + 16 * v49);
          v51 = *v50 == v46 && v50[1] == v45;
          if (v51)
          {
            break;
          }

          v52 = sub_1AC7A0D38();
          v47 = v49 + 1;
        }

        while ((v52 & 1) == 0);

        v33 = v53;
        if (v38)
        {
          continue;
        }

        break;
      }
    }

    v41 = v34;
    while (1)
    {
      v34 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v34 >= v39)
      {
        goto LABEL_25;
      }

      ++v41;
      if (*(v35 + 8 * v34))
      {
        OUTLINED_FUNCTION_25_0();
        v38 = v43 & v42;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_25:
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_1AC61EB64(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t))
{
  if (a1 == a2)
  {
    return;
  }

  OUTLINED_FUNCTION_16_1();
  if (!v8)
  {
    return;
  }

  v9 = v7;
  v10 = 0;
  v11 = v6 + 56;
  OUTLINED_FUNCTION_33_1();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v18 = a2 + 56;
  v32 = v17;
  v33 = v12;
  if (!v15)
  {
    goto LABEL_6;
  }

  do
  {
    v19 = __clz(__rbit64(v15));
    v34 = (v15 - 1) & v15;
LABEL_11:
    v23 = *(*(v12 + 48) + 8 * (v19 | (v10 << 6)));
    sub_1AC7A0E78();
    if (v23)
    {
      if (v23 == 1)
      {
        v24 = 1;
      }

      else
      {
        if (v23 != 2)
        {
          MEMORY[0x1B26E9A40](3);
          a4(v23);
          sub_1AC7A0768();
          goto LABEL_19;
        }

        v24 = 2;
      }
    }

    else
    {
      v24 = 0;
    }

    MEMORY[0x1B26E9A40](v24);
LABEL_19:
    v25 = sub_1AC7A0EC8();
    v26 = v4 << *(a2 + 32);
    v27 = v25 & ~v26;
    if (((*(v18 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
LABEL_38:
      v9(v23);
      return;
    }

    v28 = ~v26;
    while (1)
    {
      v29 = *(*(a2 + 48) + 8 * v27);
      if (v29)
      {
        break;
      }

      v9(0);
      if (!v23)
      {
        v30 = 0;
        goto LABEL_35;
      }

LABEL_32:
      v27 = (v27 + 1) & v28;
      if (((*(v18 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    if (v29 == 1)
    {
      v9(1uLL);
      v30 = 1;
      if (v23 == 1)
      {
        goto LABEL_35;
      }

      goto LABEL_32;
    }

    if (v29 == 2)
    {
      v9(2uLL);
      v30 = 2;
      if (v23 == 2)
      {
        goto LABEL_35;
      }

      goto LABEL_32;
    }

    if (v23 < 3)
    {
      goto LABEL_32;
    }

    sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
    a4(v29);
    v31 = sub_1AC7A0758();
    v9(v29);
    if ((v31 & 1) == 0)
    {
      goto LABEL_32;
    }

    v30 = v23;
LABEL_35:
    v9(v30);
    v17 = v32;
    v12 = v33;
    v4 = -1;
    v15 = v34;
  }

  while (v34);
LABEL_6:
  v20 = v10;
  while (1)
  {
    v10 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return;
    }

    ++v20;
    if (*(v11 + 8 * v10))
    {
      OUTLINED_FUNCTION_25_0();
      v34 = v22 & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1AC61EDF0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_78_0();
    OUTLINED_FUNCTION_16_1();
    if (v5)
    {
      v6 = 0;
      v7 = v3 + 56;
      OUTLINED_FUNCTION_33_1();
      v10 = v9 & v8;
      v12 = (v11 + 63) >> 6;
      while (v10)
      {
LABEL_10:
        v10 &= v10 - 1;
        sub_1AC7A0E78();
        MEMORY[0x1B26E9A40](0);
        v14 = sub_1AC7A0EC8() & ~(v4 << *(v2 + 32));
        if (((*(v2 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          return;
        }
      }

      while (1)
      {
        v13 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v13 >= v12)
        {
          return;
        }

        v10 = *(v7 + 8 * v13);
        ++v6;
        if (v10)
        {
          v6 = v13;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_1AC61EEDC()
{
  OUTLINED_FUNCTION_62();
  if (v6 == v7 || (OUTLINED_FUNCTION_78_0(), OUTLINED_FUNCTION_16_1(), !v8))
  {
LABEL_16:
    OUTLINED_FUNCTION_61_0();
    return;
  }

  OUTLINED_FUNCTION_19_1();
LABEL_5:
  if (v5)
  {
    OUTLINED_FUNCTION_57_2();
LABEL_12:
    OUTLINED_FUNCTION_45_3();
    MEMORY[0x1B26E9A40](v1);
    sub_1AC7A0EC8();
    while (1)
    {
      OUTLINED_FUNCTION_44_1();
      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }

      if (*(*(v0 + 48) + v12) == v1)
      {
        goto LABEL_5;
      }
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

    if (v3 >= v4)
    {
      goto LABEL_16;
    }

    ++v9;
    if (*(v2 + 8 * v3))
    {
      OUTLINED_FUNCTION_25_0();
      v5 = v11 & v10;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1AC61EFA8()
{
  OUTLINED_FUNCTION_62();
  if (v6 == v7 || (OUTLINED_FUNCTION_78_0(), OUTLINED_FUNCTION_16_1(), !v8))
  {
LABEL_16:
    OUTLINED_FUNCTION_61_0();
    return;
  }

  OUTLINED_FUNCTION_19_1();
LABEL_5:
  if (v5)
  {
    OUTLINED_FUNCTION_57_2();
LABEL_12:
    OUTLINED_FUNCTION_45_3();
    MEMORY[0x1B26E9A40](v1);
    sub_1AC7A0EC8();
    while (1)
    {
      OUTLINED_FUNCTION_44_1();
      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }

      if (v1 == *(*(v0 + 48) + v12))
      {
        goto LABEL_5;
      }
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

    if (v3 >= v4)
    {
      goto LABEL_16;
    }

    ++v9;
    if (*(v2 + 8 * v3))
    {
      OUTLINED_FUNCTION_25_0();
      v5 = v11 & v10;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t ContextualNamedEntitySource.hash(into:)(uint64_t a1)
{
  sub_1AC6221D4(a1, *v1);
  v2 = type metadata accessor for ContextualNamedEntitySource(0);
  sub_1AC79F8E8();
  OUTLINED_FUNCTION_6_3();
  sub_1AC622350(v3, v4, MEMORY[0x1E6969540]);
  sub_1AC79FE58();
  sub_1AC79FE58();
  return MEMORY[0x1B26E9A40](*(v1 + *(v2 + 28)));
}

uint64_t ContextualNamedEntitySource.hashValue.getter()
{
  sub_1AC7A0E78();
  sub_1AC6221D4(v5, *v0);
  v1 = type metadata accessor for ContextualNamedEntitySource(0);
  sub_1AC79F8E8();
  OUTLINED_FUNCTION_6_3();
  sub_1AC622350(v2, v3, MEMORY[0x1E6969540]);
  OUTLINED_FUNCTION_51();
  sub_1AC79FE58();
  OUTLINED_FUNCTION_51();
  sub_1AC79FE58();
  MEMORY[0x1B26E9A40](*(v0 + *(v1 + 28)));
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC61F20C(uint64_t a1, uint64_t a2)
{
  sub_1AC7A0E78();
  sub_1AC6221D4(v5, *v2);
  sub_1AC79F8E8();
  sub_1AC622350(&qword_1EB56C020, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1AC79FE58();
  sub_1AC79FE58();
  MEMORY[0x1B26E9A40](*(v2 + *(a2 + 28)));
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC61F32C()
{
  v2 = OUTLINED_FUNCTION_56();
  v4 = *(v3(v2) + 20);
  sub_1AC79F8E8();
  OUTLINED_FUNCTION_80();
  v7 = *(v6 + 16);

  return v7(v0, v1 + v4, v5);
}

uint64_t ContextualRankedContactSource.init(sourceApplication:rankDate:contactOnly:limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for ContextualRankedContactSource(0);
  v11 = v10[5];
  sub_1AC79F8E8();
  OUTLINED_FUNCTION_80();
  result = (*(v12 + 32))(&a6[v11], a3);
  a6[v10[6]] = a4;
  *&a6[v10[7]] = a5;
  return result;
}

BOOL static ContextualRankedContactSource.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (v5 || (sub_1AC7A0D38()) && (v6 = type metadata accessor for ContextualRankedContactSource(0), (OUTLINED_FUNCTION_65_2(v6)) && *(a1 + *(v2 + 24)) == *(a2 + *(v2 + 24)))
  {
    return OUTLINED_FUNCTION_40_2();
  }

  else
  {
    return 0;
  }
}

uint64_t ContextualRankedContactSource.hash(into:)(uint64_t a1)
{
  sub_1AC7A0048();
  v2 = type metadata accessor for ContextualRankedContactSource(0);
  sub_1AC79F8E8();
  OUTLINED_FUNCTION_6_3();
  sub_1AC622350(v3, v4, MEMORY[0x1E6969540]);
  sub_1AC79FE58();
  sub_1AC7A0E98();
  return MEMORY[0x1B26E9A40](*(v1 + *(v2 + 28)));
}

uint64_t ContextualRankedContactSource.hashValue.getter()
{
  sub_1AC7A0E78();
  ContextualRankedContactSource.hash(into:)(v1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC61F5F8(uint64_t a1)
{
  sub_1AC7A0E78();
  ContextualRankedContactSource.hash(into:)(v2);
  return sub_1AC7A0EC8();
}

void *sub_1AC61F634(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  swift_defaultActor_initialize();
  *(v6 + OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor__assetsService) = 0;
  *(v6 + OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor__modelProperties) = 0;
  v6[14] = a1;
  v6[15] = a3;
  v6[16] = a4;
  sub_1AC623D54(a5, v6 + OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor_modelOverridePath);
  *(v6 + OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor_isSpelling) = a6;
  *(v6 + OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor_shouldSubscribe) = a2;
  return v6;
}

uint64_t sub_1AC61F6D8()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_55(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_85_0(v4);

  return sub_1AC621794();
}

uint64_t sub_1AC61F75C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_7_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_18();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_11_3();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1AC61F87C()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 40);
  v2 = [v1 modelRoot];

  sub_1AC79F7A8();
  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC61F910()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC61F9A0;

  return sub_1AC621794();
}

uint64_t sub_1AC61F9A0()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_7_3();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_11_3();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_47_1();
    v9 = OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1AC61FABC()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 32);
  v2 = [v1 modelVersion];

  v3 = sub_1AC79FF68();
  v5 = v4;

  OUTLINED_FUNCTION_43_1();

  return v6(v3, v5);
}

uint64_t sub_1AC61FB58()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC621794();
}

uint64_t sub_1AC61FBDC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_7_3();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_11_3();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_47_1();
    v9 = OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1AC61FCF8()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 32);
  v2 = [v1 modelTaskNames];

  sub_1AC7A0158();
  v3 = OUTLINED_FUNCTION_12_1();

  return v4(v3);
}

uint64_t sub_1AC61FD84()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC61FE14;

  return sub_1AC621794();
}

uint64_t sub_1AC61FE14()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_7_3();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_11_3();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_47_1();
    v9 = OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1AC61FF30()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 32);
  v2 = [v1 modelQualityType];

  v3 = sub_1AC79FF68();
  v5 = v4;

  OUTLINED_FUNCTION_43_1();

  return v6(v3, v5);
}

uint64_t sub_1AC61FFCC()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC621794();
}

uint64_t sub_1AC620050()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_7_3();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_11_3();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_47_1();
    v9 = OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

void sub_1AC62016C()
{
  v1 = *(v0 + 32);
  v2 = [v1 modelSamplingRates];

  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  v3 = sub_1AC7A0158();

  v4 = sub_1AC61C24C();
  if (v4)
  {
    v5 = v4;
    v15 = MEMORY[0x1E69E7CC0];
    sub_1AC631164(0, v4 & ~(v4 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      return;
    }

    v6 = 0;
    v7 = v15;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1B26E95B0](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 integerValue];

      v15 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1AC631164(v11 > 1, v12 + 1, 1);
      }

      ++v6;
      *(v7 + 16) = v12 + 1;
      *(v7 + 8 * v12 + 32) = v10;
    }

    while (v5 != v6);
  }

  v13 = OUTLINED_FUNCTION_12_1();

  v14(v13);
}

uint64_t sub_1AC620318()
{
  OUTLINED_FUNCTION_85();
  v5 = OUTLINED_FUNCTION_49_0(v1, v2, v3, v4);
  v6 = type metadata accessor for ContextualNamedEntitySource(v5);
  OUTLINED_FUNCTION_48_2(v6);
  v0[8] = v7;
  v0[9] = OUTLINED_FUNCTION_126();
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_85_0(v8);

  return sub_1AC62139C();
}

uint64_t sub_1AC6203E4()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_27();

    return v6();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_37();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1AC620514()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_66_1(*(v0 + 24));

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_30_0(v1);

  return v3(v2);
}

uint64_t sub_1AC6205B4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  *v4 = *v1;
  v3[13] = v5;
  v3[14] = v0;

  if (v0)
  {
    v6 = v3[6];
    v7 = sub_1AC620914;
  }

  else
  {
    v8 = v3[6];

    v7 = sub_1AC6206CC;
    v6 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

void sub_1AC6206CC()
{
  v1 = sub_1AC61C24C();
  if (v1)
  {
    v2 = v1;
    v23 = MEMORY[0x1E69E7CC0];
    sub_1AC6311A8(0, v1 & ~(v1 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return;
    }

    v3 = 0;
    v4 = v0[13];
    v6 = v0[7];
    v5 = v0[8];
    v21 = v4 + 32;
    v22 = v4 & 0xC000000000000001;
    do
    {
      if (v22)
      {
        v7 = MEMORY[0x1B26E95B0](v3, v0[13]);
      }

      else
      {
        v7 = *(v21 + 8 * v3);
      }

      v8 = v7;
      v9 = v0[9];
      v10 = [v7 sourceApplications];
      v11 = sub_1AC7A0158();

      v12 = sub_1AC608FF4(v11);
      v13 = [v8 fromDate];
      sub_1AC79F8C8();

      v14 = [v8 toDate];
      sub_1AC79F8C8();

      v15 = [v8 limit];
      *v9 = v12;
      *(v9 + *(v6 + 28)) = v15;
      v17 = *(v23 + 16);
      v16 = *(v23 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1AC6311A8(v16 > 1, v17 + 1, 1);
      }

      v18 = v0[9];
      ++v3;
      *(v23 + 16) = v17 + 1;
      sub_1AC623DC4(v18, v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, type metadata accessor for ContextualNamedEntitySource);
    }

    while (v2 != v3);
  }

  v19 = OUTLINED_FUNCTION_12_1();

  v20(v19);
}

uint64_t sub_1AC620914()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC620978()
{
  OUTLINED_FUNCTION_85();
  v5 = OUTLINED_FUNCTION_49_0(v1, v2, v3, v4);
  v6 = type metadata accessor for ContextualRankedContactSource(v5);
  OUTLINED_FUNCTION_48_2(v6);
  v0[8] = v7;
  v0[9] = OUTLINED_FUNCTION_126();
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_85_0(v8);

  return sub_1AC62139C();
}

uint64_t sub_1AC620A44()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_27();

    return v6();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_37();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1AC620B74()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_66_1(*(v0 + 24));

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_30_0(v1);

  return v3(v2);
}

uint64_t sub_1AC620C14()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  *v4 = *v1;
  v3[13] = v5;
  v3[14] = v0;

  if (v0)
  {
    v6 = v3[6];
    v7 = sub_1AC623E20;
  }

  else
  {
    v8 = v3[6];

    v7 = sub_1AC620D2C;
    v6 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

void sub_1AC620D2C()
{
  v1 = sub_1AC61C24C();
  if (v1)
  {
    v2 = v1;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1AC631200(0, v1 & ~(v1 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return;
    }

    v3 = 0;
    v4 = v0[13];
    v22 = v0[8];
    v23 = v0[9];
    v5 = v0[7];
    v20 = v4 + 32;
    v21 = v4 & 0xC000000000000001;
    v24 = v2;
    do
    {
      if (v21)
      {
        v6 = MEMORY[0x1B26E95B0](v3, v0[13]);
      }

      else
      {
        v6 = *(v20 + 8 * v3);
      }

      v7 = v6;
      v8 = v0[9];
      v9 = [v6 sourceApplication];
      v10 = sub_1AC79FF68();
      v12 = v11;

      v13 = [v7 rankDate];
      sub_1AC79F8C8();

      LOBYTE(v13) = [v7 contactOnly];
      v14 = [v7 limit];

      *v8 = v10;
      *(v23 + 8) = v12;
      *(v8 + *(v5 + 24)) = v13;
      *(v8 + *(v5 + 28)) = v14;
      v16 = *(v25 + 16);
      v15 = *(v25 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1AC631200(v15 > 1, v16 + 1, 1);
      }

      v17 = v0[9];
      ++v3;
      *(v25 + 16) = v16 + 1;
      sub_1AC623DC4(v17, v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v16, type metadata accessor for ContextualRankedContactSource);
    }

    while (v24 != v3);
  }

  v18 = OUTLINED_FUNCTION_12_1();

  v19(v18);
}

uint64_t sub_1AC620F70(double a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = swift_task_alloc();
  *(v3 + 40) = v4;
  *v4 = v3;
  v4[1] = sub_1AC621004;

  return sub_1AC62139C();
}

uint64_t sub_1AC621004()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  *(v2 + 48) = v1;

  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_74();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }
}

uint64_t sub_1AC621124()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_42_1(v0);
  *v1 = v2;
  v1[1] = sub_1AC6211B4;

  return sub_1AC6F2528();
}

uint64_t sub_1AC6211B4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_50();
  v7 = v6;
  OUTLINED_FUNCTION_19();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  v7[8] = v2;

  if (v2)
  {
    v11 = v7[4];
    v12 = sub_1AC621340;
  }

  else
  {
    v7[9] = a2;
    v7[10] = a1;
    v12 = sub_1AC6212E0;
    v11 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, 0);
}

uint64_t sub_1AC6212E0()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_43_1();
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1(v2, v3);
}

uint64_t sub_1AC621340()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC6213BC()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor__assetsService;
  *(v0 + 24) = OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor__assetsService;
  if (*(v1 + v2))
  {
    OUTLINED_FUNCTION_82();
    v9 = v3;

    return v9(v4);
  }

  else
  {
    if (qword_1ED938050 != -1)
    {
      swift_once();
    }

    v6 = swift_task_alloc();
    v7 = OUTLINED_FUNCTION_55(v6);
    *v7 = v8;
    v7[1] = sub_1AC5C5DB4;

    return sub_1AC638828();
  }
}

uint64_t sub_1AC621544()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    v7 = *(v3 + 16);
    v8 = sub_1AC621648;
  }

  else
  {
    v8 = sub_1AC6216AC;
    v7 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1AC621648()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC6216AC()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1AC621714, v1, 0);
}

uint64_t sub_1AC621714()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  result = *(v1 + v2);
  if (result)
  {
    OUTLINED_FUNCTION_82();
    v6 = v4;

    return v6(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC6217B4()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor__modelProperties;
  *(v0 + 24) = OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor__modelProperties;
  if (*(v1 + v2))
  {
    OUTLINED_FUNCTION_44();
    v10 = v3;
    v5 = v4;

    return v10(v5);
  }

  else
  {
    v7 = swift_task_alloc();
    v8 = OUTLINED_FUNCTION_55(v7);
    *v8 = v9;
    v8[1] = sub_1AC621890;

    return sub_1AC62139C();
  }
}

uint64_t sub_1AC621890()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  *(v2 + 40) = v1;

  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_74();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }
}

uint64_t sub_1AC6219B0()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC6F2CF4();
}

uint64_t sub_1AC621A3C()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v5[7] = v0;

  if (v0)
  {
    v9 = v5[2];
    v10 = sub_1AC621B58;
  }

  else
  {
    v5[8] = v3;
    v10 = sub_1AC621BB4;
    v9 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC621B58()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC621BB4()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1AC621C1C, v1, 0);
}

void sub_1AC621C1C()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v1 + v2);
  *(v1 + v2) = v0[8];

  if (*(v1 + v2))
  {
    OUTLINED_FUNCTION_44();
    v7 = v4;
    v6 = v5;

    v7(v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC621CA4()
{

  sub_1AC5C720C(v0 + OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor_modelOverridePath, &qword_1EB56BB68, &qword_1AC7A8490);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1AC621D14()
{
  v0 = sub_1AC621CA4();

  return MEMORY[0x1EEE6DEF0](v0);
}

void Assets.init(locale:clientID:modelOverridePath:)()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v37 = v2;
  v38 = v3;
  v5 = v4;
  v36 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v8 = OUTLINED_FUNCTION_167(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v35 = v9 - v10;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v33 - v12;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = (v20 - v21);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v33 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v33 - v27;
  v29 = *(v18 + 16);
  v29(&v33 - v27, v5, v16);
  v33 = v15;
  sub_1AC61CB64(v1, v15);
  v29(v26, v28, v16);
  v30 = v15;
  v31 = v34;
  sub_1AC61CB64(v30, v34);
  v29(v22, v26, v16);
  sub_1AC61CB64(v31, v35);
  sub_1AC61CBD4();
  sub_1AC5C720C(v1, &qword_1EB56BB68, &qword_1AC7A8490);
  v32 = *(v18 + 8);
  v32(v5, v16);
  sub_1AC5C720C(v31, &qword_1EB56BB68, &qword_1AC7A8490);
  v32(v26, v16);
  sub_1AC5C720C(v33, &qword_1EB56BB68, &qword_1AC7A8490);
  v32(v28, v16);
  OUTLINED_FUNCTION_105();
}

void Assets.init(locale:clientID:modelOverridePath:isSpelling:)()
{
  OUTLINED_FUNCTION_104();
  v31 = v0;
  v2 = v1;
  v30[1] = v3;
  v30[2] = v4;
  v6 = v5;
  v30[0] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v9 = OUTLINED_FUNCTION_167(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v30 - v11;
  v13 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v30 - v21;
  v23 = *(v15 + 16);
  v23(v30 - v21, v6, v13);
  sub_1AC61CB64(v2, v12);
  v23(v19, v22, v13);
  v24 = OUTLINED_FUNCTION_54_1();
  sub_1AC61CB64(v24, v25);
  sub_1AC61CBD4();
  sub_1AC5C720C(v2, &qword_1EB56BB68, &qword_1AC7A8490);
  v26 = *(v15 + 8);
  v26(v6, v13);
  OUTLINED_FUNCTION_51();
  sub_1AC5C720C(v27, v28, v29);
  v26(v22, v13);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC622350(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

char *initializeBufferWithCopyOfBuffer for Assets(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    v4 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1AC79FB18();
    (*(*(v7 - 8) + 16))(v4, a2, v7);
    v8 = a3[5];
    v9 = a3[6];
    v10 = &v4[v8];
    v11 = &a2[v8];
    v12 = *(v11 + 1);
    *v10 = *v11;
    *(v10 + 1) = v12;
    v13 = sub_1AC79F7F8();

    if (__swift_getEnumTagSinglePayload(&a2[v9], 1, v13))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
      memcpy(&v4[v9], &a2[v9], *(*(v14 - 8) + 64));
    }

    else
    {
      (*(*(v13 - 8) + 16))(&v4[v9], &a2[v9], v13);
      __swift_storeEnumTagSinglePayload(&v4[v9], 0, 1, v13);
    }

    v16 = a3[8];
    v4[a3[7]] = a2[a3[7]];
    v17 = *&a2[v16];
    *&v4[v16] = v17;
    *&v4[a3[9]] = *&a2[a3[9]];
    v18 = v17;
  }

  return v4;
}

uint64_t destroy for Assets(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC79FB18();
  (*(*(v4 - 8) + 8))(a1, v4);

  v5 = *(a2 + 24);
  v6 = sub_1AC79F7F8();
  if (!__swift_getEnumTagSinglePayload(a1 + v5, 1, v6))
  {
    (*(*(v6 - 8) + 8))(a1 + v5, v6);
  }
}

uint64_t initializeWithCopy for Assets(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AC79FB18();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v9 = (a1 + v7);
  v10 = (a2 + v7);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = sub_1AC79F7F8();

  if (__swift_getEnumTagSinglePayload(a2 + v8, 1, v12))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy((a1 + v8), (a2 + v8), *(*(v13 - 8) + 64));
  }

  else
  {
    (*(*(v12 - 8) + 16))(a1 + v8, a2 + v8, v12);
    __swift_storeEnumTagSinglePayload(a1 + v8, 0, 1, v12);
  }

  v14 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v15 = *(a2 + v14);
  *(a1 + v14) = v15;
  *(a1 + a3[9]) = *(a2 + a3[9]);
  v16 = v15;

  return a1;
}

uint64_t assignWithCopy for Assets(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AC79FB18();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v8[1] = v9[1];

  v10 = a3[6];
  v11 = sub_1AC79F7F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1 + v10, 1, v11);
  v13 = __swift_getEnumTagSinglePayload(a2 + v10, 1, v11);
  if (!EnumTagSinglePayload)
  {
    v14 = *(v11 - 8);
    if (!v13)
    {
      (*(v14 + 24))(a1 + v10, a2 + v10, v11);
      goto LABEL_7;
    }

    (*(v14 + 8))(a1 + v10, v11);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy((a1 + v10), (a2 + v10), *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v11 - 8) + 16))(a1 + v10, a2 + v10, v11);
  __swift_storeEnumTagSinglePayload(a1 + v10, 0, 1, v11);
LABEL_7:
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v16 = a3[8];
  v17 = *(a2 + v16);
  v18 = *(a1 + v16);
  *(a1 + v16) = v17;
  v19 = v17;

  *(a1 + a3[9]) = *(a2 + a3[9]);

  return a1;
}

uint64_t initializeWithTake for Assets(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AC79FB18();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = sub_1AC79F7F8();
  if (__swift_getEnumTagSinglePayload(a2 + v7, 1, v8))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy((a1 + v7), (a2 + v7), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
    __swift_storeEnumTagSinglePayload(a1 + v7, 0, 1, v8);
  }

  v10 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v10) = *(a2 + v10);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t assignWithTake for Assets(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AC79FB18();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  *v8 = v11;
  v8[1] = v10;

  v12 = a3[6];
  v13 = sub_1AC79F7F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1 + v12, 1, v13);
  v15 = __swift_getEnumTagSinglePayload(a2 + v12, 1, v13);
  if (!EnumTagSinglePayload)
  {
    v16 = *(v13 - 8);
    if (!v15)
    {
      (*(v16 + 40))(a1 + v12, a2 + v12, v13);
      goto LABEL_7;
    }

    (*(v16 + 8))(a1 + v12, v13);
    goto LABEL_6;
  }

  if (v15)
  {
LABEL_6:
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy((a1 + v12), (a2 + v12), *(*(v17 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v13 - 8) + 32))(a1 + v12, a2 + v12, v13);
  __swift_storeEnumTagSinglePayload(a1 + v12, 0, 1, v13);
LABEL_7:
  v18 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v19 = *(a1 + v18);
  *(a1 + v18) = *(a2 + v18);

  *(a1 + a3[9]) = *(a2 + a3[9]);

  return a1;
}

void sub_1AC622D28(uint64_t a1)
{
  sub_1AC79FB18();
  if (v1 <= 0x3F)
  {
    sub_1AC622E1C(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void sub_1AC622E1C(uint64_t a1)
{
  if (!qword_1ED937D70)
  {
    sub_1AC79F7F8();
    v1 = sub_1AC7A0798();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED937D70);
    }
  }
}

char *initializeBufferWithCopyOfBuffer for ContextualNamedEntitySource(uint64_t *a1, uint64_t *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v7 = a1;
    v8 = a3[5];
    v9 = sub_1AC79F8E8();
    v10 = *(*(v9 - 8) + 16);

    v10(v7 + v8, a2 + v8, v9);
    v10(v7 + a3[6], a2 + a3[6], v9);
    *(v7 + a3[7]) = *(a2 + a3[7]);
  }

  return v7;
}

uint64_t destroy for ContextualNamedEntitySource(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = sub_1AC79F8E8();
  v8 = *(*(v5 - 8) + 8);
  (v8)((v5 - 8), a1 + v4, v5);
  v6 = a1 + *(a2 + 24);

  return v8(v6, v5);
}

char *initializeWithCopy for ContextualNamedEntitySource(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1AC79F8E8();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  v8(&a1[a3[6]], &a2[a3[6]], v7);
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

char *assignWithCopy for ContextualNamedEntitySource(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  v6 = a3[5];
  v7 = sub_1AC79F8E8();
  v8 = *(*(v7 - 8) + 24);
  v8(&a1[v6], &a2[v6], v7);
  v8(&a1[a3[6]], &a2[a3[6]], v7);
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

char *initializeWithTake for ContextualNamedEntitySource(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1AC79F8E8();
  v8 = *(*(v7 - 8) + 32);
  v8(&a1[v6], &a2[v6], v7);
  v8(&a1[a3[6]], &a2[a3[6]], v7);
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

char *assignWithTake for ContextualNamedEntitySource(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  v6 = a3[5];
  v7 = sub_1AC79F8E8();
  v8 = *(*(v7 - 8) + 40);
  v8(&a1[v6], &a2[v6], v7);
  v8(&a1[a3[6]], &a2[a3[6]], v7);
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

uint64_t sub_1AC623350(uint64_t a1)
{
  result = sub_1AC79F8E8();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for ContextualRankedContactSource(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *v4 = *a2;
    v4 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = a3[5];
    v9 = sub_1AC79F8E8();
    v10 = *(*(v9 - 8) + 16);

    v10(&v4[v8], &a2[v8], v9);
    v11 = a3[7];
    v4[a3[6]] = a2[a3[6]];
    *&v4[v11] = *&a2[v11];
  }

  return v4;
}

uint64_t destroy for ContextualRankedContactSource(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = sub_1AC79F8E8();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

char *initializeWithCopy for ContextualRankedContactSource(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = sub_1AC79F8E8();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  v10 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  *&a1[v10] = *&a2[v10];
  return a1;
}

char *assignWithCopy for ContextualRankedContactSource(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = a3[5];
  v7 = sub_1AC79F8E8();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  a1[a3[6]] = a2[a3[6]];
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

char *initializeWithTake for ContextualRankedContactSource(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1AC79F8E8();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  *&a1[v8] = *&a2[v8];
  return a1;
}

char *assignWithTake for ContextualRankedContactSource(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = a3[5];
  v8 = sub_1AC79F8E8();
  (*(*(v8 - 8) + 40))(&a1[v7], &a2[v7], v8);
  v9 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  *&a1[v9] = *&a2[v9];
  return a1;
}

uint64_t sub_1AC623810(uint64_t a1)
{
  result = sub_1AC79F8E8();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1AC6238E8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AC623920(uint64_t a1)
{
  sub_1AC622E1C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1AC623A44(void *__src, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC7A0EC8();
  OUTLINED_FUNCTION_117_0();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v12 = 0;
  for (i = 0; v8; v12 ^= v17)
  {
LABEL_6:
    v15 = *(*(a2 + 48) + ((i << 9) | (8 * __clz(__rbit64(v8)))));
    sub_1AC7A0E78();
    if (v15)
    {
      if (v15 == 1)
      {
        v16 = 1;
      }

      else
      {
        if (v15 != 2)
        {
          MEMORY[0x1B26E9A40](3);
          a3(v15);
          sub_1AC7A0768();
          goto LABEL_14;
        }

        v16 = 2;
      }
    }

    else
    {
      v16 = 0;
    }

    MEMORY[0x1B26E9A40](v16);
LABEL_14:
    v8 &= v8 - 1;
    v17 = sub_1AC7A0EC8();
    result = a4(v15);
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return MEMORY[0x1B26E9A40](v12);
    }

    v8 = *(a2 + 56 + 8 * v14);
    ++i;
    if (v8)
    {
      i = v14;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_1AC623C80(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_15_2(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  sub_1AC7A0EC8();
  v9 = 0;
  v10 = 0;
  v11 = v8 + 56;
  OUTLINED_FUNCTION_117_0();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  if ((v13 & v12) != 0)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v17 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v17 >= v16)
    {
      MEMORY[0x1B26E9A40](v9);
      return;
    }

    v14 = *(v11 + 8 * v17);
    ++v10;
    if (v14)
    {
      v10 = v17;
      do
      {
LABEL_6:
        v14 &= v14 - 1;
        sub_1AC7A0E78();
        MEMORY[0x1B26E9A40](0);
        v9 ^= sub_1AC7A0EC8();
      }

      while (v14);
    }
  }

  __break(1u);
}

uint64_t sub_1AC623D54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC623DC4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_80();
  v4 = OUTLINED_FUNCTION_39();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_46_2()
{
  type metadata accessor for AssetsActor(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_66_1(uint64_t a1)
{
}

void sub_1AC623F78(uint64_t a1, uint64_t *a2, id *a3)
{
  v5 = sub_1AC79FDE8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  SFLogInitIfNeeded();
  if (*a3)
  {
    v6 = *a3;
    sub_1AC79FDF8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_1AC624048(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v23 = *(a1 + 16);
    sub_1AC63129C(0, v1, 0);
    v5 = sub_1AC6C2CA0();
    v6 = v23;
    v7 = 0;
    v8 = a1 + 56;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v9 = v5 >> 6;
        if ((*(v8 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_25;
        }

        v10 = *(*(a1 + 48) + v5);
        v12 = *(v24 + 16);
        v11 = *(v24 + 24);
        if (v12 >= v11 >> 1)
        {
          v22 = v3;
          v21 = v4;
          sub_1AC63129C(v11 > 1, v12 + 1, 1);
          v4 = v21;
          v3 = v22;
          v8 = a1 + 56;
          v6 = v23;
        }

        *(v24 + 16) = v12 + 1;
        *(v24 + v12 + 32) = v10 + 3;
        if (v4)
        {
          goto LABEL_29;
        }

        v13 = 1 << *(a1 + 32);
        if (v5 >= v13)
        {
          goto LABEL_26;
        }

        v14 = *(v8 + 8 * v9);
        if ((v14 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_28;
        }

        v15 = v14 & (-2 << (v5 & 0x3F));
        if (v15)
        {
          v13 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = v9 << 6;
          v17 = v9 + 1;
          v18 = (a1 + 64 + 8 * v9);
          while (v17 < (v13 + 63) >> 6)
          {
            v20 = *v18++;
            v19 = v20;
            v16 += 64;
            ++v17;
            if (v20)
            {
              sub_1AC637E98(v5, v3, 0);
              v8 = a1 + 56;
              v6 = v23;
              v13 = __clz(__rbit64(v19)) + v16;
              goto LABEL_19;
            }
          }

          sub_1AC637E98(v5, v3, 0);
          v8 = a1 + 56;
          v6 = v23;
        }

LABEL_19:
        if (++v7 == v6)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v13;
        if (v13 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1AC62428C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v23 = *(a1 + 16);
    sub_1AC631258(0, v1, 0);
    v5 = sub_1AC6C2CA0();
    v6 = v23;
    v7 = 0;
    v8 = a1 + 56;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v9 = v5 >> 6;
        if ((*(v8 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_25;
        }

        v10 = *(*(a1 + 48) + v5);
        v12 = *(v24 + 16);
        v11 = *(v24 + 24);
        if (v12 >= v11 >> 1)
        {
          v22 = v3;
          v21 = v4;
          sub_1AC631258(v11 > 1, v12 + 1, 1);
          v4 = v21;
          v3 = v22;
          v8 = a1 + 56;
          v6 = v23;
        }

        *(v24 + 16) = v12 + 1;
        *(v24 + v12 + 32) = v10;
        if (v4)
        {
          goto LABEL_29;
        }

        v13 = 1 << *(a1 + 32);
        if (v5 >= v13)
        {
          goto LABEL_26;
        }

        v14 = *(v8 + 8 * v9);
        if ((v14 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_28;
        }

        v15 = v14 & (-2 << (v5 & 0x3F));
        if (v15)
        {
          v13 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = v9 << 6;
          v17 = v9 + 1;
          v18 = (a1 + 64 + 8 * v9);
          while (v17 < (v13 + 63) >> 6)
          {
            v20 = *v18++;
            v19 = v20;
            v16 += 64;
            ++v17;
            if (v20)
            {
              sub_1AC637E98(v5, v3, 0);
              v8 = a1 + 56;
              v6 = v23;
              v13 = __clz(__rbit64(v19)) + v16;
              goto LABEL_19;
            }
          }

          sub_1AC637E98(v5, v3, 0);
          v8 = a1 + 56;
          v6 = v23;
        }

LABEL_19:
        if (++v7 == v6)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v13;
        if (v13 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

BOOL sub_1AC6244CC()
{
  sub_1AC79FBC8();
  sub_1AC633400(&qword_1EB56C4F8, MEMORY[0x1E6969C28]);
  sub_1AC7A0498();
  sub_1AC7A04E8();
  return v2 == v1;
}

void DictationTranscriber.__allocating_init(locale:preset:)()
{
  OUTLINED_FUNCTION_104();
  v9 = v0;
  v1 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  v2 = OUTLINED_FUNCTION_167(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  v3 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v7 = OUTLINED_FUNCTION_142();
  v8(v7);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_40_3();
  sub_1AC633280();
  swift_allocObject();

  OUTLINED_FUNCTION_142();
  DictationTranscriber.init(locale:contentHints:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)();
  sub_1AC6332D8();
  (*(v5 + 8))(v9, v3);
  OUTLINED_FUNCTION_105();
}

void DictationTranscriber.__allocating_init(locale:contentHints:transcriptionOptions:reportingOptions:attributeOptions:)()
{
  OUTLINED_FUNCTION_104();
  v1 = OUTLINED_FUNCTION_25();
  v2 = type metadata accessor for DictationTranscriber.ModelOptions(v1);
  v3 = (v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6();
  v6 = (v5 - v4);
  v7 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  (*(v9 + 16))(v12 - v11, v0, v7);
  *v6 = 0;
  v6[1] = 0;
  sub_1AC79F7F8();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = (v6 + v3[8]);
  *v17 = 0;
  v17[1] = 0;
  *(v6 + v3[9]) = MEMORY[0x1E69E7CC0];
  *(v6 + v3[10]) = 0;
  *(v6 + v3[11]) = 0;
  *(v6 + v3[12]) = 0;
  *(v6 + v3[13]) = 0;
  *(v6 + v3[14]) = &unk_1F212ED78;
  swift_allocObject();
  DictationTranscriber.init(locale:contentHints:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)();
  v18 = OUTLINED_FUNCTION_118_1();
  v19(v18);
  OUTLINED_FUNCTION_105();
}

uint64_t DictationTranscriber.ModelOptions.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  *a1 = 0;
  a1[1] = 0;
  sub_1AC79F7F8();
  OUTLINED_FUNCTION_65_0();
  result = __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v8 = (a1 + v2[6]);
  *v8 = 0;
  v8[1] = 0;
  *(a1 + v2[7]) = MEMORY[0x1E69E7CC0];
  *(a1 + v2[8]) = 0;
  *(a1 + v2[9]) = 0;
  *(a1 + v2[10]) = 0;
  *(a1 + v2[11]) = 0;
  *(a1 + v2[12]) = &unk_1F212EDA0;
  return result;
}

uint64_t DictationTranscriber.__allocating_init(locale:contentHints:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)()
{
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_16_2();
  DictationTranscriber.init(locale:contentHints:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)();
  return v0;
}

void DictationTranscriber.init(locale:contentHints:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)()
{
  OUTLINED_FUNCTION_104();
  v189 = v1;
  v194 = v2;
  v192 = v3;
  v5 = v4;
  v7 = v6;
  v185 = v8;
  v186 = v0;
  v169 = *v0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
  OUTLINED_FUNCTION_167(v9);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v10);
  v182 = &v169 - v11;
  OUTLINED_FUNCTION_70_0();
  v184 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v183 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  v181 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v17 = OUTLINED_FUNCTION_167(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v193 = v18 - v19;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_91();
  v188 = v21;
  v22 = OUTLINED_FUNCTION_70_0();
  v190 = type metadata accessor for TranscriberCommon.ModelOptions(v22);
  OUTLINED_FUNCTION_80();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_6();
  v191 = v25 - v24;
  v26 = OUTLINED_FUNCTION_70_0();
  v187 = type metadata accessor for DictationTranscriber.ModelOptions(v26);
  v27 = *(v5 + *(v187 + 48));
  v28 = *(v27 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  v195 = v5;
  v196 = v7;
  v171 = v27;
  if (v28)
  {
    v198[0] = MEMORY[0x1E69E7CC0];
    sub_1AC6310CC(0, v28, 0);
    v30 = v198[0];
    v31 = (v27 + 32);
    OUTLINED_FUNCTION_114();
    OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_112();
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_52_1();
    OUTLINED_FUNCTION_110_1();
    v41 = 0x746F687354;
    do
    {
      v42 = *v31++;
      v43 = 0xE90000000000006ELL;
      v44 = 0x6F69746174636944;
      switch(v42)
      {
        case 1:
          v44 = v36;
          v43 = v35;
          break;
        case 2:
          v44 = v37;
          v43 = 0xE900000000000068;
          break;
        case 3:
          v44 = 0xD000000000000011;
          v43 = v34;
          break;
        case 4:
          v43 = 0xE90000000000006CLL;
          v44 = v38;
          break;
        case 5:
          v43 = 0xEA0000000000676ELL;
          v44 = v39;
          break;
        case 6:
          v44 = 0x6F69746174636944;
          v43 = v40;
          break;
        case 7:
          v43 = 0xE700000000000000;
          v44 = v32;
          break;
        case 8:
          v43 = 0xE800000000000000;
          v44 = v33;
          break;
        case 9:
          v43 = 0xE500000000000000;
          v44 = v41;
          break;
        default:
          break;
      }

      v198[0] = v30;
      v45 = *(v30 + 16);
      if (v45 >= *(v30 + 24) >> 1)
      {
        OUTLINED_FUNCTION_64_3();
        v180 = v47;
        v49 = v48;
        sub_1AC6310CC(v50, v51, v52);
        OUTLINED_FUNCTION_110_1();
        OUTLINED_FUNCTION_52_1();
        OUTLINED_FUNCTION_111();
        OUTLINED_FUNCTION_112();
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_114();
        v35 = v49;
        v34 = v180;
        v30 = v198[0];
      }

      *(v30 + 16) = v45 + 1;
      v46 = v30 + 16 * v45;
      *(v46 + 32) = v44;
      *(v46 + 40) = v43;
      --v28;
    }

    while (v28);
    v5 = v195;
    v7 = v196;
    v29 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  v198[0] = v29;
  v53 = v7 + 56;
  OUTLINED_FUNCTION_117_0();
  v56 = v55 & v54;
  v58 = (v57 + 63) >> 6;

  v59 = 0;
  while (v56)
  {
LABEL_24:
    v61 = __clz(__rbit64(v56));
    v56 &= v56 - 1;
    v62 = (v59 << 9) | (8 * v61);
    v28 = *(*(v7 + 48) + v62);
    if (v28 >= 3)
    {
      v63 = sub_1AC61C264(*(*(v7 + 48) + v62));
      MEMORY[0x1B26E8CF0](v63);
      if (*((v198[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v198[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AC7A0178();
      }

      sub_1AC7A0198();
      v29 = v198[0];
      v7 = v196;
    }
  }

  while (1)
  {
    v60 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      __break(1u);
      goto LABEL_101;
    }

    if (v60 >= v58)
    {
      break;
    }

    v56 = *(v53 + 8 * v60);
    ++v59;
    if (v56)
    {
      v59 = v60;
      goto LABEL_24;
    }
  }

  if (off_1ED937D60 != -1)
  {
    goto LABEL_102;
  }

LABEL_29:
  v64 = sub_1AC79FDE8();
  v65 = __swift_project_value_buffer(v64, qword_1ED9386C8);
  v66 = sub_1AC61C24C();
  v67 = v187;
  if (v66 <= 1)
  {
    v176 = v29;
    sub_1AC79F7F8();
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
    v72 = *(v7 + 16);
    v170 = v65;
    if (!v72 || (sub_1AC7A0E78(), MEMORY[0x1B26E9A40](1), sub_1AC7A0EC8(), OUTLINED_FUNCTION_51_2(), (v73 & 1) == 0))
    {
LABEL_40:
      v180 = 0;
      goto LABEL_41;
    }

    while (1)
    {
      v74 = *(*(v7 + 48) + 8 * v28);
      if (v74)
      {
        v75 = v74 == 2;
      }

      else
      {
        v75 = 1;
      }

      if (v75)
      {
        sub_1AC623E3C(v74);
      }

      else if (v74 == 1)
      {
        v180 = 1;
        sub_1AC623E3C(1);
LABEL_41:
        v77 = *(v5 + 8);
        v178 = *v5;
        sub_1AC5C6E6C();
        v78 = *(v5 + v67[7]);
        v79 = *(v5 + v67[9]);
        v80 = (v5 + v67[6]);
        v81 = v80[1];
        v174 = *v80;
        v82 = *(v7 + 16);
        v179 = v79;
        v177 = v77;
        v175 = v78;
        v173 = v81;
        if (!v82)
        {

          HIDWORD(v172) = 0;
LABEL_51:
          v86 = v195;
          goto LABEL_52;
        }

        sub_1AC7A0E78();
        MEMORY[0x1B26E9A40](2);
        v83 = sub_1AC7A0EC8() & ~(-1 << *(v7 + 32));
        v84 = *(v53 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8));

        if (((v84 >> v83) & 1) == 0)
        {
          HIDWORD(v172) = 0;
          goto LABEL_51;
        }

        v86 = v195;
        v85 = v196;
        while (2)
        {
          v87 = *(*(v85 + 48) + 8 * v83);
          if (v87 < 2)
          {
            sub_1AC623E3C(v87);
            goto LABEL_47;
          }

          if (v87 != 2)
          {
LABEL_47:
            OUTLINED_FUNCTION_17_2();
            if ((v88 & 1) == 0)
            {
              HIDWORD(v172) = 0;
              goto LABEL_52;
            }

            continue;
          }

          break;
        }

        sub_1AC623E3C(2);
        HIDWORD(v172) = 1;
LABEL_52:
        v89 = *(v86 + v67[8]);
        v90 = *(v86 + v67[10]);
        v91 = *(v86 + v67[11]);
        v92 = v176;
        if (sub_1AC61C24C())
        {
          sub_1AC61C25C();
          if ((v92 & 0xC000000000000001) != 0)
          {

            v94 = MEMORY[0x1B26E95B0](0, v92);
          }

          else
          {
            v93 = *(v92 + 32);

            v94 = v93;
          }

          v95 = v94;
        }

        else
        {

          v95 = 0;
        }

        v29 = v191;
        sub_1AC637E08();
        v96 = v190;
        *(v29 + v190[5]) = v180;
        v97 = (v29 + v96[6]);
        v98 = v177;
        *v97 = v178;
        v97[1] = v98;
        sub_1AC637E08();
        *(v29 + v96[9]) = v175;
        v99 = (v29 + v96[8]);
        v100 = v173;
        *v99 = v174;
        v99[1] = v100;
        *(v29 + v96[10]) = BYTE4(v172);
        *(v29 + v96[11]) = v89;
        *(v29 + v96[12]) = v179;
        *(v29 + v96[15]) = v90;
        *(v29 + v96[13]) = v91;
        *(v29 + v96[14]) = v95;
        v101 = v196;
        if (!*(v196 + 16))
        {
          v106 = 0;
          v102 = v194;
          goto LABEL_68;
        }

        sub_1AC7A0E78();
        MEMORY[0x1B26E9A40](0);
        sub_1AC7A0EC8();
        OUTLINED_FUNCTION_51_2();
        v102 = v194;
        if ((v103 & 1) == 0)
        {
LABEL_63:
          v106 = 0;
          goto LABEL_68;
        }

        while (2)
        {
          v104 = *(*(v101 + 48) + 8 * &qword_1AC7A8490);
          if ((v104 - 1) < 2)
          {
            sub_1AC623E3C(v104);
            goto LABEL_62;
          }

          if (v104)
          {
LABEL_62:
            OUTLINED_FUNCTION_17_2();
            if ((v105 & 1) == 0)
            {
              goto LABEL_63;
            }

            continue;
          }

          break;
        }

        sub_1AC623E3C(0);
        v106 = 1;
LABEL_68:
        v107 = sub_1AC625A64(3u, v102);
        v108 = sub_1AC625A64(2u, v102);
        v109 = v108;
        if (v107)
        {
          v110 = 1;
          if (v106 & v108)
          {
            v111 = 0;
            v112 = 0;
            goto LABEL_77;
          }

LABEL_72:
          v113 = sub_1AC79FDC8();
          v114 = sub_1AC7A05D8();
          if (os_log_type_enabled(v113, v114))
          {
            v115 = swift_slowAlloc();
            *v115 = 67110144;
            *(v115 + 4) = v107 & 1;
            *(v115 + 8) = 1024;
            *(v115 + 10) = v106;
            *(v115 + 14) = 1024;
            *(v115 + 16) = v109 & 1;
            *(v115 + 20) = 1024;
            *(v115 + 22) = v110 & 1;
            *(v115 + 26) = 1024;
            *(v115 + 28) = 0;
            _os_log_impl(&dword_1AC5BC000, v113, v114, "DictationTranscriber: Remapped selected (repSing %{BOOL}d, expShort %{BOOL}d, repFreq %{BOOL}d) to actual (single %{BOOL}d, longer %{BOOL}d)", v115, 0x20u);
            v116 = v115;
            v102 = v194;
            MEMORY[0x1B26EAB10](v116, -1, -1);
          }

          v111 = 0;
          if (v110)
          {
            v110 = 1;
            v112 = 0;
            goto LABEL_77;
          }
        }

        else
        {
          LOBYTE(v110) = v108 ^ 1;
          LOBYTE(v111) = v108 ^ 1;
          if (v106)
          {
            goto LABEL_72;
          }
        }

        v112 = v111;
        v111 = sub_1AC625A64(4u, v102);
        v110 = 0;
LABEL_77:
        v7 = 0;
        sub_1AC624048(v192);
        LODWORD(v188) = v111;
        LODWORD(v193) = v110;
        v198[0] = sub_1AC6090E4(v117);
        sub_1AC6102B0(v197, 1, v118, v119, v120, v121, v122, v123, v169, v170);
        if (v112)
        {
          sub_1AC6102B0(v197, 2, v124, v125, v126, v127, v128, v129, v169, v170);
        }

        v130 = v102 + 56;
        OUTLINED_FUNCTION_117_0();
        v5 = v132 & v131;
        OUTLINED_FUNCTION_108_1();

        v28 = 0;
        v133 = MEMORY[0x1E69E7CC0];
        while (v5)
        {
LABEL_85:
          v135 = __clz(__rbit64(v5));
          v5 &= v5 - 1;
          v136 = *(*(v102 + 48) + (v135 | (v28 << 6)));
          switch(v136)
          {
            case 2:
            case 3:
            case 4:
              continue;
            case 5:
              v136 = 2;
              goto LABEL_90;
            case 6:
              v136 = 3;
              goto LABEL_90;
            case 7:
              v136 = 4;
              goto LABEL_90;
            case 8:
              v136 = 5;
              goto LABEL_90;
            default:
LABEL_90:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v137 = OUTLINED_FUNCTION_31_2();
                sub_1AC60DC84(v137, v138, v139, v140);
                v133 = v141;
              }

              v29 = *(v133 + 16);
              if (v29 >= *(v133 + 24) >> 1)
              {
                OUTLINED_FUNCTION_33_2();
                sub_1AC60DC84(v142, v143, v144, v133);
                v133 = v145;
              }

              *(v133 + 16) = v29 + 1;
              *(v133 + v29 + 32) = v136;
              v102 = v194;
              break;
          }
        }

        while (1)
        {
          v134 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v134 >= v53)
          {

            v146 = sub_1AC6091C8(v133);
            sub_1AC62428C(v189);
            v148 = sub_1AC6090B4(v147);
            v149 = [objc_opt_self() standardUserDefaults];
            v150 = sub_1AC79FF58();
            v151 = [v149 BOOLForKey_];

            v180 = v146;
            v179 = v148;
            LODWORD(v187) = (v151 & 1) == 0 && *(v171 + 16) && (*(v171 + 32) & 0xFC) == 4;
            v152 = v186;
            v153 = v183;
            v186 = *(v183 + 16);
            v154 = v185;
            v155 = v184;
            (v186)(v181, v185, v184);
            v156 = v182;
            sub_1AC633280();
            __swift_storeEnumTagSinglePayload(v156, 0, 1, v190);
            v157 = v198[0];
            type metadata accessor for TranscriberCommon(0);
            swift_allocObject();
            LOBYTE(v168) = v187;
            v167 = v179;
            v158 = OUTLINED_FUNCTION_39();
            sub_1AC74B560(v158, v159, v30, 3, v193, v160, v157, v180, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
            v162 = v161;
            (*(v153 + 8))(v154, v155);
            sub_1AC6332D8();
            *(v152 + OBJC_IVAR____TtC6Speech20DictationTranscriber_common) = v162;
            (v186)(v152 + OBJC_IVAR____TtC6Speech20DictationTranscriber_locale, v162 + OBJC_IVAR____TtC6Speech17TranscriberCommon_locale, v155);
            *(v152 + OBJC_IVAR____TtC6Speech20DictationTranscriber_contentHints) = v196;
            OUTLINED_FUNCTION_9_3();
            sub_1AC637C7C();
            *(v152 + OBJC_IVAR____TtC6Speech20DictationTranscriber_transcriptionOptions) = v192;
            *(v152 + OBJC_IVAR____TtC6Speech20DictationTranscriber_reportingOptions) = v194;
            *(v152 + OBJC_IVAR____TtC6Speech20DictationTranscriber_resultAttributeOptions) = v189;
            OUTLINED_FUNCTION_105();
            return;
          }

          v5 = *(v130 + 8 * v134);
          ++v28;
          if (v5)
          {
            v28 = v134;
            goto LABEL_85;
          }
        }

LABEL_101:
        __break(1u);
LABEL_102:
        swift_once();
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_17_2();
      if ((v76 & 1) == 0)
      {
        goto LABEL_40;
      }
    }
  }

  v163 = sub_1AC79FDC8();
  v164 = sub_1AC7A05F8();
  if (os_log_type_enabled(v163, v164))
  {
    v165 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    v198[0] = v166;
    *v165 = 136315138;
    *(v165 + 4) = sub_1AC5CFE74(0xD00000000000003CLL, 0x80000001AC7B5890, v198);
    _os_log_impl(&dword_1AC5BC000, v163, v164, "Failed precondition: %s", v165, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v166);
    MEMORY[0x1B26EAB10](v166, -1, -1);
    MEMORY[0x1B26EAB10](v165, -1, -1);
  }

  __break(1u);
  swift_deallocPartialClassInstance();
  __break(1u);
}

unint64_t sub_1AC625934(char a1)
{
  result = 0x6F69746174636944;
  switch(a1)
  {
    case 1:
      result = 0x7463694469726953;
      break;
    case 2:
      result = 0x6372616553626557;
      break;
    case 3:
      result = OUTLINED_FUNCTION_53_2();
      break;
    case 4:
      result = 0x69614D6563696F56;
      break;
    case 5:
      result = 0x696E6F6974706143;
      break;
    case 7:
      result = OUTLINED_FUNCTION_52_1();
      break;
    case 8:
      result = 0x676E696C6C657053;
      break;
    case 9:
      result = 0x746F687354;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AC625A64(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    sub_1AC7A0E78();
    MEMORY[0x1B26E9A40](v4);
    v5 = sub_1AC7A0EC8();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + v7) != v4);
  }

  return v2;
}

uint64_t sub_1AC625B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AC6C2CA0();
  if (v6)
  {
    goto LABEL_10;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_79_1();
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    sub_1AC6377CC(v7, v8, a1, a2);
    v10 = 0;
  }

  v11 = sub_1AC79FB18();

  return __swift_storeEnumTagSinglePayload(a2, v10, 1, v11);
}

uint64_t sub_1AC625BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for TranscriptionSegment(0);
  if (v3)
  {
    sub_1AC633280();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v4);
}

uint64_t sub_1AC625C74@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

uint64_t sub_1AC625D20(uint64_t a1)
{
  result = sub_1AC6C2CA0();
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_79_1();
  if (v7)
  {
    return 0;
  }

  else
  {
    return sub_1AC637754(v5, v6, 0, a1);
  }
}

uint64_t sub_1AC625D94(uint64_t a1)
{
  result = sub_1AC637A8C(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_79_1();
  if (v7)
  {
    return 0;
  }

  else
  {
    return sub_1AC637ACC(v5, v6, 0, a1);
  }
}

void *sub_1AC625DF0(uint64_t a1)
{
  result = sub_1AC76BEFC(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_1AC637B1C(&v5, result, v3, 0, a1);
  }
}

uint64_t sub_1AC625E90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  if (v5)
  {
    OUTLINED_FUNCTION_89_0();
    sub_1AC5C6E6C();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a4, v7, 1, v6);
}

void sub_1AC625F4C()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v2 = sub_1AC79F558();
  OUTLINED_FUNCTION_40();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23[-v10];
  sub_1AC79F568();
  sub_1AC633400(&qword_1EB56C480, MEMORY[0x1E69687C8]);
  OUTLINED_FUNCTION_123_1();
  sub_1AC7A0498();
  OUTLINED_FUNCTION_123_1();
  sub_1AC7A04E8();
  sub_1AC633400(&qword_1EB56C488, MEMORY[0x1E69687B0]);
  v12 = sub_1AC79FED8();
  v13 = *(v4 + 8);
  v13(v8, v2);
  if (v12)
  {
    v13(v11, v2);
    sub_1AC79F538();
    OUTLINED_FUNCTION_65_0();
  }

  else
  {
    v18 = sub_1AC7A0518();
    v20 = v19;
    v21 = sub_1AC79F538();
    OUTLINED_FUNCTION_80();
    (*(v22 + 16))(v1, v20, v21);
    v18(v23, 0);
    v13(v11, v2);
    v14 = v1;
    v15 = 0;
    v16 = 1;
    v17 = v21;
  }

  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC626198()
{
  v0 = type metadata accessor for DictationTranscriber.Preset(0);
  __swift_allocate_value_buffer(v0, qword_1EB56C078);
  v1 = OUTLINED_FUNCTION_39();
  v3 = __swift_project_value_buffer(v1, v2);
  sub_1AC724260();
  *v3 = v4;
  result = DictationTranscriber.ModelOptions.init()((v3 + *(v0 + 32)));
  v6 = MEMORY[0x1E69E7CD0];
  v3[1] = MEMORY[0x1E69E7CD0];
  v3[2] = v6;
  v3[3] = v6;
  return result;
}

uint64_t DictationTranscriber.Preset.init(contentHints:transcriptionOptions:reportingOptions:attributeOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  OUTLINED_FUNCTION_28_1();
  v10 = (a5 + v9);
  v11 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  *v10 = 0;
  v10[1] = 0;
  sub_1AC79F7F8();
  OUTLINED_FUNCTION_65_0();
  result = __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v17 = (v10 + v11[6]);
  *v17 = 0;
  v17[1] = 0;
  *(v10 + v11[7]) = MEMORY[0x1E69E7CC0];
  *(v10 + v11[8]) = 0;
  *(v10 + v11[9]) = 0;
  *(v10 + v11[10]) = 0;
  *(v10 + v11[11]) = 0;
  *(v10 + v11[12]) = &unk_1F212EDA0;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1AC6262FC()
{
  v0 = type metadata accessor for DictationTranscriber.Preset(0);
  __swift_allocate_value_buffer(v0, qword_1EB56C090);
  v1 = __swift_project_value_buffer(v0, qword_1EB56C090);
  sub_1AC724260();
  v3 = v2;
  sub_1AC72424C(&unk_1F212EE18);
  v5 = v4;
  *v1 = v3;
  result = DictationTranscriber.ModelOptions.init()((v1 + *(v0 + 32)));
  v7 = MEMORY[0x1E69E7CD0];
  v1[1] = v5;
  v1[2] = v7;
  v1[3] = v7;
  return result;
}

uint64_t sub_1AC6263B0()
{
  v0 = type metadata accessor for DictationTranscriber.Preset(0);
  __swift_allocate_value_buffer(v0, qword_1EB56C0A8);
  v1 = __swift_project_value_buffer(v0, qword_1EB56C0A8);
  sub_1AC724260();
  v3 = v2;
  sub_1AC72424C(&unk_1F212EE68);
  v5 = v4;
  sub_1AC724238(&unk_1F212EE90);
  v7 = v6;
  *v1 = v3;
  result = DictationTranscriber.ModelOptions.init()((v1 + *(v0 + 32)));
  v1[1] = v5;
  v1[2] = v7;
  v1[3] = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t sub_1AC62647C()
{
  v0 = type metadata accessor for DictationTranscriber.Preset(0);
  __swift_allocate_value_buffer(v0, qword_1EB56C0C0);
  v1 = __swift_project_value_buffer(v0, qword_1EB56C0C0);
  sub_1AC72424C(&unk_1F212EEB8);
  v3 = v2;
  v4 = MEMORY[0x1E69E7CD0];
  *v1 = MEMORY[0x1E69E7CD0];
  result = DictationTranscriber.ModelOptions.init()((v1 + *(v0 + 32)));
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = v4;
  return result;
}

uint64_t sub_1AC626520()
{
  v0 = type metadata accessor for DictationTranscriber.Preset(0);
  __swift_allocate_value_buffer(v0, qword_1EB56C0D8);
  v1 = OUTLINED_FUNCTION_39();
  v3 = __swift_project_value_buffer(v1, v2);
  sub_1AC72424C(&unk_1F212EEE0);
  v5 = v4;
  sub_1AC724238(&unk_1F212EF08);
  v7 = v6;
  v8 = MEMORY[0x1E69E7CD0];
  *v3 = MEMORY[0x1E69E7CD0];
  result = DictationTranscriber.ModelOptions.init()((v3 + *(v0 + 32)));
  v3[1] = v5;
  v3[2] = v7;
  v3[3] = v8;
  return result;
}

uint64_t sub_1AC6265D8()
{
  v0 = type metadata accessor for DictationTranscriber.Preset(0);
  __swift_allocate_value_buffer(v0, qword_1EB56C0F0);
  v1 = __swift_project_value_buffer(v0, qword_1EB56C0F0);
  sub_1AC72424C(&unk_1F212EF30);
  v3 = v2;
  sub_1AC724224(&unk_1F212EF58);
  v5 = v4;
  v6 = MEMORY[0x1E69E7CD0];
  *v1 = MEMORY[0x1E69E7CD0];
  result = DictationTranscriber.ModelOptions.init()((v1 + *(v0 + 32)));
  v1[1] = v3;
  v1[2] = v6;
  v1[3] = v5;
  return result;
}

uint64_t DictationTranscriber.Preset.init(contentHints:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_9_3();
  result = sub_1AC637C7C();
  a6[1] = a3;
  a6[2] = a4;
  a6[3] = a5;
  return result;
}

uint64_t sub_1AC626800(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for DictationTranscriber.Preset(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = OUTLINED_FUNCTION_74_0();
  v8 = __swift_project_value_buffer(v6, v7);
  v9 = (v8 + *(v5 + 32));
  v10 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  *v9 = 0;
  v9[1] = 0;
  sub_1AC79F7F8();
  OUTLINED_FUNCTION_65_0();
  result = __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v16 = (v9 + v10[6]);
  *v16 = 0;
  v16[1] = 0;
  *(v9 + v10[7]) = MEMORY[0x1E69E7CC0];
  *(v9 + v10[8]) = 0;
  *(v9 + v10[9]) = 0;
  *(v9 + v10[10]) = 0;
  *(v9 + v10[11]) = 0;
  *(v9 + v10[12]) = a3;
  v17 = MEMORY[0x1E69E7CD0];
  *v8 = MEMORY[0x1E69E7CD0];
  v8[1] = v17;
  v8[2] = v17;
  v8[3] = v17;
  return result;
}

uint64_t sub_1AC626A44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v11 = (v10 - v9);
  v12 = type metadata accessor for DictationTranscriber.Preset(0);
  __swift_allocate_value_buffer(v12, a2);
  v13 = OUTLINED_FUNCTION_117();
  v15 = __swift_project_value_buffer(v13, v14);
  *v11 = 0;
  v11[1] = 0;
  sub_1AC79F7F8();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = (v11 + v8[8]);
  *v20 = 0;
  v20[1] = 0;
  *(v11 + v8[9]) = MEMORY[0x1E69E7CC0];
  *(v11 + v8[10]) = 0;
  *(v11 + v8[11]) = 0;
  *(v11 + v8[12]) = 0;
  *(v11 + v8[13]) = 0;
  *(v11 + v8[14]) = a3;
  sub_1AC724238(a4);
  v22 = v21;
  v23 = MEMORY[0x1E69E7CD0];
  *v15 = MEMORY[0x1E69E7CD0];
  OUTLINED_FUNCTION_9_3();
  result = sub_1AC637C7C();
  v15[1] = v23;
  v15[2] = v22;
  v15[3] = v23;
  return result;
}

void sub_1AC626EF0(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for DictationTranscriber.Preset(0);
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    OUTLINED_FUNCTION_124_0();
    swift_once();
  }

  __swift_project_value_buffer(v7, a4);
  OUTLINED_FUNCTION_41_2();
  sub_1AC633280();
  sub_1AC6102CC(&v15 + 7, 6, v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1AC626FBC(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for DictationTranscriber.Preset(0);
  __swift_project_value_buffer(v5, a2);
  OUTLINED_FUNCTION_41_2();
  return sub_1AC633280();
}

uint64_t DictationTranscriber.Preset.contentHints.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t DictationTranscriber.Preset.transcriptionOptions.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t DictationTranscriber.Preset.reportingOptions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t DictationTranscriber.Preset.attributeOptions.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t DictationTranscriber.Preset.modelOptions.getter()
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_40_3();
  return sub_1AC633280();
}

uint64_t DictationTranscriber.Preset.modelOptions.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = v1 + *(type metadata accessor for DictationTranscriber.Preset(v2) + 32);

  return sub_1AC63332C(v0, v3);
}

uint64_t DictationTranscriber.Preset.modelOptions.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  type metadata accessor for DictationTranscriber.Preset(v0);
  return OUTLINED_FUNCTION_58();
}

void static DictationTranscriber.Preset.== infix(_:_:)()
{
  OUTLINED_FUNCTION_50_0();
  sub_1AC61EB38(*v0, *v1);
  if (v2 & 1) != 0 && (sub_1AC623E28() & 1) != 0 && (sub_1AC623E28() & 1) != 0 && (sub_1AC623E2C())
  {
    OUTLINED_FUNCTION_28_1();

    static DictationTranscriber.ModelOptions.== infix(_:_:)();
  }
}

void static DictationTranscriber.ModelOptions.== infix(_:_:)()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_78_0();
  v3 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_40();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  OUTLINED_FUNCTION_167(v10);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C320, &qword_1AC7A87A0);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_49_1();
  v16 = v1[1];
  v17 = v0[1];
  if (v16)
  {
    if (!v17)
    {
      goto LABEL_19;
    }

    v18 = *v1 == *v0 && v16 == v17;
    if (!v18 && (sub_1AC7A0D38() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v17)
  {
    goto LABEL_19;
  }

  v46 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  v47 = v1;
  v19 = *(v14 + 48);
  sub_1AC5C6E6C();
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_96(v2, 1, v3);
  if (!v18)
  {
    OUTLINED_FUNCTION_142();
    sub_1AC5C6E6C();
    OUTLINED_FUNCTION_96(v2 + v19, 1, v3);
    if (!v20)
    {
      (*(v5 + 32))(v9, v2 + v19, v3);
      OUTLINED_FUNCTION_39_2();
      sub_1AC633400(v21, v22);
      v23 = sub_1AC79FED8();
      v24 = *(v5 + 8);
      v25 = OUTLINED_FUNCTION_98();
      v24(v25);
      (v24)(v13, v3);
      sub_1AC5C720C(v2, &qword_1EB56BB68, &qword_1AC7A8490);
      if ((v23 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    (*(v5 + 8))(v13, v3);
LABEL_18:
    sub_1AC5C720C(v2, &qword_1EB56C320, &qword_1AC7A87A0);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_96(v2 + v19, 1, v3);
  if (!v18)
  {
    goto LABEL_18;
  }

  sub_1AC5C720C(v2, &qword_1EB56BB68, &qword_1AC7A8490);
LABEL_21:
  v27 = v46;
  v26 = v47;
  v28 = *(v46 + 24);
  v29 = (v47 + v28);
  v30 = *(v47 + v28 + 8);
  v31 = (v0 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_19;
    }

    v33 = *v29 == *v31 && v30 == v32;
    if (!v33 && (sub_1AC7A0D38() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v32)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_10_2();
  sub_1AC629144();
  if ((v34 & 1) != 0 && *(v26 + v27[8]) == *(v0 + v27[8]))
  {
    v35 = v27[9];
    v36 = *(v0 + v35);
    if (*(v26 + v35))
    {
      if (!v36)
      {
        goto LABEL_19;
      }

      v37 = OUTLINED_FUNCTION_98();
      sub_1AC630858(v37, v38);
      v40 = v39;

      if ((v40 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v36)
    {
      goto LABEL_19;
    }

    v41 = v27[10];
    v42 = *(v0 + v41);
    if (*(v26 + v41))
    {
      if (!v42)
      {
        goto LABEL_19;
      }

      v43 = OUTLINED_FUNCTION_98();
      v45 = sub_1AC629308(v43, v44);

      if ((v45 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v42)
    {
      goto LABEL_19;
    }

    if (*(v26 + v27[11]) == *(v0 + v27[11]))
    {
      sub_1AC6294D8();
    }
  }

LABEL_19:
  OUTLINED_FUNCTION_105();
}

uint64_t DictationTranscriber.Preset.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  sub_1AC623A18(v10, *v0);
  sub_1AC623E34();
  sub_1AC623E34();
  sub_1AC623E34();
  OUTLINED_FUNCTION_28_1();
  DictationTranscriber.ModelOptions.hash(into:)(v10, v1, v2, v3, v4, v5, v6, v7, v9, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10]);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6277BC(uint64_t a1)
{
  sub_1AC7A0E78();
  sub_1AC623A18(v11, *v1);
  sub_1AC623E34();
  sub_1AC623E34();
  sub_1AC623E34();
  DictationTranscriber.ModelOptions.hash(into:)(v11, v2, v3, v4, v5, v6, v7, v8, v10, v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10]);
  return sub_1AC7A0EC8();
}

BOOL sub_1AC62785C(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 0:
      return !a2;
    case 1:
      return a2 == 1;
    case 2:
      return a2 == 2;
  }

  if (a2 < 3)
  {
    return 0;
  }

  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  return OUTLINED_FUNCTION_132() & 1;
}

uint64_t sub_1AC6278E8(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      v2 = 0;
      return MEMORY[0x1B26E9A40](v2);
    case 1:
      v2 = 1;
      return MEMORY[0x1B26E9A40](v2);
    case 2:
      v2 = 2;
      return MEMORY[0x1B26E9A40](v2);
  }

  MEMORY[0x1B26E9A40](3);
  return sub_1AC7A0768();
}

uint64_t sub_1AC627950(uint64_t a1)
{
  OUTLINED_FUNCTION_85_1();
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (a1 != 2)
      {
        MEMORY[0x1B26E9A40](3);
        sub_1AC7A0768();
        return sub_1AC7A0EC8();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1B26E9A40](v2);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6279E8(uint64_t a1)
{
  v2 = *v1;
  sub_1AC7A0E78();
  sub_1AC6278E8(v4, v2);
  return sub_1AC7A0EC8();
}

BOOL static DictationTranscriber.ContentHint.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v2 == 1)
    {
      if (v3 != 1)
      {
        return 0;
      }
    }

    else if (v2 == 2)
    {
      if (v3 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (v3 < 3)
      {
        return 0;
      }

      sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
      if ((OUTLINED_FUNCTION_132() & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return !v3;
}

uint64_t DictationTranscriber.ContentHint.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (!*v1)
  {
    v3 = 0;
    return MEMORY[0x1B26E9A40](v3);
  }

  if (v2 == 1)
  {
    v3 = 1;
    return MEMORY[0x1B26E9A40](v3);
  }

  if (v2 == 2)
  {
    v3 = 2;
    return MEMORY[0x1B26E9A40](v3);
  }

  MEMORY[0x1B26E9A40](3);
  return sub_1AC7A0768();
}

uint64_t DictationTranscriber.ContentHint.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_85_1();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x1B26E9A40](3);
        sub_1AC7A0768();
        return sub_1AC7A0EC8();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1B26E9A40](v2);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC627BB8(uint64_t a1)
{
  v2 = *v1;
  sub_1AC7A0E78();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x1B26E9A40](3);
        sub_1AC7A0768();
        return sub_1AC7A0EC8();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1B26E9A40](v3);
  return sub_1AC7A0EC8();
}

uint64_t DictationTranscriber.ModelOptions.geoLMRegionID.setter()
{
  OUTLINED_FUNCTION_78_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DictationTranscriber.ModelOptions.modelOverrideURL.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = v1 + *(type metadata accessor for DictationTranscriber.ModelOptions(v2) + 20);

  return sub_1AC633390(v0, v3);
}

uint64_t DictationTranscriber.ModelOptions.modelOverrideURL.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  type metadata accessor for DictationTranscriber.ModelOptions(v0);
  return OUTLINED_FUNCTION_58();
}

uint64_t DictationTranscriber.ModelOptions.taskForMemoryLock.getter()
{
  type metadata accessor for DictationTranscriber.ModelOptions(0);

  return OUTLINED_FUNCTION_39();
}

uint64_t DictationTranscriber.ModelOptions.taskForMemoryLock.setter()
{
  OUTLINED_FUNCTION_78_0();
  v3 = (v1 + *(type metadata accessor for DictationTranscriber.ModelOptions(0) + 24));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t DictationTranscriber.ModelOptions.taskForMemoryLock.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  type metadata accessor for DictationTranscriber.ModelOptions(v0);
  return OUTLINED_FUNCTION_58();
}

uint64_t DictationTranscriber.ModelOptions.speechProfiles.getter()
{
  type metadata accessor for DictationTranscriber.ModelOptions(0);
}

uint64_t DictationTranscriber.ModelOptions.speechProfiles.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = *(type metadata accessor for DictationTranscriber.ModelOptions(v2) + 28);

  *(v1 + v3) = v0;
  return result;
}

uint64_t DictationTranscriber.ModelOptions.speechProfiles.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  type metadata accessor for DictationTranscriber.ModelOptions(v0);
  return OUTLINED_FUNCTION_58();
}

uint64_t DictationTranscriber.ModelOptions.enableParallelLoading.setter(char a1)
{
  result = type metadata accessor for DictationTranscriber.ModelOptions(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t DictationTranscriber.ModelOptions.enableParallelLoading.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  type metadata accessor for DictationTranscriber.ModelOptions(v0);
  return OUTLINED_FUNCTION_58();
}

uint64_t DictationTranscriber.ModelOptions.userIdMask.getter()
{
  type metadata accessor for DictationTranscriber.ModelOptions(0);
}

uint64_t DictationTranscriber.ModelOptions.userIdMask.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = *(type metadata accessor for DictationTranscriber.ModelOptions(v2) + 36);

  *(v1 + v3) = v0;
  return result;
}

uint64_t DictationTranscriber.ModelOptions.userIdMask.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  type metadata accessor for DictationTranscriber.ModelOptions(v0);
  return OUTLINED_FUNCTION_58();
}

uint64_t DictationTranscriber.ModelOptions.speechProfileContainers.getter()
{
  type metadata accessor for DictationTranscriber.ModelOptions(0);
}

uint64_t DictationTranscriber.ModelOptions.speechProfileContainers.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = *(type metadata accessor for DictationTranscriber.ModelOptions(v2) + 40);

  *(v1 + v3) = v0;
  return result;
}

uint64_t DictationTranscriber.ModelOptions.speechProfileContainers.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  type metadata accessor for DictationTranscriber.ModelOptions(v0);
  return OUTLINED_FUNCTION_58();
}

uint64_t DictationTranscriber.ModelOptions.enableFullPayloadCorrection.setter(char a1)
{
  result = type metadata accessor for DictationTranscriber.ModelOptions(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t DictationTranscriber.ModelOptions.enableFullPayloadCorrection.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  type metadata accessor for DictationTranscriber.ModelOptions(v0);
  return OUTLINED_FUNCTION_58();
}

unint64_t sub_1AC628178(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AC7A0BF8();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AC6281C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AC628178(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1AC6281F4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AC625934(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1AC628244()
{
  OUTLINED_FUNCTION_46_3();
  if (v12 && v0 && v1 != v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    v5 = v2 + 32;
    while (v3 != v0)
    {
      v6 = (v4 + 24 * v3);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = (v5 + 24 * v3);
      v11 = v10[2];
      v12 = v7 == *v10 && v8 == v10[1];
      if (!v12 && (sub_1AC7A0D38() & 1) == 0)
      {
        return;
      }

      v13 = *(v9 + 16);
      if (v13 != *(v11 + 16))
      {
        return;
      }

      if (v13)
      {
        v14 = v9 == v11;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        v15 = (v9 + 40);
        v16 = (v11 + 40);
        while (v13)
        {
          v17 = *(v15 - 1) == *(v16 - 1) && *v15 == *v16;
          if (!v17 && (sub_1AC7A0D38() & 1) == 0)
          {
            return;
          }

          v15 += 2;
          v16 += 2;
          if (!--v13)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
        break;
      }

LABEL_25:
      if (++v3 == v0)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1AC628354()
{
  OUTLINED_FUNCTION_46_3();
  if (v9 && v0 && v3 != v4)
  {
    v5 = v3 + 48;
    v6 = v4 + 48;
    do
    {
      OUTLINED_FUNCTION_90_1();
      v9 = v9 && v7 == v8;
      if (v9)
      {
        if (v1 != v2)
        {
          return;
        }
      }

      else if ((sub_1AC7A0D38() & 1) == 0 || v1 != v2)
      {
        return;
      }

      v5 += 24;
      v6 += 24;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_1AC6283F4()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v2 >> 62;
  if (v2 >> 62)
  {
    v4 = sub_1AC7A08E8();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v0 >> 62)
  {
    v5 = sub_1AC7A08E8();
  }

  else
  {
    v5 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 != v5)
  {
    return 0;
  }

  if (v4)
  {
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 < 0)
    {
      v6 = v1;
    }

    if (!v3)
    {
      v6 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v7 = v0 & 0xFFFFFFFFFFFFFF8;
    if (v0 < 0)
    {
      v7 = v0;
    }

    if (!(v0 >> 62))
    {
      v7 = (v0 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    if (v6 != v7)
    {
      if (v4 < 0)
      {
        __break(1u);
      }

      else
      {
        sub_1AC61C25C();
        if ((v1 & 0xC000000000000001) == 0)
        {

LABEL_19:
          sub_1AC61C25C();
          if ((v0 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1B26E95B0](0, v0);
            swift_unknownObjectRelease();
          }

          return 0;
        }
      }

      MEMORY[0x1B26E95B0](0, v1);
      goto LABEL_19;
    }
  }

  return 1;
}

void sub_1AC62852C()
{
  OUTLINED_FUNCTION_46_3();
  if (v5 && v0 && v1 != v2)
  {
    v3 = (v1 + 40);
    v4 = (v2 + 40);
    do
    {
      v5 = *(v3 - 1) == *(v4 - 1) && *v3 == *v4;
      if (!v5 && (sub_1AC7A0D38() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      v4 += 2;
      --v0;
    }

    while (v0);
  }
}

void sub_1AC628640()
{
  OUTLINED_FUNCTION_104();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1 && (v3 = v0 + 32, v4 = v1 + 32, v5 = *(v0 + 32), v6 = *(v1 + 32), v7 = *(v5 + 16), v7 == *(v6 + 16)))
  {
    v8 = 1;
    while (!v7 || v5 == v6)
    {
LABEL_42:
      if (v8 == v2)
      {
        goto LABEL_49;
      }

      if (v8 >= v2)
      {
        goto LABEL_52;
      }

      v5 = *(v3 + 8 * v8);
      v6 = *(v4 + 8 * v8++);
      v7 = *(v5 + 16);
      if (v7 != *(v6 + 16))
      {
        goto LABEL_49;
      }
    }

    v15 = v2;
    v16 = v8;
    v17 = v4;
    v18 = v3;

    v9 = 0;
    v19 = v7 - 1;
    v10 = 32;
    while (v9 < *(v5 + 16))
    {
      memcpy(__dst, (v5 + v10), sizeof(__dst));
      if (v9 >= *(v6 + 16))
      {
        goto LABEL_51;
      }

      memcpy(v22, (v6 + v10), 0xA0uLL);
      if (__dst[0] != v22[0] || __dst[1] != v22[1])
      {
        OUTLINED_FUNCTION_57_0();
        if ((sub_1AC7A0D38() & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      sub_1AC637BCC(__dst, v20);
      sub_1AC637BCC(v22, v20);
      OUTLINED_FUNCTION_77();
      if ((sub_1AC7A06A8() & 1) == 0 || (sub_1AC7A06A8() & 1) == 0 || (sub_1AC7A06A8() & 1) == 0 || *&__dst[11] != *&v22[11] || LOBYTE(__dst[12]) != LOBYTE(v22[12]) || BYTE1(__dst[12]) != BYTE1(v22[12]) || (__dst[13] == v22[13] ? (v12 = __dst[14] == v22[14]) : (v12 = 0), !v12 && (sub_1AC7A0D38() & 1) == 0))
      {
        sub_1AC637C28(v22);
        sub_1AC637C28(__dst);
LABEL_48:

        goto LABEL_49;
      }

      if (__dst[15] == v22[15] && __dst[16] == v22[16])
      {
        sub_1AC637C28(v22);
        sub_1AC637C28(__dst);
      }

      else
      {
        v14 = sub_1AC7A0D38();
        sub_1AC637C28(v22);
        sub_1AC637C28(__dst);
        if ((v14 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      if (LOBYTE(__dst[17]) != LOBYTE(v22[17]) || BYTE1(__dst[17]) != BYTE1(v22[17]) || BYTE2(__dst[17]) != BYTE2(v22[17]) || *&__dst[18] != *&v22[18] || *&__dst[19] != *&v22[19])
      {
        goto LABEL_48;
      }

      if (v19 == v9)
      {

        v4 = v17;
        v3 = v18;
        v2 = v15;
        v8 = v16;
        goto LABEL_42;
      }

      v10 += 160;
      ++v9;
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {
LABEL_49:
    OUTLINED_FUNCTION_105();
  }
}

void sub_1AC628938()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v3 = v2;
  v4 = sub_1AC79F5C8();
  OUTLINED_FUNCTION_40();
  v70 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v69 = v7 - v8;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_91();
  v71 = v10;
  v11 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for TranscriptionSegment(v11);
  OUTLINED_FUNCTION_107_0();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v68 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v18 = *(v3 + 16);
  if (v18 == *(v1 + 16) && v18 && v3 != v1)
  {
    v62 = v15;
    v63 = &v53 - v17;
    v19 = 0;
    v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v21 = v3 + v20;
    v22 = v71;
    v66 = (v70 + 8);
    v67 = v70 + 16;
    v23 = *(v16 + 72);
    v59 = v21;
    v60 = v18;
    v57 = v23;
    v58 = v1 + v20;
    while (1)
    {
      OUTLINED_FUNCTION_1_4();
      sub_1AC633280();
      if (v19 == v18)
      {
        goto LABEL_62;
      }

      v61 = v19;
      OUTLINED_FUNCTION_1_4();
      sub_1AC633280();
      OUTLINED_FUNCTION_124_0();
      if ((sub_1AC79F518() & 1) == 0 || (v24 = *(v62 + 20), v25 = *&v63[v24], v26 = *&v68[v24], v27 = *(v25 + 16), v27 != *(v26 + 16)))
      {
LABEL_58:
        sub_1AC6332D8();
        sub_1AC6332D8();
        goto LABEL_59;
      }

      if (v27 && v25 != v26)
      {
        v28 = 0;
        OUTLINED_FUNCTION_89_0();
        v64 = (v26 + v29);
        v65 = (v25 + v29);
        while (v28 < *(v25 + 16))
        {
          v30 = *(v70 + 72) * v28;
          v31 = *(v70 + 16);
          v31(v22, &v65[v30], v4);
          if (v28 >= *(v26 + 16))
          {
            goto LABEL_61;
          }

          v32 = v69;
          v31(v69, &v64[v30], v4);
          OUTLINED_FUNCTION_37_2();
          sub_1AC633400(&qword_1EB56BD60, v33);
          v34 = sub_1AC79FED8();
          v35 = *v66;
          v36 = v32;
          v22 = v71;
          (*v66)(v36, v4);
          v35(v22, v4);
          if ((v34 & 1) == 0)
          {
            goto LABEL_58;
          }

          if (v27 == ++v28)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_15:
      v37 = *(v62 + 24);
      v38 = *&v63[v37];
      v39 = *&v68[v37];
      v40 = *(v38 + 16);
      if (v40 != *(v39 + 16))
      {
        goto LABEL_58;
      }

      v41 = !v40 || v38 == v39;
      v42 = v61;
      if (!v41)
      {
        break;
      }

LABEL_21:
      sub_1AC628640();
      v44 = v43;
      sub_1AC6332D8();
      OUTLINED_FUNCTION_124_0();
      sub_1AC6332D8();
      if (v44)
      {
        v19 = v42 + 1;
        v18 = v60;
        if (v19 != v60)
        {
          continue;
        }
      }

      goto LABEL_59;
    }

    v45 = 0;
    v46 = (v38 + 32);
    v47 = (v39 + 32);
    v55 = *(v38 + 16);
    v56 = v39;
    v54 = v38;
    while (v45 < *(v38 + 16))
    {
      v64 = v46;
      memcpy(v73, v46, sizeof(v73));
      if (v45 >= *(v39 + 16))
      {
        goto LABEL_64;
      }

      memcpy(v74, v47, 0xA0uLL);
      v48 = v73[0] == v74[0] && v73[1] == v74[1];
      if (!v48 && (sub_1AC7A0D38() & 1) == 0)
      {
        goto LABEL_58;
      }

      v65 = v47;
      sub_1AC637BCC(v73, v72);
      sub_1AC637BCC(v74, v72);
      if ((sub_1AC7A06A8() & 1) == 0 || (sub_1AC7A06A8() & 1) == 0 || (sub_1AC7A06A8() & 1) == 0 || *&v73[11] != *&v74[11] || LOBYTE(v73[12]) != LOBYTE(v74[12]) || BYTE1(v73[12]) != BYTE1(v74[12]) || (v73[13] == v74[13] ? (v49 = v73[14] == v74[14]) : (v49 = 0), !v49 && (sub_1AC7A0D38() & 1) == 0))
      {
        sub_1AC637C28(v74);
        sub_1AC637C28(v73);
        goto LABEL_58;
      }

      if (v73[15] == v74[15] && v73[16] == v74[16])
      {
        sub_1AC637C28(v74);
        sub_1AC637C28(v73);
        v22 = v71;
        v52 = v65;
      }

      else
      {
        v51 = sub_1AC7A0D38();
        sub_1AC637C28(v74);
        sub_1AC637C28(v73);
        v22 = v71;
        v52 = v65;
        if ((v51 & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      if (LOBYTE(v73[17]) != LOBYTE(v74[17]) || BYTE1(v73[17]) != BYTE1(v74[17]) || BYTE2(v73[17]) != BYTE2(v74[17]) || *&v73[18] != *&v74[18] || *&v73[19] != *&v74[19])
      {
        goto LABEL_58;
      }

      ++v45;
      v46 = v64 + 160;
      v47 = v52 + 160;
      v39 = v56;
      v38 = v54;
      if (v55 == v45)
      {
        goto LABEL_21;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
  }

  else
  {
LABEL_59:
    OUTLINED_FUNCTION_105();
  }
}

uint64_t sub_1AC628F98()
{
  OUTLINED_FUNCTION_78_1();
  if (v3)
  {
    if (!v0 || v1 == v2)
    {
      return 1;
    }

    v4 = (v1 + 32);
    for (i = (v2 + 32); ; i += 160)
    {
      memcpy(__dst, v4, sizeof(__dst));
      memcpy(v10, v4, sizeof(v10));
      memcpy(v12, i, sizeof(v12));
      memcpy(__src, i, sizeof(__src));
      sub_1AC637BCC(__dst, v8);
      sub_1AC637BCC(v12, v8);
      v6 = static TranscriptionToken.== infix(_:_:)(v10, __src);
      memcpy(v13, __src, sizeof(v13));
      sub_1AC637C28(v13);
      memcpy(v14, v10, sizeof(v14));
      sub_1AC637C28(v14);
      if ((v6 & 1) == 0)
      {
        break;
      }

      v4 += 160;
      if (!--v0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1AC6290A0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1AC629144()
{
  OUTLINED_FUNCTION_104();
  v36 = v0;
  v37 = v1;
  v35 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7(0);
  OUTLINED_FUNCTION_40();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v18 = *(v6 + 16);
  if (v18 == *(v4 + 16) && v18 && v6 != v4)
  {
    OUTLINED_FUNCTION_89_0();
    v20 = v6 + v19;
    v21 = v4 + v19;
    v23 = *(v10 + 16);
    v22 = v10 + 16;
    v24 = (v22 - 8);
    v33 = *(v22 + 56);
    v34 = v23;
    while (1)
    {
      v25 = OUTLINED_FUNCTION_142();
      v26 = v34;
      (v34)(v25);
      if (!v18)
      {
        break;
      }

      v27 = v22;
      v26(v14, v21, v8);
      sub_1AC633400(v35, v36);
      OUTLINED_FUNCTION_117();
      v28 = sub_1AC79FED8();
      v29 = *v24;
      v30 = OUTLINED_FUNCTION_98();
      v29(v30);
      (v29)(v17, v8);
      if (v28)
      {
        v21 += v33;
        v20 += v33;
        v31 = v18-- == 1;
        v22 = v27;
        if (!v31)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_105();
  }
}

uint64_t sub_1AC629308(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1AC7A08E8())
  {
    if (a2 >> 62)
    {
      result = sub_1AC7A08E8();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v22 = 0;
      return v22 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v22 = 1;
      return v22 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_1AC5CF764(0, &qword_1EB56C568, off_1E797AD30);
    v25 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = MEMORY[0x1B26E95B0](v13 - 4, v25);
      }

      else
      {
        if (v15 >= *(v24 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v25 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = OUTLINED_FUNCTION_142();
        v20 = MEMORY[0x1B26E95B0](v19);
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_35;
        }

        v20 = *(a2 + 8 * v13);
      }

      v21 = v20;
      v22 = sub_1AC7A0758();

      if (v22)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v22 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

void sub_1AC6294D8()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_78_1();
  if (v10 && v0 && v1 != v2)
  {
    v3 = (v1 + 32);
    v4 = (v2 + 32);
    do
    {
      v5 = *v4;
      v6 = 0xE90000000000006ELL;
      v7 = 0x6F69746174636944;
      switch(*v3)
      {
        case 1:
          v7 = 0x7463694469726953;
          v6 = 0xED00006E6F697461;
          break;
        case 2:
          v7 = 0x6372616553626557;
          v6 = 0xE900000000000068;
          break;
        case 3:
          v7 = 0xD000000000000011;
          v6 = 0x80000001AC7B47A0;
          break;
        case 4:
          v6 = 0xE90000000000006CLL;
          v7 = 0x69614D6563696F56;
          break;
        case 5:
          v7 = 0x696E6F6974706143;
          v6 = 0xEA0000000000676ELL;
          break;
        case 6:
          v7 = 0x6F69746174636944;
          v6 = 0xEB0000000043436ELL;
          break;
        case 7:
          v6 = 0xE700000000000000;
          v7 = OUTLINED_FUNCTION_52_1();
          break;
        case 8:
          v6 = 0xE800000000000000;
          v7 = 0x676E696C6C657053;
          break;
        case 9:
          v6 = 0xE500000000000000;
          v7 = 0x746F687354;
          break;
        default:
          break;
      }

      v8 = 0xE90000000000006ELL;
      v9 = 0x6F69746174636944;
      switch(v5)
      {
        case 1:
          v9 = 0x7463694469726953;
          v8 = 0xED00006E6F697461;
          break;
        case 2:
          v9 = 0x6372616553626557;
          v8 = 0xE900000000000068;
          break;
        case 3:
          v9 = 0xD000000000000011;
          v8 = 0x80000001AC7B47A0;
          break;
        case 4:
          v8 = 0xE90000000000006CLL;
          v9 = 0x69614D6563696F56;
          break;
        case 5:
          v9 = 0x696E6F6974706143;
          v8 = 0xEA0000000000676ELL;
          break;
        case 6:
          v9 = 0x6F69746174636944;
          v8 = 0xEB0000000043436ELL;
          break;
        case 7:
          v8 = 0xE700000000000000;
          v9 = 0x43436C6C657053;
          break;
        case 8:
          v8 = 0xE800000000000000;
          v9 = 0x676E696C6C657053;
          break;
        case 9:
          v8 = 0xE500000000000000;
          v9 = 0x746F687354;
          break;
        default:
          break;
      }

      v10 = v7 == v9 && v6 == v8;
      if (v10)
      {
      }

      else
      {
        v11 = sub_1AC7A0D38();

        if ((v11 & 1) == 0)
        {
          break;
        }
      }

      ++v3;
      ++v4;
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_105();
}

void sub_1AC6297B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for CommandRecognizer.Argument(0);
  OUTLINED_FUNCTION_107_0();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v33 = &a9 - v32;
  v34 = *(v25 + 16);
  if (v34 == *(v23 + 16) && v34 && v25 != v23)
  {
    v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v36 = v25 + v35;
    v37 = v23 + v35;
    v38 = *(v31 + 72);
    while (1)
    {
      sub_1AC633280();
      OUTLINED_FUNCTION_98();
      sub_1AC633280();
      if (*v33 != *v30)
      {
        break;
      }

      v39 = *(v33 + 1) == *(v30 + 1) && *(v33 + 2) == *(v30 + 2);
      if (!v39 && (sub_1AC7A0D38() & 1) == 0 || (MEMORY[0x1B26E8730](&v33[*(v26 + 24)], &v30[*(v26 + 24)]) & 1) == 0)
      {
        break;
      }

      v40 = MEMORY[0x1B26E8730](&v33[*(v26 + 28)], &v30[*(v26 + 28)]);
      sub_1AC6332D8();
      sub_1AC6332D8();
      if (v40)
      {
        v37 += v38;
        v36 += v38;
        if (--v34)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    sub_1AC6332D8();
    sub_1AC6332D8();
  }

LABEL_17:
  OUTLINED_FUNCTION_105();
}

void sub_1AC6299CC()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_78_1();
  if (v14 && v0 && v1 != v2)
  {
    v3 = (v1 + 32);
    v4 = (v2 + 32);
    do
    {
      v5 = *v3;
      v6 = 0xD000000000000014;
      if (v5 == 1)
      {
        v7 = 0xD000000000000014;
      }

      else
      {
        v7 = 0x74616C736E617254;
      }

      if (v5 == 1)
      {
        v8 = 0x80000001AC7B4830;
      }

      else
      {
        v8 = 0xEC00000070704165;
      }

      if (*v3)
      {
        v9 = v7;
      }

      else
      {
        v9 = 0xD000000000000011;
      }

      if (*v3)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0x80000001AC7B4810;
      }

      if (*v4 == 1)
      {
        v11 = 0x80000001AC7B4830;
      }

      else
      {
        v6 = 0x74616C736E617254;
        v11 = 0xEC00000070704165;
      }

      if (*v4)
      {
        v12 = v6;
      }

      else
      {
        v12 = 0xD000000000000011;
      }

      if (*v4)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0x80000001AC7B4810;
      }

      v14 = v9 == v12 && v10 == v13;
      if (v14)
      {
      }

      else
      {
        v15 = sub_1AC7A0D38();

        if ((v15 & 1) == 0)
        {
          break;
        }
      }

      ++v3;
      ++v4;
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_105();
}

void DictationTranscriber.ModelOptions.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_25();
  v24 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_6();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  OUTLINED_FUNCTION_167(v26);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  if (*(v21 + 8))
  {
    OUTLINED_FUNCTION_83();
    sub_1AC7A0048();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  v30 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_96(v29, 1, v24);
  if (v31)
  {
    OUTLINED_FUNCTION_80_1();
  }

  else
  {
    v32 = OUTLINED_FUNCTION_142();
    v33(v32);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_39_2();
    sub_1AC633400(v34, v35);
    sub_1AC79FE58();
    v36 = OUTLINED_FUNCTION_117();
    v37(v36);
  }

  if (*(v21 + v30[6] + 8))
  {
    OUTLINED_FUNCTION_83();
    sub_1AC7A0048();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  OUTLINED_FUNCTION_10_2();
  sub_1AC633F80(v20, v38, v39);
  sub_1AC7A0E98();
  v40 = *(v21 + v30[9]);
  if (v40)
  {
    OUTLINED_FUNCTION_83();
    sub_1AC6346E0(v20, v40);
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  if (*(v21 + v30[10]))
  {
    OUTLINED_FUNCTION_83();
    sub_1AC633E98();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  sub_1AC7A0E98();
  sub_1AC633D0C();
  OUTLINED_FUNCTION_105();
}

uint64_t DictationTranscriber.ModelOptions.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  DictationTranscriber.ModelOptions.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC629DF0(uint64_t a1)
{
  sub_1AC7A0E78();
  DictationTranscriber.ModelOptions.hash(into:)(v10, v1, v2, v3, v4, v5, v6, v7, v9, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10]);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC629E48(uint64_t a1)
{
  sub_1AC7A0E78();
  OUTLINED_FUNCTION_134_1();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC629ED4()
{
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_134_1();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC629F1C(uint64_t a1)
{
  sub_1AC7A0E78();
  DictationTranscriber.ReportingOption.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t DictationTranscriber.ResultAttributeOption.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_134_1();
  return sub_1AC7A0EC8();
}

uint64_t static DictationTranscriber.supportedLocales.getter()
{
  OUTLINED_FUNCTION_85();
  type metadata accessor for AssetsInventory();
  swift_initStaticObject();
  OUTLINED_FUNCTION_116();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC70C79C();
}

uint64_t static DictationTranscriber.supportedLocale(equivalentTo:)(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_25();
  type metadata accessor for TranscriberCommon(v3);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AC5C5380;

  return sub_1AC740D54();
}

uint64_t static DictationTranscriber.installedLocales.getter()
{
  OUTLINED_FUNCTION_85();
  type metadata accessor for AssetsInventory();
  swift_initStaticObject();
  OUTLINED_FUNCTION_116();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC70D1B4(v0);
}

uint64_t DictationTranscriber.selectedLocales.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C018, &unk_1AC7A8480);
  OUTLINED_FUNCTION_25();
  v1 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AC7A6D00;
  (*(v3 + 16))(v5 + v4, v0 + OBJC_IVAR____TtC6Speech20DictationTranscriber_locale, v1);
  return v5;
}

uint64_t sub_1AC62A2E8()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC741794();
}

uint64_t sub_1AC62A378()
{
  OUTLINED_FUNCTION_85();
  v2 = v1;
  OUTLINED_FUNCTION_50();
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_82();

  return v5(v2);
}

uint64_t DictationTranscriber.requestResultAtEndpoints(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC62A474()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_109_1(v1);

  return sub_1AC742780(v2);
}

uint64_t sub_1AC62A51C()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC7429DC();
}

uint64_t sub_1AC62A5AC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC62A6A0()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC742BD0();
}

uint64_t DictationTranscriber.setLeftContextText(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC62A748()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_45_1(v1);

  return sub_1AC742DC4(v2, v3);
}

uint64_t DictationTranscriber.setRightContext(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC62A7F4()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_45_1(v1);

  return sub_1AC742FBC(v2, v3);
}

uint64_t sub_1AC62A888()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t DictationTranscriber.setSelectedText(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC62A980()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_45_1(v1);

  return sub_1AC743210(v2, v3);
}

uint64_t DictationTranscriber.results.getter()
{
  v0 = OUTLINED_FUNCTION_57_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_49_1();
  v3 = OUTLINED_FUNCTION_77_0();
  v4(v3);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94_1();
  sub_1AC5C8B9C(v5, v6, v7);
  OUTLINED_FUNCTION_47();
  return sub_1AC7A0B08();
}

uint64_t sub_1AC62AB18(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = a2[6];
  v2[7] = a2[7];
  v5 = a2[8];
  v4 = a2[9];
  v2[4] = v3;
  v2[5] = v5;
  v2[6] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1AC62AB9C, 0, 0);
}

uint64_t sub_1AC62AB9C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = v0[7];
  v7 = *v4;
  v8 = v4[2];
  *(v5 + 16) = v4[1];
  *(v5 + 32) = v8;
  *v5 = v7;
  *(v5 + 48) = v3;
  *(v5 + 56) = v6;
  *(v5 + 64) = v2;
  *(v5 + 72) = v1;
  return OUTLINED_FUNCTION_34_0();
}

void DictationTranscriber.Result.text.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 72);
  if (*(v3 + 16))
  {
    sub_1AC79F5C8();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_89_0();

    v5(a1, v3 + v6, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC62AC50(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v17.start.value = 0;
  *&v17.start.timescale = 0xE000000000000000;
  sub_1AC7A09C8();
  v18 = *&v17.start.value;
  MEMORY[0x1B26E8C40](60, 0xE100000000000000);
  MEMORY[0x1B26E8C40](a3, a4);
  MEMORY[0x1B26E8C40](0x2065676E6172203ALL, 0xE800000000000000);
  v8 = *(a1 + 16);
  *&v17.start.value = *a1;
  *&v17.start.epoch = v8;
  *&v17.duration.timescale = *(a1 + 32);
  v9 = CMTimeRangeCopyDescription(0, &v17);
  if (!v9)
  {
    v9 = OUTLINED_FUNCTION_69_2();
  }

  v17.start.value = v9;
  type metadata accessor for CFString(0);
  sub_1AC7A0AF8();

  MEMORY[0x1B26E8C40](0xD00000000000001ALL, 0x80000001AC7B59C0);
  v10 = *(a1 + 64);
  *&v17.start.value = *(a1 + 48);
  v17.start.epoch = v10;
  v11 = CMTimeCopyDescription(0, &v17.start);
  if (!v11)
  {
    v11 = OUTLINED_FUNCTION_69_2();
  }

  v17.start.value = v11;
  sub_1AC7A0AF8();

  MEMORY[0x1B26E8C40](0x6E7265746C610A2CLL, 0xEF20736576697461);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD10, &unk_1AC7A8140);
    OUTLINED_FUNCTION_25();
    v12 = sub_1AC79F5C8();
    OUTLINED_FUNCTION_22(v12);
    OUTLINED_FUNCTION_106_2();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AC7A6D00;
    sub_1AC79F508();
  }

  else
  {
    v13 = *(a1 + 72);
  }

  v14 = sub_1AC79F5C8();
  MEMORY[0x1B26E8D20](v13, v14);

  v15 = OUTLINED_FUNCTION_57_0();
  MEMORY[0x1B26E8C40](v15);

  MEMORY[0x1B26E8C40](62, 0xE100000000000000);
  return v18;
}

uint64_t static DictationTranscriber.Result.== infix(_:_:)(_OWORD *a1, __int128 *a2)
{
  if (sub_1AC7A0548() & 1) != 0 && (OUTLINED_FUNCTION_57_0(), (sub_1AC7A06A8()))
  {
    OUTLINED_FUNCTION_4_2();
    OUTLINED_FUNCTION_39();
    sub_1AC629144();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void DictationTranscriber.Result.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v6 + 72);
  sub_1AC7A0568();
  OUTLINED_FUNCTION_94_1();
  sub_1AC7A06E8();
  OUTLINED_FUNCTION_4_2();
  sub_1AC633F80(a1, v8, v9);
}

uint64_t DictationTranscriber.Result.hashValue.getter()
{
  v1 = v0[1];
  v6 = *v0;
  v7 = v1;
  v8 = v0[2];
  v2 = *(v0 + 9);
  OUTLINED_FUNCTION_85_1();
  sub_1AC7A0568();
  sub_1AC7A06E8();
  OUTLINED_FUNCTION_4_2();
  sub_1AC633F80(v5, v2, v3);
  return sub_1AC7A0EC8();
}

double sub_1AC62B174@<D0>(_OWORD *a1@<X8>)
{
  DictationTranscriber.Result.range.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_1AC62B1C8(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v8 = v1[2];
  v3 = *(v1 + 9);
  sub_1AC7A0E78();
  sub_1AC7A0568();
  sub_1AC7A06E8();
  sub_1AC633F80(v5, v3, MEMORY[0x1E6968848]);
  return sub_1AC7A0EC8();
}

uint64_t DictationTranscriber.multisegmentResults.getter()
{
  v0 = OUTLINED_FUNCTION_57_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_49_1();
  v3 = OUTLINED_FUNCTION_77_0();
  v4(v3);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94_1();
  sub_1AC5C8B9C(v5, v6, v7);
  OUTLINED_FUNCTION_47();
  return sub_1AC7A0B08();
}

uint64_t sub_1AC62B398(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = *(a2 + 48);
  *(v2 + 160) = *(a2 + 56);
  v5 = *(a2 + 64);
  v4 = *(a2 + 72);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  v7 = *(a2 + 80);
  v6 = *(a2 + 88);
  *(v2 + 48) = v4;
  *(v2 + 56) = v7;
  v8 = *(a2 + 96);
  *(v2 + 64) = v6;
  *(v2 + 72) = v8;
  *(v2 + 168) = *(a2 + 104);
  v9 = *(a2 + 160);
  v10 = *(a2 + 168);
  *(v2 + 80) = v9;
  *(v2 + 88) = v10;
  *(v2 + 96) = *(a2 + 176);
  *(v2 + 169) = *(a2 + 192);
  *(v2 + 112) = *(a2 + 200);
  *(v2 + 120) = *(a2 + 208);
  *(v2 + 136) = *(a2 + 224);
  *(v2 + 170) = *(a2 + 232);
  *(v2 + 144) = *(a2 + 240);
  *(v2 + 171) = *(a2 + 256);

  sub_1AC63482C(v9, v10);

  return MEMORY[0x1EEE6DFA0](sub_1AC62B4C8, 0, 0);
}

uint64_t sub_1AC62B4C8()
{
  v1 = *(v0 + 171);
  v2 = *(v0 + 170);
  v3 = *(v0 + 169);
  v4 = *(v0 + 168);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v10 = *(v0 + 128);
  v9 = *(v0 + 144);
  v12 = *(v0 + 96);
  v11 = *(v0 + 112);
  v14 = *(v0 + 64);
  v13 = *(v0 + 80);
  v15 = *(v0 + 160);
  v16 = *(v0 + 48);
  v17 = *v7;
  v18 = v7[2];
  *(v8 + 16) = v7[1];
  *(v8 + 32) = v18;
  *v8 = v17;
  *(v8 + 48) = v6;
  *(v8 + 56) = v15;
  *(v8 + 64) = v5;
  *(v8 + 72) = v16;
  *(v8 + 88) = v14;
  *(v8 + 104) = v4;
  v19 = *(v7 + 108);
  v20 = *(v7 + 124);
  *(v8 + 140) = *(v7 + 140);
  *(v8 + 124) = v20;
  *(v8 + 108) = v19;
  *(v8 + 160) = v13;
  *(v8 + 176) = v12;
  *(v8 + 192) = v3;
  *(v8 + 200) = v11;
  *(v8 + 216) = v10;
  *(v8 + 232) = v2;
  *(v8 + 240) = v9;
  *(v8 + 256) = v1;
  return OUTLINED_FUNCTION_34_0();
}

__n128 DictationTranscriber.MultisegmentResult.init(range:resultsFinalizationTime:transcriptions:transcriptionTokens:segments:nBestChoices:earResultType:recognitionAudioRange:audioAnalytics:eosLikelihood:latticeMitigatorResult:numOneBestTokensExcludingTriggerPhrase:resultCandidateId:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, _OWORD *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  v18 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v18;
  *(a9 + 32) = a1[2];
  v19 = a11[1];
  *(a9 + 108) = *a11;
  *(a9 + 124) = v19;
  *(a9 + 140) = a11[2];
  *(a9 + 160) = *a12;
  result = *a15;
  v21 = *(a15 + 16);
  *(a9 + 200) = *a15;
  v22 = *a10;
  v23 = *(a12 + 16);
  v24 = *(a15 + 32);
  *(a9 + 48) = a2;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  *(a9 + 104) = v22;
  *(a9 + 176) = v23;
  *(a9 + 184) = a13;
  *(a9 + 192) = a14 & 1;
  *(a9 + 216) = v21;
  *(a9 + 232) = v24;
  *(a9 + 240) = a16;
  *(a9 + 248) = a17;
  *(a9 + 256) = a18 & 1;
  return result;
}

uint64_t DictationTranscriber.muxMultisegmentResults.getter()
{
  v0 = OUTLINED_FUNCTION_88_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_49_1();
  v3 = OUTLINED_FUNCTION_77_0();
  v4(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C350, &qword_1AC7A8830);
  OUTLINED_FUNCTION_7();
  sub_1AC5C8B9C(v5, &qword_1EB56C348, &qword_1AC7A8820);
  OUTLINED_FUNCTION_47();
  return sub_1AC7A0B08();
}

uint64_t sub_1AC62B708(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1AC62B72C, 0, 0);
}

void sub_1AC62B72C()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C560, &qword_1AC7A9290);
  sub_1AC7A0BA8();
  v2 = 0;
  v47 = v1 + 64;
  v49 = v1;
  OUTLINED_FUNCTION_117_0();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v48 = v9 + 64;
  if ((v5 & v4) != 0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_57_2();
LABEL_8:
      v15 = v11 | (v2 << 6);
      v16 = (*(v49 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = 33 * v15;
      v20 = *(v49 + 56) + 264 * v15;
      v50 = *v20;
      v51 = *(v20 + 16);
      v52 = *(v20 + 32);
      v21 = *(v20 + 48);
      v22 = *(v20 + 64);
      v23 = *(v20 + 72);
      v25 = *(v20 + 80);
      v24 = *(v20 + 88);
      v26 = *(v20 + 96);
      v27 = *(v20 + 104);
      v28 = *(v20 + 160);
      v29 = *(v20 + 168);
      v30 = *(v20 + 200);
      v31 = *(v20 + 224);
      v32 = *(v20 + 232);
      *&v53[3] = *(v20 + 108);
      *&v53[19] = *(v20 + 124);
      *&v53[35] = *(v20 + 140);
      v54 = *(v20 + 192);
      v55 = *(v20 + 256);
      v33 = (v15 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v34 = *(v48 + v33) | (1 << v15);
      v35 = (v10[6] + 16 * v15);
      v36 = *(v20 + 240);
      v37 = *(v20 + 208);
      v38 = *(v20 + 176);
      v39 = *(v20 + 56);
      *(v48 + v33) = v34;
      *v35 = v18;
      v35[1] = v17;
      v40 = v10[7] + 8 * v19;
      *v40 = v50;
      *(v40 + 16) = v51;
      *(v40 + 32) = v52;
      *(v40 + 48) = v21;
      *(v40 + 56) = v39;
      *(v40 + 64) = v22;
      *(v40 + 72) = v23;
      *(v40 + 80) = v25;
      *(v40 + 88) = v24;
      *(v40 + 96) = v26;
      *(v40 + 104) = v27;
      *(v40 + 152) = *&v53[47];
      *(v40 + 137) = *&v53[32];
      *(v40 + 121) = *&v53[16];
      *(v40 + 105) = *v53;
      *(v40 + 160) = v28;
      *(v40 + 168) = v29;
      *(v40 + 176) = v38;
      *(v40 + 192) = v54;
      *(v40 + 200) = v30;
      *(v40 + 208) = v37;
      *(v40 + 224) = v31;
      *(v40 + 232) = v32;
      *(v40 + 240) = v36;
      *(v40 + 256) = v55;
      v41 = v10[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        break;
      }

      v10[2] = v43;
      v44 = v10;

      sub_1AC63482C(v28, v29);

      v3 = v44;
      if (!v6)
      {
        goto LABEL_3;
      }
    }

LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_3:
    v12 = v2;
    while (1)
    {
      v2 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v2 >= v8)
      {
        break;
      }

      ++v12;
      if (*(v47 + 8 * v2))
      {
        OUTLINED_FUNCTION_25_0();
        v6 = v14 & v13;
        goto LABEL_8;
      }
    }

    **(v46 + 16) = v3;
    OUTLINED_FUNCTION_44();

    v45();
  }
}

__n128 DictationTranscriber.MultisegmentResult.recognitionAudioRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 124);
  *a1 = *(v1 + 108);
  *(a1 + 16) = v2;
  result = *(v1 + 140);
  *(a1 + 32) = result;
  return result;
}

uint64_t DictationTranscriber.MultisegmentResult.audioAnalytics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[20];
  v3 = v1[21];
  v4 = v1[22];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1AC63482C(v2, v3);
}

uint64_t DictationTranscriber.MultisegmentResult.latticeMitigatorResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 232);
  *a1 = *(v1 + 200);
  *(a1 + 8) = *(v1 + 208);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

void sub_1AC62BA80()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_25();
  v7 = sub_1AC79F5C8();
  OUTLINED_FUNCTION_40();
  v64 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v12 = v11 - v10;
  v65.start.value = 0;
  *&v65.start.timescale = 0xE000000000000000;
  sub_1AC7A09C8();
  v66 = 0;
  v67 = 0xE000000000000000;
  MEMORY[0x1B26E8C40](60, 0xE100000000000000);
  MEMORY[0x1B26E8C40](v4, v2);
  MEMORY[0x1B26E8C40](8250, 0xE200000000000000);
  LOBYTE(v65.start.value) = *(v0 + 104);
  sub_1AC7A0AF8();
  MEMORY[0x1B26E8C40](0x2065676E6172202CLL, 0xE800000000000000);
  v13 = *(v0 + 16);
  *&v65.start.value = *v0;
  *&v65.start.epoch = v13;
  *&v65.duration.timescale = *(v0 + 32);
  v14 = CMTimeRangeCopyDescription(0, &v65);
  if (!v14)
  {
    v14 = OUTLINED_FUNCTION_69_2();
  }

  v65.start.value = v14;
  type metadata accessor for CFString(0);
  sub_1AC7A0AF8();

  MEMORY[0x1B26E8C40](0xD00000000000001ALL, 0x80000001AC7B59C0);
  v15 = *(v0 + 64);
  v65.start.value = *(v0 + 48);
  *&v65.start.timescale = *(v0 + 56);
  v65.start.epoch = v15;
  v16 = CMTimeCopyDescription(0, &v65.start);
  if (!v16)
  {
    v16 = OUTLINED_FUNCTION_69_2();
  }

  v17 = 0x4445544341444552;
  v65.start.value = v16;
  sub_1AC7A0AF8();

  MEMORY[0x1B26E8C40](0x6E656D6765730A2CLL, 0xEB00000000207374);
  if (v6)
  {
    v18 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD08, &qword_1AC7A8138);
    v19 = (type metadata accessor for TranscriptionSegment(0) - 8);
    OUTLINED_FUNCTION_106_2();
    v22 = v21 & ~v20;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1AC7A6D00;
    v24 = v23 + v22;
    sub_1AC79F508();
    (*(v64 + 32))(v24, v12, v7);
    *(v24 + v19[7]) = v18;
    *(v24 + v19[8]) = v18;
    *(v24 + v19[9]) = v18;
  }

  else
  {
  }

  type metadata accessor for TranscriptionSegment(0);
  v25 = OUTLINED_FUNCTION_93();
  MEMORY[0x1B26E8D20](v25);

  v26 = OUTLINED_FUNCTION_123_1();
  MEMORY[0x1B26E8C40](v26);

  MEMORY[0x1B26E8C40](0x43747365426E0A2CLL, 0xEF20736563696F68);
  if ((v6 & 1) == 0)
  {
  }

  sub_1AC79FBC8();
  v27 = OUTLINED_FUNCTION_93();
  MEMORY[0x1B26E8D20](v27);

  v28 = OUTLINED_FUNCTION_123_1();
  MEMORY[0x1B26E8C40](v28);

  v29 = OUTLINED_FUNCTION_53_2();
  MEMORY[0x1B26E8C40](v29);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD10, &unk_1AC7A8140);
    OUTLINED_FUNCTION_106_2();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1AC7A6D00;
    sub_1AC79F508();
  }

  else
  {
    v30 = *(v0 + 72);
  }

  MEMORY[0x1B26E8D20](v30, v7);
  OUTLINED_FUNCTION_105_1();
  v31 = OUTLINED_FUNCTION_88_0();
  MEMORY[0x1B26E8C40](v31);

  MEMORY[0x1B26E8C40](0xD000000000000016, 0x80000001AC7B5A00);
  if (v6)
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD28, &qword_1AC7A8158);
    MEMORY[0x1B26E8D20](MEMORY[0x1E69E7CC0], v32);
    OUTLINED_FUNCTION_105_1();
    v33 = OUTLINED_FUNCTION_88_0();
    MEMORY[0x1B26E8C40](v33);

    v34 = OUTLINED_FUNCTION_53_2();
    MEMORY[0x1B26E8C40](v34);
    v35 = 0xE800000000000000;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD28, &qword_1AC7A8158);
    v36 = OUTLINED_FUNCTION_93();
    MEMORY[0x1B26E8D20](v36);
    OUTLINED_FUNCTION_105_1();
    v37 = OUTLINED_FUNCTION_88_0();
    MEMORY[0x1B26E8C40](v37);

    v38 = OUTLINED_FUNCTION_53_2();
    MEMORY[0x1B26E8C40](v38);
    if (*(v0 + 160))
    {
      v39 = *(v0 + 176);
      v40 = *(v0 + 168);
      v65.start.value = *(v0 + 160);
      *&v65.start.timescale = v40;
      v65.start.epoch = v39;

      v17 = sub_1AC79FFD8();
      v35 = v41;
    }

    else
    {
      v17 = 0;
      v35 = 0xE000000000000000;
    }
  }

  MEMORY[0x1B26E8C40](v17, v35);

  MEMORY[0x1B26E8C40](0xD000000000000010, 0x80000001AC7B5A40);
  v65.start.value = *(v0 + 184);
  LOBYTE(v65.start.timescale) = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C458, &qword_1AC7A90C8);
  v42 = sub_1AC79FFD8();
  MEMORY[0x1B26E8C40](v42);

  MEMORY[0x1B26E8C40](0xD000000000000026, 0x80000001AC7B5A60);
  v43 = *(v0 + 208);
  v44 = *(v0 + 220);
  v45 = *(v0 + 224);
  v46 = *(v0 + 228);
  v47 = *(v0 + 232);
  v48 = v43 == 0;
  v49 = v43 == 0;
  if (v43)
  {
    v50 = *(v0 + 216);
  }

  else
  {
    v50 = 0;
  }

  LODWORD(v65.start.value) = v50;
  BYTE4(v65.start.value) = v49;
  if (v48)
  {
    v51 = 0;
  }

  else
  {
    v51 = v44;
  }

  if (v48)
  {
    v52 = 0;
  }

  else
  {
    v52 = v45;
  }

  if (v48)
  {
    v53 = 0;
  }

  else
  {
    v53 = v46;
  }

  if (v48)
  {
    v54 = 2;
  }

  else
  {
    v54 = v47 & 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C460, &qword_1AC7A90D0);
  v55 = sub_1AC79FFD8();
  MEMORY[0x1B26E8C40](v55);

  MEMORY[0x1B26E8C40](0xD000000000000011, 0x80000001AC7B5A90);
  LODWORD(v65.start.value) = v51;
  v56 = OUTLINED_FUNCTION_104_1();
  MEMORY[0x1B26E8C40](v56);

  MEMORY[0x1B26E8C40](0x3A656C616373202CLL, 0xE900000000000020);
  LODWORD(v65.start.value) = v52;
  v57 = OUTLINED_FUNCTION_104_1();
  MEMORY[0x1B26E8C40](v57);

  MEMORY[0x1B26E8C40](0x74657366666F202CLL, 0xEA0000000000203ALL);
  LODWORD(v65.start.value) = v53;
  v58 = OUTLINED_FUNCTION_104_1();
  MEMORY[0x1B26E8C40](v58);

  MEMORY[0x1B26E8C40](0x636F72507369202CLL, 0xEF203A6465737365);
  LOBYTE(v65.start.value) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C468, &qword_1AC7A90D8);
  v59 = sub_1AC79FFD8();
  MEMORY[0x1B26E8C40](v59);

  MEMORY[0x1B26E8C40](0xD00000000000002ALL, 0x80000001AC7B5AB0);
  v65.start.value = *(v0 + 240);
  v60 = sub_1AC7A0CC8();
  MEMORY[0x1B26E8C40](v60);

  MEMORY[0x1B26E8C40](0xD000000000000014, 0x80000001AC7B5AE0);
  if (v6)
  {
    v61 = 0;
    v62 = 0xE000000000000000;
  }

  else
  {
    v65.start.value = *(v0 + 248);
    LOBYTE(v65.start.timescale) = *(v0 + 256);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C470, &unk_1AC7A90E0);
    v61 = sub_1AC79FFD8();
    v62 = v63;
  }

  MEMORY[0x1B26E8C40](v61, v62);

  MEMORY[0x1B26E8C40](15913, 0xE200000000000000);
  OUTLINED_FUNCTION_105();
}

void static DictationTranscriber.MultisegmentResult.split(result:)()
{
  OUTLINED_FUNCTION_50_0();
  memcpy(__dst, v2, 0x101uLL);
  sub_1AC62C58C(v1, v0, __dst, sub_1AC637EC0, sub_1AC637E60, &unk_1F212F3B8, sub_1AC637EC4, nullsub_1, sub_1AC637EC4, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13]);
}

void sub_1AC62C58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t (*a23)(void *, __n128))
{
  OUTLINED_FUNCTION_129_0();
  v24 = v23;
  v565 = v25;
  v570 = v26;
  v584 = v27;
  v575 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v557 = sub_1AC79FBC8();
  OUTLINED_FUNCTION_40();
  v578 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  v568 = (v37 - v38);
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_26_0();
  v582 = v40;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_26_0();
  v549 = v42;
  OUTLINED_FUNCTION_34();
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = &v521 - v45;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_91();
  v552 = v47;
  OUTLINED_FUNCTION_70_0();
  v585 = sub_1AC79F5C8();
  OUTLINED_FUNCTION_40();
  v583 = v48;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5();
  v541 = v50 - v51;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_26_0();
  v542 = v53;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_26_0();
  v543 = v55;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_26_0();
  v555 = v57;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_26_0();
  v580 = v59;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_26_0();
  v564 = v61;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_26_0();
  v563 = v63;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_26_0();
  v562 = v65;
  OUTLINED_FUNCTION_34();
  v67 = MEMORY[0x1EEE9AC00](v66);
  v69 = &v521 - v68;
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_26_0();
  v561 = v70;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_26_0();
  v560 = v72;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_26_0();
  v559 = v74;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_91();
  v547 = v76;
  v77 = OUTLINED_FUNCTION_70_0();
  v78 = type metadata accessor for TranscriptionSegment(v77);
  OUTLINED_FUNCTION_40();
  v558 = v79;
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_5();
  v567 = (v81 - v82);
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_26_0();
  v550 = v84;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_26_0();
  v554 = v86;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_26_0();
  v566 = v88;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_26_0();
  v553 = v90;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_26_0();
  v546 = v92;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_26_0();
  v544 = v94;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_26_0();
  v545 = v96;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_26_0();
  v548 = v98;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_91();
  v571 = v100;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C4E8, &qword_1AC7A9190);
  OUTLINED_FUNCTION_167(v101);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v102);
  v104 = (&v521 - v103);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C4F0, &qword_1AC7A9198);
  v106 = OUTLINED_FUNCTION_167(v105);
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_5();
  v108 = MEMORY[0x1EEE9AC00](v107);
  v109 = MEMORY[0x1EEE9AC00](v108);
  v110 = MEMORY[0x1EEE9AC00](v109);
  v111 = MEMORY[0x1EEE9AC00](v110);
  MEMORY[0x1EEE9AC00](v111);
  v118 = &v521 - v114;
  if (!*(*(v30 + 72) + 16))
  {
    goto LABEL_9;
  }

  v119 = *(v30 + 88);
  v120 = *(v119 + 16);
  if (!v120)
  {
    goto LABEL_9;
  }

  v538 = v112;
  v539 = v120;
  v540 = v46;
  v579 = v69;
  v536 = v117;
  v537 = v113;
  v534 = v116;
  v535 = v115;
  v121 = v119;
  sub_1AC625BBC(v119, &v521 - v114);
  OUTLINED_FUNCTION_96(v118, 1, v78);
  if (v122)
  {
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
    goto LABEL_278;
  }

  v123 = *&v118[v78[6]];
  v569 = v121;

  OUTLINED_FUNCTION_0_3();
  sub_1AC6332D8();
  v124 = *(v123 + 16);

  if (!v124)
  {
    goto LABEL_8;
  }

  v125 = *(v30 + 96);
  v126 = *(v125 + 16);
  if (!v126)
  {
    goto LABEL_8;
  }

  v533 = *(v30 + 96);
  sub_1AC625C74(v125, MEMORY[0x1E6969C28], v104);
  v127 = OUTLINED_FUNCTION_55_2();
  v128 = v557;
  OUTLINED_FUNCTION_96(v127, v129, v557);
  if (v122)
  {
    goto LABEL_276;
  }

  v130 = sub_1AC6244CC();
  v576 = *(v578 + 8);
  v577 = v578 + 8;
  v576(v104, v128);
  if (v130)
  {
LABEL_8:

LABEL_9:
    v575(v587);
    memcpy(v34, v587, 0x101uLL);
    memcpy(v32, v30, 0x101uLL);
    v584(v30, v586);
LABEL_10:
    OUTLINED_FUNCTION_130();
    return;
  }

  v131 = *(v30 + 108);
  v529 = v24;
  v530 = v131;
  v132 = *(v30 + 116);
  v601 = *(v30 + 120);
  v602 = *(v30 + 128);
  v599 = *(v30 + 132);
  v600 = *(v30 + 148);
  v528 = v132;
  v574 = sub_1AC7A0718();
  v572 = v133;
  v135 = v134;
  v136 = sub_1AC630440(1, v569);
  v140 = v139 >> 1;
  if (v139 >> 1 == v138)
  {
LABEL_12:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v581 = a23;
  v141 = v139 >> 1;
  v526 = v32;
  v527 = v30;
  v524 = v137;
  v525 = v34;
  v573 = v78;
  v551 = v126;
  v531 = v136;
  v522 = v139 >> 1;
  v523 = v138;
LABEL_14:
  v142 = __OFSUB__(v141, 1);
  v143 = v141 - 1;
  if (v142)
  {
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:
    __break(1u);
    goto LABEL_269;
  }

  if (v143 < v138 || v143 >= v140)
  {
    goto LABEL_266;
  }

  v556 = *(v558 + 72);
  v532 = v143;
  OUTLINED_FUNCTION_1_4();
  v104 = v571;
  sub_1AC633280();
  v145 = 0;
  v30 = *(v104 + v573[6]);
  v146 = *(v30 + 16);
  for (i = (v30 + 32); ; i += 160)
  {
    if (v146 == v145)
    {
      sub_1AC6332D8();
      v138 = v523;
      v141 = v532;
      v32 = v526;
      v30 = v527;
      v34 = v525;
      v140 = v522;
      if (v532 != v523)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    if (v145 >= *(v30 + 16))
    {
      __break(1u);
LABEL_255:
      __break(1u);
LABEL_256:
      __break(1u);
LABEL_257:
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
      goto LABEL_265;
    }

    memcpy(v587, i, 0xA0uLL);
    v148 = v587[5];
    v149 = v587[10];
    v104 = v587[7];
    v32 = v587[8];
    v150 = v587[6];
    v151 = v587[9];
    sub_1AC637BCC(v587, v586);
    v586[0] = v148;
    v586[1] = v150;
    v586[2] = v104;
    *&v589 = v32;
    *(&v589 + 1) = v151;
    *&v590 = v149;
    v152 = OUTLINED_FUNCTION_50_2();
    CMTimeSubtract(v154, v152, v153);
    v130 = sub_1AC7A06B8();
    sub_1AC637C28(v587);
    if (v130)
    {
      break;
    }

    ++v145;
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_0_3();
  sub_1AC6332D8();
  sub_1AC724624(v570);
  v584 = v155;
  v156 = v532 + 1;
  if (__OFADD__(v532, 1))
  {
    goto LABEL_268;
  }

  if ((v156 & 0x8000000000000000) == 0)
  {
    v572 = v532 + 1;
    sub_1AC747F2C(0, v156, v569);
    v104 = v157;
    v30 = v158;
    v135 = v159;
    v32 = v160;
    if (v160)
    {
      sub_1AC7A0D68();
      swift_unknownObjectRetain_n();
      v163 = swift_dynamicCastClass();
      if (!v163)
      {
        swift_unknownObjectRelease();
        v163 = MEMORY[0x1E69E7CC0];
      }

      v164 = *(v163 + 16);

      if (__OFSUB__(v32 >> 1, v135))
      {
        goto LABEL_271;
      }

      if (v164 != (v32 >> 1) - v135)
      {
        goto LABEL_272;
      }

      v162 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v162)
      {
        goto LABEL_38;
      }

      v162 = MEMORY[0x1E69E7CC0];
      goto LABEL_37;
    }

    goto LABEL_30;
  }

LABEL_269:
  __break(1u);
  do
  {
    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    swift_unknownObjectRelease();
LABEL_30:
    sub_1AC751B68(v104, v30, v135, v32);
    v162 = v161;
LABEL_37:
    swift_unknownObjectRelease();
LABEL_38:
    v531 = v162;
  }

  while (v539 < v572);
  sub_1AC747F2C(v572, v539, v569);
  v166 = v165;
  v168 = v167;
  v170 = v169;
  v172 = v171;
  if ((v171 & 1) == 0)
  {
    goto LABEL_40;
  }

  sub_1AC7A0D68();
  swift_unknownObjectRetain_n();
  v176 = swift_dynamicCastClass();
  if (!v176)
  {
    swift_unknownObjectRelease();
    v176 = MEMORY[0x1E69E7CC0];
  }

  v177 = *(v176 + 16);

  if (__OFSUB__(v172 >> 1, v170))
  {
    __break(1u);
    goto LABEL_274;
  }

  if (v177 != (v172 >> 1) - v170)
  {
LABEL_274:
    swift_unknownObjectRelease();
LABEL_40:
    sub_1AC751B68(v166, v168, v170, v172);
    v174 = v173;
    v175 = v551;
LABEL_47:
    swift_unknownObjectRelease();
    goto LABEL_48;
  }

  v174 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v175 = v551;
  if (!v174)
  {
    v174 = MEMORY[0x1E69E7CC0];
    goto LABEL_47;
  }

LABEL_48:
  v539 = v174;
  *&v589 = MEMORY[0x1E69E7CC0];
  sub_1AC6313FC(0, v175, 0);
  v135 = v589;
  OUTLINED_FUNCTION_89_0();
  v570 = v178;
  v179 = v533 + v178;
  v574 = *(v180 + 56);
  v575 = v181;
  v578 = v180;
  v569 = (v180 + 16);
  v571 = (v533 + v178);
  v104 = v557;
  do
  {
    OUTLINED_FUNCTION_48_3();
    v182();
    v32 = sub_1AC633400(&qword_1EB56C4F8, MEMORY[0x1E6969C28]);
    OUTLINED_FUNCTION_87_1();
    sub_1AC7A0498();
    if (v572 < *&v593[0])
    {
      goto LABEL_255;
    }

    v586[0] = *&v593[0];
    v586[1] = v572;
    v183 = v568;
    sub_1AC7A0508();
    v184 = OUTLINED_FUNCTION_57_0();
    (v576)(v184);
    *&v589 = v135;
    OUTLINED_FUNCTION_97_1();
    v104 = v30;
    if (v185)
    {
      OUTLINED_FUNCTION_64_3();
      sub_1AC6313FC(v188, v189, v190);
      v104 = v557;
      v135 = v589;
    }

    *(v135 + 2) = v130;
    v186 = OUTLINED_FUNCTION_122_1();
    v130 = *v569;
    (*v569)(v186, v183, v104);
    *&v589 = v135;
    v179 += v30;
    --v175;
    v187 = v551;
  }

  while (v175);
  sub_1AC752ED8();
  v533 = v191;

  *&v589 = MEMORY[0x1E69E7CC0];
  v192 = OUTLINED_FUNCTION_127_1();
  sub_1AC6313FC(v192, v193, v194);
  v104 = v557;
  v135 = v589;
  v195 = v549;
  v196 = v571;
  do
  {
    OUTLINED_FUNCTION_48_3();
    v197();
    OUTLINED_FUNCTION_87_1();
    sub_1AC7A04E8();
    if (*&v593[0] < v572)
    {
      goto LABEL_256;
    }

    v571 = v196;
    v586[0] = v572;
    v586[1] = *&v593[0];
    sub_1AC7A0508();
    v198 = OUTLINED_FUNCTION_57_0();
    (v576)(v198);
    *&v589 = v135;
    v200 = *(v135 + 2);
    v199 = *(v135 + 3);
    v104 = v30;
    if (v200 >= v199 >> 1)
    {
      sub_1AC6313FC(v199 > 1, v200 + 1, 1);
      v104 = v557;
      v135 = v589;
    }

    *(v135 + 2) = v200 + 1;
    v201 = OUTLINED_FUNCTION_122_1();
    (v130)(v201, v195, v104);
    *&v589 = v135;
    v196 = (v571 + v30);
    v187 = (v187 - 1);
  }

  while (v187);
  sub_1AC752ED8();
  v532 = v202;

  v203 = v531;
  v592 = v531;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BEB0, &qword_1AC7A91A0);
  v204 = swift_allocObject();
  *(v204 + 16) = xmmword_1AC7A8780;
  *(v204 + 32) = 46;
  *(v204 + 40) = 0xE100000000000000;
  *(v204 + 48) = 63;
  *(v204 + 56) = 0xE100000000000000;
  v582 = v204;
  v205 = v538;
  sub_1AC68D304(v203, v538);
  v206 = v573;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v205, 1, v573);
  v572 = 32;
  if (EnumTagSinglePayload == 1)
  {

    sub_1AC5C720C(v205, &qword_1EB56C4F0, &qword_1AC7A9198);
    v571 = 0;
    v549 = v203;
    v32 = v585;
  }

  else
  {
    v208 = v548;
    sub_1AC637C7C();
    v30 = *(v208 + v206[6]);
    v551 = *(v208 + v206[7]);
    v135 = *(v30 + 16);

    v32 = 0;
    v209 = 0;
    v538 = MEMORY[0x1E69E7CC0];
LABEL_61:
    v104 = (v30 + 32 + 160 * v32);
    while (v135 != v32)
    {
      if (v32 >= *(v30 + 16))
      {
        goto LABEL_258;
      }

      memcpy(v586, v104, 0xA0uLL);
      if ((v586[17] & 1) == 0)
      {
        OUTLINED_FUNCTION_119_1();
        if (!v122)
        {
          v213 = OUTLINED_FUNCTION_50_2();
          sub_1AC637BCC(v213, v214);
LABEL_69:
          v215 = v538;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v594 = v215;
          v130 = v209;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v217 = OUTLINED_FUNCTION_35_2();
            sub_1AC6313DC(v217, v218, v219);
            v215 = v594;
          }

          v220 = *(v215 + 16);
          OUTLINED_FUNCTION_56_2();
          if (v185)
          {
            OUTLINED_FUNCTION_33_2();
            sub_1AC6313DC(v221, v222, v223);
            v215 = v594;
          }

          ++v32;
          *(v215 + 16) = v187;
          v538 = v215;
          OUTLINED_FUNCTION_72_1(v215 + 160 * v220);
          v209 = v130;
          goto LABEL_61;
        }
      }

      v187 = &v521;
      OUTLINED_FUNCTION_95_1();
      MEMORY[0x1EEE9AC00](v210);
      v130 = (&v521 - 4);
      *(&v521 - 2) = v593;
      v211 = OUTLINED_FUNCTION_50_2();
      sub_1AC637BCC(v211, v212);
      if (sub_1AC6F488C(v565, (&v521 - 4), v582))
      {
        goto LABEL_69;
      }

      sub_1AC637C28(v586);
      v104 += 20;
      ++v32;
    }

    v224 = v551;
    v225 = v551[2];
    v32 = MEMORY[0x1E69E7CC0];
    if (v225)
    {
      *&v594 = MEMORY[0x1E69E7CC0];
      sub_1AC6313BC(0, v225, 0);
      v104 = 0;
      v226 = v594;
      v565 = (v224 + 4);
      v549 = v225;
      while (2)
      {
        v568 = (v104 + 1);
        v569 = v226;
        OUTLINED_FUNCTION_55_2();
        sub_1AC61C258();
        v227 = *(v565 + v104);
        v588[0] = v32;
        v228 = *(v227 + 16);

        v130 = 0;
LABEL_77:
        v229 = v572 + 160 * v130;
        while (v228 != v130)
        {
          if (v130 >= *(v227 + 16))
          {
            __break(1u);
LABEL_253:
            v545 = v104;
            v324 = v541;
            goto LABEL_157;
          }

          memcpy(v586, (v227 + v229), 0xA0uLL);
          if ((v586[17] & 1) == 0)
          {
            OUTLINED_FUNCTION_119_1();
            if (!v122)
            {
              v233 = OUTLINED_FUNCTION_50_2();
              sub_1AC637BCC(v233, v234);
LABEL_85:
              v235 = swift_isUniquelyReferenced_nonNull_native();
              v588[0] = v32;
              v236 = v209;
              if ((v235 & 1) == 0)
              {
                v104 = v588;
                v237 = OUTLINED_FUNCTION_35_2();
                sub_1AC6313DC(v237, v238, v239);
                v32 = v588[0];
              }

              v240 = *(v32 + 16);
              OUTLINED_FUNCTION_56_2();
              if (v185)
              {
                v104 = v588;
                OUTLINED_FUNCTION_33_2();
                sub_1AC6313DC(v241, v242, v243);
                v32 = v588[0];
              }

              ++v130;
              *(v32 + 16) = v229;
              OUTLINED_FUNCTION_72_1(v32 + 160 * v240);
              v209 = v236;
              goto LABEL_77;
            }
          }

          OUTLINED_FUNCTION_95_1();
          MEMORY[0x1EEE9AC00](v230);
          v104 = &v521 - 4;
          *(&v521 - 2) = v593;
          v231 = OUTLINED_FUNCTION_50_2();
          sub_1AC637BCC(v231, v232);
          if (sub_1AC6F488C(v581, (&v521 - 4), v582))
          {
            goto LABEL_85;
          }

          sub_1AC637C28(v586);
          v229 += 160;
          ++v130;
        }

        v571 = v209;

        v226 = v569;
        *&v594 = v569;
        v244 = v569[2];
        OUTLINED_FUNCTION_56_2();
        if (v185)
        {
          OUTLINED_FUNCTION_33_2();
          sub_1AC6313BC(v245, v246, v247);
          v226 = v594;
        }

        v226[2] = v229;
        v226[v244 + 4] = v32;
        v104 = v568;
        v209 = v571;
        v32 = MEMORY[0x1E69E7CC0];
        if (v568 != v549)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v571 = v209;
      v226 = MEMORY[0x1E69E7CC0];
    }

    v248 = v547;
    v249 = v538;
    OUTLINED_FUNCTION_86_2(v538);
    v250 = v226[2];
    v251 = MEMORY[0x1E69E7CC0];
    v206 = v573;
    if (v250)
    {
      v586[0] = MEMORY[0x1E69E7CC0];
      v252 = OUTLINED_FUNCTION_63_1();
      sub_1AC631324(v252, v250, 0);
      v251 = v586[0];
      v253 = v226;
      v254 = v226 + 4;
      v32 = v583 + 32;
      v255 = v541;
      do
      {

        OUTLINED_FUNCTION_86_2(v256);

        v586[0] = v251;
        v257 = *(v251 + 16);
        if (v257 >= *(v251 + 24) >> 1)
        {
          OUTLINED_FUNCTION_33_2();
          sub_1AC631324(v261, v262, v263);
          v251 = v586[0];
        }

        *(v251 + 16) = v257 + 1;
        OUTLINED_FUNCTION_18_1();
        (*(v260 + 32))(v251 + (v259 & ~v258) + *(v260 + 72) * v257, v255, v585);
        v586[0] = v251;
        ++v254;
        --v250;
      }

      while (v250);
      v248 = v547;
      v206 = v573;
      v249 = v538;
      v226 = v253;
    }

    v264 = v545;
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_120_1();
    v265();
    *(v264 + v206[5]) = v251;
    *(v264 + v206[6]) = v249;
    *(v264 + v206[7]) = v226;
    sub_1AC6304D8();
    OUTLINED_FUNCTION_0_3();
    sub_1AC6332D8();
    OUTLINED_FUNCTION_1_4();
    sub_1AC633280();
    v266 = v592;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_31_2();
      sub_1AC60DCAC();
      v266 = v518;
    }

    v268 = *(v266 + 16);
    v267 = *(v266 + 24);
    v549 = v266;
    if (v268 >= v267 >> 1)
    {
      sub_1AC60DCAC();
      v549 = v519;
    }

    sub_1AC6332D8();
    (*(v583 + 8))(v248, v32);
    v130 = v549;
    v549[2] = v268 + 1;
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_32_0();
    sub_1AC637C7C();
    v592 = v130;
    sub_1AC6332D8();
  }

  v269 = v539;
  v270 = *(v539 + 16);
  v135 = MEMORY[0x1E69E7CC0];
  if (v270)
  {
    *&v593[0] = MEMORY[0x1E69E7CC0];
    v104 = v593;
    v565 = v270;
    sub_1AC6313BC(0, v270, 0);
    v30 = *&v593[0];
    OUTLINED_FUNCTION_106_2();
    v568 = (v269 + (v273 & ~v272));
    while (v271 < *(v269 + 16))
    {
      v32 = v271 + 1;
      v274 = v567;
      OUTLINED_FUNCTION_1_4();
      sub_1AC633280();
      v130 = *(v274 + v206[6]);
      *&v594 = v135;
      v275 = *(v130 + 16);

      v276 = 0;
LABEL_110:
      v104 = (v572 + 160 * v276);
      while (v275 != v276)
      {
        if (v276 >= *(v130 + 16))
        {
LABEL_176:
          __break(1u);
          goto LABEL_177;
        }

        memcpy(v586, v104 + v130, 0xA0uLL);
        if ((v586[17] & 1) == 0)
        {
          OUTLINED_FUNCTION_119_1();
          if (!v122)
          {
            v277 = OUTLINED_FUNCTION_50_2();
            sub_1AC637BCC(v277, v278);
            v279 = swift_isUniquelyReferenced_nonNull_native();
            *&v594 = v135;
            if ((v279 & 1) == 0)
            {
              v280 = OUTLINED_FUNCTION_35_2();
              sub_1AC6313DC(v280, v281, v282);
              v135 = v594;
            }

            v283 = *(v135 + 2);
            OUTLINED_FUNCTION_56_2();
            if (v185)
            {
              OUTLINED_FUNCTION_33_2();
              sub_1AC6313DC(v284, v285, v286);
              v135 = v594;
            }

            ++v276;
            *(v135 + 2) = 160;
            OUTLINED_FUNCTION_72_1(&v135[40 * v283]);
            goto LABEL_110;
          }
        }

        v104 += 20;
        ++v276;
      }

      sub_1AC6332D8();

      *&v593[0] = v30;
      v287 = *(v30 + 16);
      OUTLINED_FUNCTION_97_1();
      if (v185)
      {
        v104 = v593;
        OUTLINED_FUNCTION_64_3();
        sub_1AC6313BC(v288, v289, v290);
        v30 = *&v593[0];
      }

      *(v30 + 16) = v130;
      *(v30 + 8 * v287 + 32) = v135;
      v271 = v32;
      v206 = v573;
      v269 = v539;
      v135 = MEMORY[0x1E69E7CC0];
      if (v32 == v565)
      {
        v541 = v30;
        *&v593[0] = MEMORY[0x1E69E7CC0];
        v104 = v593;
        v30 = v565;
        sub_1AC64F75C(v565);
        v291 = 0;
        while (v291 < *(v539 + 16))
        {
          v567 = v291;
          OUTLINED_FUNCTION_1_4();
          v292 = v550;
          sub_1AC633280();
          v130 = *(v292 + v206[7]);
          v293 = *(v130 + 16);
          if (v293)
          {
            *&v594 = v135;
            v104 = &v594;
            sub_1AC64F774(v293);
            v294 = 0;
            v581 = (v130 + 32);
            v569 = v293;
            while (v294 < *(v130 + 16))
            {
              v295 = (v294 + 1);
              v296 = *(v581 + v294);
              v588[0] = v135;
              v297 = *(v296 + 16);

              v276 = 0;
LABEL_131:
              v104 = (v572 + 160 * v276);
              while (v297 != v276)
              {
                if (v276 >= *(v296 + 16))
                {
                  __break(1u);
                  goto LABEL_176;
                }

                memcpy(v586, v104 + v296, 0xA0uLL);
                if ((v586[17] & 1) == 0)
                {
                  OUTLINED_FUNCTION_119_1();
                  if (!v122)
                  {
                    v298 = OUTLINED_FUNCTION_50_2();
                    sub_1AC637BCC(v298, v299);
                    v300 = swift_isUniquelyReferenced_nonNull_native();
                    v588[0] = v135;
                    if ((v300 & 1) == 0)
                    {
                      v301 = OUTLINED_FUNCTION_35_2();
                      sub_1AC6313DC(v301, v302, v303);
                      v135 = v588[0];
                    }

                    v304 = *(v135 + 2);
                    OUTLINED_FUNCTION_56_2();
                    if (v185)
                    {
                      OUTLINED_FUNCTION_33_2();
                      sub_1AC6313DC(v305, v306, v307);
                      v135 = v588[0];
                    }

                    ++v276;
                    *(v135 + 2) = 160;
                    OUTLINED_FUNCTION_72_1(&v135[40 * v304]);
                    goto LABEL_131;
                  }
                }

                v104 += 20;
                ++v276;
              }

              v32 = v594;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v104 = &v594;
                v308 = OUTLINED_FUNCTION_35_2();
                sub_1AC6313BC(v308, v309, v310);
                v32 = v594;
              }

              v30 = v573;
              v311 = v569;
              v312 = *(v32 + 16);
              OUTLINED_FUNCTION_56_2();
              if (v185)
              {
                v104 = &v594;
                OUTLINED_FUNCTION_33_2();
                sub_1AC6313BC(v313, v314, v315);
                v32 = v594;
              }

              *(v32 + 16) = 160;
              *(v32 + 8 * v312 + 32) = v135;
              v294 = v295;
              v135 = MEMORY[0x1E69E7CC0];
              if (v295 == v311)
              {
                sub_1AC6332D8();
                v206 = v30;
                v30 = v565;
                goto LABEL_150;
              }
            }

            goto LABEL_257;
          }

          sub_1AC6332D8();
          v32 = v135;
LABEL_150:
          v104 = *&v593[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v316 = OUTLINED_FUNCTION_35_2();
            sub_1AC63139C(v316, v317, v318);
            v104 = *&v593[0];
          }

          v319 = v104[2];
          OUTLINED_FUNCTION_97_1();
          if (v185)
          {
            OUTLINED_FUNCTION_64_3();
            sub_1AC63139C(v321, v322, v323);
            v320 = v567;
            v104 = *&v593[0];
          }

          v291 = (v320 + 1);
          v104[2] = v130;
          v104[v319 + 4] = v32;
          v32 = v585;
          if (v291 == v30)
          {
            goto LABEL_253;
          }
        }

        goto LABEL_267;
      }
    }

    goto LABEL_259;
  }

  v545 = MEMORY[0x1E69E7CC0];
  v324 = MEMORY[0x1E69E7CC0];
LABEL_157:
  v325 = *(v324 + 16);
  v104 = MEMORY[0x1E69E7CC0];
  v326 = v542;
  v541 = v324;
  if (v325)
  {
    v586[0] = MEMORY[0x1E69E7CC0];
    v327 = OUTLINED_FUNCTION_63_1();
    sub_1AC631324(v327, v325, 0);
    v104 = v586[0];
    v328 = v324 + 32;
    do
    {

      OUTLINED_FUNCTION_86_2(v329);

      v586[0] = v104;
      v330 = v104[2];
      v130 = v330 + 1;
      if (v330 >= v104[3] >> 1)
      {
        OUTLINED_FUNCTION_64_3();
        sub_1AC631324(v334, v335, v336);
        v104 = v586[0];
      }

      v104[2] = v130;
      OUTLINED_FUNCTION_18_1();
      (*(v333 + 32))(v104 + (v332 & ~v331) + *(v333 + 72) * v330, v326, v32);
      v586[0] = v104;
      v328 += 8;
      --v325;
    }

    while (v325);
  }

  v135 = v545;
  v337 = *(v545 + 2);
  v276 = MEMORY[0x1E69E7CC0];
  v30 = v543;
  v544 = v104;
  if (v337)
  {
    v586[0] = MEMORY[0x1E69E7CC0];
    v338 = OUTLINED_FUNCTION_63_1();
    v569 = v339;
    sub_1AC63137C(v338, v339, 0);
    v104 = v544;
    v340 = 0;
    v341 = v586[0];
    v572 = (v135 + 8);
    v32 = v583 + 32;
    while (v340 < *(v135 + 2))
    {
      v130 = *(v572 + 8 * v340);
      v342 = *(v130 + 16);
      if (v342)
      {
        v581 = v340;
        v551 = v341;
        *&v589 = v276;

        v343 = OUTLINED_FUNCTION_127_1();
        sub_1AC631324(v343, v344, v345);
        v276 = v589;
        v346 = 32;
        do
        {

          OUTLINED_FUNCTION_86_2(v347);

          *&v589 = v276;
          v348 = v30;
          v350 = *(v276 + 16);
          v349 = *(v276 + 24);
          if (v350 >= v349 >> 1)
          {
            sub_1AC631324(v349 > 1, v350 + 1, 1);
            v276 = v589;
          }

          *(v276 + 16) = v350 + 1;
          OUTLINED_FUNCTION_18_1();
          (*(v353 + 32))(v276 + (v352 & ~v351) + *(v353 + 72) * v350, v348, v585);
          *&v589 = v276;
          v346 += 8;
          --v342;
          v30 = v348;
        }

        while (v342);

        v104 = v544;
        v135 = v545;
        v341 = v551;
      }

      v586[0] = v341;
      v354 = v341[2];
      OUTLINED_FUNCTION_97_1();
      if (v185)
      {
        OUTLINED_FUNCTION_64_3();
        v358 = v357;
        sub_1AC63137C(v359, v360, v361);
        v356 = v358;
        v355 = v569;
        v104 = v544;
        v341 = v586[0];
      }

      v340 = v356 + 1;
      v341[2] = v130;
      v341[v354 + 4] = v276;
      v276 = MEMORY[0x1E69E7CC0];
      if (v340 == v355)
      {
        goto LABEL_178;
      }
    }

    goto LABEL_260;
  }

LABEL_177:
  v341 = v276;
LABEL_178:
  v362 = v104[2];
  v130 = MEMORY[0x1E69E7CC0];
  v551 = v341;
  if (v362)
  {
    OUTLINED_FUNCTION_100_1();
    sub_1AC61C258();
    OUTLINED_FUNCTION_55_2();
    sub_1AC61C258();
    OUTLINED_FUNCTION_100_1();
    v363 = v541;
    sub_1AC61C258();
    OUTLINED_FUNCTION_55_2();
    sub_1AC61C258();
    OUTLINED_FUNCTION_100_1();
    sub_1AC61C258();
    OUTLINED_FUNCTION_55_2();
    sub_1AC61C258();
    v548 = *(v583 + 16);
    OUTLINED_FUNCTION_89_0();
    v365 = (v104 + v364);
    v366 = (v363 + 32);
    v367 = (v135 + 8);
    v368 = v341 + 4;
    v547 = *(v369 + 56);
    v550 = v369;
    v546 = (v369 - 8);
    v370 = v554;
    v104 = v555;
    v371 = v548;
    do
    {
      v572 = v130;
      v581 = v362;
      v569 = v365;
      v372 = v366;
      v373 = v367;
      v371(v104);
      v567 = v372;
      v568 = v368;
      v374 = *v368;
      v375 = *v372;
      v565 = v373;
      v376 = *v373;
      v377 = OUTLINED_FUNCTION_74_0();
      v371(v377);
      v379 = v572;
      v378 = v573;
      *(v370 + v573[5]) = v374;
      *(v370 + v378[6]) = v375;
      *(v370 + v378[7]) = v376;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_31_2();
        sub_1AC60DCAC();
        v379 = v383;
      }

      v380 = v379;
      OUTLINED_FUNCTION_97_1();
      v381 = v554;
      v382 = v581;
      if (v185)
      {
        OUTLINED_FUNCTION_64_3();
        sub_1AC60DCAC();
        v380 = v384;
      }

      v104 = v555;
      (*v546)(v555, v585);
      *(v380 + 16) = v374;
      v130 = v380;
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_32_0();
      sub_1AC637C7C();
      v367 = v565 + 8;
      v366 = v567 + 1;
      v368 = v568 + 1;
      v365 = (v569 + v547);
      v362 = (v382 - 1);
      v370 = v381;
    }

    while (v362);
  }

  v385 = v549;
  v386 = v549[2];
  v572 = v130;
  if (v386)
  {
    v30 = MEMORY[0x1E69E7CC0];
    v586[0] = MEMORY[0x1E69E7CC0];

    v387 = OUTLINED_FUNCTION_63_1();
    sub_1AC63137C(v387, v386, 0);
    OUTLINED_FUNCTION_23_0();
    v388 = v586[0];
    v565 = (v385 + v389);
    OUTLINED_FUNCTION_92_1();
    v554 = v391;
    v555 = v392;
    v135 = v573;
    v32 = v585;
    v130 = v580;
    v393 = v571;
    v567 = v386;
    while (v390 < v549[2])
    {
      v571 = v393;
      v568 = v390;
      v394 = v566;
      OUTLINED_FUNCTION_1_4();
      sub_1AC633280();
      *&v589 = v30;
      v395 = *(v394 + v135[6]);
      v396 = v563;
      OUTLINED_FUNCTION_86_2(v395);
      (*v555)(v564, v396, v32);
      sub_1AC60DD6C();
      v398 = *(OUTLINED_FUNCTION_117_1(v397) + 16);
      OUTLINED_FUNCTION_56_2();
      v569 = v388;
      if (v185)
      {
        OUTLINED_FUNCTION_33_2();
        sub_1AC60DD6C();
        OUTLINED_FUNCTION_117_1(v415);
      }

      v396[2] = v386;
      OUTLINED_FUNCTION_18_1();
      v402 = *(v401 + 32);
      (v402)(v396 + (v400 & ~v399) + *(v401 + 72) * v398, v564, v32);
      *&v589 = v396;
      v403 = *(v566 + v573[7]);
      v404 = *(v403 + 16);
      if (v404)
      {
        *&v593[0] = MEMORY[0x1E69E7CC0];
        sub_1AC64F744(v404);
        v405 = v403 + 32;
        v406 = *&v593[0];
        do
        {

          OUTLINED_FUNCTION_86_2(v407);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v408 = OUTLINED_FUNCTION_35_2();
            sub_1AC631324(v408, v409, v410);
            v406 = *&v593[0];
          }

          v412 = *(v406 + 16);
          v411 = *(v406 + 24);
          v32 = v412 + 1;
          if (v412 >= v411 >> 1)
          {
            sub_1AC631324(v411 > 1, v412 + 1, 1);
            v406 = *&v593[0];
          }

          *(v406 + 16) = v32;
          v130 = v580;
          OUTLINED_FUNCTION_120_1();
          v402();
          *&v593[0] = v406;
          v405 += 8;
          --v404;
        }

        while (v404);
      }

      else
      {
        v406 = MEMORY[0x1E69E7CC0];
      }

      v104 = &v589;
      sub_1AC659050(v406);
      (*v554)(v563, v32);
      v413 = v589;
      OUTLINED_FUNCTION_0_3();
      sub_1AC6332D8();
      v388 = v569;
      v586[0] = v569;
      v414 = v569[2];
      v135 = v573;
      if (v414 >= v569[3] >> 1)
      {
        v104 = v586;
        OUTLINED_FUNCTION_33_2();
        sub_1AC63137C(v416, v417, v418);
        v388 = v586[0];
      }

      v390 = (v568 + 1);
      v388[2] = v414 + 1;
      v388[v414 + 4] = v413;
      v386 = v567;
      v393 = v571;
      v30 = MEMORY[0x1E69E7CC0];
      if (v390 == v567)
      {
        v130 = v572;
        goto LABEL_204;
      }
    }

    goto LABEL_261;
  }

  v388 = MEMORY[0x1E69E7CC0];
  v32 = v585;
  v393 = v571;
LABEL_204:
  v135 = *(v533 + 16);
  if (v135)
  {
    v586[0] = MEMORY[0x1E69E7CC0];
    v419 = OUTLINED_FUNCTION_63_1();
    sub_1AC631324(v419, v135, 0);
    v420 = v533;
    v30 = 0;
    v568 = v586[0];
    v421 = v533 + v570;
    v130 = v583 + 32;
    v104 = v557;
    while (v30 < *(v420 + 16))
    {
      v422 = v540;
      OUTLINED_FUNCTION_48_3();
      v423();
      sub_1AC651120(v422, v388, v562);
      v571 = v393;
      if (v393)
      {
        goto LABEL_285;
      }

      OUTLINED_FUNCTION_125_0();
      v424();
      v425 = v568;
      v586[0] = v568;
      v427 = v568[2];
      v426 = v568[3];
      v32 = v427 + 1;
      if (v427 >= v426 >> 1)
      {
        sub_1AC631324(v426 > 1, v427 + 1, 1);
        v104 = v557;
        v425 = v586[0];
      }

      ++v30;
      v425[2] = v32;
      v428 = v425;
      OUTLINED_FUNCTION_89_0();
      OUTLINED_FUNCTION_120_1();
      v429();
      v568 = v428;
      v586[0] = v428;
      v421 += v574;
      v420 = v533;
      v393 = v571;
      if (v135 == v30)
      {
        v130 = v572;
        goto LABEL_213;
      }
    }

    goto LABEL_262;
  }

  v571 = v393;
  v568 = MEMORY[0x1E69E7CC0];
LABEL_213:
  v30 = *(v130 + 16);
  v430 = v553;
  v569 = v388;
  v135 = v573;
  if (v30)
  {
    v431 = MEMORY[0x1E69E7CC0];
    v586[0] = MEMORY[0x1E69E7CC0];

    v432 = OUTLINED_FUNCTION_63_1();
    sub_1AC63137C(v432, v30, 0);
    OUTLINED_FUNCTION_23_0();
    v433 = v586[0];
    v565 = (v130 + v434);
    v566 = v30;
    OUTLINED_FUNCTION_92_1();
    v563 = v436;
    v564 = v437;
    while (v435 < *(v130 + 16))
    {
      v567 = v435;
      OUTLINED_FUNCTION_1_4();
      sub_1AC633280();
      *&v589 = v431;
      v438 = v560;
      OUTLINED_FUNCTION_86_2(*(v430 + v135[6]));
      (*v564)(v561, v438, v32);
      sub_1AC60DD6C();
      v440 = OUTLINED_FUNCTION_117_1(v439);
      v442 = *(v440 + 16);
      v441 = *(v440 + 24);
      v580 = v433;
      if (v442 >= v441 >> 1)
      {
        OUTLINED_FUNCTION_33_2();
        sub_1AC60DD6C();
        OUTLINED_FUNCTION_117_1(v458);
      }

      *(v438 + 16) = v442 + 1;
      OUTLINED_FUNCTION_18_1();
      v446 = *(v445 + 32);
      (v446)(v438 + (v444 & ~v443) + *(v445 + 72) * v442, v561, v32);
      *&v589 = v438;
      v447 = *(v430 + v573[7]);
      v448 = *(v447 + 16);
      if (v448)
      {
        *&v593[0] = MEMORY[0x1E69E7CC0];
        sub_1AC64F744(v448);
        v449 = v447 + 32;
        v450 = *&v593[0];
        do
        {

          OUTLINED_FUNCTION_86_2(v451);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v452 = OUTLINED_FUNCTION_35_2();
            sub_1AC631324(v452, v453, v454);
            v450 = *&v593[0];
          }

          v456 = *(v450 + 16);
          v455 = *(v450 + 24);
          v32 = v456 + 1;
          if (v456 >= v455 >> 1)
          {
            sub_1AC631324(v455 > 1, v456 + 1, 1);
            v450 = *&v593[0];
          }

          *(v450 + 16) = v32;
          OUTLINED_FUNCTION_120_1();
          v446();
          *&v593[0] = v450;
          v449 += 8;
          --v448;
        }

        while (v448);
        v431 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v431 = MEMORY[0x1E69E7CC0];
        v450 = MEMORY[0x1E69E7CC0];
      }

      v104 = &v589;
      sub_1AC659050(v450);
      (*v563)(v560, v32);
      v30 = v589;
      OUTLINED_FUNCTION_0_3();
      v430 = v553;
      sub_1AC6332D8();
      v433 = v580;
      v586[0] = v580;
      v457 = *(v580 + 16);
      v135 = v573;
      if (v457 >= *(v580 + 24) >> 1)
      {
        v104 = v586;
        OUTLINED_FUNCTION_33_2();
        sub_1AC63137C(v459, v460, v461);
        v433 = v586[0];
      }

      v435 = (v567 + 1);
      *(v433 + 16) = v457 + 1;
      *(v433 + 8 * v457 + 32) = v30;
      v130 = v572;
      if (v435 == v566)
      {
        goto LABEL_232;
      }
    }

    goto LABEL_263;
  }

  v433 = MEMORY[0x1E69E7CC0];
LABEL_232:
  v462 = *(v532 + 16);
  v463 = v571;
  if (v462)
  {
    v586[0] = MEMORY[0x1E69E7CC0];
    sub_1AC64F744(v462);
    v464 = v532;
    v104 = v557;
    v30 = 0;
    v32 = v532 + v570;
    v580 = v433;
    v581 = (v583 + 32);
    while (v30 < *(v464 + 16))
    {
      v465 = v462;
      v466 = v552;
      OUTLINED_FUNCTION_48_3();
      v467();
      sub_1AC651120(v466, v433, v559);
      if (v463)
      {
        goto LABEL_285;
      }

      OUTLINED_FUNCTION_125_0();
      v468();
      v130 = v586[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v469 = OUTLINED_FUNCTION_35_2();
        sub_1AC631324(v469, v470, v471);
        v104 = v557;
        v130 = v586[0];
      }

      v472 = *(v130 + 16);
      OUTLINED_FUNCTION_56_2();
      if (v185)
      {
        OUTLINED_FUNCTION_33_2();
        sub_1AC631324(v476, v477, v478);
        v104 = v557;
        v130 = v586[0];
      }

      ++v30;
      *(v130 + 16) = v466;
      OUTLINED_FUNCTION_18_1();
      (*(v475 + 32))(v130 + (v474 & ~v473) + *(v475 + 72) * v472, v559, v585);
      v586[0] = v130;
      v32 += v574;
      v462 = v465;
      v464 = v532;
      v463 = 0;
      v433 = v580;
      if (v465 == v30)
      {
        goto LABEL_243;
      }
    }

    goto LABEL_264;
  }

  v130 = MEMORY[0x1E69E7CC0];
LABEL_243:
  v479 = v537;
  v480 = v549;
  sub_1AC625BBC(v549, v537);
  v481 = OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_96(v481, v482, v135);
  if (v122)
  {
    goto LABEL_277;
  }

  v585 = v130;
  v483 = v135;
  v484 = *(v479 + v135[6]);

  OUTLINED_FUNCTION_0_3();
  sub_1AC6332D8();
  if (!*(v484 + 16))
  {
LABEL_278:

    __break(1u);
    goto LABEL_279;
  }

  OUTLINED_FUNCTION_100_1();
  sub_1AC61C258();

  v485 = v536;
  sub_1AC68D304(v480, v536);
  v486 = OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_96(v486, v487, v483);
  if (v122)
  {
LABEL_279:
    __break(1u);
    goto LABEL_280;
  }

  v488 = *(v485 + *(v483 + 24));

  OUTLINED_FUNCTION_0_3();
  sub_1AC6332D8();
  if (!*(v488 + 16))
  {
LABEL_280:

    __break(1u);
    goto LABEL_281;
  }

  sub_1AC61C258();

  sub_1AC7A0578();
  v489 = v534;
  v490 = v572;
  sub_1AC625BBC(v572, v534);
  OUTLINED_FUNCTION_96(v489, 1, v483);
  if (v122)
  {
LABEL_281:
    __break(1u);
    goto LABEL_282;
  }

  v491 = *(v489 + *(v483 + 24));

  OUTLINED_FUNCTION_0_3();
  sub_1AC6332D8();
  if (!*(v491 + 16))
  {
LABEL_282:

    __break(1u);
    goto LABEL_283;
  }

  OUTLINED_FUNCTION_100_1();
  sub_1AC61C258();

  v492 = v535;
  sub_1AC68D304(v490, v535);
  v493 = OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_96(v493, v494, v483);
  if (v122)
  {
LABEL_283:
    __break(1u);
    goto LABEL_284;
  }

  v495 = *(v492 + *(v483 + 24));

  OUTLINED_FUNCTION_0_3();
  sub_1AC6332D8();
  v496 = *(v495 + 16);
  if (v496)
  {

    swift_setDeallocating();
    sub_1AC7240CC();

    sub_1AC61C258();
    memcpy(v586, (v495 + 160 * v496 - 128), 0xA0uLL);
    v497 = OUTLINED_FUNCTION_50_2();
    sub_1AC637BCC(v497, v498);

    sub_1AC637C28(v586);
    sub_1AC7A0578();
    v499 = v527;
    v597 = *(v527 + 48);
    v598 = *(v527 + 64);
    sub_1AC752B88();
    v501 = v500;

    v502 = *(v499 + 104);
    v503 = *(v499 + 216);
    v594 = *(v499 + 200);
    v595 = v503;
    v596 = *(v499 + 232);
    v504 = v593[1];
    v505 = v525;
    *v525 = v593[0];
    v505[1] = v504;
    v506 = v597;
    v505[2] = v593[2];
    v505[3] = v506;
    *(v505 + 8) = v598;
    *(v505 + 9) = v501;
    v507 = v549;
    *(v505 + 10) = MEMORY[0x1E69E7CC0];
    *(v505 + 11) = v507;
    *(v505 + 12) = v533;
    *(v505 + 104) = v502;
    *(v505 + 108) = v530;
    v508 = v528;
    *(v505 + 29) = v528;
    *(v505 + 32) = v602;
    *(v505 + 15) = v601;
    *(v505 + 148) = v600;
    *(v505 + 132) = v599;
    v505[10] = 0u;
    v505[11] = 0u;
    *(v505 + 192) = 1;
    *(v505 + 232) = *(v499 + 232);
    *(v505 + 200) = *(v499 + 200);
    *(v505 + 216) = *(v499 + 216);
    *(v505 + 30) = 0;
    *(v505 + 31) = 0;
    *(v505 + 256) = 1;
    OUTLINED_FUNCTION_131_1();
    OUTLINED_FUNCTION_131_1();
    OUTLINED_FUNCTION_74_0();
    sub_1AC752B88();
    v510 = v509;

    v511 = v590;
    v512 = v526;
    *v526 = v589;
    v512[1] = v511;
    v513 = v597;
    v512[2] = v591;
    v512[3] = v513;
    *(v512 + 132) = v599;
    v514 = v594;
    *(v512 + 216) = v595;
    *(v512 + 8) = v598;
    *(v512 + 9) = v510;
    v515 = v572;
    *(v512 + 10) = MEMORY[0x1E69E7CC0];
    *(v512 + 11) = v515;
    *(v512 + 12) = v532;
    *(v512 + 104) = v502;
    *(v512 + 108) = v530;
    *(v512 + 29) = v508;
    v516 = v601;
    *(v512 + 32) = v602;
    *(v512 + 15) = v516;
    *(v512 + 148) = v600;
    *(v512 + 20) = 0;
    *(v512 + 21) = 0;
    v517 = *(v499 + 184);
    *(v512 + 22) = 0;
    *(v512 + 23) = v517;
    *(v512 + 192) = *(v499 + 192);
    *(v512 + 232) = v596;
    *(v512 + 200) = v514;
    *(v512 + 30) = 0;
    *(v512 + 31) = 0;
    *(v512 + 256) = 1;
    v529(v505);
    goto LABEL_10;
  }

LABEL_284:

  __break(1u);
LABEL_285:
  OUTLINED_FUNCTION_125_0();
  v520();

  __break(1u);
}