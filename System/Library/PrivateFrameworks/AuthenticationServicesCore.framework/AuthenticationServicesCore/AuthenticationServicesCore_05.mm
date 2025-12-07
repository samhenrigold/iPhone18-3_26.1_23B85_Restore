uint64_t ASCTAPLargeBlobExtensionOutput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24680, &qword_1C217B970);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - v4;
  v6 = *(v1 + 16);
  *&v30 = *(v1 + 8);
  *(&v30 + 1) = v6;
  v35 = *(v1 + 24);
  v29 = *(v1 + 32);
  HIDWORD(v28) = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_1C2171474();
  if (qword_1EBF23138 != -1)
  {
    swift_once();
  }

  v8 = sub_1C2171054();
  v9 = __swift_project_value_buffer(v8, qword_1EBF25218);
  v10 = v9;
  if (*(v7 + 16) && (v11 = sub_1C2122198(v9), (v12 & 1) != 0))
  {
    sub_1C20DA01C(*(v7 + 56) + 32 * v11, &v33);

    if (swift_dynamicCast())
    {
      v13 = v36;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1C2140084();
      sub_1C2171484();
      LOBYTE(v33) = 0;
      v14 = v31;
      sub_1C2171234();
      if (v14)
      {
        return (*(v32 + 8))(v5, v3);
      }

      LOBYTE(v33) = 2;
      sub_1C2171234();
      v15 = *(&v30 + 1);
      if (*(&v30 + 1) >> 60 == 15)
      {
        return (*(v32 + 8))(v5, v3);
      }

      if (v13)
      {
        v23 = v30;
        sub_1C20D865C(v30, *(&v30 + 1));
        *&v33 = sub_1C2170054();
        *(&v33 + 1) = v25;
        v36 = 1;
        v26 = v33;
        v27 = v25;
        sub_1C20D8CEC();
        sub_1C2171294();
        (*(v32 + 8))(v5, v3);
        sub_1C20B23C8(v23, v15);
        return sub_1C20D3174(v26, v27);
      }

      else
      {
        v24 = v30;
        v33 = v30;
        v36 = 1;
        sub_1C20D865C(v30, *(&v30 + 1));
        sub_1C20D8CEC();
        sub_1C2171294();
        *&v33 = v29;
        BYTE8(v33) = BYTE4(v28);
        v36 = 3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF245A0, &qword_1C217B918);
        sub_1C213F9AC();
        sub_1C2171294();
        (*(v32 + 8))(v5, v3);
        return sub_1C20B23C8(v24, v15);
      }
    }
  }

  else
  {
  }

  v17 = sub_1C2170F94();
  swift_allocError();
  v19 = v18;
  v20 = sub_1C2171474();
  if (*(v20 + 16) && (v21 = sub_1C2122198(v10), (v22 & 1) != 0))
  {
    sub_1C20DA01C(*(v20 + 56) + 32 * v21, &v33);

    sub_1C20F5A58(&v33, v19);
  }

  else
  {

    v33 = 0u;
    v34 = 0u;
    *(v19 + 24) = MEMORY[0x1E69E6158];
    *v19 = 7104878;
    *(v19 + 8) = 0xE300000000000000;
    if (*(&v34 + 1))
    {
      sub_1C20EB498(&v33, &qword_1EBF243A0, &qword_1C217A290);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24598, &qword_1C217B910);
  sub_1C2170F64();
  (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B30], v17);
  return swift_willThrow();
}

AuthenticationServicesCore::ASCPublicKeyCredentialClientData::OperationType_optional __swiftcall ASCPublicKeyCredentialClientData.OperationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C2171134();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C213983C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xEC0000007465672ELL;
  }

  else
  {
    v2 = 0xEF6574616572632ELL;
  }

  if (*a2)
  {
    v3 = 0xEC0000007465672ELL;
  }

  else
  {
    v3 = 0xEF6574616572632ELL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1C2171324();
  }

  return v4 & 1;
}

uint64_t sub_1C21398E0()
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C2139964(uint64_t a1)
{
  sub_1C21709B4();
}

uint64_t sub_1C21399D4(uint64_t a1)
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C2139A60@<X0>(char *a3@<X8>)
{
  v4 = sub_1C2171134();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_1C2139ABC(void *a1@<X8>)
{
  v2 = 0xEF6574616572632ELL;
  if (*v1)
  {
    v2 = 0xEC0000007465672ELL;
  }

  *a1 = 0x6E68747561626577;
  a1[1] = v2;
}

uint64_t sub_1C2139BB8()
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C2139CA4(uint64_t a1)
{
  sub_1C21709B4();
}

uint64_t sub_1C2139D7C(uint64_t a1)
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

unint64_t sub_1C2139E64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C2142EF4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C2139E94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0xE600000000000000;
  v6 = 0x6E696769726FLL;
  v7 = 0xEB000000006E6967;
  v8 = 0x69724F73736F7263;
  if (v2 != 3)
  {
    v8 = 0x696769724F706F74;
    v7 = 0xE90000000000006ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x676E656C6C616863;
    v3 = 0xE900000000000065;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1C2139F3C()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x6E696769726FLL;
  v4 = 0x69724F73736F7263;
  if (v1 != 3)
  {
    v4 = 0x696769724F706F74;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E656C6C616863;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1C2139FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C2142EF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C213A024(uint64_t a1)
{
  v2 = sub_1C21400D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C213A060(uint64_t a1)
{
  v2 = sub_1C21400D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

_BYTE *ASCPublicKeyCredentialClientData.init(operationType:challenge:origin:topOrigin:isCrossOrigin:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = *result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 40) = a8;
  return result;
}

uint64_t ASCPublicKeyCredentialClientData.toWebAuthnJSON()()
{
  v1 = sub_1C2170964();
  v23 = *(v1 - 8);
  v24 = v1;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v22 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = 0;
  LODWORD(v3) = *v0;
  v5 = *(v0 + 1);
  v30 = *(v0 + 2);
  v31 = v5;
  v6 = *(v0 + 3);
  v28 = *(v0 + 4);
  v29 = v6;
  if (v3)
  {
    v7 = 0xEC0000007465672ELL;
  }

  else
  {
    v7 = 0xEF6574616572632ELL;
  }

  if (v0[40])
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  v9 = 0xE500000000000000;
  if (v0[40])
  {
    v9 = 0xE400000000000000;
  }

  v26 = v9;
  v27 = v8;
  v10 = *(v0 + 7);
  v25 = *(v0 + 6);
  v34 = 123;
  v35 = 0xE100000000000000;
  do
  {
    v11 = byte_1F419D990[v4 + 32];
    if (v11 <= 1)
    {
      v32 = 34;
      v33 = 0xE100000000000000;
      if (v11)
      {
        v16 = sub_1C2170074();
        MEMORY[0x1C6913CB0](v16);

        MEMORY[0x1C6913CB0](34, 0xE100000000000000);
        v12 = v32;
        v13 = v33;
        v14 = 0x676E656C6C616863;
        v15 = 0xE900000000000065;
      }

      else
      {
        MEMORY[0x1C6913CB0](0x6E68747561626577, v7);

        MEMORY[0x1C6913CB0](34, 0xE100000000000000);
        v12 = v32;
        v13 = v33;
        v15 = 0xE400000000000000;
        v14 = 1701869940;
      }

      goto LABEL_20;
    }

    if (v11 == 2)
    {
      v32 = 34;
      v33 = 0xE100000000000000;
      MEMORY[0x1C6913CB0](v29, v28);
      MEMORY[0x1C6913CB0](34, 0xE100000000000000);
      v12 = v32;
      v13 = v33;
      v15 = 0xE600000000000000;
      v14 = 0x6E696769726FLL;
LABEL_20:
      v32 = 34;
      goto LABEL_21;
    }

    if (v11 != 3)
    {
      if (!v10)
      {
        goto LABEL_22;
      }

      v32 = 34;
      v33 = 0xE100000000000000;
      MEMORY[0x1C6913CB0](v25, v10);
      MEMORY[0x1C6913CB0](34, 0xE100000000000000);
      v12 = v32;
      v13 = v33;
      v15 = 0xE90000000000006ELL;
      v14 = 0x696769724F706F74;
      goto LABEL_20;
    }

    v32 = 34;
    v13 = v26;
    v12 = v27;
    v14 = 0x69724F73736F7263;
    v15 = 0xEB000000006E6967;
LABEL_21:
    v33 = 0xE100000000000000;
    MEMORY[0x1C6913CB0](v14, v15);

    MEMORY[0x1C6913CB0](14882, 0xE200000000000000);
    MEMORY[0x1C6913CB0](v12, v13);

    MEMORY[0x1C6913CB0](44, 0xE100000000000000);
    MEMORY[0x1C6913CB0](v32, v33);

LABEL_22:
    ++v4;
  }

  while (v4 != 5);
  sub_1C213A448(v2);

  MEMORY[0x1C6913CB0](125, 0xE100000000000000);
  v17 = v22;
  sub_1C2170954();
  v18 = sub_1C2170924();
  v20 = v19;
  result = (*(v23 + 8))(v17, v24);
  if (v20 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    return v18;
  }

  return result;
}

uint64_t sub_1C213A448(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE68FA8](a1);
  }

LABEL_5:
  a1 = sub_1C21709D4();

  return MEMORY[0x1EEE68FA8](a1);
}

uint64_t ASCPublicKeyCredentialClientData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24688, &qword_1C217B978);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C21400D8();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v25) = 0;
  sub_1C214012C();
  sub_1C21711D4();
  v9 = v29;
  LOBYTE(v25) = 1;
  sub_1C20D8E24();
  sub_1C21711D4();
  v23 = v29;
  v24 = v30;
  LOBYTE(v29) = 2;
  v21 = sub_1C21711B4();
  v22 = v10;
  LOBYTE(v29) = 3;
  v37 = sub_1C2171174();
  v38 = 4;
  v11 = sub_1C2171164();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  LOBYTE(v25) = v9;
  v15 = v23;
  v14 = v24;
  *(&v25 + 1) = v23;
  *&v26 = v24;
  v16 = v22;
  *(&v26 + 1) = v21;
  *&v27 = v22;
  BYTE8(v27) = v37;
  *&v28 = v11;
  *(&v28 + 1) = v13;
  v17 = v26;
  *a2 = v25;
  a2[1] = v17;
  v18 = v28;
  a2[2] = v27;
  a2[3] = v18;
  sub_1C2140180(&v25, &v29);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  LOBYTE(v29) = v9;
  v30 = v15;
  v31 = v14;
  v32 = v21;
  v33 = v16;
  v34 = v37;
  v35 = v11;
  v36 = v13;
  return sub_1C21401B8(&v29);
}

