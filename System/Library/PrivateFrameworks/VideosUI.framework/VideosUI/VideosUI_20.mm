uint64_t sub_1E379AB34()
{
  OUTLINED_FUNCTION_28_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29950, &qword_1E429C410);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24[-1] - v4;
  *v5 = sub_1E4201D54();
  *(v5 + 1) = 0;
  v5[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29958, &qword_1E429C418);
  v6 = sub_1E379AC88();
  v7 = *(v1 + 208);
  if (v7 && ((*(*v7 + 176))(v24, v6), (v25 & 1) == 0))
  {
    v10.n128_u64[0] = v24[2];
    v11.n128_u64[0] = v24[3];
    v8.n128_u64[0] = v24[0];
    v9.n128_u64[0] = v24[1];
    v12 = j_nullsub_1(v8, v9, v10, v11);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_5_8();
  }

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = sub_1E4202734();
  sub_1E32B20A0(v5, v0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29960, &unk_1E429C420);
  v22 = v0 + *(result + 36);
  *v22 = v20;
  *(v22 + 8) = v16;
  *(v22 + 16) = v17;
  *(v22 + 24) = v18;
  *(v22 + 32) = v19;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_1E379AC88()
{
  OUTLINED_FUNCTION_28_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210, &qword_1E4299980);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  sub_1E379ADE8(&v15 - v8);
  v10 = *(v1 + 224);
  if (v10)
  {
    type metadata accessor for AttributionTextViewLayout();
    v11 = swift_retain_n();
    v12 = sub_1E3C82468(v11);
    v13 = sub_1E379AF24(v10, v12);
  }

  else
  {
    v13 = 0;
  }

  sub_1E379D7E4(v9, v6, &qword_1ECF29210, &qword_1E4299980);
  sub_1E379D7E4(v6, v0, &qword_1ECF29210, &qword_1E4299980);
  *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29968, &unk_1E429C430) + 48)) = v13;

  sub_1E325F6F0(v9, &qword_1ECF29210, &qword_1E4299980);

  return sub_1E325F6F0(v6, &qword_1ECF29210, &qword_1E4299980);
}

uint64_t sub_1E379ADE8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  if (*(v1 + 216))
  {

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    (*(v5 + 32))(a1, v8, v3);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }
}

void *sub_1E379AF24(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionView.AttributionElement(0);
  OUTLINED_FUNCTION_0_10();
  v40 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v39 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298A8, &unk_1E429C130);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  v41 = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(&v37 - v17, 1, 1, v4);
  v19 = *(a2 + 104);
  type metadata accessor for ImageLayout();
  OUTLINED_FUNCTION_10_23();

  v20 = sub_1E3BD61D8();

  v21 = *sub_1E3E60700();
  v22 = *(*v20 + 680);
  v23 = v21;
  v24 = v22(v21);
  v25 = (*(**(a2 + 120) + 304))(v24);
  (*(*v20 + 312))(v25, v26 & 1);
  OUTLINED_FUNCTION_8();
  v28 = (*(v27 + 200))();
  (*(*v20 + 208))(v28, v29 & 1);

  if ((*(*a1 + 464))(v30))
  {
    OUTLINED_FUNCTION_10_23();

    sub_1E379BC6C(a1, v19, v18, &v41, v20);
  }

  sub_1E379CDA0(v18, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v4) == 1)
  {

    sub_1E325F6F0(v15, &qword_1ECF298A8, &unk_1E429C130);
    v31 = v41;
  }

  else
  {
    v32 = v38;
    sub_1E379CE10(v15, v38);
    v33 = v39;
    sub_1E379CE74(v32, v39);
    v31 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1E379CA58(0, v31[2] + 1, 1, v31);
    }

    v35 = v31[2];
    v34 = v31[3];
    if (v35 >= v34 >> 1)
    {
      v31 = sub_1E379CA58((v34 > 1), v35 + 1, 1, v31);
    }

    sub_1E379CEE4();
    v31[2] = v35 + 1;
    sub_1E379CE10(v33, v31 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v35);
  }

  sub_1E325F6F0(v18, &qword_1ECF298A8, &unk_1E429C130);
  return v31;
}

uint64_t sub_1E379B3E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v72 = a2;
  v70 = sub_1E4201534();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v65 = *(a1 + 24);
  v6 = sub_1E42039C4();
  OUTLINED_FUNCTION_0_10();
  v69 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v10 = v9;
  OUTLINED_FUNCTION_3_2();
  WitnessTable = swift_getWitnessTable();
  *&v80 = v6;
  *(&v80 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v67 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v60 = v15;
  *&v80 = v6;
  *(&v80 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v80 = OpaqueTypeMetadata2;
  *(&v80 + 1) = OpaqueTypeConformance2;
  v17 = OpaqueTypeConformance2;
  v58 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v63 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  *&v80 = OpaqueTypeMetadata2;
  *(&v80 + 1) = v17;
  v59 = swift_getOpaqueTypeConformance2();
  *&v80 = v18;
  *(&v80 + 1) = v59;
  v62 = &unk_1E441A3F8;
  v61 = swift_getOpaqueTypeMetadata2();
  v66 = *(v61 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v56 = v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF298B0, &unk_1E42AC0E0);
  v25 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_6();
  v57 = v29 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v64 = &v55 - v32;
  sub_1E4201B84();
  v73 = v5;
  v74 = v65;
  v33 = v68;
  v75 = v68;
  v34 = v10;
  sub_1E42039B4();
  v35 = *v33;
  v36 = v60;
  sub_1E3E361E8();
  (*(v69 + 8))(v34, v6);
  *&v80 = v35;
  *(&v80 + 1) = v35;
  v81 = v35;
  v82 = v35;
  v83 = 0;
  sub_1E3A6929C(*(v33 + 8), 0, 0, 1, &v80, OpaqueTypeMetadata2, v58);
  (*(v67 + 8))(v36, OpaqueTypeMetadata2);
  v37 = v33[2];
  v38 = v56;
  v39 = v59;
  v40 = sub_1E39B87A4(v37, v18, v59);
  (*(v63 + 8))(v22, v18, v40);
  v41 = *(v70 + 20);
  v42 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  v44 = v71;
  (*(v43 + 104))(&v71[v41], v42);
  *v44 = v35;
  v44[1] = v35;
  v78 = v18;
  v79 = v39;
  v45 = swift_getOpaqueTypeConformance2();
  sub_1E379D1EC(&qword_1EE2893F0, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  v46 = v57;
  v47 = v61;
  sub_1E4203574();
  sub_1E379CEE4();
  (*(v66 + 8))(v38, v47);
  OUTLINED_FUNCTION_5_36();
  v50 = sub_1E32752B0(v48, &qword_1ECF298B0, &unk_1E42AC0E0, v49);
  v76 = v45;
  v77 = v50;
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  v51 = *(v27 + 16);
  v52 = v64;
  v51(v64, v46, v25);
  v53 = *(v27 + 8);
  v53(v46, v25);
  v51(v72, v52, v25);
  return (v53)(v52, v25);
}

uint64_t sub_1E379BA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_4_6();
  v8 = (v6 - v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  (*(v13 + 24))(v10);
  v14 = *(v5 + 16);
  v14(v12, v8, a2);
  v15 = *(v5 + 8);
  v15(v8, a2);
  v14(a3, v12, a2);
  return v15(v12, a2);
}

uint64_t sub_1E379BC10()
{
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  v0 = OUTLINED_FUNCTION_32_0();

  return v1(v0);
}

__objc2_class **sub_1E379BC6C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v39 = a5;
  v44 = a4;
  v45 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298A8, &unk_1E429C130);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for AttributionView.AttributionElement(0);
  v38 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v36 - v16;
  result = sub_1E32AE9B0(a1);
  v18 = result;
  v19 = 0;
  v46 = a1 & 0xFFFFFFFFFFFFFF8;
  v47 = a1 & 0xC000000000000001;
  v40 = a1;
  v41 = result;
  while (1)
  {
    if (v18 == v19)
    {
    }

    if (v47)
    {
      result = MEMORY[0x1E6911E60](v19, a1);
      v20 = result;
    }

    else
    {
      if (v19 >= *(v46 + 16))
      {
        goto LABEL_31;
      }

      v20 = *(a1 + 8 * v19 + 32);
    }

    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (*v20 == _TtC8VideosUI13TextViewModel)
    {
      v21 = v12;
      v50 = 8;
      v22 = off_1EE2836C0[0];

      (v22)(&v48);
      if (v49)
      {
        if (swift_dynamicCast() & 1) != 0 && (v50)
        {
          v23 = *sub_1E3E60700();
          v37 = *(*v45 + 680);
          v24 = v23;
          v37(v23);
          v12 = v21;
          a1 = v40;
        }
      }

      else
      {
        sub_1E325F6F0(&v48, &unk_1ECF296E0, &unk_1E4298030);
      }

      sub_1E379CDA0(a3, v12);
      if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
      {
        sub_1E325F6F0(v12, &qword_1ECF298A8, &unk_1E429C130);
      }

      else
      {
        v25 = v42;
        sub_1E379CE10(v12, v42);
        sub_1E379CE74(v25, v43);
        v26 = v44;
        v27 = *v44;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v26 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27 = sub_1E379CA58(0, v27[2] + 1, 1, v27);
          *v44 = v27;
        }

        v30 = v27[2];
        v29 = v27[3];
        if (v30 >= v29 >> 1)
        {
          v35 = sub_1E379CA58((v29 > 1), v30 + 1, 1, v27);
          *v44 = v35;
        }

        sub_1E379CEE4();
        v31 = v43;
        v32 = *v44;
        *(v32 + 16) = v30 + 1;
        sub_1E379CE10(v31, v32 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v30);
        a1 = v40;
        v12 = v21;
      }

      sub_1E41FE614();
      *&v9[v13[5]] = v20;
      *&v9[v13[6]] = v45;
      *&v9[v13[7]] = 0;
      *&v9[v13[8]] = 0;
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);

      sub_1E379D774(v9, a3);
      v18 = v41;
    }

    type metadata accessor for ImageViewModel();
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      v34 = v33;
      if (!__swift_getEnumTagSinglePayload(a3, 1, v13))
      {
        *(a3 + v13[7]) = v34;
      }

      if (!__swift_getEnumTagSinglePayload(a3, 1, v13))
      {
        *(a3 + v13[8]) = v39;
      }
    }

    ++v19;
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1E379C194()
{
  OUTLINED_FUNCTION_28_7();
  *v0 = sub_1E4201B84();
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B8, &qword_1E429C140);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298C0, &qword_1E429C148);
  sub_1E41FE624();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298C8, &qword_1E429C150);
  sub_1E32752B0(&qword_1ECF298D0, &qword_1ECF298C0, &qword_1E429C148, MEMORY[0x1E69E6338]);
  sub_1E379CF38();
  sub_1E379D1EC(&qword_1ECF29910, type metadata accessor for AttributionView.AttributionElement, &unk_1E429C218);
  return sub_1E4203B44();
}

double sub_1E379C2EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for AttributionView.AttributionElement(0);
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298E8, &qword_1E429C160);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298E0, &qword_1E429C158);
  OUTLINED_FUNCTION_0_10();
  v27 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  *v8 = sub_1E4201B84();
  *(v8 + 1) = 0x4008000000000000;
  v8[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29930, &unk_1E429C3E0);
  sub_1E379C648(a1, &v8[*(v13 + 44)]);
  v14 = sub_1E4202734();
  v15 = &v8[*(v5 + 36)];
  *v15 = v14;
  *(v15 + 8) = xmmword_1E429C0F0;
  *(v15 + 24) = xmmword_1E429C0F0;
  v15[40] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298F0, &qword_1E429C168);
  v17 = sub_1E379D090();
  v29 = v5;
  v30 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E3E359E8();
  sub_1E325F6F0(v8, &qword_1ECF298E8, &qword_1E429C160);
  sub_1E379CE74(a1, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v20 = swift_allocObject();
  sub_1E379CE10(&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v29 = v5;
  v30 = v16;
  v31 = v17;
  v32 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v21 = v28;
  v22 = v25;
  sub_1E4202E74();

  (*(v27 + 8))(v12, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298C8, &qword_1E429C150);
  result = -4.0;
  *(v21 + *(v23 + 36)) = xmmword_1E429C100;
  return result;
}

uint64_t sub_1E379C648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v40 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v39 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938, &unk_1E429C3F0);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v41 = v16;
  v42 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - v21;
  v23 = type metadata accessor for AttributionView.AttributionElement(0);
  OUTLINED_FUNCTION_18();
  v24 = v22;
  sub_1E3F23370();
  v25 = *(a1 + *(v23 + 28));
  if (v25)
  {

    sub_1E3EB9BB4(v44);
    v26 = *(a1 + *(v23 + 32));
    v27 = OUTLINED_FUNCTION_18();
    v28 = v39;
    sub_1E37E8BE8(v25, v44, v26, v27 & 1, 0, 0, v39);

    sub_1E375C31C(v44);
    (*(v40 + 32))(v14, v28, v3);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v29, 1, v3);
  v30 = v41;
  v31 = v42;
  v32 = *(v41 + 16);
  v32(v19, v24, v42);
  sub_1E379D7E4(v14, v11, &qword_1ECF29938, &unk_1E429C3F0);
  v33 = v11;
  v34 = v43;
  v32(v43, v19, v31);
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29940, &qword_1E429C400) + 48);
  sub_1E379D7E4(v33, v35, &qword_1ECF29938, &unk_1E429C3F0);
  sub_1E325F6F0(v14, &qword_1ECF29938, &unk_1E429C3F0);
  v36 = *(v30 + 8);
  v36(v24, v31);
  sub_1E325F6F0(v33, &qword_1ECF29938, &unk_1E429C3F0);
  return (v36)(v19, v31);
}

void sub_1E379C9B0()
{
  OUTLINED_FUNCTION_28_7();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298E8, &qword_1E429C160);
  v1 = sub_1E379D090();
  v2 = j__OUTLINED_FUNCTION_18();
  v3 = j__OUTLINED_FUNCTION_18();
  v4 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(0, v2 & 1, 1, v3 & 1, v4 & 1, v0, v1);
}

void *sub_1E379CA58(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1E379CB44(v8, v7);
  v10 = *(type metadata accessor for AttributionView.AttributionElement(0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E379CC40(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_1E379CB44(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29948, &qword_1E429C408);
  v4 = *(type metadata accessor for AttributionView.AttributionElement(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E379CC40(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for AttributionView.AttributionElement(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for AttributionView.AttributionElement(0);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t type metadata accessor for AttributionView.AttributionElement(uint64_t a1)
{
  result = qword_1EE2A4650;
  if (!qword_1EE2A4650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E379CDA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298A8, &unk_1E429C130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E379CE10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionView.AttributionElement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E379CE74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionView.AttributionElement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E379CEE4()
{
  v1 = OUTLINED_FUNCTION_9_5();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1E379CF38()
{
  result = qword_1ECF298D8;
  if (!qword_1ECF298D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF298C8, &qword_1E429C150);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF298E0, &qword_1E429C158);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF298E8, &qword_1E429C160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF298F0, &qword_1E429C168);
    sub_1E379D090();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF298D8);
  }

  return result;
}

unint64_t sub_1E379D090()
{
  result = qword_1ECF298F8;
  if (!qword_1ECF298F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF298E8, &qword_1E429C160);
    sub_1E32752B0(&qword_1ECF29900, &qword_1ECF29908, &qword_1E429C170, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF298F8);
  }

  return result;
}

uint64_t sub_1E379D1EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_8VideosUI18CellBuilderContextVSg(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E379D278(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 297))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E379D2B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 297) = 1;
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

    *(result + 297) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E379D358(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1E379D3A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1E379D3E8(uint64_t result, int a2, int a3)
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

void sub_1E379D480(uint64_t a1)
{
  sub_1E41FE624();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TextViewModel();
    if (v2 <= 0x3F)
    {
      type metadata accessor for TextLayout();
      if (v3 <= 0x3F)
      {
        sub_1E379D584(319, qword_1EE282B40, type metadata accessor for ImageViewModel);
        if (v4 <= 0x3F)
        {
          sub_1E379D584(319, qword_1EE286130, type metadata accessor for ImageLayout);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E379D584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4207104();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E379D5D8()
{
  result = qword_1ECF29918;
  if (!qword_1ECF29918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF298A0, &qword_1E429C128);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29890, &qword_1E429C120);
    sub_1E32752B0(&qword_1ECF29898, &qword_1ECF29890, &qword_1E429C120, &unk_1E429C1C8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29918);
  }

  return result;
}

uint64_t sub_1E379D6D4()
{
  v0 = type metadata accessor for AttributionView.AttributionElement(0);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_8();
  return (*(v1 + 800))(2, 0, 0, 0);
}

uint64_t sub_1E379D774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298A8, &unk_1E429C130);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E379D7E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  return a2;
}

id VUIUTSConfigurationProxyNotificationName.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VUIUTSConfigurationProxyNotificationName.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIUTSConfigurationProxyNotificationName();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VUIUTSConfigurationProxyNotificationName.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIUTSConfigurationProxyNotificationName();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E379D97C(void *a1, uint64_t a2)
{
  type metadata accessor for Route(0);
  OUTLINED_FUNCTION_1_57();
  sub_1E379DEC8(v4, v5, &unk_1E42DFC80);
  v6 = a1;

  v7 = sub_1E42010C4();
  (*((*MEMORY[0x1E69E7D40] & *v6) + 0x190))(a2);

  return v7;
}

id sub_1E379DA74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  type metadata accessor for Route(0);
  OUTLINED_FUNCTION_1_57();
  sub_1E379DEC8(v7, v8, &unk_1E42DFC80);

  v20 = a1;
  sub_1E42010D4();
  swift_getKeyPath();
  sub_1E42010E4();

  (*(*a2 + 272))(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8, &qword_1E42B22C0);
  sub_1E4203A84();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299B0, &qword_1E429C610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299B8, &qword_1E429C618);
  sub_1E32752B0(&qword_1EE288968, &qword_1ECF299B0, &qword_1E429C610, MEMORY[0x1E697FDF8]);
  sub_1E32752B0(qword_1EE23BF20, &qword_1ECF299B8, &qword_1E429C618, &unk_1E42E5370);
  sub_1E4203274();

  v10 = a3;

  sub_1E406C2A0(v10, a2, a4, v23);
  v11 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299A8, &qword_1E429C608) + 36));
  v12 = v23[1];
  *v11 = v23[0];
  v11[1] = v12;
  v11[2] = v23[2];
  OUTLINED_FUNCTION_10_9();
  v13 = swift_allocObject();
  *(v13 + 2) = v20;
  *(v13 + 3) = a2;
  *(v13 + 4) = v10;
  *(v13 + 5) = a4;
  v14 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299A0, &qword_1E429C600) + 36));
  *v14 = sub_1E379E9FC;
  v14[1] = v13;
  v14[2] = 0;
  v14[3] = 0;
  OUTLINED_FUNCTION_10_9();
  v15 = swift_allocObject();
  v15[2] = v20;
  v15[3] = a2;
  v15[4] = v10;
  v15[5] = a4;
  v16 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29998, &qword_1E429C5F8) + 36));
  *v16 = 0;
  v16[1] = 0;
  v16[2] = sub_1E379EA58;
  v16[3] = v15;
  swift_retain_n();
  v22 = v10;
  swift_retain_n();

  return v22;
}

uint64_t sub_1E379DE14@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 488))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E379DEC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E379DF10@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for Router(0);
  OUTLINED_FUNCTION_0_24();
  sub_1E379DEC8(v5, v6, &unk_1E42EB398);
  v7 = sub_1E4201754();
  v9 = v8;
  type metadata accessor for DocumentInteractor(0);
  sub_1E379DEC8(qword_1EE2788C0, type metadata accessor for DocumentInteractor, &unk_1E42D32D8);
  result = sub_1E42010C4();
  *a3 = result;
  *(a3 + 8) = v11;
  *(a3 + 16) = a2;
  *(a3 + 24) = v7;
  *(a3 + 32) = v9;
  return result;
}

uint64_t sub_1E379DFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29970, &qword_1E429C480);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29978, &qword_1E429C488);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32[-v11];
  v33 = *v2;
  v13 = *(v2 + 3);
  OUTLINED_FUNCTION_89();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_2_24(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29980, &qword_1E429C490);
  OUTLINED_FUNCTION_2();
  (*(v15 + 16))(v8, a1);
  v16 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29988, &qword_1E429C498) + 36)];
  *v16 = sub_1E379E320;
  v16[1] = v14;
  v16[2] = 0;
  v16[3] = 0;
  OUTLINED_FUNCTION_89();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_2_24(v17);
  v18 = &v8[*(v6 + 44)];
  *v18 = 0;
  v18[1] = 0;
  v18[2] = sub_1E379E3A0;
  v18[3] = v19;
  if (v13)
  {
    v20 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x128);
    v21 = v13;
    sub_1E379E404(&v33, v32);
    v22 = v21;
    v23 = sub_1E379E404(&v33, v32);
    v24 = v20(v23);

    OUTLINED_FUNCTION_89();
    v25 = swift_allocObject();
    OUTLINED_FUNCTION_2_24(v25);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1E379E4B0;
    *(v26 + 24) = v25;
    sub_1E379E528(v8, v12, &qword_1ECF29970, &qword_1E429C480);
    *&v12[*(v9 + 52)] = v24;
    v27 = &v12[*(v9 + 56)];
    *v27 = sub_1E379E500;
    v27[1] = v26;
    sub_1E379E528(v12, a2, &qword_1ECF29978, &qword_1E429C488);
    v28 = v22;
    return sub_1E379E404(&v33, v32);
  }

  else
  {
    type metadata accessor for Router(0);
    OUTLINED_FUNCTION_0_24();
    sub_1E379DEC8(v30, v31, &unk_1E42EB398);
    swift_retain_n();
    result = sub_1E4201744();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E379E320()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = j__OUTLINED_FUNCTION_18();
  v4 = j__OUTLINED_FUNCTION_18();
  return (*(*v1 + 792))(v2, v3 & 1, v4 & 1);
}

uint64_t sub_1E379E3A0()
{
  v1 = *(v0 + 24);
  v2 = j__OUTLINED_FUNCTION_18();
  v3 = j__OUTLINED_FUNCTION_18();
  return (*(*v1 + 792))(0, v2 & 1, v3 & 1);
}

