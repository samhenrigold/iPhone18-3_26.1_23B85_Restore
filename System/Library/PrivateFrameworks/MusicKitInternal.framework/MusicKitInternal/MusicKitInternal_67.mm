uint64_t sub_1D54B26CC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D5610088();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - v7;
  v9 = type metadata accessor for MusicItemTypedIdentifier(0);
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7250, &unk_1D56685C0);
  v13 = sub_1D5615B18();
  result = v12;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = v12 + 56;
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 56);
    v20 = (v17 + 63) >> 6;
    v44 = (v4 + 32);
    v42 = v1;
    v43 = (v4 + 8);
    v21 = v13 + 56;
    v47 = v8;
    v48 = v3;
    v46 = result;
    if (v19)
    {
      while (1)
      {
        v22 = __clz(__rbit64(v19));
        v52 = (v19 - 1) & v19;
LABEL_12:
        v25 = *(result + 48);
        v51 = *(v49 + 72);
        sub_1D54ACBB0(v25 + v51 * (v22 | (v15 << 6)), v11);
        sub_1D56162D8();
        sub_1D5614E28();
        v26 = *(v11 + 2);
        MEMORY[0x1DA6EC0D0](*(v26 + 16));
        v27 = *(v26 + 16);
        if (v27)
        {
          v28 = v26 + 40;
          do
          {

            sub_1D5614E28();

            v28 += 16;
            --v27;
          }

          while (v27);
        }

        v29 = v50;
        sub_1D560D9A8();
        sub_1D54B4BA4(&qword_1EDD53C28, MEMORY[0x1E6974F80], MEMORY[0x1E6974F88]);
        sub_1D5614CB8();
        v30 = v47;
        sub_1D4F39AB0(&v11[*(v29 + 28)], v47, &qword_1EC7EA358, &unk_1D561DF50);
        v31 = v48;
        if (__swift_getEnumTagSinglePayload(v30, 1, v48) == 1)
        {
          sub_1D56162F8();
        }

        else
        {
          v32 = v45;
          (*v44)(v45, v30, v31);
          sub_1D56162F8();
          sub_1D54B4BA4(&qword_1EDD53358, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BD8]);
          sub_1D5614CB8();
          (*v43)(v32, v31);
        }

        result = sub_1D5616328();
        v33 = -1 << *(v13 + 32);
        v34 = result & ~v33;
        v35 = v34 >> 6;
        if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
        {
          break;
        }

        v36 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
        *(v21 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
        sub_1D54B5AC0(v11, *(v13 + 48) + v36 * v51);
        ++*(v13 + 16);
        result = v46;
        v19 = v52;
        if (!v52)
        {
          goto LABEL_7;
        }
      }

      v37 = 0;
      v38 = (63 - v33) >> 6;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v21 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v42;
          goto LABEL_31;
        }

        v24 = *(v16 + 8 * v15);
        ++v23;
        if (v24)
        {
          v22 = __clz(__rbit64(v24));
          v52 = (v24 - 1) & v24;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v13;
  }

  return result;
}

uint64_t sub_1D54B2C1C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1D560D838();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7248, &qword_1D56685B8);
  v7 = sub_1D5615B18();
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
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1D54B4BA4(&qword_1EDD53DC0, MEMORY[0x1E6974F58], MEMORY[0x1E6974F68]);
        result = sub_1D5614CA8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1D54B2F34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDED8, &qword_1D5628A58);
  result = sub_1D5615B18();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        sub_1D56162D8();
        MEMORY[0x1DA6EC0D0](v15);
        result = sub_1D5616328();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);

        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D54B3158(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDED0, &qword_1D5628A50);
  result = sub_1D5615B18();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        sub_1D56162D8();

        sub_1D5614E28();
        result = sub_1D5616328();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D54B3388(uint64_t a1)
{
  v2 = v1;
  v3 = _s15PersistentEntryVMa(0);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7240, &qword_1D56685B0);
  result = sub_1D5615B18();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v1;
    v29 = v6;
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
    v15 = result + 56;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v6 + 48);
        v32 = *(v30 + 72);
        sub_1D54ACBB0(v19 + v32 * (v16 | (v9 << 6)), v5);
        sub_1D56162D8();
        sub_1D560D838();
        sub_1D54B4BA4(&qword_1EDD53DC0, MEMORY[0x1E6974F58], MEMORY[0x1E6974F68]);
        sub_1D5614CB8();
        sub_1D560D9A8();
        sub_1D54B4BA4(&qword_1EDD53C28, MEMORY[0x1E6974F80], MEMORY[0x1E6974F88]);
        sub_1D5614CB8();
        sub_1D560C328();
        sub_1D54B4BA4(&qword_1EDD5CF60, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
        sub_1D5614CB8();
        result = sub_1D5616328();
        v20 = -1 << *(v8 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
        v6 = v29;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        result = sub_1D54B5AC0(v5, *(v8 + 48) + v23 * v32);
        ++*(v8 + 16);
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      v6 = v29;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v8;
  }

  return result;
}

void sub_1D54B376C()
{
  OUTLINED_FUNCTION_30_14();
  OUTLINED_FUNCTION_112_15();
  v6 = OUTLINED_FUNCTION_313_1(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_63_1();
  sub_1D5615B18();
  OUTLINED_FUNCTION_404();
  if (v8)
  {
    v20 = v0;
    v9 = 0;
    OUTLINED_FUNCTION_88_19();
    if (v0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_250_2();
LABEL_9:
        v14 = *(*(v1 + 48) + (v10 | (v9 << 6)));
        OUTLINED_FUNCTION_436();
        MEMORY[0x1DA6EC0D0](v14);
        sub_1D5616328();
        OUTLINED_FUNCTION_127_11();
        if (v15)
        {
          break;
        }

        OUTLINED_FUNCTION_173_5();
LABEL_17:
        OUTLINED_FUNCTION_110_14(v16);
        *(v19 + v18) = v14;
        OUTLINED_FUNCTION_253_2();
        if (!v0)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_266_0();
      while (1)
      {
        OUTLINED_FUNCTION_418();
        if (v15)
        {
          if (v17)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_342_1();
        if (!v15)
        {
          OUTLINED_FUNCTION_171_7();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v11 = v9;
      while (1)
      {
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v9 >= v3)
        {

          v0 = v20;
          goto LABEL_21;
        }

        ++v11;
        if (*(v1 + 56 + 8 * v9))
        {
          OUTLINED_FUNCTION_113_2();
          v0 = (v13 & v12);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v0 = v2;
    OUTLINED_FUNCTION_31_19();
  }
}

uint64_t sub_1D54B38A0(uint64_t a1)
{
  v2 = v1;
  v38 = _s13PersistedDateVMa(0);
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v7 = _s10DescriptorVMa(0);
  v37 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71D8, &qword_1D5668458);
  result = sub_1D5615B18();
  v12 = result;
  if (*(v10 + 16))
  {
    v32 = v1;
    v33 = v7;
    v13 = 0;
    v14 = v10 + 56;
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = result + 56;
    v35 = result;
    v36 = v10;
    if (v17)
    {
      while (1)
      {
        v20 = __clz(__rbit64(v17));
        v40 = (v17 - 1) & v17;
LABEL_12:
        v23 = *(v10 + 48);
        v39 = *(v37 + 72);
        sub_1D54ACBB0(v23 + v39 * (v20 | (v13 << 6)), v9);
        sub_1D56162D8();
        sub_1D5614E28();
        sub_1D560C328();
        sub_1D54B4BA4(&qword_1EDD5CF60, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
        sub_1D5614CB8();
        sub_1D56162F8();
        MEMORY[0x1DA6EC0D0](*&v9[v7[7]]);
        MEMORY[0x1DA6EC0D0](*&v9[v7[8]]);
        sub_1D5614CB8();
        sub_1D4F39AB0(&v9[v7[10]], v6, &qword_1EC7EB470, &qword_1D561F3D0);
        if (__swift_getEnumTagSinglePayload(v6, 1, v38) == 1)
        {
          sub_1D56162F8();
        }

        else
        {
          sub_1D54B5AC0(v6, v34);
          sub_1D56162F8();
          sub_1D5614CB8();
          v7 = v33;
          sub_1D54B4B54();
        }

        result = sub_1D5616328();
        v12 = v35;
        v10 = v36;
        v24 = -1 << *(v35 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v19 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v19 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
        *(v19 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        result = sub_1D54B5AC0(v9, *(v12 + 48) + v27 * v39);
        ++*(v12 + 16);
        v17 = v40;
        if (!v40)
        {
          goto LABEL_7;
        }
      }

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
        v31 = *(v19 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_7:
      v21 = v13;
      while (1)
      {
        v13 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v13 >= v18)
        {

          v2 = v32;
          goto LABEL_28;
        }

        v22 = *(v14 + 8 * v13);
        ++v21;
        if (v22)
        {
          v20 = __clz(__rbit64(v22));
          v40 = (v22 - 1) & v22;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v12;
  }

  return result;
}

void sub_1D54B3D80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71C8, &unk_1D5668440);
  v4 = sub_1D5615B18();
  v5 = v4;
  if (*(v3 + 16))
  {
    v29 = v3;
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
    v12 = v4 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
        sub_1D56162D8();
        MEMORY[0x1DA6EC0D0](*(v16 + 16));
        v17 = *(v16 + 16);
        if (v17)
        {
          v18 = (v16 + 32);
          do
          {
            v19 = *v18++;
            MEMORY[0x1DA6EC0D0](v19);
            --v17;
          }

          while (v17);
        }

        v20 = sub_1D5616328();
        v21 = -1 << *(v5 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
        v3 = v29;
        *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        *(*(v5 + 48) + 8 * v24) = v16;
        ++*(v5 + 16);

        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_28;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }
}

uint64_t sub_1D54B3FCC(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for MusicSuggestedSongsEntry(0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F30, &qword_1D5667A00);
  result = sub_1D5615B18();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
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
    v15 = result + 56;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v6 + 48);
        v20 = *(v32 + 72);
        sub_1D54ACBB0(v19 + v20 * (v16 | (v9 << 6)), v5);
        sub_1D56162D8();
        sub_1D5613838();
        sub_1D54B4BA4(&qword_1EC7EB458, MEMORY[0x1E6976BE8], MEMORY[0x1E6976BF8]);
        sub_1D5614CB8();
        sub_1D5614E28();
        result = sub_1D5616328();
        v21 = -1 << *(v8 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        result = sub_1D54B5AC0(v5, *(v8 + 48) + v24 * v20);
        ++*(v8 + 16);
        v6 = v31;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v30;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1D54B4308(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71B0, &qword_1D56683E8);
  result = sub_1D5615B18();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1D56162D8();
        sub_1D5614E28();

        result = sub_1D5616328();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D54B4664@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v47 = a3;
  v5 = type metadata accessor for MusicSuggestedSongsEntry(0);
  v50 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v46 - v9;
  v49 = v3;
  v11 = *v3;
  sub_1D56162D8();
  v12 = sub_1D5613838();
  v46[0] = sub_1D54B4BA4(&qword_1EC7EB458, MEMORY[0x1E6976BE8], MEMORY[0x1E6976BF8]);
  v46[1] = v12;
  sub_1D5614CB8();
  v51 = v5;
  v13 = (a1 + *(v5 + 20));
  v14 = *v13;
  v15 = v13[1];
  sub_1D5614E28();
  v16 = sub_1D5616328();
  v17 = -1 << *(v11 + 32);
  v18 = v16 & ~v17;
  if ((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    v20 = *(v50 + 72);
    while (1)
    {
      sub_1D54ACBB0(*(v11 + 48) + v20 * v18, v10);
      if (sub_1D56137A8())
      {
        v21 = &v10[*(v51 + 20)];
        v22 = *v21 == v14 && *(v21 + 1) == v15;
        if (v22 || (sub_1D5616168() & 1) != 0)
        {
          break;
        }
      }

      sub_1D54B4B54();
      v18 = (v18 + 1) & v19;
      if (((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_1D54B4B54();
    v24 = 0;
    v23 = 1;
  }

  else
  {
LABEL_10:
    v23 = 0;
    v24 = 1;
  }

  v25 = *(v11 + 16);
  v26 = v25 + v24;
  if (__OFADD__(v25, v24))
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v27 = *(v11 + 24);
  v28 = v49;
  if (v27 >= v26 && (v48 & 1) != 0)
  {
    if (v23)
    {
LABEL_16:
      v29 = *(v50 + 72) * v18;
LABEL_36:
      v44 = *v28;
      v43 = v47;
      sub_1D54B5AC0(*(v44 + 48) + v29, v47);
      sub_1D54B5AC0(a1, *(v44 + 48) + v29);
      v42 = 0;
      return __swift_storeEnumTagSinglePayload(v43, v42, 1, v51);
    }

    goto LABEL_21;
  }

  if (v48)
  {
    sub_1D54AED34(v26);
  }

  else
  {
    if (v27 >= v26)
    {
      sub_1D54B1E18();
      if (v23)
      {
        goto LABEL_16;
      }

LABEL_21:
      v30 = v50;
      goto LABEL_33;
    }

    sub_1D54B3FCC(v26);
  }

  v48 = v23;
  v31 = *v28;
  sub_1D56162D8();
  sub_1D5614CB8();
  sub_1D5614E28();
  v32 = sub_1D5616328();
  v33 = -1 << *(v31 + 32);
  v18 = v32 & ~v33;
  if ((*(v31 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v34 = ~v33;
    v35 = *(v50 + 72);
    while (1)
    {
      v29 = v35 * v18;
      sub_1D54ACBB0(*(v31 + 48) + v35 * v18, v8);
      if (sub_1D56137A8())
      {
        v36 = &v8[*(v51 + 20)];
        v37 = *v36 == v14 && *(v36 + 1) == v15;
        if (v37 || (sub_1D5616168() & 1) != 0)
        {
          break;
        }
      }

      sub_1D54B4B54();
      v18 = (v18 + 1) & v34;
      if (((*(v31 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    sub_1D54B4B54();
    v28 = v49;
    if (v48)
    {
      goto LABEL_36;
    }
  }

  else
  {
LABEL_32:
    v28 = v49;
    v30 = v50;
    if ((v48 & 1) == 0)
    {
LABEL_33:
      v38 = *v28;
      *(*v28 + 8 * (v18 >> 6) + 56) |= 1 << v18;
      sub_1D54B5AC0(a1, *(v38 + 48) + *(v30 + 72) * v18);
      v39 = *(v38 + 16);
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (!v40)
      {
        *(v38 + 16) = v41;
        v42 = 1;
        v43 = v47;
        return __swift_storeEnumTagSinglePayload(v43, v42, 1, v51);
      }

      goto LABEL_39;
    }
  }

LABEL_40:
  result = sub_1D5616228();
  __break(1u);
  return result;
}

uint64_t sub_1D54B4B54()
{
  v1 = OUTLINED_FUNCTION_64_1();
  v2(v1);
  OUTLINED_FUNCTION_4_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1D54B4BA4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_1D54B4C3C(uint64_t a1)
{
  type metadata accessor for MusicSuggestedSongsViewModelSeed(319);
  if (v1 <= 0x3F)
  {
    sub_1D54B56D4(319);
    if (v2 <= 0x3F)
    {
      sub_1D54B5738();
      if (v3 <= 0x3F)
      {
        sub_1D514E26C(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of MusicSuggestedSongsViewModel.didSelect(_:)()
{
  return (*(*v0 + 920))();
}

{
  return (*(*v0 + 928))();
}

{
  return (*(*v0 + 984))();
}

uint64_t dispatch thunk of MusicSuggestedSongsViewModel.refresh()()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_58_0();
  v4 = (*(v1 + 952) + **(v1 + 952));
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_26_12(v2);

  return v4();
}

void sub_1D54B56D4(uint64_t a1)
{
  if (!qword_1EC7F6EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F6EC0, &qword_1D5667838);
    v1 = sub_1D560C928();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7F6EB8);
    }
  }
}

void sub_1D54B5738()
{
  if (!qword_1EDD5D848)
  {
    v0 = sub_1D560C928();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5D848);
    }
  }
}

void sub_1D54B5788(uint64_t a1)
{
  sub_1D5614898();
  if (v1 <= 0x3F)
  {
    sub_1D54B57FC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D54B57FC(uint64_t a1)
{
  if (!qword_1EC7F6ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC3B0, &qword_1D5630D90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EFBD8, &unk_1D56346A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC7F6ED8);
    }
  }
}

unsigned __int8 *getEnumTagSinglePayload for MusicSuggestedSongsViewModel.RefreshStatus(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
LABEL_18:
    v6 = *result;
    if (v6 <= 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = *result;
    }

    v8 = v7 - 2;
    if (v6 >= 2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    if (v9 >= 3)
    {
      return (v9 - 2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 4;
    if (a2 + 4 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 4);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicSuggestedSongsViewModel.RefreshStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFC)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFB)
  {
    v7 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D54B5A18(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = *a1;
  }

  v3 = v2 - 2;
  if (v1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D54B5A4C()
{
  result = qword_1EC7F6EE0;
  if (!qword_1EC7F6EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6EE0);
  }

  return result;
}

uint64_t sub_1D54B5AC0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

uint64_t sub_1D54B5BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1D54B5C70;

  return sub_1D54845B8(a2, a3, a4, a5, a6);
}

uint64_t sub_1D54B5C70()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  OUTLINED_FUNCTION_59_1();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  *v4 = v2 & 1;
  OUTLINED_FUNCTION_55();

  return v7();
}

uint64_t sub_1D54B5D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547F8A0(a2, a3, a4);
}

uint64_t sub_1D54B5E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547E860(a2, a3, a4);
}

uint64_t sub_1D54B5F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, char a7, uint64_t *a8)
{
  v14 = *a6;
  v15 = *a8;
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1D4E73560;

  return sub_1D548F450(a1, a2, a3, a4, a5, v14, a7 & 1, v15);
}

uint64_t sub_1D54B6008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547FA04(a2, a3, a4);
}

uint64_t sub_1D54B60B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547EAF4(a2, a3, a4);
}

uint64_t sub_1D54B61A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547FB68(a2, a3, a4);
}

uint64_t sub_1D54B6258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547EC58(a2, a3, a4);
}

uint64_t sub_1D54B6348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a5;
  v17 = *(a5 + 8);
  v8 = *(a5 + 16);
  v9 = *a6;
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_1D4E6ED20;

  return sub_1D548FA58(a1, a2, a3, a4, v12, v17, v8, v9);
}

uint64_t sub_1D54B6468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_1D54768E8(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_1D54B6494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547FCCC(a2, a3, a4);
}

uint64_t sub_1D54B6544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547EDBC(a2, a3, a4);
}

uint64_t sub_1D54B6634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547FE30(a2, a3, a4);
}

uint64_t sub_1D54B66E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547EF20(a2, a3, a4);
}

uint64_t sub_1D54B67D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547FF94(a2, a3, a4);
}

uint64_t sub_1D54B6884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547F084(a2, a3, a4);
}

uint64_t sub_1D54B6974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D54800F8(a2, a3, a4);
}

uint64_t sub_1D54B6A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547F1E8(a2, a3, a4);
}

uint64_t sub_1D54B6B4C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_4_142();

  return sub_1D5480E4C(v3, v4, v5, v6);
}

uint64_t sub_1D54B6D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D548025C(a2, a3, a4);
}

uint64_t sub_1D54B6E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547F34C(a2, a3, a4);
}

uint64_t sub_1D54B6EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *__src, char a7, const void *a8)
{
  memcpy(v8 + 12, __src, 0x50uLL);
  memcpy(v8 + 2, a8, 0x50uLL);
  v16 = swift_task_alloc();
  v8[22] = v16;
  *v16 = v8;
  v16[1] = sub_1D54B7004;

  return sub_1D5490A78(a1, a2, a3, a4, a5, (v8 + 12), a7 & 1, v8 + 1);
}

uint64_t sub_1D54B7004()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D54B70E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D5480548(a2, a3, a4);
}

uint64_t sub_1D54B7194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547F4B0(a2, a3, a4);
}

uint64_t sub_1D54B7284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D54806AC(a2, a3, a4);
}

uint64_t sub_1D54B7334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1D54BE46C;

  return sub_1D547F614(a2, a3, a4);
}

