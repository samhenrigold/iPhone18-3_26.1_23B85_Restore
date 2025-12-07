uint64_t sub_21B26117C(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3C0, &qword_21B355BC0);
  v3 = swift_allocObject();
  sub_21B235124(v2, &v29);
  v27 = v29;
  *(v3 + 16) = v29;
  result = swift_beginAccess();
  if (!v2)
  {
    return v3;
  }

  v5 = 0;
  v6 = a1 + 32;
  v7 = v27;
  while (2)
  {
    for (i = v5; ; ++i)
    {
      if (i >= v2)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v5 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_33;
      }

      if (!v7)
      {
        goto LABEL_39;
      }

      result = *(v6 + 8 * i);
      v10 = *v7;
      v9 = v7[1];
      if (v9 >= *v7)
      {
        break;
      }

      if (result)
      {
        v11 = v10 + 7;
        if (__OFADD__(v10, 7))
        {
          goto LABEL_35;
        }

        if (v11 < 0)
        {
          v11 = v10 + 14;
        }

        v12 = v11 >> 3;
        v14 = v12 - 1;
        v13 = v12 < 1;
        v15 = v12 + 62;
        if (!v13)
        {
          v15 = v14;
        }

        *(&v7[v9 + 16] + (v15 & 0xFFFFFFFFFFFFFFC0)) = result;
        v16 = v9 / 8;
        v17 = v9 - (v15 & 0xFFFFFFFFFFFFFFF8);
        if (v17 >= 0)
        {
          v18 = 1 << v17;
        }

        else
        {
          v18 = 0;
        }

        *(v7 + v16 + 64) |= v18;
        v19 = v7[1];
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v22 = v7[2];
        v20 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v20)
        {
          goto LABEL_36;
        }

        v7[2] = v23;
        v20 = __OFADD__(v9, 1);
        v21 = v9 + 1;
        if (v20)
        {
          goto LABEL_34;
        }
      }

      v7[1] = v21;

      if (v5 == v2)
      {
        return v3;
      }
    }

    v20 = __OFADD__(v9, 1);
    v24 = v9 + 1;
    if (v20)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v10 < v24)
    {
      if (v10 + 0x4000000000000000 >= 0)
      {
        if (2 * v10 <= v24)
        {
          v10 = v24;
        }

        else
        {
          v10 *= 2;
        }

        goto LABEL_30;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

LABEL_30:
    v25 = *(v3 + 16);

    sub_21B2B4364(v28, v25, v10);
    sub_21B2B0D10(*(v3 + 16), *(v3 + 24));
    v7 = v28[0];
    v26 = v28[1];
    *(v3 + 16) = v28[0];
    *(v3 + 24) = v26;
    sub_21B2B4374();

    if (v5 != v2)
    {
      continue;
    }

    return v3;
  }
}

