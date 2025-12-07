uint64_t sub_1B0D81894@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_1B0E22AF8(*a1, *a2, a2[1], a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

BOOL _s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1B0E46A78() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a2 + 16);
  if (a1[2])
  {
    if (!v7)
    {
      return 0;
    }

    v8 = a1[3];
    v9 = *(a1 + 8) | ((*(a1 + 18) | (*(a1 + 38) << 16)) << 32);
    v10 = *(a2 + 24);
    v11 = *(a2 + 32) | ((*(a2 + 36) | (*(a2 + 38) << 16)) << 32);

    LOBYTE(v8) = sub_1B0C2DB54(v12, v8, v9 & 0xFFFFFFFFFFFFFFLL, v7, v10, v11 & 0xFFFFFFFFFFFFFFLL);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((sub_1B0D319FC(a1[5], *(a2 + 40)) & 1) == 0 || (sub_1B0D319FC(a1[6], *(a2 + 48)) & 1) == 0 || (sub_1B0D319FC(a1[7], *(a2 + 56)) & 1) == 0 || (sub_1B0D319FC(a1[8], *(a2 + 64)) & 1) == 0 || (sub_1B0D319FC(a1[9], *(a2 + 72)) & 1) == 0 || (sub_1B0D319FC(a1[10], *(a2 + 80)) & 1) == 0)
  {
    return 0;
  }

  v13 = a1[12];
  v14 = *(a2 + 96);
  if (v13)
  {
    if (!v14 || (a1[11] != *(a2 + 88) || v13 != v14) && (sub_1B0E46A78() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = a1[14];
  v16 = *(a2 + 112);
  if (v15)
  {
    return v16 && (a1[13] == *(a2 + 104) && v15 == v16 || (sub_1B0E46A78() & 1) != 0);
  }

  return !v16;
}

unint64_t sub_1B0D81AD4()
{
  result = qword_1EB6E7410;
  if (!qword_1EB6E7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7410);
  }

  return result;
}

uint64_t sub_1B0D81B28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0D81B70(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1B0D81BDC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B0E22AF8(*a1, *a2, a2[1], *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

__n128 Expire.dateTime.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 32);
  result = *(v1 + 41);
  *(a1 + 41) = result;
  return result;
}

__n128 Expire.dateTime.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  *(v1 + 32) = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 41) = result;
  return result;
}

void __swiftcall Expire.init(dateTime:)(NIOIMAPCore2::Expire *__return_ptr retstr, NIOIMAPCore2::FullDateTime *dateTime)
{
  v2 = *&dateTime->date.day;
  *&retstr->dateTime.date.year = *&dateTime->date.year;
  *&retstr->dateTime.date.day = v2;
  *&retstr->dateTime.time.minute = *&dateTime->time.minute;
  *(&retstr->dateTime.time.second + 1) = *(&dateTime->time.second + 1);
}

uint64_t Expire.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  MEMORY[0x1B2728D70](*v0);
  MEMORY[0x1B2728D70](v1);
  MEMORY[0x1B2728D70](v2);
  MEMORY[0x1B2728D70](v3);
  MEMORY[0x1B2728D70](v4);
  MEMORY[0x1B2728D70](v5);
  if (v7)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  return MEMORY[0x1B2728D70](v6);
}

uint64_t Expire.hashValue.getter()
{
  sub_1B0E46C28();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  MEMORY[0x1B2728D70](*v0);
  MEMORY[0x1B2728D70](v1);
  MEMORY[0x1B2728D70](v2);
  MEMORY[0x1B2728D70](v3);
  MEMORY[0x1B2728D70](v4);
  MEMORY[0x1B2728D70](v5);
  sub_1B0E46C68();
  if ((v7 & 1) == 0)
  {
    MEMORY[0x1B2728D70](v6);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0D81E14()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 56);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  MEMORY[0x1B2728D70](v2);
  MEMORY[0x1B2728D70](v3);
  MEMORY[0x1B2728D70](v4);
  MEMORY[0x1B2728D70](v5);
  MEMORY[0x1B2728D70](v6);
  sub_1B0E46C68();
  if (v8 != 1)
  {
    MEMORY[0x1B2728D70](v7);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0D81EF4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  MEMORY[0x1B2728D70](*v0);
  MEMORY[0x1B2728D70](v1);
  MEMORY[0x1B2728D70](v2);
  MEMORY[0x1B2728D70](v3);
  MEMORY[0x1B2728D70](v4);
  MEMORY[0x1B2728D70](v5);
  if (v7 == 1)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  return MEMORY[0x1B2728D70](v6);
}

uint64_t sub_1B0D81F94(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = *(v1 + 56);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v2);
  MEMORY[0x1B2728D70](v3);
  MEMORY[0x1B2728D70](v4);
  MEMORY[0x1B2728D70](v5);
  MEMORY[0x1B2728D70](v6);
  MEMORY[0x1B2728D70](v7);
  sub_1B0E46C68();
  if (v9 != 1)
  {
    MEMORY[0x1B2728D70](v8);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0D82070(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s12NIOIMAPCore26ExpireV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t _s12NIOIMAPCore26ExpireV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    if (*(a1 + 56))
    {
      if (*(a2 + 56))
      {
        return 1;
      }
    }

    else if ((*(a2 + 56) & 1) == 0 && *(a1 + 48) == *(a2 + 48))
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1B0D8216C()
{
  result = qword_1EB6E7418;
  if (!qword_1EB6E7418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7418);
  }

  return result;
}

uint64_t sub_1B0D821C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0D821E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 57) = v3;
  return result;
}

uint64_t sub_1B0D82230(unint64_t *a1)
{
  v2 = v1;
  v4 = a1[4];
  if (v4)
  {
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];
    v8 = *(v1 + 20);
    result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v8);
    if (v10)
    {
      v11._countAndFlagsBits = 32;
      v11._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
    }

    v12 = result;
    v13 = *(v1 + 20);
    v14 = __CFADD__(v13, result);
    v15 = v13 + result;
    if (v14)
    {
      goto LABEL_26;
    }

    *(v1 + 20) = v15;
    sub_1B0D85BFC(v4, v5, v6, v7);
    v4 = v12 + v16;
    if (__OFADD__(v12, v16))
    {
      __break(1u);
    }
  }

  result = sub_1B0E21624(a1[3]);
  v17 = v4 + result;
  if (__OFADD__(v4, result))
  {
    goto LABEL_22;
  }

  v18 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v18);
  if (v19)
  {
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = *(v1 + 20);
  v22 = (v21 + result);
  if (__CFADD__(v21, result))
  {
    goto LABEL_23;
  }

  *(v1 + 20) = v22;
  v23 = v17 + result;
  if (__OFADD__(v17, result))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!a1[2])
  {
    v30 = v17 + result;
    goto LABEL_18;
  }

  MEMORY[0x1B2726E80](a1[1]);
  MEMORY[0x1B2726E80](32, 0xE100000000000000);
  v24 = sub_1B0CFC1B0(0x2054455352414843uLL, 0xE800000000000000, v1 + 8, v22);
  if (v25)
  {
    v26._countAndFlagsBits = 0x2054455352414843;
    v26._object = 0xE800000000000000;
    v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v22);
  }

  v27 = v24;

  v28 = *(v2 + 20);
  v14 = __CFADD__(v28, v27);
  v29 = v28 + v27;
  if (v14)
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v29;
  v30 = v23 + v27;
  if (__OFADD__(v23, v27))
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:
  sub_1B0E1C84C(*a1);
  v32 = __OFADD__(v30, v31);
  result = v30 + v31;
  if (v32)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

unint64_t ExtendedSearchOptions.key.getter()
{
  v1 = *v0;
  sub_1B0B23938(*v0);
  return v1;
}

unint64_t ExtendedSearchOptions.key.setter(unint64_t a1)
{
  result = sub_1B0B239C8(*v1);
  *v1 = a1;
  return result;
}

uint64_t ExtendedSearchOptions.charset.getter()
{
  v1 = *(v0 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t ExtendedSearchOptions.charset.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ExtendedSearchOptions.returnOptions.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ExtendedSearchOptions.sourceOptions.getter()
{
  v1 = v0[4];
  sub_1B0D82B0C(v1, v0[5], v0[6], v0[7]);
  return v1;
}

uint64_t ExtendedSearchOptions.sourceOptions.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B0D82BB0(v4[4], v4[5], v4[6], v4[7]);
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
  return result;
}

double ExtendedSearchOptions.init(key:charset:returnOptions:sourceOptions:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  *&v15 = a3;
  *(&v15 + 1) = a4;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  *&v17 = a7;
  *(&v17 + 1) = a8;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a7;
  v18[7] = a8;
  sub_1B0D82C08(&v14, &v13);
  sub_1B0D724B0(v18);
  v10 = v15;
  *a9 = v14;
  a9[1] = v10;
  result = *&v16;
  v12 = v17;
  a9[2] = v16;
  a9[3] = v12;
  return result;
}

uint64_t ExtendedSearchOptions.hash(into:)(uint64_t a1)
{
  v2 = v1;
  SearchKey.hash(into:)(a1, *v2);
  if (v2[2])
  {
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1B0E46C68();
  }

  sub_1B0D453B4(a1, v2[3]);
  v4 = v2[4];
  if (!v4)
  {
    return sub_1B0E46C68();
  }

  v6 = v2[6];
  v5 = v2[7];
  sub_1B0E46C68();
  sub_1B0D48858(a1, v4);
  if (!v6)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();

  return sub_1B0D3B080(a1, v6, v5);
}

uint64_t ExtendedSearchOptions.hashValue.getter()
{
  sub_1B0E46C28();
  ExtendedSearchOptions.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D827B4()
{
  sub_1B0E46C28();
  ExtendedSearchOptions.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D827F8(uint64_t a1)
{
  sub_1B0E46C28();
  ExtendedSearchOptions.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D82834(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s12NIOIMAPCore221ExtendedSearchOptionsV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8) & 1;
}

uint64_t _s12NIOIMAPCore221ExtendedSearchOptionsV23__derived_struct_equalsySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  if ((static SearchKey.__derived_enum_equals(_:_:)(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5 || (a1[1] != a2[1] || v4 != v5) && (sub_1B0E46A78() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((sub_1B0CFE01C(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v7 = a1[4];
  v6 = a1[5];
  v9 = a1[6];
  v8 = a1[7];
  v11 = a2[4];
  v10 = a2[5];
  v13 = a2[6];
  v12 = a2[7];
  if (!v7)
  {
    if (!v11)
    {
      return 1;
    }

    goto LABEL_19;
  }

  if (!v11)
  {
LABEL_19:
    sub_1B0D82B0C(v11, v10, v13, v12);
    sub_1B0D82B0C(v7, v6, v9, v8);
    sub_1B0D82BB0(v7, v6, v9, v8);
    v20 = v11;
    v21 = v10;
    v22 = v13;
    v23 = v12;
LABEL_26:
    sub_1B0D82BB0(v20, v21, v22, v23);
    return 0;
  }

  v14 = sub_1B0D31510(v7, v11);
  v15 = v13;
  v16 = v9;
  if ((v14 & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v9)
  {
    if (v13)
    {
      v17 = sub_1B045202C(v9, v13);
      v15 = v13;
      v16 = v9;
      if (v17)
      {
        sub_1B0D82B0C(v11, v10, v13, v12);
        sub_1B0D82B0C(v7, v6, v9, v8);

        sub_1B0D393EC(v8, v12);
        v19 = v18;

        if (v19)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v15 = 0;
      v16 = v9;
    }

LABEL_24:
    sub_1B0D82B0C(v11, v10, v15, v12);
    sub_1B0D82B0C(v7, v6, v16, v8);

LABEL_25:
    sub_1B03B8738(v10, v13, v12);
    v20 = v7;
    v21 = v6;
    v22 = v9;
    v23 = v8;
    goto LABEL_26;
  }

  if (v13)
  {
    v16 = 0;
    v15 = v13;
    goto LABEL_24;
  }

  sub_1B0D82B0C(v11, v10, 0, v12);
  sub_1B0D82B0C(v7, v6, 0, v8);

LABEL_29:
  sub_1B03B8738(v10, v13, v12);
  sub_1B0D82BB0(v7, v6, v9, v8);
  return 1;
}

uint64_t sub_1B0D82B0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    return sub_1B0D82B64(a2, a3);
  }

  return result;
}

uint64_t sub_1B0D82B64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B0D82BB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_1B03B8738(a2, a3, a4);
  }

  return result;
}

unint64_t sub_1B0D82C44()
{
  result = qword_1EB6E7420;
  if (!qword_1EB6E7420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7420);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore226ExtendedSearchScopeOptionsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore227ExtendedSearchSourceOptionsVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B0D82CC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0D82D10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0D82DA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7428, "0A\a");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ExtendedSearchResponse.returnData.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t ExtendedSearchResponse.init(correlator:kind:returnData:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = *(a1 + 32);
  sub_1B0D82F64(*a1, v8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0AEF11C(v7, v8);

  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
  *(a4 + 24) = v10;
  *(a4 + 32) = v11;
  *(a4 + 33) = a2 & 1;
  *(a4 + 40) = a3;
  return result;
}

double sub_1B0D82F64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t ExtendedSearchResponse.hash(into:)(uint64_t a1)
{
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7430, &qword_1B0EFBC90);
  v62 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v61 = &v55 - v2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v72 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v56 = &v55 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v55 - v7;
  v67 = type metadata accessor for ParameterValue(0);
  MEMORY[0x1EEE9AC00](v67);
  v66 = (&v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F28, "P5\a");
  MEMORY[0x1EEE9AC00](v65);
  v70 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7438, &qword_1B0EFBF30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v64 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7440, &unk_1B0EF3200);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v63 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v55 - v15;
  v71 = type metadata accessor for SearchReturnData(0);
  v16 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v55 - v20;
  v22 = *(v1 + 8);
  v73 = &v55 - v20;
  if (v22)
  {
    v23 = *(v1 + 32);
    v25 = *(v1 + 16);
    v24 = *(v1 + 24);
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0E46C68();
    if (v25)
    {
      MEMORY[0x1B2728D70](v24 | (v24 << 32));
    }

    v21 = v73;
    sub_1B0E46C68();
    if ((v23 & 1) == 0)
    {
      sub_1B0E46C88();
    }
  }

  else
  {
    sub_1B0E46C68();
  }

  MEMORY[0x1B2728D70](*(v1 + 33));
  v26 = *(v1 + 40);
  v27 = *(v26 + 16);
  result = MEMORY[0x1B2728D70](v27);
  if (v27)
  {
    v29 = 0;
    v75 = v26 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v74 = *(v16 + 72);
    v57 = (v72 + 48);
    v62 += 6;
    v30 = &unk_1B0EF3200;
    v72 = v27;
    do
    {
      sub_1B0D857C0(v75 + v74 * v29, v21, type metadata accessor for SearchReturnData);
      sub_1B0D857C0(v21, v18, type metadata accessor for SearchReturnData);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload != 1)
          {
            v40 = v30;
            v41 = v69;
            sub_1B03C60A4(v18, v69, &qword_1EB6E7440, v40);
            MEMORY[0x1B2728D70](2);
            v42 = v63;
            sub_1B03B5C80(v41, v63, &qword_1EB6E7440, v40);
            if ((*v62)(v42, 1, v68) == 1)
            {
              MEMORY[0x1B2728D70](1);
              v43 = v41;
            }

            else
            {
              v49 = v61;
              sub_1B03C60A4(v42, v61, &qword_1EB6E7430, &qword_1B0EFBC90);
              MEMORY[0x1B2728D70](0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
              sub_1B0B0D328();
              sub_1B0E447C8();
              v50 = v49;
              v27 = v72;
              sub_1B0398EFC(v50, &qword_1EB6E7430, &qword_1B0EFBC90);
              v43 = v69;
            }

            sub_1B0398EFC(v43, &qword_1EB6E7440, v40);
            v30 = v40;
            v21 = v73;
            goto LABEL_10;
          }

          v34 = 1;
        }

        else
        {
          v34 = 0;
        }

        MEMORY[0x1B2728D70](v34);
        sub_1B0E46C88();
      }

      else
      {
        if (EnumCaseMultiPayload <= 4)
        {
          v33 = *v18;
          if (EnumCaseMultiPayload == 3)
          {
            MEMORY[0x1B2728D70](3);
            MEMORY[0x1B2728D70](v33);
          }

          else
          {
            MEMORY[0x1B2728D70](4);
            MEMORY[0x1B2728DB0](v33);
          }

          goto LABEL_10;
        }

        if (EnumCaseMultiPayload != 5)
        {
          v44 = v70;
          sub_1B03C60A4(v18, v70, &qword_1EB6E6F28, "P5\a");
          MEMORY[0x1B2728D70](6);
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          v45 = v66;
          sub_1B0D857C0(v44 + *(v65 + 52), v66, type metadata accessor for ParameterValue);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v46 = *v45;
            MEMORY[0x1B2728D70](1);
            MEMORY[0x1B2728D70](*(v46 + 16));
            v47 = *(v46 + 16);
            if (v47)
            {
              v48 = v46 + 40;
              do
              {
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

                v48 += 16;
                --v47;
              }

              while (v47);

              v27 = v72;
              goto LABEL_35;
            }

            v27 = v72;
          }

          else
          {
            v51 = v58;
            sub_1B03C60A4(v45, v58, &qword_1EB6E4050, &unk_1B0EC2B20);
            MEMORY[0x1B2728D70](0);
            v52 = v59;
            sub_1B03B5C80(v51, v59, &qword_1EB6E4050, &unk_1B0EC2B20);
            if ((*v57)(v52, 1, v60) == 1)
            {
              MEMORY[0x1B2728D70](1);
            }

            else
            {
              v53 = v56;
              sub_1B03C60A4(v52, v56, &qword_1EB6E4040, &qword_1B0EC2B10);
              MEMORY[0x1B2728D70](0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
              sub_1B0B0D328();
              sub_1B0E447C8();
              v54 = v53;
              v27 = v72;
              sub_1B0398EFC(v54, &qword_1EB6E4040, &qword_1B0EC2B10);
            }

            sub_1B0398EFC(v51, &qword_1EB6E4050, &unk_1B0EC2B20);
LABEL_35:
            v21 = v73;
          }

          sub_1B0398EFC(v70, &qword_1EB6E6F28, "P5\a");
          goto LABEL_10;
        }

        v35 = v18[8];
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7448, &qword_1B0EF3210);
        v37 = v64;
        sub_1B03C60A4(&v18[*(v36 + 48)], v64, &qword_1EB6E7438, &qword_1B0EFBF30);
        MEMORY[0x1B2728D70](5);
        v38 = v35;
        v27 = v72;
        MEMORY[0x1B2728D70](v38);
        sub_1B0E46C88();
        sub_1B0E46C88();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        v39 = v37;
        v21 = v73;
        sub_1B0398EFC(v39, &qword_1EB6E7438, &qword_1B0EFBF30);
      }

LABEL_10:
      ++v29;
      result = sub_1B0D85828(v21, v31);
    }

    while (v29 != v27);
  }

  return result;
}

uint64_t ExtendedSearchResponse.hashValue.getter()
{
  sub_1B0E46C28();
  ExtendedSearchResponse.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D839DC()
{
  sub_1B0E46C28();
  ExtendedSearchResponse.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D83A20(uint64_t a1)
{
  sub_1B0E46C28();
  ExtendedSearchResponse.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D83A5C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s12NIOIMAPCore222ExtendedSearchResponseV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8) & 1;
}

uint64_t ExtendedSearchResponse.Kind.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

uint64_t ExtendedSearchResponse.matchedUIDs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7438, &qword_1B0EFBF30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  if (*(v1 + 33) == 1)
  {
    sub_1B0D83CA0(v5);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    (*(*(v6 - 8) + 32))(a1, v5, v6);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }
}

uint64_t sub_1B0D83CA0@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v78 = type metadata accessor for SearchReturnData(0);
  v74 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v70 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v64 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v64 - v8;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7430, &qword_1B0EFBC90);
  v10 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v65 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7468, &unk_1B0EF3370);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v68 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v64 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v64 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v71 = &v64 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v64 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v67 = &v64 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v64 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v75 = &v64 - v28;
  v79 = *(v2 + 40);
  v29 = *(v79 + 16);
  v73 = v79;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v29)
  {
    v30 = (v10 + 48);
    v31 = v73 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
    v32 = *(v74 + 72);
    for (i = v29; i; --i)
    {
      sub_1B0D857C0(v31, v9, type metadata accessor for SearchReturnData);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        if ((*v30)(v9, 1, v76) != 1)
        {
          v53 = v65;
          sub_1B03C60A4(v9, v65, &qword_1EB6E7430, &qword_1B0EFBC90);
          sub_1B03C60A4(v53, v26, &qword_1EB6E7438, &qword_1B0EFBF30);
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7438, &qword_1B0EFBF30);
          v55 = *(v54 - 8);
          v56 = *(v55 + 56);
          v56(v26, 0, 1, v54);
          sub_1B0398EFC(v26, &qword_1EB6E7468, &unk_1B0EF3370);
          v57 = v67;
          sub_1B0D847AC(v31, v67);
          v58 = v66;
          sub_1B03B5C80(v57, v66, &qword_1EB6E7468, &unk_1B0EF3370);
          result = (*(v55 + 48))(v58, 1, v54);
          if (result != 1)
          {
            v60 = v75;
            sub_1B03C60A4(v58, v75, &qword_1EB6E7438, &qword_1B0EFBF30);
            sub_1B0398EFC(v57, &qword_1EB6E7468, &unk_1B0EF3370);
            v56(v60, 0, 1, v54);
            sub_1B0398EFC(&v79, &qword_1EB6E7450, &qword_1B0EF3218);
            return sub_1B03C60A4(v60, v72, &qword_1EB6E7438, &qword_1B0EFBF30);
          }

LABEL_28:
          __break(1u);
          return result;
        }

        sub_1B0398EFC(v9, &qword_1EB6E7440, &unk_1B0EF3200);
      }

      else
      {
        sub_1B0D85828(v9, v35);
      }

      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7438, &qword_1B0EFBF30);
      (*(*(v34 - 8) + 56))(v26, 1, 1, v34);
      sub_1B0398EFC(v26, &qword_1EB6E7468, &unk_1B0EF3370);
      v31 += v32;
    }
  }

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7438, &qword_1B0EFBF30);
  v76 = *(v36 - 8);
  v37 = *(v76 + 56);
  v37(v75, 1, 1, v36);
  if (v29)
  {
    v38 = v73 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
    v39 = *(v74 + 72);
    while (1)
    {
      sub_1B0D857C0(v38, v6, type metadata accessor for SearchReturnData);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        break;
      }

      sub_1B0D85828(v6, v40);
      v41 = v77;
      v37(v77, 1, 1, v36);
      sub_1B0398EFC(v41, &qword_1EB6E7468, &unk_1B0EF3370);
      v38 += v39;
      if (!--v29)
      {
        goto LABEL_12;
      }
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7448, &qword_1B0EF3210);
    v46 = v77;
    sub_1B03C60A4(&v6[*(v45 + 48)], v77, &qword_1EB6E7438, &qword_1B0EFBF30);
    v37(v46, 0, 1, v36);
    sub_1B0398EFC(v46, &qword_1EB6E7468, &unk_1B0EF3370);
    v47 = v70;
    sub_1B0D857C0(v38, v70, type metadata accessor for SearchReturnData);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v50 = v68;
    if (EnumCaseMultiPayload == 5)
    {
      v51 = v69;
      sub_1B03C60A4(v47 + *(v45 + 48), v69, &qword_1EB6E7438, &qword_1B0EFBF30);
      v52 = 0;
      v42 = v71;
    }

    else
    {
      sub_1B0D85828(v47, v49);
      v52 = 1;
      v42 = v71;
      v51 = v69;
    }

    v61 = v76;
    v37(v51, v52, 1, v36);
    sub_1B03B5C80(v51, v50, &qword_1EB6E7468, &unk_1B0EF3370);
    v43 = *(v61 + 48);
    result = v43(v50, 1, v36);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_28;
    }

    sub_1B03C60A4(v50, v42, &qword_1EB6E7438, &qword_1B0EFBF30);
    sub_1B0398EFC(v51, &qword_1EB6E7468, &unk_1B0EF3370);
    v37(v42, 0, 1, v36);
    sub_1B0398EFC(&v79, &qword_1EB6E7450, &qword_1B0EF3218);
    v44 = v43(v42, 1, v36);
  }

  else
  {
LABEL_12:
    v42 = v71;
    v37(v71, 1, 1, v36);
    sub_1B0398EFC(&v79, &qword_1EB6E7450, &qword_1B0EF3218);
    v43 = *(v76 + 48);
    v44 = v43(v42, 1, v36);
  }

  if (v44 == 1)
  {
    sub_1B03D06F8();
    sub_1B0E46EE8();
    v62 = v43(v42, 1, v36);
    v63 = v75;
    if (v62 != 1)
    {
      sub_1B0398EFC(v42, &qword_1EB6E7468, &unk_1B0EF3370);
    }
  }

  else
  {
    sub_1B03C60A4(v42, v72, &qword_1EB6E7438, &qword_1B0EFBF30);
    v63 = v75;
  }

  result = v43(v63, 1, v36);
  if (result != 1)
  {
    return sub_1B0398EFC(v63, &qword_1EB6E7468, &unk_1B0EF3370);
  }

  return result;
}

