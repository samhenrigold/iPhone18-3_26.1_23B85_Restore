unint64_t *sub_237E167E0(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_237E16448(a1, a2, a5, a6, a7);

  return v12;
}

unint64_t *sub_237E16868(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_237E165F4(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_237E168F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB44D8, &qword_237F179F0);
  result = sub_237EF9300();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_237EFA120();
    sub_237EF8260();
    sub_237EF8610();
    result = sub_237EFA170();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_237E16B0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4558, &unk_237F17A50);
      v8 = sub_237EF9300();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 56;
      while (v10)
      {
        OUTLINED_FUNCTION_93_3();
LABEL_16:
        v15 = *(*(a4 + 48) + (v13 | (v11 << 6)));
        sub_237EFA120();
        sub_237EFA140();
        v16 = sub_237EFA170() & ~(-1 << *(v9 + 32));
        if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
        {
          OUTLINED_FUNCTION_15_22();
          while (++v17 != v19 || (v18 & 1) == 0)
          {
            v20 = v17 == v19;
            if (v17 == v19)
            {
              v17 = 0;
            }

            v18 |= v20;
            if (*(v12 + 8 * v17) != -1)
            {
              OUTLINED_FUNCTION_14_24();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_8_32();
LABEL_25:
        OUTLINED_FUNCTION_12_24();
        *(v12 + v21) |= v22;
        *(*(v9 + 48) + v23) = v15;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_30;
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

        if (v11 >= a2)
        {
          goto LABEL_5;
        }

        ++v14;
        if (a1[v11])
        {
          OUTLINED_FUNCTION_92_3();
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_237E16CC4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB44E0, &qword_237F179F8);
      v8 = sub_237EF9300();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 56;
      while (v10)
      {
        OUTLINED_FUNCTION_93_3();
LABEL_16:
        v15 = *(*(a4 + 48) + 8 * (v13 | (v11 << 6)));
        v16 = sub_237EFA110() & ~(-1 << *(v9 + 32));
        if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
        {
          OUTLINED_FUNCTION_15_22();
          while (++v17 != v19 || (v18 & 1) == 0)
          {
            v20 = v17 == v19;
            if (v17 == v19)
            {
              v17 = 0;
            }

            v18 |= v20;
            if (*(v12 + 8 * v17) != -1)
            {
              OUTLINED_FUNCTION_14_24();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_8_32();
LABEL_25:
        OUTLINED_FUNCTION_12_24();
        *(v12 + v21) |= v22;
        *(*(v9 + 48) + 8 * v23) = v15;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_30;
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

        if (v11 >= a2)
        {
          goto LABEL_5;
        }

        ++v14;
        if (a1[v11])
        {
          OUTLINED_FUNCTION_92_3();
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_237E16E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237E170CC(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(v1 + 40);
    return sub_237EF8A00() == v3;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CE18F0];

  return sub_237C96710(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_10_52(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CE18B0];

  return sub_237C96710(a1, a2, a3, v4);
}

void OUTLINED_FUNCTION_32_21(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v7 = *(a5 - 256);
  v8 = *(v5 - 152);

  sub_237C9339C(a1, a2, v7, v8, a3, a4);
}

uint64_t OUTLINED_FUNCTION_38_13(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_43_16(uint64_t a1)
{

  return sub_237EF62E0();
}

uint64_t OUTLINED_FUNCTION_45_14@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);

  return sub_237C65484(v4, v1, v2);
}

uint64_t OUTLINED_FUNCTION_60_9(uint64_t a1)
{

  return swift_dynamicCastMetatype();
}

uint64_t OUTLINED_FUNCTION_74_3(uint64_t a1)
{

  return sub_237EF6300();
}

uint64_t OUTLINED_FUNCTION_75_4()
{

  return sub_237EF8DF0();
}

uint64_t OUTLINED_FUNCTION_76_6(uint64_t a1)
{

  return sub_237EF7F40();
}

uint64_t OUTLINED_FUNCTION_77_3()
{

  return sub_237EF8F00();
}

uint64_t OUTLINED_FUNCTION_78_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_237EF61F0();
}

uint64_t OUTLINED_FUNCTION_100_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_237EF6280();
}

uint64_t OUTLINED_FUNCTION_104_2(uint64_t a1, uint64_t a2)
{

  return sub_237EF86F0();
}

void OUTLINED_FUNCTION_105_2()
{

  JUMPOUT(0x2383E2DF0);
}

uint64_t OUTLINED_FUNCTION_106_2()
{

  return sub_237C583C0(v0);
}

uint64_t ColumnSelector.columnSelection.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_237D520D4(v2, v3);
}

uint64_t ColumnSelector.columnSelection.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_237D52128(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t ColumnSelector.init(_:estimator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a1 + 8);
  *a6 = *a1;
  *(a6 + 8) = v9;
  type metadata accessor for ColumnSelector(0, a3, a4, a5);
  OUTLINED_FUNCTION_18_33();
  v12 = *(v11 + 32);

  return v12(a6 + v10, a2, a3);
}

uint64_t ColumnSelector.init<A>(_:transformer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *(a1 + 8);
  *a6 = *a1;
  *(a6 + 8) = v10;
  v11 = type metadata accessor for TransformerToEstimatorAdaptor(255, a4, a5, a4);
  WitnessTable = swift_getWitnessTable();
  v13 = type metadata accessor for ColumnSelector(0, v11, a3, WitnessTable);
  return TransformerToEstimatorAdaptor.init(_:)(a2, a4, a6 + *(v13 + 44));
}

uint64_t ColumnSelector.init(columns:estimator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = 0;
  type metadata accessor for ColumnSelector(0, a3, a4, a5);
  OUTLINED_FUNCTION_18_33();
  v11 = *(v10 + 32);

  return v11(a6 + v9, a2, a3);
}

uint64_t ColumnSelector.fitted(to:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v4;
  v1[10] = v5;
  v1[7] = v6;
  v1[8] = v7;
  v1[13] = *(v2 + 32);
  v1[14] = *(v2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[15] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_34_0();
  v9 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v9);
  v1[16] = OUTLINED_FUNCTION_27_0();
  v1[17] = *(AssociatedTypeWitness - 8);
  v1[18] = OUTLINED_FUNCTION_27_0();
  v1[19] = *(v3 + 24);
  v10 = sub_237EF6290();
  v1[20] = v10;
  OUTLINED_FUNCTION_6_1(v10);
  v1[21] = v11;
  v1[22] = OUTLINED_FUNCTION_27_0();
  v12 = sub_237EF6310();
  v1[23] = v12;
  OUTLINED_FUNCTION_6_1(v12);
  v1[24] = v13;
  v1[25] = OUTLINED_FUNCTION_27_0();
  v14 = sub_237EF61A0();
  v1[26] = v14;
  OUTLINED_FUNCTION_6_1(v14);
  v1[27] = v15;
  v1[28] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_237E17D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_49_4();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v28 = *(v24 + 216);
  v27 = *(v24 + 224);
  v62 = *(v24 + 208);
  v29 = *(v24 + 96);
  OUTLINED_FUNCTION_26_13();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_31_2();
  sub_237EF89A0();
  sub_237EF8230();
  swift_getAssociatedConformanceWitness();
  sub_237E17880();
  OUTLINED_FUNCTION_4_56();
  ColumnSelectorTransformer.init(transformers:columnMapping:)(v30, v31, v32);
  v33 = *(v29 + 8);
  a11 = *v29;
  LOBYTE(a12) = v33;
  *(v24 + 48) = sub_237CACD68(&a11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
  sub_237CAD454();
  sub_237EF6180();

  v34 = sub_237EF6170();
  *(v24 + 232) = v34;
  (*(v28 + 8))(v27, v62);
  v35 = *(v34 + 16);
  *(v24 + 240) = v35;
  *(v24 + 248) = 0;
  result = *(v24 + 232);
  if (v35)
  {
    if (*(result + 16))
    {
      v37 = OUTLINED_FUNCTION_13_40(*(v24 + 200));
      v38(v37);
      sub_237EF8B90();
      v63 = *(v24 + 104);
      sub_237EF62E0();
      v64 = v63 + 24;
      OUTLINED_FUNCTION_15_0();
      v61 = v48 + *v48;
      v49 = swift_task_alloc();
      *(v24 + 256) = v49;
      OUTLINED_FUNCTION_2_82();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_20_2();
      *v49 = v50;
      v49[1] = sub_237E18114;
      OUTLINED_FUNCTION_49_0();

      return v59(v51, v52, v53, v54, v55, v56, v57, v58, v61, v64, a11, a12, a13, a14, a15, a16);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_33_18();
    v39 = *(v24 + 56);

    *v39 = *(v24 + 16);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_49_0();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v62, a11, a12, a13, a14, a15, a16);
  }

  return result;
}

uint64_t sub_237E18114()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v2 + 264) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_237E18234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_4();
  v17 = v16;
  v18 = v16[24];
  v60 = v16[22];
  v62 = v16[23];
  v19 = v16[21];
  v58 = v16[25];
  v59 = v16[20];
  v20 = v16[17];
  v21 = v16[18];
  v23 = v16[15];
  v22 = v16[16];
  v24 = sub_237EF6300();
  v26 = v25;
  (*(v20 + 16))(v22, v21, v23);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
  v16[4] = v24;
  v27 = v16 + 4;
  v27[1] = v26;
  sub_237EF82B0();
  sub_237EF8300();
  (*(v20 + 8))(v21, v23);
  (*(v19 + 8))(v60, v59);
  (*(v18 + 8))(v58, v62);
  v28 = v27[29];
  v29 = v27[26];
  v30 = v27[27] + 1;
  v27[27] = v30;
  result = v27[25];
  if (v30 == v29)
  {
    v32 = v17[7];

    *v32 = *(v17 + 1);

LABEL_6:
    OUTLINED_FUNCTION_49_0();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, v58, v59, v60, v62, a13, a14, a15, a16);
  }

  if (v30 >= *(result + 16))
  {
    __break(1u);
    return result;
  }

  v33 = OUTLINED_FUNCTION_11_47(v17[25]);
  v34(v33);
  sub_237EF8B90();
  if (v28)
  {
    v35 = v17[24];
    v36 = v17[25];
    v37 = v17[23];

    (*(v35 + 8))(v36, v37);

    goto LABEL_6;
  }

  v63 = v17[13];
  sub_237EF62E0();
  v64 = v63 + 24;
  OUTLINED_FUNCTION_15_0();
  v61 = v46 + *v46;
  v47 = swift_task_alloc();
  v17[32] = v47;
  OUTLINED_FUNCTION_2_82();
  swift_getWitnessTable();
  *v47 = v17;
  v47[1] = sub_237E18114;
  OUTLINED_FUNCTION_49_0();

  return v56(v48, v49, v50, v51, v52, v53, v54, v55, v58, v59, v61, v64, a13, a14, a15, a16);
}

uint64_t sub_237E185BC()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_33_18();

  OUTLINED_FUNCTION_3_0();

  return v4();
}

void ColumnSelector.encode(_:to:)()
{
  OUTLINED_FUNCTION_13_4();
  v27 = v0;
  v2 = v1;
  v4 = v3;
  v29 = *(v5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v7);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  v31 = v9;
  OUTLINED_FUNCTION_1_1();
  v26 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v23 = v12;
  v13 = *(v4 + 8);
  sub_237EF8260();
  sub_237EF8260();
  OUTLINED_FUNCTION_34_0();
  sub_237EF8250();
  OUTLINED_FUNCTION_4_72();
  swift_getWitnessTable();
  v14 = v2;
  v15 = sub_237EF8850();

  v30[0] = v15;
  v30[1] = v13;
  v17 = *(v2 + 24);
  v16 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v14, v17);
  v18 = *(v16 + 8);
  v19 = sub_237E1AA2C();
  sub_237EF8260();
  v18(v30, &type metadata for SelectHeader, v19, v17, v16);
  if (!v27)
  {
    v20 = 0;
    v28 = *(v15 + 16);
    OUTLINED_FUNCTION_21_37(v26);
    v24 = v15;
    while (v28 != v20)
    {
      if (v20 >= *(v15 + 16))
      {
        __break(1u);
LABEL_9:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_37_19();
      sub_237EF82F0();
      if (__swift_getEnumTagSinglePayload(v31, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_9;
      }

      (*v25)(v23, v31, AssociatedTypeWitness);
      OUTLINED_FUNCTION_31_21();
      v21(v23, v14, v29);
      OUTLINED_FUNCTION_29_25();
      v22(v23, AssociatedTypeWitness);
      ++v20;
      v15 = v24;
    }
  }

  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_12_6();
}

void ColumnSelector.decode(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v24 = v3;
  v5 = *(v4 + 16);
  v30 = *(v4 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v7);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  v31 = v9;
  OUTLINED_FUNCTION_1_1();
  v29 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v25 = v12;
  v13 = *(v2 + 24);
  v14 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v13);
  v15 = *(v14 + 8);
  v16 = sub_237E1AA80();
  v15(&v33, &type metadata for SelectHeader, &type metadata for SelectHeader, v16, v13, v14);
  if (v0)
  {
LABEL_7:
    OUTLINED_FUNCTION_12_6();
  }

  else
  {
    v27 = v2;
    v17 = *(&v33 + 1);
    v18 = v33;
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_26_13();
    swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_31_2();
    sub_237EF89A0();
    v19 = sub_237EF8230();
    v26 = v5;
    swift_getAssociatedConformanceWitness();
    ColumnSelectorTransformer.init(transformers:columnMapping:)(v19, v17, &v33);
    v20 = 0;
    v28 = *(v18 + 16);
    v21 = v18 + 40;
    v22 = v30;
    v23 = v31;
    while (1)
    {
      if (v28 == v20)
      {

        *v24 = v33;
        goto LABEL_7;
      }

      if (v20 >= *(v18 + 16))
      {
        break;
      }

      v32 = *(v22 + 40);
      sub_237EF8260();
      v32(v27, v26, v22);
      ++v20;
      (*(v29 + 16))(v23, v25, AssociatedTypeWitness);
      __swift_storeEnumTagSinglePayload(v23, 0, 1, AssociatedTypeWitness);
      sub_237EF82B0();
      sub_237EF8300();
      (*(v29 + 8))(v25, AssociatedTypeWitness);
      v21 += 16;
      v22 = v30;
    }

    __break(1u);
  }
}

uint64_t sub_237E18D38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237CEF6D4;

  return ColumnSelector.fitted(to:eventHandler:)();
}

uint64_t ColumnSelector<>.makeTransformer()@<X0>(void *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_26_13();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_31_2();
  sub_237EF89A0();
  v4 = sub_237EF8230();
  OUTLINED_FUNCTION_4_56();
  swift_getAssociatedConformanceWitness();
  v5 = sub_237E17880();

  return ColumnSelectorTransformer.init(transformers:columnMapping:)(v4, v5, a3);
}

uint64_t ColumnSelector<>.update(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[11] = v4;
  v1[12] = v0;
  v1[9] = v5;
  v1[10] = v2;
  v1[7] = v6;
  v1[8] = v7;
  v1[6] = v8;
  v1[13] = *(v2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[14] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v1[15] = v10;
  v1[16] = OUTLINED_FUNCTION_27_0();
  v11 = *(v3 - 8);
  v1[17] = v11;
  v1[18] = *(v11 + 64);
  v1[19] = OUTLINED_FUNCTION_27_0();
  v1[20] = *(v3 + 24);
  v12 = sub_237EF6290();
  v1[21] = v12;
  OUTLINED_FUNCTION_6_1(v12);
  v1[22] = v13;
  v1[23] = OUTLINED_FUNCTION_27_0();
  v14 = sub_237EF6310();
  v1[24] = v14;
  OUTLINED_FUNCTION_6_1(v14);
  v1[25] = v15;
  v1[26] = OUTLINED_FUNCTION_27_0();
  v16 = sub_237EF61A0();
  v1[27] = v16;
  OUTLINED_FUNCTION_6_1(v16);
  v1[28] = v17;
  v1[29] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

unint64_t sub_237E19140()
{
  v38 = v0;
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);
  v5 = *(v0 + 96);
  v6 = *v5;
  LOBYTE(v5) = *(v5 + 8);
  v36 = v6;
  v37 = v5;
  *(v0 + 32) = sub_237CACD68(&v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
  sub_237CAD454();
  sub_237EF6180();

  v7 = sub_237EF6170();
  *(v0 + 240) = v7;
  (*(v3 + 8))(v2, v4);
  v8 = *(v7 + 16);
  *(v0 + 248) = v8;
  *(v0 + 256) = 0;
  result = *(v0 + 240);
  if (!v8)
  {
    OUTLINED_FUNCTION_32_22();

    sub_237C5EE40(0, 0);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X1, X16 }
  }

  if (!*(result + 16))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v10 = OUTLINED_FUNCTION_13_40(*(v0 + 208));
  v11(v10);
  sub_237EF8B90();
  v14 = *(v0 + 160);
  v15 = *(v0 + 136);
  v16 = *(v0 + 96);
  OUTLINED_FUNCTION_28_25();
  sub_237EF62E0();
  v17 = sub_237EF6300();
  v19 = OUTLINED_FUNCTION_14_48(v17, v18);
  v20(v19, v16, v1);
  v21 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v22 = swift_allocObject();
  *(v0 + 272) = v22;
  *(v22 + 16) = v35;
  *(v22 + 24) = v14;
  v23 = OUTLINED_FUNCTION_22_32(v22, v34);
  v24(v23);
  sub_237C5EE40(0, 0);
  swift_isUniquelyReferenced_nonNull_native();
  result = OUTLINED_FUNCTION_38_14();
  if (__OFADD__(*(v21 + 16), (v25 & 1) == 0))
  {
    goto LABEL_19;
  }

  v26 = v25;
  sub_237EF96F0();
  if ((sub_237EF96B0() & 1) == 0 || (sub_237D2FC30(v33), (v26 & 1) == (v27 & 1)))
  {
    **(v0 + 48) = *(v0 + 40);
    if ((v26 & 1) == 0)
    {
      sub_237E1AAD4();
      *(v0 + 16) = v33;
      *(v0 + 24) = v4;
      sub_237EF8260();
      sub_237EF96E0();
    }

    OUTLINED_FUNCTION_30_31();
    OUTLINED_FUNCTION_15_0();
    v29 = swift_task_alloc();
    *(v0 + 280) = v29;
    OUTLINED_FUNCTION_2_82();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_20_2();
    *v29 = v30;
    OUTLINED_FUNCTION_3_78();
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X8, X16 }
  }

  OUTLINED_FUNCTION_58();

  return sub_237EFA020();
}

uint64_t sub_237E1959C()
{
  OUTLINED_FUNCTION_2_0();
  v7 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v2 = v7;
  *(v7 + 288) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

unint64_t sub_237E196B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_49_4();
  v20 = *(v16 + 200);
  v19 = *(v16 + 208);
  v21 = *(v16 + 192);
  (*(*(v16 + 176) + 8))(*(v16 + 184), *(v16 + 168));
  (*(v20 + 8))(v19, v21);
  v22 = *(v16 + 288);
  v23 = *(v16 + 248);
  v24 = *(v16 + 256) + 1;
  *(v16 + 256) = v24;
  result = *(v16 + 240);
  if (v24 == v23)
  {

    OUTLINED_FUNCTION_1_89();

    OUTLINED_FUNCTION_3_0();
LABEL_6:
    OUTLINED_FUNCTION_49_0();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  if (v24 >= *(result + 16))
  {
    __break(1u);
    goto LABEL_21;
  }

  v26 = OUTLINED_FUNCTION_11_47(*(v16 + 208));
  v27(v26);
  sub_237EF8B90();
  if (v22)
  {
    v28 = OUTLINED_FUNCTION_34_14();
    v29(v28);

    OUTLINED_FUNCTION_1_89();
    OUTLINED_FUNCTION_23_33();

    OUTLINED_FUNCTION_3_0();
    goto LABEL_6;
  }

  v38 = *(v16 + 160);
  v39 = *(v16 + 136);
  v40 = *(v16 + 96);
  OUTLINED_FUNCTION_28_25();
  sub_237EF62E0();
  v41 = sub_237EF6300();
  v43 = OUTLINED_FUNCTION_14_48(v41, v42);
  v44(v43, v40, v18);
  v45 = (*(v39 + 80) + 40) & ~*(v39 + 80);
  v46 = swift_allocObject();
  *(v16 + 272) = v46;
  *(v46 + 16) = a12;
  *(v46 + 24) = v38;
  v47 = OUTLINED_FUNCTION_22_32(v46, a11);
  v48(v47);
  OUTLINED_FUNCTION_1_89();
  swift_isUniquelyReferenced_nonNull_native();
  result = OUTLINED_FUNCTION_38_14();
  if (__OFADD__(*(v45 + 16), (v49 & 1) == 0))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v50 = v49;
  sub_237EF96F0();
  if ((sub_237EF96B0() & 1) == 0 || (sub_237D2FC30(a9), (v50 & 1) == (v51 & 1)))
  {
    **(v16 + 48) = *(v16 + 40);
    if ((v50 & 1) == 0)
    {
      sub_237E1AAD4();
      *(v16 + 16) = a9;
      *(v16 + 24) = v17;
      sub_237EF8260();
      sub_237EF96E0();
    }

    v66 = OUTLINED_FUNCTION_30_31() + 24;
    OUTLINED_FUNCTION_15_0();
    v67 = v53 + *v53;
    v54 = swift_task_alloc();
    *(v16 + 280) = v54;
    OUTLINED_FUNCTION_2_82();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_20_2();
    *v54 = v55;
    OUTLINED_FUNCTION_3_78();
    OUTLINED_FUNCTION_49_0();

    return v64(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, v66, v67, a13, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_49_0();

    return sub_237EFA020();
  }
}

uint64_t sub_237E19AA0()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v6 = v0[22];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_32_22();

  OUTLINED_FUNCTION_3_0();

  return v7();
}

void ColumnSelector<>.encodeWithOptimizer(_:to:)()
{
  OUTLINED_FUNCTION_13_4();
  v29 = v0;
  v2 = v1;
  v4 = v3;
  v31 = *(v5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v7);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  v33 = v9;
  OUTLINED_FUNCTION_1_1();
  v28 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v25 = v12;
  v13 = *(v4 + 8);
  sub_237EF8260();
  OUTLINED_FUNCTION_4_56();
  sub_237EF8260();
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_4_56();
  sub_237EF8250();
  OUTLINED_FUNCTION_4_72();
  swift_getWitnessTable();
  v14 = sub_237EF8850();

  v32[0] = v14;
  v32[1] = v13;
  v16 = *(v2 + 24);
  v15 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v16);
  v17 = *(v15 + 8);
  v18 = sub_237E1AA2C();
  sub_237EF8260();
  v17(v32, &type metadata for SelectHeader, v18, v16, v15);
  if (!v29)
  {
    v19 = 0;
    v30 = *(v14 + 16);
    OUTLINED_FUNCTION_21_37(v28);
    v20 = v13;
    v21 = AssociatedTypeWitness;
    v26 = v14;
    while (v30 != v19)
    {
      if (v19 >= *(v14 + 16))
      {
        __break(1u);
LABEL_9:
        __break(1u);
        return;
      }

      v22 = v20;
      OUTLINED_FUNCTION_37_19();
      sub_237EF82F0();
      if (__swift_getEnumTagSinglePayload(v33, 1, v21) == 1)
      {
        goto LABEL_9;
      }

      (*v27)(v25, v33, v21);
      OUTLINED_FUNCTION_31_21();
      v23(v25, v2, v31);
      OUTLINED_FUNCTION_29_25();
      v24(v25, v21);
      ++v19;
      v20 = v22;
      v14 = v26;
    }
  }

  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_12_6();
}

void ColumnSelector<>.decodeWithOptimizer(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v23 = v3;
  v32 = v4;
  v30 = *(v5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v7);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  v31 = v9;
  OUTLINED_FUNCTION_1_1();
  v25 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v24 = v12;
  v14 = *(v2 + 24);
  v13 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v14);
  v15 = *(v13 + 8);
  v16 = sub_237E1AA80();
  v15(&v34, &type metadata for SelectHeader, &type metadata for SelectHeader, v16, v14, v13);
  if (v0)
  {
LABEL_7:
    OUTLINED_FUNCTION_12_6();
  }

  else
  {
    v28 = v2;
    v17 = v34;
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_26_13();
    swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_31_2();
    sub_237EF89A0();
    v18 = sub_237EF8230();
    v19 = v30;
    swift_getAssociatedConformanceWitness();
    ColumnSelectorTransformer.init(transformers:columnMapping:)(v18, *(&v17 + 1), &v34);
    v20 = 0;
    v29 = *(v17 + 16);
    v21 = v32;
    v27 = (v25 + 16);
    v26 = (v25 + 8);
    for (i = v17 + 40; ; i += 16)
    {
      if (v29 == v20)
      {

        *v23 = v34;
        goto LABEL_7;
      }

      if (v20 >= *(v17 + 16))
      {
        break;
      }

      v33 = *(v21 + 40);
      sub_237EF8260();
      v33(v28, v19, v21);
      ++v20;
      (*v27)(v31, v24, AssociatedTypeWitness);
      __swift_storeEnumTagSinglePayload(v31, 0, 1, AssociatedTypeWitness);
      sub_237EF82B0();
      sub_237EF8300();
      (*v26)(v24, AssociatedTypeWitness);
      v19 = v30;
    }

    __break(1u);
  }
}

