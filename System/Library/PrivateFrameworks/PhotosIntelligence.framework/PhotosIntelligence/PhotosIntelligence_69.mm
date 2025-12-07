unint64_t *sub_1C74839E0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v25 = 0;
  v26 = (v7 + 63) >> 6;
  while (v9)
  {
    v33 = v4;
    v10 = __clz(__rbit64(v9));
    v29 = (v9 - 1) & v9;
LABEL_11:
    v13 = v10 | (v5 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v27 = v13;
    sub_1C6FB5E28(*(a3 + 56) + 40 * v13, v32);
    v30[0] = v16;
    v30[1] = v15;
    v17 = sub_1C6FB5E28(v32, &v31);
    MEMORY[0x1EEE9AC00](v17);
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    v18 = v33;
    v19 = sub_1C70735F4();
    v4 = v18;

    if (v19)
    {
      sub_1C6FD7FC8(v30, &qword_1EC2181B8, &unk_1C7570F90);
      __swift_destroy_boxed_opaque_existential_1(v32);

      v9 = v29;
LABEL_15:
      *(v24 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_1C7485980(v24, a2, v25, a3);
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](v20);
      sub_1C75504FC();
      v21 = sub_1C70735F4();

      sub_1C6FD7FC8(v30, &qword_1EC2181B8, &unk_1C7570F90);
      __swift_destroy_boxed_opaque_existential_1(v32);

      v9 = v29;
      if (v21)
      {
        goto LABEL_15;
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v26)
    {
      return sub_1C7485980(v24, a2, v25, a3);
    }

    v12 = *(v6 + 8 * v5);
    ++v11;
    if (v12)
    {
      v33 = v4;
      v10 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C7483CCC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = OUTLINED_FUNCTION_117_0();
    v8 = sub_1C74838EC(v6, v7, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_1C7483D50(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_1C74839E0(v5, a2, a3);

    return v6;
  }

  return result;
}

void sub_1C7483DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    OUTLINED_FUNCTION_11_76();
    if (v7)
    {
    }

    else
    {
      OUTLINED_FUNCTION_19_36();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2169F8, &qword_1C7565AD0);
      OUTLINED_FUNCTION_99_1();
      sub_1C7551B0C();
      OUTLINED_FUNCTION_28_0();
      if (v8 != v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = *v5;
      }

      v11 = 0;
      while (v10)
      {
        OUTLINED_FUNCTION_24_5();
LABEL_17:
        OUTLINED_FUNCTION_38_39();
        v17 = *(v16 + 8 * v15);
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75505AC();
        sub_1C7551FAC();
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_20_6();
        if (v7)
        {
          OUTLINED_FUNCTION_15_0();
          while (1)
          {
            OUTLINED_FUNCTION_95_2();
            if (v7)
            {
              if (v18)
              {
                goto LABEL_29;
              }
            }

            OUTLINED_FUNCTION_41_45();
            if (!v7)
            {
              OUTLINED_FUNCTION_14_1();
              goto LABEL_25;
            }
          }
        }

        OUTLINED_FUNCTION_16();
LABEL_25:
        OUTLINED_FUNCTION_98_0();
        *(v6 + 64 + v19) |= v20;
        OUTLINED_FUNCTION_26_49(v21);
        *(v23 + 8 * v22) = v17;
        OUTLINED_FUNCTION_5_7();
        if (v9)
        {
          goto LABEL_30;
        }

        if (!v3)
        {
          return;
        }
      }

      v12 = v11;
      while (1)
      {
        v11 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v11 >= v4)
        {
          return;
        }

        ++v12;
        if (v5[v11])
        {
          OUTLINED_FUNCTION_78_0();
          v10 = v14 & v13;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

void sub_1C7483F80()
{
  OUTLINED_FUNCTION_206();
  if (!v6)
  {
    goto LABEL_27;
  }

  v7 = v5;
  OUTLINED_FUNCTION_11_76();
  if (v8)
  {

LABEL_27:
    OUTLINED_FUNCTION_204();
    return;
  }

  OUTLINED_FUNCTION_19_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD88, &unk_1C7584630);
  OUTLINED_FUNCTION_99_1();
  sub_1C7551B0C();
  OUTLINED_FUNCTION_28_0();
  if (v9 != v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = *v2;
  }

  v12 = 0;
  v25 = v7;
  while (v11)
  {
    OUTLINED_FUNCTION_8_2();
LABEL_17:
    OUTLINED_FUNCTION_24_48();
    v18 = (v17 + 16 * v16);
    v19 = v18[1];
    v26 = *v18;
    OUTLINED_FUNCTION_52_31();
    sub_1C75504FC();
    sub_1C75504FC();
    OUTLINED_FUNCTION_42_17();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_23_53();
    if (v8)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v8)
        {
          if (v21)
          {
            goto LABEL_29;
          }
        }

        OUTLINED_FUNCTION_23_43();
        if (!v8)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_25;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_25:
    OUTLINED_FUNCTION_0_195(v20);
    *v22 = v7;
    v22[1] = v4;
    v24 = (*(v3 + 56) + 16 * v23);
    *v24 = v26;
    v24[1] = v19;
    OUTLINED_FUNCTION_5_7();
    if (v10)
    {
      goto LABEL_30;
    }

    v7 = v25;
    if (!v0)
    {
      goto LABEL_27;
    }
  }

  v13 = v12;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v1)
    {
      goto LABEL_27;
    }

    ++v13;
    if (v2[v12])
    {
      OUTLINED_FUNCTION_78_0();
      v11 = v15 & v14;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1C7484114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19_36();
  sub_1C754DFFC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33_43();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_54_33(v12, v13, v14, v15, v16, v17, v18, v19, v35);
  if (a3)
  {
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C300, &qword_1C758DC78);
      OUTLINED_FUNCTION_99_1();
      sub_1C7551B0C();
      OUTLINED_FUNCTION_16_68();
      while (v20)
      {
        OUTLINED_FUNCTION_36_7();
        v38 = v21;
LABEL_13:
        v25 = OUTLINED_FUNCTION_14_70();
        v26(v25);
        v27 = OUTLINED_FUNCTION_30_50();
        (a4)(v27);
        v28 = sub_1C7485D20(&qword_1EDD0CBA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        OUTLINED_FUNCTION_64_23(v28);
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_20_6();
        if (v29)
        {
          OUTLINED_FUNCTION_15_0();
          v5 = v37;
          while (1)
          {
            OUTLINED_FUNCTION_95_2();
            if (v29)
            {
              if (v31)
              {
                goto LABEL_27;
              }
            }

            if (v30 == v32)
            {
              v30 = 0;
            }

            if (*(v6 + 8 * v30) != -1)
            {
              OUTLINED_FUNCTION_8_92();
              goto LABEL_23;
            }
          }
        }

        OUTLINED_FUNCTION_9_91();
        v5 = v37;
LABEL_23:
        v33 = OUTLINED_FUNCTION_13_89();
        (a4)(v33);
        OUTLINED_FUNCTION_36_39();
        if (v34)
        {
          goto LABEL_28;
        }

        a4 = v36;
        v20 = v38;
      }

      v22 = v7;
      while (1)
      {
        v7 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v7 >= v4)
        {
          return;
        }

        ++v22;
        if (*(v5 + 8 * v7))
        {
          OUTLINED_FUNCTION_78_0();
          v38 = v24 & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }
  }
}

void sub_1C7484374()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_19_36();
  v6 = type metadata accessor for Hastings.Feature(0);
  v7 = OUTLINED_FUNCTION_18(v6);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  if (!v5)
  {
    goto LABEL_18;
  }

  if (v3[2] == v5)
  {

LABEL_18:
    OUTLINED_FUNCTION_25_0();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD28, &qword_1C758DC70);
  OUTLINED_FUNCTION_99_1();
  v14 = sub_1C7551B0C();
  if (v0 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v1;
  }

  v16 = 0;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_16:
    v21 = v17 | (v16 << 6);
    sub_1C7485C70(v3[6] + *(v25 + 72) * v21, v13);
    v22 = *(v3[7] + 8 * v21);
    sub_1C7485CC8(v13, v10);
    sub_1C75504FC();
    sub_1C747E954(v10, v22, v14);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_20;
    }

    if (!v5)
    {
      goto LABEL_18;
    }
  }

  v18 = v16;
  while (1)
  {
    v16 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v16 >= v0)
    {
      goto LABEL_18;
    }

    ++v18;
    if (v1[v16])
    {
      OUTLINED_FUNCTION_78_0();
      v15 = v20 & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1C7484568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_206();
  if (!v38)
  {
    goto LABEL_27;
  }

  v39 = v37;
  OUTLINED_FUNCTION_11_76();
  if (v40)
  {

LABEL_27:
    OUTLINED_FUNCTION_204();
    return;
  }

  OUTLINED_FUNCTION_19_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2F8, &qword_1C758DC68);
  OUTLINED_FUNCTION_99_1();
  sub_1C7551B0C();
  OUTLINED_FUNCTION_28_0();
  if (v41 != v42)
  {
    v43 = 0;
  }

  else
  {
    v43 = *v34;
  }

  v44 = 0;
  v55 = v39;
  while (v43)
  {
    OUTLINED_FUNCTION_24_5();
LABEL_17:
    OUTLINED_FUNCTION_38_39();
    v50 = *(v49 + 8 * v48);
    OUTLINED_FUNCTION_52_31();
    sub_1C75504FC();
    v56 = v50;
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_23_53();
    if (v40)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v40)
        {
          if (v52)
          {
            goto LABEL_29;
          }
        }

        OUTLINED_FUNCTION_23_43();
        if (!v40)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_25;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_25:
    OUTLINED_FUNCTION_0_195(v51);
    *v53 = v39;
    v53[1] = v36;
    *(*(v35 + 56) + 8 * v54) = v56;
    OUTLINED_FUNCTION_5_7();
    if (v42)
    {
      goto LABEL_30;
    }

    v39 = v55;
    if (!v32)
    {
      goto LABEL_27;
    }
  }

  v45 = v44;
  while (1)
  {
    v44 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v44 >= v33)
    {
      goto LABEL_27;
    }

    ++v45;
    if (v34[v44])
    {
      OUTLINED_FUNCTION_78_0();
      v43 = v47 & v46;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1C74846E0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v9 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v41 = v10;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  if (!v3)
  {
    goto LABEL_29;
  }

  if (v1[2] == v3)
  {

LABEL_29:
    OUTLINED_FUNCTION_25_0();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2F0, &qword_1C758DC60);
  v14 = sub_1C7551B0C();
  if (v5 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v7;
  }

  v16 = 0;
  v17 = v14 + 64;
  v39 = v7;
  v40 = v1;
  v37 = v5;
  v38 = v14;
  while (v15)
  {
    OUTLINED_FUNCTION_36_7();
    v42 = v19;
LABEL_16:
    v23 = v18 | (v16 << 6);
    memcpy(v45, (v1[6] + 120 * v23), 0x78uLL);
    v24 = *(v1[7] + 8 * v23);
    sub_1C7551F3C();
    v25 = v45[10];
    sub_1C6FCA6E4(v45, &v44);
    v43 = v24;
    sub_1C75504FC();
    sub_1C75505AC();
    v26 = *(v25 + 16);
    MEMORY[0x1CCA5E460](v26);
    if (v26)
    {
      v27 = v25 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
      v28 = *(v41 + 72);
      do
      {
        sub_1C7485C70(v27, v13);
        QueryTokenCategoryType.hash(into:)();
        sub_1C7485C18(v13, type metadata accessor for QueryTokenSuggestion);
        v27 += v28;
        --v26;
      }

      while (v26);
    }

    sub_1C7551FAC();
    v5 = v37;
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_20_6();
    v1 = v40;
    if (v29)
    {
      OUTLINED_FUNCTION_15_0();
      v7 = v39;
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v29)
        {
          if (v33)
          {
            goto LABEL_31;
          }
        }

        OUTLINED_FUNCTION_41_45();
        if (!v29)
        {
          OUTLINED_FUNCTION_8_92();
          v32 = v35 + (v34 << 6);
          goto LABEL_27;
        }
      }
    }

    OUTLINED_FUNCTION_9_91();
    v32 = v30 | v31;
    v7 = v39;
LABEL_27:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    memcpy((v38[6] + 120 * v32), v45, 0x78uLL);
    *(v38[7] + 8 * v32) = v43;
    ++v38[2];
    if (__OFSUB__(v3--, 1))
    {
      goto LABEL_32;
    }

    v15 = v42;
    if (!v3)
    {
      goto LABEL_29;
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

    if (v16 >= v5)
    {
      goto LABEL_29;
    }

    ++v20;
    if (v7[v16])
    {
      OUTLINED_FUNCTION_78_0();
      v42 = v22 & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1C74849E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_206();
  if (!v36)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_11_76();
  if (v37)
  {

LABEL_27:
    OUTLINED_FUNCTION_204();
    return;
  }

  OUTLINED_FUNCTION_19_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2D8, &qword_1C758DC40);
  OUTLINED_FUNCTION_99_1();
  sub_1C7551B0C();
  OUTLINED_FUNCTION_28_0();
  if (v38 != v39)
  {
    v40 = 0;
  }

  else
  {
    v40 = *v34;
  }

  v41 = 0;
  while (v40)
  {
    OUTLINED_FUNCTION_24_5();
LABEL_17:
    OUTLINED_FUNCTION_38_39();
    v53 = *(v46 + 8 * v45);
    OUTLINED_FUNCTION_52_31();
    sub_1C75504FC();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_20_6();
    if (v37)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v37)
        {
          if (v47)
          {
            goto LABEL_29;
          }
        }

        OUTLINED_FUNCTION_41_45();
        if (!v37)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_25;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_25:
    OUTLINED_FUNCTION_98_0();
    *(v35 + 64 + v48) |= v49;
    OUTLINED_FUNCTION_26_49(v50);
    *(v52 + 8 * v51) = v53;
    OUTLINED_FUNCTION_5_7();
    if (v39)
    {
      goto LABEL_30;
    }

    if (!v32)
    {
      goto LABEL_27;
    }
  }

  v42 = v41;
  while (1)
  {
    v41 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v41 >= v33)
    {
      goto LABEL_27;
    }

    ++v42;
    if (v34[v41])
    {
      OUTLINED_FUNCTION_78_0();
      v40 = v44 & v43;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1C7484B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19_36();
  sub_1C754E07C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33_43();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_54_33(v12, v13, v14, v15, v16, v17, v18, v19, v35);
  if (a3)
  {
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2E8, &unk_1C758DC50);
      OUTLINED_FUNCTION_99_1();
      sub_1C7551B0C();
      OUTLINED_FUNCTION_16_68();
      while (v20)
      {
        OUTLINED_FUNCTION_36_7();
        v38 = v21;
LABEL_13:
        v25 = OUTLINED_FUNCTION_14_70();
        v26(v25);
        v27 = OUTLINED_FUNCTION_30_50();
        (a4)(v27);
        v28 = sub_1C7485D20(&qword_1EC215FD8, MEMORY[0x1E6969610], MEMORY[0x1E6969620]);
        OUTLINED_FUNCTION_64_23(v28);
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_20_6();
        if (v29)
        {
          OUTLINED_FUNCTION_15_0();
          v5 = v37;
          while (1)
          {
            OUTLINED_FUNCTION_95_2();
            if (v29)
            {
              if (v31)
              {
                goto LABEL_27;
              }
            }

            if (v30 == v32)
            {
              v30 = 0;
            }

            if (*(v6 + 8 * v30) != -1)
            {
              OUTLINED_FUNCTION_8_92();
              goto LABEL_23;
            }
          }
        }

        OUTLINED_FUNCTION_9_91();
        v5 = v37;
LABEL_23:
        v33 = OUTLINED_FUNCTION_13_89();
        (a4)(v33);
        OUTLINED_FUNCTION_36_39();
        if (v34)
        {
          goto LABEL_28;
        }

        a4 = v36;
        v20 = v38;
      }

      v22 = v7;
      while (1)
      {
        v7 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v7 >= v4)
        {
          return;
        }

        ++v22;
        if (*(v5 + 8 * v7))
        {
          OUTLINED_FUNCTION_78_0();
          v38 = v24 & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }
  }
}

void sub_1C7484DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_11_76();
    if (v10)
    {
    }

    else
    {
      OUTLINED_FUNCTION_19_36();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2E0, &qword_1C758DC48);
      OUTLINED_FUNCTION_99_1();
      sub_1C7551B0C();
      OUTLINED_FUNCTION_28_0();
      if (v11 != v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = *v6;
      }

      v14 = 0;
      v28 = a4;
      while (v13)
      {
        OUTLINED_FUNCTION_8_2();
LABEL_17:
        OUTLINED_FUNCTION_24_48();
        v20 = (v19 + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        OUTLINED_FUNCTION_52_31();
        sub_1C75504FC();
        sub_1C75504FC();
        OUTLINED_FUNCTION_42_17();
        sub_1C75505AC();
        sub_1C7551FAC();
        OUTLINED_FUNCTION_3_3();
        OUTLINED_FUNCTION_23_53();
        if (v10)
        {
          OUTLINED_FUNCTION_15_0();
          while (1)
          {
            OUTLINED_FUNCTION_95_2();
            if (v10)
            {
              if (v24)
              {
                goto LABEL_29;
              }
            }

            OUTLINED_FUNCTION_23_43();
            if (!v10)
            {
              OUTLINED_FUNCTION_14_1();
              goto LABEL_25;
            }
          }
        }

        OUTLINED_FUNCTION_16();
LABEL_25:
        OUTLINED_FUNCTION_0_195(v23);
        *v25 = a4;
        v25[1] = v8;
        v27 = (*(v7 + 56) + 16 * v26);
        *v27 = v21;
        v27[1] = v22;
        OUTLINED_FUNCTION_5_7();
        if (v12)
        {
          goto LABEL_30;
        }

        a4 = v28;
        if (!v4)
        {
          return;
        }
      }

      v15 = v14;
      while (1)
      {
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v14 >= v5)
        {
          return;
        }

        ++v15;
        if (v6[v14])
        {
          OUTLINED_FUNCTION_78_0();
          v13 = v17 & v16;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

void sub_1C7484F94()
{
  OUTLINED_FUNCTION_206();
  if (!v6)
  {
    goto LABEL_27;
  }

  v7 = v5;
  OUTLINED_FUNCTION_11_76();
  if (v8)
  {

LABEL_27:
    OUTLINED_FUNCTION_204();
    return;
  }

  OUTLINED_FUNCTION_19_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_99_1();
  sub_1C7551B0C();
  OUTLINED_FUNCTION_28_0();
  if (v11 != v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v2;
  }

  v14 = 0;
  v25 = v7;
  while (v13)
  {
    OUTLINED_FUNCTION_8_2();
LABEL_17:
    OUTLINED_FUNCTION_24_48();
    v20 = *(v19 + 8 * v18);
    OUTLINED_FUNCTION_52_31();
    sub_1C75504FC();
    sub_1C75504FC();
    OUTLINED_FUNCTION_42_17();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_23_53();
    if (v8)
    {
      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v8)
        {
          if (v22)
          {
            goto LABEL_29;
          }
        }

        OUTLINED_FUNCTION_23_43();
        if (!v8)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_25;
        }
      }
    }

    OUTLINED_FUNCTION_16();
LABEL_25:
    OUTLINED_FUNCTION_0_195(v21);
    *v23 = v7;
    v23[1] = v4;
    *(*(v3 + 56) + 8 * v24) = v20;
    OUTLINED_FUNCTION_5_7();
    if (v12)
    {
      goto LABEL_30;
    }

    v7 = v25;
    if (!v0)
    {
      goto LABEL_27;
    }
  }

  v15 = v14;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v1)
    {
      goto LABEL_27;
    }

    ++v15;
    if (v2[v14])
    {
      OUTLINED_FUNCTION_78_0();
      v13 = v17 & v16;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_1C7485100(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2A8, &unk_1C758DBF0);
  result = sub_1C7551B0C();
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
    sub_1C7551F3C();
    sub_1C75505AC();

    result = sub_1C7551FAC();
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
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v17;
    *(*(v9 + 56) + 8 * v21) = v27;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C7485388(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2A0, &unk_1C758DBE0);
  result = sub_1C7551B0C();
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
    v17 = *(*(v4 + 48) + 2 * v16);
    v27 = *(*(v4 + 56) + 8 * v16);
    sub_1C7551F3C();
    sub_1C7551F6C();
    result = sub_1C7551FAC();
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
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 2 * v21) = v17;
    *(*(v9 + 56) + 8 * v21) = v27;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C74855A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2B0, &qword_1C758DC00);
  result = sub_1C7551B0C();
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
    sub_1C7551F3C();
    sub_1C75505AC();

    result = sub_1C7551FAC();
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
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v17;
    *(*(v9 + 56) + 8 * v21) = v27;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C7485980(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C2C8, &qword_1C758DC18);
  result = sub_1C7551B0C();
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
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_1C6FB5E28(v17 + 40 * v16, v33);
    sub_1C6F699F8(v33, v32);
    sub_1C7551F3C();
    sub_1C75504FC();
    sub_1C75505AC();
    result = sub_1C7551FAC();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
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
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_1C6F699F8(v32, *(v9 + 56) + 40 * v24);
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C7485C18(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C7485C70(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

uint64_t sub_1C7485CC8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

uint64_t sub_1C7485D20(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_42()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 232), *(*(v0 + 232) + 24));

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_64_23(uint64_t a1)
{

  return sub_1C755058C();
}

uint64_t Spatial3DCuration.CurationStage.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t Spatial3DCuration.CurationStage.description.getter()
{
  if (*v0)
  {
    return 0x647261646E617453;
  }

  else
  {
    return 0x696472616F626E4FLL;
  }
}

BOOL static Spatial3DCuration.PresentationTarget.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2 >> 6)
  {
    case 1u:
      if ((v3 & 0xC0) != 0x40)
      {
        return 0;
      }

      return ((v3 ^ v2) & 1) == 0;
    case 2u:
      if ((v3 & 0xC0) != 0x80)
      {
        return 0;
      }

      return ((v3 ^ v2) & 1) == 0;
    case 3u:
      if (v2 == 192)
      {
        return v3 == 192;
      }

      return v3 == 193;
    default:
      if (v3 >= 0x40)
      {
        return 0;
      }

      return ((v3 ^ v2) & 1) == 0;
  }
}

uint64_t Spatial3DCuration.PresentationTarget.hash(into:)()
{
  v1 = *v0;
  switch(v1 >> 6)
  {
    case 1u:
      v2 = 3;
      goto LABEL_6;
    case 2u:
      v2 = 4;
      goto LABEL_6;
    case 3u:
      v3 = v1 != 192;
      return MEMORY[0x1CCA5E460](v3);
    default:
      v2 = 2;
LABEL_6:
      MEMORY[0x1CCA5E460](v2);
      v3 = v1 & 1;
      return MEMORY[0x1CCA5E460](v3);
  }
}

uint64_t Spatial3DCuration.PresentationTarget.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  switch(v1 >> 6)
  {
    case 1u:
      v2 = 3;
      goto LABEL_6;
    case 2u:
      v2 = 4;
      goto LABEL_6;
    case 3u:
      v3 = v1 != 192;
      goto LABEL_7;
    default:
      v2 = 2;
LABEL_6:
      MEMORY[0x1CCA5E460](v2);
      v3 = v1 & 1;
LABEL_7:
      MEMORY[0x1CCA5E460](v3);
      return sub_1C7551FAC();
  }
}

uint64_t sub_1C74860A0(uint64_t a1)
{
  v2 = *v1;
  sub_1C7551F3C();
  switch(v2 >> 6)
  {
    case 1u:
      v3 = 3;
      goto LABEL_6;
    case 2u:
      v3 = 4;
      goto LABEL_6;
    case 3u:
      v4 = v2 != 192;
      goto LABEL_7;
    default:
      v3 = 2;
LABEL_6:
      MEMORY[0x1CCA5E460](v3);
      v4 = v2 & 1;
LABEL_7:
      MEMORY[0x1CCA5E460](v4);
      return sub_1C7551FAC();
  }
}

