uint64_t sub_18EFB4B8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_18EFB4BF0()
{
  OUTLINED_FUNCTION_260();
  v32[1] = v1;
  v3 = v2;
  v40 = v4;
  v6 = v5;
  v34 = sub_18F0937FC();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_42();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v32 - v14;
  v16 = sub_18F09343C();
  v38 = v17;
  v39 = v16;
  sub_18EFB3E08(&v43);
  v36 = v44;
  v37 = v43;
  v35 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9410, &qword_18F0AAA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F09BCC0;
  *(inited + 32) = 0x53555F6E65;
  *(inited + 40) = 0xE500000000000000;

  v19 = sub_18F0933CC();
  v42 = v0;
  v20 = sub_18EFB5424(sub_18F029FEC, &v41, v19);

  *(inited + 48) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7798, &unk_18F0AB930);
  v33 = sub_18F093A5C();
  v32[0] = sub_18F093A5C();
  v21 = v3;
  v22 = v34;
  sub_18EFB115C();
  v24 = v23;
  sub_18F0933DC();
  (*(v8 + 16))(v12, v15, v22);
  v25 = (*(v8 + 88))(v12, v22);
  if (v25 == *MEMORY[0x1E698AC90])
  {
    v26 = 0;
LABEL_7:
    (*(v8 + 8))(v15, v22);
    v27 = sub_18F09342C();
    v28 = v38;
    *v6 = v39;
    *(v6 + 8) = v28;
    v29 = v36;
    *(v6 + 16) = v37;
    *(v6 + 24) = v29;
    v30 = v40;
    *(v6 + 32) = v35;
    *(v6 + 40) = v30;
    v31 = v33;
    *(v6 + 48) = v21;
    *(v6 + 56) = v31;
    *(v6 + 64) = v32[0];
    *(v6 + 72) = v24;
    *(v6 + 80) = 1;
    *(v6 + 81) = v26;
    *(v6 + 88) = v27;
    OUTLINED_FUNCTION_259();
    return;
  }

  if (v25 == *MEMORY[0x1E698AC98])
  {
    v26 = 1;
    goto LABEL_7;
  }

  if (v25 == *MEMORY[0x1E698AC88])
  {
    v26 = 2;
    goto LABEL_7;
  }

  v43 = 0;
  v44 = 0xE000000000000000;
  sub_18F09406C();
  MEMORY[0x193AD8780](0xD00000000000001ALL, 0x800000018F0AFA70);
  sub_18F09414C();
  sub_18F0941AC();
  __break(1u);
}

id sub_18EFB4F94(uint64_t (*a1)(char *, uint64_t, uint64_t), uint64_t a2)
{
  v53 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = v45 - v4;
  sub_18F09351C();
  OUTLINED_FUNCTION_7();
  v54 = v5;
  v55 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18F0937FC();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18F09354C();
  v14 = v13;
  v15 = MEMORY[0x1E69E7CC0];
  v51 = sub_18F093A5C();
  sub_18EF825F4(0, qword_1ED5FF370, 0x1E695DFB8);
  v50 = MEMORY[0x193AD89C0](v15);
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v57[0] = sub_18F09354C();
  v57[1] = v16;
  v57[2] = 0;
  v57[3] = 0;
  v58 = 10;
  v17 = sub_18F0937AC();
  v19 = v18;

  sub_18F09352C();
  sub_18F042998(v57, v17, v19, v53, a2, v11, 0, 0);
  v20 = objc_allocWithZone(LNTypeDisplayRepresentation);
  v21 = sub_18EF9307C();
  v22 = sub_18F09355C();
  v23 = *(v22 + 16);
  if (v23)
  {
    v46 = v21;
    v47 = v14;
    v48 = v12;
    v56 = MEMORY[0x1E69E7CC0];
    sub_18F09411C();
    v24 = v54;
    v25 = *(v55 + 16);
    v26 = *(v55 + 80);
    v45[1] = v22;
    v27 = v22 + ((v26 + 32) & ~v26);
    v28 = (v55 + 8);
    v55 += 16;
    v52 = *(v55 + 56);
    v53 = v25;
    v29 = v49;
    do
    {
      v53(v8, v27, v24);
      v30 = sub_18F09350C();
      v32 = v31;
      v33 = sub_18F09350C();
      v35 = v34;
      v36 = sub_18F0932BC();
      __swift_storeEnumTagSinglePayload(v29, 1, 1, v36);
      objc_allocWithZone(LNStaticDeferredLocalizedString);

      v37 = sub_18EFB6CEC(v33, v35, v33, v35, 0, 0, v29);
      v38 = [objc_allocWithZone(LNDisplayRepresentation) initWithTitle:v37 subtitle:0 image:0];

      v39 = objc_allocWithZone(LNEnumCaseMetadata);
      v40 = v38;
      v24 = v54;
      sub_18EFB802C(v30, v32, v40);
      (*v28)(v8, v24);
      sub_18F0940FC();
      sub_18F09412C();
      sub_18F09413C();
      sub_18F09410C();
      v27 += v52;
      --v23;
    }

    while (v23);

    v41 = v56;
    v14 = v47;
    v12 = v48;
    v21 = v46;
  }

  else
  {

    v41 = MEMORY[0x1E69E7CC0];
  }

  v42 = [objc_allocWithZone(LNVisibilityMetadata) initWithIsDiscoverable:1 assistantOnly:0];
  v43 = objc_allocWithZone(LNEnumMetadata);
  return sub_18F02CD3C(v12, v14, 0, 0xE000000000000000, v51, v50, v21, v41, 0, 0, 0, 0, 0, 0, 0, v42, 0);
}

uint64_t sub_18EFB5424(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_18F00F708(0, v5, 0);
  v6 = v19;
  v9 = sub_18F09375C();
  OUTLINED_FUNCTION_45(v9);
  v11 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v13 = *(v12 + 72);
  while (1)
  {
    a1(__src, v11);
    if (v4)
    {
      break;
    }

    v4 = 0;
    memcpy(__dst, __src, sizeof(__dst));
    v19 = v6;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_18F00F708((v14 > 1), v15 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v15 + 1;
    memcpy((v6 + 88 * v15 + 32), __dst, 0x58uLL);
    v11 += v13;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18EFB5598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_14(a1, a2, a3);
  OUTLINED_FUNCTION_0_16();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v5;
  v9 = v6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9158, &unk_18F0AA0D0);
  if ((OUTLINED_FUNCTION_6_9(v10) & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_18EFAF54C();
  if ((v9 & 1) != (v12 & 1))
  {
LABEL_13:
    result = sub_18F0944AC();
    __break(1u);
    return result;
  }

  v8 = v11;
LABEL_5:
  if (v9)
  {
    v13 = *(*v4 + 56) + 96 * v8;

    return sub_18F041858(v3, v13);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_5_10();
    sub_18EFB5690(v15, v16, v17, v18, v19);
  }
}

void *sub_18EFB5690(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = memcpy((a5[7] + 96 * a1), __src, 0x60uLL);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_18EFB5704()
{
  v1 = *(sub_18F09340C() + 16);

  if (v1)
  {
    v2 = sub_18F09340C();
    MEMORY[0x1EEE9AC00](v2);
    v4[2] = v0;
    v1 = sub_18EFB942C(sub_18EFB88EC, v4, v2);
  }

  return v1;
}

char *sub_18EFB57AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB85D0, &qword_18F0A1218);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_18EFB58B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v42 = sub_18F09373C();
  v9 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SchemaLocalization();
  v11 = *a6;
  v44[0] = a4;
  v44[1] = a5;
  v44[2] = v11;
  v44[3] = 0;
  v45 = 2;
  sub_18F0937AC();
  v12 = sub_18F042E10(v44);
  v14 = v13;

  v15 = sub_18F09363C();
  v16 = *(v15 + 16);
  if (v16)
  {
    v35 = v14;
    v36 = v12;
    v37 = v11;
    v38 = a6;
    v43 = MEMORY[0x1E69E7CC0];
    sub_18EFB5B40(0, v16, 0);
    v17 = v43;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v20 = *(v18 + 64);
    v34[1] = v15;
    v21 = v15 + ((v20 + 32) & ~v20);
    v39 = *(v18 + 56);
    v40 = v19;
    v22 = (v18 - 8);
    do
    {
      v24 = v41;
      v23 = v42;
      v25 = v18;
      v40(v41, v21, v42);
      v26 = sub_18F09371C();
      v28 = v27;
      (*v22)(v24, v23);
      v43 = v17;
      v30 = *(v17 + 16);
      v29 = *(v17 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_18EFB5B40((v29 > 1), v30 + 1, 1);
        v17 = v43;
      }

      *(v17 + 16) = v30 + 1;
      v31 = v17 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
      v21 += v39;
      --v16;
      v18 = v25;
    }

    while (v16);

    v11 = v37;
    a6 = v38;
    v14 = v35;
    v12 = v36;
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  v32 = objc_allocWithZone(LNActionSummaryString);
  result = sub_18EFB5B60(v12, v14, v17);
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    *a6 = v11 + 1;
  }

  return result;
}

char *sub_18EFB5B40(char *a1, int64_t a2, char a3)
{
  result = sub_18EFB57AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id sub_18EFB5B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18F093B5C();

  v5 = sub_18F093DBC();

  v6 = [v3 initWithFormatString:v4 parameterIdentifiers:v5];

  return v6;
}

uint64_t sub_18EFB5CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_18F0937FC();
  OUTLINED_FUNCTION_7();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  v17 = sub_18F09361C();
  v28 = v18;
  v29 = v17;
  sub_18EFB3E08(&v30);
  v26 = v31;
  v27 = v30;
  v25 = v32;

  v19 = sub_18EFB6310(a1, a2, a3);
  sub_18F0935EC();
  (*(v10 + 16))(v14, v16, v8);
  v20 = (*(v10 + 88))(v14, v8);
  if (v20 == *MEMORY[0x1E698AC90])
  {
    v21 = 0;
LABEL_7:
    (*(v10 + 8))(v16, v8);
    result = sub_18F09360C();
    v23 = v28;
    *a4 = v29;
    *(a4 + 8) = v23;
    v24 = v26;
    *(a4 + 16) = v27;
    *(a4 + 24) = v24;
    *(a4 + 32) = v25;
    *(a4 + 40) = a1;
    *(a4 + 48) = a2;
    *(a4 + 56) = v19;
    *(a4 + 64) = 1;
    *(a4 + 65) = v21;
    *(a4 + 72) = result;
    return result;
  }

  if (v20 == *MEMORY[0x1E698AC98])
  {
    v21 = 1;
    goto LABEL_7;
  }

  if (v20 == *MEMORY[0x1E698AC88])
  {
    v21 = 2;
    goto LABEL_7;
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  sub_18F09406C();
  MEMORY[0x193AD8780](0xD00000000000001ALL, 0x800000018F0AFA70);
  sub_18F09414C();
  result = sub_18F0941AC();
  __break(1u);
  return result;
}

void *sub_18EFB5F54(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = memcpy((a5[7] + 80 * a1), __src, 0x50uLL);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_18EFB5FC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v39 = a3;
  v40 = a2;
  v41 = a1;
  v42 = a4;
  v4 = sub_18F0939AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18F0937FC();
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  sub_18F0935EC();
  v14 = sub_18F09361C();
  v16 = v15;
  v17 = sub_18F09367C();
  v37 = v18;
  v38 = v17;
  sub_18F09368C();
  v36 = sub_18EFB22F0();
  (*(v5 + 8))(v7, v4);
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v19 = sub_18F09367C();
  v43[0] = v14;
  v43[1] = v16;
  v43[2] = v19;
  v43[3] = v20;
  v44 = 9;
  v21 = sub_18F0937AC();
  v23 = v22;
  v25 = v34;
  v24 = v35;
  (*(v34 + 16))(v11, v13, v35);
  v26 = v40;

  v27 = sub_18F042998(v43, v21, v23, v41, v26, v11, 0, 0);
  LOBYTE(v23) = sub_18F09365C();
  v28 = sub_18F09366C();
  v30 = v29;
  v31 = objc_allocWithZone(LNPropertyMetadata);
  v32 = sub_18EFB67D0(v38, v37, v36, v27, 2, 0, 0, v23 & 1, v28, v30, 0, 0);
  result = (*(v25 + 8))(v13, v24);
  *v42 = v32;
  return result;
}

id sub_18EFB6310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v45 = sub_18F09387C();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18F0937FC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18F09361C();
  v43 = v15;
  v44 = v14;
  v16 = MEMORY[0x1E69E7CC0];
  v42 = sub_18F093A5C();
  sub_18EF825F4(0, qword_1ED5FF370, 0x1E695DFB8);
  v41 = MEMORY[0x193AD89C0](v16);
  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  v53[0] = sub_18F09361C();
  v53[1] = v17;
  v53[2] = 0;
  v53[3] = 0;
  v54 = 8;
  v18 = a3;
  v19 = sub_18F0937AC();
  v21 = v20;

  sub_18F0935EC();
  v22 = v19;
  v23 = v46;
  sub_18F042998(v53, v22, v21, v46, a2, v13, 0, 0);
  v24 = objc_allocWithZone(LNTypeDisplayRepresentation);
  v40 = sub_18EF9307C();
  v25 = sub_18F0935DC();
  v48 = v23;
  v49 = a2;
  v50 = v18;
  v51 = v3;
  v39 = sub_18EFB6750(sub_18EFB5C90, v47, v25);

  v26 = sub_18F0935FC();
  type metadata accessor for LNSystemEntityProtocolIdentifier(0, v27, v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
  sub_18EFB6910(&qword_1ED5FE770, type metadata accessor for LNSystemEntityProtocolIdentifier, &unk_18F0A0B68);
  v30 = v45;
  v31 = sub_18F093A5C();
  v32 = 0;
  v33 = *(v26 + 16);
  v46 = v7 + 16;
  while (1)
  {
    if (v33 == v32)
    {

      v36 = [objc_allocWithZone(LNVisibilityMetadata) initWithIsDiscoverable:1 assistantOnly:0];
      v37 = objc_allocWithZone(LNEntityMetadata);
      return sub_18F03230C(v44, v43, 0, 0, 0xE000000000000000, v42, v41, v40, v39, 0, 0, 0, 0, v31, 0, 0, 0, 0, 0, 0, v36, 0, 0, 0);
    }

    if (v32 >= *(v26 + 16))
    {
      break;
    }

    (*(v7 + 16))(v10, v26 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v32, v30);
    v34 = sub_18EFB9CB8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v31;
    sub_18EFB9FB4(v34, sub_18F032750, 0, isUniquelyReferenced_nonNull_native, &v52);
    ++v32;
    (*(v7 + 8))(v10, v30);
    v31 = v52;
  }

  __break(1u);

  __break(1u);
  return result;
}

id sub_18EFB67D0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  if (a2)
  {
    v19 = sub_18F093B5C();
  }

  else
  {
    v19 = 0;
  }

  if (a7)
  {
    v20 = sub_18F093B5C();
  }

  else
  {
    v20 = 0;
  }

  if (!a10)
  {
    v21 = 0;
    if (a12)
    {
      goto LABEL_9;
    }

LABEL_11:
    v22 = 0;
    goto LABEL_12;
  }

  v21 = sub_18F093B5C();

  if (!a12)
  {
    goto LABEL_11;
  }

LABEL_9:
  v22 = sub_18F093B5C();

LABEL_12:
  v23 = [v13 initWithIdentifier:v19 valueType:a3 title:a4 capabilities:a5 updateActionIdentifier:v20 optional:a8 & 1 spotlightAttributeKey:v21 spotlightCustomAttributeKey:v22];

  return v23;
}

uint64_t sub_18EFB6910(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18EFB6958@<X0>(uint64_t (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_18F0937FC();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  v15 = sub_18F09354C();
  v26 = v16;
  v27 = v15;
  sub_18EFB3E08(&v28);
  v24 = v29;
  v25 = v28;
  v23 = v30;

  v17 = sub_18EFB4F94(a1, a2);
  sub_18F09352C();
  (*(v8 + 16))(v12, v14, v6);
  v18 = (*(v8 + 88))(v12, v6);
  if (v18 == *MEMORY[0x1E698AC90])
  {
    v19 = 0;
LABEL_7:
    (*(v8 + 8))(v14, v6);
    result = sub_18F09353C();
    v21 = v26;
    *a3 = v27;
    *(a3 + 8) = v21;
    v22 = v24;
    *(a3 + 16) = v25;
    *(a3 + 24) = v22;
    *(a3 + 32) = v23;
    *(a3 + 40) = a1;
    *(a3 + 48) = a2;
    *(a3 + 56) = v17;
    *(a3 + 64) = 1;
    *(a3 + 65) = v19;
    *(a3 + 72) = result;
    return result;
  }

  if (v18 == *MEMORY[0x1E698AC98])
  {
    v19 = 1;
    goto LABEL_7;
  }

  if (v18 == *MEMORY[0x1E698AC88])
  {
    v19 = 2;
    goto LABEL_7;
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  sub_18F09406C();
  MEMORY[0x193AD8780](0xD00000000000001ALL, 0x800000018F0AFA70);
  sub_18F09414C();
  result = sub_18F0941AC();
  __break(1u);
  return result;
}

unint64_t sub_18EFB6CA8()
{
  result = qword_1ED5FF4D0;
  if (!qword_1ED5FF4D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5FF4D0);
  }

  return result;
}

id sub_18EFB6CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_18F093B5C();

  if (a4)
  {
    v13 = sub_18F093B5C();

    if (a6)
    {
LABEL_3:
      v14 = sub_18F093B5C();

      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v15 = sub_18F0932BC();
  v16 = 0;
  if (__swift_getEnumTagSinglePayload(a7, 1, v15) != 1)
  {
    v16 = sub_18F09324C();
    (*(*(v15 - 8) + 8))(a7, v15);
  }

  v17 = [v8 initWithKey:v12 defaultValue:v13 table:v14 bundleURL:v16];

  return v17;
}

uint64_t sub_18EFB6E2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_18EFB6E88(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_18EFB9084(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v7;
  v12 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB97C8, &qword_18F0AC098);
  if ((sub_18F09417C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_18EFB9084(a2);
  if ((v12 & 1) != (v8 & 1))
  {
LABEL_13:
    type metadata accessor for LNValueTypeSpecificMetadataKey(0, v8, v9, v10);
    result = sub_18F0944AC();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v14 = *v4;
  if (v12)
  {
    v15 = (v14[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);

    return sub_18EF914D4(a1, v15);
  }

  else
  {
    sub_18EFBB21C(v11, a2, a1, v14);

    return a2;
  }
}

uint64_t AssistantSchemaLibrary.__deallocating_deinit()
{
  AssistantSchemaLibrary.deinit();
  v0 = OUTLINED_FUNCTION_19_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t _s12LinkMetadata22AssistantSchemaLibraryCfd_0()
{

  return v0;
}

uint64_t sub_18EFB7024(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v46 = a5;
  sub_18EFAF5BC(v45, a1, a2, a3);
  v5 = v45[1];
  v6 = v45[3];
  v7 = v45[4];
  v35 = v45[5];
  v36 = v45[0];
  v8 = (v45[2] + 64) >> 6;

  while (1)
  {
    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      break;
    }

LABEL_7:
    v12 = __clz(__rbit64(v9)) | (v10 << 6);
    v13 = (*(v36 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (*(v36 + 56) + 96 * v12);
    memcpy(__dst, v16, sizeof(__dst));
    memcpy(&__src[2], v16, 0x60uLL);
    __src[0] = v15;
    __src[1] = v14;

    sub_18EFB5BE0(__dst, v41);
    v35(&v42, __src);
    memcpy(v41, __src, sizeof(v41));
    sub_18EF82E14(v41, &qword_1EACB9150, &qword_18F0AB890);
    v17 = v43;
    if (!v43)
    {
LABEL_19:
      sub_18EFAE608(v36);
    }

    v18 = v42;
    v19 = *v46;
    v21 = sub_18EFAF54C();
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_21;
    }

    v24 = v20;
    if (v19[3] >= v22 + v23)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9158, &unk_18F0AA0D0);
        sub_18F09418C();
      }
    }

    else
    {
      sub_18EFB96D8();
      v25 = sub_18EFAF54C();
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_23;
      }

      v21 = v25;
    }

    v37 = (v9 - 1) & v9;
    if (v24)
    {
      v27 = *v46;

      v28 = (v27[7] + 96 * v21);
      memcpy(v41, v28, 0x60uLL);
      memcpy(v28, v44, 0x60uLL);
      sub_18EFB5C3C(v41);
    }

    else
    {
      v29 = *v46;
      *(*v46 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v30 = (v29[6] + 16 * v21);
      *v30 = v18;
      v30[1] = v17;
      memcpy((v29[7] + 96 * v21), v44, 0x60uLL);
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_22;
      }

      v29[2] = v33;
    }

    a4 = 1;
    v6 = v10;
    v7 = v37;
  }

  v11 = v6;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    v9 = *(v5 + 8 * v10);
    ++v11;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

uint64_t sub_18EFB7350(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  sub_18EFAF5BC(v46, a1, a2, a3);
  v5 = v46[1];
  v6 = v46[3];
  v7 = v46[4];
  v36 = v46[5];
  v37 = v46[0];
  v8 = (v46[2] + 64) >> 6;

  while (1)
  {
    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      break;
    }

LABEL_7:
    v12 = __clz(__rbit64(v9)) | (v10 << 6);
    v13 = (*(v37 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (*(v37 + 56) + 80 * v12);
    memcpy(__dst, v16, sizeof(__dst));
    memcpy(&__src[2], v16, 0x50uLL);
    __src[0] = v15;
    __src[1] = v14;

    sub_18EFB6BF8(__dst, v42);
    v36(&v43, __src);
    memcpy(v42, __src, sizeof(v42));
    sub_18EF82E14(v42, &qword_1EACB9130, &qword_18F0AB8B0);
    v17 = v44;
    if (!v44)
    {
LABEL_19:
      sub_18EFAE608(v37);
    }

    v18 = v43;
    v19 = *v47;
    v21 = sub_18EFAF54C();
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_21;
    }

    v25 = v20;
    if (v19[3] >= v24)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9138, &qword_18F0AA0C0);
        sub_18F09418C();
      }
    }

    else
    {
      sub_18EFB9958(v24, a4 & 1);
      v26 = sub_18EFAF54C();
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_23;
      }

      v21 = v26;
    }

    v38 = (v9 - 1) & v9;
    if (v25)
    {
      v28 = *v47;

      v29 = (v28[7] + 80 * v21);
      memcpy(v42, v29, 0x50uLL);
      memcpy(v29, v45, 0x50uLL);
      sub_18EFB6C54(v42);
    }

    else
    {
      v30 = *v47;
      *(*v47 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v31 = (v30[6] + 16 * v21);
      *v31 = v18;
      v31[1] = v17;
      memcpy((v30[7] + 80 * v21), v45, 0x50uLL);
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_22;
      }

      v30[2] = v34;
    }

    a4 = 1;
    v6 = v10;
    v7 = v38;
  }

  v11 = v6;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    v9 = *(v5 + 8 * v10);
    ++v11;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

void *AssistantSchemaLibrary.init(intents:entities:enums:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t sub_18EFB76CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  memcpy(v7, a1 + 2, sizeof(v7));
  result = sub_18EFB7AD8(a2 + 2, v3, v4, v7);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_18EFB7744(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  sub_18EFAF5BC(v46, a1, a2, a3);
  v5 = v46[1];
  v6 = v46[3];
  v7 = v46[4];
  v36 = v46[5];
  v37 = v46[0];
  v8 = (v46[2] + 64) >> 6;

  while (1)
  {
    v9 = v7;
    v10 = v6;
    if (!v7)
    {
      break;
    }

LABEL_7:
    v12 = __clz(__rbit64(v9)) | (v10 << 6);
    v13 = (*(v37 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (*(v37 + 56) + 80 * v12);
    memcpy(__dst, v16, sizeof(__dst));
    memcpy(&__src[2], v16, 0x50uLL);
    __src[0] = v15;
    __src[1] = v14;

    sub_18EFB62B4(__dst, v42);
    v36(&v43, __src);
    memcpy(v42, __src, sizeof(v42));
    sub_18EF82E14(v42, &qword_1EACB9140, &qword_18F0AB8A0);
    v17 = v44;
    if (!v44)
    {
LABEL_19:
      sub_18EFAE608(v37);
    }

    v18 = v43;
    v19 = *v47;
    v21 = sub_18EFAF54C();
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_21;
    }

    v25 = v20;
    if (v19[3] >= v24)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9148, &qword_18F0AA0C8);
        sub_18F09418C();
      }
    }

    else
    {
      sub_18EFB9C18(v24, a4 & 1);
      v26 = sub_18EFAF54C();
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_23;
      }

      v21 = v26;
    }

    v38 = (v9 - 1) & v9;
    if (v25)
    {
      v28 = *v47;

      v29 = (v28[7] + 80 * v21);
      memcpy(v42, v29, 0x50uLL);
      memcpy(v29, v45, 0x50uLL);
      sub_18EFB677C(v42);
    }

    else
    {
      v30 = *v47;
      *(*v47 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v31 = (v30[6] + 16 * v21);
      *v31 = v18;
      v31[1] = v17;
      memcpy((v30[7] + 80 * v21), v45, 0x50uLL);
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_22;
      }

      v30[2] = v34;
    }

    a4 = 1;
    v6 = v10;
    v7 = v38;
  }

  v11 = v6;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_19;
    }

    v9 = *(v5 + 8 * v10);
    ++v11;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

uint64_t sub_18EFB7A70@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t *, uint64_t, uint64_t, _BYTE *)@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  memcpy(v9, a1 + 2, sizeof(v9));
  result = a2(a3 + 2, v5, v6, v9);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_18EFB7AD8(void *a1, uint64_t a2, uint64_t a3, void *__src)
{
  memcpy(a1, __src, 0x60uLL);

  sub_18EFB5BE0(__src, &v7);
  return a2;
}