uint64_t sub_237E1A2A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614D6E6D756C6F63 && a2 == 0xED0000676E697070)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_237E1A370(char a1)
{
  if (a1)
  {
    return 0x614D6E6D756C6F63;
  }

  else
  {
    return 0x736E6D756C6F63;
  }
}

uint64_t sub_237E1A3B4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4570, &unk_237F17B90);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E1B014();
  sub_237EFA1B0();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
  sub_237CAD3E8(&qword_27DEAEBD8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_237EF9A70();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB37C0, &qword_237F15960);
    sub_237DD8E28(&qword_27DEB37C8, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_237EF9A70();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_237E1A5BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4580, &qword_237F17BA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E1B014();
  sub_237EFA190();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEBD0, qword_237F0EC30);
  HIBYTE(v8) = 0;
  sub_237CAD3E8(&qword_27DEAEC28, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_237EF9970();
  v7 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB37C0, &qword_237F15960);
  HIBYTE(v8) = 1;
  sub_237DD8E28(qword_27DEB37D0, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_237EF9970();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_237E1A830()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237DF0088;

  return ColumnSelector<>.update(_:with:eventHandler:)();
}

uint64_t sub_237E1A944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E1A2A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E1A96C(uint64_t a1)
{
  v2 = sub_237E1B014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E1A9A8(uint64_t a1)
{
  v2 = sub_237E1B014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237E1A9E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237E1A5BC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_237E1AA2C()
{
  result = qword_27DEB4560;
  if (!qword_27DEB4560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4560);
  }

  return result;
}

unint64_t sub_237E1AA80()
{
  result = qword_27DEB4568;
  if (!qword_27DEB4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4568);
  }

  return result;
}

uint64_t sub_237E1AAD4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = type metadata accessor for ColumnSelector(0, v1, v2, *(v3 + 8));
  OUTLINED_FUNCTION_18(v4);
  v6 = v0 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_237E19B88(v6, v1, v2, v3);
}

uint64_t sub_237E1AB70(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237E1ABAC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237E1AC2C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 9) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if (v6 > 0xFD)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 9) & ~v7, v6, v4);
      }

      v16 = *(a1 + 8);
      if (v16 > 2)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_237E1ADAC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0xFD)
  {
    v9 = 253;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 9) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v8 > 0xFD)
          {
            v21 = &a1[v10 + 9] & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if (a2 > 0xFD)
          {
            a1[8] = 0;
            *a1 = (a2 - 254);
          }

          else
          {
            a1[8] = -a2;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_237E1B014()
{
  result = qword_27DEB4578;
  if (!qword_27DEB4578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4578);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SelectHeader.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237E1B148()
{
  result = qword_27DEB4588;
  if (!qword_27DEB4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4588);
  }

  return result;
}

unint64_t sub_237E1B1A0()
{
  result = qword_27DEB4590;
  if (!qword_27DEB4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4590);
  }

  return result;
}

unint64_t sub_237E1B1F8()
{
  result = qword_27DEB4598;
  if (!qword_27DEB4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4598);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_89()
{

  return sub_237C5EE40(sub_237E1AAD4, v0);
}

void OUTLINED_FUNCTION_21_37(uint64_t a1@<X8>)
{
  *(v3 - 168) = v2 + 32;
  *(v3 - 160) = v1;
  *(v3 - 152) = a1 + 8;
}

uint64_t OUTLINED_FUNCTION_23_33()
{
}

uint64_t OUTLINED_FUNCTION_37_19()
{
  v3 = *v0;
  *(v1 - 96) = *(v0 - 1);
  *(v1 - 88) = v3;

  return sub_237EF8260();
}

unint64_t OUTLINED_FUNCTION_38_14()
{
  *(v0 + 40) = *v2;

  return sub_237D2FC30(v1);
}

void *sub_237E1B444()
{
  v3 = OUTLINED_FUNCTION_1_90();
  v4 = sub_237E1B8F0(v3, &selRef_predictedFeatureName);
  if (v5 && (v6 = v4, v7 = v5, v8 = [v1 (v2 + 1510)], v9 = objc_msgSend(v8, sel_outputDescriptionsByName), v8, sub_237E1B8AC(), v10 = sub_237EF8210(), v9, v0 = sub_237DD7100(v6, v7, v10), , , v0))
  {
    if (([v0 type] | 2) != 3)
    {
      v11 = sub_237CCD12C();
      v12 = OUTLINED_FUNCTION_45_0(&type metadata for ModelCompatibilityError, v11);
      OUTLINED_FUNCTION_0_73(v12, v13, xmmword_237F17CC0);
    }
  }

  else
  {
    v14 = sub_237CCD12C();
    OUTLINED_FUNCTION_45_0(&type metadata for ModelCompatibilityError, v14);
    *v15 = 0;
    *(v15 + 8) = 0;
    *(v15 + 16) = 8;
    swift_willThrow();
  }

  return v0;
}

void *sub_237E1B598()
{
  v2 = OUTLINED_FUNCTION_1_90();
  sub_237E1B8F0(v2, &selRef_predictedProbabilitiesName);
  if (v3 && (v4 = OUTLINED_FUNCTION_3_79(), v5 = [v4 outputDescriptionsByName], v4, sub_237E1B8AC(), v6 = sub_237EF8210(), v5, v0 = sub_237DD7100(v0, v1, v6), , , v0))
  {
    if ([v0 type] == 6 && (v7 = objc_msgSend(v0, sel_dictionaryConstraint)) != 0)
    {
      v8 = v7;
      if (([v7 keyType] | 2) != 3)
      {
        v16 = sub_237CCD12C();
        v17 = OUTLINED_FUNCTION_45_0(&type metadata for ModelCompatibilityError, v16);
        OUTLINED_FUNCTION_0_73(v17, v18, xmmword_237F17CC0);
      }
    }

    else
    {
      v12 = [v0 type];
      v13 = sub_237CCD12C();
      OUTLINED_FUNCTION_45_0(&type metadata for ModelCompatibilityError, v13);
      *v14 = 6;
      *(v14 + 8) = v12;
      *(v14 + 16) = 2;
      swift_willThrow();
    }
  }

  else
  {
    v9 = sub_237CCD12C();
    v10 = OUTLINED_FUNCTION_45_0(&type metadata for ModelCompatibilityError, v9);
    OUTLINED_FUNCTION_0_73(v10, v11, xmmword_237F08210);
  }

  return v0;
}

void *sub_237E1B75C()
{
  v2 = OUTLINED_FUNCTION_1_90();
  sub_237E1B8F0(v2, &selRef_predictedFeatureName);
  if (v3 && (v4 = OUTLINED_FUNCTION_3_79(), v5 = [v4 outputDescriptionsByName], v4, sub_237E1B8AC(), v6 = sub_237EF8210(), v5, v0 = sub_237DD7100(v0, v1, v6), , , v0))
  {
    if ([v0 type] != 2)
    {
      v7 = [v0 type];
      v8 = sub_237CCD12C();
      OUTLINED_FUNCTION_45_0(&type metadata for ModelCompatibilityError, v8);
      *v9 = 2;
      *(v9 + 8) = v7;
      *(v9 + 16) = 2;
      swift_willThrow();
    }
  }

  else
  {
    v10 = sub_237CCD12C();
    v11 = OUTLINED_FUNCTION_45_0(&type metadata for ModelCompatibilityError, v10);
    OUTLINED_FUNCTION_0_73(v11, v12, xmmword_237F17CD0);
  }

  return v0;
}

unint64_t sub_237E1B8AC()
{
  result = qword_27DEAF298[0];
  if (!qword_27DEAF298[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27DEAF298);
  }

  return result;
}

uint64_t sub_237E1B8F0(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_237EF8590();

  return v4;
}

uint64_t OUTLINED_FUNCTION_0_73(uint64_t a1, __n128 *a2, __n128 a3)
{
  *a2 = a3;
  a2[1].n128_u8[0] = 8;

  return swift_willThrow();
}

id OUTLINED_FUNCTION_1_90()
{

  return [v0 modelDescription];
}

id OUTLINED_FUNCTION_3_79()
{

  return [v0 (v1 + 1510)];
}

uint64_t sub_237E1B9E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_237E1BAA4(char a1)
{
  if (a1)
  {
    return 1702521203;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_237E1BAD0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB45B8, &qword_237F17DF8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E1C348();
  sub_237EFA1B0();
  v14 = 0;
  sub_237EF9A50();
  if (!v3)
  {
    v13 = 1;
    sub_237EF9A50();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_237E1BC2C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB45C8, &qword_237F17E00);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  v4 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v5 = sub_237E1C348();
  OUTLINED_FUNCTION_2_83(&type metadata for DataReference.CodingKeys, v6, v5);
  if (!v1)
  {
    v4 = sub_237EF9950();
    sub_237EF9950();
    v7 = OUTLINED_FUNCTION_1_91();
    v8(v7);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_237E1BDA0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365747962 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_237EF9D40();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_237E1BE28(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB45A0, &unk_237F17DE8);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E1C2F4();
  sub_237EFA1B0();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA0, &unk_237F0EF50);
  sub_237E1C39C(&qword_27DEB45B0, MEMORY[0x277D84B80], MEMORY[0x277D83948]);
  sub_237EF9A70();
  return (*(v6 + 8))(v9, v4);
}

void *sub_237E1BF98(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB45D0, &qword_237F17E08);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_237E1C2F4();
  OUTLINED_FUNCTION_2_83(&type metadata for InlineData.CodingKeys, v6, v5);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA0, &unk_237F0EF50);
    sub_237E1C39C(&qword_27DEB45D8, MEMORY[0x277D84BA0], MEMORY[0x277D83978]);
    sub_237EF9970();
    v7 = OUTLINED_FUNCTION_1_91();
    v8(v7);
    v4 = v10;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v4;
}

uint64_t sub_237E1C11C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E1B9E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E1C144(uint64_t a1)
{
  v2 = sub_237E1C348();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E1C180(uint64_t a1)
{
  v2 = sub_237E1C348();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237E1C1BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237E1BC2C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_237E1C208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E1BDA0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_237E1C234(uint64_t a1)
{
  v2 = sub_237E1C2F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E1C270(uint64_t a1)
{
  v2 = sub_237E1C2F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_237E1C2AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_237E1BF98(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_237E1C2F4()
{
  result = qword_27DEB45A8;
  if (!qword_27DEB45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB45A8);
  }

  return result;
}

unint64_t sub_237E1C348()
{
  result = qword_27DEB45C0;
  if (!qword_27DEB45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB45C0);
  }

  return result;
}

uint64_t sub_237E1C39C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAECA0, &unk_237F0EF50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DataReference.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for InlineData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_237E1C594()
{
  result = qword_27DEB45E0;
  if (!qword_27DEB45E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB45E0);
  }

  return result;
}

unint64_t sub_237E1C5EC()
{
  result = qword_27DEB45E8;
  if (!qword_27DEB45E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB45E8);
  }

  return result;
}

unint64_t sub_237E1C644()
{
  result = qword_27DEB45F0;
  if (!qword_27DEB45F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB45F0);
  }

  return result;
}

unint64_t sub_237E1C69C()
{
  result = qword_27DEB45F8;
  if (!qword_27DEB45F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB45F8);
  }

  return result;
}

unint64_t sub_237E1C6F4()
{
  result = qword_27DEB4600;
  if (!qword_27DEB4600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4600);
  }

  return result;
}

unint64_t sub_237E1C74C()
{
  result = qword_27DEB4608;
  if (!qword_27DEB4608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4608);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_83(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_237EFA190();
}

void LinearTimeSeriesForecaster.Model.export(to:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CoreMLPackage(0);
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_237E1C8D4(a2, v8 - v7);
  if (!v2)
  {
    sub_237E33BC0(a1);
    sub_237D0F8BC(v9);
  }
}

void sub_237E1C8D4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v217 = a2;
  v267 = sub_237EF78C0();
  OUTLINED_FUNCTION_1();
  v268 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v266 = v6;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  v265 = &v205 - v8;
  OUTLINED_FUNCTION_12_1();
  v264 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v211 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_3();
  v206 = v11;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v215 = v13;
  v216 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_3();
  v249 = v14;
  OUTLINED_FUNCTION_12_1();
  v15 = sub_237EF7D20();
  v16 = OUTLINED_FUNCTION_18(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_3();
  v212 = v17;
  OUTLINED_FUNCTION_12_1();
  sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v209 = v19;
  v210 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_3();
  v208 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7A8, &qword_237F0CCF0);
  OUTLINED_FUNCTION_18(v21);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_19();
  v207 = v23;
  OUTLINED_FUNCTION_12_1();
  sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v240 = v25;
  v241 = v24;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_3();
  v242 = v26;
  OUTLINED_FUNCTION_12_1();
  sub_237EF6E30();
  OUTLINED_FUNCTION_1();
  v247 = v28;
  v248 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_3();
  v255 = v29;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v245 = v31;
  v246 = v30;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_2();
  v244 = v32;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v33);
  v256 = &v205 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE938, &unk_237F06390);
  OUTLINED_FUNCTION_18(v35);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_19();
  v239 = v37;
  OUTLINED_FUNCTION_12_1();
  v38 = sub_237EF7CD0();
  v39 = OUTLINED_FUNCTION_18(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1_3();
  v238 = v40;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7BC0();
  OUTLINED_FUNCTION_1();
  v213 = v42;
  v214 = v41;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_3();
  v257 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4610, &qword_237F18070);
  OUTLINED_FUNCTION_18(v44);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_19();
  v234 = v46;
  OUTLINED_FUNCTION_12_1();
  *&v235 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v263 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1_3();
  v258 = v49;
  v50 = *(a1 + 16);
  v226 = *(a1 + 24);
  v227 = v50;
  v51 = sub_237EF7E90();
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v228 = v53;
  v229 = v52;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_19();
  v225 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4618, &qword_237F18078);
  v57 = OUTLINED_FUNCTION_18(v56);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_2_2();
  v230 = v58;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v59);
  v251 = &v205 - v60;
  v224 = v51;
  v223 = *(v51 - 8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_19();
  v222 = v62;
  OUTLINED_FUNCTION_12_1();
  sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v253 = v64;
  v254 = v63;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_1_3();
  v250 = v65;
  v66 = OUTLINED_FUNCTION_12_1();
  v243 = type metadata accessor for TensorDescription(v66);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_2_2();
  v252 = v68;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v69);
  v71 = (&v205 - v70);
  v72 = sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v74 = v73;
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_2_2();
  v236 = v76;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v77);
  v79 = &v205 - v78;
  sub_237E651E4(&v274[3]);
  v274[0] = MEMORY[0x277D84F98];
  v274[1] = MEMORY[0x277D84F98];
  v274[2] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD498, &qword_237F03190);
  v80 = swift_allocObject();
  v269 = xmmword_237F04760;
  *(v80 + 16) = xmmword_237F04760;
  *(v80 + 32) = 0;
  *(v80 + 40) = 1;
  v261 = v2;
  v262 = a1;
  v260 = *(v2 + *(a1 + 44));
  *(v80 + 48) = v260;
  *(v80 + 56) = 0;
  v81 = v74;
  v82 = *(v74 + 104);
  v232 = *MEMORY[0x277D252E0];
  v259 = v72;
  v231 = v82;
  v82(v79);
  memcpy(__dst, v274, sizeof(__dst));
  sub_237CF17F0();
  sub_237CF1BA8();
  v86 = v85;
  v233 = v74 + 104;
  if (v87)
  {
  }

  else
  {
    if (__OFADD__(v84, 1))
    {
LABEL_19:
      __break(1u);
      return;
    }

    v88 = v83;
    v89 = v274[0];
    v90 = v84 + 1;
    swift_isUniquelyReferenced_nonNull_native();
    v273[0] = v89;
    sub_237C911D0(v90, v88, v86);

    v274[0] = v273[0];
  }

  v91 = v259;
  (*(v81 + 16))(v71 + *(v243 + 20), v79, v259);
  *v71 = v80;
  v92 = v252;
  sub_237CF231C(v71, v252);
  v93 = v274[1];
  swift_isUniquelyReferenced_nonNull_native();
  v273[0] = v93;
  sub_237C912CC(v92, 0x7475706E69, 0xE500000000000000);
  v274[1] = v273[0];
  v94 = v81 + 8;
  v95 = *(v81 + 8);
  v243 = v94;
  v95(v79, v91);
  v96 = v262;
  LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v262);
  v97 = v96;
  sub_237EC3DB0();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v99 = swift_allocObject();
  OUTLINED_FUNCTION_7_57(v99);
  *(v100 + 32) = -1;
  v101 = LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v96);
  if ((v101 * v260) >> 64 != (v101 * v260) >> 63)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v221 = v95;
  v71[5] = v101 * v260;
  sub_237EBE8A8();
  v219 = v102;
  v220 = v103;

  swift_setDeallocating();
  OUTLINED_FUNCTION_11_48();
  v252 = v98;
  v104 = swift_allocObject();
  OUTLINED_FUNCTION_7_57(v104);
  v106 = v226;
  v105 = v227;
  v107 = v96[4];
  v108 = type metadata accessor for MultivariateLinearRegressor.Model(0, v227, v226, v107);
  v71[4] = MultivariateLinearRegressor.Model.outputSize.getter(v108);
  v218 = v108;
  v71[5] = MultivariateLinearRegressor.Model.inputSize.getter(v108);
  v109 = v222;
  LinearTimeSeriesForecaster.Model.weight.getter(v97);
  v110 = v224;
  swift_getWitnessTable();
  v111 = sub_237EF7F50();
  v112 = (*(v223 + 8))(v109, v110);
  v224 = &v205;
  v273[0] = v111;
  MEMORY[0x28223BE20](v112);
  *(&v205 - 4) = v105;
  *(&v205 - 3) = v106;
  *(&v205 - 2) = v107;
  v113 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  v115 = v237;
  sub_237C9339C(sub_237E1E520, (&v205 - 6), v113, MEMORY[0x277D83A90], MEMORY[0x277D84A98], WitnessTable);
  v237 = v115;

  v116 = v250;
  sub_237CF3C98();

  swift_setDeallocating();
  OUTLINED_FUNCTION_11_48();
  v117 = v225;
  v118 = v261;
  v119 = LinearTimeSeriesForecaster.Model.bias.getter(v262);
  MEMORY[0x28223BE20](v119);
  *(&v205 - 6) = v105;
  *(&v205 - 5) = v106;
  *(&v205 - 4) = v107;
  *(&v205 - 3) = v274;
  *(&v205 - 2) = v118;
  v120 = v251;
  v121 = v229;
  v122 = v254;
  v123 = v237;
  sub_237CA0A1C();
  v237 = v123;
  (*(v228 + 8))(v117, v121);
  v124 = v258;
  (*(v253 + 16))(v258, v116, v122);
  v125 = *MEMORY[0x277D252B8];
  v126 = *(v263 + 104);
  v127 = v235;
  v126(v124, v125, v235);
  v128 = v230;
  sub_237E1E48C(v120, v230);
  v129 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v128, 1, v122);
  v131 = v261;
  v132 = v234;
  if (EnumTagSinglePayload != 1)
  {
    (*(v253 + 32))(v234, v128, v254);
    v126(v132, v125, v127);
    v129 = 0;
  }

  __swift_storeEnumTagSinglePayload(v132, v129, 1, v127);
  MultivariateLinearRegressor.Model.outputSize.getter(v218);
  v133 = v258;
  sub_237EC4744();

  sub_237C65484(v132, &qword_27DEB4610, &qword_237F18070);
  (*(v263 + 8))(v133, v127);
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_237F08A50;
  *(v134 + 32) = 0;
  v135 = v262;
  v136 = LinearTimeSeriesForecaster.Model.forecastWindowSize.getter(v262);
  v137 = *(v131 + *(v135 + 12));
  *(v134 + 40) = v136;
  *(v134 + 48) = v137;
  sub_237EBE8A8();

  swift_setDeallocating();
  OUTLINED_FUNCTION_11_48();
  sub_237CF1ED8();

  sub_237EF7BB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940, &unk_237F1CD40);
  v138 = *(v268 + 72);
  v258 = ((*(v268 + 80) + 32) & ~*(v268 + 80));
  v263 = v138;
  v139 = swift_allocObject();
  v235 = xmmword_237F03530;
  *(v139 + 16) = xmmword_237F03530;
  v140 = v236;
  v231(v236, v232, v259);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD370, &qword_237F030D8);
  v141 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v143 = v142;
  v145 = *(v144 + 72);
  v146 = (*(v142 + 80) + 32) & ~*(v142 + 80);
  v147 = swift_allocObject();
  *(v147 + 16) = v269;
  v148 = (v147 + v146);
  *v148 = 0;
  v149 = *(v143 + 104);
  v149(v148, *MEMORY[0x277D25270], v141);
  *&v148[v145] = v260;
  v150 = &v148[v145];
  v151 = v258;
  v149(v150, *MEMORY[0x277D25278], v141);
  sub_237EF7CC0();

  v221(v140, v259);
  OUTLINED_FUNCTION_5_10();
  sub_237EF7880();
  sub_237EF7B90();
  sub_237EF7B70();
  sub_237EF8260();
  v152 = MEMORY[0x277D84F90];
  v153 = v239;
  sub_237EF7930();
  v154 = sub_237EF7940();
  __swift_storeEnumTagSinglePayload(v153, 0, 1, v154);
  v155 = sub_237EF7B40();
  sub_237E60E08();
  v155(v273, 0);
  sub_237EF7720();
  (*(v240 + 104))(v242, *MEMORY[0x277D25100], v241);
  v156 = swift_allocObject();
  *(v156 + 16) = v269;
  v157 = v262;
  v158 = LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v262);
  v159 = v260;
  *(v156 + 32) = v158;
  *(v156 + 40) = v159;
  sub_237EF6DD0();
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEAD7C0, &unk_237F03CB0);
  sub_237EF7D30();
  v161 = swift_allocObject();
  OUTLINED_FUNCTION_7_57(v161);
  v162 = LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v157);
  v163 = LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v157);
  if ((v163 * 100) >> 64 != (100 * v163) >> 63)
  {
    goto LABEL_17;
  }

  if (100 * v163 < v162)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_237EF7D40();
  sub_237EF7D40();
  v164 = v207;
  *v207 = v160;
  v165 = *MEMORY[0x277D25110];
  v166 = sub_237EF6DF0();
  OUTLINED_FUNCTION_4();
  (*(v167 + 104))(v164, v165, v166);
  __swift_storeEnumTagSinglePayload(v164, 0, 1, v166);
  v168 = v255;
  sub_237EF6E00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
  v169 = v211;
  v170 = (*(v211 + 80) + 32) & ~*(v211 + 80);
  v262 = *(v211 + 72);
  *(swift_allocObject() + 16) = v235;
  v171 = v208;
  (*(v247 + 16))(v208, v168, v248);
  (*(v209 + 104))(v171, *MEMORY[0x277D250A0], v210);
  v261 = v170;
  OUTLINED_FUNCTION_5_10();
  sub_237EF7090();
  sub_237EF76B0();
  v172 = sub_237EF7BA0();
  v173 = *(v172 + 16);
  if (v173)
  {
    v273[0] = v152;
    sub_237C63284(0, v173, 0);
    v174 = v273[0];
    v252 = v172;
    v175 = &v151[v172];
    v176 = *(v268 + 16);
    v268 += 16;
    v259 = (v268 - 8);
    v260 = v176;
    v258 = (v169 + 32);
    v177 = v206;
    do
    {
      *&v269 = v173;
      v178 = v265;
      v179 = v267;
      v180 = v174;
      v181 = v177;
      v182 = v260;
      (v260)(v265, v175, v267);
      v182(v266, v178, v179);
      v177 = v181;
      v174 = v180;
      sub_237EF70F0();
      (*v259)(v178, v179);
      v273[0] = v180;
      v184 = *(v180 + 16);
      v183 = *(v180 + 24);
      if (v184 >= v183 >> 1)
      {
        sub_237C63284(v183 > 1, v184 + 1, 1);
        v174 = v273[0];
      }

      *(v174 + 16) = v184 + 1;
      (*v258)(v174 + v261 + v184 * v262, v177, v264);
      v175 += v263;
      v173 = v269 - 1;
    }

    while (v269 != 1);
  }

  v185 = v256;
  sub_237EF7700();
  sub_237EF7D10();
  sub_237EF7660();
  sub_237EF7620();
  sub_237EF75E0();
  v186 = v244;
  v187 = *(v245 + 16);
  v188 = v246;
  v187(v244, v185, v246);
  memcpy(v270, &v274[3], sizeof(v270));
  memcpy(v271, &v274[3], sizeof(v271));
  sub_237C9FEDC(v270, v273);
  v189 = v249;
  sub_237EF7810();
  v190 = type metadata accessor for CoreMLPackage(0);
  v191 = v217;
  v192 = (v217 + *(v190 + 24));
  v192[10] = 0;
  *(v192 + 3) = 0u;
  *(v192 + 4) = 0u;
  *(v192 + 1) = 0u;
  *(v192 + 2) = 0u;
  *v192 = 0u;
  v187(v191, v186, v188);
  memcpy(v272, v192, sizeof(v272));
  sub_237C9FEDC(v270, v273);
  sub_237C65484(v272, &unk_27DEAD7B0, &unk_237F03CA0);
  memcpy(v192, v271, 0x58uLL);
  v193 = v215;
  v194 = v189;
  v195 = v216;
  (*(v215 + 16))(v191 + *(v190 + 20), v194, v216);
  v196 = sub_237E34060();
  v198 = v197;
  v199 = sub_237EF7780();
  v201 = v200;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v276 = *v201;
  sub_237C91098(v196, v198, 0xD00000000000001ALL, 0x8000000237EFB6D0, isUniquelyReferenced_nonNull_native);
  *v201 = v276;
  v199(v273, 0);
  sub_237C9FF38(v270);
  (*(v193 + 8))(v249, v195);
  v203 = *(v245 + 8);
  v204 = v246;
  v203(v244, v246);
  (*(v247 + 8))(v255, v248);
  v203(v256, v204);
  (*(v213 + 8))(v257, v214);
  sub_237C65484(v251, &qword_27DEB4618, &qword_237F18078);
  (*(v253 + 8))(v250, v254);
  memcpy(v273, v274, sizeof(v273));
  sub_237C9FFE4(v273);
}