uint64_t ExtendedSearchResponse.matchedSequenceNumbers.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7438, &qword_1B0EFBF30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  if (*(v1 + 33))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4030, &qword_1B0EC2B00);
    v7 = *(*(v6 - 8) + 56);

    return v7(a1, 1, 1, v6);
  }

  else
  {
    sub_1B0D83CA0(v5);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    (*(*(v9 - 8) + 32))(a1, v5, v9);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4030, &qword_1B0EC2B00);
    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }
}

uint64_t sub_1B0D847AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SearchReturnData(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7430, &qword_1B0EFBC90);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  sub_1B0D857C0(a1, v7, type metadata accessor for SearchReturnData);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1B0398EFC(v7, &qword_1EB6E7440, &unk_1B0EF3200);
      v13 = 1;
    }

    else
    {
      sub_1B03C60A4(v7, v11, &qword_1EB6E7430, &qword_1B0EFBC90);
      sub_1B03C60A4(v11, a2, &qword_1EB6E7438, &qword_1B0EFBF30);
      v13 = 0;
    }
  }

  else
  {
    sub_1B0D85828(v7, v12);
    v13 = 1;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7438, &qword_1B0EFBF30);
  return (*(*(v14 - 8) + 56))(a2, v13, 1, v14);
}

uint64_t ExtendedSearchResponse.count.getter(double a1)
{
  v2 = type metadata accessor for SearchReturnData(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v18 = *(v1 + 40);
  v9 = *(v18 + 16);
  v10 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v9)
  {
LABEL_5:
    v14 = 0;
LABEL_8:
    sub_1B0398EFC(&v18, &qword_1EB6E7450, &qword_1B0EF3218);
    return v14;
  }

  v11 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v12 = *(v3 + 72);
  while (1)
  {
    sub_1B0D857C0(v11, v8, type metadata accessor for SearchReturnData);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      break;
    }

    sub_1B0D85828(v8, v13);
    v11 += v12;
    if (!--v9)
    {
      goto LABEL_5;
    }
  }

  sub_1B0D857C0(v11, v5, type metadata accessor for SearchReturnData);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v14 = *v5;
    goto LABEL_8;
  }

  result = sub_1B0D85828(v5, v15);
  __break(1u);
  return result;
}

unint64_t ExtendedSearchResponse.minUID.getter(double a1)
{
  v2 = type metadata accessor for SearchReturnData(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-v7];
  if (*(v1 + 33) != 1)
  {
    goto LABEL_7;
  }

  v19 = *(v1 + 40);
  v9 = *(v19 + 16);
  v10 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v9)
  {
LABEL_6:
    sub_1B0398EFC(&v19, &qword_1EB6E7450, &qword_1B0EF3218);
LABEL_7:
    v14 = 0;
    v15 = 1;
LABEL_8:
    v18[4] = v15;
    return v14 | (v15 << 32);
  }

  v11 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v12 = *(v3 + 72);
  while (1)
  {
    sub_1B0D857C0(v11, v8, type metadata accessor for SearchReturnData);
    if (!swift_getEnumCaseMultiPayload())
    {
      break;
    }

    sub_1B0D85828(v8, v13);
    v11 += v12;
    if (!--v9)
    {
      goto LABEL_6;
    }
  }

  sub_1B0D857C0(v11, v5, type metadata accessor for SearchReturnData);
  if (!swift_getEnumCaseMultiPayload())
  {
    v14 = *v5;
    sub_1B0398EFC(&v19, &qword_1EB6E7450, &qword_1B0EF3218);
    v15 = 0;
    goto LABEL_8;
  }

  result = sub_1B0D85828(v5, v17);
  __break(1u);
  return result;
}

unint64_t ExtendedSearchResponse.minSequenceNumber.getter(double a1)
{
  v2 = type metadata accessor for SearchReturnData(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-v7];
  if (*(v1 + 33))
  {
    goto LABEL_7;
  }

  v19 = *(v1 + 40);
  v9 = *(v19 + 16);
  v10 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v9)
  {
LABEL_6:
    sub_1B0398EFC(&v19, &qword_1EB6E7450, &qword_1B0EF3218);
LABEL_7:
    v14 = 0;
    v15 = 1;
LABEL_8:
    v18[4] = v15;
    return v14 | (v15 << 32);
  }

  v11 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v12 = *(v3 + 72);
  while (1)
  {
    sub_1B0D857C0(v11, v8, type metadata accessor for SearchReturnData);
    if (!swift_getEnumCaseMultiPayload())
    {
      break;
    }

    sub_1B0D85828(v8, v13);
    v11 += v12;
    if (!--v9)
    {
      goto LABEL_6;
    }
  }

  sub_1B0D857C0(v11, v5, type metadata accessor for SearchReturnData);
  if (!swift_getEnumCaseMultiPayload())
  {
    v14 = *v5;
    sub_1B0398EFC(&v19, &qword_1EB6E7450, &qword_1B0EF3218);
    v15 = 0;
    goto LABEL_8;
  }

  result = sub_1B0D85828(v5, v17);
  __break(1u);
  return result;
}

unint64_t ExtendedSearchResponse.maxUID.getter(double a1)
{
  v2 = type metadata accessor for SearchReturnData(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-v7];
  if (*(v1 + 33) != 1)
  {
    goto LABEL_7;
  }

  v19 = *(v1 + 40);
  v9 = *(v19 + 16);
  v10 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v9)
  {
LABEL_6:
    sub_1B0398EFC(&v19, &qword_1EB6E7450, &qword_1B0EF3218);
LABEL_7:
    v14 = 0;
    v15 = 1;
LABEL_8:
    v18[4] = v15;
    return v14 | (v15 << 32);
  }

  v11 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v12 = *(v3 + 72);
  while (1)
  {
    sub_1B0D857C0(v11, v8, type metadata accessor for SearchReturnData);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_1B0D85828(v8, v13);
    v11 += v12;
    if (!--v9)
    {
      goto LABEL_6;
    }
  }

  sub_1B0D857C0(v11, v5, type metadata accessor for SearchReturnData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v5;
    sub_1B0398EFC(&v19, &qword_1EB6E7450, &qword_1B0EF3218);
    v15 = 0;
    goto LABEL_8;
  }

  result = sub_1B0D85828(v5, v17);
  __break(1u);
  return result;
}

unint64_t ExtendedSearchResponse.maxSequenceNumber.getter(double a1)
{
  v2 = type metadata accessor for SearchReturnData(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-v7];
  if (*(v1 + 33))
  {
    goto LABEL_7;
  }

  v19 = *(v1 + 40);
  v9 = *(v19 + 16);
  v10 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v9)
  {
LABEL_6:
    sub_1B0398EFC(&v19, &qword_1EB6E7450, &qword_1B0EF3218);
LABEL_7:
    v14 = 0;
    v15 = 1;
LABEL_8:
    v18[4] = v15;
    return v14 | (v15 << 32);
  }

  v11 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v12 = *(v3 + 72);
  while (1)
  {
    sub_1B0D857C0(v11, v8, type metadata accessor for SearchReturnData);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_1B0D85828(v8, v13);
    v11 += v12;
    if (!--v9)
    {
      goto LABEL_6;
    }
  }

  sub_1B0D857C0(v11, v5, type metadata accessor for SearchReturnData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v5;
    sub_1B0398EFC(&v19, &qword_1EB6E7450, &qword_1B0EF3218);
    v15 = 0;
    goto LABEL_8;
  }

  result = sub_1B0D85828(v5, v17);
  __break(1u);
  return result;
}

uint64_t sub_1B0D852CC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x48435241455345uLL, 0xE700000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x48435241455345;
    v7._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
    goto LABEL_35;
  }

  *(v1 + 20) = v11;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = *(a1 + 32);
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v42[0] = *a1;
    v42[1] = v12;
    v42[2] = v15;
    v42[3] = v14;
    v43 = v13 & 1;
    sub_1B0E19DC0(v42);
    v16 = v8 + result;
    if (__OFADD__(v8, result))
    {
      __break(1u);
LABEL_24:
      v30 = 0;
      v41 = a1;
      goto LABEL_25;
    }
  }

  else
  {
    v16 = result;
  }

  if (*(a1 + 33) == 1)
  {
    v17 = *(v1 + 20);
    result = sub_1B0CFC1B0(0x44495520uLL, 0xE400000000000000, v1 + 8, v17);
    if (v18)
    {
      v19._countAndFlagsBits = 1145656608;
      v19._object = 0xE400000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
    }

    v20 = *(v1 + 20);
    v10 = __CFADD__(v20, result);
    v21 = v20 + result;
    if (v10)
    {
      goto LABEL_43;
    }

    *(v1 + 20) = v21;
  }

  else
  {
    result = 0;
  }

  v22 = __OFADD__(v16, result);
  v16 += result;
  if (v22)
  {
    goto LABEL_36;
  }

  a1 = *(a1 + 40);
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_24;
  }

  v23 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v23);
  if (v24)
  {
    v25._countAndFlagsBits = 32;
    v25._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(v1 + 20);
  v27 = (v26 + result);
  if (__CFADD__(v26, result))
  {
    goto LABEL_39;
  }

  *(v1 + 20) = v27;
  v22 = __OFADD__(v16, result);
  v16 += result;
  if (v22)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return result;
  }

  v41 = a1;
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v27);
  if (v28)
  {
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v29, v27);
  }

  v30 = result;
  v31 = *(v2 + 20);
  v10 = __CFADD__(v31, result);
  v32 = v31 + result;
  if (v10)
  {
    goto LABEL_41;
  }

  *(v2 + 20) = v32;
LABEL_25:
  MEMORY[0x1EEE9AC00](result);
  v40[2] = sub_1B0D855C0;
  v40[3] = 0;
  v40[4] = v2;
  v40[5] = &v41;
  v40[6] = 32;
  v40[7] = 0xE100000000000000;
  result = sub_1B0DE6C3C(0, sub_1B0D8596C, v40, a1);
  v33 = v30 + result;
  if (__OFADD__(v30, result))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v4)
  {
    v39 = v30 + result;
    goto LABEL_31;
  }

  v34 = *(v2 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v34);
  if (v35)
  {
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v36, v34);
  }

  v37 = *(v2 + 20);
  v10 = __CFADD__(v37, result);
  v38 = v37 + result;
  if (v10)
  {
    goto LABEL_42;
  }

  *(v2 + 20) = v38;
  v39 = v33 + result;
  if (__OFADD__(v33, result))
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_31:
  result = v16 + v39;
  if (__OFADD__(v16, v39))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  return result;
}

uint64_t _s12NIOIMAPCore222ExtendedSearchResponseV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  if (!v4)
  {
    if (!v10)
    {
      goto LABEL_7;
    }

LABEL_6:
    sub_1B0D82F64(*a2, *(a2 + 8));
    sub_1B0D82F64(v5, v4);
    sub_1B0AEF11C(v5, v4);
    sub_1B0AEF11C(v9, v10);
    return 0;
  }

  if (!v10)
  {
    goto LABEL_6;
  }

  v20[0] = *a2;
  v20[1] = v10;
  v20[2] = v11;
  v20[3] = v12;
  v21 = v13 & 1;
  v18[0] = v5;
  v18[1] = v4;
  v18[2] = v6;
  v18[3] = v7;
  v19 = v8 & 1;
  v17 = _s12NIOIMAPCore216SearchCorrelatorV23__derived_struct_equalsySbAC_ACtFZ_0(v18, v20);
  sub_1B0D82F64(v9, v10);
  sub_1B0D82F64(v5, v4);

  sub_1B0AEF11C(v5, v4);
  if (!v17)
  {
    return 0;
  }

LABEL_7:
  if (*(a1 + 33) != *(a2 + 33))
  {
    return 0;
  }

  v15 = *(a1 + 40);
  v16 = *(a2 + 40);

  return sub_1B0D314BC(v15, v16);
}