id sub_18EFB7B38()
{
  v1 = v0;
  v2 = sub_18F0936CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E698ABC8])
  {
    v7 = &selRef_accelerationValueType;
  }

  else if (v6 == *MEMORY[0x1E698AC18])
  {
    v7 = &selRef_angleValueType;
  }

  else if (v6 == *MEMORY[0x1E698AC08])
  {
    v7 = &selRef_areaValueType;
  }

  else if (v6 == *MEMORY[0x1E698ABE8])
  {
    v7 = &selRef_concentrationMassValueType;
  }

  else if (v6 == *MEMORY[0x1E698ABB0])
  {
    v7 = &selRef_dispersionValueType;
  }

  else if (v6 == *MEMORY[0x1E698AC48])
  {
    v7 = &selRef_durationValueType;
  }

  else if (v6 == *MEMORY[0x1E698ABD0])
  {
    v7 = &selRef_electricChargeValueType;
  }

  else if (v6 == *MEMORY[0x1E698ABE0])
  {
    v7 = &selRef_electricCurrentValueType;
  }

  else if (v6 == *MEMORY[0x1E698AC00])
  {
    v7 = &selRef_electricPotentialDifferenceValueType;
  }

  else if (v6 == *MEMORY[0x1E698ABF0])
  {
    v7 = &selRef_electricResistanceValueType;
  }

  else if (v6 == *MEMORY[0x1E698AC30])
  {
    v7 = &selRef_energyValueType;
  }

  else if (v6 == *MEMORY[0x1E698AC58])
  {
    v7 = &selRef_frequencyValueType;
  }

  else if (v6 == *MEMORY[0x1E698ABD8])
  {
    v7 = &selRef_fuelEfficiencyValueType;
  }

  else if (v6 == *MEMORY[0x1E698ABB8])
  {
    v7 = &selRef_illuminanceValueType;
  }

  else if (v6 == *MEMORY[0x1E698ABF8])
  {
    v7 = &selRef_informationStorageValueType;
  }

  else if (v6 == *MEMORY[0x1E698AC38])
  {
    v7 = &selRef_lengthValueType;
  }

  else if (v6 == *MEMORY[0x1E698AC10])
  {
    v7 = &selRef_massValueType;
  }

  else if (v6 == *MEMORY[0x1E698AC20])
  {
    v7 = &selRef_powerValueType;
  }

  else if (v6 == *MEMORY[0x1E698AC50])
  {
    v7 = &selRef_pressureValueType;
  }

  else if (v6 == *MEMORY[0x1E698AC28])
  {
    v7 = &selRef_speedValueType;
  }

  else if (v6 == *MEMORY[0x1E698ABC0])
  {
    v7 = &selRef_temperatureValueType;
  }

  else
  {
    if (v6 != *MEMORY[0x1E698AC40])
    {
      v10[0] = 0;
      v10[1] = 0xE000000000000000;
      sub_18F09406C();
      MEMORY[0x193AD8780](0xD000000000000019, 0x800000018F0B0D90);
      sub_18F09414C();
      result = sub_18F0941AC();
      __break(1u);
      return result;
    }

    v7 = &selRef_volumeValueType;
  }

  v8 = [objc_opt_self() *v7];

  return v8;
}

uint64_t sub_18EFB7FC4(void *a1, uint64_t a2, uint64_t a3, void *__src, void (*a5)(void *, uint64_t *))
{
  memcpy(a1, __src, 0x50uLL);

  a5(__src, &v9);
  return a2;
}

id sub_18EFB802C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_18F093B5C();

  v6 = [v3 initWithIdentifier:v5 displayRepresentation:a3];

  return v6;
}

void sub_18EFB8090(uint64_t a1@<X0>, id *a2@<X8>)
{
  v4 = sub_18F09337C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x1E698AB48])
  {
    (*(v5 + 96))(v7, v4);
    sub_18EFBB5B4(v7, v15);
    sub_18EF825F4(0, &unk_1EACB7078, off_1E72B0030);
    __swift_project_boxed_opaque_existential_1Tm(v15, v15[3]);
    v9 = sub_18F09392C();
    *a2 = sub_18EFBB5CC(v9, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else if (v8 == *MEMORY[0x1E698AB30])
  {
    sub_18EFB84D4();
    if ((v11 & 1) != 0 && (v12 = [objc_opt_self() openEntitySystemProtocol], v13 = objc_msgSend(objc_allocWithZone(LNTraitInjectedSystemProtocol), sel_initWithProtocol_, v12), v12, v13))
    {
      *a2 = v13;
    }

    else
    {
      *a2 = 0;
    }
  }

  else
  {
    *a2 = 0;
    (*(v5 + 8))(v7, v4);
  }
}

void sub_18EFB82B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_34_0();
  v37 = *v36;
  OUTLINED_FUNCTION_15_0(v38, v39, v40, v41);
  v42 = OUTLINED_FUNCTION_37_0(v37);
  if (!v37[2])
  {
LABEL_29:

LABEL_30:
    *v35 = v42;
    OUTLINED_FUNCTION_35_0();
    return;
  }

  v71 = v35;
  v72 = v37;
  v43 = 0;
  v44 = v37;
  OUTLINED_FUNCTION_0_7();
  v48 = (v47 + 63) >> 6;
  v49 = v42 + 8;
  if ((v46 & v45) == 0)
  {
LABEL_4:
    v51 = v43;
    while (1)
    {
      v43 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v43 >= v48)
      {
        break;
      }

      ++v51;
      if (*(v44 + 8 * v43))
      {
        OUTLINED_FUNCTION_229();
        a14 = v53 & v52;
        goto LABEL_9;
      }
    }

    if ((a13 & 1) == 0)
    {

      v35 = v71;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_9_1();
    v35 = v71;
    if (v67 != v68)
    {
      OUTLINED_FUNCTION_11_1(v66);
    }

    else
    {
      v69 = OUTLINED_FUNCTION_8_1();
      sub_18EFAF4AC(v69, v70, v44);
    }

    v37[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_0();
LABEL_9:
    v54 = v50 | (v43 << 6);
    v55 = v37[7];
    v56 = *(v37[6] + 8 * v54);
    v57 = *(v55 + 8 * v54);
    if ((a13 & 1) == 0)
    {
      v58 = v56;
      swift_unknownObjectRetain();
    }

    sub_18F093B8C();
    sub_18F09452C();
    sub_18F093C1C();
    sub_18F09456C();

    OUTLINED_FUNCTION_17_0();
    if (v59)
    {
      break;
    }

    OUTLINED_FUNCTION_5_3();
LABEL_21:
    OUTLINED_FUNCTION_2_4();
    *(v49 + v63) |= v64;
    *(v42[6] + 8 * v65) = v56;
    *(v42[7] + 8 * v65) = v57;
    ++v42[2];
    v37 = v72;
    if (!a14)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_5();
  while (1)
  {
    OUTLINED_FUNCTION_18_0();
    if (v59)
    {
      if (v61)
      {
        break;
      }
    }

    if (v60 == v62)
    {
      v60 = 0;
    }

    if (v49[v60] != -1)
    {
      OUTLINED_FUNCTION_3_3();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_18EFB84D4()
{
  OUTLINED_FUNCTION_260();
  v0 = sub_18F0939AC();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_42();
  v48 = v4 - v5;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v42 - v7;
  OUTLINED_FUNCTION_237();
  v49 = sub_18F09373C();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_42();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v42 - v15;
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v16);
  v46 = &v42 - v17;
  OUTLINED_FUNCTION_237();
  v18 = sub_18F09337C();
  OUTLINED_FUNCTION_7();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_22();
  v24 = v23 - v22;
  v25 = sub_18F09340C();
  (*(v20 + 104))(v24, *MEMORY[0x1E698AB30], v18);
  v50[2] = v24;
  v26 = sub_18EFB9508(sub_18EFB94E8, v50, v25);

  (*(v20 + 8))(v24, v18);
  if (v26)
  {
    v43 = v2;
    v44 = v0;
    v27 = sub_18F0933BC();
    v28 = 0;
    v29 = *(v27 + 16);
    while (1)
    {
      if (v29 == v28)
      {

        goto LABEL_14;
      }

      if (v28 >= *(v27 + 16))
      {
        break;
      }

      (*(v9 + 16))(v13, v27 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v28, v49);
      if (sub_18F09371C() == 0x746567726174 && v30 == 0xE600000000000000)
      {

LABEL_13:

        v33 = *(v9 + 32);
        v34 = v45;
        v35 = v49;
        v33(v45, v13, v49);
        v36 = v46;
        v33(v46, v34, v35);
        v37 = v47;
        sub_18F09372C();
        v39 = v43;
        v38 = v44;
        v40 = v48;
        (*(v43 + 104))(v48, *MEMORY[0x1E698ACE8], v44);
        sub_18F09399C();
        v41 = *(v39 + 8);
        v41(v40, v38);
        v41(v37, v38);
        (*(v9 + 8))(v36, v35);
        goto LABEL_14;
      }

      v32 = sub_18F09444C();

      if (v32)
      {
        goto LABEL_13;
      }

      (*(v9 + 8))(v13, v49);
      ++v28;
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_259();
  }
}

uint64_t sub_18EFB8908(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v59 = a5;
  sub_18EFAC3CC(a1, a2, a3, &v51);
  v8 = v52;
  v9 = v54;
  v10 = v55;
  v43 = v56;
  v44 = v51;
  v45 = v57;
  v39 = v53;
  v11 = (v53 + 64) >> 6;
  v41 = a1;

  v40 = a3;

  if (v10)
  {
    while (1)
    {
      HIDWORD(v46) = a4;
      v15 = v9;
LABEL_8:
      v17 = (v15 << 9) | (8 * __clz(__rbit64(v10)));
      v18 = *(*(v44 + 56) + v17);
      v49 = *(*(v44 + 48) + v17);
      v50 = v18;
      v19 = v49;
      swift_unknownObjectRetain();
      v43(&v47, &v49);
      swift_unknownObjectRelease();

      v21 = v47;
      v20 = v48;
      v22 = *v59;
      v27 = sub_18EFB9084(v47);
      v28 = v22[2];
      v29 = (v12 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v12;
      if (v22[3] >= v30)
      {
        if ((v46 & 0x100000000) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9448, &qword_18F0AAA58);
          sub_18F09418C();
        }
      }

      else
      {
        sub_18EFB82B8(v30, BYTE4(v46) & 1, &unk_1EACB9450, &unk_18F09BD58, v23, v24, v25, v26, v38, v39, v40, v41, SBYTE4(v41), v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
        v32 = sub_18EFB9084(v21);
        if ((v31 & 1) != (v12 & 1))
        {
          goto LABEL_24;
        }

        v27 = v32;
      }

      v10 &= v10 - 1;
      v33 = *v59;
      if (v31)
      {

        *(v33[7] + 8 * v27) = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v33[(v27 >> 6) + 8] |= 1 << v27;
        *(v33[6] + 8 * v27) = v21;
        *(v33[7] + 8 * v27) = v20;
        v34 = v33[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_23;
        }

        v33[2] = v36;
      }

      a4 = 1;
      v9 = v15;
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v16 = v9;
    while (1)
    {
      v15 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v15 >= v11)
      {
        sub_18EFAE608(v44);
      }

      v10 = *(v8 + 8 * v15);
      ++v16;
      if (v10)
      {
        HIDWORD(v46) = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  type metadata accessor for LNSystemProtocolIdentifier(0, v12, v13, v14);
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

uint64_t sub_18EFB8BA0()
{
  v1 = v0;
  v2 = sub_18F09337C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E698AB48])
  {
    type metadata accessor for LNSystemProtocolIdentifier(0, v7, v8, v9);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
    sub_18EFB95E8(v10, v11, v12, v13);
    v14 = sub_18F093A5C();
    (*(v3 + 8))(v5, v2);
    return v14;
  }

  if (v6 == *MEMORY[0x1E698AB30])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9400, &qword_18F0AAA18);
    inited = swift_initStackObject();
    v16 = inited;
    *(inited + 16) = xmmword_18F09BCC0;
    v17 = LNSystemProtocolIdentifierOpenEntity;
LABEL_7:
    v18 = *v17;
    *(inited + 32) = *v17;
    v19 = objc_allocWithZone(LNEmptySystemProtocolMetadata);
    v20 = v18;
    *(v16 + 40) = [v19 init];
    type metadata accessor for LNSystemProtocolIdentifier(0, v21, v22, v23);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
    sub_18EFB95E8(v24, v25, v26, v27);
    return sub_18F093A5C();
  }

  if (v6 == *MEMORY[0x1E698AB38])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9400, &qword_18F0AAA18);
    inited = swift_initStackObject();
    v16 = inited;
    *(inited + 16) = xmmword_18F09BCC0;
    v17 = LNSystemProtocolIdentifierDeleteEntity;
    goto LABEL_7;
  }

  if (v6 == *MEMORY[0x1E698AB40])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9400, &qword_18F0AAA18);
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_18F09BCC0;
    *(v29 + 32) = @"com.apple.link.systemProtocol.ShowInAppStringSearchResults";
    sub_18EFBB55C();
    v30 = @"com.apple.link.systemProtocol.ShowInAppStringSearchResults";
    *(v29 + 40) = sub_18EFBB5A0(&unk_1F02E2750);
    type metadata accessor for LNSystemProtocolIdentifier(0, v31, v32, v33);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
    sub_18EFB95E8(v34, v35, v36, v37);
    return sub_18F093A5C();
  }

  if (v6 == *MEMORY[0x1E698AB18])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9400, &qword_18F0AAA18);
    inited = swift_initStackObject();
    v16 = inited;
    *(inited + 16) = xmmword_18F09BCC0;
    v17 = LNSystemProtocolIdentifierAudioStarting;
    goto LABEL_7;
  }

  if (v6 == *MEMORY[0x1E698AB20])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9400, &qword_18F0AAA18);
    inited = swift_initStackObject();
    v16 = inited;
    *(inited + 16) = xmmword_18F09BCC0;
    v17 = LNSystemProtocolIdentifierAudioRecording;
    goto LABEL_7;
  }

  if (v6 == *MEMORY[0x1E698AB10])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9400, &qword_18F0AAA18);
    inited = swift_initStackObject();
    v16 = inited;
    *(inited + 16) = xmmword_18F09BCC0;
    v17 = LNSystemProtocolIdentifierSessionStarting;
    goto LABEL_7;
  }

  if (v6 == *MEMORY[0x1E698AB28])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9400, &qword_18F0AAA18);
    inited = swift_initStackObject();
    v16 = inited;
    *(inited + 16) = xmmword_18F09BCC0;
    v17 = LNSystemProtocolIdentifierURLRepresentable;
    goto LABEL_7;
  }

  v39 = 0;
  v40 = 0xE000000000000000;
  sub_18F09406C();
  MEMORY[0x193AD8780](0xD00000000000001ELL, 0x800000018F0AFA20);
  sub_18F09414C();
  result = sub_18F0941AC();
  __break(1u);
  return result;
}

id sub_18EFB908C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18EFB90C8(&v5, *a1, a1[1]);
  v4 = v5;
  *a2 = result;
  a2[1] = v4;
  return result;
}

id sub_18EFB90C8(void *a1, void *a2, uint64_t a3)
{
  *a1 = a3;
  v3 = a2;
  swift_unknownObjectRetain();
  return v3;
}

BOOL sub_18EFB9124(uint64_t a1)
{
  v1 = sub_18F09337C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v4, *MEMORY[0x1E698AB30], v1);
  v5 = sub_18F09336C();
  (*(v2 + 8))(v4, v1);
  result = 1;
  if (v5)
  {
    sub_18EFB84D4();
    if (v6)
    {
      return 0;
    }
  }

  return result;
}