unint64_t sub_1C748614C()
{
  result = qword_1EC21C308;
  if (!qword_1EC21C308)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Spatial3DCuration.CurationStage, &type metadata for Spatial3DCuration.CurationStage, v0, v1);
    atomic_store(result, &qword_1EC21C308);
  }

  return result;
}

unint64_t sub_1C74861A0(uint64_t a1)
{
  result = sub_1C74861C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C74861C8()
{
  result = qword_1EDD0A9F8;
  if (!qword_1EDD0A9F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Spatial3DCuration.PresentationTarget, &type metadata for Spatial3DCuration.PresentationTarget, v0, v1);
    atomic_store(result, &qword_1EDD0A9F8);
  }

  return result;
}

unint64_t sub_1C7486220()
{
  result = qword_1EDD0A9F0;
  if (!qword_1EDD0A9F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Spatial3DCuration.PresentationTarget, &type metadata for Spatial3DCuration.PresentationTarget, v0, v1);
    atomic_store(result, &qword_1EDD0A9F0);
  }

  return result;
}

unint64_t sub_1C7486278()
{
  result = qword_1EC21C310;
  if (!qword_1EC21C310)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21C318, &qword_1C758DD98);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EC21C310);
  }

  return result;
}

_BYTE *_s13CurationStageOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s18PresentationTargetOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 131 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 131) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7D)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7C)
  {
    v6 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
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
          *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C74864A0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >> 6;
  v3 = (v1 & 1) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_BYTE *sub_1C74864BC(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *result & 1 | (a2 << 6);
  }

  else
  {
    v2 = a2 & 1 ^ 0xC1;
  }

  *result = v2;
  return result;
}

void static LLMWrapper.tokenGenerator(for:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = sub_1C754E66C();
  v3 = OUTLINED_FUNCTION_76(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v70 = v5 - v4;
  v6 = sub_1C754E74C();
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_148_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C320, &qword_1C758DE30);
  v9 = OUTLINED_FUNCTION_76(v8);
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v65 - v10;
  v11 = sub_1C754E68C();
  OUTLINED_FUNCTION_3_0();
  v69 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_0();
  v68 = v15 - v14;
  v16 = sub_1C754E4FC();
  OUTLINED_FUNCTION_3_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_78();
  v71 = v20 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v74 = &v65 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C328, &qword_1C758DE38);
  v25 = OUTLINED_FUNCTION_76(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_78();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v65 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v65 - v33;
  LODWORD(v1) = *v1;
  LOBYTE(v76[0]) = v1;
  v75 = static LLMConfiguration.modelCatalogResourceID(for:)(v76);
  v36 = v35;
  v37 = 0xE500000000000000;
  v38 = 0x726568746FLL;
  switch(v1)
  {
    case 6:
    case 11:
    case 15:
      OUTLINED_FUNCTION_3_1();
      v38 = 0xD00000000000001ALL;
      break;
    case 7:
    case 12:
    case 16:
      OUTLINED_FUNCTION_3_1();
      v38 = 0xD000000000000021;
      break;
    case 8:
    case 13:
      OUTLINED_FUNCTION_3_1();
      v38 = 0xD00000000000001CLL;
      break;
    case 9:
    case 14:
    case 17:
      OUTLINED_FUNCTION_3_1();
      v38 = 0xD00000000000001BLL;
      break;
    case 18:
      OUTLINED_FUNCTION_3_1();
      v38 = 0xD000000000000014;
      break;
    case 19:
      OUTLINED_FUNCTION_3_1();
      v38 = 0xD000000000000023;
      break;
    default:
      break;
  }

  v67 = v38;
  v72 = v37;
  v39 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v16);
  sub_1C75504FC();
  sub_1C754E4EC();
  sub_1C6FD7FC8(v34, &qword_1EC21C328, &qword_1C758DE38);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v16);
  sub_1C7491A30(v31, v34);
  v43 = v73;
  v42 = v74;
  sub_1C70555F8(v34, v28, &qword_1EC21C328, &qword_1C758DE38);
  if (__swift_getEnumTagSinglePayload(v28, 1, v16) == 1)
  {

    v44 = &qword_1EC21C328;
    v45 = &qword_1C758DE38;
    v46 = v28;
  }

  else
  {
    (*(v18 + 32))(v42, v28, v16);
    (*(v18 + 16))(v71, v42, v16);
    sub_1C754E67C();
    if (__swift_getEnumTagSinglePayload(v43, 1, v11) != 1)
    {

      v66 = v18;
      v61 = v68;
      v60 = v69;
      (*(v69 + 32))(v68, v43, v11);
      v75 = "fallback_fallbackBase30b";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C330, &unk_1C758DE40);
      v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1C755BAB0;
      (*(v60 + 16))(v63 + v62, v61, v11);
      sub_1C754E65C();
      v64 = [objc_opt_self() processInfo];
      [v64 processIdentifier];

      sub_1C754E73C();
      sub_1C754E64C();
      swift_allocObject();
      sub_1C754E61C();
      (*(v60 + 8))(v61, v11);
      (*(v66 + 8))(v74, v16);
      sub_1C6FD7FC8(v34, &qword_1EC21C328, &qword_1C758DE38);
      goto LABEL_19;
    }

    v47 = OUTLINED_FUNCTION_23_14();
    v48(v47);

    v44 = &qword_1EC21C320;
    v45 = &qword_1C758DE30;
    v46 = v43;
  }

  sub_1C6FD7FC8(v46, v44, v45);
  if (qword_1EDD0C920 != -1)
  {
    OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
  }

  v49 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v49, qword_1EDD0C928);
  sub_1C75504FC();
  v50 = sub_1C754FEEC();
  v51 = sub_1C755119C();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = OUTLINED_FUNCTION_41_0();
    v53 = swift_slowAlloc();
    v76[0] = v53;
    *v52 = 136315138;
    v54 = sub_1C6F765A4(v75, v36, v76);

    *(v52 + 4) = v54;
    OUTLINED_FUNCTION_34_22();
    _os_log_impl(v55, v56, v57, v58, v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v53);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  sub_1C6FD7FC8(v34, &qword_1EC21C328, &qword_1C758DE38);
LABEL_19:
  OUTLINED_FUNCTION_25_0();
}

void static LLMWrapper.gmsSamplingParameters(from:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C338, &qword_1C758DE50);
  v3 = OUTLINED_FUNCTION_76(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v12 - v5;
  v7 = *(v1 + 24);
  v12[1] = *(v1 + 32);
  if (v7 == 255)
  {
    v8 = sub_1C754E6DC();
    v9 = 1;
  }

  else
  {
    if (v7)
    {
      sub_1C754E6CC();
    }

    else
    {
      sub_1C754E6BC();
    }

    v8 = sub_1C754E6DC();
    v9 = 0;
  }

  __swift_storeEnumTagSinglePayload(v6, v9, 1, v8);
  v10 = OUTLINED_FUNCTION_57_0();
  sub_1C70555F8(v10, v11, &qword_1EC21C338, &qword_1C758DE50);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_145_7();
  sub_1C754E71C();
  sub_1C754E70C();
  sub_1C754E6EC();
  sub_1C754E6FC();
  sub_1C6FD7FC8(v6, &qword_1EC21C338, &qword_1C758DE50);
  OUTLINED_FUNCTION_25_0();
}

void LLMUseCaseIdentifier.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
      OUTLINED_FUNCTION_58_31();
      break;
    case 2:
      OUTLINED_FUNCTION_57_30();
      break;
    case 3:
      OUTLINED_FUNCTION_55_32();
      break;
    case 4:
      OUTLINED_FUNCTION_56_31();
      break;
    case 5:
      OUTLINED_FUNCTION_10_2();
      break;
    default:
      return;
  }
}

uint64_t LLMWrapper.init(modelType:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 20)
  {
    v3 = 5;
  }

  else
  {
    v3 = *a1;
  }

  if (v3 >= 5)
  {
    v7 = 0;
    type metadata accessor for AjaxLLM(0);
    swift_allocObject();
    v4 = &v7;
  }

  else
  {
    v6 = v3;
    type metadata accessor for AjaxLLM(0);
    swift_allocObject();
    v4 = &v6;
  }

  result = AjaxLLM.init(model:)(v4);
  *a2 = v3;
  *(a2 + 8) = result;
  *(a2 + 16) = v3 - 10 < 5;
  return result;
}

uint64_t LLMResponse.init(stream:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = *(type metadata accessor for LLMResponse(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08, "8");
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 32);

  return v6(&a2[v4], a1);
}

uint64_t LLMResponse.makeAsyncIterator()()
{
  type metadata accessor for LLMResponse(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08, "8");
  return sub_1C7550DBC();
}

uint64_t LLMResponse.AsyncIterator.next()()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8, &unk_1C755BF90);
  OUTLINED_FUNCTION_90_16();
  *v1 = v2;
  v1[1] = sub_1C74872B4;

  return MEMORY[0x1EEE6DB98](v0 + 16);
}

uint64_t sub_1C74872B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C74873AC()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1C7487438;

  return LLMResponse.AsyncIterator.next()();
}

uint64_t sub_1C7487438()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_47();
  v7 = v6;
  OUTLINED_FUNCTION_40();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_14();
  *v10 = v9;

  if (!v0)
  {
    v11 = *(v7 + 16);
    *v11 = v5;
    v11[1] = v3;
  }

  OUTLINED_FUNCTION_100_9();

  return v12();
}

uint64_t sub_1C7487538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_1C74875F4;

  return sub_1C746C5A0();
}

uint64_t sub_1C74875F4()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_47();
  v7 = v6;
  OUTLINED_FUNCTION_40();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_14();
  *v10 = v9;

  if (v0)
  {
    **(v7 + 24) = v0;
  }

  else
  {
    v12 = *(v7 + 16);
    *v12 = v5;
    v12[1] = v3;
  }

  OUTLINED_FUNCTION_100_9();

  return v11();
}

uint64_t LLMResponse.collect()()
{
  OUTLINED_FUNCTION_42();
  v1[6] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08, "8");
  v1[7] = v2;
  OUTLINED_FUNCTION_18(v2);
  v1[8] = v3;
  v1[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8, &unk_1C755BF90);
  v1[10] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[11] = v5;
  v1[12] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C7487824()
{
  OUTLINED_FUNCTION_123();
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = type metadata accessor for LLMResponse(0);
  (*(v2 + 16))(v1, v4 + *(v5 + 20), v3);
  sub_1C7099594(&qword_1EDD069F8, &qword_1EC214C08, "8", MEMORY[0x1E69E87D0]);
  sub_1C7550E8C();
  v0[13] = 0xE000000000000000;
  v0[14] = 0;
  OUTLINED_FUNCTION_33_1(&qword_1EDD06A18, &qword_1EC214DE8, &unk_1C755BF90);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[15] = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_22_66(v6);

  return MEMORY[0x1EEE6D8C8](v8, v9, v10);
}

uint64_t sub_1C7487944()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  v3[16] = v0;

  if (v0)
  {
    (*(v3[11] + 8))(v3[12], v3[10]);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7487A60()
{
  OUTLINED_FUNCTION_123();
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[13];
    v3 = v0[2];
    v0[4] = v0[14];
    v0[5] = v2;
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](v3, v1);

    v4 = v0[4];
    v0[13] = v0[5];
    v0[14] = v4;
    OUTLINED_FUNCTION_33_1(&qword_1EDD06A18, &qword_1EC214DE8, &unk_1C755BF90);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[15] = v5;
    *v5 = v6;
    v7 = OUTLINED_FUNCTION_22_66(v5);

    return MEMORY[0x1EEE6D8C8](v7, v8, v9);
  }

  else
  {
    v10 = v0[13];
    v11 = v0[14];
    v12 = v0[6];
    (*(v0[11] + 8))(v0[12], v0[10]);
    sub_1C75504FC();

    *v12 = v11;
    v12[1] = v10;

    v13 = v0[1];
    v15 = v0[13];
    v14 = v0[14];

    return v13(v14, v15);
  }
}

uint64_t sub_1C7487BD8()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

PhotosIntelligence::LLMUseCaseIdentifier_optional __swiftcall LLMUseCaseIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_1C7487D0C(void *a1@<X8>)
{
  LLMUseCaseIdentifier.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C7487D50()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0C928);
  __swift_project_value_buffer(v0, qword_1EDD0C928);
  return sub_1C754FEFC();
}

uint64_t LLMWrapper.Error.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

void static LLMWrapper.gmsStringUseCaseIdentifier(for:)(_BYTE *a1)
{
  switch(*a1)
  {
    case 6:
    case 0xB:
    case 0xF:
      OUTLINED_FUNCTION_55_32();
      break;
    case 7:
    case 0xC:
    case 0x10:
      OUTLINED_FUNCTION_58_31();
      break;
    case 8:
    case 0xD:
      OUTLINED_FUNCTION_56_31();
      break;
    case 9:
    case 0xE:
    case 0x11:
      OUTLINED_FUNCTION_57_30();
      break;
    case 0x12:
      OUTLINED_FUNCTION_10_2();
      break;
    default:
      return;
  }
}

void static LLMWrapper.prewarm(for:photoLibrary:)()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C754E6AC();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_148_2();
  v9 = *v4;
  static LLMWrapper.prewarmQU(with:)(v2);
  if ((v9 | 2) != 2)
  {
    goto LABEL_62;
  }

  type metadata accessor for GlobalTraitCompletionGeneration();
  if (sub_1C7253320())
  {
    sub_1C754E63C();
    OUTLINED_FUNCTION_37_40();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
    }

    v11 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v11, qword_1EDD0C928);
    v12 = sub_1C754FEEC();
    v13 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v13))
    {
      v14 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_146_7(v14);
      OUTLINED_FUNCTION_45_38(&dword_1C6F5C000, v15, v16, "Global Traits token generator prewarm signal sent");
      OUTLINED_FUNCTION_79();
    }
  }

  else
  {
    OUTLINED_FUNCTION_37_40();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
    }

    v17 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v17, qword_1EDD0C928);
    v18 = sub_1C754FEEC();
    v19 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v19))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_89_18(&dword_1C6F5C000, v20, v21, "Global Traits token generator is unavailable, prewarming failed.");
      OUTLINED_FUNCTION_109();
    }
  }

  if (sub_1C6FA7A90())
  {
    sub_1C754E63C();
    OUTLINED_FUNCTION_37_40();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
    }

    v22 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v22, qword_1EDD0C928);
    v23 = sub_1C754FEEC();
    v24 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v24))
    {
      v25 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_146_7(v25);
      OUTLINED_FUNCTION_45_38(&dword_1C6F5C000, v26, v27, "Storyteller token generator prewarm signal sent");
      OUTLINED_FUNCTION_79();
    }
  }

  else
  {
    OUTLINED_FUNCTION_37_40();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
    }

    v28 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v28, qword_1EDD0C928);
    v29 = sub_1C754FEEC();
    v30 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v30))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_89_18(&dword_1C6F5C000, v31, v32, "Storyteller token generator is unavailable, prewarming failed.");
      OUTLINED_FUNCTION_109();
    }
  }

  type metadata accessor for FreeformStoryChapterCurator(0);
  if (sub_1C71A1238())
  {
    sub_1C754E63C();
    OUTLINED_FUNCTION_37_40();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
    }

    v33 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v33, qword_1EDD0C928);
    v34 = sub_1C754FEEC();
    v35 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v35))
    {
      v36 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_146_7(v36);
      OUTLINED_FUNCTION_45_38(&dword_1C6F5C000, v37, v38, "Chapter Curator token generator prewarm signal sent");
      OUTLINED_FUNCTION_79();
    }
  }

  else
  {
    OUTLINED_FUNCTION_37_40();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
    }

    v39 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v39, qword_1EDD0C928);
    v40 = sub_1C754FEEC();
    v41 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v41))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_89_18(&dword_1C6F5C000, v42, v43, "Chapter Curator token generator is unavailable, prewarming failed.");
      OUTLINED_FUNCTION_109();
    }
  }

  v44 = objc_opt_self();
  if ([v44 useOnDeviceAssetCurationOutlier])
  {
    if (static AssetCurationOutlierDetector.tokenGen.getter())
    {
      sub_1C754E69C();
      sub_1C754E62C();
      (*(v7 + 8))(v0, v5);
      OUTLINED_FUNCTION_37_40();
      if (!v10)
      {
        OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
      }

      v45 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v45, qword_1EDD0C928);
      v46 = sub_1C754FEEC();
      v47 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_128(v47))
      {
        v48 = OUTLINED_FUNCTION_127();
        *v48 = 0;
        _os_log_impl(&dword_1C6F5C000, v46, v47, "Asset Curation Outlier Rejection token generator prewarm signal sent", v48, 2u);
        OUTLINED_FUNCTION_109();
      }

      v49 = 0;
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_37_40();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
    }

    v50 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v50, qword_1EDD0C928);
    v51 = sub_1C754FEEC();
    v52 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v52))
    {
      v53 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_146_7(v53);
      OUTLINED_FUNCTION_45_38(&dword_1C6F5C000, v54, v55, "Asset Curation Outlier Rejection token generator is unavailable, prewarming failed.");
      OUTLINED_FUNCTION_79();
    }
  }

  v49 = 1;
LABEL_48:
  v56 = [v44 generateOnDeviceTitle];
  if (v49)
  {
    if (v56)
    {
      type metadata accessor for FreeformStoryGenerator(0);
      v84 = v9;
      if ((static FreeformStoryGenerator.usingFallbackTitle(for:)(&v84) & 1) == 0)
      {
        type metadata accessor for TitleCompletionGeneration();
        if (sub_1C74FEE50())
        {
          sub_1C754E69C();
          sub_1C754E62C();
          (*(v7 + 8))(v0, v5);
          OUTLINED_FUNCTION_37_40();
          if (!v10)
          {
            OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
          }

          v57 = sub_1C754FF1C();
          OUTLINED_FUNCTION_23_2(v57, qword_1EDD0C928);
          v58 = sub_1C754FEEC();
          v59 = sub_1C75511BC();
          if (OUTLINED_FUNCTION_66(v59))
          {
            v60 = OUTLINED_FUNCTION_127();
            OUTLINED_FUNCTION_58_8(v60);
            OUTLINED_FUNCTION_34_22();
            _os_log_impl(v61, v62, v63, v64, v65, 2u);
            OUTLINED_FUNCTION_109();
          }
        }

        else
        {
          OUTLINED_FUNCTION_37_40();
          if (!v10)
          {
            OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
          }

          v66 = sub_1C754FF1C();
          OUTLINED_FUNCTION_23_2(v66, qword_1EDD0C928);
          v67 = sub_1C754FEEC();
          v68 = sub_1C755119C();
          if (OUTLINED_FUNCTION_66(v68))
          {
            v69 = OUTLINED_FUNCTION_127();
            OUTLINED_FUNCTION_58_8(v69);
            OUTLINED_FUNCTION_34_22();
            _os_log_impl(v70, v71, v72, v73, v74, 2u);
            OUTLINED_FUNCTION_109();
          }
        }
      }
    }
  }

LABEL_62:
  type metadata accessor for SafetyController(0);
  static SafetyController.prewarm()();
  OUTLINED_FUNCTION_37_40();
  if (!v10)
  {
    OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
  }

  v75 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v75, qword_1EDD0C928);
  v76 = sub_1C754FEEC();
  v77 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_66(v77))
  {
    v78 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_58_8(v78);
    OUTLINED_FUNCTION_34_22();
    _os_log_impl(v79, v80, v81, v82, v83, 2u);
    OUTLINED_FUNCTION_109();
  }

  type metadata accessor for StoryMusicCurator(0);
  static StoryMusicCurator.prewarm(with:)(v2);
  OUTLINED_FUNCTION_25_0();
}

void static LLMWrapper.prewarmQU(with:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  v4 = OUTLINED_FUNCTION_76(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v50 - v5;
  v7 = sub_1C754E6AC();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_148_2();
  if ([objc_opt_self() enableQueryAnnotationPipelineInPhotos])
  {
    if (sub_1C735CC80())
    {
      sub_1C754E69C();
      sub_1C754E62C();
      (*(v9 + 8))(v1, v7);
      if (qword_1EDD0C920 != -1)
      {
        OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
      }

      v11 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v11, qword_1EDD0C928);
      v12 = sub_1C754FEEC();
      v13 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_66(v13))
      {
        v14 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_58_8(v14);
        OUTLINED_FUNCTION_34_22();
        _os_log_impl(v15, v16, v17, v18, v19, 2u);
        OUTLINED_FUNCTION_109();
      }
    }

    else
    {
      if (qword_1EDD0C920 != -1)
      {
        OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
      }

      v34 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v34, qword_1EDD0C928);
      v35 = sub_1C754FEEC();
      v36 = sub_1C755119C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_37_0(v37);
        OUTLINED_FUNCTION_9_87(&dword_1C6F5C000, v38, v39, "Query Understanding token generator is unavailable, prewarming failed.");
        OUTLINED_FUNCTION_23_3();
      }
    }

    [objc_opt_self() prewarm];
    if (qword_1EDD0C920 != -1)
    {
      OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
    }

    v40 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v40, qword_1EDD0C928);
    v41 = sub_1C754FEEC();
    v42 = sub_1C75511BC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v43);
      OUTLINED_FUNCTION_9_87(&dword_1C6F5C000, v44, v45, "Prewarming Memory Creation Grounding Components");
      OUTLINED_FUNCTION_23_3();
    }
  }

  else
  {
    v20 = [a1 photoAnalysisClient];
    if (v20)
    {
      v21 = v20;
      v22 = [objc_opt_self() processInfo];
      v23 = [v22 processIdentifier];

      if (qword_1EDD0C920 != -1)
      {
        OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
      }

      v24 = v23;
      v25 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v25, qword_1EDD0C928);
      v26 = sub_1C754FEEC();
      v27 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_128(v27))
      {
        v28 = OUTLINED_FUNCTION_41_0();
        *v28 = 134217984;
        *(v28 + 4) = v24;
        _os_log_impl(&dword_1C6F5C000, v26, v27, "Memory Creation Query Understanding adapter prewarm signal sent with originatorPID=%ld", v28, 0xCu);
        OUTLINED_FUNCTION_109();
      }

      sub_1C7550D5C();
      v29 = OUTLINED_FUNCTION_118();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
      v33 = swift_allocObject();
      v33[2] = 0;
      v33[3] = 0;
      v33[4] = v21;
      v33[5] = v24;
      sub_1C6FEB80C(0, 0, v6, &unk_1C758DE80, v33);
    }

    else
    {
      if (qword_1EDD0C920 != -1)
      {
        OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
      }

      v46 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v46, qword_1EDD0C928);
      v51 = sub_1C754FEEC();
      v47 = sub_1C755119C();
      if (os_log_type_enabled(v51, v47))
      {
        v48 = OUTLINED_FUNCTION_127();
        *v48 = 0;
        _os_log_impl(&dword_1C6F5C000, v51, v47, "No photoAnalysis client is available", v48, 2u);
        OUTLINED_FUNCTION_109();
      }

      v49 = v51;
    }
  }
}

uint64_t sub_1C7488AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for PhotoAnalysisMomentGraphService(0);
  v5[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7488B8C, 0, 0);
}

uint64_t sub_1C7488B8C()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v1 = [objc_allocWithZone(MEMORY[0x1E69BE620]) initWithServiceProvider_];
  if (qword_1EC213F98 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v3 = sub_1C754FF1C();
  v0[5] = v3;
  v4 = __swift_project_value_buffer(v3, qword_1EC219F58);
  (*(*(v3 - 8) + 16))(v2, v4, v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20, &qword_1C75601D0);
  v6 = (v2 + *(v5 + 28));
  v7 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v8 = [v7 processName];

  v9 = sub_1C755068C();
  v11 = v10;

  *v6 = v9;
  v6[1] = v11;
  *(v2 + *(v5 + 32)) = v1;
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_1C7488D44;
  OUTLINED_FUNCTION_61_3(v0[3]);
  OUTLINED_FUNCTION_88_0();

  return PhotoAnalysisMomentGraphService.requestPrewarmQueryAnnotator(for:)(v13);
}

