uint64_t sub_26D2B1FD0()
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x277D84F90];
    v18 = *(MEMORY[0x277D84F90] + 16);
    if (v18)
    {
LABEL_10:
      v19 = v4[4];
      v20 = v18 - 1;
      if (v18 != 1)
      {
        if (v18 < 5)
        {
          v21 = 1;
          goto LABEL_16;
        }

        v21 = v20 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v22 = vdupq_n_s64(v19);
        v23 = (v4 + 7);
        v24 = v20 & 0xFFFFFFFFFFFFFFFCLL;
        v25 = v22;
        do
        {
          v22 = vbslq_s8(vcgtq_s64(v22, v23[-1]), v22, v23[-1]);
          v25 = vbslq_s8(vcgtq_s64(v25, *v23), v25, *v23);
          v23 += 2;
          v24 -= 4;
        }

        while (v24);
        v26 = vbslq_s8(vcgtq_s64(v22, v25), v22, v25);
        v27 = vextq_s8(v26, v26, 8uLL).u64[0];
        v19 = vbsl_s8(vcgtd_s64(v26.i64[0], v27), *v26.i8, v27);
        if (v20 != (v20 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_16:
          v28 = v18 - v21;
          v29 = 8 * v21 + 32;
          do
          {
            if (v19 <= *(v4 + v29))
            {
              v19 = *(v4 + v29);
            }

            v29 += 8;
            --v28;
          }

          while (v28);
        }
      }
    }

    else
    {
      v19 = 0;
    }

    return v19;
  }

  v33 = MEMORY[0x277D84F90];
  sub_26D2BA93C(0, v2, 0);
  v3 = 0;
  v4 = v33;
  v5 = v1 + 40;
  while (1)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
    }

    v6 = sub_26D2C0838();
    v7 = [v6 length];

    v8 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v9 = sub_26D2C0838();
    v32 = 0;
    v10 = [v8 initWithPattern:v9 options:1 error:&v32];

    v11 = v32;
    if (!v10)
    {
      break;
    }

    v12 = sub_26D2C0838();
    v13 = sub_26D2C0838();
    v14 = [v10 stringByReplacingMatchesInString:v12 options:0 range:0 withTemplate:{v7, v13}];

    sub_26D2C0848();
    v15 = sub_26D2C08C8();

    v33 = v4;
    v17 = v4[2];
    v16 = v4[3];
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      sub_26D2BA93C((v16 > 1), v17 + 1, 1);
      v4 = v33;
    }

    ++v3;
    v4[2] = v18;
    v4[v17 + 4] = v15;
    v5 += 16;
    if (v2 == v3)
    {
      goto LABEL_10;
    }
  }

  v31 = v11;
  sub_26D2C0618();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

TerminalToolKit::Column __swiftcall Column.init(_:)(Swift::String a1)
{
  v2 = v1;
  sub_26D2B2374();
  v3 = sub_26D2C0B78();

  *v2 = v3;
  return result;
}

unint64_t sub_26D2B2374()
{
  result = qword_2804F7A20;
  if (!qword_2804F7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7A20);
  }

  return result;
}

Swift::String __swiftcall Column.printCol(width:line:)(Swift::Int width, Swift::Int line)
{
  if (*(*v2 + 16) > line && line < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26D2B2374();
    v3 = sub_26D2C0BA8();
    MEMORY[0x26D6BA330](v3);

    MEMORY[0x26D6BA330](31776, 0xE200000000000000);
    width = 32;
    line = 0xE100000000000000;
  }

  result._object = line;
  result._countAndFlagsBits = width;
  return result;
}

uint64_t Row.init(_:)@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v5 = sub_26D2C0838();
  [v4 setDateFormat_];

  sub_26D2C0958();

  sub_26D2C0958();

  sub_26D2C0958();

  sub_26D2C0958();
  sub_26D2C0D28();
  type metadata accessor for Footprint(0);
  v14 = a1;
  v6 = sub_26D2C0688();
  v7 = [v4 stringFromDate_];

  sub_26D2C0848();
  v8 = MEMORY[0x277D84F90];
  sub_26D2B2374();
  for (i = 0; i != 112; i += 16)
  {
    v10 = sub_26D2C0B78();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_26D2B3980(0, *(v8 + 2) + 1, 1, v8);
    }

    v12 = *(v8 + 2);
    v11 = *(v8 + 3);
    if (v12 >= v11 >> 1)
    {
      v8 = sub_26D2B3980((v11 > 1), v12 + 1, 1, v8);
    }

    *(v8 + 2) = v12 + 1;
    *&v8[8 * v12 + 32] = v10;
  }

  sub_26D2B3A8C(v14);

  result = swift_arrayDestroy();
  *a2 = v8;
  return result;
}

TerminalToolKit::Row __swiftcall Row.init(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  v4 = *(a1._rawValue + 2);
  if (v4)
  {
    v11 = v1;
    sub_26D2B2374();
    v5 = a1._rawValue + 40;
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = sub_26D2C0B78();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_26D2B3980(0, *(v6 + 2) + 1, 1, v6);
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = sub_26D2B3980((v8 > 1), v9 + 1, 1, v6);
      }

      *(v6 + 2) = v9 + 1;
      *&v6[8 * v9 + 32] = v7;
      v5 += 16;
      --v4;
    }

    while (v4);

    v3 = v11;
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  *v3 = v6;
  return result;
}

int64_t sub_26D2B28EC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    sub_26D2BA93C(0, v2, 0);
    v3 = v21;
    v4 = v1 + 32;
    v5 = v21[2];
    do
    {
      v6 = *(*v4 + 16);
      v22 = v3;
      v7 = v3[3];
      v8 = v5 + 1;
      if (v5 >= v7 >> 1)
      {
        sub_26D2BA93C((v7 > 1), v5 + 1, 1);
        v3 = v22;
      }

      v3[2] = v8;
      v3[v5 + 4] = v6;
      v4 += 8;
      ++v5;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 16);
    if (!v8)
    {
      v9 = 0;
      goto LABEL_20;
    }
  }

  v9 = v3[4];
  v10 = v8 - 1;
  if (v8 != 1)
  {
    if (v8 >= 5)
    {
      v11 = v10 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v12 = vdupq_n_s64(v9);
      v13 = (v3 + 7);
      v14 = v10 & 0xFFFFFFFFFFFFFFFCLL;
      v15 = v12;
      do
      {
        v12 = vbslq_s8(vcgtq_s64(v12, v13[-1]), v12, v13[-1]);
        v15 = vbslq_s8(vcgtq_s64(v15, *v13), v15, *v13);
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      v16 = vbslq_s8(vcgtq_s64(v12, v15), v12, v15);
      v17 = vextq_s8(v16, v16, 8uLL).u64[0];
      v9 = vbsl_s8(vcgtd_s64(v16.i64[0], v17), *v16.i8, v17);
      if (v10 == (v10 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v11 = 1;
    }

    v18 = v8 - v11;
    v19 = 8 * v11 + 32;
    do
    {
      if (v9 <= *(v3 + v19))
      {
        v9 = *(v3 + v19);
      }

      v19 += 8;
      --v18;
    }

    while (v18);
  }

LABEL_20:

  return v9;
}

char *sub_26D2B2A6C()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *v0 + 32;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = sub_26D2B1FD0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_26D2B3C88(0, *(v3 + 2) + 1, 1, v3);
    }

    v6 = *(v3 + 2);
    v5 = *(v3 + 3);
    if (v6 >= v5 >> 1)
    {
      v3 = sub_26D2B3C88((v5 > 1), v6 + 1, 1, v3);
    }

    *(v3 + 2) = v6 + 1;
    *&v3[8 * v6 + 32] = v4;
    v2 += 8;
    --v1;
  }

  while (v1);
  return v3;
}