void sub_18EFB929C()
{
  OUTLINED_FUNCTION_260();
  v6 = v5;
  v8 = v7;
  v9 = v3;
  v10 = v0;
  if (v2)
  {
    OUTLINED_FUNCTION_74();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_238();
      if (v12)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    v11 = v1;
  }

  v14 = *(v9 + 16);
  if (v11 <= v14)
  {
    v15 = *(v9 + 16);
  }

  else
  {
    v15 = v11;
  }

  if (!v15)
  {
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  v16 = OUTLINED_FUNCTION_253(v0, v1, v2, v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  v18 = v8(0);
  OUTLINED_FUNCTION_45(v18);
  v20 = *(v19 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v24 = _swift_stdlib_malloc_size(v23);
  if (!v20)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v24 - v22 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_23;
  }

  v23[2] = v14;
  v23[3] = 2 * ((v24 - v22) / v20);
LABEL_18:
  v8(0);
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_149();
  if (v10)
  {
    sub_18EFBB490(v9 + v26, v14, v23 + v26, v6);
    *(v9 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_259();
}

uint64_t sub_18EFB9458(uint64_t a1, uint64_t a2)
{
  sub_18F09337C();
  sub_18EFB3860(&qword_1EACB6CA0, MEMORY[0x1E698AB50], MEMORY[0x1E698AB58]);
  return sub_18F093AAC() & 1;
}

BOOL sub_18EFB9508(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_18F09337C() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

unint64_t sub_18EFB95E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = qword_1ED5FFA10;
  if (!qword_1ED5FFA10)
  {
    type metadata accessor for LNSystemProtocolIdentifier(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FFA10);
  }

  return result;
}

void sub_18EFB96D8()
{
  OUTLINED_FUNCTION_10_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9480, &qword_18F0AAA78);
  OUTLINED_FUNCTION_22_0();
  HIDWORD(v28) = v2;
  v3 = sub_18F0941DC();
  if (!*(v1 + 16))
  {
LABEL_30:

LABEL_31:
    *v0 = v3;
    return;
  }

  v27 = v0;
  v4 = 0;
  OUTLINED_FUNCTION_0_7();
  v7 = v6 & v5;
  OUTLINED_FUNCTION_25_0();
  if (!v7)
  {
LABEL_4:
    v8 = v4;
    while (1)
    {
      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v4 >= v0)
      {
        break;
      }

      ++v8;
      if (*(v1 + 8 * v4))
      {
        OUTLINED_FUNCTION_229();
        v7 = v10 & v9;
        goto LABEL_9;
      }
    }

    if ((v28 & 0x100000000) == 0)
    {

      v0 = v27;
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_9_1();
    v0 = v27;
    if (v23 != v24)
    {
      OUTLINED_FUNCTION_11_1(v22);
    }

    else
    {
      v25 = OUTLINED_FUNCTION_8_1();
      sub_18EFAF4AC(v25, v26, v1);
    }

    *(v1 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_30_0();
LABEL_9:
    OUTLINED_FUNCTION_23_0();
    if ((v28 & 0x100000000) != 0)
    {
      OUTLINED_FUNCTION_29_0(v11);
      v29 = *(v14 + 48);
      v31 = *(v14 + 64);
      v38 = *(v14 + 80);
      v39 = *(v14 + 81);
      v40 = *(v14 + 88);
    }

    else
    {
      memcpy(__dst, (v12 + v11 * v13), sizeof(__dst));
      OUTLINED_FUNCTION_26_0();
      v36 = *(&__dst[0] + 1);
      v37 = *&__dst[0];
      v33 = __dst[1];
      v34 = __dst[2];
      v29 = __dst[3];
      v31 = __dst[4];

      sub_18EFB5BE0(__dst, v41);
    }

    sub_18F09452C();
    sub_18F093C1C();
    sub_18F09456C();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_17_0();
    if (v15)
    {
      break;
    }

    OUTLINED_FUNCTION_5_3();
LABEL_22:
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_24_0(v19);
    OUTLINED_FUNCTION_27_0(v20, v27, v28, v29, *(&v29 + 1), v31, *(&v31 + 1), v33, v34, v35, v36, v37);
    *(v21 + 48) = v30;
    *(v21 + 64) = v32;
    *(v21 + 80) = v38;
    *(v21 + 81) = v39;
    *(v21 + 88) = v40;
    OUTLINED_FUNCTION_13_1();
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_5();
  while (1)
  {
    OUTLINED_FUNCTION_18_0();
    if (v15)
    {
      if (v17)
      {
        break;
      }
    }

    if (v16 == v18)
    {
      v16 = 0;
    }

    if (*(v3 + 64 + 8 * v16) != -1)
    {
      OUTLINED_FUNCTION_3_3();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_18EFB9980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *, char *))
{
  v40 = a5;
  OUTLINED_FUNCTION_10_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_22_0();
  HIDWORD(v41) = v7;
  v10 = sub_18F0941DC();
  if (!*(v6 + 16))
  {
LABEL_31:

LABEL_32:
    *v5 = v10;
    return;
  }

  v39 = v5;
  v11 = 0;
  v12 = (v6 + 64);
  v13 = 1 << *(v6 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v6 + 64);
  OUTLINED_FUNCTION_25_0();
  v16 = 80;
  if (!v15)
  {
LABEL_7:
    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v11 >= v5)
      {
        break;
      }

      ++v18;
      if (v12[v11])
      {
        OUTLINED_FUNCTION_229();
        v15 = v20 & v19;
        goto LABEL_12;
      }
    }

    if ((v41 & 0x100000000) == 0)
    {

      v5 = v39;
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_9_1();
    v5 = v39;
    if (v34 != v35)
    {
      *v12 = -1 << v33;
    }

    else
    {
      v36 = OUTLINED_FUNCTION_8_1();
      sub_18EFAF4AC(v36, v37, v6 + 64);
    }

    *(v6 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_12:
    v21 = v17 | (v11 << 6);
    v22 = (*(v6 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    if ((v41 & 0x100000000) != 0)
    {
      OUTLINED_FUNCTION_29_0(v21);
      v42 = *(v25 + 48);
      v49 = *(v25 + 64);
      v50 = *(v25 + 65);
      v51 = *(v25 + 72);
    }

    else
    {
      memcpy(__dst, (*(v6 + 56) + v21 * v16), sizeof(__dst));
      OUTLINED_FUNCTION_26_0();
      v47 = *(&__dst[0] + 1);
      v48 = *&__dst[0];
      v44 = __dst[1];
      v45 = __dst[2];
      v42 = __dst[3];

      v40(__dst, v52);
    }

    sub_18F09452C();
    sub_18F093C1C();
    sub_18F09456C();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_17_0();
    if (v26)
    {
      break;
    }

    OUTLINED_FUNCTION_5_3();
LABEL_23:
    OUTLINED_FUNCTION_2_4();
    *(v10 + 64 + v28) |= v29;
    v31 = (*(v10 + 48) + 16 * v30);
    *v31 = v23;
    v31[1] = v24;
    OUTLINED_FUNCTION_27_0(v30, v38, v39, v40, v41, v42, *(&v42 + 1), v44, v45, v46, v47, v48);
    *(v32 + 48) = v43;
    *(v32 + 64) = v49;
    *(v32 + 65) = v50;
    *(v32 + 72) = v51;
    OUTLINED_FUNCTION_13_1();
    if (!v15)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_4_5();
  while (1)
  {
    OUTLINED_FUNCTION_18_0();
    if (v26)
    {
      if (v27)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_19_0();
    if (!v26)
    {
      OUTLINED_FUNCTION_3_3();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

id sub_18EFB9C40(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequirement:a1 condition:a2 behavior:a3 message:a4];

  return v7;
}

uint64_t sub_18EFB9CB8()
{
  v1 = v0;
  v2 = sub_18F09387C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E698ACE0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9530, &qword_18F0AAEB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18F09BCC0;
    *(inited + 32) = @"com.apple.appintents.entity.PersistentFileIdentifiable";
    sub_18EFBFCD4();
    v8 = @"com.apple.appintents.entity.PersistentFileIdentifiable";
    v9 = sub_18EFBFC64();
LABEL_8:
    *(inited + 40) = v9;
    type metadata accessor for LNSystemEntityProtocolIdentifier(0, v10, v11, v12);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
    sub_18EFBA23C(v18, v19, v20, v21);
    return sub_18F093A5C();
  }

  if (v6 == *MEMORY[0x1E698ACD0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9530, &qword_18F0AAEB8);
    v13 = swift_initStackObject();
    inited = v13;
    *(v13 + 16) = xmmword_18F09BCC0;
    v14 = &LNSystemEntityProtocolIdentifierUniqueEntity;
LABEL_7:
    v15 = *v14;
    *(v13 + 32) = *v14;
    v16 = objc_allocWithZone(LNEmptySystemProtocolMetadata);
    v17 = v15;
    v9 = [v16 init];
    goto LABEL_8;
  }

  if (v6 == *MEMORY[0x1E698ACD8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9530, &qword_18F0AAEB8);
    v13 = swift_initStackObject();
    inited = v13;
    *(v13 + 16) = xmmword_18F09BCC0;
    v14 = &LNSystemEntityProtocolIdentifierURLRepresentable;
    goto LABEL_7;
  }

  v24 = 0;
  v25 = 0xE000000000000000;
  sub_18F09406C();
  MEMORY[0x193AD8780](0xD00000000000001ELL, 0x800000018F0B0260);
  sub_18F09414C();
  result = sub_18F0941AC();
  __break(1u);
  return result;
}

uint64_t sub_18EFB9FB4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v59 = a5;
  sub_18EFAF5BC(&v51, a1, a2, a3);
  v8 = v52;
  v9 = v54;
  v10 = v55;
  v43 = v56;
  v44 = v51;
  v45 = v57;
  v39 = v53;
  v11 = (v53 + 64) >> 6;
  v41 = a1;

  v40 = a3;

  if (v10)
  {
    while (1)
    {
      HIDWORD(v46) = a4;
      v15 = v9;
LABEL_8:
      v17 = (v15 << 9) | (8 * __clz(__rbit64(v10)));
      v18 = *(*(v44 + 56) + v17);
      v49 = *(*(v44 + 48) + v17);
      v50 = v18;
      v19 = v49;
      swift_unknownObjectRetain();
      v43(&v47, &v49);
      swift_unknownObjectRelease();

      v21 = v47;
      v20 = v48;
      v22 = *v59;
      v27 = sub_18EFB9084(v47);
      v28 = v22[2];
      v29 = (v12 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v12;
      if (v22[3] >= v30)
      {
        if ((v46 & 0x100000000) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9630, &qword_18F0AB8E0);
          sub_18F09418C();
        }
      }

      else
      {
        sub_18EFB9FA0(v30, BYTE4(v46) & 1, v13, v14, v23, v24, v25, v26, v38, v39, v40, v41, SBYTE4(v41), v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
        v32 = sub_18EFB9084(v21);
        if ((v31 & 1) != (v12 & 1))
        {
          goto LABEL_24;
        }

        v27 = v32;
      }

      v10 &= v10 - 1;
      v33 = *v59;
      if (v31)
      {

        *(v33[7] + 8 * v27) = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v33[(v27 >> 6) + 8] |= 1 << v27;
        *(v33[6] + 8 * v27) = v21;
        *(v33[7] + 8 * v27) = v20;
        v34 = v33[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_23;
        }

        v33[2] = v36;
      }

      a4 = 1;
      v9 = v15;
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v16 = v9;
    while (1)
    {
      v15 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v15 >= v11)
      {
        sub_18EFAE608(v44);
      }

      v10 = *(v8 + 8 * v15);
      ++v16;
      if (v10)
      {
        HIDWORD(v46) = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  type metadata accessor for LNSystemEntityProtocolIdentifier(0, v12, v13, v14);
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

unint64_t sub_18EFBA23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = qword_1ED5FE770;
  if (!qword_1ED5FE770)
  {
    type metadata accessor for LNSystemEntityProtocolIdentifier(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE770);
  }

  return result;
}

id sub_18EFBA294(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
  v2 = sub_18F093DBC();

  v3 = [v1 initWithMemberValueTypes_];

  return v3;
}

uint64_t sub_18EFBA344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9828, &qword_18F0AC560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_18EFBA3B4()
{
  sub_18F09351C();
  OUTLINED_FUNCTION_7();
  v134 = v1;
  v135 = v0;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_22();
  v4 = v3 - v2;
  v5 = sub_18F09356C();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_22();
  v11 = v10 - v9;
  v129 = sub_18F0932BC();
  OUTLINED_FUNCTION_7();
  v128 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_42();
  v126 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v127 = &v125 - v17;
  sub_18F09314C();
  OUTLINED_FUNCTION_7();
  v131 = v19;
  v132 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_42();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v130 = &v125 - v24;
  v25 = sub_18F0939AC();
  OUTLINED_FUNCTION_7();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_42();
  v133 = v29 - v30;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v125 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v125 - v35;
  sub_18F0938EC();
  v37 = (*(v27 + 88))(v34, v25);
  if (v37 != *MEMORY[0x1E698AD78])
  {
    if (v37 == *MEMORY[0x1E698ADA0])
    {
      sub_18F0938FC();
      v47 = v140;
      v48 = OUTLINED_FUNCTION_1_4();
      v50 = __swift_project_boxed_opaque_existential_1Tm(v48, v49);
      v137 = v47;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v136);
      (*(*(v47 - 8) + 16))(boxed_opaque_existential_0, v50, v47);
      v52 = [objc_opt_self() stringValueType];
      v53 = objc_allocWithZone(LNValue);
      v46 = sub_18EFBB1A4(v136, v52);
      __swift_destroy_boxed_opaque_existential_1Tm(v139);
      (*(v27 + 8))(v34, v25);
      return v46;
    }

    v54 = v37 == *MEMORY[0x1E698AD88] || v37 == *MEMORY[0x1E698AD58];
    v55 = v27;
    if (v54)
    {
      v56 = *(v27 + 96);
      v57 = v25;
      v56(v34, v25);
      v58 = swift_projectBox();
      (*(v55 + 16))(v36, v58, v25);

      OUTLINED_FUNCTION_4_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB92C0, &qword_18F0AA3B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB92C8, &qword_18F0AA3C0);
      swift_dynamicCast();
      v59 = v137;
      v60 = v138;
      v61 = __swift_project_boxed_opaque_existential_1Tm(v136, v137);
      v62 = MEMORY[0x1EEE9AC00](v61);
      *(&v125 - 2) = v36;
      MEMORY[0x1EEE9AC00](v62);
      *(&v125 - 4) = v59;
      *(&v125 - 3) = v60;
      *(&v125 - 2) = sub_18F024828;
      *(&v125 - 1) = v63;
      sub_18EF825F4(0, &qword_1ED5FE060, off_1E72B0218);
      v64 = sub_18F093D3C();
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8888, &qword_18F0A1448);
      v139[0] = v64;
      v65 = v133;
      sub_18F0938EC();
      sub_18EFB22F0();
      v66 = *(v55 + 8);
      v66(v65, v57);
      v67 = objc_allocWithZone(LNValue);
      v68 = OUTLINED_FUNCTION_1_4();
      v46 = sub_18EFBB1A4(v68, v69);
      __swift_destroy_boxed_opaque_existential_1Tm(v136);
      v70 = v36;
    }

    else
    {
      v57 = v25;
      if (v37 == *MEMORY[0x1E698AD48])
      {
        OUTLINED_FUNCTION_4_3();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB92C0, &qword_18F0AA3B8);
        swift_dynamicCast();
        v71 = v136[0];
        v72 = v136[1];
        v73 = sub_18EF825F4(0, &qword_1EACB92D8, off_1E72B0188);
        v74 = sub_18F024314(v71, v72);
        v140 = v73;
        OUTLINED_FUNCTION_7_1(v74);
        sub_18EFB22F0();
        OUTLINED_FUNCTION_6_1();
        v75(v73, v57);
        v76 = objc_allocWithZone(LNValue);
        v77 = OUTLINED_FUNCTION_1_4();
        return sub_18EFBB1A4(v77, v78);
      }

      if (v37 == *MEMORY[0x1E698AD38])
      {
        OUTLINED_FUNCTION_4_3();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB92C0, &qword_18F0AA3B8);
        v79 = v130;
        v80 = v132;
        swift_dynamicCast();
        v81 = sub_18EF825F4(0, &qword_1EACB92E0, 0x1E696AAB0);
        v82 = v131;
        (*(v131 + 16))(v22, v79, v80);
        v83 = sub_18F093EFC();
        v140 = v81;
        OUTLINED_FUNCTION_7_1(v83);
        sub_18EFB22F0();
        OUTLINED_FUNCTION_6_1();
        v84(v25, v25);
        v85 = objc_allocWithZone(LNValue);
        v86 = OUTLINED_FUNCTION_1_4();
        v46 = sub_18EFBB1A4(v86, v87);
        (*(v82 + 8))(v79, v80);
        return v46;
      }

      if (v37 == *MEMORY[0x1E698AD08] || v37 == *MEMORY[0x1E698ADB8])
      {
        OUTLINED_FUNCTION_4_3();
        v89 = v140;
        v90 = v141;
        v91 = OUTLINED_FUNCTION_1_4();
        v93 = __swift_project_boxed_opaque_existential_1Tm(v91, v92);
        v36 = type metadata accessor for LNCodableValue(0);
        MEMORY[0x1EEE9AC00](v36);
        OUTLINED_FUNCTION_22();
        v96 = v95 - v94;
        (*(v97 + 16))(v95 - v94, v93, v89);
        v98 = LNCodableValue.init<A>(_:)(v96, v89, v90);
        __swift_destroy_boxed_opaque_existential_1Tm(v139);
        v140 = v36;
LABEL_22:
        v139[0] = v98;
        v99 = v98;
        OUTLINED_FUNCTION_5_1();
        sub_18EFB22F0();
        OUTLINED_FUNCTION_6_1();
        v100(v36, v57);
        v101 = objc_allocWithZone(LNValue);
        v102 = OUTLINED_FUNCTION_1_4();
        v46 = sub_18EFBB1A4(v102, v103);

        return v46;
      }

      if (v37 == *MEMORY[0x1E698AD80])
      {
        OUTLINED_FUNCTION_4_3();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB92C0, &qword_18F0AA3B8);
        v104 = v127;
        v105 = v129;
        swift_dynamicCast();
        v106 = sub_18EF825F4(0, &qword_1EACB87C0, 0x1E696E840);
        v107 = v128;
        v108 = v126;
        (*(v128 + 16))(v126, v104, v105);
        v109 = sub_18F024388(v108, 0, 0, 0, 0);
        v140 = v106;
        v139[0] = v109;
        v110 = v109;
        OUTLINED_FUNCTION_5_1();
        sub_18EFB22F0();
        OUTLINED_FUNCTION_6_1();
        v111(v36, v57);
        v112 = objc_allocWithZone(LNValue);
        v113 = OUTLINED_FUNCTION_1_4();
        v46 = sub_18EFBB1A4(v113, v114);

        (*(v107 + 8))(v104, v105);
        return v46;
      }

      if (v37 == *MEMORY[0x1E698AD10])
      {
        OUTLINED_FUNCTION_4_3();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB92C0, &qword_18F0AA3B8);
        swift_dynamicCast();
        v116 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDouble_];
        v117 = objc_allocWithZone(MEMORY[0x1E696E7E8]);
        v98 = sub_18F024850(v116, 0, 0xE000000000000000);
        v140 = sub_18EF825F4(0, &qword_1EACB92D0, 0x1E696E7E8);
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_4_3();
      v118 = v140;
      v119 = OUTLINED_FUNCTION_1_4();
      v121 = __swift_project_boxed_opaque_existential_1Tm(v119, v120);
      v137 = v118;
      v122 = __swift_allocate_boxed_opaque_existential_0(v136);
      (*(*(v118 - 8) + 16))(v122, v121, v118);
      OUTLINED_FUNCTION_5_1();
      v123 = sub_18EFB22F0();
      v66 = *(v55 + 8);
      v66(v36, v57);
      v124 = objc_allocWithZone(LNValue);
      v46 = sub_18EFBB1A4(v136, v123);
      __swift_destroy_boxed_opaque_existential_1Tm(v139);
      v70 = v34;
    }

    v66(v70, v57);
    return v46;
  }

  (*(v27 + 96))(v34, v25);
  (*(v7 + 32))(v11, v34, v5);
  sub_18F0938FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB92C0, &qword_18F0AA3B8);
  v38 = v135;
  swift_dynamicCast();
  v39 = sub_18F09350C();
  v140 = MEMORY[0x1E69E6158];
  v139[0] = v39;
  v139[1] = v40;
  sub_18EF825F4(0, &qword_1ED5FE070, off_1E72B0088);
  v41 = sub_18F09354C();
  sub_18EFBB130(v41, v42);
  v43 = objc_allocWithZone(LNValue);
  v44 = OUTLINED_FUNCTION_1_4();
  v46 = sub_18EFBB1A4(v44, v45);
  (*(v7 + 8))(v11, v5);
  (*(v134 + 8))(v4, v38);
  return v46;
}

id sub_18EFBB130(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_18F093B5C();

  v4 = [v2 initWithEnumerationIdentifier_];

  return v4;
}

id sub_18EFBB1A4(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v5 = [v2 initWithValue:sub_18F09443C() valueType:a2];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

_OWORD *sub_18EFBB21C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_18EF914D4(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_18EFBB284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = qword_1ED5FF088;
  if (!qword_1ED5FF088)
  {
    type metadata accessor for LNValueTypeSpecificMetadataKey(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF088);
  }

  return result;
}

id sub_18EFBB2DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = *(*(v3 + 48) + 8 * v10);
    sub_18EFB6E2C(*(v3 + 56) + 32 * v10, &v15);
    *&v18[0] = v11;
    sub_18EF914D4(&v15, (v18 + 8));
    result = v11;
    v13 = *&v18[0];
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v13)
    {
      v14 = v1[5];
      v15 = v13;
      v16 = *(v18 + 8);
      v17 = *(&v18[1] + 8);
      v14(&v15);
      return sub_18EF82E14(&v15, &qword_1EACB8868, &qword_18F0A1430);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v13 = 0;
        v9 = 0;
        memset(v18, 0, 40);
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_18EFBB41C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18EFBB450((a2 + 1), *a1, (a1 + 1));
  *a2 = result;
  return result;
}

id sub_18EFBB450(uint64_t a1, void *a2, uint64_t a3)
{
  sub_18EFB6E2C(a3, a1);

  return a2;
}

void sub_18EFBB490(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_115();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_36(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    v12 = OUTLINED_FUNCTION_292();

    MEMORY[0x1EEE6BD00](v12);
  }

  else if (a3 != v5)
  {
    v11 = OUTLINED_FUNCTION_292();

    MEMORY[0x1EEE6BCF8](v11);
  }
}

unint64_t sub_18EFBB55C()
{
  result = qword_1ED5FD150;
  if (!qword_1ED5FD150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5FD150);
  }

  return result;
}

uint64_t sub_18EFBB5B4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_18EFBB69C(uint64_t a1, void *a2)
{
  sub_18EF825F4(0, &qword_1ED5FE060, off_1E72B0218);
  v4 = sub_18F093DBC();

  v5 = [v2 initWithValues:v4 memberValueType:a2];

  return v5;
}

id sub_18EFBB720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18F093B5C();

  sub_18EF825F4(0, &qword_1ED5FD648, off_1E72AFE60);
  v5 = sub_18F093DBC();

  v6 = [v3 initWithParameterIdentifier:v4 cases:v5];

  return v6;
}

unint64_t sub_18EFBB7BC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

id sub_18EFBB7E0(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue:a1 configuration:a2];

  return v4;
}

uint64_t sub_18EFBB83C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9828, &qword_18F0AC560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18EFBB8A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9658, &qword_18F0AB918);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_18EFBB90C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_18F093B5C();

  v8 = [v4 initWithParameterIdentifier:v7 comparisonOperator:a3 value:a4];

  return v8;
}

uint64_t sub_18EFBB980(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB96B0, &unk_18F0ABC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_18EFBBA78()
{
  sub_18F0936AC();
  v0 = OUTLINED_FUNCTION_0_12();
  sub_18EFBBB3C(v0, v1, v2);
  v3 = sub_18F093F4C();
  v5 = v4;

  sub_18F0936AC();
  v6 = OUTLINED_FUNCTION_0_12();
  sub_18EFBBBFC(v6, v7, v8);
  sub_18EFBBCD0();

  sub_18F093C5C();

  sub_18EFBBD24();
  return sub_18EFBB130(v3, v5);
}

uint64_t sub_18EFBBB3C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_18F093C4C();
    v3 = sub_18F093D2C();

    return v3;
  }

  return result;
}

unint64_t sub_18EFBBBFC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_18F093C4C();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_18F093D2C();

      return v7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_18EFBBCD0()
{
  result = qword_1EACB6C80;
  if (!qword_1EACB6C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB6C80);
  }

  return result;
}

unint64_t sub_18EFBBD24()
{
  result = qword_1ED5FE070;
  if (!qword_1ED5FE070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5FE070);
  }

  return result;
}

unint64_t sub_18EFBBD74()
{
  result = qword_1ED5FEBF8;
  if (!qword_1ED5FEBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7A70, &qword_18F0A0BB8);
    sub_18EF8558C(&unk_1ED5FF230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEBF8);
  }

  return result;
}

void *sub_18EFBBE30@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_18EFBD04C(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x98uLL);
  }

  return result;
}