uint64_t sub_1C7488D44()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7488E3C()
{
  OUTLINED_FUNCTION_49_0();
  if (qword_1EDD0C920 != -1)
  {
    OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
  }

  OUTLINED_FUNCTION_23_2(*(v1 + 40), qword_1EDD0C928);
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  v4 = OUTLINED_FUNCTION_66(v3);
  v5 = *(v1 + 32);
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_127();
    *v6 = 0;
    _os_log_impl(&dword_1C6F5C000, v2, v0, "Successfully prewarmed Memory Creation Query Understanding", v6, 2u);
    OUTLINED_FUNCTION_109();
  }

  OUTLINED_FUNCTION_39_43();
  sub_1C7492A94(v5, v7);

  OUTLINED_FUNCTION_43();

  return v8();
}

uint64_t sub_1C7488F2C()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_39_43();
  sub_1C7492A94(v1, v2);
  if (qword_1EDD0C920 != -1)
  {
    OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
  }

  v3 = *(v0 + 56);
  OUTLINED_FUNCTION_23_2(*(v0 + 40), qword_1EDD0C928);
  v4 = v3;
  v5 = sub_1C754FEEC();
  v6 = sub_1C755119C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 56);
  if (v7)
  {
    v9 = OUTLINED_FUNCTION_41_0();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1C6F5C000, v5, v6, "Unable to prewarm Memory Creation Query Understanding with error=%@", v9, 0xCu);
    sub_1C6FD7FC8(v10, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  OUTLINED_FUNCTION_43();

  return v13();
}

uint64_t static LLMWrapper.robustOverestimatedTokenCount(in:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C75507FC();
  sub_1C75504FC();
  while (1)
  {
    v3 = sub_1C755088C();
    if (!v4)
    {
      break;
    }

    v5 = v3;
    v6 = v4;
    v7 = v3 == 2573 && v4 == 0xE200000000000000;
    if (v7 || (OUTLINED_FUNCTION_117_0(), result = sub_1C7551DBC(), (result & 1) != 0))
    {
LABEL_21:
    }

    else
    {
      if ((v6 & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(v6) & 0xF;
      }

      else
      {
        v9 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (!v9)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if ((v6 & 0x1000000000000000) != 0)
      {
        v10 = sub_1C755077C();
      }

      else
      {
        v10 = sub_1C75517EC() << 16;
      }

      if (v10 >> 14 != 4 * v9)
      {
        goto LABEL_20;
      }

      v11 = OUTLINED_FUNCTION_117_0();
      result = sub_1C7491BD0(v11, v12);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_28;
      }

      if ((result & 0xFFFFFF80) != 0)
      {
LABEL_20:
        v16 = OUTLINED_FUNCTION_117_0();
        MEMORY[0x1CCA5CD60](v16);
        goto LABEL_21;
      }

      v13 = OUTLINED_FUNCTION_117_0();
      result = sub_1C7491BD0(v13, v14);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_29;
      }

      v15 = result;

      if ((v15 & 0xFFFFFF00) != 0)
      {
        goto LABEL_26;
      }
    }
  }

  v17 = v2 / 3;

  v18 = sub_1C75507FC();

  result = v17 + v18;
  if (!__OFADD__(v17, v18))
  {
    return result;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t static LLMWrapper.overestimatedTokenCountGMS(in:)(uint64_t a1, uint64_t a2)
{
  sub_1C754E76C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_0();
  sub_1C75504FC();
  sub_1C754E77C();
  v3 = sub_1C754E75C();
  v4 = OUTLINED_FUNCTION_117_0();
  v5(v4);
  return v3;
}

uint64_t LLMWrapper.countTokens(in:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  *(v3 + 33) = *v2;
  *(v3 + 56) = *(v2 + 8);
  *(v3 + 34) = *(v2 + 16);
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C7489348()
{
  OUTLINED_FUNCTION_75_1();
  if (qword_1EDD0C920 != -1)
  {
    OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
  }

  v1 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v1, qword_1EDD0C928);

  v2 = sub_1C754FEEC();
  v3 = sub_1C755117C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_41_0();
    v5 = swift_slowAlloc();
    *v4 = 136315138;
    LLMModelType.description.getter();
    v14 = OUTLINED_FUNCTION_117_11(v6, v7, v8, v9, v10, v11, v12, v13, v5);

    *(v4 + 4) = v14;
    _os_log_impl(&dword_1C6F5C000, v2, v3, "Starting count token request with modelType=%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v15 = *(v0 + 33);
  if (v15 >= 5)
  {
    v18 = *(v0 + 34);
    v19 = *(v0 + 56);
    *(v0 + 16) = v15;
    *(v0 + 24) = v19;
    *(v0 + 32) = v18;
    v20 = swift_task_alloc();
    *(v0 + 64) = v20;
    *v20 = v0;
    v20[1] = sub_1C7489584;
    v21 = OUTLINED_FUNCTION_61_3(*(v0 + 40));

    return sub_1C74897B0(v21, v22);
  }

  else
  {
    v16 = swift_task_alloc();
    *(v0 + 80) = v16;
    *v16 = v0;
    v16[1] = sub_1C74896A0;
    OUTLINED_FUNCTION_61_3(*(v0 + 40));

    return AjaxLLM.countTokens(prompt:ignoreFormatting:)();
  }
}

uint64_t sub_1C7489584()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v8 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_116();

    return v12(v3);
  }
}

uint64_t sub_1C74896A0()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;

  OUTLINED_FUNCTION_116();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1C74897B0(uint64_t a1, uint64_t a2)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C338, &qword_1C758DE50);
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E20, &unk_1C755C000);
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  v5 = sub_1C755026C();
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 176) = *v2;

  return MEMORY[0x1EEE6DFA0](sub_1C7489948, 0, 0);
}

uint64_t sub_1C7489948()
{
  static LLMWrapper.tokenGenerator(for:)();
  v0[16] = v1;
  if (v1)
  {
    v29 = v1;
    v2 = v0[12];
    v27 = v0[13];
    v28 = v0[14];
    v3 = v0[10];
    v4 = v0[11];
    v5 = v0[9];
    v6 = v0[6];
    v25 = v0[8];
    v26 = v0[7];
    v8 = v0[4];
    v7 = v0[5];
    v9 = v0[3];
    v10 = swift_task_alloc();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    sub_1C755027C();

    v11 = sub_1C754E6DC();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
    sub_1C70555F8(v6, v7, &qword_1EC21C338, &qword_1C758DE50);
    OUTLINED_FUNCTION_145_7();
    sub_1C754E71C();
    sub_1C754E70C();
    sub_1C754E6EC();
    sub_1C754E6FC();
    OUTLINED_FUNCTION_75();
    sub_1C6FD7FC8(v12, v13, v14);
    (*(v25 + 104))(v5, *MEMORY[0x1E69A1370], v26);
    OUTLINED_FUNCTION_6_110();
    sub_1C74927F0(v15, v16, MEMORY[0x1E69C61A8]);
    sub_1C75503BC();
    (*(v25 + 8))(v5, v26);
    v17 = *(v4 + 8);
    v0[17] = v17;
    v0[18] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v2, v3);
    sub_1C755037C();
    v17(v27, v3);
    sub_1C755038C();
    v17(v28, v3);
    v0[2] = v29;
    v18 = swift_task_alloc();
    v0[19] = v18;
    v19 = sub_1C754E64C();
    OUTLINED_FUNCTION_1_140();
    sub_1C74927F0(v20, v21, MEMORY[0x1E69DA430]);
    OUTLINED_FUNCTION_90_16();
    *v18 = v22;
    v18[1] = sub_1C7489D04;

    return MEMORY[0x1EEE0A3D8](v0 + 2, v19);
  }

  else
  {
    sub_1C6FB5280();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_152_7();

    OUTLINED_FUNCTION_43();

    return v23();
  }
}

uint64_t sub_1C7489D04()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 160) = v0;

  if (!v0)
  {
    *(v5 + 168) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7489E14()
{
  OUTLINED_FUNCTION_115_0();
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[10];

  v1(v2, v3);

  OUTLINED_FUNCTION_116();
  v5 = v0[21];

  return v4(v5);
}

uint64_t sub_1C7489EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  (*(v10 + 136))(*(v10 + 120), *(v10 + 80));

  OUTLINED_FUNCTION_152_7();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

void LLMWrapper.complete(prompt:samplingParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 >= 5u)
  {
    OUTLINED_FUNCTION_81_23(a1, a2, a3);
    sub_1C7489FF8(v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_81_23(a1, a2, a3);
    AjaxLLM.complete(prompt:samplingParameters:)();
  }
}

uint64_t sub_1C7489FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v58 = a2;
  v55 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEF8, &qword_1C758B770);
  v53 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v52 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08, "8");
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - v9;
  v11 = sub_1C754E72C();
  v54 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v12) = *v3;
  v59 = *(v3 + 1);
  v14 = v3[16];
  v57 = v12;
  LOBYTE(v61) = v12;
  static LLMWrapper.tokenGenerator(for:)();
  if (v15)
  {
    v44 = v10;
    v45 = v15;
    v51 = v14;
    v46 = v11;
    v48 = v7;
    static LLMWrapper.gmsSamplingParameters(from:)();
    if (qword_1EDD0C920 != -1)
    {
      swift_once();
    }

    v16 = sub_1C754FF1C();
    __swift_project_value_buffer(v16, qword_1EDD0C928);

    v17 = sub_1C754FEEC();
    v18 = sub_1C755117C();
    v19 = os_log_type_enabled(v17, v18);
    v49 = a3;
    v50 = v4;
    v47 = v8;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v61 = v21;
      *v20 = 67109378;
      *(v20 + 4) = v51;

      *(v20 + 8) = 2080;
      v60 = v57;
      LLMModelType.description.getter();
      v24 = sub_1C6F765A4(v22, v23, &v61);

      *(v20 + 10) = v24;
      _os_log_impl(&dword_1C6F5C000, v17, v18, "Starting completion request with streaming=%{BOOL}d and modelType=%s", v20, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1CCA5F8E0](v21, -1, -1);
      MEMORY[0x1CCA5F8E0](v20, -1, -1);
    }

    else
    {
    }

    v26 = v58;
    sub_1C75504FC();
    v27 = sub_1C754FEEC();
    v28 = sub_1C755117C();

    v29 = os_log_type_enabled(v27, v28);
    v30 = v44;
    if (v29)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v61 = v32;
      *v31 = 136315138;
      v33 = v55;
      v34 = sub_1C755076C();
      v36 = sub_1C6F765A4(v34, v35, &v61);

      *(v31 + 4) = v36;
      v26 = v58;
      _os_log_impl(&dword_1C6F5C000, v27, v28, "Completion prompt: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1CCA5F8E0](v32, -1, -1);
      MEMORY[0x1CCA5F8E0](v31, -1, -1);

      v39 = v48;
      v38 = v49;
      v40 = v47;
    }

    else
    {

      v39 = v48;
      v38 = v49;
      v40 = v47;
      v33 = v55;
    }

    v41 = MEMORY[0x1EEE9AC00](v37);
    *(&v43 - 64) = v57;
    *(&v43 - 7) = v59;
    *(&v43 - 48) = v51;
    *(&v43 - 5) = v33;
    *(&v43 - 4) = v26;
    *(&v43 - 3) = v45;
    *(&v43 - 2) = v13;
    (*(v53 + 104))(v52, *MEMORY[0x1E69E8790], v56, v41);
    sub_1C7550F0C();
    v42 = type metadata accessor for LLMResponse(0);
    (*(v40 + 16))(&v38[*(v42 + 20)], v30, v39);

    (*(v40 + 8))(v30, v39);
    *v38 = 0;
    *(v38 + 1) = 0xE000000000000000;
    return (*(v54 + 8))(v13, v46);
  }

  else
  {
    sub_1C6FB5280();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1C748A5B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  v4[28] = *a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3D0, &qword_1C758E268);
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3D8, &qword_1C758E270);
  v4[32] = swift_task_alloc();
  v4[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3E0, &qword_1C758E278);
  v4[34] = swift_task_alloc();
  v6 = sub_1C754EECC();
  v4[35] = v6;
  v4[36] = *(v6 - 8);
  v4[37] = swift_task_alloc();
  v7 = sub_1C754EEDC();
  v4[38] = v7;
  v4[39] = *(v7 - 8);
  v4[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E18, &unk_1C7574230);
  v4[41] = swift_task_alloc();
  v8 = sub_1C754FD9C();
  v4[42] = v8;
  v4[43] = *(v8 - 8);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E20, &unk_1C755C000);
  v4[46] = v9;
  v4[47] = *(v9 - 8);
  v4[48] = swift_task_alloc();
  v10 = sub_1C755026C();
  v4[49] = v10;
  v4[50] = *(v10 - 8);
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C748A960, 0, 0);
}

uint64_t sub_1C748A960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  v56 = *(v20 + 424);
  v57 = *(v20 + 432);
  v22 = *(v20 + 392);
  v21 = *(v20 + 400);
  v23 = *(v20 + 376);
  v24 = *(v20 + 384);
  v54 = *(v20 + 368);
  v55 = *(v20 + 416);
  v58 = *(v20 + 328);
  v25 = *(v20 + 200);
  v26 = *(v20 + 208);
  v59 = *(v20 + 360);
  v27 = *(v20 + 192);
  v28 = swift_task_alloc();
  *(v28 + 16) = v27;
  *(v28 + 24) = v25;
  OUTLINED_FUNCTION_17_79();
  sub_1C755027C();

  *(v20 + 440) = sub_1C754E72C();
  OUTLINED_FUNCTION_12();
  v30 = *(v29 + 16);
  *(v20 + 448) = v30;
  *(v20 + 456) = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v30(v24, v26);
  *(v20 + 568) = *MEMORY[0x1E69A1370];
  OUTLINED_FUNCTION_144_9();
  *(v20 + 464) = v31;
  *(v20 + 472) = v32;
  v31(v24);
  OUTLINED_FUNCTION_6_110();
  *(v20 + 480) = sub_1C74927F0(v33, v34, MEMORY[0x1E69C61A8]);
  OUTLINED_FUNCTION_87_4();
  sub_1C75503BC();
  v35 = *(v23 + 8);
  *(v20 + 488) = v35;
  *(v20 + 496) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v24, v54);
  v36 = *(v21 + 8);
  *(v20 + 504) = v36;
  *(v20 + 512) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37 = OUTLINED_FUNCTION_23_14();
  v36(v37);
  OUTLINED_FUNCTION_34_20();
  sub_1C755037C();
  v38 = OUTLINED_FUNCTION_66_4();
  v36(v38);
  OUTLINED_FUNCTION_34_20();
  sub_1C755038C();
  (v36)(v56, v22);
  sub_1C754FD8C();
  v39 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  OUTLINED_FUNCTION_47_26();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v20 + 520) = v43;
  *v43 = v44;
  v43[1] = sub_1C748ABC4;
  OUTLINED_FUNCTION_110_1();
  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x1EEE0B308](v45, v46, v47, v48, v49, v50, v51, v52, a9, v54, v55, v56, v57, v58, "LJXbt9tTn8IXh6hr6asr5q7VJHQ.", v59, a17, a18, a19, a20);
}

uint64_t sub_1C748ABC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 528) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C748ACBC()
{
  v3 = v1[32];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3F0, &qword_1C758E280);
  v5 = OUTLINED_FUNCTION_136_5();
  if (__swift_getEnumTagSinglePayload(v5, v6, v4) == 1)
  {
    sub_1C6FD7FC8(v3, &qword_1EC21C3D8, &qword_1C758E270);
  }

  else
  {
    v102 = v1[61];
    v100 = v1[48];
    v7 = v1[43];
    v83 = v1[44];
    v86 = v1[42];
    v89 = v1[45];
    v101 = v1[38];
    v75 = v1[35];
    v79 = v1[37];
    v8 = v1[33];
    v9 = OUTLINED_FUNCTION_67_24();
    v10 = v0(v9);
    v18 = OUTLINED_FUNCTION_96_17(v10, v11, v12, v13, v14, v15, v16, v17, v66);
    v2(v18);
    v19 = OUTLINED_FUNCTION_139_7();
    v20 = v0(v19);
    v28 = OUTLINED_FUNCTION_109_14(v20, v21, v22, v23, v24, v25, v26, v27, v67, v71, v75, v79);
    v2(v28);
    v29 = sub_1C754EEBC();
    v37 = OUTLINED_FUNCTION_105_11(v29, v30, v31, v32, v33, v34, v35, v36, v68, v72, v76, v80, v83, v86, v89);
    v38(v37);
    v39 = OUTLINED_FUNCTION_66_2();
    v40(v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3A8, &qword_1C758E230);
    inited = swift_initStackObject();
    v42 = OUTLINED_FUNCTION_44_33(inited, xmmword_1C755BAB0);
    v43 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_121_8(v42, MEMORY[0x1E69C6560], v69, v73, v77, v81, v84, v87, v90, v92, v93, v95, v97);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E30, &unk_1C755C010);
    OUTLINED_FUNCTION_49_3();
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38, &qword_1C756D840);
    v44 = swift_initStackObject();
    v45 = OUTLINED_FUNCTION_33_44(v44, "_OverrideConfigurationHelper.samplingParameters(.dynamic(completionParameters))", v70, v74, v78, v82, v85, v88, v91, v94, v96, v98, v99, v100);
    v46(v45);
    v47 = OUTLINED_FUNCTION_113_14();
    v48(v47);
    *(v44 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_0((v44 + 48));
    sub_1C754EBEC();
    v102(v8, v7 + 32);
    OUTLINED_FUNCTION_49_3();
    v49 = sub_1C75504DC();
    OUTLINED_FUNCTION_86_15(v49);

    v50 = OUTLINED_FUNCTION_132_10();
    v51(v50);
    OUTLINED_FUNCTION_131_6();
    v52(v43, v101);
    v53 = OUTLINED_FUNCTION_141_9();
    v54(v53);
    v55 = OUTLINED_FUNCTION_107_12();
    v56(v55);
  }

  v57 = v1[63];
  v58 = v1[27];
  OUTLINED_FUNCTION_93_17(v1[45]);
  v1[23] = v58;
  OUTLINED_FUNCTION_106_0((v1 + 23));
  v59 = OUTLINED_FUNCTION_49_3();
  v57(v59);
  v60 = swift_task_alloc();
  v1[67] = v60;
  OUTLINED_FUNCTION_1_140();
  sub_1C74927F0(v61, v62, MEMORY[0x1E69DA440]);
  OUTLINED_FUNCTION_90_16();
  *v60 = v63;
  v60[1] = sub_1C748B05C;
  v64 = v1[29];

  return MEMORY[0x1EEE0A360](v64);
}

uint64_t sub_1C748B05C()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *v5 = *v2;
  v4[68] = v1;

  v6 = v4[31];
  v7 = v4[30];
  v8 = v4[29];
  if (!v1)
  {
    v4[69] = v0;
    v4[70] = v3;
  }

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C748B1D0()
{
  v1 = v0[63];
  v2 = v0[54];
  v3 = v0[49];
  (*(v0[43] + 8))(v0[45], v0[42]);
  v1(v2, v3);

  v4 = v0[1];
  v5 = v0[70];
  v6 = v0[69];

  return v4(v5, v6);
}

uint64_t sub_1C748B314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v17 = OUTLINED_FUNCTION_99_16();
  v18(v17);
  v19 = OUTLINED_FUNCTION_66_2();
  v16(v19);
  OUTLINED_FUNCTION_64_24();

  OUTLINED_FUNCTION_10_84();
  OUTLINED_FUNCTION_129();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C748B3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v17 = OUTLINED_FUNCTION_99_16();
  v18(v17);
  v19 = OUTLINED_FUNCTION_66_2();
  v16(v19);
  OUTLINED_FUNCTION_64_24();

  OUTLINED_FUNCTION_10_84();
  OUTLINED_FUNCTION_129();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C748B4C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C755036C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  v13[3] = MEMORY[0x1E69E6158];
  v13[4] = MEMORY[0x1E69C6560];
  v13[0] = a1;
  v13[1] = a2;
  sub_1C75504FC();
  v9 = MEMORY[0x1E69C6388];
  sub_1C75502EC();
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3B8, &qword_1C758E240);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C755BAB0;
  (*(v5 + 16))(v11 + v10, v8, v4);
  MEMORY[0x1CCA5C7F0](v11, v4, v9);

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1C748B674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  v5[29] = *a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3D0, &qword_1C758E268);
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3D8, &qword_1C758E270);
  v5[33] = swift_task_alloc();
  v5[34] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3E0, &qword_1C758E278);
  v5[35] = swift_task_alloc();
  v7 = sub_1C754EECC();
  v5[36] = v7;
  v5[37] = *(v7 - 8);
  v5[38] = swift_task_alloc();
  v8 = sub_1C754EEDC();
  v5[39] = v8;
  v5[40] = *(v8 - 8);
  v5[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E18, &unk_1C7574230);
  v5[42] = swift_task_alloc();
  v9 = sub_1C754FD9C();
  v5[43] = v9;
  v5[44] = *(v9 - 8);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E20, &unk_1C755C000);
  v5[47] = v10;
  v5[48] = *(v10 - 8);
  v5[49] = swift_task_alloc();
  v11 = sub_1C755026C();
  v5[50] = v11;
  v5[51] = *(v11 - 8);
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C748BA24, 0, 0);
}

uint64_t sub_1C748BA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  v56 = *(v20 + 432);
  v57 = *(v20 + 440);
  v22 = *(v20 + 400);
  v21 = *(v20 + 408);
  v23 = *(v20 + 384);
  v24 = *(v20 + 392);
  v54 = *(v20 + 376);
  v55 = *(v20 + 424);
  v58 = *(v20 + 336);
  v25 = *(v20 + 208);
  v26 = *(v20 + 216);
  v59 = *(v20 + 368);
  v27 = *(v20 + 200);
  v28 = swift_task_alloc();
  *(v28 + 16) = v27;
  *(v28 + 24) = v25;
  OUTLINED_FUNCTION_17_79();
  sub_1C755027C();

  *(v20 + 448) = sub_1C754E72C();
  OUTLINED_FUNCTION_12();
  v30 = *(v29 + 16);
  *(v20 + 456) = v30;
  *(v20 + 464) = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v30(v24, v26);
  *(v20 + 560) = *MEMORY[0x1E69A1370];
  OUTLINED_FUNCTION_144_9();
  *(v20 + 472) = v31;
  *(v20 + 480) = v32;
  v31(v24);
  OUTLINED_FUNCTION_6_110();
  *(v20 + 488) = sub_1C74927F0(v33, v34, MEMORY[0x1E69C61A8]);
  OUTLINED_FUNCTION_87_4();
  sub_1C75503BC();
  v35 = *(v23 + 8);
  *(v20 + 496) = v35;
  *(v20 + 504) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v24, v54);
  v36 = *(v21 + 8);
  *(v20 + 512) = v36;
  *(v20 + 520) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37 = OUTLINED_FUNCTION_23_14();
  v36(v37);
  OUTLINED_FUNCTION_34_20();
  sub_1C755037C();
  v38 = OUTLINED_FUNCTION_66_4();
  v36(v38);
  OUTLINED_FUNCTION_34_20();
  sub_1C755038C();
  (v36)(v56, v22);
  sub_1C754FD8C();
  v39 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  OUTLINED_FUNCTION_47_26();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v20 + 528) = v43;
  *v43 = v44;
  v43[1] = sub_1C748BC8C;
  OUTLINED_FUNCTION_110_1();
  OUTLINED_FUNCTION_20_4();

  return MEMORY[0x1EEE0B308](v45, v46, v47, v48, v49, v50, v51, v52, a9, v54, v55, v56, v57, v58, "VhWxh34MnrSMlHvhso7mv8YGK6E.", v59, a17, a18, a19, a20);
}