uint64_t sub_21B2613A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4F8, &qword_21B354CA0);
  v3 = swift_allocObject();
  sub_21B2493B0(v2, v30);
  v26 = *&v30[0];
  *(v3 + 16) = v30[0];
  swift_beginAccess();
  if (!v2)
  {
    return v3;
  }

  v4 = a1 + 32;
  v5 = v26;
  while (1)
  {
    result = sub_21B2615FC(v4, v30, &qword_27CD7E500, &qword_21B352660);
    if (!v5)
    {
      break;
    }

    v8 = *v5;
    v9 = v5[1];
    if (v9 >= *v5)
    {
      v20 = __OFADD__(v9, 1);
      v21 = v9 + 1;
      if (v20)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        break;
      }

      if (v8 < v21 && v8 + 0x4000000000000000 < 0)
      {
        goto LABEL_31;
      }

      sub_21B2B4368();
      sub_21B2B436C();
      v6 = *(&v29[0] + 1);
      v5 = *&v29[0];
      *(v3 + 16) = *&v29[0];
      *(v3 + 24) = v6;
      sub_21B2B1630(v30, v5, v6);
    }

    else
    {
      sub_21B2615FC(v30, &v27, &qword_27CD7E500, &qword_21B352660);
      if (v28)
      {
        result = sub_21B235934(&v27, v29);
        v10 = *v5 + 7;
        if (__OFADD__(*v5, 7))
        {
          goto LABEL_30;
        }

        v11 = v5 + 8;
        if (v10 < 0)
        {
          v10 = *v5 + 14;
        }

        v12 = v10 >> 3;
        v14 = v12 - 1;
        v13 = v12 < 1;
        v15 = v12 + 62;
        if (!v13)
        {
          v15 = v14;
        }

        sub_21B2616C4(v29, &v11[4 * v5[1] + 8] + (v15 & 0xFFFFFFFFFFFFFFC0));
        v16 = v5[1];
        v17 = v16 + 7;
        if (v16 >= 0)
        {
          v17 = v5[1];
        }

        v18 = v16 - (v17 & 0xFFFFFFFFFFFFFFF8);
        if (v18 >= 0)
        {
          v19 = 1 << v18;
        }

        else
        {
          v19 = 0;
        }

        *(v11 + (v17 >> 3)) |= v19;
        result = __swift_destroy_boxed_opaque_existential_1Tm(v29);
      }

      else
      {
        result = sub_21B261664(&v27, &qword_27CD7E500, &qword_21B352660);
        v22 = v5[2];
        v20 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v20)
        {
          goto LABEL_32;
        }

        v5[2] = v23;
      }

      v24 = v5[1];
      v20 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v20)
      {
        goto LABEL_29;
      }

      v5[1] = v25;
    }

    sub_21B261664(v30, &qword_27CD7E500, &qword_21B352660);
    v4 += 32;
    if (!--v2)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2615FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21B261664(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21B2616C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21B261774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21B2617BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B261804(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B261858@<X0>(Swift::Int a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{

  Column.init(name:capacity:)(a2, a3, a1, a4, &v16);
  v12 = type metadata accessor for Column(0, a4, v10, v11);
  Column.eraseToAnyColumn()(v12, v13, v14, a5);
}

uint64_t sub_21B261904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_21B34B9F4();
  }
}

uint64_t sub_21B261928(uint64_t a1, uint64_t a2)
{
  sub_21B34BBC4();
  sub_21B34AD94();
  return sub_21B34BC24();
}

uint64_t sub_21B26197C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_21B2619AC(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_21B261A24(uint64_t a1)
{
  sub_21B34BBC4();
  sub_21B261924(v3, *v1, v1[1]);
  return sub_21B34BC24();
}

void *DataFrameProtocol.randomSplit(by:seed:)(void *result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, double a7)
{
  if (a4)
  {
    v8 = MEMORY[0x277D846F8];
    v9 = MEMORY[0x277D84700];

    return DataFrameProtocol.randomSplit<A>(by:using:)(result, a2, a7, a3, a5, v8, a6, v9);
  }

  else if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    type metadata accessor for MersenneTwisterGenerator();
    swift_allocObject();
    v16 = sub_21B262CF4(a3);
    v15 = sub_21B262E5C();
    DataFrameProtocol.randomSplit<A>(by:using:)(v11, a2, a7, &v16, a5, &type metadata for SeededRandomNumberGenerator, a6, v15);
  }

  return result;
}

void *DataFrameProtocol.randomSplit<A>(by:using:)(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 <= 0.0 || a3 >= 1.0)
  {
    goto LABEL_62;
  }

  (*(a7 + 32))(&v63, a5, a7);
  v59 = v63;
  v13 = v64;
  v12 = v65;
  v14 = v66;
  v15 = v67;
  v16 = v65;
  if (v67)
  {
    if (v67 == 1 && *(v65 + 16))
    {
      v16 = *(v65 + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v18)
      {
        v16 = 0;
      }

      else
      {
        v16 = v17;
      }
    }
  }

  sub_21B2A6400();
  v68 = v59;
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  v69 = v13;
  v70 = v12;
  v71 = v14;
  v72 = v15;
  v73 = v16;
  v74 = v21;
  v22 = sub_21B2640C4(&v68);
  sub_21B261664(&v68, &qword_27CD7E510, &unk_21B351F10);
  v24 = v22[2] * a3;
  if (COERCE__INT64(fabs(v24)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_59;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_61:
    __break(1u);
    MEMORY[0x21CEEE840](v13, v23);

    __break(1u);
LABEL_62:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v55 = a1;
  v56 = a2;
  v25 = v24;
  v26 = MEMORY[0x277D84FA0];
  v62 = MEMORY[0x277D84FA0];

  v28 = sub_21B25EF30(v27);

  v61 = v28;
  v60 = v25;
  if (v25 >= 1)
  {
    v13 = v22 + 4;
    sub_21B2659F4();
    sub_21B265A48();
    while (1)
    {
      sub_21B34AA94();
      v29 = v63;
      if ((v63 & 0x8000000000000000) != 0)
      {
        break;
      }

      v30 = v26 + 56;
      while (1)
      {
        if (v29 >= v22[2])
        {
          __break(1u);
          goto LABEL_55;
        }

        v31 = v13[v29];
        if (!*(v26 + 16))
        {
          break;
        }

        v32 = sub_21B34BBB4();
        v33 = -1 << *(v26 + 32);
        v34 = v32 & ~v33;
        if (((*(v30 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          break;
        }

        v35 = ~v33;
        while (*(*(v26 + 48) + 8 * v34) != v31)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v30 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        sub_21B34AA94();
        v29 = v63;
        if ((v63 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }
      }

LABEL_21:
      sub_21B254588(&v63, v31);
      sub_21B2644EC(v13[v29]);
      v26 = v62;
      if (*(v62 + 16) >= v60)
      {
        goto LABEL_33;
      }
    }

LABEL_32:
    __break(1u);
  }

LABEL_33:

  v36 = *(v26 + 16);
  if (v36)
  {
    v37 = sub_21B2642A8(*(v26 + 16), 0);
    v38 = sub_21B26566C(&v63, v37 + 4, v36, v26);
    v39 = v63;

    sub_21B26139C(v39);
    if (v38 == v36)
    {
      goto LABEL_37;
    }

    __break(1u);
  }

  v37 = MEMORY[0x277D84F90];
LABEL_37:
  *&v63 = v37;
  v13 = 0;
  sub_21B264924(&v63);

  v40 = *(v63 + 16);
  if (v40)
  {
    v41 = (v63 + 32);
    while (1)
    {
      v43 = *v41++;
      v42 = v43;
      v23 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v23 < v42)
      {
        goto LABEL_56;
      }

      sub_21B248A60(v42, v23);
      if (!--v40)
      {
        goto LABEL_42;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_42:

  v44 = *(v61 + 16);
  if (v44)
  {
    v45 = sub_21B2642A8(*(v61 + 16), 0);
    v46 = sub_21B26566C(&v63, v45 + 4, v44, v61);
    v47 = v63;

    sub_21B26139C(v47);
    if (v46 == v44)
    {
      goto LABEL_46;
    }

    __break(1u);
  }

  v45 = MEMORY[0x277D84F90];
LABEL_46:
  *&v63 = v45;
  sub_21B264924(&v63);

  v48 = v63;
  v13 = *(v63 + 16);
  if (v13)
  {
    v49 = 32;
    while (1)
    {
      v50 = *(v48 + v49);
      v23 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v23 < v50)
      {
        goto LABEL_58;
      }

      sub_21B248A60(v50, v23);
      v49 += 8;
      v13 = (v13 - 1);
      if (!v13)
      {

        v13 = 0;
        goto LABEL_53;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_53:
  v51 = *(a7 + 24);
  v51(&v63, a5, a7);
  v52 = v64;
  *v55 = v63;
  *(v55 + 16) = v52;
  *(v55 + 24) = 0uLL;
  *(v55 + 40) = 2;
  result = (v51)(&v63, a5, a7);
  v54 = v64;
  *v56 = v63;
  *(v56 + 16) = v54;
  *(v56 + 24) = v13;
  *(v56 + 32) = 0;
  *(v56 + 40) = 2;
  return result;
}

void __swiftcall DataFrameProtocol.stratifiedSplit(on:by:randomSeed:)(Swift::tuple_TabularData_DataFrame_TabularData_DataFrame *__return_ptr retstr, Swift::String on, Swift::Double by, Swift::Int_optional randomSeed)
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v13 = *&randomSeed.is_nil;
  value = randomSeed.value;
  object = on._object;
  countAndFlagsBits = on._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3D8, &qword_21B356260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B351EA0;
  *(inited + 32) = value;
  *(inited + 40) = v13;

  DataFrameProtocol.grouped(by:)(v21, inited, v9, v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  v29 = v21[0];
  v30 = v21[1];
  v31 = v22;
  sub_21B263678(v11, v10 & 1, v21, by);
  v17 = v25;
  v19 = v24;
  v20 = v23;
  sub_21B263148(countAndFlagsBits);
  v26 = v20;
  v27 = v19;
  v28 = v17;
  sub_21B263148(object);
  v32 = v29;
  sub_21B261664(&v32, &qword_27CD7E528, &qword_21B351F20);
}

uint64_t DataFrameProtocol.stratifiedSplit(on:by:randomSeed:)(double a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  sub_21B317AFC(a4, a7, a8, &v26);
  v29 = v26;
  v30 = v27;
  v31 = v28;
  sub_21B263678(a5, a6 & 1, &v20, a1);
  v13 = v22;
  v14 = v25;
  v18 = v21;
  v19 = v20;
  v16 = v24;
  v17 = v23;
  v32 = v29;
  sub_21B261664(&v32, &qword_27CD7E528, &qword_21B351F20);

  v20 = v19;
  v21 = v18;
  v22 = v13;
  sub_21B263148(a2);
  v26 = v17;
  v27 = v16;
  v28 = v14;
  sub_21B263148(a3);
}

uint64_t DataFrameProtocol.stratifiedSplit<A>(on:by:randomSeed:)(double a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = a4[1];
  v23 = *a4;
  v24 = v14;
  DataFrameProtocol.grouped<A>(by:)(&v23, a7, &v21, a8, a9, a10);
  v16 = type metadata accessor for RowGrouping(0, a8, a10, v15);
  RowGrouping.randomSplit(by:seed:)(a1, &v23, v22, a5, a6 & 1, v16);

  v17 = v22[0];
  v18 = v22[1];
  v19 = v22[2];
  RowGrouping.ungrouped()();
  v23 = v17;
  v24 = v18;
  v25 = v19;
  RowGrouping.ungrouped()();
}

uint64_t DataFrameProtocol.stratifiedSplit<A, B>(on:_:by:randomSeed:)(double a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12)
{
  v16 = a4[1];
  v17 = *a5;
  v18 = a5[1];
  *&v38 = *a4;
  *(&v38 + 1) = v16;
  *&v47[0] = v17;
  *(&v47[0] + 1) = v18;
  DataFrameProtocol.grouped<A, B>(by:_:)(&v38, v47, a8, a9, a10, a11, a12, *(&a12 + 1), &v44);
  v47[0] = v44;
  v47[1] = v45;
  v48 = v46;
  v19 = sub_21B34B474();
  v20 = sub_21B34B474();
  WitnessTable = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  *&v38 = v19;
  *(&v38 + 1) = v20;
  *&v39 = WitnessTable;
  *(&v39 + 1) = v22;
  v23 = type metadata accessor for Tuple2(255, &v38);
  *&v38 = a9;
  *(&v38 + 1) = a10;
  v39 = a12;
  v24 = type metadata accessor for ColumnBuilder2(255, &v38);
  v25 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  *&v38 = v23;
  *(&v38 + 1) = v24;
  *&v39 = v25;
  *(&v39 + 1) = v26;
  v27 = type metadata accessor for CustomGrouping(0, &v38);
  sub_21B347534(a6, a7 & 1, v27, &v38, a1);
  v28 = v40;
  v29 = v43;
  v36 = v39;
  v37 = v38;
  v34 = v42;
  v35 = v41;
  v49 = *&v47[0];
  swift_getTupleTypeMetadata2();
  v30 = sub_21B34B054();
  (*(*(v30 - 8) + 8))(&v49, v30);

  v38 = v37;
  v39 = v36;
  v40 = v28;
  sub_21B34663C(v27, a2);
  v44 = v35;
  v45 = v34;
  v46 = v29;
  sub_21B34663C(v27, a3);
}

uint64_t DataFrameProtocol.stratifiedSplit<A, B, C>(on:_:_:by:randomSeed:)(double a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, char a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = a4[1];
  v17 = *a5;
  v18 = a5[1];
  v19 = *a6;
  v20 = a6[1];
  *&v44 = *a4;
  *(&v44 + 1) = v16;
  *&v54[0] = v17;
  *(&v54[0] + 1) = v18;
  v50[0] = v19;
  v50[1] = v20;
  DataFrameProtocol.grouped<A, B, C>(by:_:_:)(&v44, v54, v50, a9, a10, *(&a10 + 1), a11, a12, &v51, a13, a14, a15);
  v54[0] = v51;
  v54[1] = v52;
  v55 = v53;
  v21 = sub_21B34B474();
  v22 = sub_21B34B474();
  v23 = sub_21B34B474();
  WitnessTable = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  *&v44 = v21;
  *(&v44 + 1) = v22;
  *&v45 = v23;
  *(&v45 + 1) = WitnessTable;
  v46 = v25;
  *&v47 = v26;
  v27 = type metadata accessor for Tuple3(255, &v44);
  v44 = a10;
  *&v45 = a11;
  *(&v45 + 1) = a13;
  v46 = a14;
  *&v47 = a15;
  v28 = type metadata accessor for ColumnBuilder3(255, &v44);
  v29 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  *&v44 = v27;
  *(&v44 + 1) = v28;
  *&v45 = v29;
  *(&v45 + 1) = v30;
  v31 = type metadata accessor for CustomGrouping(0, &v44);
  sub_21B347534(a7, a8 & 1, v31, &v44, a1);
  v32 = v46;
  v33 = v49;
  v41 = v45;
  v43 = v44;
  v38 = v48;
  v39 = v47;
  v50[0] = *&v54[0];
  swift_getTupleTypeMetadata2();
  v34 = sub_21B34B054();
  (*(*(v34 - 8) + 8))(v50, v34);

  v44 = v43;
  v45 = v41;
  v46 = v32;
  sub_21B34663C(v31, a2);
  v51 = v39;
  v52 = v38;
  v53 = v33;
  sub_21B34663C(v31, a3);
}

void sub_21B262BA0()
{
  v1 = 0;
  v2 = *(v0 + 120);
  for (i = 156; ; ++i)
  {
    v4 = *(v2 + 2);
    if (v1 >= v4)
    {
      break;
    }

    v5 = v1 + 1;
    if (v1 == 623)
    {
      v6 = 0;
    }

    else
    {
      v6 = v1 + 1;
    }

    if (v6 >= v4)
    {
      goto LABEL_17;
    }

    v7 = *&v2[8 * v6 + 32] % 0x270uLL;
    if (v7)
    {
      v8 = ((v7 | (*&v2[8 * v1 + 36] << 32)) >> 1) ^ 0xB5026F5AA96619E9;
    }

    else
    {
      v8 = (v7 | (*&v2[8 * v1 + 36] << 32)) >> 1;
    }

    if (v1 + 156 - 624 * (i / 0x270) >= v4)
    {
      goto LABEL_18;
    }

    v9 = *&v2[8 * v1 + 1280 - 4992 * (i / 0x270)];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 120) = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_21B23A344(v2);
    }

    if (v1 >= *(v2 + 2))
    {
      goto LABEL_19;
    }

    *&v2[8 * v1 + 32] = v9 ^ v8;
    *(v0 + 120) = v2;
    *(v0 + 128) = 0;
    ++v1;
    if (v5 == 624)
    {
      return;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

char *sub_21B262CF4(uint64_t a1)
{
  *(v1 + 16) = xmmword_21B351EB0;
  *(v1 + 32) = xmmword_21B351EC0;
  *(v1 + 48) = xmmword_21B351ED0;
  *(v1 + 64) = xmmword_21B351EE0;
  *(v1 + 80) = xmmword_21B351EF0;
  *(v1 + 96) = xmmword_21B351F00;
  *(v1 + 112) = 0x5851F42D4C957F2DLL;
  *(v1 + 128) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E188, &qword_21B351AB8);
  result = swift_allocObject();
  v4 = result;
  v5 = 0;
  *(result + 1) = xmmword_21B351EA0;
  *(result + 4) = a1;
  while (1)
  {
    v6 = v5 + 1;
    if (v5 >= v5 + 1)
    {
      break;
    }

    v7 = *&v4[8 * v5 + 32] ^ (*&v4[8 * v5 + 32] >> 30);
    v8 = 0x5851F42D00000000 * v7 + 0x4C957F2D00000000 * HIDWORD(v7) + 1284865837 * v7;
    v9 = v8 + v6;
    if (__CFADD__(v8, v6))
    {
      goto LABEL_9;
    }

    v10 = *(v4 + 3);
    if (v6 >= v10 >> 1)
    {
      result = sub_21B2498C0((v10 > 1), v5 + 2, 1, v4);
      v4 = result;
    }

    *(v4 + 2) = v5 + 2;
    *&v4[8 * v5++ + 40] = v9;
    if (v5 == 623)
    {
      *(v1 + 120) = v4;
      return v1;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_21B262E5C()
{
  result = qword_27CD7E508;
  if (!qword_27CD7E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E508);
  }

  return result;
}

void sub_21B262EB0()
{
  v1 = *(v0 + 128);
  if (v1 == 624)
  {
    sub_21B262BA0();
    v1 = *(v0 + 128);
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *(*(v0 + 120) + 16))
  {
    *(v0 + 128) = v1 + 1;
    return;
  }

  __break(1u);
}

uint64_t sub_21B262F38()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21B262F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a6;
  v11 = *(a1 + 16);
  if (v11)
  {
    v35 = MEMORY[0x277D84F90];
    sub_21B2541C8(0, v11, 0);
    result = a1;
    v14 = 0;
    v15 = v35;
    v16 = (a1 + 80);
    v32 = v11;
    v33 = a1;
    while (v14 < *(result + 16))
    {
      v17 = *(v16 - 6);
      v18 = *(v16 - 5);
      v20 = *(v16 - 4);
      v19 = *(v16 - 3);
      v21 = *(v16 - 2);
      v22 = *(v16 - 1);
      v23 = *v16;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_21B254074(v21, v22, v23);
      v34 = v17;

      sub_21B254074(v21, v22, v23);

      sub_21B23A9F4(v21, v22, v23);
      v25 = *(v35 + 16);
      v24 = *(v35 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_21B2541C8((v24 > 1), v25 + 1, 1);
      }

      ++v14;
      *(v35 + 16) = v25 + 1;
      v26 = v35 + 56 * v25;
      *(v26 + 32) = v34;
      *(v26 + 40) = v18;
      *(v26 + 48) = v20;
      *(v26 + 56) = v19;
      *(v26 + 64) = v21;
      *(v26 + 72) = v22;
      *(v26 + 80) = v23;
      v16 += 56;
      result = v33;
      if (v32 == v14)
      {

        v7 = a4;
        v6 = a5;
        v10 = a6;
        v8 = a3;
        v9 = a2;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
LABEL_9:
    *v10 = v15;
    v10[1] = v9;
    v10[2] = v8;
    v10[3] = v7;
    v10[4] = v6;
  }

  return result;
}

uint64_t sub_21B263148@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v3 = a1;
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v71 = MEMORY[0x277D84F90];
    sub_21B2541A8(0, v5, 0);
    v7 = 0;
    v8 = v71;
    v49 = v2[1];
    v50 = v4 + 32;
    v48 = v5;
    while (1)
    {
      v58 = v8;
      v9 = (v50 + 56 * v7);
      v10 = *v9;
      v11 = v9[1];
      v13 = v9[2];
      v12 = v9[3];
      v14 = v9[4];
      v15 = v9[5];
      v16 = *(v9 + 48);
      v17 = sub_21B2FB1D4(v14, v15, v16);

      sub_21B254074(v14, v15, v16);

      sub_21B254074(v14, v15, v16);
      v57 = v12;

      v18 = sub_21B23A9F4(v14, v15, v16);
      v49(&v69, v18);
      result = sub_21B266294(v17);
      if (v17 < 0)
      {
        __break(1u);
        return result;
      }

      v51 = v13;
      v52 = v11;
      v53 = v16;
      v54 = v15;
      v55 = v14;
      v56 = v7;
      v8 = &qword_27CD7E200;
      if (v17)
      {
        break;
      }

LABEL_27:
      *&v62 = v52;
      *(&v62 + 1) = v51;
      v63 = v57;
      v64 = v55;
      v65 = v54;
      v66 = v53;

      sub_21B254074(v55, v54, v53);
      DataFrame.init(_:)(&v62, &v67);
      sub_21B2665A0(&v67, 1);

      sub_21B23A9F4(v55, v54, v53);
      v34 = v67;
      v35 = v68;
      v8 = v58;
      v71 = v58;
      v37 = v58[2];
      v36 = v58[3];
      if (v37 >= v36 >> 1)
      {
        v61 = v67;
        sub_21B2541A8((v36 > 1), v37 + 1, 1);
        v34 = v61;
        v8 = v71;
      }

      v7 = v56 + 1;
      v8[2] = v37 + 1;
      v38 = &v8[3 * v37];
      *(v38 + 2) = v34;
      v38[6] = v35;
      if (v56 + 1 == v48)
      {
        goto LABEL_38;
      }
    }

    v20 = v17;
    v21 = 0;
    v59 = v17;
    v22 = v70;
    while (1)
    {
      v60 = v21;
      v23 = *(v22 + 2);
      v24 = *(v10 + 16);
      v25 = v24 >= v23 ? *(v22 + 2) : *(v10 + 16);
      if (v25)
      {
        break;
      }

LABEL_20:
      if (v24 < v23)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_21B23A2F4(v22);
        }

        v32 = &v22[40 * v24 + 32];
        while (v24 < *(v22 + 2))
        {
          ++v24;
          v33 = *(v32 + 24);
          v8 = *(v32 + 32);
          __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
          (v8[2])(v33, v8);
          v70 = v22;
          v32 += 40;
          if (v23 == v24)
          {
            v8 = &qword_27CD7E200;
            goto LABEL_6;
          }
        }

        goto LABEL_37;
      }

LABEL_6:
      v21 = v60 + 1;
      if (v60 + 1 == v20)
      {
        goto LABEL_27;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_21B23A2F4(v22);
    }

    v26 = 0;
    v27 = (v22 + 32);
    v28 = v10 + 32;
    while (1)
    {
      sub_21B2615FC(v28, &v62, &qword_27CD7E200, &unk_21B352050);
      if (v64)
      {
        sub_21B34B5B4();
        sub_21B260E14(&v62);
      }

      else
      {
        sub_21B261664(&v62, &qword_27CD7E200, &unk_21B352050);
        v67 = 0u;
        v68 = 0u;
      }

      if (v26 >= *(v22 + 2))
      {
        break;
      }

      ++v26;
      v30 = *(v27 + 24);
      v29 = *(v27 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v27, v30);
      v31 = v30;
      v8 = &qword_27CD7E200;
      (*(v29 + 24))(&v67, v31, v29);
      sub_21B261664(&v67, &qword_27CD7E0F8, &unk_21B3557C0);
      v70 = v22;
      v27 += 40;
      v28 += 40;
      if (v25 == v26)
      {
        v23 = *(v22 + 2);
        v20 = v59;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v3 = a1;
    v6 = MEMORY[0x277D84F90];
    v39 = v8[2];
    if (v39)
    {
      goto LABEL_32;
    }

    goto LABEL_39;
  }

  v8 = MEMORY[0x277D84F90];
  v39 = *(MEMORY[0x277D84F90] + 16);
  if (!v39)
  {
LABEL_39:

    *v3 = v6;
    v3[1] = v6;
    result = sub_21B25DC2C(v6);
    v3[2] = result;
    return result;
  }

LABEL_32:
  v41 = v8[5];
  v40 = v8[6];
  *&v62 = v8[4];
  *(&v62 + 1) = v41;
  v63 = v40;

  v43 = v39 - 1;
  if (v39 != 1)
  {
    v44 = v8 + 9;
    do
    {
      v45 = *v44;
      v67 = *(v44 - 1);
      *&v68 = v45;
      v42.columns._rawValue = &v67;
      DataFrame.append(rowsOf:)(v42);
      v44 += 3;
      --v43;
    }

    while (v43);
  }

  v46 = v63;
  *v3 = v62;
  v3[2] = v46;
  return result;
}

uint64_t sub_21B263678@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = *v4;
  v6 = *(*v4 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v82[0] = MEMORY[0x277D84F90];
    result = sub_21B254208(0, v6, 0);
    v11 = (v5 + 40);
    v12 = v82[0];
    for (i = v6 - 1; ; --i)
    {
      v14 = *(v11 - 1);
      v15 = v11[1];
      v99 = *v11;
      v100[0] = v15;
      *(v100 + 9) = *(v11 + 25);
      if (a2)
      {
        sub_21B343AF4(&v92 + 8, &v95 + 8, a4);
      }

      else
      {
        if (a1 < 0)
        {
          __break(1u);
          return result;
        }

        type metadata accessor for MersenneTwisterGenerator();
        swift_allocObject();
        *&v85 = sub_21B262CF4(a1);
        sub_21B34351C(&v92 + 8, &v95 + 8, &v85, a4);
      }

      *&v92 = v14;
      v89 = v96;
      v90 = v97;
      v87 = v94;
      v88 = v95;
      v86 = v93;
      v91 = v98;
      v85 = v92;
      v82[0] = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);

      if (v17 >= v16 >> 1)
      {
        result = sub_21B254208((v16 > 1), v17 + 1, 1);
        v12 = v82[0];
      }

      *(v12 + 16) = v17 + 1;
      v18 = v12 + 104 * v17;
      v19 = v85;
      v20 = v87;
      *(v18 + 48) = v86;
      *(v18 + 64) = v20;
      *(v18 + 32) = v19;
      v21 = v88;
      v22 = v89;
      v23 = v90;
      *(v18 + 128) = v91;
      *(v18 + 96) = v22;
      *(v18 + 112) = v23;
      *(v18 + 80) = v21;
      if (!i)
      {
        break;
      }

      v11 = (v11 + 56);
    }

    v7 = MEMORY[0x277D84F90];
    v24 = *(v12 + 16);
    if (!v24)
    {
      goto LABEL_24;
    }

    goto LABEL_12;
  }

  v12 = MEMORY[0x277D84F90];
  v24 = *(MEMORY[0x277D84F90] + 16);
  if (v24)
  {
LABEL_12:
    v84 = v7;
    sub_21B2541E8(0, v24, 0);
    v76 = v12;
    v77 = v84;
    v25 = 32;
    v75 = v24 - 1;
    for (j = v24 - 1; ; --j)
    {
      v67 = v25;
      v27 = *(v12 + v25 + 16);
      v26 = *(v12 + v25 + 32);
      v92 = *(v12 + v25);
      v93 = v27;
      v94 = v26;
      v28 = *(v12 + v25 + 96);
      v30 = *(v12 + v25 + 64);
      v29 = *(v12 + v25 + 80);
      v95 = *(v12 + v25 + 48);
      v96 = v30;
      v97 = v29;
      v98 = v28;
      v31 = v93;
      v32 = v94;
      v33 = v95;
      v70 = *(&v29 + 1);
      v72 = v29;
      v34 = *(&v92 + 1);
      v73 = v92;
      sub_21B2615FC(&v92, &v85, &qword_27CD7E548, &unk_21B352060);
      sub_21B2615FC(&v92, &v85, &qword_27CD7E548, &unk_21B352060);

      sub_21B23A9F4(v32, *(&v32 + 1), v33);

      sub_21B23A9F4(v72, v70, v28);

      sub_21B23A9F4(v72, v70, v28);

      v35 = v77;
      v84 = v77;
      v37 = *(v77 + 16);
      v36 = *(v77 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_21B2541E8((v36 > 1), v37 + 1, 1);
        v35 = v84;
      }

      *(v35 + 16) = v37 + 1;
      v77 = v35;
      v38 = v35 + 56 * v37;
      *(v38 + 32) = v73;
      *(v38 + 40) = v34;
      *(v38 + 48) = v31;
      *(v38 + 64) = v32;
      *(v38 + 80) = v33;
      if (!j)
      {
        break;
      }

      v25 = v67 + 104;
      v12 = v76;
    }

    v83 = MEMORY[0x277D84F90];
    sub_21B2541E8(0, v24, 0);
    v74 = v83;
    v39 = 32;
    for (k = v76; ; k = v76)
    {
      v41 = (k + v39);
      v43 = v41[1];
      v42 = v41[2];
      v85 = *v41;
      v86 = v43;
      v87 = v42;
      v44 = *(v41 + 96);
      v46 = v41[4];
      v45 = v41[5];
      v88 = v41[3];
      v89 = v46;
      v90 = v45;
      v91 = v44;
      v66 = v39;
      v68 = *(&v87 + 1);
      v69 = v87;
      v47 = *(&v88 + 1);
      v48 = v46;
      v49 = v45;
      v71 = v85;
      v50 = v88;
      sub_21B2615FC(&v85, v82, &qword_27CD7E548, &unk_21B352060);
      sub_21B2615FC(&v85, v82, &qword_27CD7E548, &unk_21B352060);

      sub_21B23A9F4(v69, v68, v50);

      sub_21B23A9F4(v49, *(&v49 + 1), v44);

      sub_21B23A9F4(v69, v68, v50);

      v51 = v74;
      v83 = v74;
      v53 = *(v74 + 16);
      v52 = *(v74 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_21B2541E8((v52 > 1), v53 + 1, 1);
        v51 = v83;
      }

      *(v51 + 16) = v53 + 1;
      v54 = v51 + 56 * v53;
      *(v54 + 32) = v71;
      *(v54 + 40) = v47;
      *(v54 + 48) = v48;
      *(v54 + 64) = v49;
      *(v54 + 80) = v44;
      if (!v75)
      {
        break;
      }

      v74 = v51;
      --v75;
      v39 = v66 + 104;
    }

    v55 = v77;
    goto LABEL_25;
  }

LABEL_24:

  v51 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
LABEL_25:
  v56 = v64[1];
  v57 = v64[2];
  v58 = v64[3];
  v59 = v64[4];
  swift_retain_n();
  swift_retain_n();
  sub_21B262F70(v55, v56, v57, v58, v59, &v85);
  v60 = v87;
  v78 = v86;
  v81 = v85;
  result = sub_21B262F70(v51, v56, v57, v58, v59, &v92);
  v61 = v94;
  v62 = v92;
  v63 = v93;
  *a3 = v81;
  *(a3 + 16) = v78;
  *(a3 + 32) = v60;
  *(a3 + 40) = v62;
  *(a3 + 56) = v63;
  *(a3 + 72) = v61;
  return result;
}

void *sub_21B263CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = sub_21B26422C(*(a1 + 16), 0, &qword_27CD7E350, &qword_21B352030);

  v10 = sub_21B265198(&v12, v9 + 2, v4, a1, a2, a3, a4);

  if (v10 != v4)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v9;
}

void *sub_21B263DC8(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(*(v3 + 8) + 48))(v2);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v4;
  v6 = sub_21B26422C(v4, 0, &qword_27CD7E350, &qword_21B352030);
  sub_21B25EFA4(a1, v9);
  v7 = sub_21B2654C4(v10, v6 + 2, v5, sub_21B25EFA4, sub_21B25F000);
  sub_21B261664(v10, &qword_27CD7E540, &unk_21B352040);
  if (v7 != v5)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

void *sub_21B263EC4(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(*(v3 + 8) + 48))(v2);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v4;
  v6 = sub_21B26422C(v4, 0, &qword_27CD7E350, &qword_21B352030);
  sub_21B233A74(a1, v9);
  v7 = sub_21B2654C4(v10, v6 + 2, v5, sub_21B233A74, sub_21B233960);
  sub_21B261664(v10, &qword_27CD7E530, &qword_21B352028);
  if (v7 != v5)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

void *sub_21B263FC0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E190, &qword_21B351AC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 17;
  }

  v4[2] = 1;
  v4[3] = 2 * (v6 >> 4);
  v4[4] = a1;
  v4[5] = a2;
  return v4;
}

void *sub_21B264038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E190, &qword_21B351AC0);
  v8 = swift_allocObject();
  v9 = _swift_stdlib_malloc_size(v8);
  v10 = v9 - 32;
  if (v9 < 32)
  {
    v10 = v9 - 17;
  }

  v8[2] = 2;
  v8[3] = 2 * (v10 >> 4);
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = a3;
  v8[7] = a4;
  return v8;
}

void *sub_21B2640C4(__int128 *a1)
{
  result = *(a1 + 6);
  v3 = *(a1 + 7);
  v4 = a1[1];
  v13 = *a1;
  v14[0] = v4;
  *(v14 + 9) = *(a1 + 25);
  if (result >= v3)
  {
    if (v3 >= result)
    {
      return MEMORY[0x277D84F90];
    }

    v6 = 0;
    while (!__OFSUB__(v6--, 1))
    {
      v11 = v13;
      v12[0] = v14[0];
      *(v12 + 9) = *(v14 + 9);
      result = DataFrame.Rows.index(before:)(result);
      if (result == v3)
      {
LABEL_10:
        if (!v6)
        {
          return MEMORY[0x277D84F90];
        }

        v8 = sub_21B2642A8(v6, 0);
        v9 = sub_21B26576C(&v11, (v8 + 4), v6);
        sub_21B2615FC(a1, &v10, &qword_27CD7E510, &unk_21B351F10);
        result = sub_21B261664(&v11, qword_27CD7E550, &unk_21B352070);
        if (v9 == v6)
        {
          return v8;
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v11 = v13;
      v12[0] = v14[0];
      *(v12 + 9) = *(v14 + 9);
      result = DataFrame.Rows.index(after:)(result);
      ++v5;
      if (result == v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void *sub_21B26422C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 1;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 5);
  return result;
}

void *sub_21B2642A8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E218, &qword_21B351B30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_21B26432C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3D8, &qword_21B356260);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_21B2643B0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_21B34BBC4();
  sub_21B34AD94();
  v6 = sub_21B34BC24();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_21B34B9F4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21B2563C8();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_21B2645DC(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_21B2644EC(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_21B34BBB4();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21B256524();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_21B2647A0(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t sub_21B2645DC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21B34B584();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_21B34BBC4();

        sub_21B34AD94();
        v10 = sub_21B34BC24();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_21B2647A0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21B34B584();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_21B34BBB4() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_21B264924(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21B33EA0C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_21B34B914();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_21B34AFE4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_21B264A58(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_21B264A58(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_21B23A330(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_21B264FA4((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21B2356AC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_21B2356AC((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_21B264FA4((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_21B264FA4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
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
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void *sub_21B265198(void *result, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = result;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *v8 = a4;
    v8[1] = a5;
    v8[2] = a6;
    v8[3] = a7;
    v8[4] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v17 = a3;
    v18 = a5;
    v19 = a6;
    v9 = *(a4 + 16);
    if (v9)
    {
      v10 = a2;
      v11 = 0;
      v12 = a4 + 32;
      v13 = a3 - 1;
      while (v11 < *(a4 + 16))
      {
        sub_21B233A74(v12, v21);
        v15 = v22;
        v14 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        (*(*(v14 + 8) + 128))(v24, a7, v15);
        result = sub_21B233960(v21);
        v16 = v24[1];
        *v10 = v24[0];
        v10[1] = v16;
        if (v13 == v11)
        {
          a5 = v18;
          a6 = v19;
          a3 = v17;
          goto LABEL_12;
        }

        v10 += 2;
        ++v11;
        v12 += 40;
        if (v9 == v11)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    a3 = v9;
    a5 = v18;
    a6 = v19;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_21B2652CC(uint64_t result, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = result;
  v6 = v3[3];
  v7 = v3[4];
  v8 = *(v3 + 40);
  v9 = *v3;
  v10 = v3[1];
  v11 = v3[2];
  v12 = v6;
  if (*(v3 + 40))
  {
    if (v8 != 1 || !*(v6 + 16))
    {
LABEL_20:
      v17 = a3;
      result = sub_21B2A6400();
      v20 = (v19 & 1) == 0;
      a3 = v17;
      if (v20)
      {
        v12 = v18;
      }

      else
      {
        v12 = 0;
      }

      if (v4)
      {
        goto LABEL_6;
      }

LABEL_24:
      a3 = 0;
      goto LABEL_27;
    }

    v12 = *(v6 + 32);
  }

  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_6:
  if (!a3)
  {
    goto LABEL_27;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v21 = v5;
  v22 = a3;
  v5 = 1;
  while (1)
  {
    v13 = v7;
    if (!v8)
    {
      goto LABEL_13;
    }

    if (v8 == 1)
    {
      v14 = *(v6 + 16);
      if (v14)
      {
        v13 = *(v6 + 32 + 16 * v14 - 8);
LABEL_13:
        if (v12 == v13)
        {
          goto LABEL_25;
        }

        goto LABEL_16;
      }
    }

    if (!v12)
    {
LABEL_25:
      a3 = v5 - 1;
      v5 = v21;
      goto LABEL_27;
    }

LABEL_16:
    v15 = DataFrame.Rows.index(after:)(v12);
    *v4 = v9;
    v4[1] = v10;
    v4[2] = v11;
    v4[3] = v12;
    if (v22 == v5)
    {
      break;
    }

    v4 += 4;
    v12 = v15;
    if (__OFADD__(v5++, 1))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  v12 = v15;
  v5 = v21;
  a3 = v22;
LABEL_27:
  *v5 = v9;
  *(v5 + 8) = v10;
  *(v5 + 16) = v11;
  *(v5 + 24) = v6;
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  *(v5 + 48) = v12;
  return a3;
}

uint64_t sub_21B2654C4(_OWORD *a1, _OWORD *a2, uint64_t a3, void (*a4)(void *, __int128 *), uint64_t (*a5)(void *))
{
  v7 = v5;
  a4(v5, &v27);
  v12 = v5[3];
  v11 = v5[4];
  __swift_project_boxed_opaque_existential_1(v7, v12);
  v13 = (*(*(v11 + 8) + 32))(v12);
  result = a5(v7);
  *(&v29 + 1) = v13;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    v25 = v28;
    *a1 = v27;
    a1[1] = v25;
    a1[2] = v29;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v15 = 1;
    while (1)
    {
      v17 = *(&v28 + 1);
      v16 = v29;
      __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
      if (v13 == (*(*(v16 + 8) + 40))(v17))
      {
        break;
      }

      v18 = *(&v28 + 1);
      v19 = v29;
      __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
      (*(*(v19 + 8) + 128))(v26, v13, v18);
      v20 = *(&v28 + 1);
      v21 = v29;
      __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
      v22 = (*(*(v21 + 8) + 64))(v13, v20);
      *(&v29 + 1) = v22;
      v23 = v26[1];
      *a2 = v26[0];
      a2[1] = v23;
      if (a3 == v15)
      {
        goto LABEL_12;
      }

      v13 = v22;
      a2 += 2;
      if (__OFADD__(v15++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v15 - 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *sub_21B26566C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_21B26576C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v16 = v3[1];
  v17 = *v3;
  v5 = v3[2];
  v6 = v3[3];
  v15 = v3[4];
  v14 = *(v3 + 40);
  v7 = v3[6];
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *v4 = v17;
    *(v4 + 8) = v16;
    *(v4 + 16) = v5;
    *(v4 + 24) = v6;
    *(v4 + 32) = v15;
    *(v4 + 40) = v14;
    *(v4 + 41) = *(v3 + 41);
    *(v4 + 56) = v3[7];
    *(v4 + 64) = v7;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v3[7];
    v13 = a3;
    v11 = a3 - 1;
    while (1)
    {
      if (v7 == v10)
      {
        v7 = v10;
        a3 = v9;
        goto LABEL_13;
      }

      v12 = DataFrame.Rows.index(after:)(v7);
      *(a2 + 8 * v9) = v7;
      if (v11 == v9)
      {
        break;
      }

      ++v9;
      v7 = v12;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v7 = v12;
    a3 = v13;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *sub_21B26589C(void *result, void *a2, uint64_t a3, uint64_t a4)
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

unint64_t sub_21B2659F4()
{
  result = qword_27CD7E518;
  if (!qword_27CD7E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E518);
  }

  return result;
}

unint64_t sub_21B265A48()
{
  result = qword_27CD7E520;
  if (!qword_27CD7E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E520);
  }

  return result;
}

uint64_t sub_21B265AAC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B265AF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B265B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21B265B90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B265BD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B265C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_21B265CA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B265CE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B265D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_21B265DB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B265DFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B265E68()
{
  v2 = *v0;
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3D8, &qword_21B356260);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21B351EA0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  return v3;
}

double sub_21B265ED0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;

  Column.init(name:capacity:)(a1, a2, 0, a3, &v9);
  *(a4 + 16) = v9;
  result = *&v10;
  *(a4 + 24) = v10;
  return result;
}

double sub_21B265F40(Swift::Int a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(a2 + 16);

  Column.init(name:capacity:)(v4, v5, a1, v6, &v9);
  v7 = v9;

  *(v2 + 16) = v7;
  result = *&v10;
  *(v2 + 24) = v10;
  return result;
}

uint64_t sub_21B265FFC(uint64_t *a1, char a2, uint64_t a3)
{
  v4 = v3;
  v9 = *v3;
  v8 = v3[1];

  v3[2] = v9;
  v3[3] = v8;
  v10 = a1[1];
  v11 = a1[2];
  v21 = *a1;
  v22 = v10;
  v23 = v11;

  v12._countAndFlagsBits = v9;
  v12._object = v8;
  v24 = DataFrame.indexOfColumn(_:)(v12);
  LOBYTE(v10) = v24.is_nil;

  if ((v10 & 1) == 0)
  {
    if (a2)
    {
      DataFrame.removeColumn(_:)(v9, v8, &v21);
      sub_21B233960(&v21);
    }

    else
    {
      v13 = a1[1];
      v14 = a1[2];
      v21 = *a1;
      v22 = v13;
      v23 = v14;

      *&v25 = v4 + 2;
      *(&v25 + 1) = v9;
      sub_21B26618C(v25, v8);
    }
  }

  v15 = v4[3];
  v16 = v4[4];
  v21 = v4[2];
  v22 = v15;
  v23 = v16;
  v17 = *(a3 + 16);

  DataFrame.append<A>(column:)(&v21, v17, v18, v19);
}

uint64_t sub_21B26618C(__int128 a1, void *a2)
{
  v3 = *(&a1 + 1);
  v4 = a1;
  for (i = 0; !__OFADD__(i, 1); ++i)
  {
    *&v9 = v3;
    *(&v9 + 1) = a2;

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    v6 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v6);

    v7._countAndFlagsBits = v3;
    v7._object = a2;
    *&a1 = DataFrame.indexOfColumn(_:)(v7);
    if (BYTE8(a1))
    {
      *v4 = v9;
      return a1;
    }
  }

  __break(1u);
  return a1;
}

uint64_t sub_21B266294(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v20 = MEMORY[0x277D84F90];
    sub_21B254088(0, v3, 0);
    v4 = v20;
    v6 = v2 + 32;
    do
    {
      sub_21B233A10(v6, v15);
      v7 = v16;
      v8 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v8 + 32))(v18, a1, v7, v8);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      v20 = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_21B254088((v9 > 1), v10 + 1, 1);
        v4 = v20;
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 40 * v10;
      v12 = v18[0];
      v13 = v18[1];
      *(v11 + 64) = v19;
      *(v11 + 32) = v12;
      *(v11 + 48) = v13;
      v6 += 40;
      --v3;
    }

    while (v3);
  }

  v1[1] = v4;
  return result;
}

uint64_t sub_21B2663CC(uint64_t result)
{
  v2 = v1;
  v3 = *(v1 + 1);
  v4 = *(v3 + 2);
  v5 = *(result + 16);
  if (v5 >= v4)
  {
    v6 = *(v3 + 2);
  }

  else
  {
    v6 = *(result + 16);
  }

  if (!v6)
  {
    goto LABEL_13;
  }

  v1 = result;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v7 = 0;
    v8 = (v1 + 32);
    v9 = (v3 + 32);
    do
    {
      sub_21B2677FC(v8, v14);
      if (v15)
      {
        v1 = v14;
        sub_21B34B5B4();
        sub_21B260E14(v14);
      }

      else
      {
        sub_21B261664(v14, &qword_27CD7E200, &unk_21B352050);
        memset(v16, 0, sizeof(v16));
      }

      if (v7 >= *(v3 + 2))
      {
        __break(1u);
        goto LABEL_21;
      }

      ++v7;
      v11 = *(v9 + 24);
      v10 = *(v9 + 32);
      v1 = __swift_mutable_project_boxed_opaque_existential_1(v9, v11);
      (*(v10 + 24))(v16, v11, v10);
      result = sub_21B261664(v16, &qword_27CD7E0F8, &unk_21B3557C0);
      *(v2 + 1) = v3;
      v9 += 40;
      v8 += 40;
    }

    while (v6 != v7);
    v4 = *(v3 + 2);
LABEL_13:
    if (v5 >= v4)
    {
      return result;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_21B23A2F4(v3);
    }

    v12 = &v3[40 * v5 + 32];
    while (v5 < *(v3 + 2))
    {
      ++v5;
      v13 = *(v12 + 24);
      v6 = *(v12 + 32);
      v1 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
      result = (*(v6 + 16))(v13, v6);
      *(v2 + 1) = v3;
      v12 += 40;
      if (v4 == v5)
      {
        return result;
      }
    }

LABEL_21:
    __break(1u);
LABEL_22:
    v3 = sub_21B23A2F4(v3);
  }
}

uint64_t sub_21B2665A0(uint64_t result, char a2)
{
  v3 = *(v2 + 8);
  v23 = *(v3 + 16);
  if (v23)
  {
    v4 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_18;
    }

    while (v23 <= *(*v24 + 16))
    {
      v5 = 0;
      v6 = *v24 + 32;
      for (i = (v3 + 32); ; i += 5)
      {
        sub_21B233A10(v6, &v25);
        v8 = v28;
        v9 = v29;
        __swift_project_boxed_opaque_existential_1(&v25, v28);
        v10 = (*(v9 + 8))(v8, v9);
        v12 = v11;
        __swift_destroy_boxed_opaque_existential_1Tm(&v25);
        v13 = *(v3 + 16);

        if (v5 >= v13)
        {
          break;
        }

        v15 = i[3];
        v14 = i[4];
        __swift_mutable_project_boxed_opaque_existential_1(i, v15);
        (*(*(v14 + 8) + 16))(v10, v12, v15);
        v24[1] = v3;
        v16 = v4[1];
        v17 = v4[2];
        v25 = *v4;
        v26 = v16;
        v27 = v17;

        v18._countAndFlagsBits = v10;
        v18._object = v12;
        v30 = DataFrame.indexOfColumn(_:)(v18);
        LOBYTE(v16) = v30.is_nil;

        if (v16)
        {
        }

        else if (a2)
        {
          DataFrame.removeColumn(_:)(v10, v12, &v25);

          sub_21B233960(&v25);
        }

        else
        {
          v19 = v4[1];
          v20 = v4[2];
          v25 = *v4;
          v26 = v19;
          v27 = v20;
          v21 = *(v3 + 16);

          if (v5 >= v21)
          {
            goto LABEL_17;
          }

          sub_21B266830(i, v10, v12);

          v24[1] = v3;
        }

        if (v5 >= *(v3 + 16))
        {
          goto LABEL_16;
        }

        ++v5;
        sub_21B233A74(i, &v25);
        DataFrame.append(column:)(&v25);
        result = sub_21B233960(&v25);
        v6 += 40;
        if (v23 == v5)
        {
          return result;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      result = sub_21B23A2F4(v3);
      v3 = result;
    }

    __break(1u);
  }

  return result;
}

void *sub_21B266830(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  for (i = 0; !__OFADD__(i, 1); ++i)
  {

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    v7 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v7);

    v9 = v5[3];
    v8 = v5[4];
    __swift_mutable_project_boxed_opaque_existential_1(v5, v9);
    (*(*(v8 + 8) + 16))(a2, a3, v9);
    v11 = v5[3];
    v10 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v11);
    v12._countAndFlagsBits = (*(*(v10 + 8) + 8))(v11);
    v13 = DataFrame.indexOfColumn(_:)(v12);
    LOBYTE(v10) = v13.is_nil;

    if (v10)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2669A0()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3D8, &qword_21B356260);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21B352080;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  *(v5 + 48) = v4;
  *(v5 + 56) = v3;

  return v5;
}

double sub_21B266A20@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *a2;
  v11 = a2[1];
  *a5 = *a1;
  *(a5 + 8) = v9;
  *(a5 + 16) = v10;
  *(a5 + 24) = v11;

  Column.init(name:capacity:)(v8, v9, 0, a3, &v13);
  *(a5 + 32) = v13;
  *(a5 + 40) = v14;
  Column.init(name:capacity:)(v10, v11, 0, a4, &v13);
  *(a5 + 56) = v13;
  result = *&v14;
  *(a5 + 64) = v14;
  return result;
}

double sub_21B266AD8(Swift::Int a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(a2 + 16);

  Column.init(name:capacity:)(v5, v6, a1, v7, &v14);
  v8 = v14;

  *(v2 + 32) = v8;
  *(v2 + 40) = v15;
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(a2 + 24);

  Column.init(name:capacity:)(v9, v10, a1, v11, &v14);
  v12 = v14;

  *(v2 + 56) = v12;
  result = *&v15;
  *(v2 + 64) = v15;
  return result;
}

uint64_t sub_21B266BA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Column(0, a2[2], a3, a4);
  Column.append(_:)(a1, v6, v7, v8);
  v9 = sub_21B34B474();
  v10 = a2[3];
  v11 = sub_21B34B474();
  v20[5] = a2[4];
  WitnessTable = swift_getWitnessTable();
  v20[4] = a2[5];
  v20[0] = v9;
  v20[1] = v11;
  v20[2] = WitnessTable;
  v20[3] = swift_getWitnessTable();
  v13 = *(type metadata accessor for Tuple2(0, v20) + 52);
  v16 = type metadata accessor for Column(0, v10, v14, v15);
  return Column.append(_:)(a1 + v13, v16, v17, v18);
}

uint64_t sub_21B266CAC(uint64_t *a1, char a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v6 = v3[1];

  v3[4] = v7;
  v3[5] = v6;
  v8 = v3[2];
  v9 = v3[3];

  v32 = v8;
  v3[7] = v8;
  v3[8] = v9;
  v10 = a1[1];
  v11 = a1[2];
  v34 = *a1;
  v35 = v10;
  v36 = v11;

  v12._countAndFlagsBits = v7;
  v12._object = v6;
  v37 = DataFrame.indexOfColumn(_:)(v12);
  LOBYTE(v10) = v37.is_nil;

  if ((v10 & 1) == 0)
  {
    if (a2)
    {
      DataFrame.removeColumn(_:)(v7, v6, &v34);
      sub_21B233960(&v34);
    }

    else
    {
      v13 = a1[1];
      v14 = a1[2];
      v34 = *a1;
      v35 = v13;
      v36 = v14;

      *&v39 = v4 + 4;
      *(&v39 + 1) = v7;
      sub_21B26618C(v39, v6);
    }
  }

  v15 = a1[1];
  v16 = a1[2];
  v34 = *a1;
  v35 = v15;
  v36 = v16;

  v17._countAndFlagsBits = v32;
  v17._object = v9;
  v38 = DataFrame.indexOfColumn(_:)(v17);
  LOBYTE(v15) = v38.is_nil;

  if ((v15 & 1) == 0)
  {
    if (a2)
    {
      DataFrame.removeColumn(_:)(v32, v9, &v34);
      sub_21B233960(&v34);
    }

    else
    {
      v18 = a1[1];
      v19 = a1[2];
      v34 = *a1;
      v35 = v18;
      v36 = v19;

      *&v40 = v4 + 7;
      *(&v40 + 1) = v32;
      sub_21B26618C(v40, v9);
    }
  }

  v20 = v4[5];
  v21 = v4[6];
  v34 = v4[4];
  v35 = v20;
  v36 = v21;
  v22 = *(a3 + 16);

  DataFrame.append<A>(column:)(&v34, v22, v23, v24);

  v25 = v4[8];
  v26 = v4[9];
  v34 = v4[7];
  v35 = v25;
  v36 = v26;
  v27 = *(a3 + 24);

  DataFrame.append<A>(column:)(&v34, v27, v28, v29);
}

uint64_t sub_21B266FA4()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3D8, &qword_21B356260);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21B352090;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  *(v7 + 48) = v4;
  *(v7 + 56) = v3;
  *(v7 + 64) = v6;
  *(v7 + 72) = v5;

  return v7;
}

double sub_21B26703C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = *a2;
  v14 = a2[1];
  v15 = *a3;
  v16 = a3[1];
  *a7 = *a1;
  *(a7 + 8) = v12;
  *(a7 + 16) = v13;
  *(a7 + 24) = v14;
  *(a7 + 32) = v15;
  *(a7 + 40) = v16;

  Column.init(name:capacity:)(v11, v12, 0, a4, &v18);
  *(a7 + 48) = v18;
  *(a7 + 56) = v19;
  Column.init(name:capacity:)(v13, v14, 0, a5, &v18);
  *(a7 + 72) = v18;
  *(a7 + 80) = v19;
  Column.init(name:capacity:)(v15, v16, 0, a6, &v18);
  *(a7 + 96) = v18;
  result = *&v19;
  *(a7 + 104) = v19;
  return result;
}

double sub_21B267138(Swift::Int a1, void *a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = a2[2];

  Column.init(name:capacity:)(v5, v6, a1, v7, &v18);
  v8 = v18;

  *(v2 + 48) = v8;
  *(v2 + 56) = v19;
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = a2[3];

  Column.init(name:capacity:)(v9, v10, a1, v11, &v18);
  v12 = v18;

  *(v2 + 72) = v12;
  *(v2 + 80) = v19;
  v13 = *(v2 + 32);
  v14 = *(v2 + 40);
  v15 = a2[4];

  Column.init(name:capacity:)(v13, v14, a1, v15, &v18);
  v16 = v18;

  *(v2 + 96) = v16;
  result = *&v19;
  *(v2 + 104) = v19;
  return result;
}

uint64_t sub_21B26724C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Column(0, a2[2], a3, a4);
  Column.append(_:)(a1, v6, v7, v8);
  v9 = sub_21B34B474();
  v10 = a2[3];
  v11 = sub_21B34B474();
  v12 = a2[4];
  v13 = sub_21B34B474();
  v30[8] = a2[5];
  WitnessTable = swift_getWitnessTable();
  v30[7] = a2[6];
  v15 = swift_getWitnessTable();
  v30[6] = a2[7];
  v30[0] = v9;
  v30[1] = v11;
  v30[2] = v13;
  v30[3] = WitnessTable;
  v30[4] = v15;
  v30[5] = swift_getWitnessTable();
  v16 = type metadata accessor for Tuple3(0, v30);
  v17 = *(v16 + 68);
  v20 = type metadata accessor for Column(0, v10, v18, v19);
  Column.append(_:)(a1 + v17, v20, v21, v22);
  v23 = *(v16 + 72);
  v26 = type metadata accessor for Column(0, v12, v24, v25);
  return Column.append(_:)(a1 + v23, v26, v27, v28);
}

uint64_t sub_21B2673B8(uint64_t *a1, char a2, void *a3)
{
  v4 = v3;
  v6 = *v3;
  v7 = v3[1];

  v3[6] = v6;
  v3[7] = v7;
  v8 = v3[2];
  v9 = v3[3];

  v44 = v8;
  v3[9] = v8;
  v3[10] = v9;
  v11 = v3[4];
  v10 = v3[5];

  v45 = v10;
  v3[12] = v11;
  v43 = v3 + 12;
  v3[13] = v10;
  v12 = a1[1];
  v13 = a1[2];
  v48 = *a1;
  v49 = v12;
  v50 = v13;

  v14._countAndFlagsBits = v6;
  v14._object = v7;
  v51 = DataFrame.indexOfColumn(_:)(v14);
  LOBYTE(v12) = v51.is_nil;

  if ((v12 & 1) == 0)
  {
    if (a2)
    {
      DataFrame.removeColumn(_:)(v6, v7, &v48);
      sub_21B233960(&v48);
    }

    else
    {
      v15 = a1[1];
      v16 = a1[2];
      v48 = *a1;
      v49 = v15;
      v50 = v16;

      *&v54 = v4 + 6;
      *(&v54 + 1) = v6;
      sub_21B26618C(v54, v7);
    }
  }

  v17 = a1[1];
  v18 = a1[2];
  v48 = *a1;
  v49 = v17;
  v50 = v18;

  v19._countAndFlagsBits = v44;
  v19._object = v9;
  v52 = DataFrame.indexOfColumn(_:)(v19);
  LOBYTE(v17) = v52.is_nil;

  if ((v17 & 1) == 0)
  {
    if (a2)
    {
      DataFrame.removeColumn(_:)(v44, v9, &v48);
      sub_21B233960(&v48);
    }

    else
    {
      v20 = a1[1];
      v21 = a1[2];
      v48 = *a1;
      v49 = v20;
      v50 = v21;

      *&v55 = v4 + 9;
      *(&v55 + 1) = v44;
      sub_21B26618C(v55, v9);
    }
  }

  v22 = a1[1];
  v23 = a1[2];
  v48 = *a1;
  v49 = v22;
  v50 = v23;

  v24._countAndFlagsBits = v11;
  v24._object = v45;
  v53 = DataFrame.indexOfColumn(_:)(v24);
  LOBYTE(v22) = v53.is_nil;

  if ((v22 & 1) == 0)
  {
    if (a2)
    {
      DataFrame.removeColumn(_:)(v11, v45, &v48);
      sub_21B233960(&v48);
    }

    else
    {
      v25 = a1[1];
      v26 = a1[2];
      v48 = *a1;
      v49 = v25;
      v50 = v26;

      *&v56 = v43;
      *(&v56 + 1) = v11;
      sub_21B26618C(v56, v45);
    }
  }

  v27 = v4[7];
  v28 = v4[8];
  v48 = v4[6];
  v49 = v27;
  v50 = v28;
  v29 = a3[2];

  DataFrame.append<A>(column:)(&v48, v29, v30, v31);

  v32 = v4[10];
  v33 = v4[11];
  v48 = v4[9];
  v49 = v32;
  v50 = v33;
  v34 = a3[3];

  DataFrame.append<A>(column:)(&v48, v34, v35, v36);

  v37 = v4[13];
  v38 = v4[14];
  v48 = v4[12];
  v49 = v37;
  v50 = v38;
  v39 = a3[4];

  DataFrame.append<A>(column:)(&v48, v39, v40, v41);
}

uint64_t sub_21B2677FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E200, &unk_21B352050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B26786C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    sub_21B231F10(0, v1, 0);
    v2 = v17;
    v4 = a1 + 32;
    do
    {
      sub_21B233A10(v4, v14);
      v5 = v15;
      v6 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v7 = (*(v6 + 8))(v5, v6);
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      v17 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_21B231F10((v10 > 1), v11 + 1, 1);
        v2 = v17;
      }

      *(v2 + 16) = v11 + 1;
      v12 = v2 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21B26797C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v18 = MEMORY[0x277D84F90];
    sub_21B254088(0, v2, 0);
    v3 = v18;
    v4 = a1 + 32;
    do
    {
      sub_21B233A10(v4, v13);
      v5 = v14;
      v6 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      (*(v6 + 32))(v16, 0, v5, v6);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      v18 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_21B254088((v7 > 1), v8 + 1, 1);
        v3 = v18;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 40 * v8;
      v10 = v16[0];
      v11 = v16[1];
      *(v9 + 64) = v17;
      *(v9 + 32) = v10;
      *(v9 + 48) = v11;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return a1;
}

uint64_t Column<A>.summary()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v10 = *(a1 + 16);
  v11 = a2;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  type metadata accessor for CategoricalSummary(0, v10, a2, a4);
  return sub_21B328CA8(sub_21B268F40, &v9, v7, v10);
}

uint64_t sub_21B267B28@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a5@<X4>, unint64_t *x8_0@<X8>)
{
  v27 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    v10 = MEMORY[0x277D84F90];
    while (a2 != v8)
    {
      if (v8 >= a2)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_23;
      }

      result = swift_beginAccess();
      v12 = *(a5 + 16);
      if (!v12)
      {
        goto LABEL_26;
      }

      v13 = *(v12 + (v8 >> 3) + 64);
      v14 = v8++ & 7;
      if ((v13 >> v14))
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v10 + 16) + 1, 1);
        }

        v16 = *(v10 + 16);
        v15 = *(v10 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_21B254034((v15 > 1), v16 + 1, 1);
        }

        *(v10 + 16) = v16 + 1;
        *(v10 + 8 * v16 + 32) = v8 - 1;
        v8 = v11;
      }
    }

    v17 = *(v10 + 16);
    if (v17)
    {
      result = sub_21B254248(0, v17, 0);
      v18 = 0;
      v19 = v9;
      while (v18 < *(v10 + 16))
      {
        v20 = (v27 + 16 * *(v10 + 8 * v18 + 32));
        v21 = *v20;
        v22 = v20[1];
        result = sub_21B260DC0(*v20, v22);
        v24 = *(v19 + 16);
        v23 = *(v19 + 24);
        if (v24 >= v23 >> 1)
        {
          result = sub_21B254248((v23 > 1), v24 + 1, 1);
        }

        ++v18;
        *(v19 + 16) = v24 + 1;
        v25 = v19 + 16 * v24;
        *(v25 + 32) = v21;
        *(v25 + 40) = v22;
        if (v17 == v18)
        {

          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

    v19 = MEMORY[0x277D84F90];
LABEL_21:
    sub_21B26929C(v19, a2 - v17, x8_0);
  }

  return result;
}

uint64_t sub_21B267D40@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v38 = a1;
  v7 = sub_21B34A834();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v12 = v11;
    v32 = a4;
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v15 = v33;
    while (v15 != v13)
    {
      if (v13 >= v15)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_23;
      }

      result = swift_beginAccess();
      v17 = *(a3 + 16);
      if (!v17)
      {
        goto LABEL_26;
      }

      v18 = *(v17 + (v13 >> 3) + 64);
      v19 = v13++ & 7;
      if ((v18 >> v19))
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v39 = v14;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v14 + 16) + 1, 1);
          v15 = v33;
          v14 = v39;
        }

        v20 = v14;
        v21 = *(v14 + 16);
        v22 = *(v20 + 24);
        if (v21 >= v22 >> 1)
        {
          result = sub_21B254034((v22 > 1), v21 + 1, 1);
          v15 = v33;
          v20 = v39;
        }

        *(v20 + 16) = v21 + 1;
        *(v20 + 8 * v21 + 32) = v13 - 1;
        v13 = v16;
        v14 = v20;
      }
    }

    v23 = *(v14 + 16);
    if (v23)
    {
      v39 = MEMORY[0x277D84F90];
      result = sub_21B254268(0, v23, 0);
      v24 = 0;
      v25 = v39;
      v36 = v14;
      v37 = v8;
      v34 = v8 + 32;
      v35 = v8 + 16;
      v26 = v7;
      while (v24 < *(v14 + 16))
      {
        v27 = v37;
        v28 = *(v37 + 72);
        (*(v37 + 16))(v12, v38 + v28 * *(v14 + 8 * v24 + 32), v26);
        v39 = v25;
        v30 = *(v25 + 16);
        v29 = *(v25 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_21B254268((v29 > 1), v30 + 1, 1);
          v25 = v39;
        }

        ++v24;
        *(v25 + 16) = v30 + 1;
        result = (*(v27 + 32))(v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + v30 * v28, v12, v26);
        v14 = v36;
        if (v23 == v24)
        {

          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

    v25 = MEMORY[0x277D84F90];
LABEL_21:
    sub_21B2695D0(v25, v33 - v23, v32);
  }

  return result;
}

uint64_t sub_21B268050@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a5@<X4>, unint64_t *x8_0@<X8>)
{
  v27 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    v10 = MEMORY[0x277D84F90];
    while (a2 != v8)
    {
      if (v8 >= a2)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_23;
      }

      result = swift_beginAccess();
      v12 = *(a5 + 16);
      if (!v12)
      {
        goto LABEL_26;
      }

      v13 = *(v12 + (v8 >> 3) + 64);
      v14 = v8++ & 7;
      if ((v13 >> v14))
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v10 + 16) + 1, 1);
        }

        v16 = *(v10 + 16);
        v15 = *(v10 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_21B254034((v15 > 1), v16 + 1, 1);
        }

        *(v10 + 16) = v16 + 1;
        *(v10 + 8 * v16 + 32) = v8 - 1;
        v8 = v11;
      }
    }

    v17 = *(v10 + 16);
    if (v17)
    {
      result = sub_21B231F10(0, v17, 0);
      v18 = 0;
      v19 = v9;
      while (v18 < *(v10 + 16))
      {
        v20 = (v27 + 16 * *(v10 + 8 * v18 + 32));
        v21 = *v20;
        v22 = v20[1];
        v24 = *(v9 + 16);
        v23 = *(v9 + 24);

        if (v24 >= v23 >> 1)
        {
          result = sub_21B231F10((v23 > 1), v24 + 1, 1);
        }

        ++v18;
        *(v9 + 16) = v24 + 1;
        v25 = v9 + 16 * v24;
        *(v25 + 32) = v21;
        *(v25 + 40) = v22;
        if (v17 == v18)
        {

          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

    v19 = MEMORY[0x277D84F90];
LABEL_21:
    sub_21B269AD8(v19, a2 - v17, x8_0);
  }

  return result;
}

uint64_t sub_21B268264@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
    while (a2 != v9)
    {
      if (v9 >= a2)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_23;
      }

      result = swift_beginAccess();
      v13 = *(a5 + 16);
      if (!v13)
      {
        goto LABEL_26;
      }

      v14 = *(v13 + (v9 >> 3) + 64);
      v15 = v9++ & 7;
      if ((v14 >> v15))
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v11 + 16) + 1, 1);
        }

        v17 = *(v11 + 16);
        v16 = *(v11 + 24);
        if (v17 >= v16 >> 1)
        {
          result = sub_21B254034((v16 > 1), v17 + 1, 1);
        }

        *(v11 + 16) = v17 + 1;
        *(v11 + 8 * v17 + 32) = v9 - 1;
        v9 = v12;
      }
    }

    v18 = *(v11 + 16);
    if (v18)
    {
      result = sub_21B254288(0, v18, 0);
      v19 = 0;
      while (v19 < *(v11 + 16))
      {
        v20 = *(v8 + *(v11 + 8 * v19 + 32));
        v22 = *(v10 + 16);
        v21 = *(v10 + 24);
        if (v22 >= v21 >> 1)
        {
          result = sub_21B254288((v21 > 1), v22 + 1, 1);
        }

        ++v19;
        *(v10 + 16) = v22 + 1;
        *(v10 + v22 + 32) = v20;
        if (v18 == v19)
        {

          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

    v10 = MEMORY[0x277D84F90];
LABEL_21:
    sub_21B269E00(v10, a2 - v18, x8_0);
  }

  return result;
}

uint64_t sub_21B268478@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v7 = v6;
    v10 = result;
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
    v13 = MEMORY[0x277D84F90];
    while (a2 != v11)
    {
      if (v11 >= a2)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_23;
      }

      result = swift_beginAccess();
      v15 = *(a5 + 16);
      if (!v15)
      {
        goto LABEL_26;
      }

      v16 = *(v15 + (v11 >> 3) + 64);
      v17 = v11++ & 7;
      if ((v16 >> v17))
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v25 = v7;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v13 + 16) + 1, 1);
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_21B254034((v18 > 1), v19 + 1, 1);
        }

        *(v13 + 16) = v19 + 1;
        *(v13 + 8 * v19 + 32) = v11 - 1;
        v11 = v14;
        v7 = v25;
      }
    }

    v20 = *(v13 + 16);
    if (v20)
    {
      result = sub_21B2542A8(0, v20, 0);
      v21 = 0;
      while (v21 < *(v13 + 16))
      {
        v22 = *(v10 + 8 * *(v13 + 8 * v21 + 32));
        v24 = *(v12 + 16);
        v23 = *(v12 + 24);
        if (v24 >= v23 >> 1)
        {
          result = sub_21B2542A8((v23 > 1), v24 + 1, 1);
        }

        ++v21;
        *(v12 + 16) = v24 + 1;
        *(v12 + 8 * v24 + 32) = v22;
        if (v20 == v21)
        {

          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_21:
    sub_21B26A0D0(v12, a2 - v20, x8_0);
  }

  return result;
}

uint64_t sub_21B2686A0@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v7 = v6;
    v10 = result;
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
    v13 = MEMORY[0x277D84F90];
    while (a2 != v11)
    {
      if (v11 >= a2)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_23;
      }

      result = swift_beginAccess();
      v15 = *(a5 + 16);
      if (!v15)
      {
        goto LABEL_26;
      }

      v16 = *(v15 + (v11 >> 3) + 64);
      v17 = v11++ & 7;
      if ((v16 >> v17))
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v25 = v7;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v13 + 16) + 1, 1);
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_21B254034((v18 > 1), v19 + 1, 1);
        }

        *(v13 + 16) = v19 + 1;
        *(v13 + 8 * v19 + 32) = v11 - 1;
        v11 = v14;
        v7 = v25;
      }
    }

    v20 = *(v13 + 16);
    if (v20)
    {
      result = sub_21B2542C8(0, v20, 0);
      v21 = 0;
      while (v21 < *(v13 + 16))
      {
        v22 = *(v10 + 4 * *(v13 + 8 * v21 + 32));
        v24 = *(v12 + 16);
        v23 = *(v12 + 24);
        if (v24 >= v23 >> 1)
        {
          result = sub_21B2542C8((v23 > 1), v24 + 1, 1);
        }

        ++v21;
        *(v12 + 16) = v24 + 1;
        *(v12 + 4 * v24 + 32) = v22;
        if (v20 == v21)
        {

          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_21:
    sub_21B26A3A4(v12, a2 - v20, x8_0);
  }

  return result;
}

uint64_t sub_21B2688C8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v7 = v6;
    v10 = result;
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
    v13 = MEMORY[0x277D84F90];
    while (a2 != v11)
    {
      if (v11 >= a2)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_23;
      }

      result = swift_beginAccess();
      v15 = *(a5 + 16);
      if (!v15)
      {
        goto LABEL_26;
      }

      v16 = *(v15 + (v11 >> 3) + 64);
      v17 = v11++ & 7;
      if ((v16 >> v17))
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v25 = v7;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v13 + 16) + 1, 1);
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_21B254034((v18 > 1), v19 + 1, 1);
        }

        *(v13 + 16) = v19 + 1;
        *(v13 + 8 * v19 + 32) = v11 - 1;
        v11 = v14;
        v7 = v25;
      }
    }

    v20 = *(v13 + 16);
    if (v20)
    {
      result = sub_21B2542E8(0, v20, 0);
      v21 = 0;
      while (v21 < *(v13 + 16))
      {
        v22 = *(v10 + 2 * *(v13 + 8 * v21 + 32));
        v24 = *(v12 + 16);
        v23 = *(v12 + 24);
        if (v24 >= v23 >> 1)
        {
          result = sub_21B2542E8((v23 > 1), v24 + 1, 1);
        }

        ++v21;
        *(v12 + 16) = v24 + 1;
        *(v12 + 2 * v24 + 32) = v22;
        if (v20 == v21)
        {

          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_21:
    sub_21B26A678(v12, a2 - v20, x8_0);
  }

  return result;
}

uint64_t sub_21B268AF0@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
    while (a2 != v9)
    {
      if (v9 >= a2)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_23;
      }

      result = swift_beginAccess();
      v13 = *(a5 + 16);
      if (!v13)
      {
        goto LABEL_26;
      }

      v14 = *(v13 + (v9 >> 3) + 64);
      v15 = v9++ & 7;
      if ((v14 >> v15))
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v11 + 16) + 1, 1);
        }

        v17 = *(v11 + 16);
        v16 = *(v11 + 24);
        if (v17 >= v16 >> 1)
        {
          result = sub_21B254034((v16 > 1), v17 + 1, 1);
        }

        *(v11 + 16) = v17 + 1;
        *(v11 + 8 * v17 + 32) = v9 - 1;
        v9 = v12;
      }
    }

    v18 = *(v11 + 16);
    if (v18)
    {
      result = sub_21B254034(0, v18, 0);
      v19 = 0;
      while (v19 < *(v11 + 16))
      {
        v20 = *(v8 + 8 * *(v11 + 8 * v19 + 32));
        v22 = *(v10 + 16);
        v21 = *(v10 + 24);
        if (v22 >= v21 >> 1)
        {
          result = sub_21B254034((v21 > 1), v22 + 1, 1);
        }

        ++v19;
        *(v10 + 16) = v22 + 1;
        *(v10 + 8 * v22 + 32) = v20;
        if (v18 == v19)
        {

          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

    v10 = MEMORY[0x277D84F90];
LABEL_21:
    sub_21B26A94C(v10, a2 - v18, x8_0);
  }

  return result;
}

uint64_t sub_21B268D04@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v25 = result;
    v26 = a8;
    v27 = a6;
    v28 = a7;
    if (a2)
    {
      type metadata accessor for Column(0, a6, a3, a4);
      v12 = 0;
      v13 = MEMORY[0x277D84F90];
      v29 = a5;
      do
      {
        v30[0] = a3;
        v30[1] = a4;
        v30[2] = a5;
        result = Column.isNil(at:)(v12);
        if ((result & 1) == 0)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          v31 = v13;
          if ((result & 1) == 0)
          {
            result = sub_21B254034(0, *(v13 + 16) + 1, 1);
            v13 = v31;
          }

          v15 = *(v13 + 16);
          v14 = *(v13 + 24);
          if (v15 >= v14 >> 1)
          {
            result = sub_21B254034((v14 > 1), v15 + 1, 1);
            v13 = v31;
          }

          *(v13 + 16) = v15 + 1;
          *(v13 + 8 * v15 + 32) = v12;
          a5 = v29;
        }

        ++v12;
      }

      while (a2 != v12);
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v16 = a2 - *(v13 + 16);
    v30[0] = v13;
    MEMORY[0x28223BE20](result);
    v18 = v27;
    v17 = v28;
    v24[2] = v27;
    v24[3] = v28;
    v24[4] = v25;
    v24[5] = a2;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
    v20 = sub_21B26F384();
    v22 = sub_21B2FCC28(sub_21B26F44C, v24, v19, v27, MEMORY[0x277D84A98], v20, MEMORY[0x277D84AC0], v21);

    v30[0] = v22;
    v23 = sub_21B34B054();
    swift_getWitnessTable();
    sub_21B2C611C(v30, v16, v18, v23, v17, v26);
  }

  return result;
}