void LinearTimeSeriesForecaster.Model.export(to:metadata:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v14 = a1;
  type metadata accessor for CoreMLPackage(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = a2[8];
  sub_237E1C8D4(a3, v8 - v7);
  if (!v3)
  {
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF7770();
    sub_237EF7800();
    sub_237EF77C0();
    sub_237EF77E0();
    v11 = sub_237EF7780();
    sub_237C9FB0C(v10, sub_237C9FE58, 0, v12);
    v11(v13, 0);
    sub_237E33BC0(v14);
    sub_237D0F8BC(v9);
  }
}

uint64_t sub_237E1E1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  v10 = type metadata accessor for MultivariateLinearRegressor.Model(0, a4, a5, a6);
  *(inited + 32) = MultivariateLinearRegressor.Model.outputSize.getter(v10);
  sub_237EF7E90();
  swift_getWitnessTable();
  v14[11] = sub_237EF7F50();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v11 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C(sub_237E1E4FC, v14, v11, MEMORY[0x277D83A90], MEMORY[0x277D84A98], WitnessTable);

  sub_237CF3C98();

  return swift_setDeallocating();
}

double sub_237E1E360(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_5();
  (*(v3 + 16))(v2 - v1);
  sub_237CE3484();
  sub_237EF8190();
  return result;
}

uint64_t sub_237E1E48C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4618, &qword_237F18078);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 OUTLINED_FUNCTION_7_57(__n128 *a1)
{
  result = v1[33];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_48()
{

  return swift_deallocClassInstance();
}

void sub_237E1E564(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v206 = a2;
  v4 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v207 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_3();
  v214 = v7;
  OUTLINED_FUNCTION_12_1();
  v8 = sub_237EF7D20();
  v9 = OUTLINED_FUNCTION_18(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_3();
  v203 = v10;
  OUTLINED_FUNCTION_12_1();
  v229 = sub_237EF78C0();
  OUTLINED_FUNCTION_1();
  v223 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v228 = v13;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_22_1();
  v227 = v15;
  OUTLINED_FUNCTION_12_1();
  v226 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v230 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v181 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_22_1();
  v180 = v20;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v212 = v22;
  v213 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_2();
  v211 = v23;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_22_1();
  v217 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE938, &unk_237F06390);
  OUTLINED_FUNCTION_18(v26);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_19();
  v202 = v28;
  OUTLINED_FUNCTION_12_1();
  v29 = sub_237EF7CD0();
  v30 = OUTLINED_FUNCTION_18(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_3();
  v201 = v31;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7BC0();
  OUTLINED_FUNCTION_1();
  v204 = v33;
  v205 = v32;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_3();
  v218 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4610, &qword_237F18070);
  OUTLINED_FUNCTION_18(v35);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_19();
  v198 = v37;
  OUTLINED_FUNCTION_12_1();
  v199 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v225 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1_3();
  v221 = v40;
  v41 = a1[2];
  v192 = a1[3];
  v193 = v41;
  v42 = sub_237EF7E90();
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v194 = v44;
  v195 = v43;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_19();
  v191 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4618, &qword_237F18078);
  v48 = OUTLINED_FUNCTION_18(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_2_2();
  v196 = v49;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_22_1();
  v210 = v51;
  v187 = v42;
  v183 = *(v42 - 8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_19();
  v186 = v53;
  OUTLINED_FUNCTION_12_1();
  sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v215 = v55;
  v216 = v54;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_1_3();
  v209 = v56;
  v57 = OUTLINED_FUNCTION_12_1();
  v185 = type metadata accessor for TensorDescription(v57);
  MEMORY[0x28223BE20](v185);
  OUTLINED_FUNCTION_2_2();
  v219 = v58;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_22_1();
  v184 = v60;
  OUTLINED_FUNCTION_12_1();
  v61 = sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v63 = v62;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_2_2();
  v197 = v65;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v66);
  v68 = &v180 - v67;
  sub_237E651E4(&v235[3]);
  v235[0] = MEMORY[0x277D84F98];
  v235[1] = MEMORY[0x277D84F98];
  v235[2] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD498, &qword_237F03190);
  v69 = swift_allocObject();
  v220 = xmmword_237F03530;
  *(v69 + 16) = xmmword_237F03530;
  v222 = a1;
  v70 = a1;
  v71 = v63;
  v224 = v2;
  *(v69 + 32) = MultivariateLinearRegressor.Model.inputSize.getter(v70);
  v72 = v69;
  *(v69 + 40) = 0;
  v73 = *(v63 + 104);
  v74 = v68;
  v189 = *MEMORY[0x277D252E0];
  v190 = v63 + 104;
  v188 = v73;
  v73(v68);
  memcpy(__dst, v235, sizeof(__dst));
  sub_237CF17F0();
  sub_237CF1BA8();
  v78 = v77;
  v208 = v4;
  if (v79)
  {
  }

  else
  {
    v80 = v63;
    v81 = v61;
    v82 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      __break(1u);
      return;
    }

    v83 = v75;
    v84 = v235[0];
    swift_isUniquelyReferenced_nonNull_native();
    v234[0] = v84;
    sub_237C911D0(v82, v83, v78);

    v235[0] = v234[0];
    v61 = v81;
    v71 = v80;
  }

  v85 = v184;
  v86 = v74;
  (*(v71 + 16))(v184 + *(v185 + 20), v74, v61);
  *v85 = v72;
  v87 = v219;
  sub_237CF231C(v85, v219);
  v88 = v235[1];
  swift_isUniquelyReferenced_nonNull_native();
  v234[0] = v88;
  sub_237C912CC(v87, 0x7475706E69, 0xE500000000000000);
  v235[1] = v234[0];
  v89 = *(v71 + 8);
  v219 = v61;
  v184 = v89;
  v185 = v71 + 8;
  (v89)(v86, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_237F04760;
  v91 = v222;
  v92 = v224;
  *(v90 + 32) = MultivariateLinearRegressor.Model.outputSize.getter(v222);
  *(v90 + 40) = MultivariateLinearRegressor.Model.inputSize.getter(v91);
  v93 = v186;
  MultivariateLinearRegressor.Model.weight.getter(v91);
  v94 = v187;
  swift_getWitnessTable();
  v95 = sub_237EF7F50();
  v182 = v95;
  v96 = (*(v183 + 8))(v93, v94);
  v186 = &v180;
  v234[0] = v95;
  MEMORY[0x28223BE20](v96);
  v98 = v192;
  v97 = v193;
  *(&v180 - 4) = v193;
  *(&v180 - 3) = v98;
  v187 = v91[4];
  *(&v180 - 2) = v187;
  v99 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  v101 = v200;
  sub_237C9339C(sub_237E1FBD8, (&v180 - 6), v99, MEMORY[0x277D83A90], MEMORY[0x277D84A98], WitnessTable);
  v200 = v101;

  v102 = v209;
  sub_237CF3C98();

  swift_setDeallocating();
  swift_deallocClassInstance();
  v103 = v191;
  v104 = MultivariateLinearRegressor.Model.bias.getter(v91);
  MEMORY[0x28223BE20](v104);
  *(&v180 - 6) = v97;
  *(&v180 - 5) = v98;
  *(&v180 - 4) = v187;
  *(&v180 - 3) = v235;
  *(&v180 - 2) = v92;
  v105 = v210;
  v106 = v195;
  v107 = v216;
  v108 = v200;
  sub_237CA0A1C();
  v200 = v108;
  (*(v194 + 8))(v103, v106);
  v109 = v221;
  (*(v215 + 16))(v221, v102, v107);
  v110 = *MEMORY[0x277D252B8];
  v111 = *(v225 + 104);
  v112 = v109;
  v113 = v199;
  v111(v112, v110, v199);
  v114 = v105;
  v115 = v196;
  sub_237E1E48C(v114, v196);
  v116 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v115, 1, v107);
  v118 = v198;
  if (EnumTagSinglePayload != 1)
  {
    (*(v215 + 32))(v198, v115, v216);
    v111(v118, v110, v113);
    v116 = 0;
  }

  __swift_storeEnumTagSinglePayload(v118, v116, 1, v113);
  MultivariateLinearRegressor.Model.outputSize.getter(v222);
  OUTLINED_FUNCTION_5_10();
  v119 = v221;
  sub_237EC4744();
  sub_237C863A0(v118, &qword_27DEB4610, &qword_237F18070);
  (*(v225 + 8))(v119, v113);
  sub_237CF1ED8();

  sub_237EF7BB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940, &unk_237F1CD40);
  v120 = (*(v223 + 80) + 32) & ~*(v223 + 80);
  v225 = *(v223 + 72);
  *(swift_allocObject() + 16) = v220;
  v121 = v197;
  v188(v197, v189, v219);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD370, &qword_237F030D8);
  v122 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v124 = v123;
  v125 = (*(v123 + 80) + 32) & ~*(v123 + 80);
  v126 = swift_allocObject();
  *(v126 + 16) = v220;
  *(v126 + v125) = MultivariateLinearRegressor.Model.inputSize.getter(v222);
  v127 = v126 + v125;
  v128 = v120;
  (*(v124 + 104))(v127, *MEMORY[0x277D25278], v122);
  sub_237EF7CC0();

  (v184)(v121, v219);
  OUTLINED_FUNCTION_5_10();
  sub_237EF7880();
  sub_237EF7B90();
  sub_237EF7B70();
  sub_237EF8260();
  v129 = MEMORY[0x277D84F90];
  v130 = v202;
  sub_237EF7930();
  v131 = sub_237EF7940();
  __swift_storeEnumTagSinglePayload(v130, 0, 1, v131);
  v132 = sub_237EF7B40();
  sub_237E60E08();
  v132(v234, 0);
  v133 = v217;
  sub_237EF7720();
  v134 = sub_237EF7B80();
  v135 = *(v134 + 16);
  if (v135)
  {
    v234[0] = v129;
    sub_237C63284(0, v135, 0);
    v136 = v234[0];
    v201 = v134;
    v202 = v128;
    v137 = v134 + v128;
    v138 = *(v223 + 16);
    v221 = (v223 + 16);
    v222 = v138;
    v219 = v230 + 32;
    *&v220 = v223 + 8;
    v139 = v180;
    do
    {
      v224 = v135;
      v140 = OUTLINED_FUNCTION_8_65();
      v141 = v136;
      v142 = v139;
      v143 = v222;
      (v222)(v140);
      (v143)(v228, v128, v134);
      v139 = v142;
      v136 = v141;
      sub_237EF70F0();
      (*v220)(v128, v134);
      v234[0] = v141;
      v134 = *(v141 + 16);
      v144 = *(v141 + 24);
      if (v134 >= v144 >> 1)
      {
        sub_237C63284(v144 > 1, v134 + 1, 1);
        v136 = v234[0];
      }

      *(v136 + 16) = v134 + 1;
      v145 = OUTLINED_FUNCTION_4_73();
      v146(v145, v139, v226);
      v137 += v225;
      v135 = v224 - 1;
    }

    while (v224 != 1);

    v133 = v217;
    v128 = v202;
    v129 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  sub_237EF76B0();
  v147 = sub_237EF7BA0();
  v148 = *(v147 + 16);
  v149 = v223;
  if (v148)
  {
    v234[0] = v129;
    sub_237C63284(0, v148, 0);
    v150 = v234[0];
    v151 = v147 + v128;
    v153 = *(v149 + 16);
    v152 = v149 + 16;
    v221 = (v152 - 8);
    v222 = v153;
    v219 = v147;
    *&v220 = v230 + 32;
    v154 = v181;
    v223 = v152;
    do
    {
      v224 = v148;
      v155 = OUTLINED_FUNCTION_8_65();
      v156 = v150;
      v157 = v154;
      v158 = v222;
      (v222)(v155);
      (v158)(v228, v128, v147);
      v154 = v157;
      v150 = v156;
      sub_237EF70F0();
      (*v221)(v128, v147);
      v234[0] = v156;
      v147 = *(v156 + 16);
      v159 = *(v156 + 24);
      if (v147 >= v159 >> 1)
      {
        sub_237C63284(v159 > 1, v147 + 1, 1);
        v150 = v234[0];
      }

      *(v150 + 16) = v147 + 1;
      v160 = OUTLINED_FUNCTION_4_73();
      v161(v160, v154, v226);
      v151 += v225;
      v148 = v224 - 1;
    }

    while (v224 != 1);

    v133 = v217;
  }

  else
  {
  }

  sub_237EF7700();
  sub_237EF7D10();
  sub_237EF7660();
  sub_237EF7620();
  sub_237EF75E0();
  v162 = v211;
  v163 = *(v212 + 16);
  v164 = v213;
  v163(v211, v133, v213);
  memcpy(v231, &v235[3], sizeof(v231));
  memcpy(v232, &v235[3], sizeof(v232));
  sub_237C9FEDC(v231, v234);
  v165 = v214;
  sub_237EF7810();
  v166 = type metadata accessor for CoreMLPackage(0);
  v167 = v206;
  v168 = (v206 + *(v166 + 24));
  v168[10] = 0;
  *(v168 + 3) = 0u;
  *(v168 + 4) = 0u;
  *(v168 + 1) = 0u;
  *(v168 + 2) = 0u;
  *v168 = 0u;
  v163(v167, v162, v164);
  memcpy(v233, v168, sizeof(v233));
  sub_237C9FEDC(v231, v234);
  sub_237C863A0(v233, &unk_27DEAD7B0, &unk_237F03CA0);
  memcpy(v168, v232, 0x58uLL);
  v170 = v207;
  v169 = v208;
  (*(v207 + 16))(v167 + *(v166 + 20), v165, v208);
  v171 = sub_237E34060();
  v173 = v172;
  v174 = sub_237EF7780();
  v176 = v175;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v237 = *v176;
  sub_237C91098(v171, v173, 0xD00000000000001ALL, 0x8000000237EFB6D0, isUniquelyReferenced_nonNull_native);
  *v176 = v237;
  v174(v234, 0);
  sub_237C9FF38(v231);
  (*(v170 + 8))(v214, v169);
  v178 = *(v212 + 8);
  v179 = v213;
  v178(v211, v213);
  v178(v217, v179);
  (*(v204 + 8))(v218, v205);
  sub_237C863A0(v210, &qword_27DEB4618, &qword_237F18078);
  (*(v215 + 8))(v209, v216);
  memcpy(v234, v235, sizeof(v234));
  sub_237C9FFE4(v234);
}

uint64_t sub_237E1F8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  v10 = type metadata accessor for MultivariateLinearRegressor.Model(0, a4, a5, a6);
  *(inited + 32) = MultivariateLinearRegressor.Model.outputSize.getter(v10);
  sub_237EF7E90();
  swift_getWitnessTable();
  v14[11] = sub_237EF7F50();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v11 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C(sub_237E1FBB4, v14, v11, MEMORY[0x277D83A90], MEMORY[0x277D84A98], WitnessTable);

  sub_237CF3C98();

  return swift_setDeallocating();
}

double sub_237E1FA80(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_237CE3484();
  sub_237EF8190();
  return result;
}

uint64_t sub_237E1FC2C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q1>)
{
  v5 = 0uLL;
  v7 = 0;
  LODWORD(v8) = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (result >> 32 < result)
      {
        __break(1u);
      }

      else
      {
        result = sub_237E209F8(result, v9);
        if (!v4)
        {
          v7 = v9[0];
          LODWORD(v8) = v9[1];
          v5 = v10;
          a4 = v11;
          goto LABEL_8;
        }
      }

      break;
    case 2uLL:
      result = sub_237E209F8(*(result + 16), v12);
      if (!v4)
      {
        v7 = v12[0];
        LODWORD(v8) = v12[1];
        v5 = v13;
        a4 = v14;
        goto LABEL_8;
      }

      break;
    case 3uLL:
      goto LABEL_8;
    default:
      v8 = HIDWORD(result);
      *&v5 = a2 & 0xFFFFFFFFFFFFLL;
      v7 = result;
LABEL_8:
      *a3 = v7;
      *(a3 + 4) = v8;
      *(a3 + 8) = v5;
      *(a3 + 24) = a4;
      break;
  }

  return result;
}