uint64_t sub_1C213A818(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1C213D51C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1C20D3174(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1C2121D58(v13, a3, a4, &v12);
  v10 = v4;
  sub_1C20D3174(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1C213A9A8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + v12);

    v17 = sub_1C2121F88(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || v16 != *(*(a2 + 56) + v17))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1C213AADC(uint64_t a1, uint64_t a2)
{
  v78[3] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v71 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v69 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v9 = __clz(__rbit64(v8));
        v73 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v10 = v4;
      do
      {
        v4 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v4 >= v69)
        {
          return 1;
        }

        v11 = *(v5 + 8 * v4);
        ++v10;
      }

      while (!v11);
      v9 = __clz(__rbit64(v11));
      v73 = (v11 - 1) & v11;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(v3 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v3 + 56) + 32 * v12);
      v18 = *v16;
      v17 = v16[1];
      v19 = v16[2];
      v20 = v16[3];
      sub_1C20D865C(*v13, v15);
      v76 = v18;
      sub_1C20D865C(v18, v17);
      v21 = v19;
      sub_1C20B22B8(v19, v20);
      result = v15 >> 60 == 15;
      if (v15 >> 60 == 15)
      {
        return result;
      }

      v23 = sub_1C21220D8(v14, v15);
      v25 = v24;
      sub_1C20D3174(v14, v15);
      if ((v25 & 1) == 0)
      {
        sub_1C20D3174(v76, v17);
        v65 = v21;
        goto LABEL_115;
      }

      v26 = (*(v2 + 56) + 32 * v23);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[3];
      v74 = v26[2];
      v30 = v28 >> 62;
      v31 = v17 >> 62;
      v32 = v21;
      v72 = v27;
      if (v28 >> 62 == 3)
      {
        if (v27)
        {
          v33 = 0;
        }

        else
        {
          v33 = v28 == 0xC000000000000000;
        }

        v34 = 0;
        v35 = v33 && v17 >> 62 == 3;
        if (v35 && !v76 && v17 == 0xC000000000000000)
        {
          v17 = 0xC000000000000000;
          sub_1C20D865C(0, 0xC000000000000000);
          v76 = 0;
          goto LABEL_49;
        }

LABEL_36:
        if (v31 <= 1)
        {
LABEL_37:
          if (!v31)
          {
            v39 = BYTE6(v17);
            goto LABEL_43;
          }

          LODWORD(v39) = HIDWORD(v76) - v76;
          if (!__OFSUB__(HIDWORD(v76), v76))
          {
            v39 = v39;
            goto LABEL_43;
          }

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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
        }
      }

      else if (v30 > 1)
      {
        if (v30 == 2)
        {
          v41 = *(v27 + 16);
          v40 = *(v27 + 24);
          v38 = __OFSUB__(v40, v41);
          v34 = v40 - v41;
          if (!v38)
          {
            goto LABEL_36;
          }

          goto LABEL_126;
        }

        v34 = 0;
        if (v31 <= 1)
        {
          goto LABEL_37;
        }
      }

      else if (v30)
      {
        LODWORD(v34) = HIDWORD(v27) - v27;
        if (__OFSUB__(HIDWORD(v27), v27))
        {
          goto LABEL_125;
        }

        v34 = v34;
        if (v31 <= 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v34 = BYTE6(v28);
        if (v31 <= 1)
        {
          goto LABEL_37;
        }
      }

      if (v31 != 2)
      {
        if (!v34)
        {
LABEL_48:
          sub_1C20D865C(v27, v28);
LABEL_49:
          v42 = v74;
          sub_1C20B22B8(v74, v29);
          goto LABEL_71;
        }

LABEL_111:
        sub_1C20D3174(v76, v17);
        goto LABEL_114;
      }

      v37 = *(v76 + 16);
      v36 = *(v76 + 24);
      v38 = __OFSUB__(v36, v37);
      v39 = v36 - v37;
      if (v38)
      {
        goto LABEL_123;
      }

LABEL_43:
      if (v34 != v39)
      {
        goto LABEL_111;
      }

      if (v34 < 1)
      {
        goto LABEL_48;
      }

      v68 = v2;
      if (v30 > 1)
      {
        if (v30 == 2)
        {
          v43 = *(v27 + 16);
          v67 = *(v27 + 24);
          sub_1C20D865C(v27, v28);
          sub_1C20B22B8(v74, v29);
          v44 = sub_1C216FDD4();
          if (v44)
          {
            v45 = sub_1C216FE04();
            if (__OFSUB__(v43, v45))
            {
              goto LABEL_133;
            }

            v44 += v43 - v45;
          }

          if (__OFSUB__(v67, v43))
          {
            goto LABEL_130;
          }

          sub_1C216FDF4();
          v46 = v44;
          v47 = v76;
          v48 = v17;
          v49 = v71;
          goto LABEL_66;
        }

        memset(v78, 0, 14);
        sub_1C20D865C(v27, v28);
        v42 = v74;
        sub_1C20B22B8(v74, v29);
LABEL_69:
        v49 = v71;
        sub_1C2121D58(v78, v76, v17, &v77);
        if (v77)
        {
          goto LABEL_70;
        }

LABEL_117:
        sub_1C20D3174(v76, v17);
        sub_1C20B23C8(v32, v20);
        sub_1C20D3174(v72, v28);
        goto LABEL_118;
      }

      if (!v30)
      {
        v78[0] = v27;
        LOWORD(v78[1]) = v28;
        BYTE2(v78[1]) = BYTE2(v28);
        BYTE3(v78[1]) = BYTE3(v28);
        BYTE4(v78[1]) = BYTE4(v28);
        BYTE5(v78[1]) = BYTE5(v28);
        sub_1C20D865C(v27, v28);
        v42 = v74;
        sub_1C20B22B8(v74, v29);
        goto LABEL_69;
      }

      v50 = v27;
      if (v27 >> 32 < v27)
      {
        goto LABEL_129;
      }

      sub_1C20D865C(v27, v28);
      sub_1C20B22B8(v74, v29);
      v51 = sub_1C216FDD4();
      if (v51)
      {
        v52 = sub_1C216FE04();
        if (__OFSUB__(v50, v52))
        {
          goto LABEL_134;
        }

        v51 += v50 - v52;
      }

      v49 = v71;
      sub_1C216FDF4();
      v46 = v51;
      v47 = v76;
      v48 = v17;
LABEL_66:
      sub_1C2121D58(v46, v47, v48, v78);
      v32 = v21;
      v42 = v74;
      if ((v78[0] & 1) == 0)
      {
        goto LABEL_117;
      }

LABEL_70:
      v71 = v49;
      v2 = v68;
LABEL_71:
      if (v29 >> 60 == 15)
      {
        break;
      }

      if (v20 >> 60 == 15)
      {
        sub_1C20B22B8(v42, v29);
        sub_1C20B22B8(v32, v20);
        sub_1C20D3174(v76, v17);
        sub_1C20B23C8(v32, v20);
        sub_1C20D3174(v72, v28);
        sub_1C20B23C8(v42, v29);
        goto LABEL_113;
      }

      v53 = v29 >> 62;
      v54 = v20 >> 62;
      if (v29 >> 62 == 3)
      {
        if (v42)
        {
          v55 = 0;
        }

        else
        {
          v55 = v29 == 0xC000000000000000;
        }

        v56 = 0;
        v57 = v55 && v20 >> 62 == 3;
        if (v57 && !v32 && v20 == 0xC000000000000000)
        {
          sub_1C20B22B8(0, 0xC000000000000000);
          sub_1C20B22B8(0, 0xC000000000000000);
          sub_1C20B23C8(0, 0xC000000000000000);
          sub_1C20D3174(v76, v17);
          sub_1C20B23C8(0, 0xC000000000000000);
          sub_1C20D3174(v72, v28);
          sub_1C20B23C8(0, 0xC000000000000000);
          v58 = 0;
          v59 = 0xC000000000000000;
          goto LABEL_108;
        }

LABEL_93:
        if (v54 <= 1)
        {
          goto LABEL_94;
        }

        goto LABEL_99;
      }

      if (v53 == 2)
      {
        v61 = *(v42 + 16);
        v60 = *(v42 + 24);
        v38 = __OFSUB__(v60, v61);
        v56 = v60 - v61;
        if (v38)
        {
          goto LABEL_132;
        }

        goto LABEL_93;
      }

      if (v53 == 1)
      {
        LODWORD(v56) = HIDWORD(v42) - v42;
        if (__OFSUB__(HIDWORD(v42), v42))
        {
          goto LABEL_131;
        }

        v56 = v56;
        if (v54 <= 1)
        {
LABEL_94:
          if (v54)
          {
            LODWORD(v62) = HIDWORD(v32) - v32;
            if (__OFSUB__(HIDWORD(v32), v32))
            {
              goto LABEL_128;
            }

            v62 = v62;
          }

          else
          {
            v62 = BYTE6(v20);
          }

          goto LABEL_101;
        }
      }

      else
      {
        v56 = BYTE6(v29);
        if (v54 <= 1)
        {
          goto LABEL_94;
        }
      }

LABEL_99:
      if (v54 != 2)
      {
        if (v56)
        {
LABEL_116:
          sub_1C20B22B8(v42, v29);
          sub_1C20B22B8(v32, v20);
          sub_1C20B23C8(v32, v20);
          sub_1C20D3174(v76, v17);
          sub_1C20B23C8(v32, v20);
          sub_1C20D3174(v72, v28);
          sub_1C20B23C8(v42, v29);
LABEL_118:
          v65 = v42;
          v66 = v29;
          goto LABEL_119;
        }

LABEL_106:
        sub_1C20B22B8(v42, v29);
        sub_1C20B22B8(v32, v20);
        sub_1C20B23C8(v32, v20);
        sub_1C20D3174(v76, v17);
        sub_1C20B23C8(v32, v20);
        sub_1C20D3174(v72, v28);
        sub_1C20B23C8(v42, v29);
        goto LABEL_107;
      }

      v64 = *(v32 + 16);
      v63 = *(v32 + 24);
      v38 = __OFSUB__(v63, v64);
      v62 = v63 - v64;
      if (v38)
      {
        goto LABEL_127;
      }

LABEL_101:
      if (v56 != v62)
      {
        goto LABEL_116;
      }

      if (v56 < 1)
      {
        goto LABEL_106;
      }

      sub_1C20B22B8(v42, v29);
      sub_1C20B22B8(v32, v20);
      sub_1C20B22B8(v32, v20);
      v75 = sub_1C213A818(v42, v29, v32, v20);
      sub_1C20D3174(v76, v17);
      sub_1C20B23C8(v32, v20);
      sub_1C20D3174(v72, v28);
      sub_1C20B23C8(v42, v29);
      sub_1C20B23C8(v32, v20);
      sub_1C20B23C8(v42, v29);
      v3 = a1;
      v8 = v73;
      result = 0;
      if ((v75 & 1) == 0)
      {
        return result;
      }
    }

    sub_1C20B22B8(v42, v29);
    sub_1C20B22B8(v32, v20);
    sub_1C20D3174(v76, v17);
    sub_1C20B23C8(v32, v20);
    sub_1C20D3174(v72, v28);
    sub_1C20B23C8(v42, v29);
    if (v20 >> 60 != 15)
    {
      break;
    }

LABEL_107:
    v58 = v42;
    v59 = v29;
LABEL_108:
    sub_1C20B23C8(v58, v59);
    v3 = a1;
    v8 = v73;
  }

LABEL_113:
  sub_1C20B23C8(v42, v29);
LABEL_114:
  v65 = v32;
LABEL_115:
  v66 = v20;
LABEL_119:
  sub_1C20B23C8(v65, v66);
  return 0;
}

uint64_t sub_1C213B3DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24890, &qword_1C217E170);
  result = sub_1C21710F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_1C2170CE4();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1C213B644(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24830, &unk_1C217E120);
  v34 = v4;
  result = sub_1C21710F4();
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

      sub_1C2171434();
      sub_1C21709B4();
      result = sub_1C2171454();
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

uint64_t sub_1C213B8EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232D8, &unk_1C2176500);
  result = sub_1C21710F4();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(*(v5 + 48) + 16 * v21);
      v23 = (*(v5 + 56) + 32 * v21);
      v32 = v23[1];
      v33 = *v23;
      v34 = v22;
      if ((v4 & 1) == 0)
      {
        sub_1C20D865C(v22, *(&v22 + 1));
        sub_1C20D865C(v33, *(&v33 + 1));
        sub_1C20B22B8(v32, *(&v32 + 1));
      }

      sub_1C2171434();
      sub_1C2170184();
      result = sub_1C2171454();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v16 = v34;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v16 = v34;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v33;
      v17[1] = v32;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1C213BBB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24888, &qword_1C217E168);
  v35 = v4;
  result = sub_1C21710F4();
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

      sub_1C2171434();
      sub_1C21709B4();
      result = sub_1C2171454();
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

uint64_t sub_1C213BE5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24880, &qword_1C217E160);
  v38 = v4;
  result = sub_1C21710F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 40 * v21);
      v25 = v24[1];
      v41 = *v24;
      v42 = *v22;
      v26 = v24[3];
      v40 = v24[2];
      v27 = v24[4];
      if ((v38 & 1) == 0)
      {
      }

      sub_1C2171434();
      sub_1C21709B4();
      result = sub_1C2171454();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v42;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 40 * v15);
      *v17 = v41;
      v17[1] = v25;
      v17[2] = v40;
      v17[3] = v26;
      v17[4] = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C213C154(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24878, &qword_1C217E158);
  v34 = v4;
  result = sub_1C21710F4();
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

      sub_1C2171434();
      sub_1C21709B4();
      result = sub_1C2171454();
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