uint64_t sub_1D54B73E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71A0, &qword_1D5668368);
  v5[28] = v7;
  v5[29] = *(v7 - 8);
  v5[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABF0, &qword_1D561D7F0);
  v5[31] = swift_task_alloc();
  v8 = sub_1D560DF28();
  v5[32] = v8;
  v5[33] = *(v8 - 8);
  v5[34] = swift_task_alloc();
  v9 = sub_1D560DF38();
  v5[35] = v9;
  v5[36] = *(v9 - 8);
  v5[37] = swift_task_alloc();
  v10 = sub_1D560EA18();
  v5[38] = v10;
  v5[39] = *(v10 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7198, &qword_1D5668358);
  v5[43] = swift_task_alloc();
  v11 = sub_1D560E8E8();
  v12 = MEMORY[0x1E69753C8];
  v5[5] = v11;
  v5[6] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5 + 2);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, a1, v11);

  return MEMORY[0x1EEE6DFA0](sub_1D54B76A4, 0, 0);
}

uint64_t sub_1D54B76A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  sub_1D4F39AB0(v10[26], v10[43], &qword_1EC7F7198, &qword_1D5668358);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7178, &qword_1D56682F8);
  OUTLINED_FUNCTION_22_11(v11);
  if (!v12)
  {
    OUTLINED_FUNCTION_71();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        if (qword_1EDD5D8A8 != -1)
        {
          OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
        }

        v14 = sub_1D560C758();
        OUTLINED_FUNCTION_62_4(v14, qword_1EDD76DC8);
        v15 = sub_1D560C738();
        v16 = sub_1D56156C8();
        if (OUTLINED_FUNCTION_74_12(v16))
        {
          v17 = OUTLINED_FUNCTION_63_12();
          OUTLINED_FUNCTION_86_10(v17);
          OUTLINED_FUNCTION_66_26();
          _os_log_impl(v18, v19, v20, v21, v22, 2u);
          OUTLINED_FUNCTION_54();
        }

        OUTLINED_FUNCTION_77_21();

        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_348_0();

        return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
      }
    }

    else
    {
      v32 = OUTLINED_FUNCTION_22_17();
      v33(v32);
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v10[44] = v34;
  *v34 = v35;
  OUTLINED_FUNCTION_161_9(v34);
  OUTLINED_FUNCTION_348_0();

  return sub_1D549D55C(v36, v37, v38);
}

uint64_t sub_1D54B7880()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 360) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54B7978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_199_5();
  v18 = MEMORY[0x1E69753F0];
  v17[10] = v16;
  v17[11] = v18;
  __swift_allocate_boxed_opaque_existential_0(v17 + 7);
  OUTLINED_FUNCTION_162_10();
  v19();
  OUTLINED_FUNCTION_65_32(v17 + 7);
  v20 = OUTLINED_FUNCTION_243_3();
  v21(v20);
  v22 = OUTLINED_FUNCTION_340_1();
  v23(v22);
  OUTLINED_FUNCTION_378_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v17[48] = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_130_14(v24);
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEDCE190](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1D54B7A7C()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 392) = v0;

  v7 = OUTLINED_FUNCTION_19_71();
  v8(v7);
  v9 = OUTLINED_FUNCTION_97_17();
  v10(v9);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D54B7C14()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_395();
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v0 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v0, qword_1EDD76DC8);
  v1 = sub_1D560C738();
  v2 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v2))
  {
    v3 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v3);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_118();
  }

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_254_4(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_30_65(v10);

  return sub_1D5497298(v12, v13);
}

void sub_1D54B7D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_277_2();
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_225_4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5848, &qword_1D565DE10);
  if (OUTLINED_FUNCTION_137_14(v12))
  {
    v13 = *(v11 + 368);
    v14 = OUTLINED_FUNCTION_31_54();
    v15(v14);
    v16 = OUTLINED_FUNCTION_76_1();
    v13(v16);
    OUTLINED_FUNCTION_128();
    sub_1D5612878();
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_318_1(v17);
    *v18 = v19;
    v18[1] = sub_1D54B7FBC;
    OUTLINED_FUNCTION_73_24();
    OUTLINED_FUNCTION_188_7();

    sub_1D5496050(v20, v21);
  }

  else
  {
    v23 = *(v11 + 248);
    v24 = OUTLINED_FUNCTION_35_1();
    __swift_storeEnumTagSinglePayload(v24, v25, 1, v26);
    sub_1D54BE1FC(v23, &qword_1EC7EABF0);
    OUTLINED_FUNCTION_109_17();
    sub_1D5615B68();
    OUTLINED_FUNCTION_170_7(a11);
    OUTLINED_FUNCTION_120_11();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5850, &qword_1D565DE18);
    OUTLINED_FUNCTION_83_23(v27, v28, v27);
    OUTLINED_FUNCTION_33_48();
    OUTLINED_FUNCTION_71_25();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_48_39();
    OUTLINED_FUNCTION_138("Fatal error", v29, v30, v31, v32, "MusicKitInternal/MusicAutoupdatingResponse.swift");
    OUTLINED_FUNCTION_188_7();
  }
}

uint64_t sub_1D54B7EAC()
{
  OUTLINED_FUNCTION_80();
  v0 = OUTLINED_FUNCTION_347_1();
  v1(v0);
  OUTLINED_FUNCTION_301_3();
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v2 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v2, qword_1EDD76DC8);
  v3 = sub_1D560C738();
  v4 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v4))
  {
    v5 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v5);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_118();
  }

  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_254_4(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_30_65(v12);

  return sub_1D5497298(v14, v15);
}

uint64_t sub_1D54B7FBC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D54B80A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  v11 = v10[39];
  (*(v10[29] + 8))(v10[30], v10[28]);
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_128();
  v12(v13);
  v14 = OUTLINED_FUNCTION_222();
  v12(v14);
  __swift_destroy_boxed_opaque_existential_1(v10 + 12);
  __swift_destroy_boxed_opaque_existential_1(v10 + 7);
  OUTLINED_FUNCTION_77_21();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1D54B8190()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D54B8274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();

  OUTLINED_FUNCTION_77_21();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D54B8318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7120, &qword_1D56681A0);
  v5[28] = v7;
  v5[29] = *(v7 - 8);
  v5[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7100, &qword_1D5668140);
  v5[31] = swift_task_alloc();
  v8 = sub_1D560DF28();
  v5[32] = v8;
  v5[33] = *(v8 - 8);
  v5[34] = swift_task_alloc();
  v9 = sub_1D560DF38();
  v5[35] = v9;
  v5[36] = *(v9 - 8);
  v5[37] = swift_task_alloc();
  v10 = sub_1D560DFC8();
  v5[38] = v10;
  v5[39] = *(v10 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7118, &qword_1D5668190);
  v5[43] = swift_task_alloc();
  v11 = sub_1D560DF18();
  v12 = MEMORY[0x1E69750F0];
  v5[5] = v11;
  v5[6] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5 + 2);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, a1, v11);

  return MEMORY[0x1EEE6DFA0](sub_1D54B85D8, 0, 0);
}

uint64_t sub_1D54B85D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  sub_1D4F39AB0(v10[26], v10[43], &qword_1EC7F7118, &qword_1D5668190);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F70F0, &qword_1D5668130);
  OUTLINED_FUNCTION_22_11(v11);
  if (!v12)
  {
    OUTLINED_FUNCTION_71();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        if (qword_1EDD5D8A8 != -1)
        {
          OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
        }

        v14 = sub_1D560C758();
        OUTLINED_FUNCTION_62_4(v14, qword_1EDD76DC8);
        v15 = sub_1D560C738();
        v16 = sub_1D56156C8();
        if (OUTLINED_FUNCTION_74_12(v16))
        {
          v17 = OUTLINED_FUNCTION_63_12();
          OUTLINED_FUNCTION_86_10(v17);
          OUTLINED_FUNCTION_66_26();
          _os_log_impl(v18, v19, v20, v21, v22, 2u);
          OUTLINED_FUNCTION_54();
        }

        OUTLINED_FUNCTION_77_21();

        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_348_0();

        return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
      }
    }

    else
    {
      v32 = OUTLINED_FUNCTION_22_17();
      v33(v32);
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v10[44] = v34;
  *v34 = v35;
  OUTLINED_FUNCTION_161_9(v34);
  OUTLINED_FUNCTION_348_0();

  return sub_1D549E758(v36, v37, v38);
}

uint64_t sub_1D54B87B4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 360) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54B88AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_199_5();
  v18 = MEMORY[0x1E6975190];
  v17[10] = v16;
  v17[11] = v18;
  __swift_allocate_boxed_opaque_existential_0(v17 + 7);
  OUTLINED_FUNCTION_162_10();
  v19();
  OUTLINED_FUNCTION_65_32(v17 + 7);
  v20 = OUTLINED_FUNCTION_243_3();
  v21(v20);
  v22 = OUTLINED_FUNCTION_340_1();
  v23(v22);
  OUTLINED_FUNCTION_378_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v17[48] = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_130_14(v24);
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEDCE190](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1D54B89B0()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 392) = v0;

  v7 = OUTLINED_FUNCTION_19_71();
  v8(v7);
  v9 = OUTLINED_FUNCTION_97_17();
  v10(v9);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D54B8B48()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_395();
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v0 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v0, qword_1EDD76DC8);
  v1 = sub_1D560C738();
  v2 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v2))
  {
    v3 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v3);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_118();
  }

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_254_4(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_30_65(v10);

  return sub_1D54977D4(v12, v13);
}

void sub_1D54B8C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_277_2();
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_225_4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5848, &qword_1D565DE10);
  if (OUTLINED_FUNCTION_137_14(v12))
  {
    v13 = *(v11 + 368);
    v14 = OUTLINED_FUNCTION_31_54();
    v15(v14);
    v16 = OUTLINED_FUNCTION_76_1();
    v13(v16);
    OUTLINED_FUNCTION_128();
    sub_1D5612878();
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_318_1(v17);
    *v18 = v19;
    v18[1] = sub_1D54B8EF0;
    OUTLINED_FUNCTION_73_24();
    OUTLINED_FUNCTION_188_7();

    sub_1D54963A0(v20, v21);
  }

  else
  {
    v23 = *(v11 + 248);
    v24 = OUTLINED_FUNCTION_35_1();
    __swift_storeEnumTagSinglePayload(v24, v25, 1, v26);
    sub_1D54BE1FC(v23, &qword_1EC7F7100);
    OUTLINED_FUNCTION_109_17();
    sub_1D5615B68();
    OUTLINED_FUNCTION_170_7(a11);
    OUTLINED_FUNCTION_120_11();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5850, &qword_1D565DE18);
    OUTLINED_FUNCTION_83_23(v27, v28, v27);
    OUTLINED_FUNCTION_33_48();
    OUTLINED_FUNCTION_71_25();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_48_39();
    OUTLINED_FUNCTION_138("Fatal error", v29, v30, v31, v32, "MusicKitInternal/MusicAutoupdatingResponse.swift");
    OUTLINED_FUNCTION_188_7();
  }
}

uint64_t sub_1D54B8DE0()
{
  OUTLINED_FUNCTION_80();
  v0 = OUTLINED_FUNCTION_347_1();
  v1(v0);
  OUTLINED_FUNCTION_301_3();
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v2 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v2, qword_1EDD76DC8);
  v3 = sub_1D560C738();
  v4 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v4))
  {
    v5 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v5);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_118();
  }

  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_254_4(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_30_65(v12);

  return sub_1D54977D4(v14, v15);
}

uint64_t sub_1D54B8EF0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D54B8FD4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D54B90B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F70D8, &qword_1D56680C0);
  v5[28] = v7;
  v5[29] = *(v7 - 8);
  v5[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F70B8, &qword_1D5668060);
  v5[31] = swift_task_alloc();
  v8 = sub_1D560DF28();
  v5[32] = v8;
  v5[33] = *(v8 - 8);
  v5[34] = swift_task_alloc();
  v9 = sub_1D560DF38();
  v5[35] = v9;
  v5[36] = *(v9 - 8);
  v5[37] = swift_task_alloc();
  v10 = sub_1D560EA78();
  v5[38] = v10;
  v5[39] = *(v10 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F70D0, &qword_1D56680B0);
  v5[43] = swift_task_alloc();
  v11 = sub_1D560E9B8();
  v12 = MEMORY[0x1E69753E0];
  v5[5] = v11;
  v5[6] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5 + 2);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, a1, v11);

  return MEMORY[0x1EEE6DFA0](sub_1D54B9378, 0, 0);
}

uint64_t sub_1D54B9378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  sub_1D4F39AB0(v10[26], v10[43], &qword_1EC7F70D0, &qword_1D56680B0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F70A8, &qword_1D5668050);
  OUTLINED_FUNCTION_22_11(v11);
  if (!v12)
  {
    OUTLINED_FUNCTION_71();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        if (qword_1EDD5D8A8 != -1)
        {
          OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
        }

        v14 = sub_1D560C758();
        OUTLINED_FUNCTION_62_4(v14, qword_1EDD76DC8);
        v15 = sub_1D560C738();
        v16 = sub_1D56156C8();
        if (OUTLINED_FUNCTION_74_12(v16))
        {
          v17 = OUTLINED_FUNCTION_63_12();
          OUTLINED_FUNCTION_86_10(v17);
          OUTLINED_FUNCTION_66_26();
          _os_log_impl(v18, v19, v20, v21, v22, 2u);
          OUTLINED_FUNCTION_54();
        }

        OUTLINED_FUNCTION_77_21();

        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_348_0();

        return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
      }
    }

    else
    {
      v32 = OUTLINED_FUNCTION_22_17();
      v33(v32);
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v10[44] = v34;
  *v34 = v35;
  OUTLINED_FUNCTION_161_9(v34);
  OUTLINED_FUNCTION_348_0();

  return sub_1D54A0060(v36, v37, v38);
}

uint64_t sub_1D54B9554()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 360) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54B964C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_199_5();
  v18 = MEMORY[0x1E69753F8];
  v17[10] = v16;
  v17[11] = v18;
  __swift_allocate_boxed_opaque_existential_0(v17 + 7);
  OUTLINED_FUNCTION_162_10();
  v19();
  OUTLINED_FUNCTION_65_32(v17 + 7);
  v20 = OUTLINED_FUNCTION_243_3();
  v21(v20);
  v22 = OUTLINED_FUNCTION_340_1();
  v23(v22);
  OUTLINED_FUNCTION_378_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v17[48] = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_130_14(v24);
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEDCE190](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1D54B9750()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 392) = v0;

  v7 = OUTLINED_FUNCTION_19_71();
  v8(v7);
  v9 = OUTLINED_FUNCTION_97_17();
  v10(v9);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D54B98E8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_395();
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v0 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v0, qword_1EDD76DC8);
  v1 = sub_1D560C738();
  v2 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v2))
  {
    v3 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v3);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_118();
  }

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_254_4(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_30_65(v10);

  return sub_1D549806C(v12, v13);
}

void sub_1D54B99E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_277_2();
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_225_4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5848, &qword_1D565DE10);
  if (OUTLINED_FUNCTION_137_14(v12))
  {
    v13 = *(v11 + 368);
    v14 = OUTLINED_FUNCTION_31_54();
    v15(v14);
    v16 = OUTLINED_FUNCTION_76_1();
    v13(v16);
    OUTLINED_FUNCTION_128();
    sub_1D5612878();
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_318_1(v17);
    *v18 = v19;
    v18[1] = sub_1D54B8EF0;
    OUTLINED_FUNCTION_73_24();
    OUTLINED_FUNCTION_188_7();

    sub_1D5496938(v20, v21);
  }

  else
  {
    v23 = *(v11 + 248);
    v24 = OUTLINED_FUNCTION_35_1();
    __swift_storeEnumTagSinglePayload(v24, v25, 1, v26);
    sub_1D54BE1FC(v23, &qword_1EC7F70B8);
    OUTLINED_FUNCTION_109_17();
    sub_1D5615B68();
    OUTLINED_FUNCTION_170_7(a11);
    OUTLINED_FUNCTION_120_11();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5850, &qword_1D565DE18);
    OUTLINED_FUNCTION_83_23(v27, v28, v27);
    OUTLINED_FUNCTION_33_48();
    OUTLINED_FUNCTION_71_25();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_48_39();
    OUTLINED_FUNCTION_138("Fatal error", v29, v30, v31, v32, "MusicKitInternal/MusicAutoupdatingResponse.swift");
    OUTLINED_FUNCTION_188_7();
  }
}

uint64_t sub_1D54B9B80()
{
  OUTLINED_FUNCTION_80();
  v0 = OUTLINED_FUNCTION_347_1();
  v1(v0);
  OUTLINED_FUNCTION_301_3();
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v2 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v2, qword_1EDD76DC8);
  v3 = sub_1D560C738();
  v4 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v4))
  {
    v5 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v5);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_118();
  }

  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_254_4(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_30_65(v12);

  return sub_1D549806C(v14, v15);
}