uint64_t sub_1C748BC8C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 536) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C748BD84()
{
  v3 = v1[33];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3F0, &qword_1C758E280);
  v5 = OUTLINED_FUNCTION_136_5();
  if (__swift_getEnumTagSinglePayload(v5, v6, v4) == 1)
  {
    sub_1C6FD7FC8(v3, &qword_1EC21C3D8, &qword_1C758E270);
  }

  else
  {
    v104 = v1[62];
    v102 = v1[49];
    v7 = v1[44];
    v85 = v1[45];
    v88 = v1[43];
    v91 = v1[46];
    v103 = v1[39];
    v77 = v1[36];
    v81 = v1[38];
    v8 = v1[34];
    v9 = OUTLINED_FUNCTION_67_24();
    v10 = v0(v9);
    v18 = OUTLINED_FUNCTION_96_17(v10, v11, v12, v13, v14, v15, v16, v17, v68);
    v2(v18);
    v19 = OUTLINED_FUNCTION_139_7();
    v20 = v0(v19);
    v28 = OUTLINED_FUNCTION_109_14(v20, v21, v22, v23, v24, v25, v26, v27, v69, v73, v77, v81);
    v2(v28);
    v29 = sub_1C754EEBC();
    v37 = OUTLINED_FUNCTION_105_11(v29, v30, v31, v32, v33, v34, v35, v36, v70, v74, v78, v82, v85, v88, v91);
    v38(v37);
    v39 = OUTLINED_FUNCTION_66_2();
    v40(v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3A8, &qword_1C758E230);
    inited = swift_initStackObject();
    v42 = OUTLINED_FUNCTION_44_33(inited, xmmword_1C755BAB0);
    v43 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_121_8(v42, MEMORY[0x1E69C6560], v71, v75, v79, v83, v86, v89, v92, v94, v95, v97, v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E30, &unk_1C755C010);
    OUTLINED_FUNCTION_49_3();
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38, &qword_1C756D840);
    v44 = swift_initStackObject();
    v45 = OUTLINED_FUNCTION_33_44(v44, "_OverrideConfigurationHelper.samplingParameters(.dynamic(completionParameters))", v72, v76, v80, v84, v87, v90, v93, v96, v98, v100, v101, v102);
    v46(v45);
    v47 = OUTLINED_FUNCTION_113_14();
    v48(v47);
    *(v44 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_0((v44 + 48));
    sub_1C754EBEC();
    v104(v8, v7 + 32);
    OUTLINED_FUNCTION_49_3();
    v49 = sub_1C75504DC();
    OUTLINED_FUNCTION_86_15(v49);

    v50 = OUTLINED_FUNCTION_132_10();
    v51(v50);
    OUTLINED_FUNCTION_131_6();
    v52(v43, v103);
    v53 = OUTLINED_FUNCTION_141_9();
    v54(v53);
    v55 = OUTLINED_FUNCTION_107_12();
    v56(v55);
  }

  v57 = v1[64];
  v58 = v1[28];
  OUTLINED_FUNCTION_93_17(v1[46]);
  v1[23] = v58;
  OUTLINED_FUNCTION_106_0((v1 + 23));
  v59 = OUTLINED_FUNCTION_49_3();
  v57(v59);
  v60 = sub_1C754ECBC();
  v61 = swift_task_alloc();
  v1[68] = v61;
  OUTLINED_FUNCTION_1_140();
  sub_1C74927F0(v62, v63, MEMORY[0x1E69DA468]);
  OUTLINED_FUNCTION_90_16();
  *v61 = v64;
  v61[1] = sub_1C748C140;
  v65 = v1[30];
  v66 = v1[24];

  return MEMORY[0x1EEE0A378](v66, v60, v65);
}

uint64_t sub_1C748C140()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 552) = v0;

  (*(v2[31] + 8))(v2[32], v2[30]);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C748C29C()
{
  v1 = v0[64];
  v2 = v0[55];
  v3 = v0[50];
  (*(v0[44] + 8))(v0[46], v0[43]);
  v1(v2, v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C748C3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v17 = OUTLINED_FUNCTION_76_22();
  v18(v17);
  v19 = OUTLINED_FUNCTION_66_2();
  v16(v19);
  OUTLINED_FUNCTION_63_26();

  OUTLINED_FUNCTION_10_84();
  OUTLINED_FUNCTION_129();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C748C4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v17 = OUTLINED_FUNCTION_76_22();
  v18(v17);
  v19 = OUTLINED_FUNCTION_66_2();
  v16(v19);
  OUTLINED_FUNCTION_63_26();

  OUTLINED_FUNCTION_10_84();
  OUTLINED_FUNCTION_129();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

double sub_1C748C588(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v33 = a1;
  v34 = a6;
  v35 = a7;
  v38 = a5;
  v36 = a2;
  v37 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50, &unk_1C758BAC8);
  v30 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v31 = &v28 - v11;
  v13 = sub_1C754E72C();
  v29 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v28 - v18;
  v20 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  (*(v14 + 16))(v16, v32, v13);
  (*(v10 + 16))(v12, v33, v9);
  v21 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v22 = (v15 + *(v10 + 80) + v21) & ~*(v10 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v24 = v37;
  *(v23 + 32) = v36;
  *(v23 + 40) = a3;
  *(v23 + 48) = v24;
  v25 = v34;
  v26 = v35;
  *(v23 + 56) = v38;
  *(v23 + 64) = v25;
  *(v23 + 72) = v26;
  (*(v14 + 32))(v23 + v21, v16, v29);
  (*(v10 + 32))(v23 + v22, v31, v30);

  sub_1C75504FC();

  sub_1C6FEB80C(0, 0, v19, &unk_1C758E250, v23);

  return result;
}

uint64_t sub_1C748C864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v15;
  *(v8 + 136) = v14;
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 312) = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF58, &unk_1C758E210);
  *(v8 + 160) = v9;
  *(v8 + 168) = *(v9 - 8);
  *(v8 + 176) = swift_task_alloc();
  v10 = sub_1C754ECCC();
  *(v8 + 184) = v10;
  *(v8 + 192) = *(v10 - 8);
  *(v8 + 200) = swift_task_alloc();
  v11 = sub_1C754ECBC();
  *(v8 + 208) = v11;
  *(v8 + 216) = *(v11 - 8);
  *(v8 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C748CA00, 0, 0);
}

uint64_t sub_1C748CA00()
{
  OUTLINED_FUNCTION_49_0();
  if (*(v0 + 312) == 1)
  {
    if (qword_1EDD0C920 != -1)
    {
      OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
    }

    v1 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v1, qword_1EDD0C928);
    v2 = sub_1C754FEEC();
    v3 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v3))
    {
      v4 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v4);
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v5, v6, "Streaming in tokens to the continuation");
      OUTLINED_FUNCTION_23_3();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 232) = v7;
    *v7 = v8;
    v7[1] = sub_1C748CB88;
    v9 = *(v0 + 224);
    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    v12 = *(v0 + 120);
    v13 = *(v0 + 128);

    return sub_1C748B674(v9, v12, v13, v10, v11);
  }

  else
  {
    v15 = swift_task_alloc();
    *(v0 + 280) = v15;
    *v15 = v0;
    v15[1] = sub_1C748D348;
    v16 = OUTLINED_FUNCTION_61_3(*(v0 + 120));

    return sub_1C748A5B4(v16, v17, v18, v19);
  }
}

uint64_t sub_1C748CB88()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C748CC80()
{
  OUTLINED_FUNCTION_49_0();
  sub_1C74927F0(&qword_1EC21C3C8, MEMORY[0x1E69DA6A0], MEMORY[0x1E69DA698]);
  sub_1C754ECDC();
  OUTLINED_FUNCTION_2_130();
  sub_1C74927F0(v1, v2, MEMORY[0x1E69DA6B0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 248) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_24_49(v3);

  return MEMORY[0x1EEE6D8C8](v5, v6, v7);
}

uint64_t sub_1C748CEAC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C748CFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  if (v10[34])
  {
    v11 = sub_1C75507AC();
    v13 = v12;

    v10[9] = v11;
    v10[10] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50, &unk_1C758BAC8);
    sub_1C7550EAC();
    v14 = OUTLINED_FUNCTION_57_0();
    v15(v14);
    OUTLINED_FUNCTION_2_130();
    sub_1C74927F0(v16, v17, MEMORY[0x1E69DA6B0]);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v10[31] = v18;
    *v18 = v19;
    OUTLINED_FUNCTION_24_49(v18);
    OUTLINED_FUNCTION_88_0();

    return MEMORY[0x1EEE6D8C8](v20, v21, v22);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_128_10();
    v25(v24);
    v26 = OUTLINED_FUNCTION_66_2();
    v27(v26);
    OUTLINED_FUNCTION_127_11();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50, &unk_1C758BAC8);
    OUTLINED_FUNCTION_153_6(v28);
    OUTLINED_FUNCTION_73_24();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_88_0();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
  }
}

uint64_t sub_1C748D158()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 112) = *(v0 + 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C748D348()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  *v3 = *v1;
  v2[36] = v4;
  v2[37] = v5;
  v2[38] = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C748D44C()
{
  OUTLINED_FUNCTION_115_0();
  if (qword_1EDD0C920 != -1)
  {
    OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
  }

  v2 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v2, qword_1EDD0C928);
  v3 = sub_1C754FEEC();
  v4 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v4))
  {
    v5 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v5);
    OUTLINED_FUNCTION_6(&dword_1C6F5C000, v6, v7, "Received completion, simulating streaming with individual characters as tokens");
    OUTLINED_FUNCTION_23_3();
  }

  OUTLINED_FUNCTION_80_16();
  while (1)
  {
    v8 = sub_1C755088C();
    if (!v9)
    {
      break;
    }

    v10 = v0[22];
    v11 = v0[20];
    v0[5] = v8;
    v0[6] = v9;
    v12 = OUTLINED_FUNCTION_57_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    sub_1C7550EAC();
    (*v1)(v10, v11);
  }

  OUTLINED_FUNCTION_127_11();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50, &unk_1C758BAC8);
  OUTLINED_FUNCTION_153_6(v14);
  OUTLINED_FUNCTION_73_24();

  OUTLINED_FUNCTION_43();

  return v15();
}

uint64_t sub_1C748D708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7[36] = a6;
  v7[37] = a7;
  v7[34] = a4;
  v7[35] = a5;
  v7[32] = a2;
  v7[33] = a3;
  v7[31] = a1;
  v7[38] = *a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E00, &unk_1C755BFE0);
  v7[39] = v8;
  v7[40] = *(v8 - 8);
  v7[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E08, &unk_1C7574220);
  v7[42] = swift_task_alloc();
  v7[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E10, &unk_1C755BFF0);
  v7[44] = swift_task_alloc();
  v9 = sub_1C754EECC();
  v7[45] = v9;
  v7[46] = *(v9 - 8);
  v7[47] = swift_task_alloc();
  v10 = sub_1C754EEEC();
  v7[48] = v10;
  v7[49] = *(v10 - 8);
  v7[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E18, &unk_1C7574230);
  v7[51] = swift_task_alloc();
  v11 = sub_1C754FD9C();
  v7[52] = v11;
  v7[53] = *(v11 - 8);
  v7[54] = swift_task_alloc();
  v7[55] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E20, &unk_1C755C000);
  v7[56] = v12;
  v7[57] = *(v12 - 8);
  v7[58] = swift_task_alloc();
  v13 = sub_1C755029C();
  v7[59] = v13;
  v7[60] = *(v13 - 8);
  v7[61] = swift_task_alloc();
  v7[62] = swift_task_alloc();
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  v7[65] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C748DAC8, 0, 0);
}

uint64_t sub_1C748DAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v69 = *(v26 + 512);
  v28 = *(v26 + 472);
  v27 = *(v26 + 480);
  v30 = *(v26 + 456);
  v29 = *(v26 + 464);
  v68 = *(v26 + 288);
  v31 = swift_task_alloc();
  OUTLINED_FUNCTION_142_5(v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
  OUTLINED_FUNCTION_17_79();
  sub_1C75502AC();

  sub_1C755028C();
  v41 = *(v27 + 8);
  *(v26 + 528) = v41;
  *(v26 + 536) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42 = OUTLINED_FUNCTION_23_14();
  v41(v42);
  *(v26 + 544) = sub_1C754E72C();
  OUTLINED_FUNCTION_12();
  v44 = *(v43 + 16);
  *(v26 + 552) = v44;
  *(v26 + 560) = (v43 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v44(v29, v68);
  *(v26 + 656) = *MEMORY[0x1E69A1370];
  *(v26 + 568) = *(v30 + 104);
  *(v26 + 576) = (v30 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v45 = OUTLINED_FUNCTION_137_10();
  v46(v45);
  OUTLINED_FUNCTION_38_40();
  *(v26 + 584) = sub_1C74927F0(v47, v48, MEMORY[0x1E69C61F0]);
  OUTLINED_FUNCTION_102_14();
  *(v26 + 592) = *(v30 + 8);
  *(v26 + 600) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v49 = OUTLINED_FUNCTION_82_3();
  v50(v49);
  v51 = OUTLINED_FUNCTION_87_4();
  v41(v51);
  OUTLINED_FUNCTION_34_20();
  sub_1C755037C();
  v52 = OUTLINED_FUNCTION_66_4();
  v41(v52);
  OUTLINED_FUNCTION_34_20();
  sub_1C755038C();
  (v41)(v69, v28);
  sub_1C754FD8C();
  v53 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  OUTLINED_FUNCTION_47_26();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v26 + 608) = v57;
  *v57 = v58;
  v57[1] = sub_1C748DD7C;
  OUTLINED_FUNCTION_110_1();

  return MEMORY[0x1EEE0B310](v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1C748DD7C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 616) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C748DE74()
{
  v2 = v0[42];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E28, &unk_1C7574240);
  v4 = OUTLINED_FUNCTION_136_5();
  if (__swift_getEnumTagSinglePayload(v4, v5, v3) == 1)
  {
    sub_1C6FD7FC8(v2, &qword_1EC214E08, &unk_1C7574220);
  }

  else
  {
    v121 = v0[74];
    v120 = v0[58];
    v99 = v0[54];
    v102 = v0[53];
    v105 = v0[52];
    v108 = v0[55];
    v90 = v0[50];
    v6 = v0[48];
    v95 = v0[47];
    v7 = v0[46];
    v117 = v0[34];
    v119 = v0[36];
    v115 = v0[33];
    v8 = OUTLINED_FUNCTION_66_26();
    v9 = v1(v8);
    v17 = OUTLINED_FUNCTION_95_19(v9, v10, v11, v12, v13, v14, v15, v16, v73, v79);
    v18 = v3(v17);
    v26 = OUTLINED_FUNCTION_110_12(v18, v19, v20, v21, v22, v23, v24, v25, v74, v80, v85, v90);
    v27 = v1(v26);
    v35 = OUTLINED_FUNCTION_138_7(v27, v28, v29, v30, v31, v32, v33, v34, v75, v81, v86, v91, v95);
    v3(v35);
    v36 = v99;
    v37 = sub_1C754EEBC();
    v45 = OUTLINED_FUNCTION_94_18(v37, v38, v39, v40, v41, v42, v43, v44, v76, v82, v87, v92, v96, v99, v102, v105, v108);
    v46(v45);
    v47 = OUTLINED_FUNCTION_57_0();
    v48(v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3A8, &qword_1C758E230);
    inited = swift_initStackObject();
    v50 = OUTLINED_FUNCTION_51_30(inited, xmmword_1C75604F0);
    OUTLINED_FUNCTION_34_45(v50, MEMORY[0x1E69C6560], v77, v83, v88, v93, v97, v100, v103, v106, v109, v111, v113, v115, v117);
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E30, &unk_1C755C010);
    OUTLINED_FUNCTION_57_3();
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38, &qword_1C756D840);
    v51 = swift_initStackObject();
    v52 = OUTLINED_FUNCTION_36_40(v51, "_OverrideConfigurationHelper.samplingParameters(.dynamic(samplingParameters))", xmmword_1C755BAB0, v78, v84, v89, v94, v98, v101, v104, v107, v110, v112, v114, v116, v118, v119, v120);
    v53(v52);
    v54 = OUTLINED_FUNCTION_115_15();
    v55(v54);
    v51[4].n128_u64[1] = v7;
    __swift_allocate_boxed_opaque_existential_0(&v51[3]);
    sub_1C754EBEC();
    v121(v36, v1);
    OUTLINED_FUNCTION_57_3();
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E48, &qword_1C7574250);
    v56 = sub_1C75504DC();
    OUTLINED_FUNCTION_84_15(v56);

    OUTLINED_FUNCTION_131_6();
    v57(v6);
    v58 = OUTLINED_FUNCTION_133_9();
    v59(v58);
    v60 = OUTLINED_FUNCTION_134_11();
    v61(v60);
    v62 = OUTLINED_FUNCTION_117_0();
    v63(v62);
  }

  v64 = v0[66];
  v65 = v0[37];
  OUTLINED_FUNCTION_93_17(v0[55]);
  v0[30] = v65;
  OUTLINED_FUNCTION_106_0((v0 + 30));
  v66 = OUTLINED_FUNCTION_49_3();
  v64(v66);
  v67 = swift_task_alloc();
  v0[78] = v67;
  OUTLINED_FUNCTION_1_140();
  sub_1C74927F0(v68, v69, MEMORY[0x1E69DA438]);
  OUTLINED_FUNCTION_90_16();
  *v67 = v70;
  v67[1] = sub_1C748E28C;
  v71 = v0[39];

  return MEMORY[0x1EEE0A390](v71);
}

uint64_t sub_1C748E28C()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *v5 = *v2;
  v4[79] = v1;

  v6 = v4[41];
  v7 = v4[40];
  v8 = v4[39];
  if (!v1)
  {
    v4[80] = v0;
    v4[81] = v3;
  }

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C748E400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  v21 = v20[66];
  v22 = v20[65];
  v23 = v20[59];
  v33 = v20[58];
  v34 = v20[54];
  v35 = v20[51];
  v36 = v20[50];
  v37 = v20[47];
  v38 = v20[44];
  v39 = v20[42];
  v40 = v20[41];
  (*(v20[53] + 8))(v20[55], v20[52]);
  v21(v22, v23);

  OUTLINED_FUNCTION_20_4();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33, v34, v35, v36, v37, v38, v39, v40, a18, a19, a20);
}

uint64_t sub_1C748E538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v17 = OUTLINED_FUNCTION_75_20();
  v18(v17);
  v19 = OUTLINED_FUNCTION_66_2();
  v16(v19);
  OUTLINED_FUNCTION_49_34();

  OUTLINED_FUNCTION_10_84();
  OUTLINED_FUNCTION_129();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C748E618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v17 = OUTLINED_FUNCTION_75_20();
  v18(v17);
  v19 = OUTLINED_FUNCTION_66_2();
  v16(v19);
  OUTLINED_FUNCTION_49_34();

  OUTLINED_FUNCTION_10_84();
  OUTLINED_FUNCTION_129();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C748E6F8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[0] = a2;
  v22[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3B0, &qword_1C758E238);
  v5 = OUTLINED_FUNCTION_76(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_148_2();
  v6 = sub_1C755033C();
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v8 = sub_1C755036C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  sub_1C755032C();
  sub_1C755031C();
  v16 = sub_1C755035C();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v16);
  sub_1C755030C();
  sub_1C6FD7FC8(v3, &qword_1EC21C3B0, &qword_1C758E238);
  sub_1C755031C();
  sub_1C755034C();
  v17 = MEMORY[0x1E69C6388];
  sub_1C75502FC();
  v18 = *(v9 + 8);
  v18(v12, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3B8, &qword_1C758E240);
  v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C755BAB0;
  (*(v9 + 16))(v20 + v19, v15, v8);
  MEMORY[0x1CCA5C7F0](v20, v8, v17);

  return (v18)(v15, v8);
}

uint64_t sub_1C748E9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v8[37] = a7;
  v8[38] = a8;
  v8[35] = a5;
  v8[36] = a6;
  v8[33] = a3;
  v8[34] = a4;
  v8[31] = a1;
  v8[32] = a2;
  v8[39] = *a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E00, &unk_1C755BFE0);
  v8[40] = v9;
  v8[41] = *(v9 - 8);
  v8[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E08, &unk_1C7574220);
  v8[43] = swift_task_alloc();
  v8[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E10, &unk_1C755BFF0);
  v8[45] = swift_task_alloc();
  v10 = sub_1C754EECC();
  v8[46] = v10;
  v8[47] = *(v10 - 8);
  v8[48] = swift_task_alloc();
  v11 = sub_1C754EEEC();
  v8[49] = v11;
  v8[50] = *(v11 - 8);
  v8[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E18, &unk_1C7574230);
  v8[52] = swift_task_alloc();
  v12 = sub_1C754FD9C();
  v8[53] = v12;
  v8[54] = *(v12 - 8);
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E20, &unk_1C755C000);
  v8[57] = v13;
  v8[58] = *(v13 - 8);
  v8[59] = swift_task_alloc();
  v14 = sub_1C755029C();
  v8[60] = v14;
  v8[61] = *(v14 - 8);
  v8[62] = swift_task_alloc();
  v8[63] = swift_task_alloc();
  v8[64] = swift_task_alloc();
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C748ED6C, 0, 0);
}