uint64_t sub_21B268F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a3;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F98];
    v8 = a1 + 32;
    v9 = MEMORY[0x277D84F90];
    v36 = *(a1 + 16);
    v10 = v36;
    while (1)
    {
      sub_21B260E68(v8, v41);
      v11 = v7[2];
      if (v11)
      {
        v12 = sub_21B24B560(v41);
        if (v13)
        {
          v11 = *(v7[7] + 8 * v12);
        }

        else
        {
          v11 = 0;
        }
      }

      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        result = sub_21B34BA84();
        __break(1u);
        return result;
      }

      sub_21B260E68(v41, v39);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = sub_21B24B560(v39);
      v18 = v7[2];
      v19 = (v17 & 1) == 0;
      v20 = __OFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        goto LABEL_34;
      }

      v22 = v17;
      if (v7[3] < v21)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v24 = v16;
      sub_21B252184();
      v16 = v24;
      if (v22)
      {
LABEL_16:
        *(v7[7] + 8 * v16) = v14;
        sub_21B260E14(v39);
        if (v6 >= v14)
        {
          goto LABEL_21;
        }

        goto LABEL_3;
      }

LABEL_19:
      v7[(v16 >> 6) + 8] |= 1 << v16;
      v25 = v16;
      sub_21B260E68(v39, v7[6] + 40 * v16);
      *(v7[7] + 8 * v25) = v14;
      sub_21B260E14(v39);
      v26 = v7[2];
      v20 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v20)
      {
        goto LABEL_35;
      }

      v7[2] = v27;
      if (v6 >= v14)
      {
LABEL_21:
        if (v14 == v6)
        {
          sub_21B260E68(v41, v39);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_21B249C78(0, *(v9 + 16) + 1, 1, v9);
          }

          v29 = *(v9 + 16);
          v28 = *(v9 + 24);
          if (v29 >= v28 >> 1)
          {
            v9 = sub_21B249C78((v28 > 1), v29 + 1, 1, v9);
          }

          sub_21B260E14(v41);
          *(v9 + 16) = v29 + 1;
          v30 = v9 + 40 * v29;
          v31 = v40;
          v32 = v39[1];
          *(v30 + 32) = v39[0];
          *(v30 + 48) = v32;
          *(v30 + 64) = v31;
        }

        else
        {
          sub_21B260E14(v41);
        }

        goto LABEL_4;
      }