uint64_t sub_1D54B9C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F58, &qword_1D5667B38);
  v5[28] = v7;
  v5[29] = *(v7 - 8);
  v5[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F38, &unk_1D5667A08);
  v5[31] = swift_task_alloc();
  v8 = sub_1D560DF28();
  v5[32] = v8;
  v5[33] = *(v8 - 8);
  v5[34] = swift_task_alloc();
  v9 = sub_1D560DF38();
  v5[35] = v9;
  v5[36] = *(v9 - 8);
  v5[37] = swift_task_alloc();
  v5[38] = type metadata accessor for MusicSuggestedSongsResponse(0);
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F50, &qword_1D5667B28);
  v5[42] = swift_task_alloc();
  v5[5] = type metadata accessor for MusicSuggestedSongsRequest(0);
  v5[6] = sub_1D54B4BA4(&qword_1EC7F5868, type metadata accessor for MusicSuggestedSongsRequest, &protocol conformance descriptor for MusicSuggestedSongsRequest);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5 + 2);
  sub_1D54ACBB0(a1, boxed_opaque_existential_0);

  return MEMORY[0x1EEE6DFA0](sub_1D54B9F40, 0, 0);
}

uint64_t sub_1D54B9F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  sub_1D4F39AB0(v10[26], v10[42], &qword_1EC7F6F50, &qword_1D5667B28);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6EE8, &qword_1D5667968);
  OUTLINED_FUNCTION_22_11(v11);
  if (!v12)
  {
    OUTLINED_FUNCTION_71();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        if (qword_1EDD5D8A8 != -1)
        {
          OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
        }

        v14 = sub_1D560C758();
        OUTLINED_FUNCTION_62_4(v14, qword_1EDD76DC8);
        v15 = sub_1D560C738();
        v16 = sub_1D56156C8();
        if (OUTLINED_FUNCTION_74_12(v16))
        {
          v17 = OUTLINED_FUNCTION_63_12();
          OUTLINED_FUNCTION_86_10(v17);
          OUTLINED_FUNCTION_66_26();
          _os_log_impl(v18, v19, v20, v21, v22, 2u);
          OUTLINED_FUNCTION_54();
        }

        OUTLINED_FUNCTION_77_21();

        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_348_0();

        return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
      }
    }

    else
    {
      sub_1D54B4B54();
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v10[43] = v32;
  *v32 = v33;
  v32[1] = sub_1D54BA138;
  OUTLINED_FUNCTION_348_0();

  return sub_1D54A12B8(v34, v35, v36);
}

uint64_t sub_1D54BA138()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 352) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54BA230()
{
  OUTLINED_FUNCTION_75_0();
  v1 = *(v0 + 328);
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v7 = *(v0 + 256);
  *(v0 + 80) = *(v0 + 304);
  v8 = sub_1D54B4BA4(&qword_1EC7F5E88, type metadata accessor for MusicSuggestedSongsResponse, &protocol conformance descriptor for MusicSuggestedSongsResponse);
  OUTLINED_FUNCTION_392(v8);
  OUTLINED_FUNCTION_82_24();
  sub_1D54ACBB0(v1, v9);
  v16 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  (*(v4 + 104))(v2, *MEMORY[0x1E6975100], v3);
  (*(v6 + 104))(v5, *MEMORY[0x1E6975110], v7);
  *(v0 + 120) = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 96));
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 360) = v11;
  *v11 = v12;
  v11[1] = sub_1D54BA3B4;
  v13 = *(v0 + 296);
  v14 = *(v0 + 272);

  return MusicSuggestedSongsResponse.libraryMapped(policy:scope:)(boxed_opaque_existential_0, v13, v14);
}

uint64_t sub_1D54BA3B4()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 368) = v0;

  v7 = OUTLINED_FUNCTION_19_71();
  v8(v7);
  v9 = OUTLINED_FUNCTION_97_17();
  v10(v9);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D54BA54C()
{
  OUTLINED_FUNCTION_80();
  *(v0 + 384) = *(v0 + 352);
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v1 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v1, qword_1EDD76DC8);
  v2 = sub_1D560C738();
  v3 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v3))
  {
    v4 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v4);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_118();
  }

  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_201_6(v10);
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_30_65(v11);

  return sub_1D54985F4(v13, v14);
}

void sub_1D54BA650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_389();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_225_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5848, &qword_1D565DE10);
  if (OUTLINED_FUNCTION_137_14(v13))
  {
    v14 = v12[40];
    v15 = v12[38];
    v16 = v12[31];
    v17 = OUTLINED_FUNCTION_101_15();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v15);
    OUTLINED_FUNCTION_39_50();
    sub_1D54B5AC0(v16, v14);
    OUTLINED_FUNCTION_82_24();
    v20 = OUTLINED_FUNCTION_159();
    sub_1D54ACBB0(v20, v21);
    OUTLINED_FUNCTION_128();
    sub_1D5612878();
    v22 = swift_task_alloc();
    v12[47] = v22;
    *v22 = v12;
    v22[1] = sub_1D54BA918;
    OUTLINED_FUNCTION_73_24();
    OUTLINED_FUNCTION_349_1();

    sub_1D5496CE8(v23, v24);
  }

  else
  {
    v26 = v12[31];
    v27 = OUTLINED_FUNCTION_35_1();
    __swift_storeEnumTagSinglePayload(v27, v28, 1, v29);
    sub_1D54BE1FC(v26, &qword_1EC7F6F38);
    OUTLINED_FUNCTION_57_3();
    sub_1D5615B68();
    OUTLINED_FUNCTION_170_7(a12);
    OUTLINED_FUNCTION_120_11();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5850, &qword_1D565DE18);
    OUTLINED_FUNCTION_83_23(v30, v31, v30);
    OUTLINED_FUNCTION_33_48();
    OUTLINED_FUNCTION_71_25();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_48_39();
    OUTLINED_FUNCTION_138("Fatal error", v32, v33, v34, v35, "MusicKitInternal/MusicAutoupdatingResponse.swift");
    OUTLINED_FUNCTION_349_1();
  }
}

uint64_t sub_1D54BA7F8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_21_77();
  sub_1D54B4B54();
  __swift_deallocate_boxed_opaque_existential_1((v0 + 12));
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v0[48] = v0[46];
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v1 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v1, qword_1EDD76DC8);
  v2 = sub_1D560C738();
  v3 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v3))
  {
    v4 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v4);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_118();
  }

  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_201_6(v10);
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_30_65(v11);

  return sub_1D54985F4(v13, v14);
}

uint64_t sub_1D54BA918()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D54BA9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  (*(v10[29] + 8))(v10[30], v10[28]);
  sub_1D54B4B54();
  OUTLINED_FUNCTION_222();
  sub_1D54B4B54();
  __swift_destroy_boxed_opaque_existential_1(v10 + 12);
  __swift_destroy_boxed_opaque_existential_1(v10 + 7);
  OUTLINED_FUNCTION_77_21();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D54BAAEC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D54BABD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();

  OUTLINED_FUNCTION_77_21();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D54BAC74()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BAD04()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BAE14()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_4_142();

  return sub_1D5481014(v3, v4, v5, v6);
}

uint64_t sub_1D54BB02C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BB0BC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BB1C4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_4_142();

  return sub_1D5480BA0(v3, v4, v5, v6);
}

uint64_t sub_1D54BB3DC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BB46C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BB574()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_4_142();

  return sub_1D5480F30(v3, v4, v5, v6);
}

uint64_t sub_1D54BB740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[191] = a5;
  v5[190] = a4;
  v5[189] = a3;
  v5[188] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7048, &qword_1D5667EF8);
  v5[192] = v7;
  v5[193] = *(v7 - 8);
  v5[194] = swift_task_alloc();
  v8 = sub_1D560DF28();
  v5[195] = v8;
  v5[196] = *(v8 - 8);
  v5[197] = swift_task_alloc();
  v9 = sub_1D560DF38();
  v5[198] = v9;
  v5[199] = *(v9 - 8);
  v5[200] = swift_task_alloc();
  v5[169] = type metadata accessor for MusicCatalogInternalSearchRequest(0);
  v5[170] = sub_1D54B4BA4(&qword_1EC7F5860, type metadata accessor for MusicCatalogInternalSearchRequest, &protocol conformance descriptor for MusicCatalogInternalSearchRequest);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5 + 166);
  sub_1D54ACBB0(a1, boxed_opaque_existential_0);

  return MEMORY[0x1EEE6DFA0](sub_1D54BB940, 0, 0);
}

uint64_t sub_1D54BB940()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[190];
  v2 = *(v1 + 80);
  if (!*(v1 + 80))
  {
    memcpy(v0 + 156, v0[190], 0x50uLL);
    sub_1D4F39AB0(v1, (v0 + 24), &qword_1EC7F7040, &qword_1D5667EF0);
    sub_1D54BC69C((v0 + 156));
LABEL_15:
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[201] = v15;
    *v15 = v16;
    v15[1] = sub_1D54BBB1C;
    v17 = v0[188];

    return sub_1D54A1D8C((v0 + 46), (v0 + 166), v17);
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      v3 = (v0 + 13);
    }

    else
    {
      v3 = (v0 + 2);
    }

    sub_1D4F39AB0(v0[190], v3, &qword_1EC7F7040, &qword_1D5667EF0);
    goto LABEL_15;
  }

  sub_1D4F39AB0(v0[190], (v0 + 35), &qword_1EC7F7040, &qword_1D5667EF0);
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v4 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v4, qword_1EDD76DC8);
  v5 = sub_1D560C738();
  v6 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_74_12(v6))
  {
    v7 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_86_10(v7);
    OUTLINED_FUNCTION_66_26();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_54();
  }

  OUTLINED_FUNCTION_291_3();

  OUTLINED_FUNCTION_55();

  return v13();
}

uint64_t sub_1D54BBB1C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 1616) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54BBC14()
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v1 = v0[200];
  v2 = v0[199];
  v3 = v0[198];
  OUTLINED_FUNCTION_431(v0 + 56);
  v0[174] = &type metadata for MusicCatalogInternalSearchResponse;
  v4 = sub_1D5414518();
  v0[175] = v4;
  v5 = swift_allocObject();
  v0[171] = v5;
  OUTLINED_FUNCTION_431((v5 + 16));
  __swift_project_boxed_opaque_existential_1(v0 + 171, &type metadata for MusicCatalogInternalSearchResponse);
  (*(v2 + 104))(v1, *MEMORY[0x1E6975100], v3);
  v6 = OUTLINED_FUNCTION_243_3();
  v7(v6);
  v0[179] = &type metadata for MusicCatalogInternalSearchResponse;
  v0[180] = v4;
  __swift_allocate_boxed_opaque_existential_0(v0 + 176);
  sub_1D54BC640((v0 + 56), (v0 + 66));
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[203] = v8;
  *v8 = v9;
  v8[1] = sub_1D54BBD7C;
  OUTLINED_FUNCTION_73_0();

  return MusicCatalogInternalSearchResponse.libraryMapped(policy:scope:)();
}

uint64_t sub_1D54BBD7C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 1632) = v0;

  v7 = OUTLINED_FUNCTION_290_1();
  v8(v7);
  v9 = OUTLINED_FUNCTION_222();
  v10(v9);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D54BBEC8()
{
  OUTLINED_FUNCTION_80();
  v0[206] = v0[202];
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v1 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v1, qword_1EDD76DC8);
  v2 = sub_1D560C738();
  v3 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v3))
  {
    v4 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v4);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_118();
  }

  v10 = swift_task_alloc();
  v0[207] = v10;
  *v10 = v0;
  v10[1] = sub_1D54BC4E8;
  v11 = OUTLINED_FUNCTION_178_5();

  return sub_1D5498898(v11, v12);
}

uint64_t sub_1D54BBFDC()
{
  OUTLINED_FUNCTION_160();
  sub_1D4E628D4((v0 + 176), (v0 + 181));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5848, &qword_1D565DE10);
  if (OUTLINED_FUNCTION_377_0((v0 + 86), (v0 + 181), v1, &type metadata for MusicCatalogInternalSearchResponse))
  {
    memcpy(v0 + 126, v0 + 86, 0x50uLL);
    memcpy(v0 + 116, v0 + 86, 0x50uLL);
    memcpy(v0 + 136, v0 + 86, 0x50uLL);
    sub_1D54BC640((v0 + 116), (v0 + 146));
    sub_1D5612878();
    v2 = swift_task_alloc();
    v0[205] = v2;
    *v2 = v0;
    v2[1] = sub_1D54BC340;
    v3 = OUTLINED_FUNCTION_93_0(v0[194]);

    return sub_1D5496EC0(v3, v4);
  }

  else
  {
    bzero(v0 + 86, 0xA0uLL);
    sub_1D54BE1FC((v0 + 96), &qword_1EC7F7020);
    OUTLINED_FUNCTION_109_17();
    sub_1D5615B68();
    v0[186] = v8;
    v0[187] = v9;
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x1DA6EAC70](0xD000000000000034);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5850, &qword_1D565DE18);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_48();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    return OUTLINED_FUNCTION_138("Fatal error", v6, v7, v0[186], v0[187], "MusicKitInternal/MusicAutoupdatingResponse.swift");
  }
}

uint64_t sub_1D54BC20C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_431(v0 + 76);
  sub_1D54BC69C((v0 + 76));
  __swift_deallocate_boxed_opaque_existential_1((v0 + 176));
  __swift_destroy_boxed_opaque_existential_1(v0 + 171);
  v0[206] = v0[204];
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v1 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v1, qword_1EDD76DC8);
  v2 = sub_1D560C738();
  v3 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v3))
  {
    v4 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v4);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_118();
  }

  v10 = swift_task_alloc();
  v0[207] = v10;
  *v10 = v0;
  v10[1] = sub_1D54BC4E8;
  v11 = OUTLINED_FUNCTION_178_5();

  return sub_1D5498898(v11, v12);
}

uint64_t sub_1D54BC340()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D54BC424()
{
  OUTLINED_FUNCTION_80();
  sub_1D54BE1FC((v0 + 126), &qword_1EC7F7020);
  v1 = OUTLINED_FUNCTION_159();
  v2(v1);
  OUTLINED_FUNCTION_431(v0 + 106);
  sub_1D54BC69C((v0 + 106));
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 171);
  OUTLINED_FUNCTION_291_3();

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D54BC4E8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D54BC5CC()
{
  OUTLINED_FUNCTION_80();

  OUTLINED_FUNCTION_291_3();

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D54BC6F0()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BC780()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BC888()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_4_142();

  return sub_1D5480D68(v3, v4, v5, v6);
}

uint64_t sub_1D54BCA8C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BCB1C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BCC24()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_4_142();

  return sub_1D5480C84(v3, v4, v5, v6);
}

uint64_t sub_1D54BCE28()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BCEB8()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BCFC0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_4_142();

  return sub_1D54809D8(v3, v4, v5, v6);
}

uint64_t sub_1D54BD1C4()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BD254()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BD35C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_4_142();

  return sub_1D54808F4(v3, v4, v5, v6);
}

double sub_1D54BD3EC(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

uint64_t sub_1D54BD538(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

uint64_t sub_1D54BD548(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1D54BD538(a1, a2);
  }

  return a1;
}

double sub_1D54BD55C(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1D54BD3EC(a1, a2);
  }

  return result;
}

uint64_t sub_1D54BD570()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BD600()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BD708()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_4_142();

  return sub_1D5480810(v3, v4, v5, v6);
}

uint64_t sub_1D54BD918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_32(v10);
  *v11 = v12;
  v11[1] = sub_1D4E6ED20;
  OUTLINED_FUNCTION_18_27();
  OUTLINED_FUNCTION_25_3();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D54BD9CC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BDA5C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BDAEC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_18_27();
  OUTLINED_FUNCTION_153_1();

  return sub_1D54A9890(v3, v4, v5, v6, v7);
}