void *sub_237E1FD00@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_237CBA540(a1, a2);
  v7 = OUTLINED_FUNCTION_31_0();
  if (sub_237E1FEC8(v7, v8, v9, v10))
  {
    v11 = OUTLINED_FUNCTION_31_0();
    sub_237E1FC2C(v11, v12, v13, v14);
    sub_237D947A0(v38, v39, &v40);
    if (DWORD1(v40) == 2)
    {
      v44 = v40;
      v45 = v41;
      v46 = v42;
      v47 = v43;
      goto LABEL_6;
    }

LABEL_8:
    v26 = OUTLINED_FUNCTION_31_0();
    sub_237CBA6B8(v26, v27);
    sub_237E20240();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
    goto LABEL_9;
  }

  v15 = OUTLINED_FUNCTION_31_0();
  sub_237E20064(v15, v16, v17);
  if (DWORD1(v40) != 2)
  {
    goto LABEL_8;
  }

  v48 = v40;
  v49 = v41;
  v50 = v42;
  v51 = v43;
LABEL_6:
  v18 = OUTLINED_FUNCTION_31_0();
  v22 = sub_237E20294(v18, v19, v20, v21);
  v23 = OUTLINED_FUNCTION_31_0();
  sub_237CBA6B8(v23, v24);
  if (!v3)
  {
    *__src = a1;
    *&__src[8] = a2;
    *&__src[16] = v40;
    *&__src[32] = v41;
    *&__src[48] = v42;
    *&__src[64] = v43;
    *&__src[80] = v22;
    v31 = a1;
    v32 = a2;
    v33 = v40;
    v34 = v41;
    v35 = v42;
    v36 = v43;
    v37 = v22;
    sub_237C9FEDC(__src, &v29);
    sub_237C9FF38(&v31);
    return memcpy(a3, __src, 0x58uLL);
  }

LABEL_9:
  v31 = a1;
  v32 = a2;
  v33 = v40;
  v34 = v41;
  v35 = v42;
  v36 = v43;
  v37 = MEMORY[0x277D84F90];
  return sub_237C9FF38(&v31);
}

uint64_t sub_237E1FEC8(uint64_t a1, unint64_t a2, __n128 a3, __n128 a4)
{
  v4 = a2 >> 62;
  v5 = 0;
  v6 = BYTE6(a2);
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v7) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v7 = v7;
LABEL_6:
      if (v7 != 40)
      {
        if (v4 == 2)
        {
          v13 = *(a1 + 16);
          v12 = *(a1 + 24);
          v10 = __OFSUB__(v12, v13);
          v11 = v12 - v13;
          if (!v10)
          {
            goto LABEL_16;
          }

          __break(1u);
        }

        else if (v4 == 1)
        {
          LODWORD(v11) = HIDWORD(a1) - a1;
          if (!__OFSUB__(HIDWORD(a1), a1))
          {
            v11 = v11;
LABEL_16:
            if (v11 == 64)
            {
LABEL_23:
              v5 = 0;
              return v5 & 1;
            }

            if (v4 == 2)
            {
              v15 = *(a1 + 16);
              v14 = *(a1 + 24);
              v10 = __OFSUB__(v14, v15);
              v6 = v14 - v15;
              if (!v10)
              {
                goto LABEL_22;
              }

LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

            if (v4 != 1)
            {
LABEL_22:
              if (v6 < 68)
              {
                goto LABEL_23;
              }

              if (v4 == 2)
              {
                a1 = *(a1 + 16);
LABEL_28:
                v5 = sub_237E20968(a1, a3, a4);
                return v5 & 1;
              }

              if (a1 >> 32 >= a1)
              {
                a1 = a1;
                goto LABEL_28;
              }

LABEL_35:
              __break(1u);
            }

            if (!__OFSUB__(HIDWORD(a1), a1))
            {
              v6 = HIDWORD(a1) - a1;
              goto LABEL_22;
            }

LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v11 = BYTE6(a2);
        goto LABEL_16;
      }

      v5 = 1;
      return v5 & 1;
    case 2uLL:
      v9 = *(a1 + 16);
      v8 = *(a1 + 24);
      v10 = __OFSUB__(v8, v9);
      v7 = v8 - v9;
      if (!v10)
      {
        goto LABEL_6;
      }

      goto LABEL_31;
    case 3uLL:
      return v5 & 1;
    default:
      v7 = BYTE6(a2);
      goto LABEL_6;
  }
}

int64_t sub_237E20064@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v5 = 0;
  LOBYTE(v6) = 0;
  v7 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v14 = result;
      if (result > result >> 32)
      {
        __break(1u);
        goto LABEL_16;
      }

      v15 = sub_237EF5CA0();
      if (v15)
      {
        result = sub_237EF5CC0();
        if (__OFSUB__(v14, result))
        {
          goto LABEL_17;
        }

        v15 += v14 - result;
      }

      result = sub_237EF5CB0();
      if (!v15)
      {
        __break(1u);
        goto LABEL_9;
      }

      goto LABEL_13;
    case 2uLL:
LABEL_9:
      v17 = *(result + 16);
      v15 = sub_237EF5CA0();
      if (!v15)
      {
        goto LABEL_12;
      }

      result = sub_237EF5CC0();
      if (__OFSUB__(v17, result))
      {
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v15 += v17 - result;
LABEL_12:
      result = sub_237EF5CB0();
      if (!v15)
      {
        goto LABEL_18;
      }

LABEL_13:
      v3 = *v15;
      v5 = *(v15 + 8);
      v16.i32[0] = *(v15 + 9);
      v7 = vmovl_u8(v16).u64[0];
      LOBYTE(v6) = *(v15 + 13);
      v18 = *(v15 + 14);
      v19 = *(v15 + 30);
      v20 = *(v15 + 46);
      v21 = *(v15 + 62);
LABEL_14:
      *a3 = v3;
      *(a3 + 8) = v5;
      *(a3 + 9) = vuzp1_s8(v7, v3).u32[0];
      *(a3 + 13) = v6;
      *(a3 + 14) = v18;
      *(a3 + 30) = v19;
      *(a3 + 46) = v20;
      *(a3 + 62) = v21;
      return result;
    case 3uLL:
      goto LABEL_14;
    default:
      v8 = vdupq_n_s64(result);
      v9 = vshlq_u64(v8, xmmword_237F180A0);
      v10 = vmovn_s64(vshlq_u64(v8, xmmword_237F18090));
      v10.i8[1] = v10.i8[4];
      *v8.i8 = vmovn_s64(vshlq_u64(v8, xmmword_237F180B0));
      v11 = vzip1_s16(result, v10);
      v12 = vmovn_s64(v9);
      v12.i8[1] = v12.i8[4];
      v12.i8[2] = v8.i8[0];
      v12.i8[3] = v8.i8[4];
      v3 = vzip1_s32(v11, v12);
      v13 = vdupq_n_s64(a2);
      v7 = vmovn_s32(vuzp1q_s32(vshlq_u64(v13, xmmword_237F180D0), vshlq_u64(v13, xmmword_237F180C0)));
      v6 = a2 >> 40;
      v5 = a2;
      goto LABEL_14;
  }
}

unint64_t sub_237E20240()
{
  result = qword_27DEB4620[0];
  if (!qword_27DEB4620[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB4620);
  }

  return result;
}

uint64_t sub_237E20294(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void))
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
      }

      if (sub_237EF5CA0() && __OFSUB__(a1, sub_237EF5CC0()))
      {
        goto LABEL_17;
      }

LABEL_12:
      sub_237EF5CB0();
      OUTLINED_FUNCTION_1_92();
      a4();
      result = sub_237CBA6B8(a1, a2);
      if (!v4)
      {
        return v12;
      }

      return result;
    case 2uLL:
      v8 = *(a1 + 16);
      v9 = *(a1 + 24);

      if (sub_237EF5CA0() && __OFSUB__(v8, sub_237EF5CC0()))
      {
        goto LABEL_16;
      }

      if (!__OFSUB__(v9, v8))
      {
        goto LABEL_12;
      }

      __break(1u);
LABEL_7:
      OUTLINED_FUNCTION_1_92();
      a4();
      result = sub_237CBA6B8(a1, a2);
      if (!v4)
      {
        return v11;
      }

      return result;
    default:
      goto LABEL_7;
  }
}