LABEL_3:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E478, &qword_21B351D70);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_21B351EA0;
      sub_21B260E68(v41, v9 + 32);
      sub_21B260E14(v41);
      v6 = v14;
LABEL_4:
      v8 += 40;
      if (!--v10)
      {
        v3 = a2;
        v4 = a3;
        v5 = v36;
        if (a2 <= 0)
        {
          goto LABEL_31;
        }

LABEL_29:
        v33 = v7[2];

        v35 = v33 + 1;
        goto LABEL_32;
      }
    }

    sub_21B24C108(v21, isUniquelyReferenced_nonNull_native);
    v16 = sub_21B24B560(v39);
    if ((v22 & 1) != (v23 & 1))
    {
      goto LABEL_36;
    }

LABEL_15:
    if (v22)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  v7 = MEMORY[0x277D84F98];
  v9 = MEMORY[0x277D84F90];
  if (a2 > 0)
  {
    goto LABEL_29;
  }

LABEL_31:
  v35 = v7[2];

LABEL_32:
  *v4 = v5;
  v4[1] = v3;
  v4[2] = v35;
  v4[3] = v9;
  return result;
}

uint64_t sub_21B26929C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    v6 = MEMORY[0x277D84F98];
    v7 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v4 = 0;
  v5 = 0;
  v6 = MEMORY[0x277D84F98];
  v7 = MEMORY[0x277D84F90];
  v36 = a1 + 32;