uint64_t sub_1D54BDB90()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v0 = OUTLINED_FUNCTION_64_1();
  v1 = type metadata accessor for MusicSuggestedSongsViewModelSeed(v0);
  OUTLINED_FUNCTION_69(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32(v2);
  *v3 = v4;
  v3[1] = sub_1D4E6ED20;
  OUTLINED_FUNCTION_18_27();
  OUTLINED_FUNCTION_25_3();

  return sub_1D54A8490(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BDC9C()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_64_1();
  v0 = sub_1D5614898();
  OUTLINED_FUNCTION_22(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_32(v1);
  *v2 = v3;
  v2[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_18_27();
  OUTLINED_FUNCTION_376();

  return sub_1D54A4CEC(v4, v5, v6, v7, v8);
}

uint64_t sub_1D54BDD6C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_4_142();

  return sub_1D54A4B9C(v3, v4, v5, v6);
}

uint64_t sub_1D54BDE74()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_4_142();

  return sub_1D5480ABC(v3, v4, v5, v6);
}

double sub_1D54BDF04(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

void sub_1D54BDF14()
{
  OUTLINED_FUNCTION_75_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71F8, &qword_1D56684B8);
  OUTLINED_FUNCTION_22(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_86(v1);
  *v2 = v3;
  v2[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_12_34();
  OUTLINED_FUNCTION_73_0();

  __asm { BR              X9 }
}

uint64_t sub_1D54BE038(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1D54BE048(uint64_t result, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    return sub_1D54BE038(result, a2, SBYTE1(a2));
  }

  return result;
}

double sub_1D54BE05C(uint64_t a1, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    return sub_1D54BDF04(a1, a2, SBYTE1(a2));
  }

  return result;
}

uint64_t sub_1D54BE094()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_100Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_159();

  return swift_deallocObject();
}

uint64_t sub_1D54BE16C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_17_50();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_123(v1);
  OUTLINED_FUNCTION_153_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54BE1FC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_313_1(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_4_0();
  (*(v5 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for MusicSuggestedSongsViewModel.AutomaticRefreshReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D54BE32C()
{
  result = qword_1EC7F7258;
  if (!qword_1EC7F7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7258);
  }

  return result;
}

uint64_t sub_1D54BE3C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_313_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_70_26()
{
  v3 = *v1;
  *(*v1 + 8 * (v2 >> 6) + 56) |= 1 << v2;
  *(*(v3 + 48) + 8 * v2) = v0;
}

uint64_t OUTLINED_FUNCTION_71_25()
{

  return sub_1D5615D48();
}

uint64_t OUTLINED_FUNCTION_75_25()
{

  return sub_1D5615D48();
}

uint64_t OUTLINED_FUNCTION_78_25()
{
  v2 = *(v0 + 288);
  v3 = *(v0 + 328);

  return __swift_storeEnumTagSinglePayload(v3, 1, 1, v2);
}

void OUTLINED_FUNCTION_105_17()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_106_15()
{
  v1 = v0[45];
  v2 = v0[42];
  v0[50] = *(v2 + 16);
  v0[51] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

double OUTLINED_FUNCTION_114_9()
{
  *(v0 + 88) = 0;
  result = 0.0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_116_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_120_11()
{

  JUMPOUT(0x1DA6EAC70);
}

void OUTLINED_FUNCTION_121_11()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_140_13()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_141_6()
{

  return sub_1D560C8F8();
}

uint64_t OUTLINED_FUNCTION_143_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_144_5()
{
}

uint64_t OUTLINED_FUNCTION_177_7()
{

  return sub_1D4E628D4(v0 + 16, v0 + 56);
}

double OUTLINED_FUNCTION_190_8()
{
  result = 0.0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_192_3()
{
  *(v1 + v2) = v0;

  return sub_1D5612858();
}

uint64_t OUTLINED_FUNCTION_196_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_205_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 8) = v11;
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  return a11;
}

uint64_t OUTLINED_FUNCTION_219_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_220_3(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_221_5()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_225_4()
{

  return sub_1D4E628D4(v0 + 96, v0 + 136);
}

uint64_t OUTLINED_FUNCTION_232_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_236_1()
{

  return sub_1D54B4B54();
}

uint64_t OUTLINED_FUNCTION_237_1()
{

  return sub_1D54B4B54();
}

uint64_t OUTLINED_FUNCTION_238_3()
{

  return sub_1D54B4B54();
}

uint64_t OUTLINED_FUNCTION_239_4()
{

  return sub_1D54B4B54();
}

uint64_t OUTLINED_FUNCTION_244_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_248_1()
{

  return __swift_getEnumTagSinglePayload(v0 + v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_280_2(uint64_t a1)
{

  return sub_1D5612858();
}

uint64_t OUTLINED_FUNCTION_281_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_287_2()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  return __swift_destroy_boxed_opaque_existential_1((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_291_3()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 1328));
}

uint64_t OUTLINED_FUNCTION_299_3(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t OUTLINED_FUNCTION_300_3()
{
  __swift_deallocate_boxed_opaque_existential_1((v0 + 12));
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[56] = v0[54];
  return result;
}

uint64_t OUTLINED_FUNCTION_301_3()
{
  __swift_deallocate_boxed_opaque_existential_1((v0 + 12));
  result = __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v0[51] = v0[49];
  return result;
}

uint64_t OUTLINED_FUNCTION_304_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_305_0(uint64_t a1)
{

  return sub_1D56162D8();
}

uint64_t OUTLINED_FUNCTION_307_1@<X0>(uint64_t a1@<X8>)
{

  return sub_1D54ACE48(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_312_1(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1D5614E28();
}

uint64_t OUTLINED_FUNCTION_325_1()
{

  return sub_1D5616168();
}

uint64_t OUTLINED_FUNCTION_330_1()
{
}

uint64_t OUTLINED_FUNCTION_331_1()
{

  return sub_1D560BB18();
}

uint64_t OUTLINED_FUNCTION_332_1()
{

  return sub_1D56157C8();
}

uint64_t OUTLINED_FUNCTION_344_1()
{

  return sub_1D4E48324((v0 + 56), v0 + 16);
}

uint64_t OUTLINED_FUNCTION_356_1@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  *(v1 + a1) = v2;
  return result;
}

void *OUTLINED_FUNCTION_363_1(void *result)
{
  *result = v1;
  result[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_369_1()
{

  return sub_1D560C758();
}

uint64_t OUTLINED_FUNCTION_370_0()
{
}

uint64_t OUTLINED_FUNCTION_371_0()
{
}

uint64_t OUTLINED_FUNCTION_372_0()
{
}

uint64_t OUTLINED_FUNCTION_373_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1D4E68940(v4, v6 + v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_374()
{
}

uint64_t OUTLINED_FUNCTION_375_0()
{
}

uint64_t *OUTLINED_FUNCTION_378_0()
{
  v2[15] = v0;
  v2[16] = v1;

  return __swift_allocate_boxed_opaque_existential_0(v2 + 12);
}

uint64_t OUTLINED_FUNCTION_379()
{
}

uint64_t OUTLINED_FUNCTION_380()
{

  return sub_1D4E628D4(v1, v0 + 136);
}

uint64_t OUTLINED_FUNCTION_381()
{

  return sub_1D56162D8();
}

uint64_t OUTLINED_FUNCTION_382()
{
}

uint64_t OUTLINED_FUNCTION_383()
{
}

uint64_t OUTLINED_FUNCTION_384()
{

  return MusicSuggestedSongsEntry.init<A>(song:moduleID:)(v3, v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_385(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1D5614E28();
}

uint64_t OUTLINED_FUNCTION_386(uint64_t a1)
{

  return sub_1D56162D8();
}

void OUTLINED_FUNCTION_391()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t *OUTLINED_FUNCTION_392(uint64_t a1)
{
  *(v1 + 88) = a1;

  return __swift_allocate_boxed_opaque_existential_0((v1 + 56));
}

uint64_t OUTLINED_FUNCTION_421()
{

  return sub_1D5614E28();
}

uint64_t OUTLINED_FUNCTION_422()
{

  return sub_1D56162D8();
}

uint64_t OUTLINED_FUNCTION_423()
{
  *(v1 + v2) = v0;

  return sub_1D5612858();
}

uint64_t OUTLINED_FUNCTION_424(uint64_t a1)
{
  *(v1 - 88) = a1;

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_426()
{
  *(v2 - 112) = v1;
  *(v2 - 104) = v0;

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_427()
{
}

uint64_t OUTLINED_FUNCTION_428()
{
}

uint64_t OUTLINED_FUNCTION_429()
{
}

id OUTLINED_FUNCTION_430(float a1)
{
  *v1 = a1;
  *(v2 + 16) = v3;

  return v3;
}

void *OUTLINED_FUNCTION_431(void *a1)
{

  return memcpy(a1, (v1 + 368), 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_432(uint64_t a1)
{

  return sub_1D560C8C8();
}

uint64_t OUTLINED_FUNCTION_433()
{
}

uint64_t OUTLINED_FUNCTION_434()
{

  return sub_1D5612858();
}

uint64_t OUTLINED_FUNCTION_436()
{

  return sub_1D56162D8();
}

unint64_t sub_1D54BF7BC()
{
  type metadata accessor for MusicCatalogInternalSearchIncrementalLoader(0);
  result = sub_1D560C058();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = HIBYTE(v1) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((v2 & 0x1000000000000000) == 0)
  {
    if ((v2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = v2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v17 = v27 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v3)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v22 = v27;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v27 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1D5615C58();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_62;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_62;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_62;
                }

                ++v14;
                if (!--v3)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_54;
          }

          goto LABEL_62;
        }

        goto LABEL_73;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_62;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_62;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_62;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_54;
              }
            }
          }

          goto LABEL_54;
        }

LABEL_62:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_63;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_62;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_62;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_62;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_63;
              }
            }
          }

LABEL_54:
          LOBYTE(v3) = 0;
LABEL_63:
          v28 = v3;
          v25 = v3;
          goto LABEL_64;
        }

        goto LABEL_62;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v7 = sub_1D5341FA0();
  v25 = v26;
LABEL_64:

  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1D54BFB74(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 200) = a5;
  *(v6 + 208) = v5;
  *(v6 + 184) = a2;
  *(v6 + 192) = a4;
  *(v6 + 384) = a3;
  *(v6 + 176) = a1;
  v7 = sub_1D560C448();
  OUTLINED_FUNCTION_22(v7);
  *(v6 + 216) = OUTLINED_FUNCTION_127();
  v8 = sub_1D560C468();
  *(v6 + 224) = v8;
  OUTLINED_FUNCTION_69(v8);
  *(v6 + 232) = v9;
  *(v6 + 240) = OUTLINED_FUNCTION_127();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3E8, &qword_1D56311D0);
  OUTLINED_FUNCTION_22(v10);
  *(v6 + 248) = OUTLINED_FUNCTION_127();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  *(v6 + 256) = v11;
  OUTLINED_FUNCTION_69(v11);
  *(v6 + 264) = v12;
  *(v6 + 272) = OUTLINED_FUNCTION_127();
  v13 = sub_1D560DAB8();
  *(v6 + 280) = v13;
  v14 = sub_1D56158D8();
  *(v6 + 288) = v14;
  OUTLINED_FUNCTION_69(v14);
  *(v6 + 296) = v15;
  *(v6 + 304) = OUTLINED_FUNCTION_127();
  *(v6 + 312) = *(v13 - 8);
  *(v6 + 320) = OUTLINED_FUNCTION_127();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
  *(v6 + 328) = v16;
  OUTLINED_FUNCTION_69(v16);
  *(v6 + 336) = v17;
  *(v6 + 344) = OUTLINED_FUNCTION_127();
  v18 = type metadata accessor for MusicCatalogInternalSearchRequest(0);
  *(v6 + 352) = v18;
  OUTLINED_FUNCTION_22(v18);
  *(v6 + 360) = OUTLINED_FUNCTION_127();

  return MEMORY[0x1EEE6DFA0](sub_1D54BFE10, 0, 0);
}

uint64_t sub_1D54BFE10()
{
  v1 = *(v0 + 208);
  v2 = type metadata accessor for MusicCatalogInternalSearchIncrementalLoader(0);
  v3 = (v1 + *(v2 + 28));
  v4 = v3[1];
  if (v4)
  {
    v5 = v2;
    v7 = *(v0 + 352);
    v6 = *(v0 + 360);
    v8 = *(v0 + 336);
    v9 = *(v0 + 328);
    v31 = *(v0 + 384);
    v30 = *(v0 + 184);
    v28 = *(v0 + 344);
    v29 = *v3;
    v10 = (v1 + *(v2 + 32));
    v11 = v10[1];
    v27 = *v10;
    (*(v8 + 16))();
    *(v6 + 25) = 0;
    *(v6 + 32) = MEMORY[0x1E69E7CC0];
    *(v6 + 56) = 4;
    *(v6 + 80) = 0;
    *(v6 + 88) = 1;
    *(v6 + 96) = 0;
    *(v6 + 104) = 1;
    *(v6 + 106) = 1;
    v12 = *(v7 + 60);

    _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
    *v6 = v27;
    *(v6 + 8) = v11;
    *(v6 + 40) = 0;
    *(v6 + 48) = 0;
    v13 = (v6 + *(v7 + 64));
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6240, &qword_1D5667EC0) + 48);
    *v13 = v29;
    *(v13 + 1) = v4;
    (*(v8 + 32))(&v13[v14], v28, v9);
    type metadata accessor for MusicCatalogInternalSearchRequest.Parameters(0);
    swift_storeEnumTagMultiPayload();
    v15 = sub_1D560CD48();
    OUTLINED_FUNCTION_14();
    (*(v16 + 24))(v6 + v12, v1, v15);
    *(v6 + 25) = *(v1 + *(v5 + 24));
    *(v6 + 16) = v30;
    *(v6 + 24) = v31 & 1;
    *(v6 + 105) = *(v1 + *(v5 + 20));
    *(v6 + 64) = sub_1D54BF7BC();
    *(v6 + 72) = 0;
    v17 = swift_task_alloc();
    *(v0 + 368) = v17;
    OUTLINED_FUNCTION_1_179();
    v19 = sub_1D54C30C0(v18);
    *v17 = v0;
    v17[1] = sub_1D54C01AC;
    v20 = *(v0 + 352);
    v21 = MEMORY[0x1E6974D18];

    return MEMORY[0x1EEDCE900](v0 + 16, v6 + v12, v20, v15, v19, v21);
  }

  else
  {
    v23 = *(v0 + 232);
    v22 = *(v0 + 240);
    v24 = *(v0 + 224);
    sub_1D560C438();
    sub_1D4FBA6EC(MEMORY[0x1E69E7CC0]);
    sub_1D54C30C0(&qword_1EC7ECE80);
    sub_1D560BE88();
    sub_1D560C458();
    (*(v23 + 8))(v22, v24);
    swift_willThrow();
    OUTLINED_FUNCTION_12_97();

    OUTLINED_FUNCTION_55();

    return v25();
  }
}

uint64_t sub_1D54C01AC()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1D54C0518;
  }

  else
  {
    v2 = sub_1D54C02C0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D54C02C0()
{
  v1 = v0[31];
  memcpy(v0 + 12, v0 + 2, 0x50uLL);
  sub_1D4ECA620(v0[12]);
  sub_1D54BC69C((v0 + 12));
  v2 = type metadata accessor for MusicSearchResultGroup(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = v0[38];
  v5 = v0[35];
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v0[31], &qword_1EC7EF3E8, &qword_1D56311D0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  }

  else
  {
    v9 = v0[31];
    (*(v0[33] + 16))(v0[34], v9 + *(v2 + 24), v0[32]);
    sub_1D54C294C(v9, type metadata accessor for MusicSearchResultGroup);
    v10 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v4, v10 ^ 1u, 1, v5);
    OUTLINED_FUNCTION_10(v4);
    if (!v11)
    {
      v13 = *(v0[39] + 32);
      v13(v0[40], v0[38], v0[35]);
      goto LABEL_6;
    }
  }

  v12 = v0[39];
  (*(v0[37] + 8))(v0[38], v0[36]);
  sub_1D56151C8();
  sub_1D560D9F8();
  v13 = *(v12 + 32);
LABEL_6:
  v14 = v0[45];
  v13(v0[22], v0[40], v0[35]);
  OUTLINED_FUNCTION_6_142();
  sub_1D54C294C(v14, v15);

  OUTLINED_FUNCTION_55();

  return v16();
}

uint64_t sub_1D54C0518()
{
  OUTLINED_FUNCTION_6_142();
  sub_1D54C294C(v0, v1);
  OUTLINED_FUNCTION_12_97();

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D54C05D0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3E8, &qword_1D561E208);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3B0, &qword_1D5631138);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7318, &qword_1D5668A28);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  if ((_s16MusicKitInternal0A18UserProfileRequestV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    goto LABEL_27;
  }

  v17 = type metadata accessor for MusicCatalogInternalSearchIncrementalLoader(0);
  if (*(a1 + *(v17 + 20)) != *(a2 + *(v17 + 20)))
  {
    goto LABEL_27;
  }

  v18 = v17;
  if ((sub_1D4F3C42C(*(a1 + *(v17 + 24)), *(a2 + *(v17 + 24))) & 1) == 0)
  {
    goto LABEL_27;
  }

  v19 = v18[7];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v22[1];
  if (v21)
  {
    if (!v23)
    {
      goto LABEL_27;
    }

    v24 = *v20 == *v22 && v21 == v23;
    if (!v24 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v23)
  {
    goto LABEL_27;
  }

  v25 = v18[8];
  v26 = *(a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v26 == *v28 && v27 == v28[1];
  if (!v29 && (sub_1D5616168() & 1) == 0)
  {
    goto LABEL_27;
  }

  v30 = v18[9];
  v31 = *(v13 + 48);
  sub_1D4F39AB0(a1 + v30, v16, &qword_1EC7EF3B0, &qword_1D5631138);
  sub_1D4F39AB0(a2 + v30, &v16[v31], &qword_1EC7EF3B0, &qword_1D5631138);
  OUTLINED_FUNCTION_10(v16);
  if (v24)
  {
    OUTLINED_FUNCTION_10(&v16[v31]);
    if (v24)
    {
      sub_1D4E50004(v16, &qword_1EC7EF3B0, &qword_1D5631138);
LABEL_30:
      type metadata accessor for MusicCatalogInternalSearchRequest(0);
      OUTLINED_FUNCTION_1_179();
      sub_1D54C30C0(v37);
      v33 = sub_1D560E478();
      return v33 & 1;
    }

    goto LABEL_26;
  }

  sub_1D4F39AB0(v16, v12, &qword_1EC7EF3B0, &qword_1D5631138);
  OUTLINED_FUNCTION_10(&v16[v31]);
  if (v32)
  {
    (*(v7 + 8))(v12, v5);
LABEL_26:
    sub_1D4E50004(v16, &qword_1EC7F7318, &qword_1D5668A28);
    goto LABEL_27;
  }

  (*(v7 + 32))(v2, &v16[v31], v5);
  sub_1D4F39060();
  v35 = sub_1D5614D18();
  v36 = *(v7 + 8);
  v36(v2, v5);
  v36(v12, v5);
  sub_1D4E50004(v16, &qword_1EC7EF3B0, &qword_1D5631138);
  if (v35)
  {
    goto LABEL_30;
  }

LABEL_27:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_1D54C0964(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3E8, &qword_1D561E208);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3B0, &qword_1D5631138);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  sub_1D560CD48();
  sub_1D54C30C0(&qword_1EC7EA848);
  sub_1D5614CB8();
  v12 = type metadata accessor for MusicCatalogInternalSearchIncrementalLoader(0);
  sub_1D56162F8();
  sub_1D5614E28();

  if (*(v1 + *(v12 + 28) + 8))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  sub_1D5614E28();
  sub_1D4F39AB0(v1 + *(v12 + 36), v11, &qword_1EC7EF3B0, &qword_1D5631138);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v4 + 32))(v7, v11, v2);
    sub_1D56162F8();
    sub_1D4F38F04();
    sub_1D5614CB8();
    (*(v4 + 8))(v7, v2);
  }

  v13 = OUTLINED_FUNCTION_21_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  sub_1D4FED898(&qword_1EC7F6248);
  return sub_1D5614CB8();
}

uint64_t sub_1D54C0C94()
{
  sub_1D56162D8();
  sub_1D54C0964(v1);
  return sub_1D5616328();
}

uint64_t sub_1D54C0CD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D54C3104;

  return sub_1D54BFAD8();
}

uint64_t sub_1D54C0D60(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D54C0E28;

  return sub_1D54BFB74(a1, a2, a3 & 1, a4, a5);
}

uint64_t sub_1D54C0E28()
{

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D54C0F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D54C30C0(&unk_1EC7F7278);

  return MEMORY[0x1EEDCF110](a1, a3, a2, a4, v8);
}

uint64_t sub_1D54C0FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D54C30C0(&unk_1EC7F7270);

  return MEMORY[0x1EEDCF108](a1, a2, a3, v6);
}

uint64_t sub_1D54C103C(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D54C0964(v2);
  return sub_1D5616328();
}