void LNBundleMetadata.init(metadataFileURL:bundleURL:effectiveBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_406();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  a10 = *MEMORY[0x1E69E9840];
  v28 = sub_18F09324C();
  v29 = sub_18F0932BC();
  v30 = 0;
  if (__swift_getEnumTagSinglePayload(v27, 1, v29) != 1)
  {
    v30 = sub_18F09324C();
    OUTLINED_FUNCTION_111();
    v31 = OUTLINED_FUNCTION_380();
    v32(v31);
  }

  v33 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  a9 = 0;
  v34 = [v33 _initWithMetadataFileURL_bundleURL_effectiveBundleIdentifier_error_];

  v35 = a9;
  if (v34)
  {
    OUTLINED_FUNCTION_111();
    v37 = *(v36 + 8);
    v38 = v35;
    v39 = OUTLINED_FUNCTION_257();
    v37(v39);
  }

  else
  {
    v40 = a9;
    sub_18F09318C();

    swift_willThrow();
    OUTLINED_FUNCTION_111();
    v41 = OUTLINED_FUNCTION_257();
    v42(v41);
  }

  OUTLINED_FUNCTION_405();
}

id OUTLINED_FUNCTION_107(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  return sub_18F00DE14(a1, v15, v16, a15, a14, v17, v18, v19, a9);
}

void sub_18EFBC078(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8778, &qword_18F0A1378), v2 = sub_18F09403C(), v3 = v2, (v24 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v22 = v1;
    v23 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v23 + 8 * v4++);
      sub_18F093B8C();
      sub_18F09452C();
      v25 = v6;
      sub_18F093C1C();
      v7 = sub_18F09456C();

      v8 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v9 = v7 & v8;
        v10 = (v7 & v8) >> 6;
        v11 = *(v5 + 8 * v10);
        v12 = 1 << (v7 & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        v13 = sub_18F093B8C();
        v15 = v14;
        if (v13 == sub_18F093B8C() && v15 == v16)
        {

          goto LABEL_17;
        }

        v18 = sub_18F09444C();

        if (v18)
        {

          goto LABEL_17;
        }

        v7 = v9 + 1;
      }

      *(v5 + 8 * v10) = v12 | v11;
      *(*(v3 + 48) + 8 * v9) = v25;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v21;
LABEL_17:
      v1 = v22;
      if (v4 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void LNBundleMetadata.init(metadataFileURL:bundleURL:effectiveBundleIdentifier:)()
{
  OUTLINED_FUNCTION_180();
  v38 = v4;
  v39 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_95(v7);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21();
  v9 = sub_18F09316C();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_220();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7398, &qword_18F09BD70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F09BCC0;
  v14 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v15 = v14;
  sub_18EFBC078(inited);
  sub_18F09322C();
  if (v0)
  {

LABEL_4:
    v20 = sub_18EFD2EC8();
    OUTLINED_FUNCTION_249(&type metadata for MetadataError, v20);
    *v21 = 0;
    v22 = 4;
    goto LABEL_5;
  }

  v16 = sub_18F09315C();
  v18 = v17;
  v19 = (*(v11 + 8))(v1, v9);
  if (v18)
  {
    goto LABEL_4;
  }

  if (v16 <= 5048575)
  {
    v26 = MEMORY[0x193AD91F0](v19);
    sub_18F0932CC();
    v27 = sub_18F09302C();
    OUTLINED_FUNCTION_277(v27);
    sub_18F09301C();
    sub_18EFBC84C();
    sub_18F09300C();

    v29 = OUTLINED_FUNCTION_380();
    sub_18EF9A4AC(v29, v30);
    objc_autoreleasePoolPop(v26);
    v31 = memcpy(v41, v40, 0x98uLL);
    v32 = MEMORY[0x193AD91F0](v31);
    sub_18EFC5660(v40);
    objc_autoreleasePoolPop(v32);
    v36 = v40[1];
    v37 = v40[0];
    swift_getObjectType();
    sub_18EF9FE2C();
    v40[0] = v37;
    v40[1] = v36;
    sub_18EFC5A60(v41, v2, v38, v40);
    sub_18EF933AC(v39, &qword_1EACB72C8);
    sub_18F0932BC();
    OUTLINED_FUNCTION_36();
    (*(v33 + 8))(v6);
    v34 = OUTLINED_FUNCTION_257();
    OUTLINED_FUNCTION_413(v34, v35);
    goto LABEL_6;
  }

  v28 = sub_18EFD2EC8();
  OUTLINED_FUNCTION_249(&type metadata for MetadataError, v28);
  *v21 = v16;
  v22 = 2;
LABEL_5:
  *(v21 + 8) = v22;
  swift_willThrow();

  sub_18EF933AC(v39, &qword_1EACB72C8);
  sub_18F0932BC();
  OUTLINED_FUNCTION_36();
  (*(v23 + 8))(v6);
  swift_getObjectType();
  v24 = OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_413(v24, v25);
LABEL_6:
  OUTLINED_FUNCTION_177();
}

unint64_t sub_18EFBC84C()
{
  result = qword_1ED5FEB10;
  if (!qword_1ED5FEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEB10);
  }

  return result;
}

unint64_t sub_18EFBC8A4()
{
  result = qword_1ED5FEB20;
  if (!qword_1ED5FEB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEB20);
  }

  return result;
}

unint64_t sub_18EFBC8FC()
{
  result = qword_1ED5FEB28;
  if (!qword_1ED5FEB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEB28);
  }

  return result;
}

unint64_t sub_18EFBC950()
{
  result = qword_1ED5FEB38[0];
  if (!qword_1ED5FEB38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED5FEB38);
  }

  return result;
}

uint64_t sub_18EFBC9A4(uint64_t a1)
{
  sub_18EFBDAD4(319, &unk_1ED5FD720, &qword_1EACB73B0);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_18EF802BC(319, &unk_1ED5FD7E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_18EFBDAD4(319, &qword_1ED5FD6D0, &qword_1EACB73C0);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_18EFBDB20(319, &qword_1ED5FF4D8, _s14CodableWrapperVMa_0, MEMORY[0x1E69E6720]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_18EFBDB20(319, &qword_1ED5FF120, _s14CodableWrapperVMa_1, MEMORY[0x1E69E6720]);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_18EFBDB20(319, &qword_1ED5FF148, _s14CodableWrapperVMa_8, MEMORY[0x1E69E6720]);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              sub_18EF802BC(319, &qword_1ED5FD6B0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
              v2 = v14;
              if (v15 <= 0x3F)
              {
                sub_18EFBDB20(319, &unk_1ED5FD108, type metadata accessor for LNActionModes, MEMORY[0x1E69E6720]);
                if (v17 > 0x3F)
                {
                  return v16;
                }

                type metadata accessor for LNActionAuthenticationPolicy(319);
                if (v18 > 0x3F)
                {
                  return v16;
                }

                else
                {
                  sub_18EF802BC(319, &unk_1ED5FD350, &_s14CodableWrapperON_0, MEMORY[0x1E69E6720]);
                  v2 = v19;
                  if (v20 <= 0x3F)
                  {
                    sub_18EFBDB20(319, &qword_1ED5FD2A8, type metadata accessor for LNActionOutputFlags, MEMORY[0x1E69E6720]);
                    v2 = v21;
                    if (v22 <= 0x3F)
                    {
                      sub_18EFBDB20(319, &qword_1ED5FD3D0, _s14CodableWrapperVMa_10, MEMORY[0x1E69E62F8]);
                      v2 = v23;
                      if (v24 <= 0x3F)
                      {
                        sub_18EFBDAD4(319, &unk_1ED5FD438, &qword_1EACB7428);
                        v2 = v25;
                        if (v26 <= 0x3F)
                        {
                          sub_18EFBE974(319, &qword_1ED5FD450, &unk_1EACB77D8, &qword_18F09CD58, sub_18F01440C);
                          v2 = v27;
                          if (v28 <= 0x3F)
                          {
                            sub_18EF802BC(319, &qword_1ED5FD2A0, &_s14CodableWrapperON_1, MEMORY[0x1E69E6720]);
                            v2 = v29;
                            if (v30 <= 0x3F)
                            {
                              sub_18EFBDAD4(319, &unk_1ED5FD418, &qword_1EACB7450);
                              v2 = v31;
                              if (v32 <= 0x3F)
                              {
                                sub_18EFBDAD4(319, &unk_1ED5FD710, &qword_1EACB7470);
                                v2 = v33;
                                if (v34 <= 0x3F)
                                {
                                  sub_18EFBDAD4(319, &qword_1ED5FD6C8, &qword_1EACB7488);
                                  v2 = v35;
                                  if (v36 <= 0x3F)
                                  {
                                    sub_18EF802BC(319, &unk_1ED5FD2B0, &_s14CodableWrapperVN_10, MEMORY[0x1E69E6720]);
                                    v2 = v37;
                                    if (v38 <= 0x3F)
                                    {
                                      sub_18EFBDAD4(319, &unk_1ED5FD6B8, &qword_1EACB74A8);
                                      v2 = v39;
                                      if (v40 <= 0x3F)
                                      {
                                        sub_18EFBDAD4(319, &qword_1ED5FD3E0, &qword_1EACB74C0);
                                        v2 = v41;
                                        if (v42 <= 0x3F)
                                        {
                                          sub_18EF802BC(319, &qword_1ED5FD698, &_s14CodableWrapperVN_5, MEMORY[0x1E69E6720]);
                                          v2 = v43;
                                          if (v44 <= 0x3F)
                                          {
                                            sub_18EFBDAD4(319, &qword_1ED5FD140, &qword_1EACB74E0);
                                            v2 = v45;
                                            if (v46 <= 0x3F)
                                            {
                                              sub_18EFBDAD4(319, &unk_1ED5FD1F8, &qword_1EACB74F8);
                                              v2 = v47;
                                              if (v48 <= 0x3F)
                                              {
                                                type metadata accessor for LNActionPresentationStyle(319);
                                                v2 = v49;
                                                if (v50 <= 0x3F)
                                                {
                                                  sub_18EFBDB20(319, &unk_1ED5FD3B0, type metadata accessor for LNSystemProtocolIdentifier, MEMORY[0x1E69E62F8]);
                                                  v2 = v51;
                                                  if (v52 <= 0x3F)
                                                  {
                                                    swift_cvw_initStructMetadataWithLayoutString();
                                                    return 0;
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void *sub_18EFBD04C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7A60, &qword_18F0A0BB0);
  v5 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v20 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFBC950();
  sub_18F09459C();
  if (v2)
  {
    v66 = v2;
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    LODWORD(v37) = 0;
  }

  else
  {
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7A70, &qword_18F0A0BB8);
    LOBYTE(v38[0]) = 0;
    sub_18EFBBD74();
    sub_18F0942CC();
    v36 = v39;
    LOBYTE(v39) = 1;
    v23 = sub_18F09423C();
    v35 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7A78, &qword_18F0A0BC0);
    LOBYTE(v38[0]) = 2;
    sub_18EFC47B4();
    sub_18F09426C();
    v34 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7A80, &qword_18F0A0BC8);
    LOBYTE(v38[0]) = 3;
    sub_18EFC491C();
    sub_18F0942CC();
    v33 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7A88, &qword_18F0A0BD0);
    LOBYTE(v38[0]) = 4;
    sub_18EFC4698();
    sub_18F0942CC();
    v32 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7A90, &qword_18F0A0BD8);
    LOBYTE(v38[0]) = 5;
    sub_18EFC4868();
    sub_18F0942CC();
    v31 = v39;
    type metadata accessor for LNShortcutTileColor(0);
    LOBYTE(v38[0]) = 6;
    sub_18EF8558C(&unk_1ED5FEAE8);
    sub_18F09426C();
    v22 = v39;
    v65 = v40;
    type metadata accessor for LNBundleMetadataVersion(0);
    LOBYTE(v38[0]) = 7;
    sub_18EF8558C(&unk_1ED5FEA50);
    sub_18F09426C();
    v11 = v39;
    v63 = v40;
    LOBYTE(v38[0]) = 8;
    sub_18EFC53C4();
    sub_18F09426C();
    v27 = v39;
    v28 = v40;
    v29 = v42;
    v30 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7AA0, &qword_18F0A0BE0);
    LOBYTE(v38[0]) = 9;
    sub_18EFC4A38();
    sub_18F09426C();
    v66 = 0;
    v26 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7AA8, &qword_18F0A0BE8);
    LOBYTE(v38[0]) = 10;
    sub_18F016700();
    v12 = v66;
    sub_18F09426C();
    v66 = v12;
    if (v12)
    {
      (*(v5 + 8))(v7, v37);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v13 = 0;
      LODWORD(v37) = 0;
    }

    else
    {
      v25 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7AB0, &qword_18F0A0BF0);
      LOBYTE(v38[0]) = 11;
      sub_18F016784();
      v14 = v66;
      sub_18F09426C();
      v66 = v14;
      if (v14)
      {
        (*(v5 + 8))(v7, v37);
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        LODWORD(v37) = 0;
        v13 = 1;
      }

      else
      {
        v24 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7AB8, &qword_18F0A0BF8);
        v60 = 12;
        sub_18F016808();
        v15 = v66;
        sub_18F09426C();
        v66 = v15;
        if (!v15)
        {
          (*(v5 + 8))(v7, v37);
          v21 = v61;
          v16 = v23;
          v38[0] = v36;
          v38[1] = v23;
          v38[2] = v35;
          v38[3] = v34;
          v38[4] = v33;
          v38[5] = v32;
          v38[6] = v31;
          v38[7] = v22;
          LODWORD(v37) = v65;
          LOBYTE(v38[8]) = v65;
          *(&v38[8] + 1) = *v64;
          HIDWORD(v38[8]) = *&v64[3];
          v38[9] = v11;
          HIDWORD(v20) = v63;
          LOBYTE(v38[10]) = v63;
          HIDWORD(v38[10]) = *&v62[3];
          *(&v38[10] + 1) = *v62;
          v17 = v27;
          v18 = v28;
          v38[11] = v27;
          v38[12] = v28;
          v19 = v29;
          v38[13] = v30;
          v38[14] = v29;
          v38[15] = v26;
          v38[16] = v25;
          v38[17] = v24;
          v38[18] = v61;
          sub_18EFC5524(v38, &v39);
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
          v39 = v36;
          v40 = v16;
          v41 = v35;
          v42 = v34;
          v43 = v33;
          v44 = v32;
          v45 = v31;
          v46 = v22;
          v47 = v37;
          *v48 = *v64;
          *&v48[3] = *&v64[3];
          v49 = v11;
          v50 = BYTE4(v20);
          *v51 = *v62;
          *&v51[3] = *&v62[3];
          v52 = v17;
          v53 = v18;
          v54 = v30;
          v55 = v19;
          v56 = v26;
          v57 = v25;
          v58 = v24;
          v59 = v21;
          sub_18EFC4784(&v39);
          return memcpy(v8, v38, 0x98uLL);
        }

        (*(v5 + 8))(v7, v37);
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        v13 = 1;
        LODWORD(v37) = 1;
      }
    }

    sub_18F0166BC(v27, v28);

    if (v13)
    {

      if ((v37 & 1) == 0)
      {
        return result;
      }
    }
  }

  if (!v37)
  {
    return result;
  }
}

void sub_18EFBDAD4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = OUTLINED_FUNCTION_269(0, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_142();
    v6 = sub_18F093F3C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_18EFBDB20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_271();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_18EFBDB80(uint64_t a1)
{
  type metadata accessor for LNEffectiveBundleIdentifierType(319);
  if (v1 <= 0x3F)
  {
    sub_18EFBDB20(319, &qword_1ED5FF548, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18EFBDC3C(uint64_t a1)
{
  sub_18EF802BC(319, &unk_1ED5FD7E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_18EFBDB20(319, &qword_1ED5FF548, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_18EFBDB20(319, &unk_1ED5FF4B0, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_18EFBDAD4(319, &qword_1EACB78A8, &qword_1EACB78B0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_18EFBDDDC(uint64_t a1)
{
  _s14CodableWrapperVMa_0(319);
  if (v1 <= 0x3F)
  {
    sub_18EFBDB20(319, &qword_1ED5FF358, _s14CodableWrapperVMa_2, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_18EFBDB20(319, &unk_1ED5FD3A0, _s14CodableWrapperVMa_0, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_18EFBDB20(319, &qword_1ED5FF4D8, _s14CodableWrapperVMa_0, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_18EFBDB20(319, &unk_1ED5FEAD0, _s14CodableWrapperVMa_5, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_18EFBDF68(uint64_t a1)
{
  v1 = _s14CodableWrapperVMa_0(319);
  if (v2 <= 0x3F)
  {
    sub_18EFBDB20(319, &qword_1ED5FF4D8, _s14CodableWrapperVMa_0, MEMORY[0x1E69E6720]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_18EFBDB20(319, &unk_1ED5FF330, _s14CodableWrapperOMa, MEMORY[0x1E69E6720]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_18EFBDAD4(319, &qword_1ED5FD7E0, &unk_1EACB75C0);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_18EFBE0AC(uint64_t a1)
{
  sub_18EFBE15C(319);
  if (v1 <= 0x3F)
  {
    sub_18F014E34(319);
    if (v2 <= 0x3F)
    {
      sub_18EFBE228(319);
      if (v3 <= 0x3F)
      {
        sub_18F014EAC(319);
        if (v4 <= 0x3F)
        {
          sub_18EFBE340(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_18EFBE15C(uint64_t a1)
{
  if (!qword_1ED5FD5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7838, &qword_18F09DA10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB7840, &qword_18F09DA18);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED5FD5E0);
    }
  }
}

void sub_18EFBE228(uint64_t a1)
{
  if (!qword_1ED5FD618)
  {
    MEMORY[0x1EEE9AC00](0);
    sub_18F0932BC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB7840, &qword_18F09DA18);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED5FD618);
    }
  }
}

void sub_18EFBE340(uint64_t a1)
{
  if (!qword_1ED5FD5A8)
  {
    type metadata accessor for LNImageISIconType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED5FD5A8);
    }
  }
}

uint64_t sub_18EFBE3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_18EFBE45C(uint64_t a1)
{
  sub_18EFBDB20(319, &unk_1ED5FEA08, _s14CodableWrapperVMa_6, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_18EFBDB20(319, &unk_1ED5FD030, _s14CodableWrapperVMa_7, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18EFBE540(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  v16 = MEMORY[0x1E69E6158];
  sub_18EFBDB20(319, a4, a5, MEMORY[0x1E69E6720]);
  if (v6 <= 0x3F)
  {
    OUTLINED_FUNCTION_274(v5, v6, v7, v8, v9, v10, v11, v12, v13, *v14, *&v14[4], 0, v15, v16, v17);
  }
}

void sub_18EFBE5D8()
{
  v0 = _s14CodableWrapperVMa_0(319);
  if (v1 <= 0x3F)
  {
    v13 = v0;
    sub_18EF802BC(319, &unk_1ED5FD7E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_274(v2, v3, v4, v5, v6, v7, v8, v9, v10, *v11, *&v11[4], 0, v12, v13, v14);
    }
  }
}

unint64_t sub_18EFBE6B0()
{
  result = qword_1ED5FD428;
  if (!qword_1ED5FD428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB7880, &qword_18F09DA80);
    sub_18EF8558C(&unk_1ED5FD4D0);
    sub_18EF8558C(&unk_1ED5FD258);
    sub_18EFBE7AC();
    sub_18EFBE800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD428);
  }

  return result;
}

unint64_t sub_18EFBE7AC()
{
  result = qword_1ED5FF320;
  if (!qword_1ED5FF320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF320);
  }

  return result;
}

unint64_t sub_18EFBE800()
{
  result = qword_1ED5FD468;
  if (!qword_1ED5FD468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD468);
  }

  return result;
}

uint64_t sub_18EFBE864(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18EFBE8F4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_18EFBE974(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    v7 = OUTLINED_FUNCTION_269(0, a2, a3);
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a5();
    v10 = OUTLINED_FUNCTION_270();
    v13 = type metadata accessor for CompactDictionary(v10, v9, v11, v12);
    if (!v14)
    {
      atomic_store(v13, a2);
    }
  }
}

unint64_t sub_18EFBE9DC()
{
  result = qword_1ED5FED90;
  if (!qword_1ED5FED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FED90);
  }

  return result;
}

unint64_t sub_18EFBEA30()
{
  result = qword_1ED5FD740;
  if (!qword_1ED5FD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD740);
  }

  return result;
}

uint64_t sub_18EFBEA84(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18EFBEB58(uint64_t a1)
{
  sub_18EF802BC(319, &unk_1ED5FD7E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_18EFBDB20(319, &qword_1ED5FF4D8, _s14CodableWrapperVMa_0, MEMORY[0x1E69E6720]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_18EF802BC(319, &unk_1ED5FD3C0, &_s14CodableWrapperVN_2, MEMORY[0x1E69E62F8]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_18EFBE974(319, &unk_1ED5FD458, &unk_1EACB7880, &qword_18F09DA80, sub_18EFBE6B0);
    if (v7 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for LNActionParameterMetadataDynamicOptionsSupport(319);
    if (v8 > 0x3F)
    {
      return v4;
    }

    sub_18EFBDB20(319, &qword_1ED5FD240, type metadata accessor for LNActionParameterMetadataInputConnectionBehavior, MEMORY[0x1E69E6720]);
    if (v9 > 0x3F)
    {
      return v4;
    }

    sub_18EFBDB20(319, &unk_1ED5FD248, type metadata accessor for LNActionParameterMetadataCapabilities, MEMORY[0x1E69E6720]);
    if (v10 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

unint64_t sub_18EFBED88()
{
  result = qword_1ED5FD448;
  if (!qword_1ED5FD448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7428, &qword_18F09BD98);
    sub_18EF8558C(&unk_1ED5FF178);
    sub_18EF8558C(&unk_1ED5FD268);
    sub_18EFBE9DC();
    sub_18EFBEA30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD448);
  }

  return result;
}

void sub_18EFBEEE4(uint64_t a1)
{
  sub_18EF802BC(319, &unk_1ED5FD7E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_18EFBDB20(319, &qword_1ED5FF4D8, _s14CodableWrapperVMa_0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_18EFBEFDC()
{
  result = qword_1ED5FF240;
  if (!qword_1ED5FF240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF240);
  }

  return result;
}

unint64_t sub_18EFBF030()
{
  result = qword_1ED5FF248;
  if (!qword_1ED5FF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF248);
  }

  return result;
}

unint64_t sub_18EFBF088()
{
  result = qword_1ED5FF510;
  if (!qword_1ED5FF510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF510);
  }

  return result;
}

unint64_t sub_18EFBF0E0()
{
  result = qword_1ED5FF508;
  if (!qword_1ED5FF508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF508);
  }

  return result;
}

unint64_t sub_18EFBF13C()
{
  result = qword_1ED5FE308;
  if (!qword_1ED5FE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE308);
  }

  return result;
}

unint64_t sub_18EFBF1B8()
{
  result = qword_1ED5FE300;
  if (!qword_1ED5FE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE300);
  }

  return result;
}

unint64_t sub_18EFBF214(char a1)
{
  result = 0x736E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0x726F68536F747561;
      break;
    case 3:
      result = 0x7365697469746E65;
      break;
    case 4:
      result = 0x73656972657571;
      break;
    case 5:
      result = 0x736D756E65;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x6E6F6973726576;
      break;
    case 8:
      result = 0x6F746172656E6567;
      break;
    case 9:
      result = 0x657669746167656ELL;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD00000000000001ELL;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *_s14CodableWrapperV10CodingKeysOwst_7(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
        JUMPOUT(0x18EFBF498);
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t _s14CodableWrapperV10CodingKeysOwet_7(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18EFBF5A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72F8, &qword_18F09BD38);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v16 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8E98, &qword_18F0A7D40);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = _s14CodableWrapperVMa_20(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s19BasicCodableWrapperOMa(0);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFBF918();
  sub_18F09459C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_18EF933AC(v11, &unk_1EACB72F8);
  }

  else
  {
    v13 = v18;
    v24 = 0;
    sub_18EF8558C(&unk_1ED5FE008);
    v14 = v19;
    sub_18F09426C();
    sub_18EF872D4();
    v23 = 1;
    v11[*(v9 + 20)] = sub_18F09424C();
    v22 = 2;
    sub_18EF9561C();
    sub_18F0942CC();
    (*(v13 + 8))(v8, v14);
    *&v11[*(v9 + 24)] = v21;
    sub_18EF86A14(v11, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_18EF86A6C();
  }
}

unint64_t sub_18EFBF918()
{
  result = qword_1ED5FD4C0;
  if (!qword_1ED5FD4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD4C0);
  }

  return result;
}

uint64_t sub_18EFBF974(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x6C75616665447369;
  }

  return 0x72756769666E6F63;
}

uint64_t sub_18EFBF9E0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8DB8, &qword_18F0A7CB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFC4340();
  sub_18F09459C();
  if (!v1)
  {
    v9[31] = 0;
    v7 = sub_18F09427C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8CB8, &qword_18F0A7C20);
    v9[15] = 1;
    sub_18EFC41DC();
    sub_18F0942CC();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_18EFBFC00()
{
  result = qword_1ED5FE030;
  if (!qword_1ED5FE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE030);
  }

  return result;
}

id sub_18EFBFC64()
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_138();
  sub_18F0939FC();
  OUTLINED_FUNCTION_272();
  v2 = sub_18F093DBC();

  v3 = [v0 initWithSupportedContentTypes_];

  return v3;
}

unint64_t sub_18EFBFCD4()
{
  result = qword_1EACB6ED0;
  if (!qword_1EACB6ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EACB6ED0);
  }

  return result;
}

unint64_t sub_18EFBFD40()
{
  result = qword_1ED5FE6F8;
  if (!qword_1ED5FE6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE6F8);
  }

  return result;
}

unint64_t sub_18EFBFD94()
{
  result = qword_1ED5FE688;
  if (!qword_1ED5FE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE688);
  }

  return result;
}

unint64_t sub_18EFBFDF8()
{
  result = qword_1ED5FDA30;
  if (!qword_1ED5FDA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA30);
  }

  return result;
}

unint64_t sub_18EFBFE54()
{
  result = qword_1ED5FDA90;
  if (!qword_1ED5FDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA90);
  }

  return result;
}

unint64_t sub_18EFBFEAC()
{
  result = qword_1ED5FDA98;
  if (!qword_1ED5FDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA98);
  }

  return result;
}

unint64_t sub_18EFBFF10()
{
  result = qword_1ED5FDA40;
  if (!qword_1ED5FDA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA40);
  }

  return result;
}

unint64_t sub_18EFBFF68()
{
  result = qword_1ED5FDA48;
  if (!qword_1ED5FDA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA48);
  }

  return result;
}

unint64_t sub_18EFBFFBC()
{
  result = qword_1ED5FDA60;
  if (!qword_1ED5FDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA60);
  }

  return result;
}

unint64_t sub_18EFC0014()
{
  result = qword_1ED5FDA58;
  if (!qword_1ED5FDA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA58);
  }

  return result;
}

unint64_t sub_18EFC0070()
{
  result = qword_1ED5FDAA8;
  if (!qword_1ED5FDAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDAA8);
  }

  return result;
}

unint64_t sub_18EFC0104()
{
  result = qword_1ED5FDA38;
  if (!qword_1ED5FDA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA38);
  }

  return result;
}

unint64_t sub_18EFC0168()
{
  result = qword_1ED5FDA70;
  if (!qword_1ED5FDA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA70);
  }

  return result;
}

unint64_t sub_18EFC01C0()
{
  result = qword_1ED5FDA78;
  if (!qword_1ED5FDA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA78);
  }

  return result;
}

unint64_t sub_18EFC023C()
{
  result = qword_1ED5FDAA0;
  if (!qword_1ED5FDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDAA0);
  }

  return result;
}

unint64_t sub_18EFC02B8()
{
  result = qword_1ED5FDAB8;
  if (!qword_1ED5FDAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDAB8);
  }

  return result;
}

unint64_t sub_18EFC0320()
{
  result = qword_1ED5FDA80;
  if (!qword_1ED5FDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA80);
  }

  return result;
}

unint64_t sub_18EFC0378()
{
  result = qword_1ED5FDA88;
  if (!qword_1ED5FDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA88);
  }

  return result;
}

unint64_t sub_18EFC03E4()
{
  result = qword_1ED5FDAB0;
  if (!qword_1ED5FDAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDAB0);
  }

  return result;
}

unint64_t sub_18EFC044C()
{
  result = qword_1ED5FDAC0;
  if (!qword_1ED5FDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDAC0);
  }

  return result;
}

unint64_t sub_18EFC04A4()
{
  result = qword_1ED5FDAC8;
  if (!qword_1ED5FDAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDAC8);
  }

  return result;
}

unint64_t sub_18EFC04F8()
{
  result = qword_1ED5FDAD0;
  if (!qword_1ED5FDAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDAD0);
  }

  return result;
}

uint64_t sub_18EFC054C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_18EFC0574(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_18EFC0574(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7630441 && a2 == 0xE300000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C62756F64 && a2 == 0xE600000000000000;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1819242338 && a2 == 0xE400000000000000;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746172656D756E65 && a2 == 0xEB000000006E6F69;
          if (v9 || (sub_18F09444C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7961727261 && a2 == 0xE500000000000000;
            if (v10 || (sub_18F09444C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
              if (v11 || (sub_18F09444C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000010 && 0x800000018F0AC5B0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_18F09444C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_18EFC07E8()
{
  result = qword_1ED5FD748;
  if (!qword_1ED5FD748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD748);
  }

  return result;
}

unint64_t sub_18EFC083C()
{
  result = qword_1ED5FD630;
  if (!qword_1ED5FD630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD630);
  }

  return result;
}

uint64_t sub_18EFC0890@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8468, &qword_18F0A1128);
  v135 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v150 = &v120 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8470, &qword_18F0A1130);
  v5 = *(v4 - 8);
  v143 = v4;
  v144 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v153 = &v120 - v6;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8478, &qword_18F0A1138);
  v137 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v157 = &v120 - v7;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8480, &qword_18F0A1140);
  v136 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v149 = &v120 - v8;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8488, &qword_18F0A1148);
  v134 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v156 = &v120 - v9;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8490, &qword_18F0A1150);
  v133 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v152 = &v120 - v10;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8498, &qword_18F0A1158);
  v132 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v148 = &v120 - v11;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84A0, &qword_18F0A1160);
  v131 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v151 = &v120 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84A8, &qword_18F0A1168);
  v154 = *(v13 - 8);
  v155 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v120 - v14;
  v158 = _s19BasicCodableWrapperOMa(0);
  v16 = MEMORY[0x1EEE9AC00](v158);
  v127 = (&v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v16);
  v129 = &v120 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v139 = &v120 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v128 = (&v120 - v23);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v120 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v120 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v120 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v120 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v120 - v36;
  v38 = a1[3];
  v160 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v38);
  sub_18EFC04F8();
  v159 = v15;
  v39 = v161;
  sub_18F09459C();
  if (v39)
  {
    goto LABEL_11;
  }

  v124 = v32;
  v125 = v29;
  v123 = v26;
  v126 = v35;
  v40 = v156;
  v41 = v157;
  v161 = v37;
  v42 = v155;
  v43 = v159;
  v44 = sub_18F0942EC();
  sub_18EF89690(v44, 0);
  if (v47 == v48 >> 1)
  {
    v49 = v158;
LABEL_10:
    v63 = sub_18F0940BC();
    swift_allocError();
    v65 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F98, &qword_18F0A0E80);
    *v65 = v49;
    sub_18F09422C();
    sub_18F0940AC();
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x1E69E6AF8], v63);
    swift_willThrow();
    swift_unknownObjectRelease();
    v154[1](v43, v42);
