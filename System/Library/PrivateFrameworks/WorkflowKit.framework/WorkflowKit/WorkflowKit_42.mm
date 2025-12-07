void sub_1CA6B0650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  if (a3)
  {
    v7 = a3;
    if (*(a4 + 16) != a3)
    {
      OUTLINED_FUNCTION_105_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4448D0, &unk_1CA992050);
      OUTLINED_FUNCTION_171();
      v8 = sub_1CA94D3E8();
      if (v4 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *v5;
      }

      v10 = 0;
      v27 = v6;
      v28 = v8;
      while (v9)
      {
        v11 = __clz(__rbit64(v9));
        v29 = (v9 - 1) & v9;
LABEL_16:
        v15 = *(v6 + 48) + 32 * (v11 | (v10 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = *(v15 + 24);
        sub_1CA94D918();
        sub_1CA94C218();
        sub_1CA94C218();
        v31 = v16;
        sub_1CA94C458();
        v30 = v18;
        sub_1CA94D948();
        MEMORY[0x1CCAA2780](*(v19 + 16));
        v20 = *(v19 + 16);
        if (v20)
        {
          v21 = v19 + 32;
          do
          {
            v21 += 8;
            OUTLINED_FUNCTION_126_5();
            --v20;
          }

          while (v20);
        }

        sub_1CA94D968();
        OUTLINED_FUNCTION_13_38();
        OUTLINED_FUNCTION_34_0();
        if (v22)
        {
          OUTLINED_FUNCTION_5_2();
          while (1)
          {
            OUTLINED_FUNCTION_35_15();
            if (v22)
            {
              if (v23)
              {
                goto LABEL_31;
              }
            }

            OUTLINED_FUNCTION_104_6();
            OUTLINED_FUNCTION_68_11();
            if (!v22)
            {
              OUTLINED_FUNCTION_3_7();
              goto LABEL_27;
            }
          }
        }

        OUTLINED_FUNCTION_6_4();
LABEL_27:
        OUTLINED_FUNCTION_2_11();
        OUTLINED_FUNCTION_67_9();
        v25 = *(v28 + 48) + 32 * v24;
        *v25 = v31;
        *(v25 + 8) = v17;
        *(v25 + 16) = v30;
        *(v25 + 24) = v19;
        OUTLINED_FUNCTION_69_10();
        if (__OFSUB__(v7--, 1))
        {
          goto LABEL_32;
        }

        v6 = v27;
        v9 = v29;
        if (!v7)
        {
          goto LABEL_5;
        }
      }

      v12 = v10;
      while (1)
      {
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v10 >= v4)
        {
          goto LABEL_5;
        }

        ++v12;
        if (v5[v10])
        {
          OUTLINED_FUNCTION_1_41();
          v29 = v14 & v13;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_1CA6B0888()
{
  OUTLINED_FUNCTION_37_0();
  v4 = v3;
  if (!v2)
  {
LABEL_5:

    goto LABEL_6;
  }

  v5 = v2;
  if (*(v3 + 16) == v2)
  {
LABEL_6:
    OUTLINED_FUNCTION_36();
    return;
  }

  OUTLINED_FUNCTION_105_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444898, &unk_1CA984350);
  OUTLINED_FUNCTION_171();
  v6 = sub_1CA94D3E8();
  v7 = v6;
  if (v0 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v1;
  }

  v9 = 0;
  v10 = v6 + 56;
  while (v8)
  {
    OUTLINED_FUNCTION_32_18();
LABEL_16:
    v15 = *(*(v4 + 48) + 8 * (v11 | (v9 << 6)));
    sub_1CA94D908();
    OUTLINED_FUNCTION_44_10();
    if (((-1 << v17) & ~*(v10 + 8 * v16)) == 0)
    {
      OUTLINED_FUNCTION_5_2();
      while (1)
      {
        OUTLINED_FUNCTION_35_15();
        if (v21)
        {
          if (v19)
          {
            goto LABEL_30;
          }
        }

        if (v18 == v20)
        {
          v18 = 0;
        }

        if (*(v10 + 8 * v18) != -1)
        {
          OUTLINED_FUNCTION_3_7();
          goto LABEL_26;
        }
      }
    }

    OUTLINED_FUNCTION_6_4();
LABEL_26:
    OUTLINED_FUNCTION_2_11();
    *(v10 + v22) |= v23;
    *(*(v7 + 48) + 8 * v24) = v15;
    OUTLINED_FUNCTION_69_10();
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v12 = v9;
  while (1)
  {
    v9 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v9 >= v0)
    {
      goto LABEL_5;
    }

    ++v12;
    if (v1[v9])
    {
      OUTLINED_FUNCTION_1_41();
      v8 = v14 & v13;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_1CA6B0A00(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1CA9494C8();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC448120, &qword_1CA9824A0);
  result = sub_1CA94D3E8();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1CA6B2C04(qword_1EC441DA0, MEMORY[0x1E69A1168]);
    result = sub_1CA94C288();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_27:

      return v10;
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
      goto LABEL_27;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1CA6B0D34()
{
  OUTLINED_FUNCTION_37_0();
  v4 = v3;
  if (!v2)
  {
LABEL_5:

    goto LABEL_6;
  }

  v5 = v2;
  if (*(v3 + 16) == v2)
  {
LABEL_6:
    OUTLINED_FUNCTION_36();
    return;
  }

  OUTLINED_FUNCTION_105_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_171();
  v8 = sub_1CA94D3E8();
  v9 = v8;
  if (v0 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v1;
  }

  v11 = 0;
  v12 = v8 + 56;
  while (v10)
  {
    OUTLINED_FUNCTION_32_18();
LABEL_16:
    v18 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_1CA94CFC8();
    OUTLINED_FUNCTION_13_38();
    OUTLINED_FUNCTION_34_0();
    if (v19)
    {
      OUTLINED_FUNCTION_5_2();
      while (1)
      {
        OUTLINED_FUNCTION_35_15();
        if (v19)
        {
          if (v21)
          {
            goto LABEL_30;
          }
        }

        if (v20 == v22)
        {
          v20 = 0;
        }

        if (*(v12 + 8 * v20) != -1)
        {
          OUTLINED_FUNCTION_3_7();
          goto LABEL_26;
        }
      }
    }

    OUTLINED_FUNCTION_6_4();
LABEL_26:
    OUTLINED_FUNCTION_2_11();
    *(v12 + v23) |= v24;
    *(*(v9 + 48) + 8 * v25) = v18;
    OUTLINED_FUNCTION_74_8();
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_5;
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

    if (v11 >= v0)
    {
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_95_7();
    if (v15)
    {
      OUTLINED_FUNCTION_1_41();
      v10 = v17 & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1CA6B0E9C(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_1CA94D328())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1CA94D2F8();
    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    sub_1CA28D4F8();
    sub_1CA94C948();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
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

    v6 = v9 & *(a1 + 56);
    sub_1CA94C218();
    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_1CA2BC138(a1);
      return;
    }

    while (1)
    {
      v16 = sub_1CA6AF174(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_1CA94D358())
      {
        sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1CA6B10BC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443858, &qword_1CA9815F8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_1CA9494C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;
    sub_1CA94C218();
    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_1CA6AF304(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_1CA27080C(v5, &qword_1EC443858, &qword_1CA9815F8);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1CA6B12D8(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v69 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    v2 = sub_1CA94D2F8();
    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    sub_1CA28D4F8();
    sub_1CA94C948();
    v5 = v64;
    v6 = v65;
    v7 = v66;
    v8 = v67;
    v9 = v68;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v11 = ~v10;
    v12 = -v10;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(a1 + 56);
    sub_1CA94C218();
    v7 = v11;
    v8 = 0;
  }

  v59 = v5;
  v60 = v6;
  v61 = v7;
  v62 = v8;
  v50 = v7;
  v14 = (v7 + 64) >> 6;
  v56 = (v4 + 56);
  v63 = v9;
  v52 = v6;
  v53 = v14;
  if (v5 < 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v15 = v8;
  v16 = v9;
  v17 = v8;
  if (v9)
  {
LABEL_14:
    v3 = ((v16 - 1) & v16);
    v2 = *(*(v5 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    v18 = v2;
    v15 = v17;
  }

  else
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v14)
      {
        break;
      }

      v16 = *(v6 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_14;
      }
    }

    v2 = 0;
    v3 = 0;
  }

  v59 = v5;
  v60 = v6;
  v61 = v50;
  v62 = v15;
  v55 = v3;
  v63 = v3;
  if (!v2)
  {
LABEL_54:
    v42 = v5;
    goto LABEL_52;
  }

LABEL_19:
  v20 = v2;
  v21 = sub_1CA94CFC8();
  v54 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v21 & v54;
    v6 = (v21 & v54) >> 6;
    v14 = 1 << (v21 & v54);
    if ((v14 & v56[v6]) == 0)
    {

      v8 = v15;
      v9 = v55;
      v6 = v52;
      v14 = v53;
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_17:
      v19 = sub_1CA94D358();
      if (!v19)
      {
        goto LABEL_54;
      }

      v57 = v19;
      sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
      swift_dynamicCast();
      v2 = v58;
      v15 = v8;
      v55 = v9;
      if (!v58)
      {
        goto LABEL_54;
      }

      goto LABEL_19;
    }

    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    v3 = *(*(v4 + 48) + 8 * v8);
    v2 = sub_1CA94CFD8();

    if (v2)
    {
      break;
    }

    v21 = v8 + 1;
  }

  v23 = *(v4 + 32);
  v47 = ((1 << v23) + 63) >> 6;
  v2 = 8 * v47;
  v3 = v53;
  if ((v23 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (2)
  {
    v48 = &v46;
    MEMORY[0x1EEE9AC00](v22);
    v24 = &v46 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v24, v56, v2);
    v46 = 0;
    v25 = *&v24[8 * v6] & ~v14;
    v26 = *(v4 + 16);
    v54 = v24;
    *&v24[8 * v6] = v25;
    v27 = v26 - 1;
    v28 = v52;
    v6 = v55;
    v51 = v5;
LABEL_28:
    v49 = v27;
LABEL_29:
    while (2)
    {
      if (v5 < 0)
      {
        v33 = sub_1CA94D358();
        if (!v33)
        {
          goto LABEL_50;
        }

        v57 = v33;
        swift_dynamicCast();
        v31 = v58;
        if (!v58)
        {
          goto LABEL_50;
        }

LABEL_40:
        v55 = v6;
        v2 = v31;
        v34 = sub_1CA94CFC8();
        v35 = v4;
        v8 = ~(-1 << *(v4 + 32));
        do
        {
          v36 = v34 & v8;
          v37 = (v34 & v8) >> 6;
          v38 = 1 << (v34 & v8);
          if ((v38 & v56[v37]) == 0)
          {

            v4 = v35;
            v5 = v51;
            v28 = v52;
            v3 = v53;
            v6 = v55;
            goto LABEL_29;
          }

          v14 = *(*(v35 + 48) + 8 * v36);
          v2 = sub_1CA94CFD8();

          v34 = v36 + 1;
        }

        while ((v2 & 1) == 0);

        v3 = v53;
        v39 = *(v54 + 8 * v37);
        *(v54 + 8 * v37) = v39 & ~v38;
        v40 = (v39 & v38) == 0;
        v4 = v35;
        v5 = v51;
        v28 = v52;
        v6 = v55;
        if (v40)
        {
          continue;
        }

        v27 = v49 - 1;
        if (__OFSUB__(v49, 1))
        {
          __break(1u);
        }

        if (v49 == 1)
        {

          v4 = MEMORY[0x1E69E7CD0];
          goto LABEL_51;
        }

        goto LABEL_28;
      }

      break;
    }

    if (v6)
    {
LABEL_35:
      v30 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v31 = *(*(v5 + 48) + ((v15 << 9) | (8 * v30)));
      v32 = v31;
LABEL_36:
      v59 = v5;
      v60 = v28;
      v61 = v50;
      v62 = v15;
      v63 = v6;
      if (!v31)
      {
LABEL_50:
        sub_1CA6B0D34();
        v4 = v41;
        goto LABEL_51;
      }

      goto LABEL_40;
    }

    while (1)
    {
      v29 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v29 >= v3)
      {
        v31 = 0;
        v6 = 0;
        goto LABEL_36;
      }

      v6 = *(v28 + 8 * v29);
      ++v15;
      if (v6)
      {
        v15 = v29;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v44 = swift_slowAlloc();
  v45 = sub_1CA6B28A8(v44, v47, v56, v47, v4, v8, &v59);

  MEMORY[0x1CCAA4BF0](v44, -1, -1);
  v4 = v45;
LABEL_51:
  v42 = v59;
LABEL_52:
  sub_1CA2BC138(v42);
  return v4;
}

char *sub_1CA6B18F0(unint64_t a1, char *a2)
{
  v92 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443858, &qword_1CA9815F8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v65 - v8;
  v10 = sub_1CA9494C8();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v84 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v65 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v65 - v17;
  if (!*(a2 + 2))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v71 = v7;
  v66 = 0;
  v19 = a1 + 56;
  v18 = *(a1 + 56);
  v20 = -1 << *(a1 + 32);
  v75 = ~v20;
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v18;
  v72 = (63 - v20) >> 6;
  v74 = (v16 + 32);
  v82 = a2 + 56;
  v79 = v16;
  v85 = v16 + 16;
  v86 = (v16 + 8);
  v76 = a1;
  sub_1CA94C218();
  v23 = 0;
  v73 = a1 + 56;
  v68 = v9;
LABEL_6:
  v24 = v22;
  v25 = v23;
  v83 = v23;
  if (v22)
  {
LABEL_12:
    a1 = (v24 - 1) & v24;
    v28 = v76;
    (*(v79 + 16))(v9, *(v76 + 48) + *(v79 + 72) * (__clz(__rbit64(v24)) | (v25 << 6)), v10);
    v29 = 0;
    v26 = v9;
    v27 = v25;
LABEL_13:
    __swift_storeEnumTagSinglePayload(v26, v29, 1, v10);
    v87 = v28;
    v88 = v19;
    v89 = v75;
    v90 = v27;
    v91 = a1;
    if (__swift_getEnumTagSinglePayload(v26, 1, v10) == 1)
    {
      goto LABEL_47;
    }

    v70 = *v74;
    v70(v81, v26, v10);
    v69 = sub_1CA6B2C04(qword_1EC441DA0, MEMORY[0x1E69A1168]);
    v30 = sub_1CA94C288();
    v80 = ~(-1 << a2[32]);
    while (1)
    {
      v19 = v30 & v80;
      if (((1 << (v30 & v80)) & v82[(v30 & v80) >> 6]) == 0)
      {
        (*v86)(v81, v10);
        v23 = v27;
        v22 = a1;
        v19 = v73;
        v9 = v68;
        goto LABEL_6;
      }

      v77 = 1 << v19;
      v78 = v19 >> 6;
      v25 = a2;
      v31 = *(a2 + 6);
      v32 = v79;
      v83 = *(v79 + 72);
      v33 = *(v79 + 16);
      v33(v15, v31 + v83 * v19, v10);
      v34 = sub_1CA6B2C04(&qword_1EC441D98, MEMORY[0x1E69A1168]);
      v35 = sub_1CA94C358();
      a2 = *(v32 + 8);
      (a2)(v15, v10);
      if (v35)
      {
        break;
      }

      v30 = v19 + 1;
      a2 = v25;
    }

    v79 = v33;
    v80 = v34;
    v36 = (a2)(v81, v10);
    v37 = *(v25 + 32);
    v67 = ((1 << v37) + 63) >> 6;
    v22 = 8 * v67;
    if ((v37 & 0x3Fu) <= 0xD)
    {
LABEL_21:
      v81 = a2;
      v68 = &v65;
      MEMORY[0x1EEE9AC00](v36);
      v38 = &v65 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v38, v82, v22);
      v39 = *&v38[8 * v78] & ~v77;
      v40 = *(v25 + 16);
      v77 = v38;
      *&v38[8 * v78] = v39;
      v41 = v40 - 1;
      v26 = v71;
      v42 = v73;
      v43 = v72;
      v44 = v76;
      a2 = v25;
      v45 = v79;
      while (1)
      {
        v78 = v41;
LABEL_23:
        if (!a1)
        {
          break;
        }

        v46 = v27;
LABEL_29:
        v47 = __clz(__rbit64(a1));
        v48 = (a1 - 1) & a1;
        v45(v26, *(v44 + 48) + (v47 | (v46 << 6)) * v83, v10);
        v49 = 0;
LABEL_30:
        __swift_storeEnumTagSinglePayload(v26, v49, 1, v10);
        v87 = v44;
        v88 = v42;
        v89 = v75;
        v90 = v27;
        v91 = v48;
        if (__swift_getEnumTagSinglePayload(v26, 1, v10) == 1)
        {
          sub_1CA27080C(v26, &qword_1EC443858, &qword_1CA9815F8);
          a2 = sub_1CA6B0A00(v77, v67, v78, a2);
          goto LABEL_42;
        }

        v79 = v48;
        v50 = v45;
        v70(v84, v26, v10);
        v51 = sub_1CA94C288();
        v52 = a2;
        v53 = ~(-1 << a2[32]);
        do
        {
          v54 = v51 & v53;
          v55 = (v51 & v53) >> 6;
          v56 = 1 << (v51 & v53);
          if ((v56 & v82[v55]) == 0)
          {
            (v81)(v84, v10);
            a2 = v52;
            v44 = v76;
            v26 = v71;
            v42 = v73;
            v43 = v72;
            v45 = v50;
            a1 = v79;
            goto LABEL_23;
          }

          v50(v15, *(v52 + 48) + v54 * v83, v10);
          v57 = sub_1CA94C358();
          (v81)(v15, v10);
          v51 = v54 + 1;
        }

        while ((v57 & 1) == 0);
        (v81)(v84, v10);
        v58 = *(v77 + 8 * v55);
        *(v77 + 8 * v55) = v58 & ~v56;
        v59 = (v58 & v56) == 0;
        a2 = v52;
        v44 = v76;
        v26 = v71;
        v42 = v73;
        v43 = v72;
        v45 = v50;
        a1 = v79;
        if (v59)
        {
          goto LABEL_23;
        }

        v41 = v78 - 1;
        if (__OFSUB__(v78, 1))
        {
          __break(1u);
        }

        if (v78 == 1)
        {

          a2 = MEMORY[0x1E69E7CD0];
          goto LABEL_42;
        }
      }

      while (1)
      {
        v46 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v46 >= v43)
        {
          v48 = 0;
          v49 = 1;
          goto LABEL_30;
        }

        a1 = *(v42 + 8 * v46);
        ++v27;
        if (a1)
        {
          v27 = v46;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_47:
      sub_1CA27080C(v26, &qword_1EC443858, &qword_1CA9815F8);
      v60 = v76;
LABEL_43:
      sub_1CA2BC138(v60);
      return a2;
    }
  }

  else
  {
    v26 = v9;
    v27 = v23;
    while (1)
    {
      v25 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v25 >= v72)
      {
        a1 = 0;
        v29 = 1;
        v28 = v76;
        goto LABEL_13;
      }

      v24 = *(v19 + 8 * v25);
      ++v27;
      if (v24)
      {
        v9 = v26;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_21;
  }

  v62 = swift_slowAlloc();
  v63 = v66;
  v64 = sub_1CA6B2930(v62, v67, v82, v67, v25, v19, &v87);
  if (!v63)
  {
    a2 = v64;

    MEMORY[0x1CCAA4BF0](v62, -1, -1);
LABEL_42:
    v60 = v87;
    goto LABEL_43;
  }

  result = MEMORY[0x1CCAA4BF0](v62, -1, -1);
  __break(1u);
  return result;
}

void sub_1CA6B2204(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v25 = v8;
LABEL_3:
    if ((*v5 & 0x8000000000000000) != 0)
    {
      if (!sub_1CA94D358())
      {
        goto LABEL_25;
      }

      sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
      swift_dynamicCast();
      v13 = v28;
      if (!v28)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    v11 = v5[3];
    v10 = v5[4];
    if (!v10)
    {
      break;
    }

    v12 = v5[3];
LABEL_13:
    v14 = (v10 - 1) & v10;
    v13 = *(*(*v5 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
    v15 = v13;
LABEL_14:
    v5[3] = v11;
    v5[4] = v14;
    if (!v13)
    {
LABEL_25:

      sub_1CA6B0D34();
      return;
    }

LABEL_15:
    v16 = sub_1CA94CFC8();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        v5 = a5;
        goto LABEL_3;
      }

      sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
      v21 = *(*(a3 + 48) + 8 * v18);
      v22 = sub_1CA94CFD8();

      v16 = v18 + 1;
    }

    while ((v22 & 1) == 0);

    v23 = *(a1 + 8 * v19);
    *(a1 + 8 * v19) = v23 & ~v20;
    v24 = (v23 & v20) == 0;
    v5 = a5;
    if (v24)
    {
      goto LABEL_3;
    }

    v8 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
      goto LABEL_27;
    }

    if (v25 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= ((v5[2] + 64) >> 6))
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_14;
    }

    v10 = *(v5[1] + 8 * v12);
    ++v11;
    if (v10)
    {
      v11 = v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_1CA6B2458(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v39 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443858, &qword_1CA9815F8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v39 - v10;
  v12 = sub_1CA9494C8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v14);
  v50 = &v39 - v18;
  v19 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v20 = v19 - 1;
  v41 = a1;
  v42 = (v13 + 32);
  v46 = a3 + 56;
  v47 = v13 + 16;
  v48 = (v13 + 8);
  v49 = a3;
  v43 = v11;
  v44 = a5;
  while (1)
  {
    v40 = v20;
LABEL_3:
    v22 = *a5;
    v21 = a5[1];
    v23 = a5[2];
    v24 = a5[3];
    v25 = a5[4];
    v45 = v23;
    if (!v25)
    {
      break;
    }

    v26 = v24;
LABEL_9:
    v27 = (v25 - 1) & v25;
    (*(v13 + 16))(v11, *(v22 + 48) + *(v13 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v12);
    v28 = 0;
LABEL_10:
    __swift_storeEnumTagSinglePayload(v11, v28, 1, v12);
    *a5 = v22;
    a5[1] = v21;
    a5[2] = v45;
    a5[3] = v24;
    a5[4] = v27;
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      sub_1CA27080C(v11, &qword_1EC443858, &qword_1CA9815F8);
      v38 = v49;

      return sub_1CA6B0A00(v41, v39, v40, v38);
    }

    (*v42)(v50, v11, v12);
    v29 = v49;
    sub_1CA6B2C04(qword_1EC441DA0, MEMORY[0x1E69A1168]);
    v30 = sub_1CA94C288();
    v31 = ~(-1 << *(v29 + 32));
    do
    {
      v32 = v30 & v31;
      v33 = (v30 & v31) >> 6;
      v34 = 1 << (v30 & v31);
      if ((v34 & *(v46 + 8 * v33)) == 0)
      {
        result = (*v48)(v50, v12);
        v11 = v43;
        a5 = v44;
        goto LABEL_3;
      }

      (*(v13 + 16))(v16, *(v49 + 48) + *(v13 + 72) * v32, v12);
      sub_1CA6B2C04(&qword_1EC441D98, MEMORY[0x1E69A1168]);
      v35 = sub_1CA94C358();
      v36 = *(v13 + 8);
      v36(v16, v12);
      v30 = v32 + 1;
    }

    while ((v35 & 1) == 0);
    result = (v36)(v50, v12);
    v37 = v41[v33];
    v41[v33] = v37 & ~v34;
    v11 = v43;
    a5 = v44;
    if ((v37 & v34) == 0)
    {
      goto LABEL_3;
    }

    v20 = v40 - 1;
    if (__OFSUB__(v40, 1))
    {
      goto LABEL_23;
    }

    if (v40 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= ((v23 + 64) >> 6))
    {
      v27 = 0;
      v28 = 1;
      goto LABEL_10;
    }

    v25 = *(v21 + 8 * v26);
    ++v24;
    if (v25)
    {
      v24 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1CA6B28A8(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1CA6B2204(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1CA6B2930(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1CA6B2458(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1CA6B29F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA6B2A34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CA6B2ACC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 41))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA6B2B0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CA6B2C04(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA6B2C64(int64_t a1, uint64_t (*a2)(void *, uint64_t, __n128))
{
  v3 = sub_1CA6AEE88(a1);
  v4 = v3[2];

  return (a2)(v3 + 4, v4);
}

uint64_t OUTLINED_FUNCTION_47_15()
{

  return sub_1CA94D3B8();
}

void *OUTLINED_FUNCTION_79_7@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memmove(a1, v2, 8 * a2);
}

uint64_t OUTLINED_FUNCTION_93_5()
{
  v1 = *v0;
  if (*v0 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_127_5()
{

  return sub_1CA94C698();
}

uint64_t OUTLINED_FUNCTION_129_4()
{

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1CA6B2E48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  HIDWORD(v86) = a3;
  v4 = a2;
  v5 = *(a4 + 16);
  if (v5)
  {
    v87 = a1;
    v90 = a1;
    v91 = a2;
    sub_1CA94C218();
    MEMORY[0x1CCAA1300](91, 0xE100000000000000);
    v7 = v90;
    v8 = v91;
    sub_1CA26DADC();
    v17 = *(v9 + 16);
    v89 = v9;
    if (v17 >= *(v9 + 24) >> 1)
    {
      OUTLINED_FUNCTION_1_56(v9, v10, v11, v12, v13, v14, v15, v16, v84, v85, v86, v87, v88, v9);
      v89 = v83;
    }

    *(v89 + 16) = v17 + 1;
    v18 = v89 + 16 * v17;
    *(v18 + 32) = v7;
    *(v18 + 40) = v8;
    v19 = (a4 + 64);
    v85 = v4;
    v20 = v87;
    while (1)
    {
      v21 = *(v19 - 4);
      v22 = *(v19 - 3);
      v23 = *(v19 - 2);
      v24 = *(v19 - 1);
      HIDWORD(v84) = *v19;
      if ((v84 & 0x100000000) != 0)
      {
        break;
      }

      v90 = v20;
      v91 = v4;
      sub_1CA94C218();
      v45 = OUTLINED_FUNCTION_0_74();
      sub_1CA36DA2C(v45, v46, v47, v48, 0);
      v49 = MEMORY[0x1CCAA1300](8224, 0xE200000000000000);
      v57 = OUTLINED_FUNCTION_2_66(v49, v50, v51, v52, v53, v54, v55, v56, v84, v85, v86, v87, v88, v89, v90);
      v30 = v21;
      v88 = sub_1CA6B3118(v57, v58, v59);
      v43 = v60;

      OUTLINED_FUNCTION_3_62();
      if (v44)
      {
        goto LABEL_13;
      }

      v25 = 0;
LABEL_11:
      v61 = OUTLINED_FUNCTION_0_74();
      sub_1CA36D780(v61, v62, v63, v64, v25);
      *(v89 + 16) = a4;
      v65 = v89 + 16 * v30;
      *(v65 + 32) = v88;
      *(v65 + 40) = v43;
      v19 += 40;
      --v5;
      v4 = v85;
      v20 = v87;
      if (!v5)
      {
        v90 = v87;
        v91 = v85;
        sub_1CA94C218();
        v67 = MEMORY[0x1CCAA1300](93, 0xE100000000000000);
        v75 = v90;
        v76 = v91;
        v78 = *(v89 + 16);
        v77 = *(v89 + 24);
        goto LABEL_15;
      }
    }

    v90 = v20;
    v91 = v4;
    sub_1CA94C218();
    v25 = 1;
    v26 = OUTLINED_FUNCTION_0_74();
    sub_1CA36DA2C(v26, v27, v28, v29, 1);
    v30 = &v90;
    v31 = MEMORY[0x1CCAA1300](8224, 0xE200000000000000);
    v39 = OUTLINED_FUNCTION_2_66(v31, v32, v33, v34, v35, v36, v37, v38, v84, v85, v86, v87, v88, v89, v90);
    v88 = sub_1CA6B331C(v39, v40, v41, v21, v22, v23, v24);
    v43 = v42;

    OUTLINED_FUNCTION_3_62();
    if (!v44)
    {
      goto LABEL_11;
    }

LABEL_13:
    sub_1CA26DADC();
    v89 = v66;
    v25 = BYTE4(v84);
    goto LABEL_11;
  }

  v90 = a1;
  v91 = a2;
  sub_1CA94C218();
  MEMORY[0x1CCAA1300](23899, 0xE200000000000000);
  v75 = v90;
  v76 = v91;
  sub_1CA26DADC();
  v78 = *(v67 + 16);
  v77 = *(v67 + 24);
  v89 = v67;
LABEL_15:
  if (v78 >= v77 >> 1)
  {
    OUTLINED_FUNCTION_1_56(v67, v68, v69, v70, v71, v72, v73, v74, v84, v85, v86, v87, v88, v89);
    v89 = v82;
  }

  *(v89 + 16) = v78 + 1;
  v79 = v89 + 16 * v78;
  *(v79 + 32) = v75;
  *(v79 + 40) = v76;
  v90 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  sub_1CA26E4D4();
  v80 = sub_1CA94C308();

  return v80;
}

uint64_t sub_1CA6B3118(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  if (a3)
  {
    v23 = 0;
    MEMORY[0x1CCAA1300](a1, a2);
    v5 = [v3 identifier];
    v6 = sub_1CA94C3A8();
    v8 = v7;

    MEMORY[0x1CCAA1300](v6, v8);

    MEMORY[0x1CCAA1300](10272, 0xE200000000000000);
    sub_1CA94D578();
    MEMORY[0x1CCAA1300](41, 0xE100000000000000);
  }

  else
  {
    v23 = a1;
    sub_1CA94C218();
    v9 = [v3 identifier];
    v10 = sub_1CA94C3A8();
    v12 = v11;

    MEMORY[0x1CCAA1300](v10, v12);
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = v4;
    if ([v14 mode] == 1 && (v16 = objc_msgSend(v14, sel_itemTitle)) != 0)
    {
      v17 = v16;
      v18 = [v16 stringByRemovingVariables];

      v19 = sub_1CA94C3A8();
      v21 = v20;

      MEMORY[0x1CCAA1300](32, 0xE100000000000000);
      MEMORY[0x1CCAA1300](v19, v21);
    }

    else
    {
    }
  }

  return v23;
}

uint64_t sub_1CA6B331C(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a7;
  v13 = _s17ControlFlowBranchVMa(0);
  v53 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  v56 = a1;
  v57 = a2;
  sub_1CA94C218();
  MEMORY[0x1CCAA1300](0x2070756F7267, 0xE600000000000000);
  MEMORY[0x1CCAA1300](a4, a5);
  MEMORY[0x1CCAA1300](31520, 0xE200000000000000);
  v16 = v56;
  v17 = v57;
  sub_1CA26DADC();
  v19 = v18;
  v20 = *(v18 + 16);
  if (v20 >= *(v18 + 24) >> 1)
  {
    sub_1CA26DADC();
    v19 = v49;
  }

  *(v19 + 16) = v20 + 1;
  v21 = v19 + 16 * v20;
  *(v21 + 32) = v16;
  *(v21 + 40) = v17;
  v22 = *(a6 + 16);
  if (v22)
  {
    v23 = *(v13 + 28);
    v24 = a6 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
    v53 = *(v53 + 72);
    v54 = v23;
    do
    {
      sub_1CA36D71C(v24, v15);
      v56 = v55;
      v57 = a2;
      sub_1CA94C218();
      MEMORY[0x1CCAA1300](8224, 0xE200000000000000);
      v25 = sub_1CA6B3118(v56, v57, a3 & 1);
      v27 = v26;

      v28 = *(v19 + 16);
      if (v28 >= *(v19 + 24) >> 1)
      {
        sub_1CA26DADC();
        v19 = v36;
      }

      *(v19 + 16) = v28 + 1;
      v29 = v19 + 16 * v28;
      *(v29 + 32) = v25;
      *(v29 + 40) = v27;
      v30 = *&v15[v54];
      v56 = v55;
      v57 = a2;
      sub_1CA94C218();
      MEMORY[0x1CCAA1300](8224, 0xE200000000000000);
      v31 = sub_1CA6B2E48(v56, v57, a3 & 1, v30);
      v33 = v32;

      sub_1CA6B3728(v15);
      v34 = *(v19 + 16);
      if (v34 >= *(v19 + 24) >> 1)
      {
        sub_1CA26DADC();
        v19 = v37;
      }

      *(v19 + 16) = v34 + 1;
      v35 = v19 + 16 * v34;
      *(v35 + 32) = v31;
      *(v35 + 40) = v33;
      v24 += v53;
      --v22;
    }

    while (v22);
  }

  v56 = v55;
  v57 = a2;
  sub_1CA94C218();
  MEMORY[0x1CCAA1300](8224, 0xE200000000000000);
  v38 = sub_1CA6B3118(v56, v57, a3 & 1);
  v40 = v39;

  v41 = *(v19 + 16);
  if (v41 >= *(v19 + 24) >> 1)
  {
    sub_1CA26DADC();
    v19 = v50;
  }

  *(v19 + 16) = v41 + 1;
  v42 = v19 + 16 * v41;
  *(v42 + 32) = v38;
  *(v42 + 40) = v40;
  v56 = v55;
  v57 = a2;
  sub_1CA94C218();
  MEMORY[0x1CCAA1300](125, 0xE100000000000000);
  v43 = v56;
  v44 = v57;
  v45 = *(v19 + 16);
  if (v45 >= *(v19 + 24) >> 1)
  {
    sub_1CA26DADC();
    v19 = v51;
  }

  *(v19 + 16) = v45 + 1;
  v46 = v19 + 16 * v45;
  *(v46 + 32) = v43;
  *(v46 + 40) = v44;
  v56 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  sub_1CA26E4D4();
  v47 = sub_1CA94C308();

  return v47;
}

uint64_t sub_1CA6B3728(uint64_t a1)
{
  v2 = _s17ControlFlowBranchVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1CA6B3784(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v2 = sub_1CA94C1A8();

  v3 = [v1 initWithDictionary_];

  return v3;
}

id sub_1CA6B3878()
{
  v225 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9E1760;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("URL|web|later|save|pinboard", 27);
  v6 = v5;
  v7 = sub_1CA94C438("URL|web|later|save|pinboard", 27);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v240 = v11;
  v243 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v218 - v243;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v242 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v241 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v239 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v218 - v239;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v238 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v237 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Adds the URL passed into the action to your Pinboard.", 53);
  v25 = v24;
  v26 = sub_1CA94C438("Adds the URL passed into the action to your Pinboard.", 53);
  v28 = v27;
  v236 = v218;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v218 - v243;
  sub_1CA948D98();
  v30 = [v242 bundleURL];
  v232 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v218 - v239;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v23, v25, v26, v28, 0, 0, v29, v32);
  *(v20 + 64) = v238;
  *(v20 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v35 = sub_1CA94C1E8();
  v36 = v237;
  v37 = sub_1CA6B3784(v35);
  v38 = v232;
  v232[15] = v37;
  v38[18] = v36;
  v38[19] = @"Discontinued";
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 160) = 1;
  v38[23] = v39;
  v38[24] = @"IconName";
  v40 = v39;
  v38[25] = 0x6472616F626E6950;
  v38[26] = 0xE800000000000000;
  v41 = MEMORY[0x1E69E6158];
  v38[28] = MEMORY[0x1E69E6158];
  v38[29] = @"Input";
  v42 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v43 = swift_initStackObject();
  v230 = xmmword_1CA981350;
  *(v43 + 16) = xmmword_1CA981350;
  *(v43 + 32) = 0x656C7069746C754DLL;
  *(v43 + 40) = 0xE800000000000000;
  *(v43 + 48) = 0;
  *(v43 + 72) = v40;
  strcpy((v43 + 80), "ParameterKey");
  *(v43 + 93) = 0;
  *(v43 + 94) = -5120;
  strcpy((v43 + 96), "WFPinboardURL");
  *(v43 + 110) = -4864;
  *(v43 + 120) = v41;
  *(v43 + 128) = 0x6465726975716552;
  *(v43 + 136) = 0xE800000000000000;
  *(v43 + 144) = 1;
  *(v43 + 168) = v40;
  *(v43 + 176) = 0x7365707954;
  *(v43 + 184) = 0xE500000000000000;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v43 + 216) = v224;
  *(v43 + 192) = &unk_1F4A0CC08;
  v44 = @"Discontinued";
  v45 = @"IconName";
  v46 = @"Input";
  v47 = sub_1CA94C1E8();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v42[30] = v47;
  v42[33] = v48;
  v42[34] = @"InputPassthrough";
  *(v42 + 280) = 1;
  v42[38] = v40;
  v42[39] = @"Name";
  v49 = @"InputPassthrough";
  v50 = @"Name";
  v51 = sub_1CA94C438("Add to Pinboard (Action Name)", 29);
  v53 = v52;
  v54 = sub_1CA94C438("Add to Pinboard", 15);
  v56 = v55;
  MEMORY[0x1EEE9AC00](v54);
  v57 = v218 - v243;
  sub_1CA948D98();
  v58 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  v59 = v218 - v239;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v61 = sub_1CA2F9F14(v51, v53, v54, v56, 0, 0, v57, v59);
  v62 = v232;
  v232[40] = v61;
  v62[43] = v238;
  v62[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v237 = swift_allocObject();
  *(v237 + 16) = xmmword_1CA981410;
  v236 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v63 = swift_initStackObject();
  v229 = xmmword_1CA981370;
  *(v63 + 16) = xmmword_1CA981370;
  *(v63 + 32) = @"AutocapitalizationType";
  *(v63 + 40) = 0x7364726F57;
  *(v63 + 48) = 0xE500000000000000;
  v64 = MEMORY[0x1E69E6158];
  *(v63 + 64) = MEMORY[0x1E69E6158];
  *(v63 + 72) = @"Class";
  v231 = 0x80000001CA99B500;
  *(v63 + 80) = 0xD000000000000014;
  *(v63 + 88) = 0x80000001CA99B500;
  *(v63 + 104) = v64;
  *(v63 + 112) = @"Key";
  *(v63 + 120) = 0x7469546E69504657;
  *(v63 + 128) = 0xEA0000000000656CLL;
  *(v63 + 144) = v64;
  *(v63 + 152) = @"Label";
  v65 = @"Class";
  v66 = @"Key";
  v67 = @"Label";
  v68 = v65;
  v69 = v66;
  v70 = v67;
  v71 = @"AutocapitalizationType";
  v226 = v68;
  v223 = v69;
  v227 = v70;
  v222 = v71;
  v72 = @"Parameters";
  v233 = sub_1CA94C438("Title (WFPinTitle)", 18);
  v228 = v73;
  v221 = sub_1CA94C438("Title", 5);
  v75 = v74;
  v234 = v218;
  MEMORY[0x1EEE9AC00](v221);
  v76 = v243;
  sub_1CA948D98();
  v77 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = v239;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 160) = sub_1CA2F9F14(v233, v228, v221, v75, 0, 0, v218 - v76, v218 - v78);
  v80 = v238;
  *(v63 + 184) = v238;
  *(v63 + 192) = @"Placeholder";
  v228 = @"Placeholder";
  v233 = sub_1CA94C438("optional (WFPinTitle)", 21);
  v221 = v81;
  v82 = sub_1CA94C438("optional", 8);
  v84 = v83;
  v234 = v218;
  MEMORY[0x1EEE9AC00](v82);
  sub_1CA948D98();
  v85 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v233, v221, v82, v84, 0, 0, v218 - v76, v218 - v78);
  *(v63 + 224) = v80;
  *(v63 + 200) = v87;
  _s3__C3KeyVMa_0(0);
  v234 = v88;
  v233 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v89 = sub_1CA94C1E8();
  v90 = sub_1CA2F864C(v89);
  *(v237 + 32) = v90;
  v91 = swift_allocObject();
  *(v91 + 16) = v229;
  v92 = v223;
  *(v91 + 32) = v222;
  *(v91 + 40) = 1701736270;
  *(v91 + 48) = 0xE400000000000000;
  v93 = MEMORY[0x1E69E6158];
  v94 = v226;
  v95 = v227;
  *(v91 + 64) = MEMORY[0x1E69E6158];
  *(v91 + 72) = v94;
  *(v91 + 80) = 0xD000000000000014;
  *(v91 + 88) = v231;
  *(v91 + 104) = v93;
  *(v91 + 112) = v92;
  *(v91 + 120) = 0x6761546E69504657;
  *(v91 + 128) = 0xE900000000000073;
  *(v91 + 144) = v93;
  *(v91 + 152) = v95;
  v222 = v94;
  v226 = v92;
  v227 = v95;
  v96 = sub_1CA94C438("Tags (WFPinTags)", 16);
  v220 = v97;
  v221 = v96;
  v219 = sub_1CA94C438("Tags", 4);
  v99 = v98;
  v223 = v218;
  MEMORY[0x1EEE9AC00](v219);
  v100 = v218 - v243;
  sub_1CA948D98();
  v101 = v242;
  v102 = [v242 bundleURL];
  v218[1] = v218;
  MEMORY[0x1EEE9AC00](v102);
  v103 = v239;
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v91 + 160) = sub_1CA2F9F14(v221, v220, v219, v99, 0, 0, v100, v218 - v103);
  v105 = v238;
  v106 = v228;
  *(v91 + 184) = v238;
  *(v91 + 192) = v106;
  v107 = sub_1CA94C438("apple longread (WFPinTags)", 26);
  v220 = v108;
  v221 = v107;
  v109 = sub_1CA94C438("apple longread", 14);
  v111 = v110;
  v223 = v218;
  MEMORY[0x1EEE9AC00](v109);
  v112 = v218 - v243;
  sub_1CA948D98();
  v113 = [v101 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  sub_1CA948B68();

  v114 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v115 = sub_1CA2F9F14(v221, v220, v109, v111, 0, 0, v112, v218 - v103);
  *(v91 + 224) = v105;
  *(v91 + 200) = v115;
  v116 = sub_1CA94C1E8();
  v117 = sub_1CA2F864C(v116);
  *(v237 + 40) = v117;
  v118 = swift_allocObject();
  *(v118 + 16) = v230;
  v223 = 0x80000001CA99E620;
  v221 = 0xD000000000000011;
  v119 = v222;
  *(v118 + 32) = v222;
  *(v118 + 40) = 0xD000000000000011;
  *(v118 + 48) = 0x80000001CA99E620;
  v120 = MEMORY[0x1E69E6158];
  *(v118 + 64) = MEMORY[0x1E69E6158];
  *(v118 + 72) = @"DefaultValue";
  *(v118 + 80) = 1;
  v121 = v226;
  v122 = v227;
  *(v118 + 104) = MEMORY[0x1E69E6370];
  *(v118 + 112) = v121;
  *(v118 + 120) = 0x6275506E69504657;
  *(v118 + 128) = 0xEB0000000063696CLL;
  *(v118 + 144) = v120;
  *(v118 + 152) = v122;
  v123 = @"DefaultValue";
  v219 = v119;
  v220 = v121;
  v222 = v122;
  v227 = v123;
  v124 = sub_1CA94C438("Public (WFPinPublic)", 20);
  v126 = v125;
  v127 = sub_1CA94C438("Public", 6);
  v129 = v128;
  v226 = v218;
  MEMORY[0x1EEE9AC00](v127);
  v130 = v218 - v243;
  sub_1CA948D98();
  v131 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v131);
  v132 = v218 - v239;
  sub_1CA948B68();

  v133 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v134 = sub_1CA2F9F14(v124, v126, v127, v129, 0, 0, v130, v132);
  *(v118 + 184) = v238;
  *(v118 + 160) = v134;
  v135 = sub_1CA94C1E8();
  v136 = sub_1CA2F864C(v135);
  *(v237 + 48) = v136;
  v137 = swift_allocObject();
  *(v137 + 16) = v230;
  v138 = v219;
  v139 = v220;
  v140 = v221;
  *(v137 + 32) = v219;
  *(v137 + 40) = v140;
  *(v137 + 48) = v223;
  v141 = MEMORY[0x1E69E6158];
  v142 = v227;
  *(v137 + 64) = MEMORY[0x1E69E6158];
  *(v137 + 72) = v142;
  *(v137 + 80) = 1;
  *(v137 + 104) = MEMORY[0x1E69E6370];
  *(v137 + 112) = v139;
  *(v137 + 120) = 0x726E556E69504657;
  *(v137 + 128) = 0xEB00000000646165;
  v143 = v222;
  *(v137 + 144) = v141;
  *(v137 + 152) = v143;
  v226 = v138;
  v227 = v139;
  *&v230 = v143;
  v144 = sub_1CA94C438("Unread (WFPinUnread)", 20);
  v222 = v145;
  v146 = sub_1CA94C438("Unread", 6);
  v148 = v147;
  v223 = v218;
  MEMORY[0x1EEE9AC00](v146);
  v149 = v218 - v243;
  sub_1CA948D98();
  v150 = v242;
  v151 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v151);
  v152 = v218 - v239;
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v154 = sub_1CA2F9F14(v144, v222, v146, v148, 0, 0, v149, v152);
  *(v137 + 184) = v238;
  *(v137 + 160) = v154;
  v155 = sub_1CA94C1E8();
  v156 = sub_1CA2F864C(v155);
  *(v237 + 56) = v156;
  v157 = swift_allocObject();
  *(v157 + 16) = v229;
  *(v157 + 32) = v226;
  *(v157 + 40) = 0xD000000000000014;
  *(v157 + 48) = v231;
  v158 = MEMORY[0x1E69E6158];
  v159 = v227;
  *(v157 + 64) = MEMORY[0x1E69E6158];
  *(v157 + 72) = v159;
  *(v157 + 80) = 0xD000000000000010;
  *(v157 + 88) = 0x80000001CA9E1870;
  v160 = v230;
  *(v157 + 104) = v158;
  *(v157 + 112) = v160;
  v161 = sub_1CA94C438("Description (WFPinDescription)", 30);
  v222 = v162;
  v223 = v161;
  v163 = sub_1CA94C438("Description", 11);
  v221 = v164;
  *&v229 = v218;
  MEMORY[0x1EEE9AC00](v163);
  v165 = v243;
  sub_1CA948D98();
  v166 = [v150 bundleURL];
  v220 = v218;
  MEMORY[0x1EEE9AC00](v166);
  v167 = v239;
  sub_1CA948B68();

  v168 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v157 + 120) = sub_1CA2F9F14(v223, v222, v163, v221, 0, 0, v218 - v165, v218 - v167);
  v169 = v238;
  *(v157 + 144) = v238;
  *(v157 + 152) = @"Multiline";
  *(v157 + 160) = 1;
  v170 = v228;
  *(v157 + 184) = MEMORY[0x1E69E6370];
  *(v157 + 192) = v170;
  v171 = @"Multiline";
  v228 = sub_1CA94C438("Description (WFPinDescription)", 30);
  v223 = v172;
  v222 = sub_1CA94C438("Description", 11);
  v174 = v173;
  *&v229 = v218;
  MEMORY[0x1EEE9AC00](v222);
  sub_1CA948D98();
  v175 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v175);
  sub_1CA948B68();

  v176 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v177 = sub_1CA2F9F14(v228, v223, v222, v174, 0, 0, v218 - v165, v218 - v167);
  *(v157 + 224) = v169;
  *(v157 + 200) = v177;
  v178 = sub_1CA94C1E8();
  v179 = sub_1CA2F864C(v178);
  *(v237 + 64) = v179;
  v180 = swift_allocObject();
  *(v180 + 16) = xmmword_1CA981380;
  *(v180 + 32) = v226;
  *(v180 + 40) = 0xD000000000000014;
  *(v180 + 48) = v231;
  v181 = MEMORY[0x1E69E6158];
  *(v180 + 64) = MEMORY[0x1E69E6158];
  *(v180 + 72) = @"DisableAutocorrection";
  *(v180 + 80) = 1;
  v182 = v227;
  *(v180 + 104) = MEMORY[0x1E69E6370];
  *(v180 + 112) = v182;
  strcpy((v180 + 120), "WFPinboardURL");
  *(v180 + 134) = -4864;
  *(v180 + 144) = v181;
  *(v180 + 152) = @"KeyboardType";
  *(v180 + 160) = 5001813;
  *(v180 + 168) = 0xE300000000000000;
  *(v180 + 184) = v181;
  *(v180 + 192) = v230;
  v183 = @"DisableAutocorrection";
  v184 = @"KeyboardType";
  v185 = sub_1CA94C438("URL (WFPinboardURL)", 19);
  v187 = v186;
  v188 = sub_1CA94C438("URL", 3);
  v190 = v189;
  v235 = v218;
  MEMORY[0x1EEE9AC00](v188);
  v191 = v218 - v243;
  sub_1CA948D98();
  v192 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v192);
  v193 = v218 - v239;
  sub_1CA948B68();

  v194 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v180 + 200) = sub_1CA2F9F14(v185, v187, v188, v190, 0, 0, v191, v193);
  *(v180 + 224) = v238;
  *(v180 + 232) = @"TextContentType";
  *(v180 + 264) = MEMORY[0x1E69E6158];
  *(v180 + 240) = 5001813;
  *(v180 + 248) = 0xE300000000000000;
  v195 = @"TextContentType";
  v196 = sub_1CA94C1E8();
  v197 = sub_1CA2F864C(v196);
  v198 = v237;
  *(v237 + 72) = v197;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v200 = v232;
  v232[45] = v198;
  v200[48] = v199;
  v200[49] = @"ParameterSummary";
  v201 = @"ParameterSummary";
  v202 = sub_1CA94C438("Add ${WFPinboardURL} (Parameter Summary)", 40);
  v204 = v203;
  v205 = sub_1CA94C438("Add ${WFPinboardURL}", 20);
  v207 = v206;
  MEMORY[0x1EEE9AC00](v205);
  v208 = v218 - v243;
  sub_1CA948D98();
  v209 = [v242 bundleURL];
  MEMORY[0x1EEE9AC00](v209);
  v210 = v218 - v239;
  sub_1CA948B68();

  v211 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v212 = sub_1CA2F9F14(v202, v204, v205, v207, 0, 0, v208, v210);
  v213 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v214 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v215 = v232;
  v232[50] = v213;
  v215[53] = v214;
  v215[54] = @"RequiredResources";
  v215[58] = v224;
  v215[55] = &unk_1F4A0CC38;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v216 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA6B515C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1CA94B728();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA6B5220, 0, 0);
}

uint64_t sub_1CA6B5220()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = type metadata accessor for LinkValueTransformContext(0);
  (*(v2 + 16))(v1, v4 + *(v7 + 24), v3);
  DisplayRepresentation.init(from:displayRepresentationConfig:localizationContext:)(v6, v1, *(v4 + *(v7 + 28)), v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1CA6B52FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1CA3601B4;

  return sub_1CA6B515C(a1, v6, a3);
}

id WFBestFileTypeForSupportedContentTypes(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 containsObject:v4])
  {
    v5 = [v4 copy];
  }

  else
  {
    v6 = [MEMORY[0x1E6982C40] typeWithIdentifier:v4];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __WFBestFileTypeForSupportedContentTypes_block_invoke;
    v10[3] = &unk_1E837AB68;
    v11 = v6;
    v4 = v6;
    v7 = [v3 if_firstObjectPassingTest:v10];
    v5 = v7;
    if (v7)
    {
      v8 = v7;
    }
  }

  return v5;
}

uint64_t __WFBestFileTypeForSupportedContentTypes_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E6982C40] typeWithIdentifier:a2];
  v4 = [v3 conformsToType:*(a1 + 32)];

  return v4;
}

id getICTextStyleClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getICTextStyleClass_softClass;
  v7 = getICTextStyleClass_softClass;
  if (!getICTextStyleClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getICTextStyleClass_block_invoke;
    v3[3] = &unk_1E837FAC0;
    v3[4] = &v4;
    __getICTextStyleClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA6B864C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getICTextStyleClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!NotesUILibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __NotesUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E8373240;
    v8 = 0;
    NotesUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!NotesUILibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NotesUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFLinkEntityContentItem.m" lineNumber:54 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("ICTextStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getICTextStyleClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFLinkEntityContentItem.m" lineNumber:55 description:{@"Unable to find class %s", "ICTextStyle"}];

LABEL_10:
    __break(1u);
  }

  getICTextStyleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __NotesUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  NotesUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1CA6B9BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPHAssetClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PhotosLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E8373228;
    v8 = 0;
    PhotosLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PhotosLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFLinkEntityContentItem.m" lineNumber:35 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PHAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHAssetClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFLinkEntityContentItem.m" lineNumber:36 description:{@"Unable to find class %s", "PHAsset"}];

LABEL_10:
    __break(1u);
  }

  getPHAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PhotosLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1CA6BA130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getREMObjectIDClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __ReminderKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E8373210;
    v8 = 0;
    ReminderKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFLinkEntityContentItem.m" lineNumber:46 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("REMObjectID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMObjectIDClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFLinkEntityContentItem.m" lineNumber:47 description:{@"Unable to find class %s", "REMObjectID"}];

LABEL_10:
    __break(1u);
  }

  getREMObjectIDClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ReminderKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary = result;
  return result;
}

id WFIndexingKeyForForcedLinkEntityFindAction()
{
  v8[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", *MEMORY[0x1E69E0F98], *MEMORY[0x1E69970E8]];
  v7[0] = v0;
  v8[0] = &unk_1F4A99BE0;
  v1 = *MEMORY[0x1E69E0EB8];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", *MEMORY[0x1E69E0EB8], *MEMORY[0x1E69970D0]];
  v7[1] = v2;
  v8[1] = &unk_1F4A99C08;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v1, *MEMORY[0x1E69970E0]];
  v7[2] = v3;
  v8[2] = &unk_1F4A99C30;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", *MEMORY[0x1E69E0EA0], *MEMORY[0x1E69970D8]];
  v7[3] = v4;
  v8[3] = &unk_1F4A99C58;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

id WFForcedLinkEntityFindActionIdentifiers()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", *MEMORY[0x1E69E0E40], @"BookAppEntity"];
  v2 = [v0 initWithObjects:{@"com.apple.mobilesafari.TabEntity", @"com.apple.mobilesafari.TabGroupEntity", @"com.apple.mobilesafari.ReadingListItemEntity", @"com.apple.mobilesafari.BookmarkEntity", v1, 0}];

  return v2;
}

id WFEnforceClass(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315906;
      v9 = "WFEnforceClass";
      v10 = 2114;
      v11 = v3;
      v12 = 2114;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = a2;
      v6 = v13;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Failed to archive quarantine data: %{public}@", &v8, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

void WFTerminateDaemon(void *a1, void *a2)
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2050000000;
  v4 = getRBSProcessPredicateClass_softClass;
  v36 = getRBSProcessPredicateClass_softClass;
  if (!getRBSProcessPredicateClass_softClass)
  {
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __getRBSProcessPredicateClass_block_invoke;
    v31 = &unk_1E837FAC0;
    v32 = &v33;
    __getRBSProcessPredicateClass_block_invoke(&v28);
    v4 = v34[3];
  }

  v5 = v4;
  _Block_object_dispose(&v33, 8);
  v6 = [v4 predicateMatchingJobLabel:*MEMORY[0x1E69E0E60]];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2050000000;
  v7 = getRBSTerminateContextClass_softClass;
  v36 = getRBSTerminateContextClass_softClass;
  if (!getRBSTerminateContextClass_softClass)
  {
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __getRBSTerminateContextClass_block_invoke;
    v31 = &unk_1E837FAC0;
    v32 = &v33;
    __getRBSTerminateContextClass_block_invoke(&v28);
    v7 = v34[3];
  }

  v8 = v7;
  _Block_object_dispose(&v33, 8);
  v9 = objc_alloc_init(v7);
  [v9 setMaximumTerminationResistance:40];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2050000000;
  v10 = getRBSTerminateRequestClass_softClass;
  v36 = getRBSTerminateRequestClass_softClass;
  if (!getRBSTerminateRequestClass_softClass)
  {
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __getRBSTerminateRequestClass_block_invoke;
    v31 = &unk_1E837FAC0;
    v32 = &v33;
    __getRBSTerminateRequestClass_block_invoke(&v28);
    v10 = v34[3];
  }

  v11 = v10;
  _Block_object_dispose(&v33, 8);
  v12 = [[v10 alloc] initWithPredicate:v6 context:v9];
  v26 = 0;
  v27 = 0;
  v13 = [v12 execute:&v27 error:&v26];
  v14 = v27;
  v15 = v26;
  if (a1)
  {
    v16 = v14;
    *a1 = v14;
  }

  if (v13)
  {
    goto LABEL_20;
  }

  v17 = [v15 domain];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v18 = getRBSRequestErrorDomainSymbolLoc_ptr;
  v36 = getRBSRequestErrorDomainSymbolLoc_ptr;
  if (!getRBSRequestErrorDomainSymbolLoc_ptr)
  {
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __getRBSRequestErrorDomainSymbolLoc_block_invoke;
    v31 = &unk_1E837FAC0;
    v32 = &v33;
    v19 = RunningBoardServicesLibrary();
    v20 = dlsym(v19, "RBSRequestErrorDomain");
    *(v32[1] + 24) = v20;
    getRBSRequestErrorDomainSymbolLoc_ptr = *(v32[1] + 24);
    v18 = v34[3];
  }

  _Block_object_dispose(&v33, 8);
  if (v18)
  {
    v21 = *v18;
    if (objc_msgSend_isEqualToString_(v17))
    {
      v22 = [v15 code];

      if (v22 != 3)
      {
        goto LABEL_18;
      }

      v17 = v15;
      v15 = 0;
    }

    else
    {
    }

LABEL_18:
    if (a2)
    {
      v23 = v15;
      *a2 = v15;
    }

LABEL_20:

    return;
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSErrorDomain getRBSRequestErrorDomain(void)"];
  [v24 handleFailureInFunction:v25 file:@"WFDaemonControl.m" lineNumber:22 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_1CA6C25A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getRBSProcessPredicateClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSProcessPredicate");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSProcessPredicateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSProcessPredicateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFDaemonControl.m" lineNumber:19 description:{@"Unable to find class %s", "RBSProcessPredicate"}];

    __break(1u);
  }
}

void __getRBSTerminateContextClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSTerminateContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSTerminateContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSTerminateContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFDaemonControl.m" lineNumber:20 description:{@"Unable to find class %s", "RBSTerminateContext"}];

    __break(1u);
  }
}

void __getRBSTerminateRequestClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSTerminateRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSTerminateRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSTerminateRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFDaemonControl.m" lineNumber:21 description:{@"Unable to find class %s", "RBSTerminateRequest"}];

    __break(1u);
  }
}