uint64_t sub_1D54C1078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v175 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3B0, &qword_1D5631138);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  v159 = v7 - v8;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v147 - v10;
  sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v165 = v13;
  v166 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v164 = v14;
  v179 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v177 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v178 = v17;
  sub_1D560BB98();
  OUTLINED_FUNCTION_4();
  v162 = v19;
  v163 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_0();
  v168 = v20;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
  OUTLINED_FUNCTION_4();
  v167 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_59_0();
  v170 = v23 - v24;
  OUTLINED_FUNCTION_23();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = v147 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v172 = v147 - v30;
  v31 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v33 = v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for MusicCatalogInternalSearchIncrementalLoader(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_59_0();
  v169 = v36 - v37;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v147 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7280, &qword_1D5668810);
  v42 = OUTLINED_FUNCTION_22(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_59_0();
  v45 = v43 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v161 = v147 - v47;
  OUTLINED_FUNCTION_23();
  v49 = MEMORY[0x1EEE9AC00](v48);
  v51 = v147 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v174 = v147 - v52;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v34);
  (*(v31 + 16))(v33, a1, a2);
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v34);
    sub_1D4E50004(v51, &qword_1EC7F7280, &qword_1D5668810);
    v96 = v174;
    v65 = v175;
    goto LABEL_36;
  }

  __swift_storeEnumTagSinglePayload(v51, 0, 1, v34);
  sub_1D54C28E8(v51, v40);
  v56 = v34[8];
  v57 = v173;
  v58 = *(v173 + v56);
  v59 = *(v173 + v56 + 8);
  v60 = &v40[v56];
  v61 = *v60;
  v62 = *(v60 + 1);
  v160 = v58;
  v63 = v58 == v61 && v59 == v62;
  v64 = v40;
  v65 = v175;
  if (v63 || (sub_1D5616168() & 1) != 0)
  {
    v66 = sub_1D54BF7BC();
    if (v66 == sub_1D54BF7BC())
    {
      v157 = v59;
      v158 = v11;
      v176 = type metadata accessor for MusicCatalogInternalSearchRequest(0);
      OUTLINED_FUNCTION_1_179();
      sub_1D54C30C0(v67);
      v68 = v172;
      sub_1D560E468();
      sub_1D4FED898(&unk_1EC7F7288);
      sub_1D54C30C0(&qword_1EDD53C20);
      v69 = v171;
      OUTLINED_FUNCTION_71();
      sub_1D5614FE8();
      sub_1D560E458();
      v70 = v167;
      v71 = *(v167 + 8);
      v152 = v167 + 8;
      v151 = v71;
      v71(v68, v69);
      v72 = *(v70 + 32);
      v73 = v28;
      v74 = v69;
      v154 = v70 + 32;
      v153 = v72;
      v72(v68, v73, v69);
      v75 = (v57 + v34[7]);
      v76 = v75[1];
      v150 = *v75;
      v149 = v76;
      v77 = sub_1D560C048();
      v155 = v64;
      v78 = sub_1D560C048();
      v180 = v77;
      sub_1D4EF38B8(v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7290, &qword_1D5668818);
      sub_1D4FED898(&unk_1EC7F7298);
      sub_1D54C30C0(&qword_1EDD53350);
      v79 = sub_1D5614FE8();

      v80 = *(v79 + 16);
      v156 = v45;
      if (v80)
      {
        v148 = v34;
        v180 = MEMORY[0x1E69E7CC0];
        sub_1D4F03980(0, v80, 0);
        v81 = v180;
        v82 = v177 + 16;
        v177 = *(v177 + 16);
        v83 = (*(v82 + 64) + 32) & ~*(v82 + 64);
        v147[1] = v79;
        v84 = v79 + v83;
        v176 = *(v82 + 56);
        do
        {
          (v177)(v178, v84, v179);
          v85 = sub_1D5610058();
          v87 = v86;
          v88 = OUTLINED_FUNCTION_21_1();
          v89(v88);
          v180 = v81;
          v91 = *(v81 + 16);
          v90 = *(v81 + 24);
          if (v91 >= v90 >> 1)
          {
            sub_1D4F03980(v90 > 1, v91 + 1, 1);
            v81 = v180;
          }

          *(v81 + 16) = v91 + 1;
          v92 = v81 + 16 * v91;
          *(v92 + 32) = v85;
          *(v92 + 40) = v87;
          v84 += v176;
          --v80;
        }

        while (v80);

        v34 = v148;
        v74 = v171;
      }

      else
      {

        v81 = MEMORY[0x1E69E7CC0];
      }

      v180 = v81;
      v97 = OUTLINED_FUNCTION_71();
      __swift_instantiateConcreteTypeFromMangledNameV2(v97, v98);
      sub_1D4FED898(&qword_1EDD52780);
      sub_1D5614CF8();

      sub_1D560BB28();

      v99 = v150;
      v100 = v149;
      v101 = sub_1D560C068();
      v103 = v164;
      if (v102)
      {
        v99 = v101;
        v104 = v102;
        v106 = v165;
        v105 = v166;
        v107 = v172;
      }

      else
      {

        v106 = v165;
        v105 = v166;
        v107 = v172;
        v104 = v100;
      }

      v108 = v173;
      (*(v106 + 16))(v103, v173, v105);
      v109 = v34[5];
      LODWORD(v179) = *(v108 + v34[6]);
      v110 = v34;
      v111 = *(v108 + v109);
      if (v104)
      {
        v112 = v99;
      }

      else
      {
        v112 = 0;
      }

      v113 = 0xE000000000000000;
      if (v104)
      {
        v113 = v104;
      }

      v177 = v113;
      v178 = v112;
      (*(v167 + 16))(v170, v107, v74);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3E8, &qword_1D561E208);
      v114 = v158;
      OUTLINED_FUNCTION_33();
      v176 = v115;
      __swift_storeEnumTagSinglePayload(v116, v117, v118, v115);
      v119 = v157;

      v120 = v169;
      v121 = v105;
      sub_1D560E6C8();
      *(v120 + v110[5]) = v111;
      v34 = v110;
      *(v120 + v110[6]) = v179;
      v122 = (v120 + v110[7]);
      v123 = v177;
      *v122 = v178;
      v122[1] = v123;
      v124 = HIBYTE(v119) & 0xF;
      if ((v119 & 0x2000000000000000) == 0)
      {
        v124 = v160 & 0xFFFFFFFFFFFFLL;
      }

      if (v124)
      {
        v125 = v119;
        (*(v106 + 8))(v103, v121);
        (*(v162 + 8))(v168, v163);
        OUTLINED_FUNCTION_18_86();
        v126();
        v127 = v174;
        sub_1D4E50004(v174, &qword_1EC7F7280, &qword_1D5668810);
        v45 = v156;
      }

      else
      {
        v128 = v159;
        sub_1D4F39AB0(v114, v159, &qword_1EC7EF3B0, &qword_1D5631138);
        v129 = v176;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v128, 1, v176);
        v45 = v156;
        if (EnumTagSinglePayload == 1)
        {
          sub_1D4E50004(v128, &qword_1EC7EF3B0, &qword_1D5631138);
        }

        else
        {
          sub_1D56123E8();
          (*(*(v129 - 8) + 8))(v128, v129);
        }

        v127 = v174;
        v132 = v164;
        v131 = v165;
        v134 = v162;
        v133 = v163;
        v135 = sub_1D560C058();
        v125 = v136;

        (*(v131 + 8))(v132, v166);
        (*(v134 + 8))(v168, v133);
        v74 = v171;
        OUTLINED_FUNCTION_18_86();
        v137();
        sub_1D4E50004(v127, &qword_1EC7F7280, &qword_1D5668810);
        if (!v125)
        {
          v65 = v175;
          v125 = v157;
          goto LABEL_34;
        }

        v160 = v135;
      }

      v65 = v175;
LABEL_34:
      v139 = v169;
      v138 = v170;
      v140 = (v169 + v34[8]);
      *v140 = v160;
      v140[1] = v125;
      v153(v139 + v34[10], v138, v74);
      sub_1D4F39A1C(v158, v139 + v34[9], &qword_1EC7EF3B0, &qword_1D5631138);
      v141 = v139;
      v142 = v161;
      sub_1D54C28E8(v141, v161);
      __swift_storeEnumTagSinglePayload(v142, 0, 1, v34);
      sub_1D4F39A1C(v142, v127, &qword_1EC7F7280, &qword_1D5668810);
    }
  }

  v143 = OUTLINED_FUNCTION_5_138();
  sub_1D54C294C(v143, v144);
  v96 = v174;
LABEL_36:
  sub_1D4F39AB0(v96, v45, &qword_1EC7F7280, &qword_1D5668810);
  if (__swift_getEnumTagSinglePayload(v45, 1, v34) == 1)
  {
    sub_1D4E50004(v96, &qword_1EC7F7280, &qword_1D5668810);
    result = sub_1D4E50004(v45, &qword_1EC7F7280, &qword_1D5668810);
    *v65 = 0u;
    *(v65 + 16) = 0u;
    *(v65 + 32) = 0;
  }

  else
  {
    *(v65 + 24) = v34;
    *(v65 + 32) = sub_1D54C30C0(&qword_1EC7EF3C8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v65);
    sub_1D54C28E8(v45, boxed_opaque_existential_0);
    return sub_1D4E50004(v96, &qword_1EC7F7280, &qword_1D5668810);
  }

  return result;
}

unint64_t sub_1D54C1E40(uint64_t a1)
{
  v1 = sub_1D5615EF8();

  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1D54C1EB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D54C1E40(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1D54C1EE8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D4E9FDDC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D54C1F1C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D54C1E8C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D54C1F44(uint64_t a1)
{
  v2 = sub_1D54C29A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D54C1F80(uint64_t a1)
{
  v2 = sub_1D54C29A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D54C1FBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3B0, &qword_1D5631138);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
  OUTLINED_FUNCTION_4();
  v44 = v8;
  v45 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F72A0, &unk_1D5668820);
  OUTLINED_FUNCTION_4();
  v42 = v13;
  v43 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31();
  v15 = type metadata accessor for MusicCatalogInternalSearchIncrementalLoader(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v18 = v17;
  v19 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D54C29A4();
  v20 = v46;
  sub_1D5616398();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v21 = v11;
  v54 = 0;
  v22 = v43;
  v23 = sub_1D5615F98();
  v24 = (v18 + v15[8]);
  *v24 = v23;
  v24[1] = v25;
  v53 = 5;
  sub_1D4FED898(&unk_1EC7F72B0);
  v26 = v45;
  sub_1D5615FD8();
  (*(v44 + 32))(v18 + v15[10], v21, v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3E8, &qword_1D561E208);
  v52 = 4;
  sub_1D54C2B6C(&unk_1EC7F2758);
  sub_1D5615FD8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v27);
  sub_1D4F39A1C(v6, v18 + v15[9], &qword_1EC7EF3B0, &qword_1D5631138);
  v50 = 3;
  sub_1D54C29F8();
  sub_1D5615FD8();
  *(v18 + v15[6]) = v51;
  v49 = 1;
  v28 = sub_1D5615F98();
  v29 = (v18 + v15[7]);
  *v29 = v28;
  v29[1] = v30;
  v48 = 2;
  v31 = sub_1D5615FA8();
  v32 = v42;
  *(v18 + v15[5]) = v31 & 1;
  v33 = v22;
  v34 = v47;
  v35 = OUTLINED_FUNCTION_71();
  __swift_project_boxed_opaque_existential_1(v35, v36);
  OUTLINED_FUNCTION_21_1();
  sub_1D5616378();
  (*(v32 + 8))(0, v33);
  sub_1D54C2A4C(v18, v41);
  __swift_destroy_boxed_opaque_existential_1(v34);
  v37 = OUTLINED_FUNCTION_5_138();
  return sub_1D54C294C(v37, v38);
}

uint64_t sub_1D54C2558(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F72C0, &unk_1D5668830);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54C29A4();
  sub_1D56163D8();
  type metadata accessor for MusicCatalogInternalSearchIncrementalLoader(0);
  OUTLINED_FUNCTION_22_14();
  sub_1D5616088();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
    sub_1D4FED898(&unk_1EC7F72C8);
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3B0, &qword_1D5631138);
    sub_1D54C2AB0();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
    sub_1D54C2C64();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
    OUTLINED_FUNCTION_22_14();
    sub_1D5616098();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC3B0, &qword_1D5630D90);
    sub_1D54C2CB8();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t type metadata accessor for MusicCatalogInternalSearchIncrementalLoader(uint64_t a1)
{
  result = qword_1EC7F72E8;
  if (!qword_1EC7F72E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D54C28E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicCatalogInternalSearchIncrementalLoader(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D54C294C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1D54C29A4()
{
  result = qword_1EC7F72A8;
  if (!qword_1EC7F72A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F72A8);
  }

  return result;
}

unint64_t sub_1D54C29F8()
{
  result = qword_1EC7F72B8;
  if (!qword_1EC7F72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F72B8);
  }

  return result;
}

uint64_t sub_1D54C2A4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicCatalogInternalSearchIncrementalLoader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D54C2AB0()
{
  result = qword_1EC7F72D0;
  if (!qword_1EC7F72D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF3B0, &qword_1D5631138);
    sub_1D54C2B6C(&unk_1EC7F2798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F72D0);
  }

  return result;
}

unint64_t sub_1D54C2B6C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB3E8, &qword_1D561E208);
    sub_1D54C2BF0(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D54C2BF0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBD80, &qword_1D561F320);
    sub_1D524E268();
    sub_1D524E2BC();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D54C2C64()
{
  result = qword_1EC7F72D8;
  if (!qword_1EC7F72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F72D8);
  }

  return result;
}

unint64_t sub_1D54C2CB8()
{
  result = qword_1EC7F72E0;
  if (!qword_1EC7F72E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC3B0, &qword_1D5630D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F72E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicCatalogInternalSearchIncrementalLoader.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

void sub_1D54C2E38(uint64_t a1)
{
  sub_1D560CD48();
  if (v1 <= 0x3F)
  {
    sub_1D4F18AF4();
    if (v2 <= 0x3F)
    {
      sub_1D54C2F0C(319);
      if (v3 <= 0x3F)
      {
        sub_1D5414A44(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D54C2F0C(uint64_t a1)
{
  if (!qword_1EC7F72F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB3E8, &qword_1D561E208);
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7F72F8);
    }
  }
}

unint64_t sub_1D54C2F74()
{
  result = qword_1EC7F7300;
  if (!qword_1EC7F7300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7300);
  }

  return result;
}

unint64_t sub_1D54C2FCC()
{
  result = qword_1EC7F7308;
  if (!qword_1EC7F7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7308);
  }

  return result;
}

unint64_t sub_1D54C3024()
{
  result = qword_1EC7F7310;
  if (!qword_1EC7F7310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7310);
  }

  return result;
}

unint64_t sub_1D54C30C0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t MusicLibrary.CloudStatusController.status.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();
}

uint64_t MusicLibrary.CloudStatusController.Status.isEnabled.getter()
{
  v1 = *v0;
  v2 = v1 ^ 1;
  if (v1 == 3)
  {
    v2 = 0;
  }

  if (v1 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  return v3 & 1;
}

uint64_t MusicLibrary.CloudStatusController.$status.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DE0, &qword_1D5643E00);
  sub_1D560C8C8();
  return swift_endAccess();
}

uint64_t sub_1D54C324C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_1D51ECB60(0, 0, v3, &unk_1D5668BC8, v6);
}

uint64_t sub_1D54C3378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D54C3398, 0, 0);
}

uint64_t sub_1D54C3398()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1D54C3464;

    return sub_1D4E50414();
  }

  else
  {
    OUTLINED_FUNCTION_10_4();

    return v4();
  }
}

uint64_t sub_1D54C3464()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D54C41A0, 0, 0);
}

uint64_t MusicLibrary.CloudStatusController.deinit()
{
  v1 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudServiceStatusController;
  [*(v0 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudServiceStatusController) endObservingCloudLibraryEnabled];
  v2 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController__status;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DE0, &qword_1D5643E00);
  OUTLINED_FUNCTION_4_0();
  (*(v3 + 8))(v0 + v2);
  v4 = OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_activeMonitoringPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7320, &qword_1D5668A80);
  OUTLINED_FUNCTION_4_0();
  (*(v5 + 8))(v0 + v4);

  return v0;
}

uint64_t MusicLibrary.CloudStatusController.__deallocating_deinit()
{
  MusicLibrary.CloudStatusController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D54C36AC@<X0>(_BYTE *a1@<X8>)
{
  result = MusicLibrary.CloudStatusController.status.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1D54C3720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DD0, &qword_1D5643DF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return sub_1D54C37F4(v4);
}

uint64_t sub_1D54C37F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DD0, &qword_1D5643DF0);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DE0, &qword_1D5643E00);
  sub_1D560C8D8();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t MusicLibrary.CloudStatusController.syncProgressPublisher.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7320, &qword_1D5668A80);
  sub_1D54C3978();
  return sub_1D560C938();
}

unint64_t sub_1D54C3978()
{
  result = qword_1EC7F7328;
  if (!qword_1EC7F7328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F7320, &qword_1D5668A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7328);
  }

  return result;
}

uint64_t sub_1D54C39F0()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0[18] + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudController);
  v0[2] = v0;
  v0[3] = sub_1D54C3AE4;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_25_6(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_0_241();
  [v1 enableCloudLibraryWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D54C3AE4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 152) = v2;
  if (v2)
  {
    v3 = sub_1D54C3BEC;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_1_18;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D54C3BEC()
{
  OUTLINED_FUNCTION_80();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D54C3C68()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0[18] + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudController);
  v0[2] = v0;
  v0[3] = sub_1D54C3D5C;
  swift_continuation_init();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_25_6(v2);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_0_241();
  [v1 disableCloudLibraryWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D54C3D5C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 152) = v2;
  if (v2)
  {
    v3 = sub_1D54C419C;
  }

  else
  {
    v3 = j__OUTLINED_FUNCTION_1_18;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D54C3E64@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1D560C838();
  *a2 = result;
  return result;
}

uint64_t static MusicLibrary.CloudStatusController.Status.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v2 != 3)
    {
      if ((v3 & 0xFE) != 2)
      {
        v4 = v3 ^ v2 ^ 1;
        return v4 & 1;
      }

      goto LABEL_8;
    }

    if (v3 != 3)
    {
LABEL_8:
      v4 = 0;
      return v4 & 1;
    }
  }

  v4 = 1;
  return v4 & 1;
}

uint64_t MusicLibrary.CloudStatusController.Status.hash(into:)()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
    return MEMORY[0x1DA6EC0D0](v2);
  }

  if (v1 == 3)
  {
    v2 = 1;
    return MEMORY[0x1DA6EC0D0](v2);
  }

  MEMORY[0x1DA6EC0D0](2);
  return sub_1D56162F8();
}

