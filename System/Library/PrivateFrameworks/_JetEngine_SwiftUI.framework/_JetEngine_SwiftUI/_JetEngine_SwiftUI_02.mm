unint64_t sub_1B7990C4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465B0, &unk_1B7A9D3A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465B8, &unk_1B7A9DC10);
    v7 = sub_1B7A9ADC0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B7957820(v9, v5, &qword_1EBA465B0, &unk_1B7A9D3A0);
      result = sub_1B7995D44();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1B7A991E0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_1B7957D54(&v5[v8], (v7[7] + 32 * v13));
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

unint64_t sub_1B7990E38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465A8, &qword_1B7A9DC20);
    v3 = sub_1B7A9ADC0();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_1B79948B8(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
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

unint64_t sub_1B7990F54(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46560, &qword_1B7A9D348);
  v4 = sub_1B7A9ADC0();
  v5 = *(a1 + 32);
  v19 = *(a1 + 40);
  result = sub_1B7994C28(v5);
  v7 = v19;
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v17 = v7;
    v18 = v1;
    return v4;
  }

  v9 = (a1 + 64);
  while (1)
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v4[6] + 8 * result) = v5;
    *(v4[7] + 16 * result) = v7;
    v10 = v4[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v4[2] = v12;
    v1 = *(&v7 + 1);
    if (!--v2)
    {
      goto LABEL_8;
    }

    v13 = (v9 + 24);
    v5 = *(v9 - 1);
    v20 = *v9;
    v14 = v7;
    v15 = v1;
    result = sub_1B7994C28(v5);
    v9 = v13;
    v7 = v20;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B7991080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46578, &qword_1B7A9D360);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46580, &qword_1B7A9D368);
    v7 = sub_1B7A9ADC0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B7957820(v9, v5, &qword_1EBA46578, &qword_1B7A9D360);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1B79948B8(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1B7A96B90();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_1B799126C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46568, &qword_1B7A9D350);
    v3 = sub_1B7A9ADC0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7957820(v4, v15, &qword_1EBA46570, &qword_1B7A9D358);
      result = sub_1B7994ACC(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = v3[7] + 24 * result;
      v11 = v18;
      *v10 = v17;
      *(v10 + 16) = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 64;
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

uint64_t sub_1B799145C(void *a1)
{
  sub_1B7A96BF0();
  sub_1B7A99B70();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1B7A9A290();
}

uint64_t ClickLocationConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B7A995F0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ClickLocationConfiguration.init(pageMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1B7A96C20();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C0, &qword_1B7A9D3B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_1B7A98E30();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ClickLocationConfiguration(0);
  v13 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_1B7957820(a1, v8, &qword_1EBA465C0, &qword_1B7A9D3B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B7957888(v8, &qword_1EBA465C0, &qword_1B7A9D3B0);
LABEL_10:
    v21 = v29;
    sub_1B7A99720();
    sub_1B7957888(v28, &qword_1EBA465C0, &qword_1B7A9D3B0);
    v22 = 1;
    return (*(v13 + 56))(v21, v22, 1, v27);
  }

  (*(v10 + 32))(v12, v8, v9);
  v16 = sub_1B7A98DC0();
  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = v16;
  if (!*(v16 + 16) || (v18 = sub_1B7994BA4(0x644965676170, 0xE600000000000000, sub_1B7994C6C), (v19 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_1B79948D0(*(v17 + 56) + 32 * v18, v31);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    (*(v10 + 8))(v12, v9);
    goto LABEL_10;
  }

  v24 = v30;
  sub_1B7A98E20();
  sub_1B7A96C10();
  sub_1B7A96C00();
  (*(v25 + 8))(v5, v26);
  sub_1B7A995E0();
  sub_1B7957888(v28, &qword_1EBA465C0, &qword_1B7A9D3B0);
  (*(v10 + 8))(v12, v9);
  v20 = sub_1B7A995F0();
  (*(*(v20 - 8) + 56))(v15, 0, 1, v20);
  v21 = v29;
  sub_1B7994A64(v15, v29, type metadata accessor for ClickLocationConfiguration);
  v22 = 0;
  return (*(v13 + 56))(v21, v22, 1, v27);
}

uint64_t sub_1B7991B00(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B7A99900();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C0, &qword_1B7A9D3B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1B7A99360();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(v10 + 16))(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v11 = sub_1B7A98E30();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_1B7A998F0();
  sub_1B7A99990();
  swift_allocObject();

  return sub_1B7A99930();
}

uint64_t sub_1B7991CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v52 = a1;
  v56 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46620, &qword_1B7A9D5D8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v42 - v4;
  v5 = type metadata accessor for PageMetricsViewModifier.Instrumentation(0);
  v6 = *(v5 - 8);
  v53 = v5 - 8;
  v51 = v6;
  v50 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46628, &qword_1B7A9D5E0);
  MEMORY[0x1EEE9AC00](v59);
  v9 = &v42 - v8;
  v10 = sub_1B7A99900();
  v11 = *(v10 - 8);
  v57 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v45 = v3;
  sub_1B7992210(v3, (&v42 - v15));
  KeyPath = swift_getKeyPath();
  v18 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46630, &qword_1B7A9D5E8) + 36)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46638, &qword_1B7A9D5F0);
  v20 = *(v11 + 16);
  v21 = v18 + *(v19 + 28);
  v58 = v16;
  v20(v21, v16, v10);
  v46 = v20;
  *v18 = KeyPath;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46640, &qword_1B7A9D5F8);
  v23 = *(*(v22 - 8) + 16);
  v47 = v9;
  v23(v9, v52, v22);
  v24 = v3;
  v25 = v48;
  sub_1B7995508(v24, v48);
  v43 = v10;
  v20(v13, v16, v10);
  v26 = *(v51 + 80);
  v27 = (v26 + 16) & ~v26;
  v28 = *(v11 + 80);
  v29 = v11;
  v49 = v11;
  v30 = (v50 + v28 + v27) & ~v28;
  v52 = v26 | v28;
  v31 = swift_allocObject();
  v51 = type metadata accessor for PageMetricsViewModifier.Instrumentation;
  sub_1B7994A64(v25, v31 + v27, type metadata accessor for PageMetricsViewModifier.Instrumentation);
  v32 = *(v29 + 32);
  v33 = v44;
  v32(v31 + v30, v44, v10);
  v34 = swift_getKeyPath();
  v35 = &v9[*(v59 + 36)];
  *v35 = sub_1B799556C;
  *(v35 + 1) = v31;
  *(v35 + 2) = v34;
  *(v35 + 3) = 0;
  *(v35 + 16) = 0;
  v36 = v54;
  v37 = v45;
  sub_1B7957820(v45 + *(v53 + 40), v54, &qword_1EBA465C0, &qword_1B7A9D3B0);
  sub_1B7995508(v37, v25);
  v38 = v43;
  v46(v33, v58, v43);
  v39 = swift_allocObject();
  sub_1B7994A64(v25, v39 + v27, v51);
  v32(v39 + v30, v33, v38);
  sub_1B7995B64();
  sub_1B797EC34(&qword_1EDC0FC98, &qword_1EBA46620, &qword_1B7A9D5D8, MEMORY[0x1E69AAFF0]);
  v40 = v47;
  sub_1B7A984B0();

  sub_1B7957888(v36, &qword_1EBA46620, &qword_1B7A9D5D8);
  sub_1B7957888(v40, &qword_1EBA46628, &qword_1B7A9D5E0);
  return (*(v49 + 8))(v58, v38);
}

uint64_t sub_1B7992210@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46650, &qword_1B7A9D630);
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46658, &qword_1B7A9D638);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C0, &qword_1B7A9D3B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D78, &qword_1B7A9D640);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v16 = type metadata accessor for PageMetricsViewModifier.Instrumentation(0);
  sub_1B797BE80(a2);
  v17 = (a1 + v16[9]);
  v18 = *v17;
  if (*v17)
  {
    v19 = v17[1];
    *&v31 = v18;
    *(&v31 + 1) = v19;
    swift_unknownObjectRetain();
    sub_1B7A99890();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D88, &qword_1B7A9C4F8);
    sub_1B7A998E0();
    (*(v13 + 8))(v15, v12);
    swift_unknownObjectRelease();
  }

  sub_1B7957820(a1 + v16[8], v11, &qword_1EBA465C0, &qword_1B7A9D3B0);
  v20 = sub_1B7A98E30();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v11, 1, v20) == 1)
  {
    sub_1B7957888(v11, &qword_1EBA465C0, &qword_1B7A9D3B0);
  }

  else
  {
    v22 = sub_1B7A98DC0();
    (*(v21 + 8))(v11, v20);
    if (v22)
    {
      *&v31 = v22;
      sub_1B7A998D0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46668, &unk_1B7A9D650);
      sub_1B7A998E0();
      (*(v25 + 8))(v8, v26);
    }
  }

  v31 = *(a1 + v16[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46660, &qword_1B7A9D648);
  result = sub_1B7A986D0();
  if (v30)
  {
    *&v31 = v30;
    v24 = v27;
    sub_1B7A998A0();
    sub_1B7A99850();
    sub_1B7A998E0();
    (*(v28 + 8))(v24, v29);
  }

  return result;
}

uint64_t sub_1B799264C(char a1, uint64_t a2, uint64_t a3)
{
  v96 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46648, &qword_1B7A9D600);
  v83 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v77 - v6;
  v7 = sub_1B7A99BB0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v77 - v12;
  v14 = sub_1B7A97880();
  v87 = *(v14 - 8);
  v88 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C0, &qword_1B7A9D3B0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v93 = &v77 - v17;
  v18 = sub_1B7A99900();
  v91 = *(v18 - 8);
  v92 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B7A9A280();
  v89 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v94 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B7A97480();
  v81 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v80 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F08, &qword_1B7A9C680);
  MEMORY[0x1EEE9AC00](v24 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v95 = (&v77 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v30 = (&v77 - v29);
  if ((a1 & 1) == 0)
  {
    v77 = v28;
    v78 = v8;
    v84 = v7;
    v40 = type metadata accessor for PageMetricsViewModifier.Instrumentation(0);
    v41 = a2 + *(v40 + 40);
    v42 = *v41;
    if (*(v41 + 8) == 1)
    {
      if (*v41 != 4)
      {
LABEL_10:
        v47 = a2 + *(v40 + 52);
        v48 = *v47;
        v49 = *(v47 + 8);
        v50 = *(v47 + 16);
        v99 = v48;
        LOBYTE(v100) = v49;
        v101 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465E8, &qword_1B7A9D548);
        sub_1B7A986D0();
        v89 = v97;
        LODWORD(v94) = v98;
        sub_1B797BECC(v95);
        v51 = *(v40 + 48);
        v85 = a2;
        v52 = a2 + v51;
        v53 = *v52;
        v54 = *(v52 + 8);
        v55 = *(v52 + 16);
        if (*(v52 + 17) == 1)
        {
          sub_1B797DEF0(*v52, v54);
          if (!v54)
          {
            goto LABEL_15;
          }
        }

        else
        {

          sub_1B7A9AA10();
          v56 = sub_1B7A97E70();
          sub_1B7A96D30();

          v57 = v86;
          sub_1B7A97870();
          swift_getAtKeyPath();
          sub_1B797D5A0(v53, v54, v55, 0);
          (*(v87 + 8))(v57, v88);
          v53 = v99;
          v54 = v100;
          LOBYTE(v55) = v101;
          if (!v100)
          {
            goto LABEL_15;
          }
        }

        v99 = v53;
        v100 = v54;
        LOBYTE(v101) = v55 & 1;

        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DF8, &qword_1B7AA0470);
        MEMORY[0x1B8CA9A40](&v97, v58);
        v59 = v97;

        if ((v59 & 1) == 0)
        {
          sub_1B7A99B90();
          goto LABEL_30;
        }

LABEL_15:
        if ((v94 & 1) == 0)
        {
          v60 = v77;
          sub_1B7957820(v95, v77, &qword_1EBA45F08, &qword_1B7A9C680);
          if ((*(v83 + 48))(v60, 1, v5) == 1)
          {
            v61 = &qword_1EBA45F08;
            v62 = &qword_1B7A9C680;
            v63 = v60;
          }

          else
          {
            v70 = v79;
            sub_1B7995CD4(v60, v79);
            v71 = v80;
            v72 = v5;
            v73 = v70;
            MEMORY[0x1B8CA9A40](v72);
            v74 = sub_1B7A97440();
            result = (*(v81 + 8))(v71, v22);
            if (__OFSUB__(v89, 1))
            {
              __break(1u);
              return result;
            }

            if (v74 == v89 - 1)
            {
              sub_1B7A99BA0();
              sub_1B797D5AC(v53, v54);
              sub_1B7957888(v73, &qword_1EBA46648, &qword_1B7A9D600);
LABEL_31:
              sub_1B7957888(v95, &qword_1EBA45F08, &qword_1B7A9C680);
              v75 = v78;
              (*(v78 + 32))(v13, v10, v84);
              v76 = v85;
              v95 = v40;
              sub_1B7A99990();
              sub_1B7957B74(&qword_1EDC0FC80, MEMORY[0x1E69AB2C8], &protocol conformance descriptor for PageMetricsPresenter);
              sub_1B7A97120();
              sub_1B7A99950();

              sub_1B7A97120();
              (*(v91 + 16))(v90, v96, v92);
              sub_1B7A99980();

              sub_1B7A97120();
              sub_1B7957820(v76 + *(v95 + 8), v93, &qword_1EBA465C0, &qword_1B7A9D3B0);
              sub_1B7A99970();

              return (*(v75 + 8))(v13, v84);
            }

            v61 = &qword_1EBA46648;
            v62 = &qword_1B7A9D600;
            v63 = v73;
          }

          sub_1B7957888(v63, v61, v62);
        }

        sub_1B7A99B80();
LABEL_30:
        sub_1B797D5AC(v53, v54);
        goto LABEL_31;
      }
    }

    else
    {

      sub_1B7A9AA10();
      v43 = sub_1B7A97E70();
      sub_1B7A96D30();

      v44 = v86;
      sub_1B7A97870();
      swift_getAtKeyPath();
      sub_1B795AE10(v42, 0);
      (*(v87 + 8))(v44, v88);
      if (v99 != 4)
      {
        goto LABEL_10;
      }
    }

    sub_1B7A9A240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
    sub_1B7A98D10();
    v82 = v20;
    *(swift_allocObject() + 16) = xmmword_1B7A9D290;
    sub_1B7A98C40();
    sub_1B7A98C40();
    sub_1B7A98C40();
    sub_1B7A98C40();
    v45 = v82;
    v46 = v94;
    sub_1B7A99E60();

    (*(v89 + 8))(v46, v45);
    goto LABEL_10;
  }

  v82 = v20;
  v31 = v5;
  v32 = type metadata accessor for PageMetricsViewModifier.Instrumentation(0);
  v33 = a2 + *(v32 + 52);
  v34 = *v33;
  v35 = *(v33 + 8);
  v36 = *(v33 + 16);
  v99 = *v33;
  LOBYTE(v100) = v35;
  v101 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465E8, &qword_1B7A9D548);
  sub_1B7A986D0();
  v95 = v32;
  if (v98)
  {
    sub_1B797BECC(v30);
    v37 = v31;
    v38 = (*(v83 + 48))(v30, 1, v31);
    if (v38 == 1)
    {
      sub_1B7957888(v30, &qword_1EBA45F08, &qword_1B7A9C680);
      v39 = 0;
    }

    else
    {
      v64 = v80;
      MEMORY[0x1B8CA9A40](v37);
      sub_1B7957888(v30, &qword_1EBA46648, &qword_1B7A9D600);
      v39 = sub_1B7A97440();
      (*(v81 + 8))(v64, v22);
    }

    v99 = v34;
    LOBYTE(v100) = v35;
    v101 = v36;
    v97 = v39;
    v98 = v38 == 1;
    sub_1B7A986E0();
  }

  sub_1B7A99990();
  sub_1B7957B74(&qword_1EDC0FC80, MEMORY[0x1E69AB2C8], &protocol conformance descriptor for PageMetricsPresenter);
  sub_1B7A97120();
  v65 = sub_1B7A99960();

  v66 = v96;
  if ((v65 & 1) == 0)
  {
    sub_1B7A9A240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
    sub_1B7A98D10();
    v85 = a2;
    *(swift_allocObject() + 16) = xmmword_1B7A9D280;
    sub_1B7A98C40();
    a2 = v85;
    sub_1B7A98C40();
    v66 = v96;
    sub_1B7A98C40();
    v67 = v82;
    v68 = v94;
    sub_1B7A99E60();

    (*(v89 + 8))(v68, v67);
  }

  sub_1B7A97120();
  (*(v91 + 16))(v90, v66, v92);
  sub_1B7A99980();

  sub_1B7A97120();
  sub_1B7957820(a2 + *(v95 + 8), v93, &qword_1EBA465C0, &qword_1B7A9D3B0);
  sub_1B7A99970();

  sub_1B7A97120();
  sub_1B7A99940();
}