uint64_t sub_1C748ED6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v69 = *(v26 + 520);
  v27 = *(v26 + 488);
  v28 = *(v26 + 472);
  v29 = *(v26 + 480);
  v30 = *(v26 + 464);
  v68 = *(v26 + 296);
  v31 = swift_task_alloc();
  OUTLINED_FUNCTION_142_5(v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
  OUTLINED_FUNCTION_17_79();
  sub_1C75502AC();

  sub_1C755028C();
  v41 = *(v27 + 8);
  *(v26 + 536) = v41;
  *(v26 + 544) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42 = OUTLINED_FUNCTION_23_14();
  v41(v42);
  *(v26 + 552) = sub_1C754E72C();
  OUTLINED_FUNCTION_12();
  v44 = *(v43 + 16);
  *(v26 + 560) = v44;
  *(v26 + 568) = (v43 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v44(v28, v68);
  *(v26 + 648) = *MEMORY[0x1E69A1370];
  *(v26 + 576) = *(v30 + 104);
  *(v26 + 584) = (v30 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v45 = OUTLINED_FUNCTION_137_10();
  v46(v45);
  OUTLINED_FUNCTION_38_40();
  *(v26 + 592) = sub_1C74927F0(v47, v48, MEMORY[0x1E69C61F0]);
  OUTLINED_FUNCTION_102_14();
  *(v26 + 600) = *(v30 + 8);
  *(v26 + 608) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v49 = OUTLINED_FUNCTION_82_3();
  v50(v49);
  v51 = OUTLINED_FUNCTION_87_4();
  v41(v51);
  OUTLINED_FUNCTION_34_20();
  sub_1C755037C();
  v52 = OUTLINED_FUNCTION_66_4();
  v41(v52);
  OUTLINED_FUNCTION_34_20();
  sub_1C755038C();
  (v41)(v69, v29);
  sub_1C754FD8C();
  v53 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  OUTLINED_FUNCTION_47_26();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v26 + 616) = v57;
  *v57 = v58;
  v57[1] = sub_1C748F024;
  OUTLINED_FUNCTION_110_1();

  return MEMORY[0x1EEE0B310](v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1C748F024()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 624) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C748F11C()
{
  v2 = v0[43];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E28, &unk_1C7574240);
  v4 = OUTLINED_FUNCTION_136_5();
  if (__swift_getEnumTagSinglePayload(v4, v5, v3) == 1)
  {
    sub_1C6FD7FC8(v2, &qword_1EC214E08, &unk_1C7574220);
  }

  else
  {
    v123 = v0[75];
    v122 = v0[59];
    v101 = v0[55];
    v104 = v0[54];
    v107 = v0[53];
    v110 = v0[56];
    v92 = v0[51];
    v6 = v0[49];
    v97 = v0[48];
    v7 = v0[47];
    v119 = v0[35];
    v121 = v0[37];
    v117 = v0[34];
    v8 = OUTLINED_FUNCTION_66_26();
    v9 = v1(v8);
    v17 = OUTLINED_FUNCTION_95_19(v9, v10, v11, v12, v13, v14, v15, v16, v75, v81);
    v18 = v3(v17);
    v26 = OUTLINED_FUNCTION_110_12(v18, v19, v20, v21, v22, v23, v24, v25, v76, v82, v87, v92);
    v27 = v1(v26);
    v35 = OUTLINED_FUNCTION_138_7(v27, v28, v29, v30, v31, v32, v33, v34, v77, v83, v88, v93, v97);
    v3(v35);
    v36 = v101;
    v37 = sub_1C754EEBC();
    v45 = OUTLINED_FUNCTION_94_18(v37, v38, v39, v40, v41, v42, v43, v44, v78, v84, v89, v94, v98, v101, v104, v107, v110);
    v46(v45);
    v47 = OUTLINED_FUNCTION_57_0();
    v48(v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C3A8, &qword_1C758E230);
    inited = swift_initStackObject();
    v50 = OUTLINED_FUNCTION_51_30(inited, xmmword_1C75604F0);
    OUTLINED_FUNCTION_34_45(v50, MEMORY[0x1E69C6560], v79, v85, v90, v95, v99, v102, v105, v108, v111, v113, v115, v117, v119);
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E30, &unk_1C755C010);
    OUTLINED_FUNCTION_57_3();
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38, &qword_1C756D840);
    v51 = swift_initStackObject();
    v52 = OUTLINED_FUNCTION_36_40(v51, "_OverrideConfigurationHelper.samplingParameters(.dynamic(samplingParameters))", xmmword_1C755BAB0, v80, v86, v91, v96, v100, v103, v106, v109, v112, v114, v116, v118, v120, v121, v122);
    v53(v52);
    v54 = OUTLINED_FUNCTION_115_15();
    v55(v54);
    v51[4].n128_u64[1] = v7;
    __swift_allocate_boxed_opaque_existential_0(&v51[3]);
    sub_1C754EBEC();
    v123(v36, v1);
    OUTLINED_FUNCTION_57_3();
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E48, &qword_1C7574250);
    v56 = sub_1C75504DC();
    OUTLINED_FUNCTION_84_15(v56);

    OUTLINED_FUNCTION_131_6();
    v57(v6);
    v58 = OUTLINED_FUNCTION_133_9();
    v59(v58);
    v60 = OUTLINED_FUNCTION_134_11();
    v61(v60);
    v62 = OUTLINED_FUNCTION_117_0();
    v63(v62);
  }

  v64 = v0[67];
  v65 = v0[38];
  OUTLINED_FUNCTION_93_17(v0[56]);
  v0[30] = v65;
  OUTLINED_FUNCTION_106_0((v0 + 30));
  v66 = OUTLINED_FUNCTION_49_3();
  v64(v66);
  v67 = sub_1C754ECAC();
  v68 = swift_task_alloc();
  v0[79] = v68;
  OUTLINED_FUNCTION_1_140();
  sub_1C74927F0(v69, v70, MEMORY[0x1E69DA458]);
  OUTLINED_FUNCTION_90_16();
  *v68 = v71;
  v68[1] = sub_1C748F548;
  v72 = v0[40];
  v73 = v0[31];

  return MEMORY[0x1EEE0A398](v73, v67, v72);
}

uint64_t sub_1C748F548()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 640) = v0;

  (*(v2[41] + 8))(v2[42], v2[40]);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C748F6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  v21 = v20[67];
  v22 = v20[66];
  v23 = v20[60];
  v33 = v20[59];
  v34 = v20[55];
  v35 = v20[52];
  v36 = v20[51];
  v37 = v20[48];
  v38 = v20[45];
  v39 = v20[43];
  v40 = v20[42];
  (*(v20[54] + 8))(v20[56], v20[53]);
  v21(v22, v23);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_20_4();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33, v34, v35, v36, v37, v38, v39, v40, a18, a19, a20);
}

uint64_t sub_1C748F7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v17 = OUTLINED_FUNCTION_77_16();
  v18(v17);
  v19 = OUTLINED_FUNCTION_66_2();
  v16(v19);
  OUTLINED_FUNCTION_40_49();

  OUTLINED_FUNCTION_10_84();
  OUTLINED_FUNCTION_129();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C748F8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v17 = OUTLINED_FUNCTION_77_16();
  v18(v17);
  v19 = OUTLINED_FUNCTION_66_2();
  v16(v19);
  OUTLINED_FUNCTION_40_49();

  OUTLINED_FUNCTION_10_84();
  OUTLINED_FUNCTION_129();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C748F994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v44 = a6;
  v38 = a5;
  v40 = a3;
  v41 = a4;
  v36 = a2;
  v49 = a7;
  sub_1C75503EC();
  OUTLINED_FUNCTION_3_0();
  v42 = v8;
  v43 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v12 = v11 - v10;
  sub_1C755040C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_0();
  v14 = sub_1C755029C();
  v37 = *(v14 - 8);
  v15 = v37;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_78();
  v34 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v35 = &v33 - v19;
  v47 = a1;
  v48 = v36;
  v20 = v39;
  sub_1C755041C();
  OUTLINED_FUNCTION_82_3();
  sub_1C75502CC();
  v21 = OUTLINED_FUNCTION_82_3();
  v22(v21);
  v45 = v40;
  v46 = v41;
  sub_1C75503FC();
  v44 = v20;
  v23 = v34;
  v24 = v42;
  sub_1C75502CC();
  (*(v43 + 8))(v12, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E50, &qword_1C755C030);
  v25 = *(v37 + 72);
  v26 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1C75604F0;
  v28 = v27 + v26;
  v29 = *(v15 + 16);
  v29(v28, v35, v14);
  v29(v28 + v25, v23, v14);
  MEMORY[0x1CCA5C7D0](v27);

  v30 = *(v15 + 8);
  v30(v23, v14);
  v31 = OUTLINED_FUNCTION_87_4();
  return (v30)(v31);
}

uint64_t sub_1C748FCC0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v60 = a3;
  v61 = a5;
  v58 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEF8, &qword_1C758B770);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v46 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C08, "8");
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v12 = &v46 - v11;
  v13 = sub_1C754E72C();
  v59 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v14) = *v5;
  v63 = *(v5 + 1);
  v16 = v5[16];
  v62 = v14;
  LOBYTE(v66) = v14;
  static LLMWrapper.tokenGenerator(for:)();
  if (v17)
  {
    v54 = v16;
    v48 = v17;
    v49 = v15;
    v52 = v8;
    v53 = v13;
    static LLMWrapper.gmsSamplingParameters(from:)();
    if (qword_1EDD0C920 != -1)
    {
      swift_once();
    }

    v18 = sub_1C754FF1C();
    __swift_project_value_buffer(v18, qword_1EDD0C928);

    v19 = sub_1C754FEEC();
    v20 = sub_1C75511BC();
    v21 = os_log_type_enabled(v19, v20);
    v50 = v9;
    v51 = v12;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v47 = a4;
      v23 = v22;
      v24 = swift_slowAlloc();
      v66 = v24;
      *v23 = 67109378;
      *(v23 + 4) = v54;

      *(v23 + 8) = 2080;
      v65 = v62;
      LLMModelType.description.getter();
      v27 = a2;
      v28 = sub_1C6F765A4(v25, v26, &v66);

      *(v23 + 10) = v28;
      a2 = v27;
      _os_log_impl(&dword_1C6F5C000, v19, v20, "Starting chat request with streaming=%{BOOL}d and modelType=%s", v23, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1CCA5F8E0](v24, -1, -1);
      v29 = v23;
      a4 = v47;
      MEMORY[0x1CCA5F8E0](v29, -1, -1);
    }

    else
    {
    }

    sub_1C75504FC();
    sub_1C75504FC();
    v31 = sub_1C754FEEC();
    v32 = sub_1C75511BC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v66 = v34;
      *v33 = 136643075;
      v35 = v58;
      *(v33 + 4) = sub_1C6F765A4(v58, a2, &v66);
      *(v33 + 12) = 2085;
      v36 = a2;
      v37 = v60;
      *(v33 + 14) = sub_1C6F765A4(v60, a4, &v66);
      _os_log_impl(&dword_1C6F5C000, v31, v32, "Chat prompt: system: %{sensitive}s user: %{sensitive}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v34, -1, -1);
      MEMORY[0x1CCA5F8E0](v33, -1, -1);
    }

    else
    {

      v36 = a2;
      v37 = v60;
      v35 = v58;
    }

    v39 = v49;
    v40 = MEMORY[0x1EEE9AC00](v38);
    *(&v46 - 80) = v62;
    *(&v46 - 9) = v63;
    *(&v46 - 64) = v54;
    *(&v46 - 7) = v35;
    *(&v46 - 6) = v36;
    *(&v46 - 5) = v37;
    *(&v46 - 4) = a4;
    *(&v46 - 3) = v48;
    *(&v46 - 2) = v39;
    (*(v50 + 104))(v56, *MEMORY[0x1E69E8790], v40);
    v41 = v51;
    sub_1C7550F0C();
    v42 = type metadata accessor for LLMResponse(0);
    v43 = v55;
    v44 = v61;
    v45 = v57;
    (*(v55 + 16))(v61 + *(v42 + 20), v41, v57);

    (*(v43 + 8))(v41, v45);
    *v44 = 0;
    v44[1] = 0xE000000000000000;
    return (*(v59 + 8))(v39, v53);
  }

  else
  {
    sub_1C6FB5280();
    v64 = swift_allocError();
    return swift_willThrow();
  }
}

double sub_1C74902BC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v42 = a7;
  v43 = a8;
  v41 = a5;
  v39 = a2;
  v40 = a4;
  v35 = a3;
  v36 = a1;
  v37 = a9;
  v38 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50, &unk_1C758BAC8);
  v32 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  v33 = &v31 - v12;
  v14 = sub_1C754E72C();
  v31 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v31 - v19;
  v34 = &v31 - v19;
  v21 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
  (*(v15 + 16))(v17, a10, v14);
  (*(v11 + 16))(v13, v36, v10);
  v22 = (*(v15 + 80) + 96) & ~*(v15 + 80);
  v23 = (v16 + *(v11 + 80) + v22) & ~*(v11 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = v40;
  *(v24 + 32) = v39;
  *(v24 + 40) = v35;
  *(v24 + 48) = v25;
  v26 = v42;
  v28 = v37;
  v27 = v38;
  *(v24 + 56) = v41;
  *(v24 + 64) = v27;
  v29 = v43;
  *(v24 + 72) = v26;
  *(v24 + 80) = v29;
  *(v24 + 88) = v28;
  (*(v15 + 32))(v24 + v22, v17, v31);
  (*(v11 + 32))(v24 + v23, v33, v32);

  sub_1C75504FC();
  sub_1C75504FC();

  sub_1C6FEB80C(0, 0, v34, &unk_1C758E208, v24);

  return result;
}

uint64_t sub_1C74905B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v16;
  *(v8 + 152) = v15;
  *(v8 + 136) = v14;
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 344) = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF58, &unk_1C758E210);
  *(v8 + 176) = v9;
  *(v8 + 184) = *(v9 - 8);
  *(v8 + 192) = swift_task_alloc();
  v10 = sub_1C754ECCC();
  *(v8 + 200) = v10;
  *(v8 + 208) = *(v10 - 8);
  *(v8 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8, &qword_1C755BFD0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  v11 = sub_1C754ECAC();
  *(v8 + 240) = v11;
  *(v8 + 248) = *(v11 - 8);
  *(v8 + 256) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7490798, 0, 0);
}

uint64_t sub_1C7490798()
{
  OUTLINED_FUNCTION_49_0();
  if (*(v0 + 344) == 1)
  {
    if (qword_1EDD0C920 != -1)
    {
      OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
    }

    v1 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v1, qword_1EDD0C928);
    v2 = sub_1C754FEEC();
    v3 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v3))
    {
      v4 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v4);
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v5, v6, "Streaming in tokens to the continuation");
      OUTLINED_FUNCTION_23_3();
    }

    sub_1C754E15C();
    v7 = OUTLINED_FUNCTION_118();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 264) = v11;
    *v11 = v12;
    v11[1] = sub_1C7490968;
    v13 = *(v0 + 256);
    v14 = *(v0 + 232);
    v16 = *(v0 + 152);
    v15 = *(v0 + 160);
    v17 = *(v0 + 136);
    v18 = *(v0 + 144);
    v19 = *(v0 + 120);
    v20 = *(v0 + 128);

    return sub_1C748E9AC(v13, v19, v20, v17, v18, v14, v15, v16);
  }

  else
  {
    v22 = *(v0 + 224);
    v23 = sub_1C754E15C();
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v23);
    v24 = swift_task_alloc();
    *(v0 + 312) = v24;
    *v24 = v0;
    v24[1] = sub_1C7491188;
    v25 = OUTLINED_FUNCTION_61_3(*(v0 + 120));

    return sub_1C748D708(v25, v26, v27, v28, v29, v30, v31);
  }
}

uint64_t sub_1C7490968()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v8 + 272) = v0;

  sub_1C6FD7FC8(v5, &qword_1EC214DF8, &qword_1C755BFD0);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7490A8C()
{
  OUTLINED_FUNCTION_49_0();
  sub_1C74927F0(&qword_1EC21C390, MEMORY[0x1E69DA690], MEMORY[0x1E69DA688]);
  sub_1C754ECDC();
  OUTLINED_FUNCTION_2_130();
  sub_1C74927F0(v1, v2, MEMORY[0x1E69DA6B0]);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 280) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_23_54(v3);

  return MEMORY[0x1EEE6D8C8](v5, v6, v7);
}

uint64_t sub_1C7490CCC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 288) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7490DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  if (v10[38])
  {
    v11 = sub_1C75507AC();
    v13 = v12;

    v10[9] = v11;
    v10[10] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50, &unk_1C758BAC8);
    sub_1C7550EAC();
    v14 = OUTLINED_FUNCTION_57_0();
    v15(v14);
    OUTLINED_FUNCTION_2_130();
    sub_1C74927F0(v16, v17, MEMORY[0x1E69DA6B0]);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v10[35] = v18;
    *v18 = v19;
    OUTLINED_FUNCTION_23_54(v18);
    OUTLINED_FUNCTION_88_0();

    return MEMORY[0x1EEE6D8C8](v20, v21, v22);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_106_8();
    v25(v24);
    v26 = OUTLINED_FUNCTION_66_2();
    v27(v26);
    OUTLINED_FUNCTION_127_11();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50, &unk_1C758BAC8);
    OUTLINED_FUNCTION_153_6(v28);
    OUTLINED_FUNCTION_29_44();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_88_0();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
  }
}

uint64_t sub_1C7490F88()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 112) = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C7491188()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  v10[40] = v8;
  v10[41] = v9;
  v10[42] = v0;

  sub_1C6FD7FC8(v5, &qword_1EC214DF8, &qword_1C755BFD0);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C74912B4()
{
  OUTLINED_FUNCTION_115_0();
  if (qword_1EDD0C920 != -1)
  {
    OUTLINED_FUNCTION_0_196(&qword_1EDD0C920);
  }

  v2 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v2, qword_1EDD0C928);
  v3 = sub_1C754FEEC();
  v4 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v4))
  {
    v5 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v5);
    OUTLINED_FUNCTION_6(&dword_1C6F5C000, v6, v7, "Received completion, simulating streaming with individual characters as tokens");
    OUTLINED_FUNCTION_23_3();
  }

  OUTLINED_FUNCTION_80_16();
  while (1)
  {
    v8 = sub_1C755088C();
    if (!v9)
    {
      break;
    }

    v10 = v0[24];
    v11 = v0[22];
    v0[5] = v8;
    v0[6] = v9;
    v12 = OUTLINED_FUNCTION_57_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    sub_1C7550EAC();
    (*v1)(v10, v11);
  }

  OUTLINED_FUNCTION_127_11();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50, &unk_1C758BAC8);
  OUTLINED_FUNCTION_153_6(v14);
  OUTLINED_FUNCTION_29_44();

  OUTLINED_FUNCTION_43();

  return v15();
}

void LLMWrapper.chat(system:user:samplingParameters:)(char *a1@<X8>)
{
  v2 = 1 << *v1;
  if ((v2 & 0xFFC00) != 0)
  {
    type metadata accessor for LLMWrapperUtils();
    v3 = OUTLINED_FUNCTION_143_7();
    static LLMWrapperUtils.systemUserPrompt(systemPrompt:userPrompt:)(v3, v4, v5, v6);
    OUTLINED_FUNCTION_13_90();
    sub_1C7489FF8(v7, v8, a1);
  }

  else if ((v2 & 0x1F) != 0)
  {
    OUTLINED_FUNCTION_13_90();
    OUTLINED_FUNCTION_117_0();
    AjaxLLM.complete(prompt:samplingParameters:)();
  }

  else
  {
    OUTLINED_FUNCTION_13_90();
    v9 = OUTLINED_FUNCTION_143_7();
    sub_1C748FCC0(v9, v10, v11, v12, v13);
  }
}

uint64_t LLMWrapper.respond(system:user:samplingParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v8 = a5;
  v9 = *v5;
  if (v9 >= 0xA)
  {
    type metadata accessor for LLMWrapperUtils();
    v8 = a5;
    a3 = static LLMWrapperUtils.systemUserPrompt(systemPrompt:userPrompt:)(a1, a2, a3, a4);
    a4 = v13;
    goto LABEL_5;
  }

  sub_1C75504FC();
  if (v9 > 4)
  {
LABEL_5:
    OUTLINED_FUNCTION_79_20();
    sub_1C7489FF8(a3, a4, v8);
  }

  OUTLINED_FUNCTION_79_20();
  AjaxLLM.complete(prompt:samplingParameters:)();
}

uint64_t sub_1C74917D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C7070718;

  return LLMWrapper.countTokens(in:)(a1, a2);
}

uint64_t sub_1C74918D0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1C6F765A4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_1C749192C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EA0, &unk_1C7586710);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_1C7491A20(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1C7491A30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C328, &qword_1C758DE38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7491AC0()
{
  OUTLINED_FUNCTION_123();
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_75();

  return sub_1C7488AFC(v6, v7, v8, v3, v2);
}

uint64_t sub_1C7491B74(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1C755091C();
    OUTLINED_FUNCTION_114_14(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1CCA5CDD0](15, a1 >> 16);
    OUTLINED_FUNCTION_114_14(v3);
    return v4 | 8;
  }
}

