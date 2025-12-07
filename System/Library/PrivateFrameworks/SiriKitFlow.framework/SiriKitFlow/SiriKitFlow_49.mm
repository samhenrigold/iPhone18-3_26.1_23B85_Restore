uint64_t sub_1DD001B3C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA20E8, &unk_1DD0E40F0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - v4;
  sub_1DD0DC72C();
  v6 = sub_1DD0DBD0C();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1DCB0E9D8(v5, &qword_1ECCA20E8, &unk_1DD0E40F0);
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }

    v7 = qword_1EDE57E18;
    v8 = sub_1DD0DE6EC();
    sub_1DD0DD7EC("Unable to determine domain node from NLIntent", 45, 2, &dword_1DCAFC000, v7, v8, MEMORY[0x1E69E7CC0]);
    v9 = 0;
  }

  else
  {
    v10 = sub_1DD0DBCFC();
    v12 = v11;
    (*(*(v6 - 8) + 8))(v5, v6);
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }

    sub_1DD0DE6DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1DD0E07C0;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1DCB34060();
    *(v13 + 32) = v10;
    *(v13 + 40) = v12;

    sub_1DD0DD7EC("StartCallUnsetRelationshipFlowConfig testing %s", v17);

    v14 = (v1 + *(type metadata accessor for StartCallUnsetRelationshipFlowConfig(0) + 20));
    if (*v14 == v10 && v14[1] == v12)
    {

      v9 = 1;
    }

    else
    {
      v9 = sub_1DD0DF0AC();
    }
  }

  return v9 & 1;
}

uint64_t sub_1DD001DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABF68, &qword_1DD10A048);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v46 - v6;
  type metadata accessor for PhoneIntent(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PhoneIntent.Contact(0);
  OUTLINED_FUNCTION_2();
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v46 - v19;
  sub_1DD0DC76C();
  OUTLINED_FUNCTION_2();
  (*(v21 + 16))(v11, a1);
  if (qword_1ECCA13F8 != -1)
  {
    OUTLINED_FUNCTION_6_82(&qword_1ECCA13F8);
  }

  OUTLINED_FUNCTION_5_117();
  sub_1DD003EA8(v22, v23, &unk_1DD10A2C8);
  OUTLINED_FUNCTION_4_115();
  sub_1DD003EA8(v24, v25, &unk_1DD10A288);
  v26 = sub_1DD0DBCCC();
  OUTLINED_FUNCTION_1_137();
  sub_1DD003E30(v11, v27);
  sub_1DCC62364(v26, v7);

  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1DCB0E9D8(v7, &qword_1ECCABF68, &qword_1DD10A048);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    *a2 = xmmword_1DD0E3FF0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    sub_1DD003EF0(v7, v20);
    sub_1DD003F54(v20, v17, type metadata accessor for PhoneIntent.Contact);
    OUTLINED_FUNCTION_4_115();
    sub_1DD003EA8(v35, v36, &unk_1DD10A260);
    OUTLINED_FUNCTION_11_43();
    v37 = sub_1DD0DBE8C();
    v48 = v38;
    v49 = v37;
    OUTLINED_FUNCTION_11_43();
    v39 = sub_1DD0DBE6C();
    v46 = v40;
    v47 = v39;
    OUTLINED_FUNCTION_11_43();
    v29 = sub_1DD0DBE4C();
    v30 = v41;
    OUTLINED_FUNCTION_11_43();
    v31 = sub_1DD0DBE5C();
    v32 = v42;
    OUTLINED_FUNCTION_11_43();
    v33 = sub_1DD0DBE7C();
    v34 = v43;
    sub_1DD003E30(v20, type metadata accessor for PhoneIntent.Contact);
    result = sub_1DD003E30(v17, type metadata accessor for PhoneIntent.Contact);
    v44 = v48;
    *a2 = v49;
    *(a2 + 8) = v44;
    v45 = v46;
    *(a2 + 16) = v47;
    *(a2 + 24) = v45;
  }

  *(a2 + 32) = v29;
  *(a2 + 40) = v30;
  *(a2 + 48) = v31;
  *(a2 + 56) = v32;
  *(a2 + 64) = v33;
  *(a2 + 72) = v34;
  return result;
}

uint64_t sub_1DD002110(uint64_t a1)
{
  type metadata accessor for PhoneIntent(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD0DC76C();
  OUTLINED_FUNCTION_2();
  (*(v6 + 16))(v5, a1);
  if (qword_1ECCA1408 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_117();
  sub_1DD003EA8(v7, v8, &unk_1DD10A2C8);
  sub_1DD0DBCEC();
  v9 = v16;
  if (v16 == 4)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }

    v10 = qword_1EDE57E18;
    v11 = sub_1DD0DE6EC();
    sub_1DD0DD7EC("Could not parse confirmation node for PhoneIntent", 49, 2, &dword_1DCAFC000, v10, v11, MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_1_137();
    sub_1DD003E30(v5, v12);
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_1_137();
    sub_1DD003E30(v5, v14);
    return 0x10001u >> (8 * v9);
  }
}

uint64_t sub_1DD0022B8@<X0>(uint64_t a1@<X8>)
{
  NLContextUpdate.init()(a1);
  v2 = sub_1DD002414(0);
  v4 = v3;

  *(a1 + 184) = v2;
  *(a1 + 192) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  v5 = swift_allocObject();
  v6 = OUTLINED_FUNCTION_13_42(v5, xmmword_1DD0E07C0);
  v14 = OUTLINED_FUNCTION_10_45(v6, v7, v8, v9, v10, v11, v12, v13, v26, v27);
  OUTLINED_FUNCTION_3_74(v14, v15, v16, v17, v18, v19, MEMORY[0x1E69E6158], v20, MEMORY[0x1E69E6158], v14, v14, v14, v28, v29, v30);
  sub_1DD0DEA3C();

  sub_1DD002414(4);
  OUTLINED_FUNCTION_9_47();
  v21 = sub_1DD0DE06C();
  MEMORY[0x1E12A6780](v21);

  v5[2].n128_u64[0] = v31;
  v5[2].n128_u64[1] = v32;

  *(a1 + 168) = v5;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1DD0E32B0;
  *(v22 + 32) = sub_1DD002414(2);
  *(v22 + 40) = v23;
  *(v22 + 48) = sub_1DD002414(3);
  *(v22 + 56) = v24;

  *(a1 + 160) = v22;
  *(a1 + 176) = 1;
  return result;
}

unint64_t sub_1DD002414(uint64_t a1)
{
  v1 = a1;
  sub_1DD0DEC1C();

  sub_1DD002DE8(v1);

  sub_1DCB598EC(1);
  v2 = sub_1DD0DE99C();
  v4 = v3;

  sub_1DCB594B0(1uLL);
  sub_1DCB59970();

  sub_1DD0DE11C();

  MEMORY[0x1E12A6780](v2, v4);

  return 0xD000000000000012;
}

uint64_t sub_1DD002538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  NLContextUpdate.init()(a2);
  v4 = sub_1DD002414(0);
  v6 = v5;

  *(a2 + 184) = v4;
  *(a2 + 192) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_13_42(v7, xmmword_1DD0E07C0);
  v16 = OUTLINED_FUNCTION_10_45(v8, v9, v10, v11, v12, v13, v14, v15, v30, v31);
  OUTLINED_FUNCTION_3_74(v16, v17, v18, v19, v20, v21, MEMORY[0x1E69E6158], v22, MEMORY[0x1E69E6158], v16, v16, v16, v32, v33, v34);
  sub_1DD0DEA3C();

  sub_1DD002414(4);
  OUTLINED_FUNCTION_9_47();
  v23 = sub_1DD0DE06C();
  MEMORY[0x1E12A6780](v23);

  v7[2].n128_u64[0] = v35;
  v7[2].n128_u64[1] = v36;

  *(a2 + 168) = v7;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1DD0E32B0;
  *(v24 + 32) = sub_1DD002414(2);
  *(v24 + 40) = v25;
  *(v24 + 48) = sub_1DD002414(3);
  *(v24 + 56) = v26;

  *(a2 + 160) = v24;
  *(a2 + 176) = 1;
  v28 = sub_1DD0026C0(a1, v27);

  *(a2 + 104) = v28;
  return result;
}

uint64_t sub_1DD0026C0(uint64_t a1, uint64_t a2)
{
  __src[0] = &unk_1F584EF70;
  __src[1] = 1953718636;
  __src[2] = 0xE400000000000000;
  strcpy(&__src[3], "secondToLast");
  BYTE5(__src[4]) = 0;
  HIWORD(__src[4]) = -5120;
  __src[5] = 0x4C6F546472696874;
  __src[6] = 0xEB00000000747361;
  __src[7] = 0xD000000000000019;
  __src[8] = 0x80000001DD129730;
  v47 = MEMORY[0x1E69E7CC0];
  v48 = MEMORY[0x1E69E7CC0];
  if (qword_1EDE4F908 != -1)
  {
LABEL_37:
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  v2 = qword_1EDE57E18;
  v3 = sub_1DD0DE6DC();
  v4 = MEMORY[0x1E69E7CC0];
  v5 = sub_1DD0DD7EC("Building display hints for regular contact disambiguation", 57, 2, &dword_1DCAFC000, v2, v3, MEMORY[0x1E69E7CC0]);
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_1DCC34890();
  v8 = v7;
  v9 = 0;
  v42 = *(v7 + 16);
  v10 = 32;
  while (v42 != v9)
  {
    if (v9 >= *(v8 + 16))
    {
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
      goto LABEL_37;
    }

    v11 = v8;
    v12 = *(v8 + v10);
    v13 = *(v12 + 16);
    v14 = *(v4 + 16);
    v15 = __OFADD__(v14, v13);

    if (v15)
    {
      goto LABEL_32;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v14 + v13 > *(v4 + 24) >> 1)
    {
      sub_1DCE18ECC();
      v4 = v16;
    }

    if (*(v12 + 16))
    {
      if ((*(v4 + 24) >> 1) - *(v4 + 16) < v13)
      {
        goto LABEL_35;
      }

      swift_arrayInitWithCopy();

      if (v13)
      {
        v17 = *(v4 + 16);
        v18 = __OFADD__(v17, v13);
        v19 = v17 + v13;
        if (v18)
        {
          goto LABEL_36;
        }

        *(v4 + 16) = v19;
      }
    }

    else
    {

      if (v13)
      {
        goto LABEL_33;
      }
    }

    v10 += 56;
    ++v9;
    v8 = v11;
  }

  sub_1DCBB9680(v4);
  v20 = *(v8 + 16);
  if (v20)
  {
    v46[0] = MEMORY[0x1E69E7CC0];
    sub_1DCE06C08();
    v21 = v46[0];
    v39 = v8;
    v22 = (v8 + 80);
    do
    {
      v23 = *(v22 - 4);
      v24 = *(v22 - 2);
      v41 = *(v22 - 3);
      v43 = *(v22 - 5);
      v25 = *v22;
      v40 = *(v22 - 1);
      v46[0] = v21;
      v27 = *(v21 + 16);
      v26 = *(v21 + 24);

      if (v27 >= v26 >> 1)
      {
        sub_1DCE06C08();
        v21 = v46[0];
      }

      v22 += 7;
      *(v21 + 16) = v27 + 1;
      v28 = (v21 + 48 * v27);
      v28[4] = v43;
      v28[5] = v23;
      v28[6] = v41;
      v28[7] = v24;
      v28[8] = v40;
      v28[9] = v25;
      --v20;
    }

    while (v20);
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  sub_1DCBB9718(v21);
  memcpy(v46, __src, 0x48uLL);
  v29 = OrdinalDisplayHintsBuilder.build(for:)(v47);
  sub_1DCC08984(__src);
  sub_1DCBB9680(v29);
  v30 = 0;
  v31 = v48;
  v32 = *(v48 + 16);
  v33 = 32;
  while (v32 != v30)
  {
    if (v30 >= *(v31 + 16))
    {
      goto LABEL_34;
    }

    memcpy(v46, (v31 + v33), 0x60uLL);
    ++v30;
    sub_1DCC089D8(v46, v45);
    sub_1DD0DE6DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1DD0E07C0;
    memcpy(v45, v46, sizeof(v45));
    sub_1DCC089D8(v46, &v44);
    v35 = sub_1DD0DE02C();
    v37 = v36;
    *(v34 + 56) = MEMORY[0x1E69E6158];
    *(v34 + 64) = sub_1DCB34060();
    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    sub_1DD0DD7EC("DisplayHint: %s", v39);

    sub_1DCC08A34(v46);
    v33 += 96;
  }

  return v31;
}

uint64_t sub_1DD002B9C@<X0>(uint64_t a1@<X8>)
{
  NLContextUpdate.init()(a1);
  v2 = sub_1DD002414(0);
  v4 = v3;

  *(a1 + 184) = v2;
  *(a1 + 192) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_13_42(v5, xmmword_1DD0E32B0);
  v6 = sub_1DCB1C4D8();
  OUTLINED_FUNCTION_3_74(v6, v7, v8, v9, v10, v11, v12, v13, MEMORY[0x1E69E6158], v6, v6, v6, 95, 0xE100000000000000, 32);
  sub_1DD0DEA3C();

  v21 = sub_1DD002414(4);
  v23 = v14;
  MEMORY[0x1E12A6780](0x2E65756C61562ELL, 0xE700000000000000);
  v15 = sub_1DD0DE06C();
  MEMORY[0x1E12A6780](v15);

  v5[2].n128_u64[0] = v21;
  v5[2].n128_u64[1] = v23;
  sub_1DD0DE06C();
  sub_1DD0DEA3C();

  v22 = sub_1DD002414(4);
  v24 = v16;
  MEMORY[0x1E12A6780](0x2E65756C61562ELL, 0xE700000000000000);
  v17 = sub_1DD0DE06C();
  MEMORY[0x1E12A6780](v17);

  v5[3].n128_u64[0] = v22;
  v5[3].n128_u64[1] = v24;

  *(a1 + 168) = v5;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DD0E07C0;
  *(v18 + 32) = sub_1DD002414(4);
  *(v18 + 40) = v19;

  *(a1 + 160) = v18;
  *(a1 + 176) = 1;
  return result;
}

unint64_t sub_1DD002DE8(char a1)
{
  result = 0x6C6143656E6F6870;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      v3 = 9;
      goto LABEL_7;
    case 4:
      v3 = 5;
LABEL_7:
      result = v3 | 0xD000000000000010;
      break;
    case 5:
      result = 0x6D754E656E6F6870;
      break;
    case 6:
      result = 0x6464416C69616D65;
      break;
    case 7:
      result = 0x75466E6F73726570;
      break;
    case 8:
      result = 0x69466E6F73726570;
      break;
    case 9:
      result = 0x614C6E6F73726570;
      break;
    case 10:
      result = 0x54746361746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD002F70(uint64_t *a1, void *a2)
{
  v4 = sub_1DD003DB0(a2);
  v6 = v5;
  swift_bridgeObjectRelease_n();
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v57 = sub_1DD002414(1);
  v10 = v9;

  v11 = sub_1DCCC331C(a2);
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v11;
  v14 = v12;
  v15 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v15 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

LABEL_15:
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v54 = v7;

  swift_bridgeObjectRelease_n();
  v16 = sub_1DD002414(7);
  v49 = v17;
  v51 = v16;

  sub_1DCB22A50(0, 1, 0, 0, 0, 0);
  sub_1DCB22A50(0, 1, 0, 0, 0, 0);
  sub_1DCE18ECC();
  v19 = v18;
  v20 = *(v18 + 16);
  if (v20 >= *(v18 + 24) >> 1)
  {
    sub_1DCE18ECC();
    v19 = v44;
  }

  *(v19 + 16) = v20 + 1;
  v21 = v19 + 96 * v20;
  v7 = v54;
  *(v21 + 32) = v54;
  *(v21 + 40) = v8;
  *(v21 + 48) = 0xD000000000000012;
  *(v21 + 56) = 0x80000001DD129770;
  *(v21 + 64) = v57;
  *(v21 + 72) = v10;
  *(v21 + 80) = v13;
  *(v21 + 88) = v14;
  *(v21 + 96) = xmmword_1DD0E4020;
  *(v21 + 112) = v51;
  *(v21 + 120) = v49;
LABEL_16:
  v22 = sub_1DCC6E534(a2);
  if (v23)
  {
    v24 = v22;
    v25 = v23;
    v26 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v26 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      v55 = v8;

      swift_bridgeObjectRelease_n();
      v27 = sub_1DD002414(8);
      v50 = v28;
      v52 = v27;

      sub_1DCB22A50(0, 1, 0, 0, 0, 0);
      sub_1DCB22A50(0, 1, 0, 0, 0, 0);
      v29 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DCE18ECC();
        v19 = v45;
      }

      v30 = *(v19 + 16);
      v31 = v57;
      if (v30 >= *(v19 + 24) >> 1)
      {
        sub_1DCE18ECC();
        v19 = v46;
        v31 = v57;
      }

      *(v19 + 16) = v30 + 1;
      v32 = v19 + 96 * v30;
      v7 = v29;
      *(v32 + 32) = v29;
      v8 = v55;
      *(v32 + 40) = v55;
      *(v32 + 48) = 0xD000000000000012;
      *(v32 + 56) = 0x80000001DD129770;
      *(v32 + 64) = v31;
      *(v32 + 72) = v10;
      *(v32 + 80) = v24;
      *(v32 + 88) = v25;
      *(v32 + 96) = xmmword_1DD0E4030;
      *(v32 + 112) = v52;
      *(v32 + 120) = v50;
    }

    else
    {
    }
  }

  v33 = sub_1DCC6E540(a2);
  if (!v34)
  {
    goto LABEL_36;
  }

  v35 = v33;
  v36 = v34;
  v37 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v37 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {

LABEL_36:
    v41 = v57;
    goto LABEL_37;
  }

  v56 = v7;

  swift_bridgeObjectRelease_n();
  v53 = sub_1DD002414(9);
  v39 = v38;

  sub_1DCB22A50(0, 1, 0, 0, 0, 0);
  sub_1DCB22A50(0, 1, 0, 0, 0, 0);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DCE18ECC();
    v19 = v47;
  }

  v40 = *(v19 + 16);
  v41 = v57;
  if (v40 >= *(v19 + 24) >> 1)
  {
    sub_1DCE18ECC();
    v19 = v48;
    v41 = v57;
  }

  *(v19 + 16) = v40 + 1;
  v42 = v19 + 96 * v40;
  *(v42 + 32) = v56;
  *(v42 + 40) = v8;
  *(v42 + 48) = 0xD000000000000012;
  *(v42 + 56) = 0x80000001DD129770;
  *(v42 + 64) = v41;
  *(v42 + 72) = v10;
  *(v42 + 80) = v35;
  *(v42 + 88) = v36;
  *(v42 + 96) = xmmword_1DD0E4040;
  *(v42 + 112) = v53;
  *(v42 + 120) = v39;
  v7 = v56;
LABEL_37:
  *a1 = v7;
  a1[1] = v8;
  a1[2] = 0xD000000000000012;
  a1[3] = 0x80000001DD129770;
  a1[4] = v41;
  a1[5] = v10;
  return v19;
}

void sub_1DD0034A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA20D8, &unk_1DD10A050);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD0E32B0;
  if (qword_1ECCA13F8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECCD27B8;
  v2 = sub_1DD0DB95C();
  v3 = MEMORY[0x1E69D1510];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  sub_1DD0DCF8C();
}

void sub_1DD003628()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA20D8, &unk_1DD10A050);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD0E07C0;
  if (qword_1ECCA1400 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECCD27C0;
  v2 = sub_1DD0DB9AC();
  v3 = MEMORY[0x1E69D1510];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  sub_1DD0DB95C();
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t sub_1DD00371C()
{
  sub_1DD0DB9AC();
  swift_allocObject();
  result = sub_1DD0DB99C();
  qword_1ECCD27C0 = result;
  return result;
}

uint64_t sub_1DD003770()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABF60, &qword_1DD10A040);
  swift_allocObject();
  result = sub_1DD0DB9BC();
  qword_1ECCD27C8 = result;
  return result;
}

void sub_1DD0037D8()
{
  if (qword_1ECCA13F0 != -1)
  {
    swift_once();
  }

  sub_1DD0DCF8C();
}

void sub_1DD003834(uint64_t a1@<X8>)
{
  sub_1DD0DBD0C();
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_33_1();
  v3(v2);
  v4 = *(type metadata accessor for PhoneIntent.Contact(0) + 20);
  if (qword_1ECCA13F8 != -1)
  {
    OUTLINED_FUNCTION_6_82(&qword_1ECCA13F8);
  }

  *(a1 + v4) = qword_1ECCD27B8;

  sub_1DD0DCF8C();
}

uint64_t sub_1DD0038EC(uint64_t a1)
{
  v2 = sub_1DD003EA8(&qword_1ECCABF70, type metadata accessor for PhoneIntent.Contact, &unk_1DD10A288);

  return MEMORY[0x1EEE3E098](a1, v2);
}

uint64_t sub_1DD003968(uint64_t a1)
{
  v2 = sub_1DD003EA8(&qword_1ECCABF70, type metadata accessor for PhoneIntent.Contact, &unk_1DD10A288);

  return MEMORY[0x1EEE3E090](a1, v2);
}