LABEL_11:
    v66 = v160;
    return __swift_destroy_boxed_opaque_existential_1Tm(v66);
  }

  v50 = v46;
  v122 = 0;
  v51 = v48 >> 1;
  v49 = v158;
  if (v47 < (v48 >> 1))
  {
    v121 = *(v50 + v47);
    sub_18F019378(v47 + 1, v51, v45, v50, v47, v48);
    v53 = v52;
    v55 = v54;
    swift_unknownObjectRelease();
    v56 = v53 == v55 >> 1;
    v57 = v161;
    if (v56)
    {
      v58 = v122;
      switch(v121)
      {
        case 1:
          v162 = 1;
          sub_18F0199A4();
          v82 = v148;
          v59 = v159;
          sub_18F09421C();
          if (v58)
          {
            goto LABEL_26;
          }

          v162 = 0;
          v83 = v140;
          sub_18F09429C();
          v84 = v154;
          v104 = v103;
          v157 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84F8, &qword_18F0A1198) + 48);
          *v124 = v104;
          _s14CodableWrapperVMa_2(0);
          v162 = 1;
          sub_18EF8558C(&unk_1ED5FE420);
          sub_18F09426C();
          v105 = v132;
          swift_unknownObjectRelease();
          (*(v105 + 8))(v82, v83);
          v84[1](v159, v42);
          v110 = v124;
          goto LABEL_29;
        case 2:
          v162 = 2;
          sub_18F019950();
          v59 = v159;
          sub_18F09421C();
          if (v58)
          {
            goto LABEL_26;
          }

          v162 = 0;
          v72 = v141;
          v73 = sub_18F09428C();
          v74 = v154;
          v75 = v73;
          v157 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84E8, &qword_18F0A1190) + 48);
          *v125 = v75 & 1;
          _s14CodableWrapperVMa_2(0);
          v162 = 1;
          sub_18EF8558C(&unk_1ED5FE420);
          v76 = v152;
          sub_18F09426C();
          swift_unknownObjectRelease();
          (*(v133 + 8))(v76, v72);
          v74[1](v159, v42);
          v110 = v125;
LABEL_29:
          swift_storeEnumTagMultiPayload();
          v116 = v110;
          goto LABEL_31;
        case 3:
          v162 = 3;
          sub_18F0198FC();
          v59 = v159;
          sub_18F09421C();
          if (v58)
          {
            goto LABEL_26;
          }

          v162 = 0;
          v77 = sub_18F09427C();
          v78 = v40;
          v79 = v154;
          v91 = v77;
          v93 = v92;
          v157 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB84D8, &qword_18F0A1188) + 48);
          v87 = v123;
          *v123 = v91;
          v87[1] = v93;
          v153 = v93;
          _s14CodableWrapperVMa_2(0);
          v162 = 1;
          sub_18EF8558C(&unk_1ED5FE420);
          v94 = v147;
          sub_18F09426C();
          swift_unknownObjectRelease();
          (*(v134 + 8))(v78, v94);
          v79[1](v159, v42);
          goto LABEL_30;
        case 4:
          v162 = 4;
          sub_18EFC083C();
          v68 = v149;
          v59 = v159;
          sub_18F09421C();
          if (v58)
          {
            goto LABEL_26;
          }

          v162 = 0;
          v69 = v68;
          v70 = sub_18F09427C();
          v71 = v154;
          v87 = v128;
          *v128 = v70;
          v87[1] = v88;
          v162 = 1;
          v89 = v88;
          v90 = sub_18F09427C();
          v156 = v89;
          v106 = v90;
          v108 = v107;
          v157 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB84C8, &qword_18F0A1180) + 64);
          v87[2] = v106;
          v87[3] = v108;
          v109 = v145;
          v153 = v108;
          _s14CodableWrapperVMa_2(0);
          v162 = 2;
          sub_18EF8558C(&unk_1ED5FE420);
          sub_18F09426C();
          swift_unknownObjectRelease();
          (*(v136 + 8))(v69, v109);
          v71[1](v159, v42);
          goto LABEL_30;
        case 5:
          v162 = 5;
          sub_18EFC07E8();
          v59 = v159;
          sub_18F09421C();
          if (v58)
          {
            goto LABEL_26;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7898, &qword_18F09DC48);
          v162 = 0;
          sub_18EFC2360();
          v87 = v139;
          sub_18F0942CC();
          v85 = v154;
          v162 = 1;
          sub_18EF8882C();
          sub_18F0942CC();
          v156 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB84B8, &qword_18F0A1178) + 64);
          v153 = _s14CodableWrapperVMa_2(0);
          v162 = 2;
          sub_18EF8558C(&unk_1ED5FE420);
          sub_18F09426C();
          swift_unknownObjectRelease();
          (*(v137 + 8))(v41, v146);
          v85[1](v159, v42);
LABEL_30:
          swift_storeEnumTagMultiPayload();
          v116 = v87;
LABEL_31:
          v115 = v160;
          goto LABEL_32;
        case 6:
          v162 = 6;
          sub_18F019854();
          v59 = v159;
          sub_18F09421C();
          if (v58)
          {
            goto LABEL_26;
          }

          v162 = 0;
          v38 = v143;
          v86 = sub_18F09428C();
          v41 = v154;
          *v129 = v86 & 1;
          v162 = 1;
          sub_18F0198A8();
          v37 = v153;
          sub_18F0942CC();
          v162 = 2;
          sub_18EF8882C();
          sub_18F0942CC();
          v162 = 3;
          v45 = sub_18F09423C();
          goto LABEL_34;
        case 7:
          v162 = 7;
          sub_18F019800();
          v80 = v150;
          v59 = v159;
          sub_18F09421C();
          if (v58)
          {
            goto LABEL_26;
          }

          v162 = 0;
          v81 = v142;
          v95 = sub_18F09427C();
          v97 = v96;
          v162 = 1;
          v98 = sub_18F09427C();
          v99 = (v135 + 8);
          v100 = v154 + 1;
          v157 = v98;
          v112 = v111;
          swift_unknownObjectRelease();
          (*v99)(v80, v81);
          (*v100)(v159, v42);
          v113 = v127;
          *v127 = v95;
          v113[1] = v97;
          v113[2] = v157;
          v113[3] = v112;
          swift_storeEnumTagMultiPayload();
          v116 = v113;
          goto LABEL_28;
        default:
          v162 = 0;
          sub_18F0199F8();
          v59 = v159;
          sub_18F09421C();
          if (!v58)
          {
            v162 = 0;
            v60 = v138;
            v61 = sub_18F0942AC();
            v62 = v154;
            v101 = v61;
            v157 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8508, &qword_18F0A11A0) + 48);
            *v126 = v101;
            _s14CodableWrapperVMa_2(0);
            v162 = 1;
            sub_18EF8558C(&unk_1ED5FE420);
            v102 = v151;
            sub_18F09426C();
            swift_unknownObjectRelease();
            (*(v131 + 8))(v102, v60);
            v62[1](v159, v42);
            v114 = v126;
            swift_storeEnumTagMultiPayload();
            v115 = v160;
            v116 = v114;
            goto LABEL_32;
          }

LABEL_26:
          v154[1](v59, v42);
          swift_unknownObjectRelease();
          break;
      }

      goto LABEL_11;
    }

    v43 = v159;
    goto LABEL_10;
  }

  __break(1u);
LABEL_34:
  v117 = v45;
  v118 = v51;
  v157 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84B0, &qword_18F0A1170) + 96);
  v119 = v129;
  *(v129 + 7) = v117;
  *(v119 + 8) = v118;
  _s14CodableWrapperVMa_2(0);
  v162 = 4;
  sub_18EF8558C(&unk_1ED5FE420);
  sub_18F09426C();
  swift_unknownObjectRelease();
  (*(v144 + 8))(v37, v38);
  (*(v41 + 1))(v159, v42);
  swift_storeEnumTagMultiPayload();
  v116 = v119;
LABEL_28:
  v115 = v160;
  v57 = v161;
LABEL_32:
  sub_18EF88240(v116, v57);
  sub_18EF88240(v57, v130);
  v66 = v115;
  return __swift_destroy_boxed_opaque_existential_1Tm(v66);
}

unint64_t sub_18EFC2270(char a1)
{
  result = 7630441;
  switch(a1)
  {
    case 1:
      result = 0x656C62756F64;
      break;
    case 2:
      result = 1819242338;
      break;
    case 3:
      result = 0x676E69727473;
      break;
    case 4:
      result = 0x746172656D756E65;
      break;
    case 5:
      result = 0x7961727261;
      break;
    case 6:
      result = 0x797469746E65;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_18EFC2360()
{
  result = qword_1ED5FD7D0;
  if (!qword_1ED5FD7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7898, &qword_18F09DC48);
    sub_18EF8558C(&unk_1ED5FE008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD7D0);
  }

  return result;
}

uint64_t sub_18EFC241C(char a1)
{
  if (!a1)
  {
    return 0x7365756C6176;
  }

  if (a1 == 1)
  {
    return 0x70795465756C6176;
  }

  return 0xD000000000000015;
}

uint64_t sub_18EFC2480(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x696669746E656469;
  }

  return 0xD000000000000015;
}

unint64_t sub_18EFC2500()
{
  result = qword_1ED5FF460;
  if (!qword_1ED5FF460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF460);
  }

  return result;
}

unint64_t sub_18EFC2554()
{
  result = qword_1ED5FF468;
  if (!qword_1ED5FF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF468);
  }

  return result;
}

unint64_t sub_18EFC25A8()
{
  result = qword_1ED5FE028;
  if (!qword_1ED5FE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE028);
  }

  return result;
}

uint64_t sub_18EFC25FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_18EFC2698()
{
  result = qword_1ED5FF420;
  if (!qword_1ED5FF420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF420);
  }

  return result;
}

unint64_t sub_18EFC26F0()
{
  result = qword_1ED5FF1C0;
  if (!qword_1ED5FF1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF1C0);
  }

  return result;
}

unint64_t sub_18EFC2748()
{
  result = qword_1ED5FF1C8;
  if (!qword_1ED5FF1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF1C8);
  }

  return result;
}

unint64_t sub_18EFC279C()
{
  result = qword_1ED5FF400;
  if (!qword_1ED5FF400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF400);
  }

  return result;
}

unint64_t sub_18EFC27F0()
{
  result = qword_1ED5FEC98[0];
  if (!qword_1ED5FEC98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED5FEC98);
  }

  return result;
}

unint64_t sub_18EFC2844()
{
  result = qword_1ED5FEC08;
  if (!qword_1ED5FEC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEC08);
  }

  return result;
}

unint64_t sub_18EFC28AC()
{
  result = qword_1ED5FEC50;
  if (!qword_1ED5FEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEC50);
  }

  return result;
}

unint64_t sub_18EFC2904()
{
  result = qword_1ED5FEC58;
  if (!qword_1ED5FEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEC58);
  }

  return result;
}

unint64_t sub_18EFC296C()
{
  result = qword_1ED5FF0B0;
  if (!qword_1ED5FF0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF0B0);
  }

  return result;
}

unint64_t sub_18EFC29C4()
{
  result = qword_1ED5FF0B8;
  if (!qword_1ED5FF0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF0B8);
  }

  return result;
}

unint64_t sub_18EFC2A2C()
{
  result = qword_1ED5FE748;
  if (!qword_1ED5FE748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE748);
  }

  return result;
}

unint64_t sub_18EFC2A84()
{
  result = qword_1ED5FE750;
  if (!qword_1ED5FE750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE750);
  }

  return result;
}

unint64_t sub_18EFC2AE8()
{
  result = qword_1ED5FF0A0;
  if (!qword_1ED5FF0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FF0A0);
  }

  return result;
}

unint64_t sub_18EFC2B50()
{
  result = qword_1ED5FE208;
  if (!qword_1ED5FE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE208);
  }

  return result;
}

unint64_t sub_18EFC2BA8()
{
  result = qword_1ED5FE210;
  if (!qword_1ED5FE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE210);
  }

  return result;
}

unint64_t sub_18EFC2C18()
{
  result = qword_1ED5FDFD0;
  if (!qword_1ED5FDFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDFD0);
  }

  return result;
}

unint64_t sub_18EFC2C6C()
{
  result = qword_1ED5FDD00;
  if (!qword_1ED5FDD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDD00);
  }

  return result;
}

unint64_t sub_18EFC2CC0()
{
  result = qword_1ED5FDFD8;
  if (!qword_1ED5FDFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDFD8);
  }

  return result;
}

unint64_t sub_18EFC2D14()
{
  result = qword_1ED5FDCF8;
  if (!qword_1ED5FDCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDCF8);
  }

  return result;
}

unint64_t sub_18EFC2D90()
{
  result = qword_1ED5FDC40;
  if (!qword_1ED5FDC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDC40);
  }

  return result;
}

unint64_t sub_18EFC2DE4()
{
  result = qword_1ED5FDC48;
  if (!qword_1ED5FDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDC48);
  }

  return result;
}