uint64_t sub_1E379E404(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29990, &qword_1E429C4A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_1()
{

  OUTLINED_FUNCTION_89();

  return swift_deallocObject();
}

uint64_t sub_1E379E528(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1E379E5BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1E379E5FC(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_5_25(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_5_25(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E379E644(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1E379E684(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_5_25(result, a2);
    }

    *(result + 40) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_5_25(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E379E704(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E379E788()
{
  result = qword_1EE2898E8;
  if (!qword_1EE2898E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF299A8, &qword_1E429C608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF299B0, &qword_1E429C610);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF299B8, &qword_1E429C618);
    sub_1E32752B0(&qword_1EE288968, &qword_1ECF299B0, &qword_1E429C610, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(qword_1EE23BF20, &qword_1ECF299B8, &qword_1E429C618, &unk_1E42E5370);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E379E8E4(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2898E8);
  }

  return result;
}

unint64_t sub_1E379E8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2575C8[0];
  if (!qword_1EE2575C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2575C8);
  }

  return result;
}

void sub_1E379E938(void *a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  OUTLINED_FUNCTION_10_9();
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v6;
  v7[5] = v5;

  v8 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D0, &unk_1E429C650);
  swift_getOpaqueTypeConformance2();
  nullsub_1();
  *a1 = v9;
  a1[1] = v10;
}

uint64_t objectdestroy_19Tm()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t type metadata accessor for PlaybackMediaShowcasingMetadataView(uint64_t a1)
{
  result = qword_1EE290F30;
  if (!qword_1EE290F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E379EBAC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8, &qword_1E429C690);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1E3743538(v2, &v17 - v9, &qword_1ECF299D8, &qword_1E429C690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4200B44();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1E4206804();
    v14 = sub_1E42026D4();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1E3270FC8(0x686353726F6C6F43, 0xEB00000000656D65, &v18);
      _os_log_impl(&dword_1E323F000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E69143B0](v16, -1, -1);
      MEMORY[0x1E69143B0](v15, -1, -1);
    }

    sub_1E4201AA4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E379EE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v9 = OUTLINED_FUNCTION_74();
  v10(v9);
  return a6(v6);
}

uint64_t sub_1E379EF14()
{
  type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
  OUTLINED_FUNCTION_64_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E42038F4();
  if (v1)
  {
    return sub_1E4201D44();
  }

  else
  {
    return sub_1E4201D54();
  }
}

uint64_t sub_1E379EF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>)
{
  OUTLINED_FUNCTION_184(a1, MEMORY[0x1E69E7DE0], a3);
  *(a2 + 16) = v19;
  *(a2 + 24) = v20;
  v4 = sub_1E3A2532C();
  OUTLINED_FUNCTION_184(v4, &unk_1F5D6AC00, v5);
  *(a2 + 32) = v19;
  *(a2 + 40) = v20;
  v6 = type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
  v7 = v6[8];
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8, &qword_1E429C690);
  swift_storeEnumTagMultiPayload();
  v8 = v6[9];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v9 = objc_opt_self();
  if ([v9 isPad])
  {
    v11 = 1;
  }

  else
  {
    v11 = [v9 isPhone];
  }

  v12 = a2 + v6[10];
  OUTLINED_FUNCTION_184(v11, MEMORY[0x1E69E6370], v10);
  *v12 = v19;
  *(v12 + 8) = v20;
  v13 = v6[11];
  type metadata accessor for TextBadgePresenter(0);
  v14 = OUTLINED_FUNCTION_106();
  *(a2 + v13) = sub_1E3789F30(v14);
  v15 = a2 + v6[12];
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0u;
  *(v15 + 64) = 0u;
  *(v15 + 80) = 2;
  *(v15 + 88) = 0;
  type metadata accessor for MediaShowcasingMetadataPresenter(0);
  OUTLINED_FUNCTION_19_17();
  sub_1E37ADD34(v16);
  result = sub_1E42010C4();
  *a2 = result;
  *(a2 + 8) = v18;
  *(a2 + 48) = sub_1E379F17C;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  return result;
}

void sub_1E379F1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v24;
  a20 = v25;
  v282 = v26;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299E8, &qword_1E429C6D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v267 = v28;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299F0, &qword_1E429C6E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  v268 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299F8, &qword_1E429C6E8);
  OUTLINED_FUNCTION_6_4(v31, &a18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v33);
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A00, &qword_1E429C6F0);
  OUTLINED_FUNCTION_0_10();
  v249 = v34;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v36);
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A08, &qword_1E429C6F8);
  OUTLINED_FUNCTION_0_10();
  v250 = v37;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A10, &qword_1E429C700);
  OUTLINED_FUNCTION_6_4(v40, v284);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v42);
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A18, &qword_1E429C708);
  OUTLINED_FUNCTION_0_10();
  v246 = v43;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v45);
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A20, &qword_1E429C710);
  OUTLINED_FUNCTION_0_10();
  v251 = v46;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A28, &qword_1E429C718);
  OUTLINED_FUNCTION_6_4(v49, &v283);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A30, &qword_1E429C720);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A38, &qword_1E429C728);
  OUTLINED_FUNCTION_6_4(v55, &v281);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v57);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A40, &qword_1E429C730);
  OUTLINED_FUNCTION_0_10();
  v241 = v58;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v60);
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A48, &qword_1E429C738);
  OUTLINED_FUNCTION_0_10();
  v245 = v61;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v63);
  v64 = type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
  v269 = *(v64 - 8);
  v65 = *(v269 + 64);
  MEMORY[0x1EEE9AC00](v64 - 8);
  OUTLINED_FUNCTION_152_0(&v233 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A50, &qword_1E429C740);
  OUTLINED_FUNCTION_6_4(v66, &a13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_49_2();
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A58, &qword_1E429C748);
  OUTLINED_FUNCTION_0_10();
  v236 = v68;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_8_4();
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A60, &qword_1E429C750);
  OUTLINED_FUNCTION_0_10();
  v240 = v70;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v72);
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A68, &qword_1E429C758);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_44();
  v277 = v74;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A70, &qword_1E429C760);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_44();
  v273 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A78, &qword_1E429C768);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_19_2();
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A80, &qword_1E429C770);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v79);
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A88, &qword_1E429C778);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_44();
  v274 = v81;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_50_1();
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A98, &qword_1E429C788);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_44();
  v278 = v84;
  v85 = v20;
  if (sub_1E392583C())
  {
    OUTLINED_FUNCTION_26_0();
    v87 = *(v86 + 392);
    v280 = v88;
    v89 = v87();
    if (v89)
    {
      v90 = v89;
      v235 = v52;
      type metadata accessor for MediaShowcasingMetadataLayout();
      OUTLINED_FUNCTION_20_2();
      v91 = swift_dynamicCastClass();
      if (v91)
      {
        v234 = v90;
        switch(*(v91 + 120))
        {
          case 4:
          case 5:
            nullsub_1();
            v99 = OUTLINED_FUNCTION_13_8();
            v100(v99);
            OUTLINED_FUNCTION_170_0();
            v101 = swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_5_1(v101);
            v102 = sub_1E37A08CC();
            OUTLINED_FUNCTION_110_0(v102, &a13);
            v103 = OUTLINED_FUNCTION_12_27();
            OUTLINED_FUNCTION_110_0(v103, &a16);
            OUTLINED_FUNCTION_11_26();
            sub_1E4201F44();
            v104 = v273;
            OUTLINED_FUNCTION_18_5();
            sub_1E3743538(v105, v106, v107, v108);
            OUTLINED_FUNCTION_149_0(v104);
            sub_1E37A07A8();
            sub_1E37A0D28();
            sub_1E4201F44();
            OUTLINED_FUNCTION_82();
            sub_1E325F69C(v109, v110);
            OUTLINED_FUNCTION_18_5();
            sub_1E3743538(v111, v112, v113, v114);
            swift_storeEnumTagMultiPayload();
            sub_1E37A071C();
            sub_1E37A10D4();
            v22 = v278;
            sub_1E4201F44();
            OUTLINED_FUNCTION_185();

            OUTLINED_FUNCTION_82();
            sub_1E325F69C(v115, v116);
            v117 = OUTLINED_FUNCTION_142_0();
            v118(v117);
            break;
          case 6:
            OUTLINED_FUNCTION_153();
            OUTLINED_FUNCTION_123_1();
            sub_1E37A134C();
            OUTLINED_FUNCTION_1_58();
            OUTLINED_FUNCTION_146_3();
            OUTLINED_FUNCTION_16_14();
            OUTLINED_FUNCTION_181_0();
            OUTLINED_FUNCTION_0_25();
            sub_1E37ADCDC(v21, v178);
            v179 = sub_1E37A0ED0();
            v180 = v252;
            OUTLINED_FUNCTION_74();
            v181 = OUTLINED_FUNCTION_51_1();
            v182 = OUTLINED_FUNCTION_143_1(v181);
            sub_1E40AB6EC(v182);

            sub_1E325F69C(v22, &qword_1ECF29A38);
            v283 = v180;
            v284[0] = v179;
            OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
            v184 = OUTLINED_FUNCTION_81_0();
            v22 = v253;
            sub_1E418F2CC(v184, v253, OpaqueTypeConformance2);
            OUTLINED_FUNCTION_15_5();
            v185 = OUTLINED_FUNCTION_124();
            v186(v185);
            OUTLINED_FUNCTION_130_1();
            v187(v255, v85, v256);
            swift_storeEnumTagMultiPayload();
            v283 = v22;
            v284[0] = OpaqueTypeConformance2;
            OUTLINED_FUNCTION_68_6();
            swift_getOpaqueTypeConformance2();
            OUTLINED_FUNCTION_9_0();
            v189 = sub_1E37AE398(v188);
            OUTLINED_FUNCTION_110_0(v189, v284);
            v190 = swift_getOpaqueTypeConformance2();
            OUTLINED_FUNCTION_110_0(v190, &a10);
            swift_getOpaqueTypeConformance2();
            OUTLINED_FUNCTION_153();
            goto LABEL_16;
          case 7:
            v133 = sub_1E4201B84();
            v134 = v242;
            *v242 = v133;
            v134[1] = 0;
            *(v134 + 16) = 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF0, &qword_1E429C820);
            OUTLINED_FUNCTION_100_0();
            sub_1E37A6108();
            OUTLINED_FUNCTION_1_58();
            OUTLINED_FUNCTION_146_3();
            OUTLINED_FUNCTION_16_14();
            OUTLINED_FUNCTION_181_0();
            OUTLINED_FUNCTION_0_25();
            sub_1E37ADCDC(v21, v135);
            OUTLINED_FUNCTION_9_0();
            OUTLINED_FUNCTION_55_0();
            v22 = sub_1E37AE398(v136);
            v137 = v254;
            OUTLINED_FUNCTION_124();
            v138 = OUTLINED_FUNCTION_51_1();
            v139 = OUTLINED_FUNCTION_143_1(v138);
            OUTLINED_FUNCTION_131_1(v139);

            OUTLINED_FUNCTION_55_0();
            sub_1E325F69C(v140, v141);
            v283 = v137;
            v284[0] = v22;
            v142 = swift_getOpaqueTypeConformance2();
            v143 = OUTLINED_FUNCTION_81_0();
            v144 = v257;
            sub_1E418F2CC(v143, v257, v142);
            OUTLINED_FUNCTION_15_5();
            v145 = OUTLINED_FUNCTION_47_4();
            v146(v145);
            OUTLINED_FUNCTION_130_1();
            v147(v255, v85, v258);
            swift_storeEnumTagMultiPayload();
            v148 = sub_1E37A0ED0();
            OUTLINED_FUNCTION_110_0(v148, &v281);
            v149 = swift_getOpaqueTypeConformance2();
            OUTLINED_FUNCTION_110_0(v149, &v282);
            OUTLINED_FUNCTION_68_6();
            swift_getOpaqueTypeConformance2();
            v283 = v144;
            v284[0] = v142;
            swift_getOpaqueTypeConformance2();
            OUTLINED_FUNCTION_153();
LABEL_16:
            sub_1E4201F44();
            OUTLINED_FUNCTION_12_12();
            sub_1E3743538(v191, v192, v193, v194);
            swift_storeEnumTagMultiPayload();
            sub_1E37A07A8();
            sub_1E37A0D28();
            OUTLINED_FUNCTION_116_2();
            OUTLINED_FUNCTION_21_1();
            sub_1E325F69C(v195, v196);
            OUTLINED_FUNCTION_12_12();
            sub_1E3743538(v197, v198, v199, v200);
            OUTLINED_FUNCTION_165_1();
            goto LABEL_18;
          case 8:
            v201 = OUTLINED_FUNCTION_123_1();
            sub_1E37A16F4(v201, v202, v203, v204, v205, v206, v207, v208, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248);
            OUTLINED_FUNCTION_1_58();
            OUTLINED_FUNCTION_146_3();
            OUTLINED_FUNCTION_16_14();
            OUTLINED_FUNCTION_181_0();
            OUTLINED_FUNCTION_0_25();
            sub_1E37ADCDC(v21, v209);
            OUTLINED_FUNCTION_66_6();
            OUTLINED_FUNCTION_55_0();
            v22 = sub_1E37A0F88(v210);
            v211 = v263;
            OUTLINED_FUNCTION_124();
            v212 = OUTLINED_FUNCTION_51_1();
            v213 = OUTLINED_FUNCTION_143_1(v212);
            OUTLINED_FUNCTION_131_1(v213);

            OUTLINED_FUNCTION_55_0();
            sub_1E325F69C(v214, v215);
            v283 = v211;
            v284[0] = v22;
            v216 = OUTLINED_FUNCTION_12_27();
            v217 = OUTLINED_FUNCTION_81_0();
            v218 = v264;
            sub_1E418F2CC(v217, v264, v216);
            OUTLINED_FUNCTION_15_5();
            v219 = OUTLINED_FUNCTION_154_0();
            v220(v219);
            OUTLINED_FUNCTION_130_1();
            v221(v267, v85, v266);
            swift_storeEnumTagMultiPayload();
            v283 = v218;
            v284[0] = v216;
            OUTLINED_FUNCTION_11_26();
            sub_1E4201F44();
            OUTLINED_FUNCTION_12_12();
            sub_1E3743538(v222, v223, v224, v225);
            OUTLINED_FUNCTION_165_1();
LABEL_18:
            swift_storeEnumTagMultiPayload();
            sub_1E37A071C();
            sub_1E37A10D4();
            OUTLINED_FUNCTION_58_6();
            OUTLINED_FUNCTION_185();

            OUTLINED_FUNCTION_21_1();
            sub_1E325F69C(v226, v227);
            v228 = OUTLINED_FUNCTION_159();
            v229(v228);
            break;
          case 9:
          case 0xA:
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_66_6();
            v125 = sub_1E37A0F88(v124);
            OUTLINED_FUNCTION_110_0(v125, &a18);
            v126 = OUTLINED_FUNCTION_12_27();
            v283 = v264;
            v284[0] = v126;
            OUTLINED_FUNCTION_11_26();
            sub_1E4201F44();
            OUTLINED_FUNCTION_12_12();
            sub_1E3743538(v127, v128, v129, v130);
            OUTLINED_FUNCTION_165_1();
            swift_storeEnumTagMultiPayload();
            sub_1E37A071C();
            sub_1E37A10D4();
            OUTLINED_FUNCTION_58_6();
            OUTLINED_FUNCTION_185();

            OUTLINED_FUNCTION_21_1();
            sub_1E325F69C(v131, v132);
            break;
          default:
            sub_1E37A1AC0(v85, v92, v93, v94, v95, v96, v97, v98, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244);
            OUTLINED_FUNCTION_1_58();
            v150 = v270;
            sub_1E37AD3C4(v85, v270);
            OUTLINED_FUNCTION_16_14();
            OUTLINED_FUNCTION_181_0();
            OUTLINED_FUNCTION_0_25();
            sub_1E37ADCDC(v150, v151);
            v152 = sub_1E37A08CC();
            v153 = v259;
            OUTLINED_FUNCTION_171_0();
            v154 = OUTLINED_FUNCTION_51_1();
            v155 = OUTLINED_FUNCTION_143_1(v154);
            sub_1E40AB6EC(v155);

            sub_1E325F69C(v23, &qword_1ECF29A50);
            v283 = v153;
            v284[0] = v152;
            v156 = OUTLINED_FUNCTION_12_27();
            v157 = OUTLINED_FUNCTION_81_0();
            v158 = v261;
            sub_1E418F2CC(v157, v261, v156);
            OUTLINED_FUNCTION_15_5();
            v159(v22, v158);
            v160 = OUTLINED_FUNCTION_169_0();
            v161(v160);
            OUTLINED_FUNCTION_170_0();
            v162 = swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_5_1(v162);
            v283 = v158;
            v284[0] = v156;
            OUTLINED_FUNCTION_11_26();
            OUTLINED_FUNCTION_153();
            sub_1E4201F44();
            v163 = v273;
            OUTLINED_FUNCTION_12_12();
            sub_1E3743538(v164, v165, v166, v167);
            OUTLINED_FUNCTION_149_0(v163);
            sub_1E37A07A8();
            sub_1E37A0D28();
            OUTLINED_FUNCTION_116_2();
            OUTLINED_FUNCTION_21_1();
            sub_1E325F69C(v168, v169);
            OUTLINED_FUNCTION_12_12();
            sub_1E3743538(v170, v171, v172, v173);
            OUTLINED_FUNCTION_165_1();
            swift_storeEnumTagMultiPayload();
            sub_1E37A071C();
            sub_1E37A10D4();
            OUTLINED_FUNCTION_58_6();
            OUTLINED_FUNCTION_185();

            OUTLINED_FUNCTION_21_1();
            sub_1E325F69C(v174, v175);
            v176 = OUTLINED_FUNCTION_160_1();
            v177(v176);
            break;
        }

        sub_1E3741EA0(v22, v282, &qword_1ECF29A98, &qword_1E429C788);
        v230 = OUTLINED_FUNCTION_22_1();
        __swift_storeEnumTagSinglePayload(v230, v231, v232, v281);
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v119, v120, v121, v122);
}

unint64_t sub_1E37A05D8()
{
  result = qword_1ECF29AA8;
  if (!qword_1ECF29AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29AB0, &qword_1E429C790);
    sub_1E37A0664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29AA8);
  }

  return result;
}

unint64_t sub_1E37A0664()
{
  result = qword_1ECF29AB8;
  if (!qword_1ECF29AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29AC0, &qword_1E429C798);
    sub_1E37AE398(&unk_1ECF29AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29AB8);
  }

  return result;
}

unint64_t sub_1E37A071C()
{
  result = qword_1ECF29AD8;
  if (!qword_1ECF29AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A88, &qword_1E429C778);
    sub_1E37A07A8();
    sub_1E37A0D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29AD8);
  }

  return result;
}

unint64_t sub_1E37A07A8()
{
  result = qword_1ECF29AE0;
  if (!qword_1ECF29AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A80, &qword_1E429C770);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A58, &qword_1E429C748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A50, &qword_1E429C740);
    sub_1E37A08CC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29AE0);
  }

  return result;
}

unint64_t sub_1E37A08CC()
{
  result = qword_1ECF29AE8;
  if (!qword_1ECF29AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A50, &qword_1E429C740);
    sub_1E37A684C(&unk_1ECF29AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29AE8);
  }

  return result;
}

unint64_t sub_1E37A097C()
{
  result = qword_1ECF29B00;
  if (!qword_1ECF29B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29B08, &qword_1E429C7B8);
    sub_1E37A0A20();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29B00);
  }

  return result;
}

unint64_t sub_1E37A0A20()
{
  result = qword_1ECF29B10;
  if (!qword_1ECF29B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29B18, &qword_1E429C7C0);
    sub_1E37A0AAC();
    sub_1E37A0B8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29B10);
  }

  return result;
}

unint64_t sub_1E37A0AAC()
{
  result = qword_1ECF29B20;
  if (!qword_1ECF29B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29B28, &qword_1E429C7C8);
    sub_1E37AE398(&unk_1ECF29B30);
    sub_1E37AE398(&unk_1ECF29B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29B20);
  }

  return result;
}

unint64_t sub_1E37A0B8C()
{
  result = qword_1ECF29B50;
  if (!qword_1ECF29B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29B58, &qword_1E429C7E0);
    sub_1E37AE398(&unk_1ECF29B60);
    sub_1E37A0F88(&unk_1ECF29B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29B50);
  }

  return result;
}

unint64_t sub_1E37A0C70()
{
  result = qword_1ECF29B80;
  if (!qword_1ECF29B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29B88, &qword_1E429C7F8);
    sub_1E37AE398(&unk_1ECF29B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29B80);
  }

  return result;
}

unint64_t sub_1E37A0D28()
{
  result = qword_1ECF29BA0;
  if (!qword_1ECF29BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A30, &qword_1E429C720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A40, &qword_1E429C730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A38, &qword_1E429C728);
    sub_1E37A0ED0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A18, &qword_1E429C708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A10, &qword_1E429C700);
    sub_1E37AE398(&unk_1ECF29BE0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29BA0);
  }

  return result;
}

unint64_t sub_1E37A0ED0()
{
  result = qword_1ECF29BA8;
  if (!qword_1ECF29BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A38, &qword_1E429C728);
    sub_1E37A0F88(&unk_1ECF29BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29BA8);
  }

  return result;
}

unint64_t sub_1E37A0F88(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    sub_1E37AE398(&qword_1EE2887D0);
    OUTLINED_FUNCTION_60();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E37A101C()
{
  result = qword_1ECF29BC0;
  if (!qword_1ECF29BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29BC8, &qword_1E429C810);
    sub_1E37AE398(&unk_1ECF29BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29BC0);
  }

  return result;
}

unint64_t sub_1E37A10D4()
{
  result = qword_1ECF29BE8;
  if (!qword_1ECF29BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF299F0, &qword_1E429C6E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A00, &qword_1E429C6F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF299F8, &qword_1E429C6E8);
    sub_1E37A0F88(&unk_1ECF29AA0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29BE8);
  }

  return result;
}

uint64_t sub_1E37A1214(double a1, double a2)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 appWindow];

  if (v4)
  {
    [v4 bounds];
    a1 = v5;
  }

  type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
  OUTLINED_FUNCTION_64_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E4203904();
  type metadata accessor for LayoutGrid();
  sub_1E3A2579C(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C18, &qword_1E429C8B8);
  return sub_1E4203904();
}

void sub_1E37A134C()
{
  OUTLINED_FUNCTION_93();
  *&v49 = v4;
  v53 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29EF8, &qword_1E429CB78);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BD8, &qword_1E429C818);
  OUTLINED_FUNCTION_17_2(v14);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_20_1();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BC8, &qword_1E429C810);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_26_2();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BB8, &qword_1E429C808);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8_4();
  *v3 = sub_1E4201D54();
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v18 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29F00, &qword_1E429CB80) + 44);
  *v13 = sub_1E4201B84();
  *(v13 + 1) = 0;
  v13[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29F08, &qword_1E429CB88);
  v52 = v0;
  sub_1E37A77A8();
  v19 = OUTLINED_FUNCTION_13_8();
  sub_1E3743538(v19, v20, &qword_1ECF29EF8, &qword_1E429CB78);
  *v18 = 0;
  *(v18 + 8) = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29F10, &qword_1E429CB90);
  sub_1E3743538(v10, v18 + *(v21 + 48), &qword_1ECF29EF8, &qword_1E429CB78);
  v22 = OUTLINED_FUNCTION_170_0();
  sub_1E325F69C(v22, v23);
  sub_1E325F69C(v10, &qword_1ECF29EF8);
  v24 = sub_1E4202724();
  OUTLINED_FUNCTION_8();
  (*(v25 + 152))(v54);
  v26 = v55;
  v27 = 0uLL;
  v28 = 0uLL;
  if ((v55 & 1) == 0)
  {
    sub_1E3952BE0(v54[0], v54[1], v54[2], v54[3]);
    sub_1E4200A54();
    *(&v28 + 1) = v29;
    *(&v27 + 1) = v30;
  }

  v48 = v28;
  v49 = v27;
  v31 = OUTLINED_FUNCTION_171_0();
  sub_1E3741EA0(v31, v32, v33, v34);
  v35 = v1 + *(v51 + 36);
  *v35 = v24;
  v36 = v49;
  *(v35 + 24) = v48;
  *(v35 + 8) = v36;
  *(v35 + 40) = v26 & 1;
  KeyPath = swift_getKeyPath();
  v38 = (v2 + *(v50 + 36));
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0, &qword_1E42AE9A0) + 28);
  v40 = *MEMORY[0x1E697DBA8];
  sub_1E4200B44();
  OUTLINED_FUNCTION_2();
  (*(v41 + 104))(v38 + v39, v40);
  *v38 = KeyPath;
  v42 = OUTLINED_FUNCTION_75();
  sub_1E3741EA0(v42, v43, v44, v45);
  v46 = sub_1E39256E8();
  v47 = v53;
  sub_1E3741EA0(v2, v53, &qword_1ECF29BB8, &qword_1E429C808);
  *(v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A38, &qword_1E429C728) + 36)) = v46;
  OUTLINED_FUNCTION_54_0();
}

void sub_1E37A16F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_4();
  a23 = v29;
  a24 = v30;
  v78 = v24;
  v77[1] = v31;
  v79 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29FD8, &qword_1E429CC40);
  v34 = OUTLINED_FUNCTION_17_2(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v77 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29AD0, &unk_1E429C7A0);
  OUTLINED_FUNCTION_17_2(v38);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_20_1();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29AC0, &qword_1E429C798);
  OUTLINED_FUNCTION_6_4(v40, &a18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_26_2();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29AB0, &qword_1E429C790);
  OUTLINED_FUNCTION_6_4(v42, &a19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_19_2();
  *v27 = sub_1E4201D54();
  *(v27 + 8) = 0;
  *(v27 + 16) = 1;
  v44 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29FE0, &qword_1E429CC48) + 44);
  *v37 = sub_1E4201B84();
  *(v37 + 1) = 0;
  v37[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29FE8, &qword_1E429CC50);
  sub_1E37A7F88();
  v45 = OUTLINED_FUNCTION_115();
  sub_1E3743538(v45, v46, &qword_1ECF29FD8, &qword_1E429CC40);
  *v44 = 0;
  *(v44 + 8) = 1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29FF0, &qword_1E429CC58);
  sub_1E3743538(v28, v44 + *(v47 + 48), &qword_1ECF29FD8, &qword_1E429CC40);
  v48 = OUTLINED_FUNCTION_142_0();
  sub_1E325F69C(v48, v49);
  v50 = OUTLINED_FUNCTION_159();
  sub_1E325F69C(v50, v51);
  OUTLINED_FUNCTION_8();
  v53 = v80;
  (*(v52 + 176))(v80);
  if (v81)
  {
    v53 = MEMORY[0x1E69DDCE0];
    v55.n128_u64[0] = *(MEMORY[0x1E69DDCE0] + 8);
    v56.n128_u64[0] = *(MEMORY[0x1E69DDCE0] + 16);
    v57.n128_u64[0] = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v55.n128_u64[0] = v80[1];
    v56.n128_u64[0] = v80[2];
    v57.n128_u64[0] = v80[3];
  }

  v54.n128_u64[0] = *v53;
  j_nullsub_1(v54, v55, v56, v57);
  OUTLINED_FUNCTION_3();
  v58 = sub_1E4202734();
  v59 = OUTLINED_FUNCTION_171_0();
  sub_1E3741EA0(v59, v60, v61, v62);
  OUTLINED_FUNCTION_141();
  v64 = (v26 + v63);
  *v64 = v58;
  OUTLINED_FUNCTION_11_4(v64);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_13_22();
  v65 = OUTLINED_FUNCTION_74();
  sub_1E3741EA0(v65, v66, v67, v68);
  OUTLINED_FUNCTION_141();
  memcpy((v25 + v69), v82, 0x70uLL);
  KeyPath = swift_getKeyPath();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299F8, &qword_1E429C6E8);
  v72 = v79;
  v73 = (v79 + *(v71 + 36));
  v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0, &qword_1E42AE9A0) + 28);
  v75 = *MEMORY[0x1E697DBA8];
  sub_1E4200B44();
  OUTLINED_FUNCTION_2();
  (*(v76 + 104))(v73 + v74, v75);
  *v73 = KeyPath;
  sub_1E3741EA0(v25, v72, &qword_1ECF29AB0, &qword_1E429C790);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E37A1AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v24;
  a20 = v25;
  v156 = v26;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  v150 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_20_1();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29B98, &qword_1E429C800);
  OUTLINED_FUNCTION_17_2(v29);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29B88, &qword_1E429C7F8);
  OUTLINED_FUNCTION_6_4(v32, &a9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29B78, &qword_1E429C7F0);
  v36 = OUTLINED_FUNCTION_6_4(v35, &a18);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_5();
  v145 = v37;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C20, &qword_1E429C8C0);
  OUTLINED_FUNCTION_6_4(v40, &a15);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29B58, &qword_1E429C7E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_44();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29B68, &qword_1E429C7E8);
  OUTLINED_FUNCTION_6_4(v44, &a16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29B48, &qword_1E429C7D8);
  OUTLINED_FUNCTION_6_4(v47, &a14);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_14_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C28, &qword_1E429C8C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_44();
  v152 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C30, &qword_1E429C8D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C38, &qword_1E429C8D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29B28, &qword_1E429C7C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_50_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29B18, &qword_1E429C7C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_152_0(v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29B38, &qword_1E429C7D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_8_4();
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29B08, &qword_1E429C7B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_44();
  v153 = v58;
  if (sub_1E392583C())
  {
    OUTLINED_FUNCTION_26_0();
    if ((*(v59 + 392))())
    {
      type metadata accessor for MediaShowcasingMetadataLayout();
      OUTLINED_FUNCTION_20_2();
      v60 = swift_dynamicCastClass();
      if (v60)
      {
        if (*(v60 + 120) - 4 >= 7)
        {
          switch(*(v60 + 120))
          {
            case 1:
              *v23 = sub_1E4201B84();
              *(v23 + 8) = 0;
              *(v23 + 16) = 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C50, &qword_1E429C8F8);
              OUTLINED_FUNCTION_100_0();
              OUTLINED_FUNCTION_136_0();
              sub_1E37A4508();
              v95 = OUTLINED_FUNCTION_99_0();
              sub_1E3743538(v95, v96, &qword_1ECF29B48, &qword_1E429C7D8);
              OUTLINED_FUNCTION_120();
              swift_storeEnumTagMultiPayload();
              sub_1E37AE398(&unk_1ECF29B30);
              sub_1E37AE398(&unk_1ECF29B40);
              OUTLINED_FUNCTION_125_1();
              OUTLINED_FUNCTION_47_4();
              sub_1E4201F44();
              OUTLINED_FUNCTION_96_2();
              sub_1E3743538(v97, v98, v99, v100);
              swift_storeEnumTagMultiPayload();
              sub_1E37A0AAC();
              sub_1E37A0B8C();
              sub_1E4201F44();
              OUTLINED_FUNCTION_55_0();
              sub_1E325F69C(v101, v102);
              sub_1E3743538(v151, v152, &qword_1ECF29B18, &qword_1E429C7C0);
              OUTLINED_FUNCTION_149_0(v152);
              v103 = sub_1E37A0A20();
              OUTLINED_FUNCTION_5_1(v103);
              v62 = v153;
              OUTLINED_FUNCTION_127_0();
              sub_1E4201F44();
              OUTLINED_FUNCTION_151_3();

              sub_1E325F69C(v151, &qword_1ECF29B18);
              v77 = v23;
              v78 = &qword_1ECF29B48;
              break;
            case 2:
              *v143 = sub_1E4201B84();
              *(v143 + 8) = 0;
              *(v143 + 16) = 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C48, &qword_1E429C8F0);
              sub_1E37ABE40();
              sub_1E3743538(v143, v148, &qword_1ECF29B68, &qword_1E429C7E8);
              swift_storeEnumTagMultiPayload();
              OUTLINED_FUNCTION_9_0();
              OUTLINED_FUNCTION_164();
              sub_1E37AE398(v79);
              OUTLINED_FUNCTION_70_5();
              sub_1E37A0F88(v80);
              sub_1E4201F44();
              OUTLINED_FUNCTION_96_2();
              sub_1E3743538(v81, v82, v83, v84);
              swift_storeEnumTagMultiPayload();
              sub_1E37A0AAC();
              sub_1E37A0B8C();
              OUTLINED_FUNCTION_132_0();
              OUTLINED_FUNCTION_55_0();
              sub_1E325F69C(v85, v86);
              OUTLINED_FUNCTION_96_2();
              sub_1E3743538(v87, v88, v89, v90);
              OUTLINED_FUNCTION_149_0(v152);
              v91 = sub_1E37A0A20();
              OUTLINED_FUNCTION_5_1(v91);
              v62 = v153;
              OUTLINED_FUNCTION_127_0();
              sub_1E4201F44();
              OUTLINED_FUNCTION_151_3();

              OUTLINED_FUNCTION_55_0();
              sub_1E325F69C(v92, v93);
              v77 = v143;
              v78 = &qword_1ECF29B68;
              break;
            case 3:
              *v144 = sub_1E4201D54();
              *(v144 + 8) = 0;
              *(v144 + 16) = 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C40, &unk_1E429C8E0);
              sub_1E37AAC4C();
              type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
              OUTLINED_FUNCTION_64_5();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
              sub_1E42038F4();
              if (v157 == 1)
              {
                v94 = sub_1E4202724();
                v62 = v153;
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_1E4299720;
                v105 = sub_1E4202724();
                *(inited + 32) = v105;
                v106 = sub_1E4202754();
                *(inited + 33) = v106;
                v94 = sub_1E4202774();
                sub_1E4202774();
                v62 = v153;
                if (sub_1E4202774() != v105)
                {
                  v94 = sub_1E4202774();
                }

                sub_1E4202774();
                if (sub_1E4202774() != v106)
                {
                  v94 = sub_1E4202774();
                }
              }

              sub_1E3741EA0(v144, v146, &qword_1ECF29B98, &qword_1E429C800);
              OUTLINED_FUNCTION_141();
              *(v146 + v107) = v94;
              KeyPath = swift_getKeyPath();
              v109 = (v145 + *(v149 + 36));
              v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0, &qword_1E42AE9A0) + 28);
              v111 = *MEMORY[0x1E697DBA8];
              sub_1E4200B44();
              OUTLINED_FUNCTION_2();
              (*(v112 + 104))(v109 + v110, v111);
              *v109 = KeyPath;
              v113 = OUTLINED_FUNCTION_146();
              sub_1E3741EA0(v113, v114, v115, v116);
              OUTLINED_FUNCTION_19_1();
              sub_1E3741EA0(v117, v118, v119, v120);
              OUTLINED_FUNCTION_12_12();
              sub_1E3743538(v121, v122, v123, v124);
              swift_storeEnumTagMultiPayload();
              OUTLINED_FUNCTION_9_0();
              sub_1E37AE398(v125);
              OUTLINED_FUNCTION_70_5();
              OUTLINED_FUNCTION_21_1();
              sub_1E37A0F88(v126);
              sub_1E4201F44();
              OUTLINED_FUNCTION_96_2();
              sub_1E3743538(v127, v128, v129, v130);
              swift_storeEnumTagMultiPayload();
              sub_1E37A0AAC();
              sub_1E37A0B8C();
              OUTLINED_FUNCTION_132_0();
              OUTLINED_FUNCTION_55_0();
              sub_1E325F69C(v131, v132);
              OUTLINED_FUNCTION_96_2();
              sub_1E3743538(v133, v134, v135, v136);
              OUTLINED_FUNCTION_149_0(v152);
              v137 = sub_1E37A0A20();
              OUTLINED_FUNCTION_5_1(v137);
              OUTLINED_FUNCTION_127_0();
              sub_1E4201F44();
              OUTLINED_FUNCTION_151_3();
              OUTLINED_FUNCTION_180();
              OUTLINED_FUNCTION_55_0();
              sub_1E325F69C(v138, v139);
              v77 = v147;
              v78 = &qword_1ECF29B78;
              break;
            default:
              *v20 = sub_1E4201B84();
              *(v20 + 8) = 0;
              *(v20 + 16) = 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C58, &qword_1E429C900);
              OUTLINED_FUNCTION_136_0();
              sub_1E37A2988();
              sub_1E3743538(v20, v22, &qword_1ECF29B38, &qword_1E429C7D0);
              OUTLINED_FUNCTION_120();
              swift_storeEnumTagMultiPayload();
              sub_1E37AE398(&unk_1ECF29B30);
              sub_1E37AE398(&unk_1ECF29B40);
              OUTLINED_FUNCTION_125_1();
              OUTLINED_FUNCTION_47_4();
              sub_1E4201F44();
              OUTLINED_FUNCTION_96_2();
              sub_1E3743538(v70, v71, v72, v73);
              swift_storeEnumTagMultiPayload();
              sub_1E37A0AAC();
              sub_1E37A0B8C();
              sub_1E4201F44();
              OUTLINED_FUNCTION_55_0();
              sub_1E325F69C(v74, v75);
              sub_1E3743538(v151, v152, &qword_1ECF29B18, &qword_1E429C7C0);
              OUTLINED_FUNCTION_149_0(v152);
              v76 = sub_1E37A0A20();
              OUTLINED_FUNCTION_5_1(v76);
              v62 = v153;
              sub_1E4201F44();
              OUTLINED_FUNCTION_151_3();

              sub_1E325F69C(v151, &qword_1ECF29B18);
              v77 = v20;
              v78 = &qword_1ECF29B38;
              break;
          }

          sub_1E325F69C(v77, v78);
        }

        else
        {
          nullsub_1();
          (*(v150 + 16))(v152, v21, v154);
          swift_storeEnumTagMultiPayload();
          v61 = sub_1E37A0A20();
          OUTLINED_FUNCTION_5_1(v61);
          v62 = v153;
          sub_1E4201F44();
          OUTLINED_FUNCTION_151_3();
          OUTLINED_FUNCTION_180();
          v63 = OUTLINED_FUNCTION_138_0();
          v64(v63);
        }

        sub_1E3741EA0(v62, v156, &qword_1ECF29B08, &qword_1E429C7B8);
        v140 = OUTLINED_FUNCTION_22_1();
        __swift_storeEnumTagSinglePayload(v140, v141, v142, v155);
        OUTLINED_FUNCTION_25_2();
        return;
      }

      OUTLINED_FUNCTION_180();
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
}