Swift::Void __swiftcall Row.printRow(widths:_:)(Swift::OpaquePointer widths, Swift::Bool _)
{
  v30 = *v2;
  v5 = sub_26D2B28EC();
  if (v5 < 0)
  {
LABEL_16:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v6 = 0xE000000000000000;
    if (v5)
    {
      v29 = _;
      v7 = 0;
      v8 = *(widths._rawValue + 2);
      v31 = v5;
      v32 = v8;
      do
      {
        MEMORY[0x26D6BA330](8316, 0xE200000000000000);
        if (v8)
        {
          v9 = v32;
          if (v32 > *(v30 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v10 = v30 + 32;
          v11 = widths._rawValue + 32;
          do
          {
            v11 += 8;
            sub_26D2B2374();

            v12 = sub_26D2C0BA8();
            MEMORY[0x26D6BA330](v12);

            MEMORY[0x26D6BA330](31776, 0xE200000000000000);

            MEMORY[0x26D6BA330](32, 0xE100000000000000);

            v10 += 8;
            --v9;
          }

          while (v9);
        }

        ++v7;
        MEMORY[0x26D6BA330](10, 0xE100000000000000);
        v8 = v32;
      }

      while (v7 != v31);
      v13 = 0;
      v6 = 0xE000000000000000;
      if (v29)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v13 = 0;
      if (_)
      {
LABEL_13:
        v14 = objc_allocWithZone(MEMORY[0x277CCAC68]);
        v15 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
        v16 = sub_26D2C08C8();
        v17 = sub_26D2C0838();
        v18 = sub_26D2C0838();
        v19 = [v15 stringByReplacingMatchesInString:v17 options:0 range:0 withTemplate:{v16, v18}];

        v20 = objc_allocWithZone(MEMORY[0x277CCAC68]);
        v21 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
        v22 = sub_26D2C08C8();
        v23 = sub_26D2C0838();

        v24 = sub_26D2C0838();
        v25 = [v21 stringByReplacingMatchesInString:v23 options:0 range:0 withTemplate:{v22, v24}];

        v13 = sub_26D2C0848();
        v6 = v26;
      }
    }

    v27 = MEMORY[0x277D837D0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A28, &qword_26D2C1280);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_26D2C1270;
    *(v28 + 56) = v27;
    *(v28 + 32) = v13;
    *(v28 + 40) = v6;
    sub_26D2C0D78();
  }
}

TerminalToolKit::TableView __swiftcall TableView.init(header:rows:)(TerminalToolKit::Row header, Swift::OpaquePointer rows)
{
  v2->_rawValue = *header.columns._rawValue;
  v2[1]._rawValue = rows._rawValue;
  result.rows = rows;
  result.header = header;
  return result;
}

char *sub_26D2B2F28()
{
  v60 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = v0[1];
  v59 = *v0;
  v3 = sub_26D2B2A6C();
  v4 = v2;
  v5 = v3;
  v48 = *(v4 + 16);
  if (!v48)
  {
    return v5;
  }

  v6 = 0;
  v7 = v1[2];
  v47 = v4 + 32;
  v8 = MEMORY[0x277D84F90];
  v46 = v4;
  v50 = v7;
LABEL_4:
  if (v6 >= *(v4 + 16))
  {
LABEL_45:
    __break(1u);
  }

  if (!v7)
  {
    goto LABEL_3;
  }

  v49 = v6;
  v9 = *(v47 + 8 * v6);
  v10 = *(v9 + 16);
  v52 = v9 + 32;
  v53 = v9;

  v11 = 0;
  v51 = v10;
  while (1)
  {
    if (v11 >= *(v5 + 2))
    {
      goto LABEL_42;
    }

    v12 = *&v5[8 * v11 + 32];
    if (v11 >= v10)
    {
      v31 = v12 & ~(v12 >> 63);
      goto LABEL_34;
    }

    if (v11 >= *(v53 + 16))
    {
      goto LABEL_44;
    }

    v56 = v11;
    v13 = *(v52 + 8 * v11);
    v14 = *(v13 + 16);
    if (v14)
    {
      break;
    }

    v30 = v8[2];

    if (v30)
    {
      v55 = v12;
      v16 = v8;
LABEL_21:
      v11 = v56;
      v31 = v16[4];
      v32 = v30 - 1;
      if (v30 == 1)
      {
        goto LABEL_31;
      }

      if (v30 > 4)
      {
        v33 = v32 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v34 = vdupq_n_s64(v31);
        v35 = (v16 + 7);
        v36 = v32 & 0xFFFFFFFFFFFFFFFCLL;
        v37 = v34;
        do
        {
          v34 = vbslq_s8(vcgtq_s64(v34, v35[-1]), v34, v35[-1]);
          v37 = vbslq_s8(vcgtq_s64(v37, *v35), v37, *v35);
          v35 += 2;
          v36 -= 4;
        }

        while (v36);
        v38 = vbslq_s8(vcgtq_s64(v34, v37), v34, v37);
        v39 = vextq_s8(v38, v38, 8uLL).u64[0];
        v31 = vbsl_s8(vcgtd_s64(v38.i64[0], v39), *v38.i8, v39);
        if (v32 == (v32 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_31:

          if (v31 <= v55)
          {
            v31 = v55;
          }

          v10 = v51;
          goto LABEL_34;
        }
      }

      else
      {
        v33 = 1;
      }

      v40 = v30 - v33;
      v41 = &v16[v33 + 4];
      do
      {
        v43 = *v41++;
        v42 = v43;
        if (v31 <= v43)
        {
          v31 = v42;
        }

        --v40;
      }

      while (v40);
      goto LABEL_31;
    }

    v31 = v12 & ~(v12 >> 63);
    v11 = v56;
LABEL_34:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_26D2B3E9C(v5);
    }

    if (v11 >= *(v5 + 2))
    {
      goto LABEL_43;
    }

    *&v5[8 * v11++ + 32] = v31;
    if (v11 == v7)
    {

      v4 = v46;
      v6 = v49;
LABEL_3:
      if (++v6 == v48)
      {
        return v5;
      }

      goto LABEL_4;
    }
  }

  v54 = v5;
  v55 = v12;
  v59 = v8;

  sub_26D2BA93C(0, v14, 0);
  v15 = 0;
  v16 = v59;
  v17 = v13 + 40;
  v57 = v13;
  while (1)
  {
    if (v15 >= *(v13 + 16))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v18 = sub_26D2C0838();
    v19 = [v18 length];

    v20 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v21 = sub_26D2C0838();
    v58 = 0;
    v22 = [v20 initWithPattern:v21 options:1 error:&v58];

    v23 = v58;
    if (!v22)
    {
      break;
    }

    v24 = sub_26D2C0838();
    v25 = sub_26D2C0838();
    v26 = [v22 stringByReplacingMatchesInString:v24 options:0 range:0 withTemplate:{v19, v25}];

    sub_26D2C0848();
    v27 = sub_26D2C08C8();

    v59 = v16;
    v29 = v16[2];
    v28 = v16[3];
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      sub_26D2BA93C((v28 > 1), v29 + 1, 1);
      v16 = v59;
    }

    ++v15;
    v16[2] = v30;
    v16[v29 + 4] = v27;
    v17 += 16;
    v13 = v57;
    if (v14 == v15)
    {
      v5 = v54;
      v7 = v50;
      v8 = MEMORY[0x277D84F90];
      goto LABEL_21;
    }
  }

  v45 = v23;
  sub_26D2C0618();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

Swift::Void __swiftcall TableView.printTable(noColor:)(Swift::Bool noColor)
{
  v3 = *(v1 + 8);
  v4 = sub_26D2B2F28();
  sub_26D2B3528(v4, noColor);

  v5 = sub_26D2B2F28();
  Row.printRow(widths:_:)(v5, noColor);

  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = 32;
    do
    {

      v8 = sub_26D2B2F28();
      sub_26D2B3528(v8, noColor);

      v9 = sub_26D2B2F28();
      Row.printRow(widths:_:)(v9, noColor);

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v10 = sub_26D2B2F28();
  sub_26D2B3528(v10, noColor);
}

uint64_t sub_26D2B3528(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    sub_26D2B2374();
    do
    {
      v4 += 8;
      v5 = sub_26D2C0BA8();
      MEMORY[0x26D6BA330](v5);

      MEMORY[0x26D6BA330](11053, 0xE200000000000000);
      MEMORY[0x26D6BA330](45, 0xE100000000000000);

      --v3;
    }

    while (v3);
  }

  MEMORY[0x26D6BA330](10, 0xE100000000000000);
  v7 = 11563;
  v6 = 0xE200000000000000;
  if (a2)
  {
    v8 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v9 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
    v10 = sub_26D2C08C8();
    v11 = sub_26D2C0838();
    v12 = sub_26D2C0838();
    v13 = [v9 stringByReplacingMatchesInString:v11 options:0 range:0 withTemplate:{v10, v12}];

    v14 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v15 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
    v16 = sub_26D2C08C8();
    v17 = sub_26D2C0838();

    v18 = sub_26D2C0838();
    v19 = [v15 stringByReplacingMatchesInString:v17 options:0 range:0 withTemplate:{v16, v18}];

    v7 = sub_26D2C0848();
    v6 = v20;
  }

  v21 = MEMORY[0x277D837D0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A28, &qword_26D2C1280);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26D2C1270;
  *(v22 + 56) = v21;
  *(v22 + 32) = v7;
  *(v22 + 40) = v6;
  sub_26D2C0D78();
}

id sub_26D2B3824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_26D2C0838();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_26D2C0618();

    swift_willThrow();
  }

  return v6;
}

BOOL sub_26D2B391C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