void sub_18EFC2E58(uint64_t a1)
{
  sub_18EF802BC(319, &unk_1ED5FD1B8, &_s14CodableWrapperVN_8, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_18EFBDB20(319, &qword_1ED5FF548, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_18EF802BC(319, &unk_1ED5FD7E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_18EF802BC(319, &unk_1ED5FD210, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_18EFC2FBC()
{
  result = qword_1ED5FDC88;
  if (!qword_1ED5FDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDC88);
  }

  return result;
}

unint64_t sub_18EFC3014()
{
  result = qword_1ED5FDC90;
  if (!qword_1ED5FDC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDC90);
  }

  return result;
}

unint64_t sub_18EFC307C()
{
  result = qword_1ED5FDB68;
  if (!qword_1ED5FDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDB68);
  }

  return result;
}

unint64_t sub_18EFC30D4()
{
  result = qword_1ED5FDB60;
  if (!qword_1ED5FDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDB60);
  }

  return result;
}

unint64_t sub_18EFC3150()
{
  result = qword_1ED5FE698;
  if (!qword_1ED5FE698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE698);
  }

  return result;
}

unint64_t sub_18EFC31A4()
{
  result = qword_1ED5FE5F8;
  if (!qword_1ED5FE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE5F8);
  }

  return result;
}

unint64_t sub_18EFC31F8()
{
  result = qword_1ED5FE690;
  if (!qword_1ED5FE690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE690);
  }

  return result;
}

unint64_t sub_18EFC324C()
{
  result = qword_1ED5FE6C0;
  if (!qword_1ED5FE6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE6C0);
  }

  return result;
}

unint64_t sub_18EFC32A0()
{
  result = qword_1ED5FE618;
  if (!qword_1ED5FE618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE618);
  }

  return result;
}

unint64_t sub_18EFC32F4()
{
  result = qword_1ED5FE6A8;
  if (!qword_1ED5FE6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE6A8);
  }

  return result;
}

unint64_t sub_18EFC3388()
{
  result = qword_1ED5FE620;
  if (!qword_1ED5FE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE620);
  }

  return result;
}

unint64_t sub_18EFC33DC()
{
  result = qword_1ED5FE678;
  if (!qword_1ED5FE678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE678);
  }

  return result;
}

unint64_t sub_18EFC3430()
{
  result = qword_1ED5FDA08;
  if (!qword_1ED5FDA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA08);
  }

  return result;
}

unint64_t sub_18EFC3490()
{
  result = qword_1ED5FE6B0;
  if (!qword_1ED5FE6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE6B0);
  }

  return result;
}

unint64_t sub_18EFC3518()
{
  result = qword_1ED5FE648;
  if (!qword_1ED5FE648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE648);
  }

  return result;
}

unint64_t sub_18EFC356C()
{
  result = qword_1ED5FE408;
  if (!qword_1ED5FE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE408);
  }

  return result;
}

unint64_t sub_18EFC3610()
{
  result = qword_1ED5FE638;
  if (!qword_1ED5FE638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE638);
  }

  return result;
}

unint64_t sub_18EFC366C()
{
  result = qword_1ED5FE6D0;
  if (!qword_1ED5FE6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE6D0);
  }

  return result;
}

unint64_t sub_18EFC36C0()
{
  result = qword_1ED5FE400;
  if (!qword_1ED5FE400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE400);
  }

  return result;
}

unint64_t sub_18EFC3714()
{
  result = qword_1ED5FE6D8;
  if (!qword_1ED5FE6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE6D8);
  }

  return result;
}

unint64_t sub_18EFC3768()
{
  result = qword_1ED5FE628;
  if (!qword_1ED5FE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE628);
  }

  return result;
}

unint64_t sub_18EFC37BC()
{
  result = qword_1ED5FE6C8;
  if (!qword_1ED5FE6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE6C8);
  }

  return result;
}

unint64_t sub_18EFC3810()
{
  result = qword_1ED5FE680;
  if (!qword_1ED5FE680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE680);
  }

  return result;
}

unint64_t sub_18EFC38FC()
{
  result = qword_1ED5FDA10;
  if (!qword_1ED5FDA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDA10);
  }

  return result;
}

unint64_t sub_18EFC3950()
{
  result = qword_1ED5FE600;
  if (!qword_1ED5FE600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE600);
  }

  return result;
}

unint64_t sub_18EFC39A4()
{
  result = qword_1ED5FE650;
  if (!qword_1ED5FE650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE650);
  }

  return result;
}

unint64_t sub_18EFC39F8()
{
  result = qword_1ED5FE668;
  if (!qword_1ED5FE668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE668);
  }

  return result;
}

unint64_t sub_18EFC3A5C()
{
  result = qword_1ED5FE630;
  if (!qword_1ED5FE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE630);
  }

  return result;
}

unint64_t sub_18EFC3AB0()
{
  result = qword_1ED5FE5C0;
  if (!qword_1ED5FE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE5C0);
  }

  return result;
}

unint64_t sub_18EFC3B04()
{
  result = qword_1ED5FE660;
  if (!qword_1ED5FE660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE660);
  }

  return result;
}

unint64_t sub_18EFC3B58()
{
  result = qword_1ED5FE610;
  if (!qword_1ED5FE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE610);
  }

  return result;
}

unint64_t sub_18EFC3BAC()
{
  result = qword_1ED5FE5C8;
  if (!qword_1ED5FE5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE5C8);
  }

  return result;
}

unint64_t sub_18EFC3C00()
{
  result = qword_1ED5FE670;
  if (!qword_1ED5FE670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE670);
  }

  return result;
}

unint64_t sub_18EFC3C58()
{
  result = qword_1ED5FD708;
  if (!qword_1ED5FD708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB75D0, &qword_18F09BE38);
    sub_18EF8558C(&unk_1ED5FE8C0);
    sub_18EF8558C(&unk_1ED5FD640);
    sub_18EFBE9DC();
    sub_18EFBEA30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD708);
  }

  return result;
}

uint64_t sub_18EFC3D58(uint64_t a1)
{
  sub_18EF802BC(319, &qword_1ED5FD6B0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_18EF802BC(319, &unk_1ED5FD7E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_18EFBDAD4(319, &unk_1ED5FD720, &qword_1EACB73B0);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_18EFBDAD4(319, &qword_1ED5FD6D0, &qword_1EACB73C0);
      if (v8 > 0x3F)
      {
        return v6;
      }

      v6 = _s14CodableWrapperVMa_0(319);
      if (v9 > 0x3F)
      {
        return v6;
      }

      sub_18EFBDB20(319, &qword_1ED5FF4D8, _s14CodableWrapperVMa_0, MEMORY[0x1E69E6720]);
      if (v10 > 0x3F)
      {
        return v6;
      }

      sub_18EFBDB20(319, &unk_1ED5FD6D8, _s14CodableWrapperVMa_12, MEMORY[0x1E69E62F8]);
      if (v11 > 0x3F)
      {
        return v6;
      }

      sub_18EFBDAD4(319, &unk_1ED5FD710, &qword_1EACB7470);
      if (v12 > 0x3F)
      {
        return v6;
      }

      sub_18EFBDAD4(319, &qword_1ED5FD7E0, &unk_1EACB75C0);
      if (v13 > 0x3F)
      {
        return v6;
      }

      sub_18EFBDAD4(319, &qword_1ED5FD6C8, &qword_1EACB7488);
      if (v14 > 0x3F)
      {
        return v6;
      }

      sub_18EFBDAD4(319, &unk_1ED5FD6F8, &qword_1EACB75D0);
      if (v15 > 0x3F)
      {
        return v6;
      }

      sub_18EFBE974(319, &unk_1ED5FD730, &unk_1EACB77E8, &qword_18F09CD60, sub_18F0144B8);
      if (v16 > 0x3F)
      {
        return v6;
      }

      sub_18EFC414C(319, &unk_1ED5FD660, &qword_1ED5FE428, off_1E72AFFD0, MEMORY[0x1E69E6720]);
      if (v17 > 0x3F)
      {
        return v6;
      }

      sub_18EFBDAD4(319, &unk_1ED5FD6B8, &qword_1EACB74A8);
      if (v18 > 0x3F)
      {
        return v6;
      }

      sub_18EF802BC(319, &qword_1ED5FD698, &_s14CodableWrapperVN_5, MEMORY[0x1E69E6720]);
      if (v19 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_18EFBDAD4(319, &unk_1ED5FD1F8, &qword_1EACB74F8);
        v2 = v20;
        if (v21 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_18EFC414C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_18EF825F4(255, a3, a4);
    v7 = OUTLINED_FUNCTION_271();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_18EFC41DC()
{
  result = qword_1ED5FD5D0;
  if (!qword_1ED5FD5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB8CB8, &qword_18F0A7C20);
    sub_18EF8558C(&unk_1ED5FD498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD5D0);
  }

  return result;
}

unint64_t sub_18EFC4298()
{
  result = qword_1ED5FD580;
  if (!qword_1ED5FD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD580);
  }

  return result;
}

unint64_t sub_18EFC42EC()
{
  result = qword_1ED5FD528;
  if (!qword_1ED5FD528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD528);
  }

  return result;
}

unint64_t sub_18EFC4340()
{
  result = qword_1ED5FD550;
  if (!qword_1ED5FD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD550);
  }

  return result;
}

uint64_t sub_18EFC4394(char a1)
{
  if (a1)
  {
    return 0x7365736163;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_18EFC4404(char a1)
{
  if (!a1)
  {
    return 0x6E69616D6F64;
  }

  if (a1 == 1)
  {
    return 7955819;
  }

  return 0x65756C6176;
}

uint64_t sub_18EFC444C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8068, &qword_18F0A0F30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFCB0C0();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = 0;
  v9 = sub_18F09427C();
  v19 = v10;
  v21 = 1;
  v17 = sub_18F09427C();
  v18 = v11;
  v20 = 2;
  v12 = sub_18F09428C();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v14 = v19;
  *a2 = v9;
  *(a2 + 8) = v14;
  v15 = v18;
  *(a2 + 16) = v17;
  *(a2 + 24) = v15;
  *(a2 + 32) = v12 & 1;
  return result;
}

unint64_t sub_18EFC4698()
{
  result = qword_1ED5FEC00;
  if (!qword_1ED5FEC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7A88, &qword_18F0A0BD0);
    sub_18EF8558C(&unk_1ED5FED78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEC00);
  }

  return result;
}

unint64_t sub_18EFC47B4()
{
  result = qword_1ED5FEBC0;
  if (!qword_1ED5FEBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7A78, &qword_18F0A0BC0);
    sub_18EF8558C(&unk_1ED5FEC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEBC0);
  }

  return result;
}

unint64_t sub_18EFC4868()
{
  result = qword_1ED5FE5B8;
  if (!qword_1ED5FE5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB7A90, &qword_18F0A0BD8);
    sub_18EF8558C(&unk_1ED5FEBB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE5B8);
  }

  return result;
}

unint64_t sub_18EFC491C()
{
  result = qword_1ED5FEBE8;
  if (!qword_1ED5FEBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7A80, &qword_18F0A0BC8);
    sub_18EF8558C(&unk_1ED5FF450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEBE8);
  }

  return result;
}

unint64_t sub_18EFC4A38()
{
  result = qword_1ED5FEBB8;
  if (!qword_1ED5FEBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7AA0, &qword_18F0A0BE0);
    sub_18EF8558C(&unk_1ED5FEA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FEBB8);
  }

  return result;
}

uint64_t sub_18EFC4C64(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8B60, &qword_18F0A7B80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFC560C();
  sub_18F09459C();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_18F09427C();
    v10 = 1;
    sub_18F09427C();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t sub_18EFC4E48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18EFC4C64(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void sub_18EFC4EB0(uint64_t a1)
{
  sub_18EF802BC(319, &unk_1ED5FD7E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_18EFBDB20(319, &qword_1ED5FF4D8, _s14CodableWrapperVMa_0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_18EF802BC(319, &qword_1EACB7148, &_s14CodableWrapperVN_14, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_18EFC4FE4(uint64_t a1)
{
  sub_18EF802BC(319, &unk_1ED5FD350, &_s14CodableWrapperON_0, MEMORY[0x1E69E6720]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_18EF802BC(319, &unk_1ED5FD7E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_18EFBDAD4(319, &unk_1ED5FD720, &qword_1EACB73B0);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_18EFBDAD4(319, &qword_1ED5FD6D0, &qword_1EACB73C0);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_18EFBDB20(319, &qword_1EACB70E8, _s14CodableWrapperVMa_33, MEMORY[0x1E69E62F8]);
      if (v9 > 0x3F)
      {
        return v6;
      }

      sub_18EFBDB20(319, &qword_1EACB70E0, _s14CodableWrapperVMa_35, MEMORY[0x1E69E62F8]);
      if (v10 > 0x3F)
      {
        return v6;
      }

      sub_18EFBDAD4(319, &unk_1ED5FD710, &qword_1EACB7470);
      if (v11 > 0x3F)
      {
        return v6;
      }

      sub_18EFBDB20(319, &unk_1EACB7088, type metadata accessor for LNQueryCapabilities, MEMORY[0x1E69E6720]);
      if (v12 > 0x3F)
      {
        return v6;
      }

      sub_18EFBDB20(319, &qword_1ED5FF120, _s14CodableWrapperVMa_1, MEMORY[0x1E69E6720]);
      if (v13 > 0x3F)
      {
        return v6;
      }

      sub_18EF802BC(319, &qword_1ED5FD698, &_s14CodableWrapperVN_5, MEMORY[0x1E69E6720]);
      if (v14 > 0x3F)
      {
        return v6;
      }

      sub_18EF802BC(319, &qword_1ED5FD6B0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
      if (v15 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_18EFBDAD4(319, &unk_1ED5FD1F8, &qword_1EACB74F8);
        v2 = v16;
        if (v17 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_18EFC5348(uint64_t a1)
{
  result = _s14CodableWrapperVMa_0(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_18EFC53C4()
{
  result = qword_1ED5FE978;
  if (!qword_1ED5FE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE978);
  }

  return result;
}

unint64_t sub_18EFC5418()
{
  result = qword_1ED5FE588;
  if (!qword_1ED5FE588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE588);
  }

  return result;
}

unint64_t sub_18EFC546C()
{
  result = qword_1ED5FE570;
  if (!qword_1ED5FE570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE570);
  }

  return result;
}

unint64_t sub_18EFC54D0()
{
  result = qword_1ED5FE578;
  if (!qword_1ED5FE578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE578);
  }

  return result;
}

unint64_t sub_18EFC5560()
{
  result = qword_1ED5FE988;
  if (!qword_1ED5FE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE988);
  }

  return result;
}

unint64_t sub_18EFC55B8()
{
  result = qword_1ED5FE990;
  if (!qword_1ED5FE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE990);
  }

  return result;
}

unint64_t sub_18EFC560C()
{
  result = qword_1ED5FE998;
  if (!qword_1ED5FE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE998);
  }

  return result;
}

void sub_18EFC5660(_OWORD *a1@<X8>)
{
  v3 = sub_18F0932BC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  sub_18F09326C();
  sub_18F09325C();
  v10 = *(v4 + 8);
  v10(v7, v3);
  v11 = [objc_opt_self() defaultManager];
  sub_18F09328C();
  v12 = sub_18F093B5C();

  v13 = [v11 fileExistsAtPath_];

  if (v13)
  {
    v31 = a1;
    v14 = sub_18F0932CC();
    if (v1)
    {
      v10(v9, v3);
      if (qword_1ED5FEEB8 != -1)
      {
        swift_once();
      }

      v18 = sub_18F093A2C();
      __swift_project_value_buffer(v18, qword_1ED60C1C0);
      v19 = v1;
      v20 = sub_18F093A0C();
      v21 = sub_18F093EDC();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *&v32[0] = v23;
        *v22 = 136315138;
        swift_getErrorValue();
        v24 = sub_18F0944DC();
        v26 = sub_18F0462AC(v24, v25, v32);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_18EF7E000, v20, v21, "Error with NLU example phrase file: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x193AD9AF0](v23, -1, -1);
        MEMORY[0x193AD9AF0](v22, -1, -1);
      }

      else
      {
      }

      v27 = v31;
      *v31 = 0u;
      v27[1] = 0u;
    }

    else
    {
      v16 = v14;
      v17 = v15;
      sub_18F09302C();
      swift_allocObject();
      sub_18F09301C();
      sub_18F019F9C();
      sub_18F09300C();
      v10(v9, v3);

      sub_18EF9A4AC(v16, v17);
      v28 = v32[1];
      v29 = v31;
      *v31 = v32[0];
      v29[1] = v28;
    }
  }

  else
  {
    v10(v9, v3);
    *a1 = 0u;
    a1[1] = 0u;
  }
}

id sub_18EFC5A60(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  v72 = *a4;
  v66 = v7;
  v8 = *(a4 + 24);
  v65 = *(a4 + 16);
  v64 = v8;
  if (*(a1 + 80) == 1)
  {
    v9 = [objc_opt_self() latestMetadataVersion];
  }

  else
  {
    v9 = *(a1 + 72);
  }

  v10 = MEMORY[0x193AD91F0]();
  MEMORY[0x1EEE9AC00](v10);
  v78 = v9;
  v60 = v9;
  v61 = a2;
  v62 = a3;
  sub_18F012158(sub_18EFC66CC, &v59, v11);
  objc_autoreleasePoolPop(v10);
  v12 = MEMORY[0x193AD91F0]();
  MEMORY[0x1EEE9AC00](v12);
  v62 = a2;
  v63 = a3;
  sub_18F011EE4(sub_18EFCCC58, &v60, v13);
  objc_autoreleasePoolPop(v12);
  v14 = MEMORY[0x193AD91F0]();
  MEMORY[0x1EEE9AC00](v14);
  v62 = a2;
  v63 = a3;
  sub_18F011C70(sub_18EFCD488, &v60, v15);
  objc_autoreleasePoolPop(v14);
  v16 = MEMORY[0x193AD91F0]();
  v17 = *(a1 + 48);
  MEMORY[0x1EEE9AC00](v16);
  v81 = v18;
  v62 = v18;
  v63 = a3;

  sub_18EF9D97C(sub_18EFC865C, &v60, v17, type metadata accessor for LNEnumMetadata.CodableWrapper, v19, v20, v21, v22, v60, v61, v62, v63);

  objc_autoreleasePoolPop(v16);
  sub_18EF825F4(0, &qword_1ED5FF210, off_1E72AFEA0);
  v77 = sub_18F093A3C();

  sub_18EF825F4(0, &qword_1ED5FF428, off_1E72B0020);
  v76 = sub_18F093A3C();

  sub_18EF825F4(0, &unk_1ED5FED68, off_1E72B0120);
  v75 = sub_18F093A3C();

  sub_18EF825F4(0, &qword_1ED5FF268, off_1E72B0048);
  v74 = sub_18F093DBC();

  if (*(a1 + 16))
  {

    v73 = sub_18F093B5C();
  }

  else
  {
    v73 = 0;
  }

  v24 = *(a1 + 24);
  v25 = v81;
  if (v24)
  {
    MEMORY[0x1EEE9AC00](v23);
    v62 = v25;
    v63 = a3;

    sub_18EF9D97C(sub_18F019F24, &v60, v24, _s14CodableWrapperVMa_29, v26, v27, v28, v29, v60, v61, v62, v63);
  }

  sub_18EF825F4(0, &qword_1ED5FEC28, off_1E72AFF60);
  v80 = sub_18F093DBC();

  v71 = *(a1 + 56);
  v69 = *(a1 + 64);
  v31 = *(a1 + 96);
  if (v31)
  {
    v33 = *(a1 + 104);
    v32 = *(a1 + 112);
    v34 = *(a1 + 88);
    sub_18EF825F4(0, &qword_1ED5FE8A8, off_1E72AFF90);

    v30 = sub_18EFC8678(v34, v31, v33, v32);
    v70 = v30;
  }

  else
  {
    v70 = 0;
  }

  v35 = *(a1 + 120);
  if (v35)
  {
    MEMORY[0x1EEE9AC00](v30);
    v62 = v25;
    v63 = a3;

    sub_18EF9D97C(sub_18F019F08, &v60, v35, _s14CodableWrapperVMa_26, v36, v37, v38, v39, v60, v61, v62, v63);

    sub_18EF825F4(0, &unk_1ED5FE730, off_1E72AFEE8);
    v68 = sub_18F093DBC();
  }

  else
  {
    v68 = 0;
  }

  v40 = v72;
  if (v72)
  {
    v82 = v72;
    v83 = v66;
    v84 = v65;
    v85 = v64;
    LNExamplePhraseDescriptions.phraseDescriptions.getter();
    sub_18F019EA8(v40);
    sub_18EF825F4(0, &qword_1EACB6A58, off_1E72B0050);
    v41 = sub_18F093DBC();
  }

  else
  {
    v41 = 0;
  }

  v42 = *(a1 + 128);
  if (v42)
  {
    MEMORY[0x1EEE9AC00](v30);
    v62 = v25;
    v63 = a3;

    sub_18EFC871C(sub_18F019E8C, &v60, v42);

    sub_18EF825F4(0, qword_1ED5FE4D8, off_1E72AFF20);
    v43 = sub_18F093DBC();
  }

  else
  {
    v43 = 0;
  }

  v44 = *(a1 + 136);
  if (v44)
  {
    MEMORY[0x1EEE9AC00](v30);
    v62 = v25;
    v63 = a3;

    sub_18EFC8C24(sub_18F019E4C, &v60, v44);

    sub_18EF825F4(0, qword_1ED5FE438, off_1E72AFF28);
    v44 = sub_18F093DBC();
  }

  v45 = *(a1 + 144);
  v67 = a3;
  if (v45)
  {
    MEMORY[0x1EEE9AC00](v30);
    v62 = v81;
    v63 = a3;

    sub_18EFC8D4C(sub_18F019E30, &v60, v45);
    sub_18EFC4784(a1);

    sub_18EF825F4(0, &unk_1ED5FE410, off_1E72AFF08);
    v46 = sub_18F093DBC();
  }

  else
  {
    sub_18EFC4784(a1);
    v46 = 0;
  }

  v72 = v46;
  if (v69)
  {
    v47 = 14;
  }

  else
  {
    v47 = v71;
  }

  v48 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v63 = v46;
  v61 = v43;
  v49 = v68;
  v50 = v70;
  v58 = v47;
  v52 = v76;
  v51 = v77;
  v53 = v43;
  v55 = v74;
  v54 = v75;
  v56 = v73;
  v79 = [v48 initWithActions:v77 entities:v76 queries:v75 enums:v74 autoShortcutProviderMangledName:v73 autoShortcuts:v80 shortcutTileColor:v58 version:v78 generator:v70 negativePhrases:v68 examplePhrases:v41 assistantIntents:v61 assistantIntentNegativePhrases:v44 assistantEntities:v63];

  sub_18EF933AC(v81, &qword_1EACB72C8);
  return v79;
}

void sub_18EFC62FC(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, void *a4@<X8>)
{
  v40 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for LNActionMetadata.CodableWrapper(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18EF825F4(0, &qword_1ED5FF210, off_1E72AFEA0);
  sub_18EF86A14(a1, v12);
  sub_18EF9FE2C();
  v13 = a3;
  LNActionMetadata.init(from:bundleMetadataVersion:bundleURL:effectiveBundleIdentifier:)(v12, a2, v9, a3, v14, v15, v16, v17, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  v19 = v18;
  v20 = [v18 effectiveBundleIdentifiers];
  v21 = [v20 array];

  v22 = MEMORY[0x1E69E7CA0];
  v23 = sub_18F093DCC();

  v24 = *(v23 + 16);

  if (!v24)
  {
    v25 = a1[6];
    if (v25)
    {
      v39 = a1[5];
      v26 = v25;
    }

    else
    {
      v27 = a1[2];
      v26 = a1[3];
      v39 = v27;
    }

    if (a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8748, &qword_18F0A1350);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_18F09BCC0;
      *(v28 + 56) = sub_18EF825F4(0, &qword_1ED5FF350, off_1E72AFFF8);
      *(v28 + 32) = v13;
    }

    else
    {
      v28 = MEMORY[0x1E69E7CC0];
    }

    sub_18EF825F4(0, qword_1ED5FF370, 0x1E695DFB8);

    v29 = v13;
    v30 = sub_18EF9CBD0(v28, v22 + 8, &selRef_initWithArray_);
    if (a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8740, &qword_18F0A1348);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18F09BCC0;
      v32 = v29;
      v33 = [v32 bundleIdentifier];
      v34 = sub_18F093B8C();
      v36 = v35;

      *(inited + 32) = v34;
      *(inited + 40) = v36;
      *(inited + 48) = v39;
      *(inited + 56) = v26;

      sub_18F093A5C();
    }

    else
    {

      sub_18F093A5C();
    }

    v37 = sub_18F093A3C();

    v38 = [v19 metadataByAddingEffectiveBundleIdentifiers:v30 mangledTypeNameByBundleIdentifier:v37];

    v19 = v38;
  }

  *v40 = v19;
}

id sub_18EFC66EC@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - v7;
  v9 = _s14CodableWrapperVMa_20(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18EF825F4(0, &qword_1ED5FD648, off_1E72AFE60);
  sub_18EF86A14(a1, v11);
  sub_18EF9FE2C();
  v12 = a2;
  result = sub_18EFC6904(v11, v8, a2);
  *a3 = result;
  return result;
}

id sub_18EFC6860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[2] = a4;
  v11[3] = a5;

  v8 = sub_18EF93B88(sub_18EFC6844, v11, a3, _s14CodableWrapperVMa_20);
  v9 = objc_allocWithZone(LNActionConfigurationSwitch);
  return sub_18EFBB720(a1, a2, v8);
}

id sub_18EFC6904(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = _s14CodableWrapperVMa_20(0);
  v7 = *(a1 + *(v6 + 20));
  if (v7 != 2 && (v7 & 1) == 0)
  {
    sub_18EF825F4(0, &qword_1ED5FDBC8, off_1E72AFE40);
    v11 = sub_18EFA4278(*(a1 + *(v6 + 24)), a2, a3);
    if (v11)
    {
      v12 = v11;
      v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      MEMORY[0x1EEE9AC00](v13);
      v14 = sub_18EFA4790(sub_18EFC74D8);
      v10 = [v13 initWithValue:v14 configuration:v12];

      goto LABEL_7;
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  sub_18EF825F4(0, &qword_1ED5FDBC8, off_1E72AFE40);
  v8 = sub_18EFA4278(*(a1 + *(v6 + 24)), a2, a3);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDefaultConfiguration_];

LABEL_7:
LABEL_9:
  sub_18EF86A6C();
  sub_18EF933AC(a2, &qword_1EACB72C8);
  return v10;
}

id sub_18EFC6ADC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v76 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7860, &qword_18F09DA60);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v76 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v76 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v76 - v19;
  v21 = _s19BasicCodableWrapperOMa(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18EF86A14(a1, v23);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v47 = *v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84F8, &qword_18F0A1198);
      sub_18EF869B4();
      v83 = MEMORY[0x1E69E63B0];
      v81 = v47;
      v25 = [objc_opt_self() doubleValueType];
      goto LABEL_8;
    case 2u:
      v36 = *v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84E8, &qword_18F0A1190);
      sub_18EF869B4();
      v83 = MEMORY[0x1E69E6370];
      LOBYTE(v81) = v36;
      v25 = [objc_opt_self() BOOLValueType];
      goto LABEL_8;
    case 3u:
      v37 = *v23;
      v38 = v23[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB84D8, &qword_18F0A1188);
      sub_18EF869B4();
      v83 = MEMORY[0x1E69E6158];
      v81 = v37;
      v82 = v38;
      v25 = [objc_opt_self() stringValueType];
      goto LABEL_8;
    case 4u:
      v26 = *v23;
      v27 = v23[1];
      v28 = v23[2];
      v29 = v23[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB84C8, &qword_18F0A1180);
      sub_18EF869B4();
      v83 = MEMORY[0x1E69E6158];
      v81 = v26;
      v82 = v27;
      sub_18EF825F4(0, &qword_1ED5FE070, off_1E72B0088);
      v30 = sub_18EFBB130(v28, v29);
      sub_18EF825F4(0, qword_1ED5FE100, off_1E72AFFF0);
      sub_18EF9FE2C();
      sub_18EF9FE2C();
      v31 = a3;
      v32 = sub_18EFC7534(v18, v8, a3);
      v33 = objc_allocWithZone(LNValue);
      v34 = sub_18EFC7858(&v81, v30, v32);
      v35 = v20;
      goto LABEL_9;
    case 5u:
      v54 = *v23;
      v53 = v23[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB84B8, &qword_18F0A1178);
      sub_18EF869B4();
      sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
      v55 = sub_18EF9E62C(v53);
      if (v55)
      {
        v56 = v55;
        MEMORY[0x1EEE9AC00](v55);
        *(&v76 - 2) = a2;
        *(&v76 - 1) = a3;
        v80 = v53;
        v57 = sub_18EF93B88(sub_18EFC751C, (&v76 - 4), v54, _s19BasicCodableWrapperOMa);

        v58 = objc_allocWithZone(LNValue);
        v59 = v56;
        v34 = sub_18EFBB69C(v57, v59);
        sub_18EF825F4(0, qword_1ED5FE100, off_1E72AFFF0);
        sub_18EF9FE2C();
        sub_18EF9FE2C();
        v60 = a3;
        v61 = sub_18EFC7534(v20, v8, a3);
        [v34 setDisplayRepresentation_];

        sub_18EFA3DA4(v80);
        v35 = v15;
        goto LABEL_9;
      }

      sub_18EF933AC(v15, &qword_1EACB7860);
      sub_18EFA3DA4(v53);
      goto LABEL_17;
    case 6u:
      v78 = *v23;
      v62 = v23[2];
      v64 = v23[3];
      v63 = v23[4];
      v66 = v23[6];
      v65 = v23[7];
      v76 = v23[1];
      v77 = v65;
      v79 = v23[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84B0, &qword_18F0A1170);
      sub_18EF869B4();
      sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
      v80 = v66;
      v67 = sub_18EF9E62C(v66);
      if (v67)
      {
        v68 = v67;
        v69 = objc_allocWithZone(LNEntityIdentifier);
        v70 = sub_18EFA7764(v76, v62, v64, v63, &selRef_initWithTypeIdentifier_instanceIdentifier_);
        v71 = objc_allocWithZone(LNEntity);
        v72 = sub_18F00DBCC(v78, v70, MEMORY[0x1E69E7CC0], v77, v79);
        v83 = sub_18EF825F4(0, &unk_1ED5FCDB0, off_1E72B0008);
        v81 = v72;
        sub_18EF825F4(0, qword_1ED5FE100, off_1E72AFFF0);
        sub_18EF9FE2C();
        sub_18EF9FE2C();
        v73 = a3;
        v74 = sub_18EFC7534(v20, v8, a3);
        v75 = objc_allocWithZone(LNValue);
        v34 = sub_18EFC7858(&v81, v68, v74);
        sub_18EFA3DA4(v80);
        v35 = v12;
LABEL_9:
        sub_18EF933AC(v35, &qword_1EACB7860);
      }

      else
      {
        sub_18EF933AC(v12, &qword_1EACB7860);
        sub_18EFA3DA4(v80);

LABEL_17:

        return 0;
      }

      return v34;
    case 7u:
      v39 = *v23;
      v40 = v23[1];
      v42 = v23[2];
      v41 = v23[3];
      v43 = objc_allocWithZone(LNEntityIdentifier);
      v44 = sub_18EFA7764(v39, v40, v42, v41, &selRef_initWithTypeIdentifier_instanceIdentifier_);
      v83 = sub_18EF825F4(0, &unk_1EACB6AB8, off_1E72B0010);
      v81 = v44;
      v45 = [objc_allocWithZone(LNEntityIdentifierValueType) init];
      v46 = objc_allocWithZone(LNValue);
      return sub_18EFBB1A4(&v81, v45);
    default:
      v24 = *v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8508, &qword_18F0A11A0);
      sub_18EF869B4();
      v83 = MEMORY[0x1E69E6530];
      v81 = v24;
      v25 = [objc_opt_self() intValueType];
LABEL_8:
      v48 = v25;
      sub_18EF825F4(0, qword_1ED5FE100, off_1E72AFFF0);
      sub_18EF9FE2C();
      sub_18EF9FE2C();
      v49 = a3;
      v50 = sub_18EFC7534(v18, v8, a3);
      v51 = objc_allocWithZone(LNValue);
      v34 = sub_18EFC7858(&v81, v48, v50);
      v35 = v20;
      goto LABEL_9;
  }
}

void OUTLINED_FUNCTION_312()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
}