uint64_t MusicLibrary.CloudStatusController.Status.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (v1 != 3)
    {
      MEMORY[0x1DA6EC0D0](2);
      sub_1D56162F8();
      return sub_1D5616328();
    }

    v2 = 1;
  }

  MEMORY[0x1DA6EC0D0](v2);
  return sub_1D5616328();
}

uint64_t sub_1D54C3FEC(uint64_t a1)
{
  v2 = *v1;
  sub_1D56162D8();
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    if (v2 != 3)
    {
      MEMORY[0x1DA6EC0D0](2);
      sub_1D56162F8();
      return sub_1D5616328();
    }

    v3 = 1;
  }

  MEMORY[0x1DA6EC0D0](v3);
  return sub_1D5616328();
}

unint64_t sub_1D54C4064()
{
  result = qword_1EC7F7330;
  if (!qword_1EC7F7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7330);
  }

  return result;
}

_BYTE *sub_1D54C40D8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1D54C40F8()
{
  OUTLINED_FUNCTION_80();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_3_91(v1);

  return sub_1D54C3378(v2, v3, v4, v5);
}

uint64_t _s15PersistentEntryVMa(uint64_t a1)
{
  result = qword_1EDD5AFC0;
  if (!qword_1EDD5AFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D54C41F0(uint64_t a1)
{
  v1 = sub_1D5615EF8();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D54C423C(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 1684957547;
  }

  return 0x6564644165746164;
}

unint64_t sub_1D54C42BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D54C41F0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D54C42EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D54C423C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D54C4320@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D54C41F0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D54C4348(uint64_t a1)
{
  v2 = sub_1D54C760C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D54C4384(uint64_t a1)
{
  v2 = sub_1D54C760C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D54C43C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v123[2] = *MEMORY[0x1E69E9840];
  v114 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v106 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v115 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v113 = &v93 - v8;
  v9 = sub_1D560E728();
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_5();
  v112 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2C50, &unk_1D564AB80);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v108 = &v93 - v13;
  v109 = sub_1D560DB08();
  OUTLINED_FUNCTION_4();
  v111 = v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v110 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v107 = &v93 - v18;
  sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v117 = v20;
  v118 = v19;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v93 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7338, &unk_1D5668CE0);
  OUTLINED_FUNCTION_4();
  v119 = v27;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v93 - v29;
  v31 = _s15PersistentEntryVMa(0);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v34 = v33 - v32;
  v35 = a1[3];
  v121 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1D54C760C();
  v36 = v120;
  sub_1D5616398();
  if (v36)
  {
    v37 = v121;
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v103 = v23;
  v105 = v31;
  v120 = v25;
  v104 = v34;
  v122 = 0;
  sub_1D54C7660();
  OUTLINED_FUNCTION_11_116();
  sub_1D5615FD8();
  v40 = v123[0];
  v39 = v123[1];
  v41 = objc_opt_self();
  v42 = sub_1D560C168();
  v123[0] = 0;
  v43 = [v41 recentlySearchedUnarchiveUnderlyingIdentifierSetWithData:v42 error:v123];

  v44 = v123[0];
  v37 = v121;
  v102 = v43;
  if (!v43)
  {
    v46 = v26;
    v47 = v123[0];
    v48 = sub_1D560BE98();

    swift_willThrow();
    sub_1D54C76B4();
    swift_allocError();
    *v49 = 0;
    swift_willThrow();
    sub_1D4E55E1C(v40, v39);
    v50 = OUTLINED_FUNCTION_7_130();
    v51(v50, v46);
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v101 = v40;
  v122 = 1;
  sub_1D54C7708();
  v45 = v44;
  OUTLINED_FUNCTION_11_116();
  sub_1D5615FD8();
  sub_1D54C4E5C(LOBYTE(v123[0]), v120);
  v100 = 0;
  v123[0] = MEMORY[0x1E69E7CC0];
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  v52 = v108;
  sub_1D53F6C84(v108);
  v53 = v109;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52, 1, v109);
  v99 = v26;
  v98 = v30;
  v97 = v39;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D54C775C(v52);
    v55 = v111;
    v56 = *(v111 + 72);
    v57 = (*(v111 + 80) + 32) & ~*(v111 + 80);
    v58 = v117;
    v59 = v103;
  }

  else
  {
    v55 = v111;
    v60 = *(v111 + 32);
    v61 = v107;
    v108 = v111 + 32;
    v96 = v60;
    v60(v107, v52, v53);
    (*(v55 + 16))(v110, v61, v53);
    sub_1D4F030F8();
    v63 = v62;
    v64 = *(v62 + 3);
    v95 = *(v62 + 2);
    v58 = v117;
    v59 = v103;
    v94 = v95 + 1;
    if (v95 >= v64 >> 1)
    {
      sub_1D4F030F8();
      v63 = v92;
    }

    (*(v55 + 8))(v61, v53);
    *(v63 + 2) = v94;
    v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v56 = *(v55 + 72);
    v96(&v63[v57 + v56 * v95], v110, v53);
    v123[0] = v63;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1D5621D90;
  v66 = v65 + v57;
  v67 = *(v55 + 104);
  v67(v66, *MEMORY[0x1E6975068], v53);
  v67(v66 + v56, *MEMORY[0x1E6975030], v53);
  sub_1D4EF38E4(v65);
  v68 = *(v58 + 16);
  v69 = v59;
  v70 = v120;
  v71 = v118;
  v68(v59, v120, v118);
  v72 = v102;
  swift_unknownObjectRetain();
  v73 = v112;
  sub_1D560E718();
  v74 = sub_1D560D9E8();
  v75 = v113;
  __swift_storeEnumTagSinglePayload(v113, 1, 1, v74);
  v76 = v75;
  v77 = v70;
  v78 = v104;
  sub_1D4F40E88(v72, v69, v73, v76, v104);
  v113 = *(v105 + 20);
  v68(v78 + v113, v77, v71);
  v122 = 2;
  OUTLINED_FUNCTION_0_242();
  sub_1D54C795C(v79, v80, MEMORY[0x1E6969558]);
  v81 = v114;
  v82 = v115;
  v83 = v100;
  sub_1D5615FD8();
  v84 = v116;
  v100 = v83;
  sub_1D4E55E1C(v101, v97);
  swift_unknownObjectRelease();
  if (v83)
  {
    v85 = v118;
    v86 = *(v117 + 8);
    v86(v77, v118);
    v87 = OUTLINED_FUNCTION_8_129();
    v88(v87);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v89 = sub_1D560D838();
    (*(*(v89 - 8) + 8))(v78, v89);
    return (v86)(v78 + v113, v85);
  }

  else
  {
    (*(v117 + 8))(v77, v118);
    v90 = OUTLINED_FUNCTION_8_129();
    v91(v90);
    (*(v106 + 32))(v78 + *(v105 + 24), v82, v81);
    sub_1D54C77C4(v78, v84);
    __swift_destroy_boxed_opaque_existential_1(v37);
    return sub_1D54C7828(v78);
  }
}

uint64_t sub_1D54C4E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
    case 18:
      return sub_1D560D908();
    case 2:
    case 4:
      return sub_1D560D948();
    case 3:
    case 19:
      return sub_1D560D938();
    case 5:
      return sub_1D560D918();
    case 6:
      if (qword_1EDD53D70 != -1)
      {
        swift_once();
      }

      v4 = sub_1D560D9A8();
      v5 = v4;
      v6 = qword_1EDD53D78;
      goto LABEL_36;
    case 7:
    case 21:
      if (qword_1EDD53D48 != -1)
      {
        swift_once();
      }

      v4 = sub_1D560D9A8();
      v5 = v4;
      v6 = qword_1EDD53D50;
      goto LABEL_36;
    case 8:
    case 22:
      return sub_1D560D878();
    case 9:
    case 23:
      return sub_1D560D968();
    case 10:
      return sub_1D560D998();
    case 11:
      return sub_1D560D888();
    case 12:
      if (qword_1EDD53D08 != -1)
      {
        swift_once();
      }

      v4 = sub_1D560D9A8();
      v5 = v4;
      v6 = qword_1EDD53D10;
      goto LABEL_36;
    case 13:
    case 25:
      return sub_1D560D8E8();
    case 14:
      return sub_1D560D958();
    case 15:
    case 26:
      if (qword_1EDD53C38 != -1)
      {
        swift_once();
      }

      v4 = sub_1D560D9A8();
      v5 = v4;
      v6 = qword_1EDD53C40;
      goto LABEL_36;
    case 16:
    case 27:
      if (qword_1EC7E95E8 != -1)
      {
        swift_once();
      }

      v4 = sub_1D560D9A8();
      v5 = v4;
      v6 = qword_1EC7F5D98;
      goto LABEL_36;
    case 17:
      if (qword_1EDD53CE8 != -1)
      {
        swift_once();
      }

      v4 = sub_1D560D9A8();
      v5 = v4;
      v6 = qword_1EDD53CF0;
      goto LABEL_36;
    case 20:
      if (qword_1EDD53C80 != -1)
      {
        swift_once();
      }

      v4 = sub_1D560D9A8();
      v5 = v4;
      v6 = qword_1EDD53C88;
      goto LABEL_36;
    case 24:
      if (qword_1EDD53CC0 != -1)
      {
        swift_once();
      }

      v4 = sub_1D560D9A8();
      v5 = v4;
      v6 = qword_1EDD53CC8;
LABEL_36:
      v8 = __swift_project_value_buffer(v4, v6);
      result = (*(*(v5 - 8) + 16))(a2, v8, v5);
      break;
    default:
      sub_1D54C76B4();
      swift_allocError();
      *v7 = 0;
      result = swift_willThrow();
      break;
  }

  return result;
}