void sub_1E37A2988()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_91_1(v4, v5);
  OUTLINED_FUNCTION_82_3();
  v33 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v31 = OUTLINED_FUNCTION_43_8(&v29);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  v29 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C60, &qword_1E429C908);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C68, &qword_1E429C910);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v34 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_34_1();
  v15 = sub_1E379EF14();
  OUTLINED_FUNCTION_129_0(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C70, &qword_1E429C918);
  OUTLINED_FUNCTION_100_0();
  v30 = v1;
  sub_1E37A2CAC();
  v16 = OUTLINED_FUNCTION_51_6();
  v17(v16);
  OUTLINED_FUNCTION_1_58();
  OUTLINED_FUNCTION_148_0();
  OUTLINED_FUNCTION_16_14();
  swift_allocObject();
  OUTLINED_FUNCTION_0_25();
  sub_1E37ADCDC(v9, v18);
  OUTLINED_FUNCTION_1();
  sub_1E37AE398(v19);
  OUTLINED_FUNCTION_135();
  v20 = OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_39_8(v20);

  v21 = OUTLINED_FUNCTION_85_2();
  v22(v21);
  sub_1E325F69C(v3, &qword_1ECF29C60);
  OUTLINED_FUNCTION_25_17((v30 + *(v2 + 48)));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  OUTLINED_FUNCTION_147_0(v23);
  v24 = OUTLINED_FUNCTION_26_15();
  (v2)(v24);
  v25 = OUTLINED_FUNCTION_84_3();
  (v2)(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C80, &qword_1E429C920);
  v27 = OUTLINED_FUNCTION_24_7(v26);
  v0(v27);
  v28 = OUTLINED_FUNCTION_157_0();
  v0(v28);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37A313C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_36();
  v4 = *(v3 + 488);
  v5 = v4();
  if (v5)
  {
    v0 = sub_1E373E010(23, v5, v6);

    if (v0)
    {
      if (*v0 == _TtC8VideosUI13TextViewModel)
      {
        goto LABEL_8;
      }
    }
  }

  v8 = (v4)(v5);
  if (v8)
  {
    sub_1E373E010(24, v8, v9);
    OUTLINED_FUNCTION_122();

    if (v0)
    {
      if (*v0 != _TtC8VideosUI13TextViewModel)
      {
LABEL_12:

        goto LABEL_13;
      }

LABEL_8:
      if (sub_1E3C27528(v5, v7))
      {
        OUTLINED_FUNCTION_106();
        type metadata accessor for TextLayout();
        OUTLINED_FUNCTION_20_2();
        if (swift_dynamicCastClass())
        {

          OUTLINED_FUNCTION_18();
          sub_1E3F23370();

          v10 = OUTLINED_FUNCTION_114_0();
          v11(v10);
          v12 = OUTLINED_FUNCTION_22_1();
          __swift_storeEnumTagSinglePayload(v12, v13, v14, v1);
          OUTLINED_FUNCTION_25_2();
          return;
        }
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

void sub_1E37A3384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_93();
  a21 = v24;
  a22 = v25;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CB0, &qword_1E429C958);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v30);
  sub_1E42037D4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CC0, &qword_1E429C968);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_21_3();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CC8, &unk_1E429C970);
  OUTLINED_FUNCTION_0_10();
  v80 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_5();
  v79 = v36;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v38);
  OUTLINED_FUNCTION_36();
  if ((*(v39 + 392))())
  {
    type metadata accessor for MediaShowcasingMetadataLayout();
    v40 = swift_dynamicCastClass();
    if (v40)
    {
      v78 = v40;
      if (sub_1E3926038())
      {
        OUTLINED_FUNCTION_26_0();
        v42 = (*(v41 + 392))();

        if (v42)
        {
          type metadata accessor for ImageLayout();
          v43 = swift_dynamicCastClass();
          if (v43)
          {
            v44 = v43;
            v75 = v27;
            v45 = sub_1E39258D4();
            if (!v45)
            {
              v45 = *sub_1E418A748();
            }

            v46 = v45;
            (*(*v44 + 2288))();
            v77 = v46;
            sub_1E381AC64(v77);
            OUTLINED_FUNCTION_111_0();
            v47(v22);
            OUTLINED_FUNCTION_5_8();
            OUTLINED_FUNCTION_32_0();
            sub_1E4203824();
            OUTLINED_FUNCTION_122();

            v48 = OUTLINED_FUNCTION_114_0();
            v49(v48);
            v87[5] = v46;

            v50 = MEMORY[0x1E6981748];
            v51 = MEMORY[0x1E6981710];
            OUTLINED_FUNCTION_114_0();
            v52 = OUTLINED_FUNCTION_51_1();
            OUTLINED_FUNCTION_114_0();
            v53 = OUTLINED_FUNCTION_18();
            sub_1E3C8F60C(v44, v52 & 1, v53 & 1, v50, v51);

            sub_1E4203DA4();
            OUTLINED_FUNCTION_59();
            OUTLINED_FUNCTION_179_0();
            v54 = (v23 + *(v32 + 36));
            *v54 = v84;
            v54[1] = v85;
            v54[2] = v86;
            if (sub_1E3926038())
            {
              OUTLINED_FUNCTION_26_0();
              (*(v55 + 904))();
            }

            sub_1E37AC740();
            sub_1E3E03528();

            sub_1E325F69C(v23, &qword_1ECF29CC0);
            if (sub_1E3CCE24C(*(v78 + 120)) && [objc_opt_self() isMac])
            {
              OUTLINED_FUNCTION_8();
              (*(v61 + 152))(v87);
              sub_1E4203DA4();
              OUTLINED_FUNCTION_59();
              OUTLINED_FUNCTION_178_1();
              v76 = 0;
              v62 = 1;
            }

            else
            {
              OUTLINED_FUNCTION_113_2(&a12);
              v62 = 0;
              v76 = 1;
            }

            v63 = *(v80 + 16);
            v63(v79, v83, v81);
            v64 = OUTLINED_FUNCTION_87_2();
            (v63)(v64);
            v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CD0, &qword_1E42B36B0) + 48);

            OUTLINED_FUNCTION_180();

            v66 = (v82 + v65);
            *v66 = 0;
            v66[1] = v62;
            OUTLINED_FUNCTION_174(v82 + v65);
            OUTLINED_FUNCTION_112_3(v67);
            *(v68 + 64) = v76;
            v69 = *(v80 + 8);
            v70 = OUTLINED_FUNCTION_157_0();
            v69(v70);
            v71 = OUTLINED_FUNCTION_168();
            v69(v71);
            sub_1E3741EA0(v82, v75, &qword_1ECF29CB0, &qword_1E429C958);
            v72 = OUTLINED_FUNCTION_22_1();
            __swift_storeEnumTagSinglePayload(v72, v73, v74, v28);
            OUTLINED_FUNCTION_54_0();
            return;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
}

void sub_1E37A3AB0()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CD8, &qword_1E429C980);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CE0, &qword_1E429C988);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v96 = v9;
  v10 = OUTLINED_FUNCTION_138();
  type metadata accessor for MediaTags(v10);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CE8, &qword_1E429C990);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_5();
  v95 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v98 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CF0, &unk_1E429C998);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v100 = v22;
  if ((*(*v4 + 392))())
  {
    v99 = v20;
    type metadata accessor for MediaShowcasingMetadataLayout();
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      v24 = v23;
      v93 = v6;
      v25 = (*(*v4 + 552))();
      if (v25)
      {
        *(&v105 + 1) = &unk_1F5D7BE68;
        *&v106 = &off_1F5D7BC48;
        LOBYTE(v104) = 6;
        sub_1E3F9F164(&v104, v25, MEMORY[0x1E69E7CA0] + 8);

        __swift_destroy_boxed_opaque_existential_1(&v104);
        if (*(&v102 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
          if (swift_dynamicCast())
          {
            v26 = *(v104 + 16);

            if (v26)
            {
              if (sub_1E3CCE24C(*(v24 + 120)) && (OUTLINED_FUNCTION_183_0(), v27 > 0.0))
              {
                OUTLINED_FUNCTION_183_0();
                sub_1E4203DA4();
                OUTLINED_FUNCTION_59();
                OUTLINED_FUNCTION_52_1();
                OUTLINED_FUNCTION_161_1();
                v112 = 1;
                v111 = v28;
                v110 = v29;
                v113 = 0;
                OUTLINED_FUNCTION_103_2(v30);
                v103 = 0;
              }

              else
              {
                type metadata accessor for ViewRepresentableProperties(0);
                OUTLINED_FUNCTION_17_16();
                sub_1E37ADD34(v46);
                v47 = sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_firstBaselineFromTop;
                OUTLINED_FUNCTION_25();
                swift_beginAccess();
                v48 = *v47;
                LOBYTE(v47) = *(v47 + 8);

                v49 = 0uLL;
                v50 = -1;
                if (v47)
                {
                  v51 = 0uLL;
                  v52 = 0uLL;
                  v53 = 0uLL;
LABEL_26:
                  v88 = v53;
                  v89 = v52;
                  v90 = v51;
                  v91 = v50;
                  v92 = v49;
                  type metadata accessor for ViewRepresentableProperties(0);
                  OUTLINED_FUNCTION_17_16();
                  sub_1E37ADD34(v57);

                  v58 = v2;
                  sub_1E4200BC4();
                  v59 = OUTLINED_FUNCTION_154_0();
                  sub_1E3820C20(v59, v60, 0, v61, 40, v62);
                  v63 = [v58 textLayout];
                  v86 = [v63 blendMode];

                  sub_1E37AD0DC(v86, *(v24 + 120));
                  sub_1E37ADD34(&unk_1EE23BD30);
                  LOBYTE(v104) = 0;
                  sub_1E37B93F0();
                  sub_1E37ADE2C(v14, type metadata accessor for MediaTags);
                  v64 = v4[3];
                  v65 = (v98 + *(v15 + 52));
                  *v65 = v4[2];
                  v65[1] = v64;
                  v66 = *(v24 + 120);

                  if ((sub_1E3CCE22C(v66) & 1) != 0 && (OUTLINED_FUNCTION_183_0(), v67 > 0.0))
                  {
                    OUTLINED_FUNCTION_183_0();
                    sub_1E4203DA4();
                    OUTLINED_FUNCTION_59();
                    OUTLINED_FUNCTION_52_1();
                    v94 = 0;
                    v97 = v104;
                    v85 = v106;
                    v87 = v105;
                    v112 = 1;
                    v111 = BYTE8(v104);
                    v110 = BYTE8(v105);
                    v68 = 1;
                    v69 = BYTE8(v104);
                    v83 = BYTE8(v105);
                    v84 = *(&v106 + 1);
                    LOBYTE(v101) = 0;
                  }

                  else
                  {
                    v97 = 0;
                    v85 = 0;
                    v87 = 0;
                    v83 = 0;
                    v84 = 0;
                    v69 = 0;
                    v68 = 0;
                    v94 = 1;
                  }

                  sub_1E3743538(v98, v95, &qword_1ECF29CE8, &qword_1E429C990);
                  *v96 = v92;
                  *(v96 + 16) = v90;
                  *(v96 + 32) = v89;
                  *(v96 + 48) = v88;
                  *(v96 + 64) = v91;
                  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D00, &qword_1E429C9B0);
                  sub_1E3743538(v95, v96 + *(v70 + 48), &qword_1ECF29CE8, &qword_1E429C990);
                  v71 = v96 + *(v70 + 64);
                  *v71 = 0;
                  *(v71 + 8) = v68;
                  *(v71 + 16) = v97;
                  *(v71 + 24) = v69;
                  *(v71 + 32) = v87;
                  *(v71 + 40) = v83;
                  *(v71 + 48) = v85;
                  *(v71 + 56) = v84;
                  *(v71 + 64) = v94;
                  sub_1E325F69C(v95, &qword_1ECF29CE8);
                  v72 = OUTLINED_FUNCTION_168();
                  sub_1E3743538(v72, v73, &qword_1ECF29CE0, &qword_1E429C988);
                  swift_storeEnumTagMultiPayload();
                  v4 = &qword_1ECF28D60;
                  v74 = OUTLINED_FUNCTION_120();
                  __swift_instantiateConcreteTypeFromMangledNameV2(v74, v75);
                  OUTLINED_FUNCTION_6_1();
                  sub_1E37AE398(v76);
                  sub_1E37AD240(&qword_1EE2897B8);
                  OUTLINED_FUNCTION_140_4();
                  OUTLINED_FUNCTION_18_5();
                  sub_1E4201F44();

                  v77 = OUTLINED_FUNCTION_89_2();
                  sub_1E325F69C(v77, v78);
                  sub_1E325F69C(v98, &qword_1ECF29CE8);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CF8, &qword_1E429C9A8);
                  OUTLINED_FUNCTION_114();
                  __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
                  v42 = v99;
                  v6 = v93;
                  goto LABEL_20;
                }

                v51 = 0uLL;
                v52 = 0uLL;
                v53 = 0uLL;
                if (v48 <= 0.0)
                {
                  goto LABEL_26;
                }

                [v2 margin];
                sub_1E4203DA4();
                OUTLINED_FUNCTION_59();
                OUTLINED_FUNCTION_52_1();
                OUTLINED_FUNCTION_161_1();
                v111 = 1;
                v110 = v54;
                v109 = v55;
                v112 = 1;
                OUTLINED_FUNCTION_103_2(v56);
                v103 = 1;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D60, &qword_1E42984E0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D08, &unk_1E429C9B8);
              sub_1E37AD240(&qword_1EE2897B8);
              sub_1E37AD240(&qword_1EE289A20);
              sub_1E4201F44();
              v49 = v104;
              v51 = v105;
              v52 = v106;
              v53 = v107;
              v50 = v108;
              goto LABEL_26;
            }
          }

LABEL_16:
          if (sub_1E3CCE22C(*(v24 + 120)))
          {
            [v2 margin];
            sub_1E4203DA4();
            OUTLINED_FUNCTION_59();
            OUTLINED_FUNCTION_52_1();
            v36 = v104;
            LOBYTE(v101) = 1;
            v114 = BYTE8(v104);
            v113 = BYTE8(v105);
            *v0 = 0;
            *(v0 + 8) = 1;
            OUTLINED_FUNCTION_163_0(v36);
            *(v0 + 48) = v106;
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D60, &qword_1E42984E0);
            OUTLINED_FUNCTION_6_1();
            sub_1E37AE398(v37);
            OUTLINED_FUNCTION_82();
            sub_1E37AD240(v38);
            OUTLINED_FUNCTION_140_4();
            sub_1E4201F44();

            v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CF8, &qword_1E429C9A8);
            v40 = v4;
            v41 = 0;
          }

          else
          {

            v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CF8, &qword_1E429C9A8);
            v4 = v100;
            v40 = v100;
            v41 = 1;
          }

          __swift_storeEnumTagSinglePayload(v40, v41, 1, v39);
          v42 = v99;
LABEL_20:
          sub_1E3741EA0(v4, v6, &qword_1ECF29CF0, &unk_1E429C998);
          OUTLINED_FUNCTION_114();
          __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
          OUTLINED_FUNCTION_54_0();
          return;
        }
      }

      else
      {
        v101 = 0u;
        v102 = 0u;
      }

      sub_1E325F69C(&v101, &unk_1ECF296E0);
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
}

void sub_1E37A4508()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_91_1(v3, v4);
  OUTLINED_FUNCTION_82_3();
  v28[6] = v5;
  MEMORY[0x1EEE9AC00](v6);
  v28[2] = OUTLINED_FUNCTION_43_8(v28);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  v28[0] = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  v28[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D10, &qword_1E429C9C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D18, &qword_1E429C9D0);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v28[7] = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_34_1();
  v14 = sub_1E379EF14();
  OUTLINED_FUNCTION_129_0(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D20, &qword_1E429C9D8);
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_175_0();
  sub_1E37A4820();
  v15 = OUTLINED_FUNCTION_51_6();
  v16(v15);
  OUTLINED_FUNCTION_1_58();
  OUTLINED_FUNCTION_148_0();
  OUTLINED_FUNCTION_16_14();
  swift_allocObject();
  OUTLINED_FUNCTION_0_25();
  sub_1E37ADCDC(v8, v17);
  OUTLINED_FUNCTION_1();
  sub_1E37AE398(v18);
  OUTLINED_FUNCTION_135();
  v19 = OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_39_8(v19);

  v20 = OUTLINED_FUNCTION_85_2();
  v21(v20);
  sub_1E325F69C(v2, &qword_1ECF29D10);
  OUTLINED_FUNCTION_25_17((v28[1] + *(v1 + 48)));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  OUTLINED_FUNCTION_147_0(v22);
  v23 = OUTLINED_FUNCTION_26_15();
  (v1)(v23);
  v24 = OUTLINED_FUNCTION_84_3();
  (v1)(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D30, &qword_1E429C9E0);
  v26 = OUTLINED_FUNCTION_24_7(v25);
  v0(v26);
  v27 = OUTLINED_FUNCTION_157_0();
  v0(v27);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37A4820()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v85 = v6;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D38, &qword_1E429C9E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v81 = v8;
  OUTLINED_FUNCTION_138();
  v9 = sub_1E4201B04();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D40, &qword_1E429C9F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v18 = v17;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D48, &qword_1E429C9F8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_5();
  v80 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_3();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D50, &qword_1E429CA00);
  v25 = OUTLINED_FUNCTION_17_2(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_5();
  v79 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25_3();
  v82 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C90, &qword_1E429C930);
  v30 = OUTLINED_FUNCTION_17_2(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_5();
  v78 = v31;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_34_1();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D58, &qword_1E429CA08);
  v34 = OUTLINED_FUNCTION_17_2(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_5();
  v83 = v35;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_23_8();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D60, &qword_1E429CA10);
  v38 = OUTLINED_FUNCTION_17_2(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_25_3();
  sub_1E37A4FA4(v5, v3);
  if (sub_1E3925B38())
  {
    v40 = 1;
  }

  else
  {
    v76 = v0;
    sub_1E37A3AB0();
    if ([objc_opt_self() isPhone])
    {
      v41 = 1;
      v42 = v77;
      v43 = v82;
    }

    else
    {
      sub_1E37A51D4(v5, 15);
      v44 = sub_1E37AD314();
      OUTLINED_FUNCTION_150_0(v44);
      sub_1E325F69C(v18, &qword_1ECF29D40);
      sub_1E4201AF4();
      v45 = OUTLINED_FUNCTION_120();
      v46(v45);
      OUTLINED_FUNCTION_10_24();
      sub_1E37ADD34(v47);
      OUTLINED_FUNCTION_47_4();
      v48 = sub_1E4200E14();
      (*(v11 + 8))(v15, v9);
      v42 = v77;
      *(v23 + *(v77 + 36)) = v48;
      v43 = v82;
      sub_1E3741EA0(v23, v82, &qword_1ECF29D48, &qword_1E429C9F8);
      v41 = 0;
    }

    __swift_storeEnumTagSinglePayload(v43, v41, 1, v42);
    sub_1E37A51D4(v5, 16);
    v49 = sub_1E37AD314();
    OUTLINED_FUNCTION_150_0(v49);
    sub_1E325F69C(v18, &qword_1ECF29D40);
    sub_1E4201AF4();
    v50 = OUTLINED_FUNCTION_120();
    v51(v50);
    OUTLINED_FUNCTION_10_24();
    sub_1E37ADD34(v52);
    OUTLINED_FUNCTION_47_4();
    v53 = sub_1E4200E14();
    (*(v11 + 8))(v15, v9);
    *(v23 + *(v42 + 36)) = v53;
    sub_1E3743538(v1, v78, &qword_1ECF29C90, &qword_1E429C930);
    sub_1E3743538(v82, v79, &qword_1ECF29D50, &qword_1E429CA00);
    sub_1E3743538(v23, v80, &qword_1ECF29D48, &qword_1E429C9F8);
    sub_1E3743538(v78, v81, &qword_1ECF29C90, &qword_1E429C930);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D88, &qword_1E429CA20);
    sub_1E3743538(v79, v81 + *(v54 + 48), &qword_1ECF29D50, &qword_1E429CA00);
    sub_1E3743538(v80, v81 + *(v54 + 64), &qword_1ECF29D48, &qword_1E429C9F8);
    v55 = OUTLINED_FUNCTION_169_0();
    sub_1E325F69C(v55, v56);
    sub_1E325F69C(v82, &qword_1ECF29D50);
    sub_1E325F69C(v1, &qword_1ECF29C90);
    v57 = OUTLINED_FUNCTION_115();
    sub_1E325F69C(v57, v58);
    sub_1E325F69C(v79, &qword_1ECF29D50);
    OUTLINED_FUNCTION_55_0();
    sub_1E325F69C(v59, v60);
    v0 = v76;
    sub_1E3741EA0(v81, v76, &qword_1ECF29D38, &qword_1E429C9E8);
    v40 = 0;
  }

  __swift_storeEnumTagSinglePayload(v0, v40, 1, v84);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v61, v62, v63, v64);
  sub_1E3743538(v0, v83, &qword_1ECF29D58, &qword_1E429CA08);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v65, v66, v67, v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D90, &qword_1E429CA28);
  sub_1E3743538(v83, v85 + *(v69 + 48), &qword_1ECF29D58, &qword_1E429CA08);
  v70 = OUTLINED_FUNCTION_89_2();
  sub_1E325F69C(v70, v71);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v72, v73);
  sub_1E325F69C(v83, &qword_1ECF29D58);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v74, v75);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37A51D4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_0();
  v5 = (*(v4 + 488))();
  if (v5)
  {
    v12 = sub_1E373E010(a2, v5, v6);

    if (v12)
    {
      if (*v12 == _TtC8VideosUI13TextViewModel && sub_1E3C27528(v13, v14))
      {
        type metadata accessor for TextLayout();
        v15 = swift_dynamicCastClass();
        if (v15)
        {
          v16 = v15;
          type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
          OUTLINED_FUNCTION_64_5();
          LOBYTE(v22) = v17;
          v23 = v18;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
          sub_1E42038F4();
          if (HIBYTE(v21))
          {
            v19 = 1;
          }

          else
          {
            v19 = 5;
          }

          (*(*v16 + 1984))(v19);
        }
      }
    }
  }

  sub_1E37A5384(a1, a2, v6, v7, v8, v9, v10, v11, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, vars0, vars8);
}