void *__getRBSRequestErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RunningBoardServicesLibrary();
  result = dlsym(v2, "RBSRequestErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getRBSRequestErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *RunningBoardServicesLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!RunningBoardServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __RunningBoardServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E83732D0;
    v6 = 0;
    RunningBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = RunningBoardServicesLibraryCore_frameworkLibrary;
  if (!RunningBoardServicesLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RunningBoardServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFDaemonControl.m" lineNumber:17 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __RunningBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  RunningBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1CA6C30E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNLabelPhoneNumberiPhoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelPhoneNumberiPhone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberiPhoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ContactsLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ContactsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E83732E8;
    v6 = 0;
    ContactsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ContactsLibraryCore_frameworkLibrary;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"ICPhoneNumberContentMapping.m" lineNumber:14 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getCNLabelPhoneNumberMobileSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNLabelPhoneNumberMobile");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNLabelPhoneNumberMobileSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary = result;
  return result;
}

Class initINCLocalExtensionRegistry()
{
  if (IntentsCoreLibrary_sOnce != -1)
  {
    dispatch_once(&IntentsCoreLibrary_sOnce, &__block_literal_global_238);
  }

  result = objc_getClass("INCLocalExtensionRegistry");
  classINCLocalExtensionRegistry = result;
  getINCLocalExtensionRegistryClass = INCLocalExtensionRegistryFunction;
  return result;
}

void *__IntentsCoreLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/IntentsCore.framework/IntentsCore", 2);
  IntentsCoreLibrary_sLib = result;
  return result;
}

