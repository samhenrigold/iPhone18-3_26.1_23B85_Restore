uint64_t ListSelectOptions.options.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t static ListSelectOptions.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (*(a1 + 32) == 0xFF)
  {
    if (v3 != 0xFF)
    {
      return 0;
    }
  }

  else
  {
    v4 = *(a1 + 16);
    v13[0] = *a1;
    v13[1] = v4;
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    v14 = v2;
    if (v3 == 0xFF)
    {
      return 0;
    }

    v5 = *(a2 + 16);
    v17[0] = *a2;
    v17[1] = v5;
    v19 = *(a2 + 40);
    v20 = *(a2 + 56);
    v18 = v3;
    v6 = a1;
    v7 = a2;
    v8 = sub_1B0DCA1A0(v13, v17);
    a2 = v7;
    v9 = v8;
    a1 = v6;
    if (!v9)
    {
      return 0;
    }
  }

  v10 = *(a1 + 64);
  v11 = *(a2 + 64);

  return sub_1B0D320D8(v10, v11);
}

uint64_t ListSelectOptions.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 32);
  if (v4 == 255)
  {
    MEMORY[0x1B2728D70](0);
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);
    v7 = *(v2 + 56);
    MEMORY[0x1B2728D70](1);
    if (v4)
    {
      MEMORY[0x1B2728D70](1);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1B2728D70](0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D498DC(a1, v5, v6, v7);
  }

  v8 = *(v2 + 64);

  return sub_1B0D4704C(a1, v8);
}

uint64_t ListSelectOptions.hashValue.getter()
{
  sub_1B0E46C28();
  v1 = *(v0 + 32);
  if (v1 == 255)
  {
    MEMORY[0x1B2728D70](0);
  }

  else
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    MEMORY[0x1B2728D70](1);
    if (v1)
    {
      MEMORY[0x1B2728D70](1);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1B2728D70](0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D498DC(v6, v2, v3, v4);
  }

  sub_1B0D4704C(v6, *(v0 + 64));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DCBB98(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  if (v3 == 255)
  {
    MEMORY[0x1B2728D70](0);
  }

  else
  {
    v5 = *(v1 + 40);
    v6 = *(v1 + 48);
    v7 = *(v1 + 56);
    MEMORY[0x1B2728D70](1);
    if (v3)
    {
      MEMORY[0x1B2728D70](1);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1B2728D70](0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D498DC(a1, v5, v6, v7);
  }

  return sub_1B0D4704C(a1, v4);
}

uint64_t sub_1B0DCBC98(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v6 = *(v1 + 56);
  v5 = *(v1 + 64);
  sub_1B0E46C28();
  if (v2 == 255)
  {
    MEMORY[0x1B2728D70](0);
  }

  else
  {
    MEMORY[0x1B2728D70](1);
    if (v2)
    {
      MEMORY[0x1B2728D70](1);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1B2728D70](0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D498DC(v8, v3, v4, v6);
  }

  sub_1B0D4704C(v8, v5);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DCBD88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v4 = *(a2 + 32);
  v5 = *(a2 + 64);
  if (*(a1 + 32) == 0xFF)
  {
    if (v4 != 0xFF)
    {
      return 0;
    }
  }

  else
  {
    v6 = *(a1 + 16);
    v9[0] = *a1;
    v9[1] = v6;
    v10 = v2;
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
    if (v4 == 0xFF)
    {
      return 0;
    }

    v7 = *(a2 + 16);
    v13[0] = *a2;
    v13[1] = v7;
    v14 = v4;
    v15 = *(a2 + 40);
    v16 = *(a2 + 56);
    if (!sub_1B0DCA1A0(v9, v13))
    {
      return 0;
    }
  }

  return sub_1B0D320D8(v3, v5);
}

uint64_t sub_1B0DCBE58(unint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = v7;
  if (v7 <= 0xFDu)
  {
    if (v7 == 252)
    {
      v2 = v1 + 5;
      v19 = v1[5];
      result = sub_1B0CFC1B0(0x5649535255434552uLL, 0xEE00484354414D45, (v1 + 2), v19);
      if (v20)
      {
        v21._countAndFlagsBits = 0x5649535255434552;
        v21._object = 0xEE00484354414D45;
        result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
      }

      LODWORD(v7) = *v2 + result;
      if (!__CFADD__(*v2, result))
      {
        goto LABEL_26;
      }

      __break(1u);
LABEL_23:
      v23 = v2[5];
      v2 += 5;
      v22 = v23;
      result = sub_1B0CFC1B0(0x45544F4D4552uLL, 0xE600000000000000, (v2 - 3), v23);
      if (v24)
      {
        v25._countAndFlagsBits = 0x45544F4D4552;
        v25._object = 0xE600000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v25, v22);
      }

      LODWORD(v7) = *v2 + result;
      if (!__CFADD__(*v2, result))
      {
        goto LABEL_26;
      }

      goto LABEL_40;
    }

    if (v7 != 253)
    {
      goto LABEL_16;
    }

    v9 = 0x2D4C414943455053;
    v2 = v1 + 5;
    v8 = v1[5];
    v10 = (v1 + 2);
    result = sub_1B0CFC1B0(0x2D4C414943455053uLL, 0xEB00000000455355, (v1 + 2), v8);
    if (v13)
    {
      v14._countAndFlagsBits = 0x2D4C414943455053;
      v14._object = 0xEB00000000455355;
      result = ByteBuffer._setStringSlowpath(_:at:)(v14, v8);
    }

    LODWORD(v7) = *v2 + result;
    if (!__CFADD__(*v2, result))
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  if (v11 == 254)
  {
    goto LABEL_23;
  }

  if (v11 == 255)
  {
    v8 = 0x4249524353425553;
    v16 = v2[5];
    v2 += 5;
    v15 = v16;
    v9 = (v2 - 3);
    result = sub_1B0CFC1B0(0x4249524353425553uLL, 0xEA00000000004445, (v2 - 3), v16);
    if (v17)
    {
      v18._countAndFlagsBits = 0x4249524353425553;
      v18._object = 0xEA00000000004445;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
    }

    LODWORD(v7) = *v2 + result;
    if (!__CFADD__(*v2, result))
    {
LABEL_26:
      *v2 = v7;
      return result;
    }

    __break(1u);
  }

LABEL_16:
  if (v7)
  {
    result = sub_1B0DF6F58(v4, v3, v5, v6);
  }

  else
  {
    v26 = v2[5];
    result = sub_1B0CFC1B0(v4, v3, (v2 + 2), v26);
    if (v27)
    {
      v28._countAndFlagsBits = v4;
      v28._object = v3;
      result = ByteBuffer._setStringSlowpath(_:at:)(v28, v26);
    }

    v29 = v2[5];
    v30 = __CFADD__(v29, result);
    v31 = v29 + result;
    if (v30)
    {
      goto LABEL_41;
    }

    v2[5] = v31;
  }

  if (HIBYTE(v10) == 255)
  {
    return result;
  }

  v32 = result;
  v33 = v2[5];
  sub_1B0D3C8F0(v8, v9, v10, HIBYTE(v10) & 1);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, (v2 + 2), v33);
  if (v34)
  {
    v35._countAndFlagsBits = 32;
    v35._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v35, v33);
  }

  v36 = v2[5];
  v30 = __CFADD__(v36, result);
  v37 = v36 + result;
  if (v30)
  {
    goto LABEL_42;
  }

  v2[5] = v37;
  v38 = v32 + result;
  if (__OFADD__(v32, result))
  {
LABEL_43:
    __break(1u);
    return result;
  }

  v39 = sub_1B0DF7268(v8, v9, v10 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v10) & 1) << 56));
  sub_1B0D3CB98(v8, v9, v10);
  result = v38 + v39;
  if (__OFADD__(v38, v39))
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  return result;
}

uint64_t sub_1B0DCC160(unint64_t *a1, uint64_t a2)
{
  v3 = sub_1B0DCBE58(a1);
  v4 = *(a2 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, a2 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = *(a2 + 20);
  v9 = __CFADD__(v8, result);
  v10 = v8 + result;
  if (v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(a2 + 20) = v10;
  v11 = __OFADD__(v3, result);
  result += v3;
  if (v11)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0DCC2B4()
{
  result = qword_1EB6E7738;
  if (!qword_1EB6E7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7738);
  }

  return result;
}

unint64_t sub_1B0DCC30C()
{
  result = qword_1EB6E7740;
  if (!qword_1EB6E7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7740);
  }

  return result;
}

uint64_t sub_1B0DCC360(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 64))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 > 1)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 5)
  {
    return v4 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0DCC3A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = -4 - a2;
    }
  }

  return result;
}

uint64_t BodyStructure.LocationAndExtensions.location.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t BodyStructure.LocationAndExtensions.extensions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t static BodyStructure.LocationAndExtensions.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a5)
    {
      if (a1 == a4 && a2 == a5)
      {
        goto LABEL_6;
      }

      v7 = a3;
      v8 = a6;
      v9 = sub_1B0E46A78();
      a3 = v7;
      a6 = v8;
      if (v9)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  if (a5)
  {
    return 0;
  }

LABEL_6:

  return sub_1B0D38528(a3, a6);
}