unint64_t sub_1DD0039D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD0DEE9C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD003A20(char a1)
{
  result = 7562617;
  switch(a1)
  {
    case 1:
      result = 28526;
      break;
    case 2:
      result = 0x206D7269666E6F63;
      break;
    case 3:
      result = 0x63207463656A6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD003AC0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  (a3)(0, a2);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_33_1();

  return v4(v3);
}

uint64_t sub_1DD003B38(uint64_t a1)
{
  v2 = sub_1DD003EA8(&qword_1ECCABFD8, type metadata accessor for PhoneIntent, &unk_1DD10A0B8);

  return MEMORY[0x1EEE3D728](a1, v2);
}

uint64_t sub_1DD003BB4(uint64_t a1)
{
  v2 = sub_1DD003EA8(&qword_1ECCABFD8, type metadata accessor for PhoneIntent, &unk_1DD10A0B8);

  return MEMORY[0x1EEE3D718](a1, v2);
}

uint64_t sub_1DD003C20(uint64_t a1)
{
  v2 = sub_1DD003EA8(&qword_1ECCABFD8, type metadata accessor for PhoneIntent, &unk_1DD10A0B8);

  return MEMORY[0x1EEE3D720](a1, v2);
}

unint64_t sub_1DD003C8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD0039D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DD003CBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD003A20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD003CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD004348();
  v5 = sub_1DD00439C();
  v6 = sub_1DD0043F0();

  return MEMORY[0x1EEE3E530](a1, a2, v4, v5, v6);
}

uint64_t sub_1DD003D6C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD002F70(a2 + 1, *a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD003DB0(void *a1)
{
  v1 = [a1 internalGUID];
  if (v1)
  {
    v2 = v1;
    sub_1DD0DDFBC();
  }

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DD003E30(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD003EA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD003EF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneIntent.Contact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD003F54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_33_1();
  v5(v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for PhoneConfirmation(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD004170()
{
  result = qword_1ECCABFA8;
  if (!qword_1ECCABFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABFA8);
  }

  return result;
}

unint64_t sub_1DD00420C()
{
  result = qword_1ECCABFC0;
  if (!qword_1ECCABFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABFC0);
  }

  return result;
}

unint64_t sub_1DD004264()
{
  result = qword_1ECCABFC8;
  if (!qword_1ECCABFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABFC8);
  }

  return result;
}

unint64_t sub_1DD004348()
{
  result = qword_1ECCABFE0;
  if (!qword_1ECCABFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABFE0);
  }

  return result;
}

unint64_t sub_1DD00439C()
{
  result = qword_1ECCABFE8;
  if (!qword_1ECCABFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABFE8);
  }

  return result;
}

unint64_t sub_1DD0043F0()
{
  result = qword_1ECCABFF0;
  if (!qword_1ECCABFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABFF0);
  }

  return result;
}

id SIRINLUSystemDialogAct.toNluSystemDialogAct()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DD0DD6AC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  OUTLINED_FUNCTION_16();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC000, &unk_1DD0E0F60);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v24[-v6];
  v28 = &unk_1F5891A00;
  v29 = &unk_1F5897B28;
  v8 = swift_dynamicCastObjCProtocolConditional();
  if (v8)
  {
    swift_unknownObjectRetain();
  }

  v9 = [objc_opt_self() convertFromSystemDialogAct_];
  if (!v9)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v17 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v17, qword_1EDE57E00);
    v18 = sub_1DD0DD8EC();
    v19 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DCAFC000, v18, v19, "Tried to convert from legacy SDA to proto-backed SDA and failed", v20, 2u);
      MEMORY[0x1E12A8390](v20, -1, -1);
    }

    swift_unknownObjectRelease();
    v23 = sub_1DD0DB6EC();
    v21 = a1;
    v22 = 1;
    return __swift_storeEnumTagSinglePayload(v21, v22, 1, v23);
  }

  v10 = v9;
  result = [v9 data];
  if (result)
  {
    v12 = result;
    v13 = sub_1DD0DB6EC();
    v14 = sub_1DD0DAF2C();
    v16 = v15;

    v26 = v14;
    v27 = v16;
    v25 = 0;
    memset(&v24[16], 0, 32);
    sub_1DD0DD69C();
    sub_1DCE0A948();
    sub_1DD0DD6DC();

    swift_unknownObjectRelease();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v13);
    (*(*(v13 - 8) + 32))(a1, v7, v13);
    v21 = a1;
    v22 = 0;
    v23 = v13;
    return __swift_storeEnumTagSinglePayload(v21, v22, 1, v23);
  }

  __break(1u);
  return result;
}

id Siri_Nlu_External_SystemDialogAct.toLegacySystemDialogAct()()
{
  sub_1DD0DB6EC();
  sub_1DCE0A948();
  sub_1DD0DD6CC();
  v6 = objc_allocWithZone(MEMORY[0x1E69D1208]);
  v7 = OUTLINED_FUNCTION_17_1();
  sub_1DCC91E80(v7, v8);
  v9 = OUTLINED_FUNCTION_17_1();
  v11 = sub_1DCB3DEC0(v9, v10);
  if (v11)
  {
    v12 = v11;
    v4 = [objc_opt_self() convertSystemDialogAct_];
    v13 = OUTLINED_FUNCTION_17_1();
    sub_1DCB21A14(v13, v14);

    if (v4)
    {
      return v4;
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_17_1();
    sub_1DCB21A14(v15, v16);
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DCAFC000, v1, v2, "Tried to convert an SDA with no data", v3, 2u);
    MEMORY[0x1E12A8390](v3, -1, -1);
  }

  return 0;
}

uint64_t Array<A>.toLegacySystemDialogActs()(uint64_t a1)
{
  v2 = sub_1DD0DB6EC();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_16();
  v8 = v7 - v6;
  v9 = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
  v10 = *(a1 + 16);
  if (v10)
  {
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v20 = v12;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v20(v8, v13, v2);
      v17 = Siri_Nlu_External_SystemDialogAct.toLegacySystemDialogAct()();
      v18 = (*v15)(v8, v2);
      if (v17)
      {
        MEMORY[0x1E12A6920](v18);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DD0DE33C();
        }

        sub_1DD0DE3AC();
        v9 = v21;
      }

      v13 += v14;
      --v10;
      v11 = v16;
    }

    while (v10);
  }

  return v9;
}

uint64_t Array<A>.toNluSystemDialogActs()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC000, &unk_1DD0E0F60);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v23 - v4;
  v6 = sub_1DD0DB6EC();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16();
  v26 = v12 - v11;
  result = sub_1DCB08B14(a1);
  v14 = result;
  v15 = 0;
  v24 = v8;
  v25 = (v8 + 32);
  v16 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v14 == v15)
    {
      return v16;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E12A72C0](v15, a1);
    }

    else
    {
      if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      result = swift_unknownObjectRetain();
    }

    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    SIRINLUSystemDialogAct.toNluSystemDialogAct()(v5);
    swift_unknownObjectRelease();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      result = sub_1DD004CD4(v5);
      ++v15;
    }

    else
    {
      v18 = *v25;
      (*v25)(v26, v5, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DCE19EC0();
        v16 = v21;
      }

      v20 = *(v16 + 16);
      if (v20 >= *(v16 + 24) >> 1)
      {
        sub_1DCE19EC0();
        v16 = v22;
      }

      *(v16 + 16) = v20 + 1;
      result = v23(v16 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20, v26, v6);
      v15 = v17;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1DD004CD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC000, &unk_1DD0E0F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD004D3C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v67 = a1;
  v61 = a3;
  v62 = sub_1DD0DB50C();
  OUTLINED_FUNCTION_9();
  v60 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_44_0();
  v59 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_71_0();
  v58 = v10;
  OUTLINED_FUNCTION_12();
  v66 = sub_1DD0DB5BC();
  OUTLINED_FUNCTION_9();
  v57 = v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_44_0();
  v54 = v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_71_0();
  v55 = v17;
  OUTLINED_FUNCTION_12();
  v65 = sub_1DD0DB75C();
  OUTLINED_FUNCTION_9();
  v56 = v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_10_2();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_71_0();
  v64 = v26;
  OUTLINED_FUNCTION_12();
  v27 = sub_1DD0DBAAC();
  OUTLINED_FUNCTION_9();
  v29 = v28;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v52 - v32;
  v63 = sub_1DD0DB44C();
  OUTLINED_FUNCTION_9();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  OUTLINED_FUNCTION_10_2();
  v40 = v38 - v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  OUTLINED_FUNCTION_8_77();
  sub_1DD0DC5EC();
  (*(v29 + 16))(v33, v67, v27);
  sub_1DD0DC5AC();
  v43 = v68;
  sub_1DD0DB7FC();

  if (!v43)
  {
    v45 = v64;
    sub_1DD0DB74C();
    v53 = v35;
    (*(v35 + 16))(v40, v3, v63);
    v68 = 0;
    sub_1DD0DB73C();
    v46 = v55;
    sub_1DD0DB5AC();
    v47 = v56;
    (*(v56 + 16))(v23, v45, v65);
    sub_1DD0DB58C();
    v48 = v58;
    sub_1DD0DB4FC();
    v49 = v57;
    (*(v57 + 16))(v54, v46, v66);
    sub_1DD0DB4EC();
    sub_1DD0DB6DC();
    v50 = v60;
    v51 = v62;
    (*(v60 + 16))(v59, v48, v62);
    sub_1DD0DB6AC();
    (*(v50 + 8))(v48, v51);
    (*(v49 + 8))(v46, v66);
    (*(v47 + 8))(v64, v65);
    return (*(v53 + 8))(v3, v63);
  }

  return result;
}

uint64_t sub_1DD0051A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  v11 = *(type metadata accessor for SystemGaveOptionsDialogActGenerator(0, a3, a4, a5) + 44);
  v12 = type metadata accessor for USOKeyPath(0, a3, a4, a5);
  v13 = *(*(v12 - 8) + 32);

  return v13(&a6[v11], a2, v12);
}

uint64_t sub_1DD005258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v142 = a1;
  v114 = a4;
  v115 = sub_1DD0DB72C();
  OUTLINED_FUNCTION_9();
  v113 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_71_0();
  v111 = v12;
  OUTLINED_FUNCTION_12();
  v151 = sub_1DD0DB5BC();
  OUTLINED_FUNCTION_9();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_10_2();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_71_0();
  v149 = v22;
  OUTLINED_FUNCTION_12();
  v148 = sub_1DD0DB66C();
  OUTLINED_FUNCTION_9();
  v152 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_71_0();
  v147 = v28;
  OUTLINED_FUNCTION_12();
  v146 = sub_1DD0DB44C();
  OUTLINED_FUNCTION_9();
  v137 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_71_0();
  v155 = v34;
  OUTLINED_FUNCTION_12();
  v143 = a3;
  v141 = sub_1DD0DBAAC();
  OUTLINED_FUNCTION_9();
  v133 = v35;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v36, v37);
  v138 = *(a2 + 16);
  v139 = &v107 - v38;
  v39 = sub_1DD0DBAAC();
  v110 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_9();
  v109 = v40;
  OUTLINED_FUNCTION_10();
  v43 = MEMORY[0x1EEE9AC00](v41, v42);
  v145 = &v107 - v44;
  v154 = v39;
  v45 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v43, v46);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v47, v48);
  OUTLINED_FUNCTION_71_0();
  v153 = v49;
  v50 = *(a2 + 24);
  v51 = *(v50 - 8);
  v54 = MEMORY[0x1EEE9AC00](v52, v53);
  v56 = &v107 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v55;
  MEMORY[0x1EEE9AC00](v54, v57);
  OUTLINED_FUNCTION_71_0();
  v144 = v58;
  v131 = v4;
  v59 = *v4;

  v60 = sub_1DD0DE2FC();
  v158 = v60;
  v135 = v51 + 16;
  v134 = v51 + 32;
  v133 += 16;
  v128 = v45 + 32;
  v126 = v45 + 16;
  v122 = (v137 + 2);
  v121 = v152 + 16;
  v120 = v14 + 16;
  v119 = v14 + 8;
  v118 = v152 + 8;
  v117 = (v137 + 1);
  v127 = v45 + 8;
  v132 = v51;
  v61 = (v51 + 8);
  v62 = v50;
  v137 = v61;
  v125 = v14;
  v116 = v14 + 32;
  v63 = MEMORY[0x1E69E7CC0];
  v150 = v19;
  v140 = a2;
  v136 = v59;
  v129 = v62;
  while (1)
  {
    OUTLINED_FUNCTION_7_80();
    if (v60 == sub_1DD0DE3BC())
    {

      v100 = v111;
      sub_1DD0DB71C();
      sub_1DD0DB47C();
      sub_1DD0DB6DC();
      v101 = v113;
      v102 = v115;
      (*(v113 + 16))(v112, v100, v115);
      sub_1DD0DB68C();
      return (*(v101 + 8))(v100, v102);
    }

    v152 = v63;
    OUTLINED_FUNCTION_7_80();
    v64 = sub_1DD0DE39C();
    sub_1DD0DE32C();
    if (v64)
    {
      v65 = v144;
      (*(v132 + 16))(v144, v59 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v60, v62);
      v66 = v140;
      v67 = v155;
      v68 = v145;
      goto LABEL_5;
    }

    result = sub_1DD0DEC5C();
    v67 = v155;
    v65 = v144;
    v68 = v145;
    if (v108 != 8)
    {
      break;
    }

    v157 = result;
    OUTLINED_FUNCTION_95_0();
    v97(v65, &v157, v62);
    swift_unknownObjectRelease();
    v66 = v140;
LABEL_5:
    sub_1DD0DE3FC();
    OUTLINED_FUNCTION_95_0();
    v69(v56, v65, v62);
    OUTLINED_FUNCTION_95_0();
    v70(v139, v142, v141);
    v71 = *(v66 + 32);
    v72 = v56;
    v73 = v138;
    sub_1DD0DBA9C();
    v74 = v154;
    if (__swift_getEnumTagSinglePayload(v68, 1, v154) == 1)
    {

      (*(v109 + 8))(v68, v110);
      sub_1DD006040();
      swift_allocError();
      *v103 = 0xD00000000000001DLL;
      v103[1] = 0x80000001DD129800;
      swift_willThrow();
      v104 = OUTLINED_FUNCTION_7_80();
      return v105(v104);
    }

    OUTLINED_FUNCTION_95_0();
    v75 = v62;
    v76 = v153;
    v77(v153, v68, v74);
    type metadata accessor for USOKeyPath(0, v73, v75, v71);
    v78 = v72;
    v79 = OUTLINED_FUNCTION_7_80();
    USOKeyPath.setValue(_:into:)(v79, v80, v81);
    sub_1DD0DC5EC();
    OUTLINED_FUNCTION_95_0();
    v82(v130, v76, v74);
    sub_1DD0DC5AC();
    v83 = v156;
    sub_1DD0DB7FC();
    v156 = v83;
    if (v83)
    {

      OUTLINED_FUNCTION_95_0();
      v106(v153, v74);
      (*v137)(v72, v129);
    }

    v84 = v147;
    sub_1DD0DB65C();
    OUTLINED_FUNCTION_95_0();
    v85(v123, v67, v146);
    sub_1DD0DB64C();
    v86 = v149;
    sub_1DD0DB5AC();
    OUTLINED_FUNCTION_95_0();
    v87(v124, v84, v148);
    sub_1DD0DB57C();
    OUTLINED_FUNCTION_95_0();
    v88(v150, v86, v151);
    v63 = v152;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v136;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DCE196A4();
      v63 = v98;
    }

    v56 = v78;
    v62 = v129;
    v90 = *(v63 + 16);
    if (v90 >= *(v63 + 24) >> 1)
    {
      sub_1DCE196A4();
      v63 = v99;
    }

    v91 = v125;
    v92 = v151;
    (*(v125 + 8))(v149, v151);
    OUTLINED_FUNCTION_95_0();
    v93(v147, v148);
    OUTLINED_FUNCTION_95_0();
    v94(v155, v146);
    OUTLINED_FUNCTION_95_0();
    v95(v153, v154);
    (*v137)(v78, v62);
    *(v63 + 16) = v90 + 1;
    (*(v91 + 32))(v63 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v90, v150, v92);
    v60 = v158;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD005D84@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v38 = a1;
  v36 = a3;
  v37 = sub_1DD0DB61C();
  OUTLINED_FUNCTION_9();
  v35 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_44_0();
  v34 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_8_77();
  v10 = sub_1DD0DBAAC();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v33 - v15;
  v17 = sub_1DD0DB44C();
  OUTLINED_FUNCTION_9();
  v33 = v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_10_2();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v33 - v26;
  sub_1DD0DC5EC();
  (*(v12 + 16))(v16, v38, v10);
  sub_1DD0DC5AC();
  v28 = v39;
  sub_1DD0DB7FC();

  if (!v28)
  {
    sub_1DD0DB60C();
    v30 = v33;
    (*(v33 + 16))(v23, v27, v17);
    sub_1DD0DB5FC();
    sub_1DD0DB6DC();
    v31 = v35;
    v32 = v37;
    (*(v35 + 16))(v34, v3, v37);
    sub_1DD0DB6CC();
    (*(v31 + 8))(v3, v32);
    return (*(v30 + 8))(v27, v17);
  }

  return result;
}

unint64_t sub_1DD006040()
{
  result = qword_1ECCAC008[0];
  if (!qword_1ECCAC008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCAC008);
  }

  return result;
}