LABEL_3:
  while (2)
  {
    v35 = v7;
    v8 = v5;
    while (1)
    {
      if (v8 >= v3)
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        result = sub_21B34BA84();
        __break(1u);
        return result;
      }

      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_39;
      }

      v9 = v6[2];
      v10 = *(v36 + 16 * v8);
      v37 = *(v36 + 16 * v8);
      v11 = *(v36 + 16 * v8 + 8);
      sub_21B260DC0(v10, v11);
      if (v9 && (v12 = sub_21B24B5A4(v10, v11), (v13 & 1) != 0))
      {
        v14 = *(v6[7] + 8 * v12);
      }

      else
      {
        v14 = 0;
      }

      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_40;
      }

      sub_21B260DC0(v10, v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_21B24B5A4(v10, v11);
      v19 = v6[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_41;
      }

      v23 = v18;
      if (v6[3] < v22)
      {
        sub_21B24C3A4(v22, isUniquelyReferenced_nonNull_native);
        v17 = sub_21B24B5A4(v10, v11);
        if ((v23 & 1) != (v24 & 1))
        {
          goto LABEL_43;
        }

LABEL_16:
        if (v23)
        {
          goto LABEL_17;
        }

        goto LABEL_20;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v25 = v17;
      sub_21B252314();
      v17 = v25;
      if (v23)
      {
LABEL_17:
        *(v6[7] + 8 * v17) = v15;
        sub_21B234324(v10, v11);
        if (v4 < v15)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }

LABEL_20:
      v6[(v17 >> 6) + 8] |= 1 << v17;
      *(v6[6] + 16 * v17) = v37;
      *(v6[7] + 8 * v17) = v15;
      v26 = v6[2];
      v21 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v21)
      {
        goto LABEL_42;
      }

      v6[2] = v27;
      if (v4 < v15)
      {
LABEL_25:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E458, &qword_21B351D58);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_21B351EA0;
        *(v7 + 32) = v10;
        *(v7 + 40) = v11;
        v4 = v15;
        if (v5 != v3)
        {
          goto LABEL_3;
        }

        goto LABEL_34;
      }

LABEL_22:
      if (v15 == v4)
      {
        break;
      }

      sub_21B234324(v10, v11);
      ++v8;
      if (v5 == v3)
      {
        v7 = v35;
        goto LABEL_34;
      }
    }

    v7 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_21B249DB4(0, *(v35 + 16) + 1, 1, v35);
    }

    v29 = *(v7 + 16);
    v28 = *(v7 + 24);
    if (v29 >= v28 >> 1)
    {
      v7 = sub_21B249DB4((v28 > 1), v29 + 1, 1, v7);
    }

    *(v7 + 16) = v29 + 1;
    *(v7 + 16 * v29 + 32) = v37;
    if (v5 != v3)
    {
      continue;
    }

    break;
  }

LABEL_34:
  v30 = v6[2];

  if (a2 <= 0)
  {
    v32 = v30;
  }

  else
  {
    v32 = v30 + 1;
  }

  *a3 = v3;
  a3[1] = a2;
  a3[2] = v32;
  a3[3] = v7;
  return result;
}

uint64_t sub_21B2695D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_21B34A834();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v61 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v68 = &v55 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - v12;
  v14 = *(a1 + 16);
  v57 = v14;
  if (v14)
  {
    v55 = a2;
    v56 = a3;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v60 = *(v16 + 64);
    v62 = (v60 + 32) & ~v60;
    v63 = 0;
    v18 = a1 + v62;
    v19 = *(v16 + 56);
    v67 = (v16 - 8);
    v58 = (v16 + 16);
    v20 = MEMORY[0x277D84F98];
    v21 = MEMORY[0x277D84F90];
    v59 = xmmword_21B351EA0;
    v22 = v14;
    v64 = v19;
    while (1)
    {
      v15(v13, v18, v6);
      v23 = v20[2];
      if (v23)
      {
        v24 = sub_21B24B664(v13);
        if (v25)
        {
          v23 = *(v20[7] + 8 * v24);
        }

        else
        {
          v23 = 0;
        }
      }

      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        result = sub_21B34BA84();
        __break(1u);
        return result;
      }

      v65 = v22;
      v66 = v18;
      v27 = v68;
      v28 = v16;
      v15(v68, v13, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v20;
      v31 = sub_21B24B664(v27);
      v32 = v20[2];
      v33 = (v30 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_35;
      }

      v35 = v30;
      if (v20[3] >= v34)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v20 = v69;
          if ((v30 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          sub_21B25247C();
          v20 = v69;
          if ((v35 & 1) == 0)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        sub_21B24C644(v34, isUniquelyReferenced_nonNull_native);
        v36 = sub_21B24B664(v68);
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_37;
        }

        v31 = v36;
        v20 = v69;
        if ((v35 & 1) == 0)
        {
LABEL_17:
          v39 = v15;
          v40 = v21;
          v41 = v13;
          v20[(v31 >> 6) + 8] |= 1 << v31;
          v42 = v68;
          v16 = v28;
          v43 = v39;
          v39((v20[6] + v31 * v64), v68, v6);
          *(v20[7] + 8 * v31) = v26;
          v38 = *v67;
          (*v67)(v42, v6);
          v44 = v20[2];
          v45 = __OFADD__(v44, 1);
          v46 = v44 + 1;
          if (v45)
          {
            goto LABEL_36;
          }

          v20[2] = v46;
          v13 = v41;
          v21 = v40;
          v15 = v43;
          goto LABEL_19;
        }
      }

      *(v20[7] + 8 * v31) = v26;
      v38 = *v67;
      (*v67)(v68, v6);
      v16 = v28;
LABEL_19:
      v47 = v64;
      if (v63 >= v26)
      {
        if (v26 == v63)
        {
          v15(v61, v13, v6);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_21B249EC0(0, v21[2] + 1, 1, v21);
          }

          v50 = v21[2];
          v49 = v21[3];
          if (v50 >= v49 >> 1)
          {
            v21 = sub_21B249EC0((v49 > 1), v50 + 1, 1, v21);
          }

          v38(v13, v6);
          v21[2] = v50 + 1;
          (*v58)(v21 + v62 + v50 * v47, v61, v6);
        }

        else
        {
          v38(v13, v6);
        }
      }

      else
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E448, &qword_21B351D48);
        v48 = v62;
        v21 = swift_allocObject();
        *(v21 + 1) = v59;
        v15(v21 + v48, v13, v6);
        v38(v13, v6);
        v63 = v26;
      }

      v18 = v66 + v47;
      v22 = v65 - 1;
      if (v65 == 1)
      {
        v51 = v21;
        a2 = v55;
        a3 = v56;
        if (v55 <= 0)
        {
          goto LABEL_32;
        }

LABEL_30:
        v52 = v20[2];

        v54 = v52 + 1;
        goto LABEL_33;
      }
    }
  }

  v20 = MEMORY[0x277D84F98];
  v51 = MEMORY[0x277D84F90];
  if (a2 > 0)
  {
    goto LABEL_30;
  }

LABEL_32:
  v54 = v20[2];

LABEL_33:
  *a3 = v57;
  a3[1] = a2;
  a3[2] = v54;
  a3[3] = v51;
  return result;
}

uint64_t sub_21B269AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x277D84F98];
    v7 = MEMORY[0x277D84F90];
    v40 = a1 + 40;
LABEL_3:
    while (2)
    {
      v41 = v7;
      v8 = (v40 + 16 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= v3)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          result = sub_21B34BA84();
          __break(1u);
          return result;
        }

        v5 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_39;
        }

        v11 = *(v8 - 1);
        v10 = *v8;
        v12 = v6[2];

        if (v12 && (v13 = sub_21B24B534(v11, v10), (v14 & 1) != 0))
        {
          v15 = *(v6[7] + 8 * v13);
        }

        else
        {
          v15 = 0;
        }

        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_40;
        }

        v17 = v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v11;
        v19 = sub_21B24B534(v11, v10);
        v21 = v6[2];
        v22 = (v20 & 1) == 0;
        v23 = __OFADD__(v21, v22);
        v24 = v21 + v22;
        if (v23)
        {
          goto LABEL_41;
        }

        v25 = v20;
        if (v6[3] >= v24)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v31 = v19;
            sub_21B25201C();
            v19 = v31;
          }
        }

        else
        {
          sub_21B24BE68(v24, isUniquelyReferenced_nonNull_native);
          v19 = sub_21B24B534(v42, v10);
          if ((v25 & 1) != (v26 & 1))
          {
            goto LABEL_43;
          }
        }

        v3 = v17;
        if (v25)
        {
          *(v6[7] + 8 * v19) = v16;
          v27 = v42;
          if (v4 < v16)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v6[(v19 >> 6) + 8] |= 1 << v19;
          v28 = (v6[6] + 16 * v19);
          v27 = v42;
          *v28 = v42;
          v28[1] = v10;
          *(v6[7] + 8 * v19) = v16;
          v29 = v6[2];
          v23 = __OFADD__(v29, 1);
          v30 = v29 + 1;
          if (v23)
          {
            goto LABEL_42;
          }

          v6[2] = v30;

          if (v4 < v16)
          {
LABEL_25:

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3D8, &qword_21B356260);
            v7 = swift_allocObject();
            *(v7 + 16) = xmmword_21B351EA0;
            *(v7 + 32) = v27;
            *(v7 + 40) = v10;
            v4 = v16;
            if (v5 != v17)
            {
              goto LABEL_3;
            }

            goto LABEL_34;
          }
        }

        if (v16 == v4)
        {
          break;
        }

        ++v9;
        v8 += 2;
        if (v5 == v17)
        {
          v7 = v41;
          goto LABEL_34;
        }
      }

      v7 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21B231F84(0, *(v41 + 16) + 1, 1, v41);
      }

      v33 = *(v7 + 16);
      v32 = *(v7 + 24);
      if (v33 >= v32 >> 1)
      {
        v7 = sub_21B231F84((v32 > 1), v33 + 1, 1, v7);
      }

      *(v7 + 16) = v33 + 1;
      v34 = v7 + 16 * v33;
      *(v34 + 32) = v42;
      *(v34 + 40) = v10;
      if (v5 != v17)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
    v7 = MEMORY[0x277D84F90];
  }

LABEL_34:
  v35 = v6[2];

  if (a2 <= 0)
  {
    v37 = v35;
  }

  else
  {
    v37 = v35 + 1;
  }

  *a3 = v3;
  a3[1] = a2;
  a3[2] = v37;
  a3[3] = v7;
  return result;
}

uint64_t sub_21B269E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a3;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (a1 + 32);
    v8 = MEMORY[0x277D84F98];
    v9 = MEMORY[0x277D84F90];
    v10 = *(a1 + 16);
    while (1)
    {
      v12 = *v7;
      v13 = v8[2];
      if (v13)
      {
        v14 = sub_21B24B6E8(*v7);
        if (v15)
        {
          v13 = *(v8[7] + 8 * v14);
        }

        else
        {
          v13 = 0;
        }
      }

      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        result = sub_21B34BA84();
        __break(1u);
        return result;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = sub_21B24B6E8(v12);
      v20 = v8[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_34;
      }

      v24 = v19;
      if (v8[3] < v23)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v26 = v18;
      sub_21B2526EC();
      v18 = v26;
      if (v24)
      {
LABEL_17:
        *(v8[7] + 8 * v18) = v16;
        if (v6 < v16)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }

LABEL_20:
      v8[(v18 >> 6) + 8] |= 1 << v18;
      *(v8[6] + v18) = v12;
      *(v8[7] + 8 * v18) = v16;
      v27 = v8[2];
      v22 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v22)
      {
        goto LABEL_35;
      }

      v8[2] = v28;
      if (v6 < v16)
      {
LABEL_3:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E438, &qword_21B351D38);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_21B351EA0;
        v11 = (v9 + 32);
        v6 = v16;
        goto LABEL_4;
      }

LABEL_22:
      if (v16 != v6)
      {
        goto LABEL_5;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_21B24A098(0, *(v9 + 16) + 1, 1, v9);
      }

      v30 = *(v9 + 16);
      v29 = *(v9 + 24);
      if (v30 >= v29 >> 1)
      {
        v9 = sub_21B24A098((v29 > 1), v30 + 1, 1, v9);
      }

      *(v9 + 16) = v30 + 1;
      v11 = (v9 + v30 + 32);
LABEL_4:
      *v11 = v12;
LABEL_5:
      ++v7;
      if (!--v10)
      {
        v3 = a2;
        v4 = a3;
        if (a2 <= 0)
        {
          goto LABEL_31;
        }

LABEL_29:
        v31 = v8[2];

        v33 = v31 + 1;
        goto LABEL_32;
      }
    }

    sub_21B24C9F0(v23, isUniquelyReferenced_nonNull_native);
    v18 = sub_21B24B6E8(v12);
    if ((v24 & 1) != (v25 & 1))
    {
      goto LABEL_36;
    }

LABEL_16:
    if (v24)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v8 = MEMORY[0x277D84F98];
  v9 = MEMORY[0x277D84F90];
  if (a2 > 0)
  {
    goto LABEL_29;
  }

LABEL_31:
  v33 = v8[2];

LABEL_32:
  *v4 = v5;
  v4[1] = v3;
  v4[2] = v33;
  v4[3] = v9;
  return result;
}

uint64_t sub_21B26A0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a3;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (a1 + 32);
    v8 = MEMORY[0x277D84F98];
    v9 = MEMORY[0x277D84F90];
    v33 = *(a1 + 16);
    while (1)
    {
      v11 = *v7;
      v12 = v8[2];
      if (v12)
      {
        v13 = sub_21B24B754(*v7);
        if (v14)
        {
          v12 = *(v8[7] + 8 * v13);
        }

        else
        {
          v12 = 0;
        }
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        result = sub_21B34BA84();
        __break(1u);
        return result;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_21B24B754(v11);
      v19 = v8[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_34;
      }

      v23 = v18;
      if (v8[3] < v22)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v25 = v17;
      sub_21B252838();
      v17 = v25;
      if (v23)
      {
LABEL_17:
        *(v8[7] + 8 * v17) = v15;
        if (v6 < v15)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }

LABEL_20:
      v8[(v17 >> 6) + 8] |= 1 << v17;
      *(v8[6] + 8 * v17) = v11;
      *(v8[7] + 8 * v17) = v15;
      v26 = v8[2];
      v21 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v21)
      {
        goto LABEL_35;
      }

      v8[2] = v27;
      if (v6 < v15)
      {
LABEL_3:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E198, &qword_21B351AC8);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_21B351EA0;
        v10 = (v9 + 32);
        v6 = v15;
        goto LABEL_4;
      }

LABEL_22:
      if (v15 != v6)
      {
        goto LABEL_5;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_21B24A18C(0, *(v9 + 16) + 1, 1, v9);
      }

      v29 = *(v9 + 16);
      v28 = *(v9 + 24);
      if (v29 >= v28 >> 1)
      {
        v9 = sub_21B24A18C((v28 > 1), v29 + 1, 1, v9);
      }

      *(v9 + 16) = v29 + 1;
      v10 = (v9 + 8 * v29 + 32);