uint64_t BodyStructure.LocationAndExtensions.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1B0E46C68();
  }

  v5 = *(a4 + 16);
  result = MEMORY[0x1B2728D70](v5);
  if (v5)
  {
    v7 = (a4 + 55);
    do
    {
      v8 = *(v7 - 23);
      if (*v7)
      {
        MEMORY[0x1B2728D70](1);
        result = MEMORY[0x1B2728D70](v8);
      }

      else
      {
        MEMORY[0x1B2728D70](0);
        if (v8)
        {
          sub_1B0E46C68();
          swift_beginAccess();
          result = sub_1B0E46C38();
        }

        else
        {
          result = sub_1B0E46C68();
        }
      }

      v7 += 24;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t BodyStructure.LocationAndExtensions.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  if (a2)
  {
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  v5 = *(a3 + 16);
  MEMORY[0x1B2728D70](v5);
  if (v5)
  {
    v6 = (a3 + 55);
    do
    {
      v7 = *(v6 - 23);
      if (*v6)
      {
        MEMORY[0x1B2728D70](1);
        MEMORY[0x1B2728D70](v7);
      }

      else
      {
        MEMORY[0x1B2728D70](0);
        sub_1B0E46C68();
        if (v7)
        {
          swift_beginAccess();
          sub_1B0E46C38();
        }
      }

      v6 += 24;
      --v5;
    }

    while (v5);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0DCC80C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1B0E46C28();
  BodyStructure.LocationAndExtensions.hash(into:)(v6, v2, v3, v4);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0DCC868()
{
  result = qword_1EB6E7748;
  if (!qword_1EB6E7748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7748);
  }

  return result;
}

uint64_t sub_1B0DCC8BC(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_1B0E46A78() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_1B0D38528(v4, v6);
}

uint64_t sub_1B0DCC990(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0DCCA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a4;
  v6 = sub_1B0E43808();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B0E43908();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v29 = sub_1B0DCD4FC();
  v30 = v13;
  v31 = v14;
  v32 = v15;
  v16 = v29;
  v17 = v13 & 1;
  v18 = BYTE1(v13) & 1;
  v19 = BYTE2(v13) & 1;
  v20 = v14;
  v21 = v15;
  sub_1B0507508();
  sub_1B0506134();
  v23[2] = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  sub_1B0E438B8();
  sub_1B0DCC990(v8, MEMORY[0x1E69E93B0]);
  sub_1B0DCC990(v11, MEMORY[0x1E69E93F0]);
  sub_1B04197E4(v20, v21);
}

uint64_t sub_1B0DCCBE0()
{
  result = (*(v0 + 16))();
  if ((result & 0x100000000) != 0)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1B0DCCC48(unint64_t a1, uint64_t (*a2)(unint64_t))
{
  v4 = HIDWORD(a1);
  if (qword_1EB6DE5C0 != -1)
  {
    swift_once();
  }

  v5 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v6 = dword_1EB737EB8;
  v7 = word_1EB737EBC;
  v8 = byte_1EB737EBE;

  LOBYTE(v19) = 0;
  BYTE5(v19) = 0;
  *(&v19 + 1) = 65537;
  *(&v19 + 1) = v5;
  *&v20 = qword_1EB737EB0;
  DWORD2(v20) = v6;
  WORD6(v20) = v7;
  BYTE14(v20) = v8;
  *&v21 = sub_1B0D740DC(MEMORY[0x1E69E7CC0]);
  *(&v21 + 1) = v9;
  v22 = v10;
  result = a2(a1);
  if (a1 < v4)
  {
    v12 = DWORD1(v20);
    result = sub_1B0CFC1B0(0x3AuLL, 0xE100000000000000, &v19 + 8, DWORD1(v20));
    if (v13)
    {
      v14._countAndFlagsBits = 58;
      v14._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v14, v12);
    }

    if (__CFADD__(DWORD1(v20), result))
    {
      goto LABEL_13;
    }

    DWORD1(v20) += result;
    result = a2(v4);
  }

  if (DWORD1(v20) < v20)
  {
    __break(1u);
  }

  else if (DWORD2(v20) - (BYTE14(v20) | (WORD6(v20) << 8)) >= DWORD1(v20))
  {
    v23[0] = *(&v19 + 1);
    v23[1] = v20;
    v24 = DWORD2(v20);
    v25 = WORD6(v20);
    v26 = BYTE14(v20);
    v27 = v20;
    v28 = DWORD1(v20);
    v15 = DWORD1(v20) - v20;
    *&v17[0] = 0;
    *(&v17[0] + 1) = 0xE000000000000000;

    MEMORY[0x1B2726D20](v15);
    sub_1B0D547AC(v23, v17);
    sub_1B04394F4(v23);
    v16 = *&v17[0];
    v17[0] = v19;
    v17[1] = v20;
    v17[2] = v21;
    v18 = v22;
    sub_1B0D7E6B4(v17);
    return v16;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1B0DCCE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B0E43908();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B0E43808();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_1B0E437D8();
  sub_1B0507508();
  sub_1B0E43888();
  sub_1B0DCC990(v8, MEMORY[0x1E69E93F0]);
  sub_1B0DCC990(v11, MEMORY[0x1E69E93B0]);
}

uint64_t sub_1B0DCD0A4(void (*a1)(double), uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(__int128 *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v13[-v9];
  a1(v8);
  v14 = v10;
  v11 = sub_1B0D7E524(a5);
  sub_1B03D09B8(v10);
  return v11;
}

uint64_t sub_1B0DCD1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a4;
  v6 = sub_1B0E43808();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B0E43908();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_1B0394868();
  sub_1B0394868();
  v29 = sub_1B0E43928();
  v30 = v13;
  v31 = v14;
  v32 = v15;
  v16 = v29;
  v17 = v13 & 1;
  v18 = BYTE1(v13) & 1;
  v19 = BYTE2(v13) & 1;
  v20 = v14;
  v21 = v15;
  sub_1B0507508();
  sub_1B0506134();
  v23[2] = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  sub_1B0E438B8();
  sub_1B0DCC990(v8, MEMORY[0x1E69E93B0]);
  sub_1B0DCC990(v11, MEMORY[0x1E69E93F0]);
  sub_1B04197E4(v20, v21);
}

uint64_t sub_1B0DCD3EC()
{
  result = (*(v0 + 16))();
  if ((result & 0x100000000) != 0)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1B0DCD484()
{
  result = (*(v0 + 16))();
  if ((result & 0x100000000) != 0)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1B0DCD58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a4;
  v6 = sub_1B0E43808();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B0E43908();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v29 = sub_1B0DCD4FC();
  v30 = v13;
  v31 = v14;
  v32 = v15;
  v16 = v29;
  v17 = v13 & 1;
  v18 = BYTE1(v13) & 1;
  v19 = BYTE2(v13) & 1;
  v20 = v14;
  v21 = v15;
  sub_1B0507508();
  sub_1B0506134();
  v23[2] = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  sub_1B0E438C8();
  sub_1B0DCC990(v8, MEMORY[0x1E69E93B0]);
  sub_1B0DCC990(v11, MEMORY[0x1E69E93F0]);
  sub_1B04197E4(v20, v21);
}

uint64_t sub_1B0DCD75C()
{
  result = (*(v0 + 16))();
  if (v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B0DCD7AC(uint64_t (*a1)(void))
{
  v1 = a1();
  v3 = v2;
  v5 = v4;
  v6 = SectionSpecifier.debugDescription.getter(v1, v2, v4);

  sub_1B0ACE978(v3, v5);
  return v6;
}

void *sub_1B0DCD850()
{
  v1 = (*(v0 + 16))();
  v2 = SectionSpecifier.Part.debugDescription.getter(v1);

  return v2;
}

uint64_t OSLogInterpolation.appendInterpolation(_:)(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1B0E43908();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B0E43808();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v9 = a1(v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = swift_allocObject();
  v16[2] = v9;
  v16[3] = v11;
  v16[4] = v13;
  v16[5] = v15;
  sub_1B0E437D8();
  sub_1B0507508();
  sub_1B0E43888();
  sub_1B0DCC990(v4, MEMORY[0x1E69E93F0]);
  sub_1B0DCC990(v7, MEMORY[0x1E69E93B0]);

  sub_1B0E44838();
  sub_1B0E438D8();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = swift_allocObject();
  v17[2] = v9;
  v17[3] = v11;
  v17[4] = v13;
  v17[5] = v15;
  sub_1B0E437D8();
  sub_1B0507508();
  sub_1B0E43888();
  sub_1B0DCC990(v4, MEMORY[0x1E69E93F0]);
  sub_1B0DCC990(v7, MEMORY[0x1E69E93B0]);
}

uint64_t sub_1B0DCDC04()
{
  v1 = *(v0 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t objectdestroy_53Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1B0DCDC74()
{
  v1 = *(v0 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t sub_1B0DCDCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1B0E43908();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B0E43808();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E44838();
  sub_1B0E438D8();

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_1B0E437D8();
  sub_1B0507508();
  sub_1B0E43888();
  sub_1B0DCC990(v10, MEMORY[0x1E69E93F0]);
  sub_1B0DCC990(v13, MEMORY[0x1E69E93B0]);

  sub_1B0E44838();
  sub_1B0E438D8();
}

uint64_t sub_1B0DCDF00(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1B0A18B88(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v7 >= v6 >> 1)
      {
        sub_1B0A18B88(v6 > 1, v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v9 = sub_1B0E448E8();

  return v9;
}

char *sub_1B0DCE06C()
{
  v1 = (*(v0 + 16))();
  v2 = ResponseTextCode.debugDescription.getter(v1);
  sub_1B0447F14(v1);
  return v2;
}

uint64_t sub_1B0DCE128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B0E437E8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B0E43808();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B0E43908();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_1B0E438F8();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E93A8], v6);
  sub_1B0E437C8();
  (*(v7 + 8))(v9, v6);
  sub_1B0E43888();
  sub_1B0DCC990(v12, MEMORY[0x1E69E93B0]);
  sub_1B0DCC990(v15, MEMORY[0x1E69E93F0]);
}

uint64_t sub_1B0DCE340()
{
  if ((*(v0 + 16))())
  {
    return sub_1B0E44BA8();
  }

  else
  {
    return 8425698;
  }
}

uint64_t sub_1B0DCEA5C()
{
  v1 = (*(v0 + 16))();

  return v1;
}

uint64_t sub_1B0DCEA94()
{
  v1 = (*(v0 + 16))();

  return HIWORD(v1);
}

uint64_t sub_1B0DCF250()
{
  v1 = (*(v0 + 16))();

  return v1;
}

uint64_t MailboxLoggingCounter.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C78();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0DCF3BC()
{
  result = qword_1EB6E7750;
  if (!qword_1EB6E7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7750);
  }

  return result;
}

uint64_t sub_1B0DCF47C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE800000000000000;
    v12 = 0xE700000000000000;
    v13 = 0x5458454E444955;
    if (a1 != 2)
    {
      v13 = 0x44494C4156444955;
      v12 = 0xEB00000000595449;
    }

    v14 = 0x544E45434552;
    if (a1)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v14 = 0x534547415353454DLL;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x4D54534548474948;
    v4 = 0xED0000514553444FLL;
    v5 = 0x494C444E45505041;
    v6 = 0xEB0000000054494DLL;
    if (a1 != 7)
    {
      v5 = 0x49584F424C49414DLL;
      v6 = 0xE900000000000044;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0xE600000000000000;
    v8 = 0x4E4545534E55;
    if (a1 != 4)
    {
      v8 = 1163544915;
      v7 = 0xE400000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v15 = 0x44494C4156444955;
        v16 = 5854281;
LABEL_45:
        v17 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v9 != v15)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v17 = 0xE700000000000000;
      if (v9 != 0x5458454E444955)
      {
        goto LABEL_52;
      }
    }

    else if (a2)
    {
      v17 = 0xE600000000000000;
      if (v9 != 0x544E45434552)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v17 = 0xE800000000000000;
      if (v9 != 0x534547415353454DLL)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v17 = 0xE600000000000000;
      if (v9 != 0x4E4545534E55)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v17 = 0xE400000000000000;
      if (v9 != 1163544915)
      {
LABEL_52:
        v18 = sub_1B0E46A78();
        goto LABEL_53;
      }
    }
  }

  else
  {
    if (a2 != 6)
    {
      if (a2 != 7)
      {
        v17 = 0xE900000000000044;
        if (v9 != 0x49584F424C49414DLL)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v15 = 0x494C444E45505041;
      v16 = 5523789;
      goto LABEL_45;
    }

    v17 = 0xED0000514553444FLL;
    if (v9 != 0x4D54534548474948)
    {
      goto LABEL_52;
    }
  }

LABEL_50:
  if (v10 != v17)
  {
    goto LABEL_52;
  }

  v18 = 1;
LABEL_53:

  return v18 & 1;
}

uint64_t sub_1B0DCF750(uint64_t a1, unsigned __int8 a2)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0DCF8B0(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v20 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v5);
    if (v6)
    {
      v7._countAndFlagsBits = 0;
      v7._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v5);
    }

    v8 = result;
    v9 = *(v2 + 20);
    v10 = __CFADD__(v9, result);
    v11 = v9 + result;
    if (v10)
    {
      goto LABEL_17;
    }

    *(v2 + 20) = v11;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v19[2] = sub_1B0DD17A4;
  v19[3] = 0;
  v19[4] = v2;
  v19[5] = &v20;
  v19[6] = 32;
  v19[7] = 0xE100000000000000;
  result = sub_1B0DE63D8(0, sub_1B0DD178C, v19, v3);
  v12 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    result += v8;
    return result;
  }

  v13 = *(v2 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v2 + 20);
  v10 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v10)
  {
    goto LABEL_18;
  }

  *(v2 + 20) = v17;
  v18 = __OFADD__(v12, result);
  result += v12;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

double MailboxStatus.init(messageCount:recentCount:nextUID:uidValidity:unseenCount:size:highestModificationSequence:appendLimit:mailboxID:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, _OWORD *a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, __int128 a16)
{
  v22[184] = a2 & 1;
  v22[176] = a4 & 1;
  v22[168] = BYTE4(a5) & 1;
  v22[160] = BYTE4(a6) & 1;
  v22[152] = a8 & 1;
  v22[144] = a11 & 1;
  v22[136] = a13 & 1;
  v22[128] = a15 & 1;
  *&v23 = a1;
  BYTE8(v23) = a2 & 1;
  *&v24 = a3;
  BYTE8(v24) = a4 & 1;
  HIDWORD(v24) = a5;
  LOBYTE(v25) = BYTE4(a5) & 1;
  DWORD1(v25) = a6;
  BYTE8(v25) = BYTE4(a6) & 1;
  *&v26 = a7;
  BYTE8(v26) = a8 & 1;
  *&v27 = a10;
  BYTE8(v27) = a11 & 1;
  *&v28 = a12;
  BYTE8(v28) = a13 & 1;
  *&v29 = a14;
  BYTE8(v29) = a15 & 1;
  v30 = a16;
  v31 = a1;
  v32 = a2 & 1;
  v33 = a3;
  v34 = a4 & 1;
  v35 = a5;
  v36 = BYTE4(a5) & 1;
  v37 = a6;
  v38 = BYTE4(a6) & 1;
  v39 = a7;
  v40 = a8 & 1;
  v41 = a10;
  v42 = a11 & 1;
  v43 = a12;
  v44 = a13 & 1;
  v45 = a14;
  v46 = a15 & 1;
  v47 = a16;
  sub_1B0B379C4(&v23, v22);
  sub_1B0B11B9C(&v31);
  v17 = v28;
  a9[4] = v27;
  a9[5] = v17;
  v18 = v30;
  a9[6] = v29;
  a9[7] = v18;
  v19 = v24;
  *a9 = v23;
  a9[1] = v19;
  result = *&v25;
  v21 = v26;
  a9[2] = v25;
  a9[3] = v21;
  return result;
}

uint64_t MailboxAttribute.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x534547415353454DLL;
    v6 = 0x5458454E444955;
    if (a1 != 2)
    {
      v6 = 0x44494C4156444955;
    }

    if (a1)
    {
      v5 = 0x544E45434552;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x4D54534548474948;
    v2 = 0x494C444E45505041;
    if (a1 != 7)
    {
      v2 = 0x49584F424C49414DLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x4E4545534E55;
    if (a1 != 4)
    {
      v3 = 1163544915;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B0DCFCC4()
{
  v1 = *v0;
  sub_1B0E46C28();
  sub_1B0DCF750(v3, v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DCFD14(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  sub_1B0DCF750(v4, v2);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0DCFD58@<X0>(Swift::String *a1@<X0>, NIOIMAPCore2::MailboxAttribute_optional *a2@<X8>)
{
  result = _s12NIOIMAPCore216MailboxAttributeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_1B0DCFD88@<X0>(uint64_t *a1@<X8>)
{
  result = MailboxAttribute.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t MailboxStatus.messageCount.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t MailboxStatus.recentCount.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t MailboxStatus.nextUID.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = BYTE4(result) & 1;
  return result;
}

uint64_t MailboxStatus.uidValidity.setter(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = BYTE4(result) & 1;
  return result;
}

uint64_t MailboxStatus.unseenCount.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t MailboxStatus.size.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t MailboxStatus.highestModificationSequence.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t MailboxStatus.appendLimit.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t MailboxStatus.mailboxID.getter()
{
  v1 = *(v0 + 112);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t MailboxStatus.mailboxID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t MailboxStatus.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8) == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    v2 = *v1;
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](v2);
  }

  if (*(v1 + 24) == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    v3 = v1[2];
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](v3);
  }

  if (*(v1 + 32) == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    sub_1B0E46C68();
    sub_1B0E46C88();
  }

  if (*(v1 + 40) == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    sub_1B0E46C68();
    sub_1B0E46C88();
  }

  if (*(v1 + 56) == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    v4 = v1[6];
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](v4);
  }

  if (*(v1 + 72) == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    v5 = v1[8];
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](v5);
  }

  if (*(v1 + 88) == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    v6 = v1[10];
    sub_1B0E46C68();
    MEMORY[0x1B2728DB0](v6);
  }

  if (*(v1 + 104) != 1)
  {
    v8 = v1[12];
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](v8);
    if (v1[15])
    {
      goto LABEL_24;
    }

    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  if (!v1[15])
  {
    return sub_1B0E46C68();
  }

LABEL_24:
  sub_1B0E46C68();

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t MailboxStatus.hashValue.getter()
{
  sub_1B0E46C28();
  MailboxStatus.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD0270()
{
  sub_1B0E46C28();
  MailboxStatus.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD02B4(uint64_t a1)
{
  sub_1B0E46C28();
  MailboxStatus.hash(into:)(v2);
  return sub_1B0E46CB8();
}

BOOL sub_1B0DD02F0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s12NIOIMAPCore213MailboxStatusV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v14);
}

unint64_t sub_1B0DD0364(unsigned __int8 a1)
{
  v2 = v1;
  if (a1 <= 3u)
  {
    v11 = 0xE800000000000000;
    v12 = 0x534547415353454DLL;
    v13 = 0xE700000000000000;
    v14 = 0x5458454E444955;
    if (a1 != 2)
    {
      v14 = 0x44494C4156444955;
      v13 = 0xEB00000000595449;
    }

    if (a1)
    {
      v12 = 0x544E45434552;
      v11 = 0xE600000000000000;
    }

    if (a1 <= 1u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v14;
    }

    if (a1 <= 1u)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0xED0000514553444FLL;
    v4 = 0x4D54534548474948;
    v5 = 0xEB0000000054494DLL;
    v6 = 0x494C444E45505041;
    if (a1 != 7)
    {
      v6 = 0x49584F424C49414DLL;
      v5 = 0xE900000000000044;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0xE600000000000000;
    v8 = 0x4E4545534E55;
    if (a1 != 4)
    {
      v8 = 1163544915;
      v7 = 0xE400000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (a1 <= 5u)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  v15 = *(v1 + 20);
  v16 = sub_1B0CFC1B0(v9, v10, v1 + 8, v15);
  if (v17)
  {
    v18._countAndFlagsBits = v9;
    v18._object = v10;
    v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
  }

  v19 = v16;

  v21 = *(v2 + 20);
  v22 = __CFADD__(v21, v19);
  v23 = v21 + v19;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 20) = v23;
    return v19;
  }

  return result;
}

uint64_t sub_1B0DD051C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x20535554415453uLL, 0xE700000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x20535554415453;
    v7._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_28;
  }

  *(v1 + 20) = v10;
  v36 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v10);
    if (v12)
    {
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v1 + 20);
    LODWORD(v10) = v15 + result;
    if (__CFADD__(v15, result))
    {
      goto LABEL_35;
    }

    *(v1 + 20) = v10;
  }

  else
  {
    v14 = 0;
  }

  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v10);
  if (v16)
  {
    v17._countAndFlagsBits = 40;
    v17._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v10);
  }

  v18 = *(v1 + 20);
  v19 = __CFADD__(v18, result);
  v20 = v18 + result;
  if (v19)
  {
    goto LABEL_29;
  }

  *(v1 + 20) = v20;
  v21 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  MEMORY[0x1EEE9AC00](result);
  v35[2] = sub_1B0DD17A4;
  v35[3] = 0;
  v35[4] = v2;
  v35[5] = &v36;
  v35[6] = 32;
  v35[7] = 0xE100000000000000;
  result = sub_1B0DE63D8(0, sub_1B0DD171C, v35, a1);
  v22 = v21 + result;
  if (__OFADD__(v21, result))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
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
    goto LABEL_32;
  }

  *(v2 + 20) = v27;
  v28 = __OFADD__(v22, result);
  v29 = v22 + result;
  if (v28)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v11)
  {
    v34 = v29;
    goto LABEL_24;
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
    goto LABEL_36;
  }

  *(v2 + 20) = v33;
  v34 = v29 + result;
  if (__OFADD__(v29, result))
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_24:
  result = v8 + v34;
  if (__OFADD__(v8, v34))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0DD0798(__int128 *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  KeyPath = swift_getKeyPath();
  sub_1B0DD0B74(KeyPath, 0x534547415353454DLL, 0xE800000000000000, a1, v4);

  v6 = swift_getKeyPath();
  sub_1B0DD0B74(v6, 0x544E45434552, 0xE600000000000000, a1, v4);

  v7 = swift_getKeyPath();
  sub_1B0DD0D0C(v7, 0x5458454E444955, 0xE700000000000000, a1, v4);

  v8 = swift_getKeyPath();
  sub_1B0DD0D0C(v8, 0x44494C4156444955, 0xEB00000000595449, a1, v4);

  v9 = swift_getKeyPath();
  sub_1B0DD0B74(v9, 0x4E4545534E55, 0xE600000000000000, a1, v4);

  v10 = swift_getKeyPath();
  sub_1B0DD0B74(v10, 1163544915, 0xE400000000000000, a1, v4);

  v11 = swift_getKeyPath();
  sub_1B0DD0EA8(v11, 0x4D54534548474948, 0xED0000514553444FLL, a1, v4);

  v12 = swift_getKeyPath();
  sub_1B0DD0B74(v12, 0x494C444E45505041, 0xEB0000000054494DLL, a1, v4);

  v13 = swift_getKeyPath();
  sub_1B0DD1040(v13, 0x49584F424C49414DLL, 0xE900000000000044, a1, v4);

  result = swift_beginAccess();
  v32 = *(v4 + 16);
  v15 = v32;
  if (*(v32 + 16))
  {
    v16 = *(v1 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v16);
    if (v17)
    {
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
    }

    v19 = result;
    v20 = *(v2 + 20);
    v21 = __CFADD__(v20, result);
    v22 = v20 + result;
    if (v21)
    {
      goto LABEL_17;
    }

    *(v2 + 20) = v22;
  }

  else
  {
    v19 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v31[2] = sub_1B0DD11E0;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_1B0DE6E08(0, sub_1B0DD16F8, v31, v15);
  v23 = v19 + result;
  if (__OFADD__(v19, result))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (!*(v15 + 16))
  {

    return v23;
  }

  v24 = *(v2 + 20);
  v25 = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v24);
  if (v26)
  {
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v25 = ByteBuffer._setStringSlowpath(_:at:)(v27, v24);
  }

  v28 = v25;

  v29 = *(v2 + 20);
  v21 = __CFADD__(v29, v28);
  v30 = v29 + v28;
  if (v21)
  {
    goto LABEL_18;
  }

  *(v2 + 20) = v30;
  result = v23 + v28;
  if (__OFADD__(v23, v28))
  {
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1B0DD0B74(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v19 = a4[4];
  v20 = a4[5];
  v21 = a4[6];
  v22 = a4[7];
  v15 = *a4;
  v16 = a4[1];
  v17 = a4[2];
  v18 = a4[3];
  sub_1B0B379C4(a4, v23);
  swift_getAtKeyPath();
  v23[4] = v19;
  v23[5] = v20;
  v23[6] = v21;
  v23[7] = v22;
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  result = sub_1B0B11B9C(v23);
  if ((v14 & 1) == 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E46508();
    swift_beginAccess();
    v9 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1B0DF64E8(0, v9[2] + 1, 1, v9);
      *(a5 + 16) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1B0DF64E8((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[4 * v12];
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = 0;
    v13[7] = 0xE000000000000000;
    *(a5 + 16) = v9;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B0DD0D0C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v19 = a4[4];
  v20 = a4[5];
  v21 = a4[6];
  v22 = a4[7];
  v15 = *a4;
  v16 = a4[1];
  v17 = a4[2];
  v18 = a4[3];
  sub_1B0B379C4(a4, v23);
  swift_getAtKeyPath();
  v23[4] = v19;
  v23[5] = v20;
  v23[6] = v21;
  v23[7] = v22;
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  result = sub_1B0B11B9C(v23);
  if ((v14 & 1) == 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E46508();
    swift_beginAccess();
    v9 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1B0DF64E8(0, v9[2] + 1, 1, v9);
      *(a5 + 16) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1B0DF64E8((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[4 * v12];
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = 0;
    v13[7] = 0xE000000000000000;
    *(a5 + 16) = v9;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B0DD0EA8(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v19 = a4[4];
  v20 = a4[5];
  v21 = a4[6];
  v22 = a4[7];
  v15 = *a4;
  v16 = a4[1];
  v17 = a4[2];
  v18 = a4[3];
  sub_1B0B379C4(a4, v23);
  swift_getAtKeyPath();
  v23[4] = v19;
  v23[5] = v20;
  v23[6] = v21;
  v23[7] = v22;
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  result = sub_1B0B11B9C(v23);
  if ((v14 & 1) == 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E46508();
    swift_beginAccess();
    v9 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1B0DF64E8(0, v9[2] + 1, 1, v9);
      *(a5 + 16) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1B0DF64E8((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[4 * v12];
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = 0;
    v13[7] = 0xE000000000000000;
    *(a5 + 16) = v9;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B0DD1040(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v19 = a4[4];
  v20 = a4[5];
  v21 = a4[6];
  v22 = a4[7];
  v15 = *a4;
  v16 = a4[1];
  v17 = a4[2];
  v18 = a4[3];
  sub_1B0B379C4(a4, v23);
  swift_getAtKeyPath();
  v23[4] = v19;
  v23[5] = v20;
  v23[6] = v21;
  v23[7] = v22;
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  result = sub_1B0B11B9C(v23);
  if (v14)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E46508();
    swift_beginAccess();
    v9 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1B0DF64E8(0, v9[2] + 1, 1, v9);
      *(a5 + 16) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1B0DF64E8((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[4 * v12];
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = 0;
    v13[7] = 0xE000000000000000;
    *(a5 + 16) = v9;
    swift_endAccess();
  }

  return result;
}

unint64_t sub_1B0DD11E0(Swift::String *a1, uint64_t a2)
{
  countAndFlagsBits = a1[1]._countAndFlagsBits;
  object = a1[1]._object;
  v13 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1B2726E80](32, 0xE100000000000000);
  MEMORY[0x1B2726E80](countAndFlagsBits, object);
  v5 = *(a2 + 20);
  v6 = sub_1B0CFC1B0(v13._countAndFlagsBits, v13._object, a2 + 8, v5);
  if (v7)
  {
    v6 = ByteBuffer._setStringSlowpath(_:at:)(v13, v5);
  }

  v8 = v6;

  v10 = *(a2 + 20);
  v11 = __CFADD__(v10, v8);
  v12 = v10 + v8;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 20) = v12;
    return v8;
  }

  return result;
}

uint64_t sub_1B0DD12A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, uint64_t, __n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>, unint64_t a8@<X6>, void *a9@<X7>)
{
  v11 = *a1;
  v12 = *(a2 + 32);
  v13 = *a6;
  v14 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v14;
  v17 = v12;
  result = sub_1B0E24010(v11, v16, a3, a4, a5, v13, a8, a9);
  if (!v9)
  {
    *a7 = result;
  }

  return result;
}

BOOL _s12NIOIMAPCore213MailboxStatusV23__derived_struct_equalsySbAC_ACtFZ_0(_BOOL8 result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(result + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*result != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (*(result + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(result + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 32);
  if (*(result + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 28) != *(result + 28))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 40);
  if (*(result + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(result + 36) != *(a2 + 36))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(a2 + 56);
  if (*(result + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(result + 48) != *(a2 + 48))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  v7 = *(a2 + 72);
  if (*(result + 72))
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(result + 64) != *(a2 + 64))
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  if (*(result + 88))
  {
    if ((*(a2 + 88) & 1) == 0)
    {
      return 0;
    }

LABEL_43:
    v10 = *(a2 + 104);
    if (*(result + 104))
    {
      if (!*(a2 + 104))
      {
        return 0;
      }
    }

    else
    {
      if (*(result + 96) != *(a2 + 96))
      {
        v10 = 1;
      }

      if (v10)
      {
        return 0;
      }
    }

    v11 = *(result + 120);
    v12 = *(a2 + 120);
    if (v11)
    {
      return v12 && (*(result + 112) == *(a2 + 112) && v11 == v12 || (sub_1B0E46A78() & 1) != 0);
    }

    return !v12;
  }

  if (*(a2 + 88))
  {
    return 0;
  }

  v8 = *(result + 80);
  v9 = *(a2 + 80);
  if (((v9 | v8) & 0x8000000000000000) == 0)
  {
    if (v9 != v8)
    {
      return 0;
    }

    goto LABEL_43;
  }

  __break(1u);
  return result;
}

unint64_t _s12NIOIMAPCore216MailboxAttributeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E467E8();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B0DD14F4()
{
  result = qword_1EB6E7758;
  if (!qword_1EB6E7758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7758);
  }

  return result;
}

unint64_t sub_1B0DD154C()
{
  result = qword_1EB6E7760;
  if (!qword_1EB6E7760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6400, &qword_1B0EF66E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7760);
  }

  return result;
}

unint64_t sub_1B0DD15B4()
{
  result = qword_1EB6E7768;
  if (!qword_1EB6E7768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7768);
  }

  return result;
}

uint64_t sub_1B0DD1618(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 120);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0DD1674(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2;
    }
  }

  return result;
}

uint64_t sub_1B0DD1734@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B0E2331C(*a1, *a2, *(a2 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void MailboxData.hash(into:)(uint64_t a1)
{
  v3 = v1[7];
  v38[6] = v1[6];
  v38[7] = v3;
  v38[8] = v1[8];
  v4 = v1[3];
  v38[2] = v1[2];
  v38[3] = v4;
  v5 = v1[5];
  v38[4] = v1[4];
  v38[5] = v5;
  v6 = v1[1];
  v38[0] = *v1;
  v38[1] = v6;
  v7 = sub_1B0D0CD9C(v38);
  v8 = sub_1B0504D1C(v38);
  if (v7 > 4)
  {
    if (v7 <= 7)
    {
      if (v7 == 5)
      {
        v27 = *(v8 + 8);
        v28 = *(v8 + 96);
        v43 = *(v8 + 80);
        v44 = v28;
        v29 = *(v8 + 128);
        v45 = *(v8 + 112);
        v46 = v29;
        v30 = *(v8 + 32);
        v39 = *(v8 + 16);
        v40 = v30;
        v31 = *(v8 + 64);
        v41 = *(v8 + 48);
        v42 = v31;
        MEMORY[0x1B2728D70](5);
        MEMORY[0x1B2728D70](v27 | (v27 << 32));
        MailboxStatus.hash(into:)(a1);
      }

      else
      {
        v9 = *v8;
        if (v7 == 6)
        {
          v10 = 6;
        }

        else
        {
          v10 = 7;
        }

        MEMORY[0x1B2728D70](v10);
        MEMORY[0x1B2728D70](v9);
      }

      return;
    }

    if (v7 == 8)
    {
      v32 = *v8;
      v33 = *(v8 + 8);
      v34 = *(v8 + 16);
      MEMORY[0x1B2728D70](8);
      sub_1B0D48988(a1, v32);
      sub_1B0D48988(a1, v33);
      sub_1B0D48988(a1, v34);
      return;
    }

    if (v7 != 9)
    {
      v37 = *(v8 + 16);
      v39 = *v8;
      v40 = v37;
      v41 = *(v8 + 32);
      MEMORY[0x1B2728D70](10);
      UIDBatchesResponse.hash(into:)(a1);
      return;
    }

    v17 = *v8;
    v16 = *(v8 + 8);
    MEMORY[0x1B2728D70](9);
    v18 = *(v17 + 16);
    MEMORY[0x1B2728D70](v18);
    if (v18)
    {
      v19 = (v17 + 32);
      do
      {
        v20 = *v19++;
        MEMORY[0x1B2728D70](v20);
        --v18;
      }

      while (v18);
    }

    v21 = v16;
LABEL_35:
    MEMORY[0x1B2728DB0](v21);
    return;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (v7 != 3)
      {
        v35 = *(v8 + 16);
        v39 = *v8;
        v40 = v35;
        v41 = *(v8 + 32);
        MEMORY[0x1B2728D70](4);
        ExtendedSearchResponse.hash(into:)(a1);
        return;
      }

      v12 = *v8;
      v11 = *(v8 + 8);
      v13 = *(v8 + 16);
      MEMORY[0x1B2728D70](3);
      v14 = *(v12 + 16);
      MEMORY[0x1B2728D70](v14);
      if (v14)
      {
        v15 = v12 + 32;
        do
        {
          v15 += 4;
          sub_1B0E46C88();
          --v14;
        }

        while (v14);
      }

      if (v13)
      {
        sub_1B0E46C68();
        return;
      }

      sub_1B0E46C68();
      v21 = v11;
      goto LABEL_35;
    }

    v25 = *(v8 + 16);
    v39 = *v8;
    v40 = v25;
    v41 = *(v8 + 32);
    v26 = 2;
LABEL_30:
    MEMORY[0x1B2728D70](v26);
    MailboxInfo.hash(into:)(a1);
    return;
  }

  if (v7)
  {
    v36 = *(v8 + 16);
    v39 = *v8;
    v40 = v36;
    v41 = *(v8 + 32);
    v26 = 1;
    goto LABEL_30;
  }

  v22 = *v8;
  MEMORY[0x1B2728D70](0);
  v23 = *(v22 + 16);
  MEMORY[0x1B2728D70](v23);
  if (v23)
  {
    v24 = v22 + 40;
    do
    {
      sub_1B0E44BB8();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v24 += 16;
      --v23;
    }

    while (v23);
  }
}

uint64_t MailboxData.hashValue.getter()
{
  sub_1B0E46C28();
  MailboxData.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD1B1C()
{
  sub_1B0E46C28();
  MailboxData.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD1B60(uint64_t a1)
{
  sub_1B0E46C28();
  MailboxData.hash(into:)(v2);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0DD1B9C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v11[7] = v2;
  v11[8] = a1[8];
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v12[8] = a2[8];
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  return _s12NIOIMAPCore211MailboxDataO21__derived_enum_equalsySbAC_ACtFZ_0(v11, v12) & 1;
}

uint64_t MailboxData.SearchSort.identifiers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MailboxData.SearchSort.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  MEMORY[0x1B2728D70](v5);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v7 = *v6++;
      MEMORY[0x1B2728D70](v7);
      --v5;
    }

    while (v5);
  }

  return MEMORY[0x1B2728DB0](a3);
}

uint64_t MailboxData.SearchSort.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  v4 = *(a1 + 16);
  MEMORY[0x1B2728D70](v4);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      MEMORY[0x1B2728D70](v6);
      --v4;
    }

    while (v4);
  }

  MEMORY[0x1B2728DB0](a2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD1D84()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(*v0 + 16);
  MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1B2728D70](v5);
      --v3;
    }

    while (v3);
  }

  return MEMORY[0x1B2728DB0](v1);
}

uint64_t sub_1B0DD1DE0(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  sub_1B0E46C28();
  v4 = *(v3 + 16);
  MEMORY[0x1B2728D70](v4);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      v6 = *v5++;
      MEMORY[0x1B2728D70](v6);
      --v4;
    }

    while (v4);
  }

  MEMORY[0x1B2728DB0](v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD1E6C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v46 = *result;
  v4 = v46;
  if (v46[2])
  {
    v5 = *(a2 + 20);
    result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, a2 + 8, v5);
    if (v6)
    {
      v7._countAndFlagsBits = 32;
      v7._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v5);
    }

    v8 = result;
    v9 = *(a2 + 20);
    v10 = __CFADD__(v9, result);
    v11 = v9 + result;
    if (v10)
    {
      goto LABEL_41;
    }

    *(a2 + 20) = v11;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v45[2] = sub_1B0DD216C;
  v45[3] = 0;
  v45[4] = a2;
  v45[5] = &v46;
  v45[6] = 32;
  v45[7] = 0xE100000000000000;
  result = sub_1B0DE6D58(0, sub_1B0DD377C, v45, v4);
  v12 = v8 + result;
  if (__OFADD__(v8, result))
  {
    goto LABEL_32;
  }

  if (v4[2])
  {
    v13 = *(a2 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, a2 + 8, v13);
    if (v14)
    {
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
    }

    v16 = *(a2 + 20);
    v10 = __CFADD__(v16, result);
    v17 = v16 + result;
    if (v10)
    {
      goto LABEL_42;
    }

    *(a2 + 20) = v17;
    v18 = __OFADD__(v12, result);
    v12 += result;
    if (v18)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  v19 = *(a2 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, a2 + 8, v19);
  if (v20)
  {
    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(a2 + 20);
  v23 = (v22 + result);
  if (__CFADD__(v22, result))
  {
    goto LABEL_33;
  }

  *(a2 + 20) = v23;
  v24 = v12 + result;
  if (__OFADD__(v12, result))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  result = sub_1B0CFC1B0(0x20514553444F4D28uLL, 0xE800000000000000, a2 + 8, v23);
  if (v25)
  {
    v26._countAndFlagsBits = 0x20514553444F4D28;
    v26._object = 0xE800000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v23);
  }

  v27 = *(a2 + 20);
  v10 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v10)
  {
    goto LABEL_35;
  }

  *(a2 + 20) = v28;
  v18 = __OFADD__(v24, result);
  v29 = v24 + result;
  if (v18)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v46 = *(v3 + 8);
  v30 = sub_1B0E469C8();
  v32 = v31;
  v33 = *(a2 + 20);
  v34 = sub_1B0CFC1B0(v30, v31, a2 + 8, v33);
  if (v35)
  {
    v36._countAndFlagsBits = v30;
    v36._object = v32;
    v34 = ByteBuffer._setStringSlowpath(_:at:)(v36, v33);
  }

  v37 = v34;

  v38 = *(a2 + 20);
  v39 = (v38 + v37);
  if (__CFADD__(v38, v37))
  {
    goto LABEL_37;
  }

  *(a2 + 20) = v39;
  v40 = v29 + v37;
  if (__OFADD__(v29, v37))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, a2 + 8, (v38 + v37));
  if (v41)
  {
    v42._countAndFlagsBits = 41;
    v42._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v42, v39);
  }

  v43 = *(a2 + 20);
  v10 = __CFADD__(v43, result);
  v44 = v43 + result;
  if (v10)
  {
    goto LABEL_39;
  }

  *(a2 + 20) = v44;
  v18 = __OFADD__(v40, result);
  result += v40;
  if (v18)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0DD216C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B0E469C8();
  v5 = v4;
  v6 = *(a2 + 20);
  v7 = sub_1B0CFC1B0(v3, v4, a2 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = v3;
    v9._object = v5;
    v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = v7;

  v12 = *(a2 + 20);
  v13 = __CFADD__(v12, v10);
  v14 = v12 + v10;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 20) = v14;
    return v10;
  }

  return result;
}