uint64_t sub_1B0D857C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0D85828(uint64_t a1, double a2)
{
  v3 = type metadata accessor for SearchReturnData(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B0D85888()
{
  result = qword_1EB6E7458;
  if (!qword_1EB6E7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7458);
  }

  return result;
}

unint64_t sub_1B0D858E0()
{
  result = qword_1EB6E7460;
  if (!qword_1EB6E7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7460);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore216SearchCorrelatorVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B0D8596C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B0E23DB8(*a1, a2, *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t ExtendedSearchScopeOptions.content.getter(uint64_t a1)
{

  return a1;
}

BOOL static ExtendedSearchScopeOptions.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = 0;
  if (sub_1B045202C(a2, a5))
  {
    sub_1B0D393EC(a3, a6);
    if (v8)
    {
      return 1;
    }
  }

  return result;
}

uint64_t ExtendedSearchScopeOptions.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46C28();
  sub_1B0D3B080(v6, a2, a3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D85AA8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1B0E46C28();
  sub_1B0D3B080(v4, v1, v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D85AFC(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_1B0E46C28();
  sub_1B0D3B080(v5, v2, v3);
  return sub_1B0E46CB8();
}

BOOL sub_1B0D85B44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  result = 0;
  if (sub_1B045202C(*(a1 + 8), *(a2 + 8)))
  {
    sub_1B0D393EC(v2, v3);
    if (v4)
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_1B0D85B98()
{
  result = qword_1EB6E7470;
  if (!qword_1EB6E7470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7470);
  }

  return result;
}

void sub_1B0D85BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v178 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  v177 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v153 - v10;
  v165 = type metadata accessor for ParameterValue(0);
  v184 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v163 = &v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v176);
  v187 = (&v153 - v13);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6570, &unk_1B0EF3540);
  MEMORY[0x1EEE9AC00](v175);
  v174 = (&v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v173 = (&v153 - v16);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F50, &qword_1B0EEEB00);
  MEMORY[0x1EEE9AC00](v172);
  v171 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v170 = (&v153 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v186 = (&v153 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v169 = (&v153 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v168 = &v153 - v25;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E72E8, &qword_1B0EF3550);
  MEMORY[0x1EEE9AC00](v167);
  v166 = (&v153 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v185 = (&v153 - v28);
  v29 = *(v4 + 20);
  v30 = 0;
  v31 = sub_1B0CFC1B0(0x28204E49uLL, 0xE400000000000000, v4 + 8, v29);
  if (v32)
  {
    v33._countAndFlagsBits = 673205833;
    v33._object = 0xE400000000000000;
    v31 = ByteBuffer._setStringSlowpath(_:at:)(v33, v29);
  }

  v34 = v31;
  v35 = *(v4 + 20);
  v36 = (v35 + v31);
  if (__CFADD__(v35, v31))
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  *(v4 + 20) = v36;
  v188 = a1;
  v37 = *(a1 + 16);
  v164 = v11;
  if (v37)
  {
    v31 = sub_1B0CFC1B0(0, 0xE000000000000000, v4 + 8, v36);
    if (v38)
    {
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      v31 = ByteBuffer._setStringSlowpath(_:at:)(v39, v36);
    }

    v40 = v31;
    v41 = *(v5 + 20);
    v42 = __CFADD__(v41, v31);
    v43 = v41 + v31;
    if (v42)
    {
      goto LABEL_87;
    }

    *(v5 + 20) = v43;
  }

  else
  {
    v40 = 0;
  }

  MEMORY[0x1EEE9AC00](v31);
  *(&v153 - 6) = sub_1B0D86B88;
  *(&v153 - 5) = 0;
  *(&v153 - 4) = v5;
  *(&v153 - 3) = &v188;
  *(&v153 - 2) = 32;
  *(&v153 - 1) = 0xE100000000000000;
  v44 = sub_1B0DE6B60(0, sub_1B0D86D3C, (&v153 - 8), a1);
  v45 = v40 + v44;
  if (__OFADD__(v40, v44))
  {
    goto LABEL_82;
  }

  if (v37)
  {
    v46 = *(v5 + 20);
    v47 = sub_1B0CFC1B0(0, 0xE000000000000000, v5 + 8, v46);
    if (v49)
    {
      v50._countAndFlagsBits = 0;
      v50._object = 0xE000000000000000;
      v47 = ByteBuffer._setStringSlowpath(_:at:)(v50, v46);
    }

    v51 = *(v5 + 20);
    v42 = __CFADD__(v51, v47);
    v52 = v51 + v47;
    if (v42)
    {
      goto LABEL_88;
    }

    *(v5 + 20) = v52;
    v53 = v45 + v47;
    if (__OFADD__(v45, v47))
    {
      __break(1u);
LABEL_28:
      v66 = 0;
      goto LABEL_65;
    }
  }

  else
  {
    v53 = v40 + v44;
  }

  v48 = v34 + v53;
  if (__OFADD__(v34, v53))
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (!a3)
  {
    goto LABEL_28;
  }

  v154 = v34 + v53;
  v54 = *(v5 + 20);
  v55 = sub_1B0CFC1B0(0x2820uLL, 0xE200000000000000, v5 + 8, v54);
  if (v56)
  {
    v57._countAndFlagsBits = 10272;
    v57._object = 0xE200000000000000;
    v55 = ByteBuffer._setStringSlowpath(_:at:)(v57, v54);
  }

  v58 = *(v5 + 20);
  v59 = (v58 + v55);
  if (__CFADD__(v58, v55))
  {
    goto LABEL_89;
  }

  *(v5 + 20) = v59;
  v60 = *(v178 + 16);
  v155 = v55;
  if (v60)
  {
    v61 = sub_1B0CFC1B0(0, 0xE000000000000000, v5 + 8, v59);
    if (v62)
    {
      v63._countAndFlagsBits = 0;
      v63._object = 0xE000000000000000;
      v61 = ByteBuffer._setStringSlowpath(_:at:)(v63, v59);
    }

    v64 = *(v5 + 20);
    v42 = __CFADD__(v64, v61);
    v65 = v64 + v61;
    if (v42)
    {
      goto LABEL_94;
    }

    v156 = v61;
    *(v5 + 20) = v65;
  }

  else
  {
    v156 = 0;
  }

  v157 = a2;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v67 = 0;
  if (v60)
  {
    v68 = 0;
    v160 = (v184 + 48);
    v159 = v60 - 1;
    v69 = (a3 + 40);
    v161 = a3;
    v158 = v60;
    v162 = v5;
    while (v68 < *(a3 + 16))
    {
      v182 = v67;
      v70 = v175;
      v71 = *(v175 + 48);
      v180 = v69;
      v72 = *(v69 - 1);
      v73 = *v69;
      v183 = v73;
      v184 = v30;
      v74 = v173;
      *v173 = v72;
      v74[1] = v73;
      sub_1B03B5C80(v178 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v68, v74 + v71, &qword_1EB6E6440, &unk_1B0EF3530);
      v75 = v74;
      v76 = v174;
      sub_1B03C60A4(v75, v174, &qword_1EB6E6570, &unk_1B0EF3540);
      v77 = *(v70 + 48);
      v78 = v172;
      v79 = *(v172 + 48);
      v80 = v76[1];
      v81 = v169;
      *v169 = *v76;
      v81[1] = v80;
      sub_1B03C60A4(v76 + v77, v81 + v79, &qword_1EB6E6440, &unk_1B0EF3530);
      v82 = v81;
      v83 = v168;
      sub_1B03C60A4(v82, v168, &qword_1EB6E6F50, &qword_1B0EEEB00);
      v84 = v167;
      v85 = *(v167 + 48);
      v86 = v185;
      v179 = v68;
      *v185 = v68;
      sub_1B03C60A4(v83, v86 + v85, &qword_1EB6E6F50, &qword_1B0EEEB00);
      v87 = v166;
      sub_1B03B5C80(v86, v166, &qword_1EB6E72E8, &qword_1B0EF3550);
      v181 = *v87;
      v88 = (v87 + *(v84 + 48));
      v89 = *(v78 + 48);
      v90 = *v88;
      v91 = v88[1];
      v92 = v170;
      sub_1B03C60A4(v88 + v89, v170 + v89, &qword_1EB6E6440, &unk_1B0EF3530);
      v93 = *(v78 + 48);
      v94 = v186;
      *v186 = v90;
      v94[1] = v91;
      sub_1B03C60A4(v92 + v89, v94 + v93, &qword_1EB6E6440, &unk_1B0EF3530);
      sub_1B03B5C80(v94, v92, &qword_1EB6E6F50, &qword_1B0EEEB00);
      v95 = *(v78 + 48);
      v96 = v171;
      sub_1B03B5C80(v94, v171, &qword_1EB6E6F50, &qword_1B0EEEB00);
      v97 = *(v78 + 48);
      v99 = *v92;
      v98 = v92[1];
      v5 = v162;
      v100 = v187;
      *v187 = *v92;
      v100[1] = v98;
      v101 = *(v176 + 52);
      sub_1B03C60A4(v96 + v97, v100 + v101, &qword_1EB6E6440, &unk_1B0EF3530);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      sub_1B0398EFC(v92 + v95, &qword_1EB6E6440, &unk_1B0EF3530);
      v102 = *(v5 + 20);
      v30 = v184;
      v103 = sub_1B0CFC1B0(v99, v98, v5 + 8, v102);
      if (v104)
      {
        v105._countAndFlagsBits = v99;
        v105._object = v98;
        v103 = ByteBuffer._setStringSlowpath(_:at:)(v105, v102);
      }

      v106 = v103;
      v107 = *(v5 + 20);
      v108 = (v107 + v103);
      if (__CFADD__(v107, v103))
      {
        goto LABEL_74;
      }

      *(v5 + 20) = v108;
      v109 = v187 + v101;
      v110 = v164;
      sub_1B03B5C80(v109, v164, &qword_1EB6E6440, &unk_1B0EF3530);
      if ((*v160)(v110, 1, v165) == 1)
      {
        sub_1B0398EFC(v110, &qword_1EB6E6440, &unk_1B0EF3530);
        v111 = 0;
        a3 = v161;
      }

      else
      {
        sub_1B0D06280(v110, v163);
        v112 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v5 + 8, v108);
        v113 = v5;
        if (v114)
        {
          v115._countAndFlagsBits = 32;
          v115._object = 0xE100000000000000;
          v112 = ByteBuffer._setStringSlowpath(_:at:)(v115, v108);
        }

        v116 = v112;
        v117 = *(v113 + 20);
        v42 = __CFADD__(v117, v112);
        v118 = v117 + v112;
        a3 = v161;
        if (v42)
        {
          goto LABEL_78;
        }

        *(v113 + 20) = v118;
        v119 = v163;
        v120 = sub_1B0DF818C(v163);
        sub_1B0D06348(v119);
        v111 = v116 + v120;
        if (__OFADD__(v116, v120))
        {
          goto LABEL_79;
        }

        v5 = v113;
      }

      v121 = v106 + v111;
      if (__OFADD__(v106, v111))
      {
        goto LABEL_75;
      }

      sub_1B0398EFC(v187, &qword_1EB6E6F58, &unk_1B0EF5150);
      v122 = v182 + v121;
      if (__OFADD__(v182, v121))
      {
        goto LABEL_76;
      }

      if (v181 >= v159)
      {
        sub_1B0398EFC(v186, &qword_1EB6E6F50, &qword_1B0EEEB00);
        v127 = 0;
      }

      else
      {
        v123 = *(v5 + 20);
        v124 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v5 + 8, v123);
        if (v125)
        {
          v126._countAndFlagsBits = 32;
          v126._object = 0xE100000000000000;
          v124 = ByteBuffer._setStringSlowpath(_:at:)(v126, v123);
        }

        v127 = v124;
        sub_1B0398EFC(v186, &qword_1EB6E6F50, &qword_1B0EEEB00);
        v128 = *(v5 + 20);
        v42 = __CFADD__(v128, v127);
        v129 = v128 + v127;
        if (v42)
        {
          goto LABEL_80;
        }

        *(v5 + 20) = v129;
      }

      v67 = v122 + v127;
      if (__OFADD__(v122, v127))
      {
        goto LABEL_77;
      }

      v68 = v179 + 1;
      sub_1B0398EFC(v185, &qword_1EB6E72E8, &qword_1B0EF3550);
      v69 = v180 + 2;
      v60 = v158;
      if (v158 == v68)
      {
        goto LABEL_53;
      }
    }

    goto LABEL_73;
  }

LABEL_53:

  v130 = __OFADD__(v156, v67);
  v131 = v156 + v67;
  if (v130)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (v60)
  {
    v132 = *(v5 + 20);
    v133 = sub_1B0CFC1B0(0, 0xE000000000000000, v5 + 8, v132);
    if (v134)
    {
      v135._countAndFlagsBits = 0;
      v135._object = 0xE000000000000000;
      v133 = ByteBuffer._setStringSlowpath(_:at:)(v135, v132);
    }

    v136 = *(v5 + 20);
    v42 = __CFADD__(v136, v133);
    v137 = v136 + v133;
    if (v42)
    {
      goto LABEL_95;
    }

    *(v5 + 20) = v137;
    v138 = v131 + v133;
    if (__OFADD__(v131, v133))
    {
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
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }
  }

  else
  {
    v138 = v131;
  }

  v139 = v155 + v138;
  if (__OFADD__(v155, v138))
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v140 = *(v5 + 20);
  v141 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v5 + 8, v140);
  if (v142)
  {
    v143._countAndFlagsBits = 41;
    v143._object = 0xE100000000000000;
    v141 = ByteBuffer._setStringSlowpath(_:at:)(v143, v140);
  }

  v144 = *(v5 + 20);
  v42 = __CFADD__(v144, v141);
  v145 = v144 + v141;
  if (v42)
  {
    goto LABEL_92;
  }

  *(v5 + 20) = v145;
  v66 = v139 + v141;
  if (__OFADD__(v139, v141))
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    return;
  }

  v48 = v154;
LABEL_65:
  v146 = v48 + v66;
  if (__OFADD__(v48, v66))
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v147 = *(v5 + 20);
  v148 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v5 + 8, v147);
  if (v149)
  {
    v150._countAndFlagsBits = 41;
    v150._object = 0xE100000000000000;
    v148 = ByteBuffer._setStringSlowpath(_:at:)(v150, v147);
  }

  v151 = *(v5 + 20);
  v42 = __CFADD__(v151, v148);
  v152 = v151 + v148;
  if (v42)
  {
    goto LABEL_85;
  }

  *(v5 + 20) = v152;
  if (__OFADD__(v146, v148))
  {
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
}

uint64_t ExtendedSearchSourceOptions.init(sourceMailbox:scopeOptions:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(result + 16))
  {
    sub_1B03B8738(a2, a3, a4);

    return 0;
  }

  return result;
}

uint64_t ExtendedSearchSourceOptions.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B0D48858(a1, a2);
  if (!a4)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();

  return sub_1B0D3B080(a1, a4, a5);
}

uint64_t ExtendedSearchSourceOptions.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B0E46C28();
  sub_1B0D48858(v8, a1);
  sub_1B0E46C68();
  if (a3)
  {
    sub_1B0D3B080(v8, a3, a4);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0D869E4()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  sub_1B0E46C28();
  sub_1B0D48858(v5, v1);
  sub_1B0E46C68();
  if (v2)
  {
    sub_1B0D3B080(v5, v2, v3);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0D86A64(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_1B0D48858(a1, *v1);
  if (!v4)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();

  return sub_1B0D3AB60(a1, v3, v4, v5);
}

uint64_t sub_1B0D86AF0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  sub_1B0E46C28();
  sub_1B0D48858(v6, v2);
  sub_1B0E46C68();
  if (v3)
  {
    sub_1B0D3B080(v6, v3, v4);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0D86BB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t *, uint64_t, double)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_1B0E23C8C(*a1, *a2, *(a2 + 8), *(a2 + 16), a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t _s12NIOIMAPCore227ExtendedSearchSourceOptionsV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (sub_1B0D31510(a1, a5))
  {
    if (a3)
    {
      if (a7)
      {
        if (sub_1B045202C(a3, a7))
        {

          sub_1B0D393EC(a4, a8);
          v13 = v12;

          if (v13)
          {
            return 1;
          }
        }
      }
    }

    else if (!a7)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1B0D86CD8()
{
  result = qword_1EB6E7478;
  if (!qword_1EB6E7478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7478);
  }

  return result;
}

uint64_t sub_1B0D86D60(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v53 = 1uLL;
  memset(v54, 0, 20);
  BYTE4(v54[1]) = -64;
  v4 = &v53;
  v52 = &v53;
  v5 = sub_1B0DDA7F4(sub_1B0D88FEC, v51, a1);
  if (v5)
  {
    v53 = 2uLL;
    memset(v54, 0, 20);
    BYTE4(v54[1]) = -64;
    MEMORY[0x1EEE9AC00](v5);
    v49 = &v53;
    result = sub_1B0DDA7F4(sub_1B0D8908C, v48, v3);
    if (result)
    {
      v7 = *(v3 + 16);
      if (v7 != 5)
      {
        if (v7 != 4)
        {
          if (v7 != 3)
          {
            goto LABEL_26;
          }

          v4 = v51;
          v53 = 5uLL;
          memset(v54, 0, 20);
          BYTE4(v54[1]) = -64;
          MEMORY[0x1EEE9AC00](result);
          v49 = &v53;
          if ((sub_1B0DDA7F4(sub_1B0D8908C, v48, v3) & 1) == 0)
          {
            goto LABEL_26;
          }

          v3 = *(v2 + 20);
          result = sub_1B0CFC1B0(0x54534146uLL, 0xE400000000000000, v2 + 8, v3);
          if (v8)
          {
            v4 = (v2 + 8);
            v9._countAndFlagsBits = 1414742342;
            v9._object = 0xE400000000000000;
            result = ByteBuffer._setStringSlowpath(_:at:)(v9, v3);
          }

          v10 = *(v2 + 20);
          v11 = __CFADD__(v10, result);
          LODWORD(v7) = v10 + result;
          if (!v11)
          {
            goto LABEL_25;
          }

          __break(1u);
        }

        v53 = 5uLL;
        memset(v54, 0, 20);
        BYTE4(v54[1]) = -64;
        MEMORY[0x1EEE9AC00](result);
        v49 = v4;
        v12 = sub_1B0DDA7F4(sub_1B0D8908C, v48, v3);
        if ((v12 & 1) == 0)
        {
          goto LABEL_26;
        }

        v53 = 0u;
        memset(v54, 0, 20);
        BYTE4(v54[1]) = -64;
        MEMORY[0x1EEE9AC00](v12);
        v49 = v4;
        if ((sub_1B0DDA7F4(sub_1B0D8908C, v48, v3) & 1) == 0)
        {
          goto LABEL_26;
        }

        v3 = *(v2 + 20);
        result = sub_1B0CFC1B0(0x4C4C41uLL, 0xE300000000000000, v2 + 8, v3);
        if (v13)
        {
          v4 = (v2 + 8);
          v14._countAndFlagsBits = 5000257;
          v14._object = 0xE300000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v14, v3);
        }

        v15 = *(v2 + 20);
        v11 = __CFADD__(v15, result);
        v7 = (v15 + result);
        if (!v11)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      v53 = v7;
      memset(v54, 0, 20);
      BYTE4(v54[1]) = -64;
      MEMORY[0x1EEE9AC00](result);
      v49 = v4;
      v16 = sub_1B0DDA7F4(sub_1B0D8908C, v48, v3);
      if (v16)
      {
        v53 = 0u;
        memset(v54, 0, 20);
        BYTE4(v54[1]) = -64;
        MEMORY[0x1EEE9AC00](v16);
        v49 = v4;
        v17 = sub_1B0DDA7F4(sub_1B0D8908C, v48, v3);
        if (v17)
        {
          v53 = 0u;
          memset(v54, 0, 21);
          MEMORY[0x1EEE9AC00](v17);
          v49 = &v53;
          if (sub_1B0DDA7F4(sub_1B0D8908C, v48, v3))
          {
            v18 = *(v2 + 20);
            result = sub_1B0CFC1B0(0x4C4C5546uLL, 0xE400000000000000, v2 + 8, v18);
            if (v19)
            {
              v20._countAndFlagsBits = 1280070982;
              v20._object = 0xE400000000000000;
              result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
            }

            v21 = *(v2 + 20);
            v11 = __CFADD__(v21, result);
            LODWORD(v7) = v21 + result;
            if (!v11)
            {
LABEL_25:
              *(v2 + 20) = v7;
              return result;
            }

            goto LABEL_56;
          }
        }
      }
    }
  }

LABEL_26:
  *&v53 = v3;
  v22 = *(v3 + 16);
  if (v22)
  {
    v23 = *(v2 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v23);
    if (v24)
    {
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
    }

    v26 = result;
    v27 = *(v2 + 20);
    v11 = __CFADD__(v27, result);
    v28 = v27 + result;
    if (v11)
    {
      goto LABEL_54;
    }

    *(v2 + 20) = v28;
  }

  else
  {
    v26 = 0;
    v28 = *(v2 + 20);
  }

  v29 = v28;
  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v2 + 8, v28);
  if (v30)
  {
    v31._countAndFlagsBits = 40;
    v31._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v31, v29);
  }

  v32 = *(v2 + 20);
  v11 = __CFADD__(v32, result);
  v33 = v32 + result;
  if (v11)
  {
    goto LABEL_49;
  }

  *(v2 + 20) = v33;
  v34 = v26 + result;
  if (__OFADD__(v26, result))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  MEMORY[0x1EEE9AC00](result);
  v47[2] = sub_1B0D883A8;
  v47[3] = 0;
  v48[0] = v2;
  v48[1] = &v53;
  v49 = 32;
  v50 = 0xE100000000000000;
  result = sub_1B0DE6490(0, sub_1B0D89008, v47, v3);
  v35 = v34 + result;
  if (__OFADD__(v34, result))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v36 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v36);
  if (v37)
  {
    v38._countAndFlagsBits = 41;
    v38._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v38, v36);
  }

  v39 = *(v2 + 20);
  v40 = (v39 + result);
  if (__CFADD__(v39, result))
  {
    goto LABEL_52;
  }

  *(v2 + 20) = v40;
  v41 = __OFADD__(v35, result);
  v42 = v35 + result;
  if (v41)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    return result;
  }

  if (!v22)
  {
    return v42;
  }

  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v40);
  if (v43)
  {
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v44, v40);
  }

  v45 = *(v2 + 20);
  v11 = __CFADD__(v45, result);
  v46 = v45 + result;
  if (v11)
  {
    goto LABEL_55;
  }

  *(v2 + 20) = v46;
  v41 = __OFADD__(v42, result);
  result += v42;
  if (v41)
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  return result;
}