uint64_t sub_1DD0060BC(void *a1)
{
  result = type metadata accessor for USOKeyPath(319, a1[2], a1[3], a1[4]);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_1DD006160(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = *(v3 + 80);
  v5 = v4;
  v6 = ((v4 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8) & (v5 + 8)) + ((((*(v3 + 64) + ((v5 + 48) & ~v5) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = v4 & 0x100000;
  *a1 = *a2;
  if (v5 <= 7 && v7 == 0 && v6 <= 0x18)
  {
    v10 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v10[1] = v11[1];
    v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v12[1] = v13[1];
    v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
    v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
    v16 = v15[1];
    *v14 = *v15;
    v14[1] = v16;

    sub_1DD0DCF8C();
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DD00633C(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);

  (*(v5 + 8))((v6 + ((((((a1 + (v6 | 7) + 8) & ~(v6 | 7)) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6, v4);
}

void sub_1DD006430(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(*(*(a3 + 24) - 8) + 80);
  v4 = (v3 | 7) + 8;
  v5 = ((a1 + v4) & ~(v3 | 7));
  v6 = ((a2 + v4) & ~(v3 | 7));
  *v5 = *v6;
  v5[1] = v6[1];
  v7 = ((v5 + 23) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;

  sub_1DD0DCF8C();
}

void sub_1DD00659C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(*(a3 + 24) - 8) + 80);
  v7 = (v6 | 7) + 8;
  v8 = ((a1 + v7) & ~(v6 | 7));
  v9 = ((a2 + v7) & ~(v6 | 7));
  *v8 = *v9;
  v8[1] = v9[1];

  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v10[1] = v11[1];

  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  sub_1DD0DCF8C();
}

void *sub_1DD006740(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 32);
  v6 = v4 + 32;
  v7 = *(v4 + 80);
  v8 = (v7 | 7) + 8;
  v9 = ((a1 + v8) & ~(v7 | 7));
  v10 = ((a2 + v8) & ~(v7 | 7));
  *v9 = *v10;
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = (v13 + v7 + 16) & ~v7;
  v16 = (v14 + v7 + 16) & ~v7;
  v5(v15, v16);
  v17 = *(v6 + 32) + 7;
  v18 = ((v17 + v15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + v16) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  *((v18 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *sub_1DD006834(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | 7) + 8;
  v10 = ((a1 + v9) & ~(v8 | 7));
  v11 = ((a2 + v9) & ~(v8 | 7));
  *v10 = *v11;
  v10[1] = v11[1];

  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v12[1] = v13[1];

  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;

  v16 = (v14 + v8 + 16) & ~v8;
  v17 = (v15 + v8 + 16) & ~v8;
  (*(v7 + 40))(v16, v17, v6);
  v18 = *(v7 + 64) + 7;
  v19 = ((v18 + v16) & 0xFFFFFFFFFFFFFFF8);
  v20 = v18 + v17;
  v21 = (v20 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v19 = *(v20 & 0xFFFFFFFFFFFFFFF8);

  *((v19 + 23) & 0xFFFFFFFFFFFFFFF8) = *(v21 & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1DD0069A4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  if (v6 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v8 | 7;
  if (v9 >= a2)
  {
LABEL_29:
    if (v9 == 0x7FFFFFFF)
    {
      v19 = *result;
      if (*result >= 0xFFFFFFFFuLL)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload((v8 + ((((((result + v10 + 8) & ~v10) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8, v6, v4);
    }
  }

  else
  {
    v11 = ((v8 + 8) & ~v10) + ((((*(*(v4 - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v12 = a2 - v9;
    v13 = v11 & 0xFFFFFFF8;
    if ((v11 & 0xFFFFFFF8) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = v12 + 1;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    switch(v16)
    {
      case 1:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      case 2:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      case 3:
        __break(1u);
        return result;
      case 4:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_29;
        }

LABEL_25:
        v18 = v17 - 1;
        if (v13)
        {
          v18 = 0;
          LODWORD(v13) = *result;
        }

        result = v9 + (v13 | v18) + 1;
        break;
      default:
        goto LABEL_29;
    }
  }

  return result;
}

void sub_1DD006B34(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v8 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  v10 = *(v7 + 80);
  v11 = ((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + ((v10 + 8) & ~(v10 | 7)) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + ((v10 + 8) & ~(v10 | 7)) == -16)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (a2)
        {
LABEL_34:
          if (v9 == 0x7FFFFFFF)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *a1 = v18;
          }

          else
          {
            v19 = (v10 + (((((&a1[(v10 | 7) + 8] & ~(v10 | 7)) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v10;

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + ((v10 + 8) & ~(v10 | 7)) == -16)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + ((v10 + 8) & ~(v10 | 7)) != -16)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

id static SystemDialogActHelper.systemAskedUserToRepeat()()
{
  v0 = sub_1DD0DB9CC();
  OUTLINED_FUNCTION_9();
  v26 = v1;
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_16();
  v6 = v5 - v4;
  v7 = sub_1DD0DC58C();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_16();
  v14 = v13 - v12;
  v15 = sub_1DD0DBB1C();
  OUTLINED_FUNCTION_9();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_16();
  v22 = v21 - v20;
  sub_1DD0DC5EC();
  swift_allocObject();
  sub_1DD0DC5DC();
  sub_1DD0DBAEC();
  sub_1DD0DC5CC();
  sub_1DD0DC57C();
  (*(v9 + 8))(v14, v7);
  sub_1DD0DC59C();
  sub_1DD0072B8();
  v23 = MEMORY[0x1E12A6E30](v6);
  (*(v26 + 8))(v6, v0);
  v24 = [objc_allocWithZone(MEMORY[0x1E69D2550]) initWithReference_];

  (*(v17 + 8))(v22, v15);
  return v24;
}

void sub_1DD007188()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2990, &qword_1DD0E8E30);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DD0E15D0;
  *(v3 + 32) = v0;
  sub_1DD0DCF8C();
}

unint64_t sub_1DD0072B8()
{
  result = qword_1ECCAC090;
  if (!qword_1ECCAC090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCAC090);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SystemDialogActHelper(_BYTE *result, int a2, int a3)
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

void *sub_1DD0073A8()
{
  v0 = sub_1DD0DDD3C();
  OUTLINED_FUNCTION_9();
  v285 = v1;
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_44_0();
  v275 = v4;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_33_2();
  v274 = v7;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_33_2();
  v290 = v10;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_71_0();
  v280 = v13;
  OUTLINED_FUNCTION_12();
  v296 = sub_1DD0DDD7C();
  OUTLINED_FUNCTION_9();
  v276 = v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_44_0();
  v268 = v17;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_33_2();
  v289 = v20;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_71_0();
  v299 = v23;
  OUTLINED_FUNCTION_12();
  v298 = sub_1DD0DDCFC();
  OUTLINED_FUNCTION_9();
  v270 = v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  OUTLINED_FUNCTION_11_2();
  v297 = v27;
  OUTLINED_FUNCTION_12();
  v279 = sub_1DD0DDCCC();
  OUTLINED_FUNCTION_9();
  v278 = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_11_2();
  v277 = v31;
  OUTLINED_FUNCTION_12();
  v288 = sub_1DD0DDD5C();
  OUTLINED_FUNCTION_9();
  v302 = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_44_0();
  v291 = v35;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v36, v37);
  OUTLINED_FUNCTION_33_2();
  v300 = v38;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v39, v40);
  OUTLINED_FUNCTION_33_2();
  v301 = v41;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v42, v43);
  OUTLINED_FUNCTION_33_2();
  v295 = v44;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v45, v46);
  OUTLINED_FUNCTION_33_2();
  v294 = v47;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v48, v49);
  OUTLINED_FUNCTION_71_0();
  v281 = v50;
  OUTLINED_FUNCTION_12();
  v273 = sub_1DD0DD0DC();
  OUTLINED_FUNCTION_9();
  v272 = v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  OUTLINED_FUNCTION_44_0();
  v271 = v54;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v55, v56);
  OUTLINED_FUNCTION_71_0();
  v284 = v57;
  OUTLINED_FUNCTION_12();
  sub_1DD0DD0CC();
  OUTLINED_FUNCTION_9();
  v286 = v59;
  v287 = v58;
  MEMORY[0x1EEE9AC00](v58, v60);
  OUTLINED_FUNCTION_44_0();
  v282 = v61;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v62, v63);
  OUTLINED_FUNCTION_71_0();
  v292 = v64;
  OUTLINED_FUNCTION_12();
  sub_1DD0DD0BC();
  OUTLINED_FUNCTION_9();
  v303 = v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  OUTLINED_FUNCTION_44_0();
  v293 = v68;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v69, v70);
  v72 = &v261 - v71;
  v73 = sub_1DD0DD06C();
  OUTLINED_FUNCTION_9();
  v75 = v74;
  MEMORY[0x1EEE9AC00](v76, v77);
  OUTLINED_FUNCTION_11_2();
  v283 = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC098, &qword_1DD10A450);
  v81 = MEMORY[0x1EEE9AC00](v79 - 8, v80);
  v83 = &v261 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x1EEE9AC00](v81, v84);
  v87 = &v261 - v86;
  MEMORY[0x1EEE9AC00](v85, v88);
  v90 = &v261 - v89;
  v91 = sub_1DD0DD09C();
  sub_1DCC621D4(v91);

  sub_1DD009AD0(v90, v87);
  v92 = sub_1DD0DD0FC();
  if (__swift_getEnumTagSinglePayload(v87, 1, v92) == 1)
  {
    sub_1DCB16D50(v87, &qword_1ECCAC098, &qword_1DD10A450);
    goto LABEL_7;
  }

  v269 = v0;
  v266 = v73;
  v267 = v75;
  sub_1DD0DD0EC();
  v93 = *(*(v92 - 8) + 8);
  v93(v87, v92);
  v94 = *(v303 + 11);
  v95 = OUTLINED_FUNCTION_5_95();
  if (v94(v95) != *MEMORY[0x1E69A8ED8])
  {
    v102 = OUTLINED_FUNCTION_5_95();
    v103(v102);
LABEL_7:
    if (qword_1EDE4F900 != -1)
    {
      goto LABEL_70;
    }

    goto LABEL_8;
  }

  v96 = OUTLINED_FUNCTION_5_95();
  v265 = v97;
  v97(v96);
  (*(v267 + 32))(v283, v72, v266);
  v262 = v90;
  v98 = OUTLINED_FUNCTION_20_38();
  sub_1DD009AD0(v98, v99);
  if (__swift_getEnumTagSinglePayload(v83, 1, v92) == 1)
  {
    sub_1DCB16D50(v83, &qword_1ECCAC098, &qword_1DD10A450);
    v100 = v288;
    v101 = v296;
  }

  else
  {
    v112 = v293;
    sub_1DD0DD0EC();
    v93(v83, v92);
    v113 = OUTLINED_FUNCTION_5_95();
    v114 = v94(v113);
    v101 = v296;
    if (v114 == *MEMORY[0x1E69A8ED0])
    {
      v115 = OUTLINED_FUNCTION_5_95();
      v265(v115);
      v117 = v286;
      v116 = v287;
      v118 = v292;
      (*(v286 + 4))(v292, v112, v287);
      v119 = v282;
      (*(v117 + 2))(v282, v118, v116);
      v120 = OUTLINED_FUNCTION_18_51();
      v122 = v121(v120);
      v100 = v288;
      v123 = v301;
      v124 = v302;
      v125 = v294;
      if (v122 == *MEMORY[0x1E69A8EE0])
      {
        v126 = OUTLINED_FUNCTION_18_51();
        v127(v126);
        v128 = v272;
        v129 = v284;
        v130 = v273;
        (*(v272 + 4))(v284, v119, v273);
        v131 = v271;
        v128[2](v271, v129, v130);
        v132 = (v128[11])(v131, v130);
        v133 = v128[1];
        v134 = v295;
        if (v132 == *MEMORY[0x1E69A8EE8])
        {
          v135 = v131;
          v136 = v128[1];
          (v133)(v135, v130);
          v137 = v267;
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_1_2();
            swift_once();
          }

          v138 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v138, qword_1EDE57E00);
          v139 = sub_1DD0DD8EC();
          v140 = sub_1DD0DE6EC();
          v141 = os_log_type_enabled(v139, v140);
          v142 = v284;
          v143 = v292;
          if (v141)
          {
            v144 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_46(v144);
            _os_log_impl(&dword_1DCAFC000, v139, v140, "User Authentication prompted. Returning", v123, 2u);
            OUTLINED_FUNCTION_62();
          }

          (v136)(v142, v130);
          (*(v286 + 1))(v143, v287);
          (*(v137 + 8))(v283, v266);
          v110 = v262;
          goto LABEL_11;
        }

        v303 = v128[1];
        (v133)(v284, v130);
        (*(v117 + 1))(v292, v116);
        (v303)(v131, v130);
        v124 = v302;
      }

      else
      {
        v256 = *(v117 + 1);
        (v256)(v118, v116);
        v257 = OUTLINED_FUNCTION_18_51();
        v256(v257);
        v134 = v295;
      }

      goto LABEL_22;
    }

    v145 = OUTLINED_FUNCTION_5_95();
    v146(v145);
    v100 = v288;
  }

  v123 = v301;
  v124 = v302;
  v125 = v294;
  v134 = v295;
LABEL_22:
  v147 = v281;
  sub_1DD0DD05C();
  type metadata accessor for EntityTypeAndIdentifiersCollectionContainer();
  v148 = swift_allocObject();
  v149 = MEMORY[0x1E69E7CC8];
  v148[2] = MEMORY[0x1E69E7CC0];
  v148[3] = v149;
  v148[4] = 0;
  v148[5] = 0;
  v150 = v124;
  v152 = (v124 + 16);
  v151 = *(v124 + 16);
  (v151)(v125, v147, v100);
  v153 = v150 + 88;
  v154 = OUTLINED_FUNCTION_16_18();
  v303 = v155;
  v156 = (v155)(v154) == *MEMORY[0x1E69DAE18];
  v282 = v148;
  if (!v156)
  {
    v215 = v150 + 88;
    v216 = *(v150 + 8);
    v217 = OUTLINED_FUNCTION_16_18();
    v216(v217);
    (v151)(v291, v281, v100);
    v218 = OUTLINED_FUNCTION_15_9();
    v219 = (v303)(v218);
    if (v219 != *MEMORY[0x1E69DAE58])
    {
      v245 = OUTLINED_FUNCTION_15_9();
      v216(v245);
      v246 = v262;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v247 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v247, qword_1EDE57E00);
      v248 = sub_1DD0DD8EC();
      v249 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_22(v249))
      {
        v250 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v250);
        OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v251, v252, "Neither type of collection or entity");
        OUTLINED_FUNCTION_62();
      }

      (v216)(v281, v100);
      v253 = OUTLINED_FUNCTION_11_73();
      v254(v253);
      v255 = v246;
      goto LABEL_67;
    }

    v303 = v216;
    v220 = OUTLINED_FUNCTION_15_9();
    v221(v220);
    v222 = swift_projectBox();
    v223 = v285;
    v224 = *(v285 + 16);
    v225 = v290;
    v226 = v269;
    v224(v290, v222, v269);

    sub_1DD008D58(v282, v225);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v227 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v227, qword_1EDE57E00);
    v228 = v274;
    v224(v274, v225, v226);
    v229 = v275;
    v224(v275, v225, v226);
    v230 = sub_1DD0DD8EC();
    v231 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_22(v231))
    {
      v232 = swift_slowAlloc();
      v302 = swift_slowAlloc();
      v304 = v302;
      *v232 = 136315394;
      v301 = v230;
      v233 = v268;
      LODWORD(v300) = v215;
      sub_1DD0DDCEC();
      v234 = sub_1DD0DDD6C();
      v236 = v235;
      (*(v276 + 1))(v233, v296);
      v237 = *(v223 + 8);
      (v237)(v228, v226);
      v238 = sub_1DCB10E9C(v234, v236, &v304);

      *(v232 + 4) = v238;
      *(v232 + 12) = 2080;
      v239 = sub_1DD0DDCDC();
      v241 = v240;
      v242 = OUTLINED_FUNCTION_16_18();
      v237(v242);
      v243 = sub_1DCB10E9C(v239, v241, &v304);

      *(v232 + 14) = v243;
      v244 = v301;
      _os_log_impl(&dword_1DCAFC000, v301, v300, "bundleId=%s for entityId=%s", v232, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_62();

      (v237)(v290, v226);
    }

    else
    {

      v258 = *(v223 + 8);
      v258(v229, v226);
      v258(v228, v226);
      v258(v225, v226);
    }

    (v303)(v281, v288);
LABEL_66:
    v259 = OUTLINED_FUNCTION_11_73();
    v260(v259);
    v255 = v262;
LABEL_67:
    sub_1DCB16D50(v255, &qword_1ECCAC098, &qword_1DD10A450);
    return v282;
  }

  v157 = OUTLINED_FUNCTION_16_18();
  v286 = v158;
  v287 = v150 + 96;
  v158(v157);
  v159 = swift_projectBox();
  (*(v278 + 16))(v277, v159, v279);

  v160 = sub_1DD0DDCBC();
  v162 = v300;
  v293 = *(v160 + 16);
  v294 = v160;
  if (!v293)
  {
LABEL_57:

    (*(v278 + 8))(v277, v279);
    (*(v302 + 8))(v281, v100);
    goto LABEL_66;
  }

  v163 = v152;
  v90 = 0;
  v291 = v294 + ((*(v302 + 80) + 32) & ~*(v302 + 80));
  LODWORD(v290) = *MEMORY[0x1E69DAE28];
  v164 = (v302 + 8);
  LODWORD(v275) = *MEMORY[0x1E69DAE58];
  v265 = (v285 + 16);
  v264 = v285 + 8;
  v274 = v270 + 16;
  v273 = (v276 + 16);
  v272 = v276 + 88;
  LODWORD(v271) = *MEMORY[0x1E69DB098];
  v284 = (v276 + 8);
  v270 += 8;
  v263 = v276 + 96;
  *&v161 = 136315394;
  v261 = v161;
  v276 = v151;
  v285 = v153;
  v268 = (v302 + 8);
  v292 = v163;
  while (v90 < *(v294 + 16))
  {
    (v151)(v134, v291 + *(v302 + 72) * v90, v100);
    (v151)(v123, v134, v100);
    v165 = OUTLINED_FUNCTION_15_9();
    v166 = (v303)(v165);
    if (v166 == v290)
    {
      v167 = OUTLINED_FUNCTION_15_9();
      v286(v167);
      swift_projectBox();
      OUTLINED_FUNCTION_95_0();
      v168(v297);

      v169 = v299;
      sub_1DD0DDCEC();
      OUTLINED_FUNCTION_95_0();
      v170 = v289;
      v171(v289, v169, v101);
      OUTLINED_FUNCTION_95_0();
      v172 = OUTLINED_FUNCTION_20_38();
      v174 = v173(v172);
      if (v174 == v271)
      {
        OUTLINED_FUNCTION_95_0();
        v175 = OUTLINED_FUNCTION_20_38();
        v176(v175);
        v177 = *v170;
        v178 = v177[2];
        v179 = v177[3];
        v180 = v177[4];
        v181 = v177[5];

        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v182 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v182, qword_1EDE57E00);

        v183 = sub_1DD0DD8EC();
        v184 = sub_1DD0DE6DC();

        if (os_log_type_enabled(v183, v184))
        {
          v185 = swift_slowAlloc();
          v304 = swift_slowAlloc();
          *v185 = v261;
          *(v185 + 4) = sub_1DCB10E9C(v178, v179, &v304);
          *(v185 + 12) = 2080;
          *(v185 + 14) = sub_1DCB10E9C(v180, v181, &v304);
          _os_log_impl(&dword_1DCAFC000, v183, v184, "Custom Type=%s and typeName=%s", v185, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_80();
        }

        v186 = v297;
        v187 = sub_1DD0DDCDC();
        sub_1DD008BB4(v187, v188, v178, v179, v180, v181);

        v101 = v296;
        (*v284)(v299, v296);
        OUTLINED_FUNCTION_95_0();
        v189(v186, v298);
        v134 = v295;
        v100 = v288;
        (*v164)(v295, v288);
        v151 = v276;
      }

      else
      {
        v199 = *v284;
        v200 = OUTLINED_FUNCTION_20_38();
        (v199)(v200);
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v201 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v201, qword_1EDE57E00);
        v202 = sub_1DD0DD8EC();
        v203 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v202, v203))
        {
          v204 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_23_34(v204);
          _os_log_impl(&dword_1DCAFC000, v202, v205, "Not a custom entityIdentifier", v101, 2u);
          v101 = v163;
          v164 = v268;
          OUTLINED_FUNCTION_80();

          v206 = v299;
          v207 = v163;
        }

        else
        {

          v206 = v299;
          v207 = v101;
        }

        v199(v206, v207);
        OUTLINED_FUNCTION_95_0();
        v214(v297, v298);
        v134 = v295;
        (*v164)(v295, v100);
      }

      v163 = v292;
      goto LABEL_50;
    }

    v190 = *v164;
    v191 = OUTLINED_FUNCTION_15_9();
    (v190)(v191);
    (v151)(v162, v134, v100);
    v192 = (v303)(v162, v100);
    if (v192 == v275)
    {
      (v286)(v162, v100);
      swift_projectBox();
      OUTLINED_FUNCTION_95_0();
      v193 = v280;
      v194(v280);

      sub_1DD008D58(v282, v193);
      OUTLINED_FUNCTION_95_0();
      v195 = OUTLINED_FUNCTION_105();
      v151 = v276;
      v196(v195);
      v197 = v134;
      v198 = v100;
LABEL_48:
      v190(v197, v198);
      goto LABEL_49;
    }

    v190(v162, v100);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v208 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v208, qword_1EDE57E00);
    v209 = sub_1DD0DD8EC();
    v210 = sub_1DD0DE6EC();
    if (!os_log_type_enabled(v209, v210))
    {

      v197 = OUTLINED_FUNCTION_16_62();
      goto LABEL_48;
    }

    v211 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_23_34(v211);
    _os_log_impl(&dword_1DCAFC000, v209, v212, "Collection without entity", v190, 2u);
    OUTLINED_FUNCTION_80();

    v213 = OUTLINED_FUNCTION_16_62();
    (v163)(v213);
LABEL_49:
    v163 = v292;
    v101 = v296;
LABEL_50:
    ++v90;
    v162 = v300;
    v123 = v301;
    if (v293 == v90)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_70:
  OUTLINED_FUNCTION_1_2();
  swift_once();
LABEL_8:
  v104 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v104, qword_1EDE57E00);
  v105 = sub_1DD0DD8EC();
  v106 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_22(v106))
  {
    v107 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v107);
    OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v108, v109, "StatementOutcome is missing");
    OUTLINED_FUNCTION_62();
  }

  v110 = v90;
LABEL_11:
  sub_1DCB16D50(v110, &qword_1ECCAC098, &qword_1DD10A450);
  return 0;
}

uint64_t sub_1DD008BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();

  sub_1DCB5D31C();
  v13 = *(*(v6 + 16) + 16);
  sub_1DCB5D3F4(v13);
  v14 = *(v6 + 16);
  *(v14 + 16) = v13 + 1;
  v15 = (v14 + 32 * v13);
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a5;
  v15[7] = a6;
  *(v6 + 16) = v14;
  swift_endAccess();
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v6 + 24);
  sub_1DCC5FCB4(a3, a4, a1, a2);
  *(v6 + 24) = v17;
  return swift_endAccess();
}

uint64_t sub_1DD008CD0()
{

  return v0;
}

uint64_t sub_1DD008D00()
{
  sub_1DD008CD0();

  return swift_deallocClassInstance();
}

void sub_1DD008D58(uint64_t a1, uint64_t a2)
{
  v153 = a2;
  v134 = a1;
  v2 = sub_1DD0DDD7C();
  OUTLINED_FUNCTION_9();
  v128 = v3;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1DD0DDCFC();
  OUTLINED_FUNCTION_9();
  v135 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_11_2();
  v142 = v11;
  OUTLINED_FUNCTION_12();
  v132 = sub_1DD0DDCCC();
  OUTLINED_FUNCTION_9();
  v131 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_11_2();
  v130 = v15;
  OUTLINED_FUNCTION_12();
  sub_1DD0DDD4C();
  OUTLINED_FUNCTION_9();
  v150 = v17;
  v151 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC0A0, qword_1DD10A458);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  OUTLINED_FUNCTION_44_0();
  v152 = v23;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v125 - v26;
  v28 = sub_1DD0DDD5C();
  OUTLINED_FUNCTION_9();
  v144 = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  OUTLINED_FUNCTION_44_0();
  v145 = v32;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_33_2();
  v148 = v35;
  OUTLINED_FUNCTION_29_0();
  v38 = MEMORY[0x1EEE9AC00](v36, v37);
  v40 = &v125 - v39;
  v42 = MEMORY[0x1EEE9AC00](v38, v41);
  v44 = (&v125 - v43);
  MEMORY[0x1EEE9AC00](v42, v45);
  v47 = &v125 - v46;
  if (qword_1EDE4F900 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v48 = sub_1DD0DD8FC();
    v154 = __swift_project_value_buffer(v48, qword_1EDE57E00);
    v49 = sub_1DD0DD8EC();
    v50 = sub_1DD0DE6DC();
    v51 = os_log_type_enabled(v49, v50);
    v133 = v40;
    if (v51)
    {
      v52 = OUTLINED_FUNCTION_50_0();
      *v52 = 0;
      _os_log_impl(&dword_1DCAFC000, v49, v50, "Parsing EntityValue to find factoid and sub collection", v52, 2u);
      v40 = v133;
      OUTLINED_FUNCTION_80();
    }

    v53 = sub_1DD0DDD1C();
    sub_1DCC17B20(0x726577736E61, 0xE600000000000000, v53);

    if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
    {
      sub_1DCB16D50(v27, &qword_1ECCAC0A0, qword_1DD10A458);
      v27 = v142;
      v54 = v143;
      v20 = v144;
    }

    else
    {
      v55 = v144;
      v56 = OUTLINED_FUNCTION_15_9();
      v57(v56);
      v55[2](v44, v47, v28);
      if ((v55[11])(v44, v28) == *MEMORY[0x1E69DAE70])
      {
        (v55[12])(v44, v28);
        v58 = swift_projectBox();
        (*(v150 + 2))(v20, v58, v151);
        v59 = OUTLINED_FUNCTION_18_51();
        if (v60(v59) == *MEMORY[0x1E69DADF0])
        {
          v61 = OUTLINED_FUNCTION_18_51();
          v62(v61);
          v63 = *v20;
          v64 = *(v20 + 1);

          v65 = v134;
          *(v134 + 32) = v63;
          *(v65 + 40) = v64;
          swift_bridgeObjectRetain_n();

          v66 = sub_1DD0DD8EC();
          v67 = sub_1DD0DE6DC();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = v63;
            v69 = swift_slowAlloc();
            v70 = v2;
            v71 = swift_slowAlloc();
            v155[0] = v71;
            *v69 = 136315138;
            v72 = sub_1DCB10E9C(v68, v64, v155);

            *(v69 + 4) = v72;
            _os_log_impl(&dword_1DCAFC000, v66, v67, "Adding factoid=%s to container", v69, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v71);
            v2 = v70;
            OUTLINED_FUNCTION_80();
            OUTLINED_FUNCTION_80();
          }

          else
          {
          }

          v20 = v144;
          v123 = OUTLINED_FUNCTION_105();
          v124(v123);
          v27 = v142;
          v54 = v143;
          v40 = v133;
          goto LABEL_16;
        }

        v75 = OUTLINED_FUNCTION_105();
        v76(v75);
        v77 = OUTLINED_FUNCTION_18_51();
        v78(v77);
      }

      else
      {
        v73 = v55[1];
        v74 = OUTLINED_FUNCTION_105();
        (v73)(v74);
        (v73)(v44, v28);
      }

      v27 = v142;
      v54 = v143;
      v20 = v55;
      v40 = v133;
    }

    v79 = sub_1DD0DD8EC();
    v80 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_22(v80))
    {
      v81 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v81);
      OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v82, v83, "Factoid missing on entity");
      OUTLINED_FUNCTION_62();
    }

LABEL_16:
    v47 = v145;
    v84 = sub_1DD0DDD1C();
    v85 = v152;
    sub_1DCC17B20(0x73656372756F73, 0xE700000000000000, v84);

    if (__swift_getEnumTagSinglePayload(v85, 1, v28) == 1)
    {
      sub_1DCB16D50(v85, &qword_1ECCAC0A0, qword_1DD10A458);
      goto LABEL_36;
    }

    (*(v20 + 4))(v40, v85, v28);
    v86 = v148;
    v87 = OUTLINED_FUNCTION_20_38();
    v151 = v89;
    v152 = v88;
    (v89)(v87);
    v149 = *(v20 + 11);
    v150 = v20 + 88;
    if (v149(v86, v28) != *MEMORY[0x1E69DAE18])
    {
      break;
    }

    v140 = *(v20 + 12);
    v141 = v20 + 96;
    v140(v86, v28);
    v44 = *v86;
    v90 = swift_projectBox();
    (*(v131 + 16))(v130, v90, v132);

    v153 = sub_1DD0DDCBC();
    v148 = *(v153 + 16);
    if (!v148)
    {
LABEL_34:

      (*(v131 + 8))(v130, v132);
      (*(v20 + 1))(v133, v28);
      return;
    }

    v40 = 0;
    v147 = v153 + ((v20[80] + 32) & ~v20[80]);
    v146 = *MEMORY[0x1E69DAE28];
    v138 = (v135 + 2);
    v139 = v20 + 8;
    v137 = (v128 + 88);
    v136 = *MEMORY[0x1E69DB098];
    v129 = v128 + 8;
    ++v135;
    v128 += 96;
    *&v91 = 136315394;
    v125 = v91;
    v127 = v2;
    v126 = v7;
    while (v40 < *(v153 + 16))
    {
      v151(v47, v147 + *(v20 + 9) * v40, v28);
      v92 = OUTLINED_FUNCTION_105();
      v93 = (v149)(v92);
      if (v93 == v146)
      {
        v94 = OUTLINED_FUNCTION_105();
        (v140)(v94);
        v95 = swift_projectBox();
        (*v138)(v27, v95, v54);

        sub_1DD0DDCEC();
        v96 = (*v137)(v7, v2);
        if (v96 == v136)
        {
          OUTLINED_FUNCTION_95_0();
          v97(v7, v2);
          v98 = *(*v7 + 16);
          v44 = *(*v7 + 24);
          v100 = *(*v7 + 32);
          v99 = *(*v7 + 40);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();

          v101 = sub_1DD0DD8EC();
          v102 = sub_1DD0DE6DC();

          if (os_log_type_enabled(v101, v102))
          {
            v103 = swift_slowAlloc();
            v155[0] = swift_slowAlloc();
            *v103 = v125;
            *(v103 + 4) = sub_1DCB10E9C(v98, v44, v155);
            *(v103 + 12) = 2080;
            *(v103 + 14) = sub_1DCB10E9C(v100, v99, v155);
            _os_log_impl(&dword_1DCAFC000, v101, v102, "Custom Type=%s and typeName=%s", v103, 0x16u);
            swift_arrayDestroy();
            v2 = v127;
            OUTLINED_FUNCTION_80();
            v7 = v126;
            OUTLINED_FUNCTION_80();
          }

          v104 = v142;
          v105 = sub_1DD0DDCDC();
          v106 = v98;
          v27 = v104;
          sub_1DD008BB4(v105, v107, v106, v44, v100, v99);

          v54 = v143;
          (*v135)(v104, v143);
          v20 = v144;
          v47 = v145;
        }

        else
        {
          OUTLINED_FUNCTION_95_0();
          v113(v7, v2);
          v114 = v154;
          v44 = sub_1DD0DD8EC();
          v115 = sub_1DD0DE6EC();
          if (OUTLINED_FUNCTION_22(v115))
          {
            v116 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_46(v116);
            _os_log_impl(&dword_1DCAFC000, v44, v114, "subEntityIdentifier Not a custom TypedValue", v47, 2u);
            v47 = v145;
            OUTLINED_FUNCTION_80();
          }

          (*v135)(v27, v54);
        }
      }

      else
      {
        v108 = OUTLINED_FUNCTION_105();
        v109(v108);
        v110 = v154;
        v44 = sub_1DD0DD8EC();
        v111 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_22(v111))
        {
          v112 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v112);
          _os_log_impl(&dword_1DCAFC000, v44, v110, "Sub collection doesn't contain entityIdentifiers", v47, 2u);
          v47 = v145;
          OUTLINED_FUNCTION_80();
        }
      }

      if (v148 == ++v40)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_42:
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v117 = *(v20 + 1);
  v117(v40, v28);
  v117(v86, v28);
LABEL_36:
  v118 = sub_1DD0DD8EC();
  v119 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_22(v119))
  {
    v120 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v120);
    OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v121, v122, "No sub collection found in properties");
    OUTLINED_FUNCTION_62();
  }
}