uint64_t WFREPBAlertRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(WFREPBAlert);
    objc_storeStrong((a1 + 8), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !WFREPBAlertReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

id WFEnforceClass_732(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315906;
      v9 = "WFEnforceClass";
      v10 = 2114;
      v11 = v3;
      v12 = 2114;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = a2;
      v6 = v13;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Could not archive LNValue into data: %@", &v8, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

void __WFLinkActionFromSerializedRepresentation_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = MEMORY[0x1E696ACD0];
  v7 = a3;
  v11 = 0;
  v8 = [v6 unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v11];

  v9 = v11;
  if (v9)
  {
    v10 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v13 = "WFLinkActionFromSerializedRepresentation_block_invoke";
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s Failed to decode LNValue from data: %@", buf, 0x16u);
    }
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E69AC950]) initWithIdentifier:v5 value:v8];
    [*(a1 + 32) addObject:v10];
  }
}

id WFCategorizedInputTypes()
{
  v52[2] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E696E928]);
  v1 = WFLocalizedString(@"Media");
  v2 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFImageContentItem"];
  v52[0] = v2;
  v3 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFAVAssetContentItem"];
  v52[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
  v45 = [v0 initWithTitle:v1 items:v4];

  v5 = objc_alloc(MEMORY[0x1E696E928]);
  v6 = WFLocalizedString(@"Documents");
  v7 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFGenericFileContentItem"];
  v51[0] = v7;
  v8 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFFolderContentItem"];
  v51[1] = v8;
  v9 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFPDFContentItem"];
  v51[2] = v9;
  v10 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFStringContentItem"];
  v51[3] = v10;
  v11 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFRichTextContentItem"];
  v51[4] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:5];
  v44 = [v5 initWithTitle:v6 items:v12];

  v13 = objc_alloc(MEMORY[0x1E696E928]);
  v14 = WFLocalizedString(@"Web");
  v15 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFSafariWebPageContentItem"];
  v50[0] = v15;
  v16 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFURLContentItem"];
  v50[1] = v16;
  v17 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFArticleContentItem"];
  v50[2] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:3];
  v43 = [v13 initWithTitle:v14 items:v18];

  v19 = objc_alloc(MEMORY[0x1E696E928]);
  v20 = WFLocalizedString(@"Places");
  v21 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFDCMapsLinkContentItem"];
  v49[0] = v21;
  v22 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFLocationContentItem"];
  v49[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v24 = [v19 initWithTitle:v20 items:v23];

  v25 = objc_alloc(MEMORY[0x1E696E928]);
  v26 = WFLocalizedString(@"Communication");
  v27 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFContactContentItem"];
  v48[0] = v27;
  v28 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFEmailAddressContentItem"];
  v48[1] = v28;
  v29 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFPhoneNumberContentItem"];
  v48[2] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:3];
  v31 = [v25 initWithTitle:v26 items:v30];

  v32 = objc_alloc(MEMORY[0x1E696E928]);
  v33 = WFLocalizedString(@"Other");
  v34 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFDateContentItem"];
  v47[0] = v34;
  v35 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFAppStoreAppContentItem"];
  v47[1] = v35;
  v36 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:@"WFiTunesProductContentItem"];
  v47[2] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];
  v38 = [v32 initWithTitle:v33 items:v37];

  v39 = objc_alloc(MEMORY[0x1E696E918]);
  v46[0] = v45;
  v46[1] = v44;
  v46[2] = v43;
  v46[3] = v24;
  v46[4] = v31;
  v46[5] = v38;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:6];
  v41 = [v39 initWithSections:v40];

  return v41;
}