void sub_1E37A5384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_93();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v153 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D78, &qword_1E429CA18);
  OUTLINED_FUNCTION_6_4(v30, &a13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D98, &qword_1E429CA30);
  v34 = OUTLINED_FUNCTION_6_4(v33, &v162);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v36);
  v37 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v41 = (v40 - v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DA0, &qword_1E429CA38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_50_1();
  type metadata accessor for ScaledBaselineRelativeSpacer(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5();
  v46 = v45 - v44;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DA8, &qword_1E429CA40);
  OUTLINED_FUNCTION_6_4(v47, &v161);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_31_2();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DB0, &qword_1E429CA48);
  OUTLINED_FUNCTION_6_4(v49, v160);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DB8, &qword_1E429CA50);
  v53 = OUTLINED_FUNCTION_17_2(v52);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v55);
  v56 = (*(*v28 + 488))();
  if (v56)
  {
    v58 = sub_1E373E010(v26, v56, v57);

    if (v58)
    {
      if (*v58 == _TtC8VideosUI13TextViewModel && sub_1E3C27528(v59, v60))
      {
        OUTLINED_FUNCTION_106();
        type metadata accessor for TextLayout();
        OUTLINED_FUNCTION_20_2();
        v61 = swift_dynamicCastClass();
        if (v61)
        {
          v147 = v61;
          if ((*(*v28 + 392))())
          {
            type metadata accessor for MediaShowcasingMetadataLayout();
            OUTLINED_FUNCTION_20_2();
            v62 = swift_dynamicCastClass();
            OUTLINED_FUNCTION_176();
            if (v62)
            {
              v63 = sub_1E3CCE24C(*(v62 + 120));
              if (v63)
              {
                OUTLINED_FUNCTION_8();
                (*(v65 + 152))(&v154);
                if (![objc_opt_self() isTV])
                {
                  OUTLINED_FUNCTION_38_7();
                  OUTLINED_FUNCTION_79_4();
LABEL_36:
                  sub_1E4203DA4();
                  OUTLINED_FUNCTION_59();
                  OUTLINED_FUNCTION_178_1();
                  v87 = *&v154;
                  LOBYTE(v159[0]) = 1;
                  LOBYTE(v157) = v155;
                  *v150 = 0;
                  *(v150 + 8) = 1;
                  OUTLINED_FUNCTION_163_0(v87);
                  *(v150 + 48) = v156;
                  swift_storeEnumTagMultiPayload();
                  v88 = OUTLINED_FUNCTION_32_0();
                  __swift_instantiateConcreteTypeFromMangledNameV2(v88, v89);
                  OUTLINED_FUNCTION_21_1();
                  sub_1E37AD240(v90);
                  OUTLINED_FUNCTION_63_5();
                  sub_1E37A684C(v91);
                  sub_1E4201F44();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DC0, &qword_1E429CA58);
                  OUTLINED_FUNCTION_114();
                  __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
                  goto LABEL_43;
                }

                (*(*v28 + 552))();
                OUTLINED_FUNCTION_38_7();
                OUTLINED_FUNCTION_79_4();
                if (v66)
                {
                  v160[1] = &unk_1F5D7BE68;
                  v161 = &off_1F5D7BC48;
                  LOBYTE(v159[0]) = 6;
                  sub_1E3F9F164(v159, v66, MEMORY[0x1E69E7CA0] + 8);

                  __swift_destroy_boxed_opaque_existential_1(v159);
                  if (*(&v158 + 1))
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
                    if (swift_dynamicCast())
                    {
                      v67 = *(v159[0] + 16);

                      if (v67)
                      {
                        goto LABEL_36;
                      }
                    }

                    goto LABEL_35;
                  }
                }

                else
                {
                  v157 = 0u;
                  v158 = 0u;
                }

                sub_1E325F69C(&v157, &unk_1ECF296E0);
LABEL_35:
                OUTLINED_FUNCTION_8();
                (*(v86 + 1592))(23);
                goto LABEL_36;
              }

              if (!sub_1E3C27528(v63, v64) || (OUTLINED_FUNCTION_26_0(), (*(v73 + 152))(&v154), , (v156 & 1) != 0) || (v74 = v154, v154 <= 0.0))
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DC0, &qword_1E429CA58);
                OUTLINED_FUNCTION_32_2();
                __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
                OUTLINED_FUNCTION_38_7();
LABEL_42:
                OUTLINED_FUNCTION_79_4();
LABEL_43:
                OUTLINED_FUNCTION_18();
                sub_1E3F23370();
                *(v37 + *(v62 + 36)) = 256;
                if (v22())
                {
                  v113 = swift_dynamicCastClass();
                  if (v113 && (sub_1E3CCE22C(*(v113 + 120)) & 1) != 0)
                  {
                    OUTLINED_FUNCTION_8();
                    (*(v114 + 152))(&v157);
                    sub_1E4203DA4();
                    OUTLINED_FUNCTION_59();
                    sub_1E4200D94();

                    v149 = 0;
                    v148 = 1;
LABEL_49:
                    OUTLINED_FUNCTION_19_1();
                    sub_1E3743538(v115, v116, v117, v118);
                    OUTLINED_FUNCTION_96_2();
                    sub_1E3743538(v119, v120, v121, v122);
                    OUTLINED_FUNCTION_19_1();
                    sub_1E3743538(v123, v124, v125, v126);
                    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DC8, &qword_1E429CA60);
                    OUTLINED_FUNCTION_96_2();
                    sub_1E3743538(v128, v129, v130, v131);
                    v132 = *(v127 + 64);
                    OUTLINED_FUNCTION_176();

                    v133 = (v151 + v132);
                    *v133 = 0;
                    v133[1] = v148;
                    OUTLINED_FUNCTION_174(v151 + v132);
                    OUTLINED_FUNCTION_112_3(v134);
                    *(v135 + 64) = v149;
                    OUTLINED_FUNCTION_55_0();
                    sub_1E325F69C(v136, v137);
                    OUTLINED_FUNCTION_21_1();
                    sub_1E325F69C(v138, v139);
                    OUTLINED_FUNCTION_55_0();
                    sub_1E325F69C(v140, v141);
                    OUTLINED_FUNCTION_21_1();
                    sub_1E325F69C(v142, v143);
                    sub_1E3741EA0(v151, v153, &qword_1ECF29D78, &qword_1E429CA18);
                    v144 = OUTLINED_FUNCTION_22_1();
                    __swift_storeEnumTagSinglePayload(v144, v145, v146, v152);
                    OUTLINED_FUNCTION_54_0();
                    return;
                  }
                }

                OUTLINED_FUNCTION_113_2(&a9);
                v148 = 0;
                v149 = 1;
                goto LABEL_49;
              }

              type metadata accessor for ViewRepresentableProperties(0);
              OUTLINED_FUNCTION_17_16();
              sub_1E37ADD34(v75);
              v76 = sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_bottomBaseline;
              OUTLINED_FUNCTION_25();
              swift_beginAccess();
              v77 = *v76;
              LOBYTE(v76) = *(v76 + 8);

              if (v76 & 1) != 0 || (sub_1E3CCE22C(*(v62 + 120)))
              {
                type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
                sub_1E3746E10(v41);
                v78 = sub_1E3B02A04();
                OUTLINED_FUNCTION_15_5();
                v79(v41, v37);
                if (v78)
                {
                  sub_1E3CCE22C(*(v62 + 120));
                  v80 = 1;
                  OUTLINED_FUNCTION_118_1();
                  if (v81)
                  {
                    goto LABEL_41;
                  }

                  goto LABEL_40;
                }
              }

              else
              {
                v74 = v74 - v77;
              }

              OUTLINED_FUNCTION_118_1();
LABEL_40:
              OUTLINED_FUNCTION_176();

              sub_1E40E4DF0(v147, v46, v74);
              v96 = OUTLINED_FUNCTION_13_8();
              sub_1E37AD3C4(v96, v97);
              OUTLINED_FUNCTION_114_0();
              swift_storeEnumTagMultiPayload();
              sub_1E37ADD34(&unk_1EE249C10);
              OUTLINED_FUNCTION_142_0();
              sub_1E4201F44();
              sub_1E37ADE2C(v46, type metadata accessor for ScaledBaselineRelativeSpacer);
              v80 = 0;
LABEL_41:
              v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DD0, &qword_1E429CA68);
              __swift_storeEnumTagSinglePayload(v22, v80, 1, v98);
              OUTLINED_FUNCTION_19_1();
              sub_1E3743538(v99, v100, v101, v102);
              OUTLINED_FUNCTION_98();
              swift_storeEnumTagMultiPayload();
              v103 = OUTLINED_FUNCTION_34();
              __swift_instantiateConcreteTypeFromMangledNameV2(v103, v104);
              OUTLINED_FUNCTION_55_0();
              sub_1E37AD240(v105);
              OUTLINED_FUNCTION_63_5();
              OUTLINED_FUNCTION_21_1();
              sub_1E37A684C(v106);
              OUTLINED_FUNCTION_98();
              sub_1E4201F44();
              OUTLINED_FUNCTION_21_1();
              sub_1E325F69C(v107, v108);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DC0, &qword_1E429CA58);
              OUTLINED_FUNCTION_114();
              __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
              goto LABEL_42;
            }
          }

          else
          {
            OUTLINED_FUNCTION_176();
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
}

uint64_t sub_1E37A6428(double a1, double a2)
{
  v4 = type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_135_0();
  return sub_1E37A1214(a1, a2);
}

void sub_1E37A64D8(uint64_t a1)
{
  sub_1E37A6684(319);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_23_15(v1, &qword_1EE288680, MEMORY[0x1E69E7DE0]);
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_23_15(v3, &qword_1EE288690, &unk_1F5D6AC00);
      if (v5 <= 0x3F)
      {
        sub_1E37A6718(319);
        if (v6 <= 0x3F)
        {
          sub_1E37A67AC(319, &qword_1EE289EC0, MEMORY[0x1E697DBD0]);
          if (v7 <= 0x3F)
          {
            sub_1E37A67AC(319, &qword_1EE289EB0, MEMORY[0x1E697E730]);
            if (v9 <= 0x3F)
            {
              OUTLINED_FUNCTION_23_15(v8, &qword_1EE288668, MEMORY[0x1E69E6370]);
              if (v10 <= 0x3F)
              {
                type metadata accessor for TextBadgePresenter(319);
                if (v11 <= 0x3F)
                {
                  sub_1E37A67FC(319, qword_1EE27C0E8, &type metadata for ButtonViewContext, MEMORY[0x1E69E6720]);
                  if (v12 <= 0x3F)
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

void sub_1E37A6684(uint64_t a1)
{
  if (!qword_1EE289D08)
  {
    type metadata accessor for MediaShowcasingMetadataPresenter(255);
    sub_1E37ADD34(&unk_1EE241948);
    v1 = sub_1E42010F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289D08);
    }
  }
}

void sub_1E37A6718(uint64_t a1)
{
  if (!qword_1EE289E28)
  {
    type metadata accessor for ViewRepresentableProperties(255);
    sub_1E37ADD34(&qword_1EE24D450);
    v1 = sub_1E4200BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289E28);
    }
  }
}

void sub_1E37A67AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_20_2();
    v4 = sub_1E4200B94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E37A67FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1E37A684C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E37A68C0()
{
  result = qword_1ECF29C10;
  if (!qword_1ECF29C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29A98, &qword_1E429C788);
    sub_1E37A071C();
    sub_1E37A10D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29C10);
  }

  return result;
}

void sub_1E37A694C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_4();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v31 = v30;
  v110 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29F80, &qword_1E429CBF0);
  v34 = OUTLINED_FUNCTION_17_2(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_5();
  v111 = v35;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_152_0(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C90, &qword_1E429C930);
  v39 = OUTLINED_FUNCTION_17_2(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_5();
  v108 = v40;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_25_3();
  v109 = v42;
  OUTLINED_FUNCTION_138();
  sub_1E4201B04();
  OUTLINED_FUNCTION_0_10();
  v103 = v44;
  v104 = v43;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_2_5();
  v102 = v45;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_78();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29D40, &qword_1E429C9F0);
  OUTLINED_FUNCTION_6_4(v47, &a22);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_50_1();
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29F88, &qword_1E429CBF8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_2_5();
  v106 = v50;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_25_3();
  v112 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29F90, &qword_1E429CC00);
  OUTLINED_FUNCTION_17_2(v53);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_31_2();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29F98, &qword_1E429CC08);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_2_5();
  v105 = v57;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v58);
  v60 = v100 - v59;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_25_3();
  v63 = v62;
  sub_1E37A6FC4(v31, v29);
  OUTLINED_FUNCTION_8();
  (*(v64 + 152))(v113);
  if (v114)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v67.n128_u64[0] = v113[2];
    v68.n128_u64[0] = v113[3];
    v65.n128_u64[0] = v113[0];
    v66.n128_u64[0] = v113[1];
    j_nullsub_1(v65, v66, v67, v68);
  }

  OUTLINED_FUNCTION_3();
  v69 = sub_1E4202734();
  v70 = OUTLINED_FUNCTION_123_1();
  sub_1E3741EA0(v70, v71, v72, v73);
  v74 = &v60[*(v55 + 36)];
  *v74 = v69;
  OUTLINED_FUNCTION_11_4(v74);
  v75 = v63;
  v100[0] = v63;
  sub_1E3741EA0(v60, v63, &qword_1ECF29F98, &qword_1E429CC08);
  sub_1E37A51D4(v31, 15);
  sub_1E37AD314();
  v76 = v112;
  OUTLINED_FUNCTION_156_2();
  sub_1E38838AC(v77, v78, v79, v100[1], v80, v81);
  sub_1E325F69C(v24, &qword_1ECF29D40);
  sub_1E4201AF4();
  v82 = v103;
  v83 = v104;
  (*(v103 + 16))(v102, v25, v104);
  OUTLINED_FUNCTION_10_24();
  sub_1E37ADD34(v84);
  v85 = sub_1E4200E14();
  (*(v82 + 8))(v25, v83);
  *(v76 + *(v101 + 36)) = v85;
  v86 = v109;
  sub_1E37A3AB0();
  v87 = v107;
  sub_1E37A71F0();
  v88 = v105;
  sub_1E3743538(v75, v105, &qword_1ECF29F98, &qword_1E429CC08);
  v89 = v106;
  sub_1E3743538(v76, v106, &qword_1ECF29F88, &qword_1E429CBF8);
  v90 = v108;
  sub_1E3743538(v86, v108, &qword_1ECF29C90, &qword_1E429C930);
  v91 = v111;
  sub_1E3743538(v87, v111, &qword_1ECF29F80, &qword_1E429CBF0);
  v92 = v87;
  v93 = v90;
  v94 = v110;
  sub_1E3743538(v88, v110, &qword_1ECF29F98, &qword_1E429CC08);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29FA0, &qword_1E429CC10);
  sub_1E3743538(v89, v94 + v95[12], &qword_1ECF29F88, &qword_1E429CBF8);
  sub_1E3743538(v93, v94 + v95[16], &qword_1ECF29C90, &qword_1E429C930);
  sub_1E3743538(v91, v94 + v95[20], &qword_1ECF29F80, &qword_1E429CBF0);
  sub_1E325F69C(v92, &qword_1ECF29F80);
  sub_1E325F69C(v86, &qword_1ECF29C90);
  sub_1E325F69C(v112, &qword_1ECF29F88);
  sub_1E325F69C(v100[0], &qword_1ECF29F98);
  sub_1E325F69C(v91, &qword_1ECF29F80);
  sub_1E325F69C(v93, &qword_1ECF29C90);
  v96 = OUTLINED_FUNCTION_74();
  sub_1E325F69C(v96, v97);
  v98 = OUTLINED_FUNCTION_139_0();
  sub_1E325F69C(v98, v99);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E37A71F0()
{
  OUTLINED_FUNCTION_93();
  v74 = v0;
  v80 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29FA8, &qword_1E429CC18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v78 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v76 = v6;
  v77 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v75 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_3();
  v79 = v9;
  v10 = OUTLINED_FUNCTION_138();
  v11 = type metadata accessor for ScaledBaselineRelativeSpacer(v10);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v73 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = (v19 - v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29FB0, &qword_1E429CC20);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v69 - v27;
  OUTLINED_FUNCTION_36();
  v30 = (*(v29 + 488))();
  if (v30)
  {
    v32 = sub_1E373E010(14, v30, v31);

    if (v32)
    {
      if (*v32 == _TtC8VideosUI13TextViewModel)
      {
        OUTLINED_FUNCTION_8();
        v34 = (*(v33 + 392))();
        if (v34)
        {
          v35 = v34;
          type metadata accessor for MediaShowcasingMetadataLayout();
          v36 = swift_dynamicCastClass();
          if (v36)
          {
            v72 = v36;
            if (sub_1E3C27528(v36, v37))
            {
              OUTLINED_FUNCTION_106();
              type metadata accessor for TextLayout();
              OUTLINED_FUNCTION_20_2();
              if (swift_dynamicCastClass())
              {
                v69[2] = v35;
                OUTLINED_FUNCTION_26_0();
                v39 = *(v38 + 152);
                v70 = v40;
                v71 = v39;
                v69[1] = v38 + 152;

                (v71)(&v81, v41);
                v71 = v32;

                if (v82)
                {
                  v42 = 0.0;
                }

                else
                {
                  v42 = v81;
                }

                type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
                sub_1E3746E10(v20);
                v43 = sub_1E3B02A04();
                v44 = OUTLINED_FUNCTION_124();
                v45(v44);
                if (v43 & 1) != 0 && (sub_1E3CCE22C(*(v72 + 120)))
                {
                  v46 = 1;
                }

                else
                {

                  sub_1E40E4DF0(v70, v15, v42);
                  sub_1E37ADCDC(v15, v28);
                  v46 = 0;
                }

                __swift_storeEnumTagSinglePayload(v28, v46, 1, v11);
                OUTLINED_FUNCTION_18();
                v47 = v79;
                sub_1E3F23370();
                v48 = OUTLINED_FUNCTION_159();
                sub_1E3743538(v48, v49, v50, v51);
                v53 = v75;
                v52 = v76;
                v54 = *(v76 + 16);
                v55 = v77;
                v54(v75, v47, v77);
                v56 = v78;
                sub_1E3743538(v25, v78, &qword_1ECF29FB0, &qword_1E429CC20);
                v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29FB8, &qword_1E429CC28);
                v54(v56 + *(v57 + 48), v53, v55);

                v58 = *(v52 + 8);
                v58(v79, v55);
                sub_1E325F69C(v28, &qword_1ECF29FB0);
                v58(v53, v55);
                v59 = OUTLINED_FUNCTION_98();
                sub_1E325F69C(v59, v60);
                sub_1E3741EA0(v56, v80, &qword_1ECF29FA8, &qword_1E429CC18);
                v61 = OUTLINED_FUNCTION_22_1();
                __swift_storeEnumTagSinglePayload(v61, v62, v63, v2);
                OUTLINED_FUNCTION_54_0();
                return;
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
}

void sub_1E37A77A8()
{
  OUTLINED_FUNCTION_31_1();
  v61 = v2;
  v62 = v3;
  v53 = v4;
  v6 = v5;
  type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
  OUTLINED_FUNCTION_162_1();
  v55 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v54 = v9;
  OUTLINED_FUNCTION_43_8(&v52);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29F18, &qword_1E429CB98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_5();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29F20, &qword_1E429CBA0);
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_5();
  v60 = v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  v56 = v20;
  v21 = v6 + *(v0 + 48);
  v23 = *(v21 + 8);
  v64 = *v21;
  v22 = v64;
  v65 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  OUTLINED_FUNCTION_147_0(v24);
  HIDWORD(v52) = v63;
  v64 = v22;
  v65 = v23;
  sub_1E42038F4();
  if (v63 == 1)
  {
    v25 = sub_1E4201D44();
  }

  else
  {
    v25 = sub_1E4201D54();
  }

  v26 = v25;
  v27 = [objc_opt_self() isTV];
  v28 = 0x4018000000000000;
  if (!v27)
  {
    v28 = 0;
  }

  *v1 = v26;
  *(v1 + 8) = v28;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29F28, &qword_1E429CBA8);
  OUTLINED_FUNCTION_100_0();
  sub_1E37A7C00(v6, v53);
  OUTLINED_FUNCTION_111_0();
  v29(v13);
  OUTLINED_FUNCTION_1_58();
  v30 = v57;
  sub_1E37AD3C4(v6, v57);
  OUTLINED_FUNCTION_16_14();
  v31 = (v54 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  OUTLINED_FUNCTION_0_25();
  sub_1E37ADCDC(v30, v33);
  *(v32 + v31) = v61;
  OUTLINED_FUNCTION_1();
  v35 = sub_1E37AE398(v34);

  v36 = v58;
  OUTLINED_FUNCTION_138_0();
  v37 = OUTLINED_FUNCTION_51_1();
  v38 = v56;
  sub_1E3D951F8(v13, v37 & 1, sub_1E37AD6B8, v32, v36, v35);

  v39 = OUTLINED_FUNCTION_120();
  v40(v39);
  v41 = OUTLINED_FUNCTION_134_0();
  sub_1E325F69C(v41, v42);
  v43 = *(v16 + 16);
  v45 = v59;
  v44 = v60;
  v46 = OUTLINED_FUNCTION_168();
  v43(v46);
  v47 = v62;
  *v62 = 0;
  v48 = BYTE4(v52);
  *(v47 + 8) = BYTE4(v52);
  *(v47 + 9) = v48 ^ 1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29F38, &qword_1E429CBB0);
  (v43)(v47 + *(v49 + 48), v44, v45);
  v50 = v47 + *(v49 + 64);
  *v50 = 0;
  v50[8] = 1;
  v51 = *(v16 + 8);
  v51(v38, v45);
  v51(v44, v45);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37A7F88()
{
  OUTLINED_FUNCTION_9_4();
  v71[1] = v3;
  v5 = v4;
  v7 = v6;
  v83 = v8;
  v81 = type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
  OUTLINED_FUNCTION_0_10();
  v76 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v77 = v11;
  OUTLINED_FUNCTION_17_3(v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v79 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v15 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29FF8, &qword_1E429CC60);
  OUTLINED_FUNCTION_17_2(v16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_5();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A000, &qword_1E429CC68);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_20_1();
  v71[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A008, &qword_1E429CC70);
  OUTLINED_FUNCTION_0_10();
  v71[0] = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A010, &qword_1E429CC78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_19_2();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A018, &qword_1E429CC80);
  OUTLINED_FUNCTION_0_10();
  v73 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_5();
  v75 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v28);
  v29 = sub_1E4201D54();
  OUTLINED_FUNCTION_8();
  (*(v30 + 176))(v87);
  v31 = v87[2];
  v32 = v88 & 1;
  if (v88)
  {
    v31 = 0;
  }

  *v2 = v29;
  *(v2 + 8) = v31;
  *(v2 + 16) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A020, &qword_1E429CC88);
  OUTLINED_FUNCTION_100_0();
  v82 = v5;
  sub_1E37A8648();
  v33 = v89;
  (*(*v7 + 152))(v89);
  if (v90)
  {
    v33 = MEMORY[0x1E69DDCE0];
    v35.n128_u64[0] = *(MEMORY[0x1E69DDCE0] + 8);
    v36.n128_u64[0] = *(MEMORY[0x1E69DDCE0] + 16);
    v37.n128_u64[0] = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v35.n128_u64[0] = v89[1];
    v36.n128_u64[0] = v89[2];
    v37.n128_u64[0] = v89[3];
  }

  v34.n128_u64[0] = *v33;
  j_nullsub_1(v34, v35, v36, v37);
  OUTLINED_FUNCTION_3();
  v38 = sub_1E4202734();
  sub_1E3741EA0(v2, v1, &qword_1ECF29FF8, &qword_1E429CC60);
  v39 = (v1 + *(v18 + 36));
  *v39 = v38;
  OUTLINED_FUNCTION_11_4(v39);
  sub_1E37AD914();
  OUTLINED_FUNCTION_156_2();
  sub_1E38838AC(v40, v41, v42, v18, v43, v44);
  sub_1E325F69C(v1, &qword_1ECF2A000);
  sub_1E42036E4();
  swift_getKeyPath();
  v45 = v0 + *(v22 + 36);
  OUTLINED_FUNCTION_114_0();
  sub_1E37A979C();

  v46 = sub_1E4203DA4();
  v48 = v47;
  v49 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A038, &qword_1E429CCC0) + 36));
  *v49 = v46;
  v49[1] = v48;
  v50 = OUTLINED_FUNCTION_169_0();
  v51(v50);
  v52 = v79;
  OUTLINED_FUNCTION_111_0();
  v53 = v78;
  v54 = v80;
  v55(v78);
  OUTLINED_FUNCTION_1_58();
  v56 = v72;
  sub_1E37AD3C4(v82, v72);
  OUTLINED_FUNCTION_16_14();
  v57 = swift_allocObject();
  OUTLINED_FUNCTION_0_25();
  sub_1E37ADCDC(v56, v58);
  v59 = sub_1E37ADBE8();
  v60 = OUTLINED_FUNCTION_51_1();
  v61 = v71[2];
  sub_1E3D951F8(v53, v60 & 1, sub_1E37ADB78, v57, v22, v59);

  (*(v52 + 8))(v53, v54);
  sub_1E325F69C(v0, &qword_1ECF2A010);
  OUTLINED_FUNCTION_64_5();
  v85 = v62;
  v86 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E42038F4();
  LOBYTE(v57) = v84;
  LOBYTE(v59) = v84 ^ 1;
  v64 = v73;
  v65 = *(v73 + 16);
  (v65)(v75, v61, v74);
  v66 = v83;
  OUTLINED_FUNCTION_167_0();
  v65();
  v67 = v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A050, &qword_1E429CCC8) + 48);
  *v67 = 0;
  *(v67 + 8) = v59;
  *(v67 + 9) = v57;
  v68 = *(v64 + 8);
  v69 = OUTLINED_FUNCTION_160_1();
  v68(v69);
  v70 = OUTLINED_FUNCTION_146();
  v68(v70);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E37A8648()
{
  OUTLINED_FUNCTION_93();
  v69 = v1;
  v3 = v2;
  v5 = v4;
  v76 = v6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A080, &qword_1E429CD00);
  OUTLINED_FUNCTION_0_10();
  v68 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v67 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A088, &qword_1E429CD08);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v75 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v73 = v14;
  OUTLINED_FUNCTION_138();
  sub_1E4201B04();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_78();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A090, &qword_1E429CD10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A098, &qword_1E429CD18);
  OUTLINED_FUNCTION_0_10();
  v71 = v22;
  v72 = v21;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  v70 = v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_77_0();
  *v20 = sub_1E4201B84();
  *(v20 + 1) = 0;
  v20[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A0A0, &qword_1E429CD20);
  v66 = v5;
  v25 = v69;
  sub_1E37A8C80();
  sub_1E4201AF4();
  v26 = OUTLINED_FUNCTION_171_0();
  v27(v26);
  OUTLINED_FUNCTION_10_24();
  sub_1E37ADD34(v28);
  OUTLINED_FUNCTION_146();
  v29 = sub_1E4200E14();
  v30 = OUTLINED_FUNCTION_87_2();
  v31(v30);
  *&v20[*(v17 + 36)] = v29;
  sub_1E37ADE84();
  v32 = 1;
  sub_1E4202E74();
  v33 = sub_1E325F69C(v20, &qword_1ECF2A090);
  v34 = (*(*v3 + 488))(v33);
  if (!v34)
  {
    goto LABEL_5;
  }

  v36 = sub_1E373E010(59, v34, v35);

  if (!v36)
  {
    v32 = 1;
LABEL_5:
    v51 = v73;
    v50 = v74;
    goto LABEL_6;
  }

  v37 = *(v25 + 208);
  v38 = type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
  memcpy(v80, (v66 + *(v38 + 48)), 0x5AuLL);
  v82 = 0u;
  v83 = 0u;
  v81 = 1;
  v84 = 0;
  v78 = 0;
  memset(v77, 0, sizeof(v77));

  sub_1E3743538(v80, v79, &qword_1ECF299E0, &qword_1E429C6D0);
  v39 = sub_1E383C8A8();
  v40 = sub_1E383C8B0();
  v41 = sub_1E383C8FC(v36, v37, v80, v40, &v81, 0, 1, v77, v79, v39);
  v42 = (*(*v36 + 320))(v41);
  sub_1E37ADF68(v42, v43, v44);
  v45 = v67;
  v46 = OUTLINED_FUNCTION_75();
  sub_1E40A7FF0(v46, v47, 0, v48, v49);

  sub_1E37ADFBC(v79);
  v51 = v73;
  v50 = v74;
  (*(v68 + 32))(v73, v45, v74);
  v32 = 0;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v51, v32, 1, v50);
  v53 = v70;
  v52 = v71;
  v54 = *(v71 + 16);
  v55 = v0;
  v56 = v72;
  v54(v70, v55, v72);
  v57 = v75;
  sub_1E3743538(v51, v75, &qword_1ECF2A088, &qword_1E429CD08);
  v58 = v76;
  v59 = OUTLINED_FUNCTION_139_0();
  (v54)(v59);
  v60 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A0C8, &qword_1E429CD38) + 48);
  sub_1E3743538(v57, v60, &qword_1ECF2A088, &qword_1E429CD08);
  sub_1E325F69C(v51, &qword_1ECF2A088);
  v61 = *(v52 + 8);
  v62 = OUTLINED_FUNCTION_170_0();
  v61(v62);
  v63 = OUTLINED_FUNCTION_168();
  sub_1E325F69C(v63, v64);
  (v61)(v53, v56);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E37A8C80()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v41 = v3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A0D0, &qword_1E429CD40);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_5();
  v42 = v5;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_3();
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A0D8, &qword_1E429CD48);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_31_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A0E0, &qword_1E429CD50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_20_1();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A0E8, &qword_1E429CD58);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v17 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v20 = v19;
  sub_1E37A9058();
  v21 = sub_1E3926038();
  if (v21)
  {
    OUTLINED_FUNCTION_8();
    v23 = (*(v22 + 824))();
  }

  else
  {
    v23 = 0;
  }

  v24 = OUTLINED_FUNCTION_123_1();
  sub_1E3741EA0(v24, v25, v26, v27);
  v28 = v0 + *(v11 + 52);
  *v28 = v23;
  *(v28 + 8) = v21 == 0;
  OUTLINED_FUNCTION_69();
  v30 = sub_1E37AE398(v29);
  sub_1E40A7FF0(0x676F6C5F6D616574, 0xE90000000000006FLL, 9, v11, v30);
  sub_1E325F69C(v0, &qword_1ECF2A0E0);
  v31 = sub_1E37A9650(v8);
  *(v8 + *(v40 + 52)) = (*(*v2 + 1560))(v31);
  v32 = *(v14 + 16);
  v33 = OUTLINED_FUNCTION_134_0();
  v32(v33);
  sub_1E3743538(v8, v42, &qword_1ECF2A0D0, &qword_1E429CD40);
  (v32)(v41, v17, v39);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A0F8, &qword_1E429CD60);
  sub_1E3743538(v42, v41 + *(v34 + 48), &qword_1ECF2A0D0, &qword_1E429CD40);
  sub_1E325F69C(v8, &qword_1ECF2A0D0);
  v35 = *(v14 + 8);
  v35(v20, v39);
  v36 = OUTLINED_FUNCTION_124();
  sub_1E325F69C(v36, v37);
  v38 = OUTLINED_FUNCTION_99_0();
  (v35)(v38);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37A9058()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A170, &qword_1E429CDD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_2();
  v5 = sub_1E42037D4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A178, &qword_1E429CDE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_49_2();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A180, &qword_1E429CDE8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1E39258D4();
  if (v18)
  {
    v61 = v18;
    sub_1E381AC64(v61);
    (*(v7 + 104))(v11, *MEMORY[0x1E6981630], v5);
    OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_135();
    v19 = sub_1E4203824();

    v20 = OUTLINED_FUNCTION_102_3();
    v21(v20);
    v66 = v19;
    LOWORD(v67) = 257;
    v22 = *(v3 + 184);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1B0, &unk_1E429CE00);
    v24 = sub_1E37AE314();
    OUTLINED_FUNCTION_87_2();
    v25 = OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_87_2();
    v26 = OUTLINED_FUNCTION_18();
    sub_1E3C8F60C(v22, v25 & 1, v26 & 1, v23, v24);

    *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1A8, &qword_1E429CDF8) + 36)) = 256;
    v27 = (*(*v22 + 200))();
    (*(*v22 + 304))(v27);
    sub_1E4203DA4();
    OUTLINED_FUNCTION_59();
    sub_1E4200D94();
    OUTLINED_FUNCTION_141();
    v29 = (v1 + v28);
    v30 = v67;
    *v29 = v66;
    v29[1] = v30;
    v29[2] = v68;
    v31 = sub_1E4202784();
    (*(*v22 + 176))(&v69);
    v32 = v70;
    v33 = 0uLL;
    v34 = 0uLL;
    if ((v70 & 1) == 0)
    {
      sub_1E4200A54();
      *(&v34 + 1) = v35;
      *(&v33 + 1) = v36;
    }

    v59 = v34;
    v60 = v33;
    sub_1E3741EA0(v1, v16, &qword_1ECF2A178, &qword_1E429CDE0);
    v37 = v16 + *(v62 + 36);
    *v37 = v31;
    *(v37 + 24) = v59;
    *(v37 + 8) = v60;
    *(v37 + 40) = v32 & 1;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v38, v39, v40, v41);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v42, v43, v44, v45);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A188, &qword_1E429CDF0);
    sub_1E37AE108();
    sub_1E37AE3D4();
    sub_1E4201F44();

    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v46, v47);
  }

  else
  {
    sub_1E4203704();
    v48 = sub_1E4203734();

    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_8();
    (*(v50 + 200))();
    OUTLINED_FUNCTION_36();
    (*(v51 + 304))();
    sub_1E4203DA4();
    OUTLINED_FUNCTION_59();
    sub_1E4200D94();
    v52 = sub_1E4202784();
    OUTLINED_FUNCTION_8();
    (*(v53 + 176))(&v66);
    v54 = v68;
    v55 = 0uLL;
    v56 = 0uLL;
    if ((v68 & 1) == 0)
    {
      sub_1E4200A54();
      *(&v55 + 1) = v57;
      *(&v56 + 1) = v58;
    }

    LOBYTE(v69) = v54 & 1;
    *v0 = KeyPath;
    *(v0 + 8) = v48;
    *(v0 + 16) = v63;
    *(v0 + 32) = v64;
    *(v0 + 48) = v65;
    *(v0 + 64) = v52;
    *(v0 + 72) = v55;
    *(v0 + 88) = v56;
    *(v0 + 104) = v54 & 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A188, &qword_1E429CDF0);
    sub_1E37AE108();
    sub_1E37AE3D4();
    OUTLINED_FUNCTION_19_1();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