unint64_t sub_1C7491BD0(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1C7491D64(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = sub_1C75517FC();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
        v10 = *(v17 + v6);
        if (*(v17 + v6) < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
LABEL_14:
              v10 = v8[1] & 0x3F | ((v10 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_15:
              v11 = v8[1];
              v12 = v8[2];
              v13 = ((v10 & 0xF) << 12) | ((v11 & 0x3F) << 6);
              goto LABEL_17;
            case 0x1Cu:
LABEL_16:
              v14 = v8[1];
              v15 = v8[2];
              v12 = v8[3];
              v13 = ((v10 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
LABEL_17:
              v10 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1C75518FC();
        }

        v8 = (v7 + v6);
        v9 = *(v7 + v6);
        v10 = *(v7 + v6);
        if (v9 < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_14;
            case 0x1Bu:
              goto LABEL_15;
            case 0x1Cu:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v10 | ((v2 == 0) << 32);
}

unint64_t sub_1C7491D64(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1C7491E04(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1C7491E74(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1C7491E04(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1C7491B74(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C7491E74(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v8 << 16;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_1C75518FC();
          v5 = v12;
        }

        if (v5 != v7 && (*(v6 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v9 = *(v6 - 1 + v5--) & 0xC0;
          }

          while (v9 == 128);
          return v8 << 16;
        }
      }

      v8 = v5;
      return v8 << 16;
    }

    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v10)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unint64_t sub_1C7491FFC()
{
  result = qword_1EC21C348;
  if (!qword_1EC21C348)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LLMUseCaseIdentifier, &type metadata for LLMUseCaseIdentifier, v0, v1);
    atomic_store(result, &qword_1EC21C348);
  }

  return result;
}

unint64_t sub_1C7492098()
{
  result = qword_1EC21C360;
  if (!qword_1EC21C360)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LLMWrapper.Error, &type metadata for LLMWrapper.Error, v0, v1);
    atomic_store(result, &qword_1EC21C360);
  }

  return result;
}

void sub_1C7492124(uint64_t a1)
{
  sub_1C749226C(319, &qword_1EDD06A00, MEMORY[0x1E69E87C8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C74921E4(uint64_t a1)
{
  sub_1C749226C(319, &qword_1EC21C388, MEMORY[0x1E69E87B8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C749226C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC219760, ":");
    v7 = a3(a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t dispatch thunk of LLMWrapperProtocol.countTokens(in:)()
{
  OUTLINED_FUNCTION_75_1();
  v5 = (*(v1 + 24) + **(v1 + 24));
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1C6FD50A8;
  v3 = OUTLINED_FUNCTION_117_0();

  return v5(v3);
}

_BYTE *storeEnumTagSinglePayload for LLMUseCaseIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LLMWrapper.Error(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C7492660()
{
  v2 = sub_1C754E72C();
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50, &unk_1C758BAC8);
  OUTLINED_FUNCTION_76(v3);
  OUTLINED_FUNCTION_130_8();
  v15 = v4;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_75();

  return sub_1C74905B4(v11, v12, v13, v8, v15, v5, v6, v7);
}

uint64_t sub_1C74927F0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C74928FC()
{
  OUTLINED_FUNCTION_115_0();
  v2 = sub_1C754E72C();
  OUTLINED_FUNCTION_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF50, &unk_1C758BAC8);
  OUTLINED_FUNCTION_76(v3);
  OUTLINED_FUNCTION_130_8();
  v15 = v4;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1C6F738F4;
  OUTLINED_FUNCTION_75();

  return sub_1C748C864(v11, v12, v13, v8, v15, v5, v6, v7);
}

uint64_t sub_1C7492A94(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_40_49()
{
}

uint64_t OUTLINED_FUNCTION_47_26()
{

  return sub_1C754FD7C();
}

uint64_t OUTLINED_FUNCTION_50_34()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_63_26()
{
}

uint64_t OUTLINED_FUNCTION_64_24()
{
}

uint64_t OUTLINED_FUNCTION_66_26()
{
  result = v0;
  *(v2 - 152) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_86_15(uint64_t a1)
{
  v5 = *(v2 - 128);
  v6 = *(v2 - 88);

  return MEMORY[0x1EEE0A308](v5, v6, v1, a1);
}

id OUTLINED_FUNCTION_87_21()
{
  *(v1 + 88) = v0;

  return v0;
}

id OUTLINED_FUNCTION_88_18()
{
  *(v1 + 88) = v0;

  return v0;
}

void OUTLINED_FUNCTION_89_18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_93_17(uint64_t a1)
{

  return sub_1C755039C();
}

uint64_t OUTLINED_FUNCTION_102_14()
{

  return sub_1C75503BC();
}

uint64_t OUTLINED_FUNCTION_117_11(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1C6F765A4(a1, a2, &a9);
}

uint64_t OUTLINED_FUNCTION_118_12(uint64_t a1)
{

  return sub_1C7550EBC();
}

uint64_t OUTLINED_FUNCTION_119_15()
{

  return sub_1C7551EAC();
}

BOOL OUTLINED_FUNCTION_120_11()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_121_8@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a1[9] = v14;
  a1[10] = a2;
  a1[6] = a12;
  *(v13 + 56) = a13;

  return sub_1C75504FC();
}

__n128 OUTLINED_FUNCTION_142_5(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  a1[2].n128_u64[0] = v11;
  a1[2].n128_u64[1] = v10;
  return result;
}

uint64_t OUTLINED_FUNCTION_152_7()
{
}

uint64_t OUTLINED_FUNCTION_153_6(uint64_t a1)
{

  return sub_1C7550EBC();
}

uint64_t sub_1C7493138(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C7423D10();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C74988C8(v6);
  return sub_1C755193C();
}

uint64_t sub_1C74931B4()
{
  OUTLINED_FUNCTION_42();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_1C754F38C();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C74934B0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *(v6 + 80) = v5;

  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C74937A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *(v6 + 104) = v5;

  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7493A90()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *(v6 + 128) = v5;

  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7493D88()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *(v6 + 152) = v5;

  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7494018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[97] = v3;
  v4[96] = a3;
  v4[95] = a2;
  v4[94] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C7494044, 0, 0);
}

uint64_t sub_1C7494878()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *(v6 + 856) = v5;

  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C74952CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[79] = v3;
  v4[78] = a3;
  v4[77] = a2;
  v4[76] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C74952F8, 0, 0);
}

uint64_t sub_1C74952F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v83 = v8;
  static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(&unk_1F46AAA38, 1, a3, a4, a5, a6, a7, a8, v76, v77, v78, v79, v81, __dst[0]);
  v18 = v11;
  v19 = MEMORY[0x1E69E7CC0];
  if (*(v11 + 16))
  {
    __dst[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_65_23(v11, v12, v13, v14, v15, v16, v17);
    v20 = __dst[0];
    v21 = *(__dst[0] + 16);
    v10 = 16 * v21;
    do
    {
      v9 = *(v18 + 40);
      __dst[0] = v20;
      v22 = *(v20 + 24);
      v18 = v21 + 1;
      sub_1C75504FC();
      if (v21 >= v22 >> 1)
      {
        sub_1C6F7ED9C(v22 > 1, v21 + 1, 1, v23, v24, v25, v26);
        v20 = __dst[0];
      }

      OUTLINED_FUNCTION_46_39();
    }

    while (!v27);

    v19 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  v8[80] = v20;
  v28 = v8[76];
  v8[75] = v19;
  v29 = *(v28 + 16);
  v8[81] = v29;
  v30 = &qword_1EDD0DFF8[1];
  if (!v29)
  {

    v55 = MEMORY[0x1E69E7CC0];
LABEL_26:
    OUTLINED_FUNCTION_69_1();
    swift_bridgeObjectRetain_n();
    __dst[0] = sub_1C71CC894(v55);
    sub_1C7493138(__dst);
    OUTLINED_FUNCTION_69_1();
    swift_bridgeObjectRelease_n();
    v8[75] = __dst[0];
    OUTLINED_FUNCTION_61_23();
    if (!v27)
    {
      OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
    }

    v56 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v56, &dword_1EDD28D48);
    v57 = sub_1C754FEEC();
    v58 = sub_1C755118C();
    if (OUTLINED_FUNCTION_32(v58))
    {
      v59 = OUTLINED_FUNCTION_41_0();
      v60 = OUTLINED_FUNCTION_20_1();
      __dst[0] = v60;
      v61 = OUTLINED_FUNCTION_119_16(4.8149e-34);

      MEMORY[0x1CCA5D090](v62, v61);
      OUTLINED_FUNCTION_74_17();
      v63 = sub_1C6F765A4(v61, v10, __dst);

      *(v59 + 4) = v63;
      OUTLINED_FUNCTION_35_30();
      _os_log_impl(v64, v65, v66, v67, v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_23_3();
    }

    v69 = v8[79] + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    OUTLINED_FUNCTION_20_18(v69, (v8 + 72));
    v70 = *(type metadata accessor for StoryMusicCurationDiagnostics(0) + 32);
    swift_isUniquelyReferenced_nonNull_native();
    __dst[0] = *(v69 + v70);
    sub_1C6FC8A40();
    *(v69 + v70) = __dst[0];
    swift_endAccess();
    OUTLINED_FUNCTION_4_91();
    OUTLINED_FUNCTION_130_0();

    __asm { BRAA            X2, X16 }
  }

  v31 = 0;
  while (1)
  {
    v8[83] = v19;
    v8[82] = v31;
    v32 = OUTLINED_FUNCTION_108_12();
    memcpy(v32, v33, 0x42uLL);
    v34 = *(v8 + 81);
    v35 = v8[2];
    v10 = v8[3];
    v8[84] = v35;
    v8[85] = v10;
    if (v34 == 1)
    {
      type metadata accessor for MusicLocalizer();
      v36 = OUTLINED_FUNCTION_106_9();
      sub_1C7025FF8(v36, v37);
      v80 = static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, 0x80000001C75B1CF0);
      v39 = v38;
    }

    else
    {
      sub_1C75504FC();
      v40 = OUTLINED_FUNCTION_107_13();
      sub_1C7025FF8(v40, v41);
      v39 = v10;
      v80 = v35;
    }

    v8[86] = v39;
    v42 = v30[433];
    sub_1C75504FC();
    if (v42 != -1)
    {
      swift_once();
    }

    v43 = sub_1C754FF1C();
    v8[87] = OUTLINED_FUNCTION_23_2(v43, &dword_1EDD28D48);
    v44 = OUTLINED_FUNCTION_104_12();
    sub_1C7025FF8(v44, v45);
    sub_1C75504FC();
    v46 = sub_1C754FEEC();
    sub_1C755118C();
    v47 = OUTLINED_FUNCTION_87_22();
    sub_1C7026030(v47);

    if (os_log_type_enabled(v46, v9))
    {
      OUTLINED_FUNCTION_23_1();
      v81 = OUTLINED_FUNCTION_60_11();
      dword_1EDD28D48 = 136315394;
      memcpy(__dst, v8 + 2, 0x42uLL);
      v48 = OUTLINED_FUNCTION_105_12();
      sub_1C7025FF8(v48, v49);
      PetExtendedToken.description.getter();
      OUTLINED_FUNCTION_98_6();
      memcpy(v8 + 38, __dst, 0x42uLL);
      v50 = sub_1C7026030((v8 + 38));
      OUTLINED_FUNCTION_121_9(v50, v51, &v81);
      OUTLINED_FUNCTION_24_2();
      v19 = MEMORY[0x1E69E7CC0];

      unk_1EDD28D4C = __dst;
      word_1EDD28D54 = 2080;
      v52 = v80;
      *algn_1EDD28D56 = sub_1C6F765A4(v80, v39, &v81);
      OUTLINED_FUNCTION_83_12(&dword_1C6F5C000, v46, v9, "WHO pet=%s, matchOnTerm=%s");
      OUTLINED_FUNCTION_122_12();
      v30 = qword_1EDD0DFF8 + 8;
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {

      v52 = v80;
    }

    v53 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v53 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (v53)
    {
      OUTLINED_FUNCTION_84_16();
      if (v54)
      {
        break;
      }
    }

    sub_1C7026030((v8 + 2));
    v31 = v8[82] + 1;
    if (v31 == v8[81])
    {

      v55 = v8[75];
      goto LABEL_26;
    }
  }

  v73 = swift_task_alloc();
  v8[88] = v73;
  *v73 = v8;
  OUTLINED_FUNCTION_15_83(v73);
  OUTLINED_FUNCTION_130_0();

  return sub_1C7458BF0();
}

uint64_t sub_1C74958C4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *(v6 + 712) = v5;

  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C74960B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[29] = a3;
  v4[30] = v3;
  v4[27] = a1;
  v4[28] = a2;
  v4[31] = *(type metadata accessor for TimeExtendedToken(0) - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7496188, 0, 0);
}

void sub_1C7496188()
{
  OUTLINED_FUNCTION_58_9();
  v146 = v0;
  static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(&unk_1F46AAA60, 1, v2, v3, v4, v5, v6, v7, v136, v139, v142, v143, v144, v145);
  v15 = v8;
  v16 = *(v8 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  v140 = v0;
  if (v16)
  {
    OUTLINED_FUNCTION_78_18(v8, v9, v10, v11, v12, v13, v14);
    v18 = 0;
    v19 = v142;
    v20 = v142[2];
    v21 = 2 * v20;
    do
    {
      v23 = *(v15 + v18 + 32);
      v22 = *(v15 + v18 + 40);
      v142 = v19;
      v24 = v19[3];
      v1 = v20 + 1;
      sub_1C75504FC();
      if (v20 >= v24 >> 1)
      {
        OUTLINED_FUNCTION_186();
        sub_1C6F7ED9C(v26, v27, v28, v29, v30, v31, v32);
        v19 = v142;
      }

      v19[2] = v1;
      v25 = &v19[v21];
      v25[4] = v23;
      v25[5] = v22;
      v21 += 2;
      v18 += 48;
      ++v20;
      --v16;
    }

    while (v16);

    v0 = v140;
    v17 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 280) = v19;
  static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(&unk_1F46AAA88, 1, v33, v34, v35, v36, v37, v38, v137, v140, v142, v143, v144, v145);
  v46 = v39;
  v47 = *(v39 + 16);
  if (v47)
  {
    v138 = v19;
    OUTLINED_FUNCTION_78_18(v39, v40, v41, v42, v43, v44, v45);
    v48 = 0;
    v49 = v142;
    v1 = v142[2];
    v50 = 16 * v1;
    do
    {
      v52 = *(v46 + v48 + 32);
      v51 = *(v46 + v48 + 40);
      v142 = v49;
      v53 = *(v49 + 24);
      sub_1C75504FC();
      if (v1 >= v53 >> 1)
      {
        sub_1C6F7ED9C(v53 > 1, v1 + 1, 1, v54, v55, v56, v57);
        v49 = v142;
      }

      *(v49 + 16) = v1 + 1;
      v58 = v49 + v50;
      *(v58 + 32) = v52;
      *(v58 + 40) = v51;
      v50 += 16;
      v48 += 48;
      ++v1;
      --v47;
    }

    while (v47);

    v0 = v141;
    v17 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v49 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 288) = v49;
  v59 = *(v0 + 216);
  *(v0 + 208) = v17;
  v60 = *(v59 + 16);
  *(v0 + 296) = v60;
  if (v60)
  {
    v61 = 0;
    v62 = *(v0 + 248);
    v63 = *(v62 + 80);
    *(v0 + 400) = v63;
    v64 = *(v62 + 72);
    *(v0 + 304) = v64;
    v65 = v17;
    while (1)
    {
      *(v0 + 320) = v65;
      *(v0 + 328) = v17;
      *(v0 + 312) = v61;
      v66 = *(v0 + 272);
      sub_1C721AB4C(v59 + ((v63 + 32) & ~v63) + v64 * v61, v66);
      v67 = *(v66 + 57);
      v68 = 0xE300000000000000;
      v69 = 7954788;
      switch(v67)
      {
        case 1:
          v69 = 0x61655968746E6F6DLL;
          v68 = 0xE900000000000072;
          break;
        case 2:

          goto LABEL_26;
        case 3:
          v69 = 0x596568547265766FLL;
          v70 = 1936875877;
          goto LABEL_24;
        case 4:
          v68 = 0xE600000000000000;
          v69 = 0x6E6F73616573;
          break;
        case 5:
          v68 = 0xE700000000000000;
          v69 = 0x796164696C6F68;
          break;
        case 6:
          v69 = 0x6D72657465646E75;
          v70 = 1684369001;
LABEL_24:
          v68 = v70 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        default:
          break;
      }

      v71 = OUTLINED_FUNCTION_55_33(v69, v68);

      if ((v71 & 1) == 0)
      {
        break;
      }

LABEL_26:
      v72 = *(v0 + 272);
      if ((*(v72 + 40) & 1) == 0)
      {
        v73 = *(v72 + 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = OUTLINED_FUNCTION_24_0();
          sub_1C6FB3408(v77, v78, v79, v65);
          v65 = v80;
        }

        v75 = *(v65 + 16);
        v74 = *(v65 + 24);
        if (v75 >= v74 >> 1)
        {
          v81 = OUTLINED_FUNCTION_15(v74);
          sub_1C6FB3408(v81, v75 + 1, 1, v65);
          v65 = v82;
        }

        *(v65 + 16) = v75 + 1;
        *(v65 + 8 * v75 + 32) = v73;
        v72 = *(v0 + 272);
        v17 = MEMORY[0x1E69E7CC0];
      }

      v1 = *(v0 + 296);
      v76 = *(v0 + 312) + 1;
      sub_1C7415AE8(v72);
      if (v76 == v1)
      {
        v19 = *(v0 + 280);
        goto LABEL_36;
      }

      v64 = *(v0 + 304);
      v61 = *(v0 + 312) + 1;
      LOBYTE(v63) = *(v0 + 400);
      v59 = *(v0 + 216);
    }

    switch(*(*(v0 + 272) + 57))
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 6:
        goto LABEL_62;
      case 5:

        goto LABEL_63;
      default:
        OUTLINED_FUNCTION_69_26();
LABEL_62:
        v129 = sub_1C7551DBC();

        if (v129)
        {
LABEL_63:
          OUTLINED_FUNCTION_25_47();
          v130 = swift_task_alloc();
          *(v0 + 352) = v130;
          *v130 = v0;
          OUTLINED_FUNCTION_1_141(v130);
        }

        else
        {
          OUTLINED_FUNCTION_24_50();
          sub_1C75504FC();
          v131 = swift_task_alloc();
          *(v0 + 384) = v131;
          *v131 = v0;
          OUTLINED_FUNCTION_2_131(v131);
        }

        OUTLINED_FUNCTION_51_2();

        sub_1C7458BF0();
        break;
    }
  }

  else
  {
    v65 = v17;
LABEL_36:

    v83 = &qword_1EDD0DFF8[1];
    if (*(v65 + 16) >= 3uLL)
    {
      v84 = OUTLINED_FUNCTION_36_41();
      OUTLINED_FUNCTION_11_2(v84);
      v19 = OUTLINED_FUNCTION_11_77(v85);
      if (qword_1EDD0ED88 != -1)
      {
        OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
      }

      v86 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v86, &dword_1EDD28D48);

      v87 = sub_1C754FEEC();
      v88 = sub_1C755118C();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = OUTLINED_FUNCTION_41_0();
        v90 = OUTLINED_FUNCTION_20_1();
        v142 = v90;
        *v89 = 136315138;

        v91 = MusicKeywordCompletion.description.getter();
        v93 = v92;

        v94 = sub_1C6F765A4(v91, v93, &v142);

        *(v89 + 4) = v94;
        _os_log_impl(&dword_1C6F5C000, v87, v88, "[curateKeywordsForExtendedTokens] OverTheYears: %s", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v90);
        v83 = &qword_1EDD0DFF8[1];
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      MEMORY[0x1CCA5D040](v95);
      v97 = *((*(v0 + 208) & 0xFFFFFFFFFFFFFF8) + 0x10);
      v96 = *((*(v0 + 208) & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (v97 >= v96 >> 1)
      {
        v133 = OUTLINED_FUNCTION_15(v96);
        OUTLINED_FUNCTION_116_16(v133, v97 + 1);
      }

      sub_1C7550BEC();
      v98 = MEMORY[0x1CCA5D090](v65, MEMORY[0x1E69E6530]);
      v100 = v99;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2171D8, &qword_1C7569540);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C755BAB0;
      *(inited + 32) = v98;
      *(inited + 40) = v100;
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
      v103 = OUTLINED_FUNCTION_11_2(v102);
      *(v103 + 16) = xmmword_1C7565670;
      *(v103 + 32) = v19;
      *(inited + 48) = v103;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0, &unk_1C756AF00);
      v104 = sub_1C75504DC();
      v105 = MEMORY[0x1E69E7CC0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB3268();
        v105 = v134;
      }

      v107 = *(v105 + 16);
      v106 = *(v105 + 24);
      v1 = v107 + 1;
      if (v107 >= v106 >> 1)
      {
        OUTLINED_FUNCTION_15(v106);
        OUTLINED_FUNCTION_186();
        sub_1C6FB3268();
        v105 = v135;
      }

      *(v105 + 16) = v1;
      *(v105 + 8 * v107 + 32) = v104;
    }

    v108 = *(v0 + 208);
    OUTLINED_FUNCTION_69_1();
    swift_bridgeObjectRetain_n();
    v109 = sub_1C71CC894(v108);
    OUTLINED_FUNCTION_40_50(v109, v110, v111, v112, v113, v114, v115, v116, v138, v141, v142);
    if (!v19)
    {
      OUTLINED_FUNCTION_69_1();
      swift_bridgeObjectRelease_n();

      *(v0 + 208) = v142;
      if (qword_1EDD0ED88 != -1)
      {
        OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
      }

      v118 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v118, &dword_1EDD28D48);
      v119 = sub_1C754FEEC();
      v120 = sub_1C755118C();
      if (OUTLINED_FUNCTION_39_44(v120))
      {
        v121 = OUTLINED_FUNCTION_41_0();
        v142 = OUTLINED_FUNCTION_20_1();
        v122 = OUTLINED_FUNCTION_119_16(4.8149e-34);

        v83 = MEMORY[0x1CCA5D090](v123, v122);

        OUTLINED_FUNCTION_120_12(v124, v125, &v142);
        OUTLINED_FUNCTION_118_13();
        *(v121 + 4) = v83;
        _os_log_impl(&dword_1C6F5C000, v119, v1, "TimeExtendedTokenKeywords: %s", v121, 0xCu);
        OUTLINED_FUNCTION_56_2();
        OUTLINED_FUNCTION_23_3();
      }

      OUTLINED_FUNCTION_43_39();
      v126 = *(type metadata accessor for StoryMusicCurationDiagnostics(0) + 32);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_53_37();
      *(v83 + v126) = v142;
      swift_endAccess();

      OUTLINED_FUNCTION_4_91();
      OUTLINED_FUNCTION_51_2();

      __asm { BRAA            X2, X16 }
    }

    OUTLINED_FUNCTION_51_2();
  }
}

uint64_t sub_1C7496AFC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 360) = v3;

  v4 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1C7496BE4()
{
  OUTLINED_FUNCTION_58_9();
  v100 = v1;
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
  }

  v3 = v1[45];
  v5 = v1[33];
  v4 = v1[34];
  v97 = sub_1C754FF1C();
  __swift_project_value_buffer(v97, &dword_1EDD28D48);
  sub_1C721AB4C(v4, v5);
  sub_1C75504FC();
  v6 = sub_1C754FEEC();
  v7 = sub_1C755118C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[45];
    v9 = v1[33];
    v3 = OUTLINED_FUNCTION_23_1();
    v99[0] = swift_slowAlloc();
    *v3 = 136315394;
    v10 = TimeExtendedToken.description.getter();
    v2 = v11;
    sub_1C7415AE8(v9);
    v12 = sub_1C6F765A4(v10, v2, v99);

    *(v3 + 4) = v12;
    *(v3 + 12) = 2080;
    v13 = type metadata accessor for MusicKeywordCompletion();
    v14 = MEMORY[0x1CCA5D090](v8, v13);
    v16 = sub_1C6F765A4(v14, v15, v99);

    *(v3 + 14) = v16;
    _os_log_impl(&dword_1C6F5C000, v6, v7, "[curateKeywordsForExtendedTokens] Holiday keywords for '%s': %s", v3, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
    v17 = v1[33];

    sub_1C7415AE8(v17);
  }

  inited = v1[45];
  if (inited >> 62)
  {
    v19 = sub_1C75516BC();
  }

  else
  {
    v19 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = &unk_1C7565000;
  if (v19)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1CCA5DDD0](0, v1[45]);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_76:
        OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
        goto LABEL_40;
      }

      v6 = *(v1[45] + 32);
    }

    MEMORY[0x1CCA5D040](v21);
    v23 = *((v1[26] & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((v1[26] & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (v23 >= v22 >> 1)
    {
      v90 = OUTLINED_FUNCTION_15(v22);
      OUTLINED_FUNCTION_116_16(v90, v23 + 1);
    }

    v24 = v1[42];
    v25 = v1[43];
    sub_1C7550BEC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2171D8, &qword_1C7569540);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    *(inited + 32) = v24;
    *(inited + 40) = v25;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
    v27 = OUTLINED_FUNCTION_11_2(v26);
    *(v27 + 16) = xmmword_1C7565670;
    *(v27 + 32) = v6;
    *(inited + 48) = v27;

    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0, &unk_1C756AF00);
    sub_1C75504DC();
    OUTLINED_FUNCTION_51();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = v1[41];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB3268();
      v3 = v91;
    }

    v30 = *(v3 + 16);
    v29 = *(v3 + 24);
    if (v30 >= v29 >> 1)
    {
      OUTLINED_FUNCTION_15(v29);
      OUTLINED_FUNCTION_186();
      sub_1C6FB3268();
      v3 = v92;
    }

    *(v3 + 16) = v30 + 1;
    *(v3 + 8 * v30 + 32) = inited;
  }

  else
  {

    v3 = v1[41];
  }

  OUTLINED_FUNCTION_23_55();
  v7 = v1[40];
LABEL_21:
  v31 = v1[34];
  while (1)
  {
    v0 = v1[37];
    v32 = v1[39] + 1;
    sub_1C7415AE8(v31);
    if (v32 == v0)
    {
      break;
    }

    OUTLINED_FUNCTION_33_45();
    v33 = *(v32 + 57);
    v34 = 0xE300000000000000;
    v35 = 7954788;
    switch(v33)
    {
      case 1:
        v35 = "ionType";
        v34 = 0xE900000000000072;
        break;
      case 2:

        goto LABEL_32;
      case 3:
        v35 = v2;
        v36 = 1936875877;
        goto LABEL_30;
      case 4:
        v34 = 0xE600000000000000;
        v35 = inited;
        break;
      case 5:
        v35 = OUTLINED_FUNCTION_72_25();
        break;
      case 6:
        v35 = v6;
        v36 = 1684369001;
LABEL_30:
        v34 = v36 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      default:
        break;
    }

    v20 = OUTLINED_FUNCTION_55_33(v35, v34);

    if ((v20 & 1) == 0)
    {
      v74 = 1918985593;
      switch(*(v1[34] + 57))
      {
        case 1:
          v74 = "ionType";
          goto LABEL_67;
        case 2:
          goto LABEL_67;
        case 3:
          v74 = v2;
          goto LABEL_67;
        case 4:
          v74 = inited;
          goto LABEL_67;
        case 5:

          goto LABEL_68;
        case 6:
          v74 = v6;
          goto LABEL_67;
        default:
          v74 = OUTLINED_FUNCTION_69_26();
LABEL_67:
          v86 = OUTLINED_FUNCTION_63_27(v74);

          if (v86)
          {
LABEL_68:
            OUTLINED_FUNCTION_25_47();
            v87 = swift_task_alloc();
            v1[44] = v87;
            *v87 = v1;
            OUTLINED_FUNCTION_1_141(v87);
          }

          else
          {
            OUTLINED_FUNCTION_24_50();
            sub_1C75504FC();
            v88 = swift_task_alloc();
            v1[48] = v88;
            *v88 = v1;
            OUTLINED_FUNCTION_2_131(v88);
          }

          OUTLINED_FUNCTION_51_2();

          sub_1C7458BF0();
          break;
      }

      return;
    }

LABEL_32:
    v31 = v1[34];
    if ((*(v31 + 40) & 1) == 0)
    {
      v20 = *(v31 + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB3408(v39, v40, v41, v7);
        v7 = v42;
      }

      v38 = *(v7 + 16);
      v37 = *(v7 + 24);
      if (v38 >= v37 >> 1)
      {
        v43 = OUTLINED_FUNCTION_41_23(v37);
        sub_1C6FB3408(v43, v44, v45, v7);
        v7 = v46;
      }

      *(v7 + 16) = v38 + 1;
      *(v7 + 8 * v38 + 32) = v20;
      goto LABEL_21;
    }
  }

  v2 = &unk_1C755E000;
  if (*(v7 + 16) < 3uLL)
  {
    goto LABEL_49;
  }

  v47 = OUTLINED_FUNCTION_36_41();
  OUTLINED_FUNCTION_11_2(v47);
  v6 = OUTLINED_FUNCTION_11_77(v48);
  if (qword_1EDD0ED88 != -1)
  {
    goto LABEL_76;
  }

LABEL_40:
  OUTLINED_FUNCTION_23_2(v97, &dword_1EDD28D48);

  v49 = sub_1C754FEEC();
  v50 = sub_1C755118C();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = OUTLINED_FUNCTION_41_0();
    v52 = OUTLINED_FUNCTION_20_1();
    v99[0] = v52;
    *v51 = 136315138;

    MusicKeywordCompletion.description.getter();
    OUTLINED_FUNCTION_98_6();

    OUTLINED_FUNCTION_121_9(v53, v54, v99);
    OUTLINED_FUNCTION_24_2();

    *(v51 + 4) = v6;
    OUTLINED_FUNCTION_114_15(&dword_1C6F5C000, v55, v56, "[curateKeywordsForExtendedTokens] OverTheYears: %s");
    __swift_destroy_boxed_opaque_existential_1(v52);
    v2 = &unk_1C755E000;
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v20 = &unk_1C7565000;

  MEMORY[0x1CCA5D040](v57);
  OUTLINED_FUNCTION_66_27();
  if (v59)
  {
    v93 = OUTLINED_FUNCTION_15(v58);
    OUTLINED_FUNCTION_116_16(v93, &v49->isa + 1);
  }

  sub_1C7550BEC();
  MEMORY[0x1CCA5D090](v7, MEMORY[0x1E69E6530]);
  OUTLINED_FUNCTION_98_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2171D8, &qword_1C7569540);
  v60 = swift_initStackObject();
  *(v60 + 16) = xmmword_1C755BAB0;
  *(v60 + 32) = v1 + 26;
  *(v60 + 40) = v0;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v62 = OUTLINED_FUNCTION_11_2(v61);
  OUTLINED_FUNCTION_56_32(v62, xmmword_1C7565670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0, &unk_1C756AF00);
  sub_1C75504DC();
  OUTLINED_FUNCTION_51();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_24_0();
    sub_1C6FB3268();
    v3 = v94;
  }

  OUTLINED_FUNCTION_68_24();
  if (v59)
  {
    OUTLINED_FUNCTION_41_23(v63);
    sub_1C6FB3268();
    v3 = v95;
  }

  *(v3 + 16) = v60;
  *(v3 + 8 * v0 + 32) = v1 + 26;
LABEL_49:
  v64 = v1[26];
  OUTLINED_FUNCTION_69_1();
  swift_bridgeObjectRetain_n();
  v65 = sub_1C71CC894(v64);
  OUTLINED_FUNCTION_40_50(v65, v66, v67, v68, v69, v70, v71, v72, v96, v97, v99[0]);
  if (!v6)
  {
    OUTLINED_FUNCTION_69_1();
    swift_bridgeObjectRelease_n();

    v1[26] = v99[0];
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
    }

    OUTLINED_FUNCTION_23_2(v98, &dword_1EDD28D48);
    v75 = sub_1C754FEEC();
    v76 = sub_1C755118C();
    if (OUTLINED_FUNCTION_39_44(v76))
    {
      v77 = OUTLINED_FUNCTION_41_0();
      v99[0] = OUTLINED_FUNCTION_20_1();
      v20 = OUTLINED_FUNCTION_117_12(COERCE_FLOAT(v2[350]));

      MEMORY[0x1CCA5D090](v78, v20);
      OUTLINED_FUNCTION_77_17();
      OUTLINED_FUNCTION_120_12(v79, v80, v99);
      OUTLINED_FUNCTION_118_13();
      *(v77 + 4) = v20;
      OUTLINED_FUNCTION_113(&dword_1C6F5C000, v81, v82, "TimeExtendedTokenKeywords: %s");
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_43_39();
    v83 = *(type metadata accessor for StoryMusicCurationDiagnostics(0) + 32);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_53_37();
    *(v20 + v83) = v99[0];
    swift_endAccess();

    OUTLINED_FUNCTION_20_61();
    OUTLINED_FUNCTION_51_2();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_51_2();
}

uint64_t sub_1C74975C0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 392) = v3;

  v4 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C74976A8()
{
  v90 = v0;
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
  }

  v5 = v0[49];
  v6 = v0[34];
  v7 = v0[32];
  v88 = sub_1C754FF1C();
  __swift_project_value_buffer(v88, &dword_1EDD28D48);
  sub_1C721AB4C(v6, v7);
  sub_1C75504FC();
  v8 = sub_1C754FEEC();
  LOBYTE(v7) = sub_1C755118C();

  if (os_log_type_enabled(v8, v7))
  {
    v9 = v0[49];
    v10 = v0[32];
    OUTLINED_FUNCTION_23_1();
    v89[0] = OUTLINED_FUNCTION_60_11();
    *v5 = 136315394;
    v3 = *v10;
    v4 = v10[1];
    sub_1C75504FC();
    sub_1C7415AE8(v10);
    v2 = sub_1C6F765A4(v3, v4, v89);

    v11 = OUTLINED_FUNCTION_57_31();
    v12 = MEMORY[0x1CCA5D090](v9, v11);
    v1 = v13;
    sub_1C6F765A4(v12, v13, v89);
    OUTLINED_FUNCTION_44_34();

    *(v5 + 14) = v2;
    OUTLINED_FUNCTION_35_30();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {
    v19 = v0[32];

    sub_1C7415AE8(v19);
  }

  v20 = v0[49];
  v22 = v0[46];
  v21 = v0[47];
  v23 = sub_1C75504FC();
  sub_1C6FD2F68(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2171D8, &qword_1C7569540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = v22;
  *(inited + 40) = v21;
  *(inited + 48) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0, &unk_1C756AF00);
  v25 = sub_1C75504DC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v0[41];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_24_0();
    sub_1C6FB3268();
    v27 = v83;
  }

  OUTLINED_FUNCTION_68_24();
  if (v29)
  {
    OUTLINED_FUNCTION_41_23(v28);
    sub_1C6FB3268();
    v27 = v84;
  }

  OUTLINED_FUNCTION_23_55();
  *(v27 + 16) = v1;
  *(v27 + 8 * v21 + 32) = v25;
  v30 = v0[40];