void sub_1B0DD221C(_OWORD *a1)
{
  v3 = a1[7];
  v70[6] = a1[6];
  v70[7] = v3;
  v70[8] = a1[8];
  v4 = a1[3];
  v70[2] = a1[2];
  v70[3] = v4;
  v5 = a1[5];
  v70[4] = a1[4];
  v70[5] = v5;
  v6 = a1[1];
  v70[0] = *a1;
  v70[1] = v6;
  LODWORD(v7) = sub_1B0D0CD9C(v70);
  v8 = sub_1B0504D1C(v70);
  if (v7 > 4)
  {
    if (v7 > 7)
    {
      if (v7 == 8)
      {
        sub_1B0DF45A4(*v8, *(v8 + 8), *(v8 + 16));
        return;
      }

      if (v7 != 9)
      {
        v68 = *(v8 + 16);
        v71 = *v8;
        v72 = v68;
        v73 = *(v8 + 32);
        sub_1B0E31FD4(&v71);
        return;
      }

      v71 = *v8;
      v19 = *(v1 + 20);
      v20 = sub_1B0CFC1B0(0x484352414553uLL, 0xE600000000000000, v1 + 8, v19);
      if (v21)
      {
        v22._countAndFlagsBits = 0x484352414553;
        v22._object = 0xE600000000000000;
        v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v19);
      }

      v7 = v20;
      v23 = *(v1 + 20);
      v17 = __CFADD__(v23, v20);
      v24 = v23 + v20;
      if (v17)
      {
        goto LABEL_53;
      }

      *(v1 + 20) = v24;
      v69 = v71;
      v25 = sub_1B0DD1E6C(&v69, v1);
      v26 = __OFADD__(v7, v25);
      v8 = v7 + v25;
      if (!v26)
      {
        return;
      }

      __break(1u);
      goto LABEL_22;
    }

    if (v7 == 5)
    {
      goto LABEL_35;
    }

    v2 = v1;
    if (v7 != 6)
    {
      goto LABEL_44;
    }

    *&v69 = *v8;
    *&v71 = sub_1B0E469C8();
    *(&v71 + 1) = v9;
    MEMORY[0x1B2726E80](0x53545349584520, 0xE700000000000000);
    v7 = *(&v71 + 1);
    v10 = v71;
    v11 = v1;
    v12 = *(v1 + 20);
    v13 = sub_1B0CFC1B0(v71, *(&v71 + 1), v1 + 8, v12);
    if (v14)
    {
      v15._countAndFlagsBits = v10;
      v15._object = v7;
      v13 = ByteBuffer._setStringSlowpath(_:at:)(v15, v12);
      v11 = v1;
    }

    v1 = v13;

    v16 = *(v11 + 20);
    v8 = v1;
    v17 = __CFADD__(v16, v1);
    v18 = v16 + v1;
    if (!v17)
    {
      goto LABEL_47;
    }

    __break(1u);
  }

  if (v7 <= 1)
  {
LABEL_22:
    if (!v7)
    {
      v27 = *v8;
      v28 = *(v1 + 20);
      v29 = sub_1B0CFC1B0(0x205347414C46uLL, 0xE600000000000000, v1 + 8, v28);
      if (v30)
      {
        v31._countAndFlagsBits = 0x205347414C46;
        v31._object = 0xE600000000000000;
        v29 = ByteBuffer._setStringSlowpath(_:at:)(v31, v28);
      }

      v32 = v29;
      v33 = *(v1 + 20);
      v17 = __CFADD__(v33, v29);
      v34 = v33 + v29;
      if (v17)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        return;
      }

      *(v1 + 20) = v34;
      v35 = sub_1B0D8AB9C(v27);
      v26 = __OFADD__(v32, v35);
      v8 = v32 + v35;
      if (!v26)
      {
        return;
      }

      __break(1u);
LABEL_29:
      v36 = *(v8 + 16);
      v71 = *v8;
      v72 = v36;
      v73 = *(v8 + 32);
      v37 = *(v1 + 20);
      v38 = sub_1B0CFC1B0(0x204255534CuLL, 0xE500000000000000, v1 + 8, v37);
      if (v39)
      {
        v40._countAndFlagsBits = 0x204255534CLL;
        v40._object = 0xE500000000000000;
        v38 = ByteBuffer._setStringSlowpath(_:at:)(v40, v37);
      }

      v41 = v38;
      v42 = *(v1 + 20);
      v17 = __CFADD__(v42, v38);
      v43 = v42 + v38;
      if (!v17)
      {
        *(v1 + 20) = v43;
        v44 = sub_1B0DD7EDC(&v71);
        v26 = __OFADD__(v41, v44);
        v8 = v41 + v44;
        if (!v26)
        {
          return;
        }

        __break(1u);
LABEL_35:
        v45 = *v8;
        v46 = *(v8 + 8);
        v47 = *(v8 + 96);
        v75 = *(v8 + 80);
        v76 = v47;
        v48 = *(v8 + 128);
        v77 = *(v8 + 112);
        v78 = v48;
        v49 = *(v8 + 32);
        v71 = *(v8 + 16);
        v72 = v49;
        v50 = *(v8 + 64);
        v73 = *(v8 + 48);
        v74 = v50;
        sub_1B0DD29EC(v45, v46, &v71);
        return;
      }

      __break(1u);
      goto LABEL_51;
    }

    v52 = *(v8 + 16);
    v71 = *v8;
    v72 = v52;
    v73 = *(v8 + 32);
    v53 = *(v1 + 20);
    v54 = sub_1B0CFC1B0(0x205453494CuLL, 0xE500000000000000, v1 + 8, v53);
    if (v55)
    {
      v56._countAndFlagsBits = 0x205453494CLL;
      v56._object = 0xE500000000000000;
      v54 = ByteBuffer._setStringSlowpath(_:at:)(v56, v53);
    }

    v57 = v54;
    v58 = *(v1 + 20);
    v17 = __CFADD__(v58, v54);
    v59 = v58 + v54;
    if (v17)
    {
      goto LABEL_52;
    }

    *(v1 + 20) = v59;
    v60 = sub_1B0DD7EDC(&v71);
    v26 = __OFADD__(v57, v60);
    v8 = v57 + v60;
    if (!v26)
    {
      return;
    }

    __break(1u);
LABEL_44:
    *&v69 = *v8;
    *&v71 = sub_1B0E469C8();
    *(&v71 + 1) = v61;
    MEMORY[0x1B2726E80](0x544E4543455220, 0xE700000000000000);
    v62 = v71;
    v11 = v2;
    v63 = *(v2 + 20);
    v64 = sub_1B0CFC1B0(v71, *(&v71 + 1), v2 + 8, v63);
    if (v65)
    {
      v64 = ByteBuffer._setStringSlowpath(_:at:)(v62, v63);
      v11 = v2;
    }

    v66 = v64;

    v67 = *(v11 + 20);
    v17 = __CFADD__(v67, v66);
    v18 = v67 + v66;
    if (!v17)
    {
LABEL_47:
      *(v11 + 20) = v18;
      return;
    }

    goto LABEL_54;
  }

  if (v7 == 2)
  {
    goto LABEL_29;
  }

  if (v7 == 3)
  {
    sub_1B0DD26C8(*v8, *(v8 + 8), *(v8 + 16));
  }

  else
  {
    v51 = *(v8 + 16);
    v71 = *v8;
    v72 = v51;
    v73 = *(v8 + 32);
    sub_1B0D852CC(&v71);
  }
}

uint64_t sub_1B0DD26C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *(v3 + 20);
  result = sub_1B0CFC1B0(0x484352414553uLL, 0xE600000000000000, v3 + 8, v8);
  if (v10)
  {
    v11._countAndFlagsBits = 0x484352414553;
    v11._object = 0xE600000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v12 = result;
  v13 = *(v3 + 20);
  v14 = (v13 + result);
  if (__CFADD__(v13, result))
  {
    goto LABEL_34;
  }

  *(v3 + 20) = v14;
  v53 = a1;
  v15 = *(a1 + 16);
  if (v15)
  {
    result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v3 + 8, v14);
    if (v16)
    {
      v17._countAndFlagsBits = 32;
      v17._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v17, v14);
    }

    v18 = result;
    v19 = *(v4 + 20);
    v20 = __CFADD__(v19, result);
    v21 = v19 + result;
    if (v20)
    {
      goto LABEL_38;
    }

    *(v4 + 20) = v21;
  }

  else
  {
    v18 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v52[2] = sub_1B0DD2B60;
  v52[3] = 0;
  v52[4] = v4;
  v52[5] = &v53;
  v52[6] = 32;
  v52[7] = 0xE100000000000000;
  result = sub_1B0DE6EF4(0, sub_1B0DD3724, v52, a1);
  v22 = v18 + result;
  if (__OFADD__(v18, result))
  {
    goto LABEL_35;
  }

  if (!v15)
  {
    result = 0;
    v28 = v22;
    goto LABEL_16;
  }

  v23 = *(v4 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v4 + 8, v23);
  if (v24)
  {
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(v4 + 20);
  v20 = __CFADD__(v26, result);
  v27 = v26 + result;
  if (v20)
  {
    goto LABEL_39;
  }

  *(v4 + 20) = v27;
  v28 = v22 + result;
  if (__OFADD__(v22, result))
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_16:
  v29 = v12 + v28;
  if (__OFADD__(v12, v28))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (a3)
  {
    v30 = 0;
  }

  else
  {
    v31 = *(v4 + 20);
    result = sub_1B0CFC1B0(0x514553444F4D2820uLL, 0xE900000000000020, v4 + 8, v31);
    if (v32)
    {
      v33._countAndFlagsBits = 0x514553444F4D2820;
      v33._object = 0xE900000000000020;
      result = ByteBuffer._setStringSlowpath(_:at:)(v33, v31);
    }

    v34 = result;
    v35 = *(v4 + 20);
    v36 = (v35 + result);
    if (__CFADD__(v35, result))
    {
      goto LABEL_40;
    }

    *(v4 + 20) = v36;
    v53 = a2;
    v37 = sub_1B0E469C8();
    v39 = v38;
    v40 = sub_1B0CFC1B0(v37, v38, v4 + 8, v36);
    if (v41)
    {
      v42._countAndFlagsBits = v37;
      v42._object = v39;
      v40 = ByteBuffer._setStringSlowpath(_:at:)(v42, v36);
    }

    v43 = v40;

    v44 = *(v4 + 20);
    v45 = (v44 + v43);
    if (__CFADD__(v44, v43))
    {
      goto LABEL_41;
    }

    *(v4 + 20) = v45;
    v46 = __OFADD__(v34, v43);
    v47 = v34 + v43;
    if (v46)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v4 + 8, (v44 + v43));
    if (v48)
    {
      v49._countAndFlagsBits = 41;
      v49._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v49, v45);
    }

    v50 = *(v4 + 20);
    v20 = __CFADD__(v50, result);
    v51 = v50 + result;
    if (v20)
    {
      goto LABEL_43;
    }

    *(v4 + 20) = v51;
    v30 = v47 + result;
    if (__OFADD__(v47, result))
    {
LABEL_44:
      __break(1u);
      return result;
    }
  }

  result = v29 + v30;
  if (__OFADD__(v29, v30))
  {
    goto LABEL_37;
  }

  return result;
}