uint64_t sub_1C213C3FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24890, &qword_1C217E170);
    v2 = sub_1C2171104();
    v19 = v2;
    sub_1C2171074();
    v3 = sub_1C21710A4();
    if (v3)
    {
      v4 = v3;
      sub_1C20DB8B8(0, &qword_1EBF241E8, 0x1E698F700);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1C213B3DC(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1C2170CE4();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1C21710A4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

id sub_1C213C628(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1C21221FC(a2);
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
      sub_1C213B3DC(v13, a3 & 1);
      v8 = sub_1C21221FC(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1C20DB8B8(0, &qword_1EBF241E8, 0x1E698F700);
        sub_1C2171374();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v16 = v8;
      sub_1C213CC28();
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

uint64_t sub_1C213C7A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C2121F88(a2, a3);
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
      sub_1C213B644(v16, a4 & 1);
      v11 = sub_1C2121F88(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1C2171374();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1C213CD88();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_1C213C91C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C2121F88(a2, a3);
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
      sub_1C213BE5C(v16, a4 & 1);
      v11 = sub_1C2121F88(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1C2171374();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1C213D204();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_1C2142FB8(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = a1[1];
  *(v25 + 32) = *(a1 + 4);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

uint64_t sub_1C213CAAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C2121F88(a2, a3);
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
      sub_1C213C154(v16, a4 & 1);
      v11 = sub_1C2121F88(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1C2171374();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1C213D3AC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

id sub_1C213CC28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24890, &qword_1C217E170);
  v2 = *v0;
  v3 = sub_1C21710E4();
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

void *sub_1C213CD88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24830, &unk_1C217E120);
  v2 = *v0;
  v3 = sub_1C21710E4();
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

void *sub_1C213CEF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232D8, &unk_1C2176500);
  v2 = *v0;
  v3 = sub_1C21710E4();
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
        v18 = 16 * v17;
        v17 *= 32;
        v19 = (*(v2 + 56) + v17);
        v20 = *(*(v2 + 48) + v18);
        v23 = *v19;
        v21 = *v19;
        v24 = v19[1];
        *(*(v4 + 48) + v18) = v20;
        v22 = (*(v4 + 56) + v17);
        *v22 = v21;
        v22[1] = v24;
        sub_1C20D865C(v20, *(&v20 + 1));
        sub_1C20D865C(v23, *(&v23 + 1));
        result = sub_1C20B22B8(v24, *(&v24 + 1));
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

id sub_1C213D098()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24888, &qword_1C217E168);
  v2 = *v0;
  v3 = sub_1C21710E4();
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

        result = v20;
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

void *sub_1C213D204()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24880, &qword_1C217E160);
  v2 = *v0;
  v3 = sub_1C21710E4();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 40;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = v22[4];
        v28 = (*(v4 + 48) + v18);
        *v28 = v21;
        v28[1] = v20;
        v29 = (*(v4 + 56) + v17);
        *v29 = v23;
        v29[1] = v24;
        v29[2] = v25;
        v29[3] = v26;
        v29[4] = v27;
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

void *sub_1C213D3AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24878, &qword_1C217E158);
  v2 = *v0;
  v3 = sub_1C21710E4();
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

uint64_t sub_1C213D51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1C216FDD4();
  v11 = result;
  if (result)
  {
    result = sub_1C216FE04();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C216FDF4();
  sub_1C2121D58(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL _s26AuthenticationServicesCore29ASCTAPLargeBlobExtensionInputV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = *(a1 + 48);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v12 = *(a2 + 24);
  v11 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  if (v3)
  {
    if (!v9 || (*a1 != *a2 || v3 != v9) && (sub_1C2171324() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v4 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }

LABEL_13:
    if (v5 >> 60 == 15)
    {
      if (v11 >> 60 == 15)
      {
        sub_1C20B22B8(v6, v5);
        sub_1C20B22B8(v12, v11);
        sub_1C20B23C8(v6, v5);
LABEL_21:
        if ((v8 & 1) == 0)
        {
          if (v7 == v13)
          {
            v17 = v14;
          }

          else
          {
            v17 = 1;
          }

          return (v17 & 1) == 0;
        }

        return (v14 & 1) != 0;
      }
    }

    else if (v11 >> 60 != 15)
    {
      sub_1C20B22B8(v6, v5);
      sub_1C20B22B8(v12, v11);
      v16 = sub_1C21068CC(v6, v5, v12, v11);
      sub_1C20B23C8(v12, v11);
      sub_1C20B23C8(v6, v5);
      if (!v16)
      {
        return 0;
      }

      goto LABEL_21;
    }

    sub_1C20B22B8(v6, v5);
    sub_1C20B22B8(v12, v11);
    sub_1C20B23C8(v6, v5);
    sub_1C20B23C8(v12, v11);
    return 0;
  }

  result = 0;
  if (v10 != 2 && ((v10 ^ v4) & 1) == 0)
  {
    goto LABEL_13;
  }

  return result;
}

BOOL sub_1C213D784(_BOOL8 a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  if (!sub_1C21068CC(a1, a2, a5, a6))
  {
    return 0;
  }

  if (a4 >> 60 == 15)
  {
    if (a8 >> 60 == 15)
    {
      sub_1C20B22B8(a3, a4);
      sub_1C20B22B8(a7, a8);
      sub_1C20B23C8(a3, a4);
      return 1;
    }

    goto LABEL_6;
  }

  if (a8 >> 60 == 15)
  {
LABEL_6:
    sub_1C20B22B8(a3, a4);
    sub_1C20B22B8(a7, a8);
    sub_1C20B23C8(a3, a4);
    sub_1C20B23C8(a7, a8);
    return 0;
  }

  sub_1C20B22B8(a3, a4);
  sub_1C20B22B8(a7, a8);
  v13 = sub_1C21068CC(a3, a4, a7, a8);
  sub_1C20B23C8(a7, a8);
  sub_1C20B23C8(a3, a4);
  return v13;
}

BOOL _s26AuthenticationServicesCore23ASCTAPPRFExtensionInputV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  if (v2 >> 60 == 15)
  {
    if (v6 >> 60 == 15)
    {
      v14 = a1[4];
      sub_1C20B22CC(v3, v2, v5, v4);
      sub_1C20B22CC(v7, v6, v9, v8);
      sub_1C20B23DC(v3, v2, v5, v4);
      goto LABEL_8;
    }

LABEL_5:
    sub_1C20B22CC(*a1, v2, v5, v4);
    sub_1C20B22CC(v7, v6, v9, v8);
    sub_1C20B23DC(v3, v2, v5, v4);
    sub_1C20B23DC(v7, v6, v9, v8);
    return 0;
  }

  if (v6 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v14 = a1[4];
  sub_1C20B22CC(v3, v2, v5, v4);
  sub_1C20B22CC(v7, v6, v9, v8);
  v12 = sub_1C213D784(v3, v2, v5, v4, v7, v6, v9, v8);
  sub_1C20B23DC(v7, v6, v9, v8);
  sub_1C20B23DC(v3, v2, v5, v4);
  if (!v12)
  {
    return 0;
  }

LABEL_8:
  if (v14)
  {
    if (v10)
    {

      v13 = sub_1C213AADC(v14, v10);

      if (v13)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v10;
}

BOOL _s26AuthenticationServicesCore20ASCTAPExtensionInputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v51 = *(a1 + 56);
  v52 = *(a1 + 64);
  v54 = *(a1 + 72);
  v56 = *(a1 + 80);
  v50 = *(a1 + 88);
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v46 = *(a2 + 56);
  v47 = *(a2 + 64);
  v48 = *(a2 + 72);
  v49 = *(a2 + 80);
  v45 = *(a2 + 88);
  if (v3 == 1)
  {
    v58 = *(a2 + 16);
    v60 = *(a2 + 24);
    v16 = *(a1 + 24);
    v17 = *a1;
    v18 = *(a2 + 8);
    sub_1C20D87AC(v2, 1, v5, v4, v7);
    if (v18 == 1)
    {
      sub_1C20D87AC(v10, 1, v58, v60, v13);
      sub_1C20D8840(v17, 1, v5, v16, v7);
      goto LABEL_9;
    }

    v55 = v13;
    v57 = v10;
    v21 = v10;
    v20 = v58;
    v53 = v18;
    sub_1C20D87AC(v21, v18, v58, v60, v13);
    goto LABEL_7;
  }

  v68 = *a1;
  v69 = v3;
  v70 = v5;
  v71 = v4;
  v72 = v7;
  v73 = v6;
  v74 = v8;
  if (v9 == 1)
  {
    v59 = v11;
    v60 = v12;
    v16 = v4;
    v17 = v2;
    v53 = 1;
    sub_1C20D87AC(v2, v3, v5, v4, v7);
    v55 = v13;
    v57 = v10;
    v19 = v10;
    v20 = v59;
    sub_1C20D87AC(v19, 1, v59, v60, v13);
    sub_1C20D87AC(v17, v3, v5, v16, v7);

    sub_1C20B23C8(v16, v7);
LABEL_7:
    sub_1C20D8840(v17, v3, v5, v16, v7);
    sub_1C20D8840(v57, v53, v20, v60, v55);
    return 0;
  }

  v61 = v10;
  v62 = v9;
  LOBYTE(v63) = v11;
  v64 = v12;
  v65 = v13;
  v66 = v14;
  v67 = v15 & 1;
  v22 = v5;
  v43 = v4;
  v44 = v5;
  v23 = v11;
  v24 = v2;
  v25 = v9;
  sub_1C20D87AC(v2, v3, v22, v4, v7);
  sub_1C20D87AC(v10, v25, v23, v12, v13);
  sub_1C20D87AC(v24, v3, v44, v43, v7);
  v26 = _s26AuthenticationServicesCore29ASCTAPLargeBlobExtensionInputV2eeoiySbAC_ACtFZ_0(&v68, &v61);
  v27 = v64;
  v28 = v65;

  sub_1C20B23C8(v27, v28);
  v29 = v71;
  v30 = v72;

  sub_1C20B23C8(v29, v30);
  sub_1C20D8840(v24, v3, v44, v43, v7);
  if (!v26)
  {
    return 0;
  }

LABEL_9:
  if (v50 != 1)
  {
    v32 = v51;
    v31 = v52;
    v68 = v51;
    v69 = v52;
    v34 = v54;
    v33 = v56;
    v70 = v54;
    v71 = v56;
    v72 = v50;
    v36 = v45;
    v35 = v46;
    v37 = v48;
    v40 = v49;
    v38 = v47;
    if (v45 != 1)
    {
      v61 = v46;
      v62 = v47;
      v63 = v48;
      v64 = v49;
      v65 = v45;
      sub_1C20D87FC(v51, v52, v54, v56, v50);
      sub_1C20D87FC(v46, v47, v48, v49, v45);
      sub_1C20D87FC(v51, v52, v54, v56, v50);
      v42 = _s26AuthenticationServicesCore23ASCTAPPRFExtensionInputV2eeoiySbAC_ACtFZ_0(&v68, &v61);
      sub_1C20B23DC(v61, v62, v63, v64);

      sub_1C20B23DC(v68, v69, v70, v71);

      sub_1C20D8890(v51, v52, v54, v56, v50);
      return v42;
    }

    sub_1C20D87FC(v51, v52, v54, v56, v50);
    sub_1C20D87FC(v46, v47, v48, v49, 1);
    sub_1C20D87FC(v51, v52, v54, v56, v50);
    sub_1C20B23DC(v51, v52, v54, v56);

    goto LABEL_15;
  }

  v32 = v51;
  v31 = v52;
  v34 = v54;
  v33 = v56;
  sub_1C20D87FC(v51, v52, v54, v56, 1);
  v36 = v45;
  v35 = v46;
  v38 = v47;
  v37 = v48;
  if (v45 != 1)
  {
    v40 = v49;
    sub_1C20D87FC(v46, v47, v48, v49, v45);
LABEL_15:
    sub_1C20D8890(v32, v31, v34, v33, v50);
    sub_1C20D8890(v35, v38, v37, v40, v36);
    return 0;
  }

  v39 = 1;
  sub_1C20D87FC(v46, v47, v48, v49, 1);
  sub_1C20D8890(v51, v52, v54, v56, 1);
  return v39;
}

BOOL _s26AuthenticationServicesCore14ASCTAPAuthDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v29 = *(a1 + 48);
  v6 = *(a1 + 56);
  v30 = *(a1 + 64);
  v31 = *(a1 + 32);
  v27 = *(a1 + 72);
  v28 = *(a1 + 80);
  v7 = *(a2 + 16);
  v8 = *(a2 + 20);
  v35 = *(a2 + 24);
  v32 = *(a2 + 32);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v33 = *(a2 + 64);
  v34 = *(a2 + 40);
  v25 = *(a2 + 72);
  v26 = *(a2 + 80);
  v11 = sub_1C21068CC(*a1, *(a1 + 8), *a2, *(a2 + 8));
  result = 0;
  if (v11 && v2 == v7 && v3 == v8)
  {
    sub_1C20F4D00(v4, v31, v5, v29, v6, v30, sub_1C20D865C);
    v24 = v10;
    sub_1C20F4D00(v35, v32, v34, v9, v10, v33, sub_1C20D865C);
    if (v31 >> 60 == 15)
    {
      v13 = v29;
      v14 = v6;
      if (v32 >> 60 == 15)
      {
        sub_1C20F4D00(v4, v31, v5, v29, v6, v30, sub_1C20D3174);
LABEL_7:
        if (v28 >> 60 == 15)
        {
          v15 = v26;
          if (v26 >> 60 == 15)
          {
            sub_1C20B22B8(v27, v28);
            sub_1C20B22B8(v25, v26);
            sub_1C20B23C8(v27, v28);
            return 1;
          }
        }

        else
        {
          v15 = v26;
          if (v26 >> 60 != 15)
          {
            sub_1C20B22B8(v27, v28);
            sub_1C20B22B8(v25, v26);
            v22 = sub_1C21068CC(v27, v28, v25, v26);
            sub_1C20B23C8(v25, v26);
            sub_1C20B23C8(v27, v28);
            return v22;
          }
        }

        sub_1C20B22B8(v27, v28);
        sub_1C20B22B8(v25, v15);
        sub_1C20B23C8(v27, v28);
        sub_1C20B23C8(v25, v15);
        return 0;
      }
    }

    else
    {
      sub_1C20F4D00(v4, v31, v5, v29, v6, v30, sub_1C20D865C);
      if (v32 >> 60 != 15)
      {
        if (sub_1C21068CC(v4, v31, v35, v32) && sub_1C21068CC(v5, v29, v34, v9))
        {
          v23 = sub_1C21068CC(v6, v30, v10, v33);
          sub_1C20F4D00(v35, v32, v34, v9, v10, v33, sub_1C20D3174);
          sub_1C20D3174(v4, v31);
          sub_1C20D3174(v5, v29);
          sub_1C20D3174(v6, v30);
          sub_1C20F4D00(v4, v31, v5, v29, v6, v30, sub_1C20D3174);
          if (!v23)
          {
            return 0;
          }

          goto LABEL_7;
        }

        sub_1C20F4D00(v35, v32, v34, v9, v10, v33, sub_1C20D3174);
        sub_1C20D3174(v4, v31);
        sub_1C20D3174(v5, v29);
        sub_1C20D3174(v6, v30);
        v16 = v4;
        v17 = v31;
        v18 = v5;
        v20 = v29;
        v21 = v6;
        v19 = v30;
LABEL_18:
        sub_1C20F4D00(v16, v17, v18, v20, v21, v19, sub_1C20D3174);
        return 0;
      }

      sub_1C20D3174(v4, v31);
      v13 = v29;
      sub_1C20D3174(v5, v29);
      v14 = v6;
      sub_1C20D3174(v6, v30);
    }

    sub_1C20F4D00(v4, v31, v5, v13, v14, v30, sub_1C20D3174);
    v16 = v35;
    v17 = v32;
    v19 = v33;
    v18 = v34;
    v20 = v9;
    v21 = v24;
    goto LABEL_18;
  }

  return result;
}

BOOL _s26AuthenticationServicesCore30ASCTAPLargeBlobExtensionOutputV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = a1[24];
  v6 = *(a1 + 4);
  v7 = a1[40];
  v8 = *a2;
  v10 = *(a2 + 1);
  v9 = *(a2 + 2);
  v11 = a2[24];
  v12 = *(a2 + 4);
  v13 = a2[40];
  if (v2 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v8 == 2 || ((v8 ^ v2) & 1) != 0)
    {
      return result;
    }
  }

  if (v3 >> 60 != 15)
  {
    if (v9 >> 60 != 15)
    {
      sub_1C20B22B8(v4, v3);
      sub_1C20B22B8(v10, v9);
      v16 = sub_1C21068CC(v4, v3, v10, v9);
      sub_1C20B23C8(v10, v9);
      sub_1C20B23C8(v4, v3);
      if (!v16)
      {
        return 0;
      }

      goto LABEL_14;
    }

LABEL_10:
    sub_1C20B22B8(v4, v3);
    sub_1C20B22B8(v10, v9);
    sub_1C20B23C8(v4, v3);
    sub_1C20B23C8(v10, v9);
    return 0;
  }

  if (v9 >> 60 != 15)
  {
    goto LABEL_10;
  }

  sub_1C20B22B8(v4, v3);
  sub_1C20B22B8(v10, v9);
  sub_1C20B23C8(v4, v3);
LABEL_14:
  if (v5 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }

    goto LABEL_19;
  }

  result = 0;
  if (v11 != 2 && ((v11 ^ v5) & 1) == 0)
  {
LABEL_19:
    if ((v7 & 1) == 0)
    {
      if (v6 == v12)
      {
        v15 = v13;
      }

      else
      {
        v15 = 1;
      }

      return (v15 & 1) == 0;
    }

    return (v13 & 1) != 0;
  }

  return result;
}

BOOL _s26AuthenticationServicesCore24ASCTAPPRFExtensionOutputV7ResultsV2eeoiySbAE_AEtFZ_0(_BOOL8 *a1, uint64_t *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if (!sub_1C21068CC(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  if (v2 >> 60 == 15)
  {
    if (v4 >> 60 == 15)
    {
      sub_1C20B22B8(v3, v2);
      sub_1C20B22B8(v5, v4);
      sub_1C20B23C8(v3, v2);
      return 1;
    }

    goto LABEL_6;
  }

  if (v4 >> 60 == 15)
  {
LABEL_6:
    sub_1C20B22B8(v3, v2);
    sub_1C20B22B8(v5, v4);
    sub_1C20B23C8(v3, v2);
    sub_1C20B23C8(v5, v4);
    return 0;
  }

  sub_1C20B22B8(v3, v2);
  sub_1C20B22B8(v5, v4);
  v7 = sub_1C21068CC(v3, v2, v5, v4);
  sub_1C20B23C8(v5, v4);
  sub_1C20B23C8(v3, v2);
  return v7;
}

BOOL _s26AuthenticationServicesCore24ASCTAPPRFExtensionOutputV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = *a1;
  v4 = a1[1];
  v3 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = *a2;
  v9 = a2[1];
  v8 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  if (v2 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }

LABEL_6:
    if (v3 >> 60 == 15)
    {
      sub_1C20B22CC(v4, v3, v6, v5);
      sub_1C20B22CC(v9, v8, v11, v10);
      if (v8 >> 60 == 15)
      {
        sub_1C20B23DC(v4, v3, v6, v5);
        return 1;
      }
    }

    else
    {
      v22 = v4;
      v23 = v3;
      v24 = v6;
      v25 = v5;
      if (v8 >> 60 != 15)
      {
        v18 = v9;
        v19 = v8;
        v20 = v11;
        v21 = v10;
        sub_1C20B22CC(v4, v3, v6, v5);
        sub_1C20B22CC(v9, v8, v11, v10);
        sub_1C20B22CC(v4, v3, v6, v5);
        v13 = _s26AuthenticationServicesCore24ASCTAPPRFExtensionOutputV7ResultsV2eeoiySbAE_AEtFZ_0(&v22, &v18);
        v14 = v20;
        v15 = v21;
        sub_1C20D3174(v18, v19);
        sub_1C20B23C8(v14, v15);
        v16 = v24;
        v17 = v25;
        sub_1C20D3174(v22, v23);
        sub_1C20B23C8(v16, v17);
        sub_1C20B23DC(v4, v3, v6, v5);
        return v13;
      }

      sub_1C20B22CC(v4, v3, v6, v5);
      sub_1C20B22CC(v9, v8, v11, v10);
      sub_1C20B22CC(v4, v3, v6, v5);
      sub_1C20D3174(v4, v3);
      sub_1C20B23C8(v6, v5);
    }

    sub_1C20B23DC(v4, v3, v6, v5);
    sub_1C20B23DC(v9, v8, v11, v10);
    return 0;
  }

  result = 0;
  if (v7 != 2 && ((v7 ^ v2) & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

BOOL _s26AuthenticationServicesCore21ASCTAPExtensionOutputV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 40);
  v42 = a1[6];
  v43 = a1[7];
  v44 = a1[8];
  v45 = a1[9];
  v46 = a1[10];
  v8 = *(a1 + 88);
  v10 = *a2;
  v9 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v13 = a2[4];
  v14 = *(a2 + 40);
  v37 = a2[6];
  v38 = a2[7];
  v39 = a2[8];
  v40 = a2[9];
  v41 = a2[10];
  v15 = *(a2 + 88);
  if (*a1 == 3)
  {
    v35 = *(a2 + 88);
    v36 = *(a1 + 88);
    v16 = a1[1];
    v17 = a1[2];
    v18 = a2[1];
    sub_1C213FE60(v2, v16, v4);
    sub_1C213FE60(v10, v18, v12);
    if (v10 == 3)
    {
      sub_1C213FF48(v2, v16, v17);
      goto LABEL_8;
    }

LABEL_6:
    sub_1C213FF48(v2, v16, v17);
    sub_1C213FF48(v10, v18, v12);
    return 0;
  }

  v53 = *a1;
  v54 = v3;
  v55 = v4;
  v56 = v5;
  v57 = v6;
  v58 = v7;
  if (v10 == 3)
  {
    v19 = v3;
    v20 = v4;
    v21 = v3;
    v18 = v9;
    sub_1C213FE60(v2, v19, v4);
    sub_1C213FE60(v10, v18, v12);
    sub_1C213FE60(v2, v21, v20);
    v16 = v21;
    v17 = v20;
    sub_1C20B23C8(v21, v20);
    goto LABEL_6;
  }

  v35 = v15;
  v36 = v8;
  LOBYTE(v47) = v10;
  v48 = v9;
  v49 = v12;
  LOBYTE(v50) = v11;
  v51 = v13;
  v52 = v14 & 1;
  v22 = v4;
  v23 = v9;
  sub_1C213FE60(v2, v3, v4);
  sub_1C213FE60(v10, v23, v12);
  sub_1C213FE60(v2, v3, v22);
  v24 = _s26AuthenticationServicesCore30ASCTAPLargeBlobExtensionOutputV2eeoiySbAC_ACtFZ_0(&v53, &v47);
  sub_1C20B23C8(v48, v49);
  sub_1C20B23C8(v54, v55);
  sub_1C213FF48(v2, v3, v22);
  if (!v24)
  {
    return 0;
  }

LABEL_8:
  if (v42 == 3)
  {
    v25 = v37;
    v27 = v43;
    v26 = v44;
    v28 = v45;
    sub_1C213FE7C(v42, v43, v44, v45, v46);
    v29 = v38;
    v30 = v39;
    v32 = v40;
    v31 = v41;
    sub_1C213FE7C(v37, v38, v39, v40, v41);
    if (v37 == 3)
    {
      sub_1C213FFB8(v42, v43, v44, v45, v46);
      goto LABEL_16;
    }

LABEL_13:
    sub_1C213FFB8(v42, v27, v26, v28, v46);
    sub_1C213FFB8(v25, v29, v30, v32, v31);
    return 0;
  }

  v27 = v43;
  v26 = v44;
  v53 = v42;
  v54 = v43;
  v28 = v45;
  v55 = v44;
  v56 = v45;
  v25 = v37;
  v29 = v38;
  v57 = v46;
  v32 = v40;
  v31 = v41;
  v30 = v39;
  if (v37 == 3)
  {
    sub_1C213FE7C(v42, v43, v44, v45, v46);
    sub_1C213FE7C(v37, v38, v39, v40, v41);
    sub_1C213FE7C(v42, v43, v44, v45, v46);
    sub_1C20B23DC(v43, v44, v45, v46);
    goto LABEL_13;
  }

  LOBYTE(v47) = v37;
  v48 = v38;
  v49 = v39;
  v50 = v40;
  v51 = v41;
  sub_1C213FE7C(v42, v43, v44, v45, v46);
  sub_1C213FE7C(v37, v38, v39, v40, v41);
  sub_1C213FE7C(v42, v43, v44, v45, v46);
  v34 = _s26AuthenticationServicesCore24ASCTAPPRFExtensionOutputV2eeoiySbAC_ACtFZ_0(&v53, &v47);
  sub_1C20B23DC(v48, v49, v50, v51);
  sub_1C20B23DC(v54, v55, v56, v57);
  sub_1C213FFB8(v42, v43, v44, v45, v46);
  if (!v34)
  {
    return 0;
  }

LABEL_16:
  if (v36 != 2)
  {
    return v35 != 2 && ((v35 ^ v36) & 1) == 0;
  }

  return v35 == 2;
}

uint64_t sub_1C213EDDC(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1C2171324()) && sub_1C21068CC(a1[2], a1[3], a2[2], a2[3]))
  {
    v5 = a1[4];
    v6 = a2[4];
    if (v5)
    {
      if (v6 && (sub_1C21546B8(v5, v6) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1C213EE5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24520, &unk_1C217B8B8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF248A0, &qword_1C217E178);
    v7 = sub_1C2171114();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1C20EB3E8(v9, v5, &qword_1EBF24520, &unk_1C217B8B8);
      result = sub_1C2122198(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1C2171054();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_1C20F5A58(&v5[v8], (v7[7] + 32 * v13));
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

unint64_t sub_1C213F048(_BYTE *a1, _BYTE *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_1C20FAF88(v5);
  __dst = result;
  v11 = v7;
  v13 = v8;
  v12 = v9;
  if (a1)
  {
    if (a2 != a1)
    {
      memcpy(&__dst, a1, v4);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1C213F108(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1C216FE14();
  swift_allocObject();
  result = sub_1C216FDC4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1C21700E4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1C213F184(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1C216FE14();
  swift_allocObject();
  result = sub_1C216FDC4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1C213F208(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24890, &qword_1C217E170);
    v3 = sub_1C2171114();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1C21221FC(v6);
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

unint64_t sub_1C213F300(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24850, &qword_1C217E140);
    v3 = sub_1C2171114();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C2121F88(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C213F3FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24858, &qword_1C217E148);
    v3 = sub_1C2171114();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C2121F88(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1C213F510(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24830, &unk_1C217E120);
    v3 = sub_1C2171114();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C2121F88(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C213F614(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23900, &unk_1C2177230);
    v3 = sub_1C2171114();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C20EB3E8(v4, &v13, &unk_1EBF23908, &qword_1C217B8D0);
      v5 = v13;
      v6 = v14;
      result = sub_1C2121F88(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C20F5A58(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1C213F760()
{
  result = qword_1EBF24530;
  if (!qword_1EBF24530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24530);
  }

  return result;
}

unint64_t sub_1C213F7B4()
{
  result = qword_1EBF24540;
  if (!qword_1EBF24540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24540);
  }

  return result;
}

unint64_t sub_1C213F808()
{
  result = qword_1EBF24548;
  if (!qword_1EBF24548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24548);
  }

  return result;
}

unint64_t sub_1C213F85C()
{
  result = qword_1EBF24550;
  if (!qword_1EBF24550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24550);
  }

  return result;
}

unint64_t sub_1C213F8B0()
{
  result = qword_1EBF24560;
  if (!qword_1EBF24560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24560);
  }

  return result;
}

unint64_t sub_1C213F904()
{
  result = qword_1EBF24568;
  if (!qword_1EBF24568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24568);
  }

  return result;
}

unint64_t sub_1C213F958()
{
  result = qword_1EBF24578;
  if (!qword_1EBF24578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24578);
  }

  return result;
}

unint64_t sub_1C213F9AC()
{
  result = qword_1EBF245A8;
  if (!qword_1EBF245A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF245A0, &qword_1C217B918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF245A8);
  }

  return result;
}

unint64_t sub_1C213FA28()
{
  result = qword_1EBF245C0;
  if (!qword_1EBF245C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF245C0);
  }

  return result;
}

unint64_t sub_1C213FA7C()
{
  result = qword_1EBF245C8;
  if (!qword_1EBF245C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF245C8);
  }

  return result;
}

uint64_t sub_1C213FAD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C213FB18()
{
  result = qword_1EBF245D8;
  if (!qword_1EBF245D8)
  {
    sub_1C20DB8B8(255, &qword_1EBF241E8, 0x1E698F700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF245D8);
  }

  return result;
}

unint64_t sub_1C213FB80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232D8, &unk_1C2176500);
    v3 = sub_1C2171114();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = i[1];
      v15 = *i;
      sub_1C20D865C(v5, v6);
      sub_1C20D865C(v15, *(&v15 + 1));
      sub_1C20B22B8(v14, *(&v14 + 1));
      result = sub_1C21220D8(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      *v10 = v15;
      v10[1] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C213FCBC()
{
  result = qword_1EBF245E8;
  if (!qword_1EBF245E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF245E8);
  }

  return result;
}

unint64_t sub_1C213FD10()
{
  result = qword_1EBF24600;
  if (!qword_1EBF24600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24600);
  }

  return result;
}

unint64_t sub_1C213FD64()
{
  result = qword_1EBF24618;
  if (!qword_1EBF24618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24618);
  }

  return result;
}

unint64_t sub_1C213FDB8()
{
  result = qword_1EBF24620;
  if (!qword_1EBF24620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24620);
  }

  return result;
}