uint64_t sub_1DD009AD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC098, &qword_1DD10A450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of TableSetFlowProvider.makeEmptyTableFlow()()
{
  OUTLINED_FUNCTION_8();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_26(v1);

  return v3(v2);
}

uint64_t dispatch thunk of TableSetFlowProvider.makeWholeTableFlow()()
{
  OUTLINED_FUNCTION_8();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_26(v1);

  return v3(v2);
}

uint64_t dispatch thunk of TableSetFlowProvider.makeWindowingConfiguration(promptType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8();
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1DCB193FC;

  return v12(a1, a2, a3, a4);
}

uint64_t TaskFlowConfiguration.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD000000000000020, 0x80000001DD129920);
  MEMORY[0x1E12A6780](v1, v2);
  MEMORY[0x1E12A6780](0x79546B736174202CLL, 0xEC000000203A6570);
  sub_1DD0DEDBC();
  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0;
}

unint64_t TaskFlowType.debugDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v2 = 0x6261696669646F6DLL;
    if (v1 != 1)
    {
      v2 = 0xD000000000000011;
    }

    if (v1)
    {
      return v2;
    }

    else
    {
      return 0x6B7361546F666E69;
    }
  }

  else
  {
    sub_1DD0DEC1C();

    v4 = sub_1DD0DF03C();
    MEMORY[0x1E12A6780](v4);

    MEMORY[0x1E12A6780](41, 0xE100000000000000);
    return 0xD000000000000027;
  }
}

BOOL static TaskFlowType.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return (v7 & 1) != 0;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t TaskFlowConfiguration.taskName.getter()
{
  v1 = *v0;

  return v1;
}

void TaskFlowConfiguration.taskType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t TaskFlowConfiguration.init(taskName:taskType:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  if (v5 >= 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a3 + 8);
  }

  if (v7 && v8)
  {
    *a4 = result;
    *(a4 + 8) = a2;
    *(a4 + 16) = v5;
    *(a4 + 24) = v6;
  }

  else
  {

    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

BOOL static TaskFlowConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = sub_1DD0DF0AC(), result = 0, (v7 & 1) != 0))
  {
    if (!v3)
    {
      if (v2 == v4)
      {
        v10 = v5;
      }

      else
      {
        v10 = 1;
      }

      return (v10 & 1) == 0;
    }

    if (v2)
    {
      if (v2 != 1)
      {
        if (v4 > 1)
        {
          v12 = v5;
        }

        else
        {
          v12 = 0;
        }

        return (v12 & 1) != 0;
      }

      v9 = v4 == 1;
    }

    else
    {
      v9 = v4 == 0;
    }

    if (v9)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    return (v11 & 1) != 0;
  }

  return result;
}

void Prompt.instrumentOnReprompt(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;
  sub_1DD0DCF8C();
}

void ActingFlow.instrumentOnAttached(_:)()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v21[1] = v9;
  OUTLINED_FUNCTION_2_113();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v16 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v16, v0);
  v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = v2;
  (*(v11 + 32))(v19 + v17, v16, v4);
  v20 = (v19 + v18);
  *v20 = v8;
  v20[1] = v6;
  sub_1DD0DCF8C();
}

void sub_1DD00A4EC()
{
  OUTLINED_FUNCTION_50();
  v28 = v1;
  v29 = v2;
  v25[1] = v4;
  v26 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v27 = v13;
  OUTLINED_FUNCTION_2_113();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  v20 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v20, v0);
  v21 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = v10;
  *(v23 + 3) = v8;
  *(v23 + 4) = v6;
  (*(v15 + 32))(&v23[v21], v20, v10);
  v24 = &v23[v22];
  *v24 = v26;
  *(v24 + 1) = v12;
  sub_1DD0DCF8C();
}

void sub_1DD00A644(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

void ActingFlow<>.instrumented(taskName:)()
{
  OUTLINED_FUNCTION_50();
  v27 = v0;
  v2 = v1;
  v4 = v3;
  v30 = v5;
  v31 = v6;
  v32 = v7;
  OUTLINED_FUNCTION_2_113();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v9 + 16);
  v29(v14, v15);
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = v2;
  v26 = v2;
  v28 = *(v9 + 32);
  v28(v18 + v16, v14, v4);
  v19 = (v18 + v17);
  v20 = v30;
  *v19 = v32;
  v19[1] = v20;

  v21 = v2;
  v22 = v27;
  ActingFlow.onAttached(_:)(sub_1DD00CABC, v18, v4, v21);

  (v29)(v14, v22, v4);
  v23 = swift_allocObject();
  v24 = v26;
  *(v23 + 16) = v4;
  *(v23 + 24) = v24;
  v28(v23 + v16, v14, v4);
  v25 = (v23 + v17);
  *v25 = v32;
  v25[1] = v20;

  sub_1DD00A644(sub_1DD00CB58, v23);
}

void sub_1DD00A8EC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = type metadata accessor for SiriKitEventPayload(0);
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_1DD0DCA6C();
}

void sub_1DD00AD90()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v0, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1DD0DCA6C();
}

void sub_1DD00B164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  HIWORD(_8[0]) = 3887;
  sub_1DD00B244(a2, a3, _8 + 7, 0, 0, _8 + 6, a7, a8, v8, _8[0], _8[1], _8[2], _8[3], _8[4], _8[5], _8[6], _8[7], _8[8], _8[9], _8[10]);
  sub_1DD00AD90();
}

void sub_1DD00B244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = type metadata accessor for SiriKitEventPayload(0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &a9 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v29) = *v29;
  v38 = *v23;
  type metadata accessor for SiriKitEvent(0);
  *v37 = v29;
  *(v37 + 1) = v33;
  *(v37 + 2) = v31;
  bzero(v37 + 24, 0x90uLL);
  *(v37 + 21) = v27;
  *(v37 + 22) = v25;
  v37[184] = v38;
  swift_storeEnumTagMultiPayload();

  SiriKitEvent.__allocating_init(_:builder:)(v37, 0);
  OUTLINED_FUNCTION_49();
}

void ActingFlow.instrumented<A>(taskName:)()
{
  OUTLINED_FUNCTION_50();
  v49 = v1;
  v50 = v0;
  v3 = v2;
  v5 = v4;
  v43 = v4;
  v7 = v6;
  v54 = v8;
  v10 = v9;
  OUTLINED_FUNCTION_2_113();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v17 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(v12 + 16);
  v53 = v12 + 16;
  v52(v17, v18);
  v19 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v51 = *(v12 + 80);
  v20 = (v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = v7;
  *(v21 + 3) = v5;
  *(v21 + 4) = v3;
  v22 = *(v12 + 32);
  v42 = v12 + 32;
  v47 = v19;
  v22(&v21[v19], v17, v7);
  v23 = v22;
  v46 = v22;
  v24 = &v21[v20];
  v25 = v10;
  v48 = v10;
  v26 = v54;
  *v24 = v10;
  *(v24 + 1) = v26;

  v27 = v3;
  v45 = v3;
  v28 = v50;
  ActingFlow.onAttached(_:)(sub_1DD00CBEC, v21, v7, v3);

  v44 = v56;
  v55 = v56;
  (v52)(v17, v28, v7);
  v29 = v20;
  v30 = swift_allocObject();
  v31 = v43;
  *(v30 + 2) = v7;
  *(v30 + 3) = v31;
  *(v30 + 4) = v27;
  v23(&v30[v19], v17, v7);
  v32 = &v30[v29];
  v33 = v54;
  *v32 = v25;
  *(v32 + 1) = v33;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v34 = sub_1DD0DF22C();
  v37 = type metadata accessor for LifeCycleModifierFlow(0, v34, v35, v36);
  OUTLINED_FUNCTION_1_138();
  WitnessTable = swift_getWitnessTable();
  ActingFlow.onSuccess<A>(_:)(sub_1DD00CC64, v30, v37, v31, WitnessTable);

  v56 = v57;
  (v52)(v17, v50, v7);
  v39 = swift_allocObject();
  *(v39 + 2) = v7;
  *(v39 + 3) = v31;
  *(v39 + 4) = v45;
  v46(&v39[v47], v17, v7);
  v40 = &v39[v29];
  v41 = v54;
  *v40 = v48;
  *(v40 + 1) = v41;

  ActingFlow.onFailure<A>(_:)(sub_1DD00CD80, v39, v37, v31, WitnessTable);

  OUTLINED_FUNCTION_49();
}

void sub_1DD00B694(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = type metadata accessor for SiriKitEventPayload(0);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  sub_1DD0DCA6C();
}

void sub_1DD00BB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  HIWORD(_8[0]) = 3887;
  sub_1DD00B244(a3, a4, _8 + 7, 0, 0, _8 + 6, a7, a8, v8, _8[0], _8[1], _8[2], _8[3], _8[4], _8[5], _8[6], _8[7], _8[8], _8[9], _8[10]);
  sub_1DD00AD90();
}

void sub_1DD00BC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  HIBYTE(v11[0]) = 6;
  swift_getErrorValue();
  v6 = sub_1DD0DF18C();
  HIBYTE(v10[0]) = 18;
  sub_1DD00B244(a3, a4, v11 + 7, v6, v7, v10 + 7, v8, v9, v10[0], v10[1], v10[2], v10[3], v10[4], v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6]);

  sub_1DD00AD90();
}

void sub_1DD00BD84()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_0_1();
  v2 = MEMORY[0x1EEE9AC00](v0, v1);
  v7[5] = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_1DD0DCA6C();
}

uint64_t sub_1DD00C448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = *(a7 - 8);
  v7[7] = swift_task_alloc();
  v7[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD00C50C, 0, 0);
}

void sub_1DD00C50C()
{
  v6 = v0;
  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  v5 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v5, qword_1EDE57DA0);
  (*(v3 + 16))(v1, v4, v2);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD00C83C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1DD00C968(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Prompt(255, *(*a3 + 80), a3, a4);
  swift_getWitnessTable();
  sub_1DD00BD84();
}

uint64_t objectdestroy_2Tm_1()
{
  OUTLINED_FUNCTION_7_81();
  v3 = OUTLINED_FUNCTION_8_78();
  v4(v3);
  v0(*(v1 + v2 + 8));

  return swift_deallocObject();
}

uint64_t sub_1DD00CB70()
{
  OUTLINED_FUNCTION_0_1();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = (v0 + ((*(v3 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return v5(v0 + v2, *v4, v4[1]);
}

void sub_1DD00CBEC()
{
  OUTLINED_FUNCTION_0_1();
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v4 = (v0 + ((*(v3 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1DD00B694((v0 + v2), *v4, v4[1], v5, v6, v7);
}

uint64_t objectdestroy_5Tm_0()
{
  OUTLINED_FUNCTION_7_81();
  v3 = OUTLINED_FUNCTION_8_78();
  v4(v3);
  v0(*(v1 + v2 + 8));

  return swift_deallocObject();
}

uint64_t sub_1DD00CE18(uint64_t a1)
{
  v4 = v1[4];
  OUTLINED_FUNCTION_0_1();
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[2];
  v11 = v1[3];
  v12 = *(v1 + v8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1DCB193FC;

  return sub_1DD00C448(a1, v10, v11, v1 + v6, v12, v1 + v9, v4);
}

void sub_1DD00CF50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC0C0, &qword_1DD10A5C8);
  __swift_allocate_value_buffer(v0, qword_1ECCAC0A8);
  __swift_project_value_buffer(v0, qword_1ECCAC0A8);
  sub_1DD0DC71C();
  sub_1DD0DCBAC();
}

void sub_1DD00CFD8()
{
  sub_1DD0DBDEC();
  if (v3[3])
  {
    sub_1DD0DC1EC();
    if (swift_dynamicCast())
    {
      if (qword_1ECCA1418 != -1)
      {
        swift_once();
      }

      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC0C8, &qword_1DD10A5D0);
      __swift_project_value_buffer(v2, qword_1ECCD27D0);
      sub_1DD0DCBBC();
    }
  }

  else
  {
    sub_1DCC8BC14(v3);
  }

  sub_1DD0DCF1C();
}

uint64_t static Transformer<>.usoRunVoiceCommandTransformer.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECCA1410 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC0C0, &qword_1DD10A5C8);
  v3 = __swift_project_value_buffer(v2, qword_1ECCAC0A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DD00D25C()
{
  result = qword_1ECCA2C08;
  if (!qword_1ECCA2C08)
  {
    sub_1DD0DCF1C();
  }

  return result;
}

void sub_1DD00D2B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC0C8, &qword_1DD10A5D0);
  __swift_allocate_value_buffer(v0, qword_1ECCD27D0);
  __swift_project_value_buffer(v0, qword_1ECCD27D0);
  sub_1DD0DC1EC();
  sub_1DD0DCBAC();
}

void sub_1DD00D33C()
{
  sub_1DD0DBEDC();
  if (v5)
  {
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "Shortcut name could not be retrieved from USOGraph", v4, 2u);
    MEMORY[0x1E12A8390](v4, -1, -1);
  }

  sub_1DD0DCF1C();
}

SiriKitFlow::TaskType_optional __swiftcall TaskType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD0DF0FC();

  v5 = 0;
  v6 = 17;
  switch(v3)
  {
    case 0:
      goto LABEL_27;
    case 1:
      v5 = 1;
      goto LABEL_27;
    case 2:
      v5 = 2;
      goto LABEL_27;
    case 3:
      v5 = 3;
      goto LABEL_27;
    case 4:
      v5 = 4;
      goto LABEL_27;
    case 5:
      v5 = 5;
      goto LABEL_27;
    case 6:
      v5 = 6;
      goto LABEL_27;
    case 7:
      v5 = 7;
      goto LABEL_27;
    case 8:
      v5 = 8;
      goto LABEL_27;
    case 9:
      v5 = 9;
      goto LABEL_27;
    case 10:
      v5 = 10;
      goto LABEL_27;
    case 11:
      v5 = 11;
      goto LABEL_27;
    case 12:
      v5 = 12;
      goto LABEL_27;
    case 13:
      v5 = 13;
      goto LABEL_27;
    case 14:
      v5 = 14;
      goto LABEL_27;
    case 15:
      v5 = 15;
      goto LABEL_27;
    case 16:
      v5 = 16;
LABEL_27:
      v6 = v5;
      break;
    case 17:
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    default:
      v6 = 35;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t TaskType.rawValue.getter()
{
  result = 0xD000000000000013;
  switch(*v0)
  {
    case 1:
    case 0x17:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 4:
    case 0xE:
    case 0xF:
    case 0x16:
      result = 0xD000000000000016;
      break;
    case 5:
    case 0x11:
    case 0x12:
    case 0x1D:
    case 0x1F:
      result = 0xD000000000000012;
      break;
    case 7:
    case 8:
    case 9:
    case 0x20:
      result = 0xD000000000000019;
      break;
    case 0xA:
    case 0x13:
      result = 0xD00000000000001ELL;
      break;
    case 0xC:
      result = 0xD000000000000018;
      break;
    case 0x10:
    case 0x19:
    case 0x1B:
      result = 0xD000000000000015;
      break;
    case 0x14:
    case 0x15:
      result = 0xD000000000000011;
      break;
    case 0x18:
      result = 0xD00000000000001BLL;
      break;
    case 0x1A:
    case 0x22:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DD00D8DC()
{
  result = qword_1ECCAC0D0[0];
  if (!qword_1ECCAC0D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCAC0D0);
  }

  return result;
}

unint64_t sub_1DD00D954@<X0>(unint64_t *a1@<X8>)
{
  result = TaskType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TaskType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDE)
  {
    if (a2 + 34 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 34) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 35;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v5 = v6 - 35;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TaskType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDD)
  {
    v6 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
          *result = a2 + 34;
        }

        break;
    }
  }

  return result;
}

uint64_t TaskWrapperFlow.__allocating_init(wrap:withTaskName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  TaskWrapperFlow.init(wrap:withTaskName:)(a1, a2, a3);
  return v6;
}

uint64_t TaskWrapperFlow.init(wrap:withTaskName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + *(*v3 + 112)) = 0;
  OUTLINED_FUNCTION_66();
  (*(*(*(v7 + 80) - 8) + 32))(v3 + *(v6 + 96));
  OUTLINED_FUNCTION_66();
  v9 = (v3 + *(v8 + 104));
  *v9 = a2;
  v9[1] = a3;
  return v3;
}

void sub_1DD00DC9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v17 - v6;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v8 = sub_1DD0DD8FC();
  v9 = __swift_project_value_buffer(v8, qword_1EDE57E00);
  v10 = *(v8 - 8);
  (*(v10 + 16))(v7, v9, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_1DCBCF6C8(v7, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
  {
    sub_1DCBCF738(v4);
  }

  else
  {
    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v13 = 136315650;
      v14 = sub_1DD0DEC3C();
      v16 = sub_1DCB10E9C(v14, v15, &v18);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2048;
      *(v13 + 14) = 27;
      *(v13 + 22) = 2080;
      *(v13 + 24) = sub_1DCB10E9C(0xD00000000000003FLL, 0x80000001DD129A10, &v18);
      _os_log_impl(&dword_1DCAFC000, v11, v12, "FatalError at %s:%lu - %s", v13, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v10 + 8))(v4, v8);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000003FLL, 0x80000001DD129A10);
}

uint64_t sub_1DD00DF78(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DD00DFB8);
}