void sub_237E204D8(uint64_t a1@<X0>, int *a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, void *a5@<X8>)
{
  v8 = *a2;
  sub_237D0B9C8();
  v10 = v9;
  if (!v8)
  {
LABEL_23:
    *a5 = v10;
    return;
  }

  v11 = __OFSUB__(HIDWORD(a3), a3);
  v12 = HIDWORD(a3) - a3;
  v13 = BYTE6(a4);
  v14 = a4 >> 62;
  v15 = 64;
  v16 = a3;
  while (1)
  {
    v17 = v15 + 64;
    if (__OFADD__(v15, 64))
    {
      break;
    }

    v18 = v13;
    switch(v14)
    {
      case 1uLL:
        v18 = v12;
        if (v11)
        {
          goto LABEL_31;
        }

        goto LABEL_11;
      case 2uLL:
        v20 = *(v16 + 16);
        v19 = *(v16 + 24);
        v21 = __OFSUB__(v19, v20);
        v18 = v19 - v20;
        if (v21)
        {
          goto LABEL_30;
        }

        goto LABEL_11;
      case 3uLL:
        if (v17 < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_24;
      default:
LABEL_11:
        if (v17 >= v18)
        {
          goto LABEL_24;
        }

LABEL_14:
        if (!a1)
        {
          goto LABEL_32;
        }

        v22 = *(a1 + v15 + 4);
        v23 = *(a1 + v15 + 8);
        v35 = *(a1 + v15 + 16);
        v36 = *(a1 + v15 + 32);
        v37 = *(a1 + v15 + 48);
        if (*(a1 + v15) != -559038737)
        {
LABEL_24:

          sub_237E20240();
          swift_allocError();
          *v30 = 1;
          swift_willThrow();
          return;
        }

        v24 = *(v10 + 16);
        if (v24 >= *(v10 + 24) >> 1)
        {
          v33 = v16;
          v32 = v11;
          v31 = v12;
          sub_237D0B9C8();
          v12 = v31;
          v11 = v32;
          v16 = v33;
          v10 = v29;
        }

        *(v10 + 16) = v24 + 1;
        v25 = v10 + (v24 << 6);
        *(v25 + 32) = -559038737;
        *(v25 + 36) = v22;
        *(v25 + 40) = v23;
        *(v25 + 64) = v36;
        *(v25 + 80) = v37;
        *(v25 + 48) = v35;
        if (v23 < 0)
        {
          goto LABEL_26;
        }

        v26 = (v23 - 1) / 64;
        if ((v26 - 0x1FFFFFFFFFFFFFFLL) >> 58 != 63)
        {
          goto LABEL_27;
        }

        v27 = v26 << 6;
        v21 = __OFADD__(v27, 128);
        v28 = v27 + 128;
        if (v21)
        {
          goto LABEL_28;
        }

        v21 = __OFADD__(v15, v28);
        v15 += v28;
        if (v21)
        {
          goto LABEL_29;
        }

        if (!--v8)
        {
          goto LABEL_23;
        }

        break;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
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

void sub_237E20724(uint64_t a1@<X0>, int *a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, void *a5@<X8>)
{
  v8 = *a2;
  sub_237D0B9C8();
  v10 = v9;
  if (!v8)
  {
LABEL_23:
    *a5 = v10;
    return;
  }

  v11 = __OFSUB__(HIDWORD(a3), a3);
  v12 = HIDWORD(a3) - a3;
  v13 = BYTE6(a4);
  v14 = 40;
  v15 = a4 >> 62;
  v16 = 0uLL;
  v17 = a3;
  while (1)
  {
    v18 = v14 + 56;
    if (__OFADD__(v14, 56))
    {
      break;
    }

    v19 = v13;
    switch(v15)
    {
      case 1uLL:
        v19 = v12;
        if (v11)
        {
          goto LABEL_31;
        }

        goto LABEL_11;
      case 2uLL:
        v21 = *(v17 + 16);
        v20 = *(v17 + 24);
        v22 = __OFSUB__(v20, v21);
        v19 = v20 - v21;
        if (v22)
        {
          goto LABEL_30;
        }

        goto LABEL_11;
      case 3uLL:
        if (v18 < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_24;
      default:
LABEL_11:
        if (v18 >= v19)
        {
          goto LABEL_24;
        }

LABEL_14:
        if (!a1)
        {
          goto LABEL_32;
        }

        v23 = a1 + v14;
        if (*(a1 + v14) != -559038737)
        {
LABEL_24:

          sub_237E20240();
          swift_allocError();
          *v32 = 1;
          swift_willThrow();
          return;
        }

        v24 = *(v23 + 4);
        v25 = *(v23 + 8);
        v26 = *(v10 + 16);
        if (v26 >= *(v10 + 24) >> 1)
        {
          v36 = v17;
          v35 = v11;
          v34 = v12;
          v33 = *(v23 + 8);
          sub_237D0B9C8();
          v25 = v33;
          v16 = 0uLL;
          v12 = v34;
          v11 = v35;
          v17 = v36;
          v10 = v31;
        }

        *(v10 + 16) = v26 + 1;
        v27 = v10 + (v26 << 6);
        *(v27 + 32) = -559038737;
        *(v27 + 36) = v24;
        *(v27 + 40) = v25;
        *(v27 + 56) = v16;
        *(v27 + 72) = v16;
        *(v27 + 88) = 0;
        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }

        v28 = (v25 - 1) / 8;
        if ((v28 - 0xFFFFFFFFFFFFFFFLL) >> 61 != 7)
        {
          goto LABEL_27;
        }

        v29 = 8 * v28;
        v22 = __OFADD__(v29, 64);
        v30 = v29 + 64;
        if (v22)
        {
          goto LABEL_28;
        }

        v22 = __OFADD__(v14, v30);
        v14 += v30;
        if (v22)
        {
          goto LABEL_29;
        }

        if (!--v8)
        {
          goto LABEL_23;
        }

        break;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
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

uint64_t sub_237E20968(uint64_t a1, __n128 a2, __n128 a3)
{
  v4 = sub_237EF5CA0();
  if (v4)
  {
    v5 = v4;
    result = sub_237EF5CC0();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_10;
    }

    v7 = a1 - result + v5;
  }

  else
  {
    v7 = 0;
  }

  result = sub_237EF5CB0();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  return *(v7 + 64) != -559038737 && *(v7 + 40) == -559038737;
}

uint64_t sub_237E209F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_237EF5CA0();
  if (v6)
  {
    v7 = v6;
    result = sub_237EF5CC0();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v9 = a1 - result + v7;
  }

  else
  {
    v9 = 0;
  }

  result = sub_237EF5CB0();
  if (v9)
  {
    *a2 = *v9;
    *(a2 + 8) = *(v9 + 8);
    *(a2 + 24) = *(v9 + 24);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t AnnotatedPrediction.init(prediction:annotation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = type metadata accessor for AnnotatedPrediction(0, a3, a4, v9);
  v11 = *(*(a4 - 8) + 32);
  v12 = a5 + *(v10 + 36);

  return v11(v12, a2, a4);
}

uint64_t sub_237E20C5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974636964657270 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697461746F6E6E61 && a2 == 0xEA00000000006E6FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_237E20D34(char a1)
{
  if (a1)
  {
    return 0x697461746F6E6E61;
  }

  else
  {
    return 0x6974636964657270;
  }
}

uint64_t sub_237E20D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E20C5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E20DA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237E20DFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t AnnotatedPrediction<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[4] = a3;
  v15[2] = a4;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v15[0] = a2;
  v15[1] = v5;
  type metadata accessor for AnnotatedPrediction.CodingKeys(255, v6, v5, a4);
  OUTLINED_FUNCTION_1_93();
  swift_getWitnessTable();
  v7 = sub_237EF9A80();
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  v17 = 0;
  v13 = v15[5];
  sub_237EF9A70();
  if (!v13)
  {
    v16 = 1;
    sub_237EF9A70();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t AnnotatedPrediction<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a5;
  v46 = a4;
  v40 = a6;
  OUTLINED_FUNCTION_1_1();
  v39 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_3();
  v41 = v11;
  OUTLINED_FUNCTION_1_1();
  v44 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_3();
  v47 = v14;
  type metadata accessor for AnnotatedPrediction.CodingKeys(255, v15, v16, v17);
  OUTLINED_FUNCTION_1_93();
  swift_getWitnessTable();
  v48 = sub_237EF99A0();
  OUTLINED_FUNCTION_1_1();
  v43 = v18;
  MEMORY[0x28223BE20](v19);
  v45 = a2;
  v21 = type metadata accessor for AnnotatedPrediction(0, a2, a3, v20);
  OUTLINED_FUNCTION_1_1();
  v38 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v38 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = v49;
  sub_237EFA190();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v25;
  v49 = v21;
  v28 = v44;
  v51 = 0;
  v29 = v45;
  sub_237EF9970();
  v30 = *(v28 + 32);
  v46 = v27;
  v30(v27, v47, v29);
  v50 = 1;
  v31 = v41;
  sub_237EF9970();
  v32 = OUTLINED_FUNCTION_4_22();
  v33(v32);
  v34 = v49;
  v35 = v46;
  (*(v39 + 32))(&v46[*(v49 + 36)], v31, a3);
  v36 = v38;
  (*(v38 + 16))(v40, v35, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v36 + 8))(v35, v34);
}

uint64_t static AnnotatedPrediction<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_237EF8520() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AnnotatedPrediction(0, a3, a4, v8);
  return sub_237EF8520() & 1;
}

double AnnotatedPrediction<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_237EF83E0();
  sub_237EF83E0();
  return result;
}

uint64_t AnnotatedPrediction<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237EFA120();
  AnnotatedPrediction<>.hash(into:)(v7, a1, a2, a3);
  return sub_237EFA170();
}

uint64_t sub_237E21564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  sub_237EFA120();
  AnnotatedPrediction<>.hash(into:)(v7, a2, v4, v5);
  return sub_237EFA170();
}

uint64_t sub_237E21608(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_237E217D0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_237E21A5C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PreprocessingUpdatableEstimator.init(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_22_3();
  (*(v12 + 32))(a6);
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v13 = type metadata accessor for PreprocessingUpdatableEstimator(0, v15);
  return (*(*(a3 - 8) + 32))(a6 + *(v13 + 52), a1, a3);
}

uint64_t PreprocessingUpdatableEstimator.makeTransformer()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = a1[3];
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v11 = *(v10 + 40);
  v24 = *(v11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v16 = a1[2];
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  PreprocessingUpdatableEstimator.preprocessor.getter(a1, v19 - v18);
  PreprocessingUpdatableEstimator.estimator.getter(a1, v9);
  (*(v11 + 16))(v3, v11);
  (*(v5 + 8))(v9, v3);
  v21 = a1[4];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return ComposedTransformer.init(_:_:)(v20, v15, v16, AssociatedTypeWitness, v21, AssociatedConformanceWitness, v25);
}

uint64_t PreprocessingUpdatableEstimator.preprocessed<A>(from:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v1[9] = *(v3 + 16);
  OUTLINED_FUNCTION_1_1();
  v1[10] = v8;
  v1[11] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237E21FF4()
{
  OUTLINED_FUNCTION_2_0();
  v1 = v0[5];
  PreprocessingUpdatableEstimator.preprocessor.getter(v1, v0[11]);
  v2 = swift_task_alloc();
  v0[12] = v2;
  v3 = *(v1 + 32);
  *v2 = v0;
  v2[1] = sub_237E220B0;
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return Transformer.applied<A>(to:eventHandler:)(v9, v7, v8, v4, v5, v3, v6);
}

uint64_t sub_237E220B0(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_14_0();
  *v6 = v5;
  v7 = *v2;
  *v6 = *v2;
  *(v5 + 104) = v1;

  (*(v4[10] + 8))(v4[11], v4[9]);
  if (v1)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {

    v11 = v7[1];

    return v11(a1);
  }
}

uint64_t PreprocessingUpdatableEstimator.fitted<A>(toPreprocessed:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[8] = v4;
  v1[9] = v0;
  v1[6] = v2;
  v1[7] = v5;
  v1[4] = v6;
  v1[5] = v7;
  v1[2] = v8;
  v1[3] = v9;
  v1[10] = *(v2 + 16);
  OUTLINED_FUNCTION_22_3();
  v1[11] = OUTLINED_FUNCTION_27_0();
  v1[12] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[13] = v10;
  v1[14] = OUTLINED_FUNCTION_27_0();
  v1[15] = *(*(v3 + 40) + 8);
  v1[16] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v1[17] = v11;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_237E223B0()
{
  OUTLINED_FUNCTION_12_2();
  PreprocessingUpdatableEstimator.estimator.getter(v0[6], v0[14]);
  OUTLINED_FUNCTION_15_0();
  v12 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_237E224D8;
  v3 = v0[19];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  return v12(v3, v10, v8, v9, v6, v7, v5, v4);
}

uint64_t sub_237E224D8()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2[14];
  v4 = v2[13];
  v5 = v2[12];
  v6 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v7 = v6;
  *(v8 + 168) = v0;

  (*(v4 + 8))(v3, v5);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237E22634()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[11];
  v12 = v0[10];
  v6 = v0[6];
  v11 = v0[2];
  PreprocessingUpdatableEstimator.preprocessor.getter(v6, v5);
  (*(v4 + 32))(v2, v1, v3);
  v7 = *(v6 + 32);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ComposedTransformer.init(_:_:)(v5, v2, v12, v3, v7, AssociatedConformanceWitness, v11);

  OUTLINED_FUNCTION_3_0();

  return v9();
}

uint64_t PreprocessingUpdatableEstimator.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_13_41();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  v6 = swift_task_alloc();
  v1[8] = v6;
  *v6 = v1;
  OUTLINED_FUNCTION_10_53(v6);

  return PreprocessingUpdatableEstimator.preprocessed<A>(from:eventHandler:)();
}

uint64_t sub_237E22808()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  *(v2 + 72) = v1;
  *(v2 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_3_0();

    return v3();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }
}

uint64_t sub_237E2292C(uint64_t a1)
{
  v2 = v1[10];
  sub_237EF8B90();
  if (v2)
  {

    OUTLINED_FUNCTION_3_0();

    return v3();
  }

  else
  {
    v1[2] = v1[9];
    v5 = swift_task_alloc();
    v1[11] = v5;
    swift_getAssociatedTypeWitness();
    sub_237EF8A60();
    OUTLINED_FUNCTION_8_66();
    *v5 = v1;
    v5[1] = sub_237E22A70;

    return PreprocessingUpdatableEstimator.fitted<A>(toPreprocessed:eventHandler:)();
  }
}

uint64_t sub_237E22A70()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

uint64_t PreprocessingUpdatableEstimator.update<A>(_:withPreprocessed:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v1[6] = v7;
  v1[7] = v8;
  v1[14] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[15] = v9;
  v1[16] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_237E22C3C()
{
  v1 = v0[10];
  v2 = v0[6];
  PreprocessingUpdatableEstimator.estimator.getter(v1, v0[16]);
  v3 = v1[2];
  v4 = v1[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = v1[4];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[2] = v3;
  v0[3] = AssociatedTypeWitness;
  v0[4] = v6;
  v0[5] = AssociatedConformanceWitness;
  v8 = *(type metadata accessor for ComposedTransformer(0, (v0 + 2)) + 52);
  OUTLINED_FUNCTION_15_0();
  v18 = (v9 + *v9);
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_237E22E00;
  v11 = v0[14];
  v12 = v0[11];
  v13 = v0[12];
  v14 = v0[8];
  v15 = v0[9];
  v16 = v0[7];

  return v18(v2 + v8, v16, v14, v15, v12, v13, v11, v4);
}

uint64_t sub_237E22E00()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v6 = v5[16];
  v7 = v5[15];
  v8 = v5[14];
  v9 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v10 = v9;
  *(v3 + 144) = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v14();
  }
}

uint64_t sub_237E22F8C()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingUpdatableEstimator.update<A>(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_13_41();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v1[12] = *(v2 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_27_0();
  v7 = swift_task_alloc();
  v1[15] = v7;
  *v7 = v1;
  OUTLINED_FUNCTION_10_53(v7);

  return PreprocessingUpdatableEstimator.preprocessed<A>(from:eventHandler:)();
}

uint64_t sub_237E230E0()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 128) = v6;
  *(v3 + 136) = v0;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_237E2321C(uint64_t a1)
{
  v2 = v1[17];
  sub_237EF8B90();
  if (v2)
  {

    OUTLINED_FUNCTION_3_0();

    return v3();
  }

  else
  {
    v5 = v1[16];
    v6 = v1[10];
    v20 = v1[7];
    PreprocessingUpdatableEstimator.estimator.getter(v6, v1[14]);
    v1[6] = v5;
    v7 = v6[2];
    v8 = v6[5];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v10 = v6[4];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v1[2] = v7;
    v1[3] = AssociatedTypeWitness;
    v1[4] = v10;
    v1[5] = AssociatedConformanceWitness;
    v12 = *(type metadata accessor for ComposedTransformer(0, (v1 + 2)) + 52);
    OUTLINED_FUNCTION_15_0();
    v19 = (v13 + *v13);
    v14 = swift_task_alloc();
    v1[18] = v14;
    swift_getAssociatedTypeWitness();
    sub_237EF8A60();
    v15 = OUTLINED_FUNCTION_8_66();
    *v14 = v1;
    v14[1] = sub_237E23484;
    v16 = v1[12];
    v17 = v1[8];
    v18 = v1[9];

    return (v19)(v20 + v12, v1 + 6, v17, v18, v7, v15, v16, v8);
  }
}

uint64_t sub_237E23484()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  v3[19] = v0;

  if (v0)
  {
    (*(v3[13] + 8))(v3[14], v3[12]);
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    (*(v3[13] + 8))(v3[14], v3[12]);

    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

uint64_t PreprocessingUpdatableEstimator.encode(_:to:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a3[5] + 8);
  v5 = a3[2];
  v6 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = a3[4];
  v14[0] = v5;
  v14[1] = AssociatedTypeWitness;
  v14[2] = v8;
  v14[3] = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for ComposedTransformer(0, v14);
  v10 = OUTLINED_FUNCTION_27_12(v9);
  return v11(v10, a2, v6, v4);
}

uint64_t PreprocessingUpdatableEstimator.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v22 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v25 = v10 - v9;
  v12 = *(*(v11 + 40) + 8);
  v13 = *(v11 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v21 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_34_2();
  OUTLINED_FUNCTION_24_9();
  result = v18(a1, v13, v12);
  if (!v26)
  {
    (*(v22 + 16))(v25, v4, v24);
    (*(v21 + 32))(v5, v3, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return OUTLINED_FUNCTION_21_38(v25, AssociatedConformanceWitness, a3);
  }

  return result;
}

uint64_t PreprocessingUpdatableEstimator.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[5];
  v5 = a3[2];
  v6 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = a3[4];
  v14[0] = v5;
  v14[1] = AssociatedTypeWitness;
  v14[2] = v8;
  v14[3] = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for ComposedTransformer(0, v14);
  v10 = OUTLINED_FUNCTION_27_12(v9);
  return v11(v10, a2, v6, v4);
}

uint64_t PreprocessingUpdatableEstimator.decodeWithOptimizer(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v22 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v25 = v10 - v9;
  v12 = *(v11 + 40);
  v13 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_34_2();
  OUTLINED_FUNCTION_24_9();
  result = v19(a1, v13, v12);
  if (!v27)
  {
    (*(v22 + 16))(v25, v4, v24);
    (*(v16 + 32))(v5, v3, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return OUTLINED_FUNCTION_21_38(v25, AssociatedConformanceWitness, a3);
  }

  return result;
}

uint64_t sub_237E23B90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return PreprocessingUpdatableEstimator.update<A>(_:with:eventHandler:)();
}

uint64_t sub_237E23C9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6A904;

  return PreprocessingUpdatableEstimator.fitted<A>(to:eventHandler:)();
}

uint64_t sub_237E23F18(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237E23F54(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_237E2411C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_8_66()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_21_38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{

  return ComposedTransformer.init(_:_:)(a1, v5, v3, v6, v4, a2, a3);
}

void ClassificationMetrics.init<A, B>(_:_:)()
{
  OUTLINED_FUNCTION_37_0();
  v25 = v1;
  v26 = v2;
  v27 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v29 = v11;
  v30 = v10;
  v31 = v6;
  v32.n128_u64[0] = *(v2 + 8);
  v12 = sub_237EF9380();
  OUTLINED_FUNCTION_20_8();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_43_0();
  v24 = sub_237EF9340();
  OUTLINED_FUNCTION_1();
  v28 = v14;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_28_26();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_43_0();
  sub_237EF9640();
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  sub_237EFA000();
  MEMORY[0x2383E08A0](v12, WitnessTable);
  v18 = OUTLINED_FUNCTION_31_0();
  v19(v18);
  OUTLINED_FUNCTION_71();
  v20 = swift_allocObject();
  v20[2] = v9;
  v20[3] = v7;
  v20[4] = v5;
  v20[5] = v27;
  v20[6] = v25;
  v20[7] = v26;
  OUTLINED_FUNCTION_70();
  v21 = swift_allocObject();
  v21[2] = v9;
  v21[3] = v7;
  v21[4] = v5;
  v21[5] = v27;
  v21[6] = v25;
  v21[7] = v26;
  v21[8] = sub_237E2A988;
  v21[9] = v20;
  swift_getWitnessTable();
  sub_237EF9860();

  (*(v28 + 8))(v0, v24);
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  ClassificationMetrics.init<A>(_:)();
  OUTLINED_FUNCTION_22_3();
  (*(v22 + 8))(v29, v5);
  OUTLINED_FUNCTION_22_3();
  (*(v23 + 8))(v30, v7);
  OUTLINED_FUNCTION_25_29(v31, v32);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237E247A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_54_8();
  ClassificationMetrics.truePositiveCount(of:)(v5, v6);
  v8 = v7;
  OUTLINED_FUNCTION_54_8();
  result = a3(a1, a2);
  if (__OFADD__(v8, result))
  {
    __break(1u);
  }

  return result;
}

uint64_t ClassificationMetrics.accuracy.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  OUTLINED_FUNCTION_13_8();
  type metadata accessor for LabelPair(v3, v4, v5, v6);
  OUTLINED_FUNCTION_0_74();
  swift_getWitnessTable();
  v7 = MEMORY[0x277D83B88];
  v18[14] = sub_237EF8290();
  v18[13] = 0;
  OUTLINED_FUNCTION_135();
  sub_237EF8270();
  swift_getWitnessTable();
  sub_237EF87F0();

  v18[10] = v1;
  v18[11] = v2;
  sub_237EF8260();
  v18[15] = sub_237EF8280();
  v18[6] = v1;
  v18[7] = v2;
  v18[2] = v1;
  v18[3] = v2;
  v18[4] = swift_getKeyPath();
  OUTLINED_FUNCTION_135();
  v8 = sub_237EF82B0();
  OUTLINED_FUNCTION_6_58();
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C(sub_237E26748, v18, v8, v7, MEMORY[0x277D84A98], WitnessTable);
  v11 = v10;

  v13 = *(v11 + 16);
  if (!v13)
  {
  }

  v14 = 0;
  for (i = 32; ; i += 8)
  {
    v16 = *(v11 + i);
    v17 = __OFADD__(v14, v16);
    v14 += v16;
    if (v17)
    {
      break;
    }

    if (!--v13)
    {
    }
  }

  __break(1u);
  return result;
}

double ClassificationMetrics.f1Score(label:)()
{
  OUTLINED_FUNCTION_39_16();
  ClassificationMetrics.precisionScore(label:)(v0, v1);
  v3 = v2;
  OUTLINED_FUNCTION_39_16();
  v4 = OUTLINED_FUNCTION_11_19();
  ClassificationMetrics.recallScore(label:)(v4, v5);
  return (v3 * v6 + v3 * v6) / (v3 + v6);
}

uint64_t ClassificationMetrics.count(label:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (*(v3 + 16) && (v4 = sub_237E2A148(a1, *(a2 + 16), *(a2 + 24)), (v5 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

void ClassificationMetrics.trueNegativeCount(of:)()
{
  OUTLINED_FUNCTION_37_0();
  v60 = v1;
  v3 = *(v2 + 16);
  v54 = *(v2 + 24);
  v55 = v3;
  v5 = type metadata accessor for LabelPair(0, v3, v54, v4);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_26();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v48 = &v45 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22_24();
  v59 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v15);
  v58 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  v57 = &v45 - v18;
  v19 = *(v0 + 40) + 64;
  OUTLINED_FUNCTION_22_33();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v47 = v7 + 16;
  v61 = (v7 + 32);
  v56 = (v25 + 32);
  v50 = v7;
  v51 = v26;
  v53 = v7 + 8;
  sub_237EF8260();
  v27 = 0;
  v28 = 0;
  v49 = v11;
  v62 = TupleTypeMetadata2;
LABEL_2:
  v46 = v27;
  while (v22)
  {
    v29 = v28;
LABEL_9:
    v30 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v31 = v30 | (v29 << 6);
    v32 = v51;
    (*(v50 + 16))(v48, *(v51 + 48) + *(v50 + 72) * v31, v5);
    v33 = *(*(v32 + 56) + 8 * v31);
    v34 = *(v62 + 48);
    TupleTypeMetadata2 = v62;
    v35 = v58;
    OUTLINED_FUNCTION_18_5();
    v36();
    v37 = 0;
    *(v35 + v34) = v33;
    v11 = v49;
LABEL_10:
    __swift_storeEnumTagSinglePayload(v35, v37, 1, TupleTypeMetadata2);
    v38 = v57;
    (*v56)();
    OUTLINED_FUNCTION_38_12(v38);
    if (v39)
    {
      goto LABEL_19;
    }

    v52 = *(v38 + *(TupleTypeMetadata2 + 48));
    (*v61)(v11, v38, v5);
    OUTLINED_FUNCTION_27_24();
    if (sub_237EF8520())
    {
      v40 = OUTLINED_FUNCTION_47_13();
      v41(v40);
      TupleTypeMetadata2 = v62;
    }

    else
    {
      OUTLINED_FUNCTION_27_24();
      v42 = sub_237EF8520();
      v43 = OUTLINED_FUNCTION_47_13();
      v44(v43);
      TupleTypeMetadata2 = v62;
      if ((v42 & 1) == 0)
      {
        v27 = v46 + v52;
        if (!__OFADD__(v46, v52))
        {
          goto LABEL_2;
        }

        __break(1u);
LABEL_19:

        OUTLINED_FUNCTION_38_0();
        return;
      }
    }
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v24)
    {
      v22 = 0;
      v37 = 1;
      v35 = v58;
      goto LABEL_10;
    }

    v22 = *(v19 + 8 * v29);
    ++v28;
    if (v22)
    {
      v28 = v29;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_237E24F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[1];
  v24[0] = *v4;
  v24[1] = v7;
  v24[2] = v4[2];
  v8 = *(a2 + 24);
  v20 = *(a2 + 16);
  v21 = v8;
  v22 = a1;
  sub_237EF8260();
  v23 = sub_237EF8C90();
  v19[2] = v20;
  v19[3] = v8;
  v19[4] = v24;
  v19[5] = a1;
  OUTLINED_FUNCTION_23_8();
  v9 = sub_237EF8CF0();
  OUTLINED_FUNCTION_14_49();
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C(a4, v19, v9, MEMORY[0x277D83B88], MEMORY[0x277D84A98], WitnessTable);
  v12 = v11;

  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (v12 + 32);
    while (1)
    {
      v17 = *v16++;
      v18 = __OFADD__(v15, v17);
      v15 += v17;
      if (v18)
      {
        break;
      }

      if (!--v14)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = 0;
LABEL_7:

    return v15;
  }

  return result;
}

uint64_t ClassificationMetrics.labels.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_237E25128@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for ClassificationMetrics(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a4);
  result = ClassificationMetrics.accuracy.getter(v5);
  *a3 = v7;
  return result;
}

uint64_t sub_237E251F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v45 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v43 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v34 - v8;
  v11 = type metadata accessor for LabelPair(255, v9, v10, v10);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v40 = *(TupleTypeMetadata2 - 8);
  v13 = v40;
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v39 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  v19.n128_f64[0] = MEMORY[0x28223BE20](v18);
  v21 = &v34 - v20;
  v22 = *a2;
  v23 = *(v11 - 8);
  (*(v23 + 16))(&v34 - v20, a1, v11, v19);
  v24 = TupleTypeMetadata2;
  *&v21[*(TupleTypeMetadata2 + 48)] = v22;
  v37 = *(v13 + 16);
  v38 = TupleTypeMetadata2;
  v37(v17, v21, TupleTypeMetadata2);
  v25 = *(v11 + 36);
  v26 = *(v45 + 16);
  v35 = v11;
  v36 = v26;
  v27 = v41;
  v26(v44, &v17[v25], v41);
  v28 = *(v23 + 8);
  v28(v17, v11);
  v29 = v39;
  v37(v39, v21, v24);
  v30 = v43;
  v36(v43, v29, v27);
  v28(v29, v35);
  v31 = v44;
  LOBYTE(v22) = sub_237EF8520();
  v32 = *(v45 + 8);
  v32(v30, v27);
  v32(v31, v27);
  (*(v40 + 8))(v21, v38);
  return v22 & 1;
}

uint64_t sub_237E25558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LabelPair(255, a3, a4, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  (*(v7 + 16))(&v17 - v12, a1, TupleTypeMetadata2, v11);
  v14 = *(TupleTypeMetadata2 + 48);
  v15 = *&v13[v14];
  (*(*(v5 - 8) + 32))(v9, v13, v5);
  *&v9[v14] = v15;
  swift_getAtKeyPath();
  return (*(v7 + 8))(v9, TupleTypeMetadata2);
}

void (*ClassificationMetrics.accuracy.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  a1[1] = a2;
  a1[2] = v3;
  OUTLINED_FUNCTION_15_38();
  ClassificationMetrics.accuracy.getter(v5);
  *a1 = v6;
  return sub_237E2518C;
}

uint64_t ClassificationMetrics.init()@<X0>(uint64_t a3@<X8>)
{
  *(a3 + 24) = sub_237EF8100();
  *(a3 + 32) = sub_237EF8100();
  v5 = OUTLINED_FUNCTION_31_22();
  type metadata accessor for LabelPair(v5, v6, v7, v8);
  OUTLINED_FUNCTION_0_74();
  swift_getWitnessTable();
  *(a3 + 40) = sub_237EF8100();
  *a3 = 0;
  OUTLINED_FUNCTION_31_0();
  result = sub_237EF8130();
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

void ClassificationMetrics.init<A, B>(predicted:groundTruth:labels:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{
  OUTLINED_FUNCTION_37_0();
  v24 = v23;
  v49 = v25;
  v27 = v26;
  v29 = v28;
  v51 = v31;
  v52 = v30;
  v53 = v26;
  v33 = v32;
  v54.n128_u64[0] = a21;
  v34 = sub_237EF9380();
  OUTLINED_FUNCTION_20_8();
  WitnessTable = swift_getWitnessTable();
  v48 = sub_237EF9340();
  OUTLINED_FUNCTION_1();
  v50 = v36;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1();
  v39 = v38;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_28_26();
  swift_getTupleTypeMetadata2();
  sub_237EF9640();
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_17_41(v42, v47);
  sub_237EFA000();
  MEMORY[0x2383E08A0](v34, WitnessTable);
  (*(v39 + 8))(v21, v34);
  OUTLINED_FUNCTION_71();
  v43 = swift_allocObject();
  v43[2] = v29;
  v43[3] = v27;
  v43[4] = v33;
  v43[5] = v49;
  v43[6] = v24;
  v43[7] = a21;
  OUTLINED_FUNCTION_70();
  v44 = swift_allocObject();
  v44[2] = v29;
  v44[3] = v27;
  v44[4] = v33;
  v44[5] = v49;
  v44[6] = v24;
  v44[7] = a21;
  v44[8] = sub_237E2A988;
  v44[9] = v43;
  swift_getWitnessTable();
  sub_237EF9860();

  (*(v50 + 8))(v22, v48);
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  ClassificationMetrics.init<A>(_:labels:)();
  OUTLINED_FUNCTION_22_3();
  (*(v45 + 8))(v51, v33);
  OUTLINED_FUNCTION_22_3();
  (*(v46 + 8))(v52, v27);
  OUTLINED_FUNCTION_25_29(v53, v54);
  OUTLINED_FUNCTION_38_0();
}

void ClassificationMetrics.init<A>(_:labels:)()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v114 = v9;
  v108 = v10;
  v104 = v11;
  OUTLINED_FUNCTION_1_1();
  v106 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_3();
  v101 = v14;
  v18 = type metadata accessor for LabelPair(0, v15, v17, v16);
  OUTLINED_FUNCTION_1();
  v105 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_26();
  v99 = v21 - v22;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v23);
  v25 = &v98 - v24;
  sub_237EF90F0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  v28 = &v98 - v27;
  OUTLINED_FUNCTION_43_3();
  v115 = sub_237EF9340();
  OUTLINED_FUNCTION_1();
  v117 = v29;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_29_26();
  v110 = v0;
  OUTLINED_FUNCTION_43_3();
  v112 = sub_237EF9640();
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_17_41(v32, v98);
  OUTLINED_FUNCTION_43_3();
  v116 = sub_237EF9630();
  OUTLINED_FUNCTION_1();
  v102 = v33;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v34);
  v36 = &v98 - v35;
  v119 = sub_237EF8100();
  v113 = sub_237EF8100();
  OUTLINED_FUNCTION_0_74();
  WitnessTable = swift_getWitnessTable();
  v118 = sub_237EF8100();
  v126 = 1;
  v37 = v2;
  MEMORY[0x2383E08A0](v6, v2);
  v38 = OUTLINED_FUNCTION_36_1(&unk_284ADA130);
  v38[2] = v8;
  v38[3] = v6;
  v38[4] = v4;
  v38[5] = v37;
  OUTLINED_FUNCTION_71();
  v39 = swift_allocObject();
  v39[2] = v8;
  v39[3] = v6;
  v103 = v6;
  v40 = v4;
  v41 = v8;
  v39[4] = v40;
  v39[5] = v37;
  v39[6] = sub_237E2A9A4;
  v39[7] = v38;
  swift_getWitnessTable();
  sub_237EF9860();
  v42 = v18;

  v43 = OUTLINED_FUNCTION_31_0();
  v44(v43);
  v115 = v36;
  sub_237EF9610();
  v117 = 0;
  v109 = 0;
  v110 = 0;
  v111 = v105 + 8;
  v112 = (v105 + 32);
  v100 = v106 + 16;
  v105 += 16;
  while (1)
  {
    while (1)
    {
      sub_237EF9620();
      if (__swift_getEnumTagSinglePayload(v28, 1, v42) == 1)
      {
        OUTLINED_FUNCTION_22_3();
        (*(v93 + 8))(v108);
        (*(v102 + 8))(v115, v116);
        OUTLINED_FUNCTION_58_8();
        OUTLINED_FUNCTION_61_7();
        v94 = v126;
        v95 = v104;
        v96 = v114;
        *v104 = v117;
        v95[1] = v96;
        *(v95 + 16) = v94;
        v97 = v113;
        v95[3] = v119;
        v95[4] = v97;
        v95[5] = v118;
        OUTLINED_FUNCTION_38_0();
        return;
      }

      v45 = v28;
      (*v112)(v25, v28, v42);
      v120 = v117;
      v121 = v114;
      v122 = v126;
      v123 = v119;
      v124 = v113;
      v125 = v118;
      v46 = OUTLINED_FUNCTION_135();
      v47 = v40;
      v50 = type metadata accessor for ClassificationMetrics(v46, v48, v40, v49);
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF8260();
      v51 = sub_237E26878(v25, v50);

      if ((v51 & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_46_16();
      v52(v25, v42);
      v40 = v47;
    }

    v106 = v42;
    v53 = *(v42 + 36);
    OUTLINED_FUNCTION_58_8();
    v54 = v119;
    LODWORD(v110) = swift_isUniquelyReferenced_nonNull_native();
    v120 = v54;
    sub_237E2A148(&v25[v53], v41, v47);
    OUTLINED_FUNCTION_8_67();
    if (__OFADD__(v57, v58))
    {
      break;
    }

    LODWORD(v119) = v56;
    v98 = v55;
    sub_237EF96F0();
    v59 = sub_237EF96B0();
    v60 = v120;
    if ((v59 & 1) == 0)
    {
      v61 = v53;
      v28 = v45;
      v64 = v118;
      v62 = v98;
      if (v119)
      {
        goto LABEL_12;
      }

LABEL_11:
      v120 = 0;
      OUTLINED_FUNCTION_19_1();
      v65 = &v25[v61];
      v67 = v66;
      v68(v101, v65, v41);
      sub_237EF96E0();
      v62 = v67;
      goto LABEL_12;
    }

    v61 = v53;
    v62 = sub_237E2A148(&v25[v53], v41, v47);
    if ((v119 & 1) != (v63 & 1))
    {
      goto LABEL_29;
    }

    v28 = v45;
    v64 = v118;
    if ((v119 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_12:
    v69 = *(v60 + 56);
    v70 = *(v69 + 8 * v62);
    v71 = __OFADD__(v70, 1);
    v72 = v70 + 1;
    if (v71)
    {
      goto LABEL_25;
    }

    v119 = v60;
    *(v69 + 8 * v62) = v72;
    OUTLINED_FUNCTION_61_7();
    swift_isUniquelyReferenced_nonNull_native();
    v120 = v64;
    v73 = v106;
    OUTLINED_FUNCTION_25_22();
    v110 = sub_237E2A148(v74, v75, v76);
    OUTLINED_FUNCTION_8_67();
    if (__OFADD__(v78, v79))
    {
      goto LABEL_26;
    }

    LODWORD(v118) = v77;
    sub_237EF96F0();
    if (sub_237EF96B0())
    {
      OUTLINED_FUNCTION_25_22();
      v83 = sub_237E2A148(v80, v81, v82);
      v85 = v118;
      v42 = v73;
      if ((v118 & 1) != (v84 & 1))
      {
        goto LABEL_29;
      }

      v86 = v83;
      v40 = v47;
    }

    else
    {
      v40 = v47;
      v42 = v73;
      v86 = v110;
      v85 = v118;
    }

    v87 = v120;
    if ((v85 & 1) == 0)
    {
      v120 = 0;
      OUTLINED_FUNCTION_19_1();
      v88(v99, v25, v42);
      sub_237EF96E0();
    }

    v89 = *(v87 + 56);
    v90 = *(v89 + 8 * v86);
    v71 = __OFADD__(v90, 1);
    v91 = v90 + 1;
    if (v71)
    {
      goto LABEL_27;
    }

    *(v89 + 8 * v86) = v91;
    OUTLINED_FUNCTION_46_16();
    v92(v25, v42);
    v71 = __OFADD__(v117++, 1);
    if (v71)
    {
      goto LABEL_28;
    }

    v118 = v87;
    v109 = sub_237CF63F8;
    v110 = sub_237CF63F8;
  }

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
  sub_237EFA020();
  __break(1u);
}

uint64_t sub_237E263F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_50_13();
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_26_13();
  v9 = *(swift_getTupleTypeMetadata2() + 48);
  OUTLINED_FUNCTION_43_0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v4(v8, v8 + *(TupleTypeMetadata2 + 48), v6, v6 + v9);
}

__n128 ClassificationMetrics.init<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_1_1();
  v29 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_3();
  v28 = v14;
  v31[6] = v15;
  v31[7] = v16;
  v31[8] = v17;
  v31[9] = v18;
  v31[2] = v5;
  v31[3] = v3;
  v31[4] = v1;
  v31[5] = swift_getKeyPath();
  v20 = sub_237C8FFEC(sub_237E2A9B0, v31, v5, v7, MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v19);

  v32 = v20;
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  sub_237EF8D00();
  v30[6] = v7;
  v30[7] = v5;
  v30[8] = v3;
  v30[9] = v1;
  v30[2] = v5;
  v30[3] = v3;
  v30[4] = v1;
  v30[5] = swift_getKeyPath();
  v22 = sub_237C8FFEC(sub_237E2A3D8, v30, v5, v7, MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v21);

  v32 = v22;
  sub_237EF8C80();
  (*(v29 + 16))(v28, v9, v5);
  ClassificationMetrics.init<A>(_:labels:)();
  (*(v29 + 8))(v9, v5);
  v23 = v33;
  v24 = v34;
  v25 = v36;
  v26 = v35;
  *v11 = v32;
  *(v11 + 8) = v23;
  *(v11 + 16) = v24;
  *(v11 + 24) = v26;
  *(v11 + 40) = v25;
  OUTLINED_FUNCTION_38_0();
  return result;
}

uint64_t sub_237E2676C()
{
  OUTLINED_FUNCTION_50_13();
  v3 = v2;
  OUTLINED_FUNCTION_22_3();
  v11 = *(v4 + 32);
  v11(v3);
  v5 = OUTLINED_FUNCTION_31_22();
  v9 = v3 + *(type metadata accessor for LabelPair(v5, v6, v7, v8) + 36);

  return (v11)(v9, v1, v0);
}

uint64_t sub_237E26878(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if ((sub_237EF8CD0() & 1) == 0)
  {
    v7 = 0;
    v8 = 0;
    if (!v3)
    {
      return v8 & 1;
    }

LABEL_5:
    v8 = v7 ^ 1;
    return v8 & 1;
  }

  type metadata accessor for LabelPair(0, v4, v5, v6);
  v7 = sub_237EF8CD0();
  if (v3)
  {
    goto LABEL_5;
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t sub_237E26910@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v2 = *a1;
  v3 = MEMORY[0x277D84DE8];
  v4 = *(*a1 + *MEMORY[0x277D84DE8]);
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26();
  v10 = v8 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v20 - v13;
  (*(v6 + 16))(v20 - v13, v12);
  v15 = *(v4 + 48);
  v16 = *(v2 + *v3 + 8);
  OUTLINED_FUNCTION_22_3();
  v18 = *(v17 + 32);
  v18(v10, v14, v16);
  v18(v10 + v15, &v14[v15], v16);
  swift_getAtKeyPath();
  return (*(v6 + 8))(v10, v4);
}

uint64_t ClassificationMetrics.init<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v8[21] = a2;
  v8[22] = a3;
  v8[20] = a1;
  v12 = type metadata accessor for LabelPair(0, a3, a6, a4);
  v8[27] = v12;
  OUTLINED_FUNCTION_6_1(v12);
  v8[28] = v13;
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  OUTLINED_FUNCTION_23_8();
  v14 = sub_237EF90F0();
  v8[31] = v14;
  OUTLINED_FUNCTION_6_1(v14);
  v8[32] = v15;
  v8[33] = OUTLINED_FUNCTION_27_0();
  v8[34] = *(a8 + 8);
  OUTLINED_FUNCTION_135();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[35] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v8[36] = v17;
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  OUTLINED_FUNCTION_1_1();
  v8[39] = v18;
  v8[40] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_135();
  v19 = swift_getAssociatedTypeWitness();
  v8[41] = v19;
  OUTLINED_FUNCTION_6_1(v19);
  v8[42] = v20;
  v8[43] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v8[44] = v21;
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v8[49] = type metadata accessor for AnnotatedFeature(255, a5, a3, v22);
  sub_237EF90F0();
  v8[50] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v8[51] = v23;
  v8[52] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_31_22();
  v24 = swift_getAssociatedTypeWitness();
  v8[53] = v24;
  OUTLINED_FUNCTION_6_1(v24);
  v8[54] = v25;
  v8[55] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_237E26E70()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  OUTLINED_FUNCTION_18_5();
  *(v0 + 40) = sub_237EF8100();
  OUTLINED_FUNCTION_18_5();
  *(v0 + 48) = sub_237EF8100();
  OUTLINED_FUNCTION_0_74();
  *(v0 + 448) = swift_getWitnessTable();
  v5 = sub_237EF8100();
  *(v0 + 16) = 0;
  *(v0 + 56) = v5;
  *(v0 + 24) = sub_237EF8130();
  *(v0 + 32) = 0;
  (*(v2 + 16))(v1, v4, v3);
  sub_237EF86F0();
  v7 = *(v0 + 392);
  v6 = *(v0 + 400);
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    v9 = *(v0 + 432);
    v8 = *(v0 + 440);
    v10 = *(v0 + 424);
    v11 = *(v0 + 160);
    (*(*(v0 + 408) + 8))(*(v0 + 168), *(v0 + 184));
    (*(v9 + 8))(v8, v10);
    sub_237CB2328(0, 0);
    sub_237CB2328(0, 0);
    v12 = OUTLINED_FUNCTION_56_14();
    *v11 = v13;
    *(v11 + 8) = v14;
    *(v11 + 16) = v15;
    *(v11 + 24) = v12;
    *(v11 + 40) = v16;

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 400);
    v21 = *(v0 + 312);
    v20 = *(v0 + 320);
    v22 = *(v0 + 192);
    OUTLINED_FUNCTION_37_20(*(v0 + 352));
    v23();
    (*(v21 + 16))(v20, v19, v22);
    OUTLINED_FUNCTION_22_3();
    v24 = OUTLINED_FUNCTION_31_0();
    v25(v24);
    sub_237EF8BC0();
    *(v0 + 472) = 0;
    *(v0 + 480) = 0;
    *(v0 + 488) = 0;
    *(v0 + 496) = swift_getAssociatedConformanceWitness();
    v26 = swift_task_alloc();
    *(v0 + 504) = v26;
    *v26 = v0;
    OUTLINED_FUNCTION_11_49(v26);
    OUTLINED_FUNCTION_23();

    return MEMORY[0x282200310](v27);
  }
}

uint64_t sub_237E27224()
{

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_237E27360()
{
  v1 = v0[9];
  v92 = v0[8];
  if (!v1)
  {
    v10 = v0[48];
    v11 = v0[44];
    v12 = v0[22];
    (*(v0[42] + 8))(v0[43], v0[41]);
    (*(v11 + 8))(v10, v12);
    v13 = v0[60];
    v90 = v0[61];
    v14 = v0[59];
    v15 = v0[50];
    swift_getAssociatedConformanceWitness();
    sub_237EF91A0();
    OUTLINED_FUNCTION_38_12(v15);
    if (v16)
    {
      v17 = v0[54];
      v18 = v0[55];
      v19 = v0[53];
      v20 = v0[20];
      (*(v0[51] + 8))(v0[21], v0[23]);
      (*(v17 + 8))(v18, v19);
      sub_237CB2328(v14, 0);
      sub_237CB2328(v13, 0);
      v21 = OUTLINED_FUNCTION_56_14();
      *v20 = v22;
      *(v20 + 8) = v23;
      *(v20 + 16) = v24;
      *(v20 + 24) = v21;
      *(v20 + 40) = v25;

      OUTLINED_FUNCTION_30_24();

      __asm { BRAA            X1, X16 }
    }

    v65 = v0[49];
    v64 = v0[50];
    v66 = v0[39];
    v67 = v0[40];
    v68 = v0[24];
    OUTLINED_FUNCTION_37_20(v0[44]);
    v69();
    (*(v66 + 16))(v67, v64, v68);
    OUTLINED_FUNCTION_22_3();
    (*(v70 + 8))(v64, v65);
    sub_237EF8BC0();
    goto LABEL_28;
  }

  v2 = v0[22];
  v3 = v0[33];
  v0[14] = v0[13];
  v4 = OUTLINED_FUNCTION_135();
  v8 = type metadata accessor for ClassificationDistribution(v4, v5, v6, v7);
  ClassificationDistribution.mostLikelyLabel.getter(v8, v3, v9);
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    (*(v0[32] + 8))(v0[33], v0[31]);
    sub_237D6A1DC(v92, v1);
    goto LABEL_29;
  }

  v28 = v0[61];
  v29 = (*(v0[44] + 32))(v0[47], v0[33], v0[22]);
  if (__OFADD__(v28, 1))
  {
    __break(1u);
    goto LABEL_33;
  }

  v87 = v0[59];
  v88 = v0[48];
  v30 = v0[25];
  v31 = v0[22];
  v90 = v28 + 1;
  v0[2] = v28 + 1;
  v0[15] = ClassificationDistribution.labelsSortedByProbability.getter(v8);
  OUTLINED_FUNCTION_135();
  sub_237EF8CF0();
  OUTLINED_FUNCTION_135();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_36_19();
  sub_237EF8CE0();
  sub_237D6A1DC(v92, v1);
  sub_237CB2328(v87, 0);
  v32 = v0[5];
  swift_isUniquelyReferenced_nonNull_native();
  v0[16] = v32;
  sub_237E2A148(v88, v31, v30);
  OUTLINED_FUNCTION_8_67();
  if (__OFADD__(v34, v35))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v36 = v29;
  v37 = v33;
  sub_237EF96F0();
  v29 = sub_237EF96B0();
  v38 = v0[16];
  if ((v29 & 1) == 0)
  {
    goto LABEL_14;
  }

  v29 = sub_237E2A148(v0[48], v0[22], v0[25]);
  if ((v37 & 1) == (v39 & 1))
  {
    v36 = v29;
LABEL_14:
    v0[5] = v38;
    if ((v37 & 1) == 0)
    {
      v40 = v0[57];
      v41 = v0[48];
      v42 = v0[46];
      v43 = v0[22];
      v0[17] = 0;
      v40(v42, v41, v43);
      OUTLINED_FUNCTION_9_9();
      v29 = sub_237EF96E0();
    }

    v44 = *(v38 + 56);
    v45 = *(v44 + 8 * v36);
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (!v46)
    {
      v93 = v0[27];
      v89 = v0[60];
      v48 = v0[57];
      v91 = v0[56];
      v49 = v0[47];
      v50 = v0[48];
      v52 = v0[45];
      v51 = v0[46];
      v53 = v0[30];
      v54 = v0[22];
      *(v44 + 8 * v36) = v47;
      v48(v51, v49, v54);
      v48(v52, v50, v54);
      sub_237E2676C();
      sub_237CB2328(v89, 0);
      v55 = v0[7];
      swift_isUniquelyReferenced_nonNull_native();
      v0[18] = v55;
      sub_237E2A148(v53, v93, v91);
      OUTLINED_FUNCTION_8_67();
      if (!__OFADD__(v57, v58))
      {
        v59 = v29;
        v60 = v56;
        sub_237EF96F0();
        v29 = sub_237EF96B0();
        if (v29)
        {
          v29 = sub_237E2A148(v0[30], v0[27], v0[56]);
          if ((v60 & 1) != (v61 & 1))
          {
            goto LABEL_20;
          }

          v59 = v29;
        }

        v71 = v0[18];
        v0[7] = v71;
        if ((v60 & 1) == 0)
        {
          v73 = v0[29];
          v72 = v0[30];
          v75 = v0[27];
          v74 = v0[28];
          v0[19] = 0;
          (*(v74 + 16))(v73, v72, v75);
          v29 = sub_237EF96E0();
        }

        v76 = *(v71 + 56);
        v77 = *(v76 + 8 * v59);
        v46 = __OFADD__(v77, 1);
        v78 = v77 + 1;
        if (!v46)
        {
          v79 = v0[47];
          v80 = v0[44];
          v81 = v0[30];
          v82 = v0[27];
          v83 = v0[28];
          v84 = v0[22];
          *(v76 + 8 * v59) = v78;
          (*(v83 + 8))(v81, v82);
          (*(v80 + 8))(v79, v84);
          v13 = sub_237CF63F8;
          v14 = sub_237CF63F8;
LABEL_28:
          v0[60] = v13;
          v0[61] = v90;
          v0[59] = v14;
LABEL_29:
          v0[62] = swift_getAssociatedConformanceWitness();
          v85 = swift_task_alloc();
          v0[63] = v85;
          *v85 = v0;
          OUTLINED_FUNCTION_11_49(v85);
          OUTLINED_FUNCTION_23();
          OUTLINED_FUNCTION_30_24();

          return MEMORY[0x282200310](v29);
        }

LABEL_36:
        __break(1u);
        return MEMORY[0x282200310](v29);
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_20:
  OUTLINED_FUNCTION_30_24();

  return sub_237EFA020();
}

uint64_t sub_237E27B00()
{
  v1 = *(v0[36] + 32);
  v1(v0[37], v0[38], v0[35]);
  OUTLINED_FUNCTION_31_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_9_9();
  if (sub_237EF9CD0())
  {
    v2 = v0 + 37;
    v3 = v0 + 36;
    v4 = v0 + 35;
    (*(v0[51] + 8))(v0[21], v0[23]);
  }

  else
  {
    v5 = v0[37];
    v6 = v0[35];
    swift_allocError();
    v1(v7, v5, v6);
    v3 = v0 + 51;
    v4 = v0 + 23;
    v2 = v0 + 21;
  }

  v8 = *v2;
  v9 = *v3;
  v20 = v0[59];
  v21 = v0[60];
  v10 = v0[54];
  v11 = v0[55];
  v12 = v0[53];
  v13 = v0[43];
  v14 = v0[41];
  v15 = v0[42];
  (*(v9 + 8))(v8, *v4);
  (*(v15 + 8))(v13, v14);
  v16 = OUTLINED_FUNCTION_9_9();
  v17(v16);
  (*(v10 + 8))(v11, v12);
  sub_237CB2328(v20, 0);
  sub_237CB2328(v21, 0);

  v18 = v0[1];

  return v18();
}

void ClassificationMetrics.add<A, B>(predicted:groundTruth:)()
{
  OUTLINED_FUNCTION_37_0();
  v39 = v0;
  v33 = v2;
  v34 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v41 = v7;
  v42 = v5;
  v43 = v3;
  v44 = v9;
  v10 = v9;
  v45 = v2;
  v11 = sub_237EF9380();
  OUTLINED_FUNCTION_20_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_43_3();
  sub_237EF9340();
  OUTLINED_FUNCTION_1();
  v37 = v12;
  v38 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v40 = &TupleTypeMetadata2 - v15;
  OUTLINED_FUNCTION_1_1();
  v17 = v16;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_28_26();
  v19 = *(v8 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_43_3();
  sub_237EF9640();
  OUTLINED_FUNCTION_1();
  v35 = v20;
  v36 = v21;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_29_26();
  v23 = v10;
  v24 = v33;
  sub_237EFA000();
  v25 = OUTLINED_FUNCTION_9_9();
  MEMORY[0x2383E08A0](v25);
  (*(v17 + 8))(v0, v11);
  OUTLINED_FUNCTION_71();
  v26 = swift_allocObject();
  v26[2] = v19;
  v26[3] = v6;
  v27 = *(v41 + 24);
  v26[4] = v4;
  v26[5] = v27;
  v26[6] = v23;
  v26[7] = v24;
  OUTLINED_FUNCTION_70();
  v28 = swift_allocObject();
  v28[2] = v19;
  v28[3] = v6;
  v28[4] = v4;
  v28[5] = v27;
  v28[6] = v23;
  v28[7] = v24;
  v28[8] = sub_237E2A3FC;
  v28[9] = v26;
  v29 = v37;
  swift_getWitnessTable();
  v30 = v40;
  sub_237EF9860();

  (*(v38 + 8))(v30, v29);
  OUTLINED_FUNCTION_1_5();
  v31 = v35;
  swift_getWitnessTable();
  ClassificationMetrics.add<A>(_:)();
  (*(v36 + 8))(v8, v31);
  OUTLINED_FUNCTION_38_0();
}

void ClassificationMetrics.add<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v131 = v1;
  v4 = v3;
  v6 = v5;
  v8 = *(v7 + 16);
  OUTLINED_FUNCTION_1_1();
  v128 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_3();
  v117 = v11;
  v125 = v12;
  v13 = *(v12 + 24);
  OUTLINED_FUNCTION_18_5();
  v18 = type metadata accessor for LabelPair(v14, v15, v16, v17);
  OUTLINED_FUNCTION_1();
  v126 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_26();
  v115 = v21 - v22;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v23);
  v25 = v114 - v24;
  OUTLINED_FUNCTION_22_24();
  sub_237EF90F0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  v28 = v114 - v27;
  OUTLINED_FUNCTION_23_8();
  v124 = sub_237EF9340();
  OUTLINED_FUNCTION_1();
  v129 = v29;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_0();
  v121 = v2;
  OUTLINED_FUNCTION_23_8();
  v127 = sub_237EF9640();
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_17_41(v32, v114[0]);
  OUTLINED_FUNCTION_23_8();
  v130 = sub_237EF9630();
  OUTLINED_FUNCTION_1();
  v118 = v33;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_29_26();
  MEMORY[0x2383E08A0](v6, v4);
  v35 = OUTLINED_FUNCTION_36_1(&unk_284ADA1D0);
  v35[2] = v8;
  v35[3] = v6;
  v35[4] = v13;
  v35[5] = v4;
  v36 = v4;
  OUTLINED_FUNCTION_71();
  v37 = swift_allocObject();
  v37[2] = v8;
  v37[3] = v6;
  v37[4] = v13;
  v37[5] = v36;
  v37[6] = sub_237E2A490;
  v37[7] = v35;
  v38 = v124;
  swift_getWitnessTable();
  v39 = v121;
  OUTLINED_FUNCTION_13_8();
  sub_237EF9860();

  (*(v129 + 8))(v39, v38);
  v129 = v0;
  sub_237EF9610();
  v120 = 0;
  v121 = 0;
  v119 = 0;
  v124 = (v126 + 32);
  v127 = v128 + 16;
  v122 = v126 + 8;
  v114[1] = v126 + 16;
  v123 = v28;
  while (1)
  {
    while (1)
    {
      sub_237EF9620();
      OUTLINED_FUNCTION_38_12(v28);
      if (v40)
      {
        (*(v118 + 8))(v129, v130);
        OUTLINED_FUNCTION_58_8();
        OUTLINED_FUNCTION_61_7();
        sub_237CB2328(v119, 0);
        OUTLINED_FUNCTION_38_0();
        return;
      }

      (*v124)(v25, v28, v18);
      sub_237E2A0DC(v8, v8);
      v41 = v128;
      v42 = *(v128 + 72);
      swift_allocObject();
      v43 = sub_237EF8940();
      v45 = v44;
      v46 = v18;
      v47 = *(v41 + 16);
      v126 = *(v18 + 36);
      v47(v44, &v25[v126], v8);
      v47(v45 + v42, v25, v8);
      sub_237D3C4BC(v43, v8);
      v132 = v48;
      sub_237EF8A60();
      OUTLINED_FUNCTION_1_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_27_24();
      v132 = sub_237EF8D00();
      sub_237EF8CF0();
      swift_getWitnessTable();
      v49 = v131;
      sub_237EF8CE0();
      v51 = *v49;
      v50 = v49[1];
      v52 = *(v49 + 16);
      v53 = v49[3];
      v54 = v49[4];
      v55 = v49[5];
      v132 = v51;
      v133 = v50;
      v134 = v52;
      v135 = v53;
      v136 = v54;
      v137 = v55;
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF8260();
      LOBYTE(v53) = sub_237E26878(v25, v125);

      if ((v53 & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_46_16();
      v56(v25, v46);
      v18 = v46;
      v28 = v123;
    }

    v116 = v46;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    v57 = v131;
    *v131 = v51 + 1;
    OUTLINED_FUNCTION_58_8();
    swift_isUniquelyReferenced_nonNull_native();
    v132 = v57[3];
    sub_237E2A148(&v25[v126], v8, v13);
    OUTLINED_FUNCTION_8_67();
    if (__OFADD__(v60, v61))
    {
      goto LABEL_32;
    }

    v62 = v58;
    v63 = v59;
    OUTLINED_FUNCTION_22_24();
    v121 = sub_237EF96F0();
    v64 = sub_237EF96B0();
    v65 = v132;
    if (v64)
    {
      v66 = v126;
      OUTLINED_FUNCTION_18_5();
      v70 = sub_237E2A148(v67, v68, v69);
      if ((v63 & 1) != (v71 & 1))
      {
        goto LABEL_38;
      }

      v62 = v70;
      v72 = v63;
      v73 = v47;
    }

    else
    {
      v72 = v63;
      v73 = v47;
      v66 = v126;
    }

    v131[3] = v65;
    if ((v72 & 1) == 0)
    {
      v132 = 0;
      v73(v117, &v25[v66], v8);
      OUTLINED_FUNCTION_33_19();
      sub_237EF96E0();
    }

    v74 = *(v65 + 56);
    v75 = *(v74 + 8 * v62);
    v76 = __OFADD__(v75, 1);
    v77 = v75 + 1;
    if (v76)
    {
      goto LABEL_33;
    }

    *(v74 + 8 * v62) = v77;
    OUTLINED_FUNCTION_61_7();
    v78 = v131;
    swift_isUniquelyReferenced_nonNull_native();
    v132 = v78[4];
    OUTLINED_FUNCTION_18_5();
    sub_237E2A148(v79, v80, v81);
    v83 = v82;
    OUTLINED_FUNCTION_8_67();
    if (__OFADD__(v85, v86))
    {
      goto LABEL_34;
    }

    v87 = v84;
    v88 = sub_237EF96B0();
    v89 = v132;
    if (v88)
    {
      OUTLINED_FUNCTION_18_5();
      v93 = sub_237E2A148(v90, v91, v92);
      v18 = v116;
      v28 = v123;
      if ((v83 & 1) != (v94 & 1))
      {
        goto LABEL_38;
      }

      v87 = v93;
    }

    else
    {
      v18 = v116;
      v28 = v123;
    }

    v131[4] = v89;
    if ((v83 & 1) == 0)
    {
      v132 = 0;
      v73(v117, v25, v8);
      OUTLINED_FUNCTION_33_19();
      sub_237EF96E0();
    }

    v95 = *(v89 + 56);
    v96 = *(v95 + 8 * v87);
    v76 = __OFADD__(v96, 1);
    v97 = v96 + 1;
    if (v76)
    {
      goto LABEL_35;
    }

    *(v95 + 8 * v87) = v97;
    sub_237CB2328(v119, 0);
    v98 = v131;
    LODWORD(v126) = swift_isUniquelyReferenced_nonNull_native();
    v132 = v98[5];
    OUTLINED_FUNCTION_0_74();
    WitnessTable = swift_getWitnessTable();
    sub_237E2A148(v25, v18, WitnessTable);
    OUTLINED_FUNCTION_8_67();
    if (__OFADD__(v102, v103))
    {
      goto LABEL_36;
    }

    v104 = v100;
    v105 = v101;
    OUTLINED_FUNCTION_22_24();
    sub_237EF96F0();
    if (sub_237EF96B0())
    {
      v106 = sub_237E2A148(v25, v18, WitnessTable);
      if ((v105 & 1) != (v107 & 1))
      {
        goto LABEL_38;
      }

      v104 = v106;
    }

    v108 = v132;
    v131[5] = v132;
    if ((v105 & 1) == 0)
    {
      v132 = 0;
      OUTLINED_FUNCTION_19_1();
      v109(v115, v25, v18);
      sub_237EF96E0();
    }

    v110 = *(v108 + 56);
    v111 = *(v110 + 8 * v104);
    v76 = __OFADD__(v111, 1);
    v112 = v111 + 1;
    if (v76)
    {
      goto LABEL_37;
    }

    *(v110 + 8 * v104) = v112;
    OUTLINED_FUNCTION_46_16();
    v113(v25, v18);
    v119 = sub_237CF63F8;
    v120 = sub_237CF63F8;
    v121 = sub_237CF63F8;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  sub_237EFA020();
  __break(1u);
}

uint64_t sub_237E28A10()
{
  OUTLINED_FUNCTION_50_13();
  OUTLINED_FUNCTION_1_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_26();
  v7 = v5 - v6;
  v9 = MEMORY[0x28223BE20](v8);
  v10 = *(v3 + 16);
  v10(&v13 - v11, v9);
  (v10)(v7, v1, v0);
  return sub_237E2676C();
}

uint64_t ClassificationMetrics.count(predicted:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  if (*(v3 + 16) && (v4 = sub_237E2A148(a1, *(a2 + 16), *(a2 + 24)), (v5 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

void ClassificationMetrics.count(predicted:label:)()
{
  OUTLINED_FUNCTION_37_0();
  v28 = v1;
  v29 = v2;
  v4 = *(v3 + 16);
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v15 = *(v14 + 24);
  v16 = OUTLINED_FUNCTION_135();
  type metadata accessor for LabelPair(v16, v17, v15, v18);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v20 = MEMORY[0x28223BE20](v19);
  v21 = *(v0 + 40);
  v22 = *(v6 + 16);
  v22(v13, v28, v4, v20);
  (v22)(v10, v29, v4);
  sub_237E2676C();
  if (*(v21 + 16))
  {
    OUTLINED_FUNCTION_0_74();
    swift_getWitnessTable();
    v23 = OUTLINED_FUNCTION_11_19();
    sub_237E2A148(v23, v24, v25);
  }

  v26 = OUTLINED_FUNCTION_11_19();
  v27(v26);
  OUTLINED_FUNCTION_38_0();
}

void sub_237E28D20(uint64_t a1@<X3>, uint64_t a2@<X4>, void *a3@<X8>)
{
  type metadata accessor for ClassificationMetrics(0, a1, a2, a1);
  ClassificationMetrics.count(predicted:label:)();
  *a3 = v4;
}

void sub_237E28D8C(uint64_t a1@<X3>, uint64_t a2@<X4>, void *a3@<X8>)
{
  type metadata accessor for ClassificationMetrics(0, a1, a2, a1);
  ClassificationMetrics.count(predicted:label:)();
  *a3 = v4;
}

void ClassificationMetrics.makeConfusionMatrix<>()()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  OUTLINED_FUNCTION_36_19();
  v12 = type metadata accessor for LabelPair(v8, v9, v10, v11);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_26();
  v88 = v16 - v17;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  v77 = &v76 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v90 = v21;
  v91 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_26();
  v96 = v22 - v23;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v24);
  v95 = &v76 - v25;
  v26 = *(v0 + 40);
  sub_237EF8260();
  v27 = sub_237EF8260();
  v94 = v2;
  v89 = v7;
  v28 = sub_237E5E16C(v27, v6, v2, v7);
  v92 = v29;
  v93 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  v101 = 0;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v31 = OUTLINED_FUNCTION_36_1(v85);
  v84 = xmmword_237F04760;
  *(v31 + 16) = xmmword_237F04760;
  OUTLINED_FUNCTION_36_19();
  *(v31 + 32) = sub_237EF8C70();
  v97 = v6;
  OUTLINED_FUNCTION_36_19();
  *(v31 + 40) = sub_237EF8C70();
  v32 = sub_237C651A0();
  v86 = v30;
  v87 = v4;
  v83 = v32;
  sub_237EF7F80();
  v33 = 0;
  v34 = v26 + 64;
  v79 = v26;
  OUTLINED_FUNCTION_22_33();
  v37 = v36 & v35;
  v39 = (v38 + 63) >> 6;
  v76 = v14 + 16;
  v98 = (v14 + 32);
  v90 += 4;
  v78 = v14;
  v81 = v14 + 8;
  v82 = v39;
  v80 = v34;
  if ((v36 & v35) != 0)
  {
    while (1)
    {
      v40 = v33;
      v41 = v94;
LABEL_8:
      v46 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v47 = v46 | (v40 << 6);
      v48 = v79;
      v49 = v78;
      v50 = v77;
      (*(v78 + 16))(v77, *(v79 + 48) + *(v78 + 72) * v47, v12);
      v51 = *(*(v48 + 56) + 8 * v47);
      v52 = *(TupleTypeMetadata2 + 48);
      v53 = *(v49 + 32);
      v54 = v96;
      v53(v96, v50, v12);
      v55 = 0;
      *(v54 + v52) = v51;
      v44 = v54;
      v45 = TupleTypeMetadata2;
      v43 = v97;
      v42 = v95;
LABEL_9:
      __swift_storeEnumTagSinglePayload(v44, v55, 1, v45);
      (*v90)(v42, v44, v91);
      if (__swift_getEnumTagSinglePayload(v42, 1, v45) == 1)
      {
        break;
      }

      v56 = *(v42 + *(v45 + 48));
      v57 = v42;
      v58 = v88;
      (*v98)(v88, v57, v12);
      v59 = v12;
      OUTLINED_FUNCTION_25_22();
      v60 = v89;
      v64 = sub_237E5E354(v61, v62, v63, v43, v41, v89);
      if (v65)
      {
        goto LABEL_17;
      }

      v66 = v64;
      OUTLINED_FUNCTION_25_22();
      v71 = sub_237E5E354(v67, v68, v69, v70, v41, v60);
      if (v72)
      {
        goto LABEL_18;
      }

      v73 = v71;
      v74 = OUTLINED_FUNCTION_36_1(v85);
      *(v74 + 16) = v84;
      *(v74 + 32) = v66;
      *(v74 + 40) = v73;
      v100 = v56;
      sub_237EF7F70();
      OUTLINED_FUNCTION_19_1();
      v12 = v59;
      v75(v58, v59);
      v34 = v80;
      v39 = v82;
      if (!v37)
      {
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_38_0();
  }

  else
  {
LABEL_3:
    v41 = v94;
    v42 = v95;
    v44 = v96;
    v43 = v97;
    v45 = TupleTypeMetadata2;
    while (1)
    {
      v40 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v40 >= v39)
      {
        v37 = 0;
        v55 = 1;
        goto LABEL_9;
      }

      v37 = *(v34 + 8 * v40);
      ++v33;
      if (v37)
      {
        v33 = v40;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }
}

double ClassificationMetrics.mapLabels<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v65 = a6;
  v12 = *v6;
  v13 = v6[1];
  LODWORD(v68) = *(v6 + 16);
  v14 = v6[4];
  v69 = v6[3];
  v67 = v14;
  v66 = v6[5];
  sub_237EF8260();
  OUTLINED_FUNCTION_135();
  sub_237EF89A0();
  OUTLINED_FUNCTION_135();
  v82 = sub_237EF89A0();
  OUTLINED_FUNCTION_135();
  sub_237EF8A60();
  swift_getWitnessTable();
  ClassificationMetrics.init<A, B>(_:_:)();
  v83 = v12;
  v87 = v13;
  v15 = *(a3 + 24);
  v76 = *(a3 + 16);
  v77 = a4;
  v78 = v15;
  v79 = a5;
  v16 = a5;
  v72 = v76;
  v73 = a1;
  v80 = a1;
  v81 = a2;
  v70 = a2;
  v71 = v15;
  v17 = sub_237EF8CF0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  OUTLINED_FUNCTION_14_49();
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C(sub_237D66800, v75, v17, a4, v18, WitnessTable);
  if (v74)
  {
  }

  else
  {
    v21 = v20;

    v87 = v21;
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    v22 = sub_237EF8D00();

    v84 = v22;
    v85 = v68;
    v87 = v69;
    MEMORY[0x28223BE20](v23);
    v57 = v72;
    v58 = a4;
    v59 = v71;
    v60 = v16;
    v68 = v16;
    v61 = v73;
    v62 = v70;
    v24 = sub_237EF82B0();
    sub_237EF8260();
    OUTLINED_FUNCTION_135();
    OUTLINED_FUNCTION_26_13();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_6_58();
    swift_getWitnessTable();
    v26 = OUTLINED_FUNCTION_32_23();
    v74 = v18;
    v64 = v27;
    sub_237C9339C(v26, v56, v24, TupleTypeMetadata2, v18, v27);
    v29 = v28;

    v87 = v29;
    v30 = TupleTypeMetadata2;
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_26_24();
    v31 = v68;
    v69 = v32;
    v33 = sub_237EF82C0();

    *&v86 = v33;
    v87 = v67;
    MEMORY[0x28223BE20](v34);
    v57 = v72;
    v58 = a4;
    v59 = v71;
    v60 = v31;
    v35 = v70;
    v61 = v73;
    v62 = v70;
    sub_237EF8260();
    v36 = OUTLINED_FUNCTION_32_23();
    sub_237C9339C(v36, v56, v24, v30, v74, v64);
    v38 = v37;

    v87 = v38;
    OUTLINED_FUNCTION_26_24();
    v39 = v68;
    v40 = sub_237EF82C0();

    v69 = &v63;
    *(&v86 + 1) = v40;
    v87 = v66;
    MEMORY[0x28223BE20](v41);
    v57 = v72;
    v58 = a4;
    v59 = v71;
    v60 = v39;
    v61 = v73;
    v62 = v35;
    type metadata accessor for LabelPair(255, v72, v71, v42);
    sub_237EF8260();
    OUTLINED_FUNCTION_0_74();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_43_0();
    sub_237EF82B0();
    type metadata accessor for LabelPair(255, a4, v39, v43);
    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_26_13();
    v44 = swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_6_58();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_32_23();
    OUTLINED_FUNCTION_36_19();
    sub_237C9339C(v45, v46, v47, v44, v74, v48);
    v50 = v49;

    v87 = v50;
    OUTLINED_FUNCTION_23_8();
    sub_237EF8A60();
    OUTLINED_FUNCTION_0_74();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_26_24();
    v52 = sub_237EF82C0();

    v53 = v84;
    v54 = v85;
    v55 = v65;
    *v65 = v83;
    v55[1] = v53;
    *(v55 + 16) = v54;
    result = *&v86;
    *(v55 + 3) = v86;
    v55[5] = v52;
  }

  return result;
}

uint64_t sub_237E29928@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, double)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X7>, uint64_t a6@<X8>)
{
  v22 = a5;
  v21[1] = a4;
  OUTLINED_FUNCTION_43_0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  OUTLINED_FUNCTION_9();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v21 - v16;
  result = a2(a1, v15);
  if (v6)
  {
    *v22 = v6;
  }

  else
  {
    OUTLINED_FUNCTION_26_13();
    v19 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v13 + 16))(v17, a1, TupleTypeMetadata2);
    *(a6 + v19) = *&v17[*(TupleTypeMetadata2 + 48)];
    OUTLINED_FUNCTION_22_3();
    return (*(v20 + 8))(v17, a3);
  }

  return result;
}

uint64_t sub_237E29AA4@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, void *a7@<X7>, uint64_t a8@<X8>)
{
  v66 = a7;
  v53 = a6;
  v54 = a8;
  v68 = a3;
  v69 = a2;
  v11 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v65 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  v18 = type metadata accessor for LabelPair(255, v16, v17, v16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v52 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v51 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v51 - v25;
  v58 = a5;
  v55 = *(a5 - 8);
  MEMORY[0x28223BE20](v27);
  v57 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v51 - v31;
  v34 = *(v33 + 16);
  v64 = a1;
  v61 = v33 + 16;
  v62 = v35;
  v60 = v34;
  (v34)(v26, a1, v30);
  v36 = *(v11 + 16);
  v36(v15, v26, a4);
  v37 = *(v18 - 8);
  v38 = *(v37 + 8);
  v63 = v18;
  v56 = v38;
  v59 = v37 + 8;
  v38(v26, v18);
  v39 = v67;
  v69(v15);
  v40 = *(v11 + 8);
  result = v40(v15, a4);
  if (v39)
  {
    *v66 = v39;
  }

  else
  {
    v51 = v40;
    v67 = v32;
    v60(v23, v64, v62);
    v42 = v63;
    v43 = v65;
    v36(v65, &v23[*(v63 + 36)], a4);
    v44 = v23;
    v45 = v56;
    v56(v44, v42);
    v69(v43);
    type metadata accessor for LabelPair(255, v58, v53, v46);
    v47 = *(swift_getTupleTypeMetadata2() + 48);
    v51(v65, a4);
    v48 = v54;
    sub_237E2676C();
    v49 = v52;
    v50 = v62;
    v60(v52, v64, v62);
    *(v48 + v47) = *&v49[*(v50 + 48)];
    return v45(v49, v63);
  }

  return result;
}

void *sub_237E29F50@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

uint64_t sub_237E29F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_50_13();
  if ((sub_237EF8520() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for LabelPair(0, v4, a4, v6);
  return sub_237EF8520() & 1;
}

double sub_237E29FE8()
{
  OUTLINED_FUNCTION_13_8();
  sub_237EF83E0();
  OUTLINED_FUNCTION_13_8();
  sub_237EF83E0();
  return result;
}

uint64_t sub_237E2A03C()
{
  sub_237EFA120();
  sub_237E29FE8();
  return sub_237EFA170();
}

uint64_t sub_237E2A08C(uint64_t a1)
{
  sub_237EFA120();
  sub_237E29FE8();
  return sub_237EFA170();
}

uint64_t sub_237E2A0DC(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2, a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF168, &qword_237F07D70);
  }

  else
  {

    return sub_237EF9AC0();
  }
}

unint64_t sub_237E2A148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237EF83D0();

  return sub_237E2A264(a1, v6, a2, a3);
}

unint64_t sub_237E2A264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[0] = a1;
  v15[1] = a4;
  v6 = *(a3 - 8);
  v7.n128_f64[0] = MEMORY[0x28223BE20](a1);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4;
  v17 = v4 + 64;
  v10 = ~(-1 << *(v4 + 32));
  for (i = v11 & v10; ((1 << i) & *(v17 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v10)
  {
    (*(v6 + 16))(v9, *(v16 + 48) + *(v6 + 72) * i, a3, v7);
    v13 = sub_237EF8520();
    (*(v6 + 8))(v9, a3);
    if (v13)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_237E2A400()
{
  OUTLINED_FUNCTION_22_3();
  v3 = *(v0 + 16);
  v3();
  v1 = OUTLINED_FUNCTION_11_19();

  return (v3)(v1);
}

uint64_t sub_237E2A510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237E2A54C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237E2A5BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload(a1, v6, v4);
  }

  v8 = ((*(*(v4 - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(*(v4 - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload(a1, v6, v4);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_19;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return v6 + (v8 | v12) + 1;
}

void sub_237E2A70C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = (v9 + *(v7 + 80)) & ~*(v7 + 80);
  v11 = v10 + v9;
  v12 = 8 * (v10 + v9);
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v8 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v16 = ~v8 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void OUTLINED_FUNCTION_25_29(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v6 = *(v5 - 160);
  *v6 = a1;
  *(v6 + 8) = v2;
  *(v6 + 16) = v3;
  *(v6 + 24) = a2;
  *(v6 + 40) = v4;
}

uint64_t OUTLINED_FUNCTION_58_8()
{
  v2 = *(v0 - 224);

  return sub_237CB2328(v2, 0);
}

uint64_t OUTLINED_FUNCTION_61_7()
{
  v2 = *(v0 - 232);

  return sub_237CB2328(v2, 0);
}

uint64_t sub_237E2AC2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v54 = a7;
  v55 = a3;
  v58 = a5;
  v59 = a6;
  v57 = a4;
  v60 = a2;
  v52 = a15;
  v53 = a14;
  v51 = a13;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D0, &unk_237F166A0);
  OUTLINED_FUNCTION_18(v18);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  v56 = &v50 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D8, &unk_237F06050);
  OUTLINED_FUNCTION_18(v21);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD298, &qword_237F18630);
  OUTLINED_FUNCTION_18(v23);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v24);
  v26 = &v50 - v25;
  v27 = *a1;
  v28 = a1[7];
  v61[0] = v54;
  v61[1] = a8;
  v61[2] = a10;
  v61[3] = a11;
  v61[4] = a12;
  v61[5] = v51;
  v29 = v52;
  v61[6] = v53;
  v61[7] = v52;
  v30 = type metadata accessor for FullyConnectedNetworkMultiLabelClassifierModel(0, v61);
  v54 = v30[21];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2A0, &qword_237F135A0);
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  sub_237EF8260();
  v35 = v55;
  v36 = sub_237E5E170(v60, v55, a8, a12, v29);
  sub_237C6C074(v27, v36, v28, a9);
  sub_237EF6580();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  sub_237EF6530();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  type metadata accessor for FullyConnectedNetwork(0);
  OUTLINED_FUNCTION_0_67();
  sub_237DE8DA4(v45, v46, &unk_237F0361C);
  sub_237EF6680();

  __swift_storeEnumTagSinglePayload(v26, 0, 1, v53);
  result = sub_237DE8DEC(v26, &a9[v54]);
  v48 = &a9[v30[22]];
  *v48 = v60;
  *(v48 + 1) = v35;
  v49 = v58;
  *&a9[v30[23]] = v57;
  *&a9[v30[24]] = v49;
  *&a9[v30[25]] = v59;
  return result;
}

uint64_t sub_237E2AF24(void x0_0, uint64_t a1)
{
  v3 = v2;
  type metadata accessor for FullyConnectedNetwork(0);
  OUTLINED_FUNCTION_0_67();
  sub_237DE8DA4(v5, v6, &unk_237F0361C);
  sub_237EF6510();
  v7 = *(a1 + 84);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2A0, &qword_237F135A0);
  if (!__swift_getEnumTagSinglePayload(v3 + v7, 1, v8))
  {
    sub_237EF66A0();
  }
}

uint64_t FullyConnectedNetworkMultiLabelClassifierModel.updatePrecisionRecallCurves<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v10 = swift_task_alloc();
  v5[11] = v10;
  v5[12] = *(a2 + 24);
  v5[13] = *(a2 + 72);
  v11 = sub_237EF8CF0();
  v5[14] = v11;
  WitnessTable = swift_getWitnessTable();
  v13 = *(a4 + 8);
  *v10 = v5;
  v10[1] = sub_237E2B12C;

  return Transformer.applied<A, B>(to:eventHandler:)(a1, 0, 0, a2, a3, v11, WitnessTable, v13);
}

uint64_t sub_237E2B12C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 128) = a1;

    return MEMORY[0x2822009F8](sub_237E2B27C, 0, 0);
  }
}

uint64_t sub_237E2B27C()
{
  v50 = v0[16];
  v1 = v0[13];
  v49 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v46 = v0[10];
  v47 = v2;
  v4 = v0[7];
  v5 = v0[8];
  v51 = *(v46 + *(v4 + 88));
  v0[2] = v50;
  v6 = swift_task_alloc();
  v7 = v4;
  v45 = v4;
  v8 = *(v4 + 16);
  *v6 = v8;
  v6[1] = v2;
  v6[2] = v5;
  v9 = *(v4 + 32);
  v6[3] = v9;
  v10 = v9;
  v41 = v9;
  v11 = v7[5];
  v6[4] = v11;
  v43 = v5;
  v12 = v7[6];
  v6[5] = v12;
  v13 = v12;
  v40 = v12;
  v36 = v7[7];
  v6[6] = v36;
  v14 = v7[8];
  v6[7] = v14;
  v6[8] = v1;
  v42 = v14;
  v6[9] = v3;
  KeyPath = swift_getKeyPath();

  v15 = swift_task_alloc();
  v15[2] = v8;
  v15[3] = v5;
  v15[4] = v10;
  v15[5] = v11;
  v15[6] = v13;
  v15[7] = v36;
  v15[8] = v14;
  v15[9] = v3;
  v15[10] = KeyPath;
  v44 = type metadata accessor for ClassificationDistribution(255, v47, v1, v16);
  type metadata accessor for AnnotatedFeature(255, v44, v49, v17);
  OUTLINED_FUNCTION_31_2();
  v18 = sub_237EF8A60();
  sub_237EF8260();
  OUTLINED_FUNCTION_1_24();
  v38 = v18;
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C(sub_237E2B758, v15, v18, v44, MEMORY[0x277D84A98], WitnessTable);
  v20 = v19;

  v48[3] = v20;
  v48[4] = v50;
  v21 = swift_task_alloc();
  *v21 = v8;
  v21[1] = v47;
  v21[2] = v5;
  v21[3] = v41;
  v21[4] = v11;
  v21[5] = v40;
  v21[6] = v36;
  v21[7] = v42;
  v21[8] = v1;
  v21[9] = v3;
  v22 = swift_getKeyPath();

  v23 = swift_task_alloc();
  v23[2] = v8;
  v23[3] = v43;
  v23[4] = v41;
  v23[5] = v11;
  v23[6] = v40;
  v23[7] = v36;
  v23[8] = v42;
  v23[9] = v3;
  v23[10] = v22;
  sub_237C9339C(sub_237E2B758, v23, v38, v49, MEMORY[0x277D84A98], WitnessTable);
  v25 = v24;

  v48[5] = v25;
  v48[6] = v51;
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  v26 = v1;
  v27 = sub_237EF8D00();
  v28 = sub_237EF8A60();
  v29 = sub_237EF8A60();
  v30 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  sub_237D6223C((v48 + 3), (v48 + 5), v27, v47, v28, v29, v26, v30, v31);

  v32 = sub_237EF82A0();

  v33 = *(v45 + 100);

  *(v46 + v33) = v32;
  v34 = v48[1];

  return v34();
}

uint64_t sub_237E2B6E4(void *a1, uint64_t a2)
{
  sub_237EF8260();
  sub_237EF8260();
  swift_getAtKeyPath();
}

void sub_237E2B77C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = 0;
  v3 = 0;
  v4 = *a1;
  v5 = MEMORY[0x277D84F90];
  v6 = 0.1;
  v7 = MEMORY[0x277D84F90];
  while (v6 >= 0.9)
  {
    if ((v6 != 0.9) | v2 & 1)
    {
      *a2 = v7;
      a2[1] = v5;
      return;
    }

    v2 = 1;
    v9 = 0.9;
LABEL_7:
    sub_237D50BB0(v4);
    if ((v11 & 0x100000000) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237D0CA58();
        v7 = v28;
      }

      v16 = *(v7 + 16);
      if (v16 >= *(v7 + 24) >> 1)
      {
        sub_237D0CA58();
        v7 = v29;
      }

      *(v7 + 16) = v16 + 1;
      v17 = v7 + 8 * v16;
      *(v17 + 32) = v6;
      *(v17 + 36) = 1065353216;
    }

    else
    {
      v12 = v10;
      v13 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237D0CA58();
        v7 = v26;
      }

      v14 = *(v7 + 16);
      if (v14 >= *(v7 + 24) >> 1)
      {
        sub_237D0CA58();
        v7 = v27;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 8 * v14;
      *(v15 + 32) = v12;
      *(v15 + 36) = v13;
    }

    sub_237D51008(v4);
    if ((v19 & 0x100000000) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237D0CA58();
        v5 = v32;
      }

      v24 = *(v5 + 16);
      if (v24 >= *(v5 + 24) >> 1)
      {
        sub_237D0CA58();
        v5 = v33;
      }

      *(v5 + 16) = v24 + 1;
      v25 = v5 + 8 * v24;
      *(v25 + 32) = v6;
      *(v25 + 36) = 1065353216;
      v6 = v9;
    }

    else
    {
      v20 = v18;
      v21 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237D0CA58();
        v5 = v30;
      }

      v22 = *(v5 + 16);
      if (v22 >= *(v5 + 24) >> 1)
      {
        sub_237D0CA58();
        v5 = v31;
      }

      *(v5 + 16) = v22 + 1;
      v23 = v5 + 8 * v22;
      *(v23 + 32) = v20;
      *(v23 + 36) = v21;
      v6 = v9;
    }
  }

  if (!__OFADD__(v3++, 1))
  {
    v9 = (v3 * 0.1) + 0.1;
    goto LABEL_7;
  }

  __break(1u);
}