uint64_t sub_1B7993558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v57 = a3;
  v55 = sub_1B7A99900();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1B7A98E10();
  v69 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v52 - v9;
  v10 = sub_1B7A98DE0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C0, &qword_1B7A9D3B0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v52 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v52 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v52 - v25;
  v27 = sub_1B7A9A760();
  v73 = sub_1B7A9A750();
  v74 = v27;
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7957820(a1, v26, &qword_1EBA465C0, &qword_1B7A9D3B0);
  sub_1B7957820(a2, v23, &qword_1EBA465C0, &qword_1B7A9D3B0);
  sub_1B7957820(v26, v20, &qword_1EBA465C0, &qword_1B7A9D3B0);
  v28 = sub_1B7A98E30();
  v29 = *(v28 - 8);
  v71 = *(v29 + 48);
  v72 = v29 + 48;
  v30 = v71(v20, 1, v28);
  v76 = v26;
  if (v30 == 1)
  {
    sub_1B7957888(v20, &qword_1EBA465C0, &qword_1B7A9D3B0);
    v31 = v70;
  }

  else
  {
    v32 = sub_1B7A98DF0();
    (*(v29 + 8))(v20, v28);
    result = v32;
    v59 = *(v32 + 16);
    if (!v59)
    {
LABEL_20:

      v47 = v71;
      v71(v26, 1, v28);
      v31 = v70;
      goto LABEL_21;
    }

    v34 = 0;
    v61 = result + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v60 = v11 + 16;
    v78 = v69 + 16;
    v80 = (v69 + 8);
    v62 = (v11 + 8);
    v67 = v10;
    v68 = v23;
    v66 = v13;
    v58 = v11;
    v64 = v29;
    v65 = v28;
    v63 = result;
    while (1)
    {
      if (v34 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v35 = *(v11 + 72);
      v75 = v34;
      (*(v11 + 16))(v13, v61 + v35 * v34, v10);
      v77 = sub_1B7A9A750();
      sub_1B7A9A710();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v36 = sub_1B7A98DD0();
      sub_1B7A98E00();
      if (*(v36 + 16))
      {
        sub_1B7957B74(&qword_1EDC0EB18, MEMORY[0x1E69AAF70], MEMORY[0x1E69AAF78]);
        v37 = sub_1B7A9A3E0();
        v38 = -1 << *(v36 + 32);
        v39 = v37 & ~v38;
        if ((*(v36 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
        {
          break;
        }
      }

LABEL_7:
      v34 = v75 + 1;

      (*v80)(v82, v81);
      v13 = v66;
      v10 = v67;
      (*v62)(v66, v67);

      v26 = v76;
      v23 = v68;
      v11 = v58;
      v29 = v64;
      v28 = v65;
      result = v63;
      if (v34 == v59)
      {
        goto LABEL_20;
      }
    }

    v40 = ~v38;
    v41 = *(v69 + 72);
    v42 = *(v69 + 16);
    while (1)
    {
      v43 = v79;
      v44 = v81;
      v42(v79, *(v36 + 48) + v41 * v39, v81);
      sub_1B7957B74(&qword_1EDC0EB10, MEMORY[0x1E69AAF70], MEMORY[0x1E69AAF80]);
      v45 = sub_1B7A9A470();
      v46 = *v80;
      (*v80)(v43, v44);
      if (v45)
      {
        break;
      }

      v39 = (v39 + 1) & v40;
      if (((*(v36 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v46(v82, v81);
    (*v62)(v66, v67);

    v26 = v76;
    v23 = v68;
    v31 = v70;
    v29 = v64;
    v28 = v65;
  }

  v47 = v71;
  if (v71(v26, 1, v28) != 1)
  {
    goto LABEL_25;
  }

LABEL_21:
  sub_1B7957820(v23, v31, &qword_1EBA465C0, &qword_1B7A9D3B0);
  if (v47(v31, 1, v28) == 1)
  {
    sub_1B7957888(v23, &qword_1EBA465C0, &qword_1B7A9D3B0);
  }

  else
  {
    v48 = sub_1B7A98DF0();
    (*(v29 + 8))(v31, v28);
    v49 = *(v48 + 16);

    if (!v49)
    {
LABEL_25:
      v31 = v23;
      goto LABEL_26;
    }

    v50 = type metadata accessor for PageMetricsViewModifier.Instrumentation(0);
    v51 = v57;
    sub_1B7A99990();
    v31 = v23;
    sub_1B7957B74(&qword_1EDC0FC80, MEMORY[0x1E69AB2C8], &protocol conformance descriptor for PageMetricsPresenter);
    sub_1B7A97120();
    (*(v54 + 16))(v53, v56, v55);
    sub_1B7A99980();

    v26 = v76;
    sub_1B7A97120();
    sub_1B7957820(v51 + *(v50 + 32), v52, &qword_1EBA465C0, &qword_1B7A9D3B0);
    sub_1B7A99970();
  }

LABEL_26:
  sub_1B7957888(v31, &qword_1EBA465C0, &qword_1B7A9D3B0);
  sub_1B7957888(v26, &qword_1EBA465C0, &qword_1B7A9D3B0);
}

void *sub_1B7993EE8@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B7995018(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B7993F38(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1B7995018(a1, a2, a3);

  return sub_1B7A978A0();
}

uint64_t sub_1B7993F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C8, &qword_1B7A9D3B8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v77 = &v58[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C0, &qword_1B7A9D3B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v58[-v6];
  v8 = sub_1B7A99360();
  v9 = *(v8 - 8);
  v75 = v8;
  v76 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v68 = v10;
  v69 = &v58[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v58[-v12];
  v13 = sub_1B7A97880();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for PageMetricsViewModifier.Instrumentation(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v70 = &v58[-v21];
  v22 = type metadata accessor for PageMetricsViewModifier(0);
  v23 = v2 + v22[8];
  v24 = *v23;
  v25 = *(v23 + 8);

  if (v25)
  {
    v65 = v24;
  }

  else
  {
    sub_1B7A9AA10();
    v26 = sub_1B7A97E70();
    v71 = v13;
    v27 = v24;
    v28 = v26;
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release(v27);
    (*(v14 + 8))(v16, v71);
    v65 = v80;
  }

  v29 = v22[5];
  v62 = *(v76 + 16);
  v30 = v74;
  v31 = v75;
  v62(v74, v2 + v29);
  v32 = (v2 + v22[6]);
  v33 = *v32;
  v66 = v32[1];
  v71 = v7;
  sub_1B7957820(v2, v7, &qword_1EBA465C0, &qword_1B7A9D3B0);
  sub_1B7957820(v2 + v22[7], v77, &qword_1EBA465C8, &qword_1B7A9D3B8);
  v61 = type metadata accessor for ClickLocationConfiguration(0);
  v34 = *(v61 - 8);
  (*(v34 + 56))(v19, 1, 1, v61);
  v78 = 0;
  v67 = v33;
  swift_unknownObjectRetain();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465E0, &qword_1B7A9D488);
  sub_1B7A986C0();
  v63 = v80;
  v35 = v17[7];
  *&v19[v35] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  swift_storeEnumTagMultiPayload();
  v36 = &v19[v17[10]];
  *v36 = swift_getKeyPath();
  v36[8] = 0;
  v37 = v17[11];
  *&v19[v37] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F00, &qword_1B7A9D510);
  swift_storeEnumTagMultiPayload();
  v38 = &v19[v17[12]];
  *v38 = swift_getKeyPath();
  *(v38 + 1) = 0;
  *(v38 + 8) = 0;
  v39 = &v19[v17[13]];
  v78 = 0;
  v79 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46548, &qword_1B7A9D540);
  sub_1B7A986C0();
  v40 = BYTE8(v80);
  v41 = v81;
  v60 = v80;
  *v39 = v80;
  v59 = v40;
  v39[8] = v40;
  *(v39 + 2) = v41;
  v42 = v69;
  v43 = v31;
  (v62)(v69, v30, v31);
  v44 = v76;
  v45 = (*(v76 + 80) + 24) & ~*(v76 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = v65;
  (*(v44 + 32))(v46 + v45, v42, v43);
  v47 = &v19[v17[5]];
  *v47 = sub_1B7994990;
  *(v47 + 1) = v46;
  v47[16] = 0;
  if ((*(v34 + 48))(v77, 1, v61) == 1)
  {

    v48 = 0;
  }

  else
  {
    sub_1B7A99850();
    swift_allocObject();

    v48 = sub_1B7A99840();
  }

  v49 = v17[6];
  v78 = v48;

  sub_1B7A986C0();

  *&v19[v49] = v80;
  v50 = &v19[v17[9]];
  v51 = v66;
  *v50 = v67;
  v50[1] = v51;
  v52 = v71;
  sub_1B7957820(v71, &v19[v17[8]], &qword_1EBA465C0, &qword_1B7A9D3B0);
  *&v80 = v60;
  BYTE8(v80) = v59;
  v81 = v41;
  v78 = 0;
  v79 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465E8, &qword_1B7A9D548);
  sub_1B7A986E0();

  sub_1B7957888(v52, &qword_1EBA465C0, &qword_1B7A9D3B0);
  (*(v76 + 8))(v74, v75);

  sub_1B79949F4(v77, v19);
  v53 = v70;
  sub_1B7994A64(v19, v70, type metadata accessor for PageMetricsViewModifier.Instrumentation);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465F0, &qword_1B7A9D550);
  v55 = v73;
  (*(*(v54 - 8) + 16))(v73, v72, v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465F8, &qword_1B7A9D558);
  return sub_1B7994A64(v53, v55 + *(v56 + 36), type metadata accessor for PageMetricsViewModifier.Instrumentation);
}

uint64_t View.pageMetrics(_:pipeline:tracker:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C8, &qword_1B7A9D3B8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v19 - v15;
  v17 = type metadata accessor for ClickLocationConfiguration(0);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  View.pageMetrics(_:pipeline:tracker:clickLocationConfiguration:)(a1, a2, a3, a4, v16, a5, a6, a7);
  return sub_1B7957888(v16, &qword_1EBA465C8, &qword_1B7A9D3B8);
}

uint64_t sub_1B79948D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B7994990()
{
  v1 = *(sub_1B7A99360() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1B7991B00(v2, v3);
}

uint64_t sub_1B79949F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C8, &qword_1B7A9D3B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7994A64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B7994ACC(uint64_t a1)
{
  v2 = sub_1B7A9ABF0();

  return sub_1B7994D24(a1, v2);
}

unint64_t sub_1B7994B10(uint64_t a1)
{
  sub_1B7A991E0();
  sub_1B7957B74(&qword_1EBA46600, MEMORY[0x1E69AB090], MEMORY[0x1E69AB098]);
  v2 = sub_1B7A9A3E0();
  return sub_1B7994DEC(a1, v2);
}

uint64_t sub_1B7994BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1B7A9AF80();
  sub_1B7A9A500();
  v5 = sub_1B7A9AFA0();

  return a3(a1, a2, v5);
}

unint64_t sub_1B7994C28(uint64_t a1)
{
  v2 = sub_1B7A9AF70();

  return sub_1B7994FAC(a1, v2);
}

unint64_t sub_1B7994C6C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1B7A9AE80())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B7994D24(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B79913AC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B8CABE40](v9, a1);
      sub_1B7991408(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B7994DEC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1B7A991E0();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1B7957B74(&qword_1EBA46608, MEMORY[0x1E69AB090], MEMORY[0x1E69AB0A0]);
      v16 = sub_1B7A9A470();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1B7994FAC(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1B7995018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC0FF48[0];
  if (!qword_1EDC0FF48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC0FF48);
  }

  return result;
}

void sub_1B7995094(uint64_t a1)
{
  sub_1B7956CAC(319, &qword_1EDC0FEF8, type metadata accessor for ClickLocationConfiguration, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B7995370(319);
    if (v2 <= 0x3F)
    {
      sub_1B7956E94(319, &qword_1EDC0FCB0, &qword_1EBA465E0, &qword_1B7A9D488, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1B7956CAC(319, &qword_1EDC10148, MEMORY[0x1E69AB2B8], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1B7956CAC(319, &qword_1EDC0FCA0, MEMORY[0x1E69AAF88], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1B7956E94(319, &qword_1EDC0FC90, &qword_1EBA45D88, &qword_1B7A9C4F8, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1B7956E94(319, &qword_1EDC0FD80, &qword_1EBA46618, &qword_1B7A9D580, MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1B7956E94(319, &qword_1EDC0FD70, &qword_1EBA45F08, &qword_1B7A9C680, MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
                {
                  sub_1B7956E94(319, &qword_1EDC10140, &qword_1EBA45D08, &unk_1B7A9C310, MEMORY[0x1E697DCC0]);
                  if (v9 <= 0x3F)
                  {
                    sub_1B7956E94(319, &qword_1EDC0FCA8, &qword_1EBA46548, &qword_1B7A9D540, MEMORY[0x1E6981790]);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1B7995370(uint64_t a1)
{
  if (!qword_1EDC0FD68)
  {
    sub_1B7A99990();
    sub_1B7957B74(&qword_1EDC0FC80, MEMORY[0x1E69AB2C8], &protocol conformance descriptor for PageMetricsPresenter);
    v1 = sub_1B7A97140();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC0FD68);
    }
  }
}

unint64_t sub_1B7995404()
{
  result = qword_1EDC0FD58;
  if (!qword_1EDC0FD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA465F8, &qword_1B7A9D558);
    sub_1B797EC34(&qword_1EDC0FD08, &qword_1EBA465F0, &qword_1B7A9D550, MEMORY[0x1E697FDF8]);
    sub_1B7957B74(qword_1EDC0FFF8, type metadata accessor for PageMetricsViewModifier.Instrumentation, &unk_1B7A9D588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FD58);
  }

  return result;
}

uint64_t sub_1B7995508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageMetricsViewModifier.Instrumentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B799556C(char a1)
{
  v3 = *(type metadata accessor for PageMetricsViewModifier.Instrumentation(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1B7A99900() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1B799264C(a1, v1 + v4, v7);
}

uint64_t objectdestroy_39Tm()
{
  v1 = type metadata accessor for PageMetricsViewModifier.Instrumentation(0);
  v2 = *(*(v1 - 1) + 80);
  v19 = *(*(v1 - 1) + 64);
  v3 = sub_1B7A99900();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + ((v2 + 16) & ~v2);
  v7 = type metadata accessor for ClickLocationConfiguration(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = sub_1B7A995F0();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v0 + ((v2 + 16) & ~v2), 1, v8))
    {
      (*(v9 + 8))(v0 + ((v2 + 16) & ~v2), v8);
    }
  }

  sub_1B79599CC(*(v6 + v1[5]), *(v6 + v1[5] + 8));

  v10 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 8))(v6 + v10, v3);
  }

  else
  {
  }

  v11 = v1[8];
  v12 = sub_1B7A98E30();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v6 + v11, 1, v12))
  {
    (*(v13 + 8))(v6 + v11, v12);
  }

  swift_unknownObjectRelease();
  sub_1B795AE10(*(v6 + v1[10]), *(v6 + v1[10] + 8));
  v14 = v6 + v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F00, &qword_1B7A9D510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46648, &qword_1B7A9D600);
    if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
    {

      v16 = *(v15 + 32);
      v17 = sub_1B7A97480();
      (*(*(v17 - 8) + 8))(v14 + v16, v17);
    }
  }

  else
  {
  }

  sub_1B797D5A0(*(v6 + v1[12]), *(v6 + v1[12] + 8), *(v6 + v1[12] + 16), *(v6 + v1[12] + 17));

  (*(v4 + 8))(v0 + ((((v2 + 16) & ~v2) + v19 + v5) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_1B7995A80(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PageMetricsViewModifier.Instrumentation(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1B7A99900() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1B7993558(a1, a2, v2 + v6, v9);
}

unint64_t sub_1B7995B64()
{
  result = qword_1EDC0FD38;
  if (!qword_1EDC0FD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46628, &qword_1B7A9D5E0);
    v3 = sub_1B7995BF0();
    sub_1B797D3EC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FD38);
  }

  return result;
}

unint64_t sub_1B7995BF0()
{
  result = qword_1EDC0FD60;
  if (!qword_1EDC0FD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46630, &qword_1B7A9D5E8);
    sub_1B797EC34(&qword_1EDC0FD10, &qword_1EBA46640, &qword_1B7A9D5F8, MEMORY[0x1E697FDF8]);
    sub_1B797EC34(&qword_1EDC0FCC8, &qword_1EBA46638, &qword_1B7A9D5F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FD60);
  }

  return result;
}

uint64_t sub_1B7995CD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46648, &qword_1B7A9D600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Array.init<A, B>(initialDataFrom:)(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1B7997BD4(a1, a2, a3, a4, a5, a6);
  (*(*(a3 - 1) + 8))(a1, a3);
  return v8;
}

uint64_t IntentResult.data.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v33 = a2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for IntentResult._State(0, v5, a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v31 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - v18;
  v20 = *(v7 + 16);
  v32 = v4;
  v20(v12, v4, v6, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *(v13 + 32);
    v21(v19, v12, v5);
    v22 = v33;
    v21(v33, v19, v5);
    v23 = 0;
    v24 = v22;
  }

  else
  {
    v25 = *(v7 + 8);
    v25(v12, v6);
    (v20)(v9, v32, v6);
    if (swift_getEnumCaseMultiPayload())
    {
      v25(v9, v6);
      v23 = 1;
      v24 = v33;
    }

    else
    {
      v26 = *(v13 + 32);
      v27 = v31;
      v26(v31, v9, v5);
      v28 = v33;
      v26(v33, v27, v5);
      v24 = v28;
      v23 = 0;
    }
  }

  return (*(v13 + 56))(v24, v23, 1, v5);
}

uint64_t static IntentResult.empty.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for IntentResult._State(0, a1, a2, a3);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  swift_storeEnumTagMultiPayload();
  return sub_1B7996100(v8, a1, a4, v9, v10);
}

uint64_t sub_1B7996100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = type metadata accessor for IntentResult(0, a2, a4, a5);
  *(a3 + *(v8 + 32)) = 0;
  v11 = type metadata accessor for IntentResult._State(0, a2, v9, v10);
  result = (*(*(v11 - 8) + 32))(a3, a1, v11);
  *(a3 + *(v8 + 28)) = 0;
  return result;
}

uint64_t static IntentResult.success(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = type metadata accessor for IntentResult._State(0, a2, a4, a5);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  (*(*(a2 - 8) + 16))(&v15 - v10, a1, a2, v9);
  swift_storeEnumTagMultiPayload();
  return sub_1B7996100(v11, a2, a3, v12, v13);
}

id static IntentResult.failure(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = type metadata accessor for IntentResult._State(0, a2, a4, a5);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  *(&v14 - v9) = a1;
  swift_storeEnumTagMultiPayload();
  sub_1B7996100(v10, a2, a3, v11, v12);
  return a1;
}

uint64_t IntentResult.init<A>(initialDataFrom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a5;
  v35 = type metadata accessor for IntentResult._State(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v32 - v8;
  v33 = sub_1B7A9AB60();
  v37 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v32 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v20 = a1;
  sub_1B7A98F60();
  v21 = *(v14 + 48);
  if (v21(v13, 1, a2) == 1)
  {
    v22 = *(v37 + 8);
    v23 = v13;
    v24 = v33;
    v37 += 8;
    v22(v23, v33);
    sub_1B7A995A0();
    (*(*(a3 - 8) + 8))(v20, a3);
    if (v21(v10, 1, a2) == 1)
    {
      v22(v10, v24);
      v25 = v34;
    }

    else
    {
      v27 = *(v14 + 32);
      v28 = v32;
      v27(v32, v10, a2);
      v25 = v34;
      v27(v34, v28, a2);
    }
  }

  else
  {
    (*(*(a3 - 8) + 8))(v20, a3);
    v26 = *(v14 + 32);
    v26(v19, v13, a2);
    v25 = v34;
    v26(v34, v19, a2);
  }

  swift_storeEnumTagMultiPayload();
  return sub_1B7996100(v25, a2, v36, v29, v30);
}

uint64_t IntentResult.init<A, B>(initialDataFrom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v44 = a7;
  v45 = a6;
  v43 = type metadata accessor for IntentResult._State(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v36 - v12;
  v40 = sub_1B7A9AB60();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  v18 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v37 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v36 - v22;
  v24 = a1;
  v39 = a3;
  v41 = a5;
  sub_1B7A98F50();
  v25 = *(v18 + 48);
  if (v25(v17, 1, a2) == 1)
  {
    v26 = *(v38 + 8);
    v27 = v17;
    v28 = v40;
    v26(v27, v40);
    sub_1B7A99590();
    (*(*(a4 - 8) + 8))(v24, a4);
    if (v25(v14, 1, a2) == 1)
    {
      v26(v14, v28);
      v29 = v42;
    }

    else
    {
      v31 = *(v18 + 32);
      v32 = v37;
      v31(v37, v14, a2);
      v29 = v42;
      v31(v42, v32, a2);
    }
  }

  else
  {
    (*(*(a4 - 8) + 8))(v24, a4);
    v30 = *(v18 + 32);
    v30(v23, v17, a2);
    v29 = v42;
    v30(v42, v23, a2);
  }

  swift_storeEnumTagMultiPayload();
  return sub_1B7996100(v29, a2, v44, v33, v34);
}

uint64_t sub_1B7996A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for IntentResult._State(0, *(a2 + 16), a3, a4);
  result = (*(*(v7 - 8) + 40))(v4, a1, v7);
  v9 = *(a2 + 32);
  v10 = *(v4 + v9);
  v11 = __CFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v4 + v9) = v12;
  }

  return result;
}

BOOL sub_1B7996ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for IntentResult._State(0, *(a1 + 16), a3, a4);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  (*(v6 + 16))(&v12 - v8, v4, v5, v7);
  v10 = swift_getEnumCaseMultiPayload() == 0;
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t IntentResult.error.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for IntentResult._State(0, *(a1 + 16), a3, a4);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  (*(v7 + 16))(&v12 - v9, v5, v6, v8);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    return *v10;
  }

  (*(v7 + 8))(v10, v6);
  return 0;
}

Swift::Void __swiftcall IntentResult.invalidate(clearing:)(Swift::Bool clearing)
{
  v5 = v1;
  v7 = type metadata accessor for IntentResult._State(0, *(v1 + 16), v2, v3);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  ++*(v4 + *(v5 + 28));
  if (clearing)
  {
    swift_storeEnumTagMultiPayload();
    sub_1B7996A3C(v9, v5, v10, v11);
  }
}

uint64_t static IntentResult<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v42 - v10;
  v13 = type metadata accessor for IntentResult._State(0, v11, v11, v12);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v22 = &v42 - v21;
  v25 = type metadata accessor for IntentResult(0, a3, v23, v24);
  if (*(a1 + *(v25 + 28)) == *(a2 + *(v25 + 28)))
  {
    v42 = v7;
    v43 = v14;
    v26 = *(v14 + 16);
    v27 = a1;
    v28 = *(TupleTypeMetadata2 + 48);
    v26(v22, v27, v13);
    v26(&v22[v28], a2, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v26(v16, v22, v13);
        v36 = *v16;
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v37 = *&v22[v28];
          sub_1B7997CDC();
          v38 = sub_1B7A96B00();
          v39 = sub_1B7A96B00();
          v34 = sub_1B7A9AB20();

          goto LABEL_12;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 3)
      {
        v34 = 1;
        goto LABEL_12;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v26(v19, v22, v13);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = v42;
        v31 = *(v42 + 32);
        v32 = v44;
        v31(v44, v19, a3);
        v33 = v45;
        v31(v45, &v22[v28], a3);
        v34 = sub_1B7A9A470();
        v35 = *(v30 + 8);
        v35(v33, a3);
        v35(v32, a3);
LABEL_12:
        v40 = v43;
        TupleTypeMetadata2 = v13;
LABEL_16:
        (*(v40 + 8))(v22, TupleTypeMetadata2);
        return v34 & 1;
      }

      (*(v42 + 8))(v19, a3);
    }

    v34 = 0;
    v40 = v47;
    goto LABEL_16;
  }

  v34 = 0;
  return v34 & 1;
}

uint64_t Array.init<A, B>(initialDataFrom:)(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for IntentResult(0, AssociatedTypeWitness, v9, v10);
  v13 = sub_1B7997394(sub_1B7997D28, v15, a3, v11, MEMORY[0x1E69E73E0], a5, MEMORY[0x1E69E7410], v12);
  (*(*(a3 - 1) + 8))(a1, a3);
  return v13;
}

uint64_t sub_1B7997290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return IntentResult.init<A>(initialDataFrom:)(v9, AssociatedTypeWitness, a2, a3, a4);
}