LABEL_4:
      *v10 = v11;
LABEL_5:
      ++v7;
      if (!--v5)
      {
        v3 = a2;
        v4 = a3;
        v5 = v33;
        if (a2 <= 0)
        {
          goto LABEL_31;
        }

LABEL_29:
        v30 = v8[2];

        v32 = v30 + 1;
        goto LABEL_32;
      }
    }

    sub_21B24CC70(v22, isUniquelyReferenced_nonNull_native);
    v17 = sub_21B24B754(v11);
    if ((v23 & 1) != (v24 & 1))
    {
      goto LABEL_36;
    }

LABEL_16:
    if (v23)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v8 = MEMORY[0x277D84F98];
  v9 = MEMORY[0x277D84F90];
  if (a2 > 0)
  {
    goto LABEL_29;
  }

LABEL_31:
  v32 = v8[2];

LABEL_32:
  *v4 = v5;
  v4[1] = v3;
  v4[2] = v32;
  v4[3] = v9;
  return result;
}

uint64_t sub_21B26A3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a3;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (a1 + 32);
    v8 = MEMORY[0x277D84F98];
    v9 = MEMORY[0x277D84F90];
    v33 = *(a1 + 16);
    while (1)
    {
      v11 = *v7;
      v12 = v8[2];
      if (v12)
      {
        v13 = sub_21B24B7A0(*v7);
        if (v14)
        {
          v12 = *(v8[7] + 8 * v13);
        }

        else
        {
          v12 = 0;
        }
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        result = sub_21B34BA84();
        __break(1u);
        return result;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_21B24B7A0(v11);
      v19 = v8[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_34;
      }

      v23 = v18;
      if (v8[3] < v22)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v25 = v17;
      sub_21B252984();
      v17 = v25;
      if (v23)
      {
LABEL_17:
        *(v8[7] + 8 * v17) = v15;
        if (v6 < v15)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }

LABEL_20:
      v8[(v17 >> 6) + 8] |= 1 << v17;
      *(v8[6] + 4 * v17) = v11;
      *(v8[7] + 8 * v17) = v15;
      v26 = v8[2];
      v21 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v21)
      {
        goto LABEL_35;
      }

      v8[2] = v27;
      if (v6 < v15)
      {
LABEL_3:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E400, &qword_21B351D00);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_21B351EA0;
        v10 = (v9 + 32);
        v6 = v15;
        goto LABEL_4;
      }

LABEL_22:
      if (v15 != v6)
      {
        goto LABEL_5;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_21B24A290(0, *(v9 + 16) + 1, 1, v9);
      }

      v29 = *(v9 + 16);
      v28 = *(v9 + 24);
      if (v29 >= v28 >> 1)
      {
        v9 = sub_21B24A290((v28 > 1), v29 + 1, 1, v9);
      }

      *(v9 + 16) = v29 + 1;
      v10 = (v9 + 4 * v29 + 32);
LABEL_4:
      *v10 = v11;
LABEL_5:
      ++v7;
      if (!--v5)
      {
        v3 = a2;
        v4 = a3;
        v5 = v33;
        if (a2 <= 0)
        {
          goto LABEL_31;
        }

LABEL_29:
        v30 = v8[2];

        v32 = v30 + 1;
        goto LABEL_32;
      }
    }

    sub_21B24CEE0(v22, isUniquelyReferenced_nonNull_native);
    v17 = sub_21B24B7A0(v11);
    if ((v23 & 1) != (v24 & 1))
    {
      goto LABEL_36;
    }

LABEL_16:
    if (v23)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v8 = MEMORY[0x277D84F98];
  v9 = MEMORY[0x277D84F90];
  if (a2 > 0)
  {
    goto LABEL_29;
  }

LABEL_31:
  v32 = v8[2];

LABEL_32:
  *v4 = v5;
  v4[1] = v3;
  v4[2] = v32;
  v4[3] = v9;
  return result;
}

uint64_t sub_21B26A678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a2;
  v5 = a3;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (a1 + 32);
    v9 = MEMORY[0x277D84F98];
    v10 = MEMORY[0x277D84F90];
    v33 = *(a1 + 16);
    while (1)
    {
      LOWORD(v3) = *v8;
      v12 = v9[2];
      if (v12)
      {
        v13 = sub_21B24B7F0(v3);
        if (v14)
        {
          v12 = *(v9[7] + 8 * v13);
        }

        else
        {
          v12 = 0;
        }
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        result = sub_21B34BA84();
        __break(1u);
        return result;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_21B24B7F0(v3);
      v19 = v9[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_34;
      }

      v23 = v18;
      if (v9[3] < v22)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v25 = v17;
      sub_21B252AD0();
      v17 = v25;
      if (v23)
      {
LABEL_17:
        *(v9[7] + 8 * v17) = v15;
        if (v7 < v15)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }

LABEL_20:
      v9[(v17 >> 6) + 8] |= 1 << v17;
      *(v9[6] + 2 * v17) = LOWORD(v3);
      *(v9[7] + 8 * v17) = v15;
      v26 = v9[2];
      v21 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v21)
      {
        goto LABEL_35;
      }

      v9[2] = v27;
      if (v7 < v15)
      {
LABEL_3:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E418, &qword_21B351D18);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_21B351EA0;
        v11 = (v10 + 32);
        v7 = v15;
        goto LABEL_4;
      }

LABEL_22:
      if (v15 != v7)
      {
        goto LABEL_5;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_21B24A394(0, *(v10 + 16) + 1, 1, v10);
      }

      v29 = *(v10 + 16);
      v28 = *(v10 + 24);
      if (v29 >= v28 >> 1)
      {
        v10 = sub_21B24A394((v28 > 1), v29 + 1, 1, v10);
      }

      *(v10 + 16) = v29 + 1;
      v11 = (v10 + 2 * v29 + 32);
LABEL_4:
      *v11 = LOWORD(v3);
LABEL_5:
      ++v8;
      if (!--v6)
      {
        v4 = a2;
        v5 = a3;
        v6 = v33;
        if (a2 <= 0)
        {
          goto LABEL_31;
        }

LABEL_29:
        v30 = v9[2];

        v32 = v30 + 1;
        goto LABEL_32;
      }
    }

    sub_21B24D154(v22, isUniquelyReferenced_nonNull_native);
    v17 = sub_21B24B7F0(v3);
    if ((v23 & 1) != (v24 & 1))
    {
      goto LABEL_36;
    }

LABEL_16:
    if (v23)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v9 = MEMORY[0x277D84F98];
  v10 = MEMORY[0x277D84F90];
  if (a2 > 0)
  {
    goto LABEL_29;
  }

LABEL_31:
  v32 = v9[2];

LABEL_32:
  *v5 = v6;
  v5[1] = v4;
  v5[2] = v32;
  v5[3] = v10;
  return result;
}

uint64_t sub_21B26A94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a3;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (a1 + 32);
    v8 = MEMORY[0x277D84F98];
    v9 = MEMORY[0x277D84F90];
    v10 = *(a1 + 16);
    while (1)
    {
      v13 = *v7++;
      v12 = v13;
      v14 = v8[2];
      if (v14)
      {
        v15 = sub_21B24B840(v12);
        if (v16)
        {
          v14 = *(v8[7] + 8 * v15);
        }

        else
        {
          v14 = 0;
        }
      }

      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        result = sub_21B34BA84();
        __break(1u);
        return result;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = sub_21B24B840(v12);
      v21 = v8[2];
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        goto LABEL_34;
      }

      v25 = v20;
      if (v8[3] < v24)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v27 = v19;
      sub_21B252C1C();
      v19 = v27;
      if (v25)
      {
LABEL_17:
        *(v8[7] + 8 * v19) = v17;
        if (v6 < v17)
        {
          goto LABEL_3;
        }

        goto LABEL_22;
      }

LABEL_20:
      v8[(v19 >> 6) + 8] |= 1 << v19;
      *(v8[6] + 8 * v19) = v12;
      *(v8[7] + 8 * v19) = v17;
      v28 = v8[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        goto LABEL_35;
      }

      v8[2] = v29;
      if (v6 < v17)
      {
LABEL_3:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E218, &qword_21B351B30);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_21B351EA0;
        v11 = (v9 + 32);
        v6 = v17;
        goto LABEL_4;
      }

LABEL_22:
      if (v17 != v6)
      {
        goto LABEL_5;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_21B22E2C4(0, *(v9 + 16) + 1, 1, v9);
      }

      v31 = *(v9 + 16);
      v30 = *(v9 + 24);
      if (v31 >= v30 >> 1)
      {
        v9 = sub_21B22E2C4((v30 > 1), v31 + 1, 1, v9);
      }

      *(v9 + 16) = v31 + 1;
      v11 = (v9 + 8 * v31 + 32);
LABEL_4:
      *v11 = v12;
LABEL_5:
      if (!--v10)
      {
        v3 = a2;
        v4 = a3;
        if (a2 <= 0)
        {
          goto LABEL_31;
        }

LABEL_29:
        v32 = v8[2];

        v34 = v32 + 1;
        goto LABEL_32;
      }
    }

    sub_21B24D3C8(v24, isUniquelyReferenced_nonNull_native);
    v19 = sub_21B24B840(v12);
    if ((v25 & 1) != (v26 & 1))
    {
      goto LABEL_36;
    }

LABEL_16:
    if (v25)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v8 = MEMORY[0x277D84F98];
  v9 = MEMORY[0x277D84F90];
  if (a2 > 0)
  {
    goto LABEL_29;
  }

LABEL_31:
  v34 = v8[2];

LABEL_32:
  *v4 = v5;
  v4[1] = v3;
  v4[2] = v34;
  v4[3] = v9;
  return result;
}

uint64_t DiscontiguousColumnSlice<A>.summary()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[1];
  v12 = *v4;
  v13[0] = v5;
  *(v13 + 9) = *(v4 + 25);
  v6 = v5;
  v9 = *(a1 + 16);
  v10 = a2;
  v11 = &v12;
  type metadata accessor for CategoricalSummary(0, v9, a2, a4);
  return sub_21B328CA8(sub_21B26C3CC, &v8, v6, v9);
}

uint64_t sub_21B26ACAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v34 = *(a2 + 32);
  v33 = *(a2 + 40);
  result = sub_21B2FB104(v4, v34, v33);
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  v10 = MEMORY[0x277D84F90];
  while (v9 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v11 = *(v7 + 8 * v8 + 32);
    result = swift_beginAccess();
    v13 = *(v5 + 16);
    if (!v13)
    {
      goto LABEL_24;
    }

    ++v8;
    v14 = v11 - (v12 & 0xFFFFFFFFFFFFFFF8);
    v15 = *(v13 + v11 / 8 + 64);
    v16 = 1 << v14;
    if (v14 < 0)
    {
      v16 = 0;
    }

    if ((v16 & v15) != 0)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v36 = v10;
      if ((result & 1) == 0)
      {
        result = sub_21B254034(0, *(v10 + 16) + 1, 1);
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v31 = *(v10 + 16);
        v20 = v18 + 1;
        result = sub_21B254034((v17 > 1), v18 + 1, 1);
        v19 = v20;
        v18 = v31;
        v10 = v36;
      }

      *(v10 + 16) = v19;
      *(v10 + 8 * v18 + 32) = v11;
    }
  }

  v21 = *(sub_21B2FB104(v4, v34, v33) + 16);

  v22 = *(v10 + 16);
  if (v22)
  {
    v35 = v21;
    v37 = MEMORY[0x277D84F90];
    result = sub_21B254248(0, v22, 0);
    v23 = 0;
    v24 = v37;
    while (v23 < *(v10 + 16))
    {
      v25 = (a1 + 16 * *(v10 + 8 * v23 + 32));
      v26 = *v25;
      v27 = v25[1];
      result = sub_21B260DC0(*v25, v27);
      v29 = *(v37 + 16);
      v28 = *(v37 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_21B254248((v28 > 1), v29 + 1, 1);
      }

      ++v23;
      *(v37 + 16) = v29 + 1;
      v30 = v37 + 16 * v29;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      if (v22 == v23)
      {

        v21 = v35;
        goto LABEL_21;
      }
    }

    goto LABEL_23;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_21:
  sub_21B26929C(v24, v21 - v22, a3);
}

uint64_t sub_21B26AF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v35 = a3;
  v38 = a1;
  v34 = sub_21B34A834();
  v4 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  LODWORD(v37) = *(a2 + 40);
  result = sub_21B2FB104(v6, v8, v37);
  v10 = result;
  v11 = 0;
  v12 = *(result + 16);
  v39 = MEMORY[0x277D84F90];
  while (v12 != v11)
  {
    if (v11 >= *(v10 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v13 = *(v10 + 8 * v11 + 32);
    result = swift_beginAccess();
    v15 = *(v7 + 16);
    if (!v15)
    {
      goto LABEL_24;
    }

    ++v11;
    v16 = v13 - (v14 & 0xFFFFFFFFFFFFFFF8);
    v17 = *(v15 + v13 / 8 + 64);
    v18 = 1 << v16;
    if (v16 < 0)
    {
      v18 = 0;
    }

    if ((v18 & v17) != 0)
    {
      v19 = v39;
      result = swift_isUniquelyReferenced_nonNull_native();
      v40 = v19;
      v36 = v8;
      if ((result & 1) == 0)
      {
        result = sub_21B254034(0, *(v19 + 16) + 1, 1);
        v19 = v40;
      }

      v21 = *(v19 + 16);
      v20 = *(v19 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v39 = v6;
        result = sub_21B254034((v20 > 1), v21 + 1, 1);
        v22 = v21 + 1;
        v6 = v39;
        v19 = v40;
      }

      *(v19 + 16) = v22;
      v39 = v19;
      *(v19 + 8 * v21 + 32) = v13;
      v8 = v36;
    }
  }

  v23 = *(sub_21B2FB104(v6, v8, v37) + 16);

  v24 = *(v39 + 16);
  if (v24)
  {
    v32 = v23;
    v40 = MEMORY[0x277D84F90];
    result = sub_21B254268(0, v24, 0);
    v25 = 0;
    v26 = v40;
    v36 = v4 + 32;
    v37 = v4 + 16;
    v28 = v33;
    v27 = v34;
    while (v25 < *(v39 + 16))
    {
      v29 = *(v4 + 72);
      (*(v4 + 16))(v28, v38 + v29 * *(v39 + 8 * v25 + 32), v27);
      v40 = v26;
      v31 = *(v26 + 16);
      v30 = *(v26 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_21B254268((v30 > 1), v31 + 1, 1);
        v26 = v40;
      }

      ++v25;
      *(v26 + 16) = v31 + 1;
      result = (*(v4 + 32))(v26 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + v31 * v29, v28, v27);
      if (v24 == v25)
      {

        v23 = v32;
        goto LABEL_21;
      }
    }

    goto LABEL_23;
  }

  v26 = MEMORY[0x277D84F90];
LABEL_21:
  sub_21B2695D0(v26, v23 - v24, v35);
}

uint64_t sub_21B26B294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v34 = *(a2 + 32);
  v33 = *(a2 + 40);
  result = sub_21B2FB104(v4, v34, v33);
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  v10 = MEMORY[0x277D84F90];
  while (v9 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v11 = *(v7 + 8 * v8 + 32);
    result = swift_beginAccess();
    v13 = *(v5 + 16);
    if (!v13)
    {
      goto LABEL_24;
    }

    ++v8;
    v14 = v11 - (v12 & 0xFFFFFFFFFFFFFFF8);
    v15 = *(v13 + v11 / 8 + 64);
    v16 = 1 << v14;
    if (v14 < 0)
    {
      v16 = 0;
    }

    if ((v16 & v15) != 0)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v36 = v10;
      if ((result & 1) == 0)
      {
        result = sub_21B254034(0, *(v10 + 16) + 1, 1);
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v31 = *(v10 + 16);
        v20 = v18 + 1;
        result = sub_21B254034((v17 > 1), v18 + 1, 1);
        v19 = v20;
        v18 = v31;
        v10 = v36;
      }

      *(v10 + 16) = v19;
      *(v10 + 8 * v18 + 32) = v11;
    }
  }

  v21 = *(sub_21B2FB104(v4, v34, v33) + 16);

  v22 = *(v10 + 16);
  if (v22)
  {
    v35 = v21;
    v37 = MEMORY[0x277D84F90];
    result = sub_21B231F10(0, v22, 0);
    v23 = 0;
    v24 = v37;
    while (v23 < *(v10 + 16))
    {
      v25 = (a1 + 16 * *(v10 + 8 * v23 + 32));
      v27 = *v25;
      v26 = v25[1];
      v28 = *(v37 + 16);
      v29 = *(v37 + 24);

      if (v28 >= v29 >> 1)
      {
        result = sub_21B231F10((v29 > 1), v28 + 1, 1);
      }

      ++v23;
      *(v37 + 16) = v28 + 1;
      v30 = v37 + 16 * v28;
      *(v30 + 32) = v27;
      *(v30 + 40) = v26;
      if (v22 == v23)
      {

        v21 = v35;
        goto LABEL_21;
      }
    }

    goto LABEL_23;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_21:
  sub_21B269AD8(v24, v21 - v22, a3);
}

uint64_t sub_21B26B514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v31 = *(a2 + 32);
  v30 = *(a2 + 40);
  result = sub_21B2FB104(v4, v31, v30);
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  v10 = MEMORY[0x277D84F90];
  while (v9 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v11 = *(v7 + 8 * v8 + 32);
    result = swift_beginAccess();
    v13 = *(v5 + 16);
    if (!v13)
    {
      goto LABEL_24;
    }

    ++v8;
    v14 = v11 - (v12 & 0xFFFFFFFFFFFFFFF8);
    v15 = *(v13 + v11 / 8 + 64);
    v16 = 1 << v14;
    if (v14 < 0)
    {
      v16 = 0;
    }

    if ((v16 & v15) != 0)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v32 = v10;
      if ((result & 1) == 0)
      {
        result = sub_21B254034(0, *(v10 + 16) + 1, 1);
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v28 = *(v10 + 16);
        v20 = v18 + 1;
        result = sub_21B254034((v17 > 1), v18 + 1, 1);
        v19 = v20;
        v18 = v28;
        v10 = v32;
      }

      *(v10 + 16) = v19;
      *(v10 + 8 * v18 + 32) = v11;
    }
  }

  v21 = *(sub_21B2FB104(v4, v31, v30) + 16);

  v22 = *(v10 + 16);
  if (v22)
  {
    v33 = MEMORY[0x277D84F90];
    result = sub_21B254288(0, v22, 0);
    v23 = 0;
    v24 = v33;
    while (v23 < *(v10 + 16))
    {
      v25 = *(a1 + *(v10 + 8 * v23 + 32));
      v27 = *(v33 + 16);
      v26 = *(v33 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_21B254288((v26 > 1), v27 + 1, 1);
      }

      ++v23;
      *(v33 + 16) = v27 + 1;
      *(v33 + v27 + 32) = v25;
      if (v22 == v23)
      {

        goto LABEL_21;
      }
    }

    goto LABEL_23;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_21:
  sub_21B269E00(v24, v21 - v22, a3);
}