id sub_18EFC7534(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7860, &qword_18F09DA60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _s14CodableWrapperVMa_2(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20 - v16;
  sub_18EF9FE2C();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {

    sub_18EF933AC(a2, &qword_1EACB72C8);
    sub_18EF933AC(a1, &qword_1EACB7860);
    sub_18EF933AC(v11, &qword_1EACB7860);
    return 0;
  }

  else
  {
    sub_18EF88240(v11, v17);
    sub_18EF86A14(v17, v15);
    sub_18EF9FE2C();
    v18 = sub_18EFA63B4(v15, v8, a3);
    sub_18EF933AC(a2, &qword_1EACB72C8);
    sub_18EF933AC(a1, &qword_1EACB7860);
    sub_18EF86A6C();
  }

  return v18;
}

id sub_18EFC77F4()
{
  OUTLINED_FUNCTION_316();
  sub_18EF825F4(0, &qword_1ED5FE060, off_1E72B0218);
  v2 = OUTLINED_FUNCTION_137();
  result = sub_18EFC6ADC(v2, v3, v0);
  *v1 = result;
  return result;
}

id sub_18EFC7858(void *a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v7 = [v3 initWithValue:sub_18F09443C() valueType:a2 displayRepresentation:a3];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t sub_18EFC78EC(char a1)
{
  if (a1)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_18EFC791C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

      return OUTLINED_FUNCTION_84(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_84(result, a2);
    }
  }

  return result;
}

id sub_18EFC7954(void *a1, uint64_t a2, void *a3)
{
  v96 = a3;
  v97 = a2;
  v4 = _s14CodableWrapperVMa(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (&v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v79 - v9;
  v92 = sub_18F093B5C();
  v11 = 0;
  v12 = a1[6];
  if ((~v12 & 0xF000000000000007) != 0)
  {
    sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
    sub_18EFA3D24(v12);
    v11 = sub_18EF9E62C(v12);
    sub_18EFA3D90(v12);
  }

  v13 = a1[7];
  v98 = a1;
  if ((~v13 & 0xF000000000000007) == 0 || (sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220), sub_18EFA3D24(v13), v14 = sub_18EF9E62C(v13), sub_18EFA3D90(v13), !v14))
  {
    sub_18EF825F4(0, &unk_1ED5FE710, off_1E72B0038);
    v15 = a1[4];
    v16 = v98[5];

    v17 = v16;
    a1 = v98;
    v14 = sub_18EF9EB60(v15, v17, &selRef_initWithIdentifier_);
  }

  v88 = sub_18F093B5C();

  v18 = a1[10];
  v90 = v11;
  if (!v18)
  {
    sub_18F093A5C();
  }

  v87 = sub_18F093A3C();

  v19 = a1[11];
  v20 = MEMORY[0x1E69E7CC0];
  v89 = v14;
  if (v19)
  {
    v21 = *(v19 + 16);
    if (v21)
    {
      v22 = v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v23 = MEMORY[0x1E69E7CC0];
      v24 = *(v5 + 72);
      do
      {
        sub_18EF86A14(v22, v10);
        v25 = *(v10 + 2);
        v26 = *(v10 + 1) & 0xFFFFFFFFFFFFLL;
        if ((v25 & 0x2000000000000000) != 0)
        {
          v26 = HIBYTE(v25) & 0xF;
        }

        if (v26)
        {
          v27 = sub_18EF825F4(0, &qword_1ED5FF350, off_1E72AFFF8);
          sub_18EF86A14(v10, v8);
          v28 = sub_18EF9FEB8(v8);
          *(&v100 + 1) = v27;
          *&v99 = v28;
        }

        else
        {
          v99 = 0u;
          v100 = 0u;
        }

        sub_18EF86A6C();
        if (*(&v100 + 1))
        {
          sub_18EF914D4(&v99, v101);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_18EFA0044(0, *(v23 + 2) + 1, 1, v23);
          }

          v30 = *(v23 + 2);
          v29 = *(v23 + 3);
          if (v30 >= v29 >> 1)
          {
            v23 = sub_18EFA0044((v29 > 1), v30 + 1, 1, v23);
          }

          *(v23 + 2) = v30 + 1;
          sub_18EF914D4(v101, &v23[32 * v30 + 32]);
        }

        else
        {
          sub_18EF933AC(&v99, &qword_1EACB9180);
        }

        v22 += v24;
        --v21;
      }

      while (v21);
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  sub_18EF825F4(0, qword_1ED5FF370, 0x1E695DFB8);
  v86 = sub_18EF9CBD0(v23, MEMORY[0x1E69E7CA0] + 8, &selRef_initWithArray_);
  v31 = v98;
  MEMORY[0x1EEE9AC00](v86);
  v33 = v96;
  v32 = v97;
  sub_18EF9D97C(sub_18EFCD5FC, &v76, v34, _s14CodableWrapperVMa_33, v35, v36, v37, v38, v79, v80, v81, v82);
  sub_18EF825F4(0, &qword_1ED5FE338, off_1E72B0130);
  v85 = sub_18F093DBC();

  MEMORY[0x1EEE9AC00](v39);
  v77 = v32;
  v78 = v33;
  sub_18EF9D97C(sub_18EFCDCA4, &v76, v40, _s14CodableWrapperVMa_35, v41, v42, v43, v44, v79, v80, v81, v82);
  sub_18EF825F4(0, &qword_1ED5FE320, off_1E72B0140);
  v95 = sub_18F093DBC();

  v45 = v31[14];
  if (v45)
  {
    sub_18EF94FC0(v45);
    type metadata accessor for LNPlatformName(0, v46, v47, v48);
    sub_18EF825F4(0, &qword_1ED5FFA40, off_1E72AFF68);
    sub_18EF8558C(&qword_1ED5FFA38);
    v31 = v98;
    v94 = sub_18F093A3C();
  }

  else
  {
    v94 = 0;
  }

  v49 = v31[15];
  v50 = *(v31 + 128);
  v51 = _s14CodableWrapperVMa_32(0);
  MEMORY[0x1EEE9AC00](v51);
  v77 = v97;
  v78 = v96;
  v93 = sub_18EFD9810(sub_18EF9D840);
  if (*(v31 + v51[17]) == 2)
  {
    result = [objc_allocWithZone(LNVisibilityMetadata) initWithIsDiscoverable:1 assistantOnly:0];
  }

  else
  {
    v52 = *(v31 + v51[17]);
    result = [objc_allocWithZone(LNVisibilityMetadata) initWithIsDiscoverable:v52 & 1 assistantOnly:(v52 >> 8) & 1];
  }

  v84 = result;
  v54 = v51[19];
  HIDWORD(v82) = *(v31 + v51[18]);
  if (*(v31 + v54 + 8))
  {
    result = sub_18F093B5C();
    v83 = result;
  }

  else
  {
    v83 = 0;
  }

  v55 = *(v31 + v51[20]);
  if (v55)
  {
    HIDWORD(v80) = v50;
    v81 = v49;
    v56 = 0;
    *&v101[0] = v20;
    v57 = *(v55 + 16);
    for (i = (v55 + 56); ; i += 4)
    {
      if (v57 == v56)
      {
        sub_18EF825F4(0, &unk_1EACB72E8, off_1E72B01E8);
        v63 = sub_18F093DBC();

        v49 = v81;
        v50 = HIDWORD(v80);
        goto LABEL_45;
      }

      if (v56 >= *(v55 + 16))
      {
        break;
      }

      v60 = *(i - 1);
      v59 = *i;
      v62 = *(i - 3);
      v61 = *(i - 2);
      sub_18EF825F4(0, &unk_1EACB72E8, off_1E72B01E8);

      sub_18EFF196C(v62, v61, v60, v59);
      MEMORY[0x193AD88C0]();
      if (*((*&v101[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v101[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18F093DFC();
      }

      result = sub_18F093E3C();
      ++v56;
    }

    __break(1u);
  }

  else
  {
    v63 = 0;
LABEL_45:
    if (v50)
    {
      v64 = 0;
    }

    else
    {
      v64 = v49;
    }

    v65 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v66 = v83;
    LOBYTE(v76) = BYTE4(v82) & 1;
    v67 = v84;
    v75 = v64;
    v68 = v85;
    v69 = v92;
    v71 = v89;
    v70 = v90;
    v73 = v87;
    v72 = v88;
    v74 = v86;
    v91 = [v65 initWithIdentifier:v92 inputValueType:v90 resultValueType:v89 mangledTypeName:v88 mangledTypeNameByBundleIdentifier:v87 effectiveBundleIdentifiers:v86 parameters:v85 sortingOptions:v95 availabilityAnnotations:v94 capabilities:v75 descriptionMetadata:v93 visibilityMetadata:v84 defaultQueryForEntity:v76 fullyQualifiedIdentifier:v83 allowedTargets:v63];

    sub_18EF933AC(v97, &qword_1EACB72C8);
    sub_18EF86A6C();
    return v91;
  }

  return result;
}

void sub_18EFC82CC(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  v9 = _s14CodableWrapperVMa_32(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18EF825F4(0, &unk_1ED5FED68, off_1E72B0120);
  sub_18EF86A14(a1, v11);
  sub_18EF9FE2C();
  v12 = a2;
  v13 = sub_18EFC7954(v11, v8, a2);
  v14 = [v13 effectiveBundleIdentifiers];
  v15 = [v14 array];

  v16 = MEMORY[0x1E69E7CA0];
  v17 = sub_18F093DCC();

  v18 = *(v17 + 16);

  if (!v18)
  {
    v19 = *(a1 + 72);
    if (v19)
    {
      v32 = *(a1 + 64);
      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8748, &qword_18F0A1350);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_18F09BCC0;
        *(v20 + 56) = sub_18EF825F4(0, &qword_1ED5FF350, off_1E72AFFF8);
        *(v20 + 32) = v12;
      }

      else
      {
        v20 = MEMORY[0x1E69E7CC0];
      }

      sub_18EF825F4(0, qword_1ED5FF370, 0x1E695DFB8);
      v21 = v12;
      v22 = sub_18EF9CBD0(v20, v16 + 8, &selRef_initWithArray_);
      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8740, &qword_18F0A1348);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18F09BCC0;
        v24 = v21;
        v25 = [v24 bundleIdentifier];
        v26 = sub_18F093B8C();
        v28 = v27;

        *(inited + 32) = v26;
        *(inited + 40) = v28;
        *(inited + 48) = v32;
        *(inited + 56) = v19;

        sub_18F093A5C();
      }

      else
      {
        sub_18F093A5C();
      }

      v29 = sub_18F093A3C();

      v30 = [v13 metadataByAddingEffectiveBundleIdentifiers:v22 mangledTypeNameByBundleIdentifier:v29];

      v13 = v30;
    }
  }

  *a3 = v13;
}

id sub_18EFC8678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_18F093B5C();
  v6 = sub_18F093B5C();

  v7 = [v4 initWithName:v5 version:v6];

  return v7;
}

uint64_t sub_18EFC871C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_18F09411C();
    v8 = (a3 + 72);
    while (1)
    {
      v9 = *(v8 - 4);
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      v13 = *(v8 - 1);
      v12 = *v8;
      v15[0] = *(v8 - 5);
      v15[1] = v9;
      v15[2] = v10;
      v15[3] = v11;
      v15[4] = v13;
      v15[5] = v12;

      a1(&v16, v15);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v8 += 6;

      sub_18F0940FC();
      sub_18F09412C();
      sub_18F09413C();
      sub_18F09410C();
      if (!--v5)
      {
        return v17;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_18EFC888C(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - v7;
  v9 = type metadata accessor for LNEnumMetadata.CodableWrapper(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18EF825F4(0, &qword_1ED5FF268, off_1E72B0048);
  sub_18EF86A14(a1, v11);
  sub_18EF9FE2C();
  v12 = a2;
  LNEnumMetadata.init(from:bundleURL:effectiveBundleIdentifier:)(v11, v8, a2, v13, v14, v15, v16, v17, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v19 = v18;
  v20 = [v18 effectiveBundleIdentifiers];
  v21 = [v20 array];

  v22 = MEMORY[0x1E69E7CA0];
  v23 = sub_18F093DCC();

  v24 = *(v23 + 16);

  if (!v24)
  {
    v25 = *(a1 + 24);
    if (v25)
    {
      v38 = *(a1 + 16);
      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8748, &qword_18F0A1350);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_18F09BCC0;
        *(v26 + 56) = sub_18EF825F4(0, &qword_1ED5FF350, off_1E72AFFF8);
        *(v26 + 32) = v12;
      }

      else
      {
        v26 = MEMORY[0x1E69E7CC0];
      }

      sub_18EF825F4(0, qword_1ED5FF370, 0x1E695DFB8);
      v27 = v12;
      v28 = sub_18EF9CBD0(v26, v22 + 8, &selRef_initWithArray_);
      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8740, &qword_18F0A1348);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18F09BCC0;
        v30 = v27;
        v31 = [v30 bundleIdentifier];
        v32 = sub_18F093B8C();
        v34 = v33;

        *(inited + 32) = v32;
        *(inited + 40) = v34;
        *(inited + 48) = v38;
        *(inited + 56) = v25;

        sub_18F093A5C();
      }

      else
      {
        sub_18F093A5C();
      }

      v35 = sub_18F093A3C();

      v36 = [v19 metadataByAddingEffectiveBundleIdentifiers:v28 mangledTypeNameByBundleIdentifier:v35];

      v19 = v36;
    }
  }

  *a3 = v19;
}

uint64_t sub_18EFC8C24(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_18F09411C();
    for (i = (a3 + 48); ; i += 3)
    {
      v10 = *(i - 1);
      v11 = *i;
      v12[0] = *(i - 2);
      v12[1] = v10;
      v12[2] = v11;

      a1(&v13, v12);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_18F0940FC();
      sub_18F09412C();
      sub_18F09413C();
      sub_18F09410C();
      if (!--v6)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_18EFC8D4C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v6 = *(a3 + 16);
  v7 = (a3 + 56);
  if (v6)
  {
    while (1)
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 2);
      v14[0] = *(v7 - 3);
      v14[1] = v10;
      v14[2] = v8;
      v14[3] = v9;

      a1(&v13, v14);
      if (v3)
      {
        break;
      }

      if (v13)
      {
        MEMORY[0x193AD88C0](v11);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18F093DFC();
        }

        sub_18F093E3C();
        v5 = v15;
      }

      v7 += 4;
      if (!--v6)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_18EFC8FD0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0x657A696C61636F6CLL;
  }

  return 0x74617261706D6F63;
}

uint64_t sub_18EFC9040@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8230, &qword_18F0A1030);
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v7 = _s14CodableWrapperVMa_33(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v8 + 20);
  v12 = _s14CodableWrapperVMa_0(0);
  v23 = v11;
  __swift_storeEnumTagSinglePayload(v10 + v11, 1, 1, v12);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFCC0E4();
  v13 = v22;
  sub_18F09459C();
  if (v13)
  {
    v15 = v23;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    return sub_18EF933AC(v10 + v15, &qword_1EACB72D0);
  }

  else
  {
    v22 = v7;
    v14 = v20;
    v27 = 0;
    *v10 = sub_18F09423C();
    v10[1] = v16;
    v26 = 1;
    sub_18EF8558C(&unk_1ED5FF4F8);
    sub_18F09426C();
    sub_18EF872D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8240, &qword_18F0A1038);
    v25 = 2;
    sub_18F018AF0();
    v17 = v21;
    sub_18F0942CC();
    (*(v14 + 8))(v6, v17);
    *(v10 + *(v22 + 24)) = v24;
    sub_18EF86A14(v10, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_18EF86A6C();
  }
}