LABEL_11:
  v31 = v0[34];
  while (1)
  {
    v32 = v0[37];
    v33 = v0[39] + 1;
    sub_1C7415AE8(v31);
    if (v33 == v32)
    {

      v48 = &unk_1C755E000;
      if (*(v30 + 16) >= 3uLL)
      {
        v49 = OUTLINED_FUNCTION_36_41();
        OUTLINED_FUNCTION_11_2(v49);
        v51 = OUTLINED_FUNCTION_11_77(v50);
        if (qword_1EDD0ED88 != -1)
        {
          OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
        }

        OUTLINED_FUNCTION_23_2(v88, &dword_1EDD28D48);

        v52 = sub_1C754FEEC();
        v2 = sub_1C755118C();

        if (os_log_type_enabled(v52, v2))
        {
          v53 = OUTLINED_FUNCTION_41_0();
          v54 = OUTLINED_FUNCTION_20_1();
          v89[0] = v54;
          *v53 = 136315138;

          MusicKeywordCompletion.description.getter();
          OUTLINED_FUNCTION_98_6();

          OUTLINED_FUNCTION_121_9(v55, v56, v89);
          OUTLINED_FUNCTION_24_2();

          *(v53 + 4) = v51;
          OUTLINED_FUNCTION_114_15(&dword_1C6F5C000, v57, v58, "[curateKeywordsForExtendedTokens] OverTheYears: %s");
          __swift_destroy_boxed_opaque_existential_1(v54);
          OUTLINED_FUNCTION_109();
          v48 = &unk_1C755E000;
          OUTLINED_FUNCTION_109();
        }

        MEMORY[0x1CCA5D040](v59);
        OUTLINED_FUNCTION_66_27();
        if (v29)
        {
          v85 = OUTLINED_FUNCTION_15(v60);
          OUTLINED_FUNCTION_116_16(v85, &v52->isa + 1);
        }

        sub_1C7550BEC();
        MEMORY[0x1CCA5D090](v30, MEMORY[0x1E69E6530]);
        OUTLINED_FUNCTION_98_6();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2171D8, &qword_1C7569540);
        v61 = swift_initStackObject();
        *(v61 + 16) = xmmword_1C755BAB0;
        *(v61 + 32) = v0 + 26;
        *(v61 + 40) = v32;
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
        v63 = OUTLINED_FUNCTION_11_2(v62);
        OUTLINED_FUNCTION_56_32(v63, xmmword_1C7565670);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0, &unk_1C756AF00);
        sub_1C75504DC();
        OUTLINED_FUNCTION_51();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB3268();
          v27 = v86;
        }

        OUTLINED_FUNCTION_68_24();
        if (v29)
        {
          OUTLINED_FUNCTION_41_23(v64);
          sub_1C6FB3268();
          v27 = v87;
        }

        *(v27 + 16) = v61;
        *(v27 + 8 * v32 + 32) = v0 + 26;
      }

      v65 = v0[26];
      OUTLINED_FUNCTION_69_1();
      swift_bridgeObjectRetain_n();
      v89[0] = sub_1C71CC894(v65);
      sub_1C7493138(v89);
      OUTLINED_FUNCTION_69_1();
      swift_bridgeObjectRelease_n();

      v0[26] = v89[0];
      if (qword_1EDD0ED88 != -1)
      {
        OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
      }

      OUTLINED_FUNCTION_23_2(v88, &dword_1EDD28D48);
      v67 = sub_1C754FEEC();
      v68 = sub_1C755118C();
      if (OUTLINED_FUNCTION_39_44(v68))
      {
        v69 = OUTLINED_FUNCTION_41_0();
        v89[0] = OUTLINED_FUNCTION_20_1();
        v2 = OUTLINED_FUNCTION_117_12(COERCE_FLOAT(v48[350]));

        MEMORY[0x1CCA5D090](v70, v2);
        OUTLINED_FUNCTION_77_17();
        OUTLINED_FUNCTION_120_12(v71, v72, v89);
        OUTLINED_FUNCTION_118_13();
        *(v69 + 4) = v2;
        OUTLINED_FUNCTION_113(&dword_1C6F5C000, v73, v74, "TimeExtendedTokenKeywords: %s");
        OUTLINED_FUNCTION_56_2();
        OUTLINED_FUNCTION_109();
      }

      OUTLINED_FUNCTION_43_39();
      v75 = *(type metadata accessor for StoryMusicCurationDiagnostics(0) + 32);
      swift_isUniquelyReferenced_nonNull_native();
      v89[0] = *(v2 + v75);
      sub_1C6FC8A40();
      *(v2 + v75) = v89[0];
      swift_endAccess();

      OUTLINED_FUNCTION_20_61();
      OUTLINED_FUNCTION_12_1();

      __asm { BRAA            X2, X16 }
    }

    OUTLINED_FUNCTION_33_45();
    v34 = *(v33 + 57);
    v35 = 0xE300000000000000;
    v36 = 7954788;
    switch(v34)
    {
      case 1:
        v36 = v3;
        v35 = 0xE900000000000072;
        break;
      case 2:

        goto LABEL_22;
      case 3:
        v36 = v4;
        v37 = 1936875877;
        goto LABEL_20;
      case 4:
        v35 = 0xE600000000000000;
        v36 = inited;
        break;
      case 5:
        v36 = OUTLINED_FUNCTION_72_25();
        break;
      case 6:
        v36 = v20;
        v37 = 1684369001;
LABEL_20:
        v35 = v37 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      default:
        break;
    }

    v2 = OUTLINED_FUNCTION_55_33(v36, v35);

    if ((v2 & 1) == 0)
    {
      break;
    }

LABEL_22:
    v31 = v0[34];
    if ((*(v31 + 40) & 1) == 0)
    {
      v2 = *(v31 + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB3408(v40, v41, v42, v30);
        v30 = v43;
      }

      v39 = *(v30 + 16);
      v38 = *(v30 + 24);
      if (v39 >= v38 >> 1)
      {
        v44 = OUTLINED_FUNCTION_41_23(v38);
        sub_1C6FB3408(v44, v45, v46, v30);
        v30 = v47;
      }

      *(v30 + 16) = v39 + 1;
      *(v30 + 8 * v39 + 32) = v2;
      goto LABEL_11;
    }
  }

  v66 = 1918985593;
  switch(*(v0[34] + 57))
  {
    case 1:
      v66 = v3;
      goto LABEL_55;
    case 2:
      goto LABEL_55;
    case 3:
      v66 = v4;
      goto LABEL_55;
    case 4:
      v66 = inited;
      goto LABEL_55;
    case 5:

      goto LABEL_56;
    case 6:
      v66 = v20;
      goto LABEL_55;
    default:
      v66 = OUTLINED_FUNCTION_69_26();
LABEL_55:
      v78 = OUTLINED_FUNCTION_63_27(v66);

      if (v78)
      {
LABEL_56:
        OUTLINED_FUNCTION_25_47();
        v79 = swift_task_alloc();
        v0[44] = v79;
        *v79 = v0;
        OUTLINED_FUNCTION_1_141(v79);
      }

      else
      {
        OUTLINED_FUNCTION_24_50();
        sub_1C75504FC();
        v80 = swift_task_alloc();
        v0[48] = v80;
        *v80 = v0;
        OUTLINED_FUNCTION_2_131(v80);
      }

      OUTLINED_FUNCTION_12_1();

      return sub_1C7458BF0();
  }
}

uint64_t sub_1C7497F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C7497FB4, 0, 0);
}

uint64_t sub_1C7497FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = v8;
  static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(&unk_1F46AAAB0, 1, a3, a4, a5, a6, a7, a8, v55, v57[0], v57[1], v57[2], v57[3], v57[4]);
  v17 = v10;
  v18 = *(v10 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v56 = v8;
    v57[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_65_23(v10, v11, v12, v13, v14, v15, v16);
    v9 = 0;
    v20 = v57[0];
    v21 = *(v57[0] + 16);
    v22 = 16 * v21;
    do
    {
      v23 = v17;
      v25 = *(v17 + v9 + 32);
      v24 = *(v17 + v9 + 40);
      v57[0] = v20;
      v26 = *(v20 + 24);
      sub_1C75504FC();
      if (v21 >= v26 >> 1)
      {
        sub_1C6F7ED9C(v26 > 1, v21 + 1, 1, v27, v28, v29, v30);
        v20 = v57[0];
      }

      *(v20 + 16) = v21 + 1;
      v31 = v20 + v22;
      *(v31 + 32) = v25;
      *(v31 + 40) = v24;
      v22 += 16;
      v9 += 48;
      ++v21;
      --v18;
      v17 = v23;
    }

    while (v18);

    v8 = v56;
    v19 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  v8[17] = v20;
  v32 = v8[13];
  v8[12] = v19;
  v33 = v32[2];
  v8[18] = v33;
  if (!v33)
  {

    v37 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_69_1();
    swift_bridgeObjectRetain_n();
    v57[0] = sub_1C71CC894(v37);
    sub_1C7493138(v57);
    swift_bridgeObjectRelease_n();
    v8[12] = v57[0];
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
    }

    v38 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v38, &dword_1EDD28D48);
    v39 = sub_1C754FEEC();
    v40 = sub_1C755118C();
    if (OUTLINED_FUNCTION_32(v40))
    {
      v41 = OUTLINED_FUNCTION_41_0();
      v42 = OUTLINED_FUNCTION_20_1();
      v57[0] = v42;
      v43 = OUTLINED_FUNCTION_119_16(4.8149e-34);

      MEMORY[0x1CCA5D090](v44, v43);
      OUTLINED_FUNCTION_74_17();
      v45 = sub_1C6F765A4(v43, v9, v57);

      *(v41 + 4) = v45;
      OUTLINED_FUNCTION_35_30();
      _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_23_3();
    }

    v51 = v8[16] + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    OUTLINED_FUNCTION_20_18(v51, (v8 + 9));
    v52 = *(type metadata accessor for StoryMusicCurationDiagnostics(0) + 32);
    swift_isUniquelyReferenced_nonNull_native();
    v57[0] = *(v51 + v52);
    sub_1C6FC8A40();
    *(v51 + v52) = v57[0];
    swift_endAccess();
    OUTLINED_FUNCTION_4_91();
    OUTLINED_FUNCTION_17_1();

    __asm { BRAA            X2, X16 }
  }

  v8[20] = v19;
  v8[21] = v19;
  v8[19] = 0;
  OUTLINED_FUNCTION_47_27(v32);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v34 = swift_task_alloc();
  v8[26] = v34;
  *v34 = v8;
  OUTLINED_FUNCTION_16_69(v34);
  OUTLINED_FUNCTION_17_1();

  return sub_1C7458BF0();
}

uint64_t sub_1C7498348()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = v3;

  v4 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C7498430()
{
  v36 = v0;
  v2 = v0[27];
  if (v2 >> 62)
  {
    if (sub_1C75516BC())
    {
      goto LABEL_3;
    }

LABEL_14:

    v14 = v0[20];
    v8 = v0[21];
    goto LABEL_15;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1CCA5DDD0](0, v0[27]);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }
  }

  MEMORY[0x1CCA5D040](v3);
  OUTLINED_FUNCTION_66_27();
  if (v5)
  {
    OUTLINED_FUNCTION_15(v4);
    sub_1C7550B9C();
  }

  v7 = v0[22];
  v6 = v0[23];
  sub_1C7550BEC();
  v8 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2171D8, &qword_1C7569540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = v7;
  *(inited + 40) = v6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v11 = OUTLINED_FUNCTION_11_2(v10);
  OUTLINED_FUNCTION_56_32(v11, xmmword_1C7565670);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0, &unk_1C756AF00);
  v12 = sub_1C75504DC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v0[20];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_24_0();
    sub_1C6FB3268();
    v14 = v33;
  }

  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  v1 = v16 + 1;
  if (v16 >= v15 >> 1)
  {
    OUTLINED_FUNCTION_15(v15);
    OUTLINED_FUNCTION_186();
    sub_1C6FB3268();
    v14 = v34;
  }

  *(v14 + 16) = v1;
  *(v14 + 8 * v16 + 32) = v12;
LABEL_15:
  v17 = v0[19] + 1;
  if (v17 == v0[18])
  {

    OUTLINED_FUNCTION_69_1();
    swift_bridgeObjectRetain_n();
    v35[0] = sub_1C71CC894(v8);
    sub_1C7493138(v35);
    OUTLINED_FUNCTION_69_1();
    swift_bridgeObjectRelease_n();
    v0[12] = v35[0];
    if (qword_1EDD0ED88 == -1)
    {
LABEL_21:
      v21 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v21, &dword_1EDD28D48);
      v22 = sub_1C754FEEC();
      v23 = sub_1C755118C();
      if (OUTLINED_FUNCTION_39_44(v23))
      {
        v24 = OUTLINED_FUNCTION_41_0();
        v35[0] = OUTLINED_FUNCTION_20_1();
        *v24 = 136315138;
        v25 = type metadata accessor for MusicKeywordCompletion();

        MEMORY[0x1CCA5D090](v26, v25);
        OUTLINED_FUNCTION_77_17();
        OUTLINED_FUNCTION_120_12(v27, v28, v35);
        OUTLINED_FUNCTION_118_13();
        *(v24 + 4) = v25;
        _os_log_impl(&dword_1C6F5C000, v22, v1, "[curateKeywordsForExtendedTokens] LocationExtendedTokenKeywords: %s", v24, 0xCu);
        OUTLINED_FUNCTION_56_2();
        OUTLINED_FUNCTION_109();
      }

      v29 = v0[16] + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
      OUTLINED_FUNCTION_20_18(v29, (v0 + 9));
      v30 = *(type metadata accessor for StoryMusicCurationDiagnostics(0) + 32);
      swift_isUniquelyReferenced_nonNull_native();
      v35[0] = *(v29 + v30);
      sub_1C6FC8A40();
      *(v29 + v30) = v35[0];
      swift_endAccess();
      OUTLINED_FUNCTION_20_61();
      OUTLINED_FUNCTION_20_3();

      __asm { BRAA            X2, X16 }
    }

LABEL_28:
    OUTLINED_FUNCTION_0_46(&qword_1EDD0ED88);
    goto LABEL_21;
  }

  v0[20] = v14;
  v0[21] = v8;
  v0[19] = v17;
  OUTLINED_FUNCTION_47_27((v0[13] + 56 * v17));
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v18 = swift_task_alloc();
  v0[26] = v18;
  *v18 = v0;
  OUTLINED_FUNCTION_16_69(v18);
  OUTLINED_FUNCTION_20_3();

  return sub_1C7458BF0();
}

void sub_1C74988C8(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C7551D7C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C739D494(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C74989A8(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C70CCF4C(0, v3, 1, a1);
  }
}

void sub_1C74989A8(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v78 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*(*a3 + 8 * v6) + 32);
        v10 = *(*(*a3 + 8 * v8) + 32);
        v11 = v6 + 2;
        v12 = v10;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (v12 >= *(*(*a3 + 8 * v11++) + 32));
          v12 = *(*(*a3 + 8 * v13) + 32);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (*(*v26 + 32) >= *(v24 + 32))
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v80 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB17EC(v73, v74, v75, v7);
        v7 = v76;
      }

      v30 = v7[2];
      v29 = v7[3];
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        sub_1C6FB17EC(v29 > 1, v30 + 1, 1, v7);
        v7 = v77;
      }

      v7[2] = v31;
      v32 = v7 + 4;
      v33 = &v7[2 * v30 + 4];
      *v33 = v6;
      v33[1] = v8;
      v81 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v30)
      {
        while (1)
        {
          v34 = v31 - 1;
          v35 = &v32[2 * v31 - 2];
          v36 = &v7[2 * v31];
          if (v31 >= 4)
          {
            break;
          }

          if (v31 == 3)
          {
            v37 = v7[4];
            v38 = v7[5];
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_56:
            if (v40)
            {
              goto LABEL_96;
            }

            v52 = *v36;
            v51 = v36[1];
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            v55 = v53;
            if (v53)
            {
              goto LABEL_99;
            }

            v56 = v35[1];
            v57 = v56 - *v35;
            if (__OFSUB__(v56, *v35))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v54, v57))
            {
              goto LABEL_104;
            }

            if (v54 + v57 >= v39)
            {
              if (v39 < v57)
              {
                v34 = v31 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v31 < 2)
          {
            goto LABEL_98;
          }

          v59 = *v36;
          v58 = v36[1];
          v47 = __OFSUB__(v58, v59);
          v54 = v58 - v59;
          v55 = v47;
LABEL_71:
          if (v55)
          {
            goto LABEL_101;
          }

          v61 = *v35;
          v60 = v35[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_103;
          }

          if (v62 < v54)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v34 - 1 >= v31)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v66 = &v32[2 * v34 - 2];
          v67 = *v66;
          v68 = &v32[2 * v34];
          v69 = *(v68 + 1);
          sub_1C70CD59C((*a3 + 8 * *v66), (*a3 + 8 * *v68), (*a3 + 8 * v69), v81);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v69 < v67)
          {
            goto LABEL_91;
          }

          v70 = v7;
          v71 = v7[2];
          if (v34 > v71)
          {
            goto LABEL_92;
          }

          *v66 = v67;
          v66[1] = v69;
          if (v34 >= v71)
          {
            goto LABEL_93;
          }

          v31 = v71 - 1;
          sub_1C7423CF4(v68 + 16, v71 - 1 - v34, &v32[2 * v34]);
          v70[2] = v71 - 1;
          v72 = v71 > 2;
          v7 = v70;
          if (!v72)
          {
            goto LABEL_85;
          }
        }

        v41 = &v32[2 * v31];
        v42 = *(v41 - 8);
        v43 = *(v41 - 7);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_94;
        }

        v46 = *(v41 - 6);
        v45 = *(v41 - 5);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_95;
        }

        v48 = v36[1];
        v49 = v48 - *v36;
        if (__OFSUB__(v48, *v36))
        {
          goto LABEL_97;
        }

        v47 = __OFADD__(v39, v49);
        v50 = v39 + v49;
        if (v47)
        {
          goto LABEL_100;
        }

        if (v50 >= v44)
        {
          v64 = *v35;
          v63 = v35[1];
          v47 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v47)
          {
            goto LABEL_105;
          }

          if (v39 < v65)
          {
            v34 = v31 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v80;
      a4 = v78;
      if (v80 >= v5)
      {
        v83 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_1C70CD470(&v83, *result, a3);
LABEL_89:
}

void OUTLINED_FUNCTION_24_50()
{
  v1 = v0[34];
  v0[46] = *v1;
  v0[47] = v1[1];
}

uint64_t OUTLINED_FUNCTION_40_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a11 = a1;

  return sub_1C7493138(&a11);
}