uint64_t sub_1B7997394(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v42 - v18;
  v19 = sub_1B7A9AB60();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = sub_1B7A9A550();
  v63 = sub_1B7A9ACF0();
  v58 = sub_1B7A9AD00();
  sub_1B7A9ACD0();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_1B7A9A540();
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
      sub_1B7A9AB70();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      sub_1B7A9ACE0();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_1B7A9AB70();
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
      sub_1B7A9ACE0();
      sub_1B7A9AB70();
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

uint64_t sub_1B7997A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = swift_checkMetadataState();
  return IntentResult.init<A, B>(initialDataFrom:)(v11, AssociatedTypeWitness, v14, a2, a4, a3, a5);
}

uint64_t sub_1B7997BD4(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for IntentResult(0, AssociatedTypeWitness, v9, v10);
  return sub_1B7997394(sub_1B7998370, v14, a3, v11, MEMORY[0x1E69E73E0], a5, MEMORY[0x1E69E7410], v12);
}

unint64_t sub_1B7997CDC()
{
  result = qword_1EBA46670[0];
  if (!qword_1EBA46670[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EBA46670);
  }

  return result;
}

uint64_t sub_1B7997D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for IntentResult._State(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B7997DCC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_23;
  }

  v4 = (((v3 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v5 = a2 - 251;
  v6 = v4 & 0xFFFFFFF8;
  if ((v4 & 0xFFFFFFF8) != 0)
  {
    v5 = 2;
  }

  if (v5 >= 0x10000)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  if (v5 < 0x100)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 == 4)
  {
    v9 = *(a1 + v4);
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  else if (v8 == 2)
  {
    v9 = *(a1 + v4);
    if (!v9)
    {
LABEL_23:
      v12 = *(a1 + v3);
      if (v12 >= 4)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v9 = *(a1 + v4);
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  v11 = v9 - 1;
  if (v6)
  {
    v11 = 0;
    LODWORD(v6) = *a1;
  }

  return (v6 | v11) + 253;
}

unsigned int *sub_1B7997E98(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 64);
  if (v4 <= 8)
  {
    v4 = 8;
  }

  v5 = (((v4 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (a3 >= 0xFD)
  {
    v6 = a3 - 251;
    if ((((v4 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v6 = 2;
    }

    if (v6 >= 0x10000)
    {
      v7 = 4;
    }

    else
    {
      v7 = 2;
    }

    if (v6 < 0x100)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    v9 = a2 - 252;
    if (a2 > 0xFC)
    {
      goto LABEL_13;
    }

LABEL_22:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *(result + v5) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_31;
      }

      *(result + v5) = 0;
    }

    else if (v8)
    {
      *(result + v5) = 0;
      if (!a2)
      {
        return result;
      }

LABEL_31:
      *(result + v4) = -a2;
      return result;
    }

    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  v8 = 0;
  v9 = a2 - 252;
  if (a2 <= 0xFC)
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((((v4 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  if ((((v4 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v11 = a2 - 253;
    v12 = result;
    bzero(result, (((v4 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v12;
    *v12 = v11;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      *(result + v5) = v10;
    }

    else
    {
      *(result + v5) = v10;
    }
  }

  else if (v8)
  {
    *(result + v5) = v10;
  }

  return result;
}

uint64_t sub_1B7997FC4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1B799830C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B799803C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 4)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 253;
}

void sub_1B7998154(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFD)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 252) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFC)
  {
    v8 = a2 - 253;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1B799830C()
{
  result = qword_1EBA46778;
  if (!qword_1EBA46778)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBA46778);
  }

  return result;
}

uint64_t _ComponentContentByType._adding<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B7A991E0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();

  sub_1B7A991F0();
  v23 = a3;
  v24 = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v22);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a3);
  sub_1B795C1E4(&v22, v21);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v20 = a2;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v21, v21[3]);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  sub_1B7999284(v16, v11, a1, &v20, a3, a4);
  (*(v9 + 8))(v11, v8);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v20;
}

uint64_t _ComponentContentByType._merging(_:)(uint64_t a1, uint64_t a2)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = a2;
  sub_1B7999A60(a1, sub_1B79991E0, 0, isUniquelyReferenced_nonNull_native, &v6);

  return v6;
}

uint64_t _ComponentContentByType.registry.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t _ComponentContentByType.body(withContentsOf:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B7A991E0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
  v39[3] = v10;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v39);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1Tm, v11, v10);
  sub_1B7A991D0();
  if (!*(a2 + 16) || (v13 = sub_1B7995D44(), (v14 & 1) == 0))
  {
    (*(v7 + 8))(v9, v6);
    goto LABEL_6;
  }

  sub_1B7999E90(*(a2 + 56) + 40 * v13, &v33);
  (*(v7 + 8))(v9, v6);
  v15 = v36;
  v16 = v37;
  __swift_project_boxed_opaque_existential_1(&v33, v36);
  v17 = Component.trySetModel(to:)(a1, v15, v16);
  __swift_destroy_boxed_opaque_existential_1(&v33);
  if (!v17)
  {
LABEL_6:
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1B7A9AC50();

    v33 = 0xD00000000000001CLL;
    v34 = 0x80000001B7AC5340;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    v19 = sub_1B7A9AFF0();
    MEMORY[0x1B8CAB750](v19);

    v20 = MEMORY[0x1B8CAB750](62, 0xE100000000000000);
    v22 = v33;
    v21 = v34;
    sub_1B7999DD8(v20, v23, v24);

    v25 = sub_1B7A98080();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = v22;
    *(v32 + 24) = v21;
    v33 = v25;
    v34 = v27;
    v35 = v29 & 1;
    v36 = v31;
    v37 = sub_1B797D598;
    v38 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46788, &unk_1B7A9D6E0);
    sub_1B7999E2C();
    result = sub_1B7A987F0();
    goto LABEL_7;
  }

  result = v17;
LABEL_7:
  *a3 = result;
  return result;
}

uint64_t Component.trySetModel(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for DataObjectBox(255, AssociatedTypeWitness, v6, v7);
  sub_1B7A9AB60();
  v26[1] = sub_1B7A97DF0();
  v8 = sub_1B7A97590();
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v26 - v9;
  v11 = sub_1B7A9AB60();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v26 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v26 - v17;
  sub_1B7999E90(v28, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46798, &unk_1B7AA12A0);
  v19 = swift_dynamicCast();
  v20 = *(v15 + 56);
  if (v19)
  {
    v20(v14, 0, 1, AssociatedTypeWitness);
    (*(v15 + 32))(v18, v14, AssociatedTypeWitness);
    Component.model(_:)(v18, a2, a3);
    v21 = *(a3 + 8);
    WitnessTable = swift_getWitnessTable();
    v29 = v21;
    v30 = WitnessTable;
    v23 = swift_getWitnessTable();
    v24 = sub_1B7999EF4(v10, v8, v23);
    (*(v27 + 8))(v10, v8);
    (*(v15 + 8))(v18, AssociatedTypeWitness);
    return v24;
  }

  else
  {
    v20(v14, 1, 1, AssociatedTypeWitness);
    (*(v12 + 8))(v14, v11);
    return 0;
  }
}

uint64_t _ComponentContentN.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA467A0, &qword_1B7A9D6F0);
  v8 = sub_1B7A9A6F0();
  (*(v5 + 8))(a1, a2);
  return v8;
}

uint64_t _ComponentContentN.body(withContentsOf:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B7999E90(a1, v33);
  sub_1B7999E90(a1, &v30);
  v5 = *(a2 + 16);

  if (!v5)
  {
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v33);

    __swift_destroy_boxed_opaque_existential_1(&v30);
    *&v33[0] = 0;
    *(&v33[0] + 1) = 0xE000000000000000;
    sub_1B7A9AC50();

    *&v33[0] = 0xD00000000000001BLL;
    *(&v33[0] + 1) = 0x80000001B7AC5390;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    v10 = sub_1B7A9AFF0();
    MEMORY[0x1B8CAB750](v10);

    v11 = MEMORY[0x1B8CAB750](0x6C65646F6D20, 0xE600000000000000);
    v12 = v33[0];
    sub_1B7999DD8(v11, v13, v14);

    v15 = sub_1B7A98080();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = v12;
    v30 = v15;
    *&v31 = v17;
    *(&v31 + 1) = v19 & 1;
    *&v32[0] = v21;
    *(&v32[0] + 1) = sub_1B799A220;
    *&v32[1] = v22;
    BYTE8(v32[1]) = 1;
    sub_1B7999FBC(v15, v17, v19 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46788, &unk_1B7A9D6E0);
    sub_1B7999E2C();
    sub_1B7A97B30();
    sub_1B795A450(v15, v17, v19 & 1);

LABEL_12:
    v27 = v34;
    v28 = v33[1];
    *a3 = v33[0];
    *(a3 + 16) = v28;
    *(a3 + 32) = v33[2];
    *(a3 + 48) = v27;
    return result;
  }

  v6 = (a2 + 32);
  sub_1B7A9A760();
  while (1)
  {
    sub_1B7A9A750();
    sub_1B7A9A710();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v7 = v6[3];
    v8 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v9 = Component.trySetModel(to:)(&v30, v7, v8);

    if (v9)
    {
      break;
    }

    v6 += 5;
    if (!--v5)
    {
      goto LABEL_7;
    }
  }

  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = v6[3];
  v25 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v24);
  v26 = Component.trySetModel(to:)(v33, v24, v25);

  __swift_destroy_boxed_opaque_existential_1(v33);
  if (v26)
  {

    __swift_destroy_boxed_opaque_existential_1(&v30);
    v30 = v26;
    v31 = 0u;
    memset(v32, 0, 25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46788, &unk_1B7A9D6E0);
    sub_1B7999E2C();
    result = sub_1B7A97B30();
    goto LABEL_12;
  }

  result = __swift_destroy_boxed_opaque_existential_1(&v30);
  __break(1u);
  return result;
}

uint64_t sub_1B79991E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA467C8, &qword_1B7A9D7F0) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA467C0, &qword_1B7A9D7E8) + 48);
  v6 = sub_1B7A991E0();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return sub_1B7999E90(a1 + v4, a2 + v5);
}

uint64_t sub_1B7999284(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1B7A991E0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a5;
  v38 = a6;
  v35 = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v36);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a5);
  v17 = *a4;
  v19 = sub_1B7995D44();
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 >= v22 && (a3 & 1) != 0)
  {
LABEL_7:
    v25 = *a4;
    if (v23)
    {
LABEL_8:
      v26 = (v25[7] + 40 * v19);
      __swift_destroy_boxed_opaque_existential_1(v26);
      return sub_1B795C1E4(&v36, v26);
    }

    goto LABEL_11;
  }

  if (v24 >= v22 && (a3 & 1) == 0)
  {
    sub_1B79A0BA4();
    goto LABEL_7;
  }

  sub_1B799EE28(v22, a3 & 1);
  v28 = sub_1B7995D44();
  if ((v23 & 1) != (v29 & 1))
  {
LABEL_14:
    result = sub_1B7A9AEC0();
    __break(1u);
    return result;
  }

  v19 = v28;
  v25 = *a4;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v13 + 16))(v15, a2, v12);
  v30 = __swift_mutable_project_boxed_opaque_existential_1(&v36, v37);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33, v31);
  sub_1B7999584(v19, v15, v33, v25, a5, v35);
  return __swift_destroy_boxed_opaque_existential_1(&v36);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1B7999584(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v20 = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v18);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a3, a5);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_1B7A991E0();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  result = sub_1B795C1E4(&v18, a4[7] + 40 * a1);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

void sub_1B7999690(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA467C8, &qword_1B7A9D7F0);
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v36 - v3;
  v4 = sub_1B7A991E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA467D0, &qword_1B7A9D7F8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v12;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v41 = v18;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v38 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    (*(v5 + 16))(v7, *(v15 + 48) + *(v5 + 72) * v24, v4, v13);
    sub_1B7999E90(*(v15 + 56) + 40 * v24, v43);
    v25 = *(v40 + 48);
    v26 = v4;
    v27 = v40;
    (*(v5 + 32))(v14, v7, v26);
    sub_1B795C1E4(v43, &v14[v25]);
    v28 = v39;
    (*(v39 + 56))(v14, 0, 1, v27);
    v29 = v38;
    v23 = v20;