void sub_1B0DD29EC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = *(v3 + 20);
  v7 = sub_1B0CFC1B0(0x20535554415453uLL, 0xE700000000000000, v3 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = 0x20535554415453;
    v9._object = 0xE700000000000000;
    v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = v7;
  v11 = *(v3 + 20);
  v12 = __CFADD__(v11, v7);
  v13 = v11 + v7;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  *(v3 + 20) = v13;
  sub_1B0DD59A4(a1);
  v15 = v10 + v14;
  if (__OFADD__(v10, v14))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = *(v3 + 20);
  v17 = sub_1B0CFC1B0(0x2820uLL, 0xE200000000000000, v3 + 8, v16);
  if (v18)
  {
    v19._countAndFlagsBits = 10272;
    v19._object = 0xE200000000000000;
    v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v16);
  }

  v20 = *(v3 + 20);
  v12 = __CFADD__(v20, v17);
  v21 = v20 + v17;
  if (v12)
  {
    goto LABEL_17;
  }

  *(v3 + 20) = v21;
  v22 = v15 + v17;
  if (__OFADD__(v15, v17))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = sub_1B0DD0798(a3);
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v26 = *(v3 + 20);
  v27 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v3 + 8, v26);
  if (v28)
  {
    v29._countAndFlagsBits = 41;
    v29._object = 0xE100000000000000;
    v27 = ByteBuffer._setStringSlowpath(_:at:)(v29, v26);
  }

  v30 = *(v3 + 20);
  v12 = __CFADD__(v30, v27);
  v31 = v30 + v27;
  if (v12)
  {
    goto LABEL_20;
  }

  *(v3 + 20) = v31;
  if (__OFADD__(v25, v27))
  {
LABEL_21:
    __break(1u);
  }
}