void *sub_1E37A9650@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_34();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_4();
  v7 = sub_1E4201D54();
  OUTLINED_FUNCTION_8();
  (*(v8 + 152))(v18);
  v9 = v18[2];
  v10 = v19 & 1;
  if (v19)
  {
    v9 = 0;
  }

  *v1 = v7;
  *(v1 + 8) = v9;
  *(v1 + 16) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A108, &qword_1E429CD70);
  OUTLINED_FUNCTION_123_1();
  sub_1E37A9D40();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_94_4();
  v18[1] = 0;
  LOBYTE(v18[0]) = v11;
  OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_96_2();
  sub_1E3741EA0(v12, v13, v14, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A110, &qword_1E429CD78);
  return memcpy((a1 + *(v16 + 36)), __src, 0x70uLL);
}

void sub_1E37A979C()
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A058, &qword_1E429CCD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v53 = v8;
  OUTLINED_FUNCTION_138();
  v49 = sub_1E4203D34();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A060, &qword_1E429CCD8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v14);
  v51 = sub_1E4201534();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_34_1();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A068, &qword_1E429CCE0);
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_26_2();
  v50 = v6;
  v23 = v4;
  if (sub_1E39DFFC8())
  {
    OUTLINED_FUNCTION_8();
    (*(v24 + 552))(&v55);
    v25 = 0.0;
    if ((v59 & 1) == 0)
    {
      v25 = sub_1E3952BE8(v55, v56, v57, v58);
    }

    v26 = *(v51 + 20);
    v27 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v28 + 104))(v2 + v26, v27);
    *v2 = v25;
    v2[1] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28990, &unk_1E429CCF0);
    sub_1E37413C4();
    OUTLINED_FUNCTION_62_5();
    sub_1E37ADD34(v29);
    sub_1E3E36744();
    sub_1E37ADE2C(v2, MEMORY[0x1E697EAF0]);
    (*(v21 + 16))(v53, v0, v52);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_72_7();
    sub_1E37ADD74();
    sub_1E4201F44();
    (*(v21 + 8))(v0, v52);
  }

  else
  {
    sub_1E4203D14();
    OUTLINED_FUNCTION_8();
    (*(v30 + 552))(&v55);
    v31 = 0.0;
    if ((v59 & 1) == 0)
    {
      v31 = sub_1E3952BE8(v55, v56, v57, v58);
    }

    v32 = *(v51 + 20);
    v33 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v34 + 104))(v18 + v32, v33);
    *v18 = v31;
    v18[1] = v31;
    v35 = v1 + *(v54 + 36);
    OUTLINED_FUNCTION_155_0();
    v36(v35, v12, v49);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A070, &qword_1E429CCE8);
    sub_1E37ADCDC(v18, &v35[*(v37 + 52)]);
    *&v35[*(v37 + 56)] = 256;
    *v1 = v50;
    v1[1] = v23;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v38, v39, v40, v41);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v42, v43, v44, v45);
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28990, &unk_1E429CCF0);
    sub_1E37413C4();
    OUTLINED_FUNCTION_62_5();
    sub_1E37ADD34(v46);
    OUTLINED_FUNCTION_72_7();
    sub_1E37ADD74();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v47, v48);
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1E37A9F68()
{
  OUTLINED_FUNCTION_31_1();
  v42 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_50_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A140, &qword_1E42B7E30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A160, &qword_1E429CDC0);
  OUTLINED_FUNCTION_0_10();
  v41 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A168, &qword_1E429CDC8);
  OUTLINED_FUNCTION_0_10();
  v40 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_36();
  v15 = (*(v14 + 488))();
  if (v15)
  {
    v17 = sub_1E373E010(23, v15, v16);

    if (v17)
    {
      if (*v17 == _TtC8VideosUI13TextViewModel && sub_1E3C27528(v18, v19))
      {
        type metadata accessor for TextLayout();
        OUTLINED_FUNCTION_20_2();
        if (swift_dynamicCastClass())
        {
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_47_4();
          sub_1E3F23370();
          sub_1E4203DB4();
          OUTLINED_FUNCTION_94_4();
          OUTLINED_FUNCTION_13_22();
          OUTLINED_FUNCTION_155_0();
          v20(v3, v0, v5);
          memcpy((v3 + *(v7 + 36)), v43, 0x70uLL);
          v21 = *(*v17 + 320);

          v23 = v21(v22);
          v25 = v24;

          if (v25)
          {
            v26 = v23;
          }

          else
          {
            v26 = 0x7469745F6C747563;
          }

          if (v25)
          {
            v27 = v25;
          }

          else
          {
            v27 = 0xEA0000000000656CLL;
          }

          v28 = sub_1E37AE064();
          sub_1E40A7FF0(v26, v27, 6, v7, v28);

          sub_1E325F69C(v3, &qword_1ECF2A140);
          v29 = sub_1E3C27024();
          if (v30)
          {
            sub_1E32822E0(v29, v30, v31);
            sub_1E4207194();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
            sub_1E37AE398(&qword_1EE23B510);
            sub_1E4205DF4();
          }

          swift_getOpaqueTypeConformance2();
          sub_1E3E03528();

          (*(v41 + 8))(v1, 0);
          (*(v40 + 32))(v42, v2, v11);
          v32 = OUTLINED_FUNCTION_22_1();
          __swift_storeEnumTagSinglePayload(v32, v33, v34, v11);
          OUTLINED_FUNCTION_25_2();
          return;
        }
      }
    }
  }

  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
}

void sub_1E37AA4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A140, &qword_1E42B7E30);
  OUTLINED_FUNCTION_6_4(v32, &a12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_14_5();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A148, &qword_1E429CDB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_26_2();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A150, &qword_1E429CDB8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_49_2();
  v38 = *(v27 + 8);
  v39 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_metadataIndex;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v40 = *(v38 + v39);
  if (__OFADD__(v40, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v111 = v21;
  v112 = v34;
  v113 = v20;
  v114 = v36;
  v41 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v42 = [v41 vui_languageAwareDescription];

  sub_1E4205F14();
  v43 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v44 = [v43 vui_languageAwareDescription];

  v45 = sub_1E4205F14();
  v47 = v46;

  v48 = (*(*v25 + 488))();
  if (!v48)
  {
    goto LABEL_6;
  }

  sub_1E373E010(15, v48, v49);
  OUTLINED_FUNCTION_122();

  if (v25 && *v25 != _TtC8VideosUI13TextViewModel)
  {

LABEL_6:
    v25 = 0;
  }

  v50 = [objc_opt_self() sharedInstance];
  if (v50)
  {
    v51 = v50;
    sub_1E3741090(0xD000000000000014, 0x80000001E425C3E0, v50);
    v53 = v52;

    if (v53)
    {
      v110 = v29;
      v57 = sub_1E32822E0(v54, v55, v56);
      v58 = MEMORY[0x1E69E6158];
      v109 = MEMORY[0x1E69E6158];
      OUTLINED_FUNCTION_25();
      v67 = OUTLINED_FUNCTION_177_0(v59, v60, v61, v62, v63, v64, v65, v66, v109, v57);
      v68 = v47;
      v70 = v69;

      v115[0] = v67;
      v115[1] = v70;
      v116 = v45;
      v117 = v68;
      OUTLINED_FUNCTION_25();
      v79 = OUTLINED_FUNCTION_177_0(v71, v72, v73, v74, v75, v76, v77, v78, v58, v57);
      v81 = v80;

      if (v25)
      {

        v82 = sub_1E3C2877C(v79, v81, 0);
        v84 = v83;
        v86 = v85;

        sub_1E37AE010(v82, v84, v86);
        OUTLINED_FUNCTION_18();
        sub_1E3F23370();
        sub_1E4203DB4();
        OUTLINED_FUNCTION_94_4();
        LOBYTE(v110) = v87;
        OUTLINED_FUNCTION_13_22();
        OUTLINED_FUNCTION_155_0();
        v88 = OUTLINED_FUNCTION_138_0();
        v89(v88);
        OUTLINED_FUNCTION_141();
        memcpy(v90, v115, 0x70uLL);
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        OUTLINED_FUNCTION_34();
        v116 = sub_1E4207944();
        v117 = v91;
        MEMORY[0x1E69109E0](45, 0xE100000000000000);
        sub_1E39261F4();
        OUTLINED_FUNCTION_34();
        v92 = sub_1E4207944();
        MEMORY[0x1E69109E0](v92);

        v93 = v116;
        v94 = v117;
        sub_1E3741EA0(0, v113, &qword_1ECF2A140, &qword_1E42B7E30);
        v95 = (v113 + *(v112 + 52));
        *v95 = v93;
        v95[1] = v94;
        v96 = *(*v25 + 320);

        v98 = v96(v97);
        v100 = v99;

        if (v100)
        {
          v101 = v100;
        }

        else
        {
          v98 = 0x6275735F6C747563;
          v101 = 0xED0000656C746974;
        }

        OUTLINED_FUNCTION_69();
        v103 = sub_1E37AE398(v102);
        sub_1E40A7FF0(v98, v101, 6, v112, v103);

        v104 = OUTLINED_FUNCTION_89_2();
        sub_1E325F69C(v104, v105);
        OUTLINED_FUNCTION_155_0();
        v29 = v110;
        v106 = v114;
        v107(v110, v111, v114);
        v108 = 0;
        goto LABEL_17;
      }

      v108 = 1;
    }

    else
    {

      v108 = 1;
    }

    v106 = v114;
LABEL_17:
    __swift_storeEnumTagSinglePayload(v29, v108, 1, v106);
    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_19:
  __break(1u);
}

void sub_1E37AAC4C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E70, &qword_1E429CAF8);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_49_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E78, &qword_1E429CB00);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_23_8();
  *v1 = sub_1E4201B84();
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E80, &qword_1E429CB08);
  sub_1E37AAE30();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_13_22();
  v10 = OUTLINED_FUNCTION_98();
  sub_1E3741EA0(v10, v11, &qword_1ECF29E70, &qword_1E429CAF8);
  memcpy((v0 + *(v7 + 44)), v28, 0x70uLL);
  OUTLINED_FUNCTION_18_5();
  sub_1E3741EA0(v12, v13, v14, v15);
  OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v16, v17, v18, v19);
  *v3 = 0;
  *(v3 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E88, &qword_1E429CB10);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v20, v21, v22, v23);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v24, v25);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v26, v27);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37AAE30()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v31 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E90, &qword_1E429CB18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E98, &qword_1E429CB20);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  *v0 = sub_1E4201D44();
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29EA0, &qword_1E429CB28);
  OUTLINED_FUNCTION_146();
  sub_1E37AB07C();
  OUTLINED_FUNCTION_1();
  sub_1E37AE398(v13);
  OUTLINED_FUNCTION_156_2();
  sub_1E38838AC(v14, v15, v16, v4, v17, v18);
  v19 = OUTLINED_FUNCTION_160_1();
  sub_1E325F69C(v19, v20);
  v21 = type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
  OUTLINED_FUNCTION_25_17((v2 + *(v21 + 40)));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  OUTLINED_FUNCTION_147_0(v22);
  v23 = v32;
  LOBYTE(v2) = v32 ^ 1;
  v24 = *(v8 + 16);
  v25 = OUTLINED_FUNCTION_75();
  v24(v25);
  v26 = v31;
  v27 = OUTLINED_FUNCTION_114_0();
  v24(v27);
  v28 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29EB0, &qword_1E429CB30) + 48);
  *v28 = 0;
  *(v28 + 8) = v2;
  *(v28 + 9) = v23;
  v29 = *(v8 + 8);
  v29(v12, v6);
  v30 = OUTLINED_FUNCTION_74();
  (v29)(v30);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37AB384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v24;
  a20 = v25;
  v112 = v26;
  v28 = v27;
  v30 = v29;
  v116 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29EE0, &qword_1E429CB58);
  v33 = OUTLINED_FUNCTION_17_2(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_77_0();
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C90, &qword_1E429C930);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_5();
  v117 = v36;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_152_0(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29C98, &qword_1E429C938);
  OUTLINED_FUNCTION_6_4(v39, &a17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CA0, &unk_1E429C940);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_19_2();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210, &qword_1E4299980);
  OUTLINED_FUNCTION_6_4(v42, &a16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_31_2();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CA8, &qword_1E429C950);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_20_1();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29EE8, &qword_1E429CB60);
  v47 = OUTLINED_FUNCTION_17_2(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_5();
  v113 = v48;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_25_3();
  v118 = v50;
  if (sub_1E3925B38())
  {
    v51 = 1;
    v52 = v118;
  }

  else
  {
    v108 = v22;
    v109 = v23;
    v53 = (*(*v28 + 488))();
    if (v53 && (v55 = sub_1E373E010(39, v53, v54), , v55))
    {

      sub_1E37A3384(v28, v56, v57, v58, v59, v60, v61, v62, v107, v108, v23, v110, v111, v112, v113, v114, v116, v117, v30, v118, v119, v120[0]);
      OUTLINED_FUNCTION_164();
      sub_1E3743538(v63, v64, v65, &qword_1E429C938);
      OUTLINED_FUNCTION_34();
      swift_storeEnumTagMultiPayload();
      sub_1E37AC5F4();
      sub_1E37AC690();
      OUTLINED_FUNCTION_117_0();
      v66 = v20;
      v67 = &qword_1ECF29C98;
    }

    else
    {
      sub_1E37A313C();
      OUTLINED_FUNCTION_164();
      sub_1E3743538(v68, v69, v70, &qword_1E4299980);
      OUTLINED_FUNCTION_34();
      swift_storeEnumTagMultiPayload();
      sub_1E37AC5F4();
      sub_1E37AC690();
      OUTLINED_FUNCTION_117_0();
      v66 = OUTLINED_FUNCTION_135();
    }

    sub_1E325F69C(v66, v67);
    v52 = v118;
    sub_1E3741EA0(v21, v118, &qword_1ECF29CA8, &qword_1E429C950);
    v51 = 0;
    v23 = v109;
    v22 = v108;
  }

  __swift_storeEnumTagSinglePayload(v52, v51, 1, v44);
  sub_1E37A3AB0();
  v71 = (*(*v28 + 552))();
  if (!v71)
  {
    v121 = 0u;
    v122 = 0u;
    goto LABEL_17;
  }

  v120[3] = &unk_1F5D7BE68;
  v120[4] = &off_1F5D7BC48;
  LOBYTE(v120[0]) = 6;
  sub_1E3F9F164(v120, v71, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(v120);
  if (!*(&v122 + 1))
  {
LABEL_17:
    sub_1E325F69C(&v121, &unk_1ECF296E0);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v75 = 0;
LABEL_19:
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v84, v85, v86, v114);
    v115 = v75;
    goto LABEL_20;
  }

  sub_1E3744600(v120[0]);

  v72 = objc_allocWithZone(VUIContentMetadata);
  v73 = OUTLINED_FUNCTION_20_2();
  v74 = sub_1E37AD294(v73);
  v75 = v74;
  v76 = *(v112 + 112);
  if (!v76 || !v74)
  {
    goto LABEL_19;
  }

  v77 = v74;
  v78 = v76;
  sub_1E37AD648(v77);
  if (!v79 || (, (v80 = [v77 episodeNumber]) == 0))
  {

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_154_0();
  sub_1E37A3AB0();

  sub_1E3741EA0(v117, v22, &qword_1ECF29C90, &qword_1E429C930);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v114);
  v115 = v77;
LABEL_20:
  sub_1E37ABAC8();
  sub_1E3743538(v52, v113, &qword_1ECF29EE8, &qword_1E429CB60);
  OUTLINED_FUNCTION_158();
  sub_1E3743538(v87, v88, v89, v90);
  v91 = OUTLINED_FUNCTION_115();
  sub_1E3743538(v91, v92, v93, v94);
  sub_1E3743538(v113, v116, &qword_1ECF29EE8, &qword_1E429CB60);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29EF0, &unk_1E429CB68);
  OUTLINED_FUNCTION_158();
  sub_1E3743538(v96, v97, v98, v99);
  sub_1E3743538(v23, v116 + *(v95 + 64), &qword_1ECF29EE0, &qword_1E429CB58);
  v100 = *(v95 + 80);

  memcpy((v116 + v100), v120, 0x41uLL);
  sub_1E325F69C(v22, &qword_1ECF29EE0);
  sub_1E325F69C(v119, &qword_1ECF29C90);
  sub_1E325F69C(v118, &qword_1ECF29EE8);
  v101 = OUTLINED_FUNCTION_75();
  sub_1E325F69C(v101, v102);
  v103 = OUTLINED_FUNCTION_99_0();
  sub_1E325F69C(v103, v104);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v105, v106);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37ABAC8()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  OUTLINED_FUNCTION_173();
  v3 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = (v8 - v7);
  v10 = (*(*v2 + 488))();
  if (!v10 || (v12 = sub_1E373E010(91, v10, v11), , !v12) || (OUTLINED_FUNCTION_8(), v14 = (*(v13 + 464))(), v15 = , !v14))
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  if (!(*(*v2 + 392))(v15))
  {

LABEL_12:
    v20 = 0;
    v22 = 0;
    v28 = 0;
    v27 = 0;
    v26 = 0;
    v24 = 0uLL;
    v25 = 1;
    goto LABEL_13;
  }

  type metadata accessor for MediaShowcasingMetadataLayout();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8();
  (*(v16 + 152))(v30);
  if ((v31 & 1) == 0)
  {
    sub_1E3952BD8(v30[0], v30[1], v30[2]);
  }

  sub_1E3798694(v14);

  OUTLINED_FUNCTION_8();
  v18 = *(v17 + 304);

  v18(v19);

  type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
  sub_1E3746E10(v9);
  sub_1E3B02A04();
  (*(v5 + 8))(v9, v3);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_52_1();
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v23 = v35;
  v29 = v36;

  v24 = v29;
  v25 = 0;
  v26 = 1;
  v27 = v21;
  v28 = v23;
LABEL_13:
  *v0 = 0;
  *(v0 + 8) = v26;
  *(v0 + 16) = v20;
  *(v0 + 24) = v27;
  *(v0 + 32) = v22;
  *(v0 + 40) = v28;
  *(v0 + 48) = v24;
  *(v0 + 64) = v25;
  OUTLINED_FUNCTION_10_3();
}