uint64_t sub_21B26B780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v31 = *(a2 + 32);
  v30 = *(a2 + 40);
  result = sub_21B2FB104(v4, v31, v30);
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  v10 = MEMORY[0x277D84F90];
  while (v9 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v11 = *(v7 + 8 * v8 + 32);
    result = swift_beginAccess();
    v13 = *(v5 + 16);
    if (!v13)
    {
      goto LABEL_24;
    }

    ++v8;
    v14 = v11 - (v12 & 0xFFFFFFFFFFFFFFF8);
    v15 = *(v13 + v11 / 8 + 64);
    v16 = 1 << v14;
    if (v14 < 0)
    {
      v16 = 0;
    }

    if ((v16 & v15) != 0)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v32 = v10;
      if ((result & 1) == 0)
      {
        result = sub_21B254034(0, *(v10 + 16) + 1, 1);
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v28 = *(v10 + 16);
        v20 = v18 + 1;
        result = sub_21B254034((v17 > 1), v18 + 1, 1);
        v19 = v20;
        v18 = v28;
        v10 = v32;
      }

      *(v10 + 16) = v19;
      *(v10 + 8 * v18 + 32) = v11;
    }
  }

  v21 = *(sub_21B2FB104(v4, v31, v30) + 16);

  v22 = *(v10 + 16);
  if (v22)
  {
    v33 = MEMORY[0x277D84F90];
    result = sub_21B2542A8(0, v22, 0);
    v23 = 0;
    v24 = v33;
    while (v23 < *(v10 + 16))
    {
      v25 = *(a1 + 8 * *(v10 + 8 * v23 + 32));
      v27 = *(v33 + 16);
      v26 = *(v33 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_21B2542A8((v26 > 1), v27 + 1, 1);
      }

      ++v23;
      *(v33 + 16) = v27 + 1;
      *(v33 + 8 * v27 + 32) = v25;
      if (v22 == v23)
      {

        goto LABEL_21;
      }
    }

    goto LABEL_23;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_21:
  sub_21B26A0D0(v24, v21 - v22, a3);
}

uint64_t sub_21B26B9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v31 = *(a2 + 32);
  v30 = *(a2 + 40);
  result = sub_21B2FB104(v4, v31, v30);
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  v10 = MEMORY[0x277D84F90];
  while (v9 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v11 = *(v7 + 8 * v8 + 32);
    result = swift_beginAccess();
    v13 = *(v5 + 16);
    if (!v13)
    {
      goto LABEL_24;
    }

    ++v8;
    v14 = v11 - (v12 & 0xFFFFFFFFFFFFFFF8);
    v15 = *(v13 + v11 / 8 + 64);
    v16 = 1 << v14;
    if (v14 < 0)
    {
      v16 = 0;
    }

    if ((v16 & v15) != 0)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v32 = v10;
      if ((result & 1) == 0)
      {
        result = sub_21B254034(0, *(v10 + 16) + 1, 1);
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v28 = *(v10 + 16);
        v20 = v18 + 1;
        result = sub_21B254034((v17 > 1), v18 + 1, 1);
        v19 = v20;
        v18 = v28;
        v10 = v32;
      }

      *(v10 + 16) = v19;
      *(v10 + 8 * v18 + 32) = v11;
    }
  }

  v21 = *(sub_21B2FB104(v4, v31, v30) + 16);

  v22 = *(v10 + 16);
  if (v22)
  {
    v33 = MEMORY[0x277D84F90];
    result = sub_21B2542C8(0, v22, 0);
    v23 = 0;
    v24 = v33;
    while (v23 < *(v10 + 16))
    {
      v25 = *(a1 + 4 * *(v10 + 8 * v23 + 32));
      v27 = *(v33 + 16);
      v26 = *(v33 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_21B2542C8((v26 > 1), v27 + 1, 1);
      }

      ++v23;
      *(v33 + 16) = v27 + 1;
      *(v33 + 4 * v27 + 32) = v25;
      if (v22 == v23)
      {

        goto LABEL_21;
      }
    }

    goto LABEL_23;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_21:
  sub_21B26A3A4(v24, v21 - v22, a3);
}

uint64_t sub_21B26BC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v31 = *(a2 + 32);
  v30 = *(a2 + 40);
  result = sub_21B2FB104(v4, v31, v30);
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  v10 = MEMORY[0x277D84F90];
  while (v9 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v11 = *(v7 + 8 * v8 + 32);
    result = swift_beginAccess();
    v13 = *(v5 + 16);
    if (!v13)
    {
      goto LABEL_24;
    }

    ++v8;
    v14 = v11 - (v12 & 0xFFFFFFFFFFFFFFF8);
    v15 = *(v13 + v11 / 8 + 64);
    v16 = 1 << v14;
    if (v14 < 0)
    {
      v16 = 0;
    }

    if ((v16 & v15) != 0)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v32 = v10;
      if ((result & 1) == 0)
      {
        result = sub_21B254034(0, *(v10 + 16) + 1, 1);
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v28 = *(v10 + 16);
        v20 = v18 + 1;
        result = sub_21B254034((v17 > 1), v18 + 1, 1);
        v19 = v20;
        v18 = v28;
        v10 = v32;
      }

      *(v10 + 16) = v19;
      *(v10 + 8 * v18 + 32) = v11;
    }
  }

  v21 = *(sub_21B2FB104(v4, v31, v30) + 16);

  v22 = *(v10 + 16);
  if (v22)
  {
    v33 = MEMORY[0x277D84F90];
    result = sub_21B2542E8(0, v22, 0);
    v23 = 0;
    v24 = v33;
    while (v23 < *(v10 + 16))
    {
      v25 = *(a1 + 2 * *(v10 + 8 * v23 + 32));
      v27 = *(v33 + 16);
      v26 = *(v33 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_21B2542E8((v26 > 1), v27 + 1, 1);
      }

      ++v23;
      *(v33 + 16) = v27 + 1;
      *(v33 + 2 * v27 + 32) = v25;
      if (v22 == v23)
      {

        goto LABEL_21;
      }
    }

    goto LABEL_23;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_21:
  sub_21B26A678(v24, v21 - v22, a3);
}

uint64_t sub_21B26BEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v31 = *(a2 + 32);
  v30 = *(a2 + 40);
  result = sub_21B2FB104(v4, v31, v30);
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  v10 = MEMORY[0x277D84F90];
  while (v9 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v11 = *(v7 + 8 * v8 + 32);
    result = swift_beginAccess();
    v13 = *(v5 + 16);
    if (!v13)
    {
      goto LABEL_24;
    }

    ++v8;
    v14 = v11 - (v12 & 0xFFFFFFFFFFFFFFF8);
    v15 = *(v13 + v11 / 8 + 64);
    v16 = 1 << v14;
    if (v14 < 0)
    {
      v16 = 0;
    }

    if ((v16 & v15) != 0)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v32 = v10;
      if ((result & 1) == 0)
      {
        result = sub_21B254034(0, *(v10 + 16) + 1, 1);
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v28 = *(v10 + 16);
        v20 = v18 + 1;
        result = sub_21B254034((v17 > 1), v18 + 1, 1);
        v19 = v20;
        v18 = v28;
        v10 = v32;
      }

      *(v10 + 16) = v19;
      *(v10 + 8 * v18 + 32) = v11;
    }
  }

  v21 = *(sub_21B2FB104(v4, v31, v30) + 16);

  v22 = *(v10 + 16);
  if (v22)
  {
    v33 = MEMORY[0x277D84F90];
    result = sub_21B254034(0, v22, 0);
    v23 = 0;
    v24 = v33;
    while (v23 < *(v10 + 16))
    {
      v25 = *(a1 + 8 * *(v10 + 8 * v23 + 32));
      v27 = *(v33 + 16);
      v26 = *(v33 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_21B254034((v26 > 1), v27 + 1, 1);
      }

      ++v23;
      *(v33 + 16) = v27 + 1;
      *(v33 + 8 * v27 + 32) = v25;
      if (v22 == v23)
      {

        goto LABEL_21;
      }
    }

    goto LABEL_23;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_21:
  sub_21B26A94C(v24, v21 - v22, a3);
}

uint64_t sub_21B26C148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v37 = a2;
  v38 = a6;
  v39 = a5;
  v41 = a4;
  v36 = a1;
  v7 = *(a3 + 3);
  v8 = *(a3 + 4);
  v9 = *(a3 + 40);
  v34 = v8;
  v35 = v7;
  v33 = v9;
  result = sub_21B2FB104(v7, v8, v9);
  v13 = result;
  v14 = *(result + 16);
  if (v14)
  {
    v15 = 0;
    v16 = result + 32;
    v17 = MEMORY[0x277D84F90];
    v40 = result + 32;
    while (v15 < *(v13 + 16))
    {
      v20 = *(v16 + 8 * v15);
      v21 = a3[1];
      v42 = *a3;
      v43[0] = v21;
      *(v43 + 9) = *(a3 + 25);
      type metadata accessor for DiscontiguousColumnSlice(0, v41, v11, v12);
      result = DiscontiguousColumnSlice.isNil(at:)(v20);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v44 = v17;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v17 + 16) + 1, 1);
          v17 = v44;
        }

        v19 = *(v17 + 16);
        v18 = *(v17 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_21B254034((v18 > 1), v19 + 1, 1);
          v17 = v44;
        }

        *(v17 + 16) = v19 + 1;
        *(v17 + 8 * v19 + 32) = v20;
        v16 = v40;
      }

      if (v14 == ++v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
LABEL_12:

    v22 = *(sub_21B2FB104(v35, v34, v33) + 16);

    v24 = v22 - *(v17 + 16);
    *&v42 = v17;
    MEMORY[0x28223BE20](v23);
    v25 = v41;
    v26 = v39;
    v32[2] = v41;
    v32[3] = v39;
    v32[4] = v36;
    v32[5] = v37;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
    v28 = sub_21B26F384();
    v30 = sub_21B2FCC28(sub_21B26F44C, v32, v27, v41, MEMORY[0x277D84A98], v28, MEMORY[0x277D84AC0], v29);

    *&v42 = v30;
    v31 = sub_21B34B054();
    swift_getWitnessTable();
    sub_21B2C611C(&v42, v24, v25, v31, v26, v38);
  }

  return result;
}

uint64_t ColumnSlice<A>.summary()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[1];
  v18[0] = *v4;
  v18[1] = v6;
  v19 = *(v4 + 4);
  v7 = v4[1];
  v15 = *v4;
  v16 = v7;
  v17 = *(v4 + 4);
  v8 = *(a1 + 16);
  type metadata accessor for Column(255, v8, a3, a4);
  swift_getWitnessTable();
  v9 = sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v14, v9);
  v10 = v14[2];

  v13[2] = v8;
  v13[3] = a2;
  v13[4] = v18;
  type metadata accessor for CategoricalSummary(0, v8, a2, v11);
  sub_21B328CA8(sub_21B26C824, v13, v10, v8);
}

void *sub_21B26C4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v34 = a1;
  v35 = a2;
  v10 = a3[1];
  v40 = *a3;
  v41 = v10;
  v42 = *(a3 + 4);
  v11 = a3[1];
  v43 = *a3;
  v44 = v11;
  v45 = *(a3 + 4);
  type metadata accessor for Column(255, a4, a3, a4);
  swift_getWitnessTable();
  sub_21B34BB44();
  sub_21B34BAD4();
  v12 = v46;
  v37 = v40;
  v38 = v41;
  v39 = v42;
  result = sub_21B34AAC4();
  v16 = v36;
  if (v36 < v46)
  {
    __break(1u);
  }

  else
  {
    v31 = a6;
    v33 = a5;
    v32 = a4;
    if (v46 == v36)
    {
      v17 = MEMORY[0x277D84F90];
    }

    else
    {
      type metadata accessor for ColumnSlice(0, a4, v14, v15);
      v17 = MEMORY[0x277D84F90];
      do
      {
        v29 = a3[1];
        v43 = *a3;
        v44 = v29;
        v45 = *(a3 + 4);
        if (!ColumnSlice.isNil(at:)(v12))
        {
          *&v37 = v17;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21B254034(0, *(v17 + 16) + 1, 1);
            v17 = v37;
          }

          v28 = *(v17 + 16);
          v27 = *(v17 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_21B254034((v27 > 1), v28 + 1, 1);
            v17 = v37;
          }

          *(v17 + 16) = v28 + 1;
          *(v17 + 8 * v28 + 32) = v12;
        }

        ++v12;
      }

      while (v16 != v12);
    }

    v43 = v40;
    v44 = v41;
    v45 = v42;
    swift_getWitnessTable();
    result = sub_21B34B264();
    v18 = *(v17 + 16);
    v19 = result - v18;
    if (!__OFSUB__(result, v18))
    {
      *&v43 = v17;
      MEMORY[0x28223BE20](result);
      v20 = v32;
      v21 = v33;
      v30[2] = v32;
      v30[3] = v33;
      v30[4] = v34;
      v30[5] = v35;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
      v23 = sub_21B26F384();
      v25 = sub_21B2FCC28(sub_21B26F36C, v30, v22, v32, MEMORY[0x277D84A98], v23, MEMORY[0x277D84AC0], v24);

      *&v43 = v25;
      v26 = sub_21B34B054();
      swift_getWitnessTable();
      sub_21B2C611C(&v43, v19, v20, v26, v21, v31);
    }
  }

  __break(1u);
  return result;
}

uint64_t FilledColumn<>.summary()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v18 = a3;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v17 - v9;
  sub_21B34B204();
  v20 = v6;
  v21 = v5;
  v22 = a2;
  v23 = v3;
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_21B2FCC28(sub_21B26CA3C, v19, AssociatedTypeWitness, v11, MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v13);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  v24 = v14;
  v15 = sub_21B34B054();
  swift_getWitnessTable();
  sub_21B2C611C(&v24, 0, v11, v15, a2, v18);
}

uint64_t sub_21B26CA90@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v6 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v3, v6);
  (*(*(v5 + 8) + 80))(v6);
  if (swift_dynamicCastMetatype())
  {
    sub_21B333AD4();
    v3 = v102;
    v7 = v103;
    result = swift_beginAccess();
    v9 = *(v103 + 16);
    if (v9)
    {
      v10 = *v9 + 7;
      if (!__OFADD__(*v9, 7))
      {
        if (v10 < 0)
        {
          v10 = *v9 + 14;
        }

        v11 = v10 >> 3;
        v13 = v11 - 1;
        v12 = v11 < 1;
        v14 = v11 + 62;
        if (!v12)
        {
          v14 = v13;
        }

        sub_21B268AF0(v9 + (v14 & 0xFFFFFFFFFFFFFFC0) + 128, *v9, v103, &v105);

        v15 = v106;
        v16 = v107;
        *a1 = v105;
        *(a1 + 16) = v15;
        v17 = sub_21B2A6E74(v16);
        v18 = MEMORY[0x277D83B88];
        goto LABEL_69;
      }

      __break(1u);
      while (1)
      {
LABEL_75:
        v87 = v107;
        v88 = v108;
        __swift_project_boxed_opaque_existential_1(&v105, v107);
        (*(*(v88 + 8) + 128))(&v100, v2, v87);
        v89 = v107;
        v90 = v108;
        __swift_project_boxed_opaque_existential_1(&v105, v107);
        v2 = (*(*(v90 + 8) + 64))(v2, v89);
        v109 = v2;
        v102 = v100;
        v103 = v101;
        if (*(&v101 + 1))
        {
          if (swift_dynamicCast())
          {
            if (*(&v98 + 1))
            {
              v102 = v97;
              v103 = v98;
              v104 = v99;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v7 = sub_21B249C78(0, *(v7 + 2) + 1, 1, v7);
              }

              v92 = *(v7 + 2);
              v91 = *(v7 + 3);
              if (v92 >= v91 >> 1)
              {
                v7 = sub_21B249C78((v91 > 1), v92 + 1, 1, v7);
              }

              *(v7 + 2) = v92 + 1;
              v93 = &v7[40 * v92];
              v94 = v102;
              v95 = v103;
              *(v93 + 8) = v104;
              *(v93 + 2) = v94;
              *(v93 + 3) = v95;
              goto LABEL_74;
            }
          }

          else
          {
            v99 = 0;
            v98 = 0u;
            v97 = 0u;
          }
        }

        else
        {
          sub_21B261664(&v102, &qword_27CD7E0F8, &unk_21B3557C0);
          v97 = 0u;
          v98 = 0u;
          v99 = 0;
        }

        sub_21B261664(&v97, &qword_27CD7E200, &unk_21B352050);
LABEL_74:
        v86 = v107;
        v85 = v108;
        __swift_project_boxed_opaque_existential_1(&v105, v107);
        if (v2 == (*(*(v85 + 8) + 40))(v86))
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_90;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B333C8C();
    result = swift_beginAccess();
    v19 = *(v103 + 16);
    if (!v19)
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v20 = *v19 + 7;
    if (!__OFADD__(*v19, 7))
    {
      if (v20 < 0)
      {
        v20 = *v19 + 14;
      }

      v21 = v20 >> 3;
      v22 = v21 - 1;
      v12 = v21 < 1;
      v23 = v21 + 62;
      if (!v12)
      {
        v23 = v22;
      }

      sub_21B2688C8(v19 + (v23 & 0xFFFFFFFFFFFFFFC0) + 128, *v19, v103, &v105);

      v24 = v106;
      v25 = v107;
      *a1 = v105;
      *(a1 + 16) = v24;
      v17 = sub_21B2A6D78(v25);
      v18 = MEMORY[0x277D84DC8];
      goto LABEL_69;
    }

    __break(1u);
    goto LABEL_85;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B333E4C();
    result = swift_beginAccess();
    v26 = *(v103 + 16);
    if (!v26)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v27 = *v26 + 7;
    if (!__OFADD__(*v26, 7))
    {
      if (v27 < 0)
      {
        v27 = *v26 + 14;
      }

      v28 = v27 >> 3;
      v29 = v28 - 1;
      v12 = v28 < 1;
      v30 = v28 + 62;
      if (!v12)
      {
        v30 = v29;
      }

      sub_21B2686A0(v26 + (v30 & 0xFFFFFFFFFFFFFFC0) + 128, *v26, v103, &v105);

      v31 = v106;
      v32 = v107;
      *a1 = v105;
      *(a1 + 16) = v31;
      v17 = sub_21B2A6C7C(v32);
      v18 = MEMORY[0x277D83A90];
      goto LABEL_69;
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B334008();
    result = swift_beginAccess();
    v33 = *(v103 + 16);
    if (!v33)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v34 = *v33 + 7;
    if (!__OFADD__(*v33, 7))
    {
      if (v34 < 0)
      {
        v34 = *v33 + 14;
      }

      v35 = v34 >> 3;
      v36 = v35 - 1;
      v12 = v35 < 1;
      v37 = v35 + 62;
      if (!v12)
      {
        v37 = v36;
      }

      sub_21B268478(v33 + (v37 & 0xFFFFFFFFFFFFFFC0) + 128, *v33, v103, &v105);

      v38 = v106;
      v39 = v107;
      *a1 = v105;
      *(a1 + 16) = v38;
      v17 = sub_21B2A6B80(v39);
      v18 = MEMORY[0x277D839F8];
      goto LABEL_69;
    }

    goto LABEL_86;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B3341C4();
    result = swift_beginAccess();
    v40 = *(v103 + 16);
    if (!v40)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v41 = *v40 + 7;
    if (!__OFADD__(*v40, 7))
    {
      if (v41 < 0)
      {
        v41 = *v40 + 14;
      }

      v42 = v41 >> 3;
      v43 = v42 - 1;
      v12 = v42 < 1;
      v44 = v42 + 62;
      if (!v12)
      {
        v44 = v43;
      }

      sub_21B268264(v40 + (v44 & 0xFFFFFFFFFFFFFFC0) + 128, *v40, v103, &v105);

      v45 = v106;
      v46 = v107;
      *a1 = v105;
      *(a1 + 16) = v45;
      v17 = sub_21B2A6A84(v46);
      v18 = MEMORY[0x277D839B0];
      goto LABEL_69;
    }

    goto LABEL_87;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B33437C();
    result = swift_beginAccess();
    v47 = *(v103 + 16);
    if (!v47)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v48 = *v47 + 7;
    if (!__OFADD__(*v47, 7))
    {
      if (v48 < 0)
      {
        v48 = *v47 + 14;
      }

      v49 = v48 >> 3;
      v50 = v49 - 1;
      v12 = v49 < 1;
      v51 = v49 + 62;
      if (!v12)
      {
        v51 = v50;
      }

      sub_21B268050(v47 + (v51 & 0xFFFFFFFFFFFFFFC0) + 128, *v47, v103, &v105);

      v52 = v106;
      v53 = v107;
      *a1 = v105;
      *(a1 + 16) = v52;
      v17 = sub_21B2A6984(v53);
      v18 = MEMORY[0x277D837D0];
      goto LABEL_69;
    }

    goto LABEL_88;
  }

  v18 = sub_21B34A834();
  if (swift_dynamicCastMetatype())
  {
    sub_21B334538();
    result = swift_beginAccess();
    v54 = *(v103 + 16);
    if (!v54)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v55 = *v54 + 7;
    if (!__OFADD__(*v54, 7))
    {
      if (v55 < 0)
      {
        v55 = *v54 + 14;
      }

      v56 = v55 >> 3;
      v57 = v56 - 1;
      v12 = v56 < 1;
      v58 = v56 + 62;
      if (!v12)
      {
        v58 = v57;
      }

      sub_21B267D40(v54 + (v58 & 0xFFFFFFFFFFFFFFC0) + 128, *v54, v103, &v105);

      v59 = v106;
      v60 = v107;
      *a1 = v105;
      *(a1 + 16) = v59;
      v17 = sub_21B2A67EC(v60);
      goto LABEL_69;
    }

    goto LABEL_89;
  }

  if (!swift_dynamicCastMetatype())
  {
    sub_21B233A74(v3, &v102);
    sub_21B233A74(&v102, &v105);
    v69 = *(&v103 + 1);
    v68 = v104;
    __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
    v2 = (*(*(v68 + 8) + 32))(v69);
    sub_21B233960(&v102);
    v109 = v2;
    v71 = v107;
    v70 = v108;
    __swift_project_boxed_opaque_existential_1(&v105, v107);
    v72 = (*(*(v70 + 8) + 40))(v71);
    v7 = MEMORY[0x277D84F90];
    if (v2 != v72)
    {
      goto LABEL_75;
    }

LABEL_66:
    sub_21B261664(&v105, &qword_27CD7E530, &qword_21B352028);
    v74 = v3[3];
    v73 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v74);
    v75 = (*(*(v73 + 8) + 48))(v74);
    v77 = v3[3];
    v76 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v77);
    v78 = (*(*(v76 + 8) + 32))(v77);
    v80 = v3[3];
    v79 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v80);
    result = (*(*(v79 + 8) + 40))(v80);
    if (result >= v78)
    {
      MEMORY[0x28223BE20](result);
      v96[2] = v3;
      v82 = *(sub_21B2D16A4(sub_21B26F2FC, v96, v78, v81) + 16);

      if (!__OFSUB__(v75, v82))
      {
        sub_21B268F64(v7, v75 - v82, &v105);

        v83 = v106;
        v84 = v107;
        *a1 = v105;
        *(a1 + 16) = v83;
        v17 = sub_21B2A65E4(v84);
        v18 = MEMORY[0x277D84030];
LABEL_69:

        *(a1 + 24) = v17;
        *(a1 + 32) = v18;
        return result;
      }

      goto LABEL_94;
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  sub_21B3346FC();
  result = swift_beginAccess();
  v61 = *(v103 + 16);
  if (v61)
  {
    v62 = *v61 + 7;
    if (!__OFADD__(*v61, 7))
    {
      if (v62 < 0)
      {
        v62 = *v61 + 14;
      }

      v63 = v62 >> 3;
      v64 = v63 - 1;
      v12 = v63 < 1;
      v65 = v63 + 62;
      if (!v12)
      {
        v65 = v64;
      }

      sub_21B267B28(v61 + (v65 & 0xFFFFFFFFFFFFFFC0) + 128, *v61, v103, &v105);

      v66 = v106;
      v67 = v107;
      *a1 = v105;
      *(a1 + 16) = v66;
      v17 = sub_21B2A66E4(v67);
      v18 = MEMORY[0x277CC9318];
      goto LABEL_69;
    }

    goto LABEL_91;
  }

LABEL_100:
  __break(1u);
  return result;
}

