unint64_t sub_1C20FAF88(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C20FAFA8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23920, &unk_1C21772B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23928, &unk_1C2177240);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v35 = &v30 - v11;
  v12 = sub_1C21707F4();
  v32 = *(v12 - 8);
  v33 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C2170764();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v30 - v20;
  v36 = a1;
  v37 = a2;
  sub_1C20D865C(a1, a2);
  v22 = MEMORY[0x1E6969080];
  sub_1C2170744();
  v36 = a3;
  v37 = a4;
  sub_1C20D865C(a3, a4);
  v23 = v38;
  sub_1C21707E4();
  if (v23)
  {
    (*(v16 + 8))(v21, v15);
  }

  else
  {
    v24 = *(v16 + 16);
    v31 = v15;
    v24(v19, v21, v15);
    v25 = sub_1C2170824();
    (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
    v26 = v32;
    v27 = v33;
    v28 = v34;
    (*(v32 + 16))(v34, v14, v33);
    (*(v26 + 56))(v28, 0, 1, v27);
    type metadata accessor for ASCABLECryptographyManager(0);
    swift_allocObject();
    v22 = sub_1C20F5B24(v19, v35, v28);
    (*(v26 + 8))(v14, v27);
    (*(v16 + 8))(v21, v31);
  }

  return v22;
}

uint64_t sub_1C20FB340(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1C216FE14();
      swift_allocObject();
      sub_1C216FDE4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1C21700E4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1C20FB3E0(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v5 = 0;
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    __break(1u);
    return result;
  }

  v5 = v5;
LABEL_10:
  v9 = -v5 < 0;
  v10 = -v5 & 0x1F;
  v11 = v5 & 0x1F;
  if (v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = -v10;
  }

  *&v18 = sub_1C20FB340(32 - v12);
  *(&v18 + 1) = v13;
  sub_1C20FA2D8(&v18, 0);
  v22 = v18;
  sub_1C2170144();
  v14 = v22;
  v21[0] = v3;
  v21[1] = a2;
  v19 = MEMORY[0x1E6969080];
  v20 = MEMORY[0x1E6969078];
  v18 = v22;
  v15 = __swift_project_boxed_opaque_existential_1(&v18, MEMORY[0x1E6969080]);
  v16 = *v15;
  v17 = v15[1];
  sub_1C20D865C(v3, a2);
  sub_1C20D865C(v14, *(&v14 + 1));
  sub_1C2106434(v16, v17, v21);
  sub_1C20D3174(v14, *(&v14 + 1));
  __swift_destroy_boxed_opaque_existential_0Tm(&v18);
  return v21[0];
}

uint64_t sub_1C20FB524(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v4)
    {
      if ((a2 & 0xFF000000000000) != 0)
      {
        v5 = BYTE6(a2);
        goto LABEL_12;
      }

LABEL_10:
      sub_1C20D865C(a1, a2);
      return v3;
    }

    if (a1 == a1 >> 32)
    {
      goto LABEL_10;
    }
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 24);
  }

  else
  {
    v5 = a1 >> 32;
  }

LABEL_12:
  result = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    result = sub_1C2170134();
    v7 = result + 1;
    if (((v7 >> 8) & 1) == 0)
    {
      sub_1C20D865C(v3, a2);
      sub_1C20F8C74(v7, v3, a2, &v8);
      return v8;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C20FB618()
{
  result = qword_1EBF23940;
  if (!qword_1EBF23940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23940);
  }

  return result;
}

unint64_t sub_1C20FB66C()
{
  result = qword_1EBF23958;
  if (!qword_1EBF23958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23958);
  }

  return result;
}

uint64_t sub_1C20FB6C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23948, &qword_1C21772A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C20FB730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23948, &qword_1C21772A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C20FB7A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23968, &qword_1C21772C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C20FB810(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v8 = a2;
  v9 = result;
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v11 = 0;
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v13 = *(result + 16);
    v12 = *(result + 24);
    v14 = __OFSUB__(v12, v13);
    v11 = v12 - v13;
    if (!v14)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v11) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v11 = v11;
LABEL_10:
    if (v11 <= 0)
    {
      v15 = -(-v11 & 0xF);
    }

    else
    {
      v15 = v11 & 0xF;
    }

    v16 = v11 + v15;
    if (__OFADD__(v11, v15))
    {
      __break(1u);
    }

    else if ((v16 & 0x8000000000000000) == 0)
    {
      if (v16)
      {
        v17 = sub_1C2170B84();
        *(v17 + 16) = v16;
        bzero((v17 + 32), v16);
      }

      else
      {
        v17 = MEMORY[0x1E69E7CC0];
      }

      v25 = v17;
      sub_1C20D865C(a3, a4);
      sub_1C20D865C(v9, v8);
      v18 = sub_1C20F9330(v9, v8, a3, a4, a5 & 1, v9, v8, &v25);
      if (!v18)
      {

        v23 = sub_1C20E7898(v24);

LABEL_24:

        return v23;
      }

      LODWORD(v8) = v18;
      if (qword_1EDD4A728 == -1)
      {
LABEL_20:
        v19 = sub_1C21705A4();
        __swift_project_value_buffer(v19, qword_1EDD4CB08);
        v20 = sub_1C2170584();
        v21 = sub_1C2170C54();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 67109120;
          *(v22 + 4) = v8;
          _os_log_impl(&dword_1C20AD000, v20, v21, "AES decryption of advertisement: %d", v22, 8u);
          MEMORY[0x1C6915360](v22, -1, -1);
        }

        v23 = 0;
        goto LABEL_24;
      }

LABEL_27:
      swift_once();
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C20FBA48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C20FBA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C20FBAF4(a1, a2, *(v3 + 16), *(v3 + 32));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
  }

  return result;
}

uint64_t sub_1C20FBAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23990, &qword_1C21772E0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23660, &qword_1C2176D10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v20 - v16;
  if (!a1)
  {
    sub_1C20EB3E8(a4, &v20 - v16, &qword_1EBF23660, &qword_1C2176D10);
    (*(v8 + 16))(v10, v17, v7);
    sub_1C20FBD40();
    sub_1C2170AD4();
    v19 = v21;
    goto LABEL_5;
  }

  v18 = v20 - a1 - a3;
  if (!__OFSUB__(v20 - a1, a3))
  {
    sub_1C20EB3E8(a4, &v20 - v16, &qword_1EBF23660, &qword_1C2176D10);
    sub_1C20EB3E8(v17, v14, &qword_1EBF23660, &qword_1C2176D10);
    sub_1C20FAAD0(&v21, a3 + a1, v18);
    v19 = v21;
LABEL_5:
    sub_1C20EB498(v17, &qword_1EBF23660, &qword_1C2176D10);
    return v19;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C20FBD40()
{
  result = qword_1EBF23998;
  if (!qword_1EBF23998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF23990, &qword_1C21772E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23998);
  }

  return result;
}

unint64_t sub_1C20FBDA4()
{
  result = qword_1EDD4AB88;
  if (!qword_1EDD4AB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF239A8, &qword_1C21772F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4AB88);
  }

  return result;
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

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1C20FBEA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1C20FBEE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C20FBF50(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 25444;
  }

  else
  {
    v3 = 1885434979;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (*a2)
  {
    v5 = 25444;
  }

  else
  {
    v5 = 1885434979;
  }

  if (*a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C2171324();
  }

  return v8 & 1;
}

uint64_t sub_1C20FBFE4()
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C20FC054(uint64_t a1)
{
  sub_1C21709B4();
}

uint64_t sub_1C20FC0B0(uint64_t a1)
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C20FC11C@<X0>(char *a2@<X8>)
{
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

  *a2 = v5;
  return result;
}

void sub_1C20FC17C(uint64_t *a1@<X8>)
{
  v2 = 1885434979;
  if (*v1)
  {
    v2 = 25444;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C20FC1CC()
{
  v1 = *v0;
  sub_1C2171434();
  MEMORY[0x1C69146F0](qword_1C2177738[v1]);
  return sub_1C2171454();
}

uint64_t sub_1C20FC254(uint64_t a1)
{
  v2 = *v1;
  sub_1C2171434();
  MEMORY[0x1C69146F0](qword_1C2177738[v2]);
  return sub_1C2171454();
}

void *sub_1C20FC2A0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2030100u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1C20FC2E0()
{
  v1 = 0xD00000000000001CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E6964646170;
  }
}

uint64_t sub_1C20FC348@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C20FCB08(a2, a3);
  *a1 = result;
  return result;
}

unint64_t sub_1C20FC388@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x2030100u >> (8 * result);
  if (result >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1C20FC3AC(uint64_t a1)
{
  v2 = sub_1C20FD1B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C20FC3E8(uint64_t a1)
{
  v2 = sub_1C20FD1B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C20FC424@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1C20FCC2C(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_1C20FC488(void *a1)
{
  v3 = v1;
  v5 = sub_1C21702C4();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF239C8, &qword_1C2177518);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20FD1B4();
  v12 = v8;
  sub_1C2171484();
  v43 = *v3;
  v37 = *v3;
  v44 = 0;
  sub_1C20FD294(&v43, v42);
  sub_1C20D8CEC();
  sub_1C2171264();
  if (v2)
  {
    sub_1C20B23C8(v37, *(&v37 + 1));
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v34 = v9;
    sub_1C20B23C8(v37, *(&v37 + 1));
    v14 = v3[4];
    v39 = v3[3];
    v40 = v14;
    v41 = *(v3 + 10);
    v15 = v3[2];
    v37 = v3[1];
    v38 = v15;
    sub_1C2170314();
    swift_allocObject();
    sub_1C2170304();
    (*(v35 + 104))(v7, *MEMORY[0x1E698F6D8], v36);
    sub_1C21702D4();
    sub_1C20FD304();
    v16 = sub_1C21702E4();
    v18 = v17;

    *&v37 = v16;
    *(&v37 + 1) = v18;
    v42[0] = 1;
    sub_1C2171294();
    v19 = *(v3 + 11);
    v20 = *(v19 + 16);
    v21 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      v32 = v16;
      v33 = v18;
      v35 = 0;
      v36 = v12;
      *&v37 = MEMORY[0x1E69E7CC0];
      sub_1C20E71CC(0, v20, 0);
      v21 = v37;
      v22 = (v19 + 32);
      v23 = *(v37 + 16);
      v24 = 16 * v23;
      do
      {
        if (*v22)
        {
          v25 = 25444;
        }

        else
        {
          v25 = 1885434979;
        }

        if (*v22)
        {
          v26 = 0xE200000000000000;
        }

        else
        {
          v26 = 0xE400000000000000;
        }

        *&v37 = v21;
        v27 = *(v21 + 24);
        v28 = v23 + 1;
        if (v23 >= v27 >> 1)
        {
          sub_1C20E71CC((v27 > 1), v23 + 1, 1);
          v21 = v37;
        }

        *(v21 + 16) = v28;
        v29 = v21 + v24;
        *(v29 + 32) = v25;
        *(v29 + 40) = v26;
        v24 += 16;
        ++v22;
        v23 = v28;
        --v20;
      }

      while (v20);
      v12 = v36;
      v16 = v32;
      v18 = v33;
    }

    *&v37 = v21;
    v42[0] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF236E0, &qword_1C2176D70);
    sub_1C20FD358(&qword_1EBF239E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1C2171294();
    v30 = v34;
    sub_1C20D3174(v16, v18);

    return (*(v30 + 8))(v11, v12);
  }
}

uint64_t sub_1C20FC930(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_1C20FC98C(v9, v10) & 1;
}

uint64_t sub_1C20FC98C(__int128 *a1, __int128 *a2)
{
  v4 = *a1;
  v18 = *a2;
  v19 = v4;
  v5 = v4;
  v6 = v18;
  if (*(&v4 + 1) >> 60 == 15)
  {
    if (*(&v18 + 1) >> 60 == 15)
    {
      sub_1C20FD294(&v19, v16);
      sub_1C20FD294(&v18, v16);
      sub_1C20B23C8(v5, *(&v5 + 1));
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (*(&v18 + 1) >> 60 == 15)
  {
LABEL_5:
    sub_1C20FD294(&v19, v16);
    sub_1C20FD294(&v18, v16);
    sub_1C20B23C8(v5, *(&v5 + 1));
    sub_1C20B23C8(v6, *(&v6 + 1));
LABEL_9:
    v12 = 0;
    return v12 & 1;
  }

  sub_1C20FD294(&v19, v16);
  sub_1C20FD294(&v18, v16);
  v7 = sub_1C21068CC(v5, *(&v5 + 1), v6, *(&v6 + 1));
  sub_1C20B23C8(v6, *(&v6 + 1));
  sub_1C20B23C8(v5, *(&v5 + 1));
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_7:
  v8 = a1[4];
  v16[2] = a1[3];
  v16[3] = v8;
  v17 = *(a1 + 10);
  v9 = a1[2];
  v16[0] = a1[1];
  v16[1] = v9;
  v10 = a2[4];
  v14[2] = a2[3];
  v14[3] = v10;
  v15 = *(a2 + 10);
  v11 = a2[2];
  v14[0] = a2[1];
  v14[1] = v11;
  if (!sub_1C212695C(v16, v14))
  {
    goto LABEL_9;
  }

  v12 = sub_1C2154748(*(a1 + 11), *(a2 + 11));
  return v12 & 1;
}

uint64_t sub_1C20FCB08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6964646170 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C2171324() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001C2185410 == a2 || (sub_1C2171324() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C2185430 == a2)
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

uint64_t sub_1C20FCC2C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF239B0, &unk_1C2177508);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - v7;
  v9 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1C20FD1B4();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v64);
  }

  v42 = v6;
  LOBYTE(v43) = 0;
  sub_1C20D8E24();
  sub_1C21711A4();
  v10 = v50;
  v41 = v49;
  LOBYTE(v43) = 1;
  sub_1C21711D4();
  v11 = v42;
  v39 = v5;
  v12 = v49;
  v13 = v50;
  sub_1C21702A4();
  swift_allocObject();
  sub_1C20D865C(v12, v13);
  sub_1C2170294();
  sub_1C20FD208();
  sub_1C2170274();
  v38 = v10;
  v36 = a2;
  sub_1C20D3174(v12, v13);

  v61 = v57[2];
  v62 = v57[3];
  v63 = v58;
  v59 = v57[0];
  v60 = v57[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF236E0, &qword_1C2176D70);
  LOBYTE(v43) = 2;
  sub_1C20FD358(&qword_1EBF23E10, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  result = sub_1C21711A4();
  v35 = v12;
  v15 = v49;
  if (v49)
  {
    v16 = 0;
    v17 = *(v49 + 16);
    v18 = v49 + 40;
    v37 = MEMORY[0x1E69E7CC0];
    v40 = v13;
    v34 = v49 + 40;
LABEL_6:
    v19 = v18 + 16 * v16;
    while (1)
    {
      if (v17 == v16)
      {

        sub_1C20D3174(v35, v13);
        v26 = v36;
        v27 = v37;
        goto LABEL_21;
      }

      if (v16 >= *(v15 + 16))
      {
        break;
      }

      ++v16;

      v20 = sub_1C2171134();

      if (!v20)
      {
        v11 = v42;
        goto LABEL_14;
      }

      v19 += 16;
      v21 = v20 == 1;
      v11 = v42;
      v13 = v40;
      if (v21)
      {
        LOBYTE(v20) = 1;
LABEL_14:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1C2115164(0, *(v37 + 2) + 1, 1, v37);
          v37 = result;
        }

        v23 = *(v37 + 2);
        v22 = *(v37 + 3);
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          v33 = v23 + 1;
          result = sub_1C2115164((v22 > 1), v23 + 1, 1, v37);
          v24 = v33;
          v37 = result;
        }

        v25 = v37;
        *(v37 + 2) = v24;
        v25[v23 + 32] = v20;
        v13 = v40;
        v18 = v34;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1C20D3174(v35, v13);
    v27 = &unk_1F419D3D8;
    v26 = v36;
LABEL_21:
    (*(v11 + 8))(v8, v39);
    v28 = v41;
    v29 = v38;
    *&v43 = v41;
    *(&v43 + 1) = v38;
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = v63;
    *(&v48 + 1) = v27;
    sub_1C20FD25C(&v43, &v49);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    v49 = v28;
    v50 = v29;
    v53 = v61;
    v54 = v62;
    v51 = v59;
    v52 = v60;
    v55 = v63;
    v56 = v27;
    result = sub_1C20EAF94(&v49);
    v30 = v46;
    v26[2] = v45;
    v26[3] = v30;
    v31 = v48;
    v26[4] = v47;
    v26[5] = v31;
    v32 = v44;
    *v26 = v43;
    v26[1] = v32;
  }

  return result;
}

unint64_t sub_1C20FD1B4()
{
  result = qword_1EBF239B8;
  if (!qword_1EBF239B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF239B8);
  }

  return result;
}