uint64_t FetchAttribute.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v5 = *(v2 + 1);
  v4 = *(v2 + 2);
  *(&v22 - 7) = *(v2 + 29);
  v20 = *(v2 + 3);
  v6 = (*(v2 + 1) << 8) | ((*(v2 + 5) | (v2[7] << 16)) << 40) | *v2;
  v7 = v21 | (v22 << 32);
  v8 = v22 >> 5;
  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        MEMORY[0x1B2728D70](11);
        return MEMORY[0x1B2728DB0](v6);
      }

      MEMORY[0x1B2728D70](8);
      sub_1B0E46C68();
      SectionSpecifier.hash(into:)(a1, v5, v4, v20);
      if ((v22 & 0x1F) != 1)
      {
        goto LABEL_32;
      }

      return sub_1B0E46C68();
    }

    v13 = 7;
    goto LABEL_16;
  }

  if (v22 >> 5 > 4u)
  {
    if (v8 != 5)
    {
      v17 = v4 | v5 | v20;
      if (v7 == 0xC000000000 && !(v17 | v6))
      {
        return MEMORY[0x1B2728D70](0);
      }

      if (v7 == 0xC000000000 && v6 == 1 && v17 == 0)
      {
        return MEMORY[0x1B2728D70](1);
      }

      if (v7 == 0xC000000000 && v6 == 2 && v17 == 0)
      {
        return MEMORY[0x1B2728D70](2);
      }

      if (v7 == 0xC000000000 && v6 == 3 && !v17)
      {
        return MEMORY[0x1B2728D70](3);
      }

      if (v7 == 0xC000000000 && v6 == 4 && !v17)
      {
        return MEMORY[0x1B2728D70](4);
      }

      if (v7 == 0xC000000000 && v6 == 5 && !v17)
      {
        return MEMORY[0x1B2728D70](5);
      }

      if (v7 == 0xC000000000 && v6 == 6 && !v17)
      {
        return MEMORY[0x1B2728D70](6);
      }

      if (v7 == 0xC000000000 && v6 == 7 && !v17)
      {
        return MEMORY[0x1B2728D70](9);
      }

      if (v7 == 0xC000000000 && v6 == 8 && !v17)
      {
        return MEMORY[0x1B2728D70](10);
      }

      if (v7 == 0xC000000000 && v6 == 9 && !v17)
      {
        return MEMORY[0x1B2728D70](14);
      }

      if (v7 == 0xC000000000 && v6 == 10 && !v17)
      {
        return MEMORY[0x1B2728D70](15);
      }

      if (v7 == 0xC000000000 && v6 == 11 && !v17)
      {
        return MEMORY[0x1B2728D70](16);
      }

      if (v7 == 0xC000000000 && v6 == 12 && !v17)
      {
        return MEMORY[0x1B2728D70](18);
      }

      return MEMORY[0x1B2728D70](19);
    }

    v13 = 17;
LABEL_16:
    MEMORY[0x1B2728D70](v13);
    return sub_1B0E46C68();
  }

  if (v8 == 3)
  {
    MEMORY[0x1B2728D70](12);
    sub_1B0E46C68();
    v9 = *(v5 + 16);
    MEMORY[0x1B2728D70](v9);
    if (v9)
    {
      v10 = (v5 + 32);
      do
      {
        v11 = *v10++;
        MEMORY[0x1B2728D70](v11);
        --v9;
      }

      while (v9);
    }

    if ((v20 & 1) == 0)
    {
LABEL_32:
      sub_1B0E46C68();
      sub_1B0E46C88();
      return sub_1B0E46C88();
    }

    return sub_1B0E46C68();
  }

  MEMORY[0x1B2728D70](13);
  v14 = *(v6 + 16);
  result = MEMORY[0x1B2728D70](v14);
  if (v14)
  {
    v15 = (v6 + 32);
    do
    {
      v16 = *v15++;
      result = MEMORY[0x1B2728D70](v16);
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t FetchAttribute.hashValue.getter()
{
  sub_1B0E46C28();
  FetchAttribute.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D87740()
{
  sub_1B0E46C28();
  FetchAttribute.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D87784(uint64_t a1)
{
  sub_1B0E46C28();
  FetchAttribute.hash(into:)(v2);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0D877C0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 13) = *(a1 + 29);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 13) = *(a2 + 29);
  return _s12NIOIMAPCore214FetchAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(&v5, &v7) & 1;
}

unint64_t FetchAttribute.debugDescription.getter()
{
  v1 = v0;
  if (qword_1EB6DE5C0 != -1)
  {
    swift_once();
  }

  v2 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v3 = dword_1EB737EB8;
  v4 = word_1EB737EBC;
  v5 = byte_1EB737EBE;

  LOBYTE(v10) = 0;
  BYTE5(v10) = 0;
  *(&v10 + 1) = 65537;
  *(&v10 + 1) = v2;
  *&v11 = qword_1EB737EB0;
  DWORD2(v11) = v3;
  WORD6(v11) = v4;
  BYTE14(v11) = v5;
  *&v12 = sub_1B0D740DC(MEMORY[0x1E69E7CC0]);
  *(&v12 + 1) = v6;
  v13 = v7;
  result = sub_1B0D879E0(v1);
  if (DWORD1(v11) < v11)
  {
    __break(1u);
  }

  else if (v3 - (v5 | (v4 << 8)) >= DWORD1(v11))
  {
    v14[0] = v2;
    v14[1] = v11;
    v15 = v3;
    v16 = WORD6(v11);
    v17 = v5;
    v18 = v11;
    v19 = DWORD1(v11);
    *&v20[0] = 0;
    *(&v20[0] + 1) = 0xE000000000000000;

    MEMORY[0x1B2726D20](DWORD1(v11) - v11);
    sub_1B0D547AC(v14, v20);
    sub_1B04394F4(v14);
    v9 = *&v20[0];
    v20[0] = v10;
    v20[1] = v11;
    v20[2] = v12;
    v21 = v13;
    sub_1B0D7E6B4(v20);
    return v9;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0D879E0(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  *&v97[5] = *(a1 + 29);
  *v97 = *(a1 + 3);
  v5 = *&v97[8] | (v97[12] << 32);
  v6 = v97[12] >> 5;
  if (v6 > 2)
  {
    v7 = v2 | ((*(a1 + 1) | ((*(a1 + 5) | (a1[7] << 16)) << 32)) << 8);
    if (v97[12] >> 5 <= 4u)
    {
      if (v6 == 3)
      {

        return sub_1B0D884F0(v2 & 1, v3, v4, v97[0]);
      }

      v34 = *(v1 + 20);
      v35 = sub_1B0CFC1B0(0x532E5952414E4942uLL, 0xEB00000000455A49, v1 + 8, v34);
      if (v36)
      {
        v37._countAndFlagsBits = 0x532E5952414E4942;
        v37._object = 0xEB00000000455A49;
        v35 = ByteBuffer._setStringSlowpath(_:at:)(v37, v34);
      }

      v38 = v35;
      v39 = *(v1 + 20);
      v16 = __CFADD__(v39, v35);
      v5 = (v39 + v35);
      if (!v16)
      {
        *(v1 + 20) = v5;
        v40 = sub_1B0E24940(v7);
        v41 = __OFADD__(v38, v40);
        result = v38 + v40;
        if (!v41)
        {
          return result;
        }

        __break(1u);
        goto LABEL_45;
      }

LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    if (v6 != 5)
    {
LABEL_45:
      v31 = v4 | v3 | *v97;
      v32 = 0xC000000000;
      if (v5 == 0xC000000000 && !(v31 | v7))
      {
        v7 = *(v1 + 20);
        result = sub_1B0CFC1B0(0x45504F4C45564E45uLL, 0xE800000000000000, v1 + 8, v7);
        if (v42)
        {
          v43._countAndFlagsBits = 0x45504F4C45564E45;
          v43._object = 0xE800000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v43, v7);
        }

        v44 = *(v1 + 20);
        v16 = __CFADD__(v44, result);
        v5 = (v44 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 1 && v31 == 0)
      {
        v7 = *(v1 + 20);
        result = sub_1B0CFC1B0(0x5347414C46uLL, 0xE500000000000000, v1 + 8, v7);
        if (v46)
        {
          v47._countAndFlagsBits = 0x5347414C46;
          v47._object = 0xE500000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v47, v7);
        }

        v48 = *(v1 + 20);
        v16 = __CFADD__(v48, result);
        v5 = (v48 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 2 && v31 == 0)
      {
        v7 = 0xEC00000045544144;
        v50 = *(v1 + 20);
        result = sub_1B0CFC1B0(0x4C414E5245544E49uLL, 0xEC00000045544144, v1 + 8, v50);
        if (v51)
        {
          v52._countAndFlagsBits = 0x4C414E5245544E49;
          v52._object = 0xEC00000045544144;
          result = ByteBuffer._setStringSlowpath(_:at:)(v52, v50);
        }

        v53 = *(v1 + 20);
        v16 = __CFADD__(v53, result);
        v5 = (v53 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 3 && v31 == 0)
      {
        v7 = *(v1 + 20);
        result = sub_1B0CFC1B0(0x323238434652uLL, 0xE600000000000000, v1 + 8, v7);
        if (v55)
        {
          v56._countAndFlagsBits = 0x323238434652;
          v56._object = 0xE600000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v56, v7);
        }

        v57 = *(v1 + 20);
        v16 = __CFADD__(v57, result);
        v5 = (v57 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 4 && !v31)
      {
        v7 = 0xED00005245444145;
        v58 = *(v1 + 20);
        result = sub_1B0CFC1B0(0x482E323238434652uLL, 0xED00005245444145, v1 + 8, v58);
        if (v59)
        {
          v60._countAndFlagsBits = 0x482E323238434652;
          v60._object = 0xED00005245444145;
          result = ByteBuffer._setStringSlowpath(_:at:)(v60, v58);
        }

        v61 = *(v1 + 20);
        v16 = __CFADD__(v61, result);
        v5 = (v61 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 5 && !v31)
      {
        v7 = 0xEB00000000455A49;
        v62 = *(v1 + 20);
        result = sub_1B0CFC1B0(0x532E323238434652uLL, 0xEB00000000455A49, v1 + 8, v62);
        if (v63)
        {
          v64._countAndFlagsBits = 0x532E323238434652;
          v64._object = 0xEB00000000455A49;
          result = ByteBuffer._setStringSlowpath(_:at:)(v64, v62);
        }

        v65 = *(v1 + 20);
        v16 = __CFADD__(v65, result);
        v5 = (v65 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 6 && !v31)
      {
        v7 = 0xEB00000000545845;
        v66 = *(v1 + 20);
        result = sub_1B0CFC1B0(0x542E323238434652uLL, 0xEB00000000545845, v1 + 8, v66);
        if (v67)
        {
          v68._countAndFlagsBits = 0x542E323238434652;
          v68._object = 0xEB00000000545845;
          result = ByteBuffer._setStringSlowpath(_:at:)(v68, v66);
        }

        v69 = *(v1 + 20);
        v16 = __CFADD__(v69, result);
        v5 = (v69 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 7 && !v31)
      {
        v7 = *(v1 + 20);
        result = sub_1B0CFC1B0(0x444955uLL, 0xE300000000000000, v1 + 8, v7);
        if (v70)
        {
          v71._countAndFlagsBits = 4475221;
          v71._object = 0xE300000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v71, v7);
        }

        v72 = *(v1 + 20);
        v16 = __CFADD__(v72, result);
        v5 = (v72 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 8 && !v31)
      {
        v7 = *(v1 + 20);
        result = sub_1B0CFC1B0(0x514553444F4DuLL, 0xE600000000000000, v1 + 8, v7);
        if (v73)
        {
          v74._countAndFlagsBits = 0x514553444F4DLL;
          v74._object = 0xE600000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v74, v7);
        }

        v75 = *(v1 + 20);
        v16 = __CFADD__(v75, result);
        v5 = (v75 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 9 && !v31)
      {
        v76 = *(v1 + 20);
        result = sub_1B0CFC1B0(0x47534D2D4D472D58uLL, 0xEA00000000004449, v1 + 8, v76);
        if (v77)
        {
          v78._countAndFlagsBits = 0x47534D2D4D472D58;
          v78._object = 0xEA00000000004449;
          result = ByteBuffer._setStringSlowpath(_:at:)(v78, v76);
        }

        v79 = *(v1 + 20);
        v16 = __CFADD__(v79, result);
        LODWORD(v5) = v79 + result;
        if (!v16)
        {
LABEL_131:
          *(v1 + 20) = v5;
          return result;
        }

        goto LABEL_163;
      }

      if (v5 == v32 && v7 == 10 && !v31)
      {
        v80 = *(v1 + 20);
        result = sub_1B0CFC1B0(0x5248542D4D472D58uLL, 0xEA00000000004449, v1 + 8, v80);
        if (v81)
        {
          v82._countAndFlagsBits = 0x5248542D4D472D58;
          v82._object = 0xEA00000000004449;
          result = ByteBuffer._setStringSlowpath(_:at:)(v82, v80);
        }

        v83 = *(v1 + 20);
        v16 = __CFADD__(v83, result);
        v84 = v83 + result;
        if (!v16)
        {
          *(v1 + 20) = v84;
          return result;
        }

        goto LABEL_164;
      }

LABEL_142:
      v24 = v1;
      if (v5 == v32 && v7 == 11 && !v31)
      {
        v7 = 0xEB00000000534C45;
        v85 = *(v1 + 20);
        result = sub_1B0CFC1B0(0x42414C2D4D472D58uLL, 0xEB00000000534C45, v1 + 8, v85);
        if (v86)
        {
          v87._countAndFlagsBits = 0x42414C2D4D472D58;
          v87._object = 0xEB00000000534C45;
          result = ByteBuffer._setStringSlowpath(_:at:)(v87, v85);
        }

        v88 = *(v1 + 20);
        v16 = __CFADD__(v88, result);
        v5 = (v88 + result);
        if (!v16)
        {
          goto LABEL_38;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 12 && !v31)
      {
        v89 = *(v1 + 20);
        result = sub_1B0CFC1B0(0x44494C49414D45uLL, 0xE700000000000000, v1 + 8, v89);
        if (v90)
        {
          v91._countAndFlagsBits = 0x44494C49414D45;
          v91._object = 0xE700000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v91, v89);
        }

        v92 = *(v1 + 20);
        v16 = __CFADD__(v92, result);
        LODWORD(v5) = v92 + result;
        if (!v16)
        {
          goto LABEL_38;
        }

        __break(1u);
      }

      v93 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x4449444145524854uLL, 0xE800000000000000, v1 + 8, v93);
      if (v94)
      {
        v95._countAndFlagsBits = 0x4449444145524854;
        v95._object = 0xE800000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v95, v93);
      }

      v96 = *(v1 + 20);
      v16 = __CFADD__(v96, result);
      LODWORD(v5) = v96 + result;
      if (v16)
      {
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
        return result;
      }

LABEL_38:
      *(v24 + 20) = v5;
      return result;
    }

    if (v2)
    {
      v9 = 0x2057454956455250;
    }

    else
    {
      v9 = 0x57454956455250;
    }

    if (v2)
    {
      v10 = 0xEE0029595A414C28;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    v11 = *(v1 + 20);
    v12 = sub_1B0CFC1B0(v9, v10, v1 + 8, v11);
    if (v13)
    {
      v14._countAndFlagsBits = v9;
      v14._object = v10;
      v12 = ByteBuffer._setStringSlowpath(_:at:)(v14, v11);
    }

    v15 = v12;

    LODWORD(v5) = *(v1 + 20);
    result = v15;
    v16 = __CFADD__(v5, v15);
    LODWORD(v5) = v5 + v15;
    if (!v16)
    {
      goto LABEL_131;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (!v6)
  {
LABEL_24:
    if (v2)
    {
      v17 = 0x5552545359444F42;
    }

    else
    {
      v17 = 1497648962;
    }

    if (v2)
    {
      v18 = 0xED00004552555443;
    }

    else
    {
      v18 = 0xE400000000000000;
    }

    v19 = *(v1 + 20);
    v20 = sub_1B0CFC1B0(v17, v18, v1 + 8, v19);
    if (v21)
    {
      v22._countAndFlagsBits = v17;
      v22._object = v18;
      v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v19);
    }

    v23 = v20;

    LODWORD(v5) = *(v1 + 20);
    result = v23;
    v16 = __CFADD__(v5, v23);
    LODWORD(v5) = v5 + v23;
    if (!v16)
    {
      goto LABEL_131;
    }

    __break(1u);
    goto LABEL_35;
  }

  if (v6 != 1)
  {
LABEL_35:
    v24 = v1;
    v25 = sub_1B0E469C8();
    v7 = v26;
    v27 = *(v1 + 20);
    v28 = sub_1B0CFC1B0(v25, v26, v24 + 8, *(v24 + 20));
    if (v29)
    {
      v30._countAndFlagsBits = v25;
      v30._object = v7;
      v28 = ByteBuffer._setStringSlowpath(_:at:)(v30, v27);
      v24 = v1;
    }

    v1 = v28;

    v33 = *(v24 + 20);
    result = v1;
    v16 = __CFADD__(v33, v1);
    v5 = (v33 + v1);
    if (!v16)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_141;
  }

  return sub_1B0D883CC(v2 & 1, v3, v4, v97[0], *&v97[4], BYTE4(v5) & 0x1F);
}

uint64_t sub_1B0D883CC(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1)
  {
    v11 = 0x4545502E59444F42;
  }

  else
  {
    v11 = 1497648962;
  }

  if (a1)
  {
    v12 = 0xE90000000000004BLL;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = *(v6 + 20);
  v14 = sub_1B0CFC1B0(v11, v12, v6 + 8, v13);
  if (v15)
  {
    v16._countAndFlagsBits = v11;
    v16._object = v12;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
  }

  v17 = v14;

  v19 = *(v6 + 20);
  v20 = __CFADD__(v19, v17);
  v21 = v19 + v17;
  if (v20)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v6 + 20) = v21;
  result = sub_1B0E246D4(a2, a3, a4);
  v22 = __OFADD__(v17, result);
  v23 = v17 + result;
  if (v22)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (a6)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_1B0D577EC();
  }

  v22 = __OFADD__(v23, v24);
  result = v23 + v24;
  if (v22)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1B0D884F0(char a1, void *a2, uint64_t a3, char a4)
{
  v8 = *(v4 + 20);
  result = sub_1B0CFC1B0(0x5952414E4942uLL, 0xE600000000000000, v4 + 8, v8);
  if (v10)
  {
    v11._countAndFlagsBits = 0x5952414E4942;
    v11._object = 0xE600000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v12 = *(v4 + 20);
  v13 = (v12 + result);
  if (__CFADD__(v12, result))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v4 + 20) = v13;
  if (a1)
  {
    v14 = result;
    result = sub_1B0CFC1B0(0x4B4545502EuLL, 0xE500000000000000, v4 + 8, v13);
    if (v15)
    {
      v16._countAndFlagsBits = 0x4B4545502ELL;
      v16._object = 0xE500000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
    }

    v17 = result;
    v18 = *(v4 + 20);
    v19 = __CFADD__(v18, result);
    v20 = v18 + result;
    if (v19)
    {
      goto LABEL_21;
    }

    result = v14;
    *(v4 + 20) = v20;
  }

  else
  {
    v17 = 0;
  }

  v21 = result + v17;
  if (__OFADD__(result, v17))
  {
    goto LABEL_18;
  }

  result = sub_1B0E24940(a2);
  v22 = __OFADD__(v21, result);
  v23 = v21 + result;
  if (v22)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (a4)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_1B0D577EC();
  }

  v22 = __OFADD__(v23, v24);
  result = v23 + v24;
  if (v22)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1B0D88648(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, uint64_t, double)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>, uint64_t a8@<X6>, void *a9@<X7>)
{
  v11 = *a1;
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 44);
  v15 = *a6;
  v16 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v16;
  v19 = v12;
  v21 = v14;
  v20 = v13;
  sub_1B0E23404(v11, v18, a3, a4, a5, v15, a8, a9);
  if (!v9)
  {
    *a7 = v17;
  }
}

unint64_t _s12NIOIMAPCore214FetchAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 5) | (a1[7] << 16);
  v5 = *(a1 + 1);
  v7 = *(a1 + 1);
  v6 = *(a1 + 2);
  *&v50[5] = *(a1 + 29);
  *v50 = *(a1 + 3);
  v8 = (v5 << 8) | (v4 << 40);
  v9 = v8 | v3;
  v10 = *&v50[8] | (v50[12] << 32);
  v11 = v50[12] >> 5;
  if (v11 > 2)
  {
    if (v50[12] >> 5 <= 4u)
    {
      if (v11 == 3)
      {
        if (((a2[36] << 32) & 0xE000000000) != 0x6000000000)
        {
          goto LABEL_180;
        }

        if ((v3 ^ *a2))
        {
          goto LABEL_180;
        }

        v12 = *(a2 + 1);
        v13 = *(v7 + 16);
        if (v13 != *(v12 + 16))
        {
          goto LABEL_180;
        }

        if (v13 && v7 != v12)
        {
          v14 = (v7 + 32);
          v15 = (v12 + 32);
          while (*v14 == *v15)
          {
            ++v14;
            ++v15;
            if (!--v13)
            {
              goto LABEL_12;
            }
          }

          goto LABEL_180;
        }

LABEL_12:
        if (v50[0])
        {
          if ((a2[24] & 1) == 0)
          {
            goto LABEL_180;
          }
        }

        else if ((a2[24] & 1) != 0 || v6 != *(a2 + 2))
        {
          goto LABEL_180;
        }

        goto LABEL_179;
      }

      if (((a2[36] << 32) & 0xE000000000) != 0x8000000000)
      {
        goto LABEL_180;
      }

      v10 = *a2;
      v24 = *((v8 | v3) + 0x10);
      if (v24 != *(*a2 + 16))
      {
        goto LABEL_180;
      }

      if (!v24 || v9 == v10)
      {
LABEL_179:
        LOBYTE(v10) = 1;
        return v10 & 1;
      }

      v9 += 32;
      v3 = v10 + 32;
      while (v24)
      {
        v26 = *v9;
        v9 += 8;
        v25 = v26;
        v27 = *v3;
        v3 += 8;
        v28 = v25 == v27;
        v10 = v25 == v27;
        v28 = !v28 || v24-- == 1;
        if (v28)
        {
          return v10 & 1;
        }
      }

      __break(1u);
LABEL_153:
      if (v10 == v3 && v9 == 10 && !v24)
      {
        v43 = *(a2 + 8) | (a2[36] << 32);
        if ((v43 & 0xE000000000) != 0xC000000000 || v43 != 0xC000000000 || *a2 != 10)
        {
          goto LABEL_180;
        }

LABEL_178:
        if (!(*(a2 + 2) | *(a2 + 3) | *(a2 + 1)))
        {
          goto LABEL_179;
        }

LABEL_180:
        LOBYTE(v10) = 0;
        return v10 & 1;
      }

      if (v10 == v3 && v9 == 11 && !v24)
      {
        v44 = *(a2 + 8) | (a2[36] << 32);
        if ((v44 & 0xE000000000) != 0xC000000000 || v44 != 0xC000000000 || *a2 != 11)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

LABEL_168:
      if (v10 == v3 && v9 == 12 && !v24)
      {
        v45 = *(a2 + 8) | (a2[36] << 32);
        if ((v45 & 0xE000000000) != 0xC000000000 || v45 != 0xC000000000 || *a2 != 12)
        {
          goto LABEL_180;
        }
      }

      else
      {
        v46 = *(a2 + 8) | (a2[36] << 32);
        if ((v46 & 0xE000000000) != v3 || v46 != 0xC000000000 || *a2 != 13)
        {
          goto LABEL_180;
        }
      }

      goto LABEL_178;
    }

    if (v11 != 5)
    {
      v24 = v6 | v7 | *v50;
      v3 = 0xC000000000;
      if (v10 == 0xC000000000 && !(v24 | v9))
      {
        v29 = *(a2 + 8) | (a2[36] << 32);
        if ((v29 & 0xE000000000) != 0xC000000000)
        {
          goto LABEL_180;
        }

        if (v29 != 0xC000000000)
        {
          goto LABEL_180;
        }

        v30 = vorrq_s8(*a2, *(a2 + 1));
        if (vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)))
        {
          goto LABEL_180;
        }

        goto LABEL_179;
      }

      if (v10 == 0xC000000000 && v9 == 1 && v24 == 0)
      {
        v32 = *(a2 + 8) | (a2[36] << 32);
        if ((v32 & 0xE000000000) != 0xC000000000 || v32 != 0xC000000000 || *a2 != 1)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 2 && v24 == 0)
      {
        v34 = *(a2 + 8) | (a2[36] << 32);
        if ((v34 & 0xE000000000) != 0xC000000000 || v34 != 0xC000000000 || *a2 != 2)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 3 && !v24)
      {
        v35 = *(a2 + 8) | (a2[36] << 32);
        if ((v35 & 0xE000000000) != 0xC000000000 || v35 != 0xC000000000 || *a2 != 3)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 4 && !v24)
      {
        v36 = *(a2 + 8) | (a2[36] << 32);
        if ((v36 & 0xE000000000) != 0xC000000000 || v36 != 0xC000000000 || *a2 != 4)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 5 && !v24)
      {
        v37 = *(a2 + 8) | (a2[36] << 32);
        if ((v37 & 0xE000000000) != 0xC000000000 || v37 != 0xC000000000 || *a2 != 5)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 6 && !v24)
      {
        v38 = *(a2 + 8) | (a2[36] << 32);
        if ((v38 & 0xE000000000) != 0xC000000000 || v38 != 0xC000000000 || *a2 != 6)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 7 && !v24)
      {
        v40 = *(a2 + 8) | (a2[36] << 32);
        if ((v40 & 0xE000000000) != 0xC000000000 || v40 != 0xC000000000 || *a2 != 7)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 8 && !v24)
      {
        v41 = *(a2 + 8) | (a2[36] << 32);
        if ((v41 & 0xE000000000) != 0xC000000000 || v41 != 0xC000000000 || *a2 != 8)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 9 && !v24)
      {
        v42 = *(a2 + 8) | (a2[36] << 32);
        if ((v42 & 0xE000000000) != 0xC000000000 || v42 != 0xC000000000 || *a2 != 9)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      goto LABEL_153;
    }

    if (((a2[36] << 32) & 0xE000000000) != 0xA000000000)
    {
      goto LABEL_180;
    }

    goto LABEL_33;
  }

  if (!v11)
  {
    if (a2[36] >> 5)
    {
      goto LABEL_180;
    }

LABEL_33:
    LOBYTE(v10) = v3 ^ *a2 ^ 1;
    return v10 & 1;
  }

  if (v11 == 1)
  {
    v16 = BYTE4(v10) & 0x1F;
    v18 = *(a2 + 1);
    v17 = *(a2 + 2);
    v19 = a2[24];
    v48 = *(a2 + 28);
    v20 = HIDWORD(v48) | (a2[36] << 32);
    if ((v20 & 0xE000000000) != 0x2000000000)
    {
      goto LABEL_180;
    }

    if ((v3 ^ *a2))
    {
      goto LABEL_180;
    }

    v21 = *(v7 + 16);
    if (v21 != *(v18 + 16))
    {
      goto LABEL_180;
    }

    v49 = BYTE4(v20) & 0x1F;
    if (v21 && v7 != v18)
    {
      v22 = (v7 + 32);
      v23 = (v18 + 32);
      while (*v22 == *v23)
      {
        ++v22;
        ++v23;
        if (!--v21)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_180;
    }

LABEL_25:
    if (!v50[0])
    {
      if (a2[24])
      {
        goto LABEL_180;
      }

      goto LABEL_93;
    }

    if (v50[0] == 1)
    {
      if (v19 != 1)
      {
        goto LABEL_180;
      }

LABEL_93:
      if ((sub_1B045202C(v6, v17) & 1) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_123;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        LOBYTE(v10) = 0;
        if (v19 == 2 && v17 == 2)
        {
          goto LABEL_123;
        }
      }

      else
      {
        LOBYTE(v10) = 0;
        if (v19 == 2 && v17 == 3)
        {
          goto LABEL_123;
        }
      }
    }

    else
    {
      LOBYTE(v10) = 0;
      if (!v6)
      {
        if (v19 != 2 || v17)
        {
          return v10 & 1;
        }

LABEL_123:
        if (v16)
        {
          if ((v49 & 1) == 0)
          {
            goto LABEL_180;
          }
        }

        else
        {
          if (*&v50[4] == v48)
          {
            v39 = v49;
          }

          else
          {
            v39 = 1;
          }

          if (v39)
          {
            goto LABEL_180;
          }
        }

        goto LABEL_179;
      }

      if (v19 == 2 && v17 == 1)
      {
        goto LABEL_123;
      }
    }
  }

  else
  {
    if (((a2[36] << 32) & 0xE000000000) != 0x4000000000)
    {
      goto LABEL_180;
    }

    v10 = *a2;
    v24 = *a2 | v8;
    if (v24 < 0)
    {
      __break(1u);
      goto LABEL_168;
    }

    LOBYTE(v10) = v10 == v9;
  }

  return v10 & 1;
}

unint64_t sub_1B0D88E34()
{
  result = qword_1EB6E7480;
  if (!qword_1EB6E7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7480);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore214FetchAttributeO(uint64_t a1)
{
  v1 = *(a1 + 36) >> 5;
  if (v1 <= 5)
  {
    return v1;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B0D88EB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 37))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 2) & 0x3FFFFFFF | (*(a1 + 36) >> 1 << 30);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1B0D88F14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 37) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (-4 * a2);
      *(result + 32) = 0;
      *(result + 36) = (-a2 >> 29) & 6;
      return result;
    }

    *(result + 37) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0D88F74(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = a1 + 32;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = BYTE4(v3) & 0x1F;
  return result;
}

uint64_t sub_1B0D88F90(uint64_t result, uint64_t a2)
{
  if (a2 < 6)
  {
    v2 = *(result + 32);
    result += 32;
    v3 = (a2 << 37) | ((*(result + 4) & 1) << 32);
    *(result - 8) &= 0xFFFFFFFF00000003;
    *result = v2;
    *(result + 4) = BYTE4(v3);
  }

  else
  {
    *result = (a2 - 6);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 36) = -64;
  }

  return result;
}

unint64_t sub_1B0D8902C(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v6 = *a1;
  v7[0] = v3;
  *(v7 + 13) = *(a1 + 29);
  v4 = v2[1];
  v8 = *v2;
  v9[0] = v4;
  *(v9 + 13) = *(v2 + 29);
  return _s12NIOIMAPCore214FetchAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(&v6, &v8) & 1;
}

BOOL static FetchModificationResponse.__derived_struct_equals(_:_:)(_BOOL8 result, uint64_t a2)
{
  if (((a2 | result) & 0x8000000000000000) == 0)
  {
    return a2 == result;
  }

  __break(1u);
  return result;
}

uint64_t FetchModificationResponse.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728DB0](a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D89160()
{
  v1 = v0;
  v2 = *(v0 + 20);
  result = sub_1B0CFC1B0(0x2820514553444F4DuLL, 0xE800000000000000, v0 + 8, v2);
  if (v4)
  {
    v5._countAndFlagsBits = 0x2820514553444F4DLL;
    v5._object = 0xE800000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v5, v2);
  }

  v6 = result;
  v7 = *(v0 + 20);
  v8 = (v7 + result);
  if (__CFADD__(v7, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v0 + 20) = v8;
  v9 = sub_1B0E469C8();
  v11 = v10;
  v12 = sub_1B0CFC1B0(v9, v10, v0 + 8, v8);
  if (v13)
  {
    v14._countAndFlagsBits = v9;
    v14._object = v11;
    v12 = ByteBuffer._setStringSlowpath(_:at:)(v14, v8);
  }

  v15 = v12;

  v16 = *(v1 + 20);
  v17 = (v16 + v15);
  if (__CFADD__(v16, v15))
  {
    goto LABEL_14;
  }

  *(v1 + 20) = v17;
  v18 = __OFADD__(v6, v15);
  v19 = v6 + v15;
  if (v18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v1 + 8, (v16 + v15));
  if (v20)
  {
    v21._countAndFlagsBits = 41;
    v21._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v17);
  }

  v22 = *(v1 + 20);
  v23 = __CFADD__(v22, result);
  v24 = v22 + result;
  if (v23)
  {
    goto LABEL_16;
  }

  *(v1 + 20) = v24;
  v18 = __OFADD__(v19, result);
  result += v19;
  if (v18)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0D892C4()
{
  result = qword_1EB6E7488;
  if (!qword_1EB6E7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7488);
  }

  return result;
}

uint64_t sub_1B0D89328(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(v1 + 20) = v10;
  v36 = a1;
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v10);
  if (v11)
  {
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v10);
  }

  v13 = result;
  v14 = *(v1 + 20);
  v15 = (v14 + result);
  if (__CFADD__(v14, result))
  {
    goto LABEL_27;
  }

  *(v1 + 20) = v15;
  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v15);
  if (v16)
  {
    v17._countAndFlagsBits = 40;
    v17._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
  }

  v18 = *(v1 + 20);
  v19 = __CFADD__(v18, result);
  v20 = v18 + result;
  if (v19)
  {
    goto LABEL_28;
  }

  *(v1 + 20) = v20;
  v21 = v13 + result;
  if (__OFADD__(v13, result))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  MEMORY[0x1EEE9AC00](result);
  v35[2] = sub_1B0D89BB4;
  v35[3] = 0;
  v35[4] = v2;
  v35[5] = &v36;
  v35[6] = 32;
  v35[7] = 0xE100000000000000;
  result = sub_1B0DE65B0(0, sub_1B0D8A120, v35, a1);
  v22 = v21 + result;
  if (__OFADD__(v21, result))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v23 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v23);
  if (v24)
  {
    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(v2 + 20);
  v27 = (v26 + result);
  if (__CFADD__(v26, result))
  {
    goto LABEL_31;
  }

  *(v2 + 20) = v27;
  v28 = __OFADD__(v22, result);
  v29 = v22 + result;
  if (v28)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v27);
  if (v30)
  {
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v31, v27);
  }

  v32 = *(v2 + 20);
  v19 = __CFADD__(v32, result);
  v33 = v32 + result;
  if (v19)
  {
    goto LABEL_33;
  }

  *(v2 + 20) = v33;
  v34 = v29 + result;
  if (__OFADD__(v29, result))
  {
LABEL_34:
    __break(1u);
    return result;
  }

  result = v8 + v34;
  if (!__OFADD__(v8, v34))
  {
    return result;
  }

  __break(1u);
  return 0;
}