double OUTLINED_FUNCTION_43_39()
{

  swift_beginAccess();
  return result;
}

void OUTLINED_FUNCTION_47_27(void *a1@<X8>)
{
  v1[22] = a1[4];
  v1[23] = a1[5];
  v1[24] = a1[7];
  v1[25] = a1[10];
}

uint64_t OUTLINED_FUNCTION_53_37()
{

  return sub_1C6FC8A40();
}

uint64_t OUTLINED_FUNCTION_54_34()
{
  v2 = *(v0 + 104);

  return sub_1C6FD2F68(v2);
}

uint64_t OUTLINED_FUNCTION_55_33(uint64_t a1, uint64_t a2)
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_56_32(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;
  *(v3 + 48) = a1;
}

uint64_t OUTLINED_FUNCTION_62_27(uint64_t a1)
{

  return sub_1C755195C();
}

uint64_t OUTLINED_FUNCTION_63_27(uint64_t a1)
{

  return sub_1C7551DBC();
}

double OUTLINED_FUNCTION_74_17()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_76_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  a20 = a1;

  return sub_1C7493138(&a20);
}

double OUTLINED_FUNCTION_77_17()
{

  return result;
}

void OUTLINED_FUNCTION_78_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_1C6F7ED9C(0, v7, 0, a4, a5, a6, a7);
}

uint64_t OUTLINED_FUNCTION_80_17()
{

  return sub_1C6FB6304();
}

uint64_t OUTLINED_FUNCTION_81_24()
{

  return sub_1C75504FC();
}

void OUTLINED_FUNCTION_114_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_115_16(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v4;
  a1[2].n128_u64[1] = v3;
  a1[3].n128_u64[0] = v2;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_116_16(uint64_t a1, uint64_t a2)
{

  return sub_1C7550B9C();
}

uint64_t OUTLINED_FUNCTION_117_12(float a1)
{
  *v1 = a1;

  return type metadata accessor for MusicKeywordCompletion();
}

uint64_t OUTLINED_FUNCTION_118_13()
{
}

uint64_t OUTLINED_FUNCTION_119_16(float a1)
{
  *v1 = a1;

  return type metadata accessor for MusicKeywordCompletion();
}

uint64_t OUTLINED_FUNCTION_120_12(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1C6F765A4(v3, v4, a3);
}

uint64_t OUTLINED_FUNCTION_121_9(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1C6F765A4(v4, v3, a3);
}

void sub_1C74992D4(uint64_t result, void *a2)
{
  v5 = 0;
  v6 = *(result + 16);
  v7 = MEMORY[0x1E69E7CC0];
  while (v6 != v5)
  {
    if (v5 >= v6)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v8 = *(sub_1C754DF6C() - 8);
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_15;
    }

    sub_1C749D260(result + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v5, a2, &v15);
    if (v2)
    {

      return;
    }

    v10 = v16;
    ++v5;
    if (v16)
    {
      v17 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v7 = v13;
      }

      v11 = *(v7 + 16);
      if (v11 >= *(v7 + 24) >> 1)
      {
        sub_1C6FB1814();
        v7 = v14;
      }

      *(v7 + 16) = v11 + 1;
      v12 = v7 + 16 * v11;
      *(v12 + 32) = v17;
      *(v12 + 40) = v10;
      v5 = v9;
    }
  }
}

uint64_t sub_1C7499448(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C7423D10();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C749E05C(v6);
  return sub_1C755193C();
}

uint64_t sub_1C74994C4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422C0C();
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1C75504FC();
  sub_1C749E13C(v8, a2);
  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

void sub_1C7499560(void *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0, &qword_1C755BE50) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422C24();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C749E284(v6);
  *a1 = v3;
}

void sub_1C7499614(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4, void (*a5)(char *, int64_t, char *))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v12[0] = v10 + 32;
  v12[1] = v11;
  sub_1C749E3CC(v12, a3, a4, a5);
  *a1 = v10;
}

uint64_t PersonalTraitGenerator.AssetClusterWithSamples.init(assetUUIDs:sampledAssetUUIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void *sub_1C7499708(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  v2[15] = a2;
  v2[16] = 0;
  v2[14] = a1;
  return v2;
}

uint64_t sub_1C7499748(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_8_93();
}

uint64_t sub_1C7499760()
{
  v48 = v0;
  sub_1C7499C20();
  sub_1C7033F04(*(v0 + 16), v1);
  v3 = v2;
  v5 = v4;
  if (v4)
  {
    sub_1C7551DEC();
    swift_unknownObjectRetain_n();
    v8 = swift_dynamicCastClass();
    if (!v8)
    {
      swift_unknownObjectRelease();
      v8 = MEMORY[0x1E69E7CC0];
    }

    v9 = *(v8 + 16);

    if (__OFSUB__(v5 >> 1, v3))
    {
      goto LABEL_42;
    }

    if (v9 != (v5 >> 1) - v3)
    {
      goto LABEL_43;
    }

    v7 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v7)
    {
      goto LABEL_10;
    }

    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  while (1)
  {
    sub_1C739C4D0();
    v7 = v6;
LABEL_9:
    swift_unknownObjectRelease();
LABEL_10:
    v10 = *(v7 + 16);
    v45 = v0;
    if (!v10)
    {

      v12 = MEMORY[0x1E69E7CC0];
      goto LABEL_28;
    }

    v11 = *(v0 + 24);
    v47 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_11_78();
    sub_1C716DFEC();
    if ((v11 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_unknownObjectRelease();
  }

  v44 = *(v0 + 24);
  v12 = v47;
  v13 = 32;
  do
  {
    v14 = *(v0 + 24);
    v15 = v7;
    v16 = *(v7 + v13);
    v17 = v16[2];
    if (v17 < v14)
    {
      v14 = v16[2];
    }

    if (v44)
    {
      v18 = v14;
    }

    else
    {
      v18 = 0;
    }

    if (v17 == v18)
    {
      sub_1C75504FC();
      v19 = v16;
    }

    else if (v18)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v19 = swift_allocObject();
      _swift_stdlib_malloc_size(v19);
      OUTLINED_FUNCTION_27_4();
      v19[2] = v18;
      v19[3] = v20;
      swift_arrayInitWithCopy();
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    v47 = v12;
    v22 = v12[2];
    v21 = v12[3];
    sub_1C75504FC();
    if (v22 >= v21 >> 1)
    {
      OUTLINED_FUNCTION_186();
      sub_1C716DFEC();
      v12 = v47;
    }

    v12[2] = v22 + 1;
    v23 = &v12[2 * v22];
    v23[4] = v16;
    v23[5] = v19;
    v13 += 8;
    --v10;
    v0 = v45;
    v7 = v15;
  }

  while (v10);

LABEL_28:
  if (qword_1EC2141A0 != -1)
  {
    OUTLINED_FUNCTION_7_100();
    swift_once();
  }

  v24 = sub_1C754FF1C();
  __swift_project_value_buffer(v24, qword_1EC21C418);
  sub_1C75504FC();
  v25 = sub_1C754FEEC();
  v26 = sub_1C75511BC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    v46 = v28;
    *v27 = 136315138;
    v30 = v12[2];
    v31 = MEMORY[0x1E69E7CC0];
    if (v30)
    {
      v43 = v28;
      v47 = MEMORY[0x1E69E7CC0];
      sub_1C716D5B0(0, v30, 0);
      v31 = v47;
      v32 = v47[2];
      v33 = v12 + 5;
      do
      {
        v34 = *v33;
        v47 = v31;
        v35 = v31[3];
        sub_1C75504FC();
        if (v32 >= v35 >> 1)
        {
          sub_1C716D5B0(v35 > 1, v32 + 1, 1);
          v31 = v47;
        }

        v31[2] = v32 + 1;
        v31[v32 + 4] = v34;
        v33 += 2;
        ++v32;
        --v30;
      }

      while (v30);
      v29 = v43;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    v37 = MEMORY[0x1CCA5D090](v31, v36);
    v39 = v38;

    v40 = sub_1C6F765A4(v37, v39, &v46);

    *(v27 + 4) = v40;
    _os_log_impl(&dword_1C6F5C000, v25, v26, "Sampled representative assets per cluster: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  OUTLINED_FUNCTION_116();

  return v41(v12);
}

void sub_1C7499C20()
{
  v221[1] = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216F50, &unk_1C756D790);
  v2 = OUTLINED_FUNCTION_76(v1);
  MEMORY[0x1EEE9AC00](v2);
  v208 = &v190 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A30, &unk_1C75687E0);
  v5 = OUTLINED_FUNCTION_76(v4);
  MEMORY[0x1EEE9AC00](v5);
  v214 = &v190 - v6;
  OUTLINED_FUNCTION_37_3();
  v217 = sub_1C754DFFC();
  OUTLINED_FUNCTION_3_0();
  v211 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  v216 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_140_1();
  v209 = v12;
  OUTLINED_FUNCTION_37_3();
  v215 = sub_1C754EF5C();
  OUTLINED_FUNCTION_3_0();
  v213 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v210 = &v190 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_37_3();
  sub_1C754EFBC();
  OUTLINED_FUNCTION_3_0();
  v206 = v16;
  v207 = v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_78();
  v20 = (v18 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v190 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v190 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  v28 = OUTLINED_FUNCTION_76(v27);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v190 - v29;
  v31 = sub_1C754EFDC();
  OUTLINED_FUNCTION_3_0();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v190 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_140_1();
  if (*(v0 + 128))
  {
    sub_1C75504FC();
    return;
  }

  v200 = v42;
  v201 = v41;
  v195 = v33;
  v196 = v31;
  v197 = v36;
  v198 = v30;
  v204 = v0;
  v191 = v23;
  v192 = v20;
  v199 = v40;
  v203 = v39;
  v205 = v26;
  if (qword_1EC2141A0 != -1)
  {
LABEL_76:
    OUTLINED_FUNCTION_7_100();
    swift_once();
  }

  v43 = sub_1C754FF1C();
  v44 = __swift_project_value_buffer(v43, qword_1EC21C418);
  v45 = v204;

  v193 = v44;
  v46 = sub_1C754FEEC();
  v47 = sub_1C75511BC();
  v48 = OUTLINED_FUNCTION_7_0(v47);
  v49 = v212;
  v51 = v214;
  v50 = v215;
  if (v48)
  {
    v52 = swift_slowAlloc();
    *v52 = 134217984;
    *(v52 + 4) = *(*(v45 + 112) + 16);

    _os_log_impl(&dword_1C6F5C000, v46, v44, "Visual Clustering %ld assets", v52, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  if (qword_1EC214198 != -1)
  {
    swift_once();
  }

  v53 = qword_1EC21C410;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v54 = v53;
  v202 = PerformanceMeasure.init(name:log:)();
  v55 = objc_opt_self();
  v56 = [*(v45 + 120) photoLibraryURL];
  v57 = v200;
  sub_1C754DCCC();

  v58 = sub_1C754DC8C();
  v59 = v201;
  v60 = *(v201 + 8);
  v61 = v57;
  v62 = v203;
  v200 = v201 + 8;
  v194 = v60;
  v60(v61, v203);
  v221[0] = 0;
  v63 = [v55 requestVUIndexURLForPhotoLibraryURL:v58 error:v221];

  v64 = v221[0];
  if (!v63)
  {
    v70 = v221[0];
    sub_1C754DBEC();

    swift_willThrow();
    v71 = v193;
    v72 = sub_1C754FEEC();
    v73 = sub_1C755119C();
    if (OUTLINED_FUNCTION_7_0(v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_1C6F5C000, v72, v71, "Unable to acquire access to the VU Index.", v74, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    swift_willThrow();
    goto LABEL_15;
  }

  v65 = v199;
  sub_1C754DCCC();
  v66 = v64;

  (*(v195 + 104))(v197, *MEMORY[0x1E69E0608], v196);
  v67 = v198;
  (*(v59 + 16))(v198, v65, v62);
  __swift_storeEnumTagSinglePayload(v67, 0, 1, v62);
  sub_1C754EFFC();
  swift_allocObject();
  v68 = sub_1C754EFCC();
  if (v49)
  {
    OUTLINED_FUNCTION_9_93();
    v69();
LABEL_15:

    return;
  }

  v196 = v68;
  v212 = 0;
  (*(v213 + 104))(v210, *MEMORY[0x1E69E05B8], v50);
  v75 = 0;
  v76 = *(v204 + 112);
  v77 = *(v76 + 16);
  v201 = v211 + 32;
  v78 = MEMORY[0x1E69E7CC0];
  v79 = (v76 + 40);
  v198 = (v76 + 40);
LABEL_17:
  v80 = &v79[16 * v75];
  while (v77 != v75)
  {
    if (v75 >= *(v76 + 16))
    {
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    sub_1C75504FC();
    sub_1C754DF7C();

    if (__swift_getEnumTagSinglePayload(v51, 1, v217) != 1)
    {
      v197 = *v201;
      v197(v209, v51, v217);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB2B50(v83, v84, v85, v78);
        v78 = v86;
      }

      v82 = *(v78 + 16);
      v81 = *(v78 + 24);
      if (v82 >= v81 >> 1)
      {
        OUTLINED_FUNCTION_15(v81);
        OUTLINED_FUNCTION_186();
        sub_1C6FB2B50(v87, v88, v89, v78);
        v78 = v90;
      }

      ++v75;
      *(v78 + 16) = v82 + 1;
      v197((v78 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v82), v209, v217);
      v79 = v198;
      goto LABEL_17;
    }

    sub_1C7030CDC(v51, &unk_1EC217A30, &unk_1C75687E0);
    v80 += 16;
    ++v75;
  }

  v91 = sub_1C754EF7C();
  v92 = v208;
  __swift_storeEnumTagSinglePayload(v208, 1, 1, v91);
  v93 = v205;
  v94 = v212;
  sub_1C754EFEC();
  v95 = v94;
  if (v94)
  {

    sub_1C7030CDC(v92, &qword_1EC216F50, &unk_1C756D790);
    v96 = OUTLINED_FUNCTION_24_51();
    v97(v96);
    OUTLINED_FUNCTION_9_93();
    v98();
    return;
  }

  sub_1C7030CDC(v92, &qword_1EC216F50, &unk_1C756D790);
  v99 = OUTLINED_FUNCTION_24_51();
  v100(v99);
  sub_1C6F85170();
  v101 = sub_1C754EFAC();
  v102 = *(v76 + 16);
  v103 = v207;
  v104 = v211;
  v105 = v216;
  v212 = 0;
  if (v101 < v102)
  {
    v106 = *(v207 + 16);
    v107 = v206;
    v106(v191, v93, v206);
    v106(v192, v93, v107);
    v108 = sub_1C754FEEC();
    v109 = sub_1C75511BC();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      *v110 = 134218240;
      v111 = v191;
      v215 = sub_1C754EFAC();
      v112 = *(v103 + 8);
      v112(v111, v107);
      *(v110 + 4) = v215;
      *(v110 + 12) = 2048;
      v113 = v192;
      v114 = sub_1C754EF9C();
      v215 = v108;
      v115 = v114;
      v112(v113, v107);
      *(v110 + 14) = v115;
      v108 = v215;
      v105 = v216;
      _os_log_impl(&dword_1C6F5C000, v215, v109, "The clustering is not complete for all queried assets. fullModeCount = %ld, fastModeCount = %ld. Trying to generate personal traits anyways.", v110, 0x16u);
      v95 = v212;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
      v116 = *(v103 + 8);
      v116(v192, v107);
      v116(v191, v107);
    }
  }

  v117 = sub_1C754EF8C();
  v118 = *(v117 + 16);
  if (v118)
  {
    v221[0] = MEMORY[0x1E69E7CC0];
    v197 = v117;
    v198 = v118;
    sub_1C716D5B0(0, v118, 0);
    v119 = OUTLINED_FUNCTION_26_50();
    v121 = 0;
    v122 = v221[0];
    v201 = v119 + 32;
    v213 = v104 + 8;
    v214 = (v104 + 16);
    while (v121 < *(v119 + 16))
    {
      v123 = *(v201 + 8 * v121);
      v124 = *(v123 + 16);
      if (v124)
      {
        v209 = v121;
        v210 = v122;
        v220 = MEMORY[0x1E69E7CC0];
        sub_1C75504FC();
        sub_1C6F7ED9C(0, v124, 0, v125, v126, v127, v128);
        v129 = v220;
        v130 = *(v104 + 80);
        v208 = v123;
        v131 = v123 + ((v130 + 32) & ~v130);
        v215 = *(v104 + 72);
        v132 = *(v104 + 16);
        do
        {
          v133 = v217;
          v132(v105, v131, v217);
          v134 = sub_1C754DF8C();
          v136 = v135;
          (*v213)(v105, v133);
          v220 = v129;
          v138 = *(v129 + 16);
          v137 = *(v129 + 24);
          if (v138 >= v137 >> 1)
          {
            v140 = OUTLINED_FUNCTION_15(v137);
            sub_1C6F7ED9C(v140, v138 + 1, 1, v141, v142, v143, v144);
            v129 = v220;
          }

          *(v129 + 16) = v138 + 1;
          v139 = v129 + 16 * v138;
          *(v139 + 32) = v134;
          *(v139 + 40) = v136;
          v105 = v216;
          v131 += v215;
          --v124;
        }

        while (v124);

        v104 = v211;
        v95 = v212;
        v93 = v205;
        v121 = v209;
        v122 = v210;
        v119 = v197;
        v120 = v198;
      }

      else
      {
        v129 = MEMORY[0x1E69E7CC0];
      }

      v221[0] = v122;
      v146 = *(v122 + 2);
      v145 = *(v122 + 3);
      if (v146 >= v145 >> 1)
      {
        v147 = OUTLINED_FUNCTION_15(v145);
        sub_1C716D5B0(v147, v146 + 1, 1);
        v119 = OUTLINED_FUNCTION_26_50();
        v122 = v221[0];
      }

      ++v121;
      *(v122 + 2) = v146 + 1;
      *&v122[8 * v146 + 32] = v129;
      if (v121 == v120)
      {

        goto LABEL_49;
      }
    }

    goto LABEL_75;
  }

  v122 = MEMORY[0x1E69E7CC0];
LABEL_49:
  v148 = *(v122 + 2);
  v149 = MEMORY[0x1E69E7CC0];
  if (v148)
  {
    v221[0] = MEMORY[0x1E69E7CC0];
    v150 = OUTLINED_FUNCTION_11_78();
    sub_1C716DFCC(v150, v151, v152);
    v149 = v221[0];
    v210 = v122;
    v153 = (v122 + 32);
    do
    {
      v154 = *v153;
      v220 = *v153;
      sub_1C75504FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      sub_1C7099594(&qword_1EDD0CF58, &unk_1EC217A00, &qword_1C755BD70, MEMORY[0x1E69E6310]);
      v155 = sub_1C75505FC();
      v157 = v156;
      v221[0] = v149;
      v159 = v149[2];
      v158 = v149[3];
      if (v159 >= v158 >> 1)
      {
        OUTLINED_FUNCTION_15(v158);
        OUTLINED_FUNCTION_186();
        sub_1C716DFCC(v161, v162, v163);
        v149 = v221[0];
      }

      v149[2] = v159 + 1;
      v160 = &v149[3 * v159];
      v160[4] = v155;
      v160[5] = v157;
      v160[6] = v154;
      ++v153;
      --v148;
    }

    while (v148);
    v95 = v212;
    v93 = v205;
  }

  v221[0] = v149;
  sub_1C75504FC();
  sub_1C7499614(v221, sub_1C7422C3C, &qword_1EC218198, &qword_1C7570F50, sub_1C7423D18);
  if (v95)
  {

    __break(1u);
  }

  else
  {
    v212 = 0;

    v164 = v221[0];
    v165 = *(v221[0] + 2);
    if (v165)
    {
      v221[0] = MEMORY[0x1E69E7CC0];
      v166 = OUTLINED_FUNCTION_11_78();
      sub_1C716D5B0(v166, v167, v168);
      v169 = 48;
      v170 = v221[0];
      do
      {
        v171 = *&v164[v169];
        v221[0] = v170;
        v173 = v170[2];
        v172 = v170[3];
        sub_1C75504FC();
        if (v173 >= v172 >> 1)
        {
          sub_1C716D5B0(v172 > 1, v173 + 1, 1);
          v170 = v221[0];
        }

        v170[2] = v173 + 1;
        v170[v173 + 4] = v171;
        v169 += 24;
        --v165;
      }

      while (v165);
    }

    else
    {

      v170 = MEMORY[0x1E69E7CC0];
    }

    sub_1C75504FC();
    v174 = sub_1C754FEEC();
    v175 = sub_1C75511BC();
    v176 = os_log_type_enabled(v174, v175);
    v177 = v207;
    if (v176)
    {
      v178 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      v221[0] = v217;
      *v178 = 134218242;
      *(v178 + 4) = v170[2];

      *(v178 + 12) = 2080;
      swift_getKeyPath();
      v179 = v170[2];
      if (v179)
      {
        LODWORD(v215) = v175;
        v216 = v174;
        v220 = MEMORY[0x1E69E7CC0];
        sub_1C716D854();
        v180 = v220;
        v181 = v170 + 4;
        do
        {
          v218 = *v181;
          sub_1C75504FC();
          swift_getAtKeyPath();

          v182 = v219;
          v220 = v180;
          v184 = *(v180 + 16);
          v183 = *(v180 + 24);
          if (v184 >= v183 >> 1)
          {
            OUTLINED_FUNCTION_15(v183);
            sub_1C716D854();
            v180 = v220;
          }

          *(v180 + 16) = v184 + 1;
          *(v180 + 8 * v184 + 32) = v182;
          ++v181;
          --v179;
        }

        while (v179);

        v177 = v207;
        v93 = v205;
        v174 = v216;
        LOBYTE(v175) = v215;
      }

      else
      {

        v180 = MEMORY[0x1E69E7CC0];
      }

      v185 = MEMORY[0x1CCA5D090](v180, MEMORY[0x1E69E6530]);
      v187 = v186;

      v188 = sub_1C6F765A4(v185, v187, v221);

      *(v178 + 14) = v188;
      _os_log_impl(&dword_1C6F5C000, v174, v175, "Visual Clustering produced %ld clusters of sizes: %s", v178, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v217);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    (*(v177 + 8))(v93, v206);
    OUTLINED_FUNCTION_9_93();
    v189();
    *(v204 + 128) = v170;
    sub_1C75504FC();
  }
}