unint64_t sub_1C213FE0C()
{
  result = qword_1EBF24630;
  if (!qword_1EBF24630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24630);
  }

  return result;
}

uint64_t sub_1C213FE60(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 3)
  {
    return sub_1C20B22B8(a2, a3);
  }

  return result;
}

void sub_1C213FE7C(char a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1 != 3)
  {
    sub_1C20B22CC(a2, a3, a4, a5);
  }
}

unint64_t sub_1C213FEA0()
{
  result = qword_1EBF24640;
  if (!qword_1EBF24640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24640);
  }

  return result;
}

unint64_t sub_1C213FEF4()
{
  result = qword_1EBF24648;
  if (!qword_1EBF24648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24648);
  }

  return result;
}

uint64_t sub_1C213FF48(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 3)
  {
    return sub_1C20B23C8(a2, a3);
  }

  return result;
}

unint64_t sub_1C213FF64()
{
  result = qword_1EBF24650;
  if (!qword_1EBF24650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24650);
  }

  return result;
}

uint64_t sub_1C213FFB8(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result != 3)
  {
    return sub_1C20B23DC(a2, a3, a4, a5);
  }

  return result;
}

unint64_t sub_1C213FFDC()
{
  result = qword_1EBF24660;
  if (!qword_1EBF24660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24660);
  }

  return result;
}

unint64_t sub_1C2140030()
{
  result = qword_1EBF24668;
  if (!qword_1EBF24668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24668);
  }

  return result;
}

unint64_t sub_1C2140084()
{
  result = qword_1EBF24678;
  if (!qword_1EBF24678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24678);
  }

  return result;
}

unint64_t sub_1C21400D8()
{
  result = qword_1EBF24690;
  if (!qword_1EBF24690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24690);
  }

  return result;
}

unint64_t sub_1C214012C()
{
  result = qword_1EBF24698;
  if (!qword_1EBF24698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24698);
  }

  return result;
}

unint64_t sub_1C21401E8()
{
  result = qword_1EBF246A0;
  if (!qword_1EBF246A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246A0);
  }

  return result;
}

unint64_t sub_1C2140240()
{
  result = qword_1EBF246A8;
  if (!qword_1EBF246A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246A8);
  }

  return result;
}

unint64_t sub_1C2140298()
{
  result = qword_1EBF246B0;
  if (!qword_1EBF246B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246B0);
  }

  return result;
}

unint64_t sub_1C21402F0()
{
  result = qword_1EBF246B8;
  if (!qword_1EBF246B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246B8);
  }

  return result;
}

unint64_t sub_1C2140348()
{
  result = qword_1EBF246C0;
  if (!qword_1EBF246C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246C0);
  }

  return result;
}

unint64_t sub_1C21403A0()
{
  result = qword_1EBF246C8;
  if (!qword_1EBF246C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246C8);
  }

  return result;
}

unint64_t sub_1C21403F8()
{
  result = qword_1EBF246D0;
  if (!qword_1EBF246D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246D0);
  }

  return result;
}

unint64_t sub_1C2140450()
{
  result = qword_1EBF246D8;
  if (!qword_1EBF246D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246D8);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1C21404F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 88))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C214054C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASCTAPAuthData.Flags(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for ASCTAPAuthData.Flags(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t sub_1C21406D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C2140728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1C2140794(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 96))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1C21407FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C2140890(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1C21408EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
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

uint64_t sub_1C2140974(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1C21409D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1C2140A3C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[40])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C2140A9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26AuthenticationServicesCore30ASCTAPLargeBlobExtensionOutputVSgTm(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    v2 = ((v1 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v2 = -2;
  }

  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1C2140B5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 89))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 88);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C2140BBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C2140C3C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[41])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C2140C9C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C2140D10(uint64_t a1, int a2)
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

uint64_t sub_1C2140D58(uint64_t result, int a2, int a3)
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

uint64_t sub_1C2140E18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C2140E6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1C2140EDC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C2140F6C(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C214104C(uint64_t a1, int a2)
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

uint64_t sub_1C2141094(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C2141100(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_1C2141148(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C2141198(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C21411E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C2141250()
{
  result = qword_1EBF246E0;
  if (!qword_1EBF246E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246E0);
  }

  return result;
}

unint64_t sub_1C21412A8()
{
  result = qword_1EBF246E8;
  if (!qword_1EBF246E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246E8);
  }

  return result;
}

unint64_t sub_1C2141300()
{
  result = qword_1EBF246F0;
  if (!qword_1EBF246F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246F0);
  }

  return result;
}

unint64_t sub_1C2141358()
{
  result = qword_1EBF246F8;
  if (!qword_1EBF246F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF246F8);
  }

  return result;
}

unint64_t sub_1C21413B0()
{
  result = qword_1EBF24700;
  if (!qword_1EBF24700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24700);
  }

  return result;
}

unint64_t sub_1C2141408()
{
  result = qword_1EBF24708;
  if (!qword_1EBF24708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24708);
  }

  return result;
}

unint64_t sub_1C2141460()
{
  result = qword_1EBF24710;
  if (!qword_1EBF24710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24710);
  }

  return result;
}

unint64_t sub_1C21414B8()
{
  result = qword_1EBF24718;
  if (!qword_1EBF24718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24718);
  }

  return result;
}

unint64_t sub_1C2141554()
{
  result = qword_1EBF24730;
  if (!qword_1EBF24730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24730);
  }

  return result;
}

unint64_t sub_1C21415AC()
{
  result = qword_1EBF24738;
  if (!qword_1EBF24738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24738);
  }

  return result;
}

unint64_t sub_1C2141604()
{
  result = qword_1EBF24740;
  if (!qword_1EBF24740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24740);
  }

  return result;
}

unint64_t sub_1C214165C()
{
  result = qword_1EBF24748;
  if (!qword_1EBF24748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24748);
  }

  return result;
}

unint64_t sub_1C21416B4()
{
  result = qword_1EBF24750;
  if (!qword_1EBF24750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24750);
  }

  return result;
}

unint64_t sub_1C214170C()
{
  result = qword_1EBF24758;
  if (!qword_1EBF24758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24758);
  }

  return result;
}

unint64_t sub_1C2141764()
{
  result = qword_1EBF24760;
  if (!qword_1EBF24760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24760);
  }

  return result;
}

unint64_t sub_1C21417BC()
{
  result = qword_1EBF24768;
  if (!qword_1EBF24768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24768);
  }

  return result;
}

unint64_t sub_1C2141814()
{
  result = qword_1EBF24770;
  if (!qword_1EBF24770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24770);
  }

  return result;
}

unint64_t sub_1C214186C()
{
  result = qword_1EBF24778;
  if (!qword_1EBF24778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24778);
  }

  return result;
}

unint64_t sub_1C21418C4()
{
  result = qword_1EBF24780;
  if (!qword_1EBF24780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24780);
  }

  return result;
}