uint64_t sub_1DD00DFB8()
{
  OUTLINED_FUNCTION_42();
  v1 = (*(*(v0[4] + 88) + 16))(v0[2], *(v0[4] + 80));
  v2 = v0[1];
  v3 = v1 & 1;

  return v2(v3);
}

void sub_1DD00E048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TaskWrapperFlow(0, *(*v4 + 80), *(*v4 + 88), a4);
  swift_getWitnessTable();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DD00E0EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DD00E12C);
}

uint64_t sub_1DD00E12C()
{
  if ((*(v0[3] + *(*v0[3] + 112)) & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v1 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v1, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  v2 = v0[3];
  OUTLINED_FUNCTION_66();
  *(v2 + *(v3 + 112)) = 1;
  OUTLINED_FUNCTION_66();
  v6 = *(v4 + 80);
  v5 = *(v4 + 88);
  v10 = (*(v5 + 40) + **(v5 + 40));
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1DD00E39C;
  v8 = v0[2];

  return v10(v8, v6, v5);
}

uint64_t sub_1DD00E39C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DD00E488, 0, 0);
}

uint64_t sub_1DD00E488()
{
  if (**(v0 + 16) == 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v1 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v1, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t TaskWrapperFlow.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  OUTLINED_FUNCTION_66();

  return v0;
}

uint64_t TaskWrapperFlow.__deallocating_deinit()
{
  TaskWrapperFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD00E764(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCBCF434;

  return sub_1DD00DF78(a1);
}

uint64_t sub_1DD00E820(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCC467A0;

  return sub_1DD00E0EC(a1);
}

uint64_t sub_1DD00E8F8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of TaskWrapperFlow.onAsync(input:)(uint64_t a1)
{
  OUTLINED_FUNCTION_66();
  v6 = (*(v3 + 160) + **(v3 + 160));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DCBCF434;

  return v6(a1);
}

uint64_t dispatch thunk of TaskWrapperFlow.execute()(uint64_t a1)
{
  OUTLINED_FUNCTION_66();
  v6 = (*(v3 + 176) + **(v3 + 176));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DCC467A0;

  return v6(a1);
}

void sub_1DD00EC88()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[25];
  v2 = sub_1DD0DDE9C();
  sub_1DCD01E78(v1, (v0 + 7));
  if (v0[10])
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCD01EE8((v0 + 7));
  v0[26] = v2;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v3 = qword_1EDE57D40;
  v4 = type metadata accessor for CATTemplateExecutor();
  v0[15] = v4;
  v0[16] = &off_1F58563F0;
  v0[12] = v3;
  __swift_project_boxed_opaque_existential_1(v0 + 12, v4);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD00EE08()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v4 + 224) = v0;

  if (v0)
  {
    v8 = sub_1DD00EFB0;
  }

  else
  {
    *(v4 + 232) = v3;
    v8 = sub_1DD00EF48;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DD00EF48()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = v0[1];
  v2 = v0[29];

  return v1(v2);
}

uint64_t sub_1DD00EFB0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v1 = *(v0 + 8);

  return v1();
}

void sub_1DD00F028()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[25];
  v2 = sub_1DD0DDE9C();
  sub_1DCD01E78(v1, (v0 + 7));
  if (v0[10])
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCD01EE8((v0 + 7));
  v0[26] = v2;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v3 = qword_1EDE57D40;
  v4 = type metadata accessor for CATTemplateExecutor();
  v0[15] = v4;
  v0[16] = &off_1F58563F0;
  v0[12] = v3;
  __swift_project_boxed_opaque_existential_1(v0 + 12, v4);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD00F1A8()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v4 + 224) = v0;

  if (v0)
  {
    v8 = sub_1DD00F2EC;
  }

  else
  {
    *(v4 + 232) = v3;
    v8 = sub_1DD00F2E8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

void sub_1DD00F30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = v6[11];
  v14 = v6[12];
  __swift_project_boxed_opaque_existential_1(v6 + 8, v13);
  if ((*(v14 + 32))(v13, v14))
  {
    v15 = swift_allocObject();
    v15[2] = a3;
    v15[3] = a4;
    v15[4] = a2;
    v15[5] = v6;
    sub_1DD0DCF8C();
  }

  sub_1DCCA3C08(v6 + 8, a1, a3, a4, a5, a6);
}

uint64_t sub_1DD00F450(void *a1, char a2, uint64_t (*a3)(void *, uint64_t), uint64_t (*a4)(void *, uint64_t), uint64_t a5, void *a6)
{
  v34 = a6;
  v11 = sub_1DD0DB0FC();
  v35 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v30 - v20;
  if ((a2 & 1) == 0)
  {
    v31 = v19;
    v32 = a3;
    v33 = a4;
    v23 = sub_1DD0DDFBC();
    sub_1DD010C14(v23, v24, a1);
    if (a5)
    {
      type metadata accessor for AppInformationResolver();
      swift_initStackObject();
      sub_1DD0DCF8C();
    }

    v25 = sub_1DD0DD23C();
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v25);
    sub_1DCB28B08(v21, v17, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
    v26 = (*(v31 + 80) + 24) & ~*(v31 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = a1;
    sub_1DCD0506C(v17, v27 + v26);
    v28 = (v27 + ((v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
    v29 = v33;
    *v28 = v32;
    v28[1] = v29;
    sub_1DCB96674(a1);
    sub_1DD0DCF8C();
  }

  return a3(a1, 1);
}

void sub_1DD00F798(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v10 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v10, qword_1EDE57E00);
    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DCAFC000, v11, v12, "Unable to generate a snippet subtitle for TCC. Snippet will not have a subtitle", v13, 2u);
      MEMORY[0x1E12A8390](v13, -1, -1);
    }
  }

  else
  {
    sub_1DD010C78(a1, a2, a4);
  }

  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a6;
  v14[4] = a7;
  v15 = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD00F900(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t (*a5)(void *, void))
{
  if (a3)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v7 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v7, qword_1EDE57E00);
    v8 = sub_1DD0DD8EC();
    v9 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DCAFC000, v8, v9, "Unable to generate a snippet title for TCC. Snippet will not have a title", v10, 2u);
      MEMORY[0x1E12A8390](v10, -1, -1);
    }
  }

  else
  {
    sub_1DCC36428(a1, a2, a4);
  }

  return a5(a4, 0);
}

void sub_1DD00FA10(uint64_t a1, uint64_t a2, void *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v49 = a5;
  v50 = a3;
  v46 = a4;
  v47 = a7;
  v48 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v13 = v12;
  v15 = *(v14 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v51 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v39 - v20;
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v44 = qword_1EDE57E18;
  v22 = sub_1DD0DE6DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1DD0E07C0;
  v52 = a2;
  sub_1DD0DD1FC();
  sub_1DD010B00(&qword_1EDE46330, MEMORY[0x1E69CE208], MEMORY[0x1E69CE218]);
  v45 = a2;
  v24 = sub_1DD0DF03C();
  v26 = v25;
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = sub_1DCB34060();
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  sub_1DD0DD7EC("TCCResponseGenerator processEnableTCC for App %@", 48, 2, &dword_1DCAFC000, v44, v22, v23);

  v27 = v8[11];
  v28 = v8[12];
  __swift_project_boxed_opaque_existential_1(v8 + 8, v27);
  LODWORD(v44) = (*(v28 + 112))(v27, v28);
  v29 = v8[11];
  v30 = v8[12];
  __swift_project_boxed_opaque_existential_1(v8 + 8, v29);
  v43 = (*(v30 + 32))(v29, v30);
  v32 = v47;
  v31 = v48;
  (*(v47 + 176))(v48, v47);
  (*(v13 + 16))(v51, v21, AssociatedTypeWitness);
  v33 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v34 = (v15 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v34 + 31) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 2) = v31;
  *(v35 + 3) = v32;
  v36 = v46;
  v46 = v21;
  v42 = v8;
  v37 = v49;
  *(v35 + 4) = v36;
  *(v35 + 5) = v37;
  *(v35 + 6) = v8;
  (*(v13 + 32))(&v35[v33], v51, AssociatedTypeWitness);
  *&v35[v34] = v45;
  v38 = &v35[v41];
  *v38 = a1;
  v38[8] = v43 & 1;
  *&v35[v40] = v50;
  swift_getAssociatedConformanceWitness();
  sub_1DD0DCF8C();
}

void sub_1DD00FE3C(void *__src, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  memcpy(__dst, __src, 0x49uLL);
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDE57E18;
  v18 = sub_1DD0DE6DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1DD0E07C0;
  v29 = 0;
  v30 = 0xE000000000000000;
  memcpy(v28, __src, 0x49uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3260, &unk_1DD0E5AD0);
  sub_1DD0DEDBC();
  v21 = v29;
  v20 = v30;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1DCB34060();
  *(v19 + 32) = v21;
  *(v19 + 40) = v20;
  sub_1DD0DD7EC("TCCResponseGenerator processEnableTCC template %@", 49, 2, &dword_1DCAFC000, v17, v18, v19);

  if ((__dst[72] & 1) == 0)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = a10;
    *(v26 + 24) = a11;
    *(v26 + 32) = a2;
    *(v26 + 40) = a3;
    *(v26 + 48) = a7;
    *(v26 + 56) = a6;
    memcpy((v26 + 64), __dst, 0x48uLL);
    *(v26 + 136) = a4;
    *(v26 + 144) = a8 & 1;
    *(v26 + 152) = a9;
    sub_1DCB28B08(__dst, v28, &unk_1ECCA3260, &unk_1DD0E5AD0);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1DD0DCF8C();
  }

  v22 = sub_1DD0DE6EC();
  sub_1DD0DD7EC("Failed to create EnableTCC Template", 35, 2, &dword_1DCAFC000, v17, v22, MEMORY[0x1E69E7CC0]);
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v23 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000023, 0x80000001DD129B90);
  sub_1DD010B00(qword_1EDE49B80, type metadata accessor for CommandFailure, &protocol conformance descriptor for CommandFailure);
  v24 = swift_allocError();
  *v25 = v23;
  a2(v24, 1);
}

void sub_1DD0101A4(void *a1, char a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, char a9, void *a10, uint64_t a11, uint64_t a12)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v18);
  if ((a2 & 1) == 0)
  {
    v27 = a4;
    v24 = *(a12 + 192);
    v26 = a1;
    v24(a11, a12);
    v25 = swift_allocObject();
    *(v25 + 16) = a11;
    *(v25 + 24) = a12;
    memcpy((v25 + 32), a7, 0x48uLL);
    *(v25 + 104) = a8;
    *(v25 + 112) = v26;
    *(v25 + 120) = a9 & 1;
    *(v25 + 128) = a5;
    *(v25 + 136) = a10;
    *(v25 + 144) = a6;
    *(v25 + 152) = a3;
    *(v25 + 160) = v27;
    swift_getAssociatedConformanceWitness();
    sub_1DCB96674(a1);
    sub_1DCBBF670(a7, v31);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDE57E18;
  v20 = sub_1DD0DE6EC();
  sub_1DD0DD7EC("Failed to create YesNoConfirmationView", 38, 2, &dword_1DCAFC000, v19, v20, MEMORY[0x1E69E7CC0]);
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v21 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000026, 0x80000001DD129BC0);
  sub_1DD010B00(qword_1EDE49B80, type metadata accessor for CommandFailure, &protocol conformance descriptor for CommandFailure);
  v22 = swift_allocError();
  *v23 = v21;
  a3(v22, 1);
}

void sub_1DD010548(uint64_t a1, void *a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = type metadata accessor for AceOutput(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  memcpy(__dst, a2, 0x48uLL);
  HIDWORD(v26) = *(*(a3 + 16) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1DD0E15D0;
  *(v19 + 32) = a4;
  v20 = a2[7];
  if (v20 == 2)
  {
    v21 = a5 ^ 1;
  }

  else
  {
    v21 = v20 != 1;
  }

  v22 = *(a12 + 320);
  v23 = a4;
  v24 = v22(a7, a11, a12);
  v32 = 0;
  v31[1] = 0u;
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)(__dst, a3 + 64, HIDWORD(v26), v19, v21 & 1, v24 & 1, a1, MEMORY[0x1E69E7CC0], v31, v25, v26, a6, a7, a2, a1, a9, a10, a8, 0, 0, 0);
}

uint64_t sub_1DD0107F8(uint64_t a1, char a2, void *a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v16 = type metadata accessor for SiriKitEventPayload(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v26[1] = a7;
    v23 = *a6;
    v24 = a6[1];
    __swift_project_boxed_opaque_existential_1(a3 + 13, a3[16]);
    type metadata accessor for SiriKitEvent(0);
    v26[0] = a8;
    *v19 = 65;
    *(v19 + 1) = a4;
    *(v19 + 2) = a5;
    *(v19 + 3) = 3;
    *(v19 + 16) = 0;
    *(v19 + 5) = 0;
    *(v19 + 6) = 0;
    *(v19 + 7) = v23;
    *(v19 + 8) = v24;
    *(v19 + 9) = 0;
    *(v19 + 10) = 0;
    v19[88] = 4;
    swift_storeEnumTagMultiPayload();
    v25 = a4;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDE57E18;
  v21 = sub_1DD0DE6EC();
  sub_1DD0DD7EC("Failed submit processEnableTCC", 30, 2, &dword_1DCAFC000, v20, v21, MEMORY[0x1E69E7CC0]);
  return a7(a1, 1);
}

void sub_1DD010A1C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_99(AssociatedTypeWitness);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1DD00FE3C(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v10, *(v1 + v11), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v11 + 31) & 0xFFFFFFFFFFFFFFF8)), v3, v4);
}

uint64_t sub_1DD010B00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DD010C14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();

  [a3 setStyle_];
}

void sub_1DD010C78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setSubtitle_];
}

void sub_1DD010CE0(uint64_t a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v7);
  v9 = v8;
  v11 = v10;
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = *(v3 + 16);
  v14 = (v3 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v14;
  v16 = v14[1];

  sub_1DD00F798(a1, a2, a3 & 1, v13, v3 + v12, v15, v16);
}

uint64_t TCCResponses.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[38] = a3;
  v4[39] = v3;
  v4[36] = a1;
  v4[37] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v4[40] = swift_task_alloc();
  v5 = sub_1DD0DD23C();
  v4[41] = v5;
  v4[42] = *(v5 - 8);
  v4[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD010EAC, 0, 0);
}

uint64_t sub_1DD010EAC()
{
  v1 = *(v0 + 296);
  v2 = MEMORY[0x1E69E6158];
  v3 = sub_1DD0DDE9C();
  sub_1DCB28B08(v1, v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    sub_1DCB18FF0((v0 + 56), v0 + 16);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
    sub_1DCCDE224(v4, v5);
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v7 = *(v0 + 320);
  v6 = *(v0 + 328);
  sub_1DCB28B08(*(v0 + 288), v7, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v6) == 1)
  {
    sub_1DCB16D50(*(v0 + 320), &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  }

  else
  {
    v9 = *(v0 + 336);
    v8 = *(v0 + 344);
    v10 = *(v0 + 328);
    (*(v9 + 32))(v8, *(v0 + 320), v10);
    v11 = sub_1DD0DD22C();
    *(v0 + 120) = MEMORY[0x1E69E6370];
    *(v0 + 96) = v11 & 1;
    sub_1DCB20B30((v0 + 96), (v0 + 128));
    swift_isUniquelyReferenced_nonNull_native();
    sub_1DCC60044();
    v12 = sub_1DD0DD21C();
    *(v0 + 184) = v2;
    *(v0 + 160) = v12;
    *(v0 + 168) = v13;
    sub_1DCB20B30((v0 + 160), (v0 + 192));
    swift_isUniquelyReferenced_nonNull_native();
    sub_1DCC60044();
    (*(v9 + 8))(v8, v10);
  }

  *(v0 + 352) = v3;
  __swift_project_boxed_opaque_existential_1(*(v0 + 312), *(*(v0 + 312) + 24));
  v14 = swift_task_alloc();
  *(v0 + 360) = v14;
  *v14 = v0;
  v14[1] = sub_1DD0111C8;
  v15 = *(v0 + 304);

  return sub_1DCC6FD30(91, v3, 0, v15);
}

uint64_t sub_1DD0111C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v5 = sub_1DD011388;
  }

  else
  {
    *(v4 + 376) = a1;
    v5 = sub_1DD011314;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DD011314()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 376);

  return v1(v2);
}