uint64_t FetchModifier.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ParameterValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  Modifier = type metadata accessor for FetchModifier(0);
  MEMORY[0x1EEE9AC00](Modifier);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0D89F58(v2, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = v16[8];
      MEMORY[0x1B2728D70](1);
      MEMORY[0x1B2728D70]((v18 & 1) != 0);
      sub_1B0E46C88();
      return sub_1B0E46C88();
    }

    else
    {
      sub_1B0D78E60(v16, v13);
      MEMORY[0x1B2728D70](2);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1B0D78ED0(&v13[*(v11 + 52)], v10);
      if ((*(v5 + 48))(v10, 1, v4) == 1)
      {
        sub_1B0E46C68();
      }

      else
      {
        sub_1B0D06280(v10, v7);
        sub_1B0E46C68();
        ParameterValue.hash(into:)(a1);
        sub_1B0D8A0C0(v7, type metadata accessor for ParameterValue);
      }

      return sub_1B0398EFC(v13, &qword_1EB6E6F58, &unk_1B0EF5150);
    }
  }

  else
  {
    v19 = *v16;
    MEMORY[0x1B2728D70](0);
    return MEMORY[0x1B2728DB0](v19);
  }
}

uint64_t FetchModifier.hashValue.getter()
{
  sub_1B0E46C28();
  FetchModifier.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D89894()
{
  sub_1B0E46C28();
  FetchModifier.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D898D8(uint64_t a1)
{
  sub_1B0E46C28();
  FetchModifier.hash(into:)(v2);
  return sub_1B0E46CB8();
}

char *sub_1B0D89918(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v39 - v5);
  Modifier = type metadata accessor for FetchModifier(0);
  MEMORY[0x1EEE9AC00](Modifier);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0D89F58(a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_18;
    }

    v11 = *v9;
    v12 = v9[8];
    v13 = *(v2 + 5);
    result = sub_1B0CFC1B0(0x204C414954524150uLL, 0xE800000000000000, (v2 + 8), v13);
    if (v15)
    {
      v16._countAndFlagsBits = 0x204C414954524150;
      v16._object = 0xE800000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
    }

    v17 = result;
    v18 = *(v2 + 5);
    v19 = __CFADD__(v18, result);
    v20 = v18 + result;
    if (v19)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    *(v2 + 5) = v20;
    v9 = v2;
    v21 = sub_1B0E08768(v11, v12);
    v22 = __OFADD__(v17, v21);
    result = (v17 + v21);
    if (!v22)
    {
      return result;
    }

    __break(1u);
  }

  v23 = *v9;
  v24 = *(v2 + 5);
  v6 = 0;
  result = sub_1B0CFC1B0(0x534445474E414843uLL, 0xED00002045434E49, (v2 + 8), v24);
  if (v25)
  {
    v26._countAndFlagsBits = 0x534445474E414843;
    v26._object = 0xED00002045434E49;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v24);
  }

  v27 = result;
  v28 = *(v2 + 5);
  v29 = (v28 + result);
  if (__CFADD__(v28, result))
  {
    goto LABEL_21;
  }

  *(v2 + 5) = v29;
  v39[0] = v23;
  v30 = sub_1B0E469C8();
  v32 = v31;
  v33 = sub_1B0CFC1B0(v30, v31, (v2 + 8), v29);
  if (v34)
  {
    v35._countAndFlagsBits = v30;
    v35._object = v32;
    v33 = ByteBuffer._setStringSlowpath(_:at:)(v35, v29);
  }

  v9 = v33;

  v36 = *(v2 + 5);
  v19 = __CFADD__(v36, v9);
  v37 = v36 + v9;
  if (v19)
  {
    goto LABEL_22;
  }

  *(v2 + 5) = v37;
  result = &v9[v27];
  if (!__OFADD__(v27, v9))
  {
    return result;
  }

  __break(1u);
LABEL_18:
  sub_1B0D78E60(v9, v6);
  v38 = sub_1B0E3001C(v6);
  sub_1B0398EFC(v6, &qword_1EB6E6F58, &unk_1B0EF5150);
  return v38;
}

uint64_t _s12NIOIMAPCore213FetchModifierO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v27 - v5);
  Modifier = type metadata accessor for FetchModifier(0);
  MEMORY[0x1EEE9AC00](Modifier);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v27 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7498, &qword_1B0EF3850);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27 - v17;
  v20 = &v27 + *(v19 + 56) - v17;
  sub_1B0D89F58(a1, &v27 - v17);
  sub_1B0D89F58(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B0D89F58(v18, v12);
      v22 = *v12;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = v20[8];
        if (v12[8])
        {
          if (*v20 != v22)
          {
            v23 = 0;
          }

          if (v23 != 1)
          {
LABEL_8:
            sub_1B0D8A0C0(v18, type metadata accessor for FetchModifier);
            return 0;
          }
        }

        else
        {
          if (*v20 != v22)
          {
            LOBYTE(v23) = 1;
          }

          if (v23)
          {
            goto LABEL_8;
          }
        }

        sub_1B0D8A0C0(v18, type metadata accessor for FetchModifier);
        return 1;
      }

LABEL_16:
      sub_1B0398EFC(v18, &qword_1EB6E7498, &qword_1B0EF3850);
      return 0;
    }

    sub_1B0D89F58(v18, v9);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1B0398EFC(v9, &qword_1EB6E6F58, &unk_1B0EF5150);
      goto LABEL_16;
    }

    sub_1B0D78E60(v20, v6);
    v26 = sub_1B0DCA3C4(v9, v6);
    sub_1B0398EFC(v6, &qword_1EB6E6F58, &unk_1B0EF5150);
    sub_1B0398EFC(v9, &qword_1EB6E6F58, &unk_1B0EF5150);
LABEL_14:
    sub_1B0D8A0C0(v18, type metadata accessor for FetchModifier);
    return v26;
  }

  sub_1B0D89F58(v18, v15);
  v24 = *v15;
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    goto LABEL_16;
  }

  if (((*v20 | v24) & 0x8000000000000000) == 0)
  {
    v26 = *v20 == v24;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for FetchModifier(uint64_t a1)
{
  result = qword_1EB6DE8D0;
  if (!qword_1EB6DE8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0D89F58(uint64_t a1, uint64_t a2)
{
  Modifier = type metadata accessor for FetchModifier(0);
  (*(*(Modifier - 8) + 16))(a2, a1, Modifier);
  return a2;
}

void sub_1B0D8A004(uint64_t a1)
{
  sub_1B041B648(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_1B0D8A078(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B0D8A0C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0D8A120@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B0E23588(*a1, a2, *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t BodyStructure.Fields.parameters.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BodyStructure.Fields.parameters.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t BodyStructure.Fields.id.getter()
{
  v1 = *(v0 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t BodyStructure.Fields.id.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t BodyStructure.Fields.contentDescription.getter()
{
  v1 = *(v0 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t BodyStructure.Fields.contentDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t BodyStructure.Fields.encoding.getter()
{
  v1 = *(v0 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t BodyStructure.Fields.encoding.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

__n128 BodyStructure.Fields.init(parameters:id:contentDescription:encoding:octetCount:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  v15.n128_u64[0] = a3;
  v15.n128_u64[1] = a4;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  *&v17 = a7;
  *(&v17 + 1) = a8;
  v18 = a10;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a10;
  sub_1B0717138(&v14, v13);
  sub_1B0717224();
  v11 = v17;
  *(a9 + 32) = v16;
  *(a9 + 48) = v11;
  *(a9 + 64) = v18;
  result = v15;
  *a9 = v14;
  *(a9 + 16) = result;
  return result;
}

uint64_t BodyStructure.Fields.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  MEMORY[0x1B2728D70](v4);
  v5 = v2;

  if (!v4)
  {
LABEL_5:
    sub_1B0D7A340(&v11);
    if (v10[4])
    {
      sub_1B0E46C68();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      if (v10[6])
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_1B0E46C68();
      if (v10[6])
      {
LABEL_7:
        sub_1B0E46C68();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        if (v10[8])
        {
LABEL_8:
          sub_1B0E46C68();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          return MEMORY[0x1B2728D70](v10[9]);
        }

LABEL_11:
        sub_1B0E46C68();
        return MEMORY[0x1B2728D70](v10[9]);
      }
    }

    sub_1B0E46C68();
    if (v10[8])
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v7 = 0;
  v8 = v3 + 40;
  v9 = v2 + 40;
  while (v7 < *(v5 + 16))
  {
    ++v7;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v8 += 16;
    v9 += 16;
    if (v4 == v7)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t BodyStructure.Fields.hashValue.getter()
{
  sub_1B0E46C28();
  BodyStructure.Fields.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D8A65C()
{
  sub_1B0E46C28();
  BodyStructure.Fields.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D8A6A0(uint64_t a1)
{
  sub_1B0E46C28();
  BodyStructure.Fields.hash(into:)(v2);
  return sub_1B0E46CB8();
}

BOOL sub_1B0D8A6DC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s12NIOIMAPCore213BodyStructureO6FieldsV23__derived_struct_equalsySbAE_AEtFZ_0(v8, v9);
}

void sub_1B0D8A738(uint64_t *a1)
{
  v2 = v1;
  sub_1B0DF7A38(*a1, a1[1], a1[2]);
  v5 = v4;
  v6 = *(v1 + 20);
  v7 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = 32;
    v9._object = 0xE100000000000000;
    v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = *(v1 + 20);
  v11 = (v10 + v7);
  if (__CFADD__(v10, v7))
  {
    goto LABEL_35;
  }

  *(v1 + 20) = v11;
  v12 = __OFADD__(v5, v7);
  v13 = v5 + v7;
  if (v12)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v14 = a1[4];
  if (v14)
  {
    sub_1B0DD55E0(a1[3], v14);
    v16 = v13 + v15;
    if (!__OFADD__(v13, v15))
    {
      goto LABEL_7;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v43 = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, v1 + 8, v11);
  if (v44)
  {
    v45._countAndFlagsBits = 4999502;
    v45._object = 0xE300000000000000;
    v43 = ByteBuffer._setStringSlowpath(_:at:)(v45, v11);
  }

  v46 = *(v1 + 20);
  v30 = __CFADD__(v46, v43);
  v47 = v46 + v43;
  if (v30)
  {
    goto LABEL_44;
  }

  *(v1 + 20) = v47;
  v16 = v13 + v43;
  if (__OFADD__(v13, v43))
  {
    goto LABEL_28;
  }

LABEL_7:
  v17 = *(v1 + 20);
  v18 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v17);
  if (v19)
  {
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    v18 = ByteBuffer._setStringSlowpath(_:at:)(v20, v17);
  }

  v21 = *(v1 + 20);
  v13 = (v21 + v18);
  if (__CFADD__(v21, v18))
  {
    goto LABEL_37;
  }

  *(v1 + 20) = v13;
  v12 = __OFADD__(v16, v18);
  v16 += v18;
  if (v12)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v22 = a1[6];
  if (v22)
  {
    sub_1B0DD55E0(a1[5], v22);
    v12 = __OFADD__(v16, v23);
    v24 = v16 + v23;
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_29:
  v48 = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, v1 + 8, v13);
  if (v49)
  {
    v50._countAndFlagsBits = 4999502;
    v50._object = 0xE300000000000000;
    v48 = ByteBuffer._setStringSlowpath(_:at:)(v50, v13);
  }

  v51 = *(v1 + 20);
  v30 = __CFADD__(v51, v48);
  v52 = v51 + v48;
  if (v30)
  {
    goto LABEL_45;
  }

  *(v1 + 20) = v52;
  v12 = __OFADD__(v16, v48);
  v24 = v16 + v48;
  if (v12)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_13:
  v25 = *(v1 + 20);
  v26 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v25);
  if (v27)
  {
    v28._countAndFlagsBits = 32;
    v28._object = 0xE100000000000000;
    v26 = ByteBuffer._setStringSlowpath(_:at:)(v28, v25);
  }

  v29 = *(v1 + 20);
  v30 = __CFADD__(v29, v26);
  v31 = v29 + v26;
  if (v30)
  {
    goto LABEL_39;
  }

  *(v1 + 20) = v31;
  v32 = v24 + v26;
  if (__OFADD__(v24, v26))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v33 = sub_1B0D7F6F4(a1[7], a1[8]);
  v34 = v32 + v33;
  if (__OFADD__(v32, v33))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v35 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v35);

  v36 = *(v1 + 20);
  v37 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v36);
  if (v38)
  {
    v39._countAndFlagsBits = 32;
    v39._object = 0xE100000000000000;
    v37 = ByteBuffer._setStringSlowpath(_:at:)(v39, v36);
  }

  v40 = v37;

  v41 = *(v2 + 20);
  v30 = __CFADD__(v41, v40);
  v42 = v41 + v40;
  if (v30)
  {
    goto LABEL_42;
  }

  *(v2 + 20) = v42;
  if (__OFADD__(v34, v40))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }
}

BOOL _s12NIOIMAPCore213BodyStructureO6FieldsV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  if ((sub_1B045202C(a1[1], a2[1]) & 1) == 0 || (sub_1B045202C(v4, v5) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = a2[4];
  if (v6)
  {
    if (!v7 || (a1[3] != a2[3] || v6 != v7) && (sub_1B0E46A78() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[6];
  v9 = a2[6];
  if (v8)
  {
    if (!v9 || (a1[5] != a2[5] || v8 != v9) && (sub_1B0E46A78() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[8];
  v11 = a2[8];
  if (v10)
  {
    if (v11 && (a1[7] == a2[7] && v10 == v11 || (sub_1B0E46A78() & 1) != 0))
    {
      return a1[9] == a2[9];
    }
  }

  else if (!v11)
  {
    return a1[9] == a2[9];
  }

  return 0;
}

unint64_t sub_1B0D8AB38()
{
  result = qword_1EB6E74A0;
  if (!qword_1EB6E74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E74A0);
  }

  return result;
}

uint64_t sub_1B0D8AB9C(void *a1)
{
  v2 = v1;
  v32 = a1;
  v4 = a1[2];
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v5);
    if (v7)
    {
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = *(v1 + 20);
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      goto LABEL_29;
    }

    *(v1 + 20) = v12;
  }

  else
  {
    v9 = 0;
    v12 = *(v1 + 20);
  }

  v13 = v12;
  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = 40;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v11 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v11)
  {
    goto LABEL_24;
  }

  *(v1 + 20) = v17;
  v18 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  MEMORY[0x1EEE9AC00](result);
  v31[2] = sub_1B0D5C820;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_1B0DED0F8(0, sub_1B0D3CC60, v31, a1);
  v19 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v20);
  if (v21)
  {
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v2 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v24;
  v25 = __OFADD__(v19, result);
  v26 = v19 + result;
  if (v25)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    return v26;
  }

  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v24);
  if (v27)
  {
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v28, v24);
  }

  v29 = *(v2 + 20);
  v11 = __CFADD__(v29, result);
  v30 = v29 + result;
  if (v11)
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v30;
  v25 = __OFADD__(v26, result);
  result += v26;
  if (v25)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1B0D8ADBC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1B0E44EA8();
  }

  else
  {
    return 0;
  }
}

uint64_t static Flag.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1B0E44BB8();
  v6 = v5;
  if (v4 == sub_1B0E44BB8() && v6 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B0E46A78();
  }

  return v8 & 1;
}

uint64_t Flag.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E44BB8();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t Flag.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46CC8();
  sub_1B0E44BB8();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CA8();
}

uint64_t sub_1B0D8AF58()
{
  sub_1B0E46CC8();
  sub_1B0E44BB8();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CA8();
}

uint64_t sub_1B0D8AFBC(uint64_t a1)
{
  sub_1B0E44BB8();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0D8B010(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E44BB8();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0D8B074(void *a1, uint64_t *a2)
{
  v2 = sub_1B0E44BB8();
  v4 = v3;
  if (v2 == sub_1B0E44BB8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B0E46A78();
  }

  return v7 & 1;
}

uint64_t static Flag.extension(_:)(uint64_t a1, unint64_t a2)
{
  result = sub_1B0D8ADBC(a1, a2);
  if (v4)
  {
    if (result == 92 && v4 == 0xE100000000000000)
    {

LABEL_6:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      return a1;
    }

    v5 = sub_1B0E46A78();

    if (v5)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D8B28C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, uint64_t (*a4)(void *, uint64_t, __n128)@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t *a7@<X5>, unint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1B0506D80(*a1, *a2, a2[1], a2[2], a4, a5, a6, *a7, a8, a9);
  if (!v9)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_1B0D8B2F4(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 1;
  }

  v5 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = 4 << v5;
  v7 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v10 = result & 0xC;
    v11 = result;
    if (v10 == v6)
    {
      v15 = result;
      v11 = sub_1B0A6D6C4(result, a1, a2);
      result = v15;
    }

    v12 = v11 >> 16;
    if (v11 >> 16 >= v2)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v19 = result;
      v14 = sub_1B0E44E08();
      result = v19;
      if (v10 != v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v20[0] = a1;
        v20[1] = v7;
        v13 = v20;
      }

      else
      {
        v13 = v8;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v18 = result;
          v13 = sub_1B0E46368();
          result = v18;
        }
      }

      v14 = *(v13 + v12);
      if (v10 != v6)
      {
LABEL_18:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }
    }

    result = sub_1B0A6D6C4(result, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_19:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_24;
    }

LABEL_22:
    if (v2 <= result >> 16)
    {
      goto LABEL_34;
    }

    result = sub_1B0E44DD8();
LABEL_24:
    v16 = 0;
    v17 = v14 - 32;
    if (v14 < 0x20u)
    {
      return v16;
    }

    if (v17 <= 0x3D)
    {
      if (v17 == 61)
      {
        goto LABEL_8;
      }

      if (((1 << (v14 - 32)) & 0x1000000000000725) != 0)
      {
        return v16;
      }
    }

    if (v14 == 123)
    {
      return v16;
    }

    if ((v14 & 0x80) != 0)
    {
      return 0;
    }

LABEL_8:
    if (4 * v2 == result >> 14)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t static Flag.Keyword.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1B0E44BB8();
  v6 = v5;
  if (v4 == sub_1B0E44BB8() && v6 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B0E46A78();
  }

  return v8 & 1;
}

unint64_t Flag.Keyword.init(_:)(unint64_t a1, unint64_t a2)
{
  v2 = a1;
  if ((sub_1B0D8B2F4(a1, a2) & 1) == 0)
  {

    return 0;
  }

  return v2;
}

uint64_t Flag.Keyword.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E44BB8();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t Flag.Keyword.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  sub_1B0E44BB8();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0D8B66C()
{
  sub_1B0E46C28();
  sub_1B0E44BB8();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

unint64_t sub_1B0D8B888()
{
  result = qword_1EB6E74A8;
  if (!qword_1EB6E74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E74A8);
  }

  return result;
}

unint64_t sub_1B0D8B8E0()
{
  result = qword_1EB6E74B0;
  if (!qword_1EB6E74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E74B0);
  }

  return result;
}

unint64_t sub_1B0D8B938()
{
  result = qword_1EB6E74B8;
  if (!qword_1EB6E74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E74B8);
  }

  return result;
}

uint64_t LiteralSizeParsingError.buffer.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = HIDWORD(a3);
  v9 = HIWORD(a3);

  *v3 = a1;
  *(v3 + 8) = v5;
  *(v3 + 12) = v7;
  *(v3 + 16) = v4;
  *(v3 + 20) = v8;
  *(v3 + 22) = v9;
  return result;
}

uint64_t LiteralSizeParsingError.hashValue.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_1B0E46C28();
  swift_beginAccess();
  sub_1B0E46C38();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D8BC54(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 20);
  v6 = *(v1 + 22);
  sub_1B0E46C28();
  LiteralSizeParsingError.hash(into:)(v8, v2, v3, v4 | (v5 << 32) | (v6 << 48));
  return sub_1B0E46CB8();
}

unint64_t FramingResult.debugDescription.getter(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v5)
    {
      sub_1B0E46298();

      strcpy(v19, "INCOMPLETE: ");
      BYTE5(v19[1]) = 0;
      HIWORD(v19[1]) = -5120;
      v20 = a1;
      v13 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v13);

      MEMORY[0x1B2726E80](0xD000000000000010, 0x80000001B0F2FE00);
      return v19[0];
    }

    v6 = 0x4554454C504D4F43;
    v7 = 0xEA0000000000203ALL;
    goto LABEL_8;
  }

  if (v5 != 2)
  {
    v6 = 0x3A44494C41564E49;
    v7 = 0xE900000000000020;
LABEL_8:
    v20 = v6;
    v21 = v7;
    swift_beginAccess();

    v16 = sub_1B0E44C68();
    v18 = v17;
    sub_1B043440C(a1, a2, a3);
    MEMORY[0x1B2726E80](v16, v18);
    goto LABEL_9;
  }

  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_1B0E46298();

  v20 = 0xD000000000000010;
  v21 = 0x80000001B0F2FDE0;
  swift_beginAccess();

  v9 = sub_1B0E44C68();
  v11 = v10;
  sub_1B043440C(a1, a2, a3);
  MEMORY[0x1B2726E80](v9, v11);

  MEMORY[0x1B2726E80](0x696E69616D657220, 0xEC000000203A676ELL);
  v12 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v12);
LABEL_9:

  return v20;
}

uint64_t FramingResult.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      MEMORY[0x1B2728D70](2, a2, a3);
      swift_beginAccess();
      sub_1B0E46C38();
      return MEMORY[0x1B2728DB0](a5);
    }

    v7 = 3;
  }

  else
  {
    if (v6)
    {
      MEMORY[0x1B2728D70](1, a2, a3);
      return MEMORY[0x1B2728D70](a2);
    }

    v7 = 0;
  }

  MEMORY[0x1B2728D70](v7, a2, a3);
  swift_beginAccess();
  return sub_1B0E46C38();
}