unint64_t sub_1C214191C()
{
  result = qword_1EBF24788;
  if (!qword_1EBF24788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24788);
  }

  return result;
}

unint64_t sub_1C2141974()
{
  result = qword_1EBF24790;
  if (!qword_1EBF24790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24790);
  }

  return result;
}

unint64_t sub_1C21419CC()
{
  result = qword_1EBF24798;
  if (!qword_1EBF24798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24798);
  }

  return result;
}

unint64_t sub_1C2141A24()
{
  result = qword_1EBF247A0;
  if (!qword_1EBF247A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF247A0);
  }

  return result;
}

unint64_t sub_1C2141A7C()
{
  result = qword_1EBF247A8;
  if (!qword_1EBF247A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF247A8);
  }

  return result;
}

unint64_t sub_1C2141AD4()
{
  result = qword_1EBF247B0;
  if (!qword_1EBF247B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF247B0);
  }

  return result;
}

unint64_t sub_1C2141B28()
{
  result = qword_1EBF247C0;
  if (!qword_1EBF247C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF247C0);
  }

  return result;
}

unint64_t sub_1C2141B7C()
{
  result = qword_1EBF247D0;
  if (!qword_1EBF247D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF247D0);
  }

  return result;
}

unint64_t sub_1C2141BD0()
{
  result = qword_1EBF247E0;
  if (!qword_1EBF247E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF247E0);
  }

  return result;
}

unint64_t sub_1C2141C24()
{
  result = qword_1EBF247F0;
  if (!qword_1EBF247F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF247F0);
  }

  return result;
}

unint64_t sub_1C2141C78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24888, &qword_1C217E168);
    v3 = sub_1C2171114();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1C2121F88(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1C2141D7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24880, &qword_1C217E160);
    v3 = sub_1C2171114();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v8 = *(i - 4);
      v7 = *(i - 3);
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11 = *i;

      result = sub_1C2121F88(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = (v3[7] + 40 * result);
      *v15 = v8;
      v15[1] = v7;
      v15[2] = v10;
      v15[3] = v9;
      v15[4] = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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

unint64_t sub_1C2141EC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24878, &qword_1C217E158);
    v3 = sub_1C2171114();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C2121F88(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C2141FC4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF247F8, &qword_1C217E0F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2141B28();
  sub_1C2171464();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_1C21711B4();
    v10 = 1;
    sub_1C21711B4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

uint64_t sub_1C21421A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C2171324() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1C2171324() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C2171324();

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

uint64_t sub_1C21422BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24800, &qword_1C217E0F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2141B7C();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v23) = 0;
  v9 = sub_1C21711B4();
  v11 = v10;
  v22 = v9;
  v25 = 1;
  sub_1C20D8E24();
  sub_1C21711D4();
  v20 = v23;
  v21 = v24;
  LOBYTE(v23) = 2;
  v12 = sub_1C21711B4();
  v14 = v13;
  v15 = v12;
  (*(v6 + 8))(v8, v5);

  v17 = v20;
  v16 = v21;
  sub_1C20D865C(v20, v21);

  __swift_destroy_boxed_opaque_existential_0Tm(a1);

  sub_1C20D3174(v17, v16);

  *a2 = v22;
  a2[1] = v11;
  a2[2] = v17;
  a2[3] = v16;
  a2[4] = v15;
  a2[5] = v14;
  return result;
}

uint64_t sub_1C214255C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24808, &qword_1C217E100);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2141BD0();
  sub_1C2171464();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_1C21711B4();
    v9[14] = 1;
    sub_1C21711E4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_1C2142734(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C2171134();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C2142780@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24810, &qword_1C217E108);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2141C24();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v20) = 0;
  v9 = sub_1C21711B4();
  v11 = v10;
  v19 = v9;
  v22 = 1;
  sub_1C20D8E24();
  sub_1C21711D4();
  v17 = v20;
  v18 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF236E0, &qword_1C2176D70);
  v22 = 2;
  sub_1C20FD358(&qword_1EBF23E10, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1C21711A4();
  (*(v6 + 8))(v8, v5);
  v12 = v20;

  v14 = v17;
  v13 = v18;
  sub_1C20D865C(v17, v18);

  __swift_destroy_boxed_opaque_existential_0Tm(a1);

  sub_1C20D3174(v14, v13);

  *a2 = v19;
  a2[1] = v11;
  a2[2] = v14;
  a2[3] = v13;
  a2[4] = v12;
  return result;
}

unint64_t sub_1C2142A6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C2171134();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C2142AB8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24818, &qword_1C217E110);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_1C2142CE4();
  sub_1C2171464();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v14 = 0;
    sub_1C20D8E24();
    sub_1C21711D4();
    v7 = v12;
    v9 = v13;
    v14 = 1;
    sub_1C21711A4();
    (*(v4 + 8))(v6, v3);
    v10 = v12;
    v11 = v13;
    sub_1C20D865C(v7, v9);
    sub_1C20B22B8(v10, v11);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    sub_1C20D3174(v7, v9);
    sub_1C20B23C8(v10, v11);
  }

  return v7;
}

unint64_t sub_1C2142CE4()
{
  result = qword_1EBF24820;
  if (!qword_1EBF24820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24820);
  }

  return result;
}

unint64_t sub_1C2142D38(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C2171134();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C2142D84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574726F70707573 && a2 == 0xE900000000000064;
  if (v4 || (sub_1C2171324() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1651469410 && a2 == 0xE400000000000000 || (sub_1C2171324() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E657474697277 && a2 == 0xE700000000000000 || (sub_1C2171324() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xEC000000657A6953)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C2171324();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1C2142EF4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C2171134();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C2142F40(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C2142F58(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C2142F58(uint64_t result, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_1C20B23C8(result, a2);
  }

  return result;
}

unint64_t sub_1C2142F64()
{
  result = qword_1EBF24870;
  if (!qword_1EBF24870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24870);
  }

  return result;
}

unint64_t sub_1C2143014()
{
  result = qword_1EBF24898;
  if (!qword_1EBF24898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24898);
  }

  return result;
}

unint64_t sub_1C21430CC()
{
  result = qword_1EBF248A8;
  if (!qword_1EBF248A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF248A8);
  }

  return result;
}

unint64_t sub_1C2143124()
{
  result = qword_1EBF248B0;
  if (!qword_1EBF248B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF248B0);
  }

  return result;
}

unint64_t sub_1C214317C()
{
  result = qword_1EBF248B8;
  if (!qword_1EBF248B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF248B8);
  }

  return result;
}

unint64_t sub_1C21431D4()
{
  result = qword_1EBF248C0;
  if (!qword_1EBF248C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF248C0);
  }

  return result;
}

unint64_t sub_1C214322C()
{
  result = qword_1EBF248C8;
  if (!qword_1EBF248C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF248C8);
  }

  return result;
}

unint64_t sub_1C2143284()
{
  result = qword_1EBF248D0;
  if (!qword_1EBF248D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF248D0);
  }

  return result;
}

unint64_t sub_1C21432DC()
{
  result = qword_1EBF248D8;
  if (!qword_1EBF248D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF248D8);
  }

  return result;
}

unint64_t sub_1C2143334()
{
  result = qword_1EBF248E0;
  if (!qword_1EBF248E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF248E0);
  }

  return result;
}

unint64_t sub_1C214338C()
{
  result = qword_1EBF248E8;
  if (!qword_1EBF248E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF248E8);
  }

  return result;
}

unint64_t sub_1C21433E4()
{
  result = qword_1EBF248F0;
  if (!qword_1EBF248F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF248F0);
  }

  return result;
}

unint64_t sub_1C214343C()
{
  result = qword_1EBF248F8;
  if (!qword_1EBF248F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF248F8);
  }

  return result;
}

unint64_t sub_1C2143494()
{
  result = qword_1EBF24900;
  if (!qword_1EBF24900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24900);
  }

  return result;
}

unint64_t sub_1C21434EC()
{
  result = qword_1EBF24908;
  if (!qword_1EBF24908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24908);
  }

  return result;
}

unint64_t sub_1C2143544()
{
  result = qword_1EBF24910;
  if (!qword_1EBF24910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24910);
  }

  return result;
}

unint64_t sub_1C214359C()
{
  result = qword_1EBF24918;
  if (!qword_1EBF24918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24918);
  }

  return result;
}

unint64_t sub_1C21435F4()
{
  result = qword_1EBF24920;
  if (!qword_1EBF24920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24920);
  }

  return result;
}

void sub_1C2143680(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 attestationObject];
  v4 = sub_1C2170174();
  v6 = v5;

  ASCTAPAuthenticatorMakeCredentialResponse.init(attestationObject:)(v4, v6, &v78);
  v93 = v78;
  v94 = v79;
  v95 = v80;
  v96[1] = v79;
  v96[2] = v80;
  v7 = v82;
  v8 = v83;
  v9 = v85;
  v10 = v86;
  v11 = v87;
  v12 = v88;
  v13 = v89;
  v14 = v90;
  v15 = v91;
  v96[0] = v78;
  v43 = v81;
  v44 = v84;
  v97 = v81;
  v98 = v82;
  v99 = v83;
  v100 = v84;
  v101 = v85;
  v102 = v86;
  v103 = v87;
  v104 = v88;
  v105 = v89;
  v106 = v90;
  v107 = v91;
  v45 = v92;
  v108 = v92;
  if (get_enum_tag_for_layout_string_26AuthenticationServicesCore35ASCTAPPublicKeyCredentialDescriptorVSg_0(v96) == 1)
  {

    v16 = v94;
    *a2 = v93;
    *(a2 + 16) = v16;
    *(a2 + 32) = v95;
    *(a2 + 48) = v43;
    *(a2 + 56) = v7;
    *(a2 + 64) = v8;
    *(a2 + 72) = v44;
    *(a2 + 80) = v9;
    *(a2 + 88) = v10;
    *(a2 + 96) = v11;
    *(a2 + 104) = v12;
    *(a2 + 112) = v13;
    *(a2 + 120) = v14;
    *(a2 + 128) = v15;
    *(a2 + 136) = v45;
  }

  else
  {
    v30 = v7;
    v31 = a2;
    v34 = v10;
    v35 = v11;
    v36 = v12;
    v37 = v13;
    v38 = v14;
    v39 = v15;
    v17 = [a1 extensions];
    if (v17)
    {
      sub_1C21092BC(v76);

      v18 = v76[0];
      v32 = v76[1];
      v33 = v76[2];
      v19 = v76[3];
      v42 = v76[4];
      v17 = v76[5];
      v20 = v76[6];
      v21 = v76[7];
      v22 = v76[8];
      v23 = v76[9];
      v24 = v76[10];
      v25 = v77;
    }

    else
    {

      v24 = 0;
      v23 = 0;
      v22 = 0;
      v21 = 0;
      v20 = 0;
      v42 = 0;
      v19 = 0;
      v32 = 0;
      v33 = 0;
      v18 = 0;
      v25 = 3;
    }

    v40 = v25;
    v47[0] = v43;
    v47[1] = v30;
    v47[2] = v8;
    v47[3] = v44;
    v47[4] = v9;
    v47[5] = v34;
    v47[6] = v35;
    v47[7] = v36;
    v47[8] = v37;
    v47[9] = v38;
    v47[10] = v39;
    v48 = v45;
    sub_1C20EB498(v47, &qword_1EBF23560, &unk_1C2176A00);
    v49[0] = v78;
    v49[1] = v79;
    v49[2] = v80;
    *&v50 = v18;
    *(&v50 + 1) = v32;
    *&v51 = v33;
    *(&v51 + 1) = v19;
    *&v52 = v42;
    *(&v52 + 1) = v17;
    *&v53 = v20;
    *(&v53 + 1) = v21;
    *v54 = v22;
    *&v54[8] = v23;
    *&v54[16] = v24;
    v54[24] = v40;
    *(v62 + 9) = *&v54[9];
    v61 = v53;
    v62[0] = *v54;
    v59 = v51;
    v60 = v52;
    v57 = v80;
    v58 = v50;
    v55 = v78;
    v56 = v79;
    nullsub_1();
    v26 = v62[0];
    v31[6] = v61;
    v31[7] = v26;
    *(v31 + 121) = *(v62 + 9);
    v27 = v58;
    v31[2] = v57;
    v31[3] = v27;
    v28 = v60;
    v31[4] = v59;
    v31[5] = v28;
    v29 = v56;
    *v31 = v55;
    v31[1] = v29;
    v63[0] = v78;
    v63[1] = v79;
    v63[2] = v80;
    v64 = v18;
    v65 = v32;
    v66 = v33;
    v67 = v19;
    v68 = v42;
    v69 = v17;
    v70 = v20;
    v71 = v21;
    v72 = v22;
    v73 = v23;
    v74 = v24;
    v75 = v40;
    sub_1C20F4BF4(v49, v46);
    sub_1C20EB344(v63);
  }
}