BOOL _s12NIOIMAPCore211MailboxDataO10SearchSortV23__derived_struct_equalsySbAE_AEtFZ_0(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = result == a3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    if (((a4 | a2) & 0x8000000000000000) == 0)
    {
      return a4 == a2;
    }
  }

  else
  {
    v6 = (result + 32);
    v7 = (a3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *_s12NIOIMAPCore211MailboxDataO21__derived_enum_equalsySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v3 = a1[7];
  v155[6] = a1[6];
  v155[7] = v3;
  v155[8] = a1[8];
  v4 = a1[3];
  v155[2] = a1[2];
  v155[3] = v4;
  v5 = a1[5];
  v155[4] = a1[4];
  v155[5] = v5;
  v6 = a1[1];
  v155[0] = *a1;
  v155[1] = v6;
  v7 = sub_1B0D0CD9C(v155);
  if (v7 <= 4)
  {
    if (v7 <= 1)
    {
      if (!v7)
      {
        v39 = *sub_1B0504D1C(v155);
        v40 = a2[3];
        v148 = a2[2];
        v149 = v40;
        v41 = a2[1];
        v146 = *a2;
        v147 = v41;
        v42 = a2[8];
        v153 = a2[7];
        v154 = v42;
        v43 = a2[6];
        v151 = a2[5];
        v152 = v43;
        v150 = a2[4];
        if (sub_1B0D0CD9C(&v146))
        {
          goto LABEL_87;
        }

        v44 = sub_1B0504D1C(&v146);
        v45 = sub_1B03D1B3C(v39, *v44);
        return (v45 & 1);
      }

      v106 = sub_1B0504D1C(v155);
      v48 = *v106;
      v47 = *(v106 + 8);
      v49 = *(v106 + 16);
      v50 = *(v106 + 20);
      v52 = *(v106 + 32);
      v51 = *(v106 + 40);
      v107 = a2[7];
      v152 = a2[6];
      v153 = v107;
      v154 = a2[8];
      v108 = a2[3];
      v148 = a2[2];
      v149 = v108;
      v109 = a2[5];
      v150 = a2[4];
      v151 = v109;
      v110 = a2[1];
      v146 = *a2;
      v147 = v110;
      if (sub_1B0D0CD9C(&v146) != 1)
      {
        goto LABEL_87;
      }
    }

    else
    {
      if (v7 != 2)
      {
        if (v7 == 3)
        {
          v13 = sub_1B0504D1C(v155);
          v15 = *v13;
          v14 = *(v13 + 8);
          v16 = *(v13 + 16);
          v17 = a2[7];
          v152 = a2[6];
          v153 = v17;
          v154 = a2[8];
          v18 = a2[1];
          v146 = *a2;
          v147 = v18;
          v19 = a2[3];
          v148 = a2[2];
          v149 = v19;
          v20 = a2[5];
          v150 = a2[4];
          v151 = v20;
          if (sub_1B0D0CD9C(&v146) != 3)
          {
            goto LABEL_87;
          }

          result = sub_1B0504D1C(&v146);
          v22 = *result;
          v23 = *(v15 + 16);
          if (v23 != *(*result + 16))
          {
            goto LABEL_87;
          }

          v24 = result[1];
          if (v23 && v15 != v22)
          {
            v25 = (v15 + 32);
            v26 = (v22 + 32);
            while (*v26 == *v25)
            {
              ++v25;
              ++v26;
              if (!--v23)
              {
                goto LABEL_17;
              }
            }

            goto LABEL_87;
          }

LABEL_17:
          if (v16)
          {
            if ((result[2] & 1) == 0)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          }

          if (result[2])
          {
            goto LABEL_87;
          }

          if ((v24 | v14) < 0)
          {
            goto LABEL_90;
          }

          if (v24 != v14)
          {
            goto LABEL_87;
          }

LABEL_86:
          v45 = 1;
          return (v45 & 1);
        }

        v86 = sub_1B0504D1C(v155);
        v88 = *v86;
        v87 = *(v86 + 8);
        v90 = *(v86 + 16);
        v89 = *(v86 + 24);
        v91 = *(v86 + 32);
        v92 = *(v86 + 33);
        v93 = *(v86 + 40);
        v94 = a2[7];
        v152 = a2[6];
        v153 = v94;
        v154 = a2[8];
        v95 = a2[3];
        v148 = a2[2];
        v149 = v95;
        v96 = a2[5];
        v150 = a2[4];
        v151 = v96;
        v97 = a2[1];
        v146 = *a2;
        v147 = v97;
        if (sub_1B0D0CD9C(&v146) != 4)
        {
          goto LABEL_87;
        }

        v141 = v92;
        v139 = v93;
        v98 = sub_1B0504D1C(&v146);
        v99 = *v98;
        v100 = *(v98 + 8);
        v101 = *(v98 + 16);
        v102 = *(v98 + 24);
        v103 = *(v98 + 32);
        v104 = *(v98 + 33);
        v105 = *(v98 + 40);
        if (v87)
        {
          if (v100)
          {
            *v145 = *v98;
            *&v145[8] = v100;
            *&v145[16] = v101;
            *&v145[24] = v102;
            v145[32] = v103 & 1;
            *v144 = v88;
            *&v144[8] = v87;
            *&v144[16] = v90;
            *&v144[24] = v89;
            v144[32] = v91 & 1;
            v138 = v105;
            v137 = v104;
            v136 = _s12NIOIMAPCore216SearchCorrelatorV23__derived_struct_equalsySbAC_ACtFZ_0(v144, v145);
            sub_1B0D82F64(v99, v100);
            sub_1B0D82F64(v88, v87);

            sub_1B0AEF11C(v88, v87);
            v104 = v137;
            v105 = v138;
            if (!v136)
            {
              goto LABEL_87;
            }

            goto LABEL_72;
          }
        }

        else if (!v100)
        {
LABEL_72:
          if (((v141 ^ v104) & 1) != 0 || (sub_1B0D314BC(v139, v105) & 1) == 0)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        }

        sub_1B0D82F64(*v98, v100);
        sub_1B0D82F64(v88, v87);
        sub_1B0AEF11C(v88, v87);
        sub_1B0AEF11C(v99, v100);
        goto LABEL_87;
      }

      v46 = sub_1B0504D1C(v155);
      v48 = *v46;
      v47 = *(v46 + 8);
      v49 = *(v46 + 16);
      v50 = *(v46 + 20);
      v52 = *(v46 + 32);
      v51 = *(v46 + 40);
      v53 = a2[7];
      v152 = a2[6];
      v153 = v53;
      v154 = a2[8];
      v54 = a2[3];
      v148 = a2[2];
      v149 = v54;
      v55 = a2[5];
      v150 = a2[4];
      v151 = v55;
      v56 = a2[1];
      v146 = *a2;
      v147 = v56;
      if (sub_1B0D0CD9C(&v146) != 2)
      {
        goto LABEL_87;
      }
    }

    v111 = sub_1B0504D1C(&v146);
    v112 = *(v111 + 8);
    v113 = *(v111 + 16);
    v114 = *(v111 + 20);
    v115 = *(v111 + 32);
    v142 = *(v111 + 40);
    if ((sub_1B0D3CF18(v48, *v111) & 1) == 0 || (v49 | (v49 << 32)) != (v113 | (v113 << 32)) || (sub_1B04520BC(v47, v112) & 1) == 0 || v50 != v114 || (sub_1B0D3A070(v52, v115) & 1) == 0 || (sub_1B0D3A338(v51, v142) & 1) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  if (v7 <= 7)
  {
    if (v7 != 5)
    {
      if (v7 == 6)
      {
        v8 = *sub_1B0504D1C(v155);
        v9 = a2[3];
        v148 = a2[2];
        v149 = v9;
        v10 = a2[1];
        v146 = *a2;
        v147 = v10;
        v11 = a2[8];
        v153 = a2[7];
        v154 = v11;
        v12 = a2[6];
        v151 = a2[5];
        v152 = v12;
        v150 = a2[4];
        if (sub_1B0D0CD9C(&v146) != 6)
        {
          goto LABEL_87;
        }

        goto LABEL_60;
      }

      v8 = *sub_1B0504D1C(v155);
      v116 = a2[3];
      v148 = a2[2];
      v149 = v116;
      v117 = a2[1];
      v146 = *a2;
      v147 = v117;
      v118 = a2[8];
      v153 = a2[7];
      v154 = v118;
      v119 = a2[6];
      v151 = a2[5];
      v152 = v119;
      v150 = a2[4];
      if (sub_1B0D0CD9C(&v146) == 7)
      {
LABEL_60:
        v45 = v8 == *sub_1B0504D1C(&v146);
        return (v45 & 1);
      }

      goto LABEL_87;
    }

    v57 = sub_1B0504D1C(v155);
    v58 = *v57;
    v59 = *(v57 + 8);
    v60 = *(v57 + 92);
    v61 = *(v57 + 124);
    *&v145[96] = *(v57 + 108);
    *&v145[112] = v61;
    *&v145[128] = *(v57 + 140);
    v62 = *(v57 + 28);
    v63 = *(v57 + 60);
    *&v145[32] = *(v57 + 44);
    *&v145[48] = v63;
    *&v145[64] = *(v57 + 76);
    *&v145[80] = v60;
    *v145 = *(v57 + 12);
    *&v145[16] = v62;
    v64 = a2[8];
    v153 = a2[7];
    v154 = v64;
    v65 = a2[6];
    v151 = a2[5];
    v152 = v65;
    v66 = a2[4];
    v149 = a2[3];
    v150 = v66;
    v67 = a2[2];
    v147 = a2[1];
    v148 = v67;
    v146 = *a2;
    if (sub_1B0D0CD9C(&v146) != 5)
    {
      goto LABEL_87;
    }

    v68 = sub_1B0504D1C(&v146);
    v69 = *v68;
    v70 = *(v68 + 8);
    v71 = *(v68 + 92);
    v72 = *(v68 + 124);
    *&v144[96] = *(v68 + 108);
    *&v144[112] = v72;
    *&v144[128] = *(v68 + 140);
    v73 = *(v68 + 28);
    v74 = *(v68 + 60);
    *&v144[32] = *(v68 + 44);
    *&v144[48] = v74;
    *&v144[64] = *(v68 + 76);
    *&v144[80] = v71;
    *v144 = *(v68 + 12);
    *&v144[16] = v73;
    if ((v59 | (v59 << 32)) != (v70 | (v70 << 32)) || (sub_1B04520BC(v58, v69) & 1) == 0)
    {
      goto LABEL_87;
    }

    v156[4] = *&v145[68];
    v156[5] = *&v145[84];
    v156[6] = *&v145[100];
    v156[7] = *&v145[116];
    v156[0] = *&v145[4];
    v156[1] = *&v145[20];
    v156[2] = *&v145[36];
    v156[3] = *&v145[52];
    v157[2] = *&v144[36];
    v157[3] = *&v144[52];
    v157[0] = *&v144[4];
    v157[1] = *&v144[20];
    v157[6] = *&v144[100];
    v157[7] = *&v144[116];
    v157[4] = *&v144[68];
    v157[5] = *&v144[84];
    v45 = _s12NIOIMAPCore213MailboxStatusV23__derived_struct_equalsySbAC_ACtFZ_0(v156, v157);
    return (v45 & 1);
  }

  if (v7 == 8)
  {
    v75 = sub_1B0504D1C(v155);
    v77 = *v75;
    v76 = v75[1];
    v78 = v75[2];
    v79 = a2[7];
    v152 = a2[6];
    v153 = v79;
    v154 = a2[8];
    v80 = a2[1];
    v146 = *a2;
    v147 = v80;
    v81 = a2[3];
    v148 = a2[2];
    v149 = v81;
    v82 = a2[5];
    v150 = a2[4];
    v151 = v82;
    if (sub_1B0D0CD9C(&v146) != 8)
    {
      goto LABEL_87;
    }

    v83 = sub_1B0504D1C(&v146);
    v84 = v83[1];
    v85 = v83[2];
    if ((sub_1B0D38730(v77, *v83) & 1) == 0 || (sub_1B0D38730(v76, v84) & 1) == 0 || (sub_1B0D38730(v78, v85) & 1) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  if (v7 != 9)
  {
    v120 = sub_1B0504D1C(v155);
    v121 = *v120;
    v122 = *(v120 + 8);
    v123 = *(v120 + 16);
    v125 = *(v120 + 24);
    v124 = *(v120 + 28);
    v126 = *(v120 + 32);
    v127 = *(v120 + 40);
    v128 = a2[7];
    v152 = a2[6];
    v153 = v128;
    v154 = a2[8];
    v129 = a2[3];
    v148 = a2[2];
    v149 = v129;
    v130 = a2[5];
    v150 = a2[4];
    v151 = v130;
    v131 = a2[1];
    v146 = *a2;
    v147 = v131;
    if (sub_1B0D0CD9C(&v146) != 10)
    {
      goto LABEL_87;
    }

    v132 = sub_1B0504D1C(&v146);
    v133 = *(v132 + 16);
    v134 = *(v132 + 24);
    v140 = *(v132 + 28);
    v135 = *(v132 + 32);
    v143 = *(v132 + 40);
    if ((v121 != *v132 || v122 != *(v132 + 8)) && (sub_1B0E46A78() & 1) == 0)
    {
      goto LABEL_87;
    }

    if (v123)
    {
      if (!v133 || (v125 | (v125 << 32)) != (v134 | (v134 << 32)) || (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v123, v133) & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    else if (v133)
    {
      goto LABEL_87;
    }

    if (v126)
    {
      if ((v135 & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    else if ((v135 & 1) != 0 || v124 != v140)
    {
      goto LABEL_87;
    }

    if ((sub_1B03D37DC(v127, v143) & 1) == 0)
    {
LABEL_87:
      v45 = 0;
      return (v45 & 1);
    }

    goto LABEL_86;
  }

  v27 = sub_1B0504D1C(v155);
  v29 = *v27;
  v28 = v27[1];
  v30 = a2[7];
  v152 = a2[6];
  v153 = v30;
  v154 = a2[8];
  v31 = a2[3];
  v148 = a2[2];
  v149 = v31;
  v32 = a2[5];
  v150 = a2[4];
  v151 = v32;
  v33 = a2[1];
  v146 = *a2;
  v147 = v33;
  if (sub_1B0D0CD9C(&v146) != 9)
  {
    goto LABEL_87;
  }

  result = sub_1B0504D1C(&v146);
  v34 = *result;
  v35 = *(v29 + 16);
  if (v35 != *(*result + 16))
  {
    goto LABEL_87;
  }

  v36 = result[1];
  if (v35 && v29 != v34)
  {
    v37 = (v29 + 32);
    v38 = (v34 + 32);
    while (*v37 == *v38)
    {
      ++v37;
      ++v38;
      if (!--v35)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_87;
  }

LABEL_29:
  if (((v36 | v28) & 0x8000000000000000) == 0)
  {
    if (v36 != v28)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  __break(1u);
LABEL_90:
  __break(1u);
  return result;
}

unint64_t sub_1B0DD34F4()
{
  result = qword_1EB6E7770;
  if (!qword_1EB6E7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7770);
  }

  return result;
}

unint64_t sub_1B0DD354C()
{
  result = qword_1EB6E7778;
  if (!qword_1EB6E7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7778);
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1B0DD35D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 1) & 0x7FFFFFFF | ((*(a1 + 56) >> 1) << 31);
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

double sub_1B0DD3634(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 144) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (-2 * a2);
      *(a1 + 56) = 2;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      return result;
    }

    *(a1 + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_1B0DD36B8(int8x16_t *a1, uint64_t a2)
{
  v2 = a1[4].i64[1] & 1;
  v3 = a1[5].i64[1] & 1;
  v4 = a1[6].i64[1] & 1;
  v5 = a1[7].i64[1] & 1 | (a2 << 60);
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v2;
  a1[5].i64[1] = v3;
  a1[6].i64[1] = v4;
  a1[7].i64[1] = v5;
  return result;
}

uint64_t sub_1B0DD3724@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B0E2414C(*a1, *a2, *(a2 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

NIOIMAPCore2::Mailboxes_optional __swiftcall Mailboxes.init(_:)(Swift::OpaquePointer a1)
{
  if (!*(a1._rawValue + 2))
  {

    a1._rawValue = 0;
  }

  result.value.content = a1;
  result.is_nil = v1;
  return result;
}

uint64_t Mailboxes.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *v5;
      v5 += 4;
      result = MEMORY[0x1B2728D70](v6 | (v6 << 32));
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t Mailboxes.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  v2 = *(a1 + 16);
  MEMORY[0x1B2728D70](v2);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *v3;
      v3 += 4;
      MEMORY[0x1B2728D70](v4 | (v4 << 32));
      --v2;
    }

    while (v2);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD38AC(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  Mailboxes.hash(into:)(v4, v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD38FC(uint64_t a1)
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
  v31[2] = sub_1B0DD3B1C;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_1B0DE6C8C(0, sub_1B0DD3C10, v31, a1);
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

unint64_t sub_1B0DD3B48()
{
  result = qword_1EB6E7780;
  if (!qword_1EB6E7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7780);
  }

  return result;
}

uint64_t sub_1B0DD3BAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_1B0E23E14(*a1, *a2, *(a2 + 8), *(a2 + 16), a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_1B0DD3C34(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  if (a2 <= 1u)
  {
    if (a2)
    {
      goto LABEL_16;
    }

    v5 = v2[5];
    result = sub_1B0CFC1B0(0x2065657274627573uLL, 0xE800000000000000, (v2 + 2), v5);
    if (v7)
    {
      v8._countAndFlagsBits = 0x2065657274627573;
      v8._object = 0xE800000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = v2[5];
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v2[5] = v12;
    v13 = sub_1B0DD38FC(a1);
    v14 = __OFADD__(v9, v13);
    result = v9 + v13;
    if (!v14)
    {
      return result;
    }

    __break(1u);
  }

  if (v4 != 2)
  {
    goto LABEL_22;
  }

  v15 = v2[5];
  result = sub_1B0CFC1B0(0x2D65657274627573uLL, 0xEC00000020656E6FLL, (v2 + 2), v15);
  if (v16)
  {
    v17._countAndFlagsBits = 0x2D65657274627573;
    v17._object = 0xEC00000020656E6FLL;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
  }

  v18 = result;
  v19 = v2[5];
  v11 = __CFADD__(v19, result);
  v20 = v19 + result;
  if (v11)
  {
    goto LABEL_51;
  }

  v2[5] = v20;
  v21 = sub_1B0DD38FC(a1);
  v14 = __OFADD__(v18, v21);
  result = v18 + v21;
  if (!v14)
  {
    return result;
  }

  __break(1u);
LABEL_16:
  v22 = v2[5];
  result = sub_1B0CFC1B0(0x65786F626C69616DuLL, 0xEA00000000002073, (v2 + 2), v22);
  if (v23)
  {
    v24._countAndFlagsBits = 0x65786F626C69616DLL;
    v24._object = 0xEA00000000002073;
    result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
  }

  v25 = result;
  v26 = v2[5];
  v11 = __CFADD__(v26, result);
  v27 = v26 + result;
  if (v11)
  {
    goto LABEL_52;
  }

  v2[5] = v27;
  v28 = sub_1B0DD38FC(a1);
  v14 = __OFADD__(v25, v28);
  result = v25 + v28;
  if (v14)
  {
    __break(1u);
LABEL_22:
    if (a1 > 1)
    {
      if (a1 == 2)
      {
LABEL_36:
        v39 = v2[5];
        v2 += 5;
        v38 = v39;
        result = sub_1B0CFC1B0(0x6269726373627573uLL, 0xEA00000000006465, (v2 - 3), v39);
        if (v40)
        {
          v41._countAndFlagsBits = 0x6269726373627573;
          v41._object = 0xEA00000000006465;
          result = ByteBuffer._setStringSlowpath(_:at:)(v41, v38);
        }

        v33 = *v2 + result;
        if (!__CFADD__(*v2, result))
        {
          goto LABEL_49;
        }

        __break(1u);
        goto LABEL_41;
      }

      if (a1 != 3)
      {
LABEL_41:
        v43 = v2[5];
        v2 += 5;
        v42 = v43;
        result = sub_1B0CFC1B0(0xD000000000000010, 0x80000001B0F303E0, (v2 - 3), v43);
        if (v44)
        {
          v45._object = 0x80000001B0F303E0;
          v45._countAndFlagsBits = 0xD000000000000010;
          result = ByteBuffer._setStringSlowpath(_:at:)(v45, v42);
        }

        v33 = *v2 + result;
        if (!__CFADD__(*v2, result))
        {
          goto LABEL_49;
        }

        __break(1u);
LABEL_46:
        v47 = v2[5];
        v2 += 5;
        v46 = v47;
        result = sub_1B0CFC1B0(0x6C616E6F73726570uLL, 0xE800000000000000, (v2 - 3), v47);
        if (v48)
        {
          v49._countAndFlagsBits = 0x6C616E6F73726570;
          v49._object = 0xE800000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v49, v46);
        }

        v33 = *v2 + result;
        if (!__CFADD__(*v2, result))
        {
LABEL_49:
          *v2 = v33;
          return result;
        }

LABEL_53:
        __break(1u);
        return result;
      }

      v29 = v2[5];
      v2 += 5;
      a1 = v29;
      result = sub_1B0CFC1B0(0x64657463656C6573uLL, 0xE800000000000000, (v2 - 3), v29);
      if (v30)
      {
        v31._countAndFlagsBits = 0x64657463656C6573;
        v31._object = 0xE800000000000000;
        v32 = a1;
        a1 = v2;
        result = ByteBuffer._setStringSlowpath(_:at:)(v31, v32);
      }

      v33 = *v2 + result;
      if (!__CFADD__(*v2, result))
      {
        goto LABEL_49;
      }

      __break(1u);
    }

    if (a1)
    {
      goto LABEL_46;
    }

    v35 = v2[5];
    v2 += 5;
    v34 = v35;
    result = sub_1B0CFC1B0(0x7365786F626E69uLL, 0xE700000000000000, (v2 - 3), v35);
    if (v36)
    {
      v37._countAndFlagsBits = 0x7365786F626E69;
      v37._object = 0xE700000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v37, v34);
    }

    v33 = *v2 + result;
    if (!__CFADD__(*v2, result))
    {
      goto LABEL_49;
    }

    __break(1u);
    goto LABEL_36;
  }

  return result;
}

uint64_t MailboxFilter.hash(into:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      MEMORY[0x1B2728D70](7);
      v8 = *(a2 + 16);
      result = MEMORY[0x1B2728D70](v8);
      if (v8)
      {
        v9 = (a2 + 40);
        do
        {
          v10 = *v9;
          v9 += 4;
          result = MEMORY[0x1B2728D70](v10 | (v10 << 32));
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      return MEMORY[0x1B2728D70](qword_1B0EF6DC8[a2]);
    }
  }

  else if (a3)
  {
    MEMORY[0x1B2728D70](4);
    v11 = *(a2 + 16);
    result = MEMORY[0x1B2728D70](v11);
    if (v11)
    {
      v12 = (a2 + 40);
      do
      {
        v13 = *v12;
        v12 += 4;
        result = MEMORY[0x1B2728D70](v13 | (v13 << 32));
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    MEMORY[0x1B2728D70](3);
    v4 = *(a2 + 16);
    result = MEMORY[0x1B2728D70](v4);
    if (v4)
    {
      v6 = (a2 + 40);
      do
      {
        v7 = *v6;
        v6 += 4;
        result = MEMORY[0x1B2728D70](v7 | (v7 << 32));
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t MailboxFilter.hashValue.getter(uint64_t a1, unsigned __int8 a2)
{
  sub_1B0E46C28();
  MailboxFilter.hash(into:)(v5, a1, a2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD4150()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0E46C28();
  MailboxFilter.hash(into:)(v4, v1, v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD41AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1B0E46C28();
  MailboxFilter.hash(into:)(v5, v2, v3);
  return sub_1B0E46CB8();
}

uint64_t _s12NIOIMAPCore213MailboxFilterO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (a4 == 2)
      {
        v4 = a3;
        return _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(a1, v4);
      }
    }

    else if (a1 <= 1)
    {
      if (a1)
      {
        if (a4 == 3 && a3 == 1)
        {
          return 1;
        }
      }

      else if (a4 == 3 && !a3)
      {
        return 1;
      }
    }

    else if (a1 == 2)
    {
      if (a4 == 3 && a3 == 2)
      {
        return 1;
      }
    }

    else if (a1 == 3)
    {
      if (a4 == 3 && a3 == 3)
      {
        return 1;
      }
    }

    else if (a4 == 3 && a3 == 4)
    {
      return 1;
    }
  }

  else if (a2)
  {
    if (a4 == 1)
    {
LABEL_10:
      v4 = a3;
      return _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(a1, v4);
    }
  }

  else if (!a4)
  {
    goto LABEL_10;
  }

  return 0;
}

unint64_t sub_1B0DD42F8()
{
  result = qword_1EB6E7788;
  if (!qword_1EB6E7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7788);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore213MailboxFilterO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1B0DD4368(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0DD43B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0DD43F4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

double EmailAddressGroup.init(groupName:sourceRoot:children:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&v12 = a1;
  *(&v12 + 1) = a2;
  LODWORD(v13) = a3;
  WORD2(v13) = WORD2(a3);
  BYTE6(v13) = BYTE6(a3);
  *(&v13 + 1) = a4;
  *&v14 = a5;
  DWORD2(v14) = a6;
  BYTE14(v14) = BYTE6(a6);
  WORD6(v14) = WORD2(a6);
  v15 = a7;
  v16[0] = a1;
  v16[1] = a2;
  v17 = a3;
  v18 = WORD2(a3);
  v19 = BYTE6(a3);
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v24 = BYTE6(a6);
  v23 = WORD2(a6);
  v25 = a7;
  sub_1B0D3C9B8(&v12, v11);
  sub_1B0D3CA14(v16);
  v9 = v13;
  *a8 = v12;
  *(a8 + 16) = v9;
  result = *&v14;
  *(a8 + 32) = v14;
  *(a8 + 48) = v15;
  return result;
}

uint64_t EmailAddressGroup.groupName.setter(uint64_t a1, unint64_t a2, unint64_t a3)
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

uint64_t EmailAddressGroup.sourceRoot.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 46) = BYTE6(a3);
  *(v3 + 44) = WORD2(a3);
  *(v3 + 40) = a3;
  return result;
}

uint64_t EmailAddressGroup.children.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t EmailAddressGroup.hash(into:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  sub_1B0E46C38();
  if (*(v2 + 24))
  {
    sub_1B0E46C68();
    swift_beginAccess();
    sub_1B0E46C38();
  }

  else
  {
    sub_1B0E46C68();
  }

  return sub_1B0D448C4(a1, *(v2 + 48));
}

uint64_t EmailAddressGroup.hashValue.getter()
{
  sub_1B0E46C28();
  EmailAddressGroup.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD47C4()
{
  sub_1B0E46C28();
  EmailAddressGroup.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD4808(uint64_t a1)
{
  sub_1B0E46C28();
  EmailAddressGroup.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD4844(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s12NIOIMAPCore217EmailAddressGroupV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t EmailAddressListElement.hash(into:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    v4 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v5 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x40);
    MEMORY[0x1B2728D70](1);
    swift_beginAccess();
    sub_1B0E46C38();
    sub_1B0E46C68();
    if (v4)
    {
      swift_beginAccess();
      sub_1B0E46C38();
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0D448C4(a1, v5);
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    return EmailAddress.hash(into:)();
  }
}

uint64_t EmailAddressListElement.hashValue.getter(unint64_t a1)
{
  sub_1B0E46C28();
  EmailAddressListElement.hash(into:)(v3, a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD4A80()
{
  v1 = *v0;
  sub_1B0E46C28();
  EmailAddressListElement.hash(into:)(v3, v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD4AD0(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  EmailAddressListElement.hash(into:)(v4, v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD4B20(uint64_t *a1)
{
  v2 = v1;
  *v38 = *(a1 + 3);
  *&v32[1] = *(a1 + 3);
  v46 = *v32;
  *&v38[15] = *(a1 + 39);
  v4 = *(a1 + 4);
  v5 = *(a1 + 22);
  v6 = (v5 << 48) | (*(a1 + 10) << 32);
  *&v32[16] = *(a1 + 39);
  v47 = *&v32[16];
  v8 = *a1;
  v7 = a1[1];
  memset(v45, 0, sizeof(v45));
  v48 = v8;
  v49 = v7;
  v52 = v5;
  v51 = WORD2(v6);
  v50 = v4;
  v53 = 0;
  v54[0] = 0;
  *(v54 + 7) = 0;
  memset(v55, 0, sizeof(v55));
  v57 = *&v32[16];
  v56 = *v32;
  v58 = v8;
  v59 = v7;
  v62 = v5;
  v61 = WORD2(v6);
  v60 = v4;
  v63 = 0;
  v64[0] = 0;
  *(v64 + 7) = 0;
  sub_1B0DD5290(v38, v39);
  sub_1B0DD5290(v38, v39);

  sub_1B0D3CA68(v45, v39);
  sub_1B0D3CAC4(v55);
  v9 = sub_1B0D7BF30(v45);
  result = sub_1B0D3CAC4(v45);
  v11 = a1[6];
  v37 = v11;
  v12 = v11[2];
  if (v12)
  {
    v13 = *(v2 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v13);
    if (v14)
    {
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
    }

    v16 = result;
    v17 = *(v2 + 20);
    v18 = __CFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      goto LABEL_21;
    }

    *(v2 + 20) = v19;
  }

  else
  {
    v16 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v29[2] = sub_1B0D811AC;
  v29[3] = 0;
  v29[4] = v2;
  v29[5] = &v37;
  v29[6] = 0;
  v29[7] = 0xE000000000000000;
  result = sub_1B0DE5CC4(0, sub_1B0DD5300, v29, v11);
  v20 = v16 + result;
  if (__OFADD__(v16, result))
  {
    goto LABEL_18;
  }

  if (!v12)
  {
    result = 0;
    v26 = v20;
    goto LABEL_13;
  }

  v21 = *(v2 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v21);
  if (v22)
  {
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
  }

  v24 = *(v2 + 20);
  v18 = __CFADD__(v24, result);
  v25 = v24 + result;
  if (v18)
  {
    goto LABEL_22;
  }

  *(v2 + 20) = v25;
  v26 = v20 + result;
  if (__OFADD__(v20, result))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  v27 = v9 + v26;
  if (__OFADD__(v9, v26))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *&v31[1] = *v38;
  v40 = *v31;
  *&v31[16] = *&v38[15];
  memset(v32, 0, 23);
  v41 = *&v38[15];
  memset(v39, 0, sizeof(v39));
  v42 = 0;
  v43[0] = 0;
  *(v43 + 7) = 0;
  v43[2] = 0;
  v44[0] = 0;
  *(v44 + 7) = 0;
  v33 = *&v38[15];
  *&v32[23] = *v31;
  v34 = 0;
  v35[0] = 0;
  *(v35 + 7) = 0;
  v35[2] = 0;
  v36[0] = 0;
  *(v36 + 7) = 0;
  sub_1B0D3CA68(v39, &v30);
  sub_1B0D3CAC4(v32);
  v28 = sub_1B0D7BF30(v39);
  sub_1B0D3CAC4(v39);
  result = v27 + v28;
  if (__OFADD__(v27, v28))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t _s12NIOIMAPCore217EmailAddressGroupV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (!sub_1B0C2DB54(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48), *a2, *(a2 + 8), *(a2 + 16) | (*(a2 + 20) << 32) | (*(a2 + 22) << 48)))
  {
    return 0;
  }

  v4 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (!v4)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40) | ((*(a1 + 44) | (*(a1 + 46) << 16)) << 32);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40) | ((*(a2 + 44) | (*(a2 + 46) << 16)) << 32);

  LOBYTE(v5) = sub_1B0C2DB54(v9, v5, v6 & 0xFFFFFFFFFFFFFFLL, v4, v7, v8 & 0xFFFFFFFFFFFFFFLL);

  if ((v5 & 1) == 0)
  {
    return 0;
  }

LABEL_5:
  v10 = *(a1 + 48);
  v11 = *(a2 + 48);

  return sub_1B0D319FC(v10, v11);
}

uint64_t _s12NIOIMAPCore223EmailAddressListElementO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, unint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v11 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v12 = v7;
    v13 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    *&v14 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x40);
    if ((a2 & 0x8000000000000000) != 0)
    {
      v8 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      v16 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v17 = v8;
      v18 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
      *&v19 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x40);
      sub_1B0D3C9B8(&v16, v10);
      v6 = _s12NIOIMAPCore217EmailAddressGroupV23__derived_struct_equalsySbAC_ACtFZ_0(&v11, &v16);
      sub_1B0D3CA14(&v16);
      return v6 & 1;
    }

    goto LABEL_5;
  }

  v2 = *(a1 + 64);
  v13 = *(a1 + 48);
  v14 = v2;
  v15[0] = *(a1 + 80);
  *(v15 + 15) = *(a1 + 95);
  v3 = *(a1 + 32);
  v11 = *(a1 + 16);
  v12 = v3;
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_5:
    v6 = 0;
    return v6 & 1;
  }

  v4 = *(a2 + 64);
  v18 = *(a2 + 48);
  v19 = v4;
  v20[0] = *(a2 + 80);
  *(v20 + 15) = *(a2 + 95);
  v5 = *(a2 + 32);
  v16 = *(a2 + 16);
  v17 = v5;
  sub_1B0D3CA68(&v16, v10);
  v6 = _s12NIOIMAPCore212EmailAddressV23__derived_struct_equalsySbAC_ACtFZ_0(&v11, &v16);
  sub_1B0D3CAC4(&v16);
  return v6 & 1;
}

unint64_t sub_1B0DD5078()
{
  result = qword_1EB6E7790;
  if (!qword_1EB6E7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7790);
  }

  return result;
}

unint64_t sub_1B0DD50D0()
{
  result = qword_1EB6E7798;
  if (!qword_1EB6E7798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7798);
  }

  return result;
}

uint64_t sub_1B0DD5124(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1B0DD516C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0DD51D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0DD5230(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1B0DD5290(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6588, &qword_1B0EE80E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

NIOIMAPCore2::MailboxID_optional __swiftcall MailboxID.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_1B0E44CF8();
  if (v3 <= 0 || v3 >= 0x100 || (sub_1B0D7C750(countAndFlagsBits, object) & 1) == 0)
  {

    countAndFlagsBits = 0;
    object = 0;
  }

  v5 = countAndFlagsBits;
  v6 = object;
  result.value.objectID.rawValue._object = v6;
  result.value.objectID.rawValue._countAndFlagsBits = v5;
  result.is_nil = v4;
  return result;
}

uint64_t static MailboxID.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t MailboxID.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

NIOIMAPCore2::MailboxID __swiftcall MailboxID.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  if (sub_1B0E44CF8() - 256) >= 0xFFFFFFFFFFFFFF01 && (sub_1B0D7C750(countAndFlagsBits, object))
  {
    v3 = countAndFlagsBits;
    v4 = object;
  }

  else
  {

    __break(1u);
  }

  result.objectID.rawValue._object = v4;
  result.objectID.rawValue._countAndFlagsBits = v3;
  return result;
}

uint64_t MailboxID.debugDescription.getter()
{
  MEMORY[0x1B2726E80]();
  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  return 40;
}

unint64_t sub_1B0DD54CC()
{
  result = qword_1EB6E77A0;
  if (!qword_1EB6E77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E77A0);
  }

  return result;
}

unint64_t sub_1B0DD5524()
{
  result = qword_1EB6E77A8;
  if (!qword_1EB6E77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E77A8);
  }

  return result;
}

unint64_t sub_1B0DD557C()
{
  result = qword_1EB6E77B0;
  if (!qword_1EB6E77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E77B0);
  }

  return result;
}

void sub_1B0DD55E0(unint64_t a1, unint64_t a2)
{
  if (*v2 == 1)
  {

    sub_1B0DD6040(a1, a2);
    return;
  }

  v29 = *v2;
  v5 = HIDWORD(*(v2 + 2));
  v6 = sub_1B0DD6A7C(a1, a2);
  if (v6 <= 1)
  {
    if (!v6)
    {

      sub_1B0DD6FF4(a1, a2);
      return;
    }

LABEL_21:
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_22:
      v14 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v14);

      MEMORY[0x1B2726E80](658813, 0xE300000000000000);
      v15 = sub_1B0CFC1B0(0x7BuLL, 0xE100000000000000, v2 + 8, v5);
      if (v16)
      {
        v17._countAndFlagsBits = 123;
        v17._object = 0xE100000000000000;
        v15 = ByteBuffer._setStringSlowpath(_:at:)(v17, v5);
      }

      v18 = v15;

      v19 = *(v2 + 5);
      v20 = __CFADD__(v19, v18);
      v21 = v19 + v18;
      if (v20)
      {
        __break(1u);
LABEL_37:
        sub_1B0E44DC8();
LABEL_29:
        v22 = sub_1B0E469C8();
        MEMORY[0x1B2726E80](v22);

        MEMORY[0x1B2726E80](168656171, 0xE400000000000000);
        v23 = sub_1B0CFC1B0(0x7BuLL, 0xE100000000000000, v2 + 8, v5);
        if (v24)
        {
          v25._countAndFlagsBits = 123;
          v25._object = 0xE100000000000000;
          v23 = ByteBuffer._setStringSlowpath(_:at:)(v25, v5);
        }

        v26 = v23;

        v27 = *(v2 + 5);
        v20 = __CFADD__(v27, v26);
        v28 = v27 + v26;
        if (v20)
        {
          __break(1u);
        }

        else
        {
          *(v2 + 5) = v28;
          if (!__OFADD__(v26, sub_1B0D790AC(a1, a2)))
          {
            return;
          }
        }

        __break(1u);
        return;
      }

      *(v2 + 5) = v21;
      if (!__OFADD__(v18, sub_1B0D790AC(a1, a2)))
      {
        return;
      }

      __break(1u);
LABEL_28:
      if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_37;
    }

LABEL_35:
    sub_1B0E44DC8();
    goto LABEL_22;
  }

  if (v6 != 2)
  {
    goto LABEL_28;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    sub_1B0E44DC8();
  }

  v7 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v7);

  MEMORY[0x1B2726E80](658813, 0xE300000000000000);
  v8 = sub_1B0CFC1B0(0x7BuLL, 0xE100000000000000, v2 + 8, v5);
  if (v9)
  {
    v10._countAndFlagsBits = 123;
    v10._object = 0xE100000000000000;
    v8 = ByteBuffer._setStringSlowpath(_:at:)(v10, v5);
  }

  v11 = v8;

  v12 = *(v2 + 5);
  v13 = (v12 + v11);
  if (__CFADD__(v12, v11))
  {
    __break(1u);
    goto LABEL_35;
  }

  *(v2 + 5) = v13;
  if (((*(&v29 + 1) | (SBYTE5(v29) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1B0D7D00C(v13);
  }

  if (__OFADD__(v11, sub_1B0D790AC(a1, a2)))
  {
    __break(1u);
    goto LABEL_21;
  }
}

void sub_1B0DD59A4(uint64_t a1)
{
  if (*v1 == 1)
  {

    sub_1B0DD63E8(a1);
    return;
  }

  v30 = *v1;
  v3 = HIDWORD(*(v1 + 2));
  v4 = sub_1B0DD6BCC(a1);
  if (v4 <= 1)
  {
    if (!v4)
    {

      sub_1B0DD74D0(a1);
      return;
    }

LABEL_19:
    v13 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v13);

    MEMORY[0x1B2726E80](658813, 0xE300000000000000);
    v14 = sub_1B0CFC1B0(0x7BuLL, 0xE100000000000000, v1 + 8, v3);
    if (v15)
    {
      v16._countAndFlagsBits = 123;
      v16._object = 0xE100000000000000;
      v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v3);
    }

    v17 = v14;

    v18 = *(v1 + 5);
    v19 = __CFADD__(v18, v17);
    v20 = v18 + v17;
    if (!v19)
    {
      *(v1 + 5) = v20;
      sub_1B0D791F8(a1);
      if (!__OFADD__(v17, v21))
      {
        return;
      }

      __break(1u);
LABEL_25:
      v22 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v22);

      MEMORY[0x1B2726E80](168656171, 0xE400000000000000);
      v23 = sub_1B0CFC1B0(0x7BuLL, 0xE100000000000000, v1 + 8, v3);
      if (v24)
      {
        v25._countAndFlagsBits = 123;
        v25._object = 0xE100000000000000;
        v23 = ByteBuffer._setStringSlowpath(_:at:)(v25, v3);
      }

      v26 = v23;

      v27 = *(v1 + 5);
      v19 = __CFADD__(v27, v26);
      v28 = v27 + v26;
      if (!v19)
      {
        *(v1 + 5) = v28;
        sub_1B0D791F8(a1);
        if (!__OFADD__(v26, v29))
        {
          return;
        }

LABEL_33:
        __break(1u);
        return;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v4 != 2)
  {
    goto LABEL_25;
  }

  v5 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v5);

  MEMORY[0x1B2726E80](658813, 0xE300000000000000);
  v6 = sub_1B0CFC1B0(0x7BuLL, 0xE100000000000000, v1 + 8, v3);
  if (v7)
  {
    v8._countAndFlagsBits = 123;
    v8._object = 0xE100000000000000;
    v6 = ByteBuffer._setStringSlowpath(_:at:)(v8, v3);
  }

  v9 = v6;

  v10 = *(v1 + 5);
  v11 = (v10 + v9);
  if (__CFADD__(v10, v9))
  {
    __break(1u);
    goto LABEL_31;
  }

  *(v1 + 5) = v11;
  if (((*(&v30 + 1) | (SBYTE5(v30) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1B0D7D00C(v11);
  }

  sub_1B0D791F8(a1);
  if (__OFADD__(v9, v12))
  {
    __break(1u);
    goto LABEL_19;
  }
}

void sub_1B0DD5CEC(uint64_t *a1)
{
  if (*v1 == 1)
  {

    sub_1B0DD672C(a1);
    return;
  }

  v30 = *v1;
  v3 = HIDWORD(*(v1 + 2));
  v4 = sub_1B0DD6F44(a1);
  if (v4 <= 1)
  {
    if (!v4)
    {

      sub_1B0DD7858(a1);
      return;
    }

LABEL_19:
    v13 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v13);

    MEMORY[0x1B2726E80](658813, 0xE300000000000000);
    v14 = sub_1B0CFC1B0(0x7BuLL, 0xE100000000000000, v1 + 8, v3);
    if (v15)
    {
      v16._countAndFlagsBits = 123;
      v16._object = 0xE100000000000000;
      v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v3);
    }

    v17 = v14;

    v18 = *(v1 + 5);
    v19 = __CFADD__(v18, v17);
    v20 = v18 + v17;
    if (!v19)
    {
      *(v1 + 5) = v20;
      sub_1B0D79300(a1);
      if (!__OFADD__(v17, v21))
      {
        return;
      }

      __break(1u);
LABEL_25:
      v22 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v22);

      MEMORY[0x1B2726E80](168656171, 0xE400000000000000);
      v23 = sub_1B0CFC1B0(0x7BuLL, 0xE100000000000000, v1 + 8, v3);
      if (v24)
      {
        v25._countAndFlagsBits = 123;
        v25._object = 0xE100000000000000;
        v23 = ByteBuffer._setStringSlowpath(_:at:)(v25, v3);
      }

      v26 = v23;

      v27 = *(v1 + 5);
      v19 = __CFADD__(v27, v26);
      v28 = v27 + v26;
      if (!v19)
      {
        *(v1 + 5) = v28;
        sub_1B0D79300(a1);
        if (!__OFADD__(v26, v29))
        {
          return;
        }

LABEL_33:
        __break(1u);
        return;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v4 != 2)
  {
    goto LABEL_25;
  }

  v5 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v5);

  MEMORY[0x1B2726E80](658813, 0xE300000000000000);
  v6 = sub_1B0CFC1B0(0x7BuLL, 0xE100000000000000, v1 + 8, v3);
  if (v7)
  {
    v8._countAndFlagsBits = 123;
    v8._object = 0xE100000000000000;
    v6 = ByteBuffer._setStringSlowpath(_:at:)(v8, v3);
  }

  v9 = v6;

  v10 = *(v1 + 5);
  v11 = (v10 + v9);
  if (__CFADD__(v10, v9))
  {
    __break(1u);
    goto LABEL_31;
  }

  *(v1 + 5) = v11;
  if (((*(&v30 + 1) | (SBYTE5(v30) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1B0D7D00C(v11);
  }

  sub_1B0D79300(a1);
  if (__OFADD__(v9, v12))
  {
    __break(1u);
    goto LABEL_19;
  }
}

uint64_t sub_1B0DD6040(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v35 = *v2;
  v5 = HIDWORD(*(v2 + 2));
  v6 = sub_1B0DD6A7C(a1, a2);
  if (v6 <= 1)
  {
    if (v6)
    {
      goto LABEL_22;
    }

    v4 = 0;
    result = sub_1B0CFC1B0(0x228588E222uLL, 0xA500000000000000, (v2 + 2), v5);
    if (v8)
    {
      v9._countAndFlagsBits = 0x228588E222;
      v9._object = 0xA500000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v9, v5);
    }

    v10 = v2[5];
    v3 = v2 + 5;
    v6 = v10 + result;
    if (!__CFADD__(v10, result))
    {
      goto LABEL_33;
    }

    __break(1u);
  }

  if (v6 != 2)
  {
LABEL_28:
    if ((v4 & 0x1000000000000000) != 0)
    {
      sub_1B0E44DC8();
    }

    v29 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v29);

    MEMORY[0x1B2726E80](0x8588E20A0D7D2BLL, 0xA700000000000000);
    v30 = sub_1B0CFC1B0(0x7BuLL, 0xE100000000000000, (v3 + 2), v5);
    if (v31)
    {
      v32._countAndFlagsBits = 123;
      v32._object = 0xE100000000000000;
      v30 = ByteBuffer._setStringSlowpath(_:at:)(v32, v5);
    }

    v33 = v30;

    v34 = v3[5];
    v3 += 5;
    result = v33;
    v6 = v34 + v33;
    if (!__CFADD__(v34, v33))
    {
LABEL_33:
      *v3 = v6;
      return result;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    sub_1B0E44DC8();
  }

  v11 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v11);

  MEMORY[0x1B2726E80](658813, 0xE300000000000000);
  v4 = 0;
  v12 = sub_1B0CFC1B0(0x7BuLL, 0xE100000000000000, (v3 + 2), v5);
  if (v13)
  {
    v14._countAndFlagsBits = 123;
    v14._object = 0xE100000000000000;
    v12 = ByteBuffer._setStringSlowpath(_:at:)(v14, v5);
  }

  v15 = v12;

  v16 = v3[5];
  v5 = v16 + v15;
  if (__CFADD__(v16, v15))
  {
    __break(1u);
    goto LABEL_35;
  }

  v3[5] = v5;
  if (((*(&v35 + 1) | (SBYTE5(v35) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1B0D7D00C(v5);
  }

  result = sub_1B0CFC1B0(0x8588E2uLL, 0xA300000000000000, (v3 + 2), v5);
  if (v17)
  {
    v18._countAndFlagsBits = 8751330;
    v18._object = 0xA300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v5);
  }

  v19 = v3[5];
  v20 = __CFADD__(v19, result);
  v21 = v19 + result;
  if (v20)
  {
    goto LABEL_37;
  }

  v3[5] = v21;
  v22 = __OFADD__(v15, result);
  result += v15;
  if (v22)
  {
    __break(1u);
LABEL_22:
    if ((v4 & 0x1000000000000000) == 0)
    {
LABEL_23:
      v23 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v23);

      MEMORY[0x1B2726E80](0x8588E20A0D7DLL, 0xA600000000000000);
      v4 = 0;
      v24 = sub_1B0CFC1B0(0x7BuLL, 0xE100000000000000, (v3 + 2), v5);
      if (v25)
      {
        v26._countAndFlagsBits = 123;
        v26._object = 0xE100000000000000;
        v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v5);
      }

      v27 = v24;

      v28 = v3[5];
      v3 += 5;
      result = v27;
      v6 = v28 + v27;
      if (!__CFADD__(v28, v27))
      {
        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_35:
    sub_1B0E44DC8();
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1B0DD63E8(uint64_t a1)
{
  v2 = v1;
  v33 = *v1;
  v3 = HIDWORD(*(v1 + 2));
  v4 = sub_1B0DD6BCC(a1);
  if (v4 <= 1)
  {
    if (v4)
    {
      goto LABEL_20;
    }

    result = sub_1B0CFC1B0(0x228588E222uLL, 0xA500000000000000, (v1 + 2), v3);
    if (v6)
    {
      v7._countAndFlagsBits = 0x228588E222;
      v7._object = 0xA500000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v3);
    }

    v8 = v1[5];
    v2 = v1 + 5;
    v4 = v8 + result;
    if (!__CFADD__(v8, result))
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  if (v4 != 2)
  {
    goto LABEL_25;
  }

  v9 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v9);

  MEMORY[0x1B2726E80](658813, 0xE300000000000000);
  v10 = sub_1B0CFC1B0(0x7BuLL, 0xE100000000000000, (v2 + 2), v3);
  if (v11)
  {
    v12._countAndFlagsBits = 123;
    v12._object = 0xE100000000000000;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v3);
  }

  v13 = v10;

  v14 = v2[5];
  v3 = v14 + v13;
  if (__CFADD__(v14, v13))
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  v2[5] = v3;
  if (((*(&v33 + 1) | (SBYTE5(v33) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1B0D7D00C(v3);
  }

  result = sub_1B0CFC1B0(0x8588E2uLL, 0xA300000000000000, (v2 + 2), v3);
  if (v15)
  {
    v16._countAndFlagsBits = 8751330;
    v16._object = 0xA300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v16, v3);
  }

  v17 = v2[5];
  v18 = __CFADD__(v17, result);
  v19 = v17 + result;
  if (v18)
  {
    goto LABEL_32;
  }

  v2[5] = v19;
  v20 = __OFADD__(v13, result);
  result += v13;
  if (!v20)
  {
    return result;
  }

  __break(1u);
LABEL_20:
  v21 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v21);

  MEMORY[0x1B2726E80](0x8588E20A0D7DLL, 0xA600000000000000);
  v22 = sub_1B0CFC1B0(0x7BuLL, 0xE100000000000000, (v2 + 2), v3);
  if (v23)
  {
    v24._countAndFlagsBits = 123;
    v24._object = 0xE100000000000000;
    v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v3);
  }

  v25 = v22;

  v26 = v2[5];
  v2 += 5;
  result = v25;
  v4 = v26 + v25;
  if (!__CFADD__(v26, v25))
  {
    goto LABEL_28;
  }

  __break(1u);
LABEL_25:
  v27 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v27);

  MEMORY[0x1B2726E80](0x8588E20A0D7D2BLL, 0xA700000000000000);
  v28 = sub_1B0CFC1B0(0x7BuLL, 0xE100000000000000, (v2 + 2), v3);
  if (v29)
  {
    v30._countAndFlagsBits = 123;
    v30._object = 0xE100000000000000;
    v28 = ByteBuffer._setStringSlowpath(_:at:)(v30, v3);
  }

  v31 = v28;

  v32 = v2[5];
  v2 += 5;
  result = v31;
  v4 = v32 + v31;
  if (__CFADD__(v32, v31))
  {
    goto LABEL_31;
  }

LABEL_28:
  *v2 = v4;
  return result;
}

uint64_t sub_1B0DD672C(uint64_t *a1)
{
  v2 = v1;
  v33 = *v1;
  v3 = HIDWORD(*(v1 + 2));
  v4 = sub_1B0DD6F44(a1);
  if (v4 <= 1)
  {
    if (v4)
    {
      goto LABEL_20;
    }

    result = sub_1B0CFC1B0(0x228588E222uLL, 0xA500000000000000, (v1 + 2), v3);
    if (v6)
    {
      v7._countAndFlagsBits = 0x228588E222;
      v7._object = 0xA500000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v3);
    }

    v8 = v1[5];
    v2 = v1 + 5;
    v4 = v8 + result;
    if (!__CFADD__(v8, result))
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  if (v4 != 2)
  {
    goto LABEL_25;
  }

  v9 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v9);

  MEMORY[0x1B2726E80](658813, 0xE300000000000000);
  v10 = sub_1B0CFC1B0(0x7BuLL, 0xE100000000000000, (v2 + 2), v3);
  if (v11)
  {
    v12._countAndFlagsBits = 123;
    v12._object = 0xE100000000000000;
    v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v3);
  }

  v13 = v10;

  v14 = v2[5];
  v3 = v14 + v13;
  if (__CFADD__(v14, v13))
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  v2[5] = v3;
  if (((*(&v33 + 1) | (SBYTE5(v33) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1B0D7D00C(v3);
  }

  result = sub_1B0CFC1B0(0x8588E2uLL, 0xA300000000000000, (v2 + 2), v3);
  if (v15)
  {
    v16._countAndFlagsBits = 8751330;
    v16._object = 0xA300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v16, v3);
  }

  v17 = v2[5];
  v18 = __CFADD__(v17, result);
  v19 = v17 + result;
  if (v18)
  {
    goto LABEL_32;
  }

  v2[5] = v19;
  v20 = __OFADD__(v13, result);
  result += v13;
  if (!v20)
  {
    return result;
  }

  __break(1u);
LABEL_20:
  v21 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v21);

  MEMORY[0x1B2726E80](0x8588E20A0D7DLL, 0xA600000000000000);
  v22 = sub_1B0CFC1B0(0x7BuLL, 0xE100000000000000, (v2 + 2), v3);
  if (v23)
  {
    v24._countAndFlagsBits = 123;
    v24._object = 0xE100000000000000;
    v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v3);
  }

  v25 = v22;

  v26 = v2[5];
  v2 += 5;
  result = v25;
  v4 = v26 + v25;
  if (!__CFADD__(v26, v25))
  {
    goto LABEL_28;
  }

  __break(1u);
LABEL_25:
  v27 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v27);

  MEMORY[0x1B2726E80](0x8588E20A0D7D2BLL, 0xA700000000000000);
  v28 = sub_1B0CFC1B0(0x7BuLL, 0xE100000000000000, (v2 + 2), v3);
  if (v29)
  {
    v30._countAndFlagsBits = 123;
    v30._object = 0xE100000000000000;
    v28 = ByteBuffer._setStringSlowpath(_:at:)(v30, v3);
  }

  v31 = v28;

  v32 = v2[5];
  v2 += 5;
  result = v31;
  v4 = v32 + v31;
  if (__CFADD__(v32, v31))
  {
    goto LABEL_31;
  }

LABEL_28:
  *v2 = v4;
  return result;
}

uint64_t sub_1B0DD6A7C(unint64_t a1, unint64_t a2)
{
  if (v2[5] < 0)
  {
    if (v2[2])
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v17 = a1;
        v12 = a2;
        v13 = sub_1B0E44DC8();
        a2 = v12;
        v14 = v13;
        a1 = v17;
        if (v14 > 70)
        {
          return 1;
        }
      }

      else if ((a2 & 0x2000000000000000) == 0 && (a1 & 0xFFFFFFFFFFFFLL) > 0x46)
      {
        return 1;
      }

      v18 = 0;
      if (sub_1B0DD7CDC(a1, a2, &v18))
      {
        return 0;
      }
    }

    return 1;
  }

  v3 = v2[4];
  v4 = v2[3];
  if ((v2[1] & 1) == 0)
  {
    goto LABEL_6;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v16 = a1;
    v6 = a2;
    v7 = sub_1B0E44DC8();
    a2 = v6;
    v8 = v7;
    a1 = v16;
    if (v8 > 70)
    {
      goto LABEL_6;
    }

LABEL_15:
    v18 = 0;
    v9 = a1;
    v10 = a2;
    v11 = sub_1B0DD7CDC(a1, a2, &v18) & 1;
    if (v11)
    {
      v5 = 0;
    }

    else
    {
      v5 = 3;
    }

    if (v11)
    {
      return v5;
    }

    a2 = v10;
    a1 = v9;
    if (v4)
    {
      return v5;
    }

    goto LABEL_20;
  }

  if ((a2 & 0x2000000000000000) != 0 || (a1 & 0xFFFFFFFFFFFFLL) <= 0x46)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v4)
  {
    return 3;
  }

LABEL_20:
  if (v3)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      if (sub_1B0E44DC8() <= 4096)
      {
        return 3;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0 || (a1 & 0xFFFFFFFFFFFFLL) <= 0x1000)
    {
      return 3;
    }
  }

  return 2;
}

uint64_t sub_1B0DD6BCC(uint64_t result)
{
  if (v1[5] < 0)
  {
    if ((v1[2] & 1) == 0)
    {
      return 1;
    }

    v3 = *(result + 16);
    if (v3 > 0x46)
    {
      return 1;
    }

    v9 = 0;
    v10 = result + 32;
    while (v3 != v9)
    {
      v11 = *(v10 + v9);
      if ((v11 - 127) < 0xFFFFFFA1)
      {
        return 1;
      }

      ++v9;
      if (v11 == 92 || v11 == 34)
      {
        while (v3 != v9)
        {
          if (__OFADD__(v9, 1))
          {
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
            return result;
          }

          v12 = *(v10 + v9);
          if ((v12 - 127) < 0xFFFFFFA1)
          {
            return 1;
          }

          ++v9;
          if (v12 == 92 || v12 == 34)
          {
            while (v3 != v9)
            {
              if (v9 >= v3)
              {
                goto LABEL_95;
              }

              if (__OFADD__(v9, 1))
              {
                goto LABEL_93;
              }

              v13 = *(v10 + v9);
              if ((v13 - 127) < 0xFFFFFFA1)
              {
                return 1;
              }

              ++v9;
              if (v13 == 92 || v13 == 34)
              {
                v19 = v3 - v9;
                v20 = (v10 + v9);
                while (v19)
                {
                  if (v9 >= v3)
                  {
                    goto LABEL_95;
                  }

                  if (__OFADD__(v9, 1))
                  {
                    goto LABEL_93;
                  }

                  v21 = *v20;
                  if ((v21 - 127) < 0xFFFFFFA1)
                  {
                    return 1;
                  }

                  ++v9;
                  ++v20;
                  --v19;
                  if (v21 == 92 || v21 == 34)
                  {
                    while (v19)
                    {
                      if (v9 >= v3)
                      {
                        goto LABEL_95;
                      }

                      if (__OFADD__(v9, 1))
                      {
                        goto LABEL_93;
                      }

                      v22 = *v20;
                      if ((v22 - 127) < 0xFFFFFFA1)
                      {
                        return 1;
                      }

                      --v19;
                      ++v20;
                      ++v9;
                      if (v22 == 92 || v22 == 34)
                      {
                        result = 1;
                        while (v19)
                        {
                          if (v9 >= v3)
                          {
                            goto LABEL_95;
                          }

                          if (__OFADD__(v9, 1))
                          {
                            goto LABEL_93;
                          }

                          v23 = *v20;
                          if ((v23 - 127) < 0xFFFFFFA1)
                          {
                            return 1;
                          }

                          if (v23 != 34)
                          {
                            ++v9;
                            ++v20;
                            --v19;
                            if (v23 != 92)
                            {
                              continue;
                            }
                          }

                          return result;
                        }

                        return 0;
                      }
                    }

                    return 0;
                  }
                }

                return 0;
              }
            }

            return 0;
          }
        }

        return 0;
      }
    }

    return 0;
  }

  if (v1[1])
  {
    v2 = *(result + 16);
    if (v2 <= 0x46)
    {
      v4 = 0;
      v5 = result + 32;
      while (v2 != v4)
      {
        v6 = *(v5 + v4);
        if ((v6 - 127) < 0xFFFFFFA1)
        {
          goto LABEL_4;
        }

        ++v4;
        if (v6 == 92 || v6 == 34)
        {
          while (v2 != v4)
          {
            if (__OFADD__(v4, 1))
            {
LABEL_92:
              __break(1u);
              goto LABEL_93;
            }

            v7 = *(v5 + v4);
            if ((v7 - 127) < 0xFFFFFFA1)
            {
              goto LABEL_4;
            }

            ++v4;
            if (v7 == 92 || v7 == 34)
            {
              while (v2 != v4)
              {
                if (v4 >= v2)
                {
                  goto LABEL_94;
                }

                if (__OFADD__(v4, 1))
                {
                  goto LABEL_92;
                }

                v8 = *(v5 + v4);
                if ((v8 - 127) < 0xFFFFFFA1)
                {
                  goto LABEL_4;
                }

                ++v4;
                if (v8 == 92 || v8 == 34)
                {
                  v14 = v2 - v4;
                  v15 = (v5 + v4);
                  while (v14)
                  {
                    if (v4 >= v2)
                    {
                      goto LABEL_94;
                    }

                    if (__OFADD__(v4, 1))
                    {
                      goto LABEL_92;
                    }

                    v16 = *v15;
                    if ((v16 - 127) < 0xFFFFFFA1)
                    {
                      goto LABEL_4;
                    }

                    ++v4;
                    ++v15;
                    --v14;
                    if (v16 == 92 || v16 == 34)
                    {
                      while (v14)
                      {
                        if (v4 >= v2)
                        {
                          goto LABEL_94;
                        }

                        if (__OFADD__(v4, 1))
                        {
                          goto LABEL_92;
                        }

                        v17 = *v15;
                        if ((v17 - 127) < 0xFFFFFFA1)
                        {
                          goto LABEL_4;
                        }

                        --v14;
                        ++v15;
                        ++v4;
                        if (v17 == 92 || v17 == 34)
                        {
                          while (v14)
                          {
                            if (v4 >= v2)
                            {
                              goto LABEL_94;
                            }

                            if (__OFADD__(v4, 1))
                            {
                              goto LABEL_92;
                            }

                            v18 = *v15;
                            if ((v18 - 127) >= 0xFFFFFFA1 && v18 != 34)
                            {
                              ++v4;
                              ++v15;
                              --v14;
                              if (v18 != 92)
                              {
                                continue;
                              }
                            }

                            goto LABEL_4;
                          }

                          return 0;
                        }
                      }

                      return 0;
                    }
                  }

                  return 0;
                }
              }

              return 0;
            }
          }

          return 0;
        }
      }

      return 0;
    }
  }

LABEL_4:
  if ((v1[3] & 1) != 0 || (v1[4] & 1) != 0 && *(result + 16) <= 0x1000uLL)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1B0DD6F44(uint64_t *a1)
{
  v2 = a1;
  if ((v1[5] & 0x80000000) == 0)
  {
    v3 = v1[4];
    v4 = v1[3];
    if (v1[1])
    {
      v6 = sub_1B0DD8CDC(a1) & 1;
      if (v6)
      {
        result = 0;
      }

      else
      {
        result = 3;
      }

      if (v6)
      {
        return result;
      }

      v2 = a1;
      if (v4)
      {
        return result;
      }
    }

    else if (v1[3])
    {
      return 3;
    }

    if ((v3 & 1) == 0 || v2[4] - v2[3] > 4096)
    {
      return 2;
    }

    return 3;
  }

  return (v1[2] & 1) == 0 || (sub_1B0DD8CDC(a1) & 1) == 0;
}

void sub_1B0DD6FF4(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = a1;
  if (*v2 == 1)
  {
    v67[5] = 91;
    v67[6] = 0xE100000000000000;
    v6 = sub_1B03B7B80(a1, a2)[2];

    v67[2] = v6;
    v7 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v7);

    MEMORY[0x1B2726E80](0x5D736574796220, 0xE700000000000000);
    v8 = *(v3 + 20);
    v9 = sub_1B0CFC1B0(0x5BuLL, 0xE100000000000000, v3 + 8, v8);
    if (v10)
    {
      v11._countAndFlagsBits = 91;
      v11._object = 0xE100000000000000;
      v9 = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
    }

    v12 = v9;

    v13 = *(v3 + 20);
    v14 = __CFADD__(v13, v12);
    v15 = v13 + v12;
    if (v14)
    {
      goto LABEL_83;
    }

    *(v3 + 20) = v15;
    return;
  }

  v16 = *(v2 + 20);
  v17 = sub_1B0CFC1B0(0x22uLL, 0xE100000000000000, v2 + 8, v16);
  if (v18)
  {
    v19._countAndFlagsBits = 34;
    v19._object = 0xE100000000000000;
    v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v16);
  }

  v20 = v17;
  v21 = *(v2 + 20);
  v22 = v21 + v17;
  if (__CFADD__(v21, v17))
  {
    goto LABEL_84;
  }

  *(v2 + 20) = v22;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v23 = v5 & 0xFFFFFFFFFFFFLL;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v23)
  {
    v65 = v5;
    v66 = 4 * v23;
    v24 = (v5 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v24) = 1;
    }

    v25 = 4 << v24;
    v26 = 15;
    v64 = v23;
    do
    {
      v27 = v26 & 0xC;
      v28 = v26;
      if (v27 == v25)
      {
        v28 = sub_1B0A6D6C4(v26, v5, a2);
      }

      v29 = v28 >> 16;
      if (v28 >> 16 >= v23)
      {
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
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v31 = sub_1B0E44E08();
        if (v27 != v25)
        {
          goto LABEL_28;
        }
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v67[0] = v5;
        v67[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v31 = *(v67 + v29);
        if (v27 != v25)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v30 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v5 & 0x1000000000000000) == 0)
        {
          v30 = sub_1B0E46368();
        }

        v31 = *(v30 + v29);
        if (v27 != v25)
        {
LABEL_28:
          if ((a2 & 0x1000000000000000) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_32;
        }
      }

      v26 = sub_1B0A6D6C4(v26, v5, a2);
      if ((a2 & 0x1000000000000000) == 0)
      {
LABEL_29:
        v26 = (v26 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_34;
      }

LABEL_32:
      if (v23 <= v26 >> 16)
      {
        goto LABEL_74;
      }

      v26 = sub_1B0E44DD8();
LABEL_34:
      if (v31 == 34)
      {
        v45 = v22 + 2;
        if (v22 >= 0xFFFFFFFE)
        {
          goto LABEL_77;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = *(v3 + 24);
          v14 = v45 >= v46;
          v47 = v45 - v46;
          if (v14)
          {
            v48 = v47;
          }

          else
          {
            v48 = 0;
          }

          v49 = sub_1B03904C0();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v48, v49 & 1);
        }

        ByteBuffer._ensureAvailableCapacity(_:at:)(2u, v22);
        v50 = *(v3 + 8);
        v51 = *(v3 + 24);
        v52 = *(v3 + 28);
        v53 = *(v3 + 30);
        swift_beginAccess();
        v54 = v53 | (v52 << 8);
        v55 = v51 - v54;
        if (v51 - v54 >= v22)
        {
          v55 = v22;
        }

        if (!v22)
        {
          v55 = 0;
        }

        *(*(v50 + 24) + v54 + v55) = word_1F272D388;
        v56 = *(v3 + 20);
        v22 = v56 + 2;
        if (v56 >= 0xFFFFFFFE)
        {
          goto LABEL_78;
        }

        *(v3 + 20) = v22;
        v44 = __OFADD__(v20, 2);
        v20 += 2;
        if (v44)
        {
          goto LABEL_82;
        }

LABEL_16:
        v23 = v64;
        v5 = v65;
        continue;
      }

      if (v31 == 92)
      {
        v32 = v22 + 2;
        if (v22 >= 0xFFFFFFFE)
        {
          goto LABEL_76;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = *(v3 + 24);
          v14 = v32 >= v33;
          v34 = v32 - v33;
          if (v14)
          {
            v35 = v34;
          }

          else
          {
            v35 = 0;
          }

          v36 = sub_1B03904C0();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v35, v36 & 1);
        }

        ByteBuffer._ensureAvailableCapacity(_:at:)(2u, v22);
        v37 = *(v3 + 8);
        v38 = *(v3 + 24);
        v39 = *(v3 + 28);
        v40 = *(v3 + 30);
        swift_beginAccess();
        v41 = v40 | (v39 << 8);
        v42 = v38 - v41;
        if (v38 - v41 >= v22)
        {
          v42 = v22;
        }

        if (!v22)
        {
          v42 = 0;
        }

        *(*(v37 + 24) + v41 + v42) = word_1F272D360;
        v43 = *(v3 + 20);
        v22 = v43 + 2;
        if (v43 >= 0xFFFFFFFE)
        {
          goto LABEL_79;
        }

        *(v3 + 20) = v22;
        v44 = __OFADD__(v20, 2);
        v20 += 2;
        if (v44)
        {
          goto LABEL_81;
        }

        goto LABEL_16;
      }

      v57 = sub_1B0D4F474();
      v58 = *(v3 + 20);
      v22 = v58 + v57;
      if (__CFADD__(v58, v57))
      {
        goto LABEL_75;
      }

      *(v3 + 20) = v22;
      v44 = __OFADD__(v20, v57);
      v20 += v57;
      if (v44)
      {
        goto LABEL_80;
      }
    }

    while (v66 != v26 >> 14);
  }

  v59 = sub_1B0CFC1B0(0x22uLL, 0xE100000000000000, v3 + 8, v22);
  if (v60)
  {
    v61._countAndFlagsBits = 34;
    v61._object = 0xE100000000000000;
    v59 = ByteBuffer._setStringSlowpath(_:at:)(v61, v22);
  }

  v62 = *(v3 + 20);
  v14 = __CFADD__(v62, v59);
  v63 = v62 + v59;
  if (v14)
  {
    goto LABEL_85;
  }

  *(v3 + 20) = v63;
  if (__OFADD__(v20, v59))
  {
LABEL_86:
    __break(1u);
  }
}

void sub_1B0DD74D0(uint64_t a1)
{
  v2 = v1;
  if (*v1 == 1)
  {
    v4 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v4);

    MEMORY[0x1B2726E80](0x5D736574796220, 0xE700000000000000);
    v5 = *(v1 + 20);
    v6 = sub_1B0CFC1B0(0x5BuLL, 0xE100000000000000, v1 + 8, v5);
    if (v7)
    {
      v8._countAndFlagsBits = 91;
      v8._object = 0xE100000000000000;
      v6 = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = v6;

    v10 = *(v2 + 20);
    v11 = __CFADD__(v10, v9);
    v12 = v10 + v9;
    if (v11)
    {
      goto LABEL_58;
    }

    *(v2 + 20) = v12;
  }

  else
  {
    v13 = *(v1 + 20);
    v14 = sub_1B0CFC1B0(0x22uLL, 0xE100000000000000, v1 + 8, v13);
    if (v15)
    {
      v16._countAndFlagsBits = 34;
      v16._object = 0xE100000000000000;
      v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
    }

    v17 = v14;
    v18 = *(v1 + 20);
    v19 = v18 + v14;
    if (__CFADD__(v18, v14))
    {
      goto LABEL_59;
    }

    *(v1 + 20) = v19;
    v20 = *(a1 + 16);
    if (v20)
    {
      v21 = (a1 + 32);
      do
      {
        v23 = *v21++;
        v22 = v23;
        if (v23 == 34)
        {
          v37 = v19 + 2;
          if (v19 >= 0xFFFFFFFE)
          {
            goto LABEL_53;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = *(v2 + 24);
            v11 = v37 >= v38;
            v39 = v37 - v38;
            if (v11)
            {
              v40 = v39;
            }

            else
            {
              v40 = 0;
            }

            v41 = sub_1B03904C0();
            ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v40, v41 & 1);
          }

          ByteBuffer._ensureAvailableCapacity(_:at:)(2u, v19);
          v42 = *(v2 + 8);
          v43 = *(v2 + 24);
          v44 = *(v2 + 28);
          v45 = *(v2 + 30);
          swift_beginAccess();
          v46 = v45 | (v44 << 8);
          v47 = v43 - v46;
          if (v43 - v46 >= v19)
          {
            v47 = v19;
          }

          if (!v19)
          {
            v47 = 0;
          }

          *(*(v42 + 24) + v46 + v47) = word_1F272D3D8;
          v48 = *(v2 + 20);
          v19 = v48 + 2;
          if (v48 >= 0xFFFFFFFE)
          {
            goto LABEL_54;
          }

          *(v2 + 20) = v19;
          v36 = __OFADD__(v17, 2);
          v17 += 2;
          if (v36)
          {
            goto LABEL_56;
          }
        }

        else if (v22 == 92)
        {
          v24 = v19 + 2;
          if (v19 >= 0xFFFFFFFE)
          {
            goto LABEL_52;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = *(v2 + 24);
            v11 = v24 >= v25;
            v26 = v24 - v25;
            if (v11)
            {
              v27 = v26;
            }

            else
            {
              v27 = 0;
            }

            v28 = sub_1B03904C0();
            ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v27, v28 & 1);
          }

          ByteBuffer._ensureAvailableCapacity(_:at:)(2u, v19);
          v29 = *(v2 + 8);
          v30 = *(v2 + 24);
          v31 = *(v2 + 28);
          v32 = *(v2 + 30);
          swift_beginAccess();
          v33 = v32 | (v31 << 8);
          v34 = v30 - v33;
          if (v30 - v33 >= v19)
          {
            v34 = v19;
          }

          if (!v19)
          {
            v34 = 0;
          }

          *(*(v29 + 24) + v33 + v34) = word_1F272D3B0;
          v35 = *(v2 + 20);
          v19 = v35 + 2;
          if (v35 >= 0xFFFFFFFE)
          {
            goto LABEL_55;
          }

          *(v2 + 20) = v19;
          v36 = __OFADD__(v17, 2);
          v17 += 2;
          if (v36)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v49 = sub_1B0D4F474();
          v50 = *(v2 + 20);
          v19 = v50 + v49;
          if (__CFADD__(v50, v49))
          {
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          *(v2 + 20) = v19;
          v36 = __OFADD__(v17, v49);
          v17 += v49;
          if (v36)
          {
            __break(1u);
            break;
          }
        }

        --v20;
      }

      while (v20);
    }

    v51 = sub_1B0CFC1B0(0x22uLL, 0xE100000000000000, v2 + 8, v19);
    if (v52)
    {
      v53._countAndFlagsBits = 34;
      v53._object = 0xE100000000000000;
      v51 = ByteBuffer._setStringSlowpath(_:at:)(v53, v19);
    }

    v54 = *(v2 + 20);
    v11 = __CFADD__(v54, v51);
    v55 = v54 + v51;
    if (v11)
    {
      goto LABEL_60;
    }

    *(v2 + 20) = v55;
    if (__OFADD__(v17, v51))
    {
LABEL_61:
      __break(1u);
    }
  }
}

void sub_1B0DD7858(uint64_t *a1)
{
  v2 = v1;
  if (*v1 == 1)
  {
    v76 = 91;
    v77 = 0xE100000000000000;
    v4 = a1[3];
    v5 = a1[4];
    v6 = v5 - v4;
    if (v5 == v4)
    {
      v7 = MEMORY[0x1E69E7CC0];
LABEL_15:
      v29 = v7[2];

      v75[0] = v29;
      v30 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v30);

      MEMORY[0x1B2726E80](0x5D736574796220, 0xE700000000000000);
      v32 = v76;
      v31 = v77;
      v33 = *(v2 + 20);
      v34 = sub_1B0CFC1B0(v76, v77, v2 + 8, v33);
      if (v35)
      {
        v36._countAndFlagsBits = v32;
        v36._object = v31;
        v34 = ByteBuffer._setStringSlowpath(_:at:)(v36, v33);
      }

      v37 = v34;

      v38 = *(v2 + 20);
      v25 = __CFADD__(v38, v37);
      v39 = v38 + v37;
      if (v25)
      {
        goto LABEL_73;
      }

      *(v2 + 20) = v39;
      return;
    }

LABEL_14:
    v27 = sub_1B03B7A3C(v6, 0);
    ByteBufferView._copyContents(initializing:)(v27 + 4, v6, v75);
    v28 = v75[6];

    v7 = v27;
    if (v28 != v6)
    {
      goto LABEL_75;
    }

    goto LABEL_15;
  }

  v8 = *(v1 + 20);
  v9 = sub_1B0CFC1B0(0x22uLL, 0xE100000000000000, v1 + 8, v8);
  if (v10)
  {
    v11._countAndFlagsBits = 34;
    v11._object = 0xE100000000000000;
    v9 = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v12 = v9;
  v13 = *(v1 + 20);
  v14 = v13 + v9;
  if (__CFADD__(v13, v9))
  {
    goto LABEL_72;
  }

  *(v1 + 20) = v14;
  v16 = a1[3];
  v15 = a1[4];
  v17 = *a1;
  v18 = *(a1 + 2);
  v19 = *(a1 + 3);
  v71 = *(a1 + 10);
  v20 = *(a1 + 22);
  sub_1B0D56C9C(a1, v75);
  v74 = v17;
  swift_beginAccess();
  if (v16 == v15)
  {
LABEL_8:

    v6 = 0;
    v21 = sub_1B0CFC1B0(0x22uLL, 0xE100000000000000, v2 + 8, v14);
    if (v22)
    {
      v23._countAndFlagsBits = 34;
      v23._object = 0xE100000000000000;
      v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v14);
    }

    v24 = *(v2 + 20);
    v25 = __CFADD__(v24, v21);
    v26 = v24 + v21;
    if (v25)
    {
      goto LABEL_74;
    }

    *(v2 + 20) = v26;
    if (!__OFADD__(v12, v21))
    {
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (v16 <= v18 + (v19 - v18))
  {
    v40 = v18 + (v19 - v18);
  }

  else
  {
    v40 = v16;
  }

  v72 = v20 | (v71 << 8);
  v73 = v40;
  v41 = v16;
  v70 = v18;
  while (v41 < v15)
  {
    if (v16 < v18)
    {
      goto LABEL_63;
    }

    if (v73 == v41)
    {
      goto LABEL_64;
    }

    v42 = *(*(v74 + 24) + v72 + v41);
    if (v42 == 34)
    {
      v56 = v14 + 2;
      if (v14 >= 0xFFFFFFFE)
      {
        goto LABEL_65;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = *(v2 + 24);
        v25 = v56 >= v57;
        v58 = v56 - v57;
        if (v25)
        {
          v59 = v58;
        }

        else
        {
          v59 = 0;
        }

        v60 = sub_1B03904C0();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v59, v60 & 1);
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(2u, v14);
      v61 = *(v2 + 8);
      v62 = *(v2 + 24);
      v63 = *(v2 + 28);
      v64 = *(v2 + 30);
      swift_beginAccess();
      v65 = v64 | (v63 << 8);
      v66 = v62 - v65;
      if (v62 - v65 >= v14)
      {
        v66 = v14;
      }

      if (!v14)
      {
        v66 = 0;
      }

      *(*(v61 + 24) + v65 + v66) = word_1F272F528;
      v67 = *(v2 + 20);
      v14 = v67 + 2;
      if (v67 >= 0xFFFFFFFE)
      {
        goto LABEL_69;
      }

      *(v2 + 20) = v14;
      v55 = __OFADD__(v12, 2);
      v12 += 2;
      if (v55)
      {
        goto LABEL_70;
      }

      goto LABEL_23;
    }

    if (v42 == 92)
    {
      v43 = v14 + 2;
      if (v14 >= 0xFFFFFFFE)
      {
        goto LABEL_67;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = *(v2 + 24);
        v25 = v43 >= v44;
        v45 = v43 - v44;
        if (v25)
        {
          v46 = v45;
        }

        else
        {
          v46 = 0;
        }

        v47 = sub_1B03904C0();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v46, v47 & 1);
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(2u, v14);
      v48 = *(v2 + 8);
      v49 = *(v2 + 24);
      v50 = *(v2 + 28);
      v51 = *(v2 + 30);
      swift_beginAccess();
      v52 = v51 | (v50 << 8);
      v53 = v49 - v52;
      if (v49 - v52 >= v14)
      {
        v53 = v14;
      }

      if (!v14)
      {
        v53 = 0;
      }

      *(*(v48 + 24) + v52 + v53) = word_1F272F500;
      v54 = *(v2 + 20);
      v14 = v54 + 2;
      if (v54 >= 0xFFFFFFFE)
      {
        goto LABEL_68;
      }

      *(v2 + 20) = v14;
      v55 = __OFADD__(v12, 2);
      v12 += 2;
      if (v55)
      {
        goto LABEL_71;
      }

LABEL_23:
      v18 = v70;
      goto LABEL_24;
    }

    v68 = sub_1B0D4F474();
    v69 = *(v2 + 20);
    v14 = v69 + v68;
    if (__CFADD__(v69, v68))
    {
      goto LABEL_66;
    }

    *(v2 + 20) = v14;
    v55 = __OFADD__(v12, v68);
    v12 += v68;
    if (v55)
    {
      __break(1u);
      break;
    }

LABEL_24:
    if (v15 == ++v41)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
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
}

unint64_t sub_1B0DD7CDC(unint64_t a1, unint64_t a2, uint64_t *a3)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 1;
  }

  v7 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v21 = a2 & 0xFFFFFFFFFFFFFFLL;
  v9 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v11 = result & 0xC;
    v12 = result;
    if (v11 == v8)
    {
      v16 = result;
      v12 = sub_1B0A6D6C4(result, a1, a2);
      result = v16;
    }

    v13 = v12 >> 16;
    if (v12 >> 16 >= v3)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v19 = result;
      v15 = sub_1B0E44E08();
      result = v19;
      if (v11 != v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v20[0] = a1;
        v20[1] = v21;
        v14 = v20;
      }

      else
      {
        v14 = v9;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v18 = result;
          v14 = sub_1B0E46368();
          result = v18;
        }
      }

      v15 = *(v14 + v13);
      if (v11 != v8)
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
    if (v3 <= result >> 16)
    {
      goto LABEL_34;
    }

    result = sub_1B0E44DD8();
LABEL_24:
    if ((v15 - 127) < 0xA1u)
    {
      return 0;
    }

    if (v15 == 34 || v15 == 92)
    {
      v17 = *a3 + 1;
      if (__OFADD__(*a3, 1))
      {
        goto LABEL_33;
      }

      *a3 = v17;
      if (v17 >= 6)
      {
        return 0;
      }
    }

    if (4 * v3 == result >> 14)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t MailboxInfo.init(attributes:path:extensions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 20) = BYTE4(a3);
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_1B0DD7EDC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 40;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_30;
  }

  *(v1 + 20) = v10;
  v47 = *a1;
  v11 = v47;
  v12 = v47[2];
  if (v12)
  {
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v10);
    if (v13)
    {
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v14, v10);
    }

    v15 = result;
    v16 = *(v2 + 20);
    v17 = __CFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      goto LABEL_39;
    }

    *(v2 + 20) = v18;
  }

  else
  {
    v15 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v46[2] = sub_1B0D5C820;
  v46[3] = 0;
  v46[4] = v2;
  v46[5] = &v47;
  v46[6] = 32;
  v46[7] = 0xE100000000000000;
  result = sub_1B0DED0F8(0, sub_1B0D73330, v46, v11);
  v19 = v15 + result;
  if (__OFADD__(v15, result))
  {
    goto LABEL_31;
  }

  if (!v12)
  {
    result = 0;
    v25 = v19;
    goto LABEL_16;
  }

  v20 = *(v2 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v20);
  if (v21)
  {
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v2 + 20);
  v17 = __CFADD__(v23, result);
  v24 = v23 + result;
  if (v17)
  {
    goto LABEL_40;
  }

  *(v2 + 20) = v24;
  v25 = v19 + result;
  if (__OFADD__(v19, result))
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_16:
  v26 = v8 + v25;
  if (__OFADD__(v8, v25))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v27 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x2029uLL, 0xE200000000000000, v2 + 8, v27);
  if (v28)
  {
    v29._countAndFlagsBits = 8233;
    v29._object = 0xE200000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v29, v27);
  }

  v30 = *(v2 + 20);
  v17 = __CFADD__(v30, result);
  v31 = v30 + result;
  if (v17)
  {
    goto LABEL_33;
  }

  *(v2 + 20) = v31;
  v32 = __OFADD__(v26, result);
  v33 = v26 + result;
  if (v32)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v34 = *(a1 + 8);
  v35 = sub_1B0B9C9AC(*(a1 + 20));
  v37 = sub_1B0DD892C(v35, v36);

  v32 = __OFADD__(v33, v37);
  v38 = v33 + v37;
  if (v32)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v39 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v39);
  if (v40)
  {
    v41._countAndFlagsBits = 32;
    v41._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v41, v39);
  }

  v42 = *(v2 + 20);
  v17 = __CFADD__(v42, result);
  v43 = v42 + result;
  if (v17)
  {
    goto LABEL_36;
  }

  *(v2 + 20) = v43;
  v44 = v38 + result;
  if (__OFADD__(v38, result))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_1B0DD59A4(v34);
  v32 = __OFADD__(v44, v45);
  result = v44 + v45;
  if (v32)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  return result;
}