unint64_t sub_1C20FD208()
{
  result = qword_1EBF239C0;
  if (!qword_1EBF239C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF239C0);
  }

  return result;
}

uint64_t sub_1C20FD294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF239D0, &qword_1C2177520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C20FD304()
{
  result = qword_1EBF239D8;
  if (!qword_1EBF239D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF239D8);
  }

  return result;
}

uint64_t sub_1C20FD358(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBF236E0, &qword_1C2176D70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C20FD3E8()
{
  result = qword_1EBF239E8;
  if (!qword_1EBF239E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF239E8);
  }

  return result;
}

unint64_t sub_1C20FD440()
{
  result = qword_1EBF239F0;
  if (!qword_1EBF239F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF239F0);
  }

  return result;
}

unint64_t sub_1C20FD498()
{
  result = qword_1EBF239F8;
  if (!qword_1EBF239F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF239F8);
  }

  return result;
}

unint64_t sub_1C20FD4F0()
{
  result = qword_1EBF23A00;
  if (!qword_1EBF23A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23A00);
  }

  return result;
}

uint64_t sub_1C20FD544@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  sub_1C2170314();
  swift_allocObject();
  sub_1C2170304();
  v6 = v1[1];
  v15 = *v1;
  v16 = v6;
  v17[0] = v1[2];
  *(v17 + 15) = *(v1 + 47);
  sub_1C21005E8();
  v7 = sub_1C21702E4();
  v9 = v8;

  v10 = sub_1C20FFAF0(v7, v9);
  *&v15 = 0x2F3A4F444946;
  *(&v15 + 1) = 0xE600000000000000;
  MEMORY[0x1C6913CB0](v10);

  sub_1C2170014();

  v11 = sub_1C2170024();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1C20D3174(v7, v9);
    return (*(v12 + 32))(a1, v5, v11);
  }

  return result;
}