void *sub_1C21439DC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1C2171094();

    if (v4)
    {
      sub_1C21475B0();
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1C21221FC(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void ASCTAPAuthenticatorMakeCredentialResponse.attestationObjectEncoded()()
{
  v0 = sub_1C21708F4();
  v1 = objc_opt_self();
  v2 = [v1 cborWithUTF8String_];

  v3 = sub_1C2170154();
  v4 = [v1 cborWithData_];

  v5 = sub_1C2170154();
  v6 = [v1 decodeFromData_];

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24928, &qword_1C217E810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C21768D0;
    v8 = sub_1C21708F4();
    v9 = [v1 cborWithUTF8String_];

    *(inited + 32) = v9;
    *(inited + 40) = v2;
    v10 = v2;
    v11 = sub_1C21708F4();
    v12 = [v1 cborWithUTF8String_];

    *(inited + 48) = v12;
    *(inited + 56) = v4;
    v13 = v4;
    v14 = sub_1C21708F4();
    v15 = [v1 cborWithUTF8String_];

    *(inited + 64) = v15;
    *(inited + 72) = v6;
    v16 = v6;
    sub_1C213F208(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24930, &unk_1C217E818);
    swift_arrayDestroy();
    sub_1C21475B0();
    sub_1C213FB18();
    v17 = sub_1C2170854();

    v18 = [v1 cborWithDictionary_];

    v19 = v18;
    sub_1C21700A4();
    if (v20 >> 60 != 15)
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C2143D54(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != *a2 || !sub_1C21068CC(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)))
  {
    return 0;
  }

  type metadata accessor for ASCTAPResponse(0, a3, a4, v6);
  return sub_1C21708E4() & 1;
}

uint64_t ASCTAPAuthenticatorMakeCredentialResponse.attestationFormat.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ASCTAPAuthenticatorMakeCredentialResponse.attestationFormat.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ASCTAPAuthenticatorMakeCredentialResponse.authData.getter()
{
  v1 = *(v0 + 16);
  sub_1C20D865C(v1, *(v0 + 24));
  return v1;
}

uint64_t ASCTAPAuthenticatorMakeCredentialResponse.authData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1C20D3174(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ASCTAPAuthenticatorMakeCredentialResponse.attestationStatement.getter()
{
  v1 = *(v0 + 32);
  sub_1C20D865C(v1, *(v0 + 40));
  return v1;
}

uint64_t ASCTAPAuthenticatorMakeCredentialResponse.attestationStatement.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1C20D3174(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

__n128 ASCTAPAuthenticatorMakeCredentialResponse.init(attestationFormat:authData:attestationStatement:unsignedExtensionOutputs:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0u;
  *(a8 + 112) = 0u;
  *(a8 + 128) = 0;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 136) = 3;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  v10 = *(a8 + 96);
  v15[2] = *(a8 + 80);
  v15[3] = v10;
  v16[0] = *(a8 + 112);
  *(v16 + 9) = *(a8 + 121);
  v11 = *(a8 + 64);
  v15[0] = *(a8 + 48);
  v15[1] = v11;
  sub_1C20EB498(v15, &qword_1EBF23560, &unk_1C2176A00);
  v12 = *(a7 + 48);
  *(a8 + 80) = *(a7 + 32);
  *(a8 + 96) = v12;
  *(a8 + 112) = *(a7 + 64);
  *(a8 + 121) = *(a7 + 73);
  result = *a7;
  v14 = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = v14;
  return result;
}

uint64_t ASCTAPAuthenticatorMakeCredentialResponse.WebAuthnCodingKeys.rawValue.getter()
{
  v1 = 0x6174614468747561;
  if (*v0 != 1)
  {
    v1 = 0x746D7453747461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7630182;
  }
}

AuthenticationServicesCore::ASCTAPAuthenticatorMakeCredentialResponse::WebAuthnCodingKeys_optional __swiftcall ASCTAPAuthenticatorMakeCredentialResponse.WebAuthnCodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C2171134();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C21440E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6174614468747561;
  if (v2 != 1)
  {
    v4 = 0x746D7453747461;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7630182;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6174614468747561;
  if (*a2 != 1)
  {
    v8 = 0x746D7453747461;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7630182;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C2171324();
  }

  return v11 & 1;
}

uint64_t sub_1C21441E4()
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C2144280(uint64_t a1)
{
  sub_1C21709B4();
}

uint64_t sub_1C2144308(uint64_t a1)
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

void sub_1C21443AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6174614468747561;
  if (v2 != 1)
  {
    v5 = 0x746D7453747461;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7630182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1C2144408@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = objc_opt_self();
  v8 = sub_1C2170154();
  v9 = [v7 decodeFromData_];

  if (!v9 || (v10 = [v9 dictionary], v9, !v10))
  {
    sub_1C214815C();
    swift_allocError();
    *v29 = 0;
    v29[1] = 0;
LABEL_14:
    swift_willThrow();
    v27 = a1;
    v28 = a2;
    goto LABEL_15;
  }

  sub_1C21475B0();
  sub_1C213FB18();
  v11 = sub_1C2170864();

  v12 = [v7 cborWithInteger_];
  v13 = sub_1C21439DC(v12, v11);

  if (!v13 || (v14 = [v13 string], v13, !v14))
  {

    sub_1C214815C();
    swift_allocError();
    *v30 = 0xD000000000000011;
    v30[1] = 0x80000001C21866E0;
    goto LABEL_14;
  }

  v63 = a3;
  v52 = sub_1C2170914();
  v16 = v15;

  v17 = [v7 cborWithInteger_];
  v18 = sub_1C21439DC(v17, v11);

  if (!v18 || (v19 = [v18 data], v18, !v19))
  {

    sub_1C214815C();
    swift_allocError();
    *v31 = xmmword_1C217E800;
    goto LABEL_14;
  }

  v50 = sub_1C2170174();
  v51 = v20;

  v21 = [v7 cborWithInteger_];
  v22 = sub_1C21439DC(v21, v11);

  if (!v22)
  {
LABEL_10:

    sub_1C214815C();
    swift_allocError();
    *v26 = 0xD000000000000014;
    v26[1] = 0x80000001C2186700;
    swift_willThrow();
    sub_1C20D3174(a1, a2);
    v27 = v50;
    v28 = v51;
LABEL_15:
    sub_1C20D3174(v27, v28);
LABEL_16:
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    v62 = 3;
    return sub_1C20EB498(&v56, &qword_1EBF23560, &unk_1C2176A00);
  }

  v23 = v22;
  v24 = sub_1C21700A4();
  if (v25 >> 60 == 15)
  {

    goto LABEL_10;
  }

  v48 = v24;
  v49 = v25;
  v33 = [v7 cborWithInteger_];
  v34 = sub_1C21439DC(v33, v11);

  if (v34)
  {
    sub_1C21702A4();
    swift_allocObject();
    sub_1C2170294();
    sub_1C2147EE0();
    sub_1C2170284();
    if (v3)
    {

      sub_1C20D3174(v50, v51);
      sub_1C20B23C8(v48, v49);

      sub_1C20D3174(a1, a2);

      goto LABEL_16;
    }

    sub_1C20D3174(a1, a2);

    v46 = v57;
    v47 = v56;
    v44 = v59;
    v45 = v58;
    v43 = v60;
    v35 = v61;
    v37 = v62;
    memset(v53, 0, sizeof(v53));
    v54 = 0;
    v55 = 3;
    result = sub_1C20EB498(v53, &qword_1EBF23560, &unk_1C2176A00);
    v41 = v43;
    v40 = v44;
    v39 = v45;
    v38 = v46;
    v36 = v47;
  }

  else
  {

    result = sub_1C20D3174(a1, a2);
    v35 = 0;
    v36 = 0uLL;
    v37 = 3;
    v38 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
  }

  v42 = v63;
  *v63 = v52;
  v42[1] = v16;
  v42[2] = v50;
  v42[3] = v51;
  v42[4] = v48;
  v42[5] = v49;
  *(v42 + 3) = v36;
  *(v42 + 4) = v38;
  *(v42 + 5) = v39;
  *(v42 + 6) = v40;
  *(v42 + 7) = v41;
  v42[16] = v35;
  *(v42 + 136) = v37;
  return result;
}

void sub_1C2144918()
{
  v1 = sub_1C21702C4();
  v38 = *(v1 - 8);
  v39 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0[6];
  v55 = v0[5];
  v56 = v4;
  *v57 = v0[7];
  *&v57[9] = *(v0 + 121);
  v5 = v0[4];
  v53 = v0[3];
  v54 = v5;
  v6 = sub_1C21708F4();
  v7 = objc_opt_self();
  v8 = [v7 cborWithUTF8String_];

  v9 = sub_1C2170154();
  v10 = [v7 cborWithData_];

  v11 = sub_1C2170154();
  v12 = [v7 decodeFromData_];

  if (!v12)
  {
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24928, &qword_1C217E810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C21768D0;
  *(inited + 32) = [v7 cborWithInteger_];
  *(inited + 40) = v8;
  v41 = v8;
  *(inited + 48) = [v7 cborWithInteger_];
  *(inited + 56) = v10;
  v14 = v10;
  *(inited + 64) = [v7 cborWithInteger_];
  *(inited + 72) = v12;
  v40 = v12;
  v15 = sub_1C213F208(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24930, &unk_1C217E818);
  swift_arrayDestroy();
  v49 = v55;
  v50 = v56;
  v51 = *v57;
  v52 = *&v57[16];
  v47 = v53;
  v48 = v54;
  v16 = v57[24];
  if (v57[24] == 3)
  {
    goto LABEL_15;
  }

  v37 = v14;
  sub_1C2170314();
  swift_allocObject();
  v45[2] = v55;
  v45[3] = v56;
  v46[0] = *v57;
  *(v46 + 9) = *&v57[9];
  v45[0] = v53;
  v45[1] = v54;
  sub_1C20F4C50(v45, v42);
  sub_1C2170304();
  (*(v38 + 104))(v3, *MEMORY[0x1E698F6D8], v39);
  sub_1C21702D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24518, &qword_1C217B8B0);
  v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24520, &unk_1C217B8B8) - 8);
  v18 = (*(*v17 + 80) + 32) & ~*(*v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C21768E0;
  v20 = v19 + v18;
  v21 = v20 + v17[14];
  if (qword_1EBF23138 != -1)
  {
    swift_once();
  }

  v22 = sub_1C2171054();
  v23 = __swift_project_value_buffer(v22, qword_1EBF25218);
  (*(*(v22 - 8) + 16))(v20, v23, v22);
  *(v21 + 24) = &type metadata for CodingUserInfoKey.CBOREncodingFormat;
  *v21 = 0;
  sub_1C213EE5C(v19);
  swift_setDeallocating();
  sub_1C20EB498(v20, &qword_1EBF24520, &unk_1C217B8B8);
  swift_deallocClassInstance();
  sub_1C21702F4();
  v42[2] = v49;
  v42[3] = v50;
  v42[4] = v51;
  v43 = v52;
  v42[0] = v47;
  v42[1] = v48;
  v44 = v16;
  sub_1C214809C();
  v24 = v58;
  v25 = sub_1C21702B4();
  if (v24)
  {

    sub_1C20EB498(&v53, &qword_1EBF23560, &unk_1C2176A00);
    return;
  }

  v26 = v25;
  v27 = [v7 cborWithInteger_];
  if ((v15 & 0xC000000000000001) == 0)
  {
    v31 = v26;
    goto LABEL_14;
  }

  if (v15 < 0)
  {
    v28 = v15;
  }

  else
  {
    v28 = v15 & 0xFFFFFFFFFFFFFF8;
  }

  v29 = v26;
  v30 = sub_1C2170E84();
  if (__OFADD__(v30, 1))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = sub_1C213C3FC(v28, v30 + 1);
LABEL_14:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v42[0] = v15;
  sub_1C213C628(v26, v27, isUniquelyReferenced_nonNull_native);
  sub_1C20EB498(&v53, &qword_1EBF23560, &unk_1C2176A00);

  v14 = v37;
LABEL_15:
  sub_1C21475B0();
  sub_1C213FB18();
  v33 = sub_1C2170854();
  v34 = [v7 cborWithDictionary_];

  sub_1C21700A4();
  if (v35 >> 60 != 15)
  {

    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_1C2144FA0(void *a1)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF249E8, &qword_1C217F200);
  v56 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v4 = v27 - v3;
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 24);
  v40 = *(v1 + 16);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v10 = *(v1 + 56);
  v37 = *(v1 + 48);
  v38 = v8;
  v11 = *(v1 + 72);
  v35 = *(v1 + 64);
  v36 = v10;
  v12 = *(v1 + 80);
  v13 = *(v1 + 88);
  *&v30 = v11;
  *(&v30 + 1) = v12;
  v14 = *(v1 + 104);
  v33 = *(v1 + 96);
  v34 = v13;
  v15 = *(v1 + 120);
  v31 = *(v1 + 112);
  v32 = v14;
  v28 = v15;
  v29 = *(v1 + 128);
  v27[3] = *(v1 + 129);
  v16 = *(v1 + 184);
  v53 = *(v1 + 168);
  v54 = v16;
  v55[0] = *(v1 + 200);
  *(v55 + 9) = *(v1 + 209);
  v17 = *(v1 + 152);
  v51 = *(v1 + 136);
  v52 = v17;
  v18 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v19 = v40;
  sub_1C2147F6C(v6, v5, v40, v7, v9);
  sub_1C2147E8C();
  sub_1C2171484();
  *&v46 = v6;
  *(&v46 + 1) = v5;
  *&v47 = v19;
  *(&v47 + 1) = v7;
  v20 = v41;
  *&v48 = v9;
  LOBYTE(v43[0]) = 0;
  sub_1C212B784();
  v21 = v4;
  v22 = v42;
  sub_1C2171264();
  if (v22)
  {
    sub_1C20E7AC4(v46, *(&v46 + 1), v47, *(&v47 + 1), v48);
    return (*(v56 + 8))(v4, v20);
  }

  else
  {
    v24 = v35;
    v25 = v36;
    v26 = v56;
    sub_1C20E7AC4(v46, *(&v46 + 1), v47, *(&v47 + 1), v48);
    *&v46 = v38;
    *(&v46 + 1) = v37;
    LOBYTE(v43[0]) = 1;
    sub_1C20D865C(v38, v37);
    sub_1C20D8CEC();
    sub_1C2171294();
    sub_1C20D3174(v46, *(&v46 + 1));
    *&v46 = v25;
    *(&v46 + 1) = v24;
    LOBYTE(v43[0]) = 2;
    sub_1C20D865C(v25, v24);
    sub_1C2171294();
    sub_1C20D3174(v46, *(&v46 + 1));
    v46 = v30;
    *&v47 = v34;
    *(&v47 + 1) = v33;
    *&v48 = v32;
    *(&v48 + 1) = v31;
    LOBYTE(v43[0]) = 3;
    sub_1C2147FCC(v30, *(&v30 + 1), v34, v33, v32, v31);
    sub_1C212B664();
    sub_1C2171264();
    sub_1C20E7B24(v46, *(&v46 + 1), v47, *(&v47 + 1), v48, *(&v48 + 1));
    LOBYTE(v46) = 4;
    sub_1C2171254();
    LOBYTE(v46) = 5;
    sub_1C2171234();
    v48 = v53;
    v49 = v54;
    v50[0] = v55[0];
    *(v50 + 9) = *(v55 + 9);
    v46 = v51;
    v47 = v52;
    v45 = 6;
    sub_1C214802C(&v51, v43);
    sub_1C214809C();
    sub_1C2171264();
    v43[2] = v48;
    v43[3] = v49;
    *v44 = v50[0];
    *&v44[9] = *(v50 + 9);
    v43[0] = v46;
    v43[1] = v47;
    sub_1C20EB498(v43, &qword_1EBF23560, &unk_1C2176A00);
    return (*(v26 + 8))(v21, v20);
  }
}