uint64_t sub_1DD011388()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TCCResponses.confirmationRejected(deviceState:catOverrides:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD011410()
{
  v1 = *(v0 + 160);
  v2 = sub_1DD0DDE9C();
  sub_1DCB28B08(v1, v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  *(v0 + 184) = v2;
  __swift_project_boxed_opaque_existential_1(*(v0 + 176), *(*(v0 + 176) + 24));
  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  *v3 = v0;
  v3[1] = sub_1DD011568;
  v4 = *(v0 + 168);

  return sub_1DCC6FD30(84, v2, 0, v4);
}

uint64_t sub_1DD011568(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t TCCResponses.confirmationCancelled(deviceState:catOverrides:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD0116A4()
{
  v1 = *(v0 + 160);
  v2 = sub_1DD0DDE9C();
  sub_1DCB28B08(v1, v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  *(v0 + 184) = v2;
  __swift_project_boxed_opaque_existential_1(*(v0 + 176), *(*(v0 + 176) + 24));
  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  *v3 = v0;
  v3[1] = sub_1DD01180C;
  v4 = *(v0 + 168);

  return sub_1DCC6FD30(83, v2, 0, v4);
}

void static TCCTemplates.promptToEnableApp(appDisplayInfo:deviceState:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v9 = OUTLINED_FUNCTION_99(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v18 = OUTLINED_FUNCTION_20_0(v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v29 - v20;
  v22 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
  sub_1DCB17C3C(a1, v16, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  sub_1DCB17C3C(a2, v30, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_1DCD0506C(v16, v25 + v23);
  v26 = v25 + v24;
  v27 = v30[1];
  *v26 = v30[0];
  *(v26 + 16) = v27;
  *(v26 + 32) = v31;
  v28 = (v25 + ((v24 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v28 = a3;
  v28[1] = a4;
  sub_1DD0DCF8C();
}

void sub_1DD011A24()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  sub_1DD0DDE9C();
  OUTLINED_FUNCTION_15_64();
}

uint64_t sub_1DD011BA0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v7 + 152) = v6;
  *(v7 + 160) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DD011CDC()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v2 = [v1 dialog];
  sub_1DCE5993C();
  v3 = sub_1DD0DE2EC();

  if (sub_1DCB08B14(v3))
  {
    sub_1DCB35460(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1E12A72C0](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;
    v6 = *(v0 + 152);

    v7 = [v5 fullPrint];

    sub_1DD0DDFBC();
  }

  else
  {
    v8 = *(v0 + 152);
  }

  v9 = OUTLINED_FUNCTION_36_3();

  return v10(v9);
}

uint64_t sub_1DD011E18()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DD011E88()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  sub_1DD0DDE9C();
  OUTLINED_FUNCTION_15_64();
}

uint64_t sub_1DD012004()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v7 + 152) = v6;
  *(v7 + 160) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1DD012154()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  sub_1DD0DDE9C();
  OUTLINED_FUNCTION_15_64();
}

uint64_t static TCCTemplates.promptToAccessLocationBySiri(deviceState:hideDisplayedDialog:mustUseVoiceDrivenDialog:)(uint64_t a1, char a2, char a3)
{
  *(v3 + 297) = a3;
  *(v3 + 296) = a2;
  *(v3 + 248) = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD0122EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  sub_1DD0DDE9C();
  OUTLINED_FUNCTION_16_63();
}

uint64_t sub_1DD0124D4()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v5 + 280) = v0;

  if (!v0)
  {
    *(v5 + 288) = v3;
  }

  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD012614()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[36];

  return v1(v2);
}

uint64_t sub_1DD012678()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t static TCCTemplates.promptToAccessPreciseLocationBySiriOneTime(deviceState:isImmediateFollowUp:hideDisplayedDialog:)(uint64_t a1, char a2, char a3)
{
  *(v3 + 297) = a3;
  *(v3 + 296) = a2;
  *(v3 + 248) = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD0126F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  sub_1DD0DDE9C();
  OUTLINED_FUNCTION_16_63();
}

uint64_t sub_1DD0128D4()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v5 + 280) = v0;

  if (!v0)
  {
    *(v5 + 288) = v3;
  }

  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t static TCCTemplates.errorSiriNeedsLocationAccess(deviceState:requestingPreciseLocation:)(uint64_t a1, char a2)
{
  *(v2 + 232) = a2;
  *(v2 + 184) = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD012A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  sub_1DD0DDE9C();
  OUTLINED_FUNCTION_16_63();
}

uint64_t sub_1DD012C08()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v5 + 216) = v0;

  if (!v0)
  {
    *(v5 + 224) = v3;
  }

  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD012D48()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[28];

  return v1(v2);
}

uint64_t sub_1DD012DAC()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DD012E30()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD012F88()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v7 + 80) = v6;
  *(v7 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DD0130C4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v2 = [v1 dialog];
  sub_1DCE5993C();
  v3 = sub_1DD0DE2EC();

  if (sub_1DCB08B14(v3))
  {
    sub_1DCB35460(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1E12A72C0](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;
    v6 = *(v0 + 80);

    v7 = [v5 fullPrint];

    sub_1DD0DDFBC();
  }

  else
  {
    v8 = *(v0 + 80);
  }

  v9 = OUTLINED_FUNCTION_36_3();

  return v10(v9);
}

void sub_1DD013240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v8 = OUTLINED_FUNCTION_99(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8, v13);
  v15 = v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v17 = OUTLINED_FUNCTION_20_0(v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v27 - v19;
  v21 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
  v22 = OUTLINED_FUNCTION_138();
  sub_1DCB17C3C(v22, v23, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v24 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_1DCD0506C(v15, v25 + v24);
  v26 = (v25 + ((v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = a2;
  v26[1] = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD0133F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  strcpy((inited + 32), "responseMode");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  result = sub_1DD0DDE9C();
  qword_1EDE49C18 = result;
  return result;
}

uint64_t sub_1DD013488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v8 = swift_task_alloc();
  v7[24] = v8;
  *v8 = v7;
  v8[1] = sub_1DCF68320;

  return static TCCTemplates.promptToEnableApp(appDisplayInfo:deviceState:)();
}

uint64_t sub_1DD013530()
{
  OUTLINED_FUNCTION_41();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v7);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = (*(v10 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_41_28();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_30_42(v12);
  *v13 = v14;
  v13[1] = sub_1DCB4AD3C;

  return sub_1DD013488(v6, v1, v2, v0 + v9, v0 + v11, v3, v4);
}

uint64_t static TCCTemplates.promptToEnableApp(appDisplayInfo:deviceState:)()
{
  OUTLINED_FUNCTION_42();
  v0[42] = v1;
  v0[43] = v2;
  v0[41] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v4);
  v0[44] = OUTLINED_FUNCTION_38();
  v5 = sub_1DD0DD23C();
  v0[45] = v5;
  OUTLINED_FUNCTION_99(v5);
  v0[46] = v6;
  v0[47] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DD013734()
{
  OUTLINED_FUNCTION_41();
  v1 = MEMORY[0x1E69E6158];
  v2 = sub_1DD0DDE9C();
  v3 = OUTLINED_FUNCTION_138();
  sub_1DCB17C3C(v3, v4, v5, v6);
  OUTLINED_FUNCTION_34_41();
  if (v7)
  {
    sub_1DCB185D0(*(v0 + 352), &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  }

  else
  {
    v9 = *(v0 + 368);
    v8 = *(v0 + 376);
    v10 = *(v0 + 360);
    (*(v9 + 32))(v8, *(v0 + 352), v10);
    *(v0 + 200) = sub_1DD0DD22C() & 1;
    *(v0 + 224) = MEMORY[0x1E69E6370];
    sub_1DCB20B30((v0 + 200), (v0 + 232));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_47_27();
    sub_1DCC60044();
    v11 = sub_1DD0DD21C();
    *(v0 + 288) = v1;
    *(v0 + 264) = v11;
    *(v0 + 272) = v12;
    sub_1DCB20B30((v0 + 264), (v0 + 296));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_47_27();
    OUTLINED_FUNCTION_44_29();
    sub_1DCC60044();
    v2 = v14;
    (*(v9 + 8))(v8, v10);
  }

  sub_1DCB17C3C(*(v0 + 344), v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB185D0(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  *(v0 + 384) = v2;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v13 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_18_22(v13, v13, &off_1F58563F0);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD013A60()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 408) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD013B98()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DD013C0C()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DD013C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DD013CA4, 0, 0);
}

uint64_t sub_1DD013CA4()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = OUTLINED_FUNCTION_9_1();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1DD013D64;

  return v5(&unk_1DD10A938, v2);
}

uint64_t sub_1DD013D64()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  *(v7 + 56) = v5;
  *(v7 + 64) = v6;
  *(v7 + 72) = v8;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD013E6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1DCDAF940;

  return static TCCTemplates.promptToEnableAppSnippetTitle(appDisplayInfo:)();
}

uint64_t static TCCTemplates.promptToEnableAppSnippetTitle(appDisplayInfo:)()
{
  OUTLINED_FUNCTION_42();
  v0[15] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v2);
  v0[16] = OUTLINED_FUNCTION_38();
  v3 = sub_1DD0DD23C();
  v0[17] = v3;
  OUTLINED_FUNCTION_99(v3);
  v0[18] = v4;
  v0[19] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DD013FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v11 = sub_1DD0DDE9C();
  v12 = OUTLINED_FUNCTION_138();
  sub_1DCB17C3C(v12, v13, v14, v15);
  OUTLINED_FUNCTION_34_41();
  if (v16)
  {
    sub_1DCB185D0(v10[16], &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_26_38();
    v18(v17);
    v19 = sub_1DD0DD21C();
    OUTLINED_FUNCTION_36_41(v19, v20);
    OUTLINED_FUNCTION_28_37();
    OUTLINED_FUNCTION_44_29();
    sub_1DCC60044();
    v21 = OUTLINED_FUNCTION_49_27();
    v22(v21);
  }

  v10[20] = v11;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v23 = qword_1EDE57D40;
  v24 = type metadata accessor for CATTemplateExecutor();
  v10[5] = v24;
  v10[6] = &off_1F58563F0;
  v10[2] = v23;
  __swift_project_boxed_opaque_existential_1(v10 + 2, v24);
  OUTLINED_FUNCTION_40_35();
}

uint64_t sub_1DD014184()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  v7[22] = v0;

  if (!v0)
  {
    v7[23] = v3;
    v7[24] = v5;
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DD0142B0()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];
  v3 = v0[23];
  v2 = v0[24];

  return v1(v2, v3);
}

uint64_t sub_1DD01432C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DD014350, 0, 0);
}

uint64_t sub_1DD014350()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = OUTLINED_FUNCTION_9_1();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1DD014410;

  return v5(&unk_1DD10A928, v2);
}

uint64_t sub_1DD014410()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  *(v7 + 56) = v5;
  *(v7 + 64) = v6;
  *(v7 + 72) = v8;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD014518(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1DD0145B0;

  return static TCCTemplates.promptToEnableAppSnippetSubtitle(appDisplayInfo:)();
}

uint64_t sub_1DD0145B0()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_152();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_152();

    return MEMORY[0x1EEE6DFA0](v20, v21, v22);
  }
}

uint64_t static TCCTemplates.promptToEnableAppSnippetSubtitle(appDisplayInfo:)()
{
  OUTLINED_FUNCTION_42();
  v0[15] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v2);
  v0[16] = OUTLINED_FUNCTION_38();
  v3 = sub_1DD0DD23C();
  v0[17] = v3;
  OUTLINED_FUNCTION_99(v3);
  v0[18] = v4;
  v0[19] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DD0147B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v11 = sub_1DD0DDE9C();
  v12 = OUTLINED_FUNCTION_138();
  sub_1DCB17C3C(v12, v13, v14, v15);
  OUTLINED_FUNCTION_34_41();
  if (v16)
  {
    sub_1DCB185D0(v10[16], &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_26_38();
    v18(v17);
    v19 = sub_1DD0DD21C();
    OUTLINED_FUNCTION_36_41(v19, v20);
    OUTLINED_FUNCTION_28_37();
    OUTLINED_FUNCTION_44_29();
    sub_1DCC60044();
    v21 = OUTLINED_FUNCTION_49_27();
    v22(v21);
  }

  v10[20] = v11;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v23 = qword_1EDE57D40;
  v24 = type metadata accessor for CATTemplateExecutor();
  v10[5] = v24;
  v10[6] = &off_1F58563F0;
  v10[2] = v23;
  __swift_project_boxed_opaque_existential_1(v10 + 2, v24);
  OUTLINED_FUNCTION_40_35();
}

uint64_t sub_1DD014964()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  v7[22] = v0;

  if (!v0)
  {
    v7[23] = v3;
    v7[24] = v5;
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DD014AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCF68A2C;

  return static TCCTemplates.confirmationRejected(deviceState:)((v6 + 12), a4);
}

uint64_t static TCCTemplates.confirmationRejected(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD014B64()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[26];
  v2 = sub_1DD0DDE9C();
  sub_1DCB17C3C(v1, (v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB185D0((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[27] = v2;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v3 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_18_22(v3, v3, &off_1F58563F0);
  sub_1DD0DCF8C();
}

void sub_1DD014D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v8 = OUTLINED_FUNCTION_20_0(v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - v10;
  v12 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  sub_1DCB17C3C(a1, v16, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v14 = v16[1];
  *(v13 + 32) = v16[0];
  *(v13 + 48) = v14;
  *(v13 + 64) = v17;
  *(v13 + 72) = a2;
  *(v13 + 80) = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD014E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCF68A2C;

  return static TCCTemplates.confirmationCancelled(deviceState:)((v6 + 12), a4);
}

uint64_t static TCCTemplates.confirmationCancelled(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD014F44()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[26];
  v2 = sub_1DD0DDE9C();
  sub_1DCB17C3C(v1, (v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (v0[10])
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB185D0((v0 + 7), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v0[27] = v2;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v3 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_18_22(v3, v3, &off_1F58563F0);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD015134()
{
  OUTLINED_FUNCTION_41();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v0);
  OUTLINED_FUNCTION_41_28();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_42(v1);
  *v2 = v3;
  v2[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_7_82();

  return sub_1DD013C80(v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_17Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  v4 = sub_1DD0DD23C();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v4))
  {
    OUTLINED_FUNCTION_112();
    (*(v5 + 8))(v0 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1DD015350()
{
  OUTLINED_FUNCTION_41();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v0);
  OUTLINED_FUNCTION_41_28();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_42(v1);
  *v2 = v3;
  v2[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_7_82();

  return sub_1DD01432C(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DD015460()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_7_82();
  OUTLINED_FUNCTION_196();

  return sub_1DD014AB0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DD015500()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_7_82();
  OUTLINED_FUNCTION_196();

  return sub_1DD014E90(v3, v4, v5, v6, v7, v8);
}

_BYTE *storeEnumTagSinglePayload for TCCTemplates(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DD01564C()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DD014518(v3, v4);
}

uint64_t sub_1DD0156D4()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DD013E6C(v3, v4);
}

void ActingFlow.then<A, B>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for ChainedFlow(0, AssociatedTypeWitness, a4, v17);
  v21 = a3;
  v22 = a6;
  __swift_allocate_boxed_opaque_existential_1Tm(&v20);
  OUTLINED_FUNCTION_112();
  (*(v18 + 16))();
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a6;
  v19[6] = a7;
  v19[7] = a1;
  v19[8] = a2;
  *a8 = sub_1DD015908(&v20, sub_1DD0158B8, v19);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD0158B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[6];
  v5 = v2[7];
  a2[3] = v2[4];
  a2[4] = v4;
  __swift_allocate_boxed_opaque_existential_1Tm(a2);
  return v5(a1);
}

uint64_t sub_1DD015908(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1DD015D6C(a1, a2, a3);
  return v6;
}

void ActingFlow.then(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA1D30, &qword_1DD0E1EC0);
  type metadata accessor for ChainedFlow(0, AssociatedTypeWitness, v11, v12);
  v16 = a3;
  v17 = a4;
  __swift_allocate_boxed_opaque_existential_1Tm(&v15);
  OUTLINED_FUNCTION_112();
  (*(v13 + 16))();
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a1;
  v14[5] = a2;
  *a5 = sub_1DD015908(&v15, sub_1DD015C30, v14);
  sub_1DD0DCF8C();
}

void sub_1DD015A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v14 = &v17 - v13;
  (*(v11 + 16))(&v17 - v13, a1, AssociatedTypeWitness);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a4;
  *(v16 + 3) = a5;
  *(v16 + 4) = v18;
  *(v16 + 5) = a3;
  (*(v11 + 32))(&v16[v15], v14, AssociatedTypeWitness);
  type metadata accessor for Linearly();
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t sub_1DD015C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ChainedFlow.State(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD015CE8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v3 = a1(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5288, &qword_1DD0F10C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = v3;
  v5 = static FlowsBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1DCC65794();
  return v5;
}

uint64_t *sub_1DD015D6C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_1DCAFF9E8(a1, (v3 + 2));
  v3[7] = a2;
  v3[8] = a3;
  type metadata accessor for ChainedFlow.State(0, *(v6 + 80), *(v6 + 88), v7);
  swift_storeEnumTagMultiPayload();
  return v3;
}

uint64_t sub_1DD015E00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = *v1;
  v4 = v3[11];
  OUTLINED_FUNCTION_0_1();
  *&v46 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v46 - v8;
  v10 = v3[10];
  OUTLINED_FUNCTION_0_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v46 - v15;
  v17 = OUTLINED_FUNCTION_80_8();
  v20 = type metadata accessor for ChainedFlow.State(v17, v18, v4, v19);
  OUTLINED_FUNCTION_0_1();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v46 - v25;
  v27 = v3[14];
  swift_beginAccess();
  (*(v22 + 16))(v26, &v2[v27], v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v12 + 32))(v16, v26, v10);
    (*(v2 + 7))(v48, v16);
    __swift_project_boxed_opaque_existential_1(v48, v48[3]);
    v40 = type metadata accessor for LifeCycleModifierFlow(0, v4, v38, v39);
    v49 = OUTLINED_FUNCTION_1_140(v40);
    sub_1DD0DCF8C();
  }

  if (EnumCaseMultiPayload != 1)
  {
    __swift_project_boxed_opaque_existential_1(v2 + 2, *(v2 + 5));
    v41 = OUTLINED_FUNCTION_80_8();
    v45 = type metadata accessor for LifeCycleModifierFlow(v41, v42, v43, v44);
    v49 = OUTLINED_FUNCTION_1_140(v45);
    sub_1DD0DCF8C();
  }

  v29 = v46;
  (*(v46 + 32))(v9, v26, v4);
  v32 = type metadata accessor for Conclude(0, v4, v30, v31);
  v33 = OUTLINED_FUNCTION_5_118(v32, &protocol witness table for Conclude<A>);
  v34 = OUTLINED_FUNCTION_80_8();
  type metadata accessor for ChainedFlow(v34, v35, v4, v36);
  OUTLINED_FUNCTION_0_126();
  swift_getWitnessTable();
  ActingFlow.conclude(with:)(v9, v33);
  return (*(v29 + 8))(v9, v4);
}

uint64_t sub_1DD0162C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*a2 + 80);
  v7 = type metadata accessor for ChainedFlow.State(0, v6, *(*a2 + 88), a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v14 - v10;
  (*(*(v6 - 8) + 16))(&v14 - v10, a1, v6);
  swift_storeEnumTagMultiPayload();
  v12 = *(*a2 + 112);
  swift_beginAccess();
  (*(v8 + 40))(a2 + v12, v11, v7);
  return swift_endAccess();
}

uint64_t sub_1DD016430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*a2 + 88);
  v7 = type metadata accessor for ChainedFlow.State(0, *(*a2 + 80), v6, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v14 - v10;
  (*(*(v6 - 8) + 16))(&v14 - v10, a1, v6);
  swift_storeEnumTagMultiPayload();
  v12 = *(*a2 + 112);
  swift_beginAccess();
  (*(v8 + 40))(a2 + v12, v11, v7);
  return swift_endAccess();
}

char *sub_1DD0165A0()
{
  v1 = *v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v2 = *(*v0 + 112);
  type metadata accessor for ChainedFlow.State(0, *(v1 + 80), *(v1 + 88), v3);
  OUTLINED_FUNCTION_112();
  (*(v4 + 8))(&v0[v2]);
  return v0;
}

uint64_t sub_1DD01664C()
{
  sub_1DD0165A0();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD0166BC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void *sub_1DD016788(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(*(a3 + 24) - 8);
  if (*(v5 + 64) <= *(v4 + 64))
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = *(v5 + 64);
  }

  if ((*(v5 + 80) | *(v4 + 80)) > 7u || (v6 + 1) > 0x18 || ((*(v5 + 80) | *(v4 + 80)) & 0x100000) != 0)
  {
    *__dst = *a2;
    sub_1DD0DCF8C();
  }

  v9 = a2[v6];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v6 <= 3)
    {
      v11 = v6;
    }

    else
    {
      v11 = 4;
    }

    switch(v11)
    {
      case 1:
        v12 = *a2;
        goto LABEL_21;
      case 2:
        v12 = *a2;
        goto LABEL_21;
      case 3:
        v12 = *a2 | (a2[2] << 16);
        goto LABEL_21;
      case 4:
        v12 = *a2;
LABEL_21:
        v13 = (v12 | (v10 << (8 * v6))) + 2;
        v9 = v12 + 2;
        if (v6 < 4)
        {
          v9 = v13;
        }

        break;
      default:
        break;
    }
  }

  if (v9 == 1)
  {
    (*(v5 + 16))(__dst);
    *(__dst + v6) = 1;
    return __dst;
  }

  if (!v9)
  {
    (*(v4 + 16))(__dst);
    *(__dst + v6) = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v6 + 1);
}

unsigned __int8 *sub_1DD016970(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(*(*(a2 + 24) - 8) + 64);
  if (v3 <= *(v2 + 64))
  {
    v3 = *(*(*(a2 + 16) - 8) + 64);
  }

  v4 = result[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    switch(v6)
    {
      case 1:
        v7 = *result;
        goto LABEL_12;
      case 2:
        v7 = *result;
        goto LABEL_12;
      case 3:
        v7 = *result | (result[2] << 16);
        goto LABEL_12;
      case 4:
        v7 = *result;
LABEL_12:
        v8 = (v7 | (v5 << (8 * v3))) + 2;
        v4 = v7 + 2;
        if (v3 < 4)
        {
          v4 = v8;
        }

        break;
      default:
        break;
    }
  }

  if (v4)
  {
    if (v4 != 1)
    {
      return result;
    }

    v2 = *(*(a2 + 24) - 8);
  }

  return (*(v2 + 8))();
}

_BYTE *sub_1DD016AAC(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) <= *(*(*(a3 + 16) - 8) + 64))
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v5 = *(v4 + 64);
  }

  v6 = a2[v5];
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v5 <= 3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    switch(v8)
    {
      case 1:
        v9 = *a2;
        goto LABEL_13;
      case 2:
        v9 = *a2;
        goto LABEL_13;
      case 3:
        v9 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v9 = *a2;
LABEL_13:
        v10 = (v9 | (v7 << (8 * v5))) + 2;
        v6 = v9 + 2;
        if (v5 < 4)
        {
          v6 = v10;
        }

        break;
      default:
        break;
    }
  }

  if (v6 == 1)
  {
    (*(v4 + 16))(__dst);
    __dst[v5] = 1;
    return __dst;
  }

  if (!v6)
  {
    (*(*(*(a3 + 16) - 8) + 16))(__dst);
    __dst[v5] = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v5 + 1);
}