id WFAssetDataDirectoryForIdentifier(void *a1)
{
  v1 = a1;
  if (![v1 length])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSURL * _Nonnull WFAssetDataDirectoryForIdentifier(NSString * _Nonnull __strong)"];
    [v6 handleFailureInFunction:v7 file:@"WFRemoteQuarantinePolicyManager.m" lineNumber:308 description:{@"Invalid parameter not satisfying: %@", @"identifier.length"}];
  }

  v2 = WFAssetsDirectory();
  v3 = [v1 stringByAppendingPathExtension:@"bundle"];

  v4 = [v2 URLByAppendingPathComponent:v3 isDirectory:1];

  return v4;
}

id WFEnforceClass_1042(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315906;
      v9 = "WFEnforceClass";
      v10 = 2114;
      v11 = v3;
      v12 = 2114;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = a2;
      v6 = v13;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Warning: Can't find remote quarantine localized string for value '%{public}@'", &v8, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

id initHMCharacteristicMetadataFormatUInt64()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce, &__block_literal_global_1259);
  }

  v0 = dlsym(HomeKitLibrary_sLib, "HMCharacteristicMetadataFormatUInt64");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatUInt64", "WFGetHomeAccessoryStateAction.m", 34, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatUInt64, *v0);
  getHMCharacteristicMetadataFormatUInt64 = HMCharacteristicMetadataFormatUInt64Function;
  v1 = constantHMCharacteristicMetadataFormatUInt64;

  return v1;
}

void *__HomeKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib = result;
  return result;
}

id initHMCharacteristicMetadataFormatUInt32()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce, &__block_literal_global_1259);
  }

  v0 = dlsym(HomeKitLibrary_sLib, "HMCharacteristicMetadataFormatUInt32");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatUInt32", "WFGetHomeAccessoryStateAction.m", 33, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatUInt32, *v0);
  getHMCharacteristicMetadataFormatUInt32 = HMCharacteristicMetadataFormatUInt32Function;
  v1 = constantHMCharacteristicMetadataFormatUInt32;

  return v1;
}

id initHMCharacteristicMetadataFormatUInt16()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce, &__block_literal_global_1259);
  }

  v0 = dlsym(HomeKitLibrary_sLib, "HMCharacteristicMetadataFormatUInt16");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatUInt16", "WFGetHomeAccessoryStateAction.m", 32, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatUInt16, *v0);
  getHMCharacteristicMetadataFormatUInt16 = HMCharacteristicMetadataFormatUInt16Function;
  v1 = constantHMCharacteristicMetadataFormatUInt16;

  return v1;
}

id initHMCharacteristicMetadataFormatUInt8()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce, &__block_literal_global_1259);
  }

  v0 = dlsym(HomeKitLibrary_sLib, "HMCharacteristicMetadataFormatUInt8");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatUInt8", "WFGetHomeAccessoryStateAction.m", 31, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatUInt8, *v0);
  getHMCharacteristicMetadataFormatUInt8 = HMCharacteristicMetadataFormatUInt8Function;
  v1 = constantHMCharacteristicMetadataFormatUInt8;

  return v1;
}

id initHMCharacteristicMetadataFormatFloat()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce, &__block_literal_global_1259);
  }

  v0 = dlsym(HomeKitLibrary_sLib, "HMCharacteristicMetadataFormatFloat");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatFloat", "WFGetHomeAccessoryStateAction.m", 29, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatFloat, *v0);
  getHMCharacteristicMetadataFormatFloat = HMCharacteristicMetadataFormatFloatFunction;
  v1 = constantHMCharacteristicMetadataFormatFloat;

  return v1;
}

id initHMCharacteristicMetadataFormatInt()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce, &__block_literal_global_1259);
  }

  v0 = dlsym(HomeKitLibrary_sLib, "HMCharacteristicMetadataFormatInt");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatInt", "WFGetHomeAccessoryStateAction.m", 28, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatInt, *v0);
  getHMCharacteristicMetadataFormatInt = HMCharacteristicMetadataFormatIntFunction;
  v1 = constantHMCharacteristicMetadataFormatInt;

  return v1;
}

id initHMCharacteristicMetadataFormatString()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce, &__block_literal_global_1259);
  }

  v0 = dlsym(HomeKitLibrary_sLib, "HMCharacteristicMetadataFormatString");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatString", "WFGetHomeAccessoryStateAction.m", 30, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatString, *v0);
  getHMCharacteristicMetadataFormatString = HMCharacteristicMetadataFormatStringFunction;
  v1 = constantHMCharacteristicMetadataFormatString;

  return v1;
}

id initHMCharacteristicMetadataFormatBool()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce, &__block_literal_global_1259);
  }

  v0 = dlsym(HomeKitLibrary_sLib, "HMCharacteristicMetadataFormatBool");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatBool", "WFGetHomeAccessoryStateAction.m", 27, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatBool, *v0);
  getHMCharacteristicMetadataFormatBool = HMCharacteristicMetadataFormatBoolFunction;
  v1 = constantHMCharacteristicMetadataFormatBool;

  return v1;
}

id WFEnforceClass_1501(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315906;
      v9 = "WFEnforceClass";
      v10 = 2114;
      v11 = v3;
      v12 = 2114;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = a2;
      v6 = v13;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v8, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

void sub_1CA6CF8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPHAssetCollectionClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!PhotosLibraryCore_frameworkLibrary_1518)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PhotosLibraryCore_block_invoke_1519;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E8373628;
    v8 = 0;
    PhotosLibraryCore_frameworkLibrary_1518 = _sl_dlopen();
  }

  if (!PhotosLibraryCore_frameworkLibrary_1518)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFLinkActionPhotoItemCollectionParameterDefinition.m" lineNumber:27 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PHAssetCollection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHAssetCollectionClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFLinkActionPhotoItemCollectionParameterDefinition.m" lineNumber:28 description:{@"Unable to find class %s", "PHAssetCollection"}];

LABEL_10:
    __break(1u);
  }

  getPHAssetCollectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PhotosLibraryCore_block_invoke_1519(uint64_t a1)
{
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary_1518 = result;
  return result;
}

id WFSerializableHomeIdentifier(void *a1)
{
  v1 = [a1 uuid];
  v2 = [v1 UUIDString];

  return v2;
}

void *__HomeKitLibrary_block_invoke_1606()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_1608 = result;
  return result;
}

id getWFRelevanceEngineLogObject()
{
  if (getWFRelevanceEngineLogObject_onceToken != -1)
  {
    dispatch_once(&getWFRelevanceEngineLogObject_onceToken, &__block_literal_global_1740);
  }

  v1 = getWFRelevanceEngineLogObject_log;

  return v1;
}

void __getWFRelevanceEngineLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69E1140], "RelevanceEngine");
  v1 = getWFRelevanceEngineLogObject_log;
  getWFRelevanceEngineLogObject_log = v0;
}

void *__HomeLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Home.framework/Home", 2);
  HomeLibrary_sLib = result;
  return result;
}