unint64_t sub_1C20FD728@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C20B031C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C20FD754()
{
  v1 = *v0;
  v2 = 0x654B63696C627570;
  v3 = 0x54746E6572727563;
  v4 = 0xD000000000000021;
  if (v1 != 4)
  {
    v4 = 0x5474736575716572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x697274656D6D7973;
  if (v1 != 1)
  {
    v5 = 0xD00000000000001CLL;
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

uint64_t sub_1C20FD830@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C20FFEBC(a2, a3);
  *a1 = result;
  return result;
}

unint64_t sub_1C20FD864@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C20B031C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C20FD88C(uint64_t a1)
{
  v2 = sub_1C2100498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C20FD8C8(uint64_t a1)
{
  v2 = sub_1C2100498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C20FD904(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v53 = xmmword_1C2176980;
  v8 = sub_1C2170D34();
  if ((v9 & 1) == 0)
  {
    v16 = a1;
    v46 = a4;
    while (v8 >> 14 >= v16 >> 14)
    {
      v10 = v8;
      v25 = sub_1C2170D64();
      if ((v25 ^ v26) < 0x4000)
      {
        goto LABEL_33;
      }

      v29 = v25;
      v30 = v26;
      v31 = v27;
      v32 = v28;
      result = sub_1C20FF3CC(v25, v26, v27, v28, 10);
      if ((v33 & 0x100) != 0)
      {
        result = sub_1C20FE9C8(v29, v30, v31, v32, 10);
        if (v34)
        {
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }
      }

      else if (v33)
      {
        goto LABEL_13;
      }

      v17 = sub_1C212E50C(1, result);
      sub_1C20FDCC4(1, v17, v18, &v51);
      v19 = v51;
      v20 = v52;
      v49 = MEMORY[0x1E6969080];
      v50 = MEMORY[0x1E6969078];
      v47 = v51;
      v48 = v52;
      v21 = __swift_project_boxed_opaque_existential_1(&v47, MEMORY[0x1E6969080]);
      v23 = *v21;
      v22 = v21[1];
      sub_1C20D865C(v19, v20);
      sub_1C2106434(v23, v22, &v53);

      sub_1C20D3174(v19, v20);
      __swift_destroy_boxed_opaque_existential_0Tm(&v47);
      a4 = v46;
      v8 = sub_1C2170D34();
      v16 = v10;
      if (v24)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v10 = a1;
LABEL_3:
  if (v10 >> 14 >= a2 >> 14)
  {
    return v53;
  }

  a3 = sub_1C2170D64();
  a2 = v11;
  a1 = v12;
  a4 = v13;
  result = sub_1C2170D54();
  if (qword_1F419CD90 == result)
  {
    v15 = 7;
    goto LABEL_24;
  }

LABEL_14:
  if (qword_1F419CD98 == result)
  {
    v15 = 6;
    goto LABEL_24;
  }

  if (qword_1F419CDA0 == result)
  {
    v15 = 5;
    goto LABEL_24;
  }

  if (qword_1F419CDA8 == result)
  {
    v15 = 4;
    goto LABEL_24;
  }

  if (qword_1F419CDB0 == result)
  {
    v15 = 3;
    goto LABEL_24;
  }

  if (qword_1F419CDB8 != result)
  {
LABEL_34:

    sub_1C20D3174(v53, *(&v53 + 1));
    return 0;
  }

  v15 = 2;
LABEL_24:
  if ((a3 ^ a2) < 0x4000)
  {
    __break(1u);
    goto LABEL_36;
  }

  result = sub_1C20FF3CC(a3, a2, a1, a4, 10);
  if ((v35 & 0x100) != 0)
  {

    v36 = sub_1C20FE9C8(a3, a2, a1, a4, 10);
    v38 = v37;

    if ((v38 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_36:
    __break(1u);
    return result;
  }

  if (v35)
  {
    goto LABEL_36;
  }

  v36 = result;
LABEL_29:
  v39 = sub_1C212E50C(1, v36);
  sub_1C20F8C74(v15, v39, v40, &v51);
  v41 = v51;
  v42 = v52;
  v49 = MEMORY[0x1E6969080];
  v50 = MEMORY[0x1E6969078];
  v47 = v51;
  v48 = v52;
  v43 = __swift_project_boxed_opaque_existential_1(&v47, MEMORY[0x1E6969080]);
  v44 = *v43;
  v45 = v43[1];
  sub_1C20D865C(v41, v42);
  sub_1C2106434(v44, v45, &v53);
  sub_1C20D3174(v41, v42);

  __swift_destroy_boxed_opaque_existential_0Tm(&v47);
  return v53;
}

uint64_t sub_1C20FDCC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
      v11 = __OFSUB__(v9, v10);
      v8 = v9 - v10;
      if (v11)
      {
        __break(1u);
        goto LABEL_9;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_12:
    v12 = v8 - result;
    if (!__OFSUB__(v8, result))
    {
      if (v7 > 1)
      {
        if (v7 == 2)
        {
          v14 = *(a2 + 16);
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
          v14 = 0;
        }
      }

      else
      {
        if (v7)
        {
          v13 = a2 >> 32;
        }

        else
        {
          v13 = BYTE6(a3);
        }

        if (v7)
        {
          v14 = a2;
        }

        else
        {
          v14 = 0;
        }
      }

      v15 = sub_1C20FA9B8(v14, v13, a2, a3);
      if (v12 >= 1 && (v15 & 0x8000000000000000) == 0 && v12 > v15)
      {
        if (v7 <= 1)
        {
          if (!v7)
          {
            goto LABEL_40;
          }

          v16 = a2 >> 32;
          goto LABEL_38;
        }

        if (v7 != 2)
        {
          goto LABEL_40;
        }

        v16 = *(a2 + 24);
LABEL_36:
        result = *(a2 + 16);
        goto LABEL_39;
      }

      v16 = sub_1C20FAA6C(v14, v12 & ~(v12 >> 63), a2, a3);
      result = 0;
      if (v7 > 1)
      {
        if (v7 != 3)
        {
          goto LABEL_36;
        }
      }

      else if (v7)
      {
LABEL_38:
        result = a2;
      }

LABEL_39:
      if (v16 >= result)
      {
LABEL_40:
        v17 = sub_1C2170124();
        v19 = v18;
        result = sub_1C20D3174(a2, a3);
        *a4 = v17;
        a4[1] = v19;
        return result;
      }

      goto LABEL_44;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (!v7)
  {
    v8 = BYTE6(a3);
    goto LABEL_12;
  }

LABEL_9:
  LODWORD(v8) = HIDWORD(a2) - a2;
  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    v8 = v8;
    goto LABEL_12;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1C20FDE64(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23A18, &qword_1C2177900);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = v9;
  v21 = *(v1 + 32);
  v15 = *(v1 + 40);
  LODWORD(v9) = *(v1 + 48);
  v13 = *(v1 + 49);
  v14 = v9;
  HIDWORD(v12) = *(v1 + 50);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20D865C(v7, v8);
  sub_1C2100498();
  sub_1C2171484();
  v19 = v7;
  v20 = v8;
  v22 = 0;
  sub_1C20D8CEC();
  v10 = v18;
  sub_1C2171294();
  if (v10)
  {
    sub_1C20D3174(v19, v20);
  }

  else
  {
    sub_1C20D3174(v19, v20);
    v19 = v17;
    v20 = v16;
    v22 = 1;
    sub_1C20D865C(v17, v16);
    sub_1C2171294();
    sub_1C20D3174(v19, v20);
    LOBYTE(v19) = 2;
    sub_1C21712B4();
    LOBYTE(v19) = 3;
    sub_1C2171244();
    LOBYTE(v19) = 4;
    sub_1C2171234();
    LOBYTE(v19) = BYTE4(v12);
    v22 = 5;
    sub_1C2100540();
    sub_1C2171264();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1C20FE120@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23A08, &qword_1C21778F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2100498();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v24 = a2;
  LOBYTE(v25[0]) = 0;
  sub_1C20D8E24();
  sub_1C21711D4();
  v9 = v27[0];
  LOBYTE(v25[0]) = 1;
  sub_1C21711D4();
  v23 = v27[0];
  LOBYTE(v27[0]) = 2;
  v22 = sub_1C21711F4();
  LOBYTE(v27[0]) = 3;
  v10 = sub_1C2171184();
  v33 = v11 & 1;
  LOBYTE(v27[0]) = 4;
  v21 = sub_1C2171174();
  v34 = 5;
  sub_1C21004EC();
  sub_1C21711A4();
  (*(v6 + 8))(v8, v5);
  v25[0] = v9;
  v12 = v23;
  v25[1] = v23;
  v13 = v21;
  v26[0] = v22;
  v14 = v10;
  *&v26[8] = v10;
  v19 = v35;
  v20 = v33;
  v26[16] = v33;
  v26[17] = v21;
  v26[18] = v35;
  v15 = v23;
  v16 = v24;
  *v24 = v9;
  v16[1] = v15;
  v16[2] = *v26;
  *(v16 + 47) = *&v26[15];
  sub_1C20F1ED4(v25, v27);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v27[0] = v9;
  v27[1] = v12;
  v28 = v22;
  v29 = v14;
  v30 = v20;
  v31 = v13;
  v32 = v19;
  return sub_1C20EB700(v27);
}

uint64_t static _ASCABLEQRCodeUtilities.isPasskeyURL(_:)()
{
  sub_1C2170004();
  if (!v0)
  {
    return 0;
  }

  v1 = sub_1C2170984();
  v3 = v2;

  if (v1 == 1868851558 && v3 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v5 = sub_1C2171324();

    return v5 & 1;
  }
}

id _ASCABLEQRCodeUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C20FE954(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232F0, &unk_1C2176950);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1C20FE9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_1C2100594();

  result = sub_1C2170AB4();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1C20FEF58(result, v7);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C2170FA4();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1C20FEF58(uint64_t a1, unint64_t a2)
{
  v2 = sub_1C2170AC4();
  v6 = sub_1C20FEFD8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1C20FEFD8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1C2170D44();
    if (!v9 || (v10 = v9, v11 = sub_1C20FE954(v9, 0), v12 = sub_1C20FF130(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1C21709A4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C21709A4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1C2170FA4();
LABEL_4:

  return sub_1C21709A4();
}

unint64_t sub_1C20FF130(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1C20FF350(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C2170A74();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1C2170FA4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1C20FF350(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1C2170A44();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1C20FF350(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C2170A84();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1C6913D00](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1C20FF3CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1C2170FA4();
  }

  result = sub_1C20FF684(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_1C20FF498(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v20 = *(a1 + 50);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v22 = *(a2 + 49);
  v23 = *(a1 + 49);
  v21 = *(a2 + 50);
  if (!sub_1C21068CC(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v12 = sub_1C21068CC(v2, v3, v7, v8);
  result = 0;
  if (v12 && v4 == v9)
  {
    if (v6)
    {
      if (!v11)
      {
        return 0;
      }
    }

    else
    {
      if (v5 == v10)
      {
        v14 = v11;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        return 0;
      }
    }

    if (v23 == 2)
    {
      if (v22 != 2)
      {
        return 0;
      }

LABEL_16:
      if (v20 == 3)
      {
        if (v21 == 3)
        {
          return 1;
        }
      }

      else if (v21 != 3)
      {
        if (v20)
        {
          if (v20 == 1)
          {
            v15 = 0xE200000000000000;
            v16 = 25453;
          }

          else
          {
            v15 = 0xE300000000000000;
            v16 = 7365476;
          }
        }

        else
        {
          v15 = 0xE200000000000000;
          v16 = 24935;
        }

        if (v21)
        {
          if (v21 == 1)
          {
            v17 = 0xE200000000000000;
            v18 = 25453;
          }

          else
          {
            v17 = 0xE300000000000000;
            v18 = 7365476;
          }
        }

        else
        {
          v17 = 0xE200000000000000;
          v18 = 24935;
        }

        if (v16 == v18 && v15 == v17)
        {
        }

        else
        {
          v19 = sub_1C2171324();

          if ((v19 & 1) == 0)
          {
            return 0;
          }
        }

        return 1;
      }

      return 0;
    }

    result = 0;
    if (v22 != 2 && ((v22 ^ v23) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1C20FF684(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1C20FF350(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1C2170A64();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1C20FF350(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1C20FF350(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_1C2170A64();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_1C20FFAF0(uint64_t result, unint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = a2 >> 62;
  v5 = __OFSUB__(HIDWORD(result), result);
  v38 = v5;
  v37 = HIDWORD(result) - result;
  v6 = BYTE6(a2);
  do
  {
    if (v4 > 1)
    {
      if (v4 != 2)
      {
        goto LABEL_20;
      }

      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      v10 = __OFSUB__(v8, v9);
      v7 = v8 - v9;
      if (v10)
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      v7 = v6;
      if (v4)
      {
        v7 = v37;
        if (v38)
        {
          goto LABEL_46;
        }
      }
    }

    v11 = v3 + 7;
    if (v7 < v3 + 7)
    {
      goto LABEL_15;
    }

    v12 = sub_1C2170124();
    v13 = sub_1C212DE0C(v12);
    v14 = sub_1C21712E4();
    MEMORY[0x1C6913CB0](v14);

    MEMORY[0x1C6913CB0](25708, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23A28, &qword_1C2177908);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C21768E0;
    *(v15 + 56) = MEMORY[0x1E69E76D8];
    *(v15 + 64) = MEMORY[0x1E69E7738];
    *(v15 + 32) = v13;
    v16 = sub_1C2170944();
    v18 = v17;

    MEMORY[0x1C6913CB0](v16, v18);

    v3 += 7;
  }

  while (!__OFADD__(v11, 7));
  __break(1u);
LABEL_15:
  v19 = v6;
  if (!v4)
  {
LABEL_23:
    if (v3 >= v19)
    {
      return 0;
    }

    if (v4)
    {
      if (v4 == 2)
      {
        v22 = *(v2 + 16);
        v6 = *(v2 + 24);
      }

      else
      {
        v22 = v2;
        v6 = v2 >> 32;
      }
    }

    else
    {
      v22 = 0;
    }

LABEL_29:
    if (v6 >= v3 && v6 >= v22)
    {
      result = sub_1C2170124();
      v24 = v23 >> 62;
      if ((v23 >> 62) > 1)
      {
        if (v24 != 2)
        {
          v25 = 0;
          goto LABEL_41;
        }

        v27 = *(result + 16);
        v26 = *(result + 24);
        v10 = __OFSUB__(v26, v27);
        v25 = v26 - v27;
        if (!v10)
        {
LABEL_41:
          v10 = __OFSUB__(v25, 1);
          v28 = v25 - 1;
          if (!v10)
          {
            if (v28 <= 5)
            {
              v29 = result;
              v30 = v23;
              sub_1C20D865C(result, v23);
              v31 = sub_1C212DE0C(v29);
              v32 = sub_1C21712E4();
              MEMORY[0x1C6913CB0](v32);

              MEMORY[0x1C6913CB0](25708, 0xE200000000000000);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23A28, &qword_1C2177908);
              v33 = swift_allocObject();
              *(v33 + 16) = xmmword_1C21768E0;
              *(v33 + 56) = MEMORY[0x1E69E76D8];
              *(v33 + 64) = MEMORY[0x1E69E7738];
              *(v33 + 32) = v31;
              v34 = sub_1C2170944();
              v36 = v35;

              MEMORY[0x1C6913CB0](v34, v36);

              sub_1C20D3174(v29, v30);
              return 0;
            }

            goto LABEL_49;
          }

LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        __break(1u);
      }

      else if (!v24)
      {
        v25 = BYTE6(v23);
        goto LABEL_41;
      }

      LODWORD(v25) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        goto LABEL_51;
      }

      v25 = v25;
      goto LABEL_41;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v4 == 2)
  {
    v21 = *(v2 + 16);
    v20 = *(v2 + 24);
    v10 = __OFSUB__(v20, v21);
    v19 = v20 - v21;
    if (!v10)
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_20:
    if (v3 < 0)
    {
      v6 = 0;
      v22 = 0;
      goto LABEL_29;
    }

    return 0;
  }

  v19 = v37;
  if (!v38)
  {
    goto LABEL_23;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1C20FFEBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654B63696C627570 && a2 == 0xE900000000000079;
  if (v4 || (sub_1C2171324() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697274656D6D7973 && a2 == 0xEC00000079654B63 || (sub_1C2171324() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001C21854D0 == a2 || (sub_1C2171324() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54746E6572727563 && a2 == 0xEB00000000656D69 || (sub_1C2171324() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001C21854F0 == a2 || (sub_1C2171324() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5474736575716572 && a2 == 0xEB00000000657079)
  {

    return 5;
  }

  else
  {
    v6 = sub_1C2171324();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t _s26AuthenticationServicesCore23_ASCABLEQRCodeUtilitiesC14passkeyURLType4fromSo010_ASPasskeyG0V10Foundation3URLV_tFZ_0(uint64_t a1)
{
  v2 = sub_1C2170024();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2170004();
  if (!v6)
  {
    return 0;
  }

  v7 = sub_1C2170984();
  v9 = v8;

  if (v7 == 1868851558 && v9 == 0xE400000000000000)
  {
  }

  else
  {
    v10 = sub_1C2171324();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  (*(v3 + 16))(v5, a1, v2);
  v11 = sub_1C216FFF4();
  v13 = sub_1C212C9F8(1uLL, v11, v12);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = sub_1C20FD904(v13, v15, v17, v19);
  v22 = v21;

  if (v22 >> 60 != 15)
  {
    sub_1C21702A4();
    swift_allocObject();
    sub_1C2170294();
    sub_1C20EB6AC();
    sub_1C2170274();
    (*(v3 + 8))(v5, v2);
    sub_1C20B23C8(v20, v22);

    v24[0] = v26;
    v24[1] = v27;
    *v25 = *v28;
    *&v25[15] = *&v28[15];
    sub_1C20EB700(v24);
    return qword_1C2177B10[v25[18]];
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C21003D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 51))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 49);
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

uint64_t sub_1C2100430(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *(result + 49) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1C2100498()
{
  result = qword_1EDD4ABB8;
  if (!qword_1EDD4ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4ABB8);
  }

  return result;
}

unint64_t sub_1C21004EC()
{
  result = qword_1EBF23A10;
  if (!qword_1EBF23A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23A10);
  }

  return result;
}

unint64_t sub_1C2100540()
{
  result = qword_1EDD4ABC0;
  if (!qword_1EDD4ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4ABC0);
  }

  return result;
}

unint64_t sub_1C2100594()
{
  result = qword_1EBF23A20;
  if (!qword_1EBF23A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23A20);
  }

  return result;
}

unint64_t sub_1C21005E8()
{
  result = qword_1EDD4ABC8;
  if (!qword_1EDD4ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4ABC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASCABLEQRCode.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASCABLEQRCode.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C21007A0()
{
  result = qword_1EBF23A30;
  if (!qword_1EBF23A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23A30);
  }

  return result;
}

unint64_t sub_1C21007F8()
{
  result = qword_1EBF23A38;
  if (!qword_1EBF23A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23A38);
  }

  return result;
}

unint64_t sub_1C2100850()
{
  result = qword_1EDD4ABD0;
  if (!qword_1EDD4ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4ABD0);
  }

  return result;
}

unint64_t sub_1C21008A8()
{
  result = qword_1EDD4ABD8;
  if (!qword_1EDD4ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4ABD8);
  }

  return result;
}

uint64_t sub_1C210090C(void *a1)
{
  sub_1C216FD44();
  swift_allocObject();
  sub_1C216FD34();
  type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs();
  sub_1C2106E60(&unk_1EDD4ABE0, v2, type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs, &protocol conformance descriptor for ASCPublicKeyCredentialAssertionExtensionInputs);
  v3 = sub_1C216FD24();
  v5 = v4;

  v6 = sub_1C2170154();
  v7 = sub_1C21708F4();
  [a1 encodeObject:v6 forKey:v7];

  return sub_1C20D3174(v3, v5);
}

id ASCPublicKeyCredentialAssertionExtensionInputs.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_1C20D36A0();
  v2 = sub_1C2170CC4();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1C2170174();
    v6 = v5;

    sub_1C216FCE4();
    swift_allocObject();
    sub_1C216FCD4();
    sub_1C2106E60(&unk_1EDD4ABF0, v7, type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs, &protocol conformance descriptor for ASCPublicKeyCredentialAssertionExtensionInputs);
    sub_1C216FCC4();

    v16 = objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs());
    v17 = sub_1C2106A34(v19);

    sub_1C20D3174(v4, v6);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v17;
  }

  else
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v8 = sub_1C21705A4();
    __swift_project_value_buffer(v8, qword_1EDD4CB08);
    v9 = sub_1C2170584();
    v10 = sub_1C2170C54();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136446210;
      v13 = sub_1C21714E4();
      v15 = sub_1C20D7F2C(v13, v14, &v19);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1C20AD000, v9, v10, "Could not find encoded json for %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x1C6915360](v12, -1, -1);
      MEMORY[0x1C6915360](v11, -1, -1);
    }

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id ASCPublicKeyCredentialAssertionExtensionInputs.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ASCPublicKeyCredentialAssertionExtensionInputs.init()()
{
  *&v0[OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_largeBlob] = xmmword_1C2177B30;
  v1 = &v0[OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_prf];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  *(v1 + 5) = 1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs();
  return objc_msgSendSuper2(&v3, sel_init);
}

BOOL sub_1C21010FC()
{
  v1 = v0 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_largeBlob;
  swift_beginAccess();
  if (*(v1 + 8) >> 60 != 11)
  {
    return 1;
  }

  v2 = v0 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_prf;
  swift_beginAccess();
  return *(v2 + 40) != 1;
}

uint64_t sub_1C2101184(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1C2170AA4();
  v5 = v4;
  v6 = (v1 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_largeBlob);
  swift_beginAccess();
  v7 = v6[1];
  if (v7 >> 60 != 11)
  {
    v8 = *v6;
    sub_1C20B22B8(*v6, v7);
    sub_1C2170F34();
    MEMORY[0x1C6913CB0](v3, v5);
    MEMORY[0x1C6913CB0](0x6F6C42656772616CLL, 0xEB00000000203A62);
    sub_1C2171034();
    MEMORY[0x1C6913CB0](10, 0xE100000000000000);
    MEMORY[0x1C6913CB0](0, 0xE000000000000000);

    sub_1C2106BFC(v8, v7);
  }

  v9 = (v2 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_prf);
  swift_beginAccess();
  v10 = v9[5];
  if (v10 != 1)
  {
    v12 = v9[3];
    v11 = v9[4];
    v14 = v9[1];
    v13 = v9[2];
    v15 = *v9;
    sub_1C20D860C(*v9, v14, v13, v12, v11);

    MEMORY[0x1C6913CB0](v3, v5);
    MEMORY[0x1C6913CB0](0x203A667270, 0xE500000000000000);
    sub_1C2171034();
    MEMORY[0x1C6913CB0](10, 0xE100000000000000);
    MEMORY[0x1C6913CB0](0, 0xE000000000000000);

    sub_1C2106BB8(v15, v14, v13, v12, v11, v10);
  }

  MEMORY[0x1C6913CB0](0xA656E6F4ELL, 0xE500000000000000);
  return v3;
}

uint64_t sub_1C2101520()
{
  v1 = v0 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_largeBlob;
  swift_beginAccess();
  v2 = *(v1 + 8) >> 60 != 11;
  v3 = v0 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_prf;
  swift_beginAccess();
  if (*(v3 + 40) == 1)
  {
    return v2;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1C21015AC()
{
  swift_getObjectType();
  v1 = (v0 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_largeBlob);
  swift_beginAccess();
  v2 = v1[1];
  if (v2 >> 60 == 11)
  {
    return 0;
  }

  v16 = *v1;
  v3 = v16;
  v17 = v2;
  sub_1C20B22B8(v16, v2);
  sub_1C2101898(&v18);
  *&v14[0] = v19;
  *(v14 + 8) = v20;
  *(&v14[1] + 1) = v21;
  LOBYTE(v15[0]) = v22;
  *(v15 + 8) = 0u;
  *(&v15[1] + 8) = 0u;
  *(&v15[2] + 1) = 1;
  v9 = v14[1];
  v10 = v15[0];
  v11 = v15[1];
  v12 = v15[2];
  v13 = v18;
  v7 = v18;
  v8 = v14[0];
  v6 = 1;
  v4 = ASCTAPExtensionInput.encode(for:)(&v6);
  sub_1C2106BFC(v3, v2);
  sub_1C20D8758(&v13);
  return v4;
}

void sub_1C2101898(uint64_t a1@<X8>)
{
  v3 = v1[1];
  if (v3 >> 60 == 15)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 24) = xmmword_1C21769B0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 1;
    return;
  }

  v5 = *v1;
  sub_1C20D865C(v5, v3);
  v6 = sub_1C2170044();
  if (v2)
  {
    sub_1C20B23C8(v5, v3);
    return;
  }

  v8 = v3 >> 62;
  v9 = v7;
  v10 = v6;
  if ((v3 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_16;
    }

    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    sub_1C20B23C8(v5, v3);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
LABEL_14:
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

      __break(1u);
LABEL_16:
      sub_1C20B23C8(v5, v3);
      v11 = 0;
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v8)
  {
    sub_1C20B23C8(v5, v3);
    v11 = BYTE6(v3);
LABEL_17:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 2;
    *(a1 + 24) = v10;
    *(a1 + 32) = v9;
    *(a1 + 40) = v11;
    *(a1 + 48) = 0;
    return;
  }

  sub_1C20B23C8(v5, v3);
  LODWORD(v11) = HIDWORD(v5) - v5;
  if (!__OFSUB__(HIDWORD(v5), v5))
  {
    v11 = v11;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_1C2101A0C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = (v0 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_largeBlob);
  swift_beginAccess();
  v3 = v2[1];
  if (v3 >> 60 == 11)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    v23 = 1;
  }

  else
  {
    *&v27[0] = *v2;
    *(&v27[0] + 1) = v3;
    sub_1C20B22B8(*&v27[0], v3);
    sub_1C2101898(&v29);
    sub_1C20B23C8(*&v27[0], v3);
    v23 = *(&v29 + 1);
    v4 = v29;
    v5 = v30;
    v6 = *(&v30 + 1);
    v25 = *(&v31 + 1);
    v26 = v31;
    v24 = v32;
  }

  v22 = v6;
  v7 = v1 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_prf;
  swift_beginAccess();
  v8 = *(v7 + 40);
  if (v8 == 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 1;
  }

  else
  {
    v15 = *(v7 + 16);
    v14 = *(v7 + 24);
    v17 = *v7;
    v16 = *(v7 + 8);
    v18 = *(v7 + 32);
    *&v29 = v17;
    *(&v29 + 1) = v16;
    *&v30 = v15;
    *(&v30 + 1) = v14;
    LOBYTE(v31) = v18;
    *(&v31 + 1) = v8;
    sub_1C20D860C(v17, v16, v15, v14, v18);

    sub_1C2101EA8(v35);
    sub_1C20D8708(v17, v16, v15, v14, v18);

    v9 = v35[0];
    v10 = v35[1];
    v11 = v35[2];
    v12 = v35[3];
    v13 = v35[4];
  }

  *&v29 = v4;
  *(&v29 + 1) = v23;
  *&v30 = v5;
  *(&v30 + 1) = v22;
  *&v31 = v26;
  *(&v31 + 1) = v25;
  LOBYTE(v32) = v24;
  *(&v32 + 1) = v9;
  *&v33 = v10;
  *(&v33 + 1) = v11;
  *&v34 = v12;
  *(&v34 + 1) = v13;
  v28 = 0;
  sub_1C20D87AC(v4, v23, v5, v22, v26);
  sub_1C20D87FC(v9, v10, v11, v12, v13);
  v19 = ASCTAPExtensionInput.encode(for:)(&v28);
  v27[2] = v31;
  v27[3] = v32;
  v27[4] = v33;
  v27[5] = v34;
  v27[0] = v29;
  v27[1] = v30;
  v20 = v19;
  sub_1C20D8758(v27);
  sub_1C20D8840(v4, v23, v5, v22, v26);
  sub_1C20D8890(v9, v10, v11, v12, v13);
  return v20;
}

void *sub_1C2101EA8@<X0>(uint64_t *a1@<X8>)
{
  v139 = *MEMORY[0x1E69E9840];
  v3 = sub_1C2170844();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v110 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v122 = &v98 - v7;
  v121 = sub_1C2170724();
  v8 = *(v121 - 8);
  v9 = MEMORY[0x1EEE9AC00](v121);
  v104 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v113 = &v98 - v12;
  v13 = *(v1 + 32);
  v14 = *(v1 + 40);
  v126 = v3;
  v120 = v14;
  if (v13 == 2)
  {
    v112 = 0;
    v15 = 0;
    v16 = 0;
    v111 = 0xF000000000000000;
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_80:
    v17 = 0;
    goto LABEL_81;
  }

  v91 = *(v1 + 16);
  v90 = *(v1 + 24);
  v92 = *(v1 + 8);
  *&v135 = *v1;
  v93 = v135;
  *(&v135 + 1) = v92;
  v136 = v91;
  v137 = v90;
  LOBYTE(v138) = v13 & 1;
  sub_1C20D865C(v135, v92);
  sub_1C20B22B8(v91, v90);
  v112 = ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues.salt1.getter();
  v111 = v94;
  *&v131 = v93;
  *(&v131 + 1) = v92;
  v132 = v91;
  v133 = v90;
  v134 = v13 & 1;
  v15 = ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues.salt2.getter();
  v16 = v95;
  v96 = v93;
  v14 = v120;
  result = sub_1C20D8708(v96, v92, v91, v90, v13);
  if (!v14)
  {
    goto LABEL_80;
  }

LABEL_3:
  v98 = v16;
  v99 = v15;
  v100 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232D8, &unk_1C2176500);
  result = sub_1C21710E4();
  v17 = result;
  v18 = 0;
  v125 = 0;
  v19 = v14 + 64;
  v20 = 1 << *(v14 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v14 + 64);
  v23 = (v20 + 63) >> 6;
  v116 = (v4 + 8);
  v115 = (v8 + 16);
  v114 = (v8 + 8);
  v24 = result + 8;
  v106 = result;
  v105 = result + 8;
  v107 = v23;
  if (v22)
  {
    goto LABEL_6;
  }

LABEL_7:
  v26 = v18;
  while (1)
  {
    v18 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    if (v18 >= v23)
    {
      break;
    }

    v27 = *(v19 + 8 * v18);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v22 = (v27 - 1) & v27;
      while (2)
      {
        v28 = v25 | (v18 << 6);
        v29 = *(*(v14 + 48) + 16 * v28);
        v30 = *(v14 + 56) + 40 * v28;
        v31 = *v30;
        v128 = *(v30 + 16);
        v129 = v31;
        LOBYTE(v30) = *(v30 + 32);
        v127 = v29;
        if (v30)
        {
          sub_1C20D865C(v29, *(&v29 + 1));
          sub_1C20D865C(v129, *(&v129 + 1));
          result = sub_1C20B22B8(v128, *(&v128 + 1));
          v32 = v127;
          goto LABEL_75;
        }

        sub_1C20D865C(v29, *(&v29 + 1));
        v33 = *(&v129 + 1);
        v124 = v129;
        sub_1C20D865C(v129, *(&v129 + 1));
        v123 = v128;
        sub_1C20B22B8(v128, *(&v128 + 1));
        if (qword_1EBF230B8 != -1)
        {
          swift_once();
        }

        v34 = xmmword_1EBF23A40;
        v131 = xmmword_1EBF23A40;
        v137 = MEMORY[0x1E6969080];
        v138 = MEMORY[0x1E6969078];
        v135 = v129;
        v35 = __swift_project_boxed_opaque_existential_1(&v135, MEMORY[0x1E6969080]);
        v36 = *v35;
        v37 = v35[1];
        v38 = v37 >> 62;
        v119 = v22;
        if ((v37 >> 62) <= 1)
        {
          if (!v38)
          {
            v130[0] = v36;
            LOWORD(v130[1]) = v37;
            BYTE2(v130[1]) = BYTE2(v37);
            BYTE3(v130[1]) = BYTE3(v37);
            BYTE4(v130[1]) = BYTE4(v37);
            BYTE5(v130[1]) = BYTE5(v37);
            sub_1C20D865C(v124, v33);
            sub_1C20D865C(v34, *(&v34 + 1));
            goto LABEL_29;
          }

          v41 = v36;
          if (v36 >> 32 >= v36)
          {
            sub_1C20D865C(v124, v33);
            sub_1C20D865C(v34, *(&v34 + 1));
            if (!sub_1C216FDD4() || !__OFSUB__(v41, sub_1C216FE04()))
            {
LABEL_23:
              sub_1C216FDF4();
              goto LABEL_29;
            }

LABEL_90:
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
          }

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

        if (v38 == 2)
        {
          v39 = *(v36 + 16);
          v40 = *(v36 + 24);
          sub_1C20D865C(v124, v33);
          sub_1C20D865C(v34, *(&v34 + 1));
          if (!sub_1C216FDD4() || !__OFSUB__(v39, sub_1C216FE04()))
          {
            if (!__OFSUB__(v40, v39))
            {
              goto LABEL_23;
            }

            goto LABEL_85;
          }

          goto LABEL_88;
        }

        memset(v130, 0, 14);
        sub_1C20D865C(v124, v33);
        sub_1C20D865C(v34, *(&v34 + 1));
LABEL_29:
        sub_1C2170114();
        __swift_destroy_boxed_opaque_existential_0Tm(&v135);
        v42 = *(&v131 + 1);
        v43 = v131;
        v44 = sub_1C2106E60(&qword_1EDD4A7A0, 255, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
        v45 = v122;
        sub_1C2170704();
        v46 = v42 >> 62;
        v118 = v33;
        if ((v42 >> 62) > 1)
        {
          if (v46 == 2)
          {
            v108 = v28;
            v47 = v44;
            v48 = *(v43 + 16);
            *&v129 = *(v43 + 24);

            if (sub_1C216FDD4() && __OFSUB__(v48, sub_1C216FE04()))
            {
              goto LABEL_89;
            }

            v45 = v122;
            if (__OFSUB__(v129, v48))
            {
              goto LABEL_87;
            }

            sub_1C216FDF4();
            v50 = v126;
            v44 = v47;
            sub_1C21706E4();
            sub_1C20D3174(v43, v42);
            v28 = v108;
          }

          else
          {
            *(&v135 + 6) = 0;
            *&v135 = 0;
LABEL_41:
            v50 = v126;
            sub_1C21706E4();
            sub_1C20D3174(v43, v42);
          }
        }

        else
        {
          if (!v46)
          {
            *&v135 = v43;
            WORD4(v135) = v42;
            BYTE10(v135) = BYTE2(v42);
            BYTE11(v135) = BYTE3(v42);
            BYTE12(v135) = BYTE4(v42);
            BYTE13(v135) = BYTE5(v42);
            goto LABEL_41;
          }

          *&v129 = v19;
          if (v43 >> 32 < v43)
          {
            goto LABEL_86;
          }

          if (sub_1C216FDD4() && __OFSUB__(v43, sub_1C216FE04()))
          {
            goto LABEL_91;
          }

          v49 = v126;
          sub_1C216FDF4();
          v45 = v122;
          sub_1C21706E4();
          sub_1C20D3174(v43, v42);
          v19 = v129;
          v50 = v49;
        }

        v51 = v113;
        v117 = v44;
        sub_1C21706F4();
        sub_1C20D3174(v43, v42);
        v109 = *v116;
        v109(v45, v50);
        v52 = v121;
        v137 = v121;
        v53 = sub_1C2106E60(&qword_1EBF232E8, 255, MEMORY[0x1E69663E0], MEMORY[0x1E69663D0]);
        v138 = v53;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v135);
        v55 = *v115;
        (*v115)(boxed_opaque_existential_1, v51, v52);
        __swift_project_boxed_opaque_existential_1(&v135, v137);
        v56 = v125;
        sub_1C216FE24();
        v125 = v56;
        v57 = *v114;
        (*v114)(v51, v52);
        v129 = v131;
        __swift_destroy_boxed_opaque_existential_0Tm(&v135);
        v58 = *(&v123 + 1);
        if (*(&v123 + 1) >> 60 == 15)
        {
          sub_1C20D3174(v124, v118);
          result = sub_1C20B23C8(v123, v58);
          v14 = v120;
          v17 = v106;
          v24 = v105;
          v22 = v119;
          v32 = v127;
          v23 = v107;
          goto LABEL_75;
        }

        v101 = v55;
        v103 = v53;
        v59 = xmmword_1EBF23A40;
        v131 = xmmword_1EBF23A40;
        v137 = MEMORY[0x1E6969080];
        v138 = MEMORY[0x1E6969078];
        v135 = v128;
        v60 = __swift_project_boxed_opaque_existential_1(&v135, MEMORY[0x1E6969080]);
        v61 = *v60;
        v62 = v60[1];
        v63 = v62 >> 62;
        v23 = v107;
        v102 = v57;
        if ((v62 >> 62) > 1)
        {
          if (v63 == 2)
          {
            v65 = *(v61 + 16);
            *&v128 = *(v61 + 24);
            v66 = v123;
            sub_1C20B22B8(v123, v58);
            sub_1C20B22B8(v66, v58);
            sub_1C20D865C(v59, *(&v59 + 1));
            if (sub_1C216FDD4() && __OFSUB__(v65, sub_1C216FE04()))
            {
              goto LABEL_96;
            }

            if (__OFSUB__(v128, v65))
            {
              goto LABEL_93;
            }

            sub_1C216FDF4();
          }

          else
          {
            memset(v130, 0, 14);
            v71 = v123;
            sub_1C20B22B8(v123, v58);
            sub_1C20B22B8(v71, v58);
            sub_1C20D865C(v59, *(&v59 + 1));
          }

LABEL_59:
          sub_1C2170114();
          v70 = v110;
        }

        else
        {
          if (!v63)
          {
            v130[0] = v61;
            LOWORD(v130[1]) = v62;
            BYTE2(v130[1]) = BYTE2(v62);
            BYTE3(v130[1]) = BYTE3(v62);
            BYTE4(v130[1]) = BYTE4(v62);
            BYTE5(v130[1]) = BYTE5(v62);
            v64 = v123;
            sub_1C20B22B8(v123, v58);
            sub_1C20B22B8(v64, v58);
            sub_1C20D865C(v59, *(&v59 + 1));
            goto LABEL_59;
          }

          v67 = v61;
          v68 = v61 >> 32;
          *&v128 = v68 - v67;
          if (v68 < v67)
          {
            goto LABEL_92;
          }

          v69 = v123;
          sub_1C20B22B8(v123, v58);
          sub_1C20B22B8(v69, v58);
          sub_1C20D865C(v59, *(&v59 + 1));
          if (sub_1C216FDD4() && __OFSUB__(v67, sub_1C216FE04()))
          {
            goto LABEL_98;
          }

          v70 = v110;
          sub_1C216FDF4();
          sub_1C2170114();
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v135);
        v73 = *(&v131 + 1);
        v72 = v131;
        sub_1C2170704();
        v74 = v73 >> 62;
        v108 = v28;
        if ((v73 >> 62) > 1)
        {
          if (v74 != 2)
          {
            *(&v135 + 6) = 0;
            *&v135 = 0;
            goto LABEL_74;
          }

          v75 = *(v72 + 16);
          v76 = *(v72 + 24);

          if (sub_1C216FDD4() && __OFSUB__(v75, sub_1C216FE04()))
          {
            goto LABEL_97;
          }

          if (__OFSUB__(v76, v75))
          {
            goto LABEL_95;
          }
        }

        else
        {
          if (!v74)
          {
            *&v135 = v72;
            WORD4(v135) = v73;
            BYTE10(v135) = BYTE2(v73);
            BYTE11(v135) = BYTE3(v73);
            BYTE12(v135) = BYTE4(v73);
            BYTE13(v135) = BYTE5(v73);
LABEL_74:
            v77 = v126;
            sub_1C21706E4();
            sub_1C20D3174(v72, v73);
            v78 = v104;
            sub_1C21706F4();
            sub_1C20D3174(v72, v73);
            v109(v70, v77);
            v79 = v121;
            v137 = v121;
            v138 = v103;
            v80 = __swift_allocate_boxed_opaque_existential_1(&v135);
            v101(v80, v78, v79);
            __swift_project_boxed_opaque_existential_1(&v135, v137);
            v81 = v125;
            sub_1C216FE24();
            v125 = v81;
            v82 = *(&v123 + 1);
            v83 = v123;
            sub_1C20B23C8(v123, *(&v123 + 1));
            v102(v78, v79);
            v128 = v131;
            __swift_destroy_boxed_opaque_existential_0Tm(&v135);
            sub_1C20D3174(v124, v118);
            result = sub_1C20B23C8(v83, v82);
            v14 = v120;
            v17 = v106;
            v24 = v105;
            v22 = v119;
            v32 = v127;
            v28 = v108;
LABEL_75:
            v84 = v128;
            v85 = v129;
            *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
            *(v17[6] + 16 * v28) = v32;
            v86 = (v17[7] + 32 * v28);
            *v86 = v85;
            v86[1] = v84;
            v87 = v17[2];
            v88 = __OFADD__(v87, 1);
            v89 = v87 + 1;
            if (!v88)
            {
              v17[2] = v89;
              if (!v22)
              {
                goto LABEL_7;
              }

LABEL_6:
              v25 = __clz(__rbit64(v22));
              v22 &= v22 - 1;
              continue;
            }

LABEL_83:
            __break(1u);
            goto LABEL_84;
          }

          if (v72 >> 32 < v72)
          {
            goto LABEL_94;
          }

          if (sub_1C216FDD4() && __OFSUB__(v72, sub_1C216FE04()))
          {
            goto LABEL_99;
          }
        }

        break;
      }

      sub_1C216FDF4();
      v70 = v110;
      goto LABEL_74;
    }
  }

  a1 = v100;
  v15 = v99;
  v16 = v98;
LABEL_81:
  v97 = v111;
  *a1 = v112;
  a1[1] = v97;
  a1[2] = v15;
  a1[3] = v16;
  a1[4] = v17;
  return result;
}

id sub_1C2103014(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = sub_1C2170154();
    sub_1C20B23C8(v5, v7);
    v8 = v9;
  }

  return v8;
}

uint64_t sub_1C21030A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_largeBlob);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_1C2106C10(v4, v5);
}

uint64_t sub_1C21030F8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_largeBlob);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_1C2106C10(v2, v3);
  return sub_1C2106BFC(v5, v6);
}

uint64_t sub_1C2103174@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_largeBlob);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;
  return sub_1C2106C10(v4, v5);
}

uint64_t sub_1C21031C8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_largeBlob);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  return sub_1C2106BFC(v5, v6);
}

uint64_t sub_1C2103284@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_prf);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  return sub_1C2106C24(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C21032EC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = (*a2 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_prf);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v14 = v8[4];
  v15 = v8[3];
  v13 = v8[5];
  *v8 = v2;
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v7;
  sub_1C2106C24(v2, v3, v4, v5, v6, v7);
  return sub_1C2106BB8(v9, v10, v11, v15, v14, v13);
}

uint64_t sub_1C21033B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_prf);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  return sub_1C2106C24(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C2103418(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = (v1 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_prf);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = v5[4];
  v11 = v5[5];
  v12 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v12;
  v5[4] = v3;
  v5[5] = v4;
  return sub_1C2106BB8(v6, v7, v8, v9, v10, v11);
}

BOOL static ASCPublicKeyCredentialAssertionExtensionInputs.LargeBlob.Operation.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 >> 60 != 15)
  {
    if (v5 >> 60 != 15)
    {
      sub_1C20B22B8(*a2, *(a2 + 8));
      sub_1C20B22B8(v2, v3);
      v6 = sub_1C21068CC(v2, v3, v4, v5);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v5 >> 60 != 15)
  {
LABEL_5:
    sub_1C20B22B8(*a2, *(a2 + 8));
    sub_1C20B22B8(v2, v3);
    v6 = 0;
    goto LABEL_7;
  }

  v6 = 1;
LABEL_7:
  sub_1C20B23C8(v2, v3);
  sub_1C20B23C8(v4, v5);
  return v6;
}

uint64_t sub_1C21035B4()
{
  if (*v0)
  {
    return 0x6574697277;
  }

  else
  {
    return 1684104562;
  }
}

uint64_t sub_1C21035E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684104562 && a2 == 0xE400000000000000;
  if (v5 || (sub_1C2171324() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574697277 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C2171324();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1C21036BC(uint64_t a1)
{
  v2 = sub_1C2106C68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C21036F8(uint64_t a1)
{
  v2 = sub_1C2106C68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2103734(uint64_t a1)
{
  v2 = sub_1C2106D10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2103770(uint64_t a1)
{
  v2 = sub_1C2106D10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C21037B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C2171324();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C2103838(uint64_t a1)
{
  v2 = sub_1C2106CBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2103874(uint64_t a1)
{
  v2 = sub_1C2106CBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionInputs.LargeBlob.Operation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23A68, &qword_1C2177B40);
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v19 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23A70, &qword_1C2177B48);
  v17 = *(v5 - 8);
  v18 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23A78, &qword_1C2177B50);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = v1[1];
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2106C68();
  sub_1C2171484();
  if (v12 >> 60 == 15)
  {
    LOBYTE(v22) = 0;
    sub_1C2106D10();
    sub_1C2171214();
    (*(v17 + 8))(v7, v18);
  }

  else
  {
    LOBYTE(v22) = 1;
    sub_1C2106CBC();
    v14 = v19;
    sub_1C2171214();
    v22 = v16;
    v23 = v12;
    sub_1C20D8CEC();
    v15 = v21;
    sub_1C2171294();
    (*(v20 + 8))(v14, v15);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionInputs.LargeBlob.Operation.init(from:)@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23AA0, &qword_1C2177B58);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23AA8, &qword_1C2177B60);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23AB0, &unk_1C2177B68);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1C2106C68();
  v15 = v37;
  sub_1C2171464();
  if (!v15)
  {
    v37 = v11;
    v17 = v35;
    v16 = v36;
    v18 = sub_1C2171204();
    v19 = (2 * *(v18 + 16)) | 1;
    v39 = v18;
    v40 = v18 + 32;
    v41 = 0;
    v42 = v19;
    v20 = sub_1C20DA3C4();
    if (v20 == 2 || v41 != v42 >> 1)
    {
      v24 = sub_1C2170F74();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF231B0, &qword_1C2175AA0);
      *v26 = &type metadata for ASCPublicKeyCredentialAssertionExtensionInputs.LargeBlob.Operation;
      sub_1C2171154();
      sub_1C2170F64();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v37 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v20)
      {
        LOBYTE(v38) = 1;
        sub_1C2106CBC();
        v21 = v13;
        v22 = v6;
        sub_1C2171144();
        v23 = v37;
        sub_1C20D8E24();
        v29 = v22;
        v30 = v33;
        sub_1C21711D4();
        (*(v34 + 8))(v29, v30);
        (*(v23 + 8))(v21, v10);
        swift_unknownObjectRelease();
        v31 = v38;
      }

      else
      {
        LOBYTE(v38) = 0;
        sub_1C2106D10();
        sub_1C2171144();
        v28 = v37;
        (*(v17 + 8))(v9, v7);
        (*(v28 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v31 = xmmword_1C21769B0;
      }

      *v16 = v31;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v43);
}

BOOL sub_1C21040CC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 >> 60 != 15)
  {
    if (v5 >> 60 != 15)
    {
      sub_1C20B22B8(*a2, *(a2 + 8));
      sub_1C20B22B8(v2, v3);
      v6 = sub_1C21068CC(v2, v3, v4, v5);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v5 >> 60 != 15)
  {
LABEL_5:
    sub_1C20B22B8(*a2, *(a2 + 8));
    sub_1C20B22B8(v2, v3);
    v6 = 0;
    goto LABEL_7;
  }

  v6 = 1;
LABEL_7:
  sub_1C20B23C8(v2, v3);
  sub_1C20B23C8(v4, v5);
  return v6;
}

__n128 ASCPublicKeyCredentialAssertionExtensionInputs.LargeBlob.init(operation:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t ASCPublicKeyCredentialAssertionExtensionInputs.LargeBlob.operation.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1C20B22B8(v2, v3);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionInputs.LargeBlob.operation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1C20B23C8(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t sub_1C2104220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C2171324();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C21042B0(uint64_t a1)
{
  v2 = sub_1C2106D64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C21042EC(uint64_t a1)
{
  v2 = sub_1C2106D64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionInputs.LargeBlob.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23AB8, &qword_1C2177B78);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20B22B8(v7, v8);
  sub_1C2106D64();
  sub_1C2171484();
  v10 = v7;
  v11 = v8;
  sub_1C2106DB8();
  sub_1C2171294();
  sub_1C20B23C8(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionInputs.LargeBlob.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23AD0, &qword_1C2177B80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2106D64();
  sub_1C2171464();
  if (!v2)
  {
    sub_1C2106E0C();
    sub_1C21711D4();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1C210462C()
{
  v0 = sub_1C2170964();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2170954();
  v4 = sub_1C2170924();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_1C20E7898(&unk_1F419CC90);
    v10 = v9;
    *&xmmword_1EBF23A40 = v4;
    *(&xmmword_1EBF23A40 + 1) = v6;
    v15[3] = MEMORY[0x1E6969080];
    v15[4] = MEMORY[0x1E6969078];
    v15[0] = v8;
    v15[1] = v9;
    v11 = __swift_project_boxed_opaque_existential_1(v15, MEMORY[0x1E6969080]);
    v12 = *v11;
    v13 = v11[1];
    sub_1C20B22B8(v4, v6);
    sub_1C20D865C(v8, v10);
    sub_1C2106434(v12, v13, &xmmword_1EBF23A40);
    sub_1C20D3174(v8, v10);
    sub_1C20B23C8(v4, v6);
    return __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  return result;
}

uint64_t ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues.init(saltInput1:saltInput2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 32) = 0;
  *a5 = a1;
  *(a5 + 8) = a2;
  result = sub_1C20B23C8(0, 0xF000000000000000);
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues.saltInput1.getter()
{
  v1 = *v0;
  sub_1C20D865C(*v0, *(v0 + 8));
  return v1;
}

uint64_t ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues.saltInput1.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1C20D3174(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues.saltInput2.getter()
{
  v1 = *(v0 + 16);
  sub_1C20B22B8(v1, *(v0 + 24));
  return v1;
}

uint64_t ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues.saltInput2.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1C20B23C8(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues.salt1.getter()
{
  v1 = sub_1C2170844();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C2170724();
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  v9 = *(v0 + 8);
  if (*(v0 + 32) == 1)
  {
    sub_1C20D865C(*v0, *(v0 + 8));
  }

  else
  {
    v20 = v2;
    v21 = v6;
    if (qword_1EBF230B8 != -1)
    {
      swift_once();
    }

    v11 = xmmword_1EBF23A40;
    v25 = xmmword_1EBF23A40;
    v23 = MEMORY[0x1E6969080];
    v24 = MEMORY[0x1E6969078];
    v22[0] = v10;
    v22[1] = v9;
    v12 = __swift_project_boxed_opaque_existential_1(v22, MEMORY[0x1E6969080]);
    v13 = *v12;
    v14 = v12[1];
    sub_1C20D865C(v10, v9);
    sub_1C20D865C(v11, *(&v11 + 1));
    sub_1C2106434(v13, v14, &v25);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    v16 = *(&v25 + 1);
    v15 = v25;
    sub_1C2106E60(&qword_1EDD4A7A0, 255, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    sub_1C2170704();
    sub_1C20D865C(v15, v16);
    sub_1C210656C(v15, v16, v4);
    sub_1C20D3174(v15, v16);
    sub_1C21706F4();
    sub_1C20D3174(v15, v16);
    (*(v20 + 8))(v4, v1);
    v23 = v5;
    v24 = sub_1C2106E60(&qword_1EBF232E8, 255, MEMORY[0x1E69663E0], MEMORY[0x1E69663D0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
    v18 = v21;
    (*(v21 + 16))(boxed_opaque_existential_1, v8, v5);
    __swift_project_boxed_opaque_existential_1(v22, v23);
    sub_1C216FE24();
    (*(v18 + 8))(v8, v5);
    v10 = v25;
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  return v10;
}

uint64_t ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues.salt2.getter()
{
  v1 = sub_1C2170844();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C2170724();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    sub_1C20B22B8(*(v0 + 16), *(v0 + 24));
  }

  else if (v11 >> 60 != 15)
  {
    v22 = v2;
    v23 = v7;
    v24 = v6;
    sub_1C20D865C(v10, v11);
    if (qword_1EBF230B8 != -1)
    {
      swift_once();
    }

    v12 = xmmword_1EBF23A40;
    v28 = xmmword_1EBF23A40;
    v26 = MEMORY[0x1E6969080];
    v27 = MEMORY[0x1E6969078];
    v25[0] = v10;
    v25[1] = v11;
    v13 = __swift_project_boxed_opaque_existential_1(v25, MEMORY[0x1E6969080]);
    v14 = *v13;
    v15 = v13[1];
    sub_1C20B22B8(v10, v11);
    sub_1C20D865C(v12, *(&v12 + 1));
    sub_1C2106434(v14, v15, &v28);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    v16 = v28;
    sub_1C2106E60(&qword_1EDD4A7A0, 255, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    sub_1C2170704();
    sub_1C20D865C(v16, *(&v16 + 1));
    sub_1C210656C(v16, *(&v16 + 1), v4);
    sub_1C20D3174(v16, *(&v16 + 1));
    sub_1C21706F4();
    sub_1C20D3174(v16, *(&v16 + 1));
    (*(v22 + 8))(v4, v1);
    v17 = v24;
    v26 = v24;
    v27 = sub_1C2106E60(&qword_1EBF232E8, 255, MEMORY[0x1E69663E0], MEMORY[0x1E69663D0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
    v19 = v23;
    (*(v23 + 16))(boxed_opaque_existential_1, v9, v17);
    __swift_project_boxed_opaque_existential_1(v25, v26);
    sub_1C216FE24();
    sub_1C20B23C8(v10, v11);
    (*(v19 + 8))(v9, v17);
    v10 = v28;
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  return v10;
}

unint64_t sub_1C2105058()
{
  v1 = 0xD00000000000001ELL;
  if (*v0 == 1)
  {
    v1 = 0x75706E49746C6173;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x75706E49746C6173;
  }
}

uint64_t sub_1C21050AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C2107EC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C21050D4(uint64_t a1)
{
  v2 = sub_1C2106EA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2105110(uint64_t a1)
{
  v2 = sub_1C2106EA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23AE0, &qword_1C2177B88);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v8 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = v9;
  v18 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20D865C(v8, v7);
  sub_1C2106EA8();
  sub_1C2171484();
  v16 = v8;
  v17 = v7;
  v19 = 0;
  sub_1C20D8CEC();
  v10 = v15;
  sub_1C2171294();
  sub_1C20D3174(v16, v17);
  if (!v10)
  {
    v16 = v14;
    v17 = v13;
    v19 = 1;
    sub_1C20B22B8(v14, v13);
    sub_1C2171264();
    sub_1C20B23C8(v16, v17);
    LOBYTE(v16) = 2;
    sub_1C2171284();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23AF0, &qword_1C2177B90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2106EA8();
  sub_1C2171464();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v14 = 0;
    v15 = 0xF000000000000000;
  }

  else
  {
    v9 = a2;
    v22 = 0;
    sub_1C20D8E24();
    sub_1C21711D4();
    v18 = v20;
    v19 = v21;
    v22 = 1;
    sub_1C21711A4();
    v12 = v20;
    v11 = v21;
    sub_1C20B23C8(0, 0xF000000000000000);
    LOBYTE(v20) = 2;
    v13 = sub_1C21711C4();
    (*(v6 + 8))(v8, v5);
    v17 = v18;
    v16 = v19;
    *v9 = v18;
    *(v9 + 8) = v16;
    *(v9 + 16) = v12;
    *(v9 + 24) = v11;
    *(v9 + 32) = v13 & 1;
    sub_1C20D865C(v17, v16);
    sub_1C20B22B8(v12, v11);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    sub_1C20D3174(v17, v16);
    v14 = v12;
    v15 = v11;
  }

  return sub_1C20B23C8(v14, v15);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionInputs.PRF.inputValues.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_1C20D860C(v2, v3, v4, v5, v6);
}

__n128 ASCPublicKeyCredentialAssertionExtensionInputs.PRF.init(inputValues:perCredentialInputValues:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3;
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_1C2105644()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x6C61567475706E69;
  }
}

uint64_t sub_1C210568C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61567475706E69 && a2 == 0xEB00000000736575;
  if (v6 || (sub_1C2171324() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001C2184730 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C2171324();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1C2105774(uint64_t a1)
{
  v2 = sub_1C2106EFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C21057B0(uint64_t a1)
{
  v2 = sub_1C2106EFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionInputs.PRF.encode(to:)(void *a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23AF8, &unk_1C2177B98);
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v16 = *(v1 + 40);
  v7 = a1[3];
  v8 = *(v1 + 32);
  v9 = a1;
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(v9, v7);
  sub_1C20D860C(v3, v4, v5, v6, v8);
  sub_1C2106EFC();
  sub_1C2171484();
  v20 = v3;
  v21 = v4;
  v22 = v5;
  v23 = v6;
  v24 = v8;
  v12 = v17;
  v25 = 0;
  sub_1C20D8C50();
  v13 = v18;
  sub_1C2171264();
  sub_1C20D8708(v20, v21, v22, v23, v24);
  if (!v13)
  {
    v20 = v16;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23B00, &qword_1C2175AC0);
    sub_1C20D8D94(&qword_1EDD4A750, sub_1C20D8CEC, sub_1C20D8C50, MEMORY[0x1E69E5E38]);
    sub_1C2171264();
  }

  return (*(v19 + 8))(v11, v12);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionInputs.PRF.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23B10, &qword_1C2177BA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2106EFC();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v25 = 0;
  sub_1C20D8D40();
  sub_1C21711A4();
  v10 = v19;
  v9 = v20;
  v17 = v21;
  v18 = v22;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23B00, &qword_1C2175AC0);
  v25 = 1;
  sub_1C20D8D94(&unk_1EDD4A760, sub_1C20D8E24, sub_1C20D8D40, MEMORY[0x1E69E5E58]);
  sub_1C21711A4();
  (*(v6 + 8))(v8, v5);
  v12 = v18;
  v11 = v19;
  *a2 = v10;
  *(a2 + 8) = v9;
  v13 = v17;
  *(a2 + 16) = v17;
  *(a2 + 24) = v12;
  v14 = v24;
  *(a2 + 32) = v24;
  *(a2 + 40) = v11;
  sub_1C20D860C(v10, v9, v13, v12, v14);

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  sub_1C20D8708(v10, v9, v13, v12, v14);
}

uint64_t sub_1C2105D10(uint64_t a1)
{
  v2 = sub_1C2106F50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2105D4C(uint64_t a1)
{
  v2 = sub_1C2106F50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ASCPublicKeyCredentialAssertionExtensionInputs.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C2105E18(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23B18, &qword_1C2177BB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2106F50();
  sub_1C2171484();
  v9 = (v3 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_largeBlob);
  swift_beginAccess();
  v10 = v9[1];
  v19 = *v9;
  v20 = v10;
  v25 = 0;
  sub_1C2106C10(v19, v10);
  sub_1C2106FA4();
  sub_1C2171264();
  sub_1C2106BFC(v19, v20);
  if (!v2)
  {
    v11 = (v3 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_prf);
    swift_beginAccess();
    v12 = v11[1];
    v13 = v11[2];
    v14 = v11[3];
    v15 = v11[4];
    v16 = v11[5];
    v19 = *v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v24 = v16;
    v18[15] = 1;
    sub_1C2106C24(v19, v12, v13, v14, v15, v16);
    sub_1C2106FF8();
    sub_1C2171264();
    sub_1C2106BB8(v19, v20, v21, v22, v23, v24);
  }

  return (*(v6 + 8))(v8, v5);
}

void (**ASCPublicKeyCredentialAssertionExtensionInputs.init(from:)(void *a1))(char *, uint64_t)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23B28, &qword_1C2177BB8);
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v25 - v5;
  v7 = &v1[OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_largeBlob];
  *&v1[OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_largeBlob] = xmmword_1C2177B30;
  v35 = v1;
  v8 = &v1[OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_prf];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(v8 + 5) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2106F50();
  sub_1C2171464();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    sub_1C2106BFC(*v7, *(v7 + 1));
    sub_1C2106BB8(*v8, *(v8 + 1), *(v8 + 2), *(v8 + 3), *(v8 + 4), *(v8 + 5));
    type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v4;
    v34 = 0;
    sub_1C210704C();
    sub_1C21711A4();
    v10 = v30;
    swift_beginAccess();
    v11 = *v7;
    v12 = *(v7 + 1);
    *v7 = v10;
    sub_1C2106BFC(v11, v12);
    v29 = 1;
    v13 = v27;
    sub_1C21070A0();
    sub_1C21711A4();
    v16 = v32;
    v15 = v33;
    v25 = v30;
    v26 = v31;
    swift_beginAccess();
    v17 = *v8;
    v18 = *(v8 + 1);
    v19 = *(v8 + 2);
    v20 = *(v8 + 3);
    v21 = *(v8 + 4);
    v22 = *(v8 + 5);
    v23 = v26;
    *v8 = v25;
    *(v8 + 1) = v23;
    *(v8 + 4) = v16;
    *(v8 + 5) = v15;
    sub_1C2106BB8(v17, v18, v19, v20, v21, v22);
    v24 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs();
    v28.receiver = v35;
    v28.super_class = v24;
    v4 = objc_msgSendSuper2(&v28, sel_init);
    (v9[1])(v6, v13);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v4;
}

void (**sub_1C2106328@<X0>(void *a1@<X0>, void (***a2)(char *, uint64_t)@<X8>))(char *, uint64_t)
{
  v5 = objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs());
  result = ASCPublicKeyCredentialAssertionExtensionInputs.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_BYTE *sub_1C21063A0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1C213F048(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1C213F108(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1C213F184(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1C2106434(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_1C2170114();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1C2106754(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1C2106754(v4, v5);
  }

  return sub_1C2170114();
}

uint64_t sub_1C210656C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1C2170844();
      sub_1C2106E60(&qword_1EDD4A7A0, 255, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1C21706E4();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1C21067E8(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1C21067E8(v5, v6);
  }

  sub_1C2170844();
  sub_1C2106E60(&qword_1EDD4A7A0, 255, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  return sub_1C21706E4();
}

uint64_t sub_1C2106754(uint64_t a1, uint64_t a2)
{
  result = sub_1C216FDD4();
  if (!result || (result = sub_1C216FE04(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1C216FDF4();
      return sub_1C2170114();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C21067E8(uint64_t a1, uint64_t a2)
{
  result = sub_1C216FDD4();
  if (!result || (result = sub_1C216FE04(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1C216FDF4();
      sub_1C2170844();
      sub_1C2106E60(&qword_1EDD4A7A0, 255, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1C21706E4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1C21068CC(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1C20D865C(a3, a4);
          return sub_1C213A818(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

id sub_1C2106A34(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_largeBlob);
  *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_largeBlob) = xmmword_1C2177B30;
  v4 = (v1 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_prf);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[4] = 0;
  v4[5] = 1;
  v5 = (a1 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_largeBlob);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];
  swift_beginAccess();
  v8 = *v3;
  v9 = v3[1];
  *v3 = v7;
  v3[1] = v6;
  sub_1C2106C10(v7, v6);
  sub_1C2106BFC(v8, v9);
  v10 = (a1 + OBJC_IVAR____TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs_prf);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v16 = v10[4];
  v15 = v10[5];
  swift_beginAccess();
  v17 = *v4;
  v18 = v4[1];
  v19 = v4[2];
  v22 = v4[4];
  v23 = v4[3];
  v21 = v4[5];
  *v4 = v11;
  v4[1] = v12;
  v4[2] = v13;
  v4[3] = v14;
  v4[4] = v16;
  v4[5] = v15;
  sub_1C2106C24(v11, v12, v13, v14, v16, v15);
  sub_1C2106BB8(v17, v18, v19, v23, v22, v21);
  v25.receiver = v24;
  v25.super_class = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs();
  return objc_msgSendSuper2(&v25, sel_init);
}

uint64_t sub_1C2106BB8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6)
{
  if (a6 != 1)
  {
    sub_1C20D8708(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1C2106BFC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1C20B23C8(result, a2);
  }

  return result;
}

uint64_t sub_1C2106C10(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1C20B22B8(a1, a2);
  }

  return a1;
}

uint64_t sub_1C2106C24(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6)
{
  if (a6 != 1)
  {
    sub_1C20D860C(result, a2, a3, a4, a5);
  }

  return result;
}

unint64_t sub_1C2106C68()
{
  result = qword_1EBF23A80;
  if (!qword_1EBF23A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23A80);
  }

  return result;
}

unint64_t sub_1C2106CBC()
{
  result = qword_1EBF23A88;
  if (!qword_1EBF23A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23A88);
  }

  return result;
}

unint64_t sub_1C2106D10()
{
  result = qword_1EBF23A98;
  if (!qword_1EBF23A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23A98);
  }

  return result;
}

unint64_t sub_1C2106D64()
{
  result = qword_1EBF23AC0;
  if (!qword_1EBF23AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23AC0);
  }

  return result;
}

unint64_t sub_1C2106DB8()
{
  result = qword_1EBF23AC8;
  if (!qword_1EBF23AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23AC8);
  }

  return result;
}

unint64_t sub_1C2106E0C()
{
  result = qword_1EBF23AD8;
  if (!qword_1EBF23AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23AD8);
  }

  return result;
}

uint64_t sub_1C2106E60(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C2106EA8()
{
  result = qword_1EDD4AC18;
  if (!qword_1EDD4AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4AC18);
  }

  return result;
}

unint64_t sub_1C2106EFC()
{
  result = qword_1EDD4AC20;
  if (!qword_1EDD4AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4AC20);
  }

  return result;
}

unint64_t sub_1C2106F50()
{
  result = qword_1EDD4AC30;
  if (!qword_1EDD4AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4AC30);
  }

  return result;
}

unint64_t sub_1C2106FA4()
{
  result = qword_1EDD4AC38;
  if (!qword_1EDD4AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4AC38);
  }

  return result;
}

unint64_t sub_1C2106FF8()
{
  result = qword_1EDD4AC40;
  if (!qword_1EDD4AC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4AC40);
  }

  return result;
}

unint64_t sub_1C210704C()
{
  result = qword_1EDD4AC50;
  if (!qword_1EDD4AC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4AC50);
  }

  return result;
}

unint64_t sub_1C21070A0()
{
  result = qword_1EDD4AC58;
  if (!qword_1EDD4AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4AC58);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputsC9LargeBlobV9OperationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C2107434(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C2107490(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_1C21074EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2107540(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_1C2107590(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C21075E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1C2107640(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C21076C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C2107718(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1C21077E4()
{
  result = qword_1EBF23B38;
  if (!qword_1EBF23B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23B38);
  }

  return result;
}

unint64_t sub_1C210783C()
{
  result = qword_1EBF23B40;
  if (!qword_1EBF23B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23B40);
  }

  return result;
}

unint64_t sub_1C2107894()
{
  result = qword_1EBF23B48;
  if (!qword_1EBF23B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23B48);
  }

  return result;
}

unint64_t sub_1C21078EC()
{
  result = qword_1EBF23B50;
  if (!qword_1EBF23B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23B50);
  }

  return result;
}

unint64_t sub_1C2107944()
{
  result = qword_1EBF23B58;
  if (!qword_1EBF23B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23B58);
  }

  return result;
}

unint64_t sub_1C210799C()
{
  result = qword_1EBF23B60;
  if (!qword_1EBF23B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23B60);
  }

  return result;
}

unint64_t sub_1C21079F4()
{
  result = qword_1EDD4AC88;
  if (!qword_1EDD4AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4AC88);
  }

  return result;
}

unint64_t sub_1C2107A4C()
{
  result = qword_1EDD4AC90;
  if (!qword_1EDD4AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4AC90);
  }

  return result;
}

unint64_t sub_1C2107AA4()
{
  result = qword_1EDD4AC98;
  if (!qword_1EDD4AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4AC98);
  }

  return result;
}

unint64_t sub_1C2107AFC()
{
  result = qword_1EDD4ACA0;
  if (!qword_1EDD4ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4ACA0);
  }

  return result;
}

unint64_t sub_1C2107B54()
{
  result = qword_1EDD4ACA8;
  if (!qword_1EDD4ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4ACA8);
  }

  return result;
}

unint64_t sub_1C2107BAC()
{
  result = qword_1EDD4ACB0;
  if (!qword_1EDD4ACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4ACB0);
  }

  return result;
}

unint64_t sub_1C2107C04()
{
  result = qword_1EBF23B68;
  if (!qword_1EBF23B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23B68);
  }

  return result;
}

unint64_t sub_1C2107C5C()
{
  result = qword_1EBF23B70;
  if (!qword_1EBF23B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23B70);
  }

  return result;
}

unint64_t sub_1C2107CB4()
{
  result = qword_1EBF23B78;
  if (!qword_1EBF23B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23B78);
  }

  return result;
}

unint64_t sub_1C2107D0C()
{
  result = qword_1EBF23B80;
  if (!qword_1EBF23B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23B80);
  }

  return result;
}

unint64_t sub_1C2107D64()
{
  result = qword_1EBF23B88;
  if (!qword_1EBF23B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23B88);
  }

  return result;
}

unint64_t sub_1C2107DBC()
{
  result = qword_1EBF23B90;
  if (!qword_1EBF23B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23B90);
  }

  return result;
}

unint64_t sub_1C2107E14()
{
  result = qword_1EBF23B98;
  if (!qword_1EBF23B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23B98);
  }

  return result;
}

unint64_t sub_1C2107E6C()
{
  result = qword_1EBF23BA0;
  if (!qword_1EBF23BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23BA0);
  }

  return result;
}

uint64_t sub_1C2107EC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x75706E49746C6173 && a2 == 0xEA00000000003174;
  if (v3 || (sub_1C2171324() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x75706E49746C6173 && a2 == 0xEA00000000003274 || (sub_1C2171324() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001C21855E0 == a2)
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

AuthenticationServicesCore::ASCABLERequestType_optional __swiftcall ASCABLERequestType.init(rawValue:)(Swift::String rawValue)
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

uint64_t ASCABLERequestType.rawValue.getter()
{
  v1 = 25453;
  if (*v0 != 1)
  {
    v1 = 7365476;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 24935;
  }
}

uint64_t sub_1C2108090(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 25453;
  if (v2 != 1)
  {
    v4 = 7365476;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 24935;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 25453;
  if (*a2 != 1)
  {
    v8 = 7365476;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 24935;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
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

unint64_t sub_1C2108168()
{
  result = qword_1EBF23BA8;
  if (!qword_1EBF23BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23BA8);
  }

  return result;
}

uint64_t sub_1C21081BC()
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C2108240(uint64_t a1)
{
  sub_1C21709B4();
}

uint64_t sub_1C21082B0(uint64_t a1)
{
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

void sub_1C210833C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE200000000000000;
  v5 = 25453;
  if (v2 != 1)
  {
    v5 = 7365476;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 24935;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1C210843C()
{
  result = qword_1EDD4ACB8;
  if (!qword_1EDD4ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4ACB8);
  }

  return result;
}

uint64_t sub_1C21084A0(void *a1)
{
  sub_1C216FD44();
  swift_allocObject();
  sub_1C216FD34();
  type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs(0);
  sub_1C21088A0(&unk_1EBF23BB0, type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs, &protocol conformance descriptor for ASCPublicKeyCredentialRegistrationExtensionOutputs);
  v2 = sub_1C216FD24();
  v4 = v3;

  v5 = sub_1C2170154();
  v6 = sub_1C21708F4();
  [a1 encodeObject:v5 forKey:v6];

  return sub_1C20D3174(v2, v4);
}

id ASCPublicKeyCredentialRegistrationExtensionOutputs.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_1C20D36A0();
  v2 = sub_1C2170CC4();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1C2170174();
    v6 = v5;

    sub_1C216FCE4();
    swift_allocObject();
    sub_1C216FCD4();
    sub_1C21088A0(&qword_1EBF23BC0, type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs, &protocol conformance descriptor for ASCPublicKeyCredentialRegistrationExtensionOutputs);
    sub_1C216FCC4();

    v7 = objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs(0));
    v8 = sub_1C210AEA8(v10);

    sub_1C20D3174(v4, v6);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v8;
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t sub_1C21088A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C2108978()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BC8, &qword_1C21789D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0x6F69736E65747845;
  v26 = 0xEF0A207B203A736ELL;
  v9 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_largeBlob;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (v10 != 2)
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1C2170F34();

    v23 = 0xD000000000000017;
    v24 = 0x80000001C2185680;
    if (v10)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (v10)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    MEMORY[0x1C6913CB0](v11, v12);

    v13 = v23;
    v14 = v24;
    v23 = 9;
    v24 = 0xE100000000000000;
    MEMORY[0x1C6913CB0](v13, v14);

    MEMORY[0x1C6913CB0](10, 0xE100000000000000);

    MEMORY[0x1C6913CB0](v23, v24);
  }

  v15 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_prf;
  swift_beginAccess();
  sub_1C20EB3E8(v1 + v15, v4, &qword_1EBF23BC8, &qword_1C21789D0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1C20EB498(v4, &qword_1EBF23BC8, &qword_1C21789D0);
  }

  else
  {
    sub_1C210B098(v4, v8);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1C2170F34();

    v21 = 0xD000000000000011;
    v22 = 0x80000001C2185660;
    if (*v8)
    {
      v16 = 1702195828;
    }

    else
    {
      v16 = 0x65736C6166;
    }

    if (*v8)
    {
      v17 = 0xE400000000000000;
    }

    else
    {
      v17 = 0xE500000000000000;
    }

    MEMORY[0x1C6913CB0](v16, v17);

    v18 = v21;
    v19 = v22;
    v21 = 9;
    v22 = 0xE100000000000000;
    MEMORY[0x1C6913CB0](v18, v19);

    MEMORY[0x1C6913CB0](10, 0xE100000000000000);

    MEMORY[0x1C6913CB0](v21, v22);

    sub_1C210B0FC(v8);
  }

  v21 = v25;
  v22 = v26;

  MEMORY[0x1C6913CB0](125, 0xE100000000000000);

  return v21;
}

unint64_t ASCPublicKeyCredentialRegistrationExtensionOutputs.LargeBlob.description.getter()
{
  v1 = *v0;
  sub_1C2170F34();

  if (v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1C6913CB0](v2, v3);

  return 0xD000000000000017;
}

unint64_t ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF.description.getter()
{
  sub_1C2170F34();

  if (*v0)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*v0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1C6913CB0](v1, v2);

  return 0xD000000000000011;
}

id ASCPublicKeyCredentialRegistrationExtensionOutputs.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ASCPublicKeyCredentialRegistrationExtensionOutputs.init()()
{
  v0[OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_largeBlob] = 2;
  v1 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_prf;
  v2 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF(0);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs(0);
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1C2108FB8@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_largeBlob;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1C210900C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_largeBlob;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1C21090BC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BC8, &qword_1C21789D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1C20EB3E8(a1, &v10 - v5, &qword_1EBF23BC8, &qword_1C21789D0);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_prf;
  swift_beginAccess();
  sub_1C210B158(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1C2109194@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_prf;
  swift_beginAccess();
  return sub_1C20EB3E8(v1 + v3, a1, &qword_1EBF23BC8, &qword_1C21789D0);
}

uint64_t sub_1C21091FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_prf;
  swift_beginAccess();
  sub_1C210B158(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1C21092BC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BC8, &qword_1C21789D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_largeBlob;
  swift_beginAccess();
  v16 = *(v1 + v15);
  v17 = v16 == 2;
  v18 = v16 & 1;
  if (v17)
  {
    v18 = 3;
  }

  v41 = v18;
  if (v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = 0xF000000000000000;
  }

  if (v17)
  {
    v20 = 0;
  }

  else
  {
    v20 = 2;
  }

  v42 = v20;
  v43 = v19;
  v21 = !v17;
  v22 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_prf;
  swift_beginAccess();
  sub_1C20EB3E8(v1 + v22, v10, &qword_1EBF23BC8, &qword_1C21789D0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    result = sub_1C20EB498(v10, &qword_1EBF23BC8, &qword_1C21789D0);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 3;
  }

  else
  {
    v39 = v21;
    sub_1C210B098(v10, v14);
    v38 = *v14;
    sub_1C20EB3E8(&v14[*(v11 + 20)], v7, &qword_1EBF23BF0, &unk_1C21813F0);
    v29 = sub_1C2170764();
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    if (v31(v7, 1, v29) == 1)
    {
      sub_1C20EB498(v7, &qword_1EBF23BF0, &unk_1C21813F0);
      v24 = 0;
      v25 = 0xF000000000000000;
    }

    else
    {
      sub_1C2170734();
      v25 = v45;
      v32 = v7;
      v24 = v44;
      (*(v30 + 8))(v32, v29);
    }

    v33 = &v14[*(v11 + 24)];
    v34 = v40;
    sub_1C20EB3E8(v33, v40, &qword_1EBF23BF0, &unk_1C21813F0);
    if (v31(v34, 1, v29) == 1)
    {
      sub_1C210B0FC(v14);
      result = sub_1C20EB498(v34, &qword_1EBF23BF0, &unk_1C21813F0);
      v26 = 0;
      v27 = 0xF000000000000000;
    }

    else
    {
      v35 = v30;
      sub_1C2170734();
      sub_1C210B0FC(v14);
      v26 = v44;
      v27 = v45;
      result = (*(v35 + 8))(v34, v29);
    }

    LOBYTE(v21) = v39;
    if (v25 >> 60 == 15)
    {
      result = sub_1C20B23C8(v26, v27);
      v24 = 0;
      v26 = 0;
      v27 = 0;
      v25 = 0xF000000000000000;
    }

    v28 = v38;
  }

  *a1 = v41;
  *(a1 + 8) = 0;
  v36 = v42;
  *(a1 + 16) = v43;
  *(a1 + 24) = v36;
  *(a1 + 32) = 0;
  *(a1 + 40) = v21;
  *(a1 + 48) = v28;
  *(a1 + 56) = v24;
  *(a1 + 64) = v25;
  *(a1 + 72) = v26;
  *(a1 + 80) = v27;
  *(a1 + 88) = 2;
  return result;
}

uint64_t sub_1C2109780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F707075537369 && a2 == 0xEB00000000646574)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C2171324();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C210980C(uint64_t a1)
{
  v2 = sub_1C210B1C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2109848(uint64_t a1)
{
  v2 = sub_1C210B1C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCPublicKeyCredentialRegistrationExtensionOutputs.LargeBlob.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BD8, &qword_1C21789D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C210B1C8();
  sub_1C2171484();
  sub_1C2171284();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ASCPublicKeyCredentialRegistrationExtensionOutputs.LargeBlob.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BE8, &unk_1C21789E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C210B1C8();
  sub_1C2171464();
  if (!v2)
  {
    v9 = sub_1C21711C4();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1C2109B2C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BD8, &qword_1C21789D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C210B1C8();
  sub_1C2171484();
  sub_1C2171284();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C2109C68()
{
  v1 = 0x31746572636573;
  if (*v0 != 1)
  {
    v1 = 0x32746572636573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F707075537369;
  }
}

uint64_t sub_1C2109CCC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C210BBB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C2109CF4(uint64_t a1)
{
  v2 = sub_1C210B28C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2109D30(uint64_t a1)
{
  v2 = sub_1C210B28C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF.init(isSupported:secret1:secret2:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF(0);
  sub_1C210B21C(a2, &a4[*(v7 + 20)]);
  v8 = &a4[*(v7 + 24)];

  return sub_1C210B21C(a3, v8);
}

uint64_t ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF8, &qword_1C21789F0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C210B28C();
  v13 = v36;
  sub_1C2171464();
  if (v13)
  {
    v16 = a1;
  }

  else
  {
    v14 = v10;
    LOBYTE(v37) = 0;
    v15 = v12;
    LODWORD(v36) = sub_1C21711C4();
    v39 = 1;
    sub_1C20D8E24();
    sub_1C21711A4();
    v18 = v38;
    v34 = v37;
    v39 = 2;
    sub_1C21711A4();
    v32 = v18;
    v33 = v15;
    v19 = v38;
    v28 = v37;
    v31 = a1;
    if (v18 >> 60 == 15)
    {
      v20 = 1;
    }

    else
    {
      v37 = v34;
      v38 = v18;
      sub_1C20D865C(v34, v18);
      sub_1C2170744();
      v20 = 0;
    }

    v21 = sub_1C2170764();
    v29 = *(*(v21 - 8) + 56);
    v30 = v8;
    v29(v8, v20, 1, v21);
    if (v19 >> 60 == 15)
    {
      sub_1C20B23C8(v34, v32);
      (*(v14 + 8))(v33, v9);
      v22 = 1;
    }

    else
    {
      v23 = v19;
      v24 = v28;
      v37 = v28;
      v38 = v23;
      sub_1C20D865C(v28, v23);
      sub_1C2170744();
      sub_1C20B23C8(v34, v32);
      sub_1C20B23C8(v24, v23);
      (*(v14 + 8))(v33, v9);
      v22 = 0;
    }

    v25 = v35;
    v29(v6, v22, 1, v21);
    *v25 = v36 & 1;
    v26 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF(0);
    sub_1C210B21C(v30, &v25[*(v26 + 20)]);
    sub_1C210B21C(v6, &v25[*(v26 + 24)]);
    v16 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

uint64_t ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23C10, &qword_1C21789F8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C210B28C();
  sub_1C2171484();
  LOBYTE(v28) = 0;
  v14 = v27;
  sub_1C2171284();
  if (!v14)
  {
    v26 = v7;
    v27 = v11;
    *&v25 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF(0);
    sub_1C20EB3E8(v2 + *(v25 + 20), v9, &qword_1EBF23BF0, &unk_1C21813F0);
    v16 = sub_1C2170764();
    v17 = *(v16 - 8);
    v24 = *(v17 + 48);
    v18 = v24(v9, 1, v16);
    v23 = v17;
    if (v18 == 1)
    {
      sub_1C20EB498(v9, &qword_1EBF23BF0, &unk_1C21813F0);
      v19 = xmmword_1C21769B0;
    }

    else
    {
      sub_1C2170734();
      v22 = v28;
      (*(v17 + 8))(v9, v16);
      v19 = v22;
    }

    v28 = v19;
    v29 = 1;
    sub_1C20D8CEC();
    sub_1C2171264();
    sub_1C20B23C8(v28, *(&v28 + 1));
    v20 = v26;
    sub_1C20EB3E8(v2 + *(v25 + 24), v26, &qword_1EBF23BF0, &unk_1C21813F0);
    if (v24(v20, 1, v16) == 1)
    {
      sub_1C20EB498(v20, &qword_1EBF23BF0, &unk_1C21813F0);
      v21 = xmmword_1C21769B0;
    }

    else
    {
      sub_1C2170734();
      v25 = v28;
      (*(v23 + 8))(v20, v16);
      v21 = v25;
    }

    v11 = v27;
    v28 = v21;
    v29 = 2;
    sub_1C2171264();
    sub_1C20B23C8(v28, *(&v28 + 1));
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1C210A6F8(uint64_t a1)
{
  v2 = sub_1C210B2E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C210A734(uint64_t a1)
{
  v2 = sub_1C210B2E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ASCPublicKeyCredentialRegistrationExtensionOutputs.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C210A7DC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BC8, &qword_1C21789D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23C20, &qword_1C2178A00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15[-v10];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C210B2E0();
  sub_1C2171484();
  v12 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_largeBlob;
  swift_beginAccess();
  v15[0] = *(v3 + v12);
  v16 = 0;
  sub_1C210B334();
  sub_1C2171264();
  if (!v2)
  {
    v13 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_prf;
    swift_beginAccess();
    sub_1C20EB3E8(v3 + v13, v7, &qword_1EBF23BC8, &qword_1C21789D0);
    v16 = 1;
    type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF(0);
    sub_1C21088A0(&qword_1EBF23C38, type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF, &protocol conformance descriptor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF);
    sub_1C2171264();
    sub_1C20EB498(v7, &qword_1EBF23BC8, &qword_1C21789D0);
  }

  return (*(v9 + 8))(v11, v8);
}

void *ASCPublicKeyCredentialRegistrationExtensionOutputs.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BC8, &qword_1C21789D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23C40, &qword_1C2178A08);
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_largeBlob;
  v3[OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_largeBlob] = 2;
  v12 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_prf;
  v13 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF(0);
  v14 = *(*(v13 - 8) + 56);
  v25 = v12;
  v14(&v3[v12], 1, 1, v13);
  v15 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1C210B2E0();
  sub_1C2171464();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    sub_1C20EB498(&v3[v25], &qword_1EBF23BC8, &qword_1C21789D0);
    type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v23;
    v28 = 0;
    sub_1C210B388();
    v17 = v24;
    sub_1C21711A4();
    v18 = v27[0];
    swift_beginAccess();
    v3[v11] = v18;
    LOBYTE(v27[0]) = 1;
    sub_1C21088A0(&unk_1EBF23C50, type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF, &protocol conformance descriptor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF);
    sub_1C21711A4();
    v20 = v25;
    swift_beginAccess();
    sub_1C210B158(v7, &v3[v20]);
    swift_endAccess();
    v21 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs(0);
    v26.receiver = v3;
    v26.super_class = v21;
    v3 = objc_msgSendSuper2(&v26, sel_init);
    (*(v16 + 8))(v10, v17);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
  }

  return v3;
}

void *sub_1C210AE2C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs(0));
  result = ASCPublicKeyCredentialRegistrationExtensionOutputs.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1C210AEA8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BC8, &qword_1C21789D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_largeBlob;
  v1[OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_largeBlob] = 2;
  v7 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_prf;
  v8 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF(0);
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_largeBlob;
  swift_beginAccess();
  LOBYTE(v9) = *(a1 + v9);
  swift_beginAccess();
  v1[v6] = v9;
  v10 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_prf;
  swift_beginAccess();
  sub_1C20EB3E8(a1 + v10, v5, &qword_1EBF23BC8, &qword_1C21789D0);
  swift_beginAccess();
  sub_1C210B158(v5, &v1[v7]);
  swift_endAccess();
  v11 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs(0);
  v13.receiver = v1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_1C210B060(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C210B098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C210B0FC(uint64_t a1)
{
  v2 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C210B158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BC8, &qword_1C21789D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C210B1C8()
{
  result = qword_1EBF23BE0;
  if (!qword_1EBF23BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23BE0);
  }

  return result;
}

uint64_t sub_1C210B21C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C210B28C()
{
  result = qword_1EBF23C00;
  if (!qword_1EBF23C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23C00);
  }

  return result;
}

unint64_t sub_1C210B2E0()
{
  result = qword_1EBF23C28;
  if (!qword_1EBF23C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23C28);
  }

  return result;
}

unint64_t sub_1C210B334()
{
  result = qword_1EBF23C30;
  if (!qword_1EBF23C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23C30);
  }

  return result;
}

unint64_t sub_1C210B388()
{
  result = qword_1EBF23C48;
  if (!qword_1EBF23C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23C48);
  }

  return result;
}

void sub_1C210B3E4(uint64_t a1)
{
  sub_1C210B814(319, &unk_1EBF23C70, type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for ASCPublicKeyCredentialRegistrationExtensionOutputs.LargeBlob(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_1C210B77C(uint64_t a1)
{
  sub_1C210B814(319, &qword_1EBF23C90, MEMORY[0x1E6966458]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C210B814(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C2170D24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C210B89C()
{
  result = qword_1EBF23C98;
  if (!qword_1EBF23C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23C98);
  }

  return result;
}

unint64_t sub_1C210B8F4()
{
  result = qword_1EBF23CA0;
  if (!qword_1EBF23CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23CA0);
  }

  return result;
}

unint64_t sub_1C210B94C()
{
  result = qword_1EBF23CA8;
  if (!qword_1EBF23CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23CA8);
  }

  return result;
}

unint64_t sub_1C210B9A4()
{
  result = qword_1EBF23CB0;
  if (!qword_1EBF23CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23CB0);
  }

  return result;
}

unint64_t sub_1C210B9FC()
{
  result = qword_1EBF23CB8;
  if (!qword_1EBF23CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23CB8);
  }

  return result;
}

unint64_t sub_1C210BA54()
{
  result = qword_1EBF23CC0;
  if (!qword_1EBF23CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23CC0);
  }

  return result;
}

unint64_t sub_1C210BAAC()
{
  result = qword_1EBF23CC8;
  if (!qword_1EBF23CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23CC8);
  }

  return result;
}

unint64_t sub_1C210BB04()
{
  result = qword_1EBF23CD0;
  if (!qword_1EBF23CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23CD0);
  }

  return result;
}

unint64_t sub_1C210BB5C()
{
  result = qword_1EBF23CD8;
  if (!qword_1EBF23CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23CD8);
  }

  return result;
}

uint64_t sub_1C210BBB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F707075537369 && a2 == 0xEB00000000646574;
  if (v4 || (sub_1C2171324() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x31746572636573 && a2 == 0xE700000000000000 || (sub_1C2171324() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x32746572636573 && a2 == 0xE700000000000000)
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

uint64_t sub_1C210BD28()
{
  v0 = sub_1C2170254();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - v5;
  sub_1C2170244();
  sub_1C2170244();
  v7 = sub_1C2170234();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v4, v0);
  result = (v10)(v6, v0);
  qword_1EBF23CE0 = v7;
  unk_1EBF23CE8 = v9;
  return result;
}

uint64_t static ASCPasskeyAccountRegistrationUserState.hideMyEmailLocalizedString.getter()
{
  if (qword_1EBF230C0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBF23CE0;

  return v0;
}

uint64_t sub_1C210C050@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_name;
  swift_beginAccess();
  return sub_1C20EB3E8(v1 + v3, a1, &unk_1EBF23420, &unk_1C2176820);
}

uint64_t sub_1C210C1D0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_name;
  swift_beginAccess();
  sub_1C210F3B4(a1, v1 + v9);
  swift_endAccess();
  sub_1C20EB3E8(v1 + v9, v8, &unk_1EBF23420, &unk_1C2176820);
  v10 = sub_1C216FF04();
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) != 1)
  {
    sub_1C20EB498(v8, &unk_1EBF23420, &unk_1C2176820);
    v11 = [objc_opt_self() safari_browserDefaults];
    sub_1C20EB3E8(v1 + v9, v6, &unk_1EBF23420, &unk_1C2176820);
    sub_1C210C460(v6, 0xD00000000000001DLL, 0x80000001C2185740);

    v8 = v6;
  }

  sub_1C20EB498(a1, &unk_1EBF23420, &unk_1C2176820);
  return sub_1C20EB498(v8, &unk_1EBF23420, &unk_1C2176820);
}

uint64_t sub_1C210C3B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C20EB3E8(a1, &v6 - v3, &unk_1EBF23420, &unk_1C2176820);
  return sub_1C210C1D0(v4);
}

uint64_t sub_1C210C460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  v6 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C216FD44();
  swift_allocObject();
  sub_1C216FD34();
  sub_1C2119A30();
  v7 = sub_1C216FD24();
  v9 = v8;

  v10 = sub_1C2170154();
  v11 = sub_1C21708F4();
  [v4 setObject:v10 forKey:v11];

  return sub_1C20D3174(v7, v9);
}

uint64_t sub_1C210C840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1C216FD44();
  swift_allocObject();
  sub_1C216FD34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23F38, &qword_1C2179270);
  sub_1C211997C();
  v5 = sub_1C216FD24();
  v7 = v6;

  v8 = sub_1C2170154();
  v9 = sub_1C21708F4();
  [v4 setObject:v8 forKey:v9];

  return sub_1C20D3174(v5, v7);
}

uint64_t (*sub_1C210CB20(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_name;
  v5[5] = v7;
  v5[6] = v8;
  swift_beginAccess();
  return sub_1C210CC14;
}

void sub_1C210CC14(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[5];
    sub_1C20EB3E8(v3[3] + v3[6], v4, &unk_1EBF23420, &unk_1C2176820);
    v5 = sub_1C216FF04();
    v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
    sub_1C20EB498(v4, &unk_1EBF23420, &unk_1C2176820);
    if (v6 != 1)
    {
      v7 = v3[6];
      v9 = v3[3];
      v8 = v3[4];
      v10 = [objc_opt_self() safari_browserDefaults];
      sub_1C20EB3E8(v9 + v7, v8, &unk_1EBF23420, &unk_1C2176820);
      sub_1C210C460(v8, 0xD00000000000001DLL, 0x80000001C2185740);

      sub_1C20EB498(v8, &unk_1EBF23420, &unk_1C2176820);
    }
  }

  v11 = v3[4];
  free(v3[5]);
  free(v11);

  free(v3);
}

void sub_1C210CE38(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddress);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  v6 = v5[1];
  if (v6)
  {
    v7 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_lastCreatedHideMyEmail + 8);
    if (!v7 || (*v5 == *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_lastCreatedHideMyEmail) ? (v8 = v6 == v7) : (v8 = 0), !v8 && (sub_1C2171324() & 1) == 0))
    {
      v9 = [objc_opt_self() safari_browserDefaults];
      if (v5[1])
      {

        v10 = sub_1C21708F4();
      }

      else
      {
        v10 = 0;
      }

      v11 = sub_1C21708F4();
      [v9 setObject:v10 forKey:v11];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1C210CF74(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddress);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  sub_1C210CFEC();
}

void sub_1C210CFEC()
{
  v1 = (v0 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddress);
  swift_beginAccess();
  v2 = v1[1];
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_lastCreatedHideMyEmail + 8);
    if (!v3 || (*v1 == *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_lastCreatedHideMyEmail) ? (v4 = v2 == v3) : (v4 = 0), !v4 && (sub_1C2171324() & 1) == 0))
    {
      v5 = [objc_opt_self() safari_browserDefaults];
      if (v1[1])
      {

        v6 = sub_1C21708F4();
      }

      else
      {
        v6 = 0;
      }

      v7 = sub_1C21708F4();
      [v5 setObject:v6 forKey:v7];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t (*sub_1C210D114(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddress;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1C210D19C;
}

void sub_1C210D19C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = (v4 + v3[4]);
    v6 = v5[1];
    if (v6)
    {
      v7 = (v4 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_lastCreatedHideMyEmail);
      v8 = v7[1];
      if (!v8 || (*v5 == *v7 ? (v9 = v6 == v8) : (v9 = 0), !v9 && (sub_1C2171324() & 1) == 0))
      {
        v10 = [objc_opt_self() safari_browserDefaults];
        if (v5[1])
        {

          v11 = sub_1C21708F4();
        }

        else
        {
          v11 = 0;
        }

        v12 = sub_1C21708F4();
        [v10 setObject:v11 forKey:v12];

        swift_unknownObjectRelease();
      }
    }
  }

  free(v3);
}

void *sub_1C210D31C()
{
  v1 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumber;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C210D3C4(void *a1)
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumber;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  if (*(v1 + v3))
  {
    v6 = [objc_opt_self() safari_browserDefaults];
    v7 = *(v1 + v3);
    v8 = v7;
    sub_1C210C840(v7, 0xD00000000000001ELL, 0x80000001C2185780);
  }
}

uint64_t (*sub_1C210D494(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumber;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1C210D51C;
}

void sub_1C210D51C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    if (*(v5 + v4))
    {
      v6 = [objc_opt_self() safari_browserDefaults];
      v7 = *(v5 + v4);
      v8 = v7;
      sub_1C210C840(v7, 0xD00000000000001ELL, 0x80000001C2185780);
    }
  }

  free(v3);
}

id sub_1C210D5E0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_1C21708F4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1C210D674(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

void sub_1C210D748(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_selectedCredentialProviderExtensionIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  if (!a2)
  {
    sub_1C2170914();
  }

  v6 = [objc_opt_self() safari_browserDefaults];
  v7 = sub_1C21708F4();

  v8 = sub_1C21708F4();
  [v6 setObject:v7 forKey:v8];
}

uint64_t (*sub_1C210D850(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_selectedCredentialProviderExtensionIdentifier;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1C210D8D8;
}

void sub_1C210D8D8(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if (!*(v3[3] + v3[4] + 8))
    {
      sub_1C2170914();
    }

    v4 = objc_opt_self();

    v5 = [v4 safari_browserDefaults];
    v6 = sub_1C21708F4();

    v7 = sub_1C21708F4();
    [v5 setObject:v6 forKey:v7];
  }

  free(v3);
}

uint64_t sub_1C210DAE0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t sub_1C210DBA0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

id ASCPasskeyAccountRegistrationUserState.init(for:clientApplicationBundleID:)(_BYTE *a1, char *a2, char *a3)
{
  v196 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v184 = &v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v182 = &v181 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v190 = &v181 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v181 - v14;
  v16 = sub_1C216FF04();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v183 = &v181 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v193 = &v181 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v195 = &v181 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v185 = &v181 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v181 - v26;
  v28 = v17[7];
  v187 = v17 + 7;
  v186 = v28;
  v28(&v3[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_name], 1, 1, v16);
  v29 = &v3[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddress];
  *v29 = 0;
  v29[1] = 0;
  *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumber] = 0;
  v30 = &v3[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_selectedCredentialProviderExtensionIdentifier];
  *v30 = 0;
  v30[1] = 0;
  v31 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_nameSuggestions] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddressSuggestions] = v31;
  *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumberSuggestions] = v31;
  v3[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_cachedCanUseHideMyEmail] = 2;
  v32 = &v3[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_lastCreatedHideMyEmail];
  *v32 = 0;
  v32[1] = 0;
  *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___appleAccount] = 1;
  (*(v7 + 56))(&v3[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___appleAccountName], 1, 1, v6);
  *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___meContact] = 1;
  *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___simPhoneNumbers] = 0;
  *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___forwardToEmailAddress] = xmmword_1C2178F30;
  *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___enabledExtensions] = 0;
  *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___sortedCredentialProviderIdentifiers] = 0;
  v3[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___defaultPresentedContactIdentifier] = 3;
  *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_acceptedContactIdentifiers] = *&a1[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_acceptedContactIdentifiers];
  v192 = a1;
  v3[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_shouldRequestName] = a1[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_shouldRequestName];
  v33 = &v3[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_clientApplicationBundleID];
  *v33 = v196;
  v33[1] = a3;
  v34 = type metadata accessor for ASCPasskeyAccountRegistrationUserState(0);
  v202.receiver = v3;
  v202.super_class = v34;

  v188 = a3;

  v35 = objc_msgSendSuper2(&v202, sel_init);
  v36 = objc_opt_self();
  v37 = v35;
  v38 = [v36 safari_browserDefaults];
  sub_1C210F424(v15);

  v189 = v17[6];
  v39 = v189(v15, 1, v16);
  v196 = v37;
  v194 = v16;
  v191 = v17;
  if (v39 == 1)
  {
    sub_1C20EB498(v15, &unk_1EBF23420, &unk_1C2176820);
    v40 = v17;
  }

  else
  {
    v181 = v36;
    v41 = v17[4];
    v41(v27, v15, v16);
    v42 = v17[2];
    v43 = v185;
    v42(v185, v27, v16);
    v44 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_nameSuggestions;
    swift_beginAccess();
    v45 = *&v37[v44];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v37[v44] = v45;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v45 = sub_1C2115280(0, *(v45 + 2) + 1, 1, v45, &unk_1EBF23740, &unk_1C2176DB0, MEMORY[0x1E6968A70]);
      *&v196[v44] = v45;
    }

    v48 = *(v45 + 2);
    v47 = *(v45 + 3);
    v40 = v191;
    if (v48 >= v47 >> 1)
    {
      v45 = sub_1C2115280((v47 > 1), v48 + 1, 1, v45, &unk_1EBF23740, &unk_1C2176DB0, MEMORY[0x1E6968A70]);
    }

    *(v45 + 2) = v48 + 1;
    v49 = v43;
    v50 = v194;
    v41(&v45[((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v48], v49, v194);
    v37 = v196;
    *&v196[v44] = v45;
    (*(v40 + 8))(v27, v50);
    v36 = v181;
  }

  v51 = [v36 safari_browserDefaults];
  v52 = sub_1C21708F4();
  v53 = [v51 stringForKey_];

  v54 = &unk_1EBF36000;
  if (!v53)
  {
    goto LABEL_13;
  }

  v55 = sub_1C2170914();
  v57 = v56;

  v58 = v37;
  v59 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddressSuggestions;
  swift_beginAccess();
  v60 = *&v58[v59];
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *&v58[v59] = v60;
  if ((v61 & 1) == 0)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v63 = *(v60 + 16);
    v62 = *(v60 + 24);
    if (v63 >= v62 >> 1)
    {
      v60 = sub_1C2115044((v62 > 1), v63 + 1, 1, v60);
    }

    *(v60 + 16) = v63 + 1;
    v64 = v60 + 16 * v63;
    *(v64 + 32) = v55;
    *(v64 + 40) = v57;
    v65 = v196;
    *&v196[v59] = v60;
    v37 = v65;
    swift_endAccess();
LABEL_13:
    v66 = [v36 safari_browserDefaults];
    v67 = sub_1C210F790(0xD00000000000001ELL, 0x80000001C2185780);

    if (v67)
    {
      v68 = v37;
      v69 = *(v54 + 153);
      swift_beginAccess();
      v70 = v67;
      MEMORY[0x1C6913DF0]();
      if (*((*&v68[v69] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v68[v69] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C2170B74();
      }

      sub_1C2170B94();
      swift_endAccess();

      v37 = v68;
    }

    v71 = v190;
    sub_1C210FEC8(v190);
    v72 = v194;
    if (v189(v71, 1, v194) == 1)
    {
      sub_1C20EB498(v71, &unk_1EBF23420, &unk_1C2176820);
    }

    else
    {
      v73 = *(v40 + 32);
      v74 = v195;
      v73(v195, v71, v72);
      (*(v40 + 16))(v193, v74, v72);
      v75 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_nameSuggestions;
      swift_beginAccess();
      v76 = *&v37[v75];
      v77 = swift_isUniquelyReferenced_nonNull_native();
      *&v37[v75] = v76;
      if ((v77 & 1) == 0)
      {
        v76 = sub_1C2115280(0, *(v76 + 2) + 1, 1, v76, &unk_1EBF23740, &unk_1C2176DB0, MEMORY[0x1E6968A70]);
        *&v196[v75] = v76;
      }

      v79 = *(v76 + 2);
      v78 = *(v76 + 3);
      if (v79 >= v78 >> 1)
      {
        v76 = sub_1C2115280((v78 > 1), v79 + 1, 1, v76, &unk_1EBF23740, &unk_1C2176DB0, MEMORY[0x1E6968A70]);
      }

      *(v76 + 2) = v79 + 1;
      v80 = v194;
      v73(&v76[((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v79], v193, v194);
      v37 = v196;
      *&v196[v75] = v76;
      (*(v40 + 8))(v195, v80);
    }

    v81 = sub_1C210FE2C();
    if (!v81)
    {
      goto LABEL_27;
    }

    v82 = v81;
    v83 = [v36 safari_browserDefaults];
    v84 = sub_1C21708F4();
    v85 = [v83 BOOLForKey_];

    if (v85)
    {

LABEL_27:

      goto LABEL_34;
    }

    result = [v82 aa_primaryEmail];
    if (!result)
    {
      goto LABEL_107;
    }

    v87 = result;

    v88 = sub_1C2170914();
    v90 = v89;

    v91 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddressSuggestions;
    v92 = v196;
    swift_beginAccess();
    v93 = *&v92[v91];
    v94 = swift_isUniquelyReferenced_nonNull_native();
    *&v92[v91] = v93;
    if ((v94 & 1) == 0)
    {
      v93 = sub_1C2115044(0, *(v93 + 2) + 1, 1, v93);
      *&v196[v91] = v93;
    }

    v96 = *(v93 + 2);
    v95 = *(v93 + 3);
    if (v96 >= v95 >> 1)
    {
      v93 = sub_1C2115044((v95 > 1), v96 + 1, 1, v93);
    }

    *(v93 + 2) = v96 + 1;
    v97 = &v93[16 * v96];
    *(v97 + 4) = v88;
    *(v97 + 5) = v90;
    v98 = v196;
    *&v196[v91] = v93;
    v37 = v98;
    swift_endAccess();

LABEL_34:
    v99 = sub_1C2110678();
    v100 = *(v54 + 153);
    swift_beginAccess();
    v193 = v100;
    sub_1C210FBC0(v99);
    swift_endAccess();
    if (v192[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_test_shouldLoadContactData] != 1)
    {
      goto LABEL_77;
    }

    v101 = sub_1C211034C();
    if (!v101)
    {
      goto LABEL_77;
    }

    v102 = v101;
    v103 = [v101 namePrefix];
    v104 = sub_1C2170914();
    v106 = v105;

    sub_1C210FDA4(v104, v106);
    v195 = v107;

    v108 = [v102 givenName];
    v109 = sub_1C2170914();
    v111 = v110;

    v190 = sub_1C210FDA4(v109, v111);
    v189 = v112;

    v113 = [v102 middleName];
    v114 = sub_1C2170914();
    v116 = v115;

    v60 = sub_1C210FDA4(v114, v116);
    v36 = v117;

    v118 = [v102 familyName];
    v119 = sub_1C2170914();
    v121 = v120;

    sub_1C210FDA4(v119, v121);

    v122 = [v102 nameSuffix];
    v123 = sub_1C2170914();
    v125 = v124;

    sub_1C210FDA4(v123, v125);

    v186(v182, 1, 1, v194);
    v126 = v183;
    sub_1C216FED4();
    v127 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_nameSuggestions;
    swift_beginAccess();
    v128 = *&v37[v127];
    v129 = swift_isUniquelyReferenced_nonNull_native();
    *&v37[v127] = v128;
    if ((v129 & 1) == 0)
    {
      v128 = sub_1C2115280(0, v128[2] + 1, 1, v128, &unk_1EBF23740, &unk_1C2176DB0, MEMORY[0x1E6968A70]);
      *&v37[v127] = v128;
    }

    v131 = v128[2];
    v130 = v128[3];
    if (v131 >= v130 >> 1)
    {
      v128 = sub_1C2115280((v130 > 1), v131 + 1, 1, v128, &unk_1EBF23740, &unk_1C2176DB0, MEMORY[0x1E6968A70]);
    }

    v128[2] = v131 + 1;
    (v191[4])(v128 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + v191[9] * v131, v126, v194);
    *&v196[v127] = v128;
    v55 = [v102 emailAddresses];
    v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23D60, &qword_1C2178F48);
    v57 = sub_1C2170B64();

    if (v57 >> 62)
    {
      v54 = sub_1C2170E84();
    }

    else
    {
      v54 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v190 = v102;
    v40 = MEMORY[0x1E69E7CC0];
    if (v54)
    {
      v60 = 0;
      v195 = (v57 & 0xC000000000000001);
      v59 = v57 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v195)
        {
          v132 = MEMORY[0x1C69141F0](v60, v57);
        }

        else
        {
          if (v60 >= *(v59 + 16))
          {
            goto LABEL_69;
          }

          v132 = *(v57 + 8 * v60 + 32);
        }

        v55 = v132;
        v133 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          break;
        }

        v134 = v57;
        v135 = v54;
        v136 = [v132 value];
        v36 = sub_1C2170914();
        v138 = v137;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_1C2115044(0, *(v40 + 16) + 1, 1, v40);
        }

        v140 = *(v40 + 16);
        v139 = *(v40 + 24);
        v55 = v140 + 1;
        if (v140 >= v139 >> 1)
        {
          v40 = sub_1C2115044((v139 > 1), v140 + 1, 1, v40);
        }

        *(v40 + 16) = v55;
        v141 = v40 + 16 * v140;
        *(v141 + 32) = v36;
        *(v141 + 40) = v138;
        ++v60;
        v54 = v135;
        v142 = v133 == v135;
        v57 = v134;
        if (v142)
        {
          goto LABEL_56;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

LABEL_56:

    swift_beginAccess();
    sub_1C210FCB0(v40);
    swift_endAccess();
    v143 = v190;
    v57 = [v190 phoneNumbers];
    v55 = sub_1C2170B64();

    v201 = MEMORY[0x1E69E7CC0];
    if (!(v55 >> 62))
    {
      v40 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v40)
      {
        break;
      }

      goto LABEL_58;
    }

    v40 = sub_1C2170E84();
    if (!v40)
    {
      break;
    }

LABEL_58:
    v144 = 0;
    v59 = v55 & 0xC000000000000001;
    while (1)
    {
      if (v59)
      {
        v145 = MEMORY[0x1C69141F0](v144, v55);
      }

      else
      {
        if (v144 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_71;
        }

        v145 = *(v55 + 8 * v144 + 32);
      }

      v57 = v145;
      v146 = v144 + 1;
      if (__OFADD__(v144, 1))
      {
        break;
      }

      v147 = [v145 value];
      v148 = type metadata accessor for ASCPhoneNumber();
      v149 = objc_allocWithZone(v148);
      *&v149[OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber] = v147;
      v197.receiver = v149;
      v197.super_class = v148;
      v54 = sel_init;
      v36 = v147;
      v60 = objc_msgSendSuper2(&v197, sel_init);

      v57 = &v201;
      MEMORY[0x1C6913DF0]();
      if (*((v201 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v201 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v54 = *((v201 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C2170B74();
      }

      sub_1C2170B94();
      ++v144;
      if (v146 == v40)
      {
        v150 = v201;
        v143 = v190;
        goto LABEL_76;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    v60 = sub_1C2115044(0, *(v60 + 16) + 1, 1, v60);
    *&v196[v59] = v60;
  }

  v150 = MEMORY[0x1E69E7CC0];
LABEL_76:

  swift_beginAccess();
  sub_1C210FBC0(v150);
  swift_endAccess();

LABEL_77:
  v151 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_nameSuggestions;
  swift_beginAccess();
  v152 = MEMORY[0x1E69E7CD0];
  v200 = MEMORY[0x1E69E7CD0];

  v154 = sub_1C2115D04(v153, &v200);

  *&v196[v151] = v154;

  v155 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddressSuggestions;
  swift_beginAccess();
  v198 = v152;
  v156 = v196;

  v158 = sub_1C2115FF8(v157);

  *(v156 + v155) = v158;

  v159 = *&v193[v156];
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1C2170E84())
  {

    sub_1C2116158(MEMORY[0x1E69E7CC0]);
  }

  else
  {

    v160 = MEMORY[0x1E69E7CD0];
  }

  v198 = v160;
  v161 = sub_1C2116424(v159, &v198);

  *&v193[v156] = v161;

  if (*(v156 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_shouldRequestName) == 1)
  {
    v162 = *(v156 + v151);
    if (*(v162 + 16))
    {
      v163 = v184;
      v164 = v194;
      (v191[2])(v184, v162 + ((*(v191 + 80) + 32) & ~*(v191 + 80)), v194);
      v165 = 0;
    }

    else
    {
      v165 = 1;
      v163 = v184;
      v164 = v194;
    }

    v186(v163, v165, 1, v164);
    v166 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_name;
    swift_beginAccess();
    sub_1C21198A4(v163, v156 + v166, &unk_1EBF23420, &unk_1C2176820);
    swift_endAccess();
  }

  sub_1C2111B90(&v199);
  if (v199 == 2)
  {
    goto LABEL_101;
  }

  if ((v199 & 1) == 0)
  {
    v170 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumber;
    swift_beginAccess();
    v171 = *(v156 + v170);
    *(v156 + v170) = 0;

    goto LABEL_101;
  }

  v167 = *(v156 + v155);
  if (v167[2])
  {
    v169 = v167[4];
    v168 = v167[5];
  }

  else
  {
    v169 = 0;
    v168 = 0;
  }

  v172 = v156 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddress;
  swift_beginAccess();
  *v172 = v169;
  v172[1] = v168;

  v173 = *(v156 + v155);
  if (v173[2])
  {
    v175 = v173[4];
    v174 = v173[5];
  }

  else
  {
    v175 = 0;
    v174 = 0;
  }

  if (qword_1EBF230C0 != -1)
  {
    swift_once();
    if (v174)
    {
      goto LABEL_95;
    }

    goto LABEL_101;
  }

  if (!v174)
  {
    goto LABEL_101;
  }

LABEL_95:
  if (v175 == qword_1EBF23CE0 && v174 == unk_1EBF23CE8)
  {

    goto LABEL_99;
  }

  v176 = sub_1C2171324();

  if ((v176 & 1) == 0)
  {
LABEL_101:
    v177 = sub_1C211197C();
    v179 = v178;

    v180 = (v156 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_selectedCredentialProviderExtensionIdentifier);
    swift_beginAccess();
    *v180 = v177;
    v180[1] = v179;

    return v156;
  }

LABEL_99:
  result = swift_beginAccess();
  if (*(*(v156 + v155) + 16))
  {

    sub_1C211666C(0, 1);
    swift_endAccess();

    goto LABEL_101;
  }

  __break(1u);
LABEL_107:
  __break(1u);
  return result;
}

uint64_t sub_1C210F3B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C210F424@<X0>(void *a3@<X8>)
{
  v5 = sub_1C216FF04();
  v6 = sub_1C21708F4();
  v7 = [v3 dataForKey_];

  if (v7)
  {
    v8 = sub_1C2170174();
    v10 = v9;

    sub_1C216FCE4();
    swift_allocObject();
    sub_1C216FCD4();
    sub_1C2116A08(&qword_1EBF23DF8, MEMORY[0x1E6968A70], MEMORY[0x1E6968A90]);
    sub_1C216FCC4();
    sub_1C20D3174(v8, v10);

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(*(v5 - 8) + 56);

  return v12(a3, v11, 1, v5);
}