uint64_t sub_1C2145418@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF249D0, &qword_1C217F1F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - v7;
  v9 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1C2147E8C();
  sub_1C2171464();
  if (v2)
  {
    v59 = v2;
    v116 = 0;
    memset(v60, 0, sizeof(v60));
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    sub_1C20E7AC4(0, 0, 0, 0, 0);
    sub_1C20E7B24(*v60, *&v60[8], *&v60[16], *&v60[24], *&v60[32], v116);
    *&v80 = 0;
    v78 = 0u;
    memset(v79, 0, sizeof(v79));
    v77 = 0u;
    BYTE8(v80) = 3;
    return sub_1C20EB498(&v77, &qword_1EBF23560, &unk_1C2176A00);
  }

  else
  {
    v55 = a2;
    LOBYTE(v64) = 0;
    sub_1C212BA10();
    sub_1C21711A4();
    v52 = v77;
    v53 = *(&v78 + 1);
    v11 = v78;
    v54 = *&v79[0];
    sub_1C20E7AC4(0, 0, 0, 0, 0);
    LOBYTE(v64) = 1;
    sub_1C20D8E24();
    sub_1C21711D4();
    v57 = v77;
    LOBYTE(v64) = 2;
    sub_1C21711D4();
    v12 = v6;
    v13 = v11;
    v56 = v77;
    LOBYTE(v64) = 3;
    sub_1C212B8F0();
    sub_1C21711A4();
    *v60 = v77;
    *&v60[16] = v78;
    v116 = *(&v79[0] + 1);
    *&v60[32] = *&v79[0];
    sub_1C20E7B24(0, 0, 0, 0, 0, 0);
    LOBYTE(v77) = 4;
    v14 = sub_1C2171194();
    v115 = v15 & 1;
    LOBYTE(v77) = 5;
    LOBYTE(v11) = sub_1C2171174();
    v100 = 6;
    sub_1C2147EE0();
    sub_1C21711A4();
    v59 = 0;
    (*(v12 + 8))(v8, v5);
    v16 = v101;
    v17 = v102;
    v46 = v102;
    v47 = v101;
    v18 = v104;
    v19 = v105;
    v44 = v105;
    v45 = v104;
    v40 = v106;
    v41 = v103;
    v39 = v107;
    v50 = v109;
    v51 = v108;
    v48 = v111;
    v49 = v110;
    memset(v61, 0, sizeof(v61));
    v62 = 0;
    v42 = v112;
    v63 = 3;
    sub_1C20EB498(v61, &qword_1EBF23560, &unk_1C2176A00);
    *&v65 = v13;
    *(&v65 + 1) = v53;
    *v66 = v54;
    *&v66[8] = v57;
    *&v66[24] = v56;
    *&v66[40] = *v60;
    v67 = *&v60[8];
    v68 = *&v60[24];
    *&v69 = v116;
    *(&v69 + 1) = v14;
    v43 = v115;
    LOBYTE(v70) = v115;
    BYTE1(v70) = v11;
    *(&v70 + 1) = v16;
    *&v71 = v17;
    v20 = v41;
    *(&v71 + 1) = v41;
    *&v72 = v18;
    v21 = v40;
    *(&v72 + 1) = v19;
    *&v73 = v40;
    v22 = v39;
    *(&v73 + 1) = v39;
    *&v74 = v51;
    *(&v74 + 1) = v50;
    *&v75 = v49;
    *(&v75 + 1) = v48;
    v23 = v71;
    v24 = v72;
    v25 = v73;
    v26 = v74;
    v27 = v75;
    v28 = *v66;
    v29 = *&v66[16];
    v30 = *&v66[32];
    v31 = *&v60[8];
    v33 = *&v60[24];
    v32 = v69;
    v34 = v52;
    v64 = v52;
    v35 = v11;
    v36 = v55;
    *(v55 + 128) = v70;
    *(v36 + 144) = v23;
    *(v36 + 192) = v26;
    *(v36 + 208) = v27;
    *(v36 + 160) = v24;
    *(v36 + 176) = v25;
    v37 = v65;
    *v36 = v64;
    *(v36 + 16) = v37;
    *(v36 + 96) = v33;
    *(v36 + 112) = v32;
    v38 = v42;
    *(v36 + 224) = v42;
    *(v36 + 64) = v30;
    *(v36 + 80) = v31;
    *(v36 + 32) = v28;
    *(v36 + 48) = v29;
    v76 = v38;
    LOBYTE(v36) = v38;
    sub_1C2147F34(&v64, &v77);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    v77 = __PAIR128__(*(&v52 + 1), v34);
    *&v78 = v13;
    *(&v78 + 1) = v53;
    *&v79[0] = v54;
    *(v79 + 8) = v57;
    *(&v79[1] + 8) = v56;
    *(&v79[2] + 1) = *v60;
    v80 = *&v60[8];
    v81 = *&v60[24];
    v82 = v116;
    v83 = v14;
    v84 = v43;
    v85 = v35;
    v87 = v114;
    v86 = v113;
    v88 = v47;
    v89 = v46;
    v90 = v20;
    v91 = v45;
    v92 = v44;
    v93 = v21;
    v94 = v22;
    v95 = v51;
    v96 = v50;
    v97 = v49;
    v98 = v48;
    v99 = v36;
    return sub_1C20EB2F0(&v77);
  }
}

uint64_t sub_1C2145B68()
{
  v1 = *v0;
  sub_1C2171434();
  MEMORY[0x1C69146F0](qword_1C217F3D0[v1]);
  return sub_1C2171454();
}

uint64_t sub_1C2145BF0(uint64_t a1)
{
  v2 = *v1;
  sub_1C2171434();
  MEMORY[0x1C69146F0](qword_1C217F3D0[v2]);
  return sub_1C2171454();
}