unsigned __int8 *sub_1DD016C50(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v6 - 8);
  if (*(v8 + 64) <= *(v7 + 64))
  {
    v9 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v9 = *(*(v6 - 8) + 64);
  }

  v10 = __dst[v9];
  v11 = 8 * v9;
  v12 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v13 = v9;
    }

    else
    {
      v13 = 4;
    }

    switch(v13)
    {
      case 1:
        v14 = *__dst;
        goto LABEL_14;
      case 2:
        v14 = *__dst;
        goto LABEL_14;
      case 3:
        v14 = *__dst | (__dst[2] << 16);
        goto LABEL_14;
      case 4:
        v14 = *__dst;
LABEL_14:
        v15 = (v14 | (v12 << v11)) + 2;
        v10 = v14 + 2;
        if (v9 < 4)
        {
          v10 = v15;
        }

        break;
      default:
        break;
    }
  }

  if (v10)
  {
    if (v10 != 1)
    {
      goto LABEL_21;
    }

    v16 = *(v6 - 8);
    v17 = *(a3 + 24);
  }

  else
  {
    v16 = *(*(a3 + 16) - 8);
    v17 = *(a3 + 16);
  }

  (*(v16 + 8))(__dst, v17);
LABEL_21:
  v18 = __src[v9];
  v19 = v18 - 2;
  if (v18 >= 2)
  {
    if (v9 <= 3)
    {
      v20 = v9;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 1:
        v21 = *__src;
        goto LABEL_30;
      case 2:
        v21 = *__src;
        goto LABEL_30;
      case 3:
        v21 = *__src | (__src[2] << 16);
        goto LABEL_30;
      case 4:
        v21 = *__src;
LABEL_30:
        v22 = (v21 | (v19 << v11)) + 2;
        v18 = v21 + 2;
        if (v9 < 4)
        {
          v18 = v22;
        }

        break;
      default:
        break;
    }
  }

  if (v18 == 1)
  {
    (*(v8 + 16))(__dst, __src, v6);
    __dst[v9] = 1;
    return __dst;
  }

  if (!v18)
  {
    (*(v7 + 16))(__dst, __src, v5);
    __dst[v9] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v9 + 1);
}

_BYTE *sub_1DD016ED4(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) <= *(*(*(a3 + 16) - 8) + 64))
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v5 = *(v4 + 64);
  }

  v6 = a2[v5];
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v5 <= 3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    switch(v8)
    {
      case 1:
        v9 = *a2;
        goto LABEL_13;
      case 2:
        v9 = *a2;
        goto LABEL_13;
      case 3:
        v9 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v9 = *a2;
LABEL_13:
        v10 = (v9 | (v7 << (8 * v5))) + 2;
        v6 = v9 + 2;
        if (v5 < 4)
        {
          v6 = v10;
        }

        break;
      default:
        break;
    }
  }

  if (v6 == 1)
  {
    (*(v4 + 32))(__dst);
    __dst[v5] = 1;
    return __dst;
  }

  if (!v6)
  {
    (*(*(*(a3 + 16) - 8) + 32))(__dst);
    __dst[v5] = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v5 + 1);
}

unsigned __int8 *sub_1DD017078(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v6 - 8);
  if (*(v8 + 64) <= *(v7 + 64))
  {
    v9 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v9 = *(*(v6 - 8) + 64);
  }

  v10 = __dst[v9];
  v11 = 8 * v9;
  v12 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v13 = v9;
    }

    else
    {
      v13 = 4;
    }

    switch(v13)
    {
      case 1:
        v14 = *__dst;
        goto LABEL_14;
      case 2:
        v14 = *__dst;
        goto LABEL_14;
      case 3:
        v14 = *__dst | (__dst[2] << 16);
        goto LABEL_14;
      case 4:
        v14 = *__dst;
LABEL_14:
        v15 = (v14 | (v12 << v11)) + 2;
        v10 = v14 + 2;
        if (v9 < 4)
        {
          v10 = v15;
        }

        break;
      default:
        break;
    }
  }

  if (v10)
  {
    if (v10 != 1)
    {
      goto LABEL_21;
    }

    v16 = *(v6 - 8);
    v17 = *(a3 + 24);
  }

  else
  {
    v16 = *(*(a3 + 16) - 8);
    v17 = *(a3 + 16);
  }

  (*(v16 + 8))(__dst, v17);
LABEL_21:
  v18 = __src[v9];
  v19 = v18 - 2;
  if (v18 >= 2)
  {
    if (v9 <= 3)
    {
      v20 = v9;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 1:
        v21 = *__src;
        goto LABEL_30;
      case 2:
        v21 = *__src;
        goto LABEL_30;
      case 3:
        v21 = *__src | (__src[2] << 16);
        goto LABEL_30;
      case 4:
        v21 = *__src;
LABEL_30:
        v22 = (v21 | (v19 << v11)) + 2;
        v18 = v21 + 2;
        if (v9 < 4)
        {
          v18 = v22;
        }

        break;
      default:
        break;
    }
  }

  if (v18 == 1)
  {
    (*(v8 + 32))(__dst, __src, v6);
    __dst[v9] = 1;
    return __dst;
  }

  if (!v18)
  {
    (*(v7 + 32))(__dst, __src, v5);
    __dst[v9] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v9 + 1);
}

uint64_t sub_1DD0172FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_22:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 254;
}

void sub_1DD017430(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1DD017604(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 24) - 8) + 64);
  if (v2 <= *(*(*(a2 + 16) - 8) + 64))
  {
    v2 = *(*(*(a2 + 16) - 8) + 64);
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    switch(v5)
    {
      case 1:
        v6 = *a1;
        goto LABEL_12;
      case 2:
        v6 = *a1;
        goto LABEL_12;
      case 3:
        v6 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v6 = *a1;
LABEL_12:
        v7 = (v6 | (v4 << (8 * v2))) + 2;
        LODWORD(v3) = v6 + 2;
        if (v2 >= 4)
        {
          v3 = v3;
        }

        else
        {
          v3 = v7;
        }

        break;
      default:
        return v3;
    }
  }

  return v3;
}

void sub_1DD0176B8(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= *(*(*(a3 + 16) - 8) + 64))
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v4 = *(*(*(a3 + 24) - 8) + 64);
  }

  if (a2 > 1)
  {
    v5 = a2 - 2;
    if (v4 < 4)
    {
      a1[v4] = (v5 >> (8 * v4)) + 2;
      if (v4)
      {
        v6 = v5 & ~(-1 << (8 * v4));
        bzero(a1, v4);
        if (v4 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v4 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v5;
        }
      }
    }

    else
    {
      a1[v4] = 2;
      bzero(a1, v4);
      *a1 = v5;
    }
  }

  else
  {
    a1[v4] = a2;
  }
}

uint64_t sub_1DD0177D8()
{
  OUTLINED_FUNCTION_80_8();
  v1 = *(swift_getAssociatedTypeWitness() - 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_1DD015CE8(v2, v3, v4);
}

uint64_t UniversalActionFeatureFlags.isEnabled.getter()
{
  v2[3] = &type metadata for UniversalActionFeatureFlags;
  v2[4] = sub_1DD0178E4();
  v0 = sub_1DD0DB2AC();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return v0 & 1;
}

unint64_t sub_1DD0178E4()
{
  result = qword_1EDE4DB48[0];
  if (!qword_1EDE4DB48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE4DB48);
  }

  return result;
}

uint64_t UniversalActionFeatureFlags.hashValue.getter()
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](0);
  return sub_1DD0DF20C();
}

unint64_t sub_1DD0179E0()
{
  result = qword_1ECCAC258;
  if (!qword_1ECCAC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAC258);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UniversalActionFeatureFlags(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DD017B48()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock()();
}

uint64_t UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDB478();
}

void UnlockDeviceFlowStrategy.makePromptForDeviceUnlock(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  sub_1DD0DE4BC();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_41_4();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1DD10AAC0;
  v10[5] = 0;
  v10[6] = a1;
  v10[7] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD017D60()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCD73EA8();
}

SiriKitFlow::AlternativeUnlockModes sub_1DD017E28@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = AlternativeUnlockModes.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DD017E68@<X0>(uint64_t *a1@<X8>)
{
  result = AlternativeUnlockModes.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t UnlockDevicePolicy.debugDescription.getter()
{
  sub_1DCFF2CD0(sub_1DD019134, &v14, &unk_1F584DE50);
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1DCB38954();
    v3 = v15;
    v4 = (v1 + 48);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v15 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);

      if (v8 >= v7 >> 1)
      {
        sub_1DCB38954();
        v3 = v15;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  v15 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
  sub_1DCBF7DC0(&qword_1EDE46280, &qword_1ECCA2758, &unk_1DD0E6880, MEMORY[0x1E69E6310]);
  v10 = sub_1DD0DDF6C();
  v12 = v11;

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1DD0DEC1C();

  v15 = 0xD000000000000023;
  v16 = 0x80000001DD129CC0;
  MEMORY[0x1E12A6780](v10, v12);

  MEMORY[0x1E12A6780](93, 0xE100000000000000);
  return v15;
}

void sub_1DD018084(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v10 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v10, qword_1EDE57E00);

  v11 = a1;
  v12 = sub_1DD0DD8EC();
  v13 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v14 = 136315394;
    v15 = [v11 identifier];
    v16 = sub_1DD0DDFBC();
    v17 = a5;
    v18 = a6;
    v20 = v19;

    v21 = sub_1DCB10E9C(v16, v20, v25);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2080;
    if (v18)
    {
      v22 = v17;
    }

    else
    {
      v22 = 0x3E6C696E3CLL;
    }

    if (v18)
    {
      v23 = v18;
    }

    else
    {
      v23 = 0xE500000000000000;
    }

    v24 = sub_1DCB10E9C(v22, v23, v25);

    *(v14 + 14) = v24;
    _os_log_impl(&dword_1DCAFC000, v12, v13, "Creating an unlock device Output using a direct invocation: %s and refID: %s", v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  DeviceState.asInvocationContext.getter();
}

uint64_t sub_1DD018F94(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return UnlockDeviceFlowStrategy.makePromptForDeviceUnlock()();
}

uint64_t UnlockDeviceFlowStrategy.makePromptForDeviceUnlock()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDB478();
}

uint64_t sub_1DD0190B0()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDB478();
}

uint64_t sub_1DD01914C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock()();
}

void *UnlockDeviceFlow.exitValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  sub_1DCB8D4CC(v2, *(v1 + 24));
  return v2;
}

uint64_t UnlockDeviceFlow.__allocating_init(strategy:deviceState:metricsState:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_135();
  v4 = swift_allocObject();
  UnlockDeviceFlow.init(strategy:deviceState:metricsState:outputPublisher:)();
  return v4;
}

uint64_t sub_1DD019284(uint64_t *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = a3[3];
  v11 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v10);
  sub_1DCDD5204(v10, v11);
  v12 = sub_1DCC7E190(a1);
  sub_1DCB17D04(a2, v18);
  sub_1DCB17D04(a4, v17);
  type metadata accessor for OutputPublisherAsyncAdapter();
  v13 = swift_allocObject();
  sub_1DCAFF9E8(v17, v13 + 16);
  type metadata accessor for UnlockDeviceFlowAsync(0);
  v14 = swift_allocObject();
  v15 = sub_1DD01E050(v12, v18, v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(v5 + 16) = v15;
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v5;
}

void UnlockDeviceFlow.init(strategy:deviceState:metricsState:outputPublisher:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v30 = v2;
  v31 = v3;
  v32 = v4;
  v5 = *v0;
  v6 = *(*v0 + 80);
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_10_2();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v30 - v16;
  v33 = v18;
  v19 = v18[3];
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v19);
  sub_1DCDD5204(v19, v20);
  v21 = type metadata accessor for AnyUnlockDeviceFlowStrategy();
  v22 = *(v8 + 16);
  OUTLINED_FUNCTION_26_18();
  v22();
  (v22)(v13, v17, v6);
  v23 = sub_1DD01DF10(v13, v21, v6, *(v5 + 88));
  v24 = *(v8 + 8);
  v24(v17, v6);
  v25 = v30;
  sub_1DCB17D04(v30, v35);
  v26 = v31;
  sub_1DCB17D04(v31, v34);
  type metadata accessor for OutputPublisherAsyncAdapter();
  OUTLINED_FUNCTION_1_1();
  v27 = swift_allocObject();
  sub_1DCAFF9E8(v34, v27 + 16);
  type metadata accessor for UnlockDeviceFlowAsync(0);
  v28 = swift_allocObject();
  v29 = sub_1DD01E050(v23, v35, v27, v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  v24(v32, v6);
  v1[2] = v29;
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  OUTLINED_FUNCTION_49();
}

void sub_1DD0195D0()
{
  OUTLINED_FUNCTION_50();
  v60 = v1;
  v61 = type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_16();
  v6 = (v5 - v4);
  v7 = type metadata accessor for UnlockDeviceFlowAsync.State(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_10_2();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v58 - v15;
  v17 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_0_1();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_10_2();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v58 - v27;
  v29 = OBJC_IVAR____TtC11SiriKitFlow21UnlockDeviceFlowAsync_state;
  swift_beginAccess();
  OUTLINED_FUNCTION_8_80();
  sub_1DD01F3A0(v0 + v29, v16, v30);
  if (!swift_getEnumCaseMultiPayload())
  {
    v58[1] = v7;
    v59 = v0;
    v58[0] = v12;
    v33 = v24;
    (*(v19 + 32))(v28, v16, v17);
    v34 = type metadata accessor for Input(0);
    sub_1DD01F3A0(v60 + *(v34 + 20), v6, type metadata accessor for Parse);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v19 + 8))(v28, v17);
      v31 = type metadata accessor for Parse;
      v32 = v6;
      goto LABEL_19;
    }

    v61 = v28;
    v35 = v6[2];
    v36 = *v6 == 0xD000000000000030 && 0x80000001DD129E50 == v6[1];
    if (!v36 && (sub_1DD0DF0AC() & 1) == 0)
    {
      (*(v19 + 8))(v61, v17);

      goto LABEL_20;
    }

    v37 = v19;
    if (v35)
    {
      OUTLINED_FUNCTION_74_20();
      v38 = v61;
      if (*(&v66 + 1))
      {
        if (swift_dynamicCast())
        {
          v40 = v62;
          v39 = v63;
          if (v40 == sub_1DD0DAFFC() && v39 == v41)
          {

LABEL_37:

            v57 = v58[0];
            swift_storeEnumTagMultiPayload();
            sub_1DD01B00C(v57);
          }

          v43 = sub_1DD0DF0AC();

          if (v43)
          {

            goto LABEL_37;
          }
        }

LABEL_23:
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
        }

        v44 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v44, qword_1EDE57E00);
        (*(v37 + 16))(v33, v38, v17);

        v45 = sub_1DD0DD8EC();
        v46 = sub_1DD0DE6EC();

        if (!os_log_type_enabled(v45, v46))
        {

          v55 = *(v37 + 8);
          v55(v33, v17);
          v55(v38, v17);
          goto LABEL_20;
        }

        v47 = v37;
        v48 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v48 = 136315394;
        v49 = sub_1DD0DAFFC();
        v51 = v50;
        v59 = *(v47 + 8);
        v60 = v47 + 8;
        v59(v33, v17);
        v52 = sub_1DCB10E9C(v49, v51, &v64);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2080;
        if (v35)
        {
          OUTLINED_FUNCTION_74_20();
          if (*(&v66 + 1))
          {
            if (swift_dynamicCast())
            {
              v54 = v62;
              v53 = v63;

LABEL_35:
              v56 = sub_1DCB10E9C(v54, v53, &v64);

              *(v48 + 14) = v56;
              _os_log_impl(&dword_1DCAFC000, v45, v46, "UnlockDeviceFlow got an unlock complete DI with the wrong identifier. Some other unlock request has interrupted unlock, and we don't know how to recover. (expected: %s, got: %s", v48, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_80();
              OUTLINED_FUNCTION_80();

              v59(v61, v17);
              goto LABEL_20;
            }

LABEL_34:

            v53 = 0xE500000000000000;
            v54 = 0x3E6C696E3CLL;
            goto LABEL_35;
          }
        }

        else
        {
          v65 = 0u;
          v66 = 0u;
        }

        sub_1DCB0E9D8(&v65, &dword_1ECCA3CE0, &unk_1DD0E4F80);
        goto LABEL_34;
      }
    }

    else
    {
      v65 = 0u;
      v66 = 0u;
      v38 = v61;
    }

    sub_1DCB0E9D8(&v65, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_7_83();
  v32 = v16;
LABEL_19:
  sub_1DD01F2E4(v32, v31);
LABEL_20:
  OUTLINED_FUNCTION_49();
}

uint64_t UnlockDeviceFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD019CA8()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_31_1(v1);

  return sub_1DD019D34();
}

uint64_t sub_1DD019D34()
{
  OUTLINED_FUNCTION_42();
  v1[18] = v2;
  v1[19] = v0;
  v1[20] = type metadata accessor for UnlockDeviceFlowAsync.State(0);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DD019DC8()
{
  v105 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = OBJC_IVAR____TtC11SiriKitFlow21UnlockDeviceFlowAsync_state;
  swift_beginAccess();
  OUTLINED_FUNCTION_8_80();
  sub_1DD01F3A0(v2 + v3, v1, v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v40 = **(v0 + 176);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v41 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v41, qword_1EDE57E00);
      v42 = v40;
      v43 = sub_1DD0DD8EC();
      v44 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v104 = v46;
        *v45 = 136315138;
        *(v0 + 136) = v40;
        v47 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
        v48 = sub_1DD0DE02C();
        v50 = sub_1DCB10E9C(v48, v49, &v104);

        *(v45 + 4) = v50;
        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      v56 = OUTLINED_FUNCTION_60_19();
      *(v58 + 16) = v40;
      *(v58 + 24) = 1;
      break;
    case 2u:
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 184) = v6;
      *v6 = v7;
      v6[1] = sub_1DD01A5C8;
      OUTLINED_FUNCTION_96_0();

      return sub_1DD01B090(v8);
    case 3u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v11 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v11, qword_1EDE57E00);
      v12 = sub_1DD0DD8EC();
      v13 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v12, v13))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v14, v15, v16, v17, v18, 2u);
        OUTLINED_FUNCTION_80();
      }

      v19 = *(v0 + 152);

      OUTLINED_FUNCTION_46_31((v19 + 40));
      v20 = OUTLINED_FUNCTION_15_65();
      if ((v21(v20) & 1) == 0)
      {
        v61 = sub_1DD0DD8EC();
        v62 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_23(v62))
        {
          v63 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v63);
          OUTLINED_FUNCTION_36_0();
          _os_log_impl(v64, v65, v66, v67, v68, 2u);
          OUTLINED_FUNCTION_62();
        }

        if (qword_1EDE4F6A8 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_1EDE4F6A8);
        }

        type metadata accessor for SiriKitEvent(0);
        OUTLINED_FUNCTION_59_26();
        OUTLINED_FUNCTION_2_114(v69, v70, v71, v72, v73, v74, v75, v76, v103, SWORD2(v103), SBYTE6(v103), SHIBYTE(v103), v104);
      }

      __swift_project_boxed_opaque_existential_1((v19 + 40), *(v19 + 64));
      *(v0 + 16) = 4;
      *(v0 + 48) = &type metadata for FeatureFlagDefinitions.Core;
      *(v0 + 56) = &off_1F585CB38;
      *(v0 + 24) = 0;
      OUTLINED_FUNCTION_26_18();
      v23 = v22();
      sub_1DCC4B20C(v0 + 16);
      if (v23)
      {
        v24 = sub_1DD0DD8EC();
        v25 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_23(v25))
        {
          v26 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v26);
          OUTLINED_FUNCTION_36_0();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_62();
        }

        if (qword_1EDE4F6A8 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_1EDE4F6A8);
        }

        type metadata accessor for SiriKitEvent(0);
        OUTLINED_FUNCTION_59_26();
        OUTLINED_FUNCTION_2_114(v32, v33, v34, v35, v36, v37, v38, v39, v103, SWORD2(v103), SBYTE6(v103), SHIBYTE(v103), v104);
      }

      __swift_project_boxed_opaque_existential_1((v19 + 40), *(v19 + 64));
      *(v0 + 64) = 2;
      *(v0 + 96) = &type metadata for FeatureFlagDefinitions.Core;
      *(v0 + 104) = &off_1F585CB38;
      *(v0 + 72) = 0;
      OUTLINED_FUNCTION_26_18();
      v78 = v77();
      sub_1DCC4B20C(v0 + 64);
      v79 = sub_1DD0DD8EC();
      if (v78)
      {
        v80 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_23(v80))
        {
          v81 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v81);
          OUTLINED_FUNCTION_36_0();
          _os_log_impl(v82, v83, v84, v85, v86, 2u);
          OUTLINED_FUNCTION_62();
        }

        if (qword_1EDE4F6A8 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_1EDE4F6A8);
        }

        type metadata accessor for SiriKitEvent(0);
        OUTLINED_FUNCTION_59_26();
        OUTLINED_FUNCTION_2_114(v87, v88, v89, v90, v91, v92, v93, v94, v103, SWORD2(v103), SBYTE6(v103), SHIBYTE(v103), v104);
      }

      v95 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_23(v95))
      {
        v96 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v96);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v97, v98, v99, v100, v101, 2u);
        OUTLINED_FUNCTION_62();
      }

      v56 = OUTLINED_FUNCTION_60_19();
      *(v102 + 16) = 0;
      *(v102 + 24) = 0;
      break;
    default:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v5 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v5, qword_1EDE57E00);
      OUTLINED_FUNCTION_48_1();
      sub_1DD0DCF8C();
  }

  sub_1DCB79378(v56, v57);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_96_0();

  __asm { BRAA            X1, X16 }

  return result;
}