uint64_t sub_18EFC9408@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v22 = _s14CodableWrapperVMa_0(0);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8218, &qword_18F0A1020);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = _s14CodableWrapperVMa_35(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFC9854();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20 = a1;
  v12 = v23;
  v13 = v24;
  v27 = 0;
  *v11 = sub_18F09427C();
  v11[1] = v14;
  v26 = 1;
  v11[2] = sub_18F09427C();
  v11[3] = v15;
  v25 = 2;
  sub_18EF8558C(&unk_1ED5FF4F8);
  v19 = v11;
  sub_18F0942CC();
  (*(v12 + 8))(v8, v13);
  v16 = *(v9 + 24);
  v17 = v19;
  sub_18EF88240(v5, v19 + v16);
  sub_18EF86A14(v17, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return sub_18EF86A6C();
}

unint64_t sub_18EFC97A8()
{
  result = qword_1EACB7170;
  if (!qword_1EACB7170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7170);
  }

  return result;
}

unint64_t sub_18EFC9800()
{
  result = qword_1EACB7178;
  if (!qword_1EACB7178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7178);
  }

  return result;
}

unint64_t sub_18EFC9854()
{
  result = qword_1EACB7180;
  if (!qword_1EACB7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7180);
  }

  return result;
}

uint64_t sub_18EFC98B0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0x7954797469746E65;
  }

  return 0x656C746974;
}

uint64_t sub_18EFC990C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7310, &qword_18F09BD48);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB81C0, &qword_18F0A1000);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v6 = v33 - v5;
  v7 = _s14CodableWrapperVMa_32(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v8 + 64);
  v12 = _s14CodableWrapperVMa_1(0);
  v44 = v11;
  v45 = v10;
  __swift_storeEnumTagSinglePayload(v10 + v11, 1, 1, v12);
  v13 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v13);
  sub_18EFCBE50();
  v36 = v6;
  sub_18F09459C();
  if (v2)
  {
    v39 = 0;
    v40 = 0;
    v42 = 0;
    v43 = 0xF000000000000007;
    v41 = 0xF000000000000007;
    v16 = v45;
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    sub_18EFA3D90(v41);
    sub_18EFA3D90(v43);

    sub_18EF933AC(v16 + v44, &unk_1EACB7310);
  }

  else
  {
    v14 = v35;
    LOBYTE(v46) = 0;
    v15 = sub_18F09427C();
    v17 = v45;
    *v45 = v15;
    v17[1] = v18;
    LOBYTE(v46) = 1;
    v17[2] = sub_18F09427C();
    v17[3] = v19;
    LOBYTE(v46) = 2;
    v17[4] = sub_18F09427C();
    v17[5] = v20;
    v48 = 3;
    v43 = sub_18EF8882C();
    sub_18F09426C();
    v41 = v46;
    v17[6] = v46;
    v48 = 4;
    sub_18F09426C();
    v43 = v46;
    v17[7] = v46;
    LOBYTE(v46) = 5;
    v17[8] = sub_18F09423C();
    v17[9] = v21;
    v42 = v21;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73B0, &qword_18F09BD80);
    v48 = 6;
    sub_18EF85B48(&unk_1ED5FF4A0);
    sub_18F09426C();
    v40 = v46;
    v17[10] = v46;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB73C0, &qword_18F09BD88);
    v48 = 7;
    sub_18EF861C4();
    sub_18F09426C();
    v39 = v46;
    v17[11] = v46;
    v33[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB81D0, &qword_18F0A1008);
    v48 = 8;
    sub_18EFCBEA4();
    sub_18F0942CC();
    v17[12] = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB81D8, &qword_18F0A1010);
    v48 = 9;
    sub_18EFCBF58();
    sub_18F0942CC();
    v45[13] = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
    v48 = 10;
    sub_18EF9CC4C();
    sub_18F09426C();
    v45[14] = v46;
    type metadata accessor for LNQueryCapabilities(0, v22, v23, v24);
    v48 = 11;
    sub_18EF8558C(&unk_1ED5FE350);
    sub_18F09426C();
    v25 = v45;
    v26 = v47;
    v45[15] = v46;
    *(v25 + 128) = v26;
    LOBYTE(v46) = 12;
    sub_18EF8558C(&unk_1ED5FF140);
    sub_18F09426C();
    sub_18EF872D4();
    v48 = 13;
    sub_18EF99E5C();
    sub_18F09426C();
    *(v45 + v7[17]) = v46;
    LOBYTE(v46) = 14;
    *(v45 + v7[18]) = sub_18F09424C();
    LOBYTE(v46) = 15;
    v27 = sub_18F09423C();
    v28 = (v45 + v7[19]);
    *v28 = v27;
    v28[1] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB74F8, &qword_18F09BDD8);
    v48 = 16;
    sub_18F0135BC();
    sub_18F09426C();
    v30 = v7[20];
    (*(v14 + 8))(v36, v37);
    v31 = v45;
    *(v45 + v30) = v46;
    sub_18EF86A14(v31, v34);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    return sub_18EF86A6C();
  }
}

unint64_t sub_18EFCA3F0(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x7079547972657571;
      break;
    case 2:
      result = 0x7954797469746E65;
      break;
    case 3:
      result = 0x6C61567475706E69;
      break;
    case 4:
      result = 0x6156746C75736572;
      break;
    case 5:
      result = 0x5464656C676E616DLL;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0x6574656D61726170;
      break;
    case 9:
      result = 0x4F676E6974726F73;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x696C696261706163;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 16:
      result = 0x546465776F6C6C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18EFCA70C(uint64_t a1)
{
  sub_18EF802BC(319, &unk_1ED5FD7E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_18EFBDAD4(319, &unk_1ED5FD720, &qword_1EACB73B0);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_18EFBDAD4(319, &qword_1ED5FD6D0, &qword_1EACB73C0);
    if (v6 > 0x3F)
    {
      return v4;
    }

    v4 = _s14CodableWrapperVMa_0(319);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_18EFBDB20(319, &qword_1ED5FF4D8, _s14CodableWrapperVMa_0, MEMORY[0x1E69E6720]);
    if (v8 > 0x3F)
    {
      return v4;
    }

    sub_18EFBDB20(319, &qword_1ED5FD3D8, _s14CodableWrapperVMa_18, MEMORY[0x1E69E62F8]);
    if (v9 > 0x3F)
    {
      return v4;
    }

    sub_18EFBDAD4(319, &unk_1ED5FD710, &qword_1EACB7470);
    if (v10 > 0x3F)
    {
      return v4;
    }

    sub_18EF802BC(319, &qword_1ED5FD6B0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    if (v11 > 0x3F)
    {
      return v4;
    }

    sub_18EFBDAD4(319, &qword_1ED5FD7E0, &unk_1EACB75C0);
    if (v12 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_18EFBDAD4(319, &unk_1ED5FD6B8, &qword_1EACB74A8);
      v2 = v13;
      if (v14 <= 0x3F)
      {
        sub_18EF802BC(319, &qword_1ED5FD698, &_s14CodableWrapperVN_5, MEMORY[0x1E69E6720]);
        v2 = v15;
        if (v16 <= 0x3F)
        {
          sub_18EFBDAD4(319, &unk_1ED5FD1F8, &qword_1EACB74F8);
          v2 = v17;
          if (v18 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

uint64_t sub_18EFCAA04(uint64_t a1)
{
  result = _s14CodableWrapperVMa_2(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_18EFCAA94()
{
  result = qword_1ED5FDF70;
  if (!qword_1ED5FDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDF70);
  }

  return result;
}

unint64_t sub_18EFCAAEC()
{
  result = qword_1ED5FDF78;
  if (!qword_1ED5FDF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDF78);
  }

  return result;
}

unint64_t sub_18EFCAB54()
{
  result = qword_1ED5FDFB0;
  if (!qword_1ED5FDFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDFB0);
  }

  return result;
}

unint64_t sub_18EFCABAC()
{
  result = qword_1ED5FDFB8;
  if (!qword_1ED5FDFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDFB8);
  }

  return result;
}

unint64_t sub_18EFCAC00()
{
  result = qword_1ED5FDC10;
  if (!qword_1ED5FDC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDC10);
  }

  return result;
}

unint64_t sub_18EFCAC58()
{
  result = qword_1ED5FDC18;
  if (!qword_1ED5FDC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDC18);
  }

  return result;
}

unint64_t sub_18EFCACC0()
{
  result = qword_1ED5FDC20;
  if (!qword_1ED5FDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDC20);
  }

  return result;
}

unint64_t sub_18EFCAD18()
{
  result = qword_1ED5FDC28;
  if (!qword_1ED5FDC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDC28);
  }

  return result;
}

unint64_t sub_18EFCAD80()
{
  result = qword_1ED5FDC50;
  if (!qword_1ED5FDC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDC50);
  }

  return result;
}

unint64_t sub_18EFCADD8()
{
  result = qword_1ED5FDC58;
  if (!qword_1ED5FDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDC58);
  }

  return result;
}

id sub_18EFCAE3C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_18F093B5C();
  v4 = sub_18F093B5C();
  v5 = [v2 initWithDomain:v3 key:v4 value:*(a1 + 32)];

  return v5;
}

unint64_t sub_18EFCAEEC()
{
  result = qword_1ED5FE6A0;
  if (!qword_1ED5FE6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE6A0);
  }

  return result;
}

void sub_18EFCAF44(uint64_t a1)
{
  if (!qword_1ED5FD3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7860, &qword_18F09DA60);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED5FD3F8);
    }
  }
}

double sub_18EFCAFCC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_18EFC444C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_18EFCB014()
{
  result = qword_1ED5FDDC0;
  if (!qword_1ED5FDDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDDC0);
  }

  return result;
}

unint64_t sub_18EFCB06C()
{
  result = qword_1ED5FDDC8;
  if (!qword_1ED5FDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDDC8);
  }

  return result;
}

unint64_t sub_18EFCB0C0()
{
  result = qword_1ED5FDDD0[0];
  if (!qword_1ED5FDDD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED5FDDD0);
  }

  return result;
}

unint64_t sub_18EFCB140()
{
  result = qword_1ED5FE360;
  if (!qword_1ED5FE360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE360);
  }

  return result;
}

unint64_t sub_18EFCB198()
{
  result = qword_1ED5FE368;
  if (!qword_1ED5FE368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE368);
  }

  return result;
}

unint64_t sub_18EFCB1EC()
{
  result = qword_1ED5FE6F0;
  if (!qword_1ED5FE6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE6F0);
  }

  return result;
}

unint64_t sub_18EFCB240()
{
  result = qword_1ED5FE6B8;
  if (!qword_1ED5FE6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE6B8);
  }

  return result;
}

void sub_18EFCB294(uint64_t a1)
{
  sub_18EFBDB20(319, &unk_1ED5FD3A0, _s14CodableWrapperVMa_0, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_18EFBDB20(319, &qword_1ED5FF4D8, _s14CodableWrapperVMa_0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_18EF802BC(319, &unk_1ED5FD7E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_18EF802BC(319, &unk_1EACB7058, &_s14CodableWrapperVN_13, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_18EFBDAD4(319, &unk_1ED5FD710, &qword_1EACB7470);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_18EFCB430(uint64_t a1)
{
  sub_18EF802BC(319, &unk_1ED5FD7E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_18EFBDB20(319, &qword_1ED5FF4D8, _s14CodableWrapperVMa_0, MEMORY[0x1E69E6720]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_18EF802BC(319, &unk_1ED5FD620, MEMORY[0x1E69E6810], MEMORY[0x1E69E6720]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_18EF802BC(319, &qword_1ED5FD6B0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    if (v7 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_18EFCB5F0(uint64_t a1)
{
  if (!qword_1ED5FD390)
  {
    MEMORY[0x1EEE9AC00](0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7838, &qword_18F09DA10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7860, &qword_18F09DA60);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED5FD390);
    }
  }
}

void sub_18EFCB738(uint64_t a1)
{
  sub_18F015168(319);
  if (v1 <= 0x3F)
  {
    sub_18F0151E0(319);
    if (v2 <= 0x3F)
    {
      sub_18F015258(319);
      if (v3 <= 0x3F)
      {
        sub_18F0152D0(319);
        if (v4 <= 0x3F)
        {
          sub_18EFCAF44(319);
          if (v5 <= 0x3F)
          {
            sub_18EFCB9BC(319);
            if (v6 <= 0x3F)
            {
              sub_18EFCB5F0(319);
              if (v7 <= 0x3F)
              {
                sub_18EFCBC78();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_18EFCB824(uint64_t a1)
{
  sub_18EFBDB20(319, &unk_1ED5FDCA8, _s19BasicCodableWrapperOMa, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_18EF802BC(319, &qword_1ED5FD6B0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_18EFCB908()
{
  result = qword_1ED5FDF90;
  if (!qword_1ED5FDF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDF90);
  }

  return result;
}

unint64_t sub_18EFCB95C()
{
  result = qword_1ED5FE7A0;
  if (!qword_1ED5FE7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE7A0);
  }

  return result;
}

void sub_18EFCB9BC(uint64_t a1)
{
  if (!qword_1EACB7890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7898, &qword_18F09DC48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB7860, &qword_18F09DA60);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EACB7890);
    }
  }
}

unint64_t sub_18EFCBA60()
{
  result = qword_1ED5FE7A8;
  if (!qword_1ED5FE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE7A8);
  }

  return result;
}

unint64_t sub_18EFCBAC4()
{
  result = qword_1ED5FE0A0;
  if (!qword_1ED5FE0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE0A0);
  }

  return result;
}

unint64_t sub_18EFCBB18()
{
  result = qword_1ED5FE0A8;
  if (!qword_1ED5FE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE0A8);
  }

  return result;
}

unint64_t sub_18EFCBB7C()
{
  result = qword_1ED5FE080;
  if (!qword_1ED5FE080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE080);
  }

  return result;
}

unint64_t sub_18EFCBBD0()
{
  result = qword_1ED5FE088;
  if (!qword_1ED5FE088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE088);
  }

  return result;
}

unint64_t sub_18EFCBC24()
{
  result = qword_1ED5FDF98;
  if (!qword_1ED5FDF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDF98);
  }

  return result;
}

void sub_18EFCBC78()
{
  if (!qword_1ED5FD408)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED5FD408);
    }
  }
}

unint64_t sub_18EFCBCE8()
{
  result = qword_1ED5FD538;
  if (!qword_1ED5FD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD538);
  }

  return result;
}

unint64_t sub_18EFCBD3C()
{
  result = qword_1ED5FD540;
  if (!qword_1ED5FD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD540);
  }

  return result;
}

unint64_t sub_18EFCBDA4()
{
  result = qword_1ED5FD4A8;
  if (!qword_1ED5FD4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD4A8);
  }

  return result;
}

unint64_t sub_18EFCBDFC()
{
  result = qword_1ED5FD4B0;
  if (!qword_1ED5FD4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD4B0);
  }

  return result;
}

unint64_t sub_18EFCBE50()
{
  result = qword_1ED5FE378;
  if (!qword_1ED5FE378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE378);
  }

  return result;
}

unint64_t sub_18EFCBEA4()
{
  result = qword_1ED5FE388;
  if (!qword_1ED5FE388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACB81D0, &qword_18F0A1008);
    sub_18EF8558C(&unk_1ED5FE340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE388);
  }

  return result;
}

unint64_t sub_18EFCBF58()
{
  result = qword_1ED5FE380;
  if (!qword_1ED5FE380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACB81D8, &qword_18F0A1010);
    sub_18EF8558C(&unk_1ED5FE328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FE380);
  }

  return result;
}

unint64_t sub_18EFCC038()
{
  result = qword_1EACB7220;
  if (!qword_1EACB7220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7220);
  }

  return result;
}

unint64_t sub_18EFCC090()
{
  result = qword_1EACB7228;
  if (!qword_1EACB7228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7228);
  }

  return result;
}

unint64_t sub_18EFCC0E4()
{
  result = qword_1EACB7238;
  if (!qword_1EACB7238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7238);
  }

  return result;
}

unint64_t sub_18EFCC148()
{
  result = qword_1EACB71F0;
  if (!qword_1EACB71F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB71F0);
  }

  return result;
}

uint64_t sub_18EFCC19C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8260, &qword_18F0A1048);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFCC4BC();
  sub_18F09459C();
  LOBYTE(v9) = 0;
  v6 = sub_18F0942BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7BA8, &qword_18F0A0C48);
  HIBYTE(v8) = 1;
  sub_18F017B70();
  sub_18F0942CC();
  HIBYTE(v8) = 2;
  sub_18EF8882C();
  sub_18F0942CC();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t sub_18EFCC3C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18EFCC19C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_18EFCC40C()
{
  result = qword_1EACB7200;
  if (!qword_1EACB7200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7200);
  }

  return result;
}

unint64_t sub_18EFCC468()
{
  result = qword_1EACB7208;
  if (!qword_1EACB7208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7208);
  }

  return result;
}

unint64_t sub_18EFCC4BC()
{
  result = qword_1EACB7218;
  if (!qword_1EACB7218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACB7218);
  }

  return result;
}

uint64_t sub_18EFCC518(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x70795465756C6176;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_18EFCC5BC()
{
  result = qword_1ED5FDB18;
  if (!qword_1ED5FDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDB18);
  }

  return result;
}

unint64_t sub_18EFCC620()
{
  result = qword_1ED5FDBA0;
  if (!qword_1ED5FDBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDBA0);
  }

  return result;
}

unint64_t sub_18EFCC674()
{
  result = qword_1ED5FDB10;
  if (!qword_1ED5FDB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDB10);
  }

  return result;
}

unint64_t sub_18EFCC6C8()
{
  result = qword_1ED5FDBB8;
  if (!qword_1ED5FDBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDBB8);
  }

  return result;
}

unint64_t sub_18EFCC72C()
{
  result = qword_1ED5FDB90;
  if (!qword_1ED5FDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDB90);
  }

  return result;
}

unint64_t sub_18EFCC780()
{
  result = qword_1ED5FDB98;
  if (!qword_1ED5FDB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDB98);
  }

  return result;
}

unint64_t sub_18EFCC804()
{
  result = qword_1ED5FDBA8;
  if (!qword_1ED5FDBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDBA8);
  }

  return result;
}

unint64_t sub_18EFCC868()
{
  result = qword_1ED5FDB70;
  if (!qword_1ED5FDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDB70);
  }

  return result;
}

unint64_t sub_18EFCC8BC()
{
  result = qword_1ED5FDB78;
  if (!qword_1ED5FDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDB78);
  }

  return result;
}

unint64_t sub_18EFCC910()
{
  result = qword_1ED5FDB80;
  if (!qword_1ED5FDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDB80);
  }

  return result;
}

unint64_t sub_18EFCC964()
{
  result = qword_1ED5FDB88;
  if (!qword_1ED5FDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDB88);
  }

  return result;
}

unint64_t sub_18EFCC9B8()
{
  result = qword_1ED5FDBB0;
  if (!qword_1ED5FDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FDBB0);
  }

  return result;
}

void sub_18EFCCA0C(uint64_t a1)
{
  sub_18EFC414C(319, &unk_1ED5FE700, &qword_1ED5FE5D8, 0x1E696AFD0, MEMORY[0x1E6968070]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LNMeasurementUnitType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}