uint64_t sub_1D54C51CC(void *a1)
{
  v3 = v1;
  v53[2] = *MEMORY[0x1E69E9840];
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v46 = v6;
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7348, &qword_1D5668CF0);
  OUTLINED_FUNCTION_4();
  v49 = v18;
  v50 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54C760C();
  v48 = v21;
  sub_1D56163D8();
  v22 = _s15PersistentEntryVMa(0);
  v23 = sub_1D54C5688();
  (*(v12 + 104))(v16, *MEMORY[0x1E69769A8], v10);
  v51 = v3;
  v24 = sub_1D4F42FA4(v23, v16);
  (*(v12 + 8))(v16, v10);
  v25 = objc_opt_self();
  v53[0] = 0;
  v26 = [v25 recentlySearchedArchivedDataForUnderlyingIdentifierSet:v24 modelObjectType:v23 error:v53];
  v27 = v53[0];
  if (v26)
  {
    v28 = sub_1D560C198();
    v30 = v29;
  }

  else
  {
    v31 = v27;
    v32 = sub_1D560BE98();

    v2 = v32;
    swift_willThrow();

    v28 = 0;
    v30 = 0xF000000000000000;
  }

  (*(v46 + 16))(v9, v51, v47);
  v33 = sub_1D54C5930(v9);
  v34 = v48;
  if (v33 == 28)
  {
    sub_1D54C76B4();
    swift_allocError();
    *v35 = 1;
    swift_willThrow();
    sub_1D50153E4(v28, v30);
    swift_unknownObjectRelease();
    return (*(v49 + 8))(v34, v50);
  }

  else
  {
    v37 = v33;
    v47 = v22;
    v53[0] = v28;
    v53[1] = v30;
    v52 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7350, &qword_1D5668CF8);
    sub_1D54C7884();
    OUTLINED_FUNCTION_12_98(v53, &v52);
    if (v2)
    {
      v38 = OUTLINED_FUNCTION_6_143();
      v39(v38);
      swift_unknownObjectRelease();
      return sub_1D50153E4(v28, v30);
    }

    else
    {
      sub_1D54C6C78(v37);
      LOBYTE(v53[0]) = 1;
      sub_1D5616088();

      v40 = *(v47 + 24);
      LOBYTE(v53[0]) = 2;
      sub_1D560C328();
      OUTLINED_FUNCTION_0_242();
      sub_1D54C795C(v41, v42, MEMORY[0x1E6969538]);
      OUTLINED_FUNCTION_12_98(v51 + v40, v53);
      v43 = OUTLINED_FUNCTION_6_143();
      v44(v43);
      sub_1D50153E4(v28, v30);
      return swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1D54C5688()
{
  v0 = sub_1D560D9A8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D5613158();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D560D8F8();
  if (dynamic_cast_existential_1_conditional(v8, v8, MEMORY[0x1E6976A40]))
  {
    sub_1D56134F8();
    v9 = sub_1D5159818();
    (*(v5 + 8))(v7, v4);
    return v9;
  }

  sub_1D560D948();
  v10 = sub_1D560D8C8();
  (*(v1 + 8))(v3, v0);
  if (v10)
  {
    return 5;
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD00000000000001DLL, 0x80000001D568F0B0);
  sub_1D54C795C(&qword_1EC7EC808, MEMORY[0x1E6974F80], MEMORY[0x1E6974F98]);
  v12 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v12);

  MEMORY[0x1DA6EAC70](0xD00000000000002ALL, 0x80000001D568F0D0);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D54C5930(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2C50, &unk_1D564AB80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v88[-v3];
  v96 = sub_1D560E728();
  v5 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v7 = &v88[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1D560DB08();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v94 = &v88[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v88[-v12];
  v13 = sub_1D560D9A8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v92 = &v88[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v93 = &v88[-v18];
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v88[-v19];
  sub_1D560D828();
  sub_1D560D588();
  sub_1D4ECA2CC();
  (*(v5 + 8))(v7, v96);
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
  {
    v21 = sub_1D560D838();
    (*(*(v21 - 8) + 8))(a1, v21);
    (*(v14 + 8))(v20, v13);
    sub_1D54C775C(v4);
    return 28;
  }

  v90 = a1;
  v91 = v20;
  v96 = v13;
  v23 = v14;
  v24 = v95;
  (*(v9 + 32))(v95, v4, v8);
  v25 = *(v9 + 104);
  v26 = v94;
  v25(v94, *MEMORY[0x1E6975060], v8);
  v27 = sub_1D560DAF8();
  v28 = *(v9 + 8);
  (v28)(v26, v8);
  if ((v27 & 1) == 0)
  {
    v25(v26, *MEMORY[0x1E6975040], v8);
    v29 = sub_1D560DAF8();
    (v28)(v26, v8);
    if ((v29 & 1) == 0)
    {
      v42 = sub_1D560D838();
      (*(*(v42 - 8) + 8))(v90, v42);
      (v28)(v24, v8);
      (*(v23 + 8))(v91, v96);
      return 28;
    }
  }

  v94 = v28;
  v89 = v27;
  v30 = v93;
  v31 = v91;
  v32 = v96;
  (*(v23 + 16))(v93, v91, v96);
  v33 = v92;
  sub_1D560D908();
  sub_1D54C795C(&qword_1EDD53C20, MEMORY[0x1E6974F80], MEMORY[0x1E6974F90]);
  v34 = sub_1D5614D18();
  v35 = *(v23 + 8);
  v35(v33, v32);
  if (v34)
  {
    v36 = sub_1D560D838();
    (*(*(v36 - 8) + 8))(v90, v36);
    v35(v30, v32);
    (v94)(v95, v8);
    v35(v31, v32);
    if (v89)
    {
      return 1;
    }

    else
    {
      return 18;
    }
  }

  sub_1D560D938();
  v37 = sub_1D5614D18();
  v35(v33, v32);
  if (v37)
  {
    v38 = sub_1D560D838();
    (*(*(v38 - 8) + 8))(v90, v38);
    v35(v30, v32);
    (v94)(v95, v8);
    v35(v91, v32);
    v39 = (v89 & 1) == 0;
    v40 = 19;
    v41 = 3;
    goto LABEL_12;
  }

  if (qword_1EDD53C80 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v32, qword_1EDD53C88);
  v43 = v93;
  if (sub_1D5614D18())
  {
    v44 = sub_1D560D838();
    (*(*(v44 - 8) + 8))(v90, v44);
    v35(v43, v32);
    (v94)(v95, v8);
    v35(v91, v32);
    return 20;
  }

  v45 = v92;
  sub_1D560D948();
  v46 = sub_1D5614D18();
  v35(v45, v32);
  if (v46)
  {
    v47 = sub_1D560D838();
    (*(*(v47 - 8) + 8))(v90, v47);
    v35(v43, v32);
    (v94)(v95, v8);
    v35(v91, v32);
    return 4;
  }

  if (qword_1EDD53D70 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v32, qword_1EDD53D78);
  v48 = v93;
  if (sub_1D5614D18())
  {
    v49 = sub_1D560D838();
    (*(*(v49 - 8) + 8))(v90, v49);
    v35(v48, v32);
    (v94)(v95, v8);
    v35(v91, v32);
    return 6;
  }

  v50 = v92;
  sub_1D560D918();
  v51 = sub_1D5614D18();
  v35(v50, v32);
  if (v51)
  {
    v52 = sub_1D560D838();
    (*(*(v52 - 8) + 8))(v90, v52);
    v35(v48, v32);
    (v94)(v95, v8);
    v35(v91, v32);
    return 5;
  }

  if (qword_1EDD53D48 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v32, qword_1EDD53D50);
  v53 = v93;
  v54 = sub_1D5614D18();
  v56 = v91;
  v55 = v92;
  if (v54)
  {
    v57 = sub_1D560D838();
    (*(*(v57 - 8) + 8))(v90, v57);
    v35(v53, v32);
    (v94)(v95, v8);
    v35(v56, v32);
    v39 = (v89 & 1) == 0;
    v40 = 21;
    v41 = 7;
    goto LABEL_12;
  }

  sub_1D560D878();
  v58 = sub_1D5614D18();
  v35(v55, v32);
  if (v58)
  {
    v59 = sub_1D560D838();
    (*(*(v59 - 8) + 8))(v90, v59);
    v35(v53, v32);
    (v94)(v95, v8);
    v35(v56, v32);
    v39 = (v89 & 1) == 0;
    v40 = 22;
    v41 = 8;
    goto LABEL_12;
  }

  sub_1D560D968();
  v60 = sub_1D5614D18();
  v35(v55, v32);
  if (v60)
  {
    v61 = sub_1D560D838();
    (*(*(v61 - 8) + 8))(v90, v61);
    v35(v53, v32);
    (v94)(v95, v8);
    v35(v56, v32);
    v39 = (v89 & 1) == 0;
    v40 = 23;
    v41 = 9;
    goto LABEL_12;
  }

  if (qword_1EDD53CC0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v32, qword_1EDD53CC8);
  v62 = v93;
  if (sub_1D5614D18())
  {
    v63 = sub_1D560D838();
    (*(*(v63 - 8) + 8))(v90, v63);
    v35(v62, v32);
    (v94)(v95, v8);
    v35(v91, v32);
    return 24;
  }

  v64 = v92;
  sub_1D560D998();
  v65 = sub_1D5614D18();
  v35(v64, v32);
  if (v65)
  {
    v66 = sub_1D560D838();
    (*(*(v66 - 8) + 8))(v90, v66);
    v35(v62, v32);
    (v94)(v95, v8);
    v35(v91, v32);
    return 10;
  }

  sub_1D560D888();
  v67 = sub_1D5614D18();
  v35(v64, v32);
  if (v67)
  {
    v68 = sub_1D560D838();
    (*(*(v68 - 8) + 8))(v90, v68);
    v35(v93, v32);
    (v94)(v95, v8);
    v35(v91, v32);
    return 11;
  }

  if (qword_1EDD53D08 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v32, qword_1EDD53D10);
  v69 = v93;
  if (sub_1D5614D18())
  {
    v70 = sub_1D560D838();
    (*(*(v70 - 8) + 8))(v90, v70);
    v35(v69, v32);
    (v94)(v95, v8);
    v35(v91, v32);
    return 12;
  }

  v71 = v92;
  sub_1D560D8E8();
  v72 = sub_1D5614D18();
  v35(v71, v32);
  if (v72)
  {
    v73 = sub_1D560D838();
    (*(*(v73 - 8) + 8))(v90, v73);
    v74 = v96;
    v35(v93, v96);
    (v94)(v95, v8);
    v35(v91, v74);
    v39 = (v89 & 1) == 0;
    v40 = 25;
    v41 = 13;
    goto LABEL_12;
  }

  v75 = v92;
  sub_1D560D958();
  v76 = v96;
  v77 = sub_1D5614D18();
  v35(v75, v76);
  if (v77)
  {
    v78 = sub_1D560D838();
    (*(*(v78 - 8) + 8))(v90, v78);
    v79 = v96;
    v35(v93, v96);
    (v94)(v95, v8);
    v35(v91, v79);
    return 14;
  }

  if (qword_1EDD53C38 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v96, qword_1EDD53C40);
  if (sub_1D5614D18())
  {
    v80 = sub_1D560D838();
    (*(*(v80 - 8) + 8))(v90, v80);
    v81 = v96;
    v35(v93, v96);
    (v94)(v95, v8);
    v35(v91, v81);
    v39 = (v89 & 1) == 0;
    v40 = 26;
    v41 = 15;
    goto LABEL_12;
  }

  if (qword_1EC7E95E8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v96, qword_1EC7F5D98);
  if (sub_1D5614D18())
  {
    v82 = sub_1D560D838();
    (*(*(v82 - 8) + 8))(v90, v82);
    v83 = v96;
    v35(v93, v96);
    (v94)(v95, v8);
    v35(v91, v83);
    v39 = (v89 & 1) == 0;
    v40 = 27;
    v41 = 16;
LABEL_12:
    if (v39)
    {
      return v40;
    }

    else
    {
      return v41;
    }
  }

  if (qword_1EDD53CE8 != -1)
  {
    swift_once();
  }

  v84 = v96;
  __swift_project_value_buffer(v96, qword_1EDD53CF0);
  v85 = v93;
  v86 = sub_1D5614D18();
  v87 = sub_1D560D838();
  (*(*(v87 - 8) + 8))(v90, v87);
  v35(v85, v84);
  (v94)(v95, v8);
  v35(v91, v84);
  if ((v86 & 1) == 0)
  {
    return 28;
  }

  return 17;
}

unint64_t sub_1D54C6C78(char a1)
{
  result = 0x6974697669746361;
  switch(a1)
  {
    case 1:
      result = 0x736D75626C61;
      break;
    case 2:
      result = 0x75632D656C707061;
      break;
    case 3:
      result = 0x73747369747261;
      break;
    case 4:
      result = 0x73726F7461727563;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6169726F74696465;
      break;
    case 7:
      result = 0x6F6D2D636973756DLL;
      break;
    case 8:
      result = 0x69762D636973756DLL;
      break;
    case 9:
      result = 0x7473696C79616C70;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x6C2D64726F636572;
      break;
    case 12:
      result = 0x702D6C6169636F73;
      break;
    case 13:
      result = 0x73676E6F73;
      break;
    case 14:
      result = 0x736E6F6974617473;
      break;
    case 15:
      result = 0x6F736970652D7674;
      break;
    case 16:
      result = 0x73776F68732D7674;
      break;
    case 17:
      result = 0x646564616F6C7075;
      break;
    case 18:
      result = 0x6D75626C61;
      break;
    case 19:
      result = 0x747369747261;
      break;
    case 20:
      result = 0x7265736F706D6F63;
      break;
    case 21:
      result = 0x6569766F6DLL;
      break;
    case 22:
      result = 0x646956636973756DLL;
      break;
    case 23:
    case 24:
      result = 0x7473696C79616C70;
      break;
    case 25:
      result = 1735290739;
      break;
    case 26:
      result = 0x646F736970457674;
      break;
    case 27:
      result = 0x776F68537674;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D54C6F90(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D5616208();

  if (v2 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D54C6FF0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D560D6E8() & 1) == 0)
  {
    return 0;
  }

  _s15PersistentEntryVMa(0);
  if ((sub_1D560D8C8() & 1) == 0)
  {
    return 0;
  }

  return sub_1D560C2E8();
}

uint64_t sub_1D54C7074(uint64_t a1)
{
  sub_1D560D838();
  OUTLINED_FUNCTION_3_185();
  sub_1D54C795C(v1, v2, MEMORY[0x1E6974F68]);
  sub_1D5614CB8();
  _s15PersistentEntryVMa(0);
  sub_1D560D9A8();
  OUTLINED_FUNCTION_2_181();
  sub_1D54C795C(v3, v4, MEMORY[0x1E6974F88]);
  sub_1D5614CB8();
  sub_1D560C328();
  OUTLINED_FUNCTION_0_242();
  sub_1D54C795C(v5, v6, MEMORY[0x1E6969540]);
  return sub_1D5614CB8();
}

uint64_t sub_1D54C7184()
{
  sub_1D56162D8();
  sub_1D560D838();
  OUTLINED_FUNCTION_3_185();
  sub_1D54C795C(v0, v1, MEMORY[0x1E6974F68]);
  sub_1D5614CB8();
  _s15PersistentEntryVMa(0);
  sub_1D560D9A8();
  OUTLINED_FUNCTION_2_181();
  v4 = sub_1D54C795C(v2, v3, MEMORY[0x1E6974F88]);
  OUTLINED_FUNCTION_16_3(v4, v5, v6, v7, v8, v9, v10, v11, v23, v25);
  sub_1D5614CB8();
  sub_1D560C328();
  OUTLINED_FUNCTION_0_242();
  v14 = sub_1D54C795C(v12, v13, MEMORY[0x1E6969540]);
  OUTLINED_FUNCTION_16_3(v14, v15, v16, v17, v18, v19, v20, v21, v24, v26);
  sub_1D5614CB8();
  return sub_1D5616328();
}

unint64_t sub_1D54C7294@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D54C6F90(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D54C72C4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D54C6C78(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_1D54C72F0@<X0>(void *a1@<X8>)
{
  result = sub_1D54C6FE4();
  *a1 = result;
  return result;
}

uint64_t sub_1D54C7438(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D560D838();
  OUTLINED_FUNCTION_3_185();
  sub_1D54C795C(v1, v2, MEMORY[0x1E6974F68]);
  sub_1D5614CB8();
  sub_1D560D9A8();
  OUTLINED_FUNCTION_2_181();
  v5 = sub_1D54C795C(v3, v4, MEMORY[0x1E6974F88]);
  OUTLINED_FUNCTION_16_3(v5, v6, v7, v8, v9, v10, v11, v12, v24, v26);
  sub_1D5614CB8();
  sub_1D560C328();
  OUTLINED_FUNCTION_0_242();
  v15 = sub_1D54C795C(v13, v14, MEMORY[0x1E6969540]);
  OUTLINED_FUNCTION_16_3(v15, v16, v17, v18, v19, v20, v21, v22, v25, v27);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D54C7570(uint64_t a1)
{
  result = sub_1D560D838();
  if (v2 <= 0x3F)
  {
    result = sub_1D560D9A8();
    if (v3 <= 0x3F)
    {
      result = sub_1D560C328();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1D54C760C()
{
  result = qword_1EDD5B028[0];
  if (!qword_1EDD5B028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD5B028);
  }

  return result;
}

unint64_t sub_1D54C7660()
{
  result = qword_1EDD5CF78;
  if (!qword_1EDD5CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5CF78);
  }

  return result;
}

unint64_t sub_1D54C76B4()
{
  result = qword_1EC7F7340;
  if (!qword_1EC7F7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7340);
  }

  return result;
}

unint64_t sub_1D54C7708()
{
  result = qword_1EDD5AFF0;
  if (!qword_1EDD5AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5AFF0);
  }

  return result;
}

uint64_t sub_1D54C775C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2C50, &unk_1D564AB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D54C77C4(uint64_t a1, uint64_t a2)
{
  v4 = _s15PersistentEntryVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D54C7828(uint64_t a1)
{
  v2 = _s15PersistentEntryVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D54C7884()
{
  result = qword_1EDD5CF70;
  if (!qword_1EDD5CF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F7350, &qword_1D5668CF8);
    sub_1D54C7908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5CF70);
  }

  return result;
}

unint64_t sub_1D54C7908()
{
  result = qword_1EDD5CF80;
  if (!qword_1EDD5CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5CF80);
  }

  return result;
}

uint64_t sub_1D54C795C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

_BYTE *_s15PersistentEntryV4KindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE4)
  {
    v6 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 27;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s15PersistentEntryV31MusicRecentlySearchedEntryErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s15PersistentEntryV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D54C7C3C()
{
  result = qword_1EC7F7358;
  if (!qword_1EC7F7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7358);
  }

  return result;
}

unint64_t sub_1D54C7C94()
{
  result = qword_1EC7F7360;
  if (!qword_1EC7F7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7360);
  }

  return result;
}

unint64_t sub_1D54C7D1C()
{
  result = qword_1EC7F7378;
  if (!qword_1EC7F7378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7378);
  }

  return result;
}

unint64_t sub_1D54C7DA4()
{
  result = qword_1EDD5B018;
  if (!qword_1EDD5B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5B018);
  }

  return result;
}

unint64_t sub_1D54C7DFC()
{
  result = qword_1EDD5B020;
  if (!qword_1EDD5B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5B020);
  }

  return result;
}

unint64_t sub_1D54C7E50()
{
  result = qword_1EDD5AFF8;
  if (!qword_1EDD5AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5AFF8);
  }

  return result;
}

void sub_1D54C7EA8(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  if (a1 >= 4)
  {
    if (qword_1EDD5D8A0 != -1)
    {
      swift_once();
    }

    v4 = sub_1D560C758();
    __swift_project_value_buffer(v4, qword_1EDD76DB0);
    v5 = sub_1D560C738();
    v6 = sub_1D56156C8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      type metadata accessor for ICAgeVerificationStatus();
      v9 = sub_1D5614DB8();
      v11 = sub_1D4E6835C(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1D4E3F000, v5, v6, "Unknown ICAgeVerificationStatus: %{public}s. Treating as .unknown.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1DA6ED200](v8, -1, -1);
      MEMORY[0x1DA6ED200](v7, -1, -1);
    }

    v2 = 0;
  }

  *a2 = v2;
}

uint64_t UserState.AgeVerificationStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t UserState.AgeVerificationStatus.description.getter()
{
  result = 0x6E776F6E6B6E752ELL;
  switch(*v0)
  {
    case 1:
      result = 0x75716552746F6E2ELL;
      break;
    case 2:
      result = 0x657269757165722ELL;
      break;
    case 3:
      result = 0x656966697265762ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D54C8150()
{
  result = qword_1EC7F7390;
  if (!qword_1EC7F7390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F7398, &qword_1D56690A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7390);
  }

  return result;
}

unint64_t sub_1D54C81B8()
{
  result = qword_1EC7F73A0;
  if (!qword_1EC7F73A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F73A0);
  }

  return result;
}

_BYTE *_s21AgeVerificationStatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t MusicCollaborativePlaylist.ReactionRequest.init(playlist:entry:reaction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1D5614898();
  OUTLINED_FUNCTION_14();
  (*(v10 + 32))(a5, a1);
  v11 = type metadata accessor for MusicCollaborativePlaylist.ReactionRequest(0);
  v12 = *(v11 + 20);
  sub_1D5614828();
  OUTLINED_FUNCTION_14();
  result = (*(v13 + 32))(a5 + v12, a2);
  v15 = (a5 + *(v11 + 24));
  *v15 = a3;
  v15[1] = a4;
  return result;
}

uint64_t type metadata accessor for MusicCollaborativePlaylist.ReactionRequest(uint64_t a1)
{
  result = qword_1EC7F73B0;
  if (!qword_1EC7F73B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicCollaborativePlaylist.ReactionRequest.playlist.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5614898();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t MusicCollaborativePlaylist.ReactionRequest.entry.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicCollaborativePlaylist.ReactionRequest(0) + 20);
  sub_1D5614828();
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t MusicCollaborativePlaylist.ReactionRequest.reaction.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicCollaborativePlaylist.ReactionRequest(0) + 24));

  return v1;
}

uint64_t MusicCollaborativePlaylist.ReactionRequest.response()()
{
  v1[18] = v0;
  v2 = sub_1D5614828();
  v1[19] = v2;
  OUTLINED_FUNCTION_69(v2);
  v1[20] = v3;
  v1[21] = swift_task_alloc();
  v4 = sub_1D5614898();
  v1[22] = v4;
  OUTLINED_FUNCTION_69(v4);
  v1[23] = v5;
  v1[24] = swift_task_alloc();
  v6 = sub_1D56131C8();
  v1[25] = v6;
  OUTLINED_FUNCTION_69(v6);
  v1[26] = v7;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D54C867C, 0, 0);
}

uint64_t sub_1D54C867C()
{
  v1 = v0;
  v33 = v0 + 2;
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v6 = v1[24];
  v5 = v1[25];
  v7 = v1[23];
  v28 = v1[20];
  v29 = v1[22];
  v8 = v1[18];
  v31 = v1[19];
  v32 = v1[21];
  v24 = v8;
  v27 = *MEMORY[0x1E6976988];
  v26 = v4[13];
  v26(v2);
  v25 = v4[2];
  v25(v3, v2, v5);
  (*(v7 + 16))(v6, v8, v29);
  v9 = v6;
  v10 = v3;
  sub_1D4ECAE6C(v9, v3);
  v30 = v11;
  v12 = v4[1];
  v12(v2, v5);
  v13 = type metadata accessor for MusicCollaborativePlaylist.ReactionRequest(0);
  v14 = *(v13 + 20);
  (v26)(v2, v27, v5);
  v25(v10, v2, v5);
  (*(v28 + 16))(v32, v24 + v14, v31);
  sub_1D4ECAE44(v32, v10);
  v16 = v15;
  v12(v2, v5);
  v17 = (v24 + *(v13 + 24));
  v19 = *v17;
  v18 = v17[1];
  v20 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPlaylistEntryReactionChangeRequest);

  v21 = sub_1D54C8FA8(v30, v16, v19, v18);
  v1[29] = v21;
  v1[2] = v1;
  v1[3] = sub_1D54C8940;
  v22 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1D4FE2404;
  v1[13] = &block_descriptor_32;
  v1[14] = v22;
  [v21 performWithResponseHandler_];

  return MEMORY[0x1EEE6DEC8](v33);
}