uint64_t sub_1DD01A5C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD01A6C4()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DD01A724()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DD01A824()
{
  OUTLINED_FUNCTION_42();
  v0 = OUTLINED_FUNCTION_60_19();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_1DCB79378(v0, v2);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DD01A89C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DD01A99C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DD01AA9C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v3 = v1;
  sub_1DD01B00C(v2);
}

uint64_t UnlockDeviceFlow.__deallocating_deinit()
{
  UnlockDeviceFlow.deinit();
  OUTLINED_FUNCTION_135();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD01AC54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return UnlockDeviceFlow.execute()(a1);
}

void *sub_1DD01ACF0@<X0>(uint64_t a1@<X8>)
{
  result = UnlockDeviceFlow.exitValue.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void sub_1DD01AD24()
{
  v0 = type metadata accessor for UnlockDeviceFlowAsync.State(0);
  MEMORY[0x1EEE9AC00](v0, v1);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DD01B00C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11SiriKitFlow21UnlockDeviceFlowAsync_state;
  swift_beginAccess();
  sub_1DD01F33C(a1, v1 + v3);
  swift_endAccess();
  sub_1DD01AD24();
}

uint64_t sub_1DD01B090(uint64_t a1)
{
  v2[43] = a1;
  v2[44] = v1;
  v2[45] = type metadata accessor for SiriKitEventPayload(0);
  v2[46] = swift_task_alloc();
  v2[47] = type metadata accessor for UnlockDeviceFlowAsync.State(0);
  v2[48] = swift_task_alloc();
  v3 = sub_1DD0DB04C();
  v2[49] = v3;
  v2[50] = *(v3 - 8);
  v2[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD01B1B0, 0, 0);
}

uint64_t sub_1DD01B1B0()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  v0[52] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_62();
  }

  v10 = v0[44];

  v0[53] = *(v10 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[54] = v11;
  *v11 = v12;
  v11[1] = sub_1DD01B2CC;

  return sub_1DD01CD9C((v0 + 21));
}

uint64_t sub_1DD01B2CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 440) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DD01B3C8()
{
  v1 = v0[53];
  sub_1DD01C11C((v0 + 21));
  sub_1DD0DB03C();
  sub_1DCB10E5C(0, &qword_1EDE46110, 0x1E69D01C8);
  v2 = sub_1DCD10120(0xD000000000000030, 0x80000001DD129E50);
  v0[56] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4918, &qword_1DD0ED840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  v0[40] = 25705;
  v0[41] = 0xE200000000000000;
  v4 = MEMORY[0x1E69E6158];
  sub_1DD0DEBBC();
  v5 = sub_1DD0DAFFC();
  *(inited + 96) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = v6;
  v7 = sub_1DD0DDE9C();
  sub_1DCDAD634(v7, v2);
  v8 = (*(v1 + 16))();
  v9 = (*(v1 + 32))(v8);
  v10 = OUTLINED_FUNCTION_86();
  sub_1DD018084(v10, v11, v9, v12, 0, 0);
}

uint64_t sub_1DD01B7FC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 488) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 208));
  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DD01B914()
{
  v2 = v1[58];
  v3 = v1[59] + 1;
  v1[59] = v3;
  v4 = v1[57];
  if (v3 == v2)
  {

    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v6))
    {
      v7 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v7);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_62();
    }

    v13 = OUTLINED_FUNCTION_19_49();
    v14(v13);
    OUTLINED_FUNCTION_86();
    swift_storeEnumTagMultiPayload();
    sub_1DD01B00C(v0);
  }

  if (v3 >= *(v4 + 16))
  {
    __break(1u);
    OUTLINED_FUNCTION_0(&qword_1EDE4F6A8);
    v15 = v1[46];
    v16 = OUTLINED_FUNCTION_16_64();
    v17(v16);
    type metadata accessor for SiriKitEvent(0);
    OUTLINED_FUNCTION_6_85();
    sub_1DCB09910((v1 + 36), v15 + 48, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    *(v15 + 80) = 0;
    *(v15 + 88) = 0;
    sub_1DCB09910((v1 + 31), v15 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
    OUTLINED_FUNCTION_17_52();
    v1[62] = SiriKitEvent.__allocating_init(_:builder:)(v15, 0);
    v18 = swift_task_alloc();
    v1[63] = v18;
    *v18 = v1;
    v19 = OUTLINED_FUNCTION_3_125(v18);

    return sub_1DCB649AC(v19);
  }

  else
  {
    v21 = v1[44];
    sub_1DCB17D04(v4 + 40 * v3 + 32, (v1 + 26));
    __swift_project_boxed_opaque_existential_1((v21 + 80), *(v21 + 104));
    OUTLINED_FUNCTION_48_1();
    OUTLINED_FUNCTION_25_1();
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v1[60] = v22;
    *v22 = v23;
    v24 = OUTLINED_FUNCTION_25_36(v22);

    return v25(v24);
  }
}

uint64_t sub_1DD01BC20()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  sub_1DCB0E9D8(v2 + 248, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB0E9D8(v2 + 288, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DD01BD4C()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 392);

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_23_36();
  OUTLINED_FUNCTION_70_15();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DD01BDE8()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

void sub_1DD01BE5C()
{
  v21 = v0;
  v1 = *(v0 + 488);
  v2 = v1;
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 488);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    *(v0 + 336) = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v9 = sub_1DD0DE02C();
    v11 = sub_1DCB10E9C(v9, v10, &v20);

    *(v6 + 4) = v11;
    OUTLINED_FUNCTION_15_8();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {
    v17 = *(v0 + 488);
  }

  v18 = OUTLINED_FUNCTION_19_49();
  v19(v18);
  OUTLINED_FUNCTION_86();
  swift_storeEnumTagMultiPayload();
  sub_1DD01B00C(v4);
}

uint64_t sub_1DD01C11C(uint64_t a1)
{
  v2 = type metadata accessor for AceOutput(0);
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v21[-v8];
  sub_1DCB17D04(a1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9C88, &qword_1DD101B90);
  if (!swift_dynamicCast())
  {
    type metadata accessor for EmptyOutput();
    if (swift_dynamicCast())
    {

      goto LABEL_5;
    }

    if (swift_dynamicCast())
    {
      sub_1DCB6DF70(v9, v6);
      v10 = *v6;

      sub_1DD01F2E4(v6, type metadata accessor for AceOutput);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      return v10;
    }

    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v12 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v12, qword_1EDE57E00);
    sub_1DCB17D04(a1, v23);
    v13 = sub_1DD0DD8EC();
    v14 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      sub_1DCB17D04(v23, v21);
      v17 = sub_1DD0DE02C();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      v20 = sub_1DCB10E9C(v17, v19, &v22);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1DCAFC000, v13, v14, "Received non-Ace Output for UnlockFlow... Cannot currently handle non-ace output for unlocking (got: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1E12A8390](v16, -1, -1);
      MEMORY[0x1E12A8390](v15, -1, -1);

      goto LABEL_5;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v23);
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DD01C408()
{
  sub_1DCB79378(*(v0 + 16), *(v0 + 24));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  OUTLINED_FUNCTION_7_83();
  sub_1DD01F2E4(v0 + v1, v2);
  return v0;
}

uint64_t sub_1DD01C460()
{
  sub_1DD01C408();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD01C57C()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DD019D34();
}

id sub_1DD01C60C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 16);
  v3 = *(*v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  return sub_1DCB8D4CC(v2, v3);
}

uint64_t static SimpleUnlockDeviceFlowHelper.makeUnlockFlow(deviceState:metricsState:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = 0;
  v36 = &type metadata for FeatureFlagDefinitions.Core;
  v37 = &off_1F585CB38;
  v35 = 0;
  sub_1DCC7DF20(&v34, v33);
  type metadata accessor for SimpleUnlockDeviceFlowHelper.SimpleUnlockDeviceFlowStrategy();
  OUTLINED_FUNCTION_41_4();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_52_31(v5, v6, v7, v8, v9, v10, v11, v12, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33[0], v33[1], v33[2]);
  sub_1DCB17D04(a2, &v28);
  sub_1DCB17D04(a3, &v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC268, &qword_1DD10AAE0);
  OUTLINED_FUNCTION_135();
  v13 = swift_allocObject();
  v21 = OUTLINED_FUNCTION_64_21(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  sub_1DCC4B20C(&v34);
  return v21;
}

uint64_t static SimpleUnlockDeviceFlowHelper.makeUnlockFlow(policy:deviceState:metricsState:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DCC7DF20(a1, v33);
  type metadata accessor for SimpleUnlockDeviceFlowHelper.SimpleUnlockDeviceFlowStrategy();
  OUTLINED_FUNCTION_41_4();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_52_31(v6, v7, v8, v9, v10, v11, v12, v13, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33[0], v33[1], v33[2]);
  sub_1DCB17D04(a3, &v28);
  sub_1DCB17D04(a4, &v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC268, &qword_1DD10AAE0);
  OUTLINED_FUNCTION_135();
  v14 = swift_allocObject();
  return OUTLINED_FUNCTION_64_21(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
}

uint64_t SimpleUnlockDeviceFlowHelper.SimpleUnlockDeviceFlowStrategy.__deallocating_deinit()
{
  sub_1DCC4B20C(v0 + 16);
  OUTLINED_FUNCTION_41_4();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD01C7EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCD73EA8();
}

void *sub_1DD01C898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[3] = a2;
  v7[6] = a5;
  v7[7] = a6;
  v7[4] = a3;
  v7[5] = a4;
  v7[8] = a7;
  return v7;
}

uint64_t sub_1DD01C8B0(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = OUTLINED_FUNCTION_48_1();
  return v3(v2, v1);
}

uint64_t sub_1DD01C904(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD01C918()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v3 = v0;
  v3[1] = sub_1DCCD0830;
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DD01CA18(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - v7;
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  (*(v10 + 16))(sub_1DD01F408, v12, v9, v10);
}

uint64_t sub_1DD01CB90(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1DD01CBE8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1DD01CC38(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD01CC58, 0, 0);
}

uint64_t sub_1DD01CC58()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v8 = (OUTLINED_FUNCTION_48_1() + 24);
  v9 = (*v8 + **v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_31_1(v4);

  return v9(v6, v2, v3);
}

uint64_t sub_1DD01CD9C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD01CDB0()
{
  OUTLINED_FUNCTION_42();
  v5 = (*(*(v0 + 24) + 48) + **(*(v0 + 24) + 48));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_1(v1);

  return v5(v3);
}

unint64_t sub_1DD01CE94()
{
  if (*(v0 + 64))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC360, &qword_1DD0FE290);
    sub_1DD0DE02C();
  }

  sub_1DD0DEC1C();

  v1 = OUTLINED_FUNCTION_86();
  MEMORY[0x1E12A6780](v1);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0xD00000000000002ELL;
}

uint64_t sub_1DD01CF74()
{
  sub_1DCDD9E64();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD01CFEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DD01CD9C(a1);
}

uint64_t sub_1DD01D0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_10_2();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v21 - v16;
  (*(v8 + 32))(&v21 - v16);
  swift_allocObject();
  (*(v8 + 16))(v13, v17, a5);
  sub_1DD01D228();
  v19 = v18;
  (*(v8 + 8))(v17, a5);
  return v19;
}

void sub_1DD01D228()
{
  OUTLINED_FUNCTION_50();
  v40 = v1;
  v41 = v0;
  v3 = v2;
  v5 = v4;
  v42 = v6;
  v8 = v7;
  v9 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_0_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_16();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_0_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_10_2();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v39 - v26;
  (*(v18 + 32))(&v39 - v26, v8, v3);
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  (*(v11 + 8))(v16, v9);
  *(v5 + 120) = sub_1DCB598EC(8);
  *(v5 + 128) = v28;
  *(v5 + 136) = v29;
  *(v5 + 144) = v30;
  v31 = type metadata accessor for AnyUnlockDeviceFlowStrategy();
  (*(v18 + 16))(v23, v27, v3);
  *(v5 + 32) = sub_1DD01D850(v23, v31, v3, v40);
  v32 = v41;
  sub_1DCB17D04(v41, v5 + 40);
  v33 = v42;
  sub_1DCB17D04(v42, v5 + 80);
  type metadata accessor for CommandFailure();
  OUTLINED_FUNCTION_41_4();
  swift_allocObject();
  v34 = OUTLINED_FUNCTION_47_28();
  OUTLINED_FUNCTION_33_28();
  sub_1DD01F014(v35, v36, &protocol conformance descriptor for CommandFailure);
  v37 = swift_allocError();
  *v38 = v34;
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  (*(v18 + 8))(v27, v3);
  *(v5 + 16) = v37;
  *(v5 + 24) = 1;
  type metadata accessor for UnlockDeviceFlowAsync.State(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_49();
}

void *sub_1DD01D4D0(uint64_t a1)
{
  v11 = type metadata accessor for AnyUnlockDeviceFlowStrategy();
  v12 = &off_1F5876F20;
  v10[0] = a1;
  sub_1DCB17D04(v10, v9);
  v2 = swift_allocObject();
  sub_1DCAFF9E8(v9, v2 + 16);
  sub_1DCB17D04(v10, v8);
  v3 = swift_allocObject();
  sub_1DCAFF9E8(v8, v3 + 16);
  sub_1DCB17D04(v10, v7);
  v4 = swift_allocObject();
  sub_1DCAFF9E8(v7, v4 + 16);
  __swift_project_boxed_opaque_existential_1(v10, v11);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  result = swift_allocObject();
  result[2] = sub_1DD01F488;
  result[3] = v2;
  result[6] = &unk_1DD10B050;
  result[7] = v4;
  result[4] = sub_1DD01F484;
  result[5] = v3;
  result[8] = DynamicType;
  return result;
}

void *sub_1DD01D628(uint64_t a1)
{
  v11[3] = type metadata accessor for ProtectedAppDeviceUnlockStrategy();
  v11[4] = &off_1F586A0B8;
  v11[0] = a1;
  sub_1DCB17D04(v11, v10);
  OUTLINED_FUNCTION_1_1();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_75_15(v10);
  sub_1DCB17D04(v3, v9);
  OUTLINED_FUNCTION_1_1();
  v4 = swift_allocObject();
  sub_1DCAFF9E8(v9, v4 + 16);
  sub_1DCB17D04(v11, v8);
  OUTLINED_FUNCTION_1_1();
  v5 = swift_allocObject();
  v6 = OUTLINED_FUNCTION_32_31(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  type metadata accessor for AnyUnlockDeviceFlowStrategy();
  OUTLINED_FUNCTION_4_0();
  result = swift_allocObject();
  result[2] = sub_1DD01F488;
  result[3] = v2;
  result[6] = &unk_1DD10B078;
  result[7] = v5;
  result[4] = sub_1DD01F484;
  result[5] = v4;
  result[8] = v6;
  return result;
}

void *sub_1DD01D740()
{
  v9[3] = &type metadata for LocationAccessUnlockDeviceStrategy;
  v9[4] = &off_1F5875430;
  sub_1DCB17D04(v9, v8);
  OUTLINED_FUNCTION_1_1();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_75_15(v8);
  sub_1DCB17D04(v1, v7);
  OUTLINED_FUNCTION_1_1();
  v2 = swift_allocObject();
  sub_1DCAFF9E8(v7, v2 + 16);
  sub_1DCB17D04(v9, v6);
  OUTLINED_FUNCTION_1_1();
  v3 = swift_allocObject();
  v4 = OUTLINED_FUNCTION_32_31(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  type metadata accessor for AnyUnlockDeviceFlowStrategy();
  OUTLINED_FUNCTION_4_0();
  result = swift_allocObject();
  result[2] = sub_1DD01F488;
  result[3] = v0;
  result[6] = &unk_1DD10B070;
  result[7] = v3;
  result[4] = sub_1DD01F484;
  result[5] = v2;
  result[8] = v4;
  return result;
}

void *sub_1DD01D850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_73_16(a1, a2, a3, a4);
  OUTLINED_FUNCTION_112();
  (*(v4 + 32))();
  sub_1DCB17D04(v14, v13);
  OUTLINED_FUNCTION_1_1();
  v5 = swift_allocObject();
  v6 = OUTLINED_FUNCTION_75_15(v13);
  sub_1DCB17D04(v6, v12);
  OUTLINED_FUNCTION_1_1();
  v7 = swift_allocObject();
  sub_1DCAFF9E8(v12, v7 + 16);
  sub_1DCB17D04(v14, v11);
  OUTLINED_FUNCTION_1_1();
  v8 = swift_allocObject();
  v9 = OUTLINED_FUNCTION_32_31(v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  type metadata accessor for AnyUnlockDeviceFlowStrategy();
  OUTLINED_FUNCTION_4_0();
  result = swift_allocObject();
  result[2] = sub_1DD01F05C;
  result[3] = v5;
  result[6] = &unk_1DD10B048;
  result[7] = v8;
  result[4] = sub_1DD01F064;
  result[5] = v7;
  result[8] = v9;
  return result;
}

void *sub_1DD01DF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_73_16(a1, a2, a3, a4);
  OUTLINED_FUNCTION_112();
  (*(v4 + 32))();
  sub_1DCB17D04(v12, v11);
  OUTLINED_FUNCTION_1_1();
  v5 = swift_allocObject();
  v6 = OUTLINED_FUNCTION_75_15(v11);
  sub_1DCB17D04(v6, v10);
  OUTLINED_FUNCTION_1_1();
  v7 = swift_allocObject();
  sub_1DCAFF9E8(v10, v7 + 16);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  type metadata accessor for AnyUnlockDeviceFlowStrategy();
  OUTLINED_FUNCTION_4_0();
  result = swift_allocObject();
  result[2] = sub_1DCC7F18C;
  result[3] = v5;
  result[6] = &unk_1DD0E8460;
  result[7] = v7;
  result[4] = sub_1DCD799A4;
  result[5] = 0;
  result[8] = DynamicType;
  return result;
}

uint64_t sub_1DD01E050(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD0DB04C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[3] = type metadata accessor for OutputPublisherAsyncAdapter();
  v21[4] = &protocol witness table for OutputPublisherAsyncAdapter;
  v21[0] = a3;
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  (*(v9 + 8))(v12, v8);
  *(a4 + 120) = sub_1DCB598EC(8);
  *(a4 + 128) = v13;
  *(a4 + 136) = v14;
  *(a4 + 144) = v15;
  *(a4 + 32) = sub_1DD01D4D0(a1);
  sub_1DCB17D04(a2, a4 + 40);
  sub_1DCB17D04(v21, a4 + 80);
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v16 = CommandFailure.init(errorCode:reason:)(-1, 0x656C706D6F636E49, 0xEA00000000006574);
  sub_1DD01F014(qword_1EDE49B80, type metadata accessor for CommandFailure, &protocol conformance descriptor for CommandFailure);
  v17 = swift_allocError();
  *v18 = v16;
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  *(a4 + 16) = v17;
  *(a4 + 24) = 1;
  type metadata accessor for UnlockDeviceFlowAsync.State(0);
  swift_storeEnumTagMultiPayload();
  return a4;
}

unint64_t sub_1DD01E290()
{
  result = qword_1ECCAC270;
  if (!qword_1ECCAC270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAC270);
  }

  return result;
}

unint64_t sub_1DD01E2E8()
{
  result = qword_1ECCAC278;
  if (!qword_1ECCAC278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAC278);
  }

  return result;
}

unint64_t sub_1DD01E340()
{
  result = qword_1ECCAC280;
  if (!qword_1ECCAC280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAC280);
  }

  return result;
}

unint64_t sub_1DD01E398()
{
  result = qword_1ECCAC288[0];
  if (!qword_1ECCAC288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCAC288);
  }

  return result;
}

uint64_t sub_1DD01E3EC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void *assignWithCopy for UnlockDevicePolicy(void *a1, void *a2)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1(a1 + 1, a2 + 1);
  return a1;
}

uint64_t assignWithTake for UnlockDevicePolicy(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for UnlockDevicePolicy(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UnlockDevicePolicy(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t dispatch thunk of UnlockDeviceFlowStrategy.makePromptForDeviceUnlock()()
{
  OUTLINED_FUNCTION_25_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_29_2(v1);

  return v4(v3);
}

uint64_t dispatch thunk of UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock()()
{
  OUTLINED_FUNCTION_25_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_29_2(v1);

  return v4(v3);
}

uint64_t sub_1DD01E7EC(uint64_t a1)
{
  result = type metadata accessor for UnlockDeviceFlowAsync.State(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}