void sub_1E37ABE40()
{
  OUTLINED_FUNCTION_31_1();
  v117 = v2;
  v125 = v3;
  v5 = v4;
  v127 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DD8, &qword_1E429CA70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v124 = v9;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DE0, &qword_1E429CA78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v114 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DE8, &qword_1E429CA80);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v112 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v110 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DF0, &qword_1E429CA88);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  v113 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  v111 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DF8, &qword_1E429CA90);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_5();
  v122 = v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25_3();
  v121 = v26;
  v27 = OUTLINED_FUNCTION_138();
  type metadata accessor for PlaybackMediaShowcasingMetadataView(v27);
  OUTLINED_FUNCTION_0_10();
  v115 = v29;
  v116 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  v39 = v38 - v37;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E00, &qword_1E429CA98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_19_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E08, &qword_1E429CAA0);
  OUTLINED_FUNCTION_0_10();
  v119 = v43;
  v120 = v42;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_5();
  v118 = v44;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_77_0();
  v126 = v5;
  if (sub_1E3925B38())
  {
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  }

  else
  {
    v109 = v7;
    v51 = v126;
    *v0 = sub_1E379EF14();
    *(v0 + 8) = 0;
    *(v0 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E10, &qword_1E429CAA8);
    sub_1E37AC7FC(v51, v125, v117);
    (*(v35 + 104))(v39, *MEMORY[0x1E697E668], v33);
    OUTLINED_FUNCTION_1_58();
    sub_1E37AD3C4(v51, &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    OUTLINED_FUNCTION_16_14();
    v52 = swift_allocObject();
    OUTLINED_FUNCTION_0_25();
    sub_1E37ADCDC(v32, v53);
    OUTLINED_FUNCTION_1();
    v55 = sub_1E37AE398(v54);
    OUTLINED_FUNCTION_138_0();
    v56 = OUTLINED_FUNCTION_51_1();
    v117 = v1;
    sub_1E3D951F8(v39, v56 & 1, sub_1E37AE5F8, v52, v40, v55);

    v57 = v33;
    v58 = 1;
    (*(v35 + 8))(v39, v57);
    v59 = OUTLINED_FUNCTION_169_0();
    sub_1E325F69C(v59, v60);
    OUTLINED_FUNCTION_64_5();
    v129 = v61;
    v130 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
    sub_1E42038F4();
    v63 = v121;
    if ((v128 & 1) == 0)
    {
      v64 = sub_1E4201D64();
      v65 = v111;
      *v111 = v64;
      v65[1] = 0;
      *(v65 + 16) = 1;
      v66 = v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E20, &qword_1E429CAB0) + 44);
      sub_1E37ACB38();
      OUTLINED_FUNCTION_12_12();
      sub_1E3743538(v67, v68, v69, v70);
      *v66 = 0;
      v66[8] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E28, &qword_1E429CAB8);
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v71, v72, v73, v74);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v75, v76);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v77, v78);
      OUTLINED_FUNCTION_12_12();
      sub_1E3743538(v79, v80, v81, v82);
      v83 = v114;
      *v114 = 0;
      *(v83 + 8) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E30, &qword_1E429CAC0);
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v84, v85, v86, v87);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v88, v89);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v90, v91);
      sub_1E3741EA0(v83, v63, &qword_1ECF29DE0, &qword_1E429CA78);
      v58 = 0;
    }

    __swift_storeEnumTagSinglePayload(v63, v58, 1, v123);
    v93 = v118;
    v92 = v119;
    v94 = *(v119 + 16);
    v95 = v117;
    v96 = v63;
    v97 = v120;
    v94(v118, v117, v120);
    v98 = v122;
    sub_1E3743538(v96, v122, &qword_1ECF29DF8, &qword_1E429CA90);
    v99 = v124;
    v94(v124, v93, v97);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E38, &qword_1E429CAC8);
    sub_1E3743538(v98, v99 + *(v100 + 48), &qword_1ECF29DF8, &qword_1E429CA90);
    sub_1E325F69C(v96, &qword_1ECF29DF8);
    v101 = *(v92 + 8);
    v101(v95, v97);
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v102, v103);
    v104 = OUTLINED_FUNCTION_159();
    (v101)(v104);
    sub_1E3741EA0(v99, v127, &qword_1ECF29DD8, &qword_1E429CA70);
    v105 = OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v109);
    OUTLINED_FUNCTION_25_2();
  }
}

unint64_t sub_1E37AC5F4()
{
  result = qword_1EE285DD8;
  if (!qword_1EE285DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29210, &qword_1E4299980);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE285DD8);
  }

  return result;
}

unint64_t sub_1E37AC690()
{
  result = qword_1EE288388;
  if (!qword_1EE288388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29C98, &qword_1E429C938);
    sub_1E37AE398(&unk_1EE288390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288388);
  }

  return result;
}

unint64_t sub_1E37AC740()
{
  result = qword_1EE2899A0;
  if (!qword_1EE2899A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29CC0, &qword_1E429C968);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2899A0);
  }

  return result;
}

void sub_1E37ACB38()
{
  OUTLINED_FUNCTION_9_4();
  v4 = v3;
  v5 = sub_1E42037D4();
  OUTLINED_FUNCTION_0_10();
  v58 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29CC0, &qword_1E429C968);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_31_2();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E40, &qword_1E429CAD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29E48, &qword_1E429CAD8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v13 = sub_1E3925954();
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = v13;
  v15 = (*(*v4 + 488))();
  if (v15 && (sub_1E373E010(40, v15, v16), OUTLINED_FUNCTION_122(), , v4))
  {
    type metadata accessor for ImageViewModel();
    v17 = swift_dynamicCastClass();
    if (!v17)
    {
LABEL_12:

      goto LABEL_13;
    }

    v18 = v17;
    v19 = *(*v17 + 392);

    v57 = v18;
    v19(v20);
    OUTLINED_FUNCTION_122();

    if (v19)
    {
      type metadata accessor for ImageLayout();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_26_0();
        v55 = v22;
        (*(v21 + 2288))();
        v56 = v14;
        sub_1E381AC64(v56);
        (*(v58 + 104))(v0, *MEMORY[0x1E6981630], v5);
        OUTLINED_FUNCTION_5_8();
        OUTLINED_FUNCTION_32_0();
        sub_1E4203824();
        OUTLINED_FUNCTION_122();

        (*(v58 + 8))(v0, v5);
        *&v60 = v19;

        v23 = MEMORY[0x1E6981748];
        v24 = MEMORY[0x1E6981710];
        OUTLINED_FUNCTION_142_0();
        v25 = OUTLINED_FUNCTION_51_1();
        OUTLINED_FUNCTION_142_0();
        v26 = OUTLINED_FUNCTION_18();
        sub_1E3C8F60C(v55, v25 & 1, v26 & 1, v23, v24);

        sub_1E4203DA4();
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_179_0();
        v27 = (v2 + *(v8 + 36));
        *v27 = v60;
        v27[1] = v61;
        v27[2] = v62;
        v28 = *(*v55 + 152);

        v28(v63, v29);
        v30 = v63[0];
        v31 = v63[1];
        v32 = v63[2];
        v33 = v63[3];

        if (v64)
        {
          OUTLINED_FUNCTION_5_8();
        }

        else
        {
          v34.n128_u64[0] = v30;
          v35.n128_u64[0] = v31;
          v36.n128_u64[0] = v32;
          v37.n128_u64[0] = v33;
          j_nullsub_1(v34, v35, v36, v37);
        }

        OUTLINED_FUNCTION_3();
        v43 = sub_1E4202734();
        v44 = OUTLINED_FUNCTION_102_3();
        v48 = sub_1E3741EA0(v44, v45, v46, v47);
        v49 = v1 + *(v59 + 36);
        *v49 = v43;
        *(v49 + 8) = v30;
        *(v49 + 16) = v31;
        *(v49 + 24) = v32;
        *(v49 + 32) = v33;
        *(v49 + 40) = 0;
        (*(*v57 + 904))(v48);
        sub_1E37AD554();
        sub_1E3E03528();

        sub_1E325F69C(v1, &qword_1ECF29E40);
        v50 = OUTLINED_FUNCTION_139_0();
        v51(v50);
        OUTLINED_FUNCTION_114();
        __swift_storeEnumTagSinglePayload(v52, v53, v54, v11);
        OUTLINED_FUNCTION_10_3();
        return;
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

LABEL_13:
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
}

uint64_t sub_1E37AD0DC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = sub_1E4200B44();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_78();
  if (sub_1E3CCE24C(v3) && (TVAppFeature.isEnabled.getter(20, v13, v14) & 1) != 0)
  {
    return 0;
  }

  if (a1 == 27)
  {
    type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
    sub_1E379EBAC(v2);
    OUTLINED_FUNCTION_111_0();
    v15(v11);
    OUTLINED_FUNCTION_74();
    v16 = sub_1E4200B34();
    v17 = *(v7 + 8);
    v18 = OUTLINED_FUNCTION_13_8();
    v17(v18);
    (v17)(v2, v5);
    if (v16)
    {
      return 27;
    }

    else
    {
      return 26;
    }
  }

  return a1;
}

unint64_t sub_1E37AD240(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_60();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

id sub_1E37AD294(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1E4205C44();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithDictionary_];

  return v3;
}

unint64_t sub_1E37AD314()
{
  result = qword_1ECF29D68;
  if (!qword_1ECF29D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29D40, &qword_1E429C9F0);
    sub_1E37AE398(&unk_1ECF29D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29D68);
  }

  return result;
}

uint64_t sub_1E37AD3C4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_106();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  return a2;
}

unint64_t sub_1E37AD41C()
{
  result = qword_1EE288FF8;
  if (!qword_1EE288FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29DD0, &qword_1E429CA68);
    sub_1E37ADD34(&unk_1EE249C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288FF8);
  }

  return result;
}

void sub_1E37AD4D0(double a1, double a2, double a3, double a4)
{
  v6 = type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_135_0();
  sub_1E37A1214(a3, a4);
  if (sub_1E3925640() != a4)
  {
    sub_1E39256B8(a4);
  }
}

unint64_t sub_1E37AD554()
{
  result = qword_1ECF29E50;
  if (!qword_1ECF29E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29E40, &qword_1E429CAD0);
    sub_1E37AC740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29E50);
  }

  return result;
}

uint64_t sub_1E37AD5E0(double a1, double a2)
{
  v3 = type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_135_0();
  return sub_1E39256B8(a2);
}

uint64_t sub_1E37AD648(void *a1)
{
  v2 = [a1 title];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E37AD6B8()
{
  v1 = *(OUTLINED_FUNCTION_95_2() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v12.origin.x = OUTLINED_FUNCTION_2_0();
  MinY = CGRectGetMinY(v12);
  v4 = sub_1E39256B8(MinY);
  (*(*v2 + 152))(v10, v4);
  if ((v11 & 1) == 0)
  {
    sub_1E3952BE0(v10[0], v10[1], v10[2], v10[3]);
  }

  nullsub_1();
  return sub_1E3925DD4(v5, v6, v7, v8);
}

uint64_t sub_1E37AD7C8()
{
  v4 = OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_135_0();
  v5 = sub_1E3925640();
  v12.origin.x = OUTLINED_FUNCTION_2_0();
  if (v5 != CGRectGetHeight(v12))
  {
    v13.origin.x = OUTLINED_FUNCTION_2_0();
    Height = CGRectGetHeight(v13);
    sub_1E39256B8(Height);
  }

  v14.origin.x = sub_1E3925D6C();
  v15.origin.x = v3;
  v15.origin.y = v2;
  v15.size.width = v1;
  v15.size.height = v0;
  if (!CGRectEqualToRect(v14, v15))
  {
    v7 = OUTLINED_FUNCTION_2_0();
    sub_1E3925DD4(v7, v8, v9, v10);
  }

  return sub_1E37A1214(v1, v0);
}

unint64_t sub_1E37AD888()
{
  result = qword_1ECF29FD0;
  if (!qword_1ECF29FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29FC8, &qword_1E429CC38);
    sub_1E37AC5F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29FD0);
  }

  return result;
}

unint64_t sub_1E37AD914()
{
  result = qword_1ECF2A028;
  if (!qword_1ECF2A028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A000, &qword_1E429CC68);
    sub_1E37AE398(&unk_1ECF2A030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A028);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
  OUTLINED_FUNCTION_144();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_1E3264CE0(*(v3 + 48), *(v3 + 56));
  v4 = *(v0 + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8, &qword_1E429C690);
  if (OUTLINED_FUNCTION_182_0(v5) == 1)
  {
    sub_1E4200B44();
    OUTLINED_FUNCTION_2();
    (*(v6 + 8))(v3 + v4);
  }

  else
  {
  }

  v7 = *(v0 + 36);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (OUTLINED_FUNCTION_182_0(v8) == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v9 + 8))(v3 + v7);
  }

  else
  {
  }

  OUTLINED_FUNCTION_137_1();
  if (v10)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E37ADB78()
{
  v1 = OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_135_0();
  v2 = OUTLINED_FUNCTION_2_0();
  sub_1E3925DD4(v2, v3, v4, v5);
  return sub_1E39256B8(v0);
}

unint64_t sub_1E37ADBE8()
{
  result = qword_1ECF2A040;
  if (!qword_1ECF2A040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A010, &qword_1E429CC78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A000, &qword_1E429CC68);
    sub_1E37AD914();
    swift_getOpaqueTypeConformance2();
    sub_1E37AE398(&unk_1ECF2A048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A040);
  }

  return result;
}

uint64_t sub_1E37ADCDC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_106();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  return a2;
}

unint64_t sub_1E37ADD34(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E37ADD74()
{
  result = qword_1ECF2A078;
  if (!qword_1ECF2A078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A060, &qword_1E429CCD8);
    sub_1E37413C4();
    sub_1E37AE398(&qword_1EE288758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A078);
  }

  return result;
}

uint64_t sub_1E37ADE2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E37ADE84()
{
  result = qword_1ECF2A0A8;
  if (!qword_1ECF2A0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A090, &qword_1E429CD10);
    sub_1E37AE398(&unk_1ECF2A0B0);
    sub_1E37AE398(&qword_1EE2889D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A0A8);
  }

  return result;
}

unint64_t sub_1E37ADF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE275780;
  if (!qword_1EE275780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE275780);
  }

  return result;
}

void sub_1E37AE010(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1E37AE024(a1, a2, a3);
  }
}

void sub_1E37AE024(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:

      break;
    case 2:
    case 3:

      break;
    default:
      return;
  }
}

unint64_t sub_1E37AE064()
{
  result = qword_1EE289C98;
  if (!qword_1EE289C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A140, &qword_1E42B7E30);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C98);
  }

  return result;
}

unint64_t sub_1E37AE108()
{
  result = qword_1ECF2A190;
  if (!qword_1ECF2A190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A180, &qword_1E429CDE8);
    sub_1E37AE194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A190);
  }

  return result;
}

unint64_t sub_1E37AE194()
{
  result = qword_1ECF2A198;
  if (!qword_1ECF2A198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A178, &qword_1E429CDE0);
    sub_1E37AE220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A198);
  }

  return result;
}

unint64_t sub_1E37AE220()
{
  result = qword_1ECF2A1A0;
  if (!qword_1ECF2A1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1A8, &qword_1E429CDF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1B0, &unk_1E429CE00);
    sub_1E37AE314();
    swift_getOpaqueTypeConformance2();
    sub_1E37AE398(&qword_1EE289E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A1A0);
  }

  return result;
}

unint64_t sub_1E37AE314()
{
  result = qword_1EE289828;
  if (!qword_1EE289828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1B0, &unk_1E429CE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289828);
  }

  return result;
}

unint64_t sub_1E37AE398(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E37AE3D4()
{
  result = qword_1ECF2A1C0;
  if (!qword_1ECF2A1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A188, &qword_1E429CDF0);
    sub_1E37AE460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A1C0);
  }

  return result;
}

unint64_t sub_1E37AE460()
{
  result = qword_1ECF2A1C8;
  if (!qword_1ECF2A1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1D0, &qword_1E429CE10);
    sub_1E37AE4EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A1C8);
  }

  return result;
}

unint64_t sub_1E37AE4EC()
{
  result = qword_1ECF2A1D8;
  if (!qword_1ECF2A1D8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1E0, &qword_1E429CE18);
    sub_1E37AE5A4(v1, v2, v3);
    sub_1E37AE398(&qword_1EE288788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A1D8);
  }

  return result;
}

unint64_t sub_1E37AE5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2A1E8;
  if (!qword_1ECF2A1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A1E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_58_6()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_91_1@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(v2 - 136) = a1;
  *(v2 - 112) = a2;

  return type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
}

uint64_t OUTLINED_FUNCTION_95_2()
{

  return type metadata accessor for PlaybackMediaShowcasingMetadataView(0);
}

__n128 OUTLINED_FUNCTION_103_2@<Q0>(unint64_t a1@<X8>)
{
  v4[12].n128_u64[0] = 0;
  v4[12].n128_u8[8] = v5;
  v4[13].n128_u64[0] = a1;
  v4[13].n128_u8[8] = v1;
  v4[14].n128_u64[0] = v2;
  v4[14].n128_u8[8] = v3;
  result = *(v6 - 120);
  v4[15] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_110_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 104) = *(a2 - 256);
  *(v2 - 96) = result;
  return result;
}

void OUTLINED_FUNCTION_112_3(void *a1@<X8>)
{
  v4 = *(v1 - 256);
  a1[4] = v2;
  a1[5] = v4;
  v5 = *(v3 - 384);
  a1[6] = *(v3 - 376);
  a1[7] = v5;
}

void OUTLINED_FUNCTION_113_2(uint64_t a1@<X8>)
{
  *(a1 - 256) = 0;
  *(v1 - 368) = 0;
  *(v1 - 376) = 0;
  *(v1 - 384) = 0;
}

uint64_t OUTLINED_FUNCTION_116_2()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_117_0()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_131_1(char a1)
{

  return sub_1E40AB6EC(a1);
}

uint64_t OUTLINED_FUNCTION_132_0()
{

  return sub_1E4201F44();
}

uint64_t OUTLINED_FUNCTION_146_3()
{
  v3 = *(v1 - 208);

  return sub_1E37AD3C4(v0, v3);
}

uint64_t OUTLINED_FUNCTION_147_0(uint64_t a1)
{

  return sub_1E42038F4();
}

uint64_t OUTLINED_FUNCTION_148_0()
{
  v3 = *(v1 - 152);

  return sub_1E37AD3C4(v0, v3);
}

uint64_t OUTLINED_FUNCTION_149_0(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_150_0(uint64_t a1)
{

  return sub_1E3883AF4(v1, v2, a1);
}

void OUTLINED_FUNCTION_163_0(uint64_t a1@<X8>)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
}

void OUTLINED_FUNCTION_174(uint64_t a1@<X8>)
{
  v3 = *(v1 - 256);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
}

uint64_t OUTLINED_FUNCTION_175_0()
{
  result = *(v1 - 136);
  *(v1 - 168) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_177_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1E42071F4();
}

uint64_t OUTLINED_FUNCTION_178_1()
{

  return sub_1E4200D94();
}

uint64_t OUTLINED_FUNCTION_179_0()
{

  return sub_1E4200D94();
}

uint64_t OUTLINED_FUNCTION_180()
{
}

uint64_t OUTLINED_FUNCTION_181_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_182_0(uint64_t a1)
{

  return swift_getEnumCaseMultiPayload();
}

id OUTLINED_FUNCTION_183_0()
{

  return [v1 (v0 + 1454)];
}

uint64_t OUTLINED_FUNCTION_184(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1E42038E4();
}

uint64_t OUTLINED_FUNCTION_185()
{
}