id initHMCharacteristicMetadataFormatUInt64_2144()
{
  if (HomeKitLibrary_sOnce_2145 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_2145, &__block_literal_global_284);
  }

  v0 = dlsym(HomeKitLibrary_sLib_2146, "HMCharacteristicMetadataFormatUInt64");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatUInt64", "WFHomeAccessoryConditionalSubjectState.m", 35, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatUInt64_2149, *v0);
  getHMCharacteristicMetadataFormatUInt64_2142 = HMCharacteristicMetadataFormatUInt64Function_2151;
  v1 = constantHMCharacteristicMetadataFormatUInt64_2149;

  return v1;
}

void *__HomeKitLibrary_block_invoke_2153()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_2146 = result;
  return result;
}

id initHMCharacteristicMetadataFormatUInt32_2155()
{
  if (HomeKitLibrary_sOnce_2145 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_2145, &__block_literal_global_284);
  }

  v0 = dlsym(HomeKitLibrary_sLib_2146, "HMCharacteristicMetadataFormatUInt32");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatUInt32", "WFHomeAccessoryConditionalSubjectState.m", 34, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatUInt32_2157, *v0);
  getHMCharacteristicMetadataFormatUInt32_2141 = HMCharacteristicMetadataFormatUInt32Function_2159;
  v1 = constantHMCharacteristicMetadataFormatUInt32_2157;

  return v1;
}

id initHMCharacteristicMetadataFormatUInt16_2161()
{
  if (HomeKitLibrary_sOnce_2145 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_2145, &__block_literal_global_284);
  }

  v0 = dlsym(HomeKitLibrary_sLib_2146, "HMCharacteristicMetadataFormatUInt16");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatUInt16", "WFHomeAccessoryConditionalSubjectState.m", 33, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatUInt16_2164, *v0);
  getHMCharacteristicMetadataFormatUInt16_2140 = HMCharacteristicMetadataFormatUInt16Function_2166;
  v1 = constantHMCharacteristicMetadataFormatUInt16_2164;

  return v1;
}

id initHMCharacteristicMetadataFormatUInt8_2168()
{
  if (HomeKitLibrary_sOnce_2145 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_2145, &__block_literal_global_284);
  }

  v0 = dlsym(HomeKitLibrary_sLib_2146, "HMCharacteristicMetadataFormatUInt8");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatUInt8", "WFHomeAccessoryConditionalSubjectState.m", 32, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatUInt8_2170, *v0);
  getHMCharacteristicMetadataFormatUInt8_2139 = HMCharacteristicMetadataFormatUInt8Function_2172;
  v1 = constantHMCharacteristicMetadataFormatUInt8_2170;

  return v1;
}

id initHMCharacteristicMetadataFormatFloat_2174()
{
  if (HomeKitLibrary_sOnce_2145 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_2145, &__block_literal_global_284);
  }

  v0 = dlsym(HomeKitLibrary_sLib_2146, "HMCharacteristicMetadataFormatFloat");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatFloat", "WFHomeAccessoryConditionalSubjectState.m", 30, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatFloat_2176, *v0);
  getHMCharacteristicMetadataFormatFloat_2138 = HMCharacteristicMetadataFormatFloatFunction_2178;
  v1 = constantHMCharacteristicMetadataFormatFloat_2176;

  return v1;
}

id initHMCharacteristicMetadataFormatInt_2180()
{
  if (HomeKitLibrary_sOnce_2145 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_2145, &__block_literal_global_284);
  }

  v0 = dlsym(HomeKitLibrary_sLib_2146, "HMCharacteristicMetadataFormatInt");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatInt", "WFHomeAccessoryConditionalSubjectState.m", 29, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatInt_2183, *v0);
  getHMCharacteristicMetadataFormatInt_2137 = HMCharacteristicMetadataFormatIntFunction_2185;
  v1 = constantHMCharacteristicMetadataFormatInt_2183;

  return v1;
}

id initHMCharacteristicMetadataFormatString_2187()
{
  if (HomeKitLibrary_sOnce_2145 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_2145, &__block_literal_global_284);
  }

  v0 = dlsym(HomeKitLibrary_sLib_2146, "HMCharacteristicMetadataFormatString");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatString", "WFHomeAccessoryConditionalSubjectState.m", 31, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatString_2189, *v0);
  getHMCharacteristicMetadataFormatString_2136 = HMCharacteristicMetadataFormatStringFunction_2191;
  v1 = constantHMCharacteristicMetadataFormatString_2189;

  return v1;
}

id initHMCharacteristicMetadataFormatBool_2193()
{
  if (HomeKitLibrary_sOnce_2145 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_2145, &__block_literal_global_284);
  }

  v0 = dlsym(HomeKitLibrary_sLib_2146, "HMCharacteristicMetadataFormatBool");
  if (!v0)
  {
    __assert_rtn("initHMCharacteristicMetadataFormatBool", "WFHomeAccessoryConditionalSubjectState.m", 28, "constant");
  }

  objc_storeStrong(&constantHMCharacteristicMetadataFormatBool_2196, *v0);
  getHMCharacteristicMetadataFormatBool_2135 = HMCharacteristicMetadataFormatBoolFunction_2198;
  v1 = constantHMCharacteristicMetadataFormatBool_2196;

  return v1;
}

uint64_t WFPBTriggeredAutomationEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v47 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v47 & 0x7F) << v5;
        if ((v47 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        break;
      }

      switch(v13)
      {
        case 1:
          v27 = PBReaderReadString();
          v28 = 16;
          break;
        case 2:
          v27 = PBReaderReadString();
          v28 = 24;
          break;
        case 3:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            v49 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v49 & 0x7F) << v14;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_70;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_70:
          v45 = 32;
LABEL_73:
          *(a1 + v45) = v20;
          goto LABEL_79;
        default:
          goto LABEL_52;
      }

      v37 = *(a1 + v28);
      *(a1 + v28) = v27;

LABEL_79:
      v46 = [a2 position];
      if (v46 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 4)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        v51 = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v51 & 0x7F) << v29;
        if ((v51 & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v11 = v30++ >= 9;
        if (v11)
        {
          v35 = 0;
          goto LABEL_68;
        }
      }

      if ([a2 hasError])
      {
        v35 = 0;
      }

      else
      {
        v35 = v31;
      }

LABEL_68:
      v44 = 8;
      goto LABEL_78;
    }

    if (v13 == 6)
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        v50 = 0;
        v41 = [a2 position] + 1;
        if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
        {
          v43 = [a2 data];
          [v43 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v40 |= (v50 & 0x7F) << v38;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v38 += 7;
        v11 = v39++ >= 9;
        if (v11)
        {
          v35 = 0;
          goto LABEL_77;
        }
      }

      if ([a2 hasError])
      {
        v35 = 0;
      }

      else
      {
        v35 = v40;
      }

LABEL_77:
      v44 = 12;
LABEL_78:
      *(a1 + v44) = v35;
      goto LABEL_79;
    }

    if (v13 != 7)
    {
LABEL_52:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_79;
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    *(a1 + 36) |= 8u;
    while (1)
    {
      v48 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v23 |= (v48 & 0x7F) << v21;
      if ((v48 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v11 = v22++ >= 9;
      if (v11)
      {
        LOBYTE(v20) = 0;
        goto LABEL_72;
      }
    }

    v20 = (v23 != 0) & ~[a2 hasError];
LABEL_72:
    v45 = 33;
    goto LABEL_73;
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t WFVariableStringInferredContentTypeForItem(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 0;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_2:
    v2 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = 2;
    }

    else
    {
      v4 = [v1 supportedItemClasses];
      v5 = [v4 containsObject:objc_opt_class()];

      v2 = v5;
    }
  }

LABEL_5:

  return v2;
}

void WFAppendStringToVariableContentConcatenatingStringsIfNecessary(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  if (v3)
  {
    v4 = [v6 lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 stringByAppendingString:v3];
      [v6 replaceObjectAtIndex:objc_msgSend(v6 withObject:{"count") - 1, v5}];
    }

    else
    {
      [v6 addObject:v3];
    }
  }
}

void sub_1CA6DE7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2997(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA6DF17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL WFAppShortcutDataSourceEnvironmentToOrganizationStyle(_BOOL8 result)
{
  if (result != 2)
  {
    return result;
  }

  return result;
}

uint64_t (*initHKUILocalizedWorkoutTypeName(uint64_t a1))(void)
{
  if (HealthUILibrary_sOnce != -1)
  {
    dispatch_once(&HealthUILibrary_sOnce, &__block_literal_global_482);
  }

  v2 = dlsym(HealthUILibrary_sLib, "HKUILocalizedWorkoutTypeName");
  softLinkHKUILocalizedWorkoutTypeName = v2;
  if (v2)
  {
    v2 = v2(a1);
  }

  return v2;
}

void *__HealthUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/HealthUI.framework/HealthUI", 2);
  HealthUILibrary_sLib = result;
  return result;
}

Class initHKWorkout()
{
  if (HealthKitLibrary_sOnce != -1)
  {
    dispatch_once(&HealthKitLibrary_sOnce, &__block_literal_global_478);
  }

  result = objc_getClass("HKWorkout");
  classHKWorkout = result;
  getHKWorkoutClass = HKWorkoutFunction;
  return result;
}

void *__HealthKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/HealthKit.framework/HealthKit", 2);
  HealthKitLibrary_sLib = result;
  return result;
}

uint64_t WFPBRunShortcutEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v58 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v58 & 0x7F) << v5;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = PBReaderReadString();
          v14 = 40;
          goto LABEL_63;
        case 3u:
          v13 = PBReaderReadString();
          v14 = 56;
          goto LABEL_63;
        case 4u:
          v13 = PBReaderReadString();
          v14 = 24;
          goto LABEL_63;
        case 5u:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 84) |= 1u;
          while (1)
          {
            v60 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v60 & 0x7F) << v34;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              v40 = 0;
              goto LABEL_91;
            }
          }

          if ([a2 hasError])
          {
            v40 = 0;
          }

          else
          {
            v40 = v36;
          }

LABEL_91:
          v56 = 8;
          goto LABEL_99;
        case 6u:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 84) |= 4u;
          while (1)
          {
            v64 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v64 & 0x7F) << v22;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_85;
            }
          }

          v21 = (v24 != 0) & ~[a2 hasError];
LABEL_85:
          v55 = 80;
          goto LABEL_94;
        case 7u:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 84) |= 0x10u;
          while (1)
          {
            v63 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v63 & 0x7F) << v28;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_87;
            }
          }

          v21 = (v30 != 0) & ~[a2 hasError];
LABEL_87:
          v55 = 82;
          goto LABEL_94;
        case 8u:
          v13 = PBReaderReadString();
          v14 = 72;
          goto LABEL_63;
        case 9u:
          v13 = PBReaderReadString();
          v14 = 32;
          goto LABEL_63;
        case 0xAu:
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 84) |= 2u;
          while (1)
          {
            v59 = 0;
            v52 = [a2 position] + 1;
            if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
            {
              v54 = [a2 data];
              [v54 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v51 |= (v59 & 0x7F) << v49;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v11 = v50++ >= 9;
            if (v11)
            {
              v40 = 0;
              goto LABEL_98;
            }
          }

          if ([a2 hasError])
          {
            v40 = 0;
          }

          else
          {
            v40 = v51;
          }

LABEL_98:
          v56 = 48;
LABEL_99:
          *(a1 + v56) = v40;
          goto LABEL_100;
        case 0xBu:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 84) |= 8u;
          while (1)
          {
            v62 = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v62 & 0x7F) << v43;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_93;
            }
          }

          v21 = (v45 != 0) & ~[a2 hasError];
LABEL_93:
          v55 = 81;
          goto LABEL_94;
        case 0xCu:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 84) |= 0x20u;
          break;
        case 0xDu:
          v13 = PBReaderReadString();
          v14 = 16;
          goto LABEL_63;
        case 0xEu:
          v13 = PBReaderReadString();
          v14 = 64;
LABEL_63:
          v42 = *(a1 + v14);
          *(a1 + v14) = v13;

          goto LABEL_100;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_100;
      }

      while (1)
      {
        v61 = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v61 & 0x7F) << v15;
        if ((v61 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          LOBYTE(v21) = 0;
          goto LABEL_83;
        }
      }

      v21 = (v17 != 0) & ~[a2 hasError];
LABEL_83:
      v55 = 83;
LABEL_94:
      *(a1 + v55) = v21;
LABEL_100:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

Class initHFTriggerActionSetsBuilder()
{
  if (HomeLibrary_sOnce_4502 != -1)
  {
    dispatch_once(&HomeLibrary_sOnce_4502, &__block_literal_global_256);
  }

  result = objc_getClass("HFTriggerActionSetsBuilder");
  classHFTriggerActionSetsBuilder = result;
  getHFTriggerActionSetsBuilderClass = HFTriggerActionSetsBuilderFunction;
  return result;
}

void *__HomeLibrary_block_invoke_4505()
{
  result = dlopen("/System/Library/PrivateFrameworks/Home.framework/Home", 2);
  HomeLibrary_sLib_4507 = result;
  return result;
}

void sub_1CA6E77BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFEnforceClass_4549(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315906;
      v9 = "WFEnforceClass";
      v10 = 2114;
      v11 = v3;
      v12 = 2114;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = a2;
      v6 = v13;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Failed to serialize INRunWorkflowIntent for watch sync", &v8, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

id WFMapPropertyListStrings(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v3;
  if (!v5)
  {
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 objectForKeyedSubscript:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    v9 = v8;

    goto LABEL_25;
  }

  v9 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v5;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = [v9 allKeys];
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = [v9 objectForKeyedSubscript:v15];
          v17 = WFMapPropertyListStrings(v15, v4);
          v18 = WFMapPropertyListStrings(v16, v4);
          if (![v15 isEqual:v17] || (objc_msgSend(v16, "isEqual:", v18) & 1) == 0)
          {
            [v9 removeObjectForKey:v15];
            [v9 setObject:v18 forKey:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }

    v5 = v23;
    goto LABEL_25;
  }

  v9 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_24:

    v9 = v5;
    goto LABEL_25;
  }

  if ([v9 count])
  {
    v19 = 0;
    do
    {
      v20 = [v9 objectAtIndexedSubscript:v19];
      v21 = WFMapPropertyListStrings(v20, v4);
      [v9 setObject:v21 atIndexedSubscript:v19];

      ++v19;
    }

    while (v19 < [v9 count]);
  }

LABEL_25:

  return v9;
}

id WFLegacySerializedWorkflowToRunWorkflow(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSData * _Nullable WFLegacySerializedWorkflowToRunWorkflow(WFWorkflowReference * _Nonnull __strong, NSError *__autoreleasing  _Nullable * _Nullable)"}];
    [v16 handleFailureInFunction:v17 file:@"WFWorkflowRecord+PeaceDeserialization.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"reference"}];
  }

  v4 = [objc_alloc(MEMORY[0x1E696E9B0]) initWithWorkflowReference:v3 includeIcon:0];
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:a2];
  if ([v5 length])
  {
    v6 = objc_opt_new();
    v7 = [v3 name];
    [v6 setObject:v7 forKeyedSubscript:@"WFLWorkflowName"];

    v8 = [v3 subtitle];
    v9 = [v8 length];

    if (v9)
    {
      v10 = [v3 subtitle];
      [v6 setObject:v10 forKeyedSubscript:@"WFLWorkflowDescription"];
    }

    v19 = v5;
    v20[0] = @"WFLWorkflowActionIdentifier";
    v20[1] = @"WFLWorkflowActionParameters";
    v21[0] = @"com.apple.WorkflowKit.actions.handle-intent";
    v18 = @"IntentData";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v21[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v22 = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    [v6 setObject:v13 forKeyedSubscript:@"WFLWorkflowActions"];

    v14 = [MEMORY[0x1E696AE40] dataWithPropertyList:v6 format:200 options:0 error:a2];
  }

  else
  {
    v6 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "WFLegacySerializedWorkflowToRunWorkflow";
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s Failed to serialize INRunWorkflowIntent for watch sync", buf, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

Class initATXClient()
{
  if (AppPredictionClientLibrary_sOnce != -1)
  {
    dispatch_once(&AppPredictionClientLibrary_sOnce, &__block_literal_global_338_4775);
  }

  result = objc_getClass("ATXClient");
  classATXClient = result;
  getATXClientClass = ATXClientFunction;
  return result;
}

void *__AppPredictionClientLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppPredictionClient.framework/AppPredictionClient", 2);
  AppPredictionClientLibrary_sLib = result;
  return result;
}

id VCIntentsForAllPossibleParameterCombinationsOfIntent(void *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = v1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v3 mediaContainer];
  v5 = [v4 type];

  if (v5 != 6)
  {
LABEL_6:

LABEL_7:
    v7 = [v2 _validParameterCombinations];
    goto LABEL_8;
  }

  v6 = [v3 copy];
  [v6 setMediaItems:MEMORY[0x1E695E0F0]];
  [v6 setResumePlayback:0];
  v7 = [v6 _validParameterCombinations];
  if (![v7 count])
  {

    goto LABEL_6;
  }

LABEL_8:
  v25 = v7;
  v8 = [v7 allKeys];
  v9 = [v8 mutableCopy];

  v24 = [v2 _nonNilParameters];
  v10 = [v9 indexOfObject:?];
  if (v10 && v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v9 exchangeObjectAtIndex:v10 withObjectAtIndex:0];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v27 = *v34;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        v15 = [v2 _emptyCopy];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v16 = v14;
        v17 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v30;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v30 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v29 + 1) + 8 * j);
              if ([v15 _isValidKey:v21])
              {
                v22 = [v2 valueForKey:v21];
                [v15 setValue:v22 forKey:v21];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v18);
        }

        [v28 addObject:v15];
      }

      v12 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v12);
  }

  return v28;
}