void FullyConnectedNetworkMultiLabelClassifierModel.prediction(from:confidenceThresholds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  FullyConnectedNetworkMultiLabelClassifierModel.applied(to:eventHandler:)();
  if (!v20)
  {
    v41 = a10;
    MEMORY[0x28223BE20](v27);
    OUTLINED_FUNCTION_9_51();
    v28 = v24[3];
    *(v29 - 64) = v24[2];
    *(v29 - 56) = v28;
    v30 = v24[5];
    v40[0] = v24[4];
    v40[1] = v30;
    *(v29 - 48) = v40[0];
    *(v29 - 40) = v30;
    v44 = v26;
    v31 = v24[7];
    *(v29 - 32) = v24[6];
    *(v29 - 24) = v31;
    v33 = v24[8];
    v32 = v24[9];
    *(v29 - 16) = v33;
    *(v29 - 8) = v32;
    v34 = sub_237EF82A0();
    v42 = 0;
    v43 = v40;
    a10 = v41;
    MEMORY[0x28223BE20](v34);
    type metadata accessor for ClassificationDistribution(0, v28, v32, v35);
    swift_getWitnessTable();
    v36 = sub_237EF87E0();

    a10 = v36;
    type metadata accessor for Classification(255, v28, v32, v37);
    OUTLINED_FUNCTION_31_2();
    v38 = sub_237EF8A60();
    OUTLINED_FUNCTION_1_24();
    WitnessTable = swift_getWitnessTable();
    ClassificationDistribution.init<A>(_:)(&a10, v28, v38, v32, WitnessTable, v44);
  }

  OUTLINED_FUNCTION_12_6();
}