uint64_t sub_1D54C8940()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_1D54C8AE8;
  }

  else
  {
    v2 = sub_1D54C8A50;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D54C8A50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D54C8AE8(uint64_t a1)
{
  v2 = *(v1 + 232);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t static MusicCollaborativePlaylist.ReactionRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0())
  {
    v4 = type metadata accessor for MusicCollaborativePlaylist.ReactionRequest(0);
    if (sub_1D5614778())
    {
      v5 = *(v4 + 24);
      v6 = (a1 + v5);
      v7 = *(a1 + v5 + 8);
      v8 = (a2 + v5);
      v9 = v8[1];
      if (v7)
      {
        if (v9)
        {
          v10 = *v6 == *v8 && v7 == v9;
          if (v10 || (sub_1D5616168() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v9)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t MusicCollaborativePlaylist.ReactionRequest.hash(into:)(uint64_t a1)
{
  sub_1D5614898();
  OUTLINED_FUNCTION_1_180();
  sub_1D54C9080(v2, v3, MEMORY[0x1E69773F0]);
  sub_1D5614CB8();
  v4 = type metadata accessor for MusicCollaborativePlaylist.ReactionRequest(0);
  sub_1D5614828();
  OUTLINED_FUNCTION_0_243();
  sub_1D54C9080(v5, v6, MEMORY[0x1E6977320]);
  sub_1D5614CB8();
  if (!*(v1 + *(v4 + 24) + 8))
  {
    return sub_1D56162F8();
  }

  sub_1D56162F8();

  return sub_1D5614E28();
}

uint64_t MusicCollaborativePlaylist.ReactionRequest.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614898();
  OUTLINED_FUNCTION_1_180();
  sub_1D54C9080(v1, v2, MEMORY[0x1E69773F0]);
  sub_1D5614CB8();
  v3 = type metadata accessor for MusicCollaborativePlaylist.ReactionRequest(0);
  sub_1D5614828();
  OUTLINED_FUNCTION_0_243();
  sub_1D54C9080(v4, v5, MEMORY[0x1E6977320]);
  sub_1D5614CB8();
  if (*(v0 + *(v3 + 24) + 8))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  return sub_1D5616328();
}

uint64_t sub_1D54C8E7C(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  sub_1D5614898();
  sub_1D54C9080(&qword_1EC7EB6C8, MEMORY[0x1E69773E0], MEMORY[0x1E69773F0]);
  sub_1D5614CB8();
  sub_1D5614828();
  sub_1D54C9080(&qword_1EC7EB050, MEMORY[0x1E6977318], MEMORY[0x1E6977320]);
  sub_1D5614CB8();
  if (*(v2 + *(a2 + 24) + 8))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  return sub_1D5616328();
}

id sub_1D54C8FA8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a4)
  {
    v8 = sub_1D5614D38();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithPlaylist:a1 playlistEntry:a2 reactionText:v8];

  return v9;
}

uint64_t sub_1D54C9080(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_1D54C90F0(uint64_t a1)
{
  sub_1D5614898();
  if (v1 <= 0x3F)
  {
    sub_1D5614828();
    if (v2 <= 0x3F)
    {
      sub_1D4F18AF4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D54C918C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  if (qword_1EDD53F90 != -1)
  {
    swift_once();
  }

  v10 = sub_1D56140F8();
  sub_1D54CC048(&qword_1EDD57518, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  sub_1D54CC048(&qword_1EC7EE028, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    sub_1D4E765C8(v6, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v11 = 1;
  }

  else
  {
    sub_1D5613F28();
    (*(*(v10 - 8) + 8))(v6, v10);
    v11 = 0;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  __swift_storeEnumTagSinglePayload(v9, v11, 1, v12);
  if (qword_1EDD53F98 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v29 = v35;
  v30 = v34;
  v13 = v2[1];
  v31 = *v2;
  v32 = v13;
  v14 = qword_1EDD53F88;

  if (v14 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v15 = v34;
  if (qword_1EDD53FD0 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v16 = v34;
  if (qword_1EDD53FA8 != -1)
  {
    swift_once();
  }

  v33 = v9;
  sub_1D560EC28();
  v27 = v35;
  v28 = v34;
  if (qword_1EDD53FB0 != -1)
  {
    swift_once();
  }

  v17 = v16 & 1;
  v18 = type metadata accessor for StorePlatformSocialProfile(0);
  sub_1D560C0A8();
  sub_1D560EC28();
  sub_1D560EC28();
  result = sub_1D54CBF64(v33, a1, &qword_1EC7EB5B8, &unk_1D56206A0);
  v20 = (a1 + v18[5]);
  v21 = v29;
  *v20 = v30;
  v20[1] = v21;
  v22 = (a1 + v18[6]);
  v23 = v32;
  *v22 = v31;
  v22[1] = v23;
  *(a1 + v18[7]) = v15 & 1;
  *(a1 + v18[8]) = v17;
  v24 = (a1 + v18[9]);
  v25 = v27;
  *v24 = v28;
  v24[1] = v25;
  return result;
}

uint64_t sub_1D54C963C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v52 = a3;
  v53 = a2;
  v50 = a4;
  v51 = sub_1D560CD48();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F73E0, &qword_1D56693C8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v45 - v10;
  v12 = type metadata accessor for StorePlatformSocialProfile(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v47 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v45 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F73E8, &qword_1D56693D0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v45 - v20;
  v22 = type metadata accessor for StorePlatformUserProfile(0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v45 - v26;
  sub_1D54CC0E4(a1, &v45 - v26);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v12);
  v28 = *(a1 + *(v22 + 76) + 8);
  v54 = a1;
  if (v28)
  {
    v45 = v12;
    v29 = *(a1 + *(type metadata accessor for StorePlatformUserProfileResponse(0) + 20));
    if (!v29)
    {
      v31 = type metadata accessor for StorePlatformGenericMusicItem(0);
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v31);
LABEL_8:
      sub_1D4E765C8(v11, &qword_1EC7F73E0, &qword_1D56693C8);
      goto LABEL_9;
    }

    v30 = sub_1D4ED08E0(0x70756B636F6CLL, 0xE600000000000000, v29);
    if (v30)
    {
      sub_1D51025E8(v30, v9);
    }

    else
    {
      v32 = type metadata accessor for StorePlatformGenericMusicItem(0);
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v32);
    }

    sub_1D54CBF64(v9, v11, &qword_1EC7F73E0, &qword_1D56693C8);
    v33 = type metadata accessor for StorePlatformGenericMusicItem(0);
    if (__swift_getEnumTagSinglePayload(v11, 1, v33) == 1)
    {
      goto LABEL_8;
    }

    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1D4E765C8(v21, &qword_1EC7F73E8, &qword_1D56693D0);
      v40 = v46;
      sub_1D54CBFAC(v11, v46);
      v41 = v47;
      sub_1D54CC0E4(v40, v47);
      v42 = v45;
      v43 = *(v40 + *(v45 + 32));
      sub_1D54CC090(v40, type metadata accessor for StorePlatformSocialProfile);
      if (v43 == 2)
      {
        v44 = v27[*(v22 + 64)];
        if (v44 != 2)
        {
          *(v41 + *(v42 + 32)) = v44;
        }
      }

      sub_1D54CBFAC(v41, v21);
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v42);
    }

    else
    {
      sub_1D54CC090(v11, type metadata accessor for StorePlatformGenericMusicItem);
    }
  }

LABEL_9:
  v34 = v25;
  sub_1D54CC0E4(v27, v25);
  sub_1D54CC000(v21, v19, &qword_1EC7F73E8, &qword_1D56693D0);
  v36 = v48;
  v35 = v49;
  v37 = v53;
  v38 = v51;
  (*(v49 + 16))(v48, v53, v51);
  sub_1D54C9C04(v34, v19, v36, v52, v50);
  (*(v35 + 8))(v37, v38);
  sub_1D4E765C8(v21, &qword_1EC7F73E8, &qword_1D56693D0);
  sub_1D54CC090(v27, type metadata accessor for StorePlatformUserProfile);
  return sub_1D54CC090(v54, type metadata accessor for StorePlatformUserProfileResponse);
}

uint64_t sub_1D54C9C04@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v118 = a5;
  v119 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v103 = &v94 - v9;
  v10 = sub_1D560CD48();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for SocialProfile(0);
  v98 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v101 = (&v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F73E8, &qword_1D56693D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v116 = &v94 - v15;
  v115 = type metadata accessor for StorePlatformSocialProfile(0);
  v16 = MEMORY[0x1EEE9AC00](v115);
  v97 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v100 = &v94 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v123 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v110 = &v94 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v114 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v111 = &v94 - v26;
  v27 = type metadata accessor for UserProfilePropertyProvider(0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v28 + 20);
  v32 = sub_1D56140F8();
  v109 = v31;
  __swift_storeEnumTagSinglePayload(v30 + v31, 1, 1, v32);
  v33 = v27[6];
  v112 = v32;
  v113 = v33;
  __swift_storeEnumTagSinglePayload(v30 + v33, 1, 1, v32);
  v34 = v27[19];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  __swift_storeEnumTagSinglePayload(v30 + v34, 1, 1, v35);
  __swift_storeEnumTagSinglePayload(v30 + v27[20], 1, 1, v35);
  __swift_storeEnumTagSinglePayload(v30 + v27[21], 1, 1, v35);
  v36 = v27[22];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  __swift_storeEnumTagSinglePayload(v30 + v36, 1, 1, v37);
  __swift_storeEnumTagSinglePayload(v30 + v27[23], 1, 1, v37);
  v95 = v27[24];
  v96 = v35;
  __swift_storeEnumTagSinglePayload(v30 + v95, 1, 1, v35);
  v38 = v27[25];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  __swift_storeEnumTagSinglePayload(v30 + v38, 1, 1, v39);
  if (qword_1EDD53D28 != -1)
  {
    swift_once();
  }

  v117 = v11;
  v120 = v10;
  v121 = a3;
  v122 = a2;
  v40 = sub_1D560D9A8();
  v41 = __swift_project_value_buffer(v40, qword_1EDD53D30);
  if (qword_1EDD55560 != -1)
  {
    swift_once();
  }

  v42 = sub_1D5610088();
  v43 = __swift_project_value_buffer(v42, qword_1EDD76B70);
  v44 = type metadata accessor for StorePlatformUserProfile(0);
  sub_1D54301F4(v43, v41, *&a1[v44[7]], *&a1[v44[7] + 8], v30 + v27[27]);
  v108 = sub_1D560FDE8();
  v107 = v45;
  sub_1D5614A88();
  v106 = sub_1D5614BD8();
  v105 = sub_1D5614BD8();
  v104 = sub_1D5614BD8();
  v46 = sub_1D5614BD8();
  *v30 = 0;
  *(v30 + v27[7]) = 2;
  if (qword_1EDD54F08 != -1)
  {
    swift_once();
  }

  v47 = qword_1EDD76B68;
  if (qword_1EDD76B68 >> 62)
  {
    sub_1D560CDE8();

    v93 = sub_1D5615E18();

    v47 = v93;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *(v30 + v27[26]) = v47;
  (*(*(v42 - 8) + 16))(v30 + v27[28], v43, v42);
  v48 = (v30 + v27[29]);
  v49 = v107;
  *v48 = v108;
  v48[1] = v49;
  *(v30 + v27[30]) = v106;
  *(v30 + v27[31]) = v105;
  *(v30 + v27[32]) = v104;
  *(v30 + v27[33]) = v46;
  v50 = v110;
  sub_1D54CC000(&a1[v44[18]], v110, &qword_1EC7EB5B8, &unk_1D56206A0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  if (__swift_getEnumTagSinglePayload(v50, 1, v51) == 1)
  {
    sub_1D4E765C8(v50, &qword_1EC7EB5B8, &unk_1D56206A0);
    v52 = 1;
    v53 = v123;
    v55 = v111;
    v54 = v112;
  }

  else
  {
    v55 = v111;
    sub_1D5610758();
    (*(*(v51 - 8) + 8))(v50, v51);
    v52 = 0;
    v53 = v123;
    v54 = v112;
  }

  __swift_storeEnumTagSinglePayload(v55, v52, 1, v54);
  sub_1D54CC19C(v55, v30 + v109, &qword_1EC7E9CA0, &unk_1D561A0C0);
  sub_1D54CC000(&a1[v44[5]], v53, &qword_1EC7EB5B8, &unk_1D56206A0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v51);
  v123 = a1;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E765C8(v53, &qword_1EC7EB5B8, &unk_1D56206A0);
    v57 = 1;
    v58 = v114;
  }

  else
  {
    v58 = v114;
    sub_1D5610758();
    (*(*(v51 - 8) + 8))(v53, v51);
    v57 = 0;
  }

  __swift_storeEnumTagSinglePayload(v58, v57, 1, v54);
  v59 = (v30 + v27[8]);
  v60 = (v30 + v27[9]);
  v61 = v27[10];
  v62 = v27[11];
  v63 = v27[12];
  v64 = v27[13];
  v65 = v27[14];
  v114 = v27[15];
  v66 = v58;
  v67 = (v30 + v27[18]);
  v68 = v27[17];
  v110 = v27[16];
  v111 = v65;
  v112 = v68;
  sub_1D54CC19C(v66, v30 + v113, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v69 = v123;
  v70 = &v123[v44[6]];
  v71 = *v70;
  LOBYTE(v70) = v70[8];
  *v59 = v71;
  v59[8] = v70;
  v72 = &v69[v44[9]];
  v73 = *(v72 + 1);
  *v60 = *v72;
  v60[1] = v73;
  *(v30 + v61) = *v69;
  *(v30 + v62) = v69[v44[10]];
  *(v30 + v63) = v69[v44[11]];
  *(v30 + v64) = v69[v44[12]];
  v111[v30] = v69[v44[13]];
  *(v30 + v114) = v69[v44[14]];
  *(v30 + v110) = v69[v44[15]];
  *(v30 + v112) = v69[v44[16]];
  v74 = &v69[v44[17]];
  v75 = *(v74 + 1);
  *v67 = *v74;
  v67[1] = v75;
  v76 = v122;
  v77 = v116;
  sub_1D54CC000(v122, v116, &qword_1EC7F73E8, &qword_1D56693D0);
  if (__swift_getEnumTagSinglePayload(v77, 1, v115) == 1)
  {

    sub_1D4E765C8(v77, &qword_1EC7F73E8, &qword_1D56693D0);
    v79 = v120;
    v78 = v121;
    v80 = v117;
  }

  else
  {
    v81 = v100;
    sub_1D54CBFAC(v77, v100);
    v82 = v97;
    sub_1D54CC0E4(v81, v97);
    v80 = v117;
    v83 = v99;
    (*(v117 + 16))(v99, v121, v120);
    v84 = v119;

    v85 = v101;
    sub_1D5444674(v82, v83, v84, v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F73F0, &qword_1D56693D8);
    v86 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1D561C050;
    sub_1D54CC0E4(v85, v87 + v86);
    v124[0] = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F73F8, &qword_1D56693E0);
    sub_1D54CC048(&qword_1EDD57518, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
    sub_1D54CC138();
    v88 = v103;
    v79 = v120;
    sub_1D560DAD8();
    v89 = v85;
    v76 = v122;
    sub_1D54CC090(v89, type metadata accessor for SocialProfile);
    sub_1D54CC090(v81, type metadata accessor for StorePlatformSocialProfile);
    __swift_storeEnumTagSinglePayload(v88, 0, 1, v96);
    v90 = v88;
    v78 = v121;
    sub_1D54CC19C(v90, v30 + v95, &qword_1EC7EA778, &qword_1D5622E60);
  }

  v124[3] = v27;
  v124[4] = sub_1D54CC048(&qword_1EDD54EF0, type metadata accessor for UserProfilePropertyProvider, &unk_1D561E6A0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v124);
  sub_1D54CC0E4(v30, boxed_opaque_existential_0);
  UserProfile.init(propertyProvider:)(v124, v118);

  (*(v80 + 8))(v78, v79);
  sub_1D4E765C8(v76, &qword_1EC7F73E8, &qword_1D56693D0);
  sub_1D54CC090(v123, type metadata accessor for StorePlatformUserProfile);
  return sub_1D54CC090(v30, type metadata accessor for UserProfilePropertyProvider);
}

uint64_t sub_1D54CA9BC@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for StorePlatformUserProfile(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D54CAD14(v11);
  UserProfile.socialProfile.getter(v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1D4E765C8(v5, &unk_1EC7ED370, &unk_1D5624FE0);
    v12 = 0;
  }

  else
  {
    sub_1D54CBFAC(v5, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F73C8, &qword_1D56693A8);
    inited = swift_initStackObject();
    v22 = xmmword_1D561C050;
    *(inited + 16) = xmmword_1D561C050;
    *(inited + 32) = 0x70756B636F6CLL;
    *(inited + 40) = 0xE600000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F73D0, &qword_1D56693B0);
    v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F73D8, &unk_1D56693B8) - 8);
    v15 = *(*v14 + 80);
    v23 = a2;
    v16 = (v15 + 32) & ~v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v22;
    v18 = (v17 + v16);
    v19 = v14[14];
    v20 = v8[1];
    *v18 = *v8;
    v18[1] = v20;

    sub_1D54C918C(v18 + v19);
    type metadata accessor for StorePlatformGenericMusicItem(0);
    a2 = v23;
    swift_storeEnumTagMultiPayload();
    sub_1D4F53BAC();
    *(inited + 48) = sub_1D5614BD8();
    sub_1D50B8790();
    v12 = sub_1D5614BD8();
    sub_1D54CC090(v8, type metadata accessor for SocialProfile);
  }

  sub_1D54CBFAC(v11, a2);
  result = type metadata accessor for StorePlatformUserProfileResponse(0);
  *(a2 + *(result + 20)) = v12;
  return result;
}

uint64_t sub_1D54CAD14@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v48 - v16;
  if (qword_1EDD540F0 != -1)
  {
    swift_once();
  }

  sub_1D54CC048(&qword_1EDD57E88, type metadata accessor for UserProfile, &protocol conformance descriptor for UserProfile);
  sub_1D54CC048(&qword_1EDD57E78, type metadata accessor for UserProfile, &protocol conformance descriptor for UserProfile);
  sub_1D560EC28();
  v63 = v67;
  if (qword_1EDD54110 != -1)
  {
    swift_once();
  }

  v17 = sub_1D56140F8();
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v11, 1, v17) == 1)
  {
    sub_1D4E765C8(v11, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v18 = 1;
    v19 = v66;
  }

  else
  {
    v19 = v66;
    sub_1D5613F28();
    (*(*(v17 - 8) + 8))(v11, v17);
    v18 = 0;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  __swift_storeEnumTagSinglePayload(v19, v18, 1, v20);
  if (qword_1EDD540B0 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v59 = v68;
  v21 = v2[1];
  v62 = *v2;
  v22 = qword_1EDD54098;
  v60 = v67;
  v61 = v21;

  v23 = v15;
  if (v22 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v57 = v68;
  v58 = v67;
  v24 = v64;
  if (qword_1EDD540C8 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v56 = v67;
  if (qword_1EDD540C0 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v55 = v67;
  if (qword_1EDD54148 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v54 = v67;
  if (qword_1EDD54150 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v53 = v67;
  if (qword_1EDD540E8 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v52 = v67;
  if (qword_1EDD54050 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v51 = v67;
  if (qword_1EDD54158 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v25 = v67;
  if (qword_1EDD540A0 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v49 = v68;
  v50 = v67;
  if (qword_1EDD54088 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v9, 1, v17) == 1)
  {
    sub_1D4E765C8(v9, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v26 = 1;
  }

  else
  {
    sub_1D5613F28();
    (*(*(v17 - 8) + 8))(v9, v17);
    v26 = 0;
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  __swift_storeEnumTagSinglePayload(v23, v26, 1, v27);
  UserProfile.socialProfile.getter(v24);
  v28 = type metadata accessor for SocialProfile(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v28);
  v65 = v23;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E765C8(v24, &unk_1EC7ED370, &unk_1D5624FE0);
    v48 = 0;
    v30 = 0;
  }

  else
  {
    v30 = v24[1];
    v48 = *v24;

    sub_1D54CC090(v24, type metadata accessor for SocialProfile);
  }

  v31 = v56 & 1;
  v32 = v55 & 1;
  v33 = v54 & 1;
  v34 = v53 & 1;
  v35 = v52 & 1;
  v36 = v51 & 1;
  v37 = v25 & 1;
  *a1 = v63 & 1;
  v38 = type metadata accessor for StorePlatformUserProfile(0);
  sub_1D54CBF64(v66, &a1[v38[5]], &qword_1EC7EB5B8, &unk_1D56206A0);
  v39 = &a1[v38[6]];
  *v39 = v60;
  v39[8] = v59;
  v40 = &a1[v38[7]];
  v41 = v61;
  *v40 = v62;
  v40[1] = v41;
  *&a1[v38[8]] = xmmword_1D5669250;
  v42 = &a1[v38[9]];
  v43 = v57;
  *v42 = v58;
  v42[1] = v43;
  a1[v38[10]] = v31;
  a1[v38[11]] = v32;
  a1[v38[12]] = v33;
  a1[v38[13]] = v34;
  a1[v38[14]] = v35;
  a1[v38[15]] = v36;
  a1[v38[16]] = v37;
  v44 = &a1[v38[17]];
  v45 = v49;
  *v44 = v50;
  v44[1] = v45;
  result = sub_1D54CBF64(v65, &a1[v38[18]], &qword_1EC7EB5B8, &unk_1D56206A0);
  v47 = &a1[v38[19]];
  *v47 = v48;
  v47[1] = v30;
  return result;
}