uint64_t MailboxInfo.attributes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MailboxInfo.path.setter(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v5 = HIDWORD(a2);

  *(v2 + 8) = a1;
  *(v2 + 16) = v3;
  *(v2 + 20) = v5;
  return result;
}

uint64_t MailboxInfo.extensions.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MailboxInfo.extensions.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return result;
}

uint64_t MailboxInfo.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  MEMORY[0x1B2728D70](v5);
  if (v5)
  {
    v6 = v4 + 40;
    do
    {
      sub_1B0E44B98();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  MEMORY[0x1B2728D70](*(v2 + 4) | (*(v2 + 4) << 32));
  sub_1B0E46C68();
  v7 = v2[4];
  v8 = v2[5];

  return sub_1B0D3B918(a1, v7, v8);
}

uint64_t MailboxInfo.hashValue.getter()
{
  sub_1B0E46C28();
  MailboxInfo.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD8450()
{
  sub_1B0E46C28();
  MailboxInfo.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD8494(uint64_t a1)
{
  sub_1B0E46C28();
  MailboxInfo.hash(into:)(v2);
  return sub_1B0E46CB8();
}

BOOL sub_1B0DD84D0(_OWORD *a1, __int128 *a2)
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
  return _s12NIOIMAPCore211MailboxInfoV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8);
}

uint64_t static MailboxInfo.Attribute.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1B0E44B98();
  v6 = v5;
  if (v4 == sub_1B0E44B98() && v6 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B0E46A78();
  }

  return v8 & 1;
}