uint64_t FramingResult.hashValue.getter(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1B0E46C28();
  FramingResult.hash(into:)(v9, a1, a2, a3, a4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D8C0E8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = HIBYTE(a4);
  if (HIBYTE(a4) <= 1)
  {
    if (!v5)
    {
      MEMORY[0x1B2728D70](1);
      swift_beginAccess();
      return sub_1B0E46C38();
    }

    v6 = 2;
  }

  else if (v5 == 2)
  {
    v6 = 3;
  }

  else
  {
    if (v5 != 3)
    {
      return MEMORY[0x1B2728D70](0, a2, a3);
    }

    v6 = 4;
  }

  MEMORY[0x1B2728D70](v6, a2, a3);
  return MEMORY[0x1B2728DB0](a2);
}

uint64_t sub_1B0D8C1B0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = a4 >> 61;
  if ((a4 >> 61) > 1)
  {
    if (v6 == 2)
    {
      MEMORY[0x1B2728D70](3);
      MEMORY[0x1B2728D70](a2 & 1);
      return MEMORY[0x1B2728DB0](a3);
    }

    if (v6 != 3)
    {
      v8 = 1;
      return MEMORY[0x1B2728D70](v8);
    }

    v7 = 4;
LABEL_7:
    MEMORY[0x1B2728D70](v7, a2, a3);
    v8 = a2 & 1;
    return MEMORY[0x1B2728D70](v8);
  }

  if (!v6)
  {
    v7 = 0;
    goto LABEL_7;
  }

  MEMORY[0x1B2728D70](2);

  return sub_1B0D8C0E8(a1, a2, a3, a4 & 0x1FFFFFFFFFFFFFFFLL);
}