void FullyConnectedNetworkMultiLabelClassifierModel.applied(to:eventHandler:)()
{
  OUTLINED_FUNCTION_13_4();
  v84 = v1;
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0, &unk_237F03680);
  OUTLINED_FUNCTION_18(v9);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v83 = &v75 - v11;
  v12 = v4[2].i64[0];
  v87 = v4[1].i64[0];
  v13 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v82 = v14;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v17 = &v75 - v16;
  sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v75 - v23;
  MEMORY[0x28223BE20](v25);
  if (*(v2 + v4[6].i32[0]) < 1)
  {
    v85 = 0;
    v86 = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000014, 0x8000000237EFB950);
    MEMORY[0x2383E0710](0xD00000000000002ELL, 0x8000000237F185E0);
    MEMORY[0x2383E0710](0xD000000000000034, 0x8000000237EFB990);
    v65 = v85;
    v66 = v86;
    v67 = sub_237C6514C();
    OUTLINED_FUNCTION_45_0(&type metadata for ModelUpdateError, v67);
    *v68 = v65;
    v68[1] = v66;
LABEL_6:
    swift_willThrow();
    goto LABEL_7;
  }

  v80 = v12;
  v81 = &v75 - v27;
  v77 = v28;
  v78 = v26;
  v79 = v8;
  v29 = sub_237EF7E20();
  v30 = v4[5].i32[3];
  v76 = v2;
  v31 = *(v2 + v30);
  v32 = sub_237C60C7C(v29, v31);

  if ((v32 & 1) == 0)
  {
    v69 = sub_237EF7E20();
    v85 = 0;
    v86 = 0xE000000000000000;
    sub_237EF9330();

    v85 = 0xD00000000000002FLL;
    v86 = 0x8000000237F00240;
    v70 = MEMORY[0x2383E0A10](v31, MEMORY[0x277D83B88]);
    MEMORY[0x2383E0710](v70);

    MEMORY[0x2383E0710](0x7078652073617720, 0xEE002E6465746365);
    v71 = v85;
    v72 = v86;
    v73 = sub_237C84150();
    OUTLINED_FUNCTION_45_0(&type metadata for PipelineDataError, v73);
    *v74 = v69;
    *(v74 + 8) = v71;
    *(v74 + 16) = v72;
    *(v74 + 24) = 0;
    *(v74 + 32) = 6;
    goto LABEL_6;
  }

  (*(v82 + 16))(v17, v6, v13);
  v82 = v4[2].i64[1];
  sub_237D4A7B4(v17, v87, v21);
  sub_237EF69B0();
  v33 = v78;
  v34 = *(v77 + 1);
  v34(v21, v78);
  v35 = v34;
  sub_237EF6AE0();
  v34(v24, v33);
  sub_237EF6950();
  v36 = *(type metadata accessor for FullyConnectedNetwork(0) + 28);
  v37 = sub_237EF64B0();
  OUTLINED_FUNCTION_4();
  v39 = v76;
  v40 = v76 + v36;
  v41 = v83;
  (*(v38 + 16))(v83, v40, v37);
  v42 = __swift_storeEnumTagSinglePayload(v41, 0, 1, v37);
  MEMORY[0x28223BE20](v42);
  *(&v75 - 2) = v39;
  *(&v75 - 1) = v21;
  v43 = v84;
  sub_237EF6520();
  v84 = v43;
  sub_237C65484(v41, &qword_27DEAD5F0, &unk_237F03680);
  v77 = v35;
  v35(v21, v33);
  v44 = sub_237EF6AB0();
  v45 = (v35)(v24, v33);
  v83 = &v75;
  v85 = v44;
  MEMORY[0x28223BE20](v45);
  v46 = v4[1].i64[1];
  *(&v75 - 10) = v87;
  *(&v75 - 9) = v46;
  *(&v75 - 8) = v80;
  v47 = v4[4].i64[1];
  *(&v75 - 3) = v47;
  *(&v75 - 2) = v39;
  *v49.i64 = MEMORY[0x28223BE20](v48);
  *(&v75 - 10) = v87;
  *(&v75 - 9) = v46;
  *(&v75 - 8) = v51;
  *(&v75 - 7) = v50;
  v52 = v4[3];
  *&v53 = vdupq_laneq_s64(v52, 1).u64[0];
  *(&v53 + 1) = v54;
  *(v55 - 56) = vzip1q_s64(v49, v52);
  *(v55 - 40) = v53;
  *(&v75 - 3) = v52;
  *(&v75 - 4) = v54;
  *(&v75 - 3) = v47;
  *(&v75 - 2) = sub_237E2C804;
  *(&v75 - 1) = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3C0, &qword_237F05670);
  v59 = type metadata accessor for Classification(0, v46, v47, v58);
  v60 = sub_237C96060();
  sub_237C9339C(sub_237E2C834, (&v75 - 12), v57, v59, MEMORY[0x277D84A98], v60);
  v62 = v61;

  v85 = v62;
  v63 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  ClassificationDistribution.init<A>(_:)(&v85, v46, v63, v47, WitnessTable, v79);
  v77(v81, v33);