uint64_t MailboxInfo.Attribute.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E44B98();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t MailboxInfo.Attribute.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  sub_1B0E44B98();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD8778()
{
  sub_1B0E46C28();
  sub_1B0E44B98();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD87E0(uint64_t a1)
{
  sub_1B0E44B98();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0DD8834(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E44B98();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD8898(void *a1, uint64_t *a2)
{
  v2 = sub_1B0E44B98();
  v4 = v3;
  if (v2 == sub_1B0E44B98() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B0E46A78();
  }

  return v7 & 1;
}

uint64_t sub_1B0DD892C(_DWORD *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  if (a2)
  {
    v5 = a1;
    if ((a1 != 92 || a2 != 0xE100000000000000) && (sub_1B0E46A78() & 1) == 0)
    {
      goto LABEL_15;
    }

    v3 = v2 + 5;
    v6 = v2[5];
    v4 = 0;
    result = sub_1B0CFC1B0(0x225C22uLL, 0xE300000000000000, (v3 - 3), v6);
    if (v8)
    {
      v9._countAndFlagsBits = 2251810;
      v9._object = 0xE300000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
    }

    v10 = *v3 + result;
    if (!__CFADD__(*v3, result))
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  v12 = v3[5];
  v3 += 5;
  v11 = v12;
  v5 = v3 - 3;
  result = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, (v3 - 3), v12);
  if (v13)
  {
    v14._countAndFlagsBits = 4999502;
    v14._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v14, v11);
  }

  v10 = *v3 + result;
  if (!__CFADD__(*v3, result))
  {
    goto LABEL_26;
  }

  __break(1u);
LABEL_15:
  if (v5 == 34 && v4 == 0xE100000000000000 || (sub_1B0E46A78() & 1) != 0)
  {
    v16 = v3[5];
    v3 += 5;
    v15 = v16;
    result = sub_1B0CFC1B0(0x225C5C22uLL, 0xE400000000000000, (v3 - 3), v16);
    if (v17)
    {
      v18._countAndFlagsBits = 576478242;
      v18._object = 0xE400000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
    }

    v10 = *v3 + result;
    if (!__CFADD__(*v3, result))
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  MEMORY[0x1B2726E80](34, 0xE100000000000000);
  sub_1B0E44858();
  MEMORY[0x1B2726E80](34, 0xE100000000000000);
  v20 = v3[5];
  v3 += 5;
  v19 = v20;
  v21 = sub_1B0CFC1B0(0, 0xE000000000000000, (v3 - 3), v20);
  if (v22)
  {
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v19);
  }

  v24 = v21;

  result = v24;
  v10 = *v3 + v24;
  if (!__CFADD__(*v3, v24))
  {
LABEL_26:
    *v3 = v10;
    return result;
  }

  __break(1u);
  return result;
}

BOOL _s12NIOIMAPCore211MailboxInfoV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1B0D3CF18(*a1, *a2) & 1) == 0 || (*(a1 + 16) | (*(a1 + 16) << 32)) != (*(a2 + 16) | (*(a2 + 16) << 32)))
  {
    return 0;
  }

  v4 = *(a2 + 20);
  v5 = *(a1 + 20);
  v6 = sub_1B04520BC(*(a1 + 8), *(a2 + 8));
  result = 0;
  if ((v6 & 1) != 0 && v5 == v4)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    return (sub_1B0D3A070(v8, v10) & 1) != 0 && (sub_1B0D3A338(v9, v11) & 1) != 0;
  }

  return result;
}