uint64_t sub_1C2145C3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C20B0F20(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C2145C80()
{
  v1 = *v0;
  v2 = 0x69746E6564657263;
  v3 = 0x656C655372657375;
  if (v1 != 5)
  {
    v3 = 0xD000000000000018;
  }

  v4 = 1919251317;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6174614468747561;
  if (v1 != 1)
  {
    v5 = 0x727574616E676973;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C2145D70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C2148474(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C2145DB0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C20B0F20(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C2145DD8(uint64_t a1)
{
  v2 = sub_1C2147E8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2145E14(uint64_t a1)
{
  v2 = sub_1C2147E8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1C2145E50@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C21702A4();
  swift_allocObject();
  sub_1C2170294();
  sub_1C21481B0();
  sub_1C2170274();

  sub_1C20D3174(a1, a2);
  if (v3)
  {
    sub_1C20E7AC4(0, 0, 0, 0, 0);
    sub_1C20E7B24(0, 0, 0, 0, 0, 0);
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v31 = 3;
    sub_1C20EB498(&v25, &qword_1EBF23560, &unk_1C2176A00);
  }

  else
  {
    v23 = v35;
    v24 = v36;
    v8 = v34;
    v9 = v39;
    v10 = v40;
    v21 = v46;
    v22 = v41;
    v11 = v47;
    v12 = v48;
    v13 = v33;
    v14 = v32;
    v15 = v38;
    v16 = v37;
    v19 = v44;
    v20 = v42;
    v17 = v45;
    v18 = v43;
    sub_1C20E7AC4(0, 0, 0, 0, 0);
    sub_1C20E7B24(0, 0, 0, 0, 0, 0);
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v31 = 3;
    sub_1C20EB498(&v25, &qword_1EBF23560, &unk_1C2176A00);
    *a3 = v14;
    *(a3 + 16) = v13;
    *(a3 + 32) = v8;
    *(a3 + 40) = v23;
    *(a3 + 56) = v24;
    *(a3 + 88) = v15;
    *(a3 + 72) = v16;
    *(a3 + 104) = v9;
    *(a3 + 112) = v10;
    *(a3 + 120) = v22;
    *(a3 + 152) = v18;
    *(a3 + 136) = v20;
    *(a3 + 184) = v17;
    *(a3 + 168) = v19;
    result = v21;
    *(a3 + 200) = v21;
    *(a3 + 216) = v11;
    *(a3 + 224) = v12;
  }

  return result;
}

uint64_t sub_1C21460AC()
{
  v1 = sub_1C21702C4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[13];
  v38 = v0[12];
  v39 = v5;
  v40 = *(v0 + 224);
  v6 = v0[9];
  v34 = v0[8];
  v35 = v6;
  v7 = v0[11];
  v36 = v0[10];
  v37 = v7;
  v8 = v0[5];
  v30 = v0[4];
  v31 = v8;
  v9 = v0[7];
  v32 = v0[6];
  v33 = v9;
  v10 = v0[1];
  v26 = *v0;
  v27 = v10;
  v11 = v0[3];
  v28 = v0[2];
  v29 = v11;
  sub_1C2170314();
  swift_allocObject();
  sub_1C2170304();
  (*(v2 + 104))(v4, *MEMORY[0x1E698F6D8], v1);
  sub_1C21702D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24518, &qword_1C217B8B0);
  v12 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24520, &unk_1C217B8B8) - 8);
  v13 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C21768E0;
  v15 = v12[14];
  if (qword_1EBF23138 != -1)
  {
    v23 = v14;
    swift_once();
    v14 = v23;
  }

  v16 = v14 + v13;
  v17 = v14 + v13 + v15;
  v18 = v14;
  v19 = sub_1C2171054();
  v20 = __swift_project_value_buffer(v19, qword_1EBF25218);
  (*(*(v19 - 8) + 16))(v16, v20, v19);
  *(v17 + 24) = &type metadata for CodingUserInfoKey.CBOREncodingFormat;
  *v17 = 0;
  sub_1C213EE5C(v18);
  swift_setDeallocating();
  sub_1C20EB498(v16, &qword_1EBF24520, &unk_1C217B8B8);
  swift_deallocClassInstance();
  sub_1C21702F4();
  v24[12] = v38;
  v24[13] = v39;
  v25 = v40;
  v24[8] = v34;
  v24[9] = v35;
  v24[10] = v36;
  v24[11] = v37;
  v24[4] = v30;
  v24[5] = v31;
  v24[6] = v32;
  v24[7] = v33;
  v24[0] = v26;
  v24[1] = v27;
  v24[2] = v28;
  v24[3] = v29;
  sub_1C2148204();
  v21 = sub_1C21702E4();

  return v21;
}

void ASCTAPAuthenticatorMakeCredentialResponse.init(attestationObject:)(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = objc_opt_self();
  v7 = sub_1C2170154();
  v8 = [v6 decodeFromData_];

  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = [v8 dictionary];

  if (!v9)
  {
    goto LABEL_10;
  }

  sub_1C21475B0();
  sub_1C213FB18();
  v10 = sub_1C2170864();

  v11 = sub_1C21708F4();
  v12 = [v6 cborWithUTF8String_];

  v13 = sub_1C21439DC(v12, v10);
  if (!v13 || (v14 = [v13 string], v13, !v14))
  {
LABEL_9:

LABEL_10:
    sub_1C20D3174(a1, a2);
    goto LABEL_11;
  }

  v15 = sub_1C2170914();
  v17 = v16;

  v18 = sub_1C21708F4();
  v19 = [v6 cborWithUTF8String_];

  v20 = sub_1C21439DC(v19, v10);
  if (!v20)
  {

    goto LABEL_9;
  }

  v42 = v15;
  v21 = v20;
  v22 = sub_1C21700A4();
  if (v23 >> 60 != 15)
  {
    v28 = v23;
    v40 = v22;
    v41 = v17;
    v29 = sub_1C21708F4();
    v30 = [v6 cborWithUTF8String_];

    v31 = sub_1C21439DC(v30, v10);

    if (v31)
    {
      v32 = [v31 data];

      if (v32)
      {
        v33 = sub_1C2170174();
        v35 = v34;

        sub_1C20D3174(a1, a2);
        *&v44 = v42;
        *(&v44 + 1) = v41;
        *&v45 = v33;
        *(&v45 + 1) = v35;
        *&v46 = v40;
        *(&v46 + 1) = v28;
        v49 = 0u;
        v50 = 0u;
        memset(v51, 0, 24);
        v47 = 0u;
        v48 = 0u;
        v51[24] = 3;
        v58 = 0u;
        v59[0] = 0u;
        *(v59 + 9) = *&v51[9];
        v54 = v46;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v52 = v44;
        v53 = v45;
        nullsub_1();
        v36 = v59[0];
        a3[6] = 0u;
        a3[7] = v36;
        *(a3 + 121) = *(v59 + 9);
        v37 = v55;
        a3[2] = v54;
        a3[3] = v37;
        v38 = v57;
        a3[4] = v56;
        a3[5] = v38;
        v39 = v53;
        *a3 = v52;
        a3[1] = v39;
        *&v60 = v42;
        *(&v60 + 1) = v41;
        *&v61 = v33;
        *(&v61 + 1) = v35;
        *&v62 = v40;
        *(&v62 + 1) = v28;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        memset(v67, 0, 24);
        v67[24] = 3;
        sub_1C20F4BF4(&v44, v43);
        sub_1C20EB344(&v60);
        return;
      }
    }

    sub_1C20B23C8(v40, v28);

    goto LABEL_10;
  }

  sub_1C20D3174(a1, a2);

LABEL_11:
  *&v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  BYTE8(v57) = 3;
  sub_1C20EB498(&v52, &qword_1EBF23560, &unk_1C2176A00);
  sub_1C21475FC(&v60);
  v24 = *v67;
  a3[6] = v66;
  a3[7] = v24;
  *(a3 + 121) = *&v67[9];
  v25 = v63;
  a3[2] = v62;
  a3[3] = v25;
  v26 = v65;
  a3[4] = v64;
  a3[5] = v26;
  v27 = v61;
  *a3 = v60;
  a3[1] = v27;
}

BOOL sub_1C2146840(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v99 = *(a1 + 48);
  v100 = *(a1 + 40);
  v96 = *(a1 + 56);
  v7 = *(a1 + 72);
  v95 = *(a1 + 64);
  v9 = *(a1 + 80);
  v8 = *(a1 + 88);
  v11 = *(a1 + 96);
  v10 = *(a1 + 104);
  v12 = *(a1 + 112);
  v13 = *(a1 + 120);
  v14 = *(a1 + 128);
  v15 = *(a1 + 129);
  v16 = *(a1 + 184);
  v127[2] = *(a1 + 168);
  v127[3] = v16;
  *v128 = *(a1 + 200);
  *&v128[9] = *(a1 + 209);
  v17 = *(a1 + 152);
  v127[0] = *(a1 + 136);
  v127[1] = v17;
  v18 = *a2;
  v19 = *(a2 + 8);
  v21 = *(a2 + 16);
  v20 = *(a2 + 24);
  v22 = *(a2 + 32);
  v98 = *(a2 + 40);
  v97 = *(a2 + 48);
  v94 = *(a2 + 56);
  v93 = *(a2 + 64);
  v24 = *(a2 + 72);
  v23 = *(a2 + 80);
  v25 = *(a2 + 184);
  v129[2] = *(a2 + 168);
  v129[3] = v25;
  *v130 = *(a2 + 200);
  *&v130[9] = *(a2 + 209);
  v26 = *(a2 + 152);
  v129[0] = *(a2 + 136);
  v129[1] = v26;
  v92 = *(a2 + 120);
  if (!v3)
  {
    if (!v19)
    {
      v74 = *(a2 + 128);
      v75 = *(a2 + 129);
      v80 = v23;
      v81 = *(a2 + 104);
      v87 = *(a2 + 88);
      v88 = v8;
      v82 = *(a2 + 96);
      v83 = *(a2 + 112);
      v89 = v24;
      v90 = v7;
      v79 = v14;
      v73 = v13;
      v76 = v15;
      v91 = v9;
      v84 = v11;
      v85 = v10;
      v86 = v12;
      v77 = a1;
      v78 = a2;
      sub_1C2147F6C(v2, 0, v5, v4, v6);
      sub_1C2147F6C(v18, 0, v21, v20, v22);
      v3 = 0;
      goto LABEL_13;
    }

LABEL_11:
    sub_1C2147F6C(v2, v3, v5, v4, v6);
    sub_1C2147F6C(v18, v19, v21, v20, v22);
    sub_1C20E7AC4(v2, v3, v5, v4, v6);
    v27 = v18;
    v28 = v19;
    v29 = v21;
    v30 = v20;
    v31 = v22;
LABEL_28:
    sub_1C20E7AC4(v27, v28, v29, v30, v31);
    return 0;
  }

  if (!v19)
  {
    goto LABEL_11;
  }

  v74 = *(a2 + 128);
  v75 = *(a2 + 129);
  v80 = v23;
  v81 = *(a2 + 104);
  v87 = *(a2 + 88);
  v88 = v8;
  v82 = *(a2 + 96);
  v83 = *(a2 + 112);
  v89 = v24;
  v90 = v7;
  v79 = v14;
  v73 = v13;
  v76 = v15;
  v91 = v9;
  v84 = v11;
  v85 = v10;
  v86 = v12;
  v77 = a1;
  v78 = a2;
  if (__PAIR128__(v3, v2) != __PAIR128__(v19, v18) && (sub_1C2171324() & 1) == 0)
  {
    sub_1C2147F6C(v2, v3, v5, v4, v6);
    sub_1C2147F6C(v18, v19, v21, v20, v22);
    goto LABEL_26;
  }

  sub_1C2147F6C(v2, v3, v5, v4, v6);
  sub_1C2147F6C(v18, v19, v21, v20, v22);
  if (!sub_1C21068CC(v5, v4, v21, v20))
  {
LABEL_26:
    sub_1C20E7AC4(v18, v19, v21, v20, v22);
LABEL_27:
    v27 = v2;
    v28 = v3;
    v29 = v5;
    v30 = v4;
    v31 = v6;
    goto LABEL_28;
  }

  if (!v6)
  {
    if (!v22)
    {
      sub_1C20E7AC4(v18, v19, v21, v20, 0);
      goto LABEL_13;
    }

    goto LABEL_26;
  }

  if (!v22)
  {
    goto LABEL_26;
  }

  v72 = sub_1C21546B8(v6, v22);
  sub_1C20E7AC4(v18, v19, v21, v20, v22);
  if ((v72 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_13:
  sub_1C20E7AC4(v2, v3, v5, v4, v6);
  if (!sub_1C21068CC(v100, v99, v98, v97) || !sub_1C21068CC(v96, v95, v94, v93))
  {
    return 0;
  }

  v32 = v91;
  if (!v91)
  {
    v33 = v88;
    v34 = v90;
    v35 = v80;
    if (!v80)
    {
      v45 = 0;
      v49 = v88;
      v46 = v84;
      v47 = v85;
      v48 = v86;
      sub_1C2147FCC(v90, 0, v88, v84, v85, v86);
      sub_1C2147FCC(v89, 0, v87, v82, v81, v83);
      goto LABEL_38;
    }

LABEL_33:
    sub_1C2147FCC(v34, v91, v33, v84, v85, v86);
    sub_1C2147FCC(v89, v35, v87, v82, v81, v83);
    sub_1C20E7B24(v34, v91, v33, v84, v85, v86);
    sub_1C20E7B24(v89, v35, v87, v82, v81, v83);
    return 0;
  }

  v33 = v88;
  v34 = v90;
  v35 = v80;
  if (!v80)
  {
    goto LABEL_33;
  }

  if (v90 != v89 || v91 != v80)
  {
    v36 = sub_1C2171324();
    v32 = v91;
    if ((v36 & 1) == 0)
    {
      v38 = v84;
      v37 = v85;
      v39 = v86;
      sub_1C2147FCC(v90, v91, v88, v84, v85, v86);
      v40 = v89;
      v41 = v87;
      v42 = v81;
      v43 = v82;
      v44 = v83;
      sub_1C2147FCC(v89, v80, v87, v82, v81, v83);
      goto LABEL_36;
    }
  }

  v38 = v84;
  v37 = v85;
  v39 = v86;
  sub_1C2147FCC(v90, v32, v88, v84, v85, v86);
  v40 = v89;
  v41 = v87;
  v42 = v81;
  v43 = v82;
  v44 = v83;
  sub_1C2147FCC(v89, v80, v87, v82, v81, v83);
  if (!sub_1C21068CC(v88, v84, v87, v82))
  {
LABEL_36:
    sub_1C20E7B24(v40, v80, v41, v43, v42, v44);
    sub_1C20E7B24(v90, v91, v88, v38, v37, v39);
    return 0;
  }

  v45 = v91;
  v46 = v84;
  v47 = v85;
  if (v85 == v81 && v86 == v83)
  {
    v48 = v86;
    sub_1C20E7B24(v89, v80, v87, v82, v85, v86);
    v49 = v88;
    v34 = v90;
  }

  else
  {
    v48 = v86;
    v52 = sub_1C2171324();
    sub_1C20E7B24(v89, v80, v87, v82, v81, v83);
    v49 = v88;
    v34 = v90;
    if ((v52 & 1) == 0)
    {
      sub_1C20E7B24(v90, v91, v88, v84, v85, v86);
      return 0;
    }
  }

LABEL_38:
  sub_1C20E7B24(v34, v45, v49, v46, v47, v48);
  if (v79)
  {
    v54 = v77;
    v53 = v78;
    v56 = v75;
    v55 = v76;
    if (!v74)
    {
      return 0;
    }
  }

  else
  {
    v56 = v75;
    if (v73 == v92)
    {
      v57 = v74;
    }

    else
    {
      v57 = 1;
    }

    v54 = v77;
    v53 = v78;
    v55 = v76;
    if (v57)
    {
      return 0;
    }
  }

  if (v55 == 2)
  {
    if (v56 != 2)
    {
      return 0;
    }

LABEL_50:
    v58 = v128[24];
    *&v126[39] = *(v53 + 168);
    *&v126[55] = *(v53 + 184);
    *&v126[71] = *(v53 + 200);
    *&v126[87] = *(v53 + 216);
    *&v126[7] = *(v53 + 136);
    *&v126[23] = *(v53 + 152);
    v59 = v130[24];
    if (v128[24] == 3)
    {
      if (v130[24] == 3)
      {
        v60 = *(v54 + 184);
        v117 = *(v54 + 168);
        v118 = v60;
        *v119 = *(v54 + 200);
        *&v119[16] = *(v54 + 216);
        v61 = *(v54 + 152);
        v115 = *(v54 + 136);
        v116 = v61;
        v119[24] = 3;
        sub_1C214802C(v127, &v110);
        sub_1C214802C(v129, &v110);
        sub_1C20EB498(&v115, &qword_1EBF23560, &unk_1C2176A00);
        return 1;
      }

      v64 = v54;
      sub_1C214802C(v127, &v115);
      sub_1C214802C(v129, &v115);
    }

    else
    {
      v62 = *(v54 + 200);
      *&v119[16] = *(v54 + 216);
      v63 = *(v54 + 168);
      v118 = *(v54 + 184);
      *v119 = v62;
      v64 = v54;
      v65 = *(v54 + 152);
      v115 = *(v54 + 136);
      v116 = v65;
      v117 = v63;
      v119[24] = v128[24];
      v113 = v118;
      v114[0] = v62;
      v111 = v65;
      v112 = v63;
      v110 = v115;
      *(v114 + 9) = *&v119[9];
      if (v130[24] != 3)
      {
        v68 = *(v53 + 184);
        v107 = *(v53 + 168);
        v108 = v68;
        *v109 = *(v53 + 200);
        *&v109[16] = *(v53 + 216);
        v69 = *(v53 + 152);
        v105 = *(v53 + 136);
        v106 = v69;
        v109[24] = v130[24];
        sub_1C214802C(v127, v103);
        sub_1C214802C(v129, v103);
        sub_1C214802C(&v115, v103);
        v50 = _s26AuthenticationServicesCore21ASCTAPExtensionOutputV2eeoiySbAC_ACtFZ_0(&v110, &v105);
        v101[2] = v107;
        v101[3] = v108;
        v102[0] = *v109;
        *(v102 + 9) = *&v109[9];
        v101[0] = v105;
        v101[1] = v106;
        sub_1C20F4BA0(v101);
        v103[2] = v112;
        v103[3] = v113;
        v104[0] = v114[0];
        *(v104 + 9) = *(v114 + 9);
        v103[0] = v110;
        v103[1] = v111;
        sub_1C20F4BA0(v103);
        v70 = *(v64 + 184);
        v107 = *(v64 + 168);
        v108 = v70;
        *v109 = *(v64 + 200);
        *&v109[16] = *(v64 + 216);
        v71 = *(v64 + 152);
        v105 = *(v64 + 136);
        v106 = v71;
        v109[24] = v58;
        sub_1C20EB498(&v105, &qword_1EBF23560, &unk_1C2176A00);
        return v50;
      }

      v107 = v117;
      v108 = v118;
      *v109 = *v119;
      *&v109[9] = *&v119[9];
      v105 = v115;
      v106 = v116;
      sub_1C214802C(v127, v103);
      sub_1C214802C(v129, v103);
      sub_1C214802C(&v115, v103);
      sub_1C20F4BA0(&v105);
    }

    v66 = *(v64 + 184);
    v117 = *(v64 + 168);
    v118 = v66;
    *v119 = *(v64 + 200);
    *&v119[16] = *(v64 + 216);
    v67 = *(v64 + 152);
    v115 = *(v64 + 136);
    v116 = v67;
    v119[24] = v58;
    v120 = *v126;
    v121 = *&v126[16];
    *&v124[15] = *&v126[79];
    *v124 = *&v126[64];
    v123 = *&v126[48];
    v122 = *&v126[32];
    v125 = v59;
    sub_1C20EB498(&v115, &qword_1EBF249F8, &qword_1C217F208);
    return 0;
  }

  v50 = 0;
  if (v56 != 2 && ((v56 ^ v55) & 1) == 0)
  {
    goto LABEL_50;
  }

  return v50;
}

BOOL _s26AuthenticationServicesCore41ASCTAPAuthenticatorMakeCredentialResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v10 = *(a1 + 6);
  v62[2] = *(a1 + 5);
  v62[3] = v10;
  *v63 = *(a1 + 7);
  *&v63[9] = *(a1 + 121);
  v11 = *(a1 + 4);
  v62[0] = *(a1 + 3);
  v62[1] = v11;
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[4];
  v17 = a2[5];
  *&v65[9] = *(a2 + 121);
  v18 = *(a2 + 7);
  v64[3] = *(a2 + 6);
  *v65 = v18;
  v19 = *(a2 + 5);
  v64[1] = *(a2 + 4);
  v64[2] = v19;
  v64[0] = *(a2 + 3);
  if ((v4 != v12 || v5 != v13) && (sub_1C2171324() & 1) == 0 || !sub_1C21068CC(v6, v8, v14, v15) || !sub_1C21068CC(v7, v9, v16, v17))
  {
    return 0;
  }

  v20 = *(a2 + 6);
  *&v61[39] = *(a2 + 5);
  *&v61[55] = v20;
  *&v61[71] = *(a2 + 7);
  v21 = *(a2 + 4);
  *&v61[7] = *(a2 + 3);
  v22 = v63[24];
  *&v61[87] = a2[16];
  *&v61[23] = v21;
  v23 = v65[24];
  if (v63[24] != 3)
  {
    v28 = *(a1 + 7);
    v53 = *(a1 + 6);
    *v54 = v28;
    *&v54[16] = a1[16];
    v29 = *(a1 + 5);
    v51 = *(a1 + 4);
    v52 = v29;
    v50 = *(a1 + 3);
    v54[24] = v63[24];
    v48 = v53;
    v49[0] = v28;
    v46 = v51;
    v47 = v29;
    v45 = v50;
    *(v49 + 9) = *&v54[9];
    if (v65[24] != 3)
    {
      v32 = *(a2 + 6);
      v42 = *(a2 + 5);
      v43 = v32;
      *v44 = *(a2 + 7);
      *&v44[16] = a2[16];
      v33 = *(a2 + 4);
      v40 = *(a2 + 3);
      v41 = v33;
      v44[24] = v65[24];
      sub_1C214802C(v62, v38);
      sub_1C214802C(v64, v38);
      sub_1C214802C(&v50, v38);
      v26 = _s26AuthenticationServicesCore21ASCTAPExtensionOutputV2eeoiySbAC_ACtFZ_0(&v45, &v40);
      v36[2] = v42;
      v36[3] = v43;
      v37[0] = *v44;
      *(v37 + 9) = *&v44[9];
      v36[0] = v40;
      v36[1] = v41;
      sub_1C20F4BA0(v36);
      v38[2] = v47;
      v38[3] = v48;
      v39[0] = v49[0];
      *(v39 + 9) = *(v49 + 9);
      v38[0] = v45;
      v38[1] = v46;
      sub_1C20F4BA0(v38);
      v34 = *(a1 + 6);
      v42 = *(a1 + 5);
      v43 = v34;
      *v44 = *(a1 + 7);
      *&v44[16] = a1[16];
      v35 = *(a1 + 4);
      v40 = *(a1 + 3);
      v41 = v35;
      v44[24] = v22;
      sub_1C20EB498(&v40, &qword_1EBF23560, &unk_1C2176A00);
      return v26;
    }

    v42 = v52;
    v43 = v53;
    *v44 = *v54;
    *&v44[9] = *&v54[9];
    v40 = v50;
    v41 = v51;
    sub_1C214802C(v62, v38);
    sub_1C214802C(v64, v38);
    sub_1C214802C(&v50, v38);
    sub_1C20F4BA0(&v40);
    goto LABEL_14;
  }

  if (v65[24] != 3)
  {
    sub_1C214802C(v62, &v50);
    sub_1C214802C(v64, &v50);
LABEL_14:
    v30 = *(a1 + 6);
    v52 = *(a1 + 5);
    v53 = v30;
    *v54 = *(a1 + 7);
    *&v54[16] = a1[16];
    v31 = *(a1 + 4);
    v50 = *(a1 + 3);
    v51 = v31;
    v54[24] = v22;
    v55 = *v61;
    v56 = *&v61[16];
    *&v59[15] = *&v61[79];
    *v59 = *&v61[64];
    v58 = *&v61[48];
    v57 = *&v61[32];
    v60 = v23;
    sub_1C20EB498(&v50, &qword_1EBF249F8, &qword_1C217F208);
    return 0;
  }

  v24 = *(a1 + 6);
  v52 = *(a1 + 5);
  v53 = v24;
  *v54 = *(a1 + 7);
  *&v54[16] = a1[16];
  v25 = *(a1 + 4);
  v50 = *(a1 + 3);
  v51 = v25;
  v54[24] = 3;
  sub_1C214802C(v62, &v45);
  sub_1C214802C(v64, &v45);
  sub_1C20EB498(&v50, &qword_1EBF23560, &unk_1C2176A00);
  return 1;
}

unint64_t sub_1C21475B0()
{
  result = qword_1EBF241E8;
  if (!qword_1EBF241E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBF241E8);
  }

  return result;
}

double sub_1C21475FC(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_1C214761C()
{
  result = qword_1EBF24938;
  if (!qword_1EBF24938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24938);
  }

  return result;
}

unint64_t sub_1C2147670(uint64_t a1)
{
  result = sub_1C2147698();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C2147698()
{
  result = qword_1EBF24940[0];
  if (!qword_1EBF24940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBF24940);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26AuthenticationServicesCore21ASCTAPExtensionOutputVSg(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 >= 2)
  {
    v2 = ((v1 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v2 = -2;
  }

  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1C2147750(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_1C2147798(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy225_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1C2147868(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 225))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1C21478C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 224) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 225) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 225) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C214796C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C21479F4(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xC)
  {
    v7 = 12;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = a1 & 0xFFFFFFFFFFFFFFF8;
      if (v5 > 0xC)
      {
        return (*(v4 + 48))((v15 + v6 + 24) & ~v6);
      }

      v16 = *(v15 + 16) >> 60;
      if (((4 * v16) & 0xC) != 0)
      {
        return 16 - ((4 * v16) & 0xC | (v16 >> 2));
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1C2147B90(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xC)
  {
    v8 = 12;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = a1 & 0xFFFFFFFFFFFFFFF8;
  if (v7 > 0xC)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 24) & ~v9);
  }

  else if (a2 > 0xC)
  {
    *(v19 + 8) = a2 - 13;
    *(v19 + 16) = 0;
  }

  else
  {
    *(v19 + 8) = 0;
    *(v19 + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }
}