id VCInteractionDonationFromINIntent(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696E8B8];
  v4 = a2;
  v5 = a1;
  v6 = [[v3 alloc] initWithIntent:v5 response:0];

  v7 = objc_alloc(MEMORY[0x1E69E0920]);
  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];
  v10 = [v7 initWithIdentifier:v9 sourceAppIdentifier:v4 interaction:v6];

  return v10;
}

void sub_1CA6EBB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose((v65 - 160), 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose(&STACK[0x298], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4812(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id VCActionDonationArrayFromINShortcutArray(void *a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v34 = a2;
  v35 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v37;
    *&v6 = 136315394;
    v32 = v6;
    v9 = 0x1E696A000uLL;
    v10 = 0x1E696E000uLL;
    do
    {
      v11 = 0;
      v33 = v7;
      do
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v36 + 1) + 8 * v11);
        v13 = [v12 intent];

        if (v13)
        {
          v14 = objc_alloc(*(v10 + 2232));
          v15 = [v12 intent];
          v16 = [v14 initWithIntent:v15 response:0];

          v17 = objc_alloc(MEMORY[0x1E69E0920]);
          v18 = [*(v9 + 4016) UUID];
          v19 = [v18 UUIDString];
          v20 = [v17 initWithIdentifier:v19 sourceAppIdentifier:v34 interaction:v16];
          [v35 addObject:v20];
        }

        else
        {
          v21 = [v12 userActivity];

          if (v21)
          {
            v22 = objc_alloc(MEMORY[0x1E69E0930]);
            v16 = [v12 userActivity];
            v23 = [*(v9 + 4016) UUID];
            v24 = [v23 UUIDString];
            v25 = v8;
            v26 = v10;
            v27 = v9;
            v28 = v4;
            v29 = objc_opt_new();
            v30 = [v22 initWithUserActivity:v16 identifier:v24 sourceAppIdentifier:v34 date:v29];
            [v35 addObject:v30];

            v4 = v28;
            v9 = v27;
            v10 = v26;
            v8 = v25;
            v7 = v33;
          }

          else
          {
            v16 = getWFActionDonationsLogObject();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = v32;
              v41 = "VCActionDonationArrayFromINShortcutArray";
              v42 = 2114;
              v43 = v12;
              _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s Invalid action: %{public}@", buf, 0x16u);
            }
          }
        }

        ++v11;
      }

      while (v7 != v11);
      v7 = [v4 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v7);
  }

  return v35;
}

Class initATXActionPredictionClient()
{
  if (AppPredictionClientLibrary_sOnce != -1)
  {
    dispatch_once(&AppPredictionClientLibrary_sOnce, &__block_literal_global_338_4775);
  }

  result = objc_getClass("ATXActionPredictionClient");
  classATXActionPredictionClient = result;
  getATXActionPredictionClientClass = ATXActionPredictionClientFunction;
  return result;
}

uint64_t (*initSPGetDisabledAppSet())(void)
{
  if (SearchLibrary_sOnce != -1)
  {
    dispatch_once(&SearchLibrary_sOnce, &__block_literal_global_344);
  }

  v0 = dlsym(SearchLibrary_sLib, "SPGetDisabledAppSet");
  softLinkSPGetDisabledAppSet = v0;
  if (v0)
  {
    v0 = v0();
  }

  return v0;
}

void *__SearchLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Search.framework/Search", 2);
  SearchLibrary_sLib = result;
  return result;
}

void WFTransformValueForParameterDescription(void *a1, void *a2, void *a3)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v6 wf_objectClass];
  if (!v8)
  {
    (*(v7 + 2))(v7, 0, 0);
    goto LABEL_20;
  }

  v9 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v5;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = MEMORY[0x1E6996D40];
    v25[0] = v5;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [MEMORY[0x1E6996D58] itemWithFile:v5];
      }

      else
      {
        [MEMORY[0x1E6996D58] itemWithObject:v5];
      }
      v13 = ;
      v14 = MEMORY[0x1E6996D40];
      v24 = v13;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
      v10 = [v14 collectionWithItems:v15];

      goto LABEL_14;
    }

    v11 = MEMORY[0x1E6996D40];
    v12 = [v5 if_compactMap:&__block_literal_global_4953];
  }

  v13 = v12;
  v10 = [v11 collectionWithItems:v12];
LABEL_14:

LABEL_15:
  if (([v6 wf_multipleValues] & 1) != 0 || !objc_msgSend(objc_msgSend(v6, "wf_objectClass"), "isEqual:", objc_opt_class()))
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __WFTransformValueForParameterDescription_block_invoke_3;
    v18[3] = &unk_1E837A538;
    v16 = &v19;
    v19 = v6;
    v17 = &v20;
    v20 = v7;
    [v10 getObjectRepresentations:v18 forClass:v9];
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __WFTransformValueForParameterDescription_block_invoke_2;
    v21[3] = &unk_1E83787E0;
    v16 = &v23;
    v23 = v7;
    v17 = &v22;
    v22 = v6;
    [v10 getObjectRepresentation:v21 forClass:v9];
  }

LABEL_20:
}

void __WFTransformValueForParameterDescription_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a4;
  v8 = a2;
  v9 = WFTransformObjectRepresentationToFacadeObject(v8, [v6 wf_facadeClass]);

  (*(v5 + 16))(v5, v9, v7);
}

void __WFTransformValueForParameterDescription_block_invoke_3(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __WFTransformValueForParameterDescription_block_invoke_4;
  v7[3] = &unk_1E837E220;
  v8 = *(a1 + 32);
  v4 = [a2 if_compactMap:v7];
  v5 = *(a1 + 40);
  if ([*(a1 + 32) wf_multipleValues])
  {
    (*(v5 + 16))(v5, v4, 0);
  }

  else
  {
    v6 = [v4 firstObject];
    (*(v5 + 16))(v5, v6, 0);
  }
}

id __WFTransformValueForParameterDescription_block_invoke_4(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = *(a1 + 32);
  if (isKindOfClass)
  {
    v6 = [v5 codableDescription];
    v7 = objc_opt_class();
    v8 = v3;
    if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = getWFGeneralLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315906;
        v40 = "WFEnforceClass";
        v41 = 2114;
        v42 = v8;
        v43 = 2114;
        v44 = objc_opt_class();
        v45 = 2114;
        v46 = v7;
        v12 = v44;
        _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
      }

      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    v13 = v6;
    v14 = [v9 codableDescription];
    v15 = [v14 typeName];
    v16 = [v13 typeName];
    isEqualToString = objc_msgSend_isEqualToString_(v15);

    if (isEqualToString)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = [v13 attributes];
      v18 = [obj countByEnumeratingWithState:&v35 objects:buf count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v36;
        v32 = v9;
        v33 = v3;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v36 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v35 + 1) + 8 * i);
            v23 = [v13 attributes];
            v24 = [v23 objectForKeyedSubscript:v22];

            v25 = [v14 attributes];
            v26 = [v25 objectForKeyedSubscript:v22];

            v27 = objc_opt_class();
            if (v27 != objc_opt_class() || ([v24 propertyName], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "propertyName"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend_isEqualToString_(v28), v29, v28, !v30))
            {

              v9 = v32;
              v3 = v33;
              goto LABEL_21;
            }
          }

          v19 = [obj countByEnumeratingWithState:&v35 objects:buf count:16];
          v9 = v32;
          v3 = v33;
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      v10 = v9;
    }

    else
    {
LABEL_21:

      v10 = 0;
    }
  }

  else
  {
    v10 = WFTransformObjectRepresentationToFacadeObject(v3, [v5 wf_facadeClass]);
  }

  return v10;
}

id WFTransformObjectRepresentationToFacadeObject(void *a1, void *a2)
{
  v3 = a1;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
LABEL_7:
    v5 = v4;
    goto LABEL_8;
  }

  if ([a2 isEqual:objc_opt_class()])
  {
    v4 = [objc_alloc(MEMORY[0x1E696EA50]) initWithSpokenPhrase:v3];
    goto LABEL_7;
  }

  if ([a2 isEqual:objc_opt_class()])
  {
    v4 = [objc_alloc(MEMORY[0x1E696E800]) initWithStartDateComponents:v3 endDateComponents:0];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

id __WFTransformValueForParameterDescription_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [MEMORY[0x1E6996D58] itemWithFile:v2];
    }

    else
    {
      [MEMORY[0x1E6996D58] itemWithObject:v2];
    }
    v3 = ;
  }

  v4 = v3;

  return v4;
}

id WFAddSpacesToCamelCaseName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 mutableCopy];
    v3 = [v1 length];
    v4 = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
    if (v3 >= 2)
    {
      for (i = 1; i < v3; ++i)
      {
        if ([v4 characterIsMember:{objc_msgSend(v2, "characterAtIndex:", i)}])
        {
          [v2 insertString:@" " atIndex:i++];
        }
      }
    }

    v6 = [v2 copy];
  }

  else
  {
    v6 = v1;
  }

  return v6;
}

id WFCapitalizeFirstLetter(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 substringToIndex:1];
    v3 = [v2 capitalizedString];

    v4 = [v1 stringByReplacingCharactersInRange:0 withString:{1, v3}];
  }

  else
  {
    v4 = v1;
  }

  return v4;
}

uint64_t WFREPBRunRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA6F140C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5216(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA6F18E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void WFConfigureIntentBasedParameterResources(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v3 resourceObjectsOfClass:{objc_opt_class(), 0}];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setupWithAction:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

uint64_t WFREPBAlertButtonReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        v28 = PBReaderReadString();
        v29 = *(a1 + 16);
        *(a1 + 16) = v28;
      }

      else if (v13 == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          v33 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v33 & 0x7F) << v21;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_44;
          }
        }

        v27 = [a2 hasError] ? 0 : v23;
LABEL_44:
        *(a1 + 8) = v27;
      }

      else if (v13 == 3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          v34 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v34 & 0x7F) << v14;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_46;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_46:
        *(a1 + 24) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *NSStringFromSyncEventType(int a1)
{
  if ((a1 - 1) > 0xC)
  {
    return @"RecordFetch";
  }

  else
  {
    return off_1E8374510[a1 - 1];
  }
}

id WFEnforceClass_6231(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315906;
      v9 = "WFEnforceClass";
      v10 = 2114;
      v11 = v3;
      v12 = 2114;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = a2;
      v6 = v13;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s provideInputForParameters should not be called", &v8, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

void sub_1CA6FD908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA6FE018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6342(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA6FE36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA6FE554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA6FE8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WFPBContextualActionEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v34 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v34 & 0x7F) << v25;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              LOBYTE(v31) = 0;
              goto LABEL_50;
            }
          }

          v31 = (v27 != 0) & ~[a2 hasError];
LABEL_50:
          *(a1 + 32) = v31;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_51;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v35 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v35 & 0x7F) << v16;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_48:
          *(a1 + 8) = v22;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 16;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_32;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }

        v24 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_51:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id WFLocalizedPluralString(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = [v1 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
    v4 = [v2 stringWithFormat:@"%@ (Pluralization)", v3];

    v5 = WFCurrentBundle();
    v6 = [v5 localizedStringForKey:v4 value:v1 table:0];
  }

  else
  {
    v6 = v1;
  }

  return v6;
}

id WFLocalizedContentPropertyNameMarker(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = [v1 stringWithFormat:@"%@ (Content Property Name)", v2];
  v4 = WFDeferrableLocalizedStringWithKey(v3, v2);

  return v4;
}

id WFDeferrableLocalizedStringWithKey(void *a1, void *a2)
{
  v3 = MEMORY[0x1E69E0A88];
  v4 = a2;
  v5 = a1;
  v6 = [[v3 alloc] initWithString:v4];
  v7 = WFCurrentBundle();
  v8 = [v7 localizedStringForKey:v5 value:v4 table:0];
  [v6 setLocalizedValue:v8];

  v9 = WFLocalizedStringResourceWithKey(v5, v4);

  [v6 setStringResource:v9];

  return v6;
}

id WFLocalizedContentPropertyPossibleValueMarker(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = [v1 stringWithFormat:@"%@ (Content Property Possible Value)", v2];
  v4 = WFDeferrableLocalizedStringWithKey(v3, v2);

  return v4;
}

id WFLocalizedContentPropertyPossibleValue(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 localizedValue];
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (Content Property Possible Value)", v1];
    v2 = WFLocalizedStringWithKey(v3, v1);
  }

  return v2;
}

uint64_t WFREPBSingleActionExecutionReadFrom(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v16 = 8;
LABEL_34:
          v14 = *&a1[v16];
          *&a1[v16] = v15;
LABEL_35:

          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(WFREPBVariable);
          [a1 addVariables:v14];
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !WFREPBVariableReadFrom(v14, a2))
          {
LABEL_41:

            return 0;
          }

LABEL_31:
          PBReaderRecallMark();
          goto LABEL_35;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(WFREPBKeyValuePair);
            [a1 addProcessedParameters:v14];
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !WFREPBKeyValuePairReadFrom(v14, a2))
            {
              goto LABEL_41;
            }

            goto LABEL_31;
          case 4:
            v15 = PBReaderReadData();
            v16 = 32;
            goto LABEL_34;
          case 5:
            v14 = objc_alloc_init(WFREPBContentItem);
            [a1 addInput:v14];
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !WFREPBContentItemReadFrom(v14, a2))
            {
              goto LABEL_41;
            }

            goto LABEL_31;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA707398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7456(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA711BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFInputActionContentItemClassCorrespondingToAskForParameterValue(void *a1)
{
  v1 = a1;
  if ((objc_msgSend_isEqualToString_(v1) & 1) != 0 || (objc_msgSend_isEqualToString_(v1) & 1) != 0 || (objc_msgSend_isEqualToString_(v1) & 1) != 0 || (objc_msgSend_isEqualToString_(v1) & 1) != 0 || (objc_msgSend_isEqualToString_(v1) & 1) != 0 || (objc_msgSend_isEqualToString_(v1) & 1) != 0 || (objc_msgSend_isEqualToString_(v1) & 1) != 0 || objc_msgSend_isEqualToString_(v1))
  {
    v2 = objc_opt_class();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id WFInputActionParameterKeysForSelectingItemOfClass(objc_class *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSSet<NSString *> * _Nonnull WFInputActionParameterKeysForSelectingItemOfClass(Class  _Nonnull __unsafe_unretained)"];
    [v14 handleFailureInFunction:v15 file:@"WFInputAction.m" lineNumber:233 description:{@"Invalid parameter not satisfying: %@", @"contentItemClass"}];
  }

  v16 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = WFContentSelectionActionParameterDefinitions();
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [v7 objectForKey:@"WFInputActionParameterContentSelectionItemClass"];
        if (v8)
        {
          v9 = NSStringFromClass(a1);
          isEqualToString = objc_msgSend_isEqualToString_(v8);

          if (isEqualToString)
          {
            v11 = [v7 objectForKey:@"Key"];
            [v16 addObject:v11];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  v12 = [v16 copy];

  return v12;
}

id WFContentSelectionActionParameterDefinitions()
{
  if (WFContentSelectionActionParameterDefinitions_onceToken != -1)
  {
    dispatch_once(&WFContentSelectionActionParameterDefinitions_onceToken, &__block_literal_global_294_7948);
  }

  v1 = WFContentSelectionActionParameterDefinitions_parameterDefinitions;

  return v1;
}

void __WFContentSelectionActionParameterDefinitions_block_invoke()
{
  v22[8] = *MEMORY[0x1E69E9840];
  v22[0] = @"Files";
  v22[1] = @"Text";
  v22[2] = @"Date";
  v22[3] = @"Photos";
  v22[4] = @"Contacts";
  v22[5] = @"Email Address";
  v22[6] = @"Music";
  v22[7] = @"Phone Number";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:8];
  v1 = [v0 if_map:&__block_literal_global_297];
  v2 = +[WFActionRegistry sharedRegistry];
  v3 = [v2 createActionsForSelectingContentOfTypes:v1 serializedParameterArray:0];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = objc_opt_new();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __WFContentSelectionActionParameterDefinitions_block_invoke_298;
    v15[3] = &unk_1E8374C98;
    v6 = v4;
    v16 = v6;
    v17 = v1;
    v7 = v5;
    v18 = v7;
    v19 = v3;
    [v0 enumerateObjectsUsingBlock:v15];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __WFContentSelectionActionParameterDefinitions_block_invoke_2_300;
    v12[3] = &unk_1E8374D10;
    v13 = v6;
    v14 = v7;
    v8 = v7;
    v9 = v6;
    v10 = [v0 if_flatMap:v12];
    v11 = WFContentSelectionActionParameterDefinitions_parameterDefinitions;
    WFContentSelectionActionParameterDefinitions_parameterDefinitions = v10;
  }

  else
  {
    v9 = getWFActionsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v21 = "WFContentSelectionActionParameterDefinitions_block_invoke";
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Couldn't make content selection actions for all content types", buf, 0xCu);
    }
  }
}

void __WFContentSelectionActionParameterDefinitions_block_invoke_298(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  [*(a1 + 32) setObject:objc_msgSend(v5 forKeyedSubscript:{"objectAtIndexedSubscript:", a3), v6}];
  v7 = [*(a1 + 56) objectAtIndexedSubscript:a3];
  [*(a1 + 48) setObject:v7 forKeyedSubscript:v6];
}

id __WFContentSelectionActionParameterDefinitions_block_invoke_2_300(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = [*(a1 + 40) objectForKeyedSubscript:v3];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  if (v5)
  {
    v8 = v4 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [v5 definition];
    v10 = [v9 objectForKey:@"Parameters"];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [v6 inputParameterKey];
    v14 = objc_opt_new();
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __WFContentSelectionActionParameterDefinitions_block_invoke_3;
    v23[3] = &unk_1E8374CC0;
    v24 = v13;
    v25 = v3;
    v26 = v4;
    v15 = v13;
    v16 = [v12 if_compactMap:v23];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __WFContentSelectionActionParameterDefinitions_block_invoke_4;
    v21[3] = &unk_1E8375E38;
    v22 = v14;
    v17 = v14;
    v18 = [v16 if_map:v21];

    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v7;
    }

    v7 = v19;
  }

  return v7;
}