LABEL_11:
    *v1 = v15;
    v1[1] = v16;
    v1[2] = v41;
    v1[3] = v23;
    v1[4] = v29;
    v30 = v1[5];
    sub_1B797E788(v14, v10, qword_1EBA467D0, &qword_1B7A9D7F8);
    v31 = 1;
    v32 = (*(v28 + 48))(v10, 1, v27);
    v33 = v42;
    if (v32 != 1)
    {
      v34 = v37;
      sub_1B797E788(v10, v37, &qword_1EBA467C8, &qword_1B7A9D7F0);
      v30(v34);
      sub_1B799A1B4(v34);
      v31 = 0;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA467C0, &qword_1B7A9D7E8);
    (*(*(v35 - 8) + 56))(v33, v31, 1, v35);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v28 = v39;
        v27 = v40;
        (*(v39 + 56))(&v36 - v12, 1, 1, v40, v13);
        v29 = 0;
        goto LABEL_11;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B7999A60(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v9 = sub_1B7A991E0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA467B8, &qword_1B7A9D7E0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v41 - v14;
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v45 = a1;
  v46 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v47 = v17;
  v48 = 0;
  v49 = v20 & v18;
  v50 = a2;
  v51 = a3;
  v21 = (v10 + 32);
  v42 = (v10 + 8);
  v43 = v10;

  v41 = a3;

  while (1)
  {
    sub_1B7999690(v15);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA467C0, &qword_1B7A9D7E8);
    if ((*(*(v23 - 8) + 48))(v15, 1, v23) == 1)
    {
      sub_1B799A1AC(v45);
    }

    v24 = *(v23 + 48);
    v25 = *v21;
    v26 = v9;
    (*v21)(v12, v15, v9);
    sub_1B795C1E4(&v15[v24], v44);
    v27 = *v52;
    v29 = sub_1B7995D44();
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if ((a4 & 1) == 0)
      {
        sub_1B79A0BA4();
      }
    }

    else
    {
      sub_1B799EE28(v32, a4 & 1);
      v34 = sub_1B7995D44();
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_19;
      }

      v29 = v34;
    }

    v36 = *v52;
    if (v33)
    {
      v9 = v26;
      (*v42)(v12, v26);
      v22 = (v36[7] + 40 * v29);
      __swift_destroy_boxed_opaque_existential_1(v22);
      sub_1B795C1E4(v44, v22);
      a4 = 1;
    }

    else
    {
      v36[(v29 >> 6) + 8] |= 1 << v29;
      v9 = v26;
      v25((v36[6] + *(v43 + 72) * v29), v12, v26);
      sub_1B795C1E4(v44, v36[7] + 40 * v29);
      v37 = v36[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_18;
      }

      v36[2] = v39;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1B7A9AEC0();
  __break(1u);
  return result;
}

unint64_t sub_1B7999DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA46780;
  if (!qword_1EBA46780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46780);
  }

  return result;
}

unint64_t sub_1B7999E2C()
{
  result = qword_1EBA46790;
  if (!qword_1EBA46790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46788, &unk_1B7A9D6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46790);
  }

  return result;
}

uint64_t sub_1B7999E90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B7999EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  return sub_1B7A987F0();
}

uint64_t sub_1B7999FBC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t getEnumTagSinglePayload for ComponentContentBuilder(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ComponentContentBuilder(_WORD *result, int a2, int a3)
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

unint64_t sub_1B799A120()
{
  result = qword_1EBA467A8;
  if (!qword_1EBA467A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA467B0, &qword_1B7A9D7D8);
    sub_1B7999E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA467A8);
  }

  return result;
}

uint64_t sub_1B799A1B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA467C8, &qword_1B7A9D7F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B799A224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v5 = sub_1B7A9AB60();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  (*(v6 + 16))(&v11 - v8, a1, v5, v7);
  sub_1B7A28F54(v9, v5);
  return (*(v6 + 8))(a1, v5);
}

void sub_1B799A340(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 120));
  os_unfair_lock_lock(v3 + 4);
  sub_1B799A4AC(v1, a1);

  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_1B799A3B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();
}

uint64_t sub_1B799A4AC(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1B7A9AB60();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  (*(v9 + 16))(&v11 - v7, a2, AssociatedTypeWitness, v6);
  (*(v9 + 56))(v8, 0, 1, AssociatedTypeWitness);
  sub_1B799B33C(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1B799A63C()
{
  v1 = *(*v0 + 112);
  swift_getAssociatedTypeWitness();
  sub_1B7A9AB60();
  v2 = sub_1B7A96F50();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1B799A718()
{
  sub_1B799A63C();

  return swift_deallocClassInstance();
}

uint64_t Observe.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a1;
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  type metadata accessor for Observe.Coordinator(0, v20);
  swift_getWitnessTable();
  result = sub_1B7A97110();
  *a8 = result;
  *(a8 + 8) = v18;
  *(a8 + 16) = v19 & 1;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  return result;
}

{
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a2;
  v16[7] = a3;

  return Observe.init(_:content:)(a1, sub_1B799AAD4, v16, a4, a5, a6, a7, a8);
}

char *sub_1B799A85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for Observe.Coordinator(0, v8);
  swift_allocObject();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1B799AFB8(v5);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1B799A9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  v16(v13);
  sub_1B7957EE0(v11, a5, a7);
  v17 = *(v9 + 8);
  v17(v11, a5);
  sub_1B7957EE0(v15, a5, a7);
  return (v17)(v15, a5);
}

uint64_t sub_1B799AAE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = *(a1 + 16);
  v3[1] = v1;
  type metadata accessor for Observe.Coordinator(0, v3);
  swift_getWitnessTable();
  return sub_1B7A97120();
}

uint64_t Observe.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  swift_getAssociatedTypeWitness();
  v21[0] = sub_1B7A9AB60();
  v4 = *(v21[0] - 8);
  MEMORY[0x1EEE9AC00](v21[0]);
  v6 = v21 - v5;
  v7 = a1[3];
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  v15 = *(v2 + 16);
  v16 = *(v2 + 3);
  v17 = *(v2 + 4);
  v22 = *v2;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  sub_1B799AAE4(a1);
  sub_1B799A3B4();

  v16(v6);
  (*(v4 + 8))(v6, v21[0]);
  v18 = a1[5];
  sub_1B7957EE0(v11, v7, v18);
  v19 = *(v8 + 8);
  v19(v11, v7);
  sub_1B7957EE0(v14, v7, v18);
  return (v19)(v14, v7);
}

uint64_t sub_1B799ADDC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1B799AE38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B799AE80(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1B799AEE0(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  sub_1B7A9AB60();
  result = sub_1B7A96F50();
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

char *sub_1B799AFB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v27 = v3;
  v28 = a1;
  v24 = v3[12];
  v4 = v3[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1B7A99600();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  sub_1B7A9AB60();
  v9 = sub_1B7A96F50();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  v17 = v3[14];
  (*(*(AssociatedTypeWitness - 8) + 56))(&v24 - v15, 1, 1, AssociatedTypeWitness, v14);
  sub_1B799A224(v16, v4, v3[11], v24);
  (*(v10 + 32))(&v2[v17], v12, v9);
  v18 = *(*v2 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA468D8, &qword_1B7A9D9D0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *&v2[v18] = v19;
  v20 = sub_1B799B4F8();
  v21 = sub_1B7A9AA50();
  v29[3] = v20;
  v29[4] = MEMORY[0x1E69AB720];
  v29[0] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1B799B544;
  *(v22 + 24) = 0;
  sub_1B7A98E90();

  (*(v25 + 8))(v8, v26);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v2;
}

uint64_t sub_1B799B33C(uint64_t a1)
{
  v3 = (*v1 + 88);
  v4 = (*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 80);
  swift_getAssociatedTypeWitness();
  v7 = sub_1B7A9AB60();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  *&v11 = v6;
  *(&v11 + 1) = *v3;
  *&v12 = v5;
  *(&v12 + 1) = *v4;
  v14 = v12;
  v15 = v11;
  v18 = v11;
  v19 = v12;
  swift_getKeyPath();
  v16 = v15;
  v17 = v14;
  swift_getKeyPath();
  (*(v8 + 16))(v10, a1, v7);

  return sub_1B7A96F30();
}

unint64_t sub_1B799B4F8()
{
  result = qword_1EDC0E5F0;
  if (!qword_1EDC0E5F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC0E5F0);
  }

  return result;
}

uint64_t View.playable<A>(id:isEnabled:playPercentVisible:pausePercentVisible:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v28 = a5;
  v27 = a3;
  v10 = a2;
  v14 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PlayableViewModifier(0, v17, v18, v17);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v26 - v22;
  (*(v14 + 16))(v16, a1, a4, v21);
  v24 = sub_1B799B78C(v16, v10, a4, a6, v23, a7, a8);
  MEMORY[0x1B8CA96D0](v23, v27, v19, v28, v24);
  return (*(v20 + 8))(v23, v19);
}

double sub_1B799B78C@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v13 = type metadata accessor for PlayableViewModifier(0, a3, a4, a4);
  v14 = a5 + v13[11];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = a5 + v13[12];
  sub_1B7A986C0();
  *v15 = v20;
  *(v15 + 8) = v21;
  v16 = a5 + v13[13];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  (*(*(a3 - 8) + 32))(a5, a1, a3);
  *(a5 + v13[9]) = a2;
  type metadata accessor for PlayableViewState();
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;
  *(v17 + 32) = 0;
  result = 0.0;
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  v19 = (a5 + v13[10]);
  *v19 = v17;
  v19[1] = 0;
  return result;
}

uint64_t View.onPlayableViewsChange<A>(identifiedBy:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20[2] = a8;
  v20[1] = a1;
  v14 = type metadata accessor for OnPlayableViewChangeModifier(0, a5, a7, a4);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v20 - v16;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a2;
  v18[7] = a3;

  sub_1B799BB04(sub_1B799BAF4, v18, a5, a7, v17);
  MEMORY[0x1B8CA96D0](v17, a4, v14, a6);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_1B799BA4C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for CGRect(0);
  result = sub_1B7A9AEA0();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_1B799BB04@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a2;
  v11 = sub_1B7A991E0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  *(a6 + 40) = a2;
  *(a6 + 48) = a3;
  v16 = *(type metadata accessor for OnPlayableViewChangeModifier(0, a4, a5, v15) + 44);

  sub_1B7A991F0();
  v17 = *(v12 + 16);
  v17(v14, a6 + v16, v11);
  v18 = type metadata accessor for PlayableStorage(0);
  v19 = objc_allocWithZone(v18);
  v20 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_allPlayable;
  *&v19[v20] = sub_1B7990B1C(MEMORY[0x1E69E7CC0]);
  v21 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_chained;
  *&v19[OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_chained] = 0;
  *&v19[OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_timer] = 0;
  v17(&v19[OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_validType], v14, v11);
  v22 = &v19[OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_action];
  *v22 = v26;
  v22[1] = a3;
  *&v19[v21] = 0;
  v27.receiver = v19;
  v27.super_class = v18;
  v23 = objc_msgSendSuper2(&v27, sel_init);
  (*(v12 + 8))(v14, v11);
  result = swift_allocObject();
  *(result + 16) = v23;
  *(a6 + 16) = sub_1B79A1750;
  *(a6 + 24) = result;
  *(a6 + 32) = 0;
  return result;
}

void sub_1B799BDD8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v16 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v50 = &v48 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v48 - v21;
  v23 = sub_1B7A991E0();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v7 + OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_chained);
  if (v27)
  {
    v28 = v27;
    sub_1B799BDD8(a1, a2, a3, a4, a5, a6, a7);
  }

  swift_getDynamicType();
  sub_1B7A991F0();
  v29 = sub_1B7A991C0();
  (*(v24 + 8))(v26, v23);
  if (v29)
  {
    v30 = v16;
    v31 = *(v16 + 16);
    v32 = a1;
    v49 = v31;
    v31(v22, a1, a2);
    sub_1B7A9AE10();
    v33 = *(v30 + 8);
    v33(v22, a2);
    v34 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_allPlayable;
    swift_beginAccess();
    v35 = *(v8 + v34);
    if (*(v35 + 16) && (v36 = sub_1B7994ACC(v53), (v37 & 1) != 0))
    {
      v38 = *(v35 + 56) + 32 * v36;
      v39 = *v38;
      v40 = *(v38 + 8);
      v41 = *(v38 + 16);
      v42 = *(v38 + 24);
      swift_endAccess();
      sub_1B7991408(v53);
      v54.origin.x = v39;
      v54.origin.y = v40;
      v54.size.width = v41;
      v54.size.height = v42;
      v55.origin.x = a4;
      v55.origin.y = a5;
      v55.size.width = a6;
      v55.size.height = a7;
      if (CGRectEqualToRect(v54, v55))
      {
        return;
      }
    }

    else
    {
      swift_endAccess();
      sub_1B7991408(v53);
    }

    v43 = v50;
    v49(v50, a1, a2);
    sub_1B7A9AE10();
    v33(v43, a2);
    swift_beginAccess();
    if (*(*(v8 + v34) + 16))
    {
      sub_1B7994ACC(v53);
      v45 = v44 ^ 1;
    }

    else
    {
      v45 = 1;
    }

    swift_endAccess();
    sub_1B7991408(v53);
    v46 = v51;
    v49(v51, v32, a2);
    sub_1B7A9AE10();
    v33(v46, a2);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v8 + v34);
    *(v8 + v34) = 0x8000000000000000;
    sub_1B79A0574(v53, isUniquelyReferenced_nonNull_native, a4, a5, a6, a7);
    sub_1B7991408(v53);
    *(v8 + v34) = v52;
    swift_endAccess();
    sub_1B799C23C(v45 & 1);
  }
}

void sub_1B799C23C(char a1)
{
  v2 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_timer;
  v3 = *(v1 + OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_timer);
  if (v3)
  {
    if ((a1 & 1) == 0)
    {
      return;
    }

    v4 = v3;
    [v4 invalidate];
    v5 = *(v1 + v2);
    *(v1 + v2) = 0;

    v6 = [objc_opt_self() timerWithTimeInterval:v1 target:sel_fireTimerWithTimer_ selector:0 userInfo:0 repeats:0.1];
    v7 = [objc_opt_self() currentRunLoop];
    [v7 addTimer:v6 forMode:*MEMORY[0x1E695DA28]];
  }

  else
  {
    v6 = [objc_opt_self() timerWithTimeInterval:v1 target:sel_fireTimerWithTimer_ selector:0 userInfo:0 repeats:0.1];
    v7 = [objc_opt_self() currentRunLoop];
    [v7 addTimer:v6 forMode:*MEMORY[0x1E695DA28]];
  }

  v8 = *(v1 + v2);
  *(v1 + v2) = v6;
}

void sub_1B799C3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v11 = sub_1B7A991E0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v15 = *(v3 + OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_chained);
  if (v15)
  {
    v16 = v15;
    sub_1B799C3DC(a1, a2, a3);
  }

  swift_getDynamicType();
  sub_1B7A991F0();
  v17 = sub_1B7A991C0();
  (*(v12 + 8))(v14, v11);
  if (v17)
  {
    (*(v8 + 16))(v10, a1, a2);
    sub_1B7A9AE10();
    (*(v8 + 8))(v10, a2);
    swift_beginAccess();
    sub_1B799C76C(v26, v27);
    swift_endAccess();
    sub_1B7991408(v26);
    if ((v28 & 1) == 0)
    {
      v18 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_timer;
      v19 = *(v4 + OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_timer);
      if (v19)
      {
        v20 = v19;
        [v20 invalidate];
        v21 = *(v4 + v18);
        *(v4 + v18) = 0;

        v22 = [objc_opt_self() timerWithTimeInterval:v4 target:sel_fireTimerWithTimer_ selector:0 userInfo:0 repeats:0.1];
        v23 = [objc_opt_self() currentRunLoop];
        [v23 addTimer:v22 forMode:*MEMORY[0x1E695DA28]];
      }

      else
      {
        v22 = [objc_opt_self() timerWithTimeInterval:v4 target:sel_fireTimerWithTimer_ selector:0 userInfo:0 repeats:0.1];
        v23 = [objc_opt_self() currentRunLoop];
        [v23 addTimer:v22 forMode:*MEMORY[0x1E695DA28]];
      }

      v24 = *(v4 + v18);
      *(v4 + v18) = v22;
    }
  }
}

uint64_t sub_1B799C76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = sub_1B7994ACC(a1);
  v7 = v6;
  v8 = 0uLL;
  v9 = 0uLL;
  if (v6)
  {
    v10 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    v16 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B79A0E2C();
      v12 = v16;
    }

    sub_1B7991408(*(v12 + 48) + 40 * v10);
    v13 = (*(v12 + 56) + 32 * v10);
    v14 = *v13;
    v15 = v13[1];
    result = sub_1B79A00B0(v10, v12);
    v8 = v14;
    v9 = v15;
    *v3 = v12;
  }

  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 32) = (v7 & 1) == 0;
  return result;
}

id sub_1B799C85C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B799C9A0@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_1B7A96EC0();
  *a1 = result;
  return result;
}

uint64_t sub_1B799C9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B79A1768();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1B799CA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B79A16FC(a1, a2, a3);
  sub_1B7A97890();
  return v4;
}