uint64_t AnyColumnSlice.summary()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v6 = *(v1 + 24);
  v5 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v3, v6);
  (*(*(v5 + 8) + 80))(v6);
  if (swift_dynamicCastMetatype())
  {
    sub_21B26DF44(&v96);
    v7 = v97;
    result = swift_beginAccess();
    v9 = *(v7 + 16);
    if (v9)
    {
      v10 = *v9 + 7;
      if (!__OFADD__(*v9, 7))
      {
        if (v10 < 0)
        {
          v10 = *v9 + 14;
        }

        v11 = v10 >> 3;
        v13 = v11 - 1;
        v12 = v11 < 1;
        v14 = v11 + 62;
        if (!v12)
        {
          v14 = v13;
        }

        sub_21B26BEDC(v9 + (v14 & 0xFFFFFFFFFFFFFFC0) + 128, &v96, &v93);
        sub_21B261664(&v96, &qword_27CD7E710, &qword_21B352330);
        v15 = v94;
        *a1 = v93;
        *(a1 + 16) = v15;
        v16 = sub_21B2A6E74(*(&v15 + 1));
        v17 = MEMORY[0x277D83B88];
LABEL_67:

        *(a1 + 24) = v16;
        *(a1 + 32) = v17;
        return result;
      }

      __break(1u);
      while (1)
      {
LABEL_73:
        v79 = v98;
        v80 = v99;
        __swift_project_boxed_opaque_existential_1(&v96, v98);
        (*(*(v80 + 8) + 128))(&v91, v2, v79);
        v81 = v98;
        v82 = v99;
        __swift_project_boxed_opaque_existential_1(&v96, v98);
        v2 = (*(*(v82 + 8) + 64))(v2, v81);
        v100 = v2;
        v93 = v91;
        v94 = v92;
        if (*(&v92 + 1))
        {
          if (swift_dynamicCast())
          {
            if (*(&v89 + 1))
            {
              v93 = v88;
              v94 = v89;
              v95 = v90;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_21B249C78(0, *(v6 + 2) + 1, 1, v6);
              }

              v84 = *(v6 + 2);
              v83 = *(v6 + 3);
              if (v84 >= v83 >> 1)
              {
                v6 = sub_21B249C78((v83 > 1), v84 + 1, 1, v6);
              }

              *(v6 + 2) = v84 + 1;
              v85 = &v6[40 * v84];
              v86 = v93;
              v87 = v94;
              *(v85 + 8) = v95;
              *(v85 + 2) = v86;
              *(v85 + 3) = v87;
              goto LABEL_72;
            }
          }

          else
          {
            v90 = 0;
            v88 = 0u;
            v89 = 0u;
          }
        }

        else
        {
          sub_21B261664(&v93, &qword_27CD7E0F8, &unk_21B3557C0);
          v88 = 0u;
          v89 = 0u;
          v90 = 0;
        }

        sub_21B261664(&v88, &qword_27CD7E200, &unk_21B352050);
LABEL_72:
        v78 = v98;
        v77 = v99;
        __swift_project_boxed_opaque_existential_1(&v96, v98);
        if (v2 == (*(*(v77 + 8) + 40))(v78))
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_88;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B26E1B8(&v96);
    v18 = v97;
    result = swift_beginAccess();
    v19 = *(v18 + 16);
    if (!v19)
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v20 = *v19 + 7;
    if (!__OFADD__(*v19, 7))
    {
      if (v20 < 0)
      {
        v20 = *v19 + 14;
      }

      v21 = v20 >> 3;
      v22 = v21 - 1;
      v12 = v21 < 1;
      v23 = v21 + 62;
      if (!v12)
      {
        v23 = v22;
      }

      sub_21B26BC68(v19 + (v23 & 0xFFFFFFFFFFFFFFC0) + 128, &v96, &v93);
      sub_21B261664(&v96, &qword_27CD7E708, &qword_21B352328);
      v24 = v94;
      *a1 = v93;
      *(a1 + 16) = v24;
      v16 = sub_21B2A6D78(*(&v24 + 1));
      v17 = MEMORY[0x277D84DC8];
      goto LABEL_67;
    }

    __break(1u);
    goto LABEL_83;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B26E434(&v96);
    v25 = v97;
    result = swift_beginAccess();
    v26 = *(v25 + 16);
    if (!v26)
    {
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v27 = *v26 + 7;
    if (!__OFADD__(*v26, 7))
    {
      if (v27 < 0)
      {
        v27 = *v26 + 14;
      }

      v28 = v27 >> 3;
      v29 = v28 - 1;
      v12 = v28 < 1;
      v30 = v28 + 62;
      if (!v12)
      {
        v30 = v29;
      }

      sub_21B26B9F4(v26 + (v30 & 0xFFFFFFFFFFFFFFC0) + 128, &v96, &v93);
      sub_21B261664(&v96, &qword_27CD7E700, &qword_21B352320);
      v31 = v94;
      *a1 = v93;
      *(a1 + 16) = v31;
      v16 = sub_21B2A6C7C(*(&v31 + 1));
      v17 = MEMORY[0x277D83A90];
      goto LABEL_67;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B26E6AC(&v96);
    v32 = v97;
    result = swift_beginAccess();
    v33 = *(v32 + 16);
    if (!v33)
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v34 = *v33 + 7;
    if (!__OFADD__(*v33, 7))
    {
      if (v34 < 0)
      {
        v34 = *v33 + 14;
      }

      v35 = v34 >> 3;
      v36 = v35 - 1;
      v12 = v35 < 1;
      v37 = v35 + 62;
      if (!v12)
      {
        v37 = v36;
      }

      sub_21B26B780(v33 + (v37 & 0xFFFFFFFFFFFFFFC0) + 128, &v96, &v93);
      sub_21B261664(&v96, &qword_27CD7E6F8, &qword_21B352318);
      v38 = v94;
      *a1 = v93;
      *(a1 + 16) = v38;
      v16 = sub_21B2A6B80(*(&v38 + 1));
      v17 = MEMORY[0x277D839F8];
      goto LABEL_67;
    }

    goto LABEL_84;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B26E924(&v96);
    v39 = v97;
    result = swift_beginAccess();
    v40 = *(v39 + 16);
    if (!v40)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v41 = *v40 + 7;
    if (!__OFADD__(*v40, 7))
    {
      if (v41 < 0)
      {
        v41 = *v40 + 14;
      }

      v42 = v41 >> 3;
      v43 = v42 - 1;
      v12 = v42 < 1;
      v44 = v42 + 62;
      if (!v12)
      {
        v44 = v43;
      }

      sub_21B26B514(v40 + (v44 & 0xFFFFFFFFFFFFFFC0) + 128, &v96, &v93);
      sub_21B261664(&v96, &qword_27CD7E6F0, &qword_21B352310);
      v45 = v94;
      *a1 = v93;
      *(a1 + 16) = v45;
      v16 = sub_21B2A6A84(*(&v45 + 1));
      v17 = MEMORY[0x277D839B0];
      goto LABEL_67;
    }

    goto LABEL_85;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B26EB98(&v96);
    v46 = v97;
    result = swift_beginAccess();
    v47 = *(v46 + 16);
    if (!v47)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v48 = *v47 + 7;
    if (!__OFADD__(*v47, 7))
    {
      if (v48 < 0)
      {
        v48 = *v47 + 14;
      }

      v49 = v48 >> 3;
      v50 = v49 - 1;
      v12 = v49 < 1;
      v51 = v49 + 62;
      if (!v12)
      {
        v51 = v50;
      }

      sub_21B26B294(v47 + (v51 & 0xFFFFFFFFFFFFFFC0) + 128, &v96, &v93);
      sub_21B261664(&v96, &qword_27CD7E6E8, &qword_21B352308);
      v52 = v94;
      *a1 = v93;
      *(a1 + 16) = v52;
      v16 = sub_21B2A6984(*(&v52 + 1));
      v17 = MEMORY[0x277D837D0];
      goto LABEL_67;
    }

    goto LABEL_86;
  }

  v17 = sub_21B34A834();
  if (swift_dynamicCastMetatype())
  {
    sub_21B26EE10(&v96);
    v53 = v97;
    result = swift_beginAccess();
    v54 = *(v53 + 16);
    if (!v54)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v55 = *v54 + 7;
    if (!__OFADD__(*v54, 7))
    {
      if (v55 < 0)
      {
        v55 = *v54 + 14;
      }

      v56 = v55 >> 3;
      v57 = v56 - 1;
      v12 = v56 < 1;
      v58 = v56 + 62;
      if (!v12)
      {
        v58 = v57;
      }

      sub_21B26AF30(v54 + (v58 & 0xFFFFFFFFFFFFFFC0) + 128, &v96, &v93);
      sub_21B261664(&v96, &qword_27CD7E6E0, &qword_21B352300);
      v59 = v94;
      *a1 = v93;
      *(a1 + 16) = v59;
      v16 = sub_21B2A67EC(*(&v59 + 1));
      goto LABEL_67;
    }

    goto LABEL_87;
  }

  if (!swift_dynamicCastMetatype())
  {
    sub_21B25EFA4(v3, &v93);
    sub_21B25EFA4(&v93, &v96);
    v68 = *(&v94 + 1);
    v67 = v95;
    __swift_project_boxed_opaque_existential_1(&v93, *(&v94 + 1));
    v2 = (*(*(v67 + 8) + 32))(v68);
    sub_21B25F000(&v93);
    v100 = v2;
    v70 = v98;
    v69 = v99;
    __swift_project_boxed_opaque_existential_1(&v96, v98);
    v71 = (*(*(v69 + 8) + 40))(v70);
    v6 = MEMORY[0x277D84F90];
    if (v2 != v71)
    {
      goto LABEL_73;
    }

LABEL_66:
    sub_21B261664(&v96, &qword_27CD7E540, &unk_21B352040);
    v73 = v3[3];
    v72 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v73);
    v74 = (*(*(v72 + 8) + 56))(v73);
    sub_21B268F64(v6, v74, &v96);

    v75 = v97;
    v76 = v98;
    *a1 = v96;
    *(a1 + 16) = v75;
    v16 = sub_21B2A65E4(v76);
    v17 = MEMORY[0x277D84030];
    goto LABEL_67;
  }

  sub_21B26F088(&v96);
  v60 = v97;
  result = swift_beginAccess();
  v61 = *(v60 + 16);
  if (v61)
  {
    v62 = *v61 + 7;
    if (!__OFADD__(*v61, 7))
    {
      if (v62 < 0)
      {
        v62 = *v61 + 14;
      }

      v63 = v62 >> 3;
      v64 = v63 - 1;
      v12 = v63 < 1;
      v65 = v63 + 62;
      if (!v12)
      {
        v65 = v64;
      }

      sub_21B26ACAC(v61 + (v65 & 0xFFFFFFFFFFFFFFC0) + 128, &v96, &v93);
      sub_21B261664(&v96, &qword_27CD7E6D8, &qword_21B3522F8);
      v66 = v94;
      *a1 = v93;
      *(a1 + 16) = v66;
      v16 = sub_21B2A66E4(*(&v66 + 1));
      v17 = MEMORY[0x277CC9318];
      goto LABEL_67;
    }

    goto LABEL_89;
  }

LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_21B26DF44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v5 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  if ((*(*(v4 + 8) + 80))(v5) != MEMORY[0x277D83B88])
  {
    goto LABEL_10;
  }

  sub_21B233A10(v2, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E718, &qword_21B352338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E720, &qword_21B352340);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_21B233A10(v2, &v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E710, &qword_21B352330);
    return swift_dynamicCast();
  }

  sub_21B233A10(v2, &v16);
  result = swift_dynamicCast();
  v7 = v12;
  v8 = v13;
  if (v13 < v12)
  {
    __break(1u);
LABEL_10:
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_21B34B634();

    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021B34C840;
    v9 = v2[3];
    v10 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v9);
    (*(*(v10 + 8) + 80))(v9);
    v11 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v11);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    MEMORY[0x21CEED5E0](7630409, 0xE300000000000000);
    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  if (v12 == v13)
  {
    v7 = 0;
    v8 = 0;
  }

  *a1 = v14;
  *(a1 + 8) = v15;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = 2 * (v12 == v13);
  return result;
}

uint64_t sub_21B26E1B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v5 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  if ((*(*(v4 + 8) + 80))(v5) != MEMORY[0x277D84DC8])
  {
    goto LABEL_10;
  }

  sub_21B233A10(v2, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E718, &qword_21B352338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E728, &qword_21B352348);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_21B233A10(v2, &v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E708, &qword_21B352328);
    return swift_dynamicCast();
  }

  sub_21B233A10(v2, &v16);
  result = swift_dynamicCast();
  v7 = v12;
  v8 = v13;
  if (v13 < v12)
  {
    __break(1u);
LABEL_10:
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_21B34B634();

    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021B34C840;
    v9 = v2[3];
    v10 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v9);
    (*(*(v10 + 8) + 80))(v9);
    v11 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v11);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    MEMORY[0x21CEED5E0](0x363174616F6C46, 0xE700000000000000);
    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  if (v12 == v13)
  {
    v7 = 0;
    v8 = 0;
  }

  *a1 = v14;
  *(a1 + 8) = v15;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = 2 * (v12 == v13);
  return result;
}

uint64_t sub_21B26E434@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v5 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  if ((*(*(v4 + 8) + 80))(v5) != MEMORY[0x277D83A90])
  {
    goto LABEL_10;
  }

  sub_21B233A10(v2, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E718, &qword_21B352338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E730, &qword_21B352350);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_21B233A10(v2, &v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E700, &qword_21B352320);
    return swift_dynamicCast();
  }

  sub_21B233A10(v2, &v16);
  result = swift_dynamicCast();
  v7 = v12;
  v8 = v13;
  if (v13 < v12)
  {
    __break(1u);
LABEL_10:
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_21B34B634();

    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021B34C840;
    v9 = v2[3];
    v10 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v9);
    (*(*(v10 + 8) + 80))(v9);
    v11 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v11);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    MEMORY[0x21CEED5E0](0x74616F6C46, 0xE500000000000000);
    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  if (v12 == v13)
  {
    v7 = 0;
    v8 = 0;
  }

  *a1 = v14;
  *(a1 + 8) = v15;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = 2 * (v12 == v13);
  return result;
}

uint64_t sub_21B26E6AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v5 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  if ((*(*(v4 + 8) + 80))(v5) != MEMORY[0x277D839F8])
  {
    goto LABEL_10;
  }

  sub_21B233A10(v2, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E718, &qword_21B352338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E738, &qword_21B352358);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_21B233A10(v2, &v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6F8, &qword_21B352318);
    return swift_dynamicCast();
  }

  sub_21B233A10(v2, &v16);
  result = swift_dynamicCast();
  v7 = v12;
  v8 = v13;
  if (v13 < v12)
  {
    __break(1u);
LABEL_10:
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_21B34B634();

    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021B34C840;
    v9 = v2[3];
    v10 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v9);
    (*(*(v10 + 8) + 80))(v9);
    v11 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v11);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    MEMORY[0x21CEED5E0](0x656C62756F44, 0xE600000000000000);
    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  if (v12 == v13)
  {
    v7 = 0;
    v8 = 0;
  }

  *a1 = v14;
  *(a1 + 8) = v15;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = 2 * (v12 == v13);
  return result;
}