LABEL_7:
  OUTLINED_FUNCTION_12_6();
}

double sub_237E2C2B8(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_237CE3484();
  sub_237EF8190();
  return result;
}

BOOL sub_237E2C3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_237EF82F0();
  if (v15)
  {
    return 1;
  }

  if ((~LODWORD(v14) & 0x7F800000) != 0 || (LODWORD(v14) & 0x7FFFFF) == 0)
  {
    return *(a1 + *(type metadata accessor for Classification(0, a4, a10, v12) + 36)) >= v14;
  }

  return 0;
}

uint64_t FullyConnectedNetworkMultiLabelClassifierModel.prediction<A>(from:confidenceThresholds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 + 48);
  v15 = *(a3 + 32);
  v8 = *(a3 + 24);
  v14[2] = *(a3 + 16);
  v14[3] = v8;
  v14[4] = a4;
  v16 = v7;
  v10 = *(a3 + 64);
  v9 = *(a3 + 72);
  v17 = v10;
  v18 = v9;
  v19 = a5;
  v20 = a2;
  v11 = type metadata accessor for ClassificationDistribution(0, v8, v9, a4);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  return sub_237C8FFEC(sub_237E2C86C, v14, a4, v11, v12, a5, MEMORY[0x277D84950], &v21);
}

void sub_237E2C5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v22 = a4;
  v23 = a5;
  v24 = a7;
  v25 = a8;
  v26 = a9;
  v27 = a10;
  v28 = a11;
  v16 = type metadata accessor for FullyConnectedNetworkMultiLabelClassifierModel(0, &v22);
  FullyConnectedNetworkMultiLabelClassifierModel.prediction(from:confidenceThresholds:)(a1, a3, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, *(&v26 + 1), v27, v28, v29, v30, v31, v32);
  if (v13)
  {
    *a13 = v13;
  }
}

uint64_t sub_237E2C64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, uint64_t a11, uint64_t a12)
{
  v28 = a8;
  v29 = a2;
  v30 = a1;
  v27 = a9;
  v18 = sub_237EF90F0();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v27 - v19;
  v21 = *(a4 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[0] = a3;
  v31[1] = a4;
  v31[2] = a5;
  v31[3] = a6;
  v31[4] = a7;
  v31[5] = v28;
  v31[6] = a11;
  v31[7] = a12;
  v25 = type metadata accessor for FullyConnectedNetworkMultiLabelClassifierModel(0, v31);
  sub_237E5E174(v30, *(v29 + *(v25 + 88)), *(v29 + *(v25 + 88) + 8), a4, v20);
  result = __swift_getEnumTagSinglePayload(v20, 1, a4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v21 + 32))(v24, v20, a4);
    return Classification.init(label:probability:)(v24, a4, a12, v27, a10);
  }

  return result;
}

uint64_t sub_237E2C8A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24C8, &unk_237F16690);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_237EF6B10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0, &unk_237F11860);
  sub_237EF6420();
  type metadata accessor for FullyConnectedNetwork(0);
  sub_237DE8DA4(&qword_27DEAD2E8, type metadata accessor for FullyConnectedNetwork, &unk_237F0361C);
  sub_237EF6850();
  v10 = *(v4 + 8);
  v10(v6, v3);
  sub_237EF6400();
  v11 = *MEMORY[0x277D2CD58];
  v12 = sub_237EF64D0();
  (*(*(v12 - 8) + 104))(v2, v11, v12);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v12);
  sub_237EF6560();
  sub_237C65484(v2, &qword_27DEB24C8, &unk_237F16690);
  v10(v6, v3);
  return (v10)(v9, v3);
}

unint64_t sub_237E2CB34(uint64_t a1, uint64_t a2)
{
  v2 = sub_237EF9890();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_237E2CB84(char a1)
{
  result = 0x6C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0x636E456C6562616CLL;
      break;
    case 2:
      result = 0x6168537475706E69;
      break;
    case 3:
      result = 0x6F69746172657469;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237E2CC38()
{
  FullyConnectedNetworkMultiLabelClassifierModel.applied(to:eventHandler:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_237E2CCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237E2CD30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_237E2CD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237E2CE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_237E2CE7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_237E2CB34(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_237E2CEB4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_237E2CB84(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237E2CF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E2CB80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E2CF48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237E2CF9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void FullyConnectedNetworkMultiLabelClassifierModel.encode(to:)()
{
  OUTLINED_FUNCTION_13_4();
  v25 = v0;
  v26 = v1;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 40);
  v7 = *(v2 + 64);
  v8 = *(v2 + 72);
  *v30 = *(v2 + 16);
  v22 = *(v2 + 24);
  *&v30[8] = v22;
  v31 = v6;
  v21 = *(v2 + 48);
  v32 = v21;
  v23 = v8;
  v24 = v7;
  v33 = v7;
  v34 = v8;
  type metadata accessor for FullyConnectedNetworkMultiLabelClassifierModel.CodingKeys(255, v30);
  OUTLINED_FUNCTION_11_50();
  swift_getWitnessTable();
  v9 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_237EFA1B0();
  v30[0] = 0;
  type metadata accessor for FullyConnectedNetwork(0);
  OUTLINED_FUNCTION_0_67();
  sub_237DE8DA4(v15, v16, &unk_237F035F4);
  v17 = v26;
  v18 = v25;
  sub_237EF9A70();
  if (v17)
  {
    (*(v11 + 8))(v14, v9);
  }

  else
  {
    v26 = v11;
    *v30 = *(v18 + v3[22]);
    type metadata accessor for LabelEncoder(0, v22, v21, v23);
    v29 = v24;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_15_39();
    sub_237EF9A70();
    *v30 = *(v18 + v3[23]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350, &unk_237F07040);
    sub_237DA21D0(&qword_280C8CD30, MEMORY[0x277D83B90], MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_15_39();
    sub_237EF9A70();
    v19 = v26;
    v30[0] = 3;
    sub_237EF9A50();
    *v30 = *(v18 + v3[25]);
    sub_237EF82B0();
    v20 = sub_237E2D378();
    v27 = v24;
    v28 = v20;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_15_39();
    sub_237EF9A70();
    (*(v19 + 8))(v14, 0);
  }

  OUTLINED_FUNCTION_12_6();
}

unint64_t sub_237E2D378()
{
  result = qword_27DEB47A8;
  if (!qword_27DEB47A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB47A8);
  }

  return result;
}

void FullyConnectedNetworkMultiLabelClassifierModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_13_4();
  v80 = v21;
  v81 = v22;
  v24 = v23;
  v82 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v22;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v69 = v38;
  v74 = type metadata accessor for FullyConnectedNetwork(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1_3();
  v75 = v40;
  *&v86 = v35;
  *(&v86 + 1) = v33;
  v87 = v31;
  v88 = v29;
  v89 = v28;
  v90 = v26;
  v91 = v24;
  v92 = a21;
  type metadata accessor for FullyConnectedNetworkMultiLabelClassifierModel.CodingKeys(255, &v86);
  OUTLINED_FUNCTION_11_50();
  WitnessTable = swift_getWitnessTable();
  v77 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v71 = v41;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v42);
  v44 = &v68 - v43;
  *&v86 = v35;
  *(&v86 + 1) = v33;
  v70 = v33;
  v87 = v31;
  v88 = v81;
  v72 = v28;
  v89 = v28;
  v90 = v26;
  v73 = v26;
  v91 = v82;
  v92 = a21;
  type metadata accessor for FullyConnectedNetworkMultiLabelClassifierModel(0, &v86);
  OUTLINED_FUNCTION_1();
  v46 = v45;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v47);
  v49 = &v68 - v48;
  v81 = v50;
  v51 = v50[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2A0, &qword_237F135A0);
  v78 = v51;
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  v56 = v37[3];
  v82 = v37;
  __swift_project_boxed_opaque_existential_1(v37, v56);
  v76 = v44;
  v57 = v80;
  sub_237EFA190();
  if (v57)
  {
    __swift_destroy_boxed_opaque_existential_1(v82);
    sub_237C65484(&v49[v78], &qword_27DEAD298, &qword_237F18630);
  }

  else
  {
    v58 = v72;
    WitnessTable = v46;
    v80 = a21;
    v59 = v73;
    LOBYTE(v86) = 0;
    OUTLINED_FUNCTION_0_67();
    sub_237DE8DA4(v60, v61, &unk_237F035CC);
    v62 = v75;
    sub_237EF9970();
    sub_237DE7AF8(v62, v49);
    type metadata accessor for LabelEncoder(0, v70, v58, v80);
    v85 = v59;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_16_42();
    sub_237EF9970();
    v63 = v81;
    *&v49[v81[22]] = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350, &unk_237F07040);
    sub_237DA21D0(&qword_280C8CD28, MEMORY[0x277D83BB8], MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_16_42();
    sub_237EF9970();
    *&v49[v63[23]] = v86;
    LOBYTE(v86) = 3;
    *&v49[v63[24]] = sub_237EF9950();
    sub_237EF82B0();
    v64 = sub_237E2D950();
    v83 = v59;
    v84 = v64;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_16_42();
    sub_237EF9970();
    v65 = OUTLINED_FUNCTION_20_36();
    v66(v65);
    *&v49[v63[25]] = v86;
    v67 = WitnessTable;
    (*(WitnessTable + 16))(v69, v49, v63);
    __swift_destroy_boxed_opaque_existential_1(v82);
    (*(v67 + 8))(v49, v63);
  }

  OUTLINED_FUNCTION_12_6();
}