id __WFContentSelectionActionParameterDefinitions_block_invoke_3(uint64_t a1, void *a2)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKey:@"Key"];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (*(a1 + 32) && (objc_msgSend_isEqualToString_(v6) & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v8 = [WFParameterRelationResource alloc];
    v27[0] = @"Ask For";
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v10 = [(WFParameterRelationResource *)v8 initWithParameterKey:@"WFNoInputBehavior" parameterValues:v9 relation:0];

    v11 = [WFParameterRelationResource alloc];
    v26 = *(a1 + 40);
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v13 = [(WFParameterRelationResource *)v11 initWithParameterKey:@"WFAskForType" parameterValues:v12 relation:0];

    v14 = [v3 objectForKey:@"RequiredResources"];
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = MEMORY[0x1E695E0F0];
    }

    v18 = [v17 mutableCopy];

    v19 = WFSerializedResource(v10);
    [v18 addObject:v19];

    v20 = WFSerializedResource(v13);
    [v18 addObject:v20];

    v24[0] = @"RequiredResources";
    v24[1] = @"WFInputActionParameterContentSelectionItemClass";
    v25[0] = v18;
    v21 = NSStringFromClass(*(a1 + 48));
    v25[1] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v7 = [v3 definitionByAddingEntriesInDictionary:v22];
  }

  return v7;
}

id __WFContentSelectionActionParameterDefinitions_block_invoke_4(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKey:@"RequiredResources"];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __WFContentSelectionActionParameterDefinitions_block_invoke_5;
  v14 = &unk_1E8374CE8;
  v15 = *(a1 + 32);
  v7 = [v6 if_map:&v11];

  v16 = @"RequiredResources";
  v17[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:{1, v11, v12, v13, v14}];
  v9 = [v3 definitionByAddingEntriesInDictionary:v8];

  return v9;
}

id __WFContentSelectionActionParameterDefinitions_block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mutableCopy];
  v5 = [v3 objectForKeyedSubscript:@"WFParameterKey"];
  if (v5)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
    if (v6)
    {
      [v4 setObject:v6 forKeyedSubscript:@"WFParameterKey"];
      v7 = [v4 copy];
    }

    else
    {
      v7 = v3;
    }

    v8 = v7;
  }

  else
  {
    v8 = v3;
  }

  return v8;
}

id WFSerializedResource(void *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSDictionary * _Nonnull WFSerializedResource(WFResource * _Nonnull __strong)"];
    [v8 handleFailureInFunction:v9 file:@"WFInputAction.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"resource"}];
  }

  v2 = [v1 definition];
  v10 = @"WFResourceClass";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v6 = [v2 if_dictionaryByAddingEntriesFromDictionary:v5];

  return v6;
}

id __WFContentSelectionActionParameterDefinitions_block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = WFInputActionContentItemClassCorrespondingToAskForParameterValue(v2);
  if (!v3)
  {
    v4 = getWFActionsLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315394;
      v8 = "WFContentSelectionActionParameterDefinitions_block_invoke_2";
      v9 = 2112;
      v10 = v2;
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_FAULT, "%s Couldn't map content type to content item class: %@", &v7, 0x16u);
    }
  }

  v5 = v3;

  return v3;
}

id WFEnforceClass_8337(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315906;
      v9 = "WFEnforceClass";
      v10 = 2114;
      v11 = v3;
      v12 = 2114;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = a2;
      v6 = v13;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s %{public}@ is not a known class name.", &v8, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

void sub_1CA718D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8610(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA719514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void WFMCIsAppAccountBasedSourceForOpenIn(void *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getMCIsAppAccountBasedSourceForOpenInSymbolLoc_ptr;
  v9 = getMCIsAppAccountBasedSourceForOpenInSymbolLoc_ptr;
  if (!getMCIsAppAccountBasedSourceForOpenInSymbolLoc_ptr)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getMCIsAppAccountBasedSourceForOpenInSymbolLoc_block_invoke;
    v5[3] = &unk_1E837FAC0;
    v5[4] = &v6;
    __getMCIsAppAccountBasedSourceForOpenInSymbolLoc_block_invoke(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(v1);
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL WFMCIsAppAccountBasedSourceForOpenIn(NSString *__strong)"];
    [v3 handleFailureInFunction:v4 file:@"WFAction.m" lineNumber:56 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1CA71A978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMCIsAppAccountBasedSourceForOpenInSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __ManagedConfigurationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E83753C8;
    v7 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = ManagedConfigurationLibraryCore_frameworkLibrary;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ManagedConfigurationLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFAction.m" lineNumber:55 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "MCIsAppAccountBasedSourceForOpenIn");
  *(*(a1[4] + 8) + 24) = result;
  getMCIsAppAccountBasedSourceForOpenInSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary = result;
  return result;
}

id WFEnforceClass_8714(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315906;
      v9 = "WFEnforceClass";
      v10 = 2114;
      v11 = v3;
      v12 = 2114;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = a2;
      v6 = v13;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Action: %{public}@ setting parameter state: %{public}@, key:%{public}@, value:%@", &v8, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

void __WFActionGreenTeaContentDestinationMayLeaveDevice_block_invoke_2()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E69E0EB8];
  v5[0] = *MEMORY[0x1E69E0E68];
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = WFActionGreenTeaContentDestinationMayLeaveDevice_exfiltratingAppBundleIdentifier;
  WFActionGreenTeaContentDestinationMayLeaveDevice_exfiltratingAppBundleIdentifier = v3;
}

void __WFActionGreenTeaContentDestinationMayLeaveDevice_block_invoke()
{
  v4[7] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"com.apple.shortcuts.airdropDestination";
  v4[1] = @"com.apple.shortcuts.appleScriptDestination";
  v4[2] = @"com.apple.shortcuts.javaScriptForAutomationDestination";
  v4[3] = @"com.apple.shortcuts.printDestination";
  v4[4] = @"com.apple.shortcuts.shareExtensionDestination";
  v4[5] = @"com.apple.shortcuts.shellDestination";
  v4[6] = @"com.apple.shortcuts.webpagesDestination";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:7];
  v2 = [v0 setWithArray:v1];
  v3 = WFActionGreenTeaContentDestinationMayLeaveDevice_dataLeavingContentDestination;
  WFActionGreenTeaContentDestinationMayLeaveDevice_dataLeavingContentDestination = v2;
}

void sub_1CA725F44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1CA729E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFPreferredVariableNameForVariable(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 outputUUID];
    v3 = [v2 stringByAppendingString:@"-output"];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v1 name];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void sub_1CA72B72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFEnforceClass_9058(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315906;
      v9 = "WFEnforceClass";
      v10 = 2114;
      v11 = v3;
      v12 = 2114;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = a2;
      v6 = v13;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Action %@ is being rate limited because it passed the threshold of %li runs. Delaying execution for %li seconds.", &v8, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

id WFEnforceClass_9663(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315906;
      v9 = "WFEnforceClass";
      v10 = 2114;
      v11 = v3;
      v12 = 2114;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = a2;
      v6 = v13;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Received unexpected interaction response of type %@", &v8, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

uint64_t WFPerformCustomModificationsStep(void *a1, void *a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v22 = a1;
  v7 = a2;
  v21 = a4;
  v8 = [MEMORY[0x1E695D6C8] persistentStoreDescriptionWithURL:v7];
  v9 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:v22];
  v10 = [v8 type];
  v11 = [v8 configuration];
  v12 = [v8 URL];
  v32 = 0;
  v13 = [v9 addPersistentStoreWithType:v10 configuration:v11 URL:v12 options:0 error:&v32];
  v14 = v32;

  if (v13)
  {
    v15 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
    [v15 setPersistentStoreCoordinator:v9];
    [v15 setMergePolicy:*MEMORY[0x1E695D388]];
    [v15 setUndoManager:0];
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 1;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v34 = __Block_byref_object_copy__9793;
    v35 = __Block_byref_object_dispose__9794;
    v36 = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __WFPerformCustomModificationsStep_block_invoke;
    v23[3] = &unk_1E837A028;
    v26 = &v28;
    v25 = v21;
    v16 = v15;
    v24 = v16;
    v27 = buf;
    [v16 performBlockAndWait:v23];
    if (a3)
    {
      *a3 = *(*&buf[8] + 40);
    }

    v17 = *(v29 + 24);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v18 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "WFPerformCustomModificationsStep";
      *&buf[12] = 2114;
      *&buf[14] = v14;
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_ERROR, "%s Failed to add persistent store during Core Data migration: %{public}@", buf, 0x16u);
    }

    if (a3)
    {
      v19 = v14;
      v17 = 0;
      *a3 = v14;
    }

    else
    {
      v17 = 0;
    }
  }

  return v17 & 1;
}

void sub_1CA731538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9793(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __WFPerformCustomModificationsStep_block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[5];
  v7 = 0;
  v4 = (*(v3 + 16))();
  v5 = v7;
  v6 = v7;
  *(*(a1[6] + 8) + 24) = v4;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), v5);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t __Block_byref_object_copy__9838(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void WFInsertIdentifierForKey(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v8 objectForKey:v5];
  if (!v7)
  {
    v7 = objc_opt_new();
    [v8 setObject:v7 forKey:v5];
  }

  [v7 addObject:v6];
}

void sub_1CA73209C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t WFPBSetupGalleryShortcutEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v21 = PBReaderReadString();
          v22 = 32;
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v21 = PBReaderReadString();
          v22 = 16;
LABEL_36:
          v23 = *(a1 + v22);
          *(a1 + v22) = v21;

          goto LABEL_37;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = PBReaderReadString();
            v22 = 24;
            goto LABEL_36;
          case 4:
            v21 = PBReaderReadString();
            v22 = 8;
            goto LABEL_36;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_42;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_42:
            *(a1 + 40) = v20;
            goto LABEL_37;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_37:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA736158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v31 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10462(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t WFPBRemoteExecutionErrorEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 5)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_1E8375640[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id WFFileLocationClassByType(uint64_t a1, uint64_t a2)
{
  v5[9] = *MEMORY[0x1E69E9840];
  v4[0] = @"FileProvider";
  v5[0] = objc_opt_class();
  v4[1] = @"Desktop";
  v5[1] = objc_opt_class();
  v4[2] = @"Documents";
  v5[2] = objc_opt_class();
  v4[3] = @"Downloads";
  v5[3] = objc_opt_class();
  v4[4] = @"Shortcuts";
  v5[4] = objc_opt_class();
  v4[5] = @"iCloud";
  v5[5] = objc_opt_class();
  v4[6] = @"LocalStorage";
  v5[6] = objc_opt_class();
  v4[7] = @"Home";
  v5[7] = objc_opt_class();
  v4[8] = @"Absolute";
  v5[8] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:9];

  return v2;
}

void sub_1CA737824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA7382C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10748(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA7386D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WFREPBRepeatedKeyValuePairReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = a1[1];
        a1[1] = v13;
LABEL_22:

        goto LABEL_24;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_24:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    if (v14)
    {
      [a1 addValue:v14];
    }

    goto LABEL_22;
  }

  return [a2 hasError] ^ 1;
}

id getWFWFScreenOnObserverLogObject()
{
  if (getWFWFScreenOnObserverLogObject_onceToken != -1)
  {
    dispatch_once(&getWFWFScreenOnObserverLogObject_onceToken, &__block_literal_global_11053);
  }

  v1 = getWFWFScreenOnObserverLogObject_log;

  return v1;
}

void __getWFWFScreenOnObserverLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69E1140], "WFScreenOnObserver");
  v1 = getWFWFScreenOnObserverLogObject_log;
  getWFWFScreenOnObserverLogObject_log = v0;
}

_BYTE *mtl_copyPropertyAttributes(objc_property *a1)
{
  v42[1] = *MEMORY[0x1E69E9840];
  Attributes = property_getAttributes(a1);
  if (!Attributes)
  {
    v28 = *MEMORY[0x1E69E9848];
    property_getName(a1);
    fprintf(v28, "ERROR: Could not get attribute string from property %s\n");
    return 0;
  }

  v3 = Attributes;
  if (*Attributes != 84)
  {
    v29 = *MEMORY[0x1E69E9848];
    property_getName(a1);
    fprintf(v29, "ERROR: Expected attribute string %s for property %s to start with 'T'\n");
    return 0;
  }

  v4 = Attributes + 1;
  v5 = NSGetSizeAndAlignment(Attributes + 1, 0, 0);
  if (!v5)
  {
    v30 = *MEMORY[0x1E69E9848];
    property_getName(a1);
    fprintf(v30, "ERROR: Could not read past type in attribute string %s for property %s\n");
    return 0;
  }

  v6 = v5;
  v7 = v5 - v4;
  if (v5 == v4)
  {
    v31 = *MEMORY[0x1E69E9848];
    property_getName(a1);
    fprintf(v31, "ERROR: Invalid type in attribute string %s for property %s\n");
    return 0;
  }

  v8 = malloc_type_calloc(1uLL, v7 + 49, 0x10D0040A857D93CuLL);
  if (!v8)
  {
    v38 = *MEMORY[0x1E69E9848];
    property_getName(a1);
    fprintf(v38, "ERROR: Could not allocate mtl_propertyAttributes structure for attribute string %s for property %s\n");
    return 0;
  }

  v9 = v8;
  strncpy(v8 + 48, v3 + 1, v7)[v7] = 0;
  if (*v4 == 64 && v3[2] == 34)
  {
    v10 = (v3 + 3);
    v11 = strchr(v3 + 3, 34);
    if (v11)
    {
      v6 = v11;
      if (v10 != v11)
      {
        v12 = (v11 - v10);
        MEMORY[0x1EEE9AC00](v11);
        v14 = strncpy(v42 - v13, v3 + 3, v6 - v10);
        v12[v14] = 0;
        *(v9 + 5) = objc_getClass(v14);
      }

      goto LABEL_11;
    }

    v40 = *MEMORY[0x1E69E9848];
    property_getName(a1);
    fprintf(v40, "ERROR: Could not read class name in attribute string %s for property %s\n");
LABEL_68:
    free(v9);
    return 0;
  }

LABEL_11:
  if (*v6)
  {
    v6 = strchr(v6, 44);
    if (!v6)
    {
      goto LABEL_59;
    }
  }

  v15 = MEMORY[0x1E69E9848];
  while (*v6 == 44)
  {
    v16 = v6[1];
    v17 = v16;
    v6 += 2;
    if (v16 > 79)
    {
      if (v16 > 85)
      {
        switch(v16)
        {
          case 'V':
            if (*v6)
            {
              *(v9 + 4) = v6;
              v6 = "";
            }

            else
            {
LABEL_44:
              *(v9 + 4) = 0;
            }

            break;
          case 'W':
            v9[2] = 1;
            break;
          case 't':
            v18 = *v15;
            Name = property_getName(a1);
            fprintf(v18, "ERROR: Old-style type encoding is unsupported in attribute string %s for property %s\n", v3, Name);
            while (*v6 && *v6 != 44)
            {
              ++v6;
            }

            break;
          default:
            goto LABEL_48;
        }
      }

      else
      {
        switch(v16)
        {
          case 'P':
            v9[3] = 1;
            break;
          case 'R':
            *v9 = 1;
            break;
          case 'S':
            goto LABEL_37;
          default:
LABEL_48:
            v26 = *v15;
            v27 = property_getName(a1);
            fprintf(v26, "ERROR: Unrecognized attribute string flag '%c' in attribute string %s for property %s\n", v17, v3, v27);
            break;
        }
      }
    }

    else if (v16 > 67)
    {
      switch(v16)
      {
        case 'D':
          v9[4] = 1;
          goto LABEL_44;
        case 'G':
LABEL_37:
          v20 = strchr(v6, 44);
          if (v20)
          {
            v21 = v20;
            v22 = v20 - v6;
            if (v20 == v6)
            {
              v41 = *v15;
              property_getName(a1);
              fprintf(v41, "ERROR: Found zero length selector name in attribute string %s for property %s\n");
              goto LABEL_68;
            }

            MEMORY[0x1EEE9AC00](v20);
            v24 = strncpy(v42 - v23, v6, v22);
            v24[v22] = 0;
            v25 = sel_registerName(v24);
            v6 = v21;
          }

          else
          {
            v25 = sel_registerName(v6);
            v6 = "";
          }

          if (v17 == 71)
          {
            *(v9 + 2) = v25;
          }

          else
          {
            *(v9 + 3) = v25;
          }

          break;
        case 'N':
          v9[1] = 1;
          break;
        default:
          goto LABEL_48;
      }
    }

    else if (v16)
    {
      if (v16 == 38)
      {
        *(v9 + 2) = 1;
      }

      else
      {
        if (v16 != 67)
        {
          goto LABEL_48;
        }

        *(v9 + 2) = 2;
      }
    }
  }

  if (*v6)
  {
    v32 = *v15;
    v33 = property_getName(a1);
    fprintf(v32, "Warning: Unparsed data %s in attribute string %s for property %s\n", v6, v3, v33);
  }

LABEL_59:
  if (!*(v9 + 2))
  {
    v34 = property_getName(a1);
    *(v9 + 2) = sel_registerName(v34);
  }

  if (!*(v9 + 3))
  {
    v35 = property_getName(a1);
    v36 = strlen(v35);
    v37 = v42 - ((MEMORY[0x1EEE9AC00](v36) + 20) & 0xFFFFFFFFFFFFFFF0);
    v37[2] = 116;
    *v37 = 25971;
    strncpy(v37 + 3, v35, v36);
    v37[3] = __toupper(v37[3]);
    *&v37[v36 + 3] = 58;
    *(v9 + 3) = sel_registerName(v37);
  }

  return v9;
}

uint64_t WFPBSuspendShortcutEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_1E8375768[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA73F968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11777(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA740204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAXSDSettingsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXSDSettingsClass_softClass;
  v7 = getAXSDSettingsClass_softClass;
  if (!getAXSDSettingsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAXSDSettingsClass_block_invoke;
    v3[3] = &unk_1E837FAC0;
    v3[4] = &v4;
    __getAXSDSettingsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA7402E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAXSDSettingsClass_block_invoke(uint64_t a1)
{
  AXSoundDetectionLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AXSDSettings");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAXSDSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAXSDSettingsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFAXSDSettings.m" lineNumber:19 description:{@"Unable to find class %s", "AXSDSettings"}];

    __break(1u);
  }
}

void *AXSoundDetectionLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AXSoundDetectionLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AXSoundDetectionLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8375880;
    v6 = 0;
    AXSoundDetectionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AXSoundDetectionLibraryCore_frameworkLibrary;
  if (!AXSoundDetectionLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AXSoundDetectionLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFAXSDSettings.m" lineNumber:18 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AXSoundDetectionLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AXSoundDetectionLibraryCore_frameworkLibrary = result;
  return result;
}

void getAXSDSoundDetectionTypeApplianceBeeps()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAXSDSoundDetectionTypeApplianceBeepsSymbolLoc_ptr;
  v9 = getAXSDSoundDetectionTypeApplianceBeepsSymbolLoc_ptr;
  if (!getAXSDSoundDetectionTypeApplianceBeepsSymbolLoc_ptr)
  {
    v1 = AXSoundDetectionLibrary();
    v7[3] = dlsym(v1, "AXSDSoundDetectionTypeApplianceBeeps");
    getAXSDSoundDetectionTypeApplianceBeepsSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"AXSDSoundDetectionType getAXSDSoundDetectionTypeApplianceBeeps(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFAXSDSettings.m" lineNumber:21 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1CA7408C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void soft_bmTypeForSoundDetectionType(void *a1)
{
  v1 = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getbmTypeForSoundDetectionTypeSymbolLoc_ptr;
  v11 = getbmTypeForSoundDetectionTypeSymbolLoc_ptr;
  if (!getbmTypeForSoundDetectionTypeSymbolLoc_ptr)
  {
    v3 = AXSoundDetectionLibrary();
    v9[3] = dlsym(v3, "bmTypeForSoundDetectionType");
    getbmTypeForSoundDetectionTypeSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = v2(v1);

    v5 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BMSoundDetectionType soft_bmTypeForSoundDetectionType(__strong AXSDSoundDetectionType)"];
    [v6 handleFailureInFunction:v7 file:@"WFAXSDSettings.m" lineNumber:25 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1CA740A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getAXSDSoundDetectionTypeApplianceBuzzes()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAXSDSoundDetectionTypeApplianceBuzzesSymbolLoc_ptr;
  v9 = getAXSDSoundDetectionTypeApplianceBuzzesSymbolLoc_ptr;
  if (!getAXSDSoundDetectionTypeApplianceBuzzesSymbolLoc_ptr)
  {
    v1 = AXSoundDetectionLibrary();
    v7[3] = dlsym(v1, "AXSDSoundDetectionTypeApplianceBuzzes");
    getAXSDSoundDetectionTypeApplianceBuzzesSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"AXSDSoundDetectionType getAXSDSoundDetectionTypeApplianceBuzzes(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFAXSDSettings.m" lineNumber:22 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1CA740BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getAXSDSoundDetectionTypeApplianceBellDings()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAXSDSoundDetectionTypeApplianceBellDingsSymbolLoc_ptr;
  v9 = getAXSDSoundDetectionTypeApplianceBellDingsSymbolLoc_ptr;
  if (!getAXSDSoundDetectionTypeApplianceBellDingsSymbolLoc_ptr)
  {
    v1 = AXSoundDetectionLibrary();
    v7[3] = dlsym(v1, "AXSDSoundDetectionTypeApplianceBellDings");
    getAXSDSoundDetectionTypeApplianceBellDingsSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"AXSDSoundDetectionType getAXSDSoundDetectionTypeApplianceBellDings(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFAXSDSettings.m" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1CA740D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAXSDSoundDetectionTypeApplianceBellDingsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXSoundDetectionLibrary();
  result = dlsym(v2, "AXSDSoundDetectionTypeApplianceBellDings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXSDSoundDetectionTypeApplianceBellDingsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXSDSoundDetectionTypeApplianceBuzzesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXSoundDetectionLibrary();
  result = dlsym(v2, "AXSDSoundDetectionTypeApplianceBuzzes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXSDSoundDetectionTypeApplianceBuzzesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getbmTypeForSoundDetectionTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXSoundDetectionLibrary();
  result = dlsym(v2, "bmTypeForSoundDetectionType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getbmTypeForSoundDetectionTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXSDSoundDetectionTypeApplianceBeepsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXSoundDetectionLibrary();
  result = dlsym(v2, "AXSDSoundDetectionTypeApplianceBeeps");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXSDSoundDetectionTypeApplianceBeepsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getHKFeatureIdentifierSleepCoachingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HealthKitLibrary();
  result = dlsym(v2, "HKFeatureIdentifierSleepCoaching");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKFeatureIdentifierSleepCoachingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getHKFeatureIdentifierSleepActionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HealthKitLibrary();
  result = dlsym(v2, "HKFeatureIdentifierSleepActions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKFeatureIdentifierSleepActionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1CA741A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SleepLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SleepLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __HealthKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t WFWorkflowHasActionsWithIdentifier(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  [a2 objectForKey:@"WFWorkflowActions"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) objectForKeyedSubscript:{@"WFWorkflowActionIdentifier", v13}];
        isEqualToString = objc_msgSend_isEqualToString_(v9);

        if (isEqualToString)
        {
          v11 = 1;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

uint64_t WFWorkflowHasActionsWithBundleIdentifier(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  [a2 objectForKey:@"WFWorkflowActions"];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v17 + 1) + 8 * i) objectForKeyedSubscript:{@"WFWorkflowActionIdentifier", v17}];
        v10 = [v9 rangeOfString:@"." options:4];
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {

          goto LABEL_12;
        }

        v11 = [v9 substringToIndex:v10];
        v12 = [v11 lowercaseString];
        v13 = [v3 lowercaseString];
        isEqualToString = objc_msgSend_isEqualToString_(v12);

        if (isEqualToString)
        {
          v15 = 1;
          goto LABEL_14;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v15 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_12:
    v15 = 0;
  }

LABEL_14:

  return v15;
}

id WFCLLocationManagerWithOptions(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc(getCLLocationManagerClass());
  v8 = v7;
  switch(a1)
  {
    case 3:
      v9 = MEMORY[0x1E696AAE8];
      v10 = @"/System/Library/PrivateFrameworks/AssistantServices.framework";
      goto LABEL_7;
    case 2:
      v11 = MEMORY[0x1E69E0E90];
      break;
    case 1:
      v9 = MEMORY[0x1E696AAE8];
      v10 = @"/System/Library/PrivateFrameworks/HomeKitDaemon.framework";
LABEL_7:
      v12 = [v9 bundleWithPath:v10];
      v13 = [v12 bundlePath];
      v14 = [v8 initWithEffectiveBundlePath:v13 delegate:v5 onQueue:v6];

      goto LABEL_10;
    default:
      v11 = MEMORY[0x1E69E0FB0];
      break;
  }

  v14 = [v7 initWithEffectiveBundleIdentifier:*v11 delegate:v5 onQueue:v6];
LABEL_10:

  return v14;
}

id getCLLocationManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLLocationManagerClass_softClass;
  v7 = getCLLocationManagerClass_softClass;
  if (!getCLLocationManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCLLocationManagerClass_block_invoke;
    v3[3] = &unk_1E837FAC0;
    v3[4] = &v4;
    __getCLLocationManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA742474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCLLocationManagerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __CoreLocationLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E8375928;
    v8 = 0;
    CoreLocationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CLLocationManager+Workflow.m" lineNumber:16 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CLLocationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCLLocationManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CLLocationManager+Workflow.m" lineNumber:17 description:{@"Unable to find class %s", "CLLocationManager"}];

LABEL_10:
    __break(1u);
  }

  getCLLocationManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t WFCLLocationManagerAuthorizationStatusForWorkflowEnvironment(uint64_t a1)
{
  CLLocationManagerClass = getCLLocationManagerClass();
  v3 = CLLocationManagerClass;
  switch(a1)
  {
    case 3:
      v4 = MEMORY[0x1E696AAE8];
      v5 = @"/System/Library/PrivateFrameworks/AssistantServices.framework";
      goto LABEL_7;
    case 2:
      v6 = MEMORY[0x1E69E0E90];
      break;
    case 1:
      v4 = MEMORY[0x1E696AAE8];
      v5 = @"/System/Library/PrivateFrameworks/HomeKitDaemon.framework";
LABEL_7:
      v7 = [v4 bundleWithPath:v5];
      v8 = [v3 authorizationStatusForBundle:v7];

      return v8;
    default:
      v6 = MEMORY[0x1E69E0FB0];
      break;
  }

  v10 = *v6;

  return [CLLocationManagerClass authorizationStatusForBundleIdentifier:v10];
}

void WFSetEffectiveBundleForMKLocationManager(void *a1, uint64_t a2)
{
  v3 = a1;
  v8 = v3;
  switch(a2)
  {
    case 3:
      v4 = MEMORY[0x1E696AAE8];
      v5 = @"/System/Library/PrivateFrameworks/AssistantServices.framework";
      goto LABEL_7;
    case 2:
      v6 = MEMORY[0x1E69E0E90];
      break;
    case 1:
      v4 = MEMORY[0x1E696AAE8];
      v5 = @"/System/Library/PrivateFrameworks/HomeKitDaemon.framework";
LABEL_7:
      v7 = [v4 bundleWithPath:v5];
      [v8 setEffectiveBundle:v7];

      goto LABEL_10;
    default:
      v6 = MEMORY[0x1E69E0FB0];
      break;
  }

  [v3 setEffectiveBundleIdentifier:*v6];
LABEL_10:
}

id WFMetricToImperialUnitMapping()
{
  v32[13] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF58] currentLocale];
  v1 = [v0 countryCode];
  isEqualToString = objc_msgSend_isEqualToString_(v1);

  if (isEqualToString)
  {
    [MEMORY[0x1E696B088] pints];
  }

  else
  {
    [MEMORY[0x1E696B088] imperialPints];
  }
  v17 = ;
  v30 = [MEMORY[0x1E696B060] kilograms];
  v31[0] = v30;
  v29 = [MEMORY[0x1E696B060] poundsMass];
  v32[0] = v29;
  v28 = [MEMORY[0x1E696B060] grams];
  v31[1] = v28;
  v27 = [MEMORY[0x1E696B060] ounces];
  v32[1] = v27;
  v26 = [MEMORY[0x1E696B088] liters];
  v31[2] = v26;
  v25 = [MEMORY[0x1E696B088] quarts];
  v32[2] = v25;
  v24 = [MEMORY[0x1E696B088] liters];
  v31[3] = v24;
  v23 = [MEMORY[0x1E696B088] cups];
  v32[3] = v23;
  v22 = [MEMORY[0x1E696B088] liters];
  v31[4] = v22;
  v32[4] = v17;
  v21 = [MEMORY[0x1E696B088] liters];
  v31[5] = v21;
  v20 = [MEMORY[0x1E696B088] gallons];
  v32[5] = v20;
  v19 = [MEMORY[0x1E696B088] milliliters];
  v31[6] = v19;
  v18 = [MEMORY[0x1E696B088] fluidOunces];
  v32[6] = v18;
  v16 = [MEMORY[0x1E696B078] kilometersPerHour];
  v31[7] = v16;
  v15 = [MEMORY[0x1E696B078] milesPerHour];
  v32[7] = v15;
  v3 = [MEMORY[0x1E696B058] kilometers];
  v31[8] = v3;
  v4 = [MEMORY[0x1E696B058] miles];
  v32[8] = v4;
  v5 = [MEMORY[0x1E696B058] meters];
  v31[9] = v5;
  v6 = [MEMORY[0x1E696B058] feet];
  v32[9] = v6;
  v7 = [MEMORY[0x1E696B058] meters];
  v31[10] = v7;
  v8 = [MEMORY[0x1E696B058] yards];
  v32[10] = v8;
  v9 = [MEMORY[0x1E696B058] centimeters];
  v31[11] = v9;
  v10 = [MEMORY[0x1E696B058] inches];
  v32[11] = v10;
  v11 = [MEMORY[0x1E696B080] celsius];
  v31[12] = v11;
  v12 = [MEMORY[0x1E696B080] fahrenheit];
  v32[12] = v12;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:13];

  return v14;
}

id WFImperialToMetricUnitMapping()
{
  v31[14] = *MEMORY[0x1E69E9840];
  v29 = [MEMORY[0x1E696B060] poundsMass];
  v30[0] = v29;
  v28 = [MEMORY[0x1E696B060] kilograms];
  v31[0] = v28;
  v27 = [MEMORY[0x1E696B060] ounces];
  v30[1] = v27;
  v26 = [MEMORY[0x1E696B060] grams];
  v31[1] = v26;
  v25 = [MEMORY[0x1E696B088] quarts];
  v30[2] = v25;
  v24 = [MEMORY[0x1E696B088] liters];
  v31[2] = v24;
  v23 = [MEMORY[0x1E696B088] cups];
  v30[3] = v23;
  v22 = [MEMORY[0x1E696B088] liters];
  v31[3] = v22;
  v21 = [MEMORY[0x1E696B088] pints];
  v30[4] = v21;
  v20 = [MEMORY[0x1E696B088] liters];
  v31[4] = v20;
  v19 = [MEMORY[0x1E696B088] imperialPints];
  v30[5] = v19;
  v18 = [MEMORY[0x1E696B088] liters];
  v31[5] = v18;
  v17 = [MEMORY[0x1E696B088] gallons];
  v30[6] = v17;
  v16 = [MEMORY[0x1E696B088] liters];
  v31[6] = v16;
  v15 = [MEMORY[0x1E696B088] fluidOunces];
  v30[7] = v15;
  v14 = [MEMORY[0x1E696B088] milliliters];
  v31[7] = v14;
  v13 = [MEMORY[0x1E696B078] milesPerHour];
  v30[8] = v13;
  v12 = [MEMORY[0x1E696B078] kilometersPerHour];
  v31[8] = v12;
  v0 = [MEMORY[0x1E696B058] miles];
  v30[9] = v0;
  v1 = [MEMORY[0x1E696B058] kilometers];
  v31[9] = v1;
  v2 = [MEMORY[0x1E696B058] feet];
  v30[10] = v2;
  v3 = [MEMORY[0x1E696B058] meters];
  v31[10] = v3;
  v4 = [MEMORY[0x1E696B058] yards];
  v30[11] = v4;
  v5 = [MEMORY[0x1E696B058] meters];
  v31[11] = v5;
  v6 = [MEMORY[0x1E696B058] inches];
  v30[12] = v6;
  v7 = [MEMORY[0x1E696B058] centimeters];
  v31[12] = v7;
  v8 = [MEMORY[0x1E696B080] fahrenheit];
  v30[13] = v8;
  v9 = [MEMORY[0x1E696B080] celsius];
  v31[13] = v9;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:14];

  return v11;
}

id WFLNMeasurementValueTypeOfUnit(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x1E69AC8B0] lengthValueType];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [MEMORY[0x1E69AC8B0] massValueType];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = [MEMORY[0x1E69AC8B0] temperatureValueType];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v2 = [MEMORY[0x1E69AC8B0] volumeValueType];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v2 = [MEMORY[0x1E69AC8B0] speedValueType];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v2 = [MEMORY[0x1E69AC8B0] energyValueType];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [MEMORY[0x1E69AC8B0] durationValueType];
              }

              else
              {
                [MEMORY[0x1E69AC8B0] unsupportedMeasurementValueType];
              }
              v2 = ;
            }
          }
        }
      }
    }
  }

  v3 = v2;

  return v3;
}

void sub_1CA7444C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak(&a26);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v27 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12286(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getWFRemoteQuarantineLogObject()
{
  if (getWFRemoteQuarantineLogObject_onceToken != -1)
  {
    dispatch_once(&getWFRemoteQuarantineLogObject_onceToken, &__block_literal_global_12293);
  }

  v1 = getWFRemoteQuarantineLogObject_log;

  return v1;
}

void __getWFRemoteQuarantineLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69E1140], "RemoteQuarantine");
  v1 = getWFRemoteQuarantineLogObject_log;
  getWFRemoteQuarantineLogObject_log = v0;
}

void sub_1CA7450A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CA7452DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

uint64_t WFShouldRequestAccessToFile(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if (objc_msgSend_isEqualToString_(v2))
  {
    if ([v1 code] == 10001)
    {

LABEL_7:
      v3 = 1;
      goto LABEL_8;
    }

    v4 = [v1 code];

    if (v4 == 10003)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v3 = 0;
LABEL_8:

  return v3;
}

void sub_1CA7478BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12631(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA747A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WFPBCreateFolderEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v34 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v34 & 0x7F) << v25;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v27;
          }

LABEL_52:
          v31 = 32;
LABEL_53:
          *(a1 + v31) = v20;
          goto LABEL_54;
        }

        if (v13 != 6)
        {
LABEL_32:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_54;
        }

        v21 = PBReaderReadString();
        v22 = 8;
      }

      else
      {
        if (v13 != 1)
        {
          if (v13 != 2)
          {
            goto LABEL_32;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v35 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v35 & 0x7F) << v14;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_48:
          v31 = 16;
          goto LABEL_53;
        }

        v21 = PBReaderReadString();
        v22 = 24;
      }

      v24 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}