uint64_t sub_1B0D8C27C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_1B0E46C28();
  v6 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v6)
    {
      MEMORY[0x1B2728D70](2);
      sub_1B0D8C0E8(v10, a1, a2, a3 & 0x1FFFFFFFFFFFFFFFLL);
      return sub_1B0E46CB8();
    }

    v7 = 0;
    goto LABEL_7;
  }

  if (v6 != 2)
  {
    if (v6 != 3)
    {
      v8 = 1;
      goto LABEL_10;
    }

    v7 = 4;
LABEL_7:
    MEMORY[0x1B2728D70](v7);
    v8 = a1 & 1;
LABEL_10:
    MEMORY[0x1B2728D70](v8);
    return sub_1B0E46CB8();
  }

  MEMORY[0x1B2728D70](3);
  MEMORY[0x1B2728D70](a1 & 1);
  MEMORY[0x1B2728DB0](a2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D8C354()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1B0E46C28();
  FramingResult.hash(into:)(v6, v1, v2, v4, v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D8C3C0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_1B0E46C28();
  FramingResult.hash(into:)(v7, v2, v3, v5, v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D8C444()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B0E46C28();
  sub_1B0D8C0E8(v5, v1, v2, v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D8C4AC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1B0E46C28();
  sub_1B0D8C0E8(v6, v2, v3, v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D8C538(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1B0E46C28();
  v5 = v4 >> 61;
  if ((v4 >> 61) <= 1)
  {
    if (v5)
    {
      MEMORY[0x1B2728D70](2);
      sub_1B0D8C0E8(v9, v2, v3, v4 & 0x1FFFFFFFFFFFFFFFLL);
      return sub_1B0E46CB8();
    }

    v6 = 0;
    goto LABEL_7;
  }

  if (v5 != 2)
  {
    if (v5 != 3)
    {
      v7 = 1;
      goto LABEL_10;
    }

    v6 = 4;
LABEL_7:
    MEMORY[0x1B2728D70](v6);
    v7 = v2 & 1;
LABEL_10:
    MEMORY[0x1B2728D70](v7);
    return sub_1B0E46CB8();
  }

  MEMORY[0x1B2728D70](3);
  MEMORY[0x1B2728D70](v2 & 1);
  MEMORY[0x1B2728DB0](v3);
  return sub_1B0E46CB8();
}

char *FramingParser.appendAndFrameBuffer(_:)(uint64_t a1)
{
  if (*(a1 + 12) == *(a1 + 8))
  {
    return MEMORY[0x1E69E7CC0];
  }

  ByteBuffer.writeBuffer(_:)(a1);
  return sub_1B0433C50();
}

unint64_t sub_1B0D8C688(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v5 = HIBYTE(a3);
  if (HIBYTE(a3) > 1)
  {
    if (v5 == 2)
    {
      v6 = sub_1B0D8D5E8(a1);
      goto LABEL_8;
    }

    if (v5 == 3)
    {
      v6 = sub_1B0D8D704(a1);
      goto LABEL_8;
    }

    v9 = *(v3 + 24);
    v10 = *(v4 + 40);
    if (v9 >= (*(v4 + 44) - v10))
    {
      goto LABEL_18;
    }

    if (v9 < 0)
    {
      __break(1u);
    }

    else
    {
      v11 = *(v4 + 54);
      v12 = *(v4 + 52);
      v13 = *(v4 + 32);
      swift_beginAccess();
      if (*(*(v13 + 24) + (v11 | (v12 << 8)) + v10 + v9) == 126)
      {
        *(v4 + 24) = v9 + 1;
      }

      if (qword_1EB6DE5C0 == -1)
      {
        goto LABEL_16;
      }
    }

    swift_once();
LABEL_16:
    v14 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v15 = qword_1EB737EB0;
    v16 = dword_1EB737EB8 | (word_1EB737EBC << 32) | (byte_1EB737EBE << 48);
    v17 = *v4;
    v18 = *(v4 + 8);
    v19 = *(v4 + 16);

    sub_1B04343E0(v17, v18, v19);
    *v4 = v14;
    *(v4 + 8) = v15;
    *(v4 + 16) = v16 | 0x2000000000000000;
    a1 = v14;
    a2 = v15;
    v7 = v16;
    goto LABEL_17;
  }

  if (!v5)
  {
    v7 = a3 & 0xFFFFFFFFFFFFFFLL;
LABEL_17:
    v6 = sub_1B0D8CDAC(a1, a2, v7);
    goto LABEL_8;
  }

  v6 = sub_1B0D8D490(a1);
LABEL_8:
  if ((v6 & 1) == 0)
  {
    result = ByteBuffer.readSlice(length:)(*(v4 + 24));
    *(v4 + 24) = 0;
    if (!result)
    {
      __break(1u);
    }

    return result;
  }

LABEL_18:
  v20 = *(v4 + 16);
  v21 = v20 >> 61;
  if ((v20 >> 61) > 1)
  {
    if (v21 == 2)
    {
      return 1;
    }

    if (v21 == 3)
    {
      return 3;
    }

    return 0;
  }

  if (!v21)
  {
    return 2;
  }

  result = HIBYTE(v20) & 0x1F;
  if ((HIBYTE(v20) & 0x1Fu) > 1)
  {
    if (result != 2)
    {
      if (result != 3)
      {
        return result;
      }

      return 2;
    }

    return 3;
  }

  if (result)
  {
    return 3;
  }

  if (HIDWORD(*(v4 + 8)) == *(v4 + 8))
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

void sub_1B0D8C958(char a1, unint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    v4 = *(v3 + 24);
    v6 = *(v3 + 40);
    v5 = *(v3 + 44);
    v7 = v5 - v6;
    if (v4 < v7)
    {
      if (v4 < 0)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v8 = *(v3 + 54);
      v9 = *(v3 + 52);
      v10 = *(v3 + 32);
      v11 = a2;
      swift_beginAccess();
      a2 = v11;
      v2 = (v8 | (v9 << 8)) + v6;
      if (*(*(v10 + 24) + v2 + v4) == 10)
      {
        v7 = (v6 + 1);
        if (v6 == -1)
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (v5 < v7)
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        *(v3 + 40) = v7;
      }
    }
  }

  v12 = (*(v3 + 44) - *(v3 + 40));
  v7 = *(v3 + 24);
  v13 = __OFSUB__(v12, v7);
  v2 = v12 - v7;
  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_18:
    *(v3 + 24) = v2 + v7;
    __break(1u);
    return;
  }

  v14 = a2 - v2;
  if (a2 <= v2)
  {
    *(v3 + 24) = v7 + a2;
    sub_1B04343E0(*v3, *(v3 + 8), *(v3 + 16));
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = 1;
  }

  else
  {
    *(v3 + 24) = v2 + v7;
    sub_1B04343E0(*v3, *(v3 + 8), *(v3 + 16));
    *v3 = 1;
    *(v3 + 8) = v14;
    *(v3 + 16) = 0x4000000000000000;
  }
}

uint64_t FramingParser.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 1);
  v6 = *(v2 + 2);
  v7 = v6 >> 61;
  if ((v6 >> 61) <= 1)
  {
    if (v7)
    {
      v10 = *(v2 + 5) | (v2[7] << 16);
      v11 = *(v2 + 1);
      MEMORY[0x1B2728D70](2);
      sub_1B0D8C0E8(a1, (v11 << 8) | (v10 << 40) | v4, v5, v6 & 0x1FFFFFFFFFFFFFFFLL);
      goto LABEL_12;
    }

    v8 = 0;
    goto LABEL_7;
  }

  if (v7 != 2)
  {
    if (v7 != 3)
    {
      v9 = 1;
      goto LABEL_10;
    }

    v8 = 4;
LABEL_7:
    MEMORY[0x1B2728D70](v8);
    v9 = v4 & 1;
LABEL_10:
    MEMORY[0x1B2728D70](v9);
    goto LABEL_12;
  }

  MEMORY[0x1B2728D70](3);
  MEMORY[0x1B2728D70](v4 & 1);
  MEMORY[0x1B2728DB0](v5);
LABEL_12:
  MEMORY[0x1B2728D70](*(v2 + 3));
  swift_beginAccess();
  sub_1B0E46C38();
  return MEMORY[0x1B2728D70](*(v2 + 7));
}

uint64_t FramingParser.hashValue.getter()
{
  sub_1B0E46C28();
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = v3 >> 61;
  if ((v3 >> 61) <= 1)
  {
    if (v4)
    {
      v7 = *(v0 + 5) | (v0[7] << 16);
      v8 = *(v0 + 1);
      MEMORY[0x1B2728D70](2);
      sub_1B0D8C0E8(v10, (v8 << 8) | (v7 << 40) | v1, v2, v3 & 0x1FFFFFFFFFFFFFFFLL);
      goto LABEL_12;
    }

    v5 = 0;
    goto LABEL_7;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      v6 = 1;
      goto LABEL_10;
    }

    v5 = 4;
LABEL_7:
    MEMORY[0x1B2728D70](v5);
    v6 = v1 & 1;
LABEL_10:
    MEMORY[0x1B2728D70](v6);
    goto LABEL_12;
  }

  MEMORY[0x1B2728D70](3);
  MEMORY[0x1B2728D70](v1 & 1);
  MEMORY[0x1B2728DB0](v2);
LABEL_12:
  MEMORY[0x1B2728D70](*(v0 + 3));
  swift_beginAccess();
  sub_1B0E46C38();
  MEMORY[0x1B2728D70](*(v0 + 7));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D8CD24(uint64_t a1)
{
  sub_1B0E46C28();
  FramingParser.hash(into:)(v2);
  return sub_1B0E46CB8();
}

BOOL sub_1B0D8CD60(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s12NIOIMAPCore213FramingParserV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8);
}

unsigned __int8 *sub_1B0D8CDAC(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v64 = a3;
  v4 = a2;
  v5 = a1;
  v66 = a1;
  v67 = a2;
  v6 = HIDWORD(a2);
  v68 = a3;
  v7 = HIWORD(a3);
  v70 = BYTE6(a3);
  v8 = HIDWORD(a3);
  v69 = WORD2(a3);
  v9 = *(v3 + 32);
  v11 = *(v3 + 40);
  v10 = *(v3 + 44);
  v12 = *(v3 + 52);
  v13 = *(v3 + 54);

  swift_beginAccess();
  v14 = (v10 - v11);
  v15 = v7;
  v16 = v8;
  v17 = v13 | (v12 << 8);
  while (1)
  {
    v18 = v63[3];
    v19 = v11 + v18;
    if (__OFADD__(v11, v18))
    {
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    if (v19 < v11 || v18 >= v14)
    {
      v28 = v64 | (v16 << 32) | (v15 << 48) | 0x2000000000000000;
      sub_1B04343E0(*v63, v63[1], v63[2]);
      *v63 = v5;
      v63[1] = v4 | (v6 << 32);
      v29 = 1;
      v63[2] = v28;
      return (v29 & 1);
    }

    v21 = *(*(v9 + 24) + v17 + v19);
    v63[3] = v18 + 1;
    if ((v21 - 58) < 0xFFFFFFF6)
    {
      break;
    }

    v4 = v6 + 1;
    if (v6 == -1)
    {
      goto LABEL_101;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v4 >= v64)
      {
        v22 = v4 - v64;
      }

      else
      {
        v22 = 0;
      }

      v23 = sub_1B03904C0();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v22, v23 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v6);
    v5 = v66;
    v24 = v69;
    v4 = v70;
    swift_beginAccess();
    v25 = v70 | (v69 << 8);
    v64 = v68;
    v26 = v68 - v25;
    if (v68 - v25 >= v6)
    {
      v26 = v6;
    }

    if (!v6)
    {
      v26 = 0;
    }

    *(*(v66 + 24) + v25 + v26) = v21;
    v6 = (HIDWORD(v67) + 1);
    if (HIDWORD(v67) == -1)
    {
      goto LABEL_102;
    }

    v16 = v24;
    v15 = v4;
    ++HIDWORD(v67);
    v4 = v67;
    if ((v6 - v67) >= 0x15)
    {
      LOBYTE(v14) = v15;
      sub_1B0D8E278();
      swift_allocError();
      *v27 = v5;
      *(v27 + 8) = v4;
      *(v27 + 12) = v6;
      *(v27 + 16) = v64;
      *(v27 + 20) = v24;
      goto LABEL_95;
    }
  }

  if (v21 == 43)
  {
    goto LABEL_26;
  }

  if (v21 == 125)
  {
    LOBYTE(v14) = v15;
    LOWORD(v17) = v16;
    swift_beginAccess();

    v43 = sub_1B0E44C68();
    v45 = v44;

    v46 = sub_1B0DF8680(v43, v45);
    if (v47)
    {
      goto LABEL_94;
    }

    v48 = v46;
    sub_1B04343E0(*v63, v63[1], v63[2]);
    *v63 = v48;
    *(v63 + 1) = xmmword_1B0EF3C10;
    v49 = v62;
    v50 = sub_1B0D8D704(v48);
    goto LABEL_98;
  }

  if (v21 != 45)
  {
    sub_1B0D8E2CC();
    swift_allocError();
    swift_willThrow();
  }

LABEL_26:
  v31 = v15;
  LOWORD(v14) = v16;
  swift_beginAccess();
  LOWORD(v17) = v14;
  LOBYTE(v14) = v31;

  v32 = sub_1B0E44C68();
  v34 = v33;

  v35 = HIBYTE(v34) & 0xF;
  v36 = v32 & 0xFFFFFFFFFFFFLL;
  if ((v34 & 0x2000000000000000) != 0)
  {
    v37 = HIBYTE(v34) & 0xF;
  }

  else
  {
    v37 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {
LABEL_103:

    goto LABEL_94;
  }

  if ((v34 & 0x1000000000000000) != 0)
  {
    v71 = 0;
    v39 = sub_1B0B6D434(v32, v34, 10);
    v60 = v61;
    goto LABEL_93;
  }

  if ((v34 & 0x2000000000000000) != 0)
  {
    v65[0] = v32;
    v65[1] = v34 & 0xFFFFFFFFFFFFFFLL;
    if (v32 == 43)
    {
      if (!v35)
      {
LABEL_109:
        __break(1u);
        return result;
      }

      if (--v35)
      {
        v39 = 0;
        v55 = v65 + 1;
        while (1)
        {
          v56 = *v55 - 48;
          if (v56 > 9)
          {
            break;
          }

          if (!is_mul_ok(v39, 0xAuLL))
          {
            break;
          }

          v42 = __CFADD__(10 * v39, v56);
          v39 = 10 * v39 + v56;
          if (v42)
          {
            break;
          }

          ++v55;
          if (!--v35)
          {
            goto LABEL_92;
          }
        }
      }
    }

    else if (v32 == 45)
    {
      if (!v35)
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      if (--v35)
      {
        v39 = 0;
        v51 = v65 + 1;
        while (1)
        {
          v52 = *v51 - 48;
          if (v52 > 9)
          {
            break;
          }

          if (!is_mul_ok(v39, 0xAuLL))
          {
            break;
          }

          v42 = 10 * v39 >= v52;
          v39 = 10 * v39 - v52;
          if (!v42)
          {
            break;
          }

          ++v51;
          if (!--v35)
          {
            goto LABEL_92;
          }
        }
      }
    }

    else if (v35)
    {
      v39 = 0;
      v58 = v65;
      while (1)
      {
        v59 = *v58 - 48;
        if (v59 > 9)
        {
          break;
        }

        if (!is_mul_ok(v39, 0xAuLL))
        {
          break;
        }

        v42 = __CFADD__(10 * v39, v59);
        v39 = 10 * v39 + v59;
        if (v42)
        {
          break;
        }

        ++v58;
        if (!--v35)
        {
          goto LABEL_92;
        }
      }
    }

LABEL_91:
    v39 = 0;
    LOBYTE(v35) = 1;
    goto LABEL_92;
  }

  if ((v32 & 0x1000000000000000) != 0)
  {
    result = ((v34 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_1B0E46368();
  }

  v38 = *result;
  if (v38 == 43)
  {
    if (v36 < 1)
    {
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v35 = v36 - 1;
    if (v36 == 1)
    {
      goto LABEL_91;
    }

    v39 = 0;
    if (!result)
    {
      goto LABEL_83;
    }

    v53 = result + 1;
    while (1)
    {
      v54 = *v53 - 48;
      if (v54 > 9)
      {
        goto LABEL_91;
      }

      if (!is_mul_ok(v39, 0xAuLL))
      {
        goto LABEL_91;
      }

      v42 = __CFADD__(10 * v39, v54);
      v39 = 10 * v39 + v54;
      if (v42)
      {
        goto LABEL_91;
      }

      ++v53;
      if (!--v35)
      {
        goto LABEL_92;
      }
    }
  }

  if (v38 != 45)
  {
    if (!v36)
    {
      goto LABEL_91;
    }

    v39 = 0;
    if (!result)
    {
      goto LABEL_83;
    }

    while (1)
    {
      v57 = *result - 48;
      if (v57 > 9)
      {
        goto LABEL_91;
      }

      if (!is_mul_ok(v39, 0xAuLL))
      {
        goto LABEL_91;
      }

      v42 = __CFADD__(10 * v39, v57);
      v39 = 10 * v39 + v57;
      if (v42)
      {
        goto LABEL_91;
      }

      ++result;
      if (!--v36)
      {
        goto LABEL_83;
      }
    }
  }

  if (v36 < 1)
  {
    __break(1u);
    goto LABEL_107;
  }

  v35 = v36 - 1;
  if (v36 == 1)
  {
    goto LABEL_91;
  }

  v39 = 0;
  if (result)
  {
    v40 = result + 1;
    while (1)
    {
      v41 = *v40 - 48;
      if (v41 > 9)
      {
        goto LABEL_91;
      }

      if (!is_mul_ok(v39, 0xAuLL))
      {
        goto LABEL_91;
      }

      v42 = 10 * v39 >= v41;
      v39 = 10 * v39 - v41;
      if (!v42)
      {
        goto LABEL_91;
      }

      ++v40;
      if (!--v35)
      {
        goto LABEL_92;
      }
    }
  }

LABEL_83:
  LOBYTE(v35) = 0;
LABEL_92:
  v71 = v35;
  v60 = v35;
LABEL_93:

  if (v60)
  {
LABEL_94:
    sub_1B0D8E278();
    swift_allocError();
    *v27 = v5;
    *(v27 + 8) = v4;
    *(v27 + 12) = v6;
    *(v27 + 16) = v64;
    *(v27 + 20) = v17;
LABEL_95:
    *(v27 + 22) = v14;
    return swift_willThrow();
  }

  sub_1B04343E0(*v63, v63[1], v63[2]);
  *v63 = v39;
  *(v63 + 1) = xmmword_1B0EF3C20;
  v49 = v62;
  v50 = sub_1B0D8D5E8(v39);
LABEL_98:
  v29 = v50;

  if (!v49)
  {
    return (v29 & 1);
  }

  return result;
}

uint64_t sub_1B0D8D490(uint64_t result)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 24);
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
  }

  else if (v5 < v3 || v4 >= (*(v1 + 44) - v3))
  {
    return 1;
  }

  else
  {
    v6 = result;
    v7 = *(v1 + 32);
    v8 = *(v1 + 52);
    v9 = *(v1 + 54);
    swift_beginAccess();
    v10 = *(*(v7 + 24) + (v9 | (v8 << 8)) + v5);
    *(v1 + 24) = v4 + 1;
    switch(v10)
    {
      case '+':
LABEL_7:
        sub_1B04343E0(*v1, *(v1 + 8), *(v1 + 16));
        *v1 = v6;
        *(v1 + 8) = xmmword_1B0EF3C20;
        return 1;
      case '}':
        sub_1B04343E0(*v1, *(v1 + 8), *(v1 + 16));
        *v1 = v6;
        *(v1 + 8) = xmmword_1B0EF3C10;
        result = sub_1B0D8D704(v6);
        if (!v2)
        {
          return result & 1;
        }

        break;
      case '-':
        goto LABEL_7;
      default:
        sub_1B0D8E2CC();
        swift_allocError();
        return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B0D8D5E8(uint64_t result)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 24);
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
  }

  else if (v5 < v3 || v4 >= (*(v1 + 44) - v3))
  {
    return 1;
  }

  else
  {
    v6 = result;
    v7 = *(v1 + 32);
    v8 = *(v1 + 52);
    v9 = *(v1 + 54);
    swift_beginAccess();
    v10 = *(*(v7 + 24) + (v9 | (v8 << 8)) + v5);
    *(v1 + 24) = v4 + 1;
    if (v10 == 125)
    {
      sub_1B04343E0(*v1, *(v1 + 8), *(v1 + 16));
      *v1 = v6;
      *(v1 + 8) = xmmword_1B0EF3C10;
      result = sub_1B0D8D704(v6);
      if (!v2)
      {
        return result & 1;
      }
    }

    else
    {
      sub_1B0D8E2CC();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B0D8D704(uint64_t result)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 24);
  v4 = v2 + v3;
  if (__OFADD__(v2, v3))
  {
    __break(1u);
  }

  else if (v4 < v2 || v3 >= (*(v1 + 44) - v2))
  {
    return 1;
  }

  else
  {
    v5 = result;
    v6 = *(v1 + 32);
    v7 = *(v1 + 52);
    v8 = *(v1 + 54);
    swift_beginAccess();
    v9 = *(*(v6 + 24) + (v8 | (v7 << 8)) + v4);
    *(v1 + 24) = v3 + 1;
    if (v9 == 10)
    {
      sub_1B04343E0(*v1, *(v1 + 8), *(v1 + 16));
      result = 0;
      *v1 = 1;
      *(v1 + 8) = v5;
      *(v1 + 16) = 0x4000000000000000;
    }

    else if (v9 == 13)
    {
      sub_1B0D8D82C(v5);
      return 0;
    }

    else
    {
      sub_1B0D8E2CC();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B0D8D82C(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  if (v3 >= (*(v1 + 44) - v4))
  {
    result = sub_1B04343E0(*v1, *(v1 + 8), *(v1 + 16));
    v8 = 0;
LABEL_7:
    *v1 = v8;
    *(v1 + 8) = v2;
    *(v1 + 16) = 0x4000000000000000;
    return result;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = *(v1 + 54);
    v6 = *(v1 + 52);
    v7 = *(v1 + 32);
    swift_beginAccess();
    if (*(*(v7 + 24) + (v5 | (v6 << 8)) + v4 + v3) == 10)
    {
      *(v1 + 24) = v3 + 1;
    }

    result = sub_1B04343E0(*v1, *(v1 + 8), *(v1 + 16));
    v8 = 1;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

BOOL sub_1B0D8D8FC(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = HIBYTE(a3);
  v7 = HIBYTE(a6);
  if (HIBYTE(a3) > 1)
  {
    if (v6 == 2)
    {
      if (v7 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (v6 != 3)
      {
        return v7 == 4 && !(a6 & 0xFFFFFFFFFFFFFFLL | a4 | a5);
      }

      if (v7 != 3)
      {
        return 0;
      }
    }

    return a1 == a4;
  }

  if (!v6)
  {
    if (!v7)
    {
      return sub_1B0C2DB54(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6);
    }

    return 0;
  }

  if (v7 == 1)
  {
    return a1 == a4;
  }

  return 0;
}

BOOL sub_1B0D8D980(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v6)
    {
      if (a6 >> 61 == 1)
      {
        v9 = HIBYTE(a6) & 0x1F;
        v10 = HIBYTE(a3) & 0x1F;
        if ((HIBYTE(a3) & 0x1Fu) <= 1)
        {
          if (v10)
          {
            if (v9 == 1 && a1 == a4)
            {
              return 1;
            }
          }

          else if (!v9 && sub_1B0C2DB54(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6 & 0xFFFFFFFFFFFFFFLL))
          {
            return 1;
          }
        }

        else if (v10 == 2)
        {
          if (v9 == 2 && a1 == a4)
          {
            return 1;
          }
        }

        else if (v10 == 3)
        {
          if (v9 == 3 && a1 == a4)
          {
            return 1;
          }
        }

        else if (v9 == 4 && !(a6 & 0xFFFFFFFFFFFFFFLL | a4 | a5))
        {
          return 1;
        }
      }

      return 0;
    }

    if (a6 >> 61)
    {
      return 0;
    }

    return ((a4 ^ a1) & 1) == 0;
  }

  if (v6 != 2)
  {
    if (v6 != 3)
    {
      return a6 >> 61 == 4 && !(a5 | a4) && a6 == 0x8000000000000000;
    }

    if (a6 >> 61 != 3)
    {
      return 0;
    }

    return ((a4 ^ a1) & 1) == 0;
  }

  if (a6 >> 61 != 2)
  {
    return 0;
  }

  return ((a4 ^ a1) & 1) == 0 && a2 == a5;
}

BOOL _s12NIOIMAPCore213FramingParserV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = *a2;
  v6 = *(a2 + 1) | ((*(a2 + 5) | (a2[7] << 16)) << 32);
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = v3 >> 61;
  if ((v3 >> 61) > 1)
  {
    if (v9 == 2)
    {
      if (v8 >> 61 == 2)
      {
        v10 = 0;
        if (((v2 ^ v5) & 1) != 0 || v4 != v7)
        {
          return v10;
        }

        goto LABEL_34;
      }
    }

    else if (v9 == 3)
    {
      if (v8 >> 61 == 3)
      {
LABEL_8:
        if ((v2 ^ v5))
        {
          return 0;
        }

        goto LABEL_34;
      }
    }

    else if (v8 >> 61 == 4)
    {
      v10 = 0;
      if (v8 != 0x8000000000000000 || v5 | (v6 << 8) | v7)
      {
        return v10;
      }

      goto LABEL_34;
    }

    return 0;
  }

  if (!v9)
  {
    if (!(v8 >> 61))
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (v8 >> 61 != 1)
  {
    return 0;
  }

  v11 = v5 | (v6 << 8);
  v12 = v2 | ((*(a1 + 1) | ((*(a1 + 5) | (a1[7] << 16)) << 32)) << 8);
  v13 = v8 & 0x1F00000000000000;
  v14 = HIBYTE(v3) & 0x1F;
  if ((HIBYTE(v3) & 0x1Fu) <= 1)
  {
    if (v14)
    {
      v10 = 0;
      v15 = 0x100000000000000;
      goto LABEL_32;
    }

    if (v13)
    {
      return 0;
    }

    v16 = a1;
    v17 = a2;
    v18 = sub_1B0C2DB54(v12, v4, v3 & 0xFFFFFFFFFFFFFFLL, v11, v7, v8 & 0xFFFFFFFFFFFFFFLL);
    a2 = v17;
    v19 = v18;
    a1 = v16;
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (v14 == 2)
    {
      v10 = 0;
      v15 = 0x200000000000000;
      goto LABEL_32;
    }

    if (v14 == 3)
    {
      v10 = 0;
      v15 = 0x300000000000000;
LABEL_32:
      if (v13 != v15 || v12 != v11)
      {
        return v10;
      }

      goto LABEL_34;
    }

    if (v13 != 0x400000000000000 || v8 & 0xFFFFFFFFFFFFFFLL | v7 | v11)
    {
      return 0;
    }
  }

LABEL_34:
  if (*(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  v20 = a1;
  v21 = a2;
  if (!sub_1B0C2DB54(*(a1 + 4), *(a1 + 5), *(a1 + 12) | (*(a1 + 26) << 32) | (a1[54] << 48), *(a2 + 4), *(a2 + 5), *(a2 + 12) | (*(a2 + 26) << 32) | (a2[54] << 48)))
  {
    return 0;
  }

  return *(v20 + 7) == *(v21 + 7);
}

BOOL _s12NIOIMAPCore213FramingResultO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v9 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v9 == 2)
    {
      if (a7 >> 62 == 2)
      {
        return sub_1B0C2DB54(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a5, a6, a7 & 0xFFFFFFFFFFFFFFLL) && a4 == a8;
      }

      return 0;
    }

    if (a7 >> 62 != 3)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (!v9)
  {
    if (a7 >> 62)
    {
      return 0;
    }

LABEL_15:
    v12 = a3 & 0xFFFFFFFFFFFFFFLL;

    return sub_1B0C2DB54(a1, a2, v12, a5, a6, a7 & 0xFFFFFFFFFFFFFFLL);
  }

  return a7 >> 62 == 1 && a1 == a5;
}

unint64_t sub_1B0D8DDC0()
{
  result = qword_1EB6E74C0;
  if (!qword_1EB6E74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E74C0);
  }

  return result;
}

unint64_t sub_1B0D8DE18()
{
  result = qword_1EB6E74C8;
  if (!qword_1EB6E74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E74C8);
  }

  return result;
}

unint64_t sub_1B0D8DE70()
{
  result = qword_1EB6E74D0;
  if (!qword_1EB6E74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E74D0);
  }

  return result;
}

unint64_t sub_1B0D8DEC8()
{
  result = qword_1EB6E74D8;
  if (!qword_1EB6E74D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E74D8);
  }

  return result;
}

uint64_t sub_1B0D8DF3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 32))
  {
    return (*a1 + 253);
  }

  v3 = ((*(a1 + 23) >> 6) & 0xFFFFFF03 | (4 * (*(a1 + 23) & 0x3F))) ^ 0xFF;
  if (v3 >= 0xFC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0D8DF8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = ((-a2 >> 2) - (a2 << 6)) << 56;
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_1B0D8E00C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0D8E054(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0D8E0B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1C && *(a1 + 24))
  {
    return (*a1 + 28);
  }

  v3 = (((*(a1 + 16) >> 59) >> 2) & 0xFFFFFFE7 | (8 * ((*(a1 + 16) >> 59) & 3))) ^ 0x1F;
  if (v3 >= 0x1B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0D8E108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1B)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 28;
    if (a3 >= 0x1C)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1C)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 3) & 3) - 4 * a2) << 59;
    }
  }

  return result;
}

uint64_t sub_1B0D8E16C(uint64_t result, uint64_t a2)
{
  if (a2 < 4)
  {
    *(result + 16) = *(result + 16) & 0x7FFFFFFFFFFFFFFLL | (a2 << 61);
  }

  else
  {
    *result = (a2 - 4);
    *(result + 8) = xmmword_1B0EF3C30;
  }

  return result;
}

unint64_t sub_1B0D8E1B0()
{
  result = qword_1EB6E74E0;
  if (!qword_1EB6E74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E74E0);
  }

  return result;
}

unint64_t sub_1B0D8E204()
{
  result = qword_1EB6E74E8;
  if (!qword_1EB6E74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E74E8);
  }

  return result;
}

uint64_t sub_1B0D8E258(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }

  return result;
}

uint64_t sub_1B0D8E268(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }

  return result;
}

unint64_t sub_1B0D8E278()
{
  result = qword_1EB6E74F0;
  if (!qword_1EB6E74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E74F0);
  }

  return result;
}

unint64_t sub_1B0D8E2CC()
{
  result = qword_1EB6E74F8;
  if (!qword_1EB6E74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E74F8);
  }

  return result;
}

uint64_t sub_1B0D8E330(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 24))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 23);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0D8E378(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 23) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0D8E3BC(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    *(result + 22) = 0;
    *(result + 20) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
  }

  *(result + 23) = a2;
  return result;
}

unint64_t sub_1B0D8E404()
{
  result = qword_1EB6E7500;
  if (!qword_1EB6E7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7500);
  }

  return result;
}

unint64_t sub_1B0D8E45C()
{
  result = qword_1EB6E7508;
  if (!qword_1EB6E7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7508);
  }

  return result;
}

unint64_t sub_1B0D8E4B4()
{
  result = qword_1EB6E7510;
  if (!qword_1EB6E7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7510);
  }

  return result;
}

uint64_t FullDateTime.date.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  *v3 = result;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

__n128 FullDateTime.time.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  result = *(v1 + 24);
  v4 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 FullDateTime.time.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 56) = *(a1 + 32);
  return result;
}

void __swiftcall FullDateTime.init(date:time:)(NIOIMAPCore2::FullDateTime *__return_ptr retstr, NIOIMAPCore2::FullDate date, NIOIMAPCore2::FullTime *time)
{
  retstr->date = date;
  v3 = *&time->second;
  *&retstr->time.hour = *&time->hour;
  *&retstr->time.second = v3;
  retstr->time.fraction.is_nil = time->fraction.is_nil;
}

uint64_t static FullTime.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t FullDateTime.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x1B2728D70](*v0);
  MEMORY[0x1B2728D70](v1);
  MEMORY[0x1B2728D70](v2);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 56);
  MEMORY[0x1B2728D70](*(v0 + 24));
  MEMORY[0x1B2728D70](v3);
  MEMORY[0x1B2728D70](v5);
  if (v6)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  return MEMORY[0x1B2728D70](v4);
}

uint64_t FullDateTime.hashValue.getter()
{
  sub_1B0E46C28();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x1B2728D70](*v0);
  MEMORY[0x1B2728D70](v1);
  MEMORY[0x1B2728D70](v2);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 56);
  MEMORY[0x1B2728D70](*(v0 + 24));
  MEMORY[0x1B2728D70](v3);
  MEMORY[0x1B2728D70](v5);
  sub_1B0E46C68();
  if ((v6 & 1) == 0)
  {
    MEMORY[0x1B2728D70](v4);
  }

  return sub_1B0E46CB8();
}

BOOL sub_1B0D8E784(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s12NIOIMAPCore212FullDateTimeV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

NIOIMAPCore2::FullDate __swiftcall FullDate.init(year:month:day:)(Swift::Int year, Swift::Int month, Swift::Int day)
{
  if ((month - 13) < 0xFFFFFFFFFFFFFFF4 || (day - 32) < 0xFFFFFFFFFFFFFFE1)
  {
    __break(1u);
  }

  result.day = day;
  result.month = month;
  result.year = year;
  return result;
}

uint64_t FullDate.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1B2728D70](a2);
  MEMORY[0x1B2728D70](a3);
  return MEMORY[0x1B2728D70](a4);
}

uint64_t FullDate.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  MEMORY[0x1B2728D70](a2);
  MEMORY[0x1B2728D70](a3);
  return sub_1B0E46CB8();
}

uint64_t FullTime.fraction.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

void __swiftcall FullTime.init(hour:minute:second:fraction:)(NIOIMAPCore2::FullTime *__return_ptr retstr, Swift::Int hour, Swift::Int minute, Swift::Int second, Swift::Int_optional fraction)
{
  retstr->hour = hour;
  retstr->minute = minute;
  retstr->second = second;
  retstr->fraction.value = fraction.value;
  retstr->fraction.is_nil = fraction.is_nil;
}

uint64_t FullTime.hash(into:)()
{
  MEMORY[0x1B2728D70](*v0);
  MEMORY[0x1B2728D70](*(v0 + 8));
  MEMORY[0x1B2728D70](*(v0 + 16));
  if (*(v0 + 32) == 1)
  {
    return sub_1B0E46C68();
  }

  v2 = *(v0 + 24);
  sub_1B0E46C68();
  return MEMORY[0x1B2728D70](v2);
}