uint64_t sub_1E37AEAD8(char a1)
{
  result = 0x7964616572;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_31_9();
      break;
    case 2:
      result = OUTLINED_FUNCTION_29_6();
      break;
    case 3:
      result = OUTLINED_FUNCTION_28_12();
      break;
    case 4:
      result = OUTLINED_FUNCTION_30_11();
      break;
    case 5:
      result = OUTLINED_FUNCTION_10_25();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E37AEB9C()
{
  v0 = sub_1E4207784();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E37AEBF4(unsigned __int8 a1, char a2)
{
  v2 = 0x7964616572;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7964616572;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x676E696E6E7572;
      break;
    case 2:
      v5 = 0x65646E6570737573;
      goto LABEL_6;
    case 3:
      v5 = 0x656C6C65636E6163;
LABEL_6:
      v3 = 0xE900000000000064;
      break;
    case 4:
      v3 = 0xE800000000000000;
      v5 = 0x64656873696E6966;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x676E696E6E7572;
      break;
    case 2:
      v2 = 0x65646E6570737573;
      goto LABEL_13;
    case 3:
      v2 = 0x656C6C65636E6163;
LABEL_13:
      v6 = 0xE900000000000064;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v2 = 0x64656873696E6966;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E37AEDA4(char a1)
{
  sub_1E4207B44();
  sub_1E37AEAD8(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E37AEE10(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E37AEEFC(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E37AEAD8(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E37AEF5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E37AEB9C();
  *a1 = result;
  return result;
}

uint64_t sub_1E37AEF8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E37AEAD8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E37AEFC0()
{
  v5 = sub_1E3D441EC(*v0);
  __swift_project_boxed_opaque_existential_1(v0 + 1, *(v0 + 4));
  v1 = OUTLINED_FUNCTION_51_7();
  v3 = v2(v1);
  MEMORY[0x1E69109E0](v3);

  MEMORY[0x1E69109E0](32, 0xE100000000000000);

  return v5;
}

void sub_1E37AF054()
{
  OUTLINED_FUNCTION_31_1();
  v10 = sub_1E42069F4();
  OUTLINED_FUNCTION_0_10();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  sub_1E4206974();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v7 = sub_1E4203FF4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_5();
  sub_1E32ADE38();
  sub_1E4203FE4();
  sub_1E3274998(&qword_1EE23B1F0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v8 = OUTLINED_FUNCTION_39_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  sub_1E328FD38(&qword_1EE23B490, &unk_1ECF326B0, &qword_1E429D100);
  sub_1E42072E4();
  (*(v1 + 104))(v5, *MEMORY[0x1E69E8090], v10);
  qword_1EE2AAFD8 = sub_1E4206A44();
  OUTLINED_FUNCTION_25_2();
}

uint64_t *sub_1E37AF264()
{
  if (qword_1EE2A1590 != -1)
  {
    OUTLINED_FUNCTION_20_20(&qword_1EE2A1590);
  }

  return &qword_1EE2AAFD8;
}

uint64_t sub_1E37AF2A4()
{
  v1 = *(v0 + 72);
  v2 = 1;
  switch(v1)
  {
    case 1:
      goto LABEL_8;
    case 2:
      OUTLINED_FUNCTION_29_6();
      goto LABEL_7;
    case 3:
      OUTLINED_FUNCTION_28_12();
      goto LABEL_7;
    case 4:
      OUTLINED_FUNCTION_30_11();
      goto LABEL_7;
    case 5:
      OUTLINED_FUNCTION_10_25();
      goto LABEL_7;
    default:
LABEL_7:
      v2 = sub_1E42079A4();
LABEL_8:

      return v2 & 1;
  }
}

uint64_t sub_1E37AF35C()
{
  v1 = *v0;
  v2 = 0x7964616572;
  v3 = 0xE500000000000000;
  switch(*(v0 + 72))
  {
    case 1:
      v2 = OUTLINED_FUNCTION_31_9();
      goto LABEL_7;
    case 2:

      goto LABEL_9;
    case 3:
      v2 = OUTLINED_FUNCTION_28_12();
      v3 = 0xE900000000000064;
      goto LABEL_8;
    case 4:
      v2 = OUTLINED_FUNCTION_30_11();
      v3 = 0xE800000000000000;
      goto LABEL_8;
    case 5:
      v2 = OUTLINED_FUNCTION_10_25();
LABEL_7:
      v3 = 0xE700000000000000;
      goto LABEL_8;
    default:
LABEL_8:
      v4 = OUTLINED_FUNCTION_17_17(v2, v3, 0x65646E6570737573);

      if (v4)
      {
LABEL_9:
        v9 = 1;
      }

      else
      {
        sub_1E37AF890(v5, v6, v7, v8);
        type metadata accessor for ServiceRequest.SavedResponseType(255, *(v1 + 80), *(v1 + 88), v10);
        sub_1E4206374();
        swift_getWitnessTable();
        v11 = sub_1E4206754();

        v9 = v11 ^ 1;
      }

      return v9 & 1;
  }
}

uint64_t sub_1E37AF4B8()
{
  v1 = *(v0 + 72);
  v2 = 1;
  v3 = 0x7964616572;
  v4 = 0xE500000000000000;
  switch(v1)
  {
    case 1:
      v3 = OUTLINED_FUNCTION_31_9();
      goto LABEL_6;
    case 2:
      v3 = OUTLINED_FUNCTION_29_6();
      v4 = 0xE900000000000064;
      goto LABEL_7;
    case 3:
      goto LABEL_8;
    case 4:
      v3 = OUTLINED_FUNCTION_30_11();
      v4 = 0xE800000000000000;
      goto LABEL_7;
    case 5:
      v3 = OUTLINED_FUNCTION_10_25();
LABEL_6:
      v4 = 0xE700000000000000;
      goto LABEL_7;
    default:
LABEL_7:
      v2 = OUTLINED_FUNCTION_17_17(v3, v4, 0x656C6C65636E6163);
LABEL_8:

      return v2 & 1;
  }
}

uint64_t sub_1E37AF56C()
{
  v1 = *(v0 + 72);
  v2 = 1;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_31_9();
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_29_6();
      goto LABEL_7;
    case 3:
      OUTLINED_FUNCTION_28_12();
      goto LABEL_7;
    case 4:
      goto LABEL_8;
    case 5:
      OUTLINED_FUNCTION_10_25();
      goto LABEL_7;
    default:
LABEL_7:
      v2 = sub_1E42079A4();
LABEL_8:

      return v2 & 1;
  }
}

uint64_t sub_1E37AF624()
{
  OUTLINED_FUNCTION_5_0(v0 + 56, v3);
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1E37AF668(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t sub_1E37AF70C()
{
  sub_1E42074B4();

  v2 = (*(*v0 + 192))(v1);
  MEMORY[0x1E69109E0](v2);

  MEMORY[0x1E69109E0](3815998, 0xE300000000000000);
  return 0x5265636976726553;
}

uint64_t sub_1E37AF7F8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 152) = a1;
}

uint64_t sub_1E37AF890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (v4[20])
  {
    v5 = v4[20];
  }

  else
  {
    type metadata accessor for ServiceRequest.SavedResponseType(0, *(*v4 + 80), *(*v4 + 88), a4);
    v5 = sub_1E4205C34();
    v4[20] = v5;
  }

  return v5;
}

uint64_t sub_1E37AF928(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 72) = 0;
  *(v8 + 136) = 0u;
  *(v8 + 152) = 0u;
  v9 = *(a1 + 16);
  *(v8 + 80) = *a1;
  *(v8 + 96) = v9;
  *(v8 + 112) = *(a1 + 32);
  *(v8 + 128) = *(a1 + 48);
  sub_1E3251BE8(a2, v8 + 16);
  *(v8 + 56) = a3;
  *(v8 + 64) = a4;
  return v8;
}

void *sub_1E37AF9B4()
{
  (*(*v0 + 376))();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  sub_1E37B53A4((v0 + 10));

  return v0;
}

uint64_t sub_1E37AFA30()
{
  sub_1E37AF9B4();

  return MEMORY[0x1EEE6BDC0](v0, 168, 7);
}

void sub_1E37AFA64()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v56 = *v0;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - v11;
  v13 = sub_1E37AF70C();
  v15 = v14;
  if (sub_1E37AEAD8(v0[72]) == 0x7964616572 && v16 == 0xE500000000000000)
  {
  }

  else
  {
    sub_1E42079A4();
    OUTLINED_FUNCTION_73_1();
    if ((v1 & 1) == 0)
    {
      v18 = sub_1E324FBDC();
      (*(v5 + 16))(v9, v18, v3);

      v19 = sub_1E41FFC94();
      v20 = sub_1E4206814();

      if (os_log_type_enabled(v19, v20))
      {
        OUTLINED_FUNCTION_49_0();
        v57 = OUTLINED_FUNCTION_40_10();
        *v13 = 136446466;
        v21 = OUTLINED_FUNCTION_53();
        v24 = sub_1E3270FC8(v21, v22, v23);

        *(v13 + 4) = v24;
        OUTLINED_FUNCTION_59_3();
        v25 = v2[72];

        v26 = sub_1E37AEAD8(v25);
        v28 = sub_1E3270FC8(v26, v27, &v57);

        *(v13 + 14) = v28;
        OUTLINED_FUNCTION_71_8(&dword_1E323F000, v19, v20, "%{public}s trying to start a request which is not ready, state: %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_21_0();
      }

      else
      {
      }

      (*(v5 + 8))(v9, v3);
      goto LABEL_15;
    }
  }

  v0[72] = 1;
  v29 = sub_1E324FBDC();
  (*(v5 + 16))(v12, v29, v3);

  v30 = sub_1E41FFC94();
  v31 = v15;
  v32 = sub_1E4206814();

  if (os_log_type_enabled(v30, v32))
  {
    v33 = OUTLINED_FUNCTION_49_0();
    v55 = v3;
    v34 = v33;
    v57 = swift_slowAlloc();
    *v34 = 136446466;
    *(v34 + 4) = sub_1E3270FC8(v13, v31, &v57);
    *(v34 + 12) = 2080;
    v54 = v31;
    v35 = sub_1E37AEFC0();
    v37 = v13;
    v38 = OUTLINED_FUNCTION_58_0(v35, v36);

    *(v34 + 14) = v38;
    v39 = v32;
    v40 = v54;
    _os_log_impl(&dword_1E323F000, v30, v39, "%{public}s performing model service request with: <%s>", v34, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v41 = (*(v5 + 8))(v12, v55);
  }

  else
  {

    v41 = (*(v5 + 8))(v12, v3);
    v37 = v13;
    v40 = v31;
  }

  v42 = (*(*v2 + 192))(v41);
  v44 = v43;
  v45 = v56;
  v46 = *(v56 + 80);
  v49 = type metadata accessor for VideosEnginePromiseResponse(255, v46, v47, v48);
  sub_1E3781F38(v49, v50, v51);
  sub_1E42005F4();
  OUTLINED_FUNCTION_4_0();
  v52 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_67_6();
  v53 = swift_allocObject();
  v53[2] = v46;
  v53[3] = *(v45 + 88);
  v53[4] = v52;
  v53[5] = v37;
  v53[6] = v40;
  v53[7] = v42;
  v53[8] = v44;
  sub_1E4200604();
LABEL_15:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37AFF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_31_1();
  v22 = v21;
  v135 = v23;
  v136 = v24;
  v141 = v25;
  v137 = v26;
  v28 = v27;
  v30 = v29;
  v139 = v31;
  v32 = type metadata accessor for VideosEnginePromiseResponse(255, v21, v27, v26);
  sub_1E3781F38(v32, v33, v34);
  OUTLINED_FUNCTION_32_10();
  v35 = sub_1E4207BC4();
  OUTLINED_FUNCTION_0_10();
  v133 = v36;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  v39 = v120 - v38;
  v40 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_4_6();
  v46 = v44 - v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_25_3();
  v131 = v48;
  OUTLINED_FUNCTION_138();
  v134 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v132 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_25_3();
  v140 = v54;
  OUTLINED_FUNCTION_5_0(v28 + 16, &v143);
  Strong = swift_weakLoadStrong();
  v138 = v30;
  if (Strong)
  {
    v126 = v120 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    v127 = v22;
    v129 = v42;
    v130 = v40;
    v56 = Strong;
    __swift_project_boxed_opaque_existential_1((Strong + 16), *(Strong + 40));
    v57 = OUTLINED_FUNCTION_74();
    v59 = v58(v57);
    if (v59)
    {
      v128 = v59;
      v125 = a21;
      v60 = VUISignpostLogObject(v59);

      sub_1E41FFBB4();
      v133 = v56;
      v62 = *(v56 + 80);
      v61 = v56 + 80;
      v63 = sub_1E3D46AB8(v62);
      v65 = v64;
      __swift_project_boxed_opaque_existential_1((v61 + 8), *(v61 + 32));
      v66 = OUTLINED_FUNCTION_51_7();
      v68 = v67(v66);
      v70 = v69;
      v71 = sub_1E4206BA4();
      v120[3] = v71;
      v72 = VUISignpostLogObject(v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_1E4297BD0;
      v74 = MEMORY[0x1E69E6158];
      *(v73 + 56) = MEMORY[0x1E69E6158];
      v77 = sub_1E3283528(v73, v75, v76);
      v78 = v136;
      *(v73 + 32) = v135;
      *(v73 + 40) = v78;
      *(v73 + 96) = v74;
      *(v73 + 104) = v77;
      *(v73 + 64) = v77;
      *(v73 + 72) = v63;
      v124 = v63;
      *(v73 + 80) = v65;
      *(v73 + 136) = v74;
      *(v73 + 144) = v77;
      v122 = v68;
      *(v73 + 112) = v68;
      *(v73 + 120) = v70;

      v123 = v65;

      v121 = v70;

      OUTLINED_FUNCTION_62_6();
      OUTLINED_FUNCTION_61_4();
      sub_1E41FFB94();

      v79 = sub_1E324FBDC();
      v80 = v129;
      v81 = v130;
      v82 = v131;
      (*(v129 + 16))(v131, v79, v130);
      v83 = v141;

      v84 = sub_1E41FFC94();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_56_4())
      {
        OUTLINED_FUNCTION_6_21();
        v142 = OUTLINED_FUNCTION_16_15();
        *v74 = 136446210;
        *(v74 + 4) = sub_1E3270FC8(v137, v83, &v142);
        OUTLINED_FUNCTION_6_29();
        _os_log_impl(v85, v86, v87, v88, v89, 0xCu);
        OUTLINED_FUNCTION_9_22();
        OUTLINED_FUNCTION_51_2();
      }

      (*(v80 + 8))(v82, v81);
      sub_1E3D45418(1, v61, v128);
      v131 = v90;
      OUTLINED_FUNCTION_4_0();
      v130 = swift_allocObject();
      swift_weakInit();
      v91 = v132;
      v92 = v126;
      (*(v132 + 16))(v126, v140, v134);
      v93 = (*(v91 + 80) + 32) & ~*(v91 + 80);
      v94 = (v51 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
      v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
      v97 = (v96 + 23) & 0xFFFFFFFFFFFFFFF8;
      v98 = (v97 + 23) & 0xFFFFFFFFFFFFFFF8;
      v99 = swift_allocObject();
      v100 = v125;
      *(v99 + 16) = v127;
      *(v99 + 24) = v100;
      v101 = v99 + v93;
      v102 = v134;
      (*(v91 + 32))(v101, v92, v134);
      v103 = (v99 + v94);
      v104 = v136;
      v105 = v141;
      *v103 = v137;
      v103[1] = v105;
      *(v99 + v95) = v130;
      v106 = (v99 + v96);
      *v106 = v135;
      v106[1] = v104;
      v107 = (v99 + v97);
      v108 = v123;
      *v107 = v124;
      v107[1] = v108;
      v109 = (v99 + v98);
      v110 = v121;
      *v109 = v122;
      v109[1] = v110;
      v111 = (v99 + ((v98 + 23) & 0xFFFFFFFFFFFFFFF8));
      v112 = v138;
      *v111 = v139;
      v111[1] = v112;

      v113 = sub_1E41EC148(sub_1E37B5AE4, v99);

      (*(v91 + 8))(v140, v102);
      *(v133 + 144) = v113;

      goto LABEL_10;
    }

    v42 = v129;
    v40 = v130;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_22_6();
  v114(v46);
  v115 = v141;

  v116 = sub_1E41FFC94();
  v117 = v40;
  v118 = sub_1E42067F4();

  if (os_log_type_enabled(v116, v118))
  {
    v119 = OUTLINED_FUNCTION_6_21();
    v142 = OUTLINED_FUNCTION_100();
    *v119 = 136446210;
    *(v119 + 4) = sub_1E3270FC8(v137, v115, &v142);
    _os_log_impl(&dword_1E323F000, v116, v118, "%{public}s failed to get app context, failing promise.", v119, 0xCu);
    OUTLINED_FUNCTION_72_8();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v42 + 8))(v46, v117);
  *v39 = 0xD00000000000001CLL;
  *(v39 + 1) = 0x80000001E425C540;
  v39[16] = 1;
  swift_storeEnumTagMultiPayload();
  v139(v39);
  (*(v133 + 8))(v39, v35);
LABEL_10:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B06BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_31_1();
  v135 = v28;
  v136 = v29;
  v134 = v30;
  v146 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v127 = a26;
  v40 = type metadata accessor for VideosEnginePromiseResponse(255, a26, v34, v32);
  sub_1E3781F38(v40, v41, v42);
  OUTLINED_FUNCTION_32_10();
  v128 = v43;
  v133 = sub_1E4207BC4();
  OUTLINED_FUNCTION_0_10();
  v132 = v44;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_44();
  v131 = v46;
  OUTLINED_FUNCTION_138();
  v126 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v125 = v47;
  MEMORY[0x1EEE9AC00](v48);
  v123 = v49;
  v124 = &v122 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_138();
  v50 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v52 = v51;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_4_6();
  v140 = v54 - v55;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v56);
  v129 = &v122 - v57;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_47_3();
  v59 = *(v39 + 8);
  v141 = *v39;
  v144 = v59;
  v130 = *(v39 + 16);
  v143 = *(v39 + 17);
  v60 = sub_1E4206B94();
  v61 = VUISignpostLogObject(v60);
  OUTLINED_FUNCTION_61_4();
  v137 = v37;
  sub_1E41FFBA4();

  v62 = sub_1E324FBDC();
  v63 = *(v52 + 16);
  v142 = v62;
  (v63)(v27);

  v64 = sub_1E41FFC94();
  v65 = sub_1E4206814();

  v66 = os_log_type_enabled(v64, v65);
  v147 = v52;
  v139 = v35;
  v145 = v33;
  if (v66)
  {
    v67 = v35;
    v68 = OUTLINED_FUNCTION_6_21();
    v69 = OUTLINED_FUNCTION_100();
    v153[0] = v69;
    *v68 = 136446210;
    *(v68 + 4) = sub_1E3270FC8(v67, v33, v153);
    _os_log_impl(&dword_1E323F000, v64, v65, "%{public}s received promise operation response.", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v69);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_6_0();

    v70 = *(v147 + 8);
  }

  else
  {

    v70 = *(v52 + 8);
  }

  v71 = OUTLINED_FUNCTION_63_0();
  v70(v71);
  v72 = v146;
  OUTLINED_FUNCTION_5_0(v146 + 16, v153);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 144) = 0;
  }

  v138 = a24;
  if (v143)
  {
    v74 = v140;
    v63();
    v75 = v145;

    v76 = v141;
    v77 = v144;
    v78 = v130;
    sub_1E37B5BC0(v141, v144, v130, 1);
    v79 = sub_1E41FFC94();
    v80 = sub_1E42067F4();

    if (os_log_type_enabled(v79, v80))
    {
      OUTLINED_FUNCTION_49_0();
      v122 = a25;
      v150[0] = OUTLINED_FUNCTION_40_10();
      *a25 = 136446466;
      *(a25 + 4) = sub_1E3270FC8(v139, v75, v150);
      OUTLINED_FUNCTION_59_3();
      v151[0] = v76;
      v151[1] = v144;
      v152 = v78;
      v81 = sub_1E4207AB4();
      v83 = sub_1E3270FC8(v81, v82, v150);

      *(a25 + 14) = v83;
      OUTLINED_FUNCTION_71_8(&dword_1E323F000, v79, v80, "%{public}s model service request failed with error:<%s>");
      swift_arrayDestroy();
      v77 = v144;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v84 = v140;
    }

    else
    {

      v84 = v74;
    }

    (v70)(v84, v50);
    v120 = v131;
    *v131 = v76;
    v120[1] = v77;
    *(v120 + 16) = v78;
    v121 = v133;
    swift_storeEnumTagMultiPayload();
    v138(v120);
    (*(v132 + 8))(v120, v121);
    goto LABEL_22;
  }

  (v63)(v129, v142, v50);
  v85 = v145;

  v86 = sub_1E41FFC94();
  v87 = sub_1E4206814();

  v88 = os_log_type_enabled(v86, v87);
  v122 = a25;
  if (v88)
  {
    OUTLINED_FUNCTION_6_21();
    v89 = OUTLINED_FUNCTION_16_15();
    v151[0] = v89;
    *a24 = 136446210;
    *(a24 + 4) = sub_1E3270FC8(v139, v85, v151);
    _os_log_impl(&dword_1E323F000, v86, v87, "%{public}s promise operation request was successful.", a24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v89);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_51_2();
  }

  v90 = OUTLINED_FUNCTION_53();
  v70(v90);
  OUTLINED_FUNCTION_5_0(v72 + 16, v151);
  v91 = swift_weakLoadStrong();
  if (v91)
  {
    *(v91 + 136) = v141;
  }

  v92 = sub_1E4206BA4();
  v93 = VUISignpostLogObject(v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1E4297BD0;
  v95 = MEMORY[0x1E69E6158];
  *(v94 + 56) = MEMORY[0x1E69E6158];
  v98 = sub_1E3283528(v94, v96, v97);
  v99 = v136;
  *(v94 + 32) = v134;
  *(v94 + 40) = v99;
  *(v94 + 96) = v95;
  *(v94 + 104) = v98;
  v100 = v135;
  *(v94 + 64) = v98;
  *(v94 + 72) = v100;
  *(v94 + 80) = a21;
  *(v94 + 136) = v95;
  *(v94 + 144) = v98;
  *(v94 + 112) = a22;
  *(v94 + 120) = a23;

  OUTLINED_FUNCTION_62_6();
  OUTLINED_FUNCTION_61_4();
  v101 = v137;
  sub_1E41FFB94();

  OUTLINED_FUNCTION_5_0(v72 + 16, v150);
  v102 = swift_weakLoadStrong();
  if (v102)
  {
    v103 = v102;
    OUTLINED_FUNCTION_5_0(v72 + 16, &v149);
    v104 = swift_weakLoadStrong();
    if (v104)
    {
      v105 = *(v104 + 136);

      if (!v105)
      {
LABEL_21:
        *(v103 + 144) = v105;

        goto LABEL_22;
      }

      v107 = (*(*v105 + 232))(v106);

      if (v107)
      {
        v147 = a27;
        OUTLINED_FUNCTION_4_0();
        v144 = swift_allocObject();
        OUTLINED_FUNCTION_5_0(v72 + 16, &v148);
        swift_weakLoadStrong();
        swift_weakInit();

        v108 = v125;
        v109 = *(v125 + 16);
        v146 = v107;
        v110 = v124;
        v111 = v126;
        v109(v124, v101, v126);
        v112 = (*(v108 + 80) + 32) & ~*(v108 + 80);
        v113 = (v123 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
        v114 = (v113 + 23) & 0xFFFFFFFFFFFFFFF8;
        v115 = swift_allocObject();
        v116 = v147;
        *(v115 + 16) = v127;
        *(v115 + 24) = v116;
        (*(v108 + 32))(v115 + v112, v110, v111);
        v117 = (v115 + v113);
        *v117 = v139;
        v117[1] = v85;
        *(v115 + v114) = v144;
        v118 = (v115 + ((v114 + 15) & 0xFFFFFFFFFFFFFFF8));
        v119 = v122;
        *v118 = v138;
        v118[1] = v119;

        v105 = sub_1E41EC148(sub_1E37B5BCC, v115);

        goto LABEL_21;
      }
    }

    v105 = 0;
    goto LABEL_21;
  }

LABEL_22:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B10BC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v25 = v8;
  v10 = v9;
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v28 = *(v10 + 8);
  v29 = *v10;
  v26 = *(v10 + 17);
  v27 = *(v10 + 16);
  v18 = sub_1E4206B94();
  v19 = VUISignpostLogObject(v18);
  OUTLINED_FUNCTION_61_4();
  sub_1E41FFBA4();

  sub_1E324FBDC();
  OUTLINED_FUNCTION_22_6();
  v20(v17);

  v21 = sub_1E41FFC94();
  v22 = sub_1E4206814();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_6_21();
    v31[0] = OUTLINED_FUNCTION_100();
    *v23 = 136446210;
    *(v23 + 4) = sub_1E3270FC8(v25, v7, v31);
    _os_log_impl(&dword_1E323F000, v21, v22, "%{public}s received model service response", v23, 0xCu);
    OUTLINED_FUNCTION_72_8();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v13 + 8))(v17, v11);
  OUTLINED_FUNCTION_5_0(v5 + 16, v31);
  if (swift_weakLoadStrong())
  {
    sub_1E37B130C(v29, v28, v27 | (v26 << 8), v3, v1);
  }

  OUTLINED_FUNCTION_5_0(v5 + 16, &v30);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 144) = 0;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B130C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 0x100) != 0)
  {
    sub_1E37B3384();
  }

  else
  {
    sub_1E37B2E80();
  }
}

void sub_1E37B1320()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = sub_1E37AEAD8(*(v0 + 72));
  v12 = v11;
  if (v10 == 0x676E696E6E7572 && v11 == 0xE700000000000000)
  {
  }

  else
  {
    v14 = sub_1E42079A4();

    if ((v14 & 1) == 0)
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_11();
      v15(v1);
      swift_retain_n();
      v16 = sub_1E41FFC94();
      v17 = sub_1E42067F4();
      if (os_log_type_enabled(v16, v17))
      {
        OUTLINED_FUNCTION_49_0();
        v34 = OUTLINED_FUNCTION_40_10();
        *v12 = 136446466;
        v18 = sub_1E37AF70C();
        v20 = OUTLINED_FUNCTION_58_0(v18, v19);

        *(v12 + 4) = v20;
        OUTLINED_FUNCTION_59_3();
        v21 = *(v2 + 72);

        v22 = sub_1E37AEAD8(v21);
        v24 = OUTLINED_FUNCTION_58_0(v22, v23);

        *(v12 + 14) = v24;
        OUTLINED_FUNCTION_71_8(&dword_1E323F000, v16, v17, "%{public}s request is not running so can't be suspended: current state: %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_21_0();
      }

      else
      {
      }

      (*(v5 + 8))(v1, v3);
      goto LABEL_14;
    }
  }

  *(v2 + 72) = 2;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v25(v9);

  v26 = sub_1E41FFC94();
  v27 = sub_1E4206814();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_6_21();
    v29 = OUTLINED_FUNCTION_100();
    v34 = v29;
    *v28 = 136446210;
    v30 = sub_1E37AF70C();
    v32 = OUTLINED_FUNCTION_58_0(v30, v31);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1E323F000, v26, v27, "%{public}s suspended request", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v9, v3);
LABEL_14:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B1630()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v3 = *v0;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  v57 = sub_1E37AF70C();
  v58 = v14;
  v15 = sub_1E37AEAD8(*(v0 + 72));
  if (v15 != 0x65646E6570737573 || v16 != 0xE900000000000064)
  {
    OUTLINED_FUNCTION_17_17(v15, v16, 0x65646E6570737573);
    OUTLINED_FUNCTION_73_1();
    if (v1)
    {
      goto LABEL_14;
    }

    v1 = 102;
    if (sub_1E37AEAD8(*(v0 + 72)) != 0x64656873696E6966 || v18 != 0xE800000000000000)
    {
      sub_1E42079A4();
      OUTLINED_FUNCTION_73_1();
      v20 = sub_1E324FBDC();
      (*(v6 + 16))(v10, v20, v4);

      v21 = v58;

      v22 = sub_1E41FFC94();
      v23 = sub_1E4206814();

      if (os_log_type_enabled(v22, v23))
      {
        OUTLINED_FUNCTION_49_0();
        v59 = OUTLINED_FUNCTION_40_10();
        *v6 = 136446466;
        v24 = sub_1E3270FC8(v57, v21, &v59);

        *(v6 + 4) = v24;
        OUTLINED_FUNCTION_59_3();
        v25 = *(v2 + 72);

        v26 = sub_1E37AEAD8(v25);
        v28 = sub_1E3270FC8(v26, v27, &v59);

        *(v6 + 14) = v28;
        OUTLINED_FUNCTION_71_8(&dword_1E323F000, v22, v23, "%{public}s trying to resume a request which is neither suspended nor finished:%s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_21_0();
      }

      else
      {
      }

      (*(v6 + 8))(v10, v4);
      goto LABEL_26;
    }
  }

LABEL_14:
  v29 = sub_1E37AEAD8(*(v0 + 72));
  if (v29 == 0x65646E6570737573 && v30 == 0xE900000000000064)
  {

LABEL_21:

    *(v0 + 72) = 1;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_17_17(v29, v30, 0x65646E6570737573);
  OUTLINED_FUNCTION_73_1();
  if (v1)
  {
    goto LABEL_21;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_22_6();
  v32(v13);
  swift_retain_n();
  v33 = sub_1E41FFC94();
  v34 = sub_1E4206814();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_49_0();
    v56 = OUTLINED_FUNCTION_100();
    v59 = v56;
    *v35 = 136446466;
    v36 = sub_1E37AF70C();
    v38 = OUTLINED_FUNCTION_58_0(v36, v37);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2048;
    sub_1E37AF890(v39, v40, v41, v42);
    type metadata accessor for ServiceRequest.SavedResponseType(0, *(v3 + 80), *(v3 + 88), v43);
    v44 = sub_1E4206334();

    *(v35 + 14) = v44;

    _os_log_impl(&dword_1E323F000, v33, v34, "%{public}s %ld saved responses.", v35, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v56);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  v45 = (*(v6 + 8))(v13, v4);
  v59 = sub_1E37AF890(v45, v46, v47, v48);
  MEMORY[0x1EEE9AC00](v59);
  v49 = v58;
  *(&v55 - 4) = v57;
  *(&v55 - 3) = v49;
  *(&v55 - 2) = v0;
  type metadata accessor for ServiceRequest.SavedResponseType(255, *(v3 + 80), *(v3 + 88), v50);
  sub_1E4206374();
  OUTLINED_FUNCTION_15_6();
  swift_getWitnessTable();
  sub_1E4206234();

  v59 = sub_1E37AF890(v51, v52, v53, v54);
  sub_1E4206364();
  sub_1E37AF918(v59);
LABEL_26:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B1B80()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v116 = v3;
  v113 = v4;
  v124 = v5;
  v6 = type metadata accessor for VideosEnginePromiseResponse(255, *(*v1 + 80), v3, v1);
  sub_1E3781F38(v6, v7, v8);
  sub_1E4207BC4();
  OUTLINED_FUNCTION_0_10();
  v120 = v10;
  v121 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v119 = v12;
  OUTLINED_FUNCTION_138();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v117 = v14;
  v118 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v112 = v15 - v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  v111 = &v108 - v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  v114 = v2;
  v115 = v20;
  v21 = OUTLINED_FUNCTION_32_10();
  v25 = type metadata accessor for ServiceRequest.SavedResponseType(v21, v22, v23, v24);
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v108 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C3F0, qword_1E42A0B50);
  v123 = v6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v122 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_4_6();
  v37 = (v35 - v36);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v108 - v39;
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v108 - v43;
  v45 = *(v27 + 16);
  (v45)(v31, v124, v25, v42);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = *(v27 + 8);
    v46(v31, v25);
    v45(v0, v124, v25);
    OUTLINED_FUNCTION_74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v47 = *v0;
      v48 = *(v0 + 8);
      v49 = *(v0 + 16);
      v124 = *(v0 + 24);

      v50 = sub_1E324FBDC();
      v51 = v117;
      v52 = v118;
      v53 = v112;
      (*(v117 + 16))(v112, v50, v118);
      v54 = v116;

      v55 = sub_1E41FFC94();
      v56 = sub_1E42067F4();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = OUTLINED_FUNCTION_6_21();
        v123 = v47;
        v58 = v57;
        v59 = v48;
        v60 = OUTLINED_FUNCTION_100();
        v125 = v60;
        *v58 = 136446210;
        *(v58 + 4) = sub_1E3270FC8(v113, v54, &v125);
        _os_log_impl(&dword_1E323F000, v55, v56, "%{public}s there's no response saved, returning error.", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v60);
        v48 = v59;
        OUTLINED_FUNCTION_6_0();
        v47 = v123;
        OUTLINED_FUNCTION_6_0();

        (*(v51 + 8))(v112, v52);
      }

      else
      {

        (*(v51 + 8))(v53, v52);
      }

      v93 = v119;
      *v119 = v47;
      v93[1] = v48;
      *(v93 + 16) = v49;
      swift_storeEnumTagMultiPayload();
      v94 = OUTLINED_FUNCTION_39_9();
      sub_1E3781F8C(v94, v95, v49);
      v124(v93);

      v96 = OUTLINED_FUNCTION_39_9();
      sub_1E37B5ACC(v96, v97, v49);

      v98 = OUTLINED_FUNCTION_74();
      v99(v98);
LABEL_17:
      *(v114 + 136) = 0;

      goto LABEL_18;
    }

    v76 = OUTLINED_FUNCTION_74();
    (v46)(v76);
  }

  else
  {
    v61 = v122;
    (*(v122 + 32))(v44, v31, TupleTypeMetadata2);
    v62 = *(v61 + 16);
    v62(v40, v44, TupleTypeMetadata2);
    v63 = &v40[*(TupleTypeMetadata2 + 48)];
    v64 = *v63;
    v112 = *(v63 + 1);
    v65 = v123;
    v109 = *(v123 - 8);
    v110 = v64;
    v66 = *(v109 + 8);
    v124 = v40;
    v66(v40, v123);
    v108 = v62;
    v62(v37, v44, TupleTypeMetadata2);

    v67 = *&v37[*(v65 + 28)];

    v66(v37, v65);
    if (!v67)
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_65_3();
      v77 = v111;
      v78(v111);

      v79 = sub_1E41FFC94();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_56_4())
      {
        OUTLINED_FUNCTION_6_21();
        v125 = OUTLINED_FUNCTION_16_15();
        *(v77 + 4) = OUTLINED_FUNCTION_70_6(4.8751e-34);
        OUTLINED_FUNCTION_6_29();
        _os_log_impl(v80, v81, v82, v83, v84, 0xCu);
        OUTLINED_FUNCTION_9_22();
        OUTLINED_FUNCTION_51_2();

        (*(v40 + 1))(v111, v45);
      }

      else
      {

        (*(v40 + 1))(v77, v45);
      }

      v100 = OUTLINED_FUNCTION_44_14();
      v101(v100);

      v102 = OUTLINED_FUNCTION_43_9();
      v103(v102);
      OUTLINED_FUNCTION_68_7();
      v110(v77);

      v104 = OUTLINED_FUNCTION_45_7();
      v105(v104);
      v106 = OUTLINED_FUNCTION_39_9();
      v107(v106);
      goto LABEL_17;
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_65_3();
    v68 = v115;
    v69(v115);

    v70 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_56_4())
    {
      OUTLINED_FUNCTION_6_21();
      v125 = OUTLINED_FUNCTION_16_15();
      *(v68 + 4) = OUTLINED_FUNCTION_70_6(4.8751e-34);
      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v71, v72, v73, v74, v75, 0xCu);
      OUTLINED_FUNCTION_9_22();
      OUTLINED_FUNCTION_51_2();

      (*(v40 + 1))(v115, v45);
    }

    else
    {

      (*(v40 + 1))(v68, v45);
    }

    v85 = OUTLINED_FUNCTION_44_14();
    v86(v85);

    v87 = OUTLINED_FUNCTION_43_9();
    v88(v87);
    OUTLINED_FUNCTION_68_7();
    v110(v68);

    v89 = OUTLINED_FUNCTION_45_7();
    v90(v89);
    v91 = OUTLINED_FUNCTION_39_9();
    v92(v91);
  }

LABEL_18:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37B2400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  *(v4 + 72) = 5;
  v12 = sub_1E37AF890(a1, a2, a3, a4);
  type metadata accessor for ServiceRequest.SavedResponseType(0, *(v6 + 80), *(v6 + 88), v7);
  sub_1E4206374();
  sub_1E4206364();
  sub_1E37AF918(v12);
  v8 = v4[17];
  if (v8)
  {
    v9 = *(*v8 + 336);

    v9(v10);
  }

  v5[17] = 0;
}