void *sub_1B799CA80()
{
  v1 = sub_1B7A97880();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_1B7A9AA10();
    v7 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B795AE1C(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1B799CBD0()
{
  type metadata accessor for PlayableStorage(0);
  sub_1B79A181C(qword_1EBA469B0, type metadata accessor for PlayableStorage, &unk_1B7A9DB98);

  return sub_1B7A97120();
}

uint64_t sub_1B799CC60(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B799CA80();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1B799CBD0();
    v5 = *&v4[OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_chained];
    v6 = v5;

    if (!v5)
    {
      v6 = sub_1B799CBD0();
      v7 = *&v6[OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_chained];
      *&v6[OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_A88781FDD5080888A74F07BF6234265B15PlayableStorage_chained] = v3;
      v3 = v7;
    }
  }

  swift_getKeyPath();
  v9 = sub_1B799CBD0();
  swift_getWitnessTable();
  sub_1B7A97C30();
  swift_getWitnessTable();
  sub_1B7A98150();
}

uint64_t sub_1B799CDA0(id *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  sub_1B79A16FC(a1, a2, a3);
  v4 = v3;
  return sub_1B7A978A0();
}

void sub_1B799CE00(uint64_t a1)
{
  if (*(v1 + *(a1 + 36)) == 1)
  {
    v2 = v1;
    v4 = sub_1B799CF80(a1);
    if (v4)
    {
      v5 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A50, &unk_1B7AA63D0);
      sub_1B7A986D0();
      if (v12 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A58, &unk_1B7A9DBD0);
        sub_1B7A986D0();
        v6 = *(v12 + 32);

        if (v6 == 1 && (sub_1B7A986D0(), v7 = *(v12 + 33), , v7 == 1))
        {
          sub_1B7A986D0();
          v8 = *(v12 + 40);
          v9 = *(v12 + 48);
          v10 = *(v12 + 56);
          v11 = *(v12 + 64);

          sub_1B799BDD8(v2, *(a1 + 16), *(a1 + 24), v8, v9, v10, v11);
        }

        else
        {
          sub_1B799C3DC(v2, *(a1 + 16), *(a1 + 24));
        }
      }
    }
  }
}

void *sub_1B799CF80(uint64_t a1)
{
  v3 = sub_1B7A97880();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 44);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = v8;
  }

  else
  {

    sub_1B7A9AA10();
    v10 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B795AE1C(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t sub_1B799D0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v80 = a1;
  v82 = a3;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  swift_getWitnessTable();
  v8 = sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45EB8, &qword_1B7A9C620);
  v68 = v8;
  v9 = sub_1B7A97590();
  v79 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v61 - v10;
  v70 = v9;
  v11 = sub_1B7A97590();
  v81 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v61 - v12;
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1B797EC34(&qword_1EDC0FCE8, &qword_1EBA45EB8, &qword_1B7A9C620, MEMORY[0x1E69802E0]);
  v94 = WitnessTable;
  v95 = v14;
  v15 = swift_getWitnessTable();
  v69 = v15;
  v18 = sub_1B797D3EC(v15, v16, v17);
  v92 = v15;
  v93 = v18;
  v75 = v11;
  v74 = swift_getWitnessTable();
  v88 = v11;
  v89 = MEMORY[0x1E69E6370];
  v90 = v74;
  v91 = MEMORY[0x1E69E6388];
  v76 = MEMORY[0x1E6981440];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = *(OpaqueTypeMetadata2 - 8);
  v77 = OpaqueTypeMetadata2;
  v78 = v20;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v71 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v73 = &v61 - v24;
  v25 = v6;
  v65 = *(v6 + 16);
  v85 = v6 + 16;
  v62 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v4;
  v63 = v4;
  v65(v62, v4, a2, v23);
  v83 = *(v25 + 80);
  v27 = (v83 + 32) & ~v83;
  v67 = v7;
  v28 = swift_allocObject();
  v29 = a2;
  v64 = *(a2 + 16);
  v84 = *(a2 + 24);
  v30 = v84;
  *(v28 + 16) = v64;
  *(v28 + 24) = v30;
  v31 = *(v25 + 32);
  v32 = v31(v28 + v27, &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
  v33 = v31;
  v66 = v31;
  sub_1B799EB74(v32, v34, v35);
  v36 = v72;
  sub_1B7A98220();

  v37 = v62;
  v38 = v26;
  v39 = v65;
  (v65)(v62, v38, v29);
  v40 = swift_allocObject();
  v41 = v64;
  v42 = v84;
  *(v40 + 16) = v64;
  *(v40 + 24) = v42;
  v33(v40 + v27, v37, v29);
  v43 = v70;
  View.onViewAppearanceChange(perform:)(sub_1B799EBC8, v40, v70, v69);

  (*(v79 + 8))(v36, v43);
  v44 = v63;
  v45 = (v63 + *(v29 + 48));
  v46 = *v45;
  v47 = *(v45 + 1);
  LOBYTE(v88) = v46;
  v89 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A50, &unk_1B7AA63D0);
  sub_1B7A986D0();
  LOBYTE(v88) = v87;
  v39(v37, v44, v29);
  v48 = swift_allocObject();
  v49 = v84;
  *(v48 + 16) = v41;
  *(v48 + 24) = v49;
  v66(v48 + v27, v37, v29);
  v50 = v71;
  v51 = v75;
  v52 = MEMORY[0x1E69E6370];
  v53 = v74;
  v54 = MEMORY[0x1E69E6388];
  v55 = v86;
  sub_1B7A984B0();

  (*(v81 + 8))(v55, v51);
  v88 = v51;
  v89 = v52;
  v90 = v53;
  v91 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = v73;
  v58 = v77;
  sub_1B7957EE0(v50, v77, OpaqueTypeConformance2);
  v59 = *(v78 + 8);
  v59(v50, v58);
  sub_1B7957EE0(v57, v58, OpaqueTypeConformance2);
  return (v59)(v57, v58);
}

double sub_1B799D818@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v31[0] = a1;
  v3 = sub_1B7A97540();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7A97BE0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B7A97310();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v31[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, *&v31[0], v11, v13);
  sub_1B7A972E0();
  v17 = v16;
  v19 = v18;
  sub_1B7A97CB0();
  sub_1B7A97300();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  (*(v8 + 8))(v10, v7);
  (*(v4 + 104))(v6, *MEMORY[0x1E697E668], v3);
  sub_1B7A972D0();
  v30 = *(&v31[2] + 8);
  v31[0] = *(&v31[1] + 8);
  (*(v4 + 8))(v6, v3);
  (*(v12 + 8))(v15, v11);
  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = v21;
  *(a2 + 24) = v23;
  *(a2 + 32) = v25;
  *(a2 + 40) = v27;
  v29 = v30;
  result = *v31;
  *(a2 + 48) = v31[0];
  *(a2 + 64) = v29;
  return result;
}

uint64_t sub_1B799DAD8(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v32 = a1[5];
  v34 = a1[4];
  v10 = a1[8];
  v11 = a1[9];
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = type metadata accessor for PlayableViewModifier(0, a3, a4, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A58, &unk_1B7A9DBD0);
  sub_1B7A986D0();
  v14 = *(v38 + 16);
  v15 = *(v38 + 24);
  v16 = *(v38 + 32);
  v17 = *(v38 + 33);
  v36 = *(v38 + 34);
  v37 = *(v38 + 38);

  v18 = v11 / v7;
  if (v10 / v6 < v11 / v7)
  {
    v18 = v10 / v6;
  }

  if (v16)
  {
    v19 = v15;
  }

  else
  {
    v19 = v14;
  }

  v20 = v19 < v18;
  v39.origin.x = v8;
  v39.origin.y = v9;
  v39.size.height = v32;
  v39.size.width = v34;
  v40 = CGRectIntegral(v39);
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  sub_1B7A986D0();
  v26 = *(v38 + 16);
  v25 = *(v38 + 24);
  v27 = *(v38 + 32);
  v28 = *(v38 + 33);
  v33 = *(v38 + 48);
  v35 = *(v38 + 40);
  v30 = *(v38 + 64);
  v31 = *(v38 + 56);

  if (v14 != v26 || v15 != v25 || ((v27 ^ v20) & 1) != 0 || ((v28 ^ v17) & 1) != 0 || (v41.origin.x = x, v41.origin.y = y, v41.size.width = width, v41.size.height = height, v42.origin.y = v33, v42.origin.x = v35, v42.size.height = v30, v42.size.width = v31, !CGRectEqualToRect(v41, v42)))
  {
    sub_1B7A986D0();
    *(v38 + 16) = v14;
    *(v38 + 24) = v15;
    *(v38 + 32) = v20;
    *(v38 + 33) = v17;
    *(v38 + 34) = v36;
    *(v38 + 38) = v37;
    *(v38 + 40) = x;
    *(v38 + 48) = y;
    *(v38 + 56) = width;
    *(v38 + 64) = height;

    sub_1B799CE00(v13);
  }
}

void sub_1B799DD30(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PlayableViewModifier(0, a3, a4, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A58, &unk_1B7A9DBD0);
  sub_1B7A986D0();
  *(v6 + 33) = a1;

  sub_1B799CE00(v5);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A50, &unk_1B7AA63D0);
    sub_1B7A986D0();
    if ((v6 & 1) == 0)
    {
      sub_1B7A986E0();
    }
  }
}

uint64_t sub_1B799DE28(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v7)
  {
    v9 = type metadata accessor for PlayableViewModifier(0, a4, a5, v8);
    sub_1B799CE00(v9);
  }
}

BOOL sub_1B799DEFC(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 && ((*(a1 + 16) ^ *(a2 + 16)) & 1) == 0 && ((*(a1 + 17) ^ *(a2 + 17)) & 1) == 0)
  {
    return CGRectEqualToRect(*(a1 + 24), *(a2 + 24));
  }

  return result;
}

uint64_t View.playable<A>(id:isEnabled:playPercentVisible:pausePercentVisible:frameCoordinateSpace:)(uint64_t a1, char a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = a8;
  v29 = a6;
  v15 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PlayableViewModifier(0, v19, v20, v18);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v28 - v24;
  (*(v15 + 16))(v17, a1, a7, v23);
  v26 = sub_1B799B78C(v17, a2, a7, a9, v25, a3, a4);
  MEMORY[0x1B8CA96D0](v25, v29, v21, v30, v26);
  return (*(v22 + 8))(v25, v21);
}