unint64_t sub_1B0DD8C10()
{
  result = qword_1EB6E77B8;
  if (!qword_1EB6E77B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E77B8);
  }

  return result;
}

unint64_t sub_1B0DD8C68()
{
  result = qword_1EB6E77C0;
  if (!qword_1EB6E77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E77C0);
  }

  return result;
}

uint64_t *sub_1B0DD8CDC(uint64_t *a1)
{
  v2 = a1[3];
  v1 = a1[4];
  if (v1 - v2 <= 70)
  {
    v4 = *a1;
    v5 = *(a1 + 2);
    v6 = *(a1 + 3);
    v7 = *(a1 + 10);
    v8 = *(a1 + 22);
    swift_beginAccess();
    result = a1;
    v11 = v5 + (v6 - v5);
    v12 = v7 << 8;
    if (v2 <= v11)
    {
      v13 = v5 + (v6 - v5);
    }

    else
    {
      v13 = v2;
    }

    if (v2 <= v1)
    {
      v14 = v1;
    }

    else
    {
      v14 = v2;
    }

    v15 = v2;
    while (1)
    {
      v3 = v1 == v15;
      if (v1 == v15)
      {
        goto LABEL_61;
      }

      if (v14 == v15)
      {
        goto LABEL_64;
      }

      if (v2 < v5)
      {
        goto LABEL_65;
      }

      if (v13 == v15)
      {
        break;
      }

      v16 = *(v4 + 24);
      v17 = *(v16 + (v8 & 0xFFFFFFFFFF0000FFLL | (v7 << 8)) + v15);
      if ((v17 - 127) <= 0xFFFFFFA0)
      {
        goto LABEL_61;
      }

      ++v15;
      if (v17 == 92 || v17 == 34)
      {
        if (v15 <= v11)
        {
          v18 = v5 + (v6 - v5);
        }

        else
        {
          v18 = v15;
        }

        v19 = v15;
        while (1)
        {
          v3 = v1 == v19;
          if (v1 == v19)
          {
            break;
          }

          if (v15 < v2 || v19 >= v1)
          {
            goto LABEL_64;
          }

          if (v18 == v19)
          {
            goto LABEL_63;
          }

          v20 = *(v16 + v12 + v8 + v19);
          if ((v20 - 127) < 0xFFFFFFA1)
          {
            break;
          }

          ++v19;
          if (v20 == 92 || v20 == 34)
          {
            if (v19 <= v11)
            {
              v21 = v5 + (v6 - v5);
            }

            else
            {
              v21 = v19;
            }

            v22 = (v16 + v12 + v8 + v19);
            v23 = v1 - v19;
            while (1)
            {
              v3 = v23 == 0;
              if (!v23)
              {
                goto LABEL_61;
              }

              if (v21 == v19)
              {
                goto LABEL_63;
              }

              v24 = *v22;
              if ((v24 - 127) < 0xFFFFFFA1)
              {
                goto LABEL_61;
              }

              ++v19;
              --v23;
              ++v22;
              if (v24 == 92 || v24 == 34)
              {
                if (v19 <= v11)
                {
                  v25 = v5 + (v6 - v5);
                }

                else
                {
                  v25 = v19;
                }

                while (1)
                {
                  v3 = v23 == 0;
                  if (!v23)
                  {
                    goto LABEL_61;
                  }

                  if (v25 == v19)
                  {
                    goto LABEL_63;
                  }

                  v26 = *v22;
                  if ((v26 - 127) < 0xFFFFFFA1)
                  {
                    goto LABEL_61;
                  }

                  ++v19;
                  ++v22;
                  --v23;
                  if (v26 == 92 || v26 == 34)
                  {
                    if (v19 <= v11)
                    {
                      v27 = v5 + (v6 - v5);
                    }

                    else
                    {
                      v27 = v19;
                    }

                    while (1)
                    {
                      v3 = v23 == 0;
                      if (!v23)
                      {
                        goto LABEL_61;
                      }

                      if (v27 == v19)
                      {
                        goto LABEL_63;
                      }

                      v28 = *v22;
                      if ((v28 - 127) < 0xFFFFFFA1)
                      {
                        goto LABEL_61;
                      }

                      ++v19;
                      --v23;
                      ++v22;
                      if (v28 == 92 || v28 == 34)
                      {
                        if (v19 > v11)
                        {
                          v11 = v19;
                        }

                        v29 = v11 - v19;
                        do
                        {
                          v3 = v23 == 0;
                          if (!v23)
                          {
                            break;
                          }

                          if (!v29)
                          {
                            goto LABEL_63;
                          }

                          v30 = *v22;
                          if ((v30 - 127) < 0xFFFFFFA1)
                          {
                            break;
                          }

                          if (v30 == 34)
                          {
                            break;
                          }

                          ++v22;
                          --v29;
                          --v23;
                        }

                        while (v30 != 92);
                        goto LABEL_61;
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_61:
        sub_1B0D56C9C(result, &v31);

        return v3;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

unsigned __int8 *MailboxName.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1B0DDAF00(a1, a2, HIDWORD(a2), WORD2(a3), BYTE6(a3));

  return v3;
}

uint64_t MailboxPath.init(name:pathSeparator:)(uint64_t result, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v5 = result;
    if ((sub_1B0E447F8() & 0x100) != 0)
    {

      sub_1B0CF9928();
      swift_allocError();
      *v6 = 0xD000000000000029;
      v6[1] = 0x80000001B0F2F3D0;
      return swift_willThrow();
    }

    else
    {
      sub_1B0E447F8();

      return v5;
    }
  }

  return result;
}

uint64_t InvalidMailboxNameError.description.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static InvalidMailboxNameError.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t MailboxPath.hashValue.getter(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v2 | (v2 << 32));
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD92D4()
{
  v1 = *(v0 + 8);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1 | (v1 << 32));
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD9378(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v2 | (v2 << 32));
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

void MailboxPath.displayStringComponents(omittingEmptySubsequences:)(char a1, char *a2, uint64_t a3)
{
  sub_1B0B9C9AC(BYTE4(a3));
  if (!v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E37F8, &qword_1B0EA2E00);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1B0EC1E70;
    v55 = sub_1B0D8F260(a2, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
    sub_1B0DDB3C8(v55, v57, v56 & 0xFFFFFFFFFFFFFFLL);
    v59 = v58;
    v61 = v60;

    *(v54 + 32) = v59;
    *(v54 + 40) = v61;
    return;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = sub_1B0E447F8();
  if ((v6 & 0x100) == 0)
  {
    v7 = v6;

    LOBYTE(v79) = v7;
    MEMORY[0x1EEE9AC00](v8);
    v62[2] = &v79;
    v9 = sub_1B0DDAA58(0x7FFFFFFFFFFFFFFFLL, a1 & 1, sub_1B0DDB4A8, v62, a2, &v63);
    v10 = *(v9 + 16);
    if (!v10)
    {
LABEL_31:

      return;
    }

    v78 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v10, 0);
    if (*(v9 + 16))
    {
      v11 = 0;
      v12 = v78;
      v13 = (v9 + 56);
      v64 = v10 - 1;
      v65 = v9;
      while (1)
      {
        v70 = v11;
        v14 = *(v13 - 3);
        v15 = *(v13 - 2);
        v17 = *(v13 - 1);
        v16 = *v13;
        v69 = v13;
        v68 = v14;
        swift_unknownObjectRetain();
        sub_1B0D56EF8(&v79);
        v18 = *(&v80 + 1);
        v19 = v81;
        v75 = v79;
        v76 = v80;
        v77 = v81;
        v20 = (v16 >> 1) - v17;
        if (__OFSUB__(v16 >> 1, v17))
        {
          break;
        }

        v21 = v81 + v20;
        if (__CFADD__(v81, v20))
        {
          goto LABEL_34;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          if (v21 >= v80)
          {
            v22 = v21 - v80;
          }

          else
          {
            v22 = 0;
          }

          v23 = sub_1B03904C0();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v22, v23 & 1);
        }

        if (v20 > 0xFFFFFFFFLL)
        {
          goto LABEL_35;
        }

        ByteBuffer._ensureAvailableCapacity(_:at:)(v20, v19);
        ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((v15 + v17), v15 + v17 + v20, v19);
        v24 = v19 + v20;
        if (__OFADD__(v19, v20))
        {
          goto LABEL_36;
        }

        if (v24 < v18)
        {
          goto LABEL_37;
        }

        *(&v76 + 1) = v18;
        v77 = v19 + v20;
        if (v76 - (BYTE6(v76) | (WORD2(v76) << 8)) < v24)
        {
          goto LABEL_38;
        }

        HIDWORD(v75) = v19 + v20;
        v72 = v75;
        v73 = v76;
        v74 = v77;
        v25 = *(&v76 + 1);
        v26 = v77 - *(&v76 + 1);
        if (v24 - (v77 - *(&v76 + 1)) < *(&v76 + 1) || v24 < v26 || *(&v76 + 1) < DWORD2(v72) || (v26 | *(&v76 + 1)) < 0)
        {
          goto LABEL_39;
        }

        v27 = WORD2(v73);
        v28 = BYTE6(v73);
        v29 = BYTE6(v73) | (WORD2(v73) << 8);
        v30 = __CFADD__(v29, DWORD2(v76));
        v31 = v29 + DWORD2(v76);
        if (v30)
        {
          goto LABEL_40;
        }

        v66 = v12;
        v32 = v72;
        if (HIBYTE(v31))
        {
          v33 = v73;
          sub_1B0D56C9C(&v72, v71);
          v63 = v63 & 0xFF00000000000000 | v33 | (v27 << 32) | (v28 << 48);
          v34 = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v25, v26, v32);
          v36 = v35;
          v38 = v37;
          v26 = HIDWORD(v35);
          v40 = v39;
          v42 = v41;
          sub_1B04394F4(&v72);
          sub_1B04394F4(&v72);
        }

        else
        {
          v34 = v72;
          v36 = 0;
          v40 = (v31 >> 8);
          v38 = v31 + v26;
          v42 = v31;
        }

        v67 = v67 & 0xFF00000000000000 | v38 | (v40 << 32) | (v42 << 48);
        sub_1B0DF0B3C(v34, v36 | (v26 << 32), v67);
        v44 = v43;
        v46 = v45;
        swift_unknownObjectRelease();

        v47 = v46;
        v12 = v66;
        v78 = v66;
        v49 = *(v66 + 16);
        v48 = *(v66 + 24);
        v50 = v65;
        v51 = v69;
        if (v49 >= v48 >> 1)
        {
          v53 = v47;
          sub_1B041D32C((v48 > 1), v49 + 1, 1);
          v47 = v53;
          v12 = v78;
        }

        *(v12 + 16) = v49 + 1;
        v52 = v12 + 16 * v49;
        *(v52 + 32) = v47;
        *(v52 + 40) = v44;
        if (v64 == v70)
        {
          goto LABEL_31;
        }

        v13 = v51 + 4;
        v11 = v70 + 1;
        if ((v70 + 1) >= *(v50 + 16))
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
LABEL_32:
      __break(1u);
    }

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
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    __break(1u);
    __break(1u);
  }

  __break(1u);
}