char *sub_26D2B3980(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A40, &qword_26D2C1310);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26D2B3A8C(uint64_t a1)
{
  v2 = type metadata accessor for Footprint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26D2B3B50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_26D2B3B9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26D2B3BF4(uint64_t *a1, int a2)
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

uint64_t sub_26D2B3C3C(uint64_t result, int a2, int a3)
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

char *sub_26D2B3C88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A38, &qword_26D2C1308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_26D2B3D8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A30, &qword_26D2C1300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t Footprint.peak.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Footprint.current.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Footprint.activeSoftLimit.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Footprint.inactiveHardLimit.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t Footprint.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Footprint(0) + 40);
  v4 = sub_26D2C06A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Footprint(uint64_t a1)
{
  result = qword_2804F7A48;
  if (!qword_2804F7A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void Footprint.init(peak:current:numberOfVoicemails:activeSoftLimit:inactiveHardLimit:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Footprint(0);
  sub_26D2C0698();
  v35 = a3;
  if (a4 < a1)
  {
    v13 = 0;
LABEL_7:
    *a6 = v13;
    v14 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
    [v14 setAllowedUnits_];
    [v14 setCountStyle_];
    [v14 setIncludesUnit_];
    [v14 setAdaptive_];
    v34 = a1;
    v15 = [v14 stringFromByteCount_];
    v16 = sub_26D2C0848();
    v18 = v17;

    *(a6 + 8) = v16;
    *(a6 + 16) = v18;
    v19 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
    [v19 setAllowedUnits_];
    [v19 setCountStyle_];
    [v19 setIncludesUnit_];
    [v19 setAdaptive_];
    v20 = [v19 stringFromByteCount_];
    v21 = sub_26D2C0848();
    v23 = v22;

    *(a6 + 24) = v21;
    *(a6 + 32) = v23;
    v24 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
    [v24 setAllowedUnits_];
    [v24 setCountStyle_];
    [v24 setIncludesUnit_];
    [v24 setAdaptive_];
    v25 = [v24 stringFromByteCount_];
    v26 = sub_26D2C0848();
    v28 = v27;

    *(a6 + 40) = v26;
    *(a6 + 48) = v28;
    v29 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
    [v29 setAllowedUnits_];
    [v29 setCountStyle_];
    [v29 setIncludesUnit_];
    [v29 setAdaptive_];
    v30 = [v29 stringFromByteCount_];
    v31 = sub_26D2C0848();
    v33 = v32;

    *(a6 + 56) = v31;
    *(a6 + 64) = v33;
    *(a6 + 72) = v35;
    *(a6 + *(v12 + 44)) = v34;
    *(a6 + *(v12 + 48)) = a2;
    return;
  }

  if (!__OFSUB__(a4, 5))
  {
    if (a4 - 5 < a1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t static Footprint.getQuickGlance(from:and:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a2 >= result)
  {
    if (__OFSUB__(a2, 5))
    {
      __break(1u);
    }

    else
    {
      if (a2 - 5 < result)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }

      *a3 = v3;
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t sub_26D2B4404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26D2C06A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26D2B44C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_26D2C06A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26D2B4568(uint64_t a1)
{
  result = sub_26D2C06A8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void static Date.randomDate(start:end:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v52 = a3;
  v5 = sub_26D2C0708();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A58, qword_26D2C1368);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  v56 = sub_26D2C06A8();
  v54 = *(v56 - 8);
  v15 = MEMORY[0x28223BE20](v56);
  v42 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  v53 = sub_26D2C0718();
  v22 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v55 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D2C06F8();
  sub_26D2C0698();
  if (a1 < 0)
  {
    v24 = __OFSUB__(0, a1);
    v25 = -a1;
    if (!v24)
    {
      if (v25 != 0x8000000000000000)
      {
        goto LABEL_4;
      }

      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_4:
  v48 = v12;
  v49 = v22;
  v51 = v19;
  if (a2 < 0)
  {
    v24 = __OFSUB__(0, a2);
    a2 = -a2;
    if (v24)
    {
      goto LABEL_18;
    }
  }

  v47 = a2;
  v26 = *(v6 + 104);
  v27 = v8;
  v46 = *MEMORY[0x277CC9968];
  v45 = v26;
  v26(v8);
  v28 = v55;
  sub_26D2C06E8();
  v44 = *(v6 + 8);
  v44(v8, v5);
  v29 = v54;
  v43 = v5;
  v30 = *(v54 + 48);
  v31 = v56;
  if (v30(v14, 1, v56) == 1)
  {
    (*(v49 + 8))(v28, v53);
    sub_26D2B4BA4(v14);
    (*(v29 + 32))(v52, v21, v31);
    return;
  }

  v41 = v30;
  v50 = *(v29 + 32);
  v50(v51, v14, v31);
  v32 = v43;
  v45(v27, v46, v43);
  v33 = v48;
  v47 = v21;
  sub_26D2C06E8();
  v34 = v56;
  v44(v27, v32);
  if (v41(v33, 1, v34) == 1)
  {
    (*(v29 + 8))(v51, v34);
    (*(v49 + 8))(v28, v53);
    sub_26D2B4BA4(v33);
    v50(v52, v47, v34);
    return;
  }

  v35 = v42;
  v50(v42, v33, v34);
  v36 = v51;
  sub_26D2C0668();
  v38 = v53;
  if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v37 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v37 >= 4294967300.0)
  {
LABEL_21:
    __break(1u);
    return;
  }

  arc4random_uniform(v37);
  sub_26D2C0678();
  v39 = *(v29 + 8);
  v40 = v56;
  v39(v35, v56);
  v39(v36, v40);
  v39(v47, v40);
  (*(v49 + 8))(v55, v38);
}

uint64_t sub_26D2B4BA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A58, qword_26D2C1368);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall Date.printableString(with:)(Swift::String with)
{
  v1 = sub_26D2C06A8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D2C0698();
  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v6 = sub_26D2C0838();
  [v5 setDateFormat_];

  v7 = sub_26D2C0688();
  v8 = [v5 stringFromDate_];

  v9 = sub_26D2C0848();
  v11 = v10;

  (*(v2 + 8))(v4, v1);
  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t static Randomization.weightedRandomValue<A>(weights:)@<X0>(double a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = sub_26D2C0B28();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v33 = &v31 - v12;
  v34 = *(a2 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v38 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(TupleTypeMetadata2 - 8);
  v32 = *(v15 + 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v40 = 0;
  v41 = a1;
  v39 = a2;
  v18 = sub_26D2C0A38();
  swift_getWitnessTable();
  v19 = sub_26D2C0998();
  if (v42[0] <= 0.0)
  {
LABEL_13:
    v42[0] = a1;
    swift_getWitnessTable();
    sub_26D2C0AB8();
    *&result = COERCE_DOUBLE((*(v15 + 6))(v10, 1, TupleTypeMetadata2));
    if (result == 1)
    {
      goto LABEL_19;
    }

    *&result = COERCE_DOUBLE((*(v34 + 32))(a3, v10, a2));
    return result;
  }

  v31 = a3;
  v20 = 0.0;
  sub_26D2B6438(v19, 0.0, v42[0]);
  v22 = v21;
  if (sub_26D2C0A08())
  {
    v23 = 0;
    v36 = (v15 + 16);
    v37 = (v34 + 32);
    v35 = (v34 + 8);
    a3 = v38;
    do
    {
      v24 = sub_26D2C09F8();
      sub_26D2C09D8();
      if (v24)
      {
        (*(v15 + 2))(v17, *&a1 + ((v15[80] + 32) & ~v15[80]) + *(v15 + 9) * v23, TupleTypeMetadata2);
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        *&result = COERCE_DOUBLE(sub_26D2C0C38());
        if (v32 != 8)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          return result;
        }

        v42[0] = *&result;
        (*v36)(v17, v42, TupleTypeMetadata2);
        swift_unknownObjectRelease();
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_12:
          __break(1u);
          goto LABEL_13;
        }
      }

      v10 = v15;
      v26 = v18;
      v27 = *&v17[*(TupleTypeMetadata2 + 48)];
      v28 = *v37;
      (*v37)(a3, v17, a2);
      v20 = v20 + v27;
      if (v22 < v20)
      {
        *&result = COERCE_DOUBLE((v28)(v31, a3, a2));
        return result;
      }

      (*v35)(a3, a2);
      ++v23;
      v18 = v26;
      v15 = v10;
    }

    while (v25 != sub_26D2C0A08());
  }

  v42[0] = a1;
  swift_getWitnessTable();
  v30 = v33;
  sub_26D2C0828();
  *&result = COERCE_DOUBLE((*(v15 + 6))(v30, 1, TupleTypeMetadata2));
  if (result == 1)
  {
    goto LABEL_20;
  }

  *&result = COERCE_DOUBLE((*(v34 + 32))(v31, v30, a2));
  return result;
}

double sub_26D2B5244@<D0>(double *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v4 = *a1;
  result = v4 + *(a2 + *(swift_getTupleTypeMetadata2() + 48));
  *a3 = result;
  return result;
}

uint64_t sub_26D2B52B0(uint64_t a1)
{
  v2 = sub_26D2C0BD8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_26D2B83AC(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_26D2B532C(uint64_t a1)
{
  v2 = 0;
  result = 0;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  do
  {
    if (!v7)
    {
      while (1)
      {
        v9 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v9 >= v8)
        {
          goto LABEL_13;
        }

        v7 = *(v4 + 8 * v9);
        ++v2;
        if (v7)
        {
          v2 = v9;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    v9 = v2;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(a1 + 56) + ((v9 << 9) | (8 * v10)));
    v12 = __OFADD__(result, v11);
    result += v11;
  }

  while (!v12);
  __break(1u);
LABEL_13:
  if (result > 0)
  {
    v13 = sub_26D2B64DC(result);
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(a1 + 64);
    v17 = (v14 + 63) >> 6;

    v18 = 0;
    v19 = 0;
    while (v16)
    {
LABEL_22:
      v21 = __clz(__rbit64(v16)) | (v19 << 6);
      v22 = *(*(a1 + 56) + 8 * v21);
      v12 = __OFADD__(v18, v22);
      v18 += v22;
      if (v12)
      {
        goto LABEL_31;
      }

      v16 &= v16 - 1;
      if (v13 < v18)
      {
        v23 = *(*(a1 + 48) + 16 * v21);

        return v23;
      }
    }

    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {

        result = sub_26D2B5B94(a1);
        if (v24)
        {
          return result;
        }

        __break(1u);
        goto LABEL_27;
      }

      v16 = *(v4 + 8 * v20);
      ++v19;
      if (v16)
      {
        v19 = v20;
        goto LABEL_22;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_27:
  result = sub_26D2B52B0(a1);
  if (v25)
  {
    return result;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t static Randomization.weightedRandomValue<A>(weights:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a4;
  v7 = sub_26D2C0B28();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v73 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v57 - v11;
  v13 = *(a2 - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v64 = v57 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v72 = sub_26D2C0B28();
  v74 = *(v72 - 8);
  v19 = MEMORY[0x28223BE20](v72);
  v66 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v71 = v57 - v21;
  v75 = 0;
  v76 = a1;
  sub_26D2C07F8();

  swift_getWitnessTable();
  sub_26D2C0998();

  if (v77 < 1)
  {
    v52 = v59;
    v77 = a1;
    sub_26D2C07E8();
    swift_getWitnessTable();
    v53 = v73;
    sub_26D2C0AB8();
    result = (*(v13 + 48))(v53, 1, a2);
    if (result != 1)
    {
      return (*(v13 + 32))(v52, v53, a2);
    }

    goto LABEL_27;
  }

  v57[1] = a3;
  v58 = v12;
  v68 = sub_26D2B64DC(v77);
  v22 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a1 + 64);
  v26 = (v23 + 63) >> 6;
  v60 = v13 + 16;
  v73 = (v13 + 32);
  v69 = (v74 + 32);
  v70 = TupleTypeMetadata2 - 8;
  v63 = v13;
  v67 = (v13 + 8);
  v65 = a1;

  v28 = 0;
  v29 = 0;
  v30 = a2;
  v74 = a2;
  v61 = TupleTypeMetadata2;
  v62 = v16;
  v31 = v66;
  if (!v25)
  {
LABEL_6:
    if (v26 <= v29 + 1)
    {
      v33 = v29 + 1;
    }

    else
    {
      v33 = v26;
    }

    v34 = v33 - 1;
    while (1)
    {
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v32 >= v26)
      {
        v25 = 0;
        v45 = 1;
        goto LABEL_14;
      }

      v25 = *(v22 + 8 * v32);
      ++v29;
      if (v25)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  while (1)
  {
    v32 = v29;
LABEL_13:
    v35 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v36 = v35 | (v32 << 6);
    v38 = v64;
    v37 = v65;
    v39 = v63;
    (*(v63 + 16))(v64, *(v65 + 48) + *(v63 + 72) * v36, v30);
    v40 = *(*(v37 + 56) + 8 * v36);
    v41 = v30;
    v42 = *(v61 + 48);
    v43 = *(v39 + 32);
    v31 = v66;
    v44 = v38;
    TupleTypeMetadata2 = v61;
    v43(v66, v44, v41);
    v45 = 0;
    *&v31[v42] = v40;
    v34 = v32;
    v16 = v62;
LABEL_14:
    v46 = *(TupleTypeMetadata2 - 8);
    (*(v46 + 56))(v31, v45, 1, TupleTypeMetadata2);
    v47 = v71;
    (*v69)(v71, v31, v72);
    if ((*(v46 + 48))(v47, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v48 = *&v47[*(TupleTypeMetadata2 + 48)];
    v49 = v47;
    v50 = *v73;
    result = (*v73)(v16, v49, v74);
    v51 = __OFADD__(v28, v48);
    v28 += v48;
    if (v51)
    {
      goto LABEL_26;
    }

    if (v68 < v28)
    {

      return v50(v59, v16, v74);
    }

    v30 = v74;
    result = (*v67)(v16, v74);
    v29 = v34;
    if (!v25)
    {
      goto LABEL_6;
    }
  }

  v54 = v65;

  v77 = v54;
  v55 = v74;
  sub_26D2C07E8();
  swift_getWitnessTable();
  v56 = v58;
  sub_26D2C0AA8();
  result = (*(v63 + 48))(v56, 1, v55);
  if (result == 1)
  {
    goto LABEL_28;
  }

  return (*v73)(v59, v56, v55);
}

void *sub_26D2B5B78@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
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

uint64_t sub_26D2B5B94(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_26D2B64DC(v2);
  v4 = sub_26D2C0BD8();
  v5 = sub_26D2B827C(v4, *(a1 + 36), 0, v3, a1);
  v7 = v6;
  v9 = v8;
  v10 = sub_26D2B83AC(v5, v6, v8 & 1, a1);

  sub_26D2B9254(v5, v7, v9 & 1);
  return v10;
}

uint64_t static Randomization.randomValue<A>(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26D2C0B28();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v11 - v7;
  v11[1] = a1;
  sub_26D2C0A38();
  swift_getWitnessTable();
  sub_26D2C0AA8();
  v9 = *(a2 - 8);
  result = (*(v9 + 48))(v8, 1, a2);
  if (result != 1)
  {
    return (*(v9 + 32))(a3, v8, a2);
  }

  __break(1u);
  return result;
}

void sub_26D2B5D84(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (__OFADD__(v3, 1))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = a2;
  v15 = MEMORY[0x26D6BA480](v3 + 1, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  while (1)
  {
    sub_26D2B6568(&v16, v5);
    if (a3 == v5)
    {
      break;
    }

    if (__OFADD__(v5++, 1))
    {
      __break(1u);
      break;
    }
  }

  v8 = sub_26D2B8400(v7);

  if (*(v8 + 16) <= *(v15 + 16) >> 3)
  {
    sub_26D2B6648(v8);

    v9 = v15;
  }

  else
  {
    v9 = sub_26D2B6740(v8, v15);
  }

  v10 = *(v9 + 16);
  if (HIDWORD(v10))
  {
    goto LABEL_20;
  }

  v11 = arc4random_uniform(v10);
  v12 = *(v9 + 16);
  if (v12)
  {
    v13 = sub_26D2B63B4(*(v9 + 16), 0);
    v14 = sub_26D2B817C(&v15, v13 + 4, v12, v9);
    sub_26D2B9398(v15);
    if (v14 == v12)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v13 = MEMORY[0x277D84F90];
LABEL_16:
  if (v13[2] > v11)
  {

    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t static Randomization.randomEmailAddress()()
{
  v0 = sub_26D2C06D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D2C06C8();
  v4 = sub_26D2C06B8();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v7 = sub_26D2B85A8(8, v4, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = MEMORY[0x26D6BA2C0](v7, v9, v11, v13);
  v16 = v15;

  v18[0] = v14;
  v18[1] = v16;
  MEMORY[0x26D6BA330](0x632E656C70706140, 0xEA00000000006D6FLL);
  return v18[0];
}

uint64_t static Randomization.randomGivenName(length:)(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = sub_26D2B64DC(5uLL) + 5;
  }

  v3 = sub_26D2B8748(0xD000000000001B5CLL, 0x800000026D2C1A20, 2);
  v4 = sub_26D2B8F2C(v3, a1);

  return v4;
}

uint64_t static Randomization.randomHandle(type:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26D2C06D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (v8 > 1)
  {
    if (v8 == 2 || (v25 = 0, MEMORY[0x26D6BABC0](&v25, 8), (v25 & 0x20000) != 0))
    {
      LOBYTE(v8) = 2;
      goto LABEL_8;
    }

LABEL_6:

    LOBYTE(v8) = 1;
    result = _s15TerminalToolKit13RandomizationO17randomPhoneNumber4withS2S_tFZ_0();
    goto LABEL_11;
  }

  if (*a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  v11 = sub_26D2C0D48();

  if (v11)
  {
    result = _s15TerminalToolKit13RandomizationO17randomPhoneNumber4withS2S_tFZ_0();
  }

  else
  {
    sub_26D2C06C8();
    v12 = sub_26D2C06B8();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    v15 = sub_26D2B85A8(8, v12, v14);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22 = MEMORY[0x26D6BA2C0](v15, v17, v19, v21);
    v24 = v23;

    v25 = v22;
    v26 = v24;
    MEMORY[0x26D6BA330](0x632E656C70706140, 0xEA00000000006D6FLL);
    result = v25;
    v10 = v26;
  }

LABEL_11:
  *a2 = v8;
  *(a2 + 8) = result;
  *(a2 + 16) = v10;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

uint64_t static Randomization.randomSurname(length:)(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = sub_26D2B64DC(5uLL) + 5;
  }

  v3 = sub_26D2B8748(0xD000000000001BCELL, 0x800000026D2C3580, 2);
  v4 = sub_26D2B8F2C(v3, a1);

  return v4;
}

unint64_t sub_26D2B6384@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26D2B929C(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

void *sub_26D2B63B4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A38, &qword_26D2C1308);
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

void sub_26D2B6438(uint64_t a1, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = 0;
  MEMORY[0x26D6BABC0](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    sub_26D2B6438(a1, a2, a3);
  }
}

unint64_t sub_26D2B64DC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x26D6BABC0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x26D6BABC0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D2B6568(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_26D2C0D88();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_26D2B770C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_26D2B6648(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_26D2B6B9C(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_26D2B6740(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v53 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v47 = a1;
    v48 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v46 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v47;
          v16 = v48;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v48 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v47;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v4 = *(*(v15 + 48) + ((v48 << 9) | (8 * v18)));
        v19 = sub_26D2C0D88();
        v20 = -1 << *(v6 + 32);
        v5 = v19 & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
      }

      while (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (*(v21 + 8 * v5) == v4)
      {
        break;
      }

      while (1)
      {
        v5 = (v5 + 1) & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
        if (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v5) == v4)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v50 = v46;
    v51 = v48;
    v52 = v11;
    v49[0] = v47;
    v49[1] = v8;
    v4 = (63 - v20) >> 6;
    v14 = 8 * v4;

    if (v4 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v40 = swift_slowAlloc();
      memcpy(v40, (v6 + 56), v14);
      v41 = sub_26D2B6EB0(v40, v4, v6, v5, v49);

      MEMORY[0x26D6BABA0](v40, -1, -1);
      v2 = v49[0];
      v46 = v50;
      v48 = v51;
      v6 = v41;
      goto LABEL_41;
    }

LABEL_18:
    v43 = v4;
    v44 = &v42;
    MEMORY[0x28223BE20](v22);
    v5 = &v42 - v23;
    memcpy(&v42 - v23, (v6 + 56), v14);
    v24 = *(v6 + 16);
    *(v5 + 8 * v3) &= ~v2;
    v25 = v24 - 1;
    v14 = -1;
    v4 = 1;
    v2 = v47;
LABEL_19:
    v45 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v2 + 48) + ((v48 << 9) | (8 * v29)));
      v30 = sub_26D2C0D88();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) != 0)
      {
        v35 = *(v6 + 48);
        if (*(v35 + 8 * v32) == v3)
        {
LABEL_20:
          v26 = *(v5 + 8 * v33);
          *(v5 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v45 - 1;
            if (__OFSUB__(v45, 1))
            {
              __break(1u);
            }

            if (v45 == 1)
            {

              v6 = MEMORY[0x277D84FA0];
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) == 0)
            {
              break;
            }

            if (*(v35 + 8 * v32) == v3)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v48;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v48 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v48 + 1)
    {
      v37 = v48 + 1;
    }

    else
    {
      v37 = v12;
    }

    v48 = v37 - 1;
    v6 = sub_26D2B706C(v5, v43, v45, v6);
LABEL_41:
    v38 = v2;
LABEL_43:
    sub_26D2B9398(v38);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v6;
}

uint64_t sub_26D2B6B9C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_26D2C0D88();
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
    sub_26D2B7258();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_26D2B7588(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_26D2B6C8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A70, &qword_26D2C13A0);
  result = sub_26D2C0C08();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_26D2C0D88();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26D2B6EB0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
  while (1)
  {
    v13 = a5[3];
    v14 = a5[4];
    if (!v14)
    {
      break;
    }

    v15 = a5[3];
LABEL_9:
    v18 = *(*(*a5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    a5[3] = v15;
    a5[4] = (v14 - 1) & v14;
    result = sub_26D2C0D88();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 8 * v20) == v18)
      {
LABEL_2:
        v12 = v8[v21];
        v8[v21] = v12 & ~v22;
        if ((v12 & v22) != 0)
        {
          if (__OFSUB__(v10--, 1))
          {
LABEL_23:
            __break(1u);
            return result;
          }

          if (!v10)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 8 * v20) == v18)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v16 = (a5[2] + 64) >> 6;
  v17 = a5[3];
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v16)
    {
      break;
    }

    v14 = *(a5[1] + 8 * v15);
    ++v17;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (v16 <= v13 + 1)
  {
    v26 = v13 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_26D2B706C(v8, a2, v10, a3);
}

uint64_t sub_26D2B706C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A70, &qword_26D2C13A0);
  result = sub_26D2C0C18();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_26D2C0D88();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_26D2B7258()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A70, &qword_26D2C13A0);
  v2 = *v0;
  v3 = sub_26D2C0BF8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

uint64_t sub_26D2B7398(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A70, &qword_26D2C13A0);
  result = sub_26D2C0C08();
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_26D2C0D88();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

unint64_t sub_26D2B7588(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_26D2C0BE8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_26D2C0D88() & v7;
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

uint64_t sub_26D2B770C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26D2B6C8C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_26D2B7258();
      a2 = v7;
      goto LABEL_12;
    }

    sub_26D2B7398(v5 + 1);
  }

  v8 = *v3;
  result = sub_26D2C0D88();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26D2C0D58();
  __break(1u);
  return result;
}

unint64_t sub_26D2B782C(uint64_t a1, uint64_t a2)
{
  sub_26D2C0D98();
  sub_26D2C08B8();
  v4 = sub_26D2C0DC8();

  return sub_26D2B78A4(a1, a2, v4);
}

unint64_t sub_26D2B78A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26D2C0D48())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_26D2B795C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A68, &qword_26D2C1398);
  v34 = v4;
  result = sub_26D2C0C98();
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

      sub_26D2C0D98();
      sub_26D2C08B8();
      result = sub_26D2C0DC8();
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

uint64_t sub_26D2B7BFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A60, &qword_26D2C1390);
  v34 = v4;
  result = sub_26D2C0C98();
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

      sub_26D2C0D98();
      sub_26D2C08B8();
      result = sub_26D2C0DC8();
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

void *sub_26D2B7EA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A68, &qword_26D2C1398);
  v2 = *v0;
  v3 = sub_26D2C0C88();
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

void *sub_26D2B800C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A60, &qword_26D2C1390);
  v2 = *v0;
  v3 = sub_26D2C0C88();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_26D2B817C(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26D2B827C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0x8000000000000000) == 0)
  {
    if (!a4)
    {
      v16 = result;
      sub_26D2B9260(result, a2, a3 & 1);
      return v16;
    }

    v5 = 0;
    v6 = 1 << *(a5 + 32);
    while ((result & 0x8000000000000000) == 0 && result < v6)
    {
      if (a2 != *(a5 + 36))
      {
        goto LABEL_19;
      }

      v8 = result >> 6;
      v9 = *(a5 + 64 + 8 * (result >> 6));
      if ((v9 & (1 << result)) == 0)
      {
        goto LABEL_19;
      }

      v10 = v9 & (-2 << (result & 0x3F));
      if (v10)
      {
        result = __clz(__rbit64(v10)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = v8 << 6;
        v12 = v8 + 1;
        v13 = (a5 + 72 + 8 * v8);
        while (v12 < (v6 + 63) >> 6)
        {
          v15 = *v13++;
          v14 = v15;
          v11 += 64;
          ++v12;
          if (v15)
          {
            result = __clz(__rbit64(v14)) + v11;
            goto LABEL_5;
          }
        }

        result = 1 << *(a5 + 32);
      }

LABEL_5:
      LODWORD(a2) = *(a5 + 36);
      if (v5++ == a4 - 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26D2B83AC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26D2B8400(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D6BA480](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_26D2B6568(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t _s15TerminalToolKit13RandomizationO17randomPhoneNumber4withS2S_tFZ_0()
{
  sub_26D2B5D84(&unk_287EA8C40, 201, 989);
  v0 = sub_26D2C0D28();
  v2 = v1;
  sub_26D2B5D84(&unk_287EA8CA0, 201, 989);
  v3 = sub_26D2C0D28();
  v5 = v4;
  sub_26D2B5D84(MEMORY[0x277D84F90], 0, 9999);
  v6 = sub_26D2C0D28();
  v8 = v7;
  MEMORY[0x26D6BA330](v0, v2);

  MEMORY[0x26D6BA330](v3, v5);

  MEMORY[0x26D6BA330](v6, v8);

  return 12587;
}

uint64_t sub_26D2B85A8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26D2C08F8();

    return sub_26D2C0968();
  }

  return result;
}

unint64_t sub_26D2B8644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A60, &qword_26D2C1390);
    v3 = sub_26D2C0CA8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26D2B782C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26D2B8748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v111 = a3;
  v3 = sub_26D2B8644(MEMORY[0x277D84F90]);
  v4 = sub_26D2C0898();
  v6 = 0xE000000000000000;
  v119 = 0;
  v120 = 0xE000000000000000;
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  v115 = v4;
  v116 = v5;
  v117 = 0;
  v118 = v7;
  v8 = sub_26D2C0928();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    do
    {
      if (sub_26D2C0818() & 1) != 0 || (sub_26D2C0808())
      {
        MEMORY[0x26D6BA320](v10, v11);
      }

      v10 = sub_26D2C0928();
      v11 = v12;
    }

    while (v12);
    v13 = v119;
    v6 = v120;
  }

  else
  {
    v13 = 0;
  }

  v115 = 32;
  v116 = 0xE100000000000000;
  MEMORY[0x28223BE20](v14);
  v96[2] = &v115;
  v15 = sub_26D2BAB8C(0x7FFFFFFFFFFFFFFFLL, 1, sub_26D2B926C, v96, v13, v6, &v97);
  v99 = *(v15 + 16);
  if (v99)
  {
    v108 = 0;
    v109 = 0;
    v16 = 0;
    v100 = v15 + 32;
    v98 = v15;
    while (1)
    {
      if (v16 >= *(v15 + 16))
      {
        goto LABEL_77;
      }

      v17 = (v100 + 32 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];

      v22 = sub_26D2C0B48();
      v106 = v22;
      v23 = v22 - v111;
      if (__OFSUB__(v22, v111))
      {
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_79;
      }

      if (v23)
      {
        break;
      }

LABEL_14:
      ++v16;

      v15 = v98;
      if (v16 == v99)
      {

        v94 = v108;
        v93 = v109;
        goto LABEL_63;
      }
    }

    if ((v111 & 0x8000000000000000) == 0)
    {
      v24 = 0;
      v104 = v19 >> 14;
      v105 = v18 >> 14;
      v102 = v18;
      v103 = v19;
      v110 = v20;
      v101 = v22 - v111;
      while (1)
      {
        if (v24 >= v23)
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v113 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_65;
        }

        v25 = v24 + v111;
        if (__OFADD__(v24, v111))
        {
          goto LABEL_66;
        }

        v26 = __OFSUB__(v106, v25);
        v27 = v106 - v25;
        if (v26)
        {
          goto LABEL_67;
        }

        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }

        v28 = sub_26D2C0B38();
        if (v29)
        {
          v30 = v18;
        }

        else
        {
          v30 = v28;
        }

        if (v105 > v30 >> 14)
        {
          goto LABEL_69;
        }

        v107 = v24;
        v31 = sub_26D2C0B58();
        v33 = v32;
        v35 = v34;
        v37 = v36;

        v38 = MEMORY[0x26D6BA2C0](v31, v33, v35, v37);
        v40 = v39;

        v41 = sub_26D2C0B38();
        if (v42)
        {
          v41 = v19;
        }

        if (v104 < v41 >> 14)
        {
          goto LABEL_70;
        }

        v43 = sub_26D2C0B58();
        v45 = v44;

        v46 = sub_26D2C0B38();
        if (v47)
        {
          v48 = v45;
        }

        else
        {
          v48 = v46;
        }

        if (v48 >> 14 < v43 >> 14)
        {
          goto LABEL_71;
        }

        v49 = sub_26D2C0B58();
        v51 = v50;
        v53 = v52;
        v55 = v54;

        v112 = MEMORY[0x26D6BA2C0](v49, v51, v53, v55);
        v114 = v56;

        sub_26D2B928C(v109, 0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v115 = v3;
        v59 = sub_26D2B782C(v38, v40);
        v60 = *(v3 + 16);
        v61 = (v58 & 1) == 0;
        v62 = v60 + v61;
        if (__OFADD__(v60, v61))
        {
          goto LABEL_72;
        }

        v63 = v58;
        if (*(v3 + 24) >= v62)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v66 = v115;
            if (v58)
            {
              goto LABEL_46;
            }
          }

          else
          {
            sub_26D2B800C();
            v66 = v115;
            if (v63)
            {
              goto LABEL_46;
            }
          }
        }

        else
        {
          sub_26D2B7BFC(v62, isUniquelyReferenced_nonNull_native);
          v64 = sub_26D2B782C(v38, v40);
          if ((v63 & 1) != (v65 & 1))
          {
            goto LABEL_81;
          }

          v59 = v64;
          v66 = v115;
          if (v63)
          {
            goto LABEL_46;
          }
        }

        v67 = sub_26D2B929C(MEMORY[0x277D84F90]);
        v66[(v59 >> 6) + 8] |= 1 << v59;
        v68 = (v66[6] + 16 * v59);
        *v68 = v38;
        v68[1] = v40;
        *(v66[7] + 8 * v59) = v67;
        v69 = v66[2];
        v26 = __OFADD__(v69, 1);
        v70 = v69 + 1;
        if (v26)
        {
          goto LABEL_75;
        }

        v66[2] = v70;

LABEL_46:
        v71 = v21;
        v72 = v16;
        v3 = v66;
        v73 = v66[7];
        sub_26D2B928C(v108, 0);
        v74 = swift_isUniquelyReferenced_nonNull_native();
        v115 = *(v73 + 8 * v59);
        v75 = v115;
        *(v73 + 8 * v59) = 0x8000000000000000;
        v77 = sub_26D2B782C(v112, v114);
        v78 = *(v75 + 16);
        v79 = (v76 & 1) == 0;
        v80 = v78 + v79;
        if (__OFADD__(v78, v79))
        {
          goto LABEL_73;
        }

        v81 = v76;
        if (*(v75 + 24) >= v80)
        {

          if ((v74 & 1) == 0)
          {
            sub_26D2B7EA4();
          }
        }

        else
        {
          sub_26D2B795C(v80, v74);
          v82 = sub_26D2B782C(v112, v114);
          if ((v81 & 1) != (v83 & 1))
          {
            goto LABEL_81;
          }

          v77 = v82;
        }

        v19 = v103;
        *(v73 + 8 * v59) = v115;

        v84 = *(v73 + 8 * v59);
        if (v81)
        {

          v85 = v107;
        }

        else
        {
          v84[(v77 >> 6) + 8] |= 1 << v77;
          v86 = (v84[6] + 16 * v77);
          v87 = v114;
          *v86 = v112;
          v86[1] = v87;
          *(v84[7] + 8 * v77) = 0;
          v88 = v84[2];
          v26 = __OFADD__(v88, 1);
          v89 = v88 + 1;
          v85 = v107;
          if (v26)
          {
            goto LABEL_76;
          }

          v84[2] = v89;
        }

        v90 = v84[7];
        v91 = *(v90 + 8 * v77);
        v26 = __OFADD__(v91, 1);
        v92 = v91 + 1;
        if (v26)
        {
          goto LABEL_74;
        }

        *(v90 + 8 * v77) = v92;
        v24 = v85 + 1;
        v108 = sub_26D2B3900;
        v109 = sub_26D2B6384;
        v23 = v101;
        v18 = v102;
        v16 = v72;
        v21 = v71;
        if (v113 == v101)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_80:
    __break(1u);
LABEL_81:
    result = sub_26D2C0D68();
    __break(1u);
  }

  else
  {

    v93 = 0;
    v94 = 0;
LABEL_63:
    sub_26D2B928C(v93, 0);
    sub_26D2B928C(v94, 0);
    return v3;
  }

  return result;
}

unint64_t sub_26D2B8E70(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_26D2C08F8();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_26D2C0968();
}

uint64_t sub_26D2B8F2C(uint64_t a1, uint64_t a2)
{
  result = sub_26D2B5B94(a1);
  if (v5)
  {
    v6 = result;
    v7 = v5;
    v30 = result;
    v31 = v5;
    swift_bridgeObjectRetain_n();
    v8 = sub_26D2C08C8();

    if (v8 < a2 && *(a1 + 16))
    {
      v9 = v6;
      do
      {
        sub_26D2B782C(v9, v7);
        if ((v10 & 1) == 0)
        {
          break;
        }

        v12 = sub_26D2B532C(v11);
        v14 = v13;

        v15 = HIBYTE(v14) & 0xF;
        if ((v14 & 0x2000000000000000) == 0)
        {
          v15 = v12 & 0xFFFFFFFFFFFFLL;
        }

        if (!v15)
        {

          __break(1u);
          goto LABEL_13;
        }

        sub_26D2C08E8();
        v16 = sub_26D2C0948();
        v18 = v17;

        MEMORY[0x26D6BA320](v16, v18);

        swift_bridgeObjectRetain_n();
        v19 = sub_26D2C08C8();

        v20 = sub_26D2B8E70(v19, v30, v31);
        v22 = v21;
        v24 = v23;
        v26 = v25;

        v9 = MEMORY[0x26D6BA2C0](v20, v22, v24, v26);
        v7 = v27;

        v28 = sub_26D2C08C8();
      }

      while (v28 < a2 && *(a1 + 16));
    }

    sub_26D2B2374();
    v29 = sub_26D2C0B88();

    return v29;
  }

  else
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Randomization(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Randomization(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_26D2B9254(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_26D2B9260(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_26D2B928C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_26D2B929C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A68, &qword_26D2C1398);
    v3 = sub_26D2C0CA8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26D2B782C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

TerminalToolKit::InputHandle::Kind_optional __swiftcall InputHandle.Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26D2C0CB8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t InputHandle.Kind.rawValue.getter()
{
  v1 = 0x6D754E656E6F6870;
  if (*v0 != 1)
  {
    v1 = 0x6464416C69616D65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636972656E6567;
  }
}

void sub_26D2B9484(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEB00000000726562;
  v5 = 0x6D754E656E6F6870;
  if (v2 != 1)
  {
    v5 = 0x6464416C69616D65;
    v4 = 0xEC00000073736572;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x636972656E6567;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26D2B94F4()
{
  sub_26D2C0D98();
  sub_26D2C08B8();

  return sub_26D2C0DC8();
}

uint64_t sub_26D2B95A8(uint64_t a1)
{
  sub_26D2C08B8();
}

uint64_t sub_26D2B9648(uint64_t a1)
{
  sub_26D2C0D98();
  sub_26D2C08B8();

  return sub_26D2C0DC8();
}

uint64_t sub_26D2B96F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6D754E656E6F6870;
  v4 = 0xEB00000000726562;
  if (v2 != 1)
  {
    v3 = 0x6464416C69616D65;
    v4 = 0xEC00000073736572;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x636972656E6567;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6D754E656E6F6870;
  v8 = 0xEB00000000726562;
  if (*a2 != 1)
  {
    v7 = 0x6464416C69616D65;
    v8 = 0xEC00000073736572;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x636972656E6567;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D2C0D48();
  }

  return v11 & 1;
}

uint64_t InputHandle.value.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t InputHandle.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t InputHandle.normalizedValue.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t InputHandle.normalizedValue.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_26D2B9A3C()
{
  v1 = *v0;
  sub_26D2C0D98();
  MEMORY[0x26D6BA7C0](v1);
  return sub_26D2C0DC8();
}

uint64_t sub_26D2B9AB0(uint64_t a1)
{
  v2 = *v1;
  sub_26D2C0D98();
  MEMORY[0x26D6BA7C0](v2);
  return sub_26D2C0DC8();
}

uint64_t sub_26D2B9AF4()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0x7A696C616D726F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_26D2B9B50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26D2BB854(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26D2B9B90(uint64_t a1)
{
  v2 = sub_26D2BB1BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D2B9BCC(uint64_t a1)
{
  v2 = sub_26D2BB1BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InputHandle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A78, &qword_26D2C13A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v12[2] = *(v1 + 2);
  v12[3] = v9;
  v10 = *(v1 + 3);
  v12[0] = *(v1 + 4);
  v12[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D2BB1BC();
  sub_26D2C0DE8();
  v16 = v8;
  v15 = 0;
  sub_26D2BB210();
  sub_26D2C0D18();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v14 = 1;
  sub_26D2C0D08();
  v13 = 2;
  sub_26D2C0CF8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t InputHandle.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_26D2C08B8();

  sub_26D2C08B8();
  if (!v2)
  {
    return sub_26D2C0DB8();
  }

  sub_26D2C0DB8();

  return sub_26D2C08B8();
}

uint64_t InputHandle.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_26D2C0D98();
  sub_26D2C08B8();

  sub_26D2C08B8();
  sub_26D2C0DB8();
  if (v1)
  {
    sub_26D2C08B8();
  }

  return sub_26D2C0DC8();
}

uint64_t InputHandle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A90, &qword_26D2C13B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D2BB1BC();
  sub_26D2C0DD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  sub_26D2BB2B0();
  sub_26D2C0CE8();
  v9 = v24;
  v22 = 1;
  v10 = sub_26D2C0CD8();
  v12 = v11;
  v20 = v10;
  v21 = 2;
  v13 = sub_26D2C0CC8();
  v15 = v14;
  v16 = *(v6 + 8);
  v19 = v13;
  v16(v8, v5);
  *a2 = v9;
  v17 = v19;
  *(a2 + 8) = v20;
  *(a2 + 16) = v12;
  *(a2 + 24) = v17;
  *(a2 + 32) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D2BA248(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_26D2C0D98();
  sub_26D2C08B8();

  sub_26D2C08B8();
  sub_26D2C0DB8();
  if (v2)
  {
    sub_26D2C08B8();
  }

  return sub_26D2C0DC8();
}

uint64_t static InputHandle.from(_:)@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  v35 = 58;
  v34 = &v35;

  v7 = sub_26D2BAB8C(0x7FFFFFFFFFFFFFFFLL, 1, sub_26D2BB304, v33, a3, a1, v6);
  v36 = v3;
  v8 = *(v7 + 16);
  if (v8)
  {
    v35 = MEMORY[0x277D84F90];
    result = sub_26D2BA95C(0, v8, 0);
    v10 = 0;
    v11 = v35;
    v12 = (v7 + 56);
    while (v10 < *(v7 + 16))
    {
      v13 = *(v12 - 3);
      v14 = *(v12 - 2);
      v15 = *(v12 - 1);
      v16 = *v12;

      v17 = MEMORY[0x26D6BA2C0](v13, v14, v15, v16);
      v19 = v18;

      v35 = v11;
      v21 = v11[2];
      v20 = v11[3];
      if (v21 >= v20 >> 1)
      {
        result = sub_26D2BA95C((v20 > 1), v21 + 1, 1);
        v11 = v35;
      }

      ++v10;
      v11[2] = v21 + 1;
      v22 = &v11[2 * v21];
      v22[4] = v17;
      v22[5] = v19;
      v12 += 4;
      if (v8 == v10)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
LABEL_9:
    v23 = v11[2];
    if ((v23 & 0x7FFFFFFFFFFFFFFELL) == 2)
    {
      v24 = v11[4];
      v25 = v11[5];
      v26 = v11[6];
      v27 = v11[7];
      if (v23 == 3)
      {
        v29 = v11[8];
        v28 = v11[9];
      }

      else
      {
        v29 = 0;
        v28 = 0;
      }

      v30._countAndFlagsBits = v24;
      v30._object = v25;
      result = InputHandle.Kind.init(from:)(v30);
      if (v31)
      {
      }

      else
      {
        *a2 = v35;
        *(a2 + 8) = v26;
        *(a2 + 16) = v27;
        *(a2 + 24) = v29;
        *(a2 + 32) = v28;
      }
    }

    else
    {

      sub_26D2C0728();
      sub_26D2BB35C();
      swift_allocError();
      sub_26D2C0738();
      return swift_willThrow();
    }
  }

  return result;
}

TerminalToolKit::InputHandle::Kind __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> InputHandle.Kind.init(from:)(Swift::String from)
{
  object = from._object;
  countAndFlagsBits = from._countAndFlagsBits;
  v4 = v1;
  v6 = sub_26D2C0898();
  v7 = v5;
  if (v6 == 0x636972656E6567 && v5 == 0xE700000000000000 || (sub_26D2C0D48() & 1) != 0 || v6 == 103 && v7 == 0xE100000000000000 || (sub_26D2C0D48() & 1) != 0)
  {

    *v4 = 0;
    return result;
  }

  if (v6 == 0x656E6F6870 && v7 == 0xE500000000000000 || (sub_26D2C0D48() & 1) != 0 || v6 == 0x6D754E656E6F6870 && v7 == 0xEB00000000726562 || (sub_26D2C0D48() & 1) != 0 || v6 == 112 && v7 == 0xE100000000000000 || (sub_26D2C0D48() & 1) != 0)
  {

    v9 = 1;
LABEL_18:
    *v4 = v9;
    return result;
  }

  if (v6 == 0x6C69616D65 && v7 == 0xE500000000000000 || (sub_26D2C0D48() & 1) != 0 || v6 == 0x6464416C69616D65 && v7 == 0xEC00000073736572 || (sub_26D2C0D48() & 1) != 0 || v6 == 101 && v7 == 0xE100000000000000)
  {

LABEL_26:

    v9 = 2;
    goto LABEL_18;
  }

  v10 = sub_26D2C0D48();

  if (v10)
  {
    goto LABEL_26;
  }

  sub_26D2C0C28();
  MEMORY[0x26D6BA330](0xD00000000000001ALL, 0x800000026D2C51C0);
  MEMORY[0x26D6BA330](countAndFlagsBits, object);

  MEMORY[0x26D6BA330](0xD000000000000069, 0x800000026D2C51E0);
  sub_26D2C0728();
  sub_26D2BB35C();
  swift_allocError();
  sub_26D2C0738();
  return swift_willThrow();
}

char *sub_26D2BA93C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D2BA97C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26D2BA95C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D2BAA80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26D2BA97C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A38, &qword_26D2C1308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_26D2BAA80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7AE8, &unk_26D2C1720);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_26D2BAB8C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_26D2C0968();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_26D2B3D8C(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_26D2B3D8C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_26D2C0948();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_26D2C08D8();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_26D2C08D8();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_26D2C0968();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_26D2B3D8C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_26D2C0968();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_26D2B3D8C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_26D2B3D8C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_26D2C08D8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26D2BAF4C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_26D2C0D48() & 1;
  }
}

uint64_t _s15TerminalToolKit11InputHandleV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  v20 = *(a1 + 3);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = 0x6D754E656E6F6870;
  v11 = 0xEB00000000726562;
  if (v2 != 1)
  {
    v10 = 0x6464416C69616D65;
    v11 = 0xEC00000073736572;
  }

  if (*a1)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0x636972656E6567;
  }

  if (v2)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  v14 = 0x6D754E656E6F6870;
  v15 = 0xEB00000000726562;
  if (*a2 != 1)
  {
    v14 = 0x6464416C69616D65;
    v15 = 0xEC00000073736572;
  }

  if (*a2)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0x636972656E6567;
  }

  if (*a2)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE700000000000000;
  }

  if (v12 == v16 && v13 == v17)
  {
  }

  else
  {
    v18 = sub_26D2C0D48();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if (v3 == v6 && v4 == v7 || (sub_26D2C0D48() & 1) != 0)
  {
    if (v5)
    {
      if (v8 && (v20 == v9 && v5 == v8 || (sub_26D2C0D48() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26D2BB1BC()
{
  result = qword_2804F7A80;
  if (!qword_2804F7A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7A80);
  }

  return result;
}

unint64_t sub_26D2BB210()
{
  result = qword_2804F7A88;
  if (!qword_2804F7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7A88);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_26D2BB2B0()
{
  result = qword_2804F7A98;
  if (!qword_2804F7A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7A98);
  }

  return result;
}

uint64_t sub_26D2BB304(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26D2C0D48() & 1;
  }
}

unint64_t sub_26D2BB35C()
{
  result = qword_2804F7AA0;
  if (!qword_2804F7AA0)
  {
    sub_26D2C0728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7AA0);
  }

  return result;
}

unint64_t sub_26D2BB3B8()
{
  result = qword_2804F7AA8;
  if (!qword_2804F7AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7AA8);
  }

  return result;
}

unint64_t sub_26D2BB410()
{
  result = qword_2804F7AB0;
  if (!qword_2804F7AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F7AB8, &qword_26D2C14A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7AB0);
  }

  return result;
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

unint64_t sub_26D2BB4C0()
{
  result = qword_2804F7AC0;
  if (!qword_2804F7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7AC0);
  }

  return result;
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

uint64_t sub_26D2BB528(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D2BB570(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ASCIIEmojis(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASCIIEmojis(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26D2BB750()
{
  result = qword_2804F7AC8;
  if (!qword_2804F7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7AC8);
  }

  return result;
}

unint64_t sub_26D2BB7A8()
{
  result = qword_2804F7AD0;
  if (!qword_2804F7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7AD0);
  }

  return result;
}

unint64_t sub_26D2BB800()
{
  result = qword_2804F7AD8;
  if (!qword_2804F7AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7AD8);
  }

  return result;
}

uint64_t sub_26D2BB854(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_26D2C0D48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_26D2C0D48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7A696C616D726F6ELL && a2 == 0xEF65756C61566465)
  {

    return 2;
  }

  else
  {
    v6 = sub_26D2C0D48();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_26D2BB970()
{
  result = qword_2804F7AE0;
  if (!qword_2804F7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7AE0);
  }

  return result;
}

uint64_t sub_26D2BB9D4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_26D2C0A88();
  if (!v19)
  {
    return sub_26D2C09E8();
  }

  v41 = v19;
  v45 = sub_26D2C0C68();
  v32 = sub_26D2C0C78();
  sub_26D2C0C48();
  result = sub_26D2C0A78();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_26D2C0AC8();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_26D2C0C58();
      result = sub_26D2C0A98();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array.chunked(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D2C0A08();
  if (a1)
  {
    v11[7] = 0;
    v11[8] = result;
    v11[9] = a1;
    MEMORY[0x28223BE20](result);
    v11[2] = a3;
    v11[3] = a2;
    v11[4] = a1;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7AF0, &qword_26D2C1730);
    v8 = sub_26D2C0A38();
    v9 = sub_26D2BC6D8();
    return sub_26D2BBFE4(sub_26D2BBFC0, v11, v7, v8, MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_26D2BBEEC@<X0>(uint64_t *result@<X0>, uint64_t a3@<X2>, uint64_t **a5@<X8>)
{
  v5 = *result;
  v6 = *result + a3;
  if (__OFADD__(*result, a3))
  {
    __break(1u);
  }

  else
  {
    result = sub_26D2C0A08();
    if (result >= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = result;
    }

    if (v8 >= v5)
    {
      sub_26D2C0A58();
      sub_26D2C0BB8();
      swift_getWitnessTable();
      result = sub_26D2C0A48();
      *a5 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26D2BBFE4(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v42 - v18;
  v19 = sub_26D2C0B28();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_26D2C0988();
  v63 = sub_26D2C0C68();
  v58 = sub_26D2C0C78();
  sub_26D2C0C48();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_26D2C0978();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_26D2C0B68();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_26D2C0C58();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_26D2C0B68();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_26D2C0C58();
      sub_26D2C0B68();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

unint64_t sub_26D2BC6D8()
{
  result = qword_2804F7AF8;
  if (!qword_2804F7AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F7AF0, &qword_26D2C1730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7AF8);
  }

  return result;
}

uint64_t Array<A>.description(hashSensitiveValues:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = sub_26D2C0888();
  MEMORY[0x28223BE20](v6 - 8);
  v26 = a3;
  v27 = a4;
  v7 = sub_26D2C0A38();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7B00, qword_26D2C1738);
  WitnessTable = swift_getWitnessTable();
  sub_26D2BB9D4(sub_26D2BC978, v25, v7, v8, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);
  v11 = objc_opt_self();
  v12 = sub_26D2C09C8();

  v24 = 0;
  v13 = [v11 dataWithJSONObject:v12 options:11 error:&v24];

  v14 = v24;
  if (v13)
  {
    v15 = sub_26D2C0658();
    v17 = v16;

    sub_26D2C0878();
    v18 = sub_26D2C0858();
    v20 = v19;
    sub_26D2BC9D0(v15, v17);
    if (!v20)
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v18 = 0xD000000000000010;
    v21 = v14;
    v22 = sub_26D2C0618();

    swift_willThrow();
    MEMORY[0x26D6BAAB0](v22);
  }

  return v18;
}

uint64_t sub_26D2BC978@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 8))(0, *(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_26D2BC9D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t ASCIIEmojis.rawValue.getter()
{
  v1 = 0x676E696E726177;
  if (*v0 != 1)
  {
    v1 = 0x6B616C66776F6E73;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701996902;
  }
}

Swift::Void __swiftcall printWithColors(_:stripColors:terminator:replaceLine:)(Swift::String _, Swift::Bool stripColors, Swift::String terminator, Swift::Bool replaceLine)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  if (!stripColors)
  {

    if (!replaceLine)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v8 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
  v9 = sub_26D2C08C8();
  v10 = sub_26D2C0838();
  v11 = sub_26D2C0838();
  v12 = [v8 stringByReplacingMatchesInString:v10 options:0 range:0 withTemplate:{v9, v11}];

  v13 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v14 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
  v15 = sub_26D2C08C8();
  v16 = sub_26D2C0838();
  v17 = sub_26D2C0838();
  v18 = [v14 stringByReplacingMatchesInString:v16 options:0 range:0 withTemplate:{v15, v17}];

  countAndFlagsBits = sub_26D2C0848();
  object = v19;

  if (replaceLine)
  {
LABEL_5:
    MEMORY[0x26D6BA330](countAndFlagsBits, object);

    countAndFlagsBits = 0x4B5B1B41315B1BLL;
    object = 0xE700000000000000;
  }

LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A28, &qword_26D2C1280);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26D2C1270;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 32) = countAndFlagsBits;
  *(v20 + 40) = object;
  sub_26D2C0D78();
}

uint64_t sub_26D2BCD38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6D30333B305B1BLL;
  v3 = a1;
  v4 = 0xE700000000000000;
  if (a1 <= 3u)
  {
    v11 = 0x6D32333B305B1BLL;
    if (a1 != 2)
    {
      v11 = 0x6D33333B305B1BLL;
    }

    v12 = 0x6D31333B305B1BLL;
    if (!a1)
    {
      v12 = 0x6D30333B305B1BLL;
    }

    if (a1 <= 1u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }

    v10 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x6D36333B305B1BLL;
    v6 = 0xE700000000000000;
    v7 = 0x6D37333B305B1BLL;
    if (a1 != 7)
    {
      v7 = 0x6D303B305B1BLL;
      v6 = 0xE600000000000000;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x6D34333B305B1BLL;
    if (a1 != 4)
    {
      v8 = 0x6D35333B305B1BLL;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v3 <= 5)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    v13 = 0xE700000000000000;
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0x32333B305B1BLL;
      }

      else
      {
        v14 = 0x33333B305B1BLL;
      }
    }

    else
    {
      if (!a2)
      {
        goto LABEL_37;
      }

      v14 = 0x31333B305B1BLL;
    }
  }

  else if (a2 <= 5u)
  {
    v13 = 0xE700000000000000;
    if (a2 == 4)
    {
      v14 = 0x34333B305B1BLL;
    }

    else
    {
      v14 = 0x35333B305B1BLL;
    }
  }

  else
  {
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v13 = 0xE700000000000000;
        v14 = 0x37333B305B1BLL;
        goto LABEL_40;
      }

      v13 = 0xE600000000000000;
      v2 = 0x6D303B305B1BLL;
LABEL_37:
      if (v9 != v2)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    v13 = 0xE700000000000000;
    v14 = 0x36333B305B1BLL;
  }

LABEL_40:
  if (v9 != (v14 & 0xFFFFFFFFFFFFLL | 0x6D000000000000))
  {
LABEL_43:
    v15 = sub_26D2C0D48();
    goto LABEL_44;
  }

LABEL_41:
  if (v10 != v13)
  {
    goto LABEL_43;
  }

  v15 = 1;
LABEL_44:

  return v15 & 1;
}

uint64_t sub_26D2BCF84(uint64_t a1, unsigned __int8 a2)
{
  sub_26D2C08B8();
}

uint64_t static ANSIColors.+ infix(_:_:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = 0x6D30333B305B1BLL;
  v5 = 0x6D36333B305B1BLL;
  v6 = 0x6D37333B305B1BLL;
  if (v3 != 7)
  {
    v6 = 0x6D303B305B1BLL;
  }

  if (v3 != 6)
  {
    v5 = v6;
  }

  v7 = 0x6D34333B305B1BLL;
  if (v3 != 4)
  {
    v7 = 0x6D35333B305B1BLL;
  }

  if (*a1 <= 5u)
  {
    v5 = v7;
  }

  v8 = 0x6D32333B305B1BLL;
  if (v3 != 2)
  {
    v8 = 0x6D33333B305B1BLL;
  }

  if (*a1)
  {
    v4 = 0x6D31333B305B1BLL;
  }

  if (*a1 > 1u)
  {
    v4 = v8;
  }

  if (*a1 <= 3u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v13 = v9;

  MEMORY[0x26D6BA330](a2, a3);

  MEMORY[0x26D6BA330](0x6D303B305B1BLL, 0xE600000000000000);

  return v13;
}

uint64_t ANSIColors.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6D30333B305B1BLL;
    v7 = 0x6D32333B305B1BLL;
    if (v1 != 2)
    {
      v7 = 0x6D33333B305B1BLL;
    }

    if (*v0)
    {
      v6 = 0x6D31333B305B1BLL;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6D36333B305B1BLL;
    v3 = 0x6D37333B305B1BLL;
    if (v1 != 7)
    {
      v3 = 0x6D303B305B1BLL;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6D34333B305B1BLL;
    if (v1 != 4)
    {
      v4 = 0x6D35333B305B1BLL;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

void static ANSIColors.+ infix(_:_:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = *a3;
  v4 = 0xE700000000000000;
  if (v3 <= 3)
  {
    v11 = 0x6D30333B305B1BLL;
    v12 = 0x6D32333B305B1BLL;
    if (v3 != 2)
    {
      v12 = 0x6D33333B305B1BLL;
    }

    if (*a3)
    {
      v11 = 0x6D31333B305B1BLL;
    }

    if (*a3 <= 1u)
    {
      v9 = v11;
    }

    else
    {
      v9 = v12;
    }

    v10 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x6D36333B305B1BLL;
    v6 = 0xE700000000000000;
    v7 = 0x6D37333B305B1BLL;
    if (v3 != 7)
    {
      v7 = 0x6D303B305B1BLL;
      v6 = 0xE600000000000000;
    }

    if (v3 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x6D34333B305B1BLL;
    if (v3 != 4)
    {
      v8 = 0x6D35333B305B1BLL;
    }

    if (*a3 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (*a3 <= 5u)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = v4;
    }
  }

  MEMORY[0x26D6BA330](v9, v10);
}

TerminalToolKit::ANSIColors_optional __swiftcall ANSIColors.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26D2C0CB8();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26D2BD538()
{
  v1 = *v0;
  sub_26D2C0D98();
  sub_26D2BCF84(v3, v1);
  return sub_26D2C0DC8();
}

uint64_t sub_26D2BD588(uint64_t a1)
{
  v2 = *v1;
  sub_26D2C0D98();
  sub_26D2BCF84(v4, v2);
  return sub_26D2C0DC8();
}

uint64_t sub_26D2BD5D8@<X0>(uint64_t *a1@<X8>)
{
  result = ANSIColors.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

TerminalToolKit::ASCIIEmojis_optional __swiftcall ASCIIEmojis.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26D2C0CB8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26D2BD65C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x676E696E726177;
  if (v2 != 1)
  {
    v4 = 0x6B616C66776F6E73;
    v3 = 0xE900000000000065;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701996902;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x676E696E726177;
  if (*a2 != 1)
  {
    v8 = 0x6B616C66776F6E73;
    v7 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701996902;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D2C0D48();
  }

  return v11 & 1;
}

uint64_t sub_26D2BD760()
{
  sub_26D2C0D98();
  sub_26D2C08B8();

  return sub_26D2C0DC8();
}

uint64_t sub_26D2BD800(uint64_t a1)
{
  sub_26D2C08B8();
}

uint64_t sub_26D2BD88C(uint64_t a1)
{
  sub_26D2C0D98();
  sub_26D2C08B8();

  return sub_26D2C0DC8();
}

void sub_26D2BD934(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x676E696E726177;
  if (v2 != 1)
  {
    v5 = 0x6B616C66776F6E73;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701996902;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::String __swiftcall stripAttributes(from:)(Swift::String from)
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v2 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
  v3 = sub_26D2C08C8();
  v4 = sub_26D2C0838();
  v5 = sub_26D2C0838();
  v6 = [v2 stringByReplacingMatchesInString:v4 options:0 range:0 withTemplate:{v3, v5}];

  v7 = sub_26D2C0848();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::Void __swiftcall printProgressBar(prefixString:completed:total:stripColors:)(Swift::String prefixString, Swift::Int completed, Swift::Int total, Swift::Bool stripColors)
{
  object = prefixString._object;
  countAndFlagsBits = prefixString._countAndFlagsBits;
  v53[1] = *MEMORY[0x277D85DE8];
  v53[0] = 0;
  v9 = sub_26D2C0748();
  if (MEMORY[0x26D6BA170](1, v9, v53))
  {
    return;
  }

  v10 = WORD1(v53[0]);
  v11 = completed / total;
  v12 = 0.0;
  if (v11 >= 0.0)
  {
    v12 = completed / total;
  }

  if (v11 <= 1.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7B08, &qword_26D2C1768);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26D2C1270;
  v15 = MEMORY[0x277D83A80];
  *(v14 + 56) = MEMORY[0x277D839F8];
  *(v14 + 64) = v15;
  *(v14 + 32) = v13 * 100.0;
  v16 = sub_26D2C0868();
  v18 = v17;
  v19 = sub_26D2C08C8();
  v20 = sub_26D2C08C8();
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_27;
  }

  v22 = v21 + 4;
  if (__OFADD__(v21, 4))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v23 = sub_26D2C08C8();
  v24 = v23 + 4;
  if (__OFADD__(v23, 4))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v22 < v10)
  {

    MEMORY[0x26D6BA330](8250, 0xE200000000000000);
    MEMORY[0x26D6BA330](countAndFlagsBits, object);

    MEMORY[0x26D6BA330](0x6D303B305B1BLL, 0xE600000000000000);

    MEMORY[0x26D6BA330](v16, v18);

    v25 = v10 - v22;
    if (!__OFSUB__(v10, v22))
    {
LABEL_16:
      v27 = 0x6D34333B305B1BLL;
      v26 = 0xE700000000000000;
      goto LABEL_18;
    }

    __break(1u);
  }

  if (v24 < v10)
  {
    MEMORY[0x26D6BA330](v16, v18);

    MEMORY[0x26D6BA330](0x6D303B305B1BLL, 0xE600000000000000);

    v25 = v10 - v24;
    if (__OFSUB__(v10, v24))
    {
      goto LABEL_33;
    }

    goto LABEL_16;
  }

  v25 = v10 - 2;

  v27 = 0;
  v26 = 0xE000000000000000;
LABEL_18:
  v28 = v13 * v25;
  if (COERCE__INT64(fabs(v28)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v29 = v28;
  v30 = sub_26D2C0938();
  if (__OFSUB__(v25, v29))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  v32 = v30;
  v33 = v31;
  v34 = sub_26D2C0938();
  v36 = v35;

  MEMORY[0x26D6BA330](v34, v36);

  MEMORY[0x26D6BA330](v32, v33);

  MEMORY[0x26D6BA330](93, 0xE100000000000000);

  MEMORY[0x26D6BA330](91, 0xE100000000000000);

  v38 = v27;
  v37 = v26;
  if (stripColors)
  {
    v39 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v40 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
    v41 = sub_26D2C08C8();
    v42 = sub_26D2C0838();
    v43 = sub_26D2C0838();
    v44 = [v40 stringByReplacingMatchesInString:v42 options:0 range:0 withTemplate:{v41, v43}];

    v45 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v46 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
    v47 = sub_26D2C08C8();
    v48 = sub_26D2C0838();

    v49 = sub_26D2C0838();
    v50 = [v46 stringByReplacingMatchesInString:v48 options:0 range:0 withTemplate:{v47, v49}];

    v38 = sub_26D2C0848();
    v37 = v51;
  }

  MEMORY[0x26D6BA330](v38, v37);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A28, &qword_26D2C1280);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_26D2C1270;
  *(v52 + 56) = MEMORY[0x277D837D0];
  *(v52 + 32) = 0x4B5B1B41315B1BLL;
  *(v52 + 40) = 0xE700000000000000;
  sub_26D2C0D78();
}

unint64_t sub_26D2BE0E0()
{
  result = qword_2804F7B10;
  if (!qword_2804F7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7B10);
  }

  return result;
}

unint64_t sub_26D2BE138()
{
  result = qword_2804F7B18;
  if (!qword_2804F7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7B18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ANSIColors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ANSIColors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t readInput<A>(prompt:type:invalidString:noColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v61 = a8;
  v60 = sub_26D2C0608();
  v12 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_26D2C0B28();
  v14 = *(v56 - 8);
  v15 = MEMORY[0x28223BE20](v56);
  v17 = v50 - v16;
  v18 = *(a7 - 8);
  v19 = MEMORY[0x28223BE20](v15);
  v55 = v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v54 = v50 - v21;
  if (a6)
  {
    v57 = v18;
    v58 = v12;
    v53 = v14;
    v22 = objc_allocWithZone(MEMORY[0x277CCAC68]);

    v23 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
    v52 = sub_26D2C08C8();
    v24 = sub_26D2C0838();
    v25 = sub_26D2C0838();
    v26 = [v23 stringByReplacingMatchesInString:v24 options:0 range:0 withTemplate:{v52, v25}];

    v27 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v28 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
    v29 = sub_26D2C08C8();
    v30 = sub_26D2C0838();

    v31 = sub_26D2C0838();
    v32 = [v28 stringByReplacingMatchesInString:v30 options:0 range:0 withTemplate:{v29, v31}];

    a1 = sub_26D2C0848();
    a2 = v33;

    v14 = v53;
    v18 = v57;
    v12 = v58;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A28, &qword_26D2C1280);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_26D2C1270;
  *(v34 + 56) = MEMORY[0x277D837D0];
  *(v34 + 32) = a1;
  *(v34 + 40) = a2;
  sub_26D2C0D78();

  v35 = sub_26D2C0DF8();
  if (!v36)
  {
    return sub_26D2C09E8();
  }

  v64 = v35;
  v65 = v36;
  v62 = 32;
  v63 = 0xE100000000000000;
  v58 = sub_26D2B2374();
  v37 = sub_26D2C0B78();

  v38 = sub_26D2C07D8();
  v62 = v38;
  v39 = *(v37 + 16);
  if (v39)
  {
    v57 = v17;
    v40 = (v12 + 8);
    v41 = (v18 + 48);
    v52 = (v18 + 16);
    v53 = (v18 + 32);
    v50[1] = v37;
    v51 = (v18 + 8);
    v42 = (v14 + 1);
    v43 = (v37 + 40);
    v44 = v59;
    do
    {
      v46 = *v43;
      v64 = *(v43 - 1);
      v65 = v46;

      sub_26D2C05F8();
      sub_26D2C0B98();
      (*v40)(v44, v60);

      v47 = v57;
      sub_26D2C0D38();
      if ((*v41)(v47, 1, a7) == 1)
      {
        (*v42)(v47, v56);
      }

      else
      {
        v45 = v54;
        (*v53)(v54, v47, a7);
        (*v52)(v55, v45, a7);
        sub_26D2C0A38();
        sub_26D2C0A18();
        (*v51)(v45, a7);
      }

      v43 += 2;
      --v39;
    }

    while (v39);

    return v62;
  }

  else
  {
    v49 = v38;

    return v49;
  }
}

Swift::Bool_optional __swiftcall readBool(prompt:noColor:)(Swift::String prompt, Swift::Bool noColor)
{
  v2 = noColor;
  object = prompt._object;
  countAndFlagsBits = prompt._countAndFlagsBits;
  if (noColor)
  {
    v5 = objc_allocWithZone(MEMORY[0x277CCAC68]);

    v6 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
    v7 = sub_26D2C08C8();
    v8 = sub_26D2C0838();
    v9 = sub_26D2C0838();
    v10 = [v6 stringByReplacingMatchesInString:v8 options:0 range:0 withTemplate:{v7, v9}];

    v11 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v12 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
    v13 = sub_26D2C08C8();
    v14 = sub_26D2C0838();

    v15 = sub_26D2C0838();
    v16 = [v12 stringByReplacingMatchesInString:v14 options:0 range:0 withTemplate:{v13, v15}];

    countAndFlagsBits = sub_26D2C0848();
    object = v17;

    v2 = noColor;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7A28, &qword_26D2C1280);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26D2C1270;
  v19 = MEMORY[0x277D837D0];
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 32) = countAndFlagsBits;
  *(v18 + 40) = object;
  sub_26D2C0D78();

  sub_26D2C0DF8();
  if (!v20)
  {
    v25 = 0xD000000000000021;
    v26 = 0x800000026D2C5270;
    if (v2)
    {
      v27 = objc_allocWithZone(MEMORY[0x277CCAC68]);
      v28 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
      v29 = sub_26D2C08C8();
      v30 = sub_26D2C0838();
      v31 = sub_26D2C0838();
      v32 = [v28 stringByReplacingMatchesInString:v30 options:0 range:0 withTemplate:{v29, v31}];

      v33 = objc_allocWithZone(MEMORY[0x277CCAC68]);
      v34 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
      v35 = sub_26D2C08C8();
      v36 = sub_26D2C0838();
      v37 = sub_26D2C0838();
      v38 = [v34 stringByReplacingMatchesInString:v36 options:0 range:0 withTemplate:{v35, v37}];

      v25 = sub_26D2C0848();
      v26 = v39;

      v19 = MEMORY[0x277D837D0];
    }

    goto LABEL_20;
  }

  v21 = sub_26D2C0898();
  v23 = v22;

  if (v21 == 0x65736C6166 && v23 == 0xE500000000000000 || (sub_26D2C0D48() & 1) != 0 || v21 == 28526 && v23 == 0xE200000000000000 || (sub_26D2C0D48() & 1) != 0 || v21 == 48 && v23 == 0xE100000000000000 || (sub_26D2C0D48() & 1) != 0 || v21 == 110 && v23 == 0xE100000000000000 || (sub_26D2C0D48() & 1) != 0)
  {

    return 0;
  }

  if (v21 == 1702195828 && v23 == 0xE400000000000000 || (sub_26D2C0D48() & 1) != 0 || v21 == 7562617 && v23 == 0xE300000000000000 || (sub_26D2C0D48() & 1) != 0 || v21 == 49 && v23 == 0xE100000000000000 || (sub_26D2C0D48() & 1) != 0 || v21 == 121 && v23 == 0xE100000000000000)
  {

    return 1;
  }

  v41 = sub_26D2C0D48();

  if ((v41 & 1) == 0)
  {
    v25 = 0xD000000000000021;
    v26 = 0x800000026D2C5270;
    if (v2)
    {
      v42 = objc_allocWithZone(MEMORY[0x277CCAC68]);
      v43 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
      v44 = sub_26D2C08C8();
      v45 = sub_26D2C0838();
      v46 = sub_26D2C0838();
      v47 = [v43 stringByReplacingMatchesInString:v45 options:0 range:0 withTemplate:{v44, v46}];

      v48 = objc_allocWithZone(MEMORY[0x277CCAC68]);
      v49 = sub_26D2B3824(0xD000000000000021, 0x800000026D2C19A0, 1);
      v50 = sub_26D2C08C8();
      v51 = sub_26D2C0838();
      v52 = sub_26D2C0838();
      v53 = [v49 stringByReplacingMatchesInString:v51 options:0 range:0 withTemplate:{v50, v52}];

      v25 = sub_26D2C0848();
      v26 = v54;
    }

LABEL_20:
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_26D2C1270;
    *(v40 + 56) = v19;
    *(v40 + 32) = v25;
    *(v40 + 40) = v26;
    sub_26D2C0D78();

    return 2;
  }

  return 1;
}

uint64_t performAndTime(_:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_26D2C07C8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26D2BF180, 0, 0);
}

uint64_t sub_26D2BF180()
{
  v1 = *(v0 + 16);
  sub_26D2C07B8();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_26D2BF274;

  return v4();
}

uint64_t sub_26D2BF274()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_26D2BF48C;
  }

  else
  {
    v2 = sub_26D2BF388;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

unint64_t sub_26D2BF388()
{
  sub_26D2C07B8();
  v1 = sub_26D2C07A8();
  result = sub_26D2C07A8();
  v3 = v1 - result;
  if (v1 < result)
  {
    __break(1u);
  }

  else
  {
    v4 = v0[7];
    v5 = v0[4];
    v6 = round(v3 / 1000000000.0 * 100.0) / 100.0;
    v7 = *(v0[5] + 8);
    v7(v0[6], v5);
    v7(v4, v5);

    v8 = v0[1];
    v9.n128_f64[0] = v6;

    return v8(v9);
  }

  return result;
}

uint64_t sub_26D2BF48C()
{
  (*(v0[5] + 8))(v0[7], v0[4]);

  v1 = v0[1];

  return v1();
}

Swift::Double __swiftcall Double.rounded(toPlaces:)(Swift::Int toPlaces)
{
  v2 = v1;
  v3 = __exp10(toPlaces);
  return round(v3 * v2) / v3;
}

unint64_t performAndTime(_:)(uint64_t (*a1)(uint64_t))
{
  v3 = sub_26D2C07C8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = sub_26D2C07B8();
  a1(v10);
  if (v1)
  {
    return (*(v4 + 8))(v9, v3);
  }

  sub_26D2C07B8();
  v12 = sub_26D2C07A8();
  result = sub_26D2C07A8();
  if (v12 < result)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v4 + 8);
    v13(v7, v3);
    return (v13)(v9, v3);
  }

  return result;
}

uint64_t performAndTime<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_26D2C07C8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26D2BF7B8, 0, 0);
}

uint64_t sub_26D2BF7B8(uint64_t a1)
{
  v2 = v1[3];
  sub_26D2C07B8();
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  v1[9] = v3;
  *v3 = v1;
  v3[1] = sub_26D2BF8B4;
  v4 = v1[2];

  return v6(v4);
}

uint64_t sub_26D2BF8B4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_26D2BFACC;
  }

  else
  {
    v2 = sub_26D2BF9C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

unint64_t sub_26D2BF9C8(uint64_t a1)
{
  sub_26D2C07B8();
  v2 = sub_26D2C07A8();
  result = sub_26D2C07A8();
  v4 = v2 - result;
  if (v2 < result)
  {
    __break(1u);
  }

  else
  {
    v5 = v1[8];
    v6 = v1[5];
    v7 = round(v4 / 1000000000.0 * 100.0) / 100.0;
    v8 = *(v1[6] + 8);
    v8(v1[7], v6);
    v8(v5, v6);

    v9 = v1[1];
    v10.n128_f64[0] = v7;

    return v9(v10);
  }

  return result;
}

uint64_t sub_26D2BFACC()
{
  (*(v0[6] + 8))(v0[8], v0[5]);

  v1 = v0[1];

  return v1();
}

unint64_t performAndTime<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_26D2C07C8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v11 = sub_26D2C07B8();
  a2(v11);
  if (v2)
  {
    return (*(v5 + 8))(v10, v4);
  }

  sub_26D2C07B8();
  v13 = sub_26D2C07A8();
  result = sub_26D2C07A8();
  if (v13 < result)
  {
    __break(1u);
  }

  else
  {
    v14 = *(v5 + 8);
    v14(v8, v4);
    return (v14)(v10, v4);
  }

  return result;
}

uint64_t runCommand(_:arguments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  sub_26D2C0888();
  v3[12] = swift_task_alloc();
  v4 = sub_26D2C0778();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_26D2C0798();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v6 = sub_26D2C0648();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26D2BFED0, 0, 0);
}

uint64_t sub_26D2BFED0()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v29 = v0[18];
  v31 = v0[17];
  v33 = v0[16];
  v4 = v0[14];
  v5 = v0[15];
  v30 = v0[13];
  v6 = [objc_allocWithZone(MEMORY[0x277CCACB0]) init];
  sub_26D2C0628();
  v7 = sub_26D2C0638();
  (*(v2 + 8))(v1, v3);
  [v6 setExecutableURL_];

  v8 = sub_26D2C09C8();
  [v6 setArguments_];

  v9 = [objc_allocWithZone(MEMORY[0x277CCAC10]) init];
  [v6 setStandardOutput_];
  sub_26D2C039C(0, &qword_2804F7B20, 0x277D85CA0);
  sub_26D2C039C(0, &qword_2804F7B28, 0x277D85C78);
  v10 = sub_26D2C0AD8();
  sub_26D2C0AE8();

  v11 = sub_26D2C0768();
  signal(2, v11);
  swift_getObjectType();
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  v0[6] = sub_26D2C041C;
  v0[7] = v12;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_26D2C0458;
  v0[5] = &block_descriptor;
  v13 = _Block_copy(v0 + 2);
  v14 = v6;
  sub_26D2C0788();
  sub_26D2C04B4();
  sub_26D2C0AF8();
  _Block_release(v13);
  (*(v4 + 8))(v5, v30);
  (*(v31 + 8))(v29, v33);

  sub_26D2C0B18();
  v0[8] = 0;
  v15 = [v14 launchAndReturnError_];
  v16 = v0[8];
  if (v15)
  {
    v17 = v16;
    [v14 waitUntilExit];
    v18 = [v9 fileHandleForReading];
    v19 = [v18 readDataToEndOfFile];

    v20 = sub_26D2C0658();
    v22 = v21;

    sub_26D2C0878();
    v32 = sub_26D2C0858();
    v24 = v23;
    if (v23)
    {
      sub_26D2C0B08();
    }

    sub_26D2BC9D0(v20, v22);

    swift_unknownObjectRelease();

    v25 = v0[1];

    return v25(v32, v24);
  }

  else
  {
    v27 = v16;
    sub_26D2C0618();

    swift_willThrow();
    swift_unknownObjectRelease();

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_26D2C039C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_26D2C03E4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_26D2C041C()
{
  v1 = *(v0 + 16);
  if ([v1 isRunning])
  {
    [v1 terminate];
  }

  abort();
}

uint64_t sub_26D2C0458(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26D2C04B4()
{
  sub_26D2C0778();
  sub_26D2C053C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804F7B38, &unk_26D2C1930);
  sub_26D2C0594();
  return sub_26D2C0BC8();
}

unint64_t sub_26D2C053C()
{
  result = qword_2804F7B30;
  if (!qword_2804F7B30)
  {
    sub_26D2C0778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7B30);
  }

  return result;
}

unint64_t sub_26D2C0594()
{
  result = qword_2804F7B40;
  if (!qword_2804F7B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804F7B38, &unk_26D2C1930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804F7B40);
  }

  return result;
}