uint64_t type metadata accessor for PlayableStorage(uint64_t a1)
{
  result = qword_1EBA46908;
  if (!qword_1EBA46908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B799E194(uint64_t a1)
{
  result = sub_1B7A991E0();
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

uint64_t get_witness_table_7SwiftUI4ViewRzSHRd__r__lAA15ModifiedContentVyx011_JetEngine_aB008PlayableC8Modifier33_A88781FDD5080888A74F07BF6234265BLLVyqd__GGAaBHPxAaBHD1__AiA0cI0HPyHCHCTm(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  a2(255, a1[1], a1[3]);
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B799E31C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B799E370(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void sub_1B799E3D0(uint64_t a1)
{
  sub_1B797CE50(319, &qword_1EBA46998, &qword_1EBA469A0, qword_1B7A9DA80);
  if (v1 <= 0x3F)
  {
    sub_1B799E4C4(319);
    if (v2 <= 0x3F)
    {
      sub_1B7958DD8();
      if (v3 <= 0x3F)
      {
        sub_1B7A991E0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B799E4C4(uint64_t a1)
{
  if (!qword_1EBA469A8)
  {
    type metadata accessor for PlayableStorage(255);
    sub_1B79A181C(qword_1EBA469B0, type metadata accessor for PlayableStorage, &unk_1B7A9DB98);
    v1 = sub_1B7A97140();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA469A8);
    }
  }
}

void sub_1B799E560(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1B799E9B8(319);
    if (v2 <= 0x3F)
    {
      sub_1B797CE50(319, &qword_1EBA46998, &qword_1EBA469A0, qword_1B7A9DA80);
      if (v3 <= 0x3F)
      {
        sub_1B799EA10();
        if (v4 <= 0x3F)
        {
          sub_1B797CE50(319, &qword_1EDC10140, &qword_1EBA45D08, &unk_1B7A9C310);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1B799E668(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = (((((v6 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 18;
  v9 = (a2 - v7 + 0xFFFF) >> 16;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *(a1 + v8);
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = *(a1 + v8), !*(a1 + v8)))
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1B799E7C8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = (((((v9 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 0xFFFF) >> 16;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = &a1[v9] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v18 + 8) = a2 & 0x7FFFFFFF;
          *(v18 + 16) = 0;
        }

        else
        {
          *(v18 + 8) = a2 - 1;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, (((((v9 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 18);
  if (v10 <= 3)
  {
    v16 = HIWORD(v15) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_1B799E9B8(uint64_t a1)
{
  if (!qword_1EBA46A38)
  {
    type metadata accessor for PlayableViewState();
    v1 = sub_1B7A98700();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA46A38);
    }
  }
}

void sub_1B799EA10()
{
  if (!qword_1EBA46A40)
  {
    v0 = sub_1B7A98700();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA46A40);
    }
  }
}

uint64_t sub_1B799EAE8(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for PlayableViewModifier(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1B799DAD8(a1, v9, v6, v7);
}

unint64_t sub_1B799EB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA46A48;
  if (!qword_1EBA46A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46A48);
  }

  return result;
}

void sub_1B799EBC8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for PlayableViewModifier(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  sub_1B799DD30(a1, v9, v6, v7);
}

uint64_t objectdestroy_22Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for PlayableViewModifier(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  (*(*(v5 - 8) + 8))(v7, v5);

  sub_1B795AE1C(*(v7 + v6[13]), *(v7 + v6[13] + 8));

  sub_1B797D5A0(*(v7 + v6[15]), *(v7 + v6[15] + 8), *(v7 + v6[15] + 16), *(v7 + v6[15] + 17));

  return swift_deallocObject();
}

uint64_t sub_1B799ED8C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for PlayableViewModifier(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_1B799DE28(a1, a2, v10, v7, v8);
}

uint64_t sub_1B799EE28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1B7A991E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A68, &unk_1B7A9DC50);
  v38 = v4;
  result = sub_1B7A9ADB0();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_1B795C1E4((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_1B7999E90(*(v9 + 56) + 40 * v23, v43);
      }

      sub_1B79A181C(&qword_1EBA46600, MEMORY[0x1E69AB090], MEMORY[0x1E69AB098]);
      result = sub_1B7A9A3E0();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_1B795C1E4(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1B799F20C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46590, &qword_1B7A9D380);
  result = sub_1B7A9ADB0();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (v4)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v41 = *(v24 + 32);
        v39 = v25;
        v40 = v26;
      }

      else
      {
        sub_1B79913AC(v24, &v39);
      }

      v27 = (*(v5 + 56) + 32 * v23);
      v37 = v27[1];
      v38 = *v27;
      result = sub_1B7A9ABF0();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v39;
      v18 = v40;
      *(v16 + 32) = v41;
      *v16 = v17;
      *(v16 + 16) = v18;
      v19 = (*(v7 + 56) + 32 * v15);
      *v19 = v38;
      v19[1] = v37;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1B799F4B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1B7A991E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465B8, &unk_1B7A9DC10);
  v39 = v4;
  result = sub_1B7A9ADB0();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_1B7957D50(*(v9 + 56) + 32 * v23, v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_1B79948D0(*(v9 + 56) + 32 * v23, v44);
      }

      sub_1B79A181C(&qword_1EBA46600, MEMORY[0x1E69AB090], MEMORY[0x1E69AB098]);
      result = sub_1B7A9A3E0();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_1B7957D50(v44, *(v11 + 56) + 32 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1B799F88C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465A8, &qword_1B7A9DC20);
  v33 = v4;
  result = sub_1B7A9ADB0();
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
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_1B7A9AF80();
      sub_1B7A9A500();
      result = sub_1B7A9AFA0();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_1B799FB44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46560, &qword_1B7A9D348);
  result = sub_1B7A9ADB0();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v32 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        v21 = v32;
        v22 = *(&v32 + 1);
      }

      result = sub_1B7A9AF70();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v32;
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
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1B799FDC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46568, &qword_1B7A9D350);
  v42 = v4;
  result = sub_1B7A9ADB0();
  v7 = result;
  if (*(v5 + 16))
  {
    v40 = v2;
    v41 = v5;
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (v42)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v45 = *(v24 + 32);
        v43 = v25;
        v44 = v26;
        v27 = (*(v5 + 56) + 24 * v23);
        v28 = *v27;
        v29 = v27[1];
        v30 = v27[2];
      }

      else
      {
        sub_1B79913AC(v24, &v43);
        v31 = (*(v5 + 56) + 24 * v23);
        v28 = *v31;
        v29 = v31[1];
        v30 = v31[2];
      }

      result = sub_1B7A9ABF0();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v43;
      v18 = v44;
      *(v16 + 32) = v45;
      *v16 = v17;
      *(v16 + 16) = v18;
      v19 = (*(v7 + 56) + 24 * v15);
      *v19 = v28;
      v19[1] = v29;
      v19[2] = v30;
      ++*(v7 + 16);
      v5 = v41;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v9, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1B79A00B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B7A9ABB0() + 1) & ~v5;
    do
    {
      sub_1B79913AC(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_1B7A9ABF0();
      result = sub_1B7991408(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1B79A0254(int64_t a1, uint64_t a2)
{
  v39 = sub_1B7A991E0();
  v4 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v40 = v5;
    v11 = sub_1B7A9ABB0();
    v12 = v39;
    v5 = v40;
    v13 = v10;
    v37 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v35 = a2 + 64;
    v36 = v15;
    v16 = *(v14 + 56);
    v34 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v38;
      v20 = v13;
      v21 = v14;
      v36(v38, *(v5 + 48) + v16 * v9, v12);
      sub_1B79A181C(&qword_1EBA46600, MEMORY[0x1E69AB090], MEMORY[0x1E69AB098]);
      v22 = sub_1B7A9A3E0();
      (*v34)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v37)
      {
        if (v23 >= v37 && a1 >= v23)
        {
LABEL_15:
          v5 = v40;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v40 + 48) + v17 * a1 >= (*(v40 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v40;
            v16 = v17;
            v13 = v20;
            v7 = v35;
          }

          else
          {
            v7 = v35;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v40;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 32 * a1);
          v28 = (v26 + 32 * v9);
          if (a1 != v9 || v27 >= v28 + 2)
          {
            v29 = v28[1];
            *v27 = *v28;
            v27[1] = v29;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v37 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v35;
      v16 = v17;
      v5 = v40;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(v5 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v32;
    ++*(v5 + 36);
  }
}

uint64_t sub_1B79A0574(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = sub_1B7994ACC(a1);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  result = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 >= result && (a2 & 1) != 0)
  {
    goto LABEL_7;
  }

  if (v21 >= result && (a2 & 1) == 0)
  {
    result = sub_1B79A0E2C();
LABEL_7:
    v22 = *v7;
    if (v20)
    {
LABEL_8:
      v23 = (v22[7] + 32 * v16);
      *v23 = a3;
      v23[1] = a4;
      v23[2] = a5;
      v23[3] = a6;
      return result;
    }

LABEL_11:
    result = sub_1B79913AC(a1, v32);
    v22[(v16 >> 6) + 8] |= 1 << v16;
    v25 = v22[6] + 40 * v16;
    v26 = v33;
    v27 = v32[1];
    *v25 = v32[0];
    *(v25 + 16) = v27;
    *(v25 + 32) = v26;
    v28 = (v22[7] + 32 * v16);
    *v28 = a3;
    v28[1] = a4;
    v28[2] = a5;
    v28[3] = a6;
    v29 = v22[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      v22[2] = v31;
      return result;
    }

    goto LABEL_14;
  }

  sub_1B799F20C(result, a2 & 1);
  result = sub_1B7994ACC(a1);
  if ((v20 & 1) == (v24 & 1))
  {
    v16 = result;
    v22 = *v7;
    if (v20)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

LABEL_15:
  result = sub_1B7A9AEC0();
  __break(1u);
  return result;
}

uint64_t sub_1B79A06EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1B79948B8(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1B799F88C(v18, a5 & 1);
      v13 = sub_1B79948B8(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1B7A9AEC0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1B79A124C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void sub_1B79A0874(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B7994C28(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B799FB44(v16, a4 & 1);
      v11 = sub_1B7994C28(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_1B7A9AEC0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1B79A13CC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    *(v21[6] + 8 * v11) = a3;
    v24 = (v21[7] + 16 * v11);
    *v24 = a1;
    v24[1] = a2;
    v25 = v21[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v15)
    {
      v21[2] = v26;
      return;
    }

    goto LABEL_15;
  }

  v22 = v21[7] + 16 * v11;
  v23 = *(v22 + 8);
  v27 = *v22;
  *v22 = a1;
  *(v22 + 8) = a2;
}

uint64_t sub_1B79A09EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v14 = sub_1B7994ACC(a4);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 < v17 || (a5 & 1) != 0)
    {
      sub_1B799FDC4(v17, a5 & 1);
      v23 = sub_1B7994ACC(a4);
      if ((v18 & 1) != (v24 & 1))
      {
LABEL_17:
        result = sub_1B7A9AEC0();
        __break(1u);
        return result;
      }

      v14 = v23;
      v20 = *v6;
      if (v18)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_1B79A1548();
  }

  v20 = *v6;
  if ((v18 & 1) == 0)
  {
LABEL_13:
    result = sub_1B79913AC(a4, v32);
    v20[(v14 >> 6) + 8] |= 1 << v14;
    v25 = v20[6] + 40 * v14;
    v26 = v33;
    v27 = v32[1];
    *v25 = v32[0];
    *(v25 + 16) = v27;
    *(v25 + 32) = v26;
    v28 = (v20[7] + 24 * v14);
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v29 = v20[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      v20[2] = v31;
      return result;
    }

    goto LABEL_16;
  }

LABEL_8:
  v21 = (v20[7] + 24 * v14);
  *v21 = a1;
  v21[1] = a2;
  v21[2] = a3;
}

void *sub_1B79A0BA4()
{
  v1 = v0;
  v29 = sub_1B7A991E0();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A68, &unk_1B7A9DC50);
  v3 = *v0;
  v4 = sub_1B7A9ADA0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        sub_1B7999E90(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        result = sub_1B795C1E4(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1B79A0E2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46590, &qword_1B7A9D380);
  v2 = *v0;
  v3 = sub_1B7A9ADA0();
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
        result = sub_1B79913AC(*(v2 + 48) + 40 * v17, v25);
        v18 = (*(v2 + 56) + 32 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = *v18;
        v21 = v18[1];
        v22 = v26;
        v23 = v25[1];
        *v19 = v25[0];
        *(v19 + 16) = v23;
        *(v19 + 32) = v22;
        v24 = (*(v4 + 56) + 32 * v17);
        *v24 = v20;
        v24[1] = v21;
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

void *sub_1B79A0FC8()
{
  v1 = v0;
  v26 = sub_1B7A991E0();
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465B8, &unk_1B7A9DC10);
  v3 = *v0;
  v4 = sub_1B7A9ADA0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_1B79948D0(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_1B7957D50(v30, *(v23 + 56) + v18);
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1B79A124C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465A8, &qword_1B7A9DC20);
  v2 = *v0;
  v3 = sub_1B7A9ADA0();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

id sub_1B79A13CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46560, &qword_1B7A9D348);
  v2 = *v0;
  v3 = sub_1B7A9ADA0();
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
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v19;
        v18 = v19;
        result = *(&v19 + 1);
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

void *sub_1B79A1548()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46568, &qword_1B7A9D350);
  v2 = *v0;
  v3 = sub_1B7A9ADA0();
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
        v18 = 40 * v17;
        sub_1B79913AC(*(v2 + 48) + 40 * v17, v28);
        v19 = 24 * v17;
        v20 = (*(v2 + 56) + 24 * v17);
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[2];
        v24 = *(v4 + 48) + v18;
        v25 = v28[0];
        v26 = v28[1];
        *(v24 + 32) = v29;
        *v24 = v25;
        *(v24 + 16) = v26;
        v27 = (*(v4 + 56) + v19);
        *v27 = v21;
        v27[1] = v22;
        v27[2] = v23;
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

unint64_t sub_1B79A16FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA46A60;
  if (!qword_1EBA46A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46A60);
  }

  return result;
}

unint64_t sub_1B79A1768()
{
  result = qword_1EBA46A80;
  if (!qword_1EBA46A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA469A0, qword_1B7A9DA80);
    sub_1B79A181C(qword_1EBA46A88, type metadata accessor for PlayableStorage, MEMORY[0x1E69E81C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46A80);
  }

  return result;
}

uint64_t sub_1B79A181C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B79A1864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  KeyPath = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  View.prefetchMediaArtwork<A, B>(of:id:)(a1, KeyPath, a2, a4, a6, AssociatedConformanceWitness, x8_0);
}

uint64_t View.prefetchMediaArtwork<A, B>(of:id:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a4;
  v26 = a7;
  v27 = a3;
  v11 = (*a2 + *MEMORY[0x1E69E77B0]);
  v12 = *v11;
  v13 = *(*v11 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v26 - v14;
  v17 = *(v16 + 8);
  v29[0] = v12;
  v29[1] = v17;
  v29[2] = v18;
  v29[3] = v19;
  v20 = type metadata accessor for _PrefetchMediaArtworkViewModifier(0, v29);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v26 - v23;
  (*(v13 + 16))(v15, a1, v12, v22);
  sub_1B79A1B4C(v15, a2, a5, a6, v24);

  MEMORY[0x1B8CA96D0](v24, v27, v20, v28);
  return (*(v21 + 8))(v24, v20);
}

uint64_t sub_1B79A1B4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v16 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v15 = v16;
  v17 = a3;
  v18 = a4;
  v8 = type metadata accessor for _PrefetchMediaArtworkViewModifier(0, &v16);
  v9 = a5 + v8[14];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = v8[15];
  *(a5 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E00, &unk_1B7A9C590);
  swift_storeEnumTagMultiPayload();
  v11 = a5 + v8[16];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a5 + v8[17];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a5 + v8[18];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  result = (*(*(v15 - 8) + 32))(a5, a1);
  *(a5 + v8[13]) = a2;
  return result;
}

void sub_1B79A1CC8(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1B7A9AFB0();
    if (v2 <= 0x3F)
    {
      sub_1B79A232C(319, &qword_1EBA46B10, MEMORY[0x1E69E7DE0]);
      if (v3 <= 0x3F)
      {
        sub_1B79A22D4(319);
        if (v4 <= 0x3F)
        {
          sub_1B79A232C(319, &qword_1EBA46B20, &_s19_ProtocolDispatcherVN);
          if (v5 <= 0x3F)
          {
            sub_1B79A232C(319, &qword_1EBA46B28, &type metadata for _MediaArtworkValues);
            if (v6 <= 0x3F)
            {
              sub_1B79A2378(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B79A1E00(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1B7A97580() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = ((v10 + ((((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 9) & ~v12) + 40) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 <= 3)
  {
    v14 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v14 = 2;
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

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v17 = *&a1[v13];
      if (!v17)
      {
        goto LABEL_33;
      }
    }

LABEL_26:
    v19 = v13 > 3;
    if (v13 <= 3)
    {
      v20 = (v17 - 1) << (8 * v13);
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }

    return v8 + (v23 | v20) + 1;
  }

  if (v16)
  {
    v17 = a1[v13];
    if (a1[v13])
    {
      goto LABEL_26;
    }
  }

LABEL_33:
  if (v7 < 0x7FFFFFFF)
  {
    v22 = *(&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v22 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    return (v22 + 1);
  }

  else
  {
    v21 = *(v6 + 48);

    return v21(a1, v7, v5);
  }
}

void sub_1B79A2048(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1B7A97580() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v14 + 9) & ~v14) + 40) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v18 = 0;
    if (v10 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v10 >= a2)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v15] = 0;
      }

      else if (v18)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v9 < 0x7FFFFFFF)
      {
        v22 = (&a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v23 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v23 = (a2 - 1);
        }

        *v22 = v23;
      }

      else
      {
        v21 = *(v24 + 56);

        v21(a1, a2, v9, v7);
      }

      return;
    }
  }

  v19 = ~v10 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v20 = (v19 >> 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v19;
    if (v18 > 1)
    {
LABEL_29:
      if (v18 == 2)
      {
        *&a1[v15] = v20;
      }

      else
      {
        *&a1[v15] = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v18 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v18)
  {
    a1[v15] = v20;
  }
}

void sub_1B79A22D4(uint64_t a1)
{
  if (!qword_1EBA46B18)
  {
    sub_1B7A97580();
    v1 = sub_1B7A970E0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA46B18);
    }
  }
}

void sub_1B79A232C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1B7A970E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B79A2378(uint64_t a1)
{
  if (!qword_1EBA46B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B38, &qword_1B7AA4460);
    v1 = sub_1B7A970E0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA46B30);
    }
  }
}

uint64_t sub_1B79A2420@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v44 = a3;
  v4 = *(a2 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B7A9A7E0();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[3];
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  sub_1B7A97C30();
  v11 = *(a2[5] + 8);
  v34 = a2[5];
  v35 = v11;
  v38 = sub_1B7A97980();
  v12 = sub_1B7A97590();
  v39 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = v36;
  swift_getAtKeyPath();
  sub_1B7A9A770();
  v19 = v37;
  (*(v4 + 16))(v37, v18, a2);
  v20 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v21 = swift_allocObject();
  *&v22 = a2[2];
  *(&v22 + 1) = v8;
  *&v23 = a2[4];
  *(&v23 + 1) = v34;
  *(v21 + 16) = v22;
  *(v21 + 32) = v23;
  (*(v4 + 32))(v21 + v20, v19, a2);
  WitnessTable = swift_getWitnessTable();
  v25 = v32;
  v26 = v33;
  sub_1B7A983C0();

  (*(v41 + 8))(v25, v42);
  (*(v40 + 8))(v26, v8);
  v27 = swift_getWitnessTable();
  v45 = WitnessTable;
  v46 = v27;
  v28 = swift_getWitnessTable();
  sub_1B7957EE0(v14, v12, v28);
  v29 = *(v39 + 8);
  v29(v14, v12);
  sub_1B7957EE0(v17, v12, v28);
  return (v29)(v17, v12);
}

uint64_t sub_1B79A288C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = swift_task_alloc();
  v6 = sub_1B7A97880();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = sub_1B7A9A760();
  v5[17] = sub_1B7A9A750();
  v8 = sub_1B7A9A710();
  v5[18] = v8;
  v5[19] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B79A29B0, v8, v7);
}

uint64_t sub_1B79A29B0()
{
  v23 = v0;
  *(v0 + 16) = *(v0 + 64);
  v1 = *(v0 + 56);
  *(v0 + 32) = *(v0 + 80);
  v2 = v1 + *(type metadata accessor for _PrefetchMediaArtworkViewModifier(0, v0 + 16) + 68);
  v3 = *v2;
  if (*(v2 + 8) == 1)
  {
  }

  else
  {
    v5 = *(v0 + 112);
    v4 = *(v0 + 120);
    v6 = *(v0 + 104);

    sub_1B7A9AA10();
    v7 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B79A5B8C(v3, 0);
    (*(v5 + 8))(v4, v6);
    v3 = *(v0 + 48);
  }

  v8 = *(v0 + 80);
  v9 = *(v0 + 64);
  v22 = v3;
  v10 = (*(v8 + 8))(&v22, v9);
  *(v0 + 160) = v10;

  swift_getAtKeyPath();
  v11 = sub_1B7A9A4D0();
  v13 = v12;
  *(v0 + 168) = v12;
  if (*(v10 + 16))
  {
    v14 = v11;
    v15 = *(v0 + 56);
    v20 = *(v0 + 80);
    v21 = *(v0 + 64);
    *(v0 + 176) = sub_1B7A9A750();
    v16 = swift_task_alloc();
    *(v0 + 184) = v16;
    *(v16 + 16) = v21;
    *(v16 + 32) = v20;
    *(v16 + 48) = v10;
    *(v16 + 56) = v15;
    *(v16 + 64) = v14;
    *(v16 + 72) = v13;
    v17 = swift_task_alloc();
    *(v0 + 192) = v17;
    *v17 = v0;
    v17[1] = sub_1B79A2C84;

    return MEMORY[0x1EEE6DDE8]();
  }

  else
  {

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1B79A2C84()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1B79A2E24, v3, v2);
}

uint64_t sub_1B79A2E24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B79A2E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[57] = v18;
  v8[58] = v19;
  v8[55] = a7;
  v8[56] = a8;
  v8[53] = a5;
  v8[54] = a6;
  v8[51] = a3;
  v8[52] = a4;
  v8[50] = a2;
  v8[27] = a7;
  v8[28] = a8;
  v8[29] = v18;
  v8[30] = v19;
  v9 = type metadata accessor for _PrefetchMediaArtworkViewModifier(0, (v8 + 27));
  v8[59] = v9;
  v10 = *(v9 - 8);
  v8[60] = v10;
  v8[61] = *(v10 + 64);
  v8[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  v8[63] = swift_task_alloc();
  v8[64] = swift_task_alloc();
  sub_1B7A98CC0();
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v11 = sub_1B7A9A7E0();
  v8[67] = v11;
  v8[68] = *(v11 - 8);
  v8[69] = swift_task_alloc();
  v8[70] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E00, &unk_1B7A9C590);
  v8[71] = swift_task_alloc();
  v12 = sub_1B7A97580();
  v8[72] = v12;
  v8[73] = *(v12 - 8);
  v8[74] = swift_task_alloc();
  v13 = sub_1B7A97880();
  v8[75] = v13;
  v8[76] = *(v13 - 8);
  v8[77] = swift_task_alloc();
  v8[78] = *(type metadata accessor for MediaArtwork.Sized(0) - 8);
  v8[79] = swift_task_alloc();
  sub_1B7A9A760();
  v8[80] = sub_1B7A9A750();
  v15 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B79A31E0, v15, v14);
}

uint64_t sub_1B79A31E0()
{
  v1 = *(v0 + 408);

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 472);
    v4 = *(v0 + 416) + v3[14];
    v5 = *(v0 + 624);
    v6 = *(v0 + 408) + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v90 = (*(v0 + 608) + 8);
    v7 = *(v0 + 584);
    v69 = (v7 + 32);
    v8 = *(v0 + 544);
    v85 = (v8 + 8);
    v75 = (v7 + 8);
    v67 = (v8 + 56);
    v68 = *(v0 + 480);
    v66 = *(v0 + 488) + 7;
    v65 = (v8 + 48);
    v86 = *v4;
    v9 = *v4;
    v89 = *(v4 + 8);
    v87 = *(v5 + 72);
    v76 = v3;
    while (1)
    {
      sub_1B79A5E84(v6, *(v0 + 632));
      v91 = v2;
      if ((v89 & 1) == 0)
      {
        v10 = *(v0 + 616);
        v11 = *(v0 + 600);

        sub_1B7A9AA10();
        v12 = sub_1B7A97E70();
        sub_1B7A96D30();

        sub_1B7A97870();
        swift_getAtKeyPath();
        sub_1B795AE10(v86, 0);
        (*v90)(v10, v11);
      }

      _s9JetEngine12MediaArtworkV01_aB8_SwiftUIE5SizedV9_resource9withScaleAA0cD8Resource_pSg12CoreGraphics7CGFloatV_tF_0();
      if (*(v0 + 80))
      {
        break;
      }

      sub_1B79A5EE8(*(v0 + 632));
      sub_1B7957888(v0 + 56, &qword_1EBA46B48, &unk_1B7A9DD80);
LABEL_4:
      v6 += v87;
      if (!--v2)
      {
        goto LABEL_36;
      }
    }

    v13 = *(v0 + 416);
    sub_1B795C1E4((v0 + 56), v0 + 16);
    v14 = v13 + v3[16];
    v15 = *v14;
    v88 = v6;
    if (*(v14 + 8) == 1)
    {
    }

    else
    {
      v16 = *(v0 + 616);
      v17 = *(v0 + 600);

      sub_1B7A9AA10();
      v18 = sub_1B7A97E70();
      sub_1B7A96D30();

      sub_1B7A97870();
      swift_getAtKeyPath();
      sub_1B79A5B8C(v15, 0);
      (*v90)(v16, v17);
      v15 = *(v0 + 376);
    }

    v19 = *(v0 + 416) + v3[17];
    v20 = *v19;
    if (*(v19 + 8) == 1)
    {
    }

    else
    {
      v21 = *(v0 + 616);
      v22 = *(v0 + 600);

      sub_1B7A9AA10();
      v23 = sub_1B7A97E70();
      sub_1B7A96D30();

      sub_1B7A97870();
      swift_getAtKeyPath();
      sub_1B79A5B8C(v20, 0);
      (*v90)(v21, v22);
      v20 = *(v0 + 384);
    }

    sub_1B7999E90(v0 + 16, v0 + 96);
    v24 = *&v9;
    if ((v89 & 1) == 0)
    {
      v25 = *(v0 + 616);
      v82 = *(v0 + 600);

      sub_1B7A9AA10();
      v26 = sub_1B7A97E70();
      sub_1B7A96D30();

      sub_1B7A97870();
      swift_getAtKeyPath();
      sub_1B795AE10(v86, 0);
      (*v90)(v25, v82);
      v24 = *(v0 + 392);
    }

    sub_1B7957820(*(v0 + 416) + v3[15], *(v0 + 568), &qword_1EBA45E00, &unk_1B7A9C590);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v69)(*(v0 + 592), *(v0 + 568), *(v0 + 576));
    }

    else
    {
      v27 = *(v0 + 616);
      v28 = *(v0 + 600);
      sub_1B7A9AA10();
      v29 = sub_1B7A97E70();
      sub_1B7A96D30();

      sub_1B7A97870();
      swift_getAtKeyPath();

      (*v90)(v27, v28);
    }

    sub_1B7A9A770();
    sub_1B7957820(v0 + 96, v0 + 176, &qword_1EBA46B48, &unk_1B7A9DD80);
    v30 = *(v0 + 592);
    v31 = *(v0 + 576);
    v32 = *(v0 + 552);
    v33 = *(v0 + 536);
    if (*(v0 + 200))
    {
      sub_1B795C1E4((v0 + 176), v0 + 136);
      v34 = *(v0 + 160);
      v35 = *(v0 + 168);
      v36 = __swift_project_boxed_opaque_existential_1((v0 + 136), v34);
      v37 = sub_1B7A8CCE0(v36, v15, v20, 0, v30, v32, v34, v35, v24);
      v39 = v38;

      v40 = *v85;
      (*v85)(v32, v33);
      (*v75)(v30, v31);
      sub_1B7957888(v0 + 96, &qword_1EBA46B48, &unk_1B7A9DD80);
      __swift_destroy_boxed_opaque_existential_1((v0 + 136));
      if (v37)
      {
        v70 = v40;
        v79 = *(v0 + 536);
        v73 = *(v0 + 512);
        v80 = *(v0 + 504);
        v83 = v39;
        v41 = *(v0 + 496);
        v42 = *(v0 + 472);
        v77 = *(v0 + 432);
        v74 = *(v0 + 424);
        v43 = *(v0 + 416);
        v71 = *(v0 + 456);
        v72 = *(v0 + 440);
        (*v67)();
        (*(v68 + 16))(v41, v43, v42);
        v44 = (*(v68 + 80) + 64) & ~*(v68 + 80);
        v45 = (v66 + v44) & 0xFFFFFFFFFFFFFFF8;
        v46 = swift_allocObject();
        *(v46 + 16) = 0;
        *(v46 + 24) = 0;
        *(v46 + 32) = v72;
        *(v46 + 48) = v71;
        (*(v68 + 32))(v46 + v44, v41, v42);
        v47 = (v46 + v45);
        *v47 = v37;
        v47[1] = v83;
        v48 = (v46 + ((v45 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v48 = v74;
        v48[1] = v77;
        sub_1B7957820(v73, v80, &qword_1EBA46B40, &qword_1B7A9DF90);
        v49 = (*v65)(v80, 1, v79);
        sub_1B7974B84(v37, v83);

        if (v49 == 1)
        {
          sub_1B7957888(*(v0 + 504), &qword_1EBA46B40, &qword_1B7A9DF90);
        }

        else
        {
          v53 = *(v0 + 536);
          v54 = *(v0 + 504);
          sub_1B7A9A7D0();
          v70(v54, v53);
        }

        v3 = v76;
        if (*(v46 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v55 = sub_1B7A9A710();
          v57 = v56;
          swift_unknownObjectRelease();
        }

        else
        {
          v55 = 0;
          v57 = 0;
        }

        v58 = **(v0 + 400);
        v59 = swift_allocObject();
        *(v59 + 16) = &unk_1B7A9DDA0;
        *(v59 + 24) = v46;

        if (v57 | v55)
        {
          v60 = v0 + 312;
          *(v0 + 312) = 0;
          *(v0 + 320) = 0;
          *(v0 + 328) = v55;
          *(v0 + 336) = v57;
        }

        else
        {
          v60 = 0;
        }

        v61 = *(v0 + 632);
        v62 = *(v0 + 512);
        *(v0 + 344) = 1;
        *(v0 + 352) = v60;
        *(v0 + 360) = v58;
        swift_task_create();

        sub_1B7974C44(v37, v83);
        sub_1B7957888(v62, &qword_1EBA46B40, &qword_1B7A9DF90);
        sub_1B79A5EE8(v61);
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
        v2 = v91;
LABEL_35:
        v6 = v88;
        goto LABEL_4;
      }
    }

    else
    {

      (*v85)(v32, v33);
      (*v75)(v30, v31);
      sub_1B7957888(v0 + 96, &qword_1EBA46B48, &unk_1B7A9DD80);
      sub_1B7957888(v0 + 176, &qword_1EBA46B48, &unk_1B7A9DD80);
    }

    if (qword_1EBA45B78 != -1)
    {
      swift_once();
    }

    v84 = *(v0 + 632);
    v78 = *(v0 + 448);
    v81 = sub_1B7A9A280();
    __swift_project_value_buffer(v81, qword_1EBA507A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9D270;
    sub_1B7A98CB0();
    sub_1B7A98CA0();
    v50 = *(v0 + 40);
    v51 = __swift_project_boxed_opaque_existential_1((v0 + 16), v50);
    *(v0 + 272) = v50;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 248));
    (*(*(v50 - 8) + 16))(boxed_opaque_existential_1Tm, v51, v50);
    sub_1B7A98C60();
    sub_1B7957888(v0 + 248, &qword_1EBA46B50, &qword_1B7A9DD90);
    sub_1B7A98CA0();
    sub_1B7A98CD0();
    sub_1B7A98CB0();
    sub_1B7A98CA0();
    v3 = v76;
    *(v0 + 304) = v78;
    __swift_allocate_boxed_opaque_existential_1Tm((v0 + 280));
    swift_getAtKeyPath();
    sub_1B7A98C60();
    sub_1B7957888(v0 + 280, &qword_1EBA46B50, &qword_1B7A9DD90);
    sub_1B7A98CA0();
    sub_1B7A98CD0();
    sub_1B7A99E40();

    sub_1B79A5EE8(v84);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_35;
  }

LABEL_36:

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_1B79A3ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 256) = v20;
  *(v8 + 240) = v19;
  *(v8 + 224) = a7;
  *(v8 + 232) = a8;
  *(v8 + 208) = a5;
  *(v8 + 216) = a6;
  *(v8 + 192) = a3;
  *(v8 + 200) = a4;
  v9 = sub_1B7A9A720();
  *(v8 + 264) = v9;
  *(v8 + 272) = *(v9 - 8);
  *(v8 + 280) = swift_task_alloc();
  sub_1B7A98CC0();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  v10 = sub_1B7A99CC0();
  *(v8 + 304) = v10;
  *(v8 + 312) = *(v10 - 8);
  *(v8 + 320) = swift_task_alloc();
  v11 = sub_1B7A96DB0();
  *(v8 + 328) = v11;
  *(v8 + 336) = *(v11 - 8);
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464A0, &qword_1B7AA4600);
  *(v8 + 368) = v12;
  *(v8 + 376) = *(v12 - 8);
  *(v8 + 384) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B58, &unk_1B7A9DDC0);
  *(v8 + 392) = v13;
  *(v8 + 400) = *(v13 - 8);
  *(v8 + 408) = swift_task_alloc();
  v14 = sub_1B7A99CD0();
  *(v8 + 416) = v14;
  *(v8 + 424) = *(v14 - 8);
  *(v8 + 432) = swift_task_alloc();
  v15 = sub_1B7A97880();
  *(v8 + 440) = v15;
  *(v8 + 448) = *(v15 - 8);
  *(v8 + 456) = swift_task_alloc();
  v16 = sub_1B7A96D70();
  *(v8 + 464) = v16;
  *(v8 + 472) = *(v16 - 8);
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B79A42D0, 0, 0);
}

uint64_t sub_1B79A42D0()
{
  if (qword_1EBA45B80 != -1)
  {
    swift_once();
  }

  v1 = sub_1B7A96DA0();
  v0[65] = __swift_project_value_buffer(v1, qword_1EBA507B8);
  sub_1B7A96D90();
  sub_1B7A96D40();
  v2 = sub_1B7A96D90();
  v3 = sub_1B7A9AA90();
  if (sub_1B7A9AB50())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1B7A96D50();
    _os_signpost_emit_with_name_impl(&dword_1B7954000, v2, v3, v5, "Image.Prefetch", "", v4, 2u);
    MEMORY[0x1B8CACB70](v4, -1, -1);
  }

  v7 = v0[63];
  v6 = v0[64];
  v8 = v0[58];
  v9 = v0[59];

  (*(v9 + 16))(v7, v6, v8);
  sub_1B7A96DE0();
  swift_allocObject();
  v0[66] = sub_1B7A96DD0();
  v0[67] = sub_1B7A9A760();
  v0[68] = sub_1B7A9A750();
  v11 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B79A449C, v11, v10);
}

uint64_t sub_1B79A449C()
{
  v1 = *(v0 + 192);
  v10 = *(v0 + 248);
  v11 = *(v0 + 232);

  *(v0 + 16) = v11;
  *(v0 + 32) = v10;
  v2 = v1 + *(type metadata accessor for _PrefetchMediaArtworkViewModifier(0, v0 + 16) + 72);
  v3 = *v2;
  *(v0 + 552) = *v2;
  v4 = *(v2 + 8);
  *(v0 + 656) = v4;

  if ((v4 & 1) == 0)
  {
    v6 = *(v0 + 448);
    v5 = *(v0 + 456);
    v7 = *(v0 + 440);
    sub_1B7A9AA10();
    v8 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release(v3);
    (*(v6 + 8))(v5, v7);
    v3 = *(v0 + 136);
  }

  *(v0 + 560) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B79A45F4, 0, 0);
}

uint64_t sub_1B79A45F4()
{
  if (*(v0 + 560))
  {
    v2 = *(v0 + 424);
    v1 = *(v0 + 432);
    v3 = *(v0 + 416);
    *v1 = 0;
    (*(v2 + 104))(v1, *MEMORY[0x1E69AB448], v3);
    sub_1B7A99D30();

    (*(v2 + 8))(v1, v3);
  }

  v5 = *(v0 + 376);
  v4 = *(v0 + 384);
  v6 = *(v0 + 368);
  (*(v0 + 200))();
  sub_1B7A98B90();
  (*(v5 + 8))(v4, v6);
  v7 = swift_task_alloc();
  *(v0 + 568) = v7;
  *v7 = v0;
  v7[1] = sub_1B79A4754;
  v8 = *(v0 + 392);

  return MEMORY[0x1EEE15E88](v0 + 144, 0, 0, v8);
}

uint64_t sub_1B79A4754()
{
  *(*v1 + 576) = v0;

  if (v0)
  {
    v2 = sub_1B79A5474;
  }

  else
  {
    v2 = sub_1B79A4868;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B79A4868()
{
  if (v0[18])
  {

    v1 = swift_task_alloc();
    v0[71] = v1;
    *v1 = v0;
    v1[1] = sub_1B79A4754;
    v2 = v0[49];

    return MEMORY[0x1EEE15E88](v0 + 18, 0, 0, v2);
  }

  else
  {
    (*(v0[50] + 8))(v0[51], v0[49]);
    v3 = sub_1B7A96D90();
    sub_1B7A96DC0();
    v4 = sub_1B7A9AA80();
    if (sub_1B7A9AB50())
    {
      v5 = v0[45];
      v6 = v0[41];
      v7 = v0[42];

      sub_1B7A96DF0();

      if ((*(v7 + 88))(v5, v6) == *MEMORY[0x1E69E93E8])
      {
        v8 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[42] + 8))(v0[45], v0[41]);
        v8 = "finished";
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = sub_1B7A96D50();
      _os_signpost_emit_with_name_impl(&dword_1B7954000, v3, v4, v10, "Image.Prefetch", v8, v9, 2u);
      MEMORY[0x1B8CACB70](v9, -1, -1);
    }

    v11 = v0[62];
    v12 = v0[58];
    v13 = v0[59];

    v14 = *(v13 + 8);
    v0[73] = v14;
    v14(v11, v12);
    v0[74] = sub_1B7A9A750();
    v16 = sub_1B7A9A710();

    return MEMORY[0x1EEE6DFA0](sub_1B79A4AE4, v16, v15);
  }
}

uint64_t sub_1B79A4AE4()
{
  v1 = *(v0 + 656);

  if (v1)
  {
    v2 = (v0 + 552);
  }

  else
  {
    v2 = (v0 + 184);
    v3 = *(v0 + 552);
    v5 = *(v0 + 448);
    v4 = *(v0 + 456);
    v6 = *(v0 + 440);
    sub_1B7A9AA10();
    v7 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release(v3);
    (*(v5 + 8))(v4, v6);
  }

  *(v0 + 600) = *v2;

  return MEMORY[0x1EEE6DFA0](sub_1B79A4C14, 0, 0);
}

uint64_t sub_1B79A4C14()
{
  v1 = v0[73];
  v2 = v0[64];
  v3 = v0[58];
  if (v0[75])
  {
    v5 = v0[39];
    v4 = v0[40];
    v6 = v0[38];
    *v4 = 0;
    (*(v5 + 104))(v4, *MEMORY[0x1E69AB438], v6);
    sub_1B7A99D10();

    (*(v5 + 8))(v4, v6);
    v1(v2, v3);
  }

  else
  {
    v1(v0[64], v0[58]);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B79A4DFC()
{
  v1 = *(v0 + 656);

  if (v1)
  {
    v2 = (v0 + 552);
  }

  else
  {
    v2 = (v0 + 176);
    v3 = *(v0 + 552);
    v5 = *(v0 + 448);
    v4 = *(v0 + 456);
    v6 = *(v0 + 440);
    sub_1B7A9AA10();
    v7 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release(v3);
    (*(v5 + 8))(v4, v6);
  }

  *(v0 + 624) = *v2;

  return MEMORY[0x1EEE6DFA0](sub_1B79A4F2C, 0, 0);
}

uint64_t sub_1B79A4F2C()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 512);
  v3 = *(v0 + 464);
  if (*(v0 + 624))
  {
    v5 = *(v0 + 312);
    v4 = *(v0 + 320);
    v6 = *(v0 + 304);
    *v4 = 0;
    (*(v5 + 104))(v4, *MEMORY[0x1E69AB438], v6);
    sub_1B7A99D10();

    (*(v5 + 8))(v4, v6);
    v1(v2, v3);
  }

  else
  {
    v1(*(v0 + 512), *(v0 + 464));
  }

  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B79A5134()
{
  v1 = *(v0 + 656);

  if (v1)
  {
    v2 = (v0 + 552);
  }

  else
  {
    v2 = (v0 + 168);
    v3 = *(v0 + 552);
    v5 = *(v0 + 448);
    v4 = *(v0 + 456);
    v6 = *(v0 + 440);
    sub_1B7A9AA10();
    v7 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release(v3);
    (*(v5 + 8))(v4, v6);
  }

  *(v0 + 648) = *v2;

  return MEMORY[0x1EEE6DFA0](sub_1B79A5264, 0, 0);
}

uint64_t sub_1B79A5264()
{
  v1 = v0[79];
  v2 = v0[72];
  v3 = v0[64];
  v4 = v0[58];
  if (v0[81])
  {
    v6 = v0[39];
    v5 = v0[40];
    v7 = v0[38];
    *v5 = v2;
    *(v5 + 8) = 0;
    v11 = v1;
    (*(v6 + 104))(v5, *MEMORY[0x1E69AB428], v7);
    v8 = v2;
    sub_1B7A99D10();

    (*(v6 + 8))(v5, v7);
    v11(v3, v4);
  }

  else
  {
    v1(v0[64], v0[58]);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B79A5474()
{
  v55 = v0;
  v1 = *(v0 + 576);
  (*(*(v0 + 400) + 8))(*(v0 + 408), *(v0 + 392));
  *(v0 + 152) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60, &qword_1B7AA0260);
  if (swift_dynamicCast())
  {

    v3 = sub_1B7A96D90();
    sub_1B7A96DC0();
    v4 = sub_1B7A9AA80();
    if (sub_1B7A9AB50())
    {
      v5 = *(v0 + 352);
      v6 = *(v0 + 328);
      v7 = *(v0 + 336);

      sub_1B7A96DF0();

      if ((*(v7 + 88))(v5, v6) == *MEMORY[0x1E69E93E8])
      {
        v8 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 336) + 8))(*(v0 + 352), *(v0 + 328));
        v8 = "cancelled";
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = sub_1B7A96D50();
      _os_signpost_emit_with_name_impl(&dword_1B7954000, v3, v4, v26, "Image.Prefetch", v8, v25, 2u);
      MEMORY[0x1B8CACB70](v25, -1, -1);
    }

    v27 = *(v0 + 488);
    v28 = *(v0 + 464);
    v29 = *(v0 + 472);

    v30 = *(v29 + 8);
    *(v0 + 608) = v30;
    v30(v27, v28);
    *(v0 + 616) = sub_1B7A9A750();
    v31 = sub_1B7A9A710();
    v33 = v32;
    v34 = sub_1B79A4DFC;
  }

  else
  {
    v51 = (v0 + 80);

    if (qword_1EBA45B78 != -1)
    {
      swift_once();
    }

    v49 = *(v0 + 576);
    v9 = *(v0 + 224);
    v48 = *(v0 + 216);
    v50 = sub_1B7A9A280();
    __swift_project_value_buffer(v50, qword_1EBA507A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9D280;
    sub_1B7A98C40();
    sub_1B7A98CB0();
    sub_1B7A98CA0();
    *(v0 + 72) = MEMORY[0x1E69E6158];
    *(v0 + 48) = v48;
    *(v0 + 56) = v9;

    sub_1B7A98C60();
    sub_1B7957888(v0 + 48, &qword_1EBA46B50, &qword_1B7A9DD90);
    sub_1B7A98CA0();
    sub_1B7A98CD0();
    sub_1B7A98CB0();
    sub_1B7A98CA0();
    swift_getErrorValue();
    v10 = *(v0 + 112);
    v11 = *(v0 + 120);
    *(v0 + 104) = v11;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v51);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1Tm, v10, v11);
    sub_1B7A98C70();
    sub_1B7957888(v51, &qword_1EBA46B50, &qword_1B7A9DD90);
    sub_1B7A98CA0();
    sub_1B7A98CD0();
    sub_1B7A99E60();

    v13 = v49;
    v14 = sub_1B7A96D90();
    sub_1B7A96DC0();
    v15 = sub_1B7A9AA80();

    if (sub_1B7A9AB50())
    {
      v17 = *(v0 + 336);
      v16 = *(v0 + 344);
      v18 = *(v0 + 328);

      sub_1B7A96DF0();

      if ((*(v17 + 88))(v16, v18) == *MEMORY[0x1E69E93E8])
      {
        v19 = 0;
        v20 = 0;
        format = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
        format = "error=%{public}s";
        v20 = 2;
        v19 = 1;
      }

      v36 = *(v0 + 472);
      v35 = *(v0 + 480);
      v53 = *(v0 + 464);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v54 = v38;
      *v37 = v20;
      *(v37 + 1) = v19;
      *(v37 + 2) = 2082;
      v39 = sub_1B7A96B00();
      v40 = AMSLogableError();

      v41 = sub_1B7A9A4B0();
      v43 = v42;

      v44 = sub_1B79A6340(v41, v43, &v54);

      *(v37 + 4) = v44;
      v45 = sub_1B7A96D50();
      _os_signpost_emit_with_name_impl(&dword_1B7954000, v14, v15, v45, "Image.Prefetch", format, v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1B8CACB70](v38, -1, -1);
      MEMORY[0x1B8CACB70](v37, -1, -1);

      v24 = *(v36 + 8);
      v24(v35, v53);
    }

    else
    {
      v22 = *(v0 + 472);
      v21 = *(v0 + 480);
      v23 = *(v0 + 464);

      v24 = *(v22 + 8);
      v24(v21, v23);
    }

    *(v0 + 632) = v24;
    *(v0 + 640) = sub_1B7A9A750();
    v31 = sub_1B7A9A710();
    v33 = v46;
    v34 = sub_1B79A5134;
  }

  return MEMORY[0x1EEE6DFA0](v34, v31, v33);
}

uint64_t sub_1B79A5B8C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1B79A5B98()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v6 = *(type metadata accessor for _PrefetchMediaArtworkViewModifier(0, (v1 + 2)) - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  v1[6] = v8;
  *v8 = v1;
  v8[1] = sub_1B79A5C9C;

  return sub_1B79A288C(v0 + v7, v2, v3, v4, v5);
}

uint64_t sub_1B79A5C9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B79A5D90(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v13 = v2[2];
  v7 = v2[6];
  v8 = v2[7];
  v10 = v2[8];
  v9 = v2[9];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B798D338;

  return sub_1B79A2E98(a1, a2, v7, v8, v10, v9, v13, v6);
}

uint64_t sub_1B79A5E84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaArtwork.Sized(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79A5EE8(uint64_t a1)
{
  v2 = type metadata accessor for MediaArtwork.Sized(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B79A5F44()
{
  v2 = v0[5];
  v19 = v0[4];
  v3 = v0[6];
  v4 = v0[7];
  v1[2] = v19;
  v1[3] = v2;
  v1[4] = v3;
  v1[5] = v4;
  v5 = *(type metadata accessor for _PrefetchMediaArtworkViewModifier(0, (v1 + 2)) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = v0[3];
  v17 = v0[2];
  v9 = (v0 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v0 + v8);
  v13 = *(v0 + v8 + 8);
  v14 = swift_task_alloc();
  v1[6] = v14;
  *v14 = v1;
  v14[1] = sub_1B79A68E8;

  return sub_1B79A3ED8(v17, v16, v0 + v6, v10, v11, v12, v13, v19);
}

uint64_t sub_1B79A60B4(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1B79A619C;

  return v4();
}

uint64_t sub_1B79A619C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B79A6294()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B798D338;

  return sub_1B79A60B4(v2);
}

unint64_t sub_1B79A6340(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B79A640C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1B79948D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1B79A640C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B79A6518(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1B7A9ACC0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1B79A6518(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B79A6564(a1, a2);
  sub_1B79A6694(&unk_1F2F94F50);
  return v3;
}

void *sub_1B79A6564(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B79A6780(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1B7A9ACC0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1B7A9A520();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B79A6780(v10, 0);
        result = sub_1B7A9AC30();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B79A6694(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B79A67F4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1B79A6780(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B68, &qword_1B7A9DDD0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1B79A67F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B68, &qword_1B7A9DDD0);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

void *Jet.init(startUpProcedure:transaction:makeObjects:working:failed:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = *a1;
  *(a9 + 72) = swift_getKeyPath();
  *(a9 + 80) = 0;
  result = swift_allocObject();
  result[2] = v18;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  *a9 = sub_1B79A6F40;
  *(a9 + 8) = result;
  *(a9 + 16) = 0;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11;
  return result;
}

void *sub_1B79A69B0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _JetTakeOff(0);
  v8 = swift_allocObject();
  v8[6] = 0;
  sub_1B79ADE14(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46BE8, &qword_1B7A9DF88);
  sub_1B7A96EE0();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v8[6] = 0;

  return v8;
}

uint64_t _JetViewDefaultFailed.init(error:retry:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t Jet.init(startUpWith:working:failed:content:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *(a8 + 72) = swift_getKeyPath();
  *(a8 + 80) = 0;
  type metadata accessor for _JetTakeOff(0);
  sub_1B79AECBC(&qword_1EBA46B70, type metadata accessor for _JetTakeOff, &unk_1B7A9E6EC);
  result = sub_1B7A97490();
  *a8 = result;
  *(a8 + 8) = v16;
  *(a8 + 16) = 0x80;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 56) = a6;
  *(a8 + 64) = a7;
  return result;
}

uint64_t sub_1B79A6B58()
{
  if (*(v0 + 16) < 0)
  {
  }

  else
  {
    type metadata accessor for _JetTakeOff(0);
    sub_1B79AECBC(&qword_1EBA46B70, type metadata accessor for _JetTakeOff, &unk_1B7A9E6EC);

    return sub_1B7A97120();
  }
}

uint64_t sub_1B79A6C14()
{
  if (*(v0 + 16) < 0)
  {
    type metadata accessor for _JetTakeOff(0);
    sub_1B79AECBC(&qword_1EBA46B70, type metadata accessor for _JetTakeOff, &unk_1B7A9E6EC);

    return sub_1B7A974A0();
  }

  else
  {
    type metadata accessor for _JetTakeOff(0);
    sub_1B79AECBC(&qword_1EBA46B70, type metadata accessor for _JetTakeOff, &unk_1B7A9E6EC);

    return sub_1B7A97130();
  }
}

uint64_t sub_1B79A6D18@<X0>(void *a1@<X8>)
{
  v3 = sub_1B7A97880();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 80) == 1)
  {
    *a1 = *(v1 + 72);
  }

  else
  {
    v8 = *(v1 + 72);

    sub_1B7A9AA10();
    v9 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release(v8);
    return (*(v4 + 8))(v6, v3);
  }
}

void *sub_1B79A6E90@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B79AF264(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B79A6EE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1B79AF264(a1, a2, a3);

  return sub_1B7A978A0();
}

uint64_t type metadata accessor for _JetTakeOff(uint64_t a1)
{
  result = qword_1EDC0FC40;
  if (!qword_1EDC0FC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Jet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v4 = sub_1B7A9A7E0();
  v92 = *(v4 - 8);
  v93 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v91 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v97 = sub_1B7A99300();
  v83 = a1;
  v96 = *(a1 + 16);
  v98 = *(a1 + 40);
  *&v141 = v96;
  *(&v141 + 1) = MEMORY[0x1E69E5FE0];
  v142.i64[0] = v98;
  v142.i64[1] = MEMORY[0x1E69E5FE8];
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B78, &qword_1B7A9DF28);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B80, &unk_1B7A9DF30);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B88, &qword_1B7AA9E50);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B90, &qword_1B7A9DF40);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B98, &qword_1B7A9DF48);
  sub_1B7A97590();
  type metadata accessor for AppMetricsViewModifier(255);
  sub_1B7A97590();
  *&v95 = sub_1B7A97B40();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E6980A18];
  v8 = sub_1B797EC34(&qword_1EBA46BA0, &qword_1EBA46B78, &qword_1B7A9DF28, MEMORY[0x1E6980A18]);
  v139 = WitnessTable;
  v140 = v8;
  v9 = swift_getWitnessTable();
  v10 = sub_1B797EC34(&qword_1EBA46BA8, &qword_1EBA46B80, &unk_1B7A9DF30, &unk_1B7AA7138);
  v137 = v9;
  v138 = v10;
  v11 = swift_getWitnessTable();
  v12 = MEMORY[0x1E6980B30];
  v13 = sub_1B797EC34(&qword_1EBA46BB0, &qword_1EBA46B88, &qword_1B7AA9E50, MEMORY[0x1E6980B30]);
  v135 = v11;
  v136 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_1B797EC34(&qword_1EBA46BB8, &qword_1EBA46B90, &qword_1B7A9DF40, v7);
  v133 = v14;
  v134 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_1B797EC34(&qword_1EBA46BC0, &qword_1EBA46B98, &qword_1B7A9DF48, v12);
  v131 = v16;
  v132 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_1B79AECBC(&qword_1EBA46BC8, type metadata accessor for AppMetricsViewModifier, &unk_1B7AA2F08);
  v129 = v18;
  v130 = v19;
  v127 = swift_getWitnessTable();
  v128 = v18;
  v20 = v95;
  v21 = swift_getWitnessTable();
  v22 = v83;
  v23 = *(v83 + 48);
  v24 = *(v83 + 56);
  v25 = v96;
  *&v141 = v97;
  *(&v141 + 1) = v20;
  *&v143 = v21;
  *(&v143 + 1) = v23;
  v26 = v23;
  *&v144 = v24;
  v27.i64[0] = v96;
  v82 = v27;
  v101 = *(v83 + 24);
  v142 = v101;
  v28 = type metadata accessor for _ResultView(255, &v141);
  v84 = v28;
  v100 = swift_getWitnessTable();
  *&v141 = v28;
  *(&v141 + 1) = v100;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v87 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v99 = v79 - v30;
  v88 = v31;
  v32 = sub_1B7A97590();
  v89 = *(v32 - 8);
  v90 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v85 = v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v86 = v79 - v35;
  v36 = v2[3];
  v37 = v2[1];
  v143 = v2[2];
  v144 = v36;
  v38 = v2[3];
  v145 = v2[4];
  v39 = v2[1];
  v141 = *v2;
  v142 = v39;
  v116 = v143;
  v117 = v38;
  v118 = v2[4];
  v146 = *(v2 + 80);
  v119 = *(v2 + 80);
  v114 = v141;
  v115 = v37;
  sub_1B79A6C14();
  swift_getKeyPath();
  v79[1] = sub_1B79AECBC(&qword_1EBA46B70, type metadata accessor for _JetTakeOff, &unk_1B7A9E6EC);
  sub_1B7A974B0();

  v111 = v104;
  v112 = v105;
  v113 = v106;
  v40 = swift_allocObject();
  *&v41 = vdupq_laneq_s64(v101, 1).u64[0];
  v42 = v98;
  *(&v41 + 1) = v98;
  *(v40 + 16) = vzip1q_s64(v82, v101);
  *(v40 + 32) = v41;
  *(v40 + 48) = v26;
  *(v40 + 56) = v24;
  v43 = v144;
  *(v40 + 96) = v143;
  *(v40 + 112) = v43;
  *(v40 + 128) = v145;
  *(v40 + 144) = v146;
  v44 = v142;
  *(v40 + 64) = v141;
  *(v40 + 80) = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = v25;
  *(v45 + 24) = v101;
  *(v45 + 40) = v42;
  *(v45 + 48) = v26;
  *(v45 + 56) = v24;
  v46 = v144;
  *(v45 + 96) = v143;
  *(v45 + 112) = v46;
  *(v45 + 128) = v145;
  *(v45 + 144) = v146;
  v47 = v142;
  *(v45 + 64) = v141;
  *(v45 + 80) = v47;
  v48 = swift_allocObject();
  *(v48 + 16) = v25;
  *(v48 + 24) = v101;
  *(v48 + 40) = v42;
  *(v48 + 48) = v26;
  v81 = v26;
  *(v48 + 56) = v24;
  v49 = v144;
  *(v48 + 96) = v143;
  *(v48 + 112) = v49;
  *(v48 + 128) = v145;
  *(v48 + 144) = v146;
  v50 = v142;
  *(v48 + 64) = v141;
  *(v48 + 80) = v50;
  v51 = swift_checkMetadataState();
  *&v78[24] = v21;
  *&v78[8] = v101;
  *v78 = v51;
  sub_1B7A55184(&v111, sub_1B79A7E24, v40, sub_1B79A804C, v45, sub_1B79AA790, v48, v97, &v120, *v78, *&v78[16], v26, v24);
  v82.i64[0] = v121;
  *v107 = *v123;
  *&v107[7] = *&v123[7];
  LOBYTE(v42) = v122;
  v104 = v120;
  v105 = v121;
  v106 = v122;
  v97 = v124;
  v108 = v124;
  v95 = v125;
  v109 = v125;
  v80 = "[Error] Interval already ended";
  v110 = v126;
  sub_1B7A9A760();
  v52 = *(*(v22 - 8) + 16);
  v52(&v114, &v141, v22);
  v52(&v114, &v141, v22);
  v52(&v114, &v141, v22);
  v52(&v114, &v141, v22);
  v53 = sub_1B7A9A750();
  v54 = swift_allocObject();
  v55 = MEMORY[0x1E69E85E0];
  *(v54 + 16) = v53;
  *(v54 + 24) = v55;
  *(v54 + 32) = v96;
  *(v54 + 40) = v101;
  v56 = v81;
  *(v54 + 56) = v98;
  *(v54 + 64) = v56;
  *(v54 + 72) = v24;
  v57 = v144;
  *(v54 + 112) = v143;
  *(v54 + 128) = v57;
  *(v54 + 144) = v145;
  *(v54 + 160) = v146;
  v58 = v142;
  *(v54 + 80) = v141;
  *(v54 + 96) = v58;
  v59 = swift_checkMetadataState();
  v60 = v91;
  v61 = v100;
  sub_1B7974C6C();
  sub_1B7974CBC(0, v60, 0xD000000000000020, v80 | 0x8000000000000000, 349, &unk_1B7A9DF80, v54, v99, v59, v61);
  (*(v92 + 8))(v60, v93);

  sub_1B79AAC54(v82.i64[0], v42);

  v116 = v143;
  v117 = v144;
  v118 = v145;
  v119 = v146;
  v114 = v141;
  v115 = v142;
  sub_1B79A6D18(&v120);
  if (!v120)
  {
    if (v142.i8[0] < 0)
    {
      goto LABEL_3;
    }

    type metadata accessor for _JetTakeOff(0);
    v77 = *(sub_1B7A97120() + 48);

    if (!v77)
    {
      v62 = 1;
      goto LABEL_4;
    }
  }

LABEL_3:
  v62 = 0;
LABEL_4:
  *&v114 = v59;
  *(&v114 + 1) = v100;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = v85;
  v65 = v62;
  v66 = v88;
  v67 = v99;
  sub_1B79EB8EC(v65, v88, OpaqueTypeConformance2);
  v68 = (*(v87 + 8))(v67, v66);
  v71 = sub_1B79AAC78(v68, v69, v70);
  v102 = OpaqueTypeConformance2;
  v103 = v71;
  v72 = v90;
  v73 = swift_getWitnessTable();
  v74 = v86;
  sub_1B7957EE0(v64, v72, v73);
  v75 = *(v89 + 8);
  v75(v64, v72);
  sub_1B7957EE0(v74, v72, v73);
  return (v75)(v74, v72);
}

uint64_t sub_1B79A7B4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  return v1;
}

uint64_t sub_1B79A7BC4@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1B79A7C4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1B79AF24C(v2, v3);
  return sub_1B7A96F30();
}

uint64_t sub_1B79A7CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  (*(v15 + 24))(v12);
  sub_1B7957EE0(v10, a3, a6);
  v16 = *(v8 + 8);
  v16(v10, a3);
  sub_1B7957EE0(v14, a3, a6);
  return (v16)(v14, a3);
}

uint64_t sub_1B79A7E10(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
    return sub_1B79599CC(a1, a2);
  }
}