uint64_t sub_1E37B26CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
  OUTLINED_FUNCTION_67_6();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E4297BE0;
  v2 = MEMORY[0x1E69E65A8];
  *(v1 + 56) = MEMORY[0x1E69E6530];
  *(v1 + 64) = v2;
  *(v1 + 32) = v0;

  return sub_1E4205F44();
}

uint64_t sub_1E37B2760()
{
  OUTLINED_FUNCTION_52_7();
  v17 = &unk_1F5D81370;
  v18 = &off_1F5D81210;
  v16[8] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
  OUTLINED_FUNCTION_27_10();
  *(swift_allocObject() + 16) = xmmword_1E4297BE0;
  v1 = (*(*v0 + 320))();
  v16[0] = 0;
  v5 = OUTLINED_FUNCTION_7_46(v1, v2, v3, v4);
  sub_1E37B5450(v5, v15);
  type metadata accessor for DocumentServiceRequestContext(0);
  v6 = *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_controllerRef);
  v7 = *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_controllerRef + 8);

  MEMORY[0x1E69109E0](v6, v7);
  v8 = sub_1E37B53A4(v16);
  return OUTLINED_FUNCTION_55_6(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1E37B2890()
{
  OUTLINED_FUNCTION_52_7();
  v15 = &unk_1F5D81370;
  v16 = &off_1F5D81210;
  v14[8] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
  OUTLINED_FUNCTION_27_10();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E4297BE0;
  (*(*v1 + 304))();
  v14[0] = 0;
  v17 = v2;
  sub_1E37B5450(v14, v13);
  type metadata accessor for CollectionServiceRequestContext(0);
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestType);

  if (v3 != 5)
  {
    ViewModelRequestType.rawValue.getter(v3);
  }

  type metadata accessor for ServiceRequest(0, *(v0 + 80), *(v0 + 88), v4);
  v5 = OUTLINED_FUNCTION_74();
  MEMORY[0x1E69109E0](v5);

  v6 = sub_1E37B53A4(v14);
  return OUTLINED_FUNCTION_55_6(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1E37B2A00(uint64_t a1)
{
  v12 = &unk_1F5D81400;
  v13 = &off_1F5D81220;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
  OUTLINED_FUNCTION_27_10();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E4297BE0;
  (*(*a1 + 264))();
  v11[0] = 5;
  v14 = v3;
  type metadata accessor for ServiceRequest(0, *(v1 + 80), *(v1 + 88), v4);
  sub_1E37B5450(v11, v10);
  v8 = type metadata accessor for SearchFragmentRequestContext(0);
  v9 = &off_1F5D8AF40;
  BYTE8(v6) = 0;
  *&v7 = a1;

  sub_1E42074B4();
  MEMORY[0x1E69109E0](0x7246686372616553, 0xEF2E746E656D6761);
  *&v6 = *(a1 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_requestType);
  sub_1E4207614();
  sub_1E37B53A4(v11);
  return sub_1E37AF928(v10, &v7, *(&v6 + 1), 0xE000000000000000);
}

uint64_t sub_1E37B2BA8()
{
  OUTLINED_FUNCTION_52_7();
  v12 = &unk_1F5D81490;
  v13 = &off_1F5D81230;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
  OUTLINED_FUNCTION_27_10();
  *(swift_allocObject() + 16) = xmmword_1E4297BE0;
  v1 = (*(*v0 + 256))();
  v11[0] = 6;
  v5 = OUTLINED_FUNCTION_7_46(v1, v2, v3, v4);
  sub_1E37B5450(v5, v10);
  v8 = type metadata accessor for EpisodeCollectionServiceRequestContext(0);
  v9 = &off_1F5D8B008;
  *&v7 = v0;

  sub_1E37B53A4(v11);
  return sub_1E37AF928(v10, &v7, 0xD000000000000011, 0x80000001E425C430);
}

uint64_t sub_1E37B2CB8()
{
  OUTLINED_FUNCTION_52_7();
  v13 = &unk_1F5D81520;
  v14 = &off_1F5D81240;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
  OUTLINED_FUNCTION_27_10();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E4297BE0;
  v2 = sub_1E3DAE148((v1 + 32));
  v12[0] = 7;
  v6 = OUTLINED_FUNCTION_7_46(v2, v3, v4, v5);
  sub_1E37B5450(v6, v11);
  v9 = type metadata accessor for AutoDownloadsServiceRequestContext(0);
  v10 = &off_1F5D85270;
  *&v8 = v0;

  sub_1E37B53A4(v12);
  return sub_1E37AF928(v11, &v8, 0x6E776F446F747541, 0xED00007364616F6CLL);
}

uint64_t sub_1E37B2D9C()
{
  OUTLINED_FUNCTION_52_7();
  v14 = &unk_1F5D815B0;
  v15 = &off_1F5D81250;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
  OUTLINED_FUNCTION_27_10();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E4297BE0;
  sub_1E3C5F8F4((v1 + 32));
  v13[0] = 11;
  v6 = OUTLINED_FUNCTION_7_46(v2, v3, v4, v5);
  sub_1E37B5450(v6, v12);
  v10 = type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext(0);
  v11 = &off_1F5D79988;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  sub_1E3781B94(v0, boxed_opaque_existential_1);
  sub_1E37B53A4(v13);
  return sub_1E37AF928(v12, &v9, 0xD000000000000019, 0x80000001E425C450);
}

void sub_1E37B2E80()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v44 = v5;
  v7 = v6;
  v46 = *v0;
  v8 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v51 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v49 = v12 - v11;
  OUTLINED_FUNCTION_138();
  v50 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v48 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v47 = v16 - v15;
  OUTLINED_FUNCTION_138();
  v17 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;

  v24 = sub_1E37AF70C();
  v26 = v25;
  v27 = sub_1E324FBDC();
  v43 = v17;
  (*(v19 + 16))(v23, v27, v17);

  v28 = sub_1E41FFC94();
  v29 = sub_1E4206814();

  v45 = v24;
  if (os_log_type_enabled(v28, v29))
  {
    v42 = v4;
    v30 = OUTLINED_FUNCTION_49_0();
    v52[0] = swift_slowAlloc();
    *v30 = 136446466;
    *(v30 + 4) = sub_1E3270FC8(v24, v26, v52);
    *(v30 + 12) = 2080;
    v31 = sub_1E328692C(*(v7 + 16) == 0);
    v33 = v8;
    v34 = sub_1E3270FC8(v31, v32, v52);

    *(v30 + 14) = v34;
    v8 = v33;
    _os_log_impl(&dword_1E323F000, v28, v29, "%{public}s returned jsonDictionary, isEmpty:<%s>", v30, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    v4 = v42;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v19 + 8))(v23, v43);
  if (qword_1EE2A1590 != -1)
  {
    OUTLINED_FUNCTION_20_20(&qword_1EE2A1590);
  }

  OUTLINED_FUNCTION_4_0();
  v35 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_64_4();
  v36 = swift_allocObject();
  v36[2] = *(v46 + 80);
  v36[3] = *(v46 + 88);
  v36[4] = v35;
  v36[5] = v7;
  v36[6] = v7;
  v36[7] = v44;
  v36[8] = v45;
  v36[9] = v26;
  v36[10] = v4;
  v36[11] = v2;
  OUTLINED_FUNCTION_12_14(v36);
  v52[1] = 1107296256;
  v52[2] = sub_1E329EEC4;
  v52[3] = &block_descriptor_5;
  v37 = _Block_copy(v52);

  sub_1E4203FE4();
  OUTLINED_FUNCTION_4_2();
  sub_1E3274998(v38, v39, MEMORY[0x1E69E7F70]);
  v40 = OUTLINED_FUNCTION_63_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
  sub_1E328FD38(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v47, v49, v37);
  _Block_release(v37);
  (*(v51 + 8))(v49, v8);
  (*(v48 + 8))(v47, v50);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B3384()
{
  OUTLINED_FUNCTION_31_1();
  v51 = v1;
  v52 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v50 = *v0;
  v9 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v56 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v54 = v15;
  v55 = v16;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v53 = v18 - v17;
  OUTLINED_FUNCTION_138();
  v19 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  v58 = sub_1E37AF70C();
  v27 = v26;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_48_4();
  v49 = v19;
  v28(v25);

  sub_1E3781F8C(v8, v6, v4);
  v29 = v6;
  v30 = sub_1E41FFC94();
  v31 = sub_1E42067F4();
  v57 = v27;

  v59 = v8;
  sub_1E37B5ACC(v8, v29, v4);
  if (os_log_type_enabled(v30, v31))
  {
    v48 = v9;
    v32 = OUTLINED_FUNCTION_49_0();
    v60 = swift_slowAlloc();
    *v32 = 136446466;
    v33 = sub_1E3270FC8(v58, v27, &v60);
    *(v32 + 4) = v33;
    *(v32 + 12) = 2080;
    v61 = v8;
    v62 = v29;
    LOBYTE(v63) = v4;
    sub_1E3781F38(v33, v34, v35);
    v36 = v29;
    v37 = sub_1E4207AB4();
    v39 = v14;
    v40 = sub_1E3270FC8(v37, v38, &v60);

    *(v32 + 14) = v40;
    v14 = v39;
    _os_log_impl(&dword_1E323F000, v30, v31, "%{public}s model service request failed with error:<%s>", v32, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    v9 = v48;
    OUTLINED_FUNCTION_6_0();

    (*(v21 + 8))(v25, v49);
  }

  else
  {

    (*(v21 + 8))(v25, v49);
    v36 = v29;
  }

  sub_1E32ADE38();
  v41 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v42 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_64_4();
  v43 = swift_allocObject();
  *(v43 + 16) = *(v50 + 80);
  *(v43 + 24) = *(v50 + 88);
  *(v43 + 32) = v42;
  *(v43 + 40) = v51;
  *(v43 + 48) = v52;
  *(v43 + 56) = v59;
  *(v43 + 64) = v36;
  *(v43 + 72) = v4;
  *(v43 + 80) = v58;
  *(v43 + 88) = v57;
  OUTLINED_FUNCTION_12_14(v43);
  v62 = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v63 = v44;
  v64 = &block_descriptor_47;
  v45 = _Block_copy(&v61);
  sub_1E3781F8C(v59, v36, v4);

  sub_1E4203FE4();
  v61 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_2();
  sub_1E3274998(v46, v47, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  sub_1E328FD38(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v53, v14, v45);
  _Block_release(v45);

  (*(v56 + 8))(v14, v9);
  (*(v55 + 8))(v53, v54);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B388C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_31_1();
  v152 = v23;
  v153 = v24;
  v151 = v25;
  v146 = v26;
  v135 = v27;
  v138 = v28;
  v147 = v29;
  v31 = v30;
  v32 = type metadata accessor for VideosEnginePromiseResponse(255, a21, v28, v27);
  sub_1E3781F38(v32, v33, v34);
  OUTLINED_FUNCTION_32_10();
  v143 = sub_1E4207BC4();
  OUTLINED_FUNCTION_0_10();
  v140 = v35;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44();
  v137 = v37;
  OUTLINED_FUNCTION_138();
  v145 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v144 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5();
  v141 = v41 - v40;
  OUTLINED_FUNCTION_138();
  v142 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v139 = v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5();
  v136 = v45 - v44;
  OUTLINED_FUNCTION_1_2();
  v150 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v134 = &v132 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_25_3();
  v148 = a21;
  v149 = v51;
  OUTLINED_FUNCTION_138();
  sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v155 = v53;
  v156 = v52;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_25_3();
  v157 = v55;
  OUTLINED_FUNCTION_138();
  v56 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v58 = v57;
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5();
  v62 = v61 - v60;
  v63 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v65 = v64;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_4_6();
  v154 = v67 - v68;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v132 - v70;
  OUTLINED_FUNCTION_5_0(v31 + 16, &v159);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v73 = Strong;
    v132 = v65;
    v133 = v63;
    v74 = sub_1E4206B94();
    v75 = VUISignpostLogObject(v74);
    sub_1E41FFBE4();
    sub_1E41FFBA4();

    v76 = (*(v58 + 8))(v62, v56);
    v77 = *(*v73 + 296);
    v78 = v77(v76);
    if (v78)
    {
      (*(*v78 + 208))(2, 0, 1);
    }

    sub_1E327F454(v73 + 16, v158);
    v79 = *(a22 + 8);

    v81 = v148;
    v82 = v79(v80, v158, v148, a22);
    v83 = v77(v82);
    if (v83)
    {
      (*(*v83 + 208))(3, 0, 1);
    }

    v85 = v155;
    v84 = v156;
    v86 = v157;
    (*(v155 + 16))(v22, v157, v156);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v81);
    v88 = v154;
    if (EnumTagSinglePayload == 1)
    {
      v155 = *(v85 + 8);
      (v155)(v22, v84);
      v89 = sub_1E324FBDC();
      v90 = v132;
      v91 = v133;
      (*(v132 + 16))(v88, v89, v133);
      v92 = v151;

      v93 = sub_1E41FFC94();
      sub_1E42067F4();

      if (OUTLINED_FUNCTION_56_4())
      {
        OUTLINED_FUNCTION_6_21();
        v158[0] = OUTLINED_FUNCTION_16_15();
        *v88 = 136446210;
        *(v88 + 4) = sub_1E3270FC8(v146, v92, v158);
        OUTLINED_FUNCTION_6_29();
        _os_log_impl(v94, v95, v96, v97, v98, 0xCu);
        OUTLINED_FUNCTION_9_22();
        OUTLINED_FUNCTION_51_2();

        (*(v90 + 8))(v154, v133);
      }

      else
      {

        (*(v90 + 8))(v88, v91);
      }

      v129 = v137;
      *v137 = 0xD00000000000003CLL;
      v129[1] = 0x80000001E425C5E0;
      *(v129 + 16) = 0;
      swift_storeEnumTagMultiPayload();
      v152(v129);

      v130 = OUTLINED_FUNCTION_45_7();
      v131(v130);
      (v155)(v86, v84);
    }

    else
    {
      v109 = v150;
      v143 = *(v150 + 32);
      v143(v149, v22, v81);
      sub_1E32ADE38();
      v154 = sub_1E4206A04();
      OUTLINED_FUNCTION_4_0();
      v110 = swift_allocObject();
      swift_weakInit();
      v147 = v73;
      v111 = v134;
      v112 = OUTLINED_FUNCTION_39_9();
      v113(v112);
      v114 = (*(v109 + 80) + 72) & ~*(v109 + 80);
      v115 = (v48 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
      v116 = swift_allocObject();
      v116[2] = v81;
      v116[3] = a22;
      v117 = v138;
      v116[4] = v110;
      v116[5] = v117;
      v118 = v146;
      v116[6] = v135;
      v116[7] = v118;
      v116[8] = v151;
      v143(v116 + v114, v111, v81);
      v119 = (v116 + v115);
      v120 = v153;
      *v119 = v152;
      v119[1] = v120;
      v158[4] = sub_1E37B5C98;
      v158[5] = v116;
      v158[0] = MEMORY[0x1E69E9820];
      v158[1] = 1107296256;
      OUTLINED_FUNCTION_14_1();
      v158[2] = v121;
      v158[3] = &block_descriptor_32;
      v122 = _Block_copy(v158);

      v123 = v136;
      sub_1E4203FE4();
      v158[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_4_2();
      sub_1E3274998(v124, v125, MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
      sub_1E328FD38(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000);
      v126 = v141;
      v127 = v145;
      sub_1E42072E4();
      v128 = v154;
      MEMORY[0x1E6911380](0, v123, v126, v122);
      _Block_release(v122);

      (*(v144 + 8))(v126, v127);
      (*(v139 + 8))(v123, v142);
      (*(v150 + 8))(v149, v81);
      (*(v155 + 8))(v157, v156);
    }
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_22_6();
    v99(v71);
    v100 = sub_1E41FFC94();
    v101 = sub_1E42067F4();
    if (os_log_type_enabled(v100, v101))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v102, v103, v104, v105, v106, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    v107 = OUTLINED_FUNCTION_53();
    v108(v107);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B4330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_31_1();
  v22 = v21;
  v136 = v23;
  v137 = v24;
  v133 = v25;
  v138 = v26;
  v130 = v27;
  v29 = v28;
  v31 = v30;
  v32 = type metadata accessor for VideosEnginePromiseResponse(255, v21, v27, v26);
  v126 = sub_1E3781F38(v32, v33, v34);
  sub_1E4207BC4();
  OUTLINED_FUNCTION_0_10();
  v123 = v36;
  v124 = v35;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_44();
  v122 = v38;
  v39 = OUTLINED_FUNCTION_138();
  v41 = type metadata accessor for ServiceRequest.SavedResponseType(v39, v22, a21, v40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_44();
  v127 = v43;
  OUTLINED_FUNCTION_1_2();
  v132 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5();
  v131 = v47 - v46;
  OUTLINED_FUNCTION_138();
  v48 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v50 = v49;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_4_6();
  v54 = v52 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v116 - v56;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_1_2();
  v135 = v59;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_44();
  v134 = v61;
  OUTLINED_FUNCTION_5_0(v31 + 16, &v140);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v63 = Strong;
    v120 = v54;
    v129 = v29;
    v121 = v41;
    v125 = v48;
    v128 = v50;
    if (v29)
    {
      v117 = v32;

      sub_1E324FBDC();
      OUTLINED_FUNCTION_48_4();
      v119 = v64;
      (v64)(a21);
      v65 = v48;
      v66 = v138;

      v67 = sub_1E41FFC94();
      v68 = sub_1E4206814();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = OUTLINED_FUNCTION_6_21();
        v70 = OUTLINED_FUNCTION_100();
        v139 = v70;
        *v69 = 136446210;
        *(v69 + 4) = sub_1E3270FC8(v130, v66, &v139);
        _os_log_impl(&dword_1E323F000, v67, v68, "%{public}s there's still more data to come, will return partial response.", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v70);
        OUTLINED_FUNCTION_51_2();
        OUTLINED_FUNCTION_6_0();
      }

      v118 = *(v50 + 8);
      v118(a21, v65);
      v71 = *v63;
      v72 = sub_1E37AF70C();
      v74 = v73;
      v75 = *(v71 + 80);
      type metadata accessor for VideosEnginePromiseResponse(255, v75, v76, v77);
      sub_1E42005F4();
      OUTLINED_FUNCTION_4_0();
      v78 = swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_27_10();
      v79 = swift_allocObject();
      v79[2] = v75;
      v79[3] = *(v71 + 88);
      v79[4] = v78;
      v29 = v129;
      v79[5] = v129;
      v79[6] = v72;
      v79[7] = v74;

      v80 = sub_1E4200604();
      (*(v132 + 16))(v131, v133, v22);
      v81 = v134;
      sub_1E3B9E8EC(v80, v22, v134, v82);

      v32 = v117;
      v83 = v138;
    }

    else
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_48_4();
      v119 = v84;
      (v84)(v57);
      v85 = v138;

      v86 = sub_1E41FFC94();
      v87 = sub_1E4206814();

      if (os_log_type_enabled(v86, v87))
      {
        OUTLINED_FUNCTION_6_21();
        v139 = OUTLINED_FUNCTION_16_15();
        *v41 = 136446210;
        *(v41 + 4) = sub_1E3270FC8(v130, v85, &v139);
        _os_log_impl(&dword_1E323F000, v86, v87, "%{public}s has finished getting all the data, will return full response.", v41, 0xCu);
        OUTLINED_FUNCTION_72_8();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_51_2();

        v88 = OUTLINED_FUNCTION_66_7();
        v90 = v125;
      }

      else
      {

        v88 = OUTLINED_FUNCTION_66_7();
        v90 = v48;
      }

      v118 = v89;
      v89(v88, v90);
      (*(v132 + 16))(v131, v133, v22);
      v81 = v134;
      sub_1E3B9E8EC(0, v22, v134, v91);
      v83 = v138;
    }

    v92 = sub_1E37AEAD8(*(v63 + 72));
    if (v92 == 0x65646E6570737573 && v93 == 0xE900000000000064)
    {

      v96 = v125;
    }

    else
    {
      v95 = OUTLINED_FUNCTION_17_17(v92, v93, 0x65646E6570737573);

      v96 = v125;
      if ((v95 & 1) == 0)
      {
        v97 = v135;
        v98 = v122;
        (*(v135 + 16))(v122, v81, v32);
        swift_storeEnumTagMultiPayload();
        v136(v98);
        v99 = OUTLINED_FUNCTION_74();
        v100(v99);
        (*(v97 + 8))(v81, v32);
        if (!v29)
        {
          *(v63 + 72) = 4;
          *(v63 + 136) = 0;
        }

LABEL_22:

        goto LABEL_23;
      }
    }

    v101 = sub_1E324FBDC();
    v102 = v120;
    v119(v120, v101, v96);

    v103 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_56_4())
    {
      OUTLINED_FUNCTION_6_21();
      v139 = OUTLINED_FUNCTION_16_15();
      MEMORY[0xE900000000000064] = 136446210;
      MEMORY[0xE900000000000068] = sub_1E3270FC8(v130, v83, &v139);
      OUTLINED_FUNCTION_6_29();
      _os_log_impl(v104, v105, v106, v107, v108, 0xCu);
      OUTLINED_FUNCTION_9_22();
      OUTLINED_FUNCTION_51_2();
    }

    v118(v102, v96);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C3F0, qword_1E42A0B50);
    v109 = (v127 + *(swift_getTupleTypeMetadata2() + 48));
    v110 = v135;
    (*(v135 + 16))(v127, v81, v32);
    v111 = v137;
    *v109 = v136;
    v109[1] = v111;
    OUTLINED_FUNCTION_74();
    swift_storeEnumTagMultiPayload();

    v139 = sub_1E37AF890(v112, v113, v114, v115);
    sub_1E4206374();
    sub_1E4206354();
    sub_1E37AF918(v139);
    (*(v110 + 8))(v81, v32);
    if (!v129)
    {
      *(v63 + 72) = 4;
    }

    goto LABEL_22;
  }

LABEL_23:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B4BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_31_1();
  v93 = v22;
  v94 = v23;
  v89 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = OUTLINED_FUNCTION_32_10();
  v90 = type metadata accessor for ServiceRequest.SavedResponseType(v35, v36, v37, v38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_69_3();
  OUTLINED_FUNCTION_0_10();
  v91 = v41;
  v92 = v40;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5();
  v44 = v43 - v42;
  v47 = type metadata accessor for VideosEnginePromiseResponse(255, a21, v45, v46);
  sub_1E3781F38(v47, v48, v49);
  OUTLINED_FUNCTION_32_10();
  v50 = sub_1E4207BC4();
  OUTLINED_FUNCTION_0_10();
  v52 = v51;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v85 - v54;
  OUTLINED_FUNCTION_5_0(v34 + 16, &v96);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v57 = Strong;
    v85 = v30;
    v86 = v28;
    v87 = v26;
    v88 = v32;
    v58 = sub_1E37AEAD8(*(Strong + 72));
    if (v58 == 0x65646E6570737573 && v59 == 0xE900000000000064)
    {
    }

    else
    {
      v61 = OUTLINED_FUNCTION_17_17(v58, v59, 0x65646E6570737573);

      if ((v61 & 1) == 0)
      {
        v62 = v86;
        *v55 = v85;
        *(v55 + 1) = v62;
        v63 = v87;
        v55[16] = v87;
        swift_storeEnumTagMultiPayload();
        v64 = OUTLINED_FUNCTION_53();
        sub_1E3781F8C(v64, v65, v63);
        v93(v55);
        (*(v52 + 8))(v55, v50);
        *(v57 + 136) = 0;

LABEL_19:
        *(v57 + 72) = 4;

        goto LABEL_20;
      }
    }

    v66 = sub_1E37AEAD8(*(v57 + 72));
    if (v66 == 0x65646E6570737573 && v67 == 0xE900000000000064)
    {

      v71 = v91;
      v70 = v92;
    }

    else
    {
      v69 = OUTLINED_FUNCTION_17_17(v66, v67, 0x65646E6570737573);

      v71 = v91;
      v70 = v92;
      if ((v69 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v72(v44);

    v73 = sub_1E41FFC94();
    v74 = sub_1E4206814();

    v75 = os_log_type_enabled(v73, v74);
    v76 = v86;
    if (v75)
    {
      v77 = OUTLINED_FUNCTION_6_21();
      v95 = OUTLINED_FUNCTION_100();
      *v77 = 136446210;
      *(v77 + 4) = sub_1E3270FC8(v89, v94, &v95);
      _os_log_impl(&dword_1E323F000, v73, v74, "%{public}s saving failure service response.", v77, 0xCu);
      OUTLINED_FUNCTION_72_8();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v71 + 8))(v44, v70);
    v78 = v88;
    v79 = v87;
    v80 = v85;
    *v21 = v85;
    *(v21 + 8) = v76;
    *(v21 + 16) = v79;
    *(v21 + 24) = v93;
    *(v21 + 32) = v78;
    swift_storeEnumTagMultiPayload();
    sub_1E3781F8C(v80, v76, v79);

    v95 = sub_1E37AF890(v81, v82, v83, v84);
    sub_1E4206374();
    sub_1E4206354();
    sub_1E37AF918(v95);
    goto LABEL_19;
  }

LABEL_20:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B4FE8()
{
  OUTLINED_FUNCTION_31_1();
  v45 = v1;
  v46 = v2;
  v4 = v3;
  v40 = v5;
  v7 = v6;
  v9 = v8;
  v11 = type metadata accessor for VideosEnginePromiseResponse(255, v10, v5, v3);
  sub_1E3781F38(v11, v12, v13);
  v14 = sub_1E4207BC4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_69_3();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_47_3();
  v42 = *(v9 + 8);
  v43 = *v9;
  v41 = *(v9 + 16);
  v26 = *(v9 + 17);
  OUTLINED_FUNCTION_5_0(v7 + 16, &v48);
  Strong = swift_weakLoadStrong();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  if (Strong)
  {
    v29 = v26;
    v28(v11);

    v30 = sub_1E41FFC94();
    v31 = sub_1E4206814();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_6_21();
      v33 = OUTLINED_FUNCTION_100();
      v47 = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_1E3270FC8(v40, v4, &v47);
      _os_log_impl(&dword_1E323F000, v30, v31, "%{public}s received multipart model response.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v34 = OUTLINED_FUNCTION_63_0();
    v35(v34);
    sub_1E37B130C(v43, v42, v41 | (v29 << 8), v45, v46);
    *(Strong + 144) = 0;
  }

  else
  {
    v44 = v16;
    v28(v24);

    v36 = sub_1E41FFC94();
    v37 = sub_1E42067F4();

    if (OUTLINED_FUNCTION_56_4())
    {
      v38 = OUTLINED_FUNCTION_6_21();
      v39 = OUTLINED_FUNCTION_100();
      v47 = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_1E3270FC8(v40, v4, &v47);
      _os_log_impl(&dword_1E323F000, v36, v37, "%{public}s serviceRequestPromiseWrappingVideosEnginePromise request not valid anymore.", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_21_0();
    }

    (*(v20 + 8))(v24, v18);
    *v0 = 0xD000000000000025;
    *(v0 + 8) = 0x80000001E425C620;
    *(v0 + 16) = 1;
    swift_storeEnumTagMultiPayload();
    v45(v0);
    (*(v44 + 8))(v0, v14);
  }

  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E37B548C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2A1F0;
  if (!qword_1ECF2A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A1F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServiceRequestState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ServiceRequestState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}