uint64_t FullTime.hashValue.getter()
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](*v0);
  MEMORY[0x1B2728D70](*(v0 + 8));
  MEMORY[0x1B2728D70](*(v0 + 16));
  if (*(v0 + 32) == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    v1 = *(v0 + 24);
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](v1);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0D8EAA8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  MEMORY[0x1B2728D70](v2);
  MEMORY[0x1B2728D70](v4);
  sub_1B0E46C68();
  if (v5 != 1)
  {
    MEMORY[0x1B2728D70](v3);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0D8EB4C()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  MEMORY[0x1B2728D70](*v0);
  MEMORY[0x1B2728D70](v1);
  MEMORY[0x1B2728D70](v3);
  if (v4 == 1)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  return MEMORY[0x1B2728D70](v2);
}

uint64_t sub_1B0D8EBC4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = *(v1 + 32);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v2);
  MEMORY[0x1B2728D70](v3);
  MEMORY[0x1B2728D70](v5);
  sub_1B0E46C68();
  if (v6 != 1)
  {
    MEMORY[0x1B2728D70](v4);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0D8EC64(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v5 = 1;
    }

    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1B0D8ECC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1B0D8EFD8(a1, 4);
  v9 = v8;
  v10 = sub_1B0D8EFD8(a2, 2);
  v12 = v11;
  v13 = *(v4 + 20);
  v14 = sub_1B0D8EFD8(a3, 2);
  v16 = v15;
  MEMORY[0x1B2726E80](45, 0xE100000000000000);
  MEMORY[0x1B2726E80](v10, v12);

  MEMORY[0x1B2726E80](45, 0xE100000000000000);
  MEMORY[0x1B2726E80](v14, v16);

  v17 = sub_1B0CFC1B0(v7, v9, v4 + 8, v13);
  if (v18)
  {
    v19._countAndFlagsBits = v7;
    v19._object = v9;
    v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v13);
  }

  v20 = v17;

  v22 = *(v4 + 20);
  v23 = __CFADD__(v22, v20);
  v24 = v22 + v20;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 20) = v24;
    return v20;
  }

  return result;
}

uint64_t sub_1B0D8EDF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B0D8EFD8(*a1, 2);
  v6 = v5;
  v7 = sub_1B0D8EFD8(*(a1 + 8), 2);
  v9 = v8;
  v10 = *(v2 + 20);
  v11 = sub_1B0D8EFD8(*(a1 + 16), 2);
  v13 = v12;
  MEMORY[0x1B2726E80](58, 0xE100000000000000);
  MEMORY[0x1B2726E80](v7, v9);

  MEMORY[0x1B2726E80](58, 0xE100000000000000);
  MEMORY[0x1B2726E80](v11, v13);

  v14 = sub_1B0CFC1B0(v4, v6, v2 + 8, v10);
  if (v15)
  {
    v16._countAndFlagsBits = v4;
    v16._object = v6;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v10);
  }

  v17 = v14;

  v19 = *(v2 + 20);
  v20 = (v19 + v17);
  if (__CFADD__(v19, v17))
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v2 + 20) = v20;
  if (*(a1 + 32))
  {
    v21 = 0;
  }

  else
  {
    v22 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v22);

    v23 = sub_1B0CFC1B0(0x2EuLL, 0xE100000000000000, v2 + 8, v20);
    if (v24)
    {
      v25._countAndFlagsBits = 46;
      v25._object = 0xE100000000000000;
      v23 = ByteBuffer._setStringSlowpath(_:at:)(v25, v20);
    }

    v21 = v23;

    v26 = *(v2 + 20);
    v27 = __CFADD__(v26, v21);
    v28 = v26 + v21;
    if (v27)
    {
      goto LABEL_14;
    }

    *(v2 + 20) = v28;
  }

  result = v17 + v21;
  if (__OFADD__(v17, v21))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D8EFD8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B0E469C8();
  v5 = v4;
  if (sub_1B0E44CF8() >= a2)
  {
    return v3;
  }

  result = sub_1B0E44CF8();
  if (!__OFSUB__(a2, result))
  {
    v7 = sub_1B0E44E88();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](v3, v5);

    return v7;
  }

  __break(1u);
  return result;
}

BOOL _s12NIOIMAPCore212FullDateTimeV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v2 || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  if (*(a1 + 56))
  {
    return (*(a2 + 56) & 1) != 0;
  }

  return (*(a2 + 56) & 1) == 0 && *(a1 + 48) == *(a2 + 48);
}

unint64_t sub_1B0D8F12C()
{
  result = qword_1EB6E7518;
  if (!qword_1EB6E7518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7518);
  }

  return result;
}

unint64_t sub_1B0D8F184()
{
  result = qword_1EB6E7520;
  if (!qword_1EB6E7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7520);
  }

  return result;
}

unint64_t sub_1B0D8F1DC()
{
  result = qword_1EB6E7528;
  if (!qword_1EB6E7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7528);
  }

  return result;
}

uint64_t sub_1B0D8F260(char *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1;
  v6 = *(a1 + 2);
  if (!v6)
  {
    if (qword_1EB6DE5C0 != -1)
    {
      goto LABEL_17;
    }

    goto LABEL_4;
  }

  v7 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(*(a1 + 2), a2, a3, a4, a5);
  swift_beginAccess();
  v8 = 0;
  v9 = *(v7 + 16);
  for (i = v6; ; i = 0)
  {
    v11 = v8 + i;
    if (!__CFADD__(v8, i))
    {
      break;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
LABEL_4:
    v7 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v8 = HIDWORD(qword_1EB737EB0);
    v9 = dword_1EB737EB8;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v11 >= v9)
    {
      v12 = v11 - v9;
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_1B03904C0();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v12, v13 & 1);
  }

  if (HIDWORD(v6))
  {
    goto LABEL_15;
  }

  v5 += 32;
  ByteBuffer._ensureAvailableCapacity(_:at:)(i, v8);
  ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v5, &v5[v6], v8);
  if (__CFADD__(v8, i))
  {
    goto LABEL_16;
  }

  return v7;
}

uint64_t GmailLabel.init(mailboxName:)(char *a1)
{
  v1 = sub_1B0D8F260(a1, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);

  return v1;
}

uint64_t GmailLabel.init(useAttribute:)(unint64_t a1, unint64_t a2)
{
  v2 = ByteBufferAllocator.buffer(string:)(a1, a2, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);

  return v2;
}

Swift::String __swiftcall GmailLabel.makeDisplayString()()
{
  sub_1B0DF0B3C(v0, v1, v2 & 0xFFFFFFFFFFFFFFLL);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t GmailLabel.hashValue.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_1B0E46C28();
  swift_beginAccess();
  sub_1B0E46C38();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D8F72C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 20);
  v6 = *(v1 + 22);
  sub_1B0E46C28();
  GmailLabel.hash(into:)(v8, v2, v3, v4 | (v5 << 32) | (v6 << 48));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D8F798(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v5);
    if (v7)
    {
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = *(v1 + 20);
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      goto LABEL_29;
    }

    *(v1 + 20) = v12;
  }

  else
  {
    v9 = 0;
    v12 = *(v1 + 20);
  }

  v13 = v12;
  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = 40;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v11 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v11)
  {
    goto LABEL_24;
  }

  *(v1 + 20) = v17;
  v18 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  MEMORY[0x1EEE9AC00](result);
  v31[2] = sub_1B0D8F9B8;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_1B0DED0E0(0, sub_1B0D80728, v31, a1);
  v19 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v20);
  if (v21)
  {
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v2 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v24;
  v25 = __OFADD__(v19, result);
  v26 = v19 + result;
  if (v25)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    return v26;
  }

  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v24);
  if (v27)
  {
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v28, v24);
  }

  v29 = *(v2 + 20);
  v11 = __CFADD__(v29, result);
  v30 = v29 + result;
  if (v11)
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v30;
  v25 = __OFADD__(v26, result);
  result += v26;
  if (v25)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

void sub_1B0D8F9B8(uint64_t a1)
{
  v1 = *a1;
  v3 = *(a1 + 8);
  v2 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 22);
  if (v2 == v3 || (swift_beginAccess(), *(*(v1 + 24) + (v6 | (v5 << 8)) + v3) != 92))
  {
    sub_1B0D4B6B8(v1, v3 | (v2 << 32), v4 | (v5 << 32) | (v6 << 48));
  }

  else
  {
    v7 = v1;
    v8 = v3;
    v9 = v2;
    v10 = v4;
    v11 = v5;
    v12 = v6;
    EncodeBuffer.writeBuffer(_:)(&v7);
  }
}

unint64_t sub_1B0D8FA78()
{
  result = qword_1EB6DE9C8;
  if (!qword_1EB6DE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE9C8);
  }

  return result;
}

void sub_1B0D8FADC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      v18 = swift_allocError();
      *v19 = a3;
    }

    else
    {
      v13 = *a1;
      v14 = a1[1];
      v15 = *(a1 + 4);
      v16 = *(a1 + 10);
      v17 = *(a1 + 22);

      sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, v9, a3);
      v18 = v8;
      if (!v8)
      {
        sub_1B0D9009C(a1, v9, a3, a4, a5, a6, a7, v52);
        sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, v9, a3);

        v40 = v52[8];
        v41 = v52[9];
        v42 = v52[10];
        v36 = v52[4];
        v37 = v52[5];
        v38 = v52[6];
        v39 = v52[7];
        v32 = v52[0];
        v33 = v52[1];
        v34 = v52[2];
        v35 = v52[3];
        sub_1B0BD2F88(&v32);
LABEL_15:
        v63 = v40;
        v64 = v41;
        v65 = v42;
        v66 = v43;
        v59 = v36;
        v60 = v37;
        v61 = v38;
        v62 = v39;
        v55 = v32;
        v56 = v33;
        v57 = v34;
        v58 = v35;
        v23 = v41;
        *(a8 + 128) = v40;
        *(a8 + 144) = v23;
        *(a8 + 160) = v65;
        *(a8 + 176) = v66;
        v24 = v60;
        *(a8 + 64) = v59;
        *(a8 + 80) = v24;
        v25 = v62;
        *(a8 + 96) = v61;
        *(a8 + 112) = v25;
        v26 = v56;
        *a8 = v55;
        *(a8 + 16) = v26;
        v27 = v58;
        *(a8 + 32) = v57;
        *(a8 + 48) = v27;
        return;
      }

      *a1 = v13;
      a1[1] = v14;
      *(a1 + 4) = v15;
      *(a1 + 10) = v16;
      *(a1 + 22) = v17;
    }

    swift_willThrow();
    v44[0] = v18;
    v20 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v44[0] = v18;
      v21 = v18;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }
    }

    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v22 = a3;
      swift_willThrow();
      return;
    }

    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, v9, a3);
    sub_1B0D90514(a1, v9, a3, a4, a5, a6, a7, v53);
    v48 = v53[4];
    v49 = v53[5];
    v50 = v53[6];
    v51 = v54;
    *v44 = v53[0];
    v45 = v53[1];
    v46 = v53[2];
    v47 = v53[3];
    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, v9, a3);

    v36 = v48;
    v37 = v49;
    v38 = v50;
    *&v39 = v51;
    v32 = *v44;
    v33 = v45;
    v34 = v46;
    v35 = v47;
    sub_1B0BE2C24(&v32);
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t *sub_1B0D8FF38@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v15 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = result[1];
    v14 = *(result + 4);
    v22 = *(result + 22);
    v23 = *(result + 10);

    sub_1B0D911A4(v11, v9, a3, v24);
    if (v8)
    {

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v23;
      *(v11 + 22) = v22;
      return swift_willThrow();
    }

    v16 = v24[9];
    *(a8 + 128) = v24[8];
    *(a8 + 144) = v16;
    *(a8 + 160) = v24[10];
    *(a8 + 176) = v25;
    v17 = v24[5];
    *(a8 + 64) = v24[4];
    *(a8 + 80) = v17;
    v18 = v24[7];
    *(a8 + 96) = v24[6];
    *(a8 + 112) = v18;
    v19 = v24[1];
    *a8 = v24[0];
    *(a8 + 16) = v19;
    v20 = v24[3];
    *(a8 + 32) = v24[2];
    *(a8 + 48) = v20;
  }

  return result;
}

void sub_1B0D9009C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      v19 = swift_allocError();
      *v20 = a3;
    }

    else
    {
      v13 = *a1;
      v14 = a1[1];
      v15 = *(a1 + 4);
      v16 = *(a1 + 10);
      v17 = *(a1 + 22);

      sub_1B0D96D48(a1, v9, a3, a4, a5, a6, a7, v44);
      v19 = v8;
      if (!v8)
      {
        v28 = &v45;

        v29 = v44;
        goto LABEL_21;
      }

      *a1 = v13;
      a1[1] = v14;
      *(a1 + 4) = v15;
      *(a1 + 10) = v16;
      *(a1 + 22) = v17;
    }

    swift_willThrow();
    v43 = v19;
    v21 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v43 = v19;
      v22 = v19;
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v9 < a3)
    {

      sub_1B0D97420(a1, v9, a3, a4, a5, a6, a7, v46);
      v28 = &v47;

      v29 = v46;
LABEL_21:
      v30 = *(v28 + 3);
      v52 = *(v28 + 2);
      v53 = v30;
      v54 = *(v28 + 4);
      v31 = *(v28 + 1);
      v50 = *v28;
      v51 = v31;
      v32 = *(v29 + 2);
      *(a8 + 16) = *(v29 + 1);
      *(a8 + 32) = v32;
      v33 = *(v29 + 4);
      *(a8 + 48) = *(v29 + 3);
      *(a8 + 64) = v33;
      v34 = v50;
      *(a8 + 104) = v51;
      *(a8 + 88) = v34;
      v35 = v53;
      *(a8 + 152) = v54;
      v36 = v52;
      *(a8 + 136) = v35;
      v55 = v28[10];
      v37 = v29[10];
      v38 = v29[1];
      *a8 = *v29;
      *(a8 + 8) = v38;
      *(a8 + 80) = v37;
      *(a8 + 168) = v55;
      *(a8 + 120) = v36;
      return;
    }

    sub_1B0439BCC();
    v23 = swift_allocError();
    *v24 = a3;
    swift_willThrow();
    v43 = v23;
    v25 = v23;
    if (swift_dynamicCast())
    {

LABEL_16:

      if (v9 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v27 = a3;
        swift_willThrow();
        return;
      }

      sub_1B0D96A2C(a1, v9, a3, a4, a5, a6, a7, v48);
      v28 = &v49;

      v29 = v48;
      goto LABEL_21;
    }

    v43 = v23;
    v26 = v23;
    if (swift_dynamicCast())
    {

      goto LABEL_16;
    }

LABEL_18:

    return;
  }

  __break(1u);
}

void *sub_1B0D90514@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v18 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  v14 = a3;
  if (v18 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v20 = v14;
    return swift_willThrow();
  }

  v13 = a7;
  v8 = a6;
  v15 = a5;
  v12 = a4;
  v11 = a1;
  v83 = a8;
  v19 = *a1;
  v16 = a1[1];
  LODWORD(v118) = *(a1 + 4);
  v86 = *(a1 + 10);
  v84 = *(a1 + 22);
  v103 = MEMORY[0x1E69E7CC0];

  sub_1B0E04AE8(v11, &v103, v18, v14, v12, v15, v8, v13);
  if (v9)
  {

LABEL_9:
    *v11 = v19;
    *(v11 + 8) = v16;
    *(v11 + 16) = v118;
    *(v11 + 20) = v86;
    *(v11 + 22) = v84;
    return swift_willThrow();
  }

  v81 = v19;

  if (v18 + 1 >= v14)
  {

    sub_1B0439BCC();
    swift_allocError();
    *v21 = v14;
    swift_willThrow();
    goto LABEL_9;
  }

  v80 = v103;
  sub_1B0436204(v11);
  v23 = sub_1B0DB4978(v11, v18, v14, v12, v15, v8, v13);
  v10 = 0;
  v78 = v24;
  v79 = *v11;
  v74 = v23;
  v17 = *(v11 + 8);
  v76 = *(v11 + 20);
  v77 = *(v11 + 16);
  v75 = *(v11 + 22);
  if (v18 + 2 >= v14)
  {
    sub_1B0439BCC();
    v10 = swift_allocError();
    *v25 = v14;
LABEL_25:
    v30 = v79;
    goto LABEL_26;
  }

  sub_1B0436204(v11);
  v73 = v18 + 3;
  if (v18 + 3 < v14)
  {
    swift_retain_n();
    sub_1B0D95C08(v11, v18 + 3, v14, v12, v15, v8, v13);
LABEL_31:
    v70 = a3;
    v71 = a2;
    v72 = a1;
    goto LABEL_32;
  }

  sub_1B0439BCC();
  v10 = swift_allocError();
  *v26 = v14;

  swift_willThrow();
  *&v95 = v10;
  v27 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {
  }

  else
  {

    *&v95 = v10;
    v28 = v10;
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_24;
    }
  }

  if (v73 >= v14)
  {

    sub_1B0439BCC();
    v10 = swift_allocError();
    *v29 = v14;
    swift_willThrow();
LABEL_24:

    goto LABEL_25;
  }

  sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, v11, v73, v14);
  v10 = 0;
  sub_1B0C740DC(MEMORY[0x1E69E7CC0]);
  v71 = v44;
  v72 = v43;
  v70 = v45;
LABEL_32:

  v46 = *v11;
  v47 = *(v11 + 8);
  v68 = *(v11 + 20);
  v69 = *(v11 + 16);
  v48 = v18 + 4;
  v67 = *(v11 + 22);
  if (v48 >= v14)
  {
    sub_1B0439BCC();
    v10 = swift_allocError();
    *v49 = v14;
  }

  else
  {

    sub_1B0436204(v11);
    if (!v10)
    {

      sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, v11, v48, v14);

      sub_1B0E027D8(v11, v73, v14, v12, v15, v8, v13);
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;

      v95 = 0uLL;
      v96 = 0uLL;
      *&v97 = 0;
      *(&v97 + 1) = v60;
      *&v98 = v62;
      *(&v98 + 1) = v64;
      *&v99 = v66;
      v103 = 0;
      v104 = 0;
      v105 = 0;
      v106 = 0;
      v107 = 0;
      v108 = v60;
      v109 = v62;
      v110 = v64;
      v111 = v66;
      sub_1B0D7AEF8(&v95, v88);
      sub_1B0D7AF30(&v103);
      v58 = *(&v95 + 1);
      v118 = v95;
      v52 = *(&v96 + 1);
      v51 = v96;
      v54 = *(&v97 + 1);
      v53 = v97;
      v56 = *(&v98 + 1);
      v55 = v98;
      v57 = v99;
      goto LABEL_38;
    }
  }

  swift_willThrow();
  v30 = v79;
  *v11 = v46;
  *(v11 + 8) = v47;
  *(v11 + 16) = v69;
  *(v11 + 20) = v68;
  *(v11 + 22) = v67;
  swift_willThrow();
  *&v95 = v10;
  v50 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {

    v118 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 1;
LABEL_38:
    v89 = xmmword_1B0EA4610;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    *&v93 = 0;
    sub_1B0398EFC(&v89, &qword_1EB6E6F88, &qword_1B0EEEB30);
    *&v95 = v72;
    *(&v95 + 1) = v71;
    *&v96 = v70;
    *(&v96 + 1) = v118;
    *&v97 = v58;
    *(&v97 + 1) = v51;
    *&v98 = v52;
    *(&v98 + 1) = v53;
    *&v99 = v54;
    *(&v99 + 1) = v55;
    *&v100 = v56;
    *(&v100 + 1) = v57;
    v103 = v72;
    v104 = v71;
    v105 = v70;
    v106 = v118;
    v107 = v58;
    v108 = v51;
    v109 = v52;
    v110 = v53;
    v111 = v54;
    v112 = v55;
    v113 = v56;
    v114 = v57;
    sub_1B0D995BC(&v95, v88);
    sub_1B0D99618(&v103);
    v118 = v95;
    v85 = v96;
    v87 = *(&v95 + 1);
    v82 = *(&v96 + 1);
    v33 = *(&v97 + 1);
    v32 = v97;
    v35 = *(&v98 + 1);
    v34 = v98;
    v37 = *(&v99 + 1);
    v36 = v99;
    v39 = *(&v100 + 1);
    v38 = v100;
    goto LABEL_28;
  }

  v19 = v81;
LABEL_26:
  swift_willThrow();
  *v11 = v30;
  *(v11 + 8) = v17;
  *(v11 + 16) = v77;
  *(v11 + 20) = v76;
  *(v11 + 22) = v75;
  swift_willThrow();
  *&v95 = v10;
  v31 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (!swift_dynamicCast())
  {

    goto LABEL_9;
  }

  v118 = 0;
  v85 = 0;
  v87 = 0;
  v82 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
LABEL_28:
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v90 = 0u;
  v89 = 0u;
  sub_1B0398EFC(&v89, &qword_1EB6E6F78, &qword_1B0EEEB20);
  *&v95 = v80;
  *(&v95 + 1) = v74;
  *&v96 = v78;
  *(&v96 + 1) = v118;
  *&v97 = v87;
  *(&v97 + 1) = v85;
  *&v98 = v82;
  *(&v98 + 1) = v32;
  *&v99 = v33;
  *(&v99 + 1) = v34;
  *&v100 = v35;
  *(&v100 + 1) = v36;
  *&v101 = v37;
  *(&v101 + 1) = v38;
  v102 = v39;
  v103 = v80;
  v104 = v74;
  v105 = v78;
  v106 = v118;
  v107 = v87;
  v108 = v85;
  v109 = v82;
  v110 = v32;
  v111 = v33;
  v112 = v34;
  v113 = v35;
  v114 = v36;
  v115 = v37;
  v116 = v38;
  v117 = v39;
  sub_1B07AD120(&v95, v88);
  result = sub_1B0717020(&v103);
  v40 = v100;
  *(v83 + 64) = v99;
  *(v83 + 80) = v40;
  *(v83 + 96) = v101;
  *(v83 + 112) = v102;
  v41 = v96;
  *v83 = v95;
  *(v83 + 16) = v41;
  v42 = v98;
  *(v83 + 32) = v97;
  *(v83 + 48) = v42;
  return result;
}