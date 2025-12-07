uint64_t WorkoutPlansLayout.init(contentMargins:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5A2A2F4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t WorkoutPlansLayout.contentMargins.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5A2A2F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1E590F5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5A2C114();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E590F634(uint64_t a1)
{
  v2 = sub_1E590F810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E590F670(uint64_t a1)
{
  v2 = sub_1E590F810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlansLayout.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5D0, &qword_1E5A35A00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E590F810();
  sub_1E5A2C224();
  sub_1E5A2A2F4();
  sub_1E590FB1C(&qword_1ECFFD5E0, MEMORY[0x1E699D938]);
  sub_1E5A2C0B4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1E590F810()
{
  result = qword_1ECFFD5D8;
  if (!qword_1ECFFD5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD5D8);
  }

  return result;
}

uint64_t WorkoutPlansLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_1E5A2A2F4();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5E8, &qword_1E5A35A08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for WorkoutPlansLayout(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E590F810();
  v12 = v19;
  sub_1E5A2C214();
  if (!v12)
  {
    v13 = v17;
    sub_1E590FB1C(&qword_1ECFFD5F0, MEMORY[0x1E699D948]);
    sub_1E5A2BFE4();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_1E58FD628(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for WorkoutPlansLayout(uint64_t a1)
{
  result = qword_1ECFFD5F8;
  if (!qword_1ECFFD5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E590FB1C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E5A2A2F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E590FB78(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5D0, &qword_1E5A35A00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E590F810();
  sub_1E5A2C224();
  sub_1E5A2A2F4();
  sub_1E590FB1C(&qword_1ECFFD5E0, MEMORY[0x1E699D938]);
  sub_1E5A2C0B4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1E590FD08(uint64_t a1)
{
  result = sub_1E5A2A2F4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E590FD88()
{
  result = qword_1ECFFD608;
  if (!qword_1ECFFD608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD608);
  }

  return result;
}

unint64_t sub_1E590FDE0()
{
  result = qword_1ECFFD610;
  if (!qword_1ECFFD610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD610);
  }

  return result;
}

unint64_t sub_1E590FE38()
{
  result = qword_1ECFFD618;
  if (!qword_1ECFFD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD618);
  }

  return result;
}

uint64_t sub_1E590FE8C()
{
  sub_1E5A2AB24();
  sub_1E591B4FC(&qword_1EE2CFAF0, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  return sub_1E5A2C264();
}

uint64_t TrainerPreferenceView.init(store:artworkViewBuilder:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0, MEMORY[0x1E6999B78]);
  result = sub_1E5A2A654();
  *a4 = result;
  a4[1] = v8;
  a4[2] = a2;
  a4[3] = a3;
  return result;
}

uint64_t sub_1E590FFB8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();

  sub_1E5A2B934();

  v4 = *(v9 + 16) + 1;
  v5 = (v9 + 48);
  while (--v4)
  {
    v6 = v5[1];
    if (*(v5 - 1) != a1 || *v5 != a2)
    {
      v5 += 9;
      if ((sub_1E5A2C114() & 1) == 0)
      {
        continue;
      }
    }

    return v6;
  }

  return 0;
}

__n128 sub_1E59100FC@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();

  sub_1E5A2B934();

  v6 = *(v19 + 16);
  if (v6)
  {
    v7 = 32;
    while (1)
    {
      v14 = *(v19 + v7);
      v9 = *(v19 + v7 + 32);
      v8 = *(v19 + v7 + 48);
      v10 = *(v19 + v7 + 16);
      v18 = *(v19 + v7 + 64);
      v16 = v9;
      v17 = v8;
      v15 = v10;
      if (__PAIR128__(v10, *(&v14 + 1)) == __PAIR128__(a2, a1) || (sub_1E5A2C114() & 1) != 0)
      {
        break;
      }

      v7 += 72;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }

    sub_1E591B3E0(&v14, v13);

    v12 = v17;
    *(a3 + 32) = v16;
    *(a3 + 48) = v12;
    *(a3 + 64) = v18;
    result = v15;
    *a3 = v14;
    *(a3 + 16) = result;
  }

  else
  {
LABEL_6:

    *(a3 + 64) = 0;
    result.n128_u64[0] = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1E5910224(uint64_t a1, uint64_t a2)
{
  v29 = *v2;
  v28 = *(v2 + 1);
  v27 = v2[3];
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v10;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = (*(a1 + 48) + ((v10 << 10) | (16 * v12)));
    v14 = *v13;
    v15 = v13[1];

    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
    *v34 = v29;
    *&v34[8] = v28;
    *&v34[24] = v27;
    type metadata accessor for TrainerPreferenceView(0, v16, v17, v18);
    sub_1E59100FC(v14, v15, &v38);

    if (v38)
    {
      v35 = v40;
      v36 = v41;
      v37 = v42;
      *v34 = v38;
      *&v34[16] = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1E58E6CF4(0, *(v26 + 2) + 1, 1, v26);
      }

      v20 = *(v26 + 2);
      v19 = *(v26 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v24 = sub_1E58E6CF4((v19 > 1), v20 + 1, 1, v26);
        v21 = v20 + 1;
        v26 = v24;
      }

      v33 = v37;
      v31 = v35;
      v32 = v36;
      v22 = *v34;
      v30 = *&v34[16];
      *(v26 + 2) = v21;
      v23 = &v26[72 * v20];
      *(v23 + 2) = v22;
      *(v23 + 12) = v33;
      *(v23 + 4) = v31;
      *(v23 + 5) = v32;
      *(v23 + 3) = v30;
    }

    else
    {
      v35 = v40;
      v36 = v41;
      v37 = v42;
      *v34 = v38;
      *&v34[16] = v39;
      sub_1E58BAD14(v34, &qword_1ECFFD7D8, &qword_1E5A35E50);
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      *&v38 = v26;

      sub_1E59199C8(&v38, sub_1E5A226D0, &type metadata for WorkoutPlanModality, sub_1E5919D7C, sub_1E5919B74);

      return v38;
    }

    v8 = *(v5 + 8 * v10);
    ++v11;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  MEMORY[0x1E69331F0](a2);

  __break(1u);
  return result;
}

uint64_t sub_1E5910500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_getKeyPath();

  sub_1E5A2B934();

  v26[0] = v22;
  v26[1] = v23;
  v26[2] = v24;
  v26[3] = v25;

  result = sub_1E58F011C(v26);
  v4 = 0;
  v5 = 1 << *(*(&v25 + 1) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*(&v25 + 1) + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_9:
    v10 = (*(*(&v25 + 1) + 48) + 56 * (__clz(__rbit64(v7)) | (v4 << 6)));
    v11 = *v10;
    v12 = v10[1];
    v14 = v10[2];
    v13 = v10[3];
    v15 = v10[4];
    v19 = v10[5];
    v16 = v10[6];
    if (v12 == a1 && v14 == a2)
    {
      v12 = a1;
LABEL_17:

      *a3 = v11;
      a3[1] = v12;
      a3[2] = v14;
      a3[3] = v13;
      a3[4] = v15;
      a3[5] = v19;
      a3[6] = v16;
      return result;
    }

    v7 &= v7 - 1;
    result = sub_1E5A2C114();
    if (result)
    {
      goto LABEL_17;
    }
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      a3[6] = 0;
      *(a3 + 1) = 0u;
      *(a3 + 2) = 0u;
      *a3 = 0u;
      return result;
    }

    v7 = *(*(&v25 + 1) + 56 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

char *sub_1E59106C8(uint64_t a1, uint64_t a2)
{
  v41 = *v2;
  v40 = *(v2 + 1);
  v5 = v2[3];
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v39 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v11;
    if (!v9)
    {
      break;
    }

LABEL_8:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = (*(a1 + 48) + ((v11 << 10) | (16 * v13)));
    v15 = *v14;
    v16 = v14[1];

    v17 = *(a2 + 16);
    v18 = *(a2 + 24);
    v49 = v41;
    v50 = v40;
    v51 = v5;
    type metadata accessor for TrainerPreferenceView(0, v17, v18, v19);
    sub_1E5910500(v15, v16, &v42);

    v20 = v42;
    if (v42)
    {
      v37 = v43;
      v38 = v44;
      v35 = v45;
      v36 = v46;
      v21 = v47;
      v34 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_1E58E6E1C(0, *(v39 + 2) + 1, 1, v39);
      }

      v22 = v38;
      v24 = *(v39 + 2);
      v23 = *(v39 + 3);
      v25 = v24 + 1;
      v26 = v34;
      v27 = v35;
      v28 = v36;
      v29 = v37;
      if (v24 >= v23 >> 1)
      {
        v32 = sub_1E58E6E1C((v23 > 1), v24 + 1, 1, v39);
        v25 = v24 + 1;
        v26 = v34;
        v29 = v37;
        v22 = v38;
        v27 = v35;
        v28 = v36;
        v30 = v21;
        v39 = v32;
      }

      else
      {
        v30 = v21;
      }

      *(v39 + 2) = v25;
      v31 = &v39[56 * v24];
      *(v31 + 4) = v20;
      *(v31 + 5) = v29;
      *(v31 + 6) = v22;
      *(v31 + 7) = v27;
      *(v31 + 8) = v28;
      *(v31 + 9) = v30;
      *(v31 + 10) = v26;
    }

    else
    {
      sub_1E591B72C(0, v43, v44, v45, v46, v47, v48);
    }
  }

  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      v42 = v39;

      sub_1E59199C8(&v42, sub_1E5A226E4, &type metadata for WorkoutPlanTrainer, sub_1E591A3BC, sub_1E5919C7C);

      return v42;
    }

    v9 = *(v6 + 8 * v11);
    ++v12;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  MEMORY[0x1E69331F0](a1);

  __break(1u);
  return result;
}

uint64_t sub_1E5910968(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  swift_getKeyPath();

  sub_1E5A2B934();

  if (*(v11 + 16) && (v6 = sub_1E58EF508(v4, v5), (v7 & 1) != 0))
  {
    v8 = *(*(v11 + 56) + 32 * v6 + 24);

    v9 = sub_1E59E8F3C(v2, v3, v8);
  }

  else
  {

    v9 = 0;
  }

  return v9 & 1;
}

uint64_t TrainerPreferenceView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v70 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v65 - v3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD620, &qword_1E5A35BC8);
  v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD628, &qword_1E5A35BD0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD630, &qword_1E5A35BD8);
  v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD638, &qword_1E5A35BE0);
  v79 = *(a1 + 16);
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v72 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1E5A2B5B4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC770, &unk_1E5A319A0);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD650, &unk_1E5A37DD0);
  sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E697E5D8];
  v107 = WitnessTable;
  v108 = MEMORY[0x1E697E5D8];
  v6 = swift_getWitnessTable();
  v7 = sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0, MEMORY[0x1E697FD58]);
  v105 = v6;
  v106 = v7;
  v8 = swift_getWitnessTable();
  v9 = sub_1E58CD164(&qword_1ECFFD658, &qword_1ECFFD650, &unk_1E5A37DD0, MEMORY[0x1E697F940]);
  v103 = v8;
  v104 = v9;
  swift_getWitnessTable();
  v10 = sub_1E5A2B594();
  v11 = swift_getWitnessTable();
  v98 = v10;
  v99 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v98 = v10;
  v99 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = sub_1E58EFCE8();
  v98 = OpaqueTypeMetadata2;
  v99 = &type metadata for WorkoutPlanCreationButtonStyle;
  v100 = OpaqueTypeConformance2;
  v101 = v14;
  swift_getOpaqueTypeMetadata2();
  v15 = sub_1E5A2A6C4();
  v16 = MEMORY[0x1E69E6338];
  v17 = sub_1E58CD164(&qword_1ECFFD660, &qword_1ECFFD638, &qword_1E5A35BE0, MEMORY[0x1E69E6338]);
  v98 = v71;
  v99 = MEMORY[0x1E69E6158];
  v100 = v15;
  v101 = v17;
  v102 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  v98 = OpaqueTypeMetadata2;
  v99 = &type metadata for WorkoutPlanCreationButtonStyle;
  v100 = OpaqueTypeConformance2;
  v101 = v14;
  v96 = swift_getOpaqueTypeConformance2();
  v97 = v5;
  v95 = swift_getWitnessTable();
  swift_getWitnessTable();
  v18 = sub_1E5A2B834();
  v19 = swift_getWitnessTable();
  v98 = v18;
  v99 = v19;
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2BD84();
  v98 = v18;
  v99 = v19;
  v94 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v20 = sub_1E5A2A4B4();
  v21 = swift_getWitnessTable();
  v98 = v20;
  v99 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v23 = sub_1E5A2AD04();
  v98 = v20;
  v99 = v21;
  v24 = swift_getOpaqueTypeConformance2();
  v98 = v22;
  v99 = v23;
  v25 = MEMORY[0x1E697CC08];
  v100 = v24;
  v101 = MEMORY[0x1E697CC08];
  v26 = swift_getOpaqueTypeMetadata2();
  v98 = v22;
  v99 = v23;
  v100 = v24;
  v101 = v25;
  v27 = swift_getOpaqueTypeConformance2();
  v98 = v26;
  v99 = v27;
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2B734();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD668, &qword_1E5A35C00);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v28 = sub_1E5A2B604();
  v29 = sub_1E58CD164(&qword_1ECFFD670, &qword_1ECFFD628, &qword_1E5A35BD0, v16);
  v98 = v74;
  v99 = MEMORY[0x1E69E6158];
  v100 = v28;
  v101 = v29;
  v102 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2BD84();
  sub_1E5A2B734();
  v30 = sub_1E5911818();
  v93 = swift_getWitnessTable();
  v92 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v89 = v30;
  v90 = v31;
  v91 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  v32 = sub_1E5A2B604();
  v69 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v65 - v33;
  v35 = swift_getWitnessTable();
  v36 = sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
  v98 = v32;
  v99 = v80;
  v66 = v35;
  v100 = v35;
  v101 = v36;
  v68 = v36;
  v37 = swift_getOpaqueTypeMetadata2();
  v73 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v65 - v38;
  v74 = v40;
  v41 = sub_1E5A2A6C4();
  v75 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v71 = &v65 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v72 = &v65 - v44;
  v45 = *v77;
  v46 = v77[1];
  v48 = v77[2];
  v47 = v77[3];
  sub_1E5A2AA34();
  v49 = *(v76 + 24);
  v81 = v79;
  v65 = v49;
  v82 = v49;
  v76 = v45;
  v83 = v45;
  v84 = v46;
  v67 = v48;
  v85 = v48;
  v77 = v47;
  v86 = v47;
  sub_1E5A2B5F4();
  v50 = *MEMORY[0x1E697E728];
  v51 = sub_1E5A2A684();
  v52 = v78;
  (*(*(v51 - 8) + 104))(v78, v50, v51);
  sub_1E591B4FC(&qword_1ECFFBF40, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E5A2BA74();
  if (result)
  {
    v54 = v80;
    v55 = v66;
    v56 = v68;
    sub_1E5A2B164();
    sub_1E58BAD14(v52, &qword_1ECFFCE80, &qword_1E5A35BC0);
    (*(v69 + 8))(v34, v32);
    v57 = swift_allocObject();
    v58 = v65;
    v57[2] = v79;
    v57[3] = v58;
    v57[4] = v76;
    v57[5] = v46;
    v59 = v77;
    v57[6] = v67;
    v57[7] = v59;

    v98 = v32;
    v99 = v54;
    v100 = v55;
    v101 = v56;
    v60 = swift_getOpaqueTypeConformance2();
    v61 = v71;
    v62 = v74;
    sub_1E5A2B364();

    (*(v73 + 8))(v39, v62);
    v87 = v60;
    v88 = MEMORY[0x1E69805D0];
    swift_getWitnessTable();
    v63 = v72;
    sub_1E58B41DC();
    v64 = *(v75 + 8);
    v64(v61, v41);
    sub_1E58B41DC();
    return (v64)(v63, v41);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E5911818()
{
  result = qword_1ECFFD678;
  if (!qword_1ECFFD678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD620, &qword_1E5A35BC8);
    sub_1E58CD164(&qword_1ECFFD680, qword_1ECFFD688, &qword_1E5A35C08, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD678);
  }

  return result;
}

uint64_t sub_1E59118D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a6;
  v28 = a3;
  v24 = a5;
  v25 = a1;
  v29 = a4;
  v30 = a7;
  v26 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD620, &qword_1E5A35BC8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD628, &qword_1E5A35BD0);
  v22[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD630, &qword_1E5A35BD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD638, &qword_1E5A35BE0);
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v22[1] = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1E5A2B5B4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC770, &unk_1E5A319A0);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD650, &unk_1E5A37DD0);
  sub_1E5A2A6C4();
  v33[27] = swift_getWitnessTable();
  v33[28] = MEMORY[0x1E697E5D8];
  v33[25] = swift_getWitnessTable();
  v33[26] = sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0, MEMORY[0x1E697FD58]);
  v33[23] = swift_getWitnessTable();
  v33[24] = sub_1E58CD164(&qword_1ECFFD658, &qword_1ECFFD650, &unk_1E5A37DD0, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  sub_1E5A2B594();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E58EFCE8();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2A6C4();
  v7 = MEMORY[0x1E69E6338];
  sub_1E58CD164(&qword_1ECFFD660, &qword_1ECFFD638, &qword_1E5A35BE0, MEMORY[0x1E69E6338]);
  sub_1E5A2B6F4();
  v33[16] = swift_getOpaqueTypeConformance2();
  v33[17] = MEMORY[0x1E697E5D8];
  v33[15] = swift_getWitnessTable();
  v22[0] = MEMORY[0x1E69819D0];
  swift_getWitnessTable();
  sub_1E5A2B834();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2BD84();
  v33[14] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AD04();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2B734();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD668, &qword_1E5A35C00);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v8 = sub_1E5A2B604();
  v9 = sub_1E58CD164(&qword_1ECFFD670, &qword_1ECFFD628, &qword_1E5A35BD0, v7);
  v33[18] = v23;
  v33[19] = MEMORY[0x1E69E6158];
  v33[20] = v8;
  v33[21] = v9;
  v33[22] = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  v10 = sub_1E5A2BD84();
  v11 = sub_1E5A2B734();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v22 - v16;
  v33[2] = v24;
  v33[3] = v27;
  v33[4] = v25;
  v33[5] = v26;
  v33[6] = v28;
  v33[7] = v29;
  v32[2] = v24;
  v32[3] = v27;
  v32[4] = v25;
  v32[5] = v26;
  v32[6] = v28;
  v32[7] = v29;
  v18 = sub_1E5911818();
  v33[13] = swift_getWitnessTable();
  v33[12] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  sub_1E59B66BC(sub_1E591AF48, v33, sub_1E591AF60, v32, v31, v10, v18, WitnessTable);
  v33[9] = v18;
  v33[10] = WitnessTable;
  v33[11] = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  sub_1E58B41DC();
  v20 = *(v12 + 8);
  v20(v14, v11);
  sub_1E58B41DC();
  return (v20)(v17, v11);
}

uint64_t sub_1E5912204@<X0>(char *a1@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v50 = a6;
  v52 = a4;
  v51 = a3;
  v57 = a2;
  v48 = a1;
  v58 = a7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD628, &qword_1E5A35BD0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD630, &qword_1E5A35BD8);
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD638, &qword_1E5A35BE0);
  v49 = a5;
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v54 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1E5A2B5B4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC770, &unk_1E5A319A0);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD650, &unk_1E5A37DD0);
  sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x1E697E5D8];
  v77 = WitnessTable;
  v78 = MEMORY[0x1E697E5D8];
  v75 = swift_getWitnessTable();
  v76 = sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0, MEMORY[0x1E697FD58]);
  v73 = swift_getWitnessTable();
  v74 = sub_1E58CD164(&qword_1ECFFD658, &qword_1ECFFD650, &unk_1E5A37DD0, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  sub_1E5A2B594();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E58EFCE8();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2A6C4();
  v10 = MEMORY[0x1E69E6338];
  sub_1E58CD164(&qword_1ECFFD660, &qword_1ECFFD638, &qword_1E5A35BE0, MEMORY[0x1E69E6338]);
  sub_1E5A2B6F4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = v9;
  v65 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A2B834();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2BD84();
  v64 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AD04();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2B734();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD668, &qword_1E5A35C00);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v11 = sub_1E5A2B604();
  v12 = sub_1E58CD164(&qword_1ECFFD670, &qword_1ECFFD628, &qword_1E5A35BD0, v10);
  v68 = v56;
  v69 = MEMORY[0x1E69E6158];
  v70 = v11;
  v71 = v12;
  v72 = MEMORY[0x1E69E6168];
  v13 = sub_1E5A2B6F4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v44 - v17;
  v18 = sub_1E5A2BD84();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v56 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - v22;
  swift_getKeyPath();
  v24 = v57;

  sub_1E5A2B934();

  v26 = v68;
  if (v68)
  {
    v46 = v19;
    v27 = v49;
    v53 = v11;
    v28 = v50;
    v29 = type metadata accessor for TrainerPreferenceView(0, v49, v50, v25);
    v60 = v26;
    v30 = WorkoutPlanSchedule.modalityIdentifiers()();
    v47 = v18;
    v31 = v30;

    v45 = v23;
    v32 = v48;
    v68 = v48;
    v69 = v24;
    v44 = v14;
    v33 = v51;
    v34 = v52;
    v70 = v51;
    v71 = v52;
    sub_1E5910224(v31, v29);
    v35 = swift_allocObject();
    v35[2] = v27;
    v35[3] = v28;
    v19 = v46;
    v35[4] = v32;
    v35[5] = v24;
    v23 = v45;
    v35[6] = v33;
    v35[7] = v34;
    v35[8] = v31;

    v36 = swift_getWitnessTable();
    sub_1E591AFC4();
    sub_1E591B018();
    v37 = v55;
    sub_1E5A2B6D4();
    v59 = v36;
    swift_getWitnessTable();
    v38 = v54;
    sub_1E58B41DC();
    v39 = v44;
    v40 = *(v44 + 8);
    v40(v37, v13);
    sub_1E58B41DC();
    v40(v38, v13);
    v18 = v47;
    v41 = v56;
    (*(v39 + 32))(v56, v37, v13);
    (*(v39 + 56))(v41, 0, 1, v13);
  }

  else
  {
    v41 = v56;
    (*(v14 + 56))(v56, 1, 1, v13);
    v63 = swift_getWitnessTable();
    swift_getWitnessTable();
  }

  sub_1E598D20C(v41, v23);
  v42 = *(v19 + 8);
  v42(v41, v18);
  v62 = swift_getWitnessTable();
  v61 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (v42)(v23, v18);
}

uint64_t sub_1E5912E30@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v23 = a8;
  v29 = a6;
  v30 = a7;
  v27 = a1;
  v28 = a5;
  v25 = a3;
  v26 = a4;
  v31 = a9;
  v24 = a10;
  v22[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD630, &qword_1E5A35BD8);
  v22[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD638, &qword_1E5A35BE0);
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v22[1] = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1E5A2B5B4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC770, &unk_1E5A319A0);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD650, &unk_1E5A37DD0);
  sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v50 = MEMORY[0x1E697E5D8];
  v47 = swift_getWitnessTable();
  v48 = sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0, MEMORY[0x1E697FD58]);
  v45 = swift_getWitnessTable();
  v46 = sub_1E58CD164(&qword_1ECFFD658, &qword_1ECFFD650, &unk_1E5A37DD0, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  sub_1E5A2B594();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E58EFCE8();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2A6C4();
  sub_1E58CD164(&qword_1ECFFD660, &qword_1ECFFD638, &qword_1E5A35BE0, MEMORY[0x1E69E6338]);
  *&v53 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = MEMORY[0x1E697E5D8];
  v42 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A2B834();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2BD84();
  v41 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AD04();
  *&v52 = swift_getOpaqueTypeConformance2();
  *(&v52 + 1) = MEMORY[0x1E697CC08];
  *&v51 = swift_getOpaqueTypeMetadata2();
  *(&v51 + 1) = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2B734();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD668, &qword_1E5A35C00);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v11 = sub_1E5A2B604();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v22 - v16;
  v18 = a2[3];
  v53 = a2[2];
  v54 = v18;
  v55 = *(a2 + 8);
  v19 = a2[1];
  v51 = *a2;
  v52 = v19;
  sub_1E5A2AA34();
  v32 = v23;
  v33 = v24;
  v34 = v25;
  v35 = v26;
  v36 = v28;
  v37 = v29;
  v38 = &v51;
  v39 = v27;
  v40 = v30;
  sub_1E5A2B5F4();
  swift_getWitnessTable();
  sub_1E58B41DC();
  v20 = *(v12 + 8);
  v20(v14, v11);
  sub_1E58B41DC();
  return (v20)(v17, v11);
}

uint64_t sub_1E591364C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v64 = a8;
  v72 = a7;
  v73 = a6;
  v69 = a4;
  v70 = a5;
  v67 = a2;
  v68 = a3;
  v66 = a1;
  v77 = a9;
  v65 = a10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD740, &unk_1E5A35D60);
  v74 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v61 = &v61 - v10;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD668, &qword_1E5A35C00);
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v61 - v13;
  v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD630, &qword_1E5A35BD8);
  v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD638, &qword_1E5A35BE0);
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B5B4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC770, &unk_1E5A319A0);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD650, &unk_1E5A37DD0);
  sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v92 = MEMORY[0x1E697E5D8];
  v14 = swift_getWitnessTable();
  v15 = sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0, MEMORY[0x1E697FD58]);
  v89 = v14;
  v90 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_1E58CD164(&qword_1ECFFD658, &qword_1ECFFD650, &unk_1E5A37DD0, MEMORY[0x1E697F940]);
  v87 = v16;
  v88 = v17;
  swift_getWitnessTable();
  v18 = sub_1E5A2B594();
  v19 = swift_getWitnessTable();
  v82 = v18;
  v83 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v82 = v18;
  v83 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_1E58EFCE8();
  v82 = OpaqueTypeMetadata2;
  v83 = &type metadata for WorkoutPlanCreationButtonStyle;
  v84 = OpaqueTypeConformance2;
  v85 = v22;
  swift_getOpaqueTypeMetadata2();
  v23 = sub_1E5A2A6C4();
  v24 = sub_1E58CD164(&qword_1ECFFD660, &qword_1ECFFD638, &qword_1E5A35BE0, MEMORY[0x1E69E6338]);
  v82 = v62;
  v83 = MEMORY[0x1E69E6158];
  v84 = v23;
  v85 = v24;
  v86 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  v82 = OpaqueTypeMetadata2;
  v83 = &type metadata for WorkoutPlanCreationButtonStyle;
  v84 = OpaqueTypeConformance2;
  v85 = v22;
  v81[7] = swift_getOpaqueTypeConformance2();
  v81[8] = MEMORY[0x1E697E5D8];
  v81[6] = swift_getWitnessTable();
  swift_getWitnessTable();
  v25 = sub_1E5A2B834();
  v26 = swift_getWitnessTable();
  v82 = v25;
  v83 = v26;
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2BD84();
  v82 = v25;
  v83 = v26;
  v81[5] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v27 = sub_1E5A2A4B4();
  v28 = swift_getWitnessTable();
  v82 = v27;
  v83 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v30 = sub_1E5A2AD04();
  v82 = v27;
  v83 = v28;
  v31 = swift_getOpaqueTypeConformance2();
  v82 = v29;
  v83 = v30;
  v32 = MEMORY[0x1E697CC08];
  v84 = v31;
  v85 = MEMORY[0x1E697CC08];
  v33 = swift_getOpaqueTypeMetadata2();
  v82 = v29;
  v83 = v30;
  v84 = v31;
  v85 = v32;
  v34 = swift_getOpaqueTypeConformance2();
  v82 = v33;
  v83 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v36 = v63;
  v37 = sub_1E5A2B734();
  v62 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v61 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v61 - v41;
  v80[2] = v64;
  v80[3] = v65;
  v80[4] = v66;
  v80[5] = v67;
  v80[6] = v68;
  v80[7] = v69;
  v80[8] = v70;
  v79[2] = v64;
  v79[3] = v65;
  v79[4] = v70;
  v79[5] = v66;
  v79[6] = v67;
  v79[7] = v68;
  v79[8] = v69;
  v43 = sub_1E591B0D0();
  v82 = v33;
  v83 = v34;
  v44 = swift_getOpaqueTypeConformance2();
  sub_1E59B66BC(sub_1E591B0A4, v80, sub_1E591B0BC, v79, v36, v35, v43, v44);
  v81[2] = v43;
  v81[3] = v44;
  v45 = v71;
  v81[4] = MEMORY[0x1E6981E60];
  v46 = swift_getWitnessTable();
  v47 = v42;
  v48 = v62;
  v70 = v46;
  sub_1E58B41DC();
  v49 = *(v48 + 8);
  v49(v39, v37);
  v50 = 1;
  if (*(v72 + 16) - 1 != v73)
  {
    v51 = v61;
    sub_1E5A2B6B4();
    v52 = sub_1E5A2ADF4();
    sub_1E5A2A424();
    v53 = v51 + *(v45 + 36);
    *v53 = v52;
    *(v53 + 8) = v54;
    *(v53 + 16) = v55;
    *(v53 + 24) = v56;
    *(v53 + 32) = v57;
    *(v53 + 40) = 0;
    sub_1E591B1B8(v51, v78);
    v50 = 0;
  }

  v58 = v78;
  (*(v74 + 56))(v78, v50, 1, v45);
  (*(v48 + 16))(v39, v47, v37);
  v82 = v39;
  v59 = v76;
  sub_1E58BABA0(v58, v76, &qword_1ECFFD668, &qword_1E5A35C00);
  v83 = v59;
  v81[0] = v37;
  v81[1] = v75;
  v80[9] = v70;
  v80[10] = sub_1E591B228();
  sub_1E597DC00(&v82, 2uLL, v81);
  sub_1E58BAD14(v58, &qword_1ECFFD668, &qword_1E5A35C00);
  v49(v47, v37);
  sub_1E58BAD14(v59, &qword_1ECFFD668, &qword_1E5A35C00);
  return (v49)(v39, v37);
}

uint64_t sub_1E5914078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v71 = a7;
  v67 = a6;
  v73 = a5;
  v72 = a4;
  v70 = a3;
  v69 = a2;
  v68 = a1;
  v82 = a8;
  v81 = sub_1E5A2AAC4();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5A2ACE4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v77 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1E5A2AD04();
  v78 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v76 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1E5A2AC64();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v83 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD638, &qword_1E5A35BE0);
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B5B4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC770, &unk_1E5A319A0);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD650, &unk_1E5A37DD0);
  sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v107 = MEMORY[0x1E697E5D8];
  v14 = swift_getWitnessTable();
  v15 = sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0, MEMORY[0x1E697FD58]);
  v104 = v14;
  v105 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_1E58CD164(&qword_1ECFFD658, &qword_1ECFFD650, &unk_1E5A37DD0, MEMORY[0x1E697F940]);
  v102 = v16;
  v103 = v17;
  swift_getWitnessTable();
  v18 = sub_1E5A2B594();
  v19 = swift_getWitnessTable();
  v97 = v18;
  v98 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v97 = v18;
  v98 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_1E58EFCE8();
  v97 = OpaqueTypeMetadata2;
  v98 = &type metadata for WorkoutPlanCreationButtonStyle;
  v99 = OpaqueTypeConformance2;
  v100 = v22;
  swift_getOpaqueTypeMetadata2();
  v23 = sub_1E5A2A6C4();
  v24 = sub_1E58CD164(&qword_1ECFFD660, &qword_1ECFFD638, &qword_1E5A35BE0, MEMORY[0x1E69E6338]);
  v97 = v13;
  v98 = MEMORY[0x1E69E6158];
  v99 = v23;
  v100 = v24;
  v101 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  v97 = OpaqueTypeMetadata2;
  v98 = &type metadata for WorkoutPlanCreationButtonStyle;
  v99 = OpaqueTypeConformance2;
  v100 = v22;
  v95 = swift_getOpaqueTypeConformance2();
  v96 = MEMORY[0x1E697E5D8];
  v94 = swift_getWitnessTable();
  swift_getWitnessTable();
  v25 = sub_1E5A2B834();
  v26 = swift_getWitnessTable();
  v97 = v25;
  v98 = v26;
  swift_getOpaqueTypeMetadata2();
  v27 = sub_1E5A2BD84();
  v97 = v25;
  v98 = v26;
  v93 = swift_getOpaqueTypeConformance2();
  v59[0] = swift_getWitnessTable();
  v28 = sub_1E5A2A4B4();
  v64 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v59 - v29;
  v31 = swift_getWitnessTable();
  v97 = v28;
  v98 = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  v62 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v59 - v33;
  v97 = v28;
  v98 = v31;
  v59[2] = v31;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = v84;
  v97 = v32;
  v98 = v84;
  v37 = MEMORY[0x1E697CC08];
  v99 = v35;
  v100 = MEMORY[0x1E697CC08];
  v38 = swift_getOpaqueTypeMetadata2();
  v66 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v63 = v59 - v39;
  v97 = v32;
  v98 = v36;
  v59[1] = v35;
  v99 = v35;
  v100 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  v97 = v38;
  v98 = v40;
  v61 = v40;
  v41 = swift_getOpaqueTypeMetadata2();
  v65 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = v59 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v60 = v59 - v45;
  v46 = sub_1E5A2AD64();
  v86 = v67;
  v87 = v71;
  v88 = v68;
  v89 = v69;
  v90 = v70;
  v91 = v72;
  v92 = v73;
  v73 = v30;
  sub_1E594320C(v46, sub_1E591B384, v85, v27, v59[0]);
  sub_1E5A2AC44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD770, &qword_1E5A35D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A2C930;
  LOBYTE(v35) = sub_1E5A2AD84();
  *(inited + 32) = v35;
  v48 = sub_1E5A2AD64();
  *(inited + 33) = v48;
  sub_1E5A2AD74();
  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != v35)
  {
    sub_1E5A2AD74();
  }

  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != v48)
  {
    sub_1E5A2AD74();
  }

  v49 = v63;
  v50 = v83;
  v51 = v73;
  sub_1E5A2B1B4();
  (*(v74 + 8))(v50, v75);
  (*(v64 + 8))(v51, v28);
  sub_1E5A2ACD4();
  v52 = v76;
  sub_1E5A2ACF4();
  v53 = v84;
  sub_1E5A2B244();
  (*(v78 + 8))(v52, v53);
  (*(v62 + 8))(v34, v32);
  v54 = v79;
  sub_1E5A2AAB4();
  LOBYTE(v53) = sub_1E5A2AD64();
  sub_1E5A2AD74();
  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != v53)
  {
    sub_1E5A2AD74();
  }

  v55 = v61;
  sub_1E5A2B234();
  (*(v80 + 8))(v54, v81);
  (*(v66 + 8))(v49, v38);
  v97 = v38;
  v98 = v55;
  swift_getOpaqueTypeConformance2();
  v56 = v60;
  sub_1E58B41DC();
  v57 = *(v65 + 8);
  v57(v43, v41);
  sub_1E58B41DC();
  return (v57)(v56, v41);
}

uint64_t sub_1E5914E24@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v80 = a7;
  v82 = a5;
  v81 = a4;
  v79 = a3;
  v87 = a2;
  v76 = a1;
  v85 = a8;
  v9 = sub_1E5A2AB24();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v78 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1E5A2B764();
  v74 = *(v75 - 1);
  MEMORY[0x1EEE9AC00](v75);
  v73 = (&v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1E5A2B774();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v72 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD638, &qword_1E5A35BE0);
  v77 = a6;
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B5B4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC770, &unk_1E5A319A0);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD650, &unk_1E5A37DD0);
  sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v15 = MEMORY[0x1E697E5D8];
  v101 = WitnessTable;
  v102 = MEMORY[0x1E697E5D8];
  v16 = swift_getWitnessTable();
  v17 = sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0, MEMORY[0x1E697FD58]);
  v99 = v16;
  v100 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_1E58CD164(&qword_1ECFFD658, &qword_1ECFFD650, &unk_1E5A37DD0, MEMORY[0x1E697F940]);
  v97 = v18;
  v98 = v19;
  swift_getWitnessTable();
  v20 = sub_1E5A2B594();
  v21 = swift_getWitnessTable();
  v92 = v20;
  v93 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = v20;
  v93 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_1E58EFCE8();
  v92 = OpaqueTypeMetadata2;
  v93 = &type metadata for WorkoutPlanCreationButtonStyle;
  v94 = OpaqueTypeConformance2;
  v95 = v24;
  swift_getOpaqueTypeMetadata2();
  v25 = sub_1E5A2A6C4();
  v26 = sub_1E58CD164(&qword_1ECFFD660, &qword_1ECFFD638, &qword_1E5A35BE0, MEMORY[0x1E69E6338]);
  v92 = v86;
  v93 = MEMORY[0x1E69E6158];
  v94 = v25;
  v95 = v26;
  v96 = MEMORY[0x1E69E6168];
  v27 = sub_1E5A2B6F4();
  v92 = OpaqueTypeMetadata2;
  v93 = &type metadata for WorkoutPlanCreationButtonStyle;
  v94 = OpaqueTypeConformance2;
  v95 = v24;
  v90 = swift_getOpaqueTypeConformance2();
  v91 = v15;
  v89 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v71 = v27;
  v29 = sub_1E5A2B834();
  v70 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v68 = &v66 - v30;
  v31 = swift_getWitnessTable();
  v92 = v29;
  v93 = v31;
  v86 = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v69 = &v66 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v66 = &v66 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v67 = &v66 - v38;
  v39 = sub_1E5A2BD84();
  v84 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v66 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v83 = &v66 - v43;
  swift_getKeyPath();

  sub_1E5A2B934();

  v44 = v92;
  if (*(v92 + 16) && (v45 = sub_1E58EF508(*(v82 + 8), *(v82 + 16)), (v46 & 1) != 0))
  {
    v47 = *(*(v44 + 56) + (v45 << 6) + 56);

    v48 = v73;
    *v73 = xmmword_1E5A317E0;
    (*(v74 + 104))(v48, *MEMORY[0x1E697D748], v75);
    v49 = v72;
    sub_1E5A2B784();
    if (*(v47 + 16) <= 1uLL)
    {
      v50 = 1;
    }

    else
    {
      v50 = 2;
    }

    v74 = sub_1E59E9100(v49, v50);
    v73 = sub_1E5A2A934();
    v75 = &v66;
    MEMORY[0x1EEE9AC00](v73);
    v51 = v80;
    *(&v66 - 8) = v77;
    *(&v66 - 7) = v51;
    v52 = v87;
    *(&v66 - 6) = v76;
    *(&v66 - 5) = v52;
    v53 = v81;
    *(&v66 - 4) = v79;
    *(&v66 - 3) = v53;
    v65 = v82;
    sub_1E590FE8C();
    v64 = v28;
    v54 = v68;
    sub_1E5A2B824();

    v55 = v66;
    v56 = v86;
    sub_1E5A2B204();
    (*(v70 + 8))(v54, v29);
    v92 = v29;
    v93 = v56;
    swift_getOpaqueTypeConformance2();
    v57 = v67;
    sub_1E58B41DC();
    v58 = *(v33 + 8);
    v58(v55, v32);
    v59 = v69;
    sub_1E58B41DC();
    v58(v57, v32);
    (*(v33 + 32))(v41, v59, v32);
    (*(v33 + 56))(v41, 0, 1, v32);
    v60 = v86;
  }

  else
  {

    (*(v33 + 56))(v41, 1, 1, v32);
    v60 = v86;
    v92 = v29;
    v93 = v86;
    swift_getOpaqueTypeConformance2();
  }

  v61 = v83;
  sub_1E598D20C(v41, v83);
  v62 = *(v84 + 8);
  v62(v41, v39);
  v92 = v29;
  v93 = v60;
  v88 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (v62)(v61, v39);
}

uint64_t sub_1E59159FC@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v47 = a8;
  v42 = a7;
  v49 = a6;
  v48 = a5;
  v46 = a4;
  v45 = a3;
  v44 = a2;
  v43 = a1;
  v50 = a9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD638, &qword_1E5A35BE0);
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B5B4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC770, &unk_1E5A319A0);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD650, &unk_1E5A37DD0);
  sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v65 = MEMORY[0x1E697E5D8];
  v9 = MEMORY[0x1E697E858];
  v62 = swift_getWitnessTable();
  v63 = sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0, MEMORY[0x1E697FD58]);
  v41 = v9;
  v60 = swift_getWitnessTable();
  v61 = sub_1E58CD164(&qword_1ECFFD658, &qword_1ECFFD650, &unk_1E5A37DD0, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  sub_1E5A2B594();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = sub_1E58EFCE8();
  v34 = MEMORY[0x1E697CDC0];
  swift_getOpaqueTypeMetadata2();
  v32 = sub_1E5A2A6C4();
  v35 = sub_1E58CD164(&qword_1ECFFD660, &qword_1ECFFD638, &qword_1E5A35BE0, MEMORY[0x1E69E6338]);
  v54 = v38;
  v55 = MEMORY[0x1E69E6158];
  v56 = v32;
  v57 = v35;
  v58 = MEMORY[0x1E69E6168];
  v10 = sub_1E5A2B6F4();
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v33 = &v31 - v14;
  v15 = v43;
  v16 = v44;
  v54 = v43;
  v55 = v44;
  v17 = v45;
  v18 = v46;
  v56 = v45;
  v57 = v46;
  v19 = v42;
  v20 = v47;
  v22 = type metadata accessor for TrainerPreferenceView(0, v42, v47, v21);
  v59 = sub_1E59106C8(v48, v22);
  swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  *(v23 + 24) = v20;
  *(v23 + 32) = v15;
  *(v23 + 40) = v16;
  *(v23 + 48) = v17;
  *(v23 + 56) = v18;
  v24 = v49;
  v25 = *(v49 + 48);
  *(v23 + 96) = *(v49 + 32);
  *(v23 + 112) = v25;
  *(v23 + 128) = *(v24 + 64);
  v26 = *(v24 + 16);
  *(v23 + 64) = *v24;
  *(v23 + 80) = v26;

  sub_1E591B3E0(v24, &v54);
  v54 = OpaqueTypeMetadata2;
  v55 = &type metadata for WorkoutPlanCreationButtonStyle;
  v56 = OpaqueTypeConformance2;
  v57 = v36;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = MEMORY[0x1E697E5D8];
  v30 = swift_getWitnessTable();
  sub_1E5A2B6E4();
  v51 = v30;
  swift_getWitnessTable();
  v27 = v33;
  sub_1E58B41DC();
  v28 = *(v40 + 8);
  v28(v12, v10);
  sub_1E58B41DC();
  return (v28)(v27, v10);
}

uint64_t sub_1E59160FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v66 = a8;
  v67 = a5;
  v62 = a7;
  v63 = a2;
  v68 = a6;
  v69 = a9;
  v64 = a3;
  v65 = a4;
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B5B4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC770, &unk_1E5A319A0);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD650, &unk_1E5A37DD0);
  v10 = sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v89 = MEMORY[0x1E697E5D8];
  v11 = MEMORY[0x1E697E858];
  v86 = swift_getWitnessTable();
  v87 = sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0, MEMORY[0x1E697FD58]);
  v61 = v11;
  v84 = swift_getWitnessTable();
  v85 = sub_1E58CD164(&qword_1ECFFD658, &qword_1ECFFD650, &unk_1E5A37DD0, MEMORY[0x1E697F940]);
  v59 = v10;
  v58 = swift_getWitnessTable();
  v12 = sub_1E5A2B594();
  v60 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v15 = swift_getWitnessTable();
  v80 = v12;
  v81 = v15;
  v16 = v15;
  v53 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v57 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v52 = &v48 - v18;
  v80 = v12;
  v81 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = OpaqueTypeConformance2;
  v50 = sub_1E58EFCE8();
  v80 = OpaqueTypeMetadata2;
  v81 = &type metadata for WorkoutPlanCreationButtonStyle;
  v82 = OpaqueTypeConformance2;
  v83 = v50;
  v54 = MEMORY[0x1E697CDC0];
  v49 = swift_getOpaqueTypeMetadata2();
  v55 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v21 = &v48 - v20;
  v22 = sub_1E5A2A6C4();
  v56 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v48 = &v48 - v26;
  v27 = *(a1 + 16);
  v90[0] = *a1;
  v90[1] = v27;
  v90[2] = *(a1 + 32);
  v91 = *(a1 + 48);
  v28 = swift_allocObject();
  v30 = v62;
  v29 = v63;
  v31 = v65;
  v32 = v66;
  *(v28 + 16) = v62;
  *(v28 + 24) = v32;
  *(v28 + 32) = v29;
  v33 = v64;
  *(v28 + 40) = v64;
  *(v28 + 48) = v31;
  v34 = v67;
  *(v28 + 56) = v67;
  v35 = *(a1 + 16);
  *(v28 + 64) = *a1;
  *(v28 + 80) = v35;
  *(v28 + 96) = *(a1 + 32);
  *(v28 + 112) = *(a1 + 48);
  v36 = v68;
  v37 = v68[1];
  *(v28 + 120) = *v68;
  v38 = *(v36 + 32);
  v39 = *(v36 + 48);
  *(v28 + 184) = *(v36 + 64);
  *(v28 + 168) = v39;
  *(v28 + 152) = v38;
  *(v28 + 136) = v37;
  v70 = v30;
  v71 = v32;
  v72 = v90;
  v73 = v29;
  v74 = v33;
  v75 = v31;
  v76 = v34;
  v77 = v36;

  sub_1E591B46C(v90, &v80);
  sub_1E591B3E0(v36, &v80);
  sub_1E5A2B574();
  sub_1E5A2AD64();
  sub_1E5A2B7F4();
  v40 = v52;
  sub_1E5A2B274();
  (*(v60 + 8))(v14, v12);
  v42 = v50;
  v41 = v51;
  sub_1E5A2B0C4();
  (*(v57 + 8))(v40, OpaqueTypeMetadata2);
  sub_1E5A2ADF4();
  v80 = OpaqueTypeMetadata2;
  v81 = &type metadata for WorkoutPlanCreationButtonStyle;
  v82 = v41;
  v83 = v42;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v49;
  sub_1E5A2B334();
  (*(v55 + 8))(v21, v44);
  v78 = v43;
  v79 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v45 = v48;
  sub_1E58B41DC();
  v46 = *(v56 + 8);
  v46(v24, v22);
  sub_1E58B41DC();
  return (v46)(v45, v22);
}

uint64_t sub_1E59168DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6)
{
  v8 = *a5;
  v18 = a5[1];
  v19 = v8;
  v17 = a5[2];
  v9 = *(a5 + 6);
  v10 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v18;
  *v12 = v19;
  *(v12 + 1) = v13;
  *(v12 + 2) = v17;
  *(v12 + 6) = v9;
  v14 = *a6;
  *(v12 + 72) = a6[1];
  v15 = a6[3];
  *(v12 + 88) = a6[2];
  *(v12 + 104) = v15;
  *(v12 + 15) = *(a6 + 8);
  *(v12 + 56) = v14;
  swift_storeEnumTagMultiPayload();

  sub_1E591B46C(a5, v20);
  sub_1E591B3E0(a6, v20);
  sub_1E5A2B954();

  return sub_1E591B678(v12, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E5916A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v98 = a1;
  v99 = a8;
  v78 = a6;
  v96 = a4;
  v97 = a5;
  v94 = a2;
  v95 = a3;
  v91 = a9;
  v80 = sub_1E5A2A9B4();
  v100 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v89 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD778, &unk_1E5A35DE0);
  MEMORY[0x1EEE9AC00](v81);
  v90 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v92 = &v75 - v13;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD780, &unk_1E5A37DE0);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v75 - v14;
  v79 = sub_1E5A2B6A4();
  MEMORY[0x1EEE9AC00](v79);
  v76 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a7;
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v17 = sub_1E5A2B5B4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v75 - v19;
  v21 = sub_1E5A2A6C4();
  v77 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v75 = &v75 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC770, &unk_1E5A319A0);
  v23 = sub_1E5A2A6C4();
  v83 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v93 = &v75 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD650, &unk_1E5A37DD0);
  v85 = v23;
  v25 = sub_1E5A2A6C4();
  v86 = *(v25 - 8);
  v87 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v82 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v84 = &v75 - v28;
  sub_1E5A2A934();
  v88 = v16;
  v29 = v78;
  v103 = v16;
  v104 = v99;
  v105 = v98;
  v106 = v94;
  v107 = v95;
  v108 = v96;
  v109 = v97;
  v110 = v78;
  sub_1E5A2B5A4();
  WitnessTable = swift_getWitnessTable();
  sub_1E5A2B324();
  (*(v18 + 8))(v20, v17);
  v31 = *MEMORY[0x1E697F468];
  v32 = *(v100 + 104);
  v33 = v76;
  v34 = v80;
  v32(v76, v31, v80);
  v126 = WitnessTable;
  v127 = MEMORY[0x1E697E5D8];
  v35 = swift_getWitnessTable();
  sub_1E591B4FC(&qword_1ECFFD788, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
  v36 = v33;
  v79 = v35;
  v37 = v75;
  sub_1E5A2B104();
  sub_1E591B678(v36, MEMORY[0x1E6981998]);
  v38 = v21;
  v39 = v92;
  (*(v77 + 8))(v37, v38);
  v32(v39, v31, v34);
  if (qword_1ECFFB488 != -1)
  {
    swift_once();
  }

  v40 = v81;
  *(v39 + *(v81 + 52)) = qword_1ED0264A8;
  *(v39 + *(v40 + 56)) = 256;
  v41 = qword_1ECFFB478;

  if (v41 != -1)
  {
    swift_once();
  }

  v43 = qword_1ED026498;
  v122 = v94;
  v123 = v95;
  v124 = v96;
  v125 = v97;
  v44 = *(v98 + 16);
  v120[0] = *v98;
  v120[1] = v44;
  v120[2] = *(v98 + 32);
  v121 = *(v98 + 48);
  v45 = v29[3];
  v117 = v29[2];
  v118 = v45;
  v119 = *(v29 + 8);
  v46 = v29[1];
  v115 = *v29;
  v116 = v46;
  type metadata accessor for TrainerPreferenceView(0, v88, v99, v42);
  sub_1E5910968(v120, &v115);
  sub_1E5A2A514();
  v47 = v90;
  sub_1E58BABA0(v39, v90, &qword_1ECFFD778, &unk_1E5A35DE0);
  v48 = v101;
  sub_1E591B610(v39, v101, MEMORY[0x1E6981998]);
  v49 = v89;
  v32(v89, *MEMORY[0x1E697F480], v34);
  v50 = sub_1E5A2A9A4();
  (*(v100 + 8))(v49, v34);
  v51 = v115;
  v52 = v116;
  v53 = v48;
  v54 = COERCE_UNSIGNED_INT64(*&v115 * 0.5) & 0xFFFFFFFFFFFFFFFELL | ((v50 & 1) == 0);
  v100 = *(&v116 + 1);
  v55 = v117;
  v56 = v53 + *(v102 + 68);
  v57 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD790, &unk_1E5A35DF0) + 36);
  sub_1E58BABA0(v47, v57, &qword_1ECFFD778, &unk_1E5A35DE0);
  v58 = v43;

  v59 = sub_1E5A2B7E4();
  v61 = v60;
  sub_1E58BAD14(v47, &qword_1ECFFD778, &unk_1E5A35DE0);
  sub_1E58BAD14(v92, &qword_1ECFFD778, &unk_1E5A35DE0);
  v62 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD798, &qword_1E5A37DF0) + 36));
  *v62 = v59;
  v62[1] = v61;
  *v56 = v54;
  v63 = *(&v115 + 1);
  *(v56 + 8) = v51;
  *(v56 + 16) = v63;
  *(v56 + 24) = v52;
  *(v56 + 32) = v100;
  *(v56 + 40) = v55;
  *(v56 + 48) = v58;
  *(v56 + 56) = 256;
  sub_1E5A2B7E4();
  v64 = sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0, MEMORY[0x1E697FD58]);
  v113 = v79;
  v114 = v64;
  v65 = v85;
  v66 = swift_getWitnessTable();
  sub_1E58CD164(&qword_1ECFFD7A0, &qword_1ECFFD780, &unk_1E5A37DE0, MEMORY[0x1E697FCF0]);
  v67 = v82;
  v68 = v101;
  v69 = v93;
  sub_1E5A2B064();
  sub_1E589D264(v68);
  (*(v83 + 8))(v69, v65);
  v70 = sub_1E58CD164(&qword_1ECFFD658, &qword_1ECFFD650, &unk_1E5A37DD0, MEMORY[0x1E697F940]);
  v111 = v66;
  v112 = v70;
  v71 = v87;
  swift_getWitnessTable();
  v72 = v84;
  sub_1E58B41DC();
  v73 = *(v86 + 8);
  v73(v67, v71);
  sub_1E58B41DC();
  return (v73)(v72, v71);
}

uint64_t sub_1E591757C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v66 = a8;
  v67 = a1;
  v61 = a6;
  *&v69 = a4;
  *(&v69 + 1) = a5;
  *&v68 = a2;
  *(&v68 + 1) = a3;
  v65 = a9;
  v57 = a7;
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  v63 = sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  v10 = sub_1E5A2B494();
  v64 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v56 - v11;
  v13 = sub_1E5A2A6C4();
  v70 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v56 - v17;
  v71 = a7;
  v72 = v66;
  v73 = v67;
  v74 = v68;
  v75 = v69;
  v118 = v66;
  v119 = MEMORY[0x1E697EBF8];
  WitnessTable = swift_getWitnessTable();
  v117 = MEMORY[0x1E697F568];
  v19 = swift_getWitnessTable();
  v20 = sub_1E58CD164(&qword_1ECFFD7A8, &qword_1ECFFD640, &qword_1E5A35BE8, MEMORY[0x1E697DDB0]);
  v114 = v19;
  v115 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_1E591B558();
  v112 = v21;
  v113 = v22;
  v23 = swift_getWitnessTable();
  sub_1E5A2B484();
  sub_1E5A2B7E4();
  v111 = v23;
  v24 = swift_getWitnessTable();
  sub_1E5A2B2D4();
  (*(v64 + 8))(v12, v10);
  v109 = v24;
  v110 = MEMORY[0x1E697E040];
  v25 = swift_getWitnessTable();
  v62 = v18;
  v58 = v25;
  sub_1E58B41DC();
  v26 = *(v70 + 8);
  v63 = v15;
  v64 = v13;
  v59 = v26;
  v60 = v70 + 8;
  v26(v15, v13);
  v27 = v67;
  v28 = *(v67 + 6);
  *&v98 = *(v67 + 5);
  *(&v98 + 1) = v28;
  sub_1E58D1C80();

  v29 = sub_1E5A2AFD4();
  v31 = v30;
  LOBYTE(v10) = v32;
  sub_1E5A2AED4();
  sub_1E5A2AE24();

  v33 = sub_1E5A2AFA4();
  v35 = v34;
  v37 = v36;
  v56[1] = v38;

  sub_1E58B3C9C(v29, v31, v10 & 1);

  v79 = v68;
  v80 = v69;
  v39 = v27[1];
  v89 = *v27;
  v90 = v39;
  v91 = v27[2];
  *&v92 = *(v27 + 6);
  v40 = v61[3];
  v100 = v61[2];
  v101 = v40;
  *&v102 = *(v61 + 8);
  v41 = v61[1];
  v98 = *v61;
  v99 = v41;
  type metadata accessor for TrainerPreferenceView(0, v57, v66, v42);
  if (sub_1E5910968(&v89, &v98))
  {
    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v43 = qword_1ED026498;
  }

  else
  {
    v43 = sub_1E5A2B444();
  }

  *&v98 = v43;
  v44 = sub_1E5A2AF84();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_1E58B3C9C(v33, v35, v37 & 1);

  sub_1E5A2B7F4();
  sub_1E5A2A764();
  v108 = v48 & 1;
  *&v89 = v44;
  *(&v89 + 1) = v46;
  LOBYTE(v90) = v48 & 1;
  *(&v90 + 1) = *v107;
  DWORD1(v90) = *&v107[3];
  *(&v90 + 1) = v50;
  v52 = v62;
  v51 = v63;
  v53 = v64;
  (*(v70 + 16))(v63, v62, v64);
  v85 = v95;
  v86 = v96;
  v87 = v97;
  v81 = v91;
  v82 = v92;
  v83 = v93;
  v84 = v94;
  v79 = v89;
  v80 = v90;
  v88[0] = v51;
  v88[1] = &v79;
  sub_1E58BABA0(&v89, &v98, &qword_1ECFFB4F8, &unk_1E5A2C940);
  v78[0] = v53;
  v78[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  v76 = v58;
  v77 = sub_1E58B1D44();
  sub_1E597DC00(v88, 2uLL, v78);
  sub_1E58BAD14(&v89, &qword_1ECFFB4F8, &unk_1E5A2C940);
  v54 = v59;
  v59(v52, v53);
  v104 = v85;
  v105 = v86;
  v106 = v87;
  v100 = v81;
  v101 = v82;
  v102 = v83;
  v103 = v84;
  v98 = v79;
  v99 = v80;
  sub_1E58BAD14(&v98, &qword_1ECFFB4F8, &unk_1E5A2C940);
  return v54(v51, v53);
}

uint64_t sub_1E5917CC0@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v101 = a5;
  v102 = a6;
  v83 = a3;
  v84 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD7C8, &qword_1E5A35E28);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v78 - v8;
  v86 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = a4;
  v11 = sub_1E5A2A6C4();
  v87 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v78 - v12;
  v100 = v13;
  v14 = sub_1E5A2A6C4();
  v88 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v78 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  v99 = v14;
  v16 = sub_1E5A2A6C4();
  v91 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v89 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v93 = &v78 - v19;
  v20 = type metadata accessor for WorkoutPlanArtwork(0);
  v103 = *(v20 - 8);
  v104 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v78 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v78 = &v78 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v92 = &v78 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  v98 = v16;
  v94 = v30;
  v31 = sub_1E5A2AA84();
  v96 = *(v31 - 8);
  v97 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v95 = &v78 - v32;
  v33 = *a1;
  v36 = *(*a1 + 56);
  v35 = *a1 + 56;
  v34 = v36;
  v37 = 1 << *(v33 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v34;
  v40 = (v37 + 63) >> 6;

  v41 = 0;
  if (v39)
  {
    while (1)
    {
      v42 = v41;
LABEL_8:
      sub_1E591B610(*(v33 + 48) + *(v103 + 72) * (__clz(__rbit64(v39)) | (v42 << 6)), v25, type metadata accessor for WorkoutPlanArtwork);
      sub_1E58BAB3C(v25, v22);
      if (v22[*(v104 + 20)] > 8u)
      {
        break;
      }

      v43 = sub_1E5A2C114();

      if (v43)
      {

        goto LABEL_15;
      }

      v39 &= v39 - 1;
      sub_1E591B678(v22, type metadata accessor for WorkoutPlanArtwork);
      v41 = v42;
      if (!v39)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v42 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v42 >= v40)
      {

        v44 = sub_1E5A2AB94();
        sub_1E5A2B7E4();
        sub_1E5A2A764();
        *&v121[82] = v141;
        *&v121[98] = v142;
        *&v121[2] = v136;
        *&v121[18] = v137;
        *&v121[50] = v139;
        *&v121[66] = v140;
        *&v121[34] = v138;
        v111 = v44;
        v112 = 256;
        v117 = *&v121[64];
        v118 = *&v121[80];
        v119 = *&v121[96];
        v120 = HIWORD(v142);
        v113 = *v121;
        v114 = *&v121[16];
        v115 = *&v121[32];
        v116 = *&v121[48];
        v45 = v101;
        v109 = v101;
        v110 = MEMORY[0x1E697EBF8];
        WitnessTable = swift_getWitnessTable();
        v108 = MEMORY[0x1E697F568];
        v46 = swift_getWitnessTable();
        v47 = sub_1E58CD164(&qword_1ECFFD7A8, &qword_1ECFFD640, &qword_1E5A35BE8, MEMORY[0x1E697DDB0]);
        v105 = v46;
        v106 = v47;
        v48 = v98;
        v49 = swift_getWitnessTable();
        v50 = sub_1E591B558();
        v51 = v95;
        sub_1E595ECB8(&v111, v48, v94, v49, v50);
        goto LABEL_13;
      }

      v39 = *(v35 + 8 * v42);
      ++v41;
      if (v39)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

LABEL_15:
  v58 = v78;
  sub_1E58BAB3C(v22, v78);
  v59 = v58;
  v60 = v92;
  sub_1E58BAB3C(v59, v92);
  v61 = *MEMORY[0x1E699DC58];
  v62 = sub_1E5A2A0D4();
  v63 = v80;
  (*(*(v62 - 8) + 104))(v80, v61, v62);
  swift_storeEnumTagMultiPayload();
  v64 = v81;
  v84(v60, v63, v60 + *(v104 + 24));
  sub_1E58BAD14(v63, &qword_1ECFFD7C8, &qword_1E5A35E28);
  sub_1E5A2B7E4();
  v45 = v101;
  v65 = v90;
  v66 = v82;
  sub_1E5A2B2E4();
  (*(v86 + 8))(v64, v65);
  v134 = v45;
  v135 = MEMORY[0x1E697EBF8];
  v67 = v100;
  v68 = swift_getWitnessTable();
  v69 = v85;
  sub_1E5A2B0F4();
  (*(v87 + 8))(v66, v67);
  v132 = v68;
  v133 = MEMORY[0x1E697F568];
  v70 = v99;
  v71 = swift_getWitnessTable();
  sub_1E591B6D8();
  v72 = v89;
  sub_1E5A2B3C4();
  (*(v88 + 8))(v69, v70);
  v73 = sub_1E58CD164(&qword_1ECFFD7A8, &qword_1ECFFD640, &qword_1E5A35BE8, MEMORY[0x1E697DDB0]);
  v130 = v71;
  v131 = v73;
  v74 = v98;
  v75 = swift_getWitnessTable();
  sub_1E58B41DC();
  v76 = *(v91 + 8);
  v76(v72, v74);
  sub_1E58B41DC();
  v77 = sub_1E591B558();
  v51 = v95;
  sub_1E595EBC0(v72, v74, v94, v75, v77);
  v76(v72, v74);
  v76(v93, v74);
  sub_1E591B678(v92, type metadata accessor for WorkoutPlanArtwork);
LABEL_13:
  v128 = v45;
  v129 = MEMORY[0x1E697EBF8];
  v126 = swift_getWitnessTable();
  v127 = MEMORY[0x1E697F568];
  v52 = swift_getWitnessTable();
  v53 = sub_1E58CD164(&qword_1ECFFD7A8, &qword_1ECFFD640, &qword_1E5A35BE8, MEMORY[0x1E697DDB0]);
  v124 = v52;
  v125 = v53;
  v54 = swift_getWitnessTable();
  v55 = sub_1E591B558();
  v122 = v54;
  v123 = v55;
  v56 = v97;
  swift_getWitnessTable();
  sub_1E58B41DC();
  return (*(v96 + 8))(v51, v56);
}

uint64_t sub_1E591890C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v21 = a4;
  v22 = a5;
  v23 = a8;
  v24 = sub_1E5A2A9E4();
  v13 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC0F0, &unk_1E5A37CB0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v21 - v18;
  v32 = a1;
  v25 = a6;
  v26 = a7;
  v27 = a2;
  v28 = a3;
  v29 = v21;
  v30 = v22;
  v31 = a1;
  sub_1E5A2B504();
  sub_1E5A2A9D4();
  sub_1E58CD164(&qword_1ECFFC0F8, &qword_1ECFFC0F0, &unk_1E5A37CB0, MEMORY[0x1E697D658]);
  sub_1E5A2B264();
  (*(v13 + 8))(v15, v24);
  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_1E5918B54@<X0>(uint64_t a2@<X8>)
{
  sub_1E58D1C80();

  v3 = sub_1E5A2AFD4();
  v5 = v4;
  v7 = v6;
  sub_1E5A2AF14();
  sub_1E5A2AE24();

  v8 = sub_1E5A2AFA4();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_1E58B3C9C(v3, v5, v7 & 1);

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_1E5918C48@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  type metadata accessor for TrainerPreferenceView(0, a2, a3, a5);
  sub_1E590FFB8(v6, v7);
  result = sub_1E5A2B4A4();
  *a4 = result;
  return result;
}

uint64_t sub_1E5918CB0@<X0>(uint64_t a2@<X1>, uint64_t a7@<X8>)
{
  *a7 = sub_1E5A2AA24();
  *(a7 + 8) = 0x4014000000000000;
  *(a7 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD710, &qword_1E5A35CF0);
  sub_1E5918DA4(a2, a7 + *(v9 + 44));
  v10 = sub_1E5A2ADC4();
  sub_1E5A2A424();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD620, &qword_1E5A35BC8);
  v20 = a7 + *(result + 36);
  *v20 = v10;
  *(v20 + 8) = v12;
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
  return result;
}

uint64_t sub_1E5918DA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_1E5A2AEB4();
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v68 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E5A2A9E4();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v65 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD718, &qword_1E5A35CF8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v71 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v73 = v64 - v16;
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v17 = qword_1EE2D33E0;
  swift_getKeyPath();

  v18 = v17;
  sub_1E5A2B944();

  v19 = sub_1E5A2AF64();
  v21 = v20;
  v23 = v22;
  v64[3] = a1;
  sub_1E5A2AE84();
  v64[2] = v12;
  sub_1E5A2AE24();

  v24 = sub_1E5A2AFA4();
  v26 = v25;
  v64[1] = v9;
  v28 = v27;
  v30 = v29;

  sub_1E58B3C9C(v19, v21, v23 & 1);

  sub_1E5A2B7F4();
  sub_1E5A2A764();
  v84 = v28 & 1;
  *&v77 = v24;
  *(&v77 + 1) = v26;
  LOBYTE(v78) = v28 & 1;
  *(&v78 + 1) = v30;
  v31 = v65;
  sub_1E5A2A9D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  sub_1E58B1D44();
  sub_1E5A2B264();
  (*(v66 + 8))(v31, v67);
  v83[5] = v79[3];
  v83[6] = v79[4];
  v83[7] = v79[5];
  v83[8] = v79[6];
  v83[2] = v79[0];
  v83[3] = v79[1];
  v83[4] = v79[2];
  v83[0] = v77;
  v83[1] = v78;
  sub_1E58BAD14(v83, &qword_1ECFFB4F8, &unk_1E5A2C940);
  sub_1E5A2BA84();
  v32 = qword_1EE2D33E0;
  swift_getKeyPath();

  v33 = v32;
  sub_1E5A2B944();

  v34 = sub_1E5A2AF64();
  v36 = v35;
  LOBYTE(v21) = v37;
  sub_1E5A2AE04();
  v39 = v68;
  v38 = v69;
  v40 = v70;
  (*(v69 + 104))(v68, *MEMORY[0x1E6980EA8], v70);
  sub_1E5A2AEE4();

  (*(v38 + 8))(v39, v40);
  v41 = sub_1E5A2AFA4();
  v43 = v42;
  LOBYTE(v38) = v44;

  sub_1E58B3C9C(v34, v36, v21 & 1);

  LODWORD(v77) = sub_1E5A2ABA4();
  v45 = sub_1E5A2AF84();
  v69 = v46;
  v70 = v45;
  LOBYTE(v24) = v47;
  v49 = v48;
  v68 = v48;
  sub_1E58B3C9C(v41, v43, v38 & 1);

  KeyPath = swift_getKeyPath();
  v67 = KeyPath;
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  *&v80[55] = v85[3];
  *&v80[71] = v85[4];
  *&v80[87] = v85[5];
  *&v80[103] = v85[6];
  *&v80[7] = v85[0];
  *&v80[23] = v85[1];
  v82 = v24 & 1;
  *&v80[39] = v85[2];
  v51 = v73;
  v52 = v71;
  sub_1E58BABA0(v73, v71, &qword_1ECFFD718, &qword_1E5A35CF8);
  v53 = v72;
  sub_1E58BABA0(v52, v72, &qword_1ECFFD718, &qword_1E5A35CF8);
  v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD720, &qword_1E5A35D50) + 48);
  *(v76 + 9) = *v80;
  *(&v76[4] + 9) = *&v80[64];
  v55 = (v53 + v54);
  v56 = v69;
  v57 = v70;
  *&v74 = v70;
  *(&v74 + 1) = v69;
  LOBYTE(v75) = v24 & 1;
  *(&v75 + 1) = *v81;
  DWORD1(v75) = *&v81[3];
  *(&v75 + 1) = v49;
  *&v76[0] = KeyPath;
  BYTE8(v76[0]) = 0;
  *(&v76[5] + 9) = *&v80[80];
  *(&v76[6] + 9) = *&v80[96];
  *(&v76[7] + 1) = *&v80[111];
  *(&v76[1] + 9) = *&v80[16];
  *(&v76[2] + 9) = *&v80[32];
  *(&v76[3] + 9) = *&v80[48];
  v58 = v76[5];
  v55[6] = v76[4];
  v55[7] = v58;
  v59 = v76[7];
  v55[8] = v76[6];
  v55[9] = v59;
  v60 = v76[1];
  v55[2] = v76[0];
  v55[3] = v60;
  v61 = v76[3];
  v55[4] = v76[2];
  v55[5] = v61;
  v62 = v75;
  *v55 = v74;
  v55[1] = v62;
  sub_1E58BABA0(&v74, &v77, &qword_1ECFFD728, &qword_1E5A35D58);
  sub_1E58BAD14(v51, &qword_1ECFFD718, &qword_1E5A35CF8);
  *(&v79[4] + 9) = *&v80[64];
  *(&v79[5] + 9) = *&v80[80];
  *(&v79[6] + 9) = *&v80[96];
  *(v79 + 9) = *v80;
  *(&v79[1] + 9) = *&v80[16];
  *(&v79[2] + 9) = *&v80[32];
  *&v77 = v57;
  *(&v77 + 1) = v56;
  LOBYTE(v78) = v24 & 1;
  *(&v78 + 1) = *v81;
  DWORD1(v78) = *&v81[3];
  *(&v78 + 1) = v68;
  *&v79[0] = v67;
  BYTE8(v79[0]) = 0;
  *(&v79[7] + 1) = *&v80[111];
  *(&v79[3] + 9) = *&v80[48];
  sub_1E58BAD14(&v77, &qword_1ECFFD728, &qword_1E5A35D58);
  return sub_1E58BAD14(v52, &qword_1ECFFD718, &qword_1E5A35CF8);
}

uint64_t sub_1E59196B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();

  sub_1E5A2B934();

  if (v18[0])
  {
    v18[2] = v18[0];
    v9 = WorkoutPlanSchedule.modalityIdentifiers()();

    v10 = 1 << v9[32];
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v9 + 7);
    v13 = (v10 + 63) >> 6;

    for (i = 0; v12; result = )
    {
      v15 = i;
LABEL_10:
      v16 = (*(v9 + 6) + ((v15 << 10) | (16 * __clz(__rbit64(v12)))));
      v17 = v16[1];
      v12 &= v12 - 1;
      v18[0] = *v16;
      v18[1] = v17;

      sub_1E5919890(v18, a1, a2);
    }

    while (1)
    {
      v15 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v15 >= v13)
      {
      }

      v12 = *&v9[8 * v15 + 56];
      ++i;
      if (v12)
      {
        i = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E5919890(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v8 = a1[1];
  *v6 = v7;
  v6[1] = v8;
  swift_storeEnumTagMultiPayload();

  sub_1E5A2B954();

  return sub_1E591B678(v6, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E5919968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E59199C8(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1E5919A64(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_1E5919A64(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1E5A2C0E4();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      if (v7 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = sub_1E5A2BC24();
        *(v10 + 16) = v7 / 2;
      }

      v12[0] = v10 + 32;
      v12[1] = v7 / 2;
      v11 = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_1E5919B74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 72 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *(v10 + 48);
      v11 = result == *(v10 - 24) && *(v10 + 56) == *(v10 - 16);
      if (v11 || (result = sub_1E5A2C114(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 72;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v12 = v10 - 72;
      v18 = *(v10 + 32);
      v19 = *(v10 + 48);
      v20 = *(v10 + 64);
      v16 = *v10;
      v17 = *(v10 + 16);
      v13 = *(v10 - 24);
      *(v10 + 32) = *(v10 - 40);
      *(v10 + 48) = v13;
      *(v10 + 64) = *(v10 - 8);
      v14 = *(v10 - 56);
      *v10 = *(v10 - 72);
      *(v10 + 16) = v14;
      *(v12 + 64) = v20;
      *(v12 + 32) = v18;
      *(v12 + 48) = v19;
      v10 -= 72;
      *v12 = v16;
      *(v12 + 16) = v17;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E5919C7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 56 * a3 - 56;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 56 * v4;
    result = *(v9 + 40);
    v10 = *(v9 + 48);
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 + 40) && v10 == *(v12 + 48);
      if (v13 || (result = sub_1E5A2C114(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 56;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 56);
      v15 = *(v12 + 72);
      result = *(v12 + 96);
      v10 = *(v12 + 104);
      v16 = *(v12 + 16);
      *(v12 + 56) = *v12;
      v17 = *(v12 + 80);
      *(v12 + 72) = v16;
      *(v12 + 88) = *(v12 + 32);
      *(v12 + 104) = *(v12 + 48);
      *v12 = v14;
      *(v12 + 16) = v15;
      *(v12 + 24) = v17;
      *(v12 + 40) = result;
      *(v12 + 48) = v10;
      v12 -= 56;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E5919D7C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  __dst = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    __dst = *__dst;
    if (!__dst)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1E5A21290(v8);
      v8 = result;
    }

    v83 = v8 + 16;
    v84 = *(v8 + 2);
    if (v84 >= 2)
    {
      while (1)
      {
        v85 = *v5;
        if (!*v5)
        {
          goto LABEL_142;
        }

        v86 = &v8[16 * v84];
        v5 = *v86;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_1E591A9F0((v85 + 72 * *v86), (v85 + 72 * *v87), (v85 + 72 * v88), __dst);
        if (v4)
        {
        }

        if (v88 < v5)
        {
          goto LABEL_130;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_131;
        }

        *v86 = v5;
        *(v86 + 1) = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_132;
        }

        v84 = *v83 - 1;
        result = memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        v5 = a3;
        if (v84 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 72 * v7;
      result = *(v11 + 48);
      v12 = *(v11 + 56);
      v13 = *v5 + 72 * v9;
      if (result == *(v13 + 48) && v12 == *(v13 + 56))
      {
        v15 = 0;
      }

      else
      {
        result = sub_1E5A2C114();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 72 * v9 + 200);
        do
        {
          result = *(v16 - 1);
          if (result == *(v16 - 10) && *v16 == *(v16 - 9))
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1E5A2C114();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          v16 += 9;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v18 = 72 * v7 - 72;
          v19 = v9;
          v20 = 72 * v9;
          v21 = v7;
          v90 = v19;
          do
          {
            if (v19 != --v21)
            {
              v23 = *v5;
              if (!*v5)
              {
                goto LABEL_141;
              }

              v22 = v23 + v18;
              v99 = *(v23 + v20 + 32);
              v101 = *(v23 + v20 + 48);
              v103 = *(v23 + v20 + 64);
              v95 = *(v23 + v20);
              v97 = *(v23 + v20 + 16);
              result = memmove((v23 + v20), (v23 + v18), 0x48uLL);
              *(v22 + 32) = v99;
              *(v22 + 48) = v101;
              *(v22 + 64) = v103;
              *v22 = v95;
              *(v22 + 16) = v97;
            }

            ++v19;
            v18 -= 72;
            v20 += 72;
          }

          while (v19 < v21);
          v9 = v90;
        }
      }
    }

    v24 = v5[1];
    if (v7 < v24)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_136;
        }

        if (v9 + a4 >= v24)
        {
          v25 = v5[1];
        }

        else
        {
          v25 = v9 + a4;
        }

        if (v25 < v9)
        {
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (v7 != v25)
        {
          break;
        }
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E58E6258(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v37 = *(v8 + 2);
    v36 = *(v8 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_1E58E6258((v36 > 1), v37 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v38;
    v39 = &v8[16 * v37];
    *(v39 + 4) = v9;
    *(v39 + 5) = v7;
    v40 = *__dst;
    if (!*__dst)
    {
      goto LABEL_143;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v8 + 4);
          v43 = *(v8 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_75:
          if (v45)
          {
            goto LABEL_121;
          }

          v58 = &v8[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_124;
          }

          v64 = &v8[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_128;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v68 = &v8[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_89:
        if (v63)
        {
          goto LABEL_123;
        }

        v71 = &v8[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_126;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_96:
        v79 = v41 - 1;
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v5)
        {
          goto LABEL_140;
        }

        v80 = *&v8[16 * v79 + 32];
        v81 = *&v8[16 * v41 + 40];
        sub_1E591A9F0((*v5 + 72 * v80), (*v5 + 72 * *&v8[16 * v41 + 32]), (*v5 + 72 * v81), v40);
        if (v4)
        {
        }

        if (v81 < v80)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1E5A21290(v8);
        }

        if (v79 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v82 = &v8[16 * v79];
        *(v82 + 4) = v80;
        *(v82 + 5) = v81;
        result = sub_1E5A21204(v41);
        v38 = *(v8 + 2);
        if (v38 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v8[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_119;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_120;
      }

      v53 = &v8[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_122;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_125;
      }

      if (v57 >= v49)
      {
        v75 = &v8[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_129;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  v26 = *v5;
  v27 = *v5 + 72 * v7;
  v91 = v9;
  v28 = v9 - v7;
LABEL_44:
  v29 = v28;
  v30 = v27;
  while (1)
  {
    v31 = *(v30 + 48) == *(v30 - 24) && *(v30 + 56) == *(v30 - 16);
    if (v31 || (result = sub_1E5A2C114(), (result & 1) == 0))
    {
LABEL_43:
      ++v7;
      v27 += 72;
      --v28;
      if (v7 != v25)
      {
        goto LABEL_44;
      }

      v7 = v25;
      v5 = a3;
      v9 = v91;
      goto LABEL_55;
    }

    if (!v26)
    {
      break;
    }

    v32 = v30 - 72;
    v100 = *(v30 + 32);
    v102 = *(v30 + 48);
    v104 = *(v30 + 64);
    v96 = *v30;
    v98 = *(v30 + 16);
    v33 = *(v30 - 24);
    *(v30 + 32) = *(v30 - 40);
    *(v30 + 48) = v33;
    *(v30 + 64) = *(v30 - 8);
    v34 = *(v30 - 56);
    *v30 = *(v30 - 72);
    *(v30 + 16) = v34;
    *(v32 + 64) = v104;
    *(v32 + 32) = v100;
    *(v32 + 48) = v102;
    v30 -= 72;
    *v32 = v96;
    *(v32 + 16) = v98;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1E591A3BC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v105 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v105 = *v105;
    if (!v105)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_1E5A21290(v8);
      v8 = result;
    }

    v96 = v8 + 16;
    v97 = *(v8 + 2);
    if (v97 >= 2)
    {
      while (1)
      {
        v98 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v99 = &v8[16 * v97];
        v5 = *v99;
        v100 = &v96[2 * v97];
        v101 = v100[1];
        sub_1E591AC90((v98 + 56 * *v99), (v98 + 56 * *v100), v98 + 56 * v101, v105);
        if (v4)
        {
        }

        if (v101 < v5)
        {
          goto LABEL_129;
        }

        if (v97 - 2 >= *v96)
        {
          goto LABEL_130;
        }

        *v99 = v5;
        *(v99 + 1) = v101;
        v102 = *v96 - v97;
        if (*v96 < v97)
        {
          goto LABEL_131;
        }

        v97 = *v96 - 1;
        result = memmove(v100, v100 + 2, 16 * v102);
        *v96 = v97;
        v5 = a3;
        if (v97 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 56 * v7;
      result = *(v11 + 40);
      v12 = *(v11 + 48);
      v13 = *v5 + 56 * v9;
      if (result == *(v13 + 40) && v12 == *(v13 + 48))
      {
        v15 = 0;
      }

      else
      {
        result = sub_1E5A2C114();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 56 * v9 + 160);
        do
        {
          result = *(v16 - 1);
          if (result == *(v16 - 8) && *v16 == *(v16 - 7))
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1E5A2C114();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          v16 += 7;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v18 = 56 * v7;
          v19 = 56 * v9 + 48;
          v20 = v7;
          v21 = v9;
          do
          {
            if (v21 != --v20)
            {
              v32 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v22 = (v32 + v19);
              v23 = *(v32 + v19 - 48);
              v24 = v32 + v18;
              v25 = *(v22 - 4);
              v26 = *(v22 - 1);
              v27 = *v22;
              v28 = *(v22 - 3);
              v29 = *(v24 - 40);
              v30 = *(v24 - 24);
              v31 = *(v24 - 56);
              *v22 = *(v24 - 8);
              *(v22 - 2) = v29;
              *(v22 - 1) = v30;
              *(v22 - 3) = v31;
              *(v24 - 56) = v23;
              *(v24 - 40) = v25;
              *(v24 - 32) = v28;
              *(v24 - 16) = v26;
              *(v24 - 8) = v27;
            }

            ++v21;
            v18 -= 56;
            v19 += 56;
          }

          while (v21 < v20);
        }
      }
    }

    v33 = v5[1];
    if (v7 < v33)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v33)
        {
          v34 = v5[1];
        }

        else
        {
          v34 = v9 + a4;
        }

        if (v34 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v34)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E58E6258(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v50 = *(v8 + 2);
    v49 = *(v8 + 3);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      result = sub_1E58E6258((v49 > 1), v50 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v51;
    v52 = &v8[16 * v50];
    *(v52 + 4) = v9;
    *(v52 + 5) = v7;
    v53 = *v105;
    if (!*v105)
    {
      goto LABEL_142;
    }

    if (v50)
    {
      while (1)
      {
        v54 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v55 = *(v8 + 4);
          v56 = *(v8 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_74:
          if (v58)
          {
            goto LABEL_120;
          }

          v71 = &v8[16 * v51];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_123;
          }

          v77 = &v8[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_127;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v51 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v81 = &v8[16 * v51];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_88:
        if (v76)
        {
          goto LABEL_122;
        }

        v84 = &v8[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_125;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_95:
        v92 = v54 - 1;
        if (v54 - 1 >= v51)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v93 = *&v8[16 * v92 + 32];
        v94 = *&v8[16 * v54 + 40];
        sub_1E591AC90((*v5 + 56 * v93), (*v5 + 56 * *&v8[16 * v54 + 32]), *v5 + 56 * v94, v53);
        if (v4)
        {
        }

        if (v94 < v93)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1E5A21290(v8);
        }

        if (v92 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v95 = &v8[16 * v92];
        *(v95 + 4) = v93;
        *(v95 + 5) = v94;
        result = sub_1E5A21204(v54);
        v51 = *(v8 + 2);
        if (v51 <= 1)
        {
          goto LABEL_3;
        }
      }

      v59 = &v8[16 * v51 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_118;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_119;
      }

      v66 = &v8[16 * v51];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_121;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_124;
      }

      if (v70 >= v62)
      {
        v88 = &v8[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_128;
        }

        if (v57 < v91)
        {
          v54 = v51 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v35 = *v5;
  v36 = *v5 + 56 * v7 - 56;
  v103 = v9;
  v37 = v9 - v7;
LABEL_43:
  v38 = v35 + 56 * v7;
  v39 = *(v38 + 40);
  v40 = *(v38 + 48);
  v41 = v37;
  v42 = v36;
  while (1)
  {
    v43 = v39 == *(v42 + 40) && v40 == *(v42 + 48);
    if (v43 || (result = sub_1E5A2C114(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v36 += 56;
      --v37;
      if (v7 != v34)
      {
        goto LABEL_43;
      }

      v7 = v34;
      v5 = a3;
      v9 = v103;
      goto LABEL_54;
    }

    if (!v35)
    {
      break;
    }

    v44 = *(v42 + 56);
    v45 = *(v42 + 72);
    v39 = *(v42 + 96);
    v40 = *(v42 + 104);
    v46 = *(v42 + 16);
    *(v42 + 56) = *v42;
    v47 = *(v42 + 80);
    *(v42 + 72) = v46;
    *(v42 + 88) = *(v42 + 32);
    *(v42 + 104) = *(v42 + 48);
    *v42 = v44;
    *(v42 + 16) = v45;
    *(v42 + 24) = v47;
    *(v42 + 40) = v39;
    *(v42 + 48) = v40;
    v42 -= 56;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_1E591A9F0(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 72;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 72;
  if (v9 < v11)
  {
    if (__dst != __src || &__src[72 * v9] <= __dst)
    {
      memmove(__dst, __src, 72 * v9);
    }

    v12 = &v4[72 * v9];
    if (v8 < 72 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      v13 = *(v6 + 6) == *(v4 + 6) && *(v6 + 7) == *(v4 + 7);
      if (v13 || (sub_1E5A2C114() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 72;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 72;
      if (v4 >= v12 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_41;
      }
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 72;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    memmove(v7, v14, 0x48uLL);
    goto LABEL_17;
  }

  if (__dst != a2 || &a2[72 * v11] <= __dst)
  {
    memmove(__dst, a2, 72 * v11);
  }

  v12 = &v4[72 * v11];
  if (v10 >= 72 && v6 > v7)
  {
    do
    {
      v5 -= 72;
      while (1)
      {
        v15 = *(v12 - 3) == *(v6 - 3) && *(v12 - 2) == *(v6 - 2);
        if (!v15 && (sub_1E5A2C114() & 1) != 0)
        {
          break;
        }

        v16 = (v12 - 72);
        if (v5 + 72 != v12)
        {
          memmove(v5, v12 - 72, 0x48uLL);
        }

        v5 -= 72;
        v12 -= 72;
        if (v16 <= v4)
        {
          v12 = v16;
          goto LABEL_41;
        }
      }

      v17 = v6 - 72;
      if (v5 + 72 != v6)
      {
        memmove(v5, v6 - 72, 0x48uLL);
      }

      if (v12 <= v4)
      {
        break;
      }

      v6 -= 72;
    }

    while (v17 > v7);
    v6 = v17;
  }

LABEL_41:
  v18 = (v12 - v4) / 72;
  if (v6 != v4 || v6 >= &v4[72 * v18])
  {
    memmove(v6, v4, 72 * v18);
  }

  return 1;
}

uint64_t sub_1E591AC90(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[56 * v9] <= a4)
    {
      memmove(a4, __dst, 56 * v9);
    }

    v12 = &v4[56 * v9];
    if (v8 < 56)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v17 = *(v6 + 5) == *(v4 + 5) && *(v6 + 6) == *(v4 + 6);
      if (!v17 && (sub_1E5A2C114() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v17 = v7 == v4;
      v4 += 56;
      if (!v17)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 56;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v17 = v7 == v6;
    v6 += 56;
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = *(v13 + 2);
    *(v7 + 6) = *(v13 + 6);
    *(v7 + 1) = v15;
    *(v7 + 2) = v16;
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[56 * v11] <= a4)
  {
    memmove(a4, __src, 56 * v11);
  }

  v12 = &v4[56 * v11];
  if (v10 >= 56 && v6 > v7)
  {
LABEL_24:
    v5 -= 56;
    do
    {
      v18 = *(v12 - 2) == *(v6 - 2) && *(v12 - 1) == *(v6 - 1);
      if (!v18 && (sub_1E5A2C114() & 1) != 0)
      {
        v23 = v6 - 56;
        if ((v5 + 56) != v6)
        {
          v24 = *v23;
          v25 = *(v6 - 40);
          v26 = *(v6 - 24);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v25;
          *(v5 + 32) = v26;
          *v5 = v24;
        }

        if (v12 <= v4 || (v6 -= 56, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      v19 = v12 - 56;
      if ((v5 + 56) != v12)
      {
        v20 = *v19;
        v21 = *(v12 - 40);
        v22 = *(v12 - 24);
        *(v5 + 48) = *(v12 - 1);
        *(v5 + 16) = v21;
        *(v5 + 32) = v22;
        *v5 = v20;
      }

      v5 -= 56;
      v12 -= 56;
    }

    while (v19 > v4);
    v12 = v19;
  }

LABEL_39:
  v27 = (v12 - v4) / 56;
  if (v6 != v4 || v6 >= &v4[56 * v27])
  {
    memmove(v6, v4, 56 * v27);
  }

  return 1;
}

unint64_t sub_1E591AFC4()
{
  result = qword_1ECFFD730;
  if (!qword_1ECFFD730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD730);
  }

  return result;
}

unint64_t sub_1E591B018()
{
  result = qword_1ECFFD738;
  if (!qword_1ECFFD738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD738);
  }

  return result;
}

unint64_t sub_1E591B0D0()
{
  result = qword_1ECFFD748;
  if (!qword_1ECFFD748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD630, &qword_1E5A35BD8);
    sub_1E58CD164(&qword_1ECFFC0F8, &qword_1ECFFC0F0, &unk_1E5A37CB0, MEMORY[0x1E697D658]);
    sub_1E591B4FC(&qword_1ECFFD750, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD748);
  }

  return result;
}

uint64_t sub_1E591B1B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD740, &unk_1E5A35D60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E591B228()
{
  result = qword_1ECFFD758;
  if (!qword_1ECFFD758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD668, &qword_1E5A35C00);
    sub_1E591B2AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD758);
  }

  return result;
}

unint64_t sub_1E591B2AC()
{
  result = qword_1ECFFD760;
  if (!qword_1ECFFD760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD740, &unk_1E5A35D60);
    sub_1E591B4FC(&qword_1ECFFD768, MEMORY[0x1E697D6D0], MEMORY[0x1E697D6C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD760);
  }

  return result;
}

uint64_t sub_1E591B4FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E591B558()
{
  result = qword_1ECFFD7B0;
  if (!qword_1ECFFD7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
    sub_1E58CD164(&qword_1ECFFD7B8, &qword_1ECFFD7C0, &qword_1E5A35E20, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD7B0);
  }

  return result;
}

uint64_t sub_1E591B610(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E591B678(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E591B6D8()
{
  result = qword_1ECFFD7D0;
  if (!qword_1ECFFD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD7D0);
  }

  return result;
}

uint64_t sub_1E591B72C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
  }

  return result;
}

uint64_t WorkoutPlanSchedule.itemsByWeekday.getter()
{
  v1 = sub_1E591B840(*v0);
  if (*(v1 + 16))
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC080, &unk_1E5A36480);
    v3 = sub_1E5A2BF14();
    v1 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v5 = v3;
  sub_1E591C604(v1, 1, &v5);
  return v5;
}

uint64_t sub_1E591B840(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1E590DE08(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = sub_1E5A2BDE4();
  v6 = 0;
  v25 = *(a1 + 36);
  v23 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v24 = v6;
    v9 = *(*(a1 + 48) + 32 * v5);
    v10 = *(*(a1 + 56) + 8 * v5);
    if (v9 > 6)
    {
      goto LABEL_28;
    }

    v11 = *(v26 + 16);
    v12 = *(v26 + 24);

    if (v11 >= v12 >> 1)
    {
      sub_1E590DE08((v12 > 1), v11 + 1, 1);
    }

    *(v26 + 16) = v11 + 1;
    v13 = v26 + 16 * v11;
    *(v13 + 32) = v9;
    *(v13 + 40) = v10;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_25;
    }

    v4 = a1 + 64;
    v14 = *(a1 + 64 + 8 * v8);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_26;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_27;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 72 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          sub_1E5901D04(v5, v25, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      sub_1E5901D04(v5, v25, 0);
    }

LABEL_4:
    v6 = v24 + 1;
    v5 = v7;
    if (v24 + 1 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:

  sub_1E5A2BE64();

  v22 = sub_1E5A2C0F4();
  MEMORY[0x1E69327A0](v22);

  result = sub_1E5A2BEE4();
  __break(1u);
  return result;
}

uint64_t sub_1E591BB44(uint64_t a1)
{
  v3 = type metadata accessor for WorkoutPlanScheduledItem(0);
  v37 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v33 = v1;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1E590DE68(0, v6, 0);
    v42 = v43;
    v8 = a1 + 64;
    result = sub_1E5A2BDE4();
    v9 = result;
    v10 = 0;
    v34 = a1 + 72;
    v35 = v6;
    v36 = a1;
    v38 = a1 + 64;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      v13 = 1 << v9;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_30;
      }

      v14 = *(a1 + 36);
      v15 = *(*(a1 + 56) + 8 * v9);
      v16 = *(v15 + 16);
      v41 = v10;
      if (v16)
      {
        v39 = 1 << v9;
        v40 = v14;
        v17 = v37;
        v18 = v15 + ((*(v37 + 80) + 32) & ~*(v37 + 80));

        v19 = 0;
        v20 = *(v17 + 72);
        while (1)
        {
          sub_1E58F2504(v18, v5);
          v21 = *v5;
          result = sub_1E58F2568(v5);
          v22 = __OFADD__(v19, v21);
          v19 += v21;
          if (v22)
          {
            break;
          }

          v18 += v20;
          if (!--v16)
          {

            v6 = v35;
            a1 = v36;
            v14 = v40;
            v10 = v41;
            v13 = v39;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

      v19 = 0;
LABEL_14:
      v23 = v42;
      v43 = v42;
      v25 = *(v42 + 16);
      v24 = *(v42 + 24);
      if (v25 >= v24 >> 1)
      {
        v39 = v13;
        v40 = v14;
        result = sub_1E590DE68((v24 > 1), v25 + 1, 1);
        v13 = v39;
        v14 = v40;
        v10 = v41;
        v23 = v43;
      }

      *(v23 + 16) = v25 + 1;
      *(v23 + 8 * v25 + 32) = v19;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_31;
      }

      v8 = v38;
      v26 = *(v38 + 8 * v12);
      if ((v26 & v13) == 0)
      {
        goto LABEL_32;
      }

      if (v14 != *(a1 + 36))
      {
        goto LABEL_33;
      }

      v27 = v26 & (-2 << (v9 & 0x3F));
      v42 = v23;
      if (v27)
      {
        v11 = __clz(__rbit64(v27)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v12 << 6;
        v29 = v12 + 1;
        v30 = (v34 + 8 * v12);
        while (v29 < (v11 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_1E5901D04(v9, v14, 0);
            v11 = __clz(__rbit64(v31)) + v28;
            goto LABEL_25;
          }
        }

        result = sub_1E5901D04(v9, v14, 0);
LABEL_25:
        v10 = v41;
      }

      ++v10;
      v9 = v11;
      if (v10 == v6)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

char *WorkoutPlanSchedule.modalityIdentifiers()()
{
  v40 = type metadata accessor for WorkoutPlanScheduledItem(0);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v2 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *v0;
  v4 = *v0 + 64;
  v5 = 1 << *(*v0 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v0 + 64);
  v33 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v34 = v4;
  v35 = v3;
  while (v7)
  {
LABEL_10:
    v39 = v7;
    v12 = *(*(v3 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
    v13 = *(v12 + 16);
    if (v13)
    {
      v38 = v10;
      v41 = MEMORY[0x1E69E7CC0];

      sub_1E590DEA8(0, v13, 0);
      v14 = v41;
      v15 = *(v36 + 80);
      v37 = v12;
      v16 = v12 + ((v15 + 32) & ~v15);
      v17 = *(v36 + 72);
      do
      {
        sub_1E58F2504(v16, v2);
        v18 = &v2[*(v40 + 28)];
        v19 = *v18;
        v20 = *(v18 + 1);

        sub_1E58F2568(v2);
        v41 = v14;
        v22 = *(v14 + 16);
        v21 = *(v14 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1E590DEA8((v21 > 1), v22 + 1, 1);
          v14 = v41;
        }

        *(v14 + 16) = v22 + 1;
        v23 = v14 + 16 * v22;
        *(v23 + 32) = v19;
        *(v23 + 40) = v20;
        v16 += v17;
        --v13;
      }

      while (v13);

      v4 = v34;
      v3 = v35;
      v10 = v38;
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    v24 = *(v14 + 16);
    v25 = *(v10 + 2);
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
      goto LABEL_31;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v26 > *(v10 + 3) >> 1)
    {
      if (v25 <= v26)
      {
        v27 = v25 + v24;
      }

      else
      {
        v27 = v25;
      }

      result = sub_1E58E6F44(result, v27, 1, v10);
      v10 = result;
    }

    v7 = (v39 - 1) & v39;
    if (*(v14 + 16))
    {
      if ((*(v10 + 3) >> 1) - *(v10 + 2) < v24)
      {
        goto LABEL_33;
      }

      swift_arrayInitWithCopy();

      if (v24)
      {
        v28 = *(v10 + 2);
        v29 = __OFADD__(v28, v24);
        v30 = v28 + v24;
        if (v29)
        {
          goto LABEL_34;
        }

        *(v10 + 2) = v30;
      }
    }

    else
    {

      if (v24)
      {
        goto LABEL_32;
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v33)
    {

      v31 = sub_1E591C978(v10);

      return v31;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t WorkoutPlanSchedule.durationRange.getter()
{

  v1 = sub_1E591BB44(v0);

  v2 = v1;
  v3 = *(v1 + 16);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v4 = *(v1 + 32);
  v5 = v3 - 1;
  if (v3 == 1)
  {
LABEL_6:

    return v4;
  }

  if (v3 >= 5)
  {
    v8 = vdupq_n_s64(v4);
    v6 = v5 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v9 = (v1 + 56);
    v10 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = v8;
    do
    {
      v8 = vbslq_s8(vcgtq_s64(v8, v9[-1]), v9[-1], v8);
      v11 = vbslq_s8(vcgtq_s64(v11, *v9), *v9, v11);
      v9 += 2;
      v10 -= 4;
    }

    while (v10);
    v12 = vbslq_s8(vcgtq_s64(v11, v8), v8, v11);
    v13 = vextq_s8(v12, v12, 8uLL).u64[0];
    v7 = vbsl_s8(vcgtd_s64(v13, v12.i64[0]), *v12.i8, v13);
    if (v5 == (v5 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = 1;
    v7 = *(v1 + 32);
  }

  v14 = v3 - v6;
  v15 = (v2 + 8 * v6 + 32);
  do
  {
    v17 = *v15++;
    v16 = v17;
    if (*&v17 < *&v7)
    {
      v7 = v16;
    }

    --v14;
  }

  while (v14);
LABEL_14:
  if (v3 >= 5)
  {
    v18 = v5 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v19 = vdupq_n_s64(v4);
    v20 = (v2 + 56);
    v21 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = v19;
    do
    {
      v19 = vbslq_s8(vcgtq_s64(v19, v20[-1]), v19, v20[-1]);
      v22 = vbslq_s8(vcgtq_s64(v22, *v20), v22, *v20);
      v20 += 2;
      v21 -= 4;
    }

    while (v21);
    v23 = vbslq_s8(vcgtq_s64(v19, v22), v19, v22);
    v24 = vextq_s8(v23, v23, 8uLL).u64[0];
    v4 = vbsl_s8(vcgtd_s64(v23.i64[0], v24), *v23.i8, v24);
    if (v5 == (v5 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v18 = 1;
  }

  v25 = v3 - v18;
  v26 = (v2 + 8 * v18 + 32);
  do
  {
    v28 = *v26++;
    v27 = v28;
    if (v4 <= v28)
    {
      v4 = v27;
    }

    --v25;
  }

  while (v25);
LABEL_23:

  if (v4 >= *&v7)
  {
    return v7;
  }

  __break(1u);
  return result;
}

int64_t sub_1E591C344(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v6[-1], v5);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), *v6, v8);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v8, v5), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v10, v9.i64[0]), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v14 < v2)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

int64_t sub_1E591C3F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_1E591C4AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E591CBE8();
  result = MEMORY[0x1E6932930](v2, &type metadata for WorkoutPlanModalityPreference, v3);
  v5 = 0;
  v18 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = )
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(a1 + 56) + ((v10 << 11) | (32 * v11)));
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v12[3];

    sub_1E592D0A8(v17, v13, v14, v15, v16);
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v18;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E591C604(uint64_t a1, char a2, void *a3)
{
  v44 = *(a1 + 16);
  if (!v44)
  {
  }

  v7 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = *a3;
  v9 = sub_1E58EF8CC(v6);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1E59007C8();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD7F0, &unk_1E5A36530);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return MEMORY[0x1E69331F0](v19);
    }

    goto LABEL_29;
  }

  sub_1E5900F30(v13, a2 & 1);
  v17 = sub_1E58EF8CC(v6);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_28:
    sub_1E5A2C134();
    __break(1u);
LABEL_29:
    sub_1E5A2BE64();
    MEMORY[0x1E69327A0](0xD00000000000001BLL, 0x80000001E5A46670);
    sub_1E5A2BED4();
    MEMORY[0x1E69327A0](39, 0xE100000000000000);
    result = sub_1E5A2BEE4();
    __break(1u);
    return result;
  }

  v14 = v17;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v22[6] + v14) = v6;
  *(v22[7] + 8 * v14) = v7;
  v23 = v22[2];
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22[2] = v25;
  if (v44 != 1)
  {
    v26 = (a1 + 56);
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      v29 = *v26;
      v28 = *(v26 - 8);
      v30 = *a3;
      v31 = sub_1E58EF8CC(v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_25;
      }

      v36 = v31;
      v37 = v32;
      v38 = v30[3];

      if (v38 < v35)
      {
        sub_1E5900F30(v35, 1);
        v39 = sub_1E58EF8CC(v28);
        if ((v37 & 1) != (v40 & 1))
        {
          goto LABEL_28;
        }

        v36 = v39;
      }

      if (v37)
      {
        goto LABEL_9;
      }

      v41 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v41[6] + v36) = v28;
      *(v41[7] + 8 * v36) = v29;
      v42 = v41[2];
      v24 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v24)
      {
        goto LABEL_26;
      }

      ++v27;
      v41[2] = v43;
      v26 += 2;
      if (v44 == v27)
      {
      }
    }

    goto LABEL_27;
  }
}

uint64_t sub_1E591C978(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E6932930](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1E592CD80(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1E591CA10(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E591CB94();
  result = MEMORY[0x1E6932930](v2, &type metadata for WorkoutPlanModalitySelection, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      sub_1E592D2F4(&v10, v9, v8, v7, v6);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_1E591CAE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E58B1CF0();
  result = MEMORY[0x1E6932930](v2, &type metadata for WorkoutPlanItemContext, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v6 = *v5;
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);
      sub_1E58B413C(v8, v7);
      sub_1E592D880(v9, v8, v7, v6);
      sub_1E591CB8C(v9[0], v9[1]);
      v5 += 24;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_1E591CB94()
{
  result = qword_1ECFFD7E0;
  if (!qword_1ECFFD7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD7E0);
  }

  return result;
}

unint64_t sub_1E591CBE8()
{
  result = qword_1ECFFD7E8;
  if (!qword_1ECFFD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD7E8);
  }

  return result;
}

uint64_t sub_1E591CC68@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD7F8, &unk_1E5A35EE0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - v6;
  sub_1E5A2B8A4();
  sub_1E5A2B894();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD5C8, &unk_1E5A3DC60);
  v8 = swift_allocObject();
  v37 = xmmword_1E5A2C930;
  *(v8 + 16) = xmmword_1E5A2C930;
  if (qword_1ECFFB4D8 != -1)
  {
    swift_once();
  }

  *(v8 + 32) = sub_1E5A2B744();
  *(v8 + 40) = v9;
  if (qword_1ECFFB4E0 != -1)
  {
    swift_once();
  }

  *(v8 + 48) = sub_1E5A2B744();
  *(v8 + 56) = v10;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v11 = *(sub_1E5A2ABB4() + 20);
  v12 = *MEMORY[0x1E697F468];
  v13 = sub_1E5A2A9B4();
  (*(*(v13 - 8) + 104))(&v7[v11], v12, v13);
  sub_1E5A2AAA4();
  *v7 = v14;
  *(v7 + 1) = v15;
  *(v7 + 2) = v16;
  *(v7 + 3) = v17;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E5A303B0;
  if (qword_1ECFFB4B8 != -1)
  {
    swift_once();
  }

  *(v18 + 32) = sub_1E5A2B744();
  *(v18 + 40) = v19;
  if (qword_1ECFFB4B0 != -1)
  {
    swift_once();
  }

  *(v18 + 48) = sub_1E5A2B744();
  *(v18 + 56) = v20;
  if (qword_1ECFFB490 != -1)
  {
    swift_once();
  }

  *(v18 + 64) = sub_1E5A2B744();
  *(v18 + 72) = v21;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD800, &qword_1E5A35EF0);
  v23 = &v7[*(v22 + 52)];
  v24 = v42;
  *v23 = v41;
  *(v23 + 1) = v24;
  *(v23 + 4) = v43;
  *&v7[*(v22 + 56)] = 256;
  sub_1E5A2A5F4();
  sub_1E5A2B7E4();
  sub_1E5A2A5B4();
  v25 = &v7[*(v2 + 36)];
  v26 = v45;
  *v25 = v44;
  *(v25 + 1) = v26;
  *(v25 + 2) = v46;
  sub_1E5A2B894();
  sub_1E5A2B8A4();
  v27 = swift_allocObject();
  *(v27 + 16) = v37;
  if (qword_1ECFFB4E8 != -1)
  {
    swift_once();
  }

  sub_1E5A2B434();
  *(v27 + 32) = sub_1E5A2B744();
  *(v27 + 40) = v28;
  sub_1E5A2B434();
  *(v27 + 48) = sub_1E5A2B744();
  *(v27 + 56) = v29;
  sub_1E5A2B754();
  sub_1E5A2A614();
  v30 = v38;
  sub_1E591D234(v7, v4);
  v31 = v47;
  *a1 = v30;
  v32 = v39;
  *(a1 + 24) = v40;
  *(a1 + 8) = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD808, &qword_1E5A35EF8);
  sub_1E591D234(v4, a1 + *(v33 + 48));
  v34 = a1 + *(v33 + 64);
  *v34 = v31;
  v35 = v48;
  *(v34 + 24) = v49;
  *(v34 + 8) = v35;

  sub_1E591D2A4(v7);

  sub_1E591D2A4(v4);
}

uint64_t sub_1E591D1F8@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1E5A2B7E4();
  *a2 = result;
  a2[1] = v4;
  a2[2] = sub_1E591CC68;
  a2[3] = 0;
  return result;
}

uint64_t sub_1E591D234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD7F8, &unk_1E5A35EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E591D2A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD7F8, &unk_1E5A35EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E591D30C()
{
  result = qword_1ECFFD810;
  if (!qword_1ECFFD810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD818, &unk_1E5A35F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD810);
  }

  return result;
}

uint64_t static WorkoutPlanModality.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t WorkoutPlanModality.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t WorkoutPlanModality.imageName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t WorkoutPlanModality.name.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t WorkoutPlanModality.init(activityTypes:identifier:imageName:kind:name:supportedFilterKinds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = *a6;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = v10;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  return result;
}

uint64_t sub_1E591D470()
{
  v1 = *v0;
  v2 = 0x7974697669746361;
  v3 = 1684957547;
  v4 = 1701667182;
  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x696669746E656469;
  if (v1 != 1)
  {
    v5 = 0x6D614E6567616D69;
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

uint64_t sub_1E591D534@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E591E714(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E591D55C(uint64_t a1)
{
  v2 = sub_1E591D9EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E591D598(uint64_t a1)
{
  v2 = sub_1E591D9EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E591D5D4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t sub_1E591D604(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_1E5A2C114() ^ 1) & 1;
  }
}

uint64_t sub_1E591D64C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    return 1;
  }

  else
  {
    return (sub_1E5A2C114() ^ 1) & 1;
  }
}

uint64_t sub_1E591D6A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t sub_1E591D6C4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t WorkoutPlanModality.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD820, &qword_1E5A35F10);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v21 = v1[2];
  v22 = v8;
  v19 = v1[4];
  v20 = v10;
  v18 = *(v1 + 40);
  v11 = v1[7];
  v16 = v1[6];
  v17 = v11;
  v15 = v1[8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E591D9EC();

  sub_1E5A2C224();
  v24 = v9;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD830, &qword_1E5A35F18);
  sub_1E591DF7C(&qword_1ECFFD838, MEMORY[0x1E69E6818], MEMORY[0x1E69E6300]);
  sub_1E5A2C0B4();
  if (v2)
  {
  }

  else
  {
    v12 = v18;

    LOBYTE(v24) = 1;
    sub_1E5A2C064();
    LOBYTE(v24) = 2;
    sub_1E5A2C064();
    LOBYTE(v24) = v12;
    v23 = 3;
    sub_1E591DA40();
    sub_1E5A2C0B4();
    LOBYTE(v24) = 4;
    sub_1E5A2C064();
    v24 = v15;
    v23 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD848, &qword_1E5A35F20);
    sub_1E591E03C(&qword_1ECFFD850, sub_1E591DA94, MEMORY[0x1E69E64F0]);
    sub_1E5A2C0B4();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1E591D9EC()
{
  result = qword_1ECFFD828;
  if (!qword_1ECFFD828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD828);
  }

  return result;
}

unint64_t sub_1E591DA40()
{
  result = qword_1ECFFD840;
  if (!qword_1ECFFD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD840);
  }

  return result;
}

unint64_t sub_1E591DA94()
{
  result = qword_1ECFFD858;
  if (!qword_1ECFFD858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD858);
  }

  return result;
}

uint64_t WorkoutPlanModality.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD860, &qword_1E5A35F28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E591D9EC();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD830, &qword_1E5A35F18);
  LOBYTE(v30) = 0;
  sub_1E591DF7C(&qword_1ECFFD868, MEMORY[0x1E69E6840], MEMORY[0x1E69E6330]);
  sub_1E5A2BFE4();
  v9 = v35[0];
  LOBYTE(v35[0]) = 1;
  v27 = sub_1E5A2BF94();
  v29 = v10;
  LOBYTE(v35[0]) = 2;
  v11 = sub_1E5A2BF94();
  v28 = v12;
  v25 = v11;
  LOBYTE(v30) = 3;
  sub_1E591DFE8();
  sub_1E5A2BFE4();
  v24 = LOBYTE(v35[0]);
  LOBYTE(v35[0]) = 4;
  v23 = sub_1E5A2BF94();
  v26 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD848, &qword_1E5A35F20);
  v40[0] = 5;
  sub_1E591E03C(&qword_1ECFFD878, sub_1E591E0B4, MEMORY[0x1E69E6510]);
  sub_1E5A2BFE4();
  (*(v6 + 8))(v8, v5);
  v14 = v41;
  v15 = v27;
  *&v30 = v9;
  *(&v30 + 1) = v27;
  v17 = v28;
  v16 = v29;
  *&v31 = v29;
  *(&v31 + 1) = v25;
  *&v32 = v28;
  BYTE8(v32) = v24;
  v18 = v26;
  *&v33 = v23;
  *(&v33 + 1) = v26;
  v34 = v41;
  *(a2 + 64) = v41;
  v19 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v19;
  v20 = v31;
  *a2 = v30;
  *(a2 + 16) = v20;
  sub_1E591B3E0(&v30, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35[0] = v9;
  v35[1] = v15;
  v35[2] = v16;
  v35[3] = v25;
  v35[4] = v17;
  v36 = v24;
  v37 = v23;
  v38 = v18;
  v39 = v14;
  return sub_1E58C3164(v35);
}

uint64_t sub_1E591DF7C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD830, &qword_1E5A35F18);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E591DFE8()
{
  result = qword_1ECFFD870;
  if (!qword_1ECFFD870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD870);
  }

  return result;
}

uint64_t sub_1E591E03C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD848, &qword_1E5A35F20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E591E0B4()
{
  result = qword_1ECFFD880;
  if (!qword_1ECFFD880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD880);
  }

  return result;
}

uint64_t WorkoutPlanModality.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  MEMORY[0x1E6932DE0](*(*v1 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1E6932DE0](v5);
      --v3;
    }

    while (v3);
  }

  sub_1E5A2BB74();
  sub_1E5A2BB74();
  WorkoutPlanCatalogModalityKind.rawValue.getter();
  sub_1E5A2BB74();

  sub_1E5A2BB74();

  return sub_1E58BAD7C();
}

uint64_t WorkoutPlanModality.hashValue.getter()
{
  sub_1E5A2C1B4();
  WorkoutPlanModality.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E591E284()
{
  sub_1E5A2C1B4();
  WorkoutPlanModality.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E591E2C8(uint64_t a1)
{
  sub_1E5A2C1B4();
  WorkoutPlanModality.hash(into:)(v2);
  return sub_1E5A2C204();
}

uint64_t _s18FitnessWorkoutPlan0bC8ModalityV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v19 = a1[6];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v17 = a1[7];
  v18 = a2[6];
  v16 = a2[7];
  if ((sub_1E595C8C0() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1E5A2C114() & 1) == 0 || (v3 != v8 || v5 != v9) && (sub_1E5A2C114() & 1) == 0)
  {
    return 0;
  }

  v10 = WorkoutPlanCatalogModalityKind.rawValue.getter();
  v12 = v11;
  if (v10 == WorkoutPlanCatalogModalityKind.rawValue.getter() && v12 == v13)
  {
  }

  else
  {
    v14 = sub_1E5A2C114();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if ((v19 != v18 || v17 != v16) && (sub_1E5A2C114() & 1) == 0)
  {
    return 0;
  }

  return sub_1E58BAD74();
}

unint64_t sub_1E591E4D0()
{
  result = qword_1ECFFD888;
  if (!qword_1ECFFD888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD888);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E591E554(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1E591E59C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E591E610()
{
  result = qword_1ECFFD890;
  if (!qword_1ECFFD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD890);
  }

  return result;
}

unint64_t sub_1E591E668()
{
  result = qword_1ECFFD898;
  if (!qword_1ECFFD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD898);
  }

  return result;
}

unint64_t sub_1E591E6C0()
{
  result = qword_1ECFFD8A0;
  if (!qword_1ECFFD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD8A0);
  }

  return result;
}

uint64_t sub_1E591E714(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xED00007365707954;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6567616D69 && a2 == 0xE900000000000065 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5A466F0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

BOOL sub_1E591E938(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1E591E968(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = 0;
    v5 = result + 32;
    v25 = MEMORY[0x1E69E7CC0];
    while (v4 < v2)
    {
      v6 = (v5 + 72 * v4);
      v7 = v6[3];
      v29 = v6[2];
      v30 = v7;
      v31 = *(v6 + 8);
      v8 = v6[1];
      v27 = *v6;
      v28 = v8;
      if (__OFADD__(v4++, 1))
      {
        goto LABEL_31;
      }

      result = type metadata accessor for WorkoutPlanCreationLocalState(0);
      if (*(a2 + *(result + 112)))
      {
        v32 = *(a2 + *(result + 112));
        sub_1E591B3E0(&v27, v26);

        v10 = WorkoutPlanSchedule.modalityIdentifiers()();

        v11 = 0;
        v12 = 1 << v10[32];
        if (v12 < 64)
        {
          v13 = ~(-1 << v12);
        }

        else
        {
          v13 = -1;
        }

        v14 = v13 & *(v10 + 7);
        v15 = (v12 + 63) >> 6;
        while (v14)
        {
LABEL_17:
          v17 = (*(v10 + 6) + ((v11 << 10) | (16 * __clz(__rbit64(v14)))));
          if (*v17 != *(&v27 + 1) || v17[1] != v28)
          {
            v14 &= v14 - 1;
            result = sub_1E5A2C114();
            if ((result & 1) == 0)
            {
              continue;
            }
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1E58E6CF4(0, *(v25 + 16) + 1, 1, v25);
            v25 = result;
          }

          v20 = *(v25 + 16);
          v19 = *(v25 + 24);
          if (v20 >= v19 >> 1)
          {
            result = sub_1E58E6CF4((v19 > 1), v20 + 1, 1, v25);
            v25 = result;
          }

          *(v25 + 16) = v20 + 1;
          v21 = v25 + 72 * v20;
          *(v21 + 32) = v27;
          v22 = v28;
          v23 = v29;
          v24 = v30;
          *(v21 + 96) = v31;
          *(v21 + 64) = v23;
          *(v21 + 80) = v24;
          *(v21 + 48) = v22;
          goto LABEL_4;
        }

        while (1)
        {
          v16 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v16 >= v15)
          {

            result = sub_1E58C3164(&v27);
            goto LABEL_4;
          }

          v14 = *&v10[8 * v16 + 56];
          ++v11;
          if (v14)
          {
            v11 = v16;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:
      if (v4 == v2)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1E591EBAC(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = sub_1E58BAAC0(v12, v13, v14))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(a1 + 48) + 24 * (v10 | (v9 << 6));
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    sub_1E5932970(*v11, v13, v14);
    v15 = sub_1E593052C(v12, v13, v14);
    sub_1E5932988(v15, v16, v17);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E591ECCC(uint64_t a1, uint64_t a2)
{
  sub_1E5A2C1B4();
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v3 = 0;
        goto LABEL_17;
      case 1:
        v3 = 1;
        goto LABEL_17;
      case 2:
        v3 = 3;
LABEL_17:
        MEMORY[0x1E6932DE0](v3);
        return sub_1E5A2C204();
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      goto LABEL_17;
    }

    if (a2 == 5)
    {
      v3 = 6;
      goto LABEL_17;
    }

    if (a2 == 6)
    {
      v3 = 7;
      goto LABEL_17;
    }
  }

  MEMORY[0x1E6932DE0](2);
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

uint64_t sub_1E591EDD4(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 <= 2)
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        return MEMORY[0x1E6932DE0](v3);
      case 1:
        v3 = 1;
        return MEMORY[0x1E6932DE0](v3);
      case 2:
        v3 = 3;
        return MEMORY[0x1E6932DE0](v3);
    }
  }

  else
  {
    if (v2 <= 4)
    {
      if (v2 == 3)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      return MEMORY[0x1E6932DE0](v3);
    }

    if (v2 == 5)
    {
      v3 = 6;
      return MEMORY[0x1E6932DE0](v3);
    }

    if (v2 == 6)
    {
      v3 = 7;
      return MEMORY[0x1E6932DE0](v3);
    }
  }

  MEMORY[0x1E6932DE0](2);

  return sub_1E5A2BB74();
}

uint64_t sub_1E591EEBC(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1E5A2C1B4();
  if (v2 <= 2)
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        goto LABEL_17;
      case 1:
        v3 = 1;
        goto LABEL_17;
      case 2:
        v3 = 3;
LABEL_17:
        MEMORY[0x1E6932DE0](v3);
        return sub_1E5A2C204();
    }
  }

  else
  {
    if (v2 <= 4)
    {
      if (v2 == 3)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      goto LABEL_17;
    }

    if (v2 == 5)
    {
      v3 = 6;
      goto LABEL_17;
    }

    if (v2 == 6)
    {
      v3 = 7;
      goto LABEL_17;
    }
  }

  MEMORY[0x1E6932DE0](2);
  sub_1E5A2BB74();
  return sub_1E5A2C204();
}

__n128 WorkoutPlanCreationFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

void WorkoutPlanCreationFeature.reduce(localState:sharedState:sideEffects:action:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v400 = a3;
  v396 = a2;
  v401 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890);
  v398 = *(v6 - 8);
  v399 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v394 = &v372 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v397 = &v372 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v372 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v372 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v372 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v372 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = (&v372 - v23);
  v395 = 0;
  v25 = type metadata accessor for WorkoutPlanCreationAction(0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v372 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v4[5];
  v430 = v4[4];
  v431 = v28;
  v29 = v4[7];
  v432 = v4[6];
  v433 = v29;
  v30 = v4[1];
  v426 = *v4;
  v427 = v30;
  v31 = v4[3];
  v428 = v4[2];
  v429 = v31;
  sub_1E5932C30(a4, v27, type metadata accessor for WorkoutPlanCreationAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1E5932F40(v27, type metadata accessor for WorkoutPlanCreationAction);
      v401[*(type metadata accessor for WorkoutPlanCreationLocalState(0) + 96)] = 1;
      return;
    case 2u:
      v91 = *v27;
      v90 = *(v27 + 1);
      v422 = v430;
      v423 = v431;
      v424 = v432;
      v425 = v433;
      v418 = v426;
      v419 = v427;
      v420 = v428;
      v421 = v429;
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
      v93 = v92[16];
      v94 = v92[20];
      v95 = v397;
      v96 = (v397 + v92[24]);
      *&v402 = v91;
      *(&v402 + 1) = v90;
      sub_1E59307FC(&v426, &v413);
      sub_1E59306E4();

      sub_1E5A2BE14();
      sub_1E5A2BC94();
      v97 = *MEMORY[0x1E6999B60];
      v98 = sub_1E5A2B924();
      (*(*(v98 - 8) + 104))(v95 + v93, v97, v98);
      v99 = *MEMORY[0x1E6999B40];
      v100 = sub_1E5A2B914();
      (*(*(v100 - 8) + 104))(v95 + v94, v99, v100);
      v101 = swift_allocObject();
      *(v101 + 16) = v91;
      *(v101 + 24) = v90;
      v102 = v423;
      *(v101 + 96) = v422;
      *(v101 + 112) = v102;
      v103 = v425;
      *(v101 + 128) = v424;
      *(v101 + 144) = v103;
      v104 = v419;
      *(v101 + 32) = v418;
      *(v101 + 48) = v104;
      v105 = v421;
      *(v101 + 64) = v420;
      *(v101 + 80) = v105;
      *v96 = &unk_1E5A36280;
      v96[1] = v101;
      v107 = v398;
      v106 = v399;
      (*(v398 + 104))(v95, *MEMORY[0x1E6999AD8], v399);
      v73 = v400;
      v74 = *v400;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_1E58E7254(0, v74[2] + 1, 1, v74);
      }

      v109 = v74[2];
      v108 = v74[3];
      if (v109 >= v108 >> 1)
      {
        v74 = sub_1E58E7254((v108 > 1), v109 + 1, 1, v74);
      }

      v74[2] = v109 + 1;
      (*(v107 + 32))(v74 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v109, v397, v106);
      goto LABEL_278;
    case 3u:
      v145 = *v27;
      v146 = *(v27 + 1);
      v422 = v430;
      v423 = v431;
      v424 = v432;
      v425 = v433;
      v418 = v426;
      v419 = v427;
      v420 = v428;
      v421 = v429;
      sub_1E5923B3C(v401, v145, v146, v400);
      goto LABEL_41;
    case 4u:
      v53 = *(v27 + 3);
      v54 = *(v27 + 5);
      v415 = *(v27 + 4);
      v416 = v54;
      v55 = *(v27 + 3);
      v413 = *(v27 + 2);
      v414 = v55;
      v422 = v430;
      v423 = v431;
      v424 = v432;
      v425 = v433;
      v418 = v426;
      v419 = v427;
      v420 = v428;
      v421 = v429;
      v56 = *(v27 + 5);
      v404 = v415;
      v405 = v56;
      v57 = *v27;
      v58 = *(v27 + 1);
      v59 = *(v27 + 2);
      v60 = *(v27 + 3);
      v417 = *(v27 + 12);
      v407 = v57;
      v408 = v58;
      v409 = v59;
      v410 = v60;
      v406 = *(v27 + 12);
      v402 = v413;
      v403 = v53;
      sub_1E59240F0(v401, &v407, &v402);
      sub_1E58C3164(&v413);

      goto LABEL_41;
    case 5u:
      v47 = *v27;
      v48 = *(type metadata accessor for WorkoutPlanCreationLocalState(0) + 32);
      goto LABEL_37;
    case 6u:
      v47 = *v27;
      v48 = *(type metadata accessor for WorkoutPlanCreationLocalState(0) + 36);
      goto LABEL_37;
    case 7u:
      v49 = *v27;
      if (v27[1] == 3)
      {
        v50 = 0;
        v51 = 0;
        v52 = v401;
      }

      else
      {
        LOBYTE(v418) = v27[1];
        v171 = type metadata accessor for WorkoutPlanCreationLocalState(0);
        v52 = v401;
        v172 = *(*&v401[*(v171 + 76)] + 16);
        v173 = type metadata accessor for WorkoutPlanCreationState(0);
        v50 = WorkoutPlanCreationError.localizedError(selectModalitiesCount:locale:)(v172, v396 + *(v173 + 24));
        v51 = v174;
      }

      v175 = type metadata accessor for WorkoutPlanCreationLocalState(0);
      v176 = &v52[*(v175 + 44)];

      *v176 = v50;
      v176[1] = v51;
      v52[*(v175 + 40)] = v49;
      return;
    case 8u:
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB900, &qword_1E5A36290);
      v130 = &v27[*(v129 + 64)];
      v131 = *v130;
      v132 = v130[8];
      v133 = v27[*(v129 + 48)];
      sub_1E58F0054(v27, v24, &qword_1ECFFB790, &qword_1E5A2D620);
      v422 = v430;
      v423 = v431;
      v424 = v432;
      v425 = v433;
      v418 = v426;
      v419 = v427;
      v420 = v428;
      v421 = v429;
      v134 = sub_1E59222F4(v401, v24, v133, v131, v132);
      sub_1E5922AB0(v134);
      sub_1E58C3420(v24);
      return;
    case 9u:
      v47 = *v27;
      v48 = *(type metadata accessor for WorkoutPlanCreationLocalState(0) + 80);
      goto LABEL_37;
    case 0xAu:
      v77 = *v27;
      *&v401[*(type metadata accessor for WorkoutPlanCreationLocalState(0) + 84)] = v77;
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
      v79 = v78[16];
      v80 = v78[20];
      v81 = &v15[v78[24]];
      v418 = xmmword_1E5A36200;
      sub_1E59306E4();
      sub_1E5A2BE14();
      sub_1E5A2BC94();
      v82 = *MEMORY[0x1E6999B60];
      v83 = sub_1E5A2B924();
      (*(*(v83 - 8) + 104))(&v15[v79], v82, v83);
      v84 = *MEMORY[0x1E6999B40];
      v85 = sub_1E5A2B914();
      (*(*(v85 - 8) + 104))(&v15[v80], v84, v85);
      *v81 = &unk_1E5A36288;
      *(v81 + 1) = 0;
      v87 = v398;
      v86 = v399;
      (*(v398 + 104))(v15, *MEMORY[0x1E6999AD8], v399);
      v73 = v400;
      v74 = *v400;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_1E58E7254(0, v74[2] + 1, 1, v74);
      }

      v89 = v74[2];
      v88 = v74[3];
      if (v89 >= v88 >> 1)
      {
        v74 = sub_1E58E7254((v88 > 1), v89 + 1, 1, v74);
      }

      v74[2] = v89 + 1;
      (*(v87 + 32))(v74 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v89, v15, v86);
      goto LABEL_278;
    case 0xBu:
      v39 = *v27;
      v38 = *(v27 + 1);
      v41 = *(v27 + 2);
      v40 = *(v27 + 3);
      v42 = *(v27 + 6);
      v43 = *(v27 + 72);
      v44 = *(v27 + 104);
      v415 = *(v27 + 88);
      v416 = v44;
      v417 = *(v27 + 15);
      v413 = *(v27 + 56);
      v414 = v43;
      v422 = v430;
      v423 = v431;
      v424 = v432;
      v425 = v433;
      v418 = v426;
      v419 = v427;
      v420 = v428;
      v421 = v429;
      v407 = v39;
      v408 = v38;
      v409 = v41;
      v410 = v40;
      v400 = *(v27 + 2);
      v411 = v400;
      v412 = v42;
      v45 = *(v27 + 72);
      v46 = *(v27 + 104);
      v404 = *(v27 + 88);
      v405 = v46;
      v406 = *(v27 + 15);
      v402 = *(v27 + 56);
      v403 = v45;
      sub_1E5924278(v401, &v407, &v402);
      sub_1E58C3164(&v413);

      return;
    case 0xCu:
      v110 = *(v27 + 4);
      v421 = *(v27 + 3);
      v422 = v110;
      v111 = *(v27 + 2);
      v419 = *(v27 + 1);
      v420 = v111;
      v418 = *v27;
      v112 = v110;
      v113 = type metadata accessor for WorkoutPlanCreationLocalState(0);
      v114 = v401;
      v115 = &v401[v113[6]];
      v116 = v115[3];
      v415 = v115[2];
      v416 = v116;
      v117 = v115[1];
      v413 = *v115;
      v414 = v117;
      sub_1E5931DC4(&v418, &v402);

      sub_1E58F011C(&v413);
      v118 = v419;
      *v115 = v418;
      v115[1] = v118;
      v119 = v421;
      v115[2] = v420;
      v115[3] = v119;
      v120 = v113[18];

      *&v114[v120] = v112;
      v121 = v113[27];

      sub_1E58C3068(&v418);
      *&v114[v121] = *(&v112 + 1);
      v114[v113[13]] = 3;
      return;
    case 0xDu:
      v135 = *v27;
      v136 = *(v27 + 1);
      v137 = *(v27 + 2);
      v413 = *(v27 + 1);
      v414 = v137;
      v138 = *(v27 + 4);
      v415 = *(v27 + 3);
      v416 = v138;
      v139 = *(type metadata accessor for WorkoutPlanCreationLocalState(0) + 56);

      sub_1E58BD154(&v413, &v418);
      v140 = v401;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v418 = *&v140[v139];
      sub_1E592CBF8(&v413, v135, v136, isUniquelyReferenced_nonNull_native);

      *&v140[v139] = v418;
      v422 = v430;
      v423 = v431;
      v424 = v432;
      v425 = v433;
      v418 = v426;
      v419 = v427;
      v420 = v428;
      v421 = v429;
      v402 = v413;
      v403 = v414;
      v404 = v415;
      v405 = v416;
      sub_1E5928D3C(v140, &v402);
      v142 = *(type metadata accessor for EditItem(0) + 32);
      if (*&v140[v142])
      {
        *&v402 = *&v140[v142];

        sub_1E58BD154(&v413, &v418);

        v144 = sub_1E5931788(v143, &v413);
        sub_1E58BD18C(&v413);
        sub_1E591EBAC(v144);

        sub_1E58BD18C(&v413);
        *&v140[v142] = v402;
      }

      else
      {

        sub_1E58BD18C(&v413);
      }

      return;
    case 0xEu:
      v148 = *v27;
      v150 = *(v27 + 1);
      v149 = *(v27 + 2);
      v151 = *(v27 + 3);
      v152 = v27[32];
      v153 = *(v27 + 5);
      v154 = *(v27 + 6);
      v385 = *(v27 + 7);
      v386 = *(v27 + 8);
      v387 = v149;
      v155 = *(v27 + 9);
      v12 = *(v27 + 10);
      v396 = v154;
      v397 = v155;
      v156 = *(v27 + 12);
      v383 = *(v27 + 11);
      v384 = v156;
      v157 = *(v27 + 13);
      v392 = *(v27 + 14);
      v393 = v153;
      v158 = *(v27 + 16);
      v379 = *(v27 + 15);
      v380 = v158;
      v159 = *(v27 + 18);
      v381 = *(v27 + 17);
      v382 = v159;
      v160 = *(v27 + 20);
      v390 = *(v27 + 19);
      v391 = v157;
      v161 = *(v27 + 22);
      v376 = *(v27 + 21);
      v377 = v161;
      v378 = *(v27 + 46);
      v72 = v401;
      if (v148 != 7)
      {
        v72[*(type metadata accessor for EditItem(0) + 40)] = v148;
      }

      v388 = v160;
      v389 = v12;
      if (v387)
      {
        v162 = type metadata accessor for EditItem(0);
        v163 = v72;
        v164 = &v72[v162[9]];
        v165 = *(v164 + 1);
        if (v165 && (v150 == *v164 && v387 == v165 || (sub_1E5A2C114() & 1) != 0))
        {
          v375 = 0;
          v72 = v163;
        }

        else
        {
          v177 = v162[8];
          v374 = v150;
          v178 = v387;

          *&v163[v177] = MEMORY[0x1E69E7CD0];
          v179 = &v163[v162[7]];
          *v179 = 0;
          v375 = 1;
          v179[8] = 1;
          *v164 = v374;
          *(v164 + 1) = v178;
          v72 = v163;
          v160 = v388;
          v12 = v389;
        }
      }

      else
      {
        v375 = 0;
      }

      if ((v152 & 1) == 0)
      {
        v180 = &v72[*(type metadata accessor for EditItem(0) + 28)];
        v181 = (v151 == *v180) & ~v180[8];
        if (v181)
        {
          v182 = 0;
        }

        else
        {
          v182 = v151;
        }

        *v180 = v182;
        v180[8] = v181 & 1;
      }

      if (!v396)
      {
        goto LABEL_126;
      }

      v374 = *(type metadata accessor for EditItem(0) + 32);
      v183 = *&v72[v374];
      if (v183)
      {
        v184 = *&v72[v374];
      }

      else
      {
        v184 = MEMORY[0x1E69E7CD0];
      }

      *&v413 = v184;
      v185 = *(v184 + 16);
      v373 = v183;
      if (v185)
      {
        sub_1E5A2C1B4();
        MEMORY[0x1E6932DE0](0);
        swift_bridgeObjectRetain_n();
        sub_1E5A2BB74();
        v186 = sub_1E5A2C204();
        v187 = v184 + 56;
        v188 = -1 << *(v184 + 32);
        v189 = v186 & ~v188;
        if ((*(v184 + 56 + ((v189 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v189))
        {
          v190 = ~v188;
          v191 = *(v184 + 48);
          while (1)
          {
            v192 = v191 + 24 * v189;
            if (!*(v192 + 16))
            {
              v193 = *v192 == v393 && *(v192 + 8) == v396;
              if (v193 || (sub_1E5A2C114() & 1) != 0)
              {
                break;
              }
            }

            v189 = (v189 + 1) & v190;
            if (((*(v187 + ((v189 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v189) & 1) == 0)
            {
              goto LABEL_96;
            }
          }

          sub_1E5A2C1B4();
          MEMORY[0x1E6932DE0](0);
          sub_1E5A2BB74();
          v194 = sub_1E5A2C204();
          v195 = -1 << *(v184 + 32);
          v196 = v194 & ~v195;
          if (((*(v187 + ((v196 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v196) & 1) == 0)
          {
LABEL_284:

            *&v72[v374] = v184;
            if (!v12)
            {
              goto LABEL_182;
            }

            goto LABEL_127;
          }

          v197 = ~v195;
          v198 = *(v184 + 48);
          while (1)
          {
            v199 = v198 + 24 * v196;
            if (!*(v199 + 16))
            {
              v200 = *v199 == v393 && *(v199 + 8) == v396;
              if (v200 || (sub_1E5A2C114() & 1) != 0)
              {
                break;
              }
            }

            v196 = (v196 + 1) & v197;
            if (((*(v187 + ((v196 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v196) & 1) == 0)
            {
              goto LABEL_284;
            }
          }

          v201 = swift_isUniquelyReferenced_nonNull_native();
          *&v418 = v184;
          if (!v201)
          {
            sub_1E592EF18();
            v184 = v418;
          }

          v202 = *(v184 + 48) + 24 * v196;
          v203 = *v202;
          v204 = *(v202 + 8);
          v205 = *(v202 + 16);
          sub_1E5930BA0(v196);
          sub_1E58BAAC0(v203, v204, v205);
LABEL_125:

          *&v72[v374] = v418;
LABEL_126:
          if (!v12)
          {
            goto LABEL_182;
          }

LABEL_127:
          v374 = *(type metadata accessor for EditItem(0) + 32);
          v228 = *&v72[v374];
          if (v228)
          {
            v229 = *&v72[v374];
          }

          else
          {
            v229 = MEMORY[0x1E69E7CD0];
          }

          *&v413 = v229;
          v230 = *(v229 + 16);
          v373 = v228;
          if (v230)
          {
            sub_1E5A2C1B4();
            MEMORY[0x1E6932DE0](1);
            swift_bridgeObjectRetain_n();
            sub_1E5A2BB74();
            v231 = sub_1E5A2C204();
            v232 = v229 + 56;
            v233 = -1 << *(v229 + 32);
            v234 = v231 & ~v233;
            if ((*(v229 + 56 + ((v234 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v234))
            {
              v235 = ~v233;
              v236 = *(v229 + 48);
              while (1)
              {
                v237 = v236 + 24 * v234;
                if (*(v237 + 16) == 1)
                {
                  v238 = *v237 == v397 && *(v237 + 8) == v12;
                  if (v238 || (sub_1E5A2C114() & 1) != 0)
                  {
                    break;
                  }
                }

                v234 = (v234 + 1) & v235;
                if (((*(v232 + ((v234 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v234) & 1) == 0)
                {
                  goto LABEL_153;
                }
              }

              sub_1E5A2C1B4();
              MEMORY[0x1E6932DE0](1);
              sub_1E5A2BB74();
              v239 = sub_1E5A2C204();
              v240 = -1 << *(v229 + 32);
              v241 = v239 & ~v240;
              if (((*(v232 + ((v241 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v241) & 1) == 0)
              {
LABEL_281:

                *&v72[v374] = v229;
                goto LABEL_182;
              }

              v242 = ~v240;
              v243 = *(v229 + 48);
              while (1)
              {
                v244 = v243 + 24 * v241;
                if (*(v244 + 16) == 1)
                {
                  v245 = *v244 == v397 && *(v244 + 8) == v12;
                  if (v245 || (sub_1E5A2C114() & 1) != 0)
                  {
                    break;
                  }
                }

                v241 = (v241 + 1) & v242;
                if (((*(v232 + ((v241 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v241) & 1) == 0)
                {
                  goto LABEL_281;
                }
              }

              v246 = swift_isUniquelyReferenced_nonNull_native();
              *&v418 = v229;
              if (!v246)
              {
                sub_1E592EF18();
                v229 = v418;
              }

              v247 = *(v229 + 48) + 24 * v241;
              v248 = *v247;
              v249 = *(v247 + 8);
              v250 = *(v247 + 16);
              sub_1E5930BA0(v241);
              sub_1E58BAAC0(v248, v249, v250);
              goto LABEL_181;
            }
          }

          else
          {
            swift_bridgeObjectRetain_n();
          }

LABEL_153:

          v74 = (v229 + 56);
          v251 = sub_1E5A2BDE4();
          v252 = 1 << *(v229 + 32);
          if (v251 != v252)
          {
            v73 = 24;
            v71 = -2;
            while (1)
            {
              if ((v251 & 0x8000000000000000) != 0 || v251 >= v252)
              {
                goto LABEL_291;
              }

              v253 = v251 >> 6;
              v254 = v74[v251 >> 6];
              if (((v254 >> v251) & 1) == 0)
              {
                goto LABEL_292;
              }

              v255 = *(v229 + 36);
              if (*(*(v229 + 48) + 24 * v251 + 16) == 1)
              {
                break;
              }

              v256 = v254 & (-2 << (v251 & 0x3F));
              if (v256)
              {
                v252 = __clz(__rbit64(v256)) | v251 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v72 = (v253 << 6);
                v257 = v253 + 1;
                v258 = (v229 + 64 + 8 * v253);
                while (v257 < (v252 + 63) >> 6)
                {
                  v260 = *v258++;
                  v259 = v260;
                  v72 += 64;
                  ++v257;
                  if (v260)
                  {
                    sub_1E5901D04(v251, v255, 0);
                    v252 = &v72[__clz(__rbit64(v259))];
                    goto LABEL_167;
                  }
                }

                sub_1E5901D04(v251, v255, 0);
LABEL_167:
                v12 = v389;
              }

              v251 = v252;
              v252 = 1 << *(v229 + 32);
              if (v251 == v252)
              {
                goto LABEL_169;
              }
            }

            v261 = sub_1E5930DDC(v251, v255);
            sub_1E58BAAC0(v261, v262, v263);
          }

LABEL_169:
          v264 = v413;
          sub_1E5A2C1B4();
          MEMORY[0x1E6932DE0](1);

          sub_1E5A2BB74();
          v265 = sub_1E5A2C204();
          v266 = -1 << *(v264 + 32);
          v267 = v265 & ~v266;
          if ((*(v264 + 56 + ((v267 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v267))
          {
            v268 = ~v266;
            v269 = *(v264 + 48);
            v72 = v401;
            v160 = v388;
            while (1)
            {
              v270 = v269 + 24 * v267;
              if (*(v270 + 16) == 1)
              {
                v271 = *v270 == v397 && *(v270 + 8) == v12;
                if (v271 || (sub_1E5A2C114() & 1) != 0)
                {
                  break;
                }
              }

              v267 = (v267 + 1) & v268;
              if (((*(v264 + 56 + ((v267 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v267) & 1) == 0)
              {
                goto LABEL_180;
              }
            }

            *&v72[v374] = v264;
            goto LABEL_182;
          }

          v72 = v401;
          v160 = v388;
LABEL_180:
          v272 = swift_isUniquelyReferenced_nonNull_native();
          *&v418 = v264;
          sub_1E592E4B8(v397, v12, 1u, v267, v272);
LABEL_181:

          *&v72[v374] = v418;
          goto LABEL_182;
        }
      }

      else
      {
        swift_bridgeObjectRetain_n();
      }

LABEL_96:

      v74 = (v184 + 56);
      v206 = sub_1E5A2BDE4();
      v207 = 1 << *(v184 + 32);
      if (v206 == v207)
      {
        goto LABEL_112;
      }

      v73 = 24;
      v71 = -2;
      while (1)
      {
        if ((v206 & 0x8000000000000000) != 0 || v206 >= v207)
        {
          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          __break(1u);
LABEL_293:
          __break(1u);
LABEL_294:
          __break(1u);
LABEL_295:
          __break(1u);
LABEL_296:
          __break(1u);
LABEL_297:
          v74 = sub_1E58E7254(0, v74[2] + 1, 1, v74);
LABEL_16:
          v76 = v74[2];
          v75 = v74[3];
          if (v76 >= v75 >> 1)
          {
            v74 = sub_1E58E7254((v75 > 1), v76 + 1, 1, v74);
          }

          v74[2] = v76 + 1;
          (*(v72 + 4))(v74 + ((v72[80] + 32) & ~v72[80]) + *(v72 + 9) * v76, v12, v71);
LABEL_278:
          *v73 = v74;
          return;
        }

        v208 = v206 >> 6;
        v209 = v74[v206 >> 6];
        if (((v209 >> v206) & 1) == 0)
        {
          goto LABEL_290;
        }

        v210 = *(v184 + 36);
        if (!*(*(v184 + 48) + 24 * v206 + 16))
        {
          break;
        }

        v211 = v209 & (-2 << (v206 & 0x3F));
        if (v211)
        {
          v207 = __clz(__rbit64(v211)) | v206 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v212 = v208 << 6;
          v213 = v208 + 1;
          v214 = (v184 + 64 + 8 * v208);
          while (v213 < (v207 + 63) >> 6)
          {
            v215 = *v214++;
            v72 = v215;
            v212 += 64;
            ++v213;
            if (v215)
            {
              sub_1E5901D04(v206, v210, 0);
              v207 = __clz(__rbit64(v72)) + v212;
              goto LABEL_110;
            }
          }

          sub_1E5901D04(v206, v210, 0);
LABEL_110:
          v12 = v389;
        }

        v206 = v207;
        v207 = 1 << *(v184 + 32);
        if (v206 == v207)
        {
          goto LABEL_112;
        }
      }

      v216 = sub_1E5930DDC(v206, v210);
      sub_1E58BAAC0(v216, v217, v218);
LABEL_112:
      v219 = v413;
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](0);

      sub_1E5A2BB74();
      v220 = sub_1E5A2C204();
      v221 = -1 << *(v219 + 32);
      v222 = v220 & ~v221;
      if (((*(v219 + 56 + ((v222 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v222) & 1) == 0)
      {
        v72 = v401;
        v160 = v388;
LABEL_124:
        v227 = swift_isUniquelyReferenced_nonNull_native();
        *&v418 = v219;
        sub_1E592E4B8(v393, v396, 0, v222, v227);
        goto LABEL_125;
      }

      v223 = ~v221;
      v224 = *(v219 + 48);
      v72 = v401;
      v160 = v388;
      while (1)
      {
        v225 = v224 + 24 * v222;
        if (!*(v225 + 16))
        {
          v226 = *v225 == v393 && *(v225 + 8) == v396;
          if (v226 || (sub_1E5A2C114() & 1) != 0)
          {
            break;
          }
        }

        v222 = (v222 + 1) & v223;
        if (((*(v219 + 56 + ((v222 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v222) & 1) == 0)
        {
          goto LABEL_124;
        }
      }

      *&v72[v374] = v219;
      if (v12)
      {
        goto LABEL_127;
      }

LABEL_182:
      if (!v392)
      {
        goto LABEL_227;
      }

      v273 = *(type metadata accessor for EditItem(0) + 32);
      v274 = *&v72[v273];
      if (v274)
      {
        v275 = *&v72[v273];
      }

      else
      {
        v275 = MEMORY[0x1E69E7CD0];
      }

      *&v413 = v275;
      v276 = *(v275 + 16);
      v373 = v274;
      v374 = v273;
      if (!v276)
      {
        swift_bridgeObjectRetain_n();
LABEL_210:

        v74 = (v275 + 56);
        v297 = sub_1E5A2BDE4();
        v298 = 1 << *(v275 + 32);
        if (v297 != v298)
        {
          v73 = -2;
          v71 = 1;
          while (1)
          {
            if ((v297 & 0x8000000000000000) != 0 || v297 >= v298)
            {
              goto LABEL_293;
            }

            v299 = v297 >> 6;
            v300 = v74[v297 >> 6];
            if (((v300 >> v297) & 1) == 0)
            {
              goto LABEL_294;
            }

            v301 = *(v275 + 36);
            if (*(*(v275 + 48) + 24 * v297 + 16) == 2)
            {
              break;
            }

            v302 = v300 & (-2 << (v297 & 0x3F));
            if (v302)
            {
              v298 = __clz(__rbit64(v302)) | v297 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v303 = v299 << 6;
              v304 = v299 + 1;
              v305 = (v275 + 64 + 8 * v299);
              while (v304 < (v298 + 63) >> 6)
              {
                v306 = *v305++;
                v72 = v306;
                v303 += 64;
                ++v304;
                if (v306)
                {
                  sub_1E5901D04(v297, v301, 0);
                  v298 = __clz(__rbit64(v72)) + v303;
                  goto LABEL_224;
                }
              }

              sub_1E5901D04(v297, v301, 0);
LABEL_224:
              v12 = v389;
            }

            v297 = v298;
            v298 = 1 << *(v275 + 32);
            if (v297 == v298)
            {
              goto LABEL_226;
            }
          }

          v307 = sub_1E5930DDC(v297, v301);
          sub_1E58BAAC0(v307, v308, v309);
        }

LABEL_226:
        v310 = v392;

        sub_1E592D6A0(&v418, v391, v310, 2);
        sub_1E58BAAC0(v418, *(&v418 + 1), v419);

        v72 = v401;
        *&v401[v374] = v413;
        v160 = v388;
LABEL_227:
        if (!v160)
        {
          goto LABEL_272;
        }

LABEL_228:
        v311 = *(type metadata accessor for EditItem(0) + 32);
        v312 = *&v72[v311];
        if (v312)
        {
          v313 = *&v72[v311];
        }

        else
        {
          v313 = MEMORY[0x1E69E7CD0];
        }

        *&v413 = v313;
        v314 = *(v313 + 16);
        v373 = v312;
        v374 = v311;
        if (v314)
        {
          sub_1E5A2C1B4();
          MEMORY[0x1E6932DE0](3);
          swift_bridgeObjectRetain_n();
          sub_1E5A2BB74();
          v315 = sub_1E5A2C204();
          v316 = v313 + 56;
          v317 = -1 << *(v313 + 32);
          v318 = v315 & ~v317;
          if ((*(v313 + 56 + ((v318 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v318))
          {
            v319 = ~v317;
            v320 = *(v313 + 48);
            while (1)
            {
              v321 = v320 + 24 * v318;
              if (*(v321 + 16) >= 3u)
              {
                v322 = *v321 == v390 && *(v321 + 8) == v160;
                if (v322 || (sub_1E5A2C114() & 1) != 0)
                {
                  break;
                }
              }

              v318 = (v318 + 1) & v319;
              if (((*(v316 + ((v318 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v318) & 1) == 0)
              {
                goto LABEL_254;
              }
            }

            sub_1E5A2C1B4();
            MEMORY[0x1E6932DE0](3);
            sub_1E5A2BB74();
            v323 = sub_1E5A2C204();
            v324 = -1 << *(v313 + 32);
            v325 = v323 & ~v324;
            if (((*(v316 + ((v325 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v325) & 1) == 0)
            {

              v72 = v401;
LABEL_288:
              *&v72[v374] = v313;
              goto LABEL_272;
            }

            v326 = ~v324;
            v327 = *(v313 + 48);
            v72 = v401;
            while (1)
            {
              v328 = v327 + 24 * v325;
              if (*(v328 + 16) >= 3u)
              {
                v329 = *v328 == v390 && *(v328 + 8) == v160;
                if (v329 || (sub_1E5A2C114() & 1) != 0)
                {
                  break;
                }
              }

              v325 = (v325 + 1) & v326;
              if (((*(v316 + ((v325 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v325) & 1) == 0)
              {

                goto LABEL_288;
              }
            }

            v330 = swift_isUniquelyReferenced_nonNull_native();
            *&v418 = v313;
            if (!v330)
            {
              sub_1E592EF18();
              v313 = v418;
            }

            v331 = *(v313 + 48) + 24 * v325;
            v332 = *v331;
            v333 = *(v331 + 8);
            v334 = *(v331 + 16);
            sub_1E5930BA0(v325);
            sub_1E58BAAC0(v332, v333, v334);

            v335 = v418;
LABEL_271:
            *&v72[v374] = v335;
            goto LABEL_272;
          }
        }

        else
        {
          swift_bridgeObjectRetain_n();
        }

LABEL_254:

        v74 = (v313 + 56);
        v336 = sub_1E5A2BDE4();
        v337 = 1 << *(v313 + 32);
        if (v336 != v337)
        {
          v73 = -2;
          v71 = 1;
          while (1)
          {
            if ((v336 & 0x8000000000000000) != 0 || v336 >= v337)
            {
              goto LABEL_295;
            }

            v338 = v336 >> 6;
            v339 = v74[v336 >> 6];
            if (((v339 >> v336) & 1) == 0)
            {
              goto LABEL_296;
            }

            v340 = *(v313 + 36);
            if (*(*(v313 + 48) + 24 * v336 + 16) == 3)
            {
              break;
            }

            v341 = v339 & (-2 << (v336 & 0x3F));
            if (v341)
            {
              v337 = __clz(__rbit64(v341)) | v336 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v342 = v338 << 6;
              v343 = v338 + 1;
              v344 = (v313 + 64 + 8 * v338);
              while (v343 < (v337 + 63) >> 6)
              {
                v345 = *v344++;
                v72 = v345;
                v342 += 64;
                ++v343;
                if (v345)
                {
                  sub_1E5901D04(v336, v340, 0);
                  v337 = __clz(__rbit64(v72)) + v342;
                  goto LABEL_268;
                }
              }

              sub_1E5901D04(v336, v340, 0);
LABEL_268:
              v12 = v389;
            }

            v336 = v337;
            v337 = 1 << *(v313 + 32);
            if (v336 == v337)
            {
              goto LABEL_270;
            }
          }

          v346 = sub_1E5930DDC(v336, v340);
          sub_1E58BAAC0(v346, v347, v348);
        }

LABEL_270:
        v160 = v388;

        sub_1E592D6A0(&v418, v390, v160, 3);
        sub_1E58BAAC0(v418, *(&v418 + 1), v419);

        v335 = v413;
        v72 = v401;
        goto LABEL_271;
      }

      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](2);
      swift_bridgeObjectRetain_n();
      sub_1E5A2BB74();
      v277 = sub_1E5A2C204();
      v278 = v275 + 56;
      v279 = -1 << *(v275 + 32);
      v280 = v277 & ~v279;
      if (((*(v275 + 56 + ((v280 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v280) & 1) == 0)
      {
        goto LABEL_210;
      }

      v281 = ~v279;
      v282 = *(v275 + 48);
      while (1)
      {
        v283 = v282 + 24 * v280;
        if (*(v283 + 16) == 2)
        {
          v284 = *v283 == v391 && *(v283 + 8) == v392;
          if (v284 || (sub_1E5A2C114() & 1) != 0)
          {
            break;
          }
        }

        v280 = (v280 + 1) & v281;
        if (((*(v278 + ((v280 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v280) & 1) == 0)
        {
          goto LABEL_210;
        }
      }

      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](2);
      sub_1E5A2BB74();
      v285 = sub_1E5A2C204();
      v286 = -1 << *(v275 + 32);
      v287 = v285 & ~v286;
      if (((*(v278 + ((v287 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v287) & 1) == 0)
      {
LABEL_282:

        *&v72[v374] = v275;
        if (!v160)
        {
          goto LABEL_272;
        }

        goto LABEL_228;
      }

      v288 = ~v286;
      v289 = *(v275 + 48);
      while (1)
      {
        v290 = v289 + 24 * v287;
        if (*(v290 + 16) == 2)
        {
          v291 = *v290 == v391 && *(v290 + 8) == v392;
          if (v291 || (sub_1E5A2C114() & 1) != 0)
          {
            break;
          }
        }

        v287 = (v287 + 1) & v288;
        if (((*(v278 + ((v287 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v287) & 1) == 0)
        {
          goto LABEL_282;
        }
      }

      v292 = swift_isUniquelyReferenced_nonNull_native();
      *&v418 = v275;
      if (!v292)
      {
        sub_1E592EF18();
        v275 = v418;
      }

      v293 = *(v275 + 48) + 24 * v287;
      v294 = *v293;
      v295 = *(v293 + 8);
      v296 = *(v293 + 16);
      sub_1E5930BA0(v287);
      sub_1E58BAAC0(v294, v295, v296);

      *&v72[v374] = v418;
      if (v160)
      {
        goto LABEL_228;
      }

LABEL_272:
      v349 = &v72[*(type metadata accessor for EditItem(0) + 36)];
      v350 = *(v349 + 1);
      if (v350)
      {
        v351 = *v349;
        v422 = v430;
        v423 = v431;
        v424 = v432;
        v425 = v433;
        v418 = v426;
        v419 = v427;
        v420 = v428;
        v421 = v429;

        sub_1E5925744(v72);
        v353 = v352;
        v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
        v355 = v354[16];
        v356 = v354[20];
        v357 = v394;
        v358 = &v394[v354[24]];
        *&v418 = v351;
        *(&v418 + 1) = v350;
        sub_1E59306E4();

        sub_1E5A2BE14();
        sub_1E5A2BC94();
        v359 = *MEMORY[0x1E6999B60];
        v360 = sub_1E5A2B924();
        (*(*(v360 - 8) + 104))(&v357[v355], v359, v360);
        v361 = *MEMORY[0x1E6999B40];
        v362 = sub_1E5A2B914();
        (*(*(v362 - 8) + 104))(&v357[v356], v361, v362);
        v363 = swift_allocObject();
        v364 = v431;
        *(v363 + 104) = v430;
        *(v363 + 120) = v364;
        v365 = v433;
        *(v363 + 136) = v432;
        *(v363 + 152) = v365;
        v366 = v427;
        *(v363 + 40) = v426;
        *(v363 + 56) = v366;
        v367 = v429;
        *(v363 + 72) = v428;
        *(v363 + 16) = v353;
        *(v363 + 24) = v351;
        *(v363 + 32) = v350;
        *(v363 + 88) = v367;
        *(v363 + 168) = v375;
        *v358 = &unk_1E5A36270;
        *(v358 + 1) = v363;
        v369 = v398;
        v368 = v399;
        (*(v398 + 104))(v357, *MEMORY[0x1E6999AD8], v399);
        v73 = v400;
        v74 = *v400;
        sub_1E59307FC(&v426, &v418);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = sub_1E58E7254(0, v74[2] + 1, 1, v74);
        }

        v371 = v74[2];
        v370 = v74[3];
        if (v371 >= v370 >> 1)
        {
          v74 = sub_1E58E7254((v370 > 1), v371 + 1, 1, v74);
        }

        sub_1E58C2D88(v390, v388, v376, v377);
        sub_1E58C2DCC(v391, v392, v379, v380, v381, v382);
        sub_1E58C2D88(v397, v389, v383, v384);
        sub_1E58C2D88(v393, v396, v385, v386);
        v74[2] = v371 + 1;
        (*(v369 + 32))(v74 + ((*(v369 + 80) + 32) & ~*(v369 + 80)) + *(v369 + 72) * v371, v357, v368);
        goto LABEL_278;
      }

      sub_1E58C2D88(v390, v160, v376, v377);
      sub_1E58C2DCC(v391, v392, v379, v380, v381, v382);
      sub_1E58C2D88(v397, v12, v383, v384);
      sub_1E58C2D88(v393, v396, v385, v386);
      return;
    case 0xFu:
      v47 = *v27;
      v48 = *(type metadata accessor for WorkoutPlanCreationLocalState(0) + 20);
LABEL_37:
      v401[v48] = v47;
      return;
    case 0x10u:
      v122 = *v27;
      v123 = *(v27 + 1);
      v124 = *(v27 + 2);
      v418 = *(v27 + 1);
      v419 = v124;
      v125 = *(v27 + 4);
      v420 = *(v27 + 3);
      v421 = v125;
      v126 = *(type metadata accessor for WorkoutPlanCreationLocalState(0) + 48);
      v127 = v401;
      v128 = swift_isUniquelyReferenced_nonNull_native();
      *&v413 = *&v127[v126];
      sub_1E592CBF8(&v418, v122, v123, v128);

      *&v127[v126] = v413;
      return;
    case 0x11u:
      v147 = *v27;
      v422 = v430;
      v423 = v431;
      v424 = v432;
      v425 = v433;
      v418 = v426;
      v419 = v427;
      v420 = v428;
      v421 = v429;
      *&v413 = v147;
      sub_1E59239C8(v401, &v413);
LABEL_41:

      return;
    case 0x12u:
      v400 = *v27;
      v166 = *(v27 + 2);
      v167 = &v401[*(type metadata accessor for WorkoutPlanCreationLocalState(0) + 116)];
      *v167 = v400;
      *(v167 + 2) = v166;
      v167[24] = 0;
      return;
    case 0x13u:
      v62 = *v27;
      *&v401[*(type metadata accessor for WorkoutPlanCreationLocalState(0) + 88)] = v62;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
      v64 = v63[16];
      v65 = v63[20];
      v66 = &v12[v63[24]];
      v418 = xmmword_1E5A36200;
      sub_1E59306E4();
      sub_1E5A2BE14();
      sub_1E5A2BC94();
      v67 = *MEMORY[0x1E6999B60];
      v68 = sub_1E5A2B924();
      (*(*(v68 - 8) + 104))(&v12[v64], v67, v68);
      v69 = *MEMORY[0x1E6999B40];
      v70 = sub_1E5A2B914();
      (*(*(v70 - 8) + 104))(&v12[v65], v69, v70);
      *v66 = &unk_1E5A36288;
      *(v66 + 1) = 0;
      v72 = v398;
      v71 = v399;
      (*(v398 + 104))(v12, *MEMORY[0x1E6999AD8], v399);
      v73 = v400;
      v74 = *v400;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      goto LABEL_297;
    case 0x14u:
      v61 = *v27;
      v422 = v430;
      v423 = v431;
      v424 = v432;
      v425 = v433;
      v418 = v426;
      v419 = v427;
      v420 = v428;
      v421 = v429;
      sub_1E5923E20(v401, v61, v400);
      return;
    case 0x15u:
    case 0x16u:
    case 0x18u:
    case 0x1Bu:
    case 0x1Cu:
      return;
    case 0x17u:
      v422 = v430;
      v423 = v431;
      v424 = v432;
      v425 = v433;
      v418 = v426;
      v419 = v427;
      v420 = v428;
      v421 = v429;
      sub_1E592163C(v401);
      return;
    case 0x19u:
      v422 = v430;
      v423 = v431;
      v424 = v432;
      v425 = v433;
      v418 = v426;
      v419 = v427;
      v420 = v428;
      v421 = v429;
      sub_1E5921ED8(v401);
      return;
    case 0x1Au:
      v422 = v430;
      v423 = v431;
      v424 = v432;
      v425 = v433;
      v418 = v426;
      v419 = v427;
      v420 = v428;
      v421 = v429;
      sub_1E59235E8(v401, v18);
      v33 = v400;
      v34 = *v400;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1E58E7254(0, v34[2] + 1, 1, v34);
      }

      v168 = v398;
      v170 = v34[2];
      v169 = v34[3];
      if (v170 >= v169 >> 1)
      {
        v34 = sub_1E58E7254((v169 > 1), v170 + 1, 1, v34);
      }

      v34[2] = v170 + 1;
      (*(v168 + 32))(v34 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v170, v18, v399);
      goto LABEL_56;
    case 0x1Du:
      v422 = v430;
      v423 = v431;
      v424 = v432;
      v425 = v433;
      v418 = v426;
      v419 = v427;
      v420 = v428;
      v421 = v429;
      sub_1E5924A3C(v401, v400);
      return;
    case 0x1Eu:
      v422 = v430;
      v423 = v431;
      v424 = v432;
      v425 = v433;
      v418 = v426;
      v419 = v427;
      v420 = v428;
      v421 = v429;
      sub_1E5924400(v401, v400);
      return;
    default:
      v32 = *v27;
      v422 = v430;
      v423 = v431;
      v424 = v432;
      v425 = v433;
      v418 = v426;
      v419 = v427;
      v420 = v428;
      v421 = v429;
      sub_1E5922BE8(v401, v396, v32, v21);
      v33 = v400;
      v34 = *v400;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1E58E7254(0, v34[2] + 1, 1, v34);
      }

      v35 = v398;
      v37 = v34[2];
      v36 = v34[3];
      if (v37 >= v36 >> 1)
      {
        v34 = sub_1E58E7254((v36 > 1), v37 + 1, 1, v34);
      }

      v34[2] = v37 + 1;
      (*(v35 + 32))(v34 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v37, v21, v399);
LABEL_56:
      *v33 = v34;
      return;
  }
}

int *sub_1E592163C(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v88 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v78 - v6;
  v8 = type metadata accessor for WorkoutPlanScheduledItem(0);
  v89 = *(v8 - 8);
  v90 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v78 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v78 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v87 = (&v78 - v18);
  v19 = v1[5];
  v105 = v1[4];
  v106 = v19;
  v20 = v1[7];
  v107 = v1[6];
  v108 = v20;
  v21 = v1[1];
  v101 = *v1;
  v102 = v21;
  v22 = v1[3];
  v103 = v1[2];
  v104 = v22;
  result = type metadata accessor for EditItem(0);
  v24 = &a1[result[9]];
  v25 = v24[1];
  if (!v25)
  {
    return result;
  }

  v26 = result;
  v27 = &a1[result[7]];
  if (v27[8])
  {
    return result;
  }

  v85 = &a1[result[7]];
  v86 = v24;
  v28 = *v27;
  v83 = *v24;
  v84 = v28;
  sub_1E58BABA0(a1, v7, &qword_1ECFFB790, &qword_1E5A2D620);
  if ((*(v89 + 48))(v7, 1, v90) != 1)
  {
    v29 = v7;
    v30 = v87;
    sub_1E59326EC(v29, v87, type metadata accessor for WorkoutPlanScheduledItem);
    v31 = &a1[v26[5]];
    if (v31[8] == 1 || a1[v26[6]] == 7)
    {
      sub_1E5932F40(v30, type metadata accessor for WorkoutPlanScheduledItem);
      goto LABEL_8;
    }

    v81 = a1[v26[6]];
    v79 = *v31;
    v50 = *(type metadata accessor for WorkoutPlanCreationLocalState(0) + 112);
    v82 = v50;
    v51 = *&a1[v50];
    if (!v51)
    {
      sub_1E5932F40(v30, type metadata accessor for WorkoutPlanScheduledItem);
      goto LABEL_9;
    }

    *&v93 = *&a1[v50];
    v52 = a1[v26[10]];
    v53 = v26[8];
    if (*&a1[v53])
    {
      v80 = *&a1[v53];
    }

    else
    {
      v80 = v87[1];
      v78 = v52;

      v52 = v78;
    }

    if (v52 == 7 || v52 == v81)
    {
      v54 = v82;
      if (!*(v51 + 16) || (v55 = sub_1E58EF458(v81, 0, 0, 0), v54 = v82, (v56 & 1) == 0))
      {

        sub_1E5932F40(v87, type metadata accessor for WorkoutPlanScheduledItem);
        goto LABEL_43;
      }

      v57 = *(*(v51 + 56) + 8 * v55);
      v58 = v90;
      v78 = *(v90 + 24);

      sub_1E5A29E64();
      v59 = (v16 + *(v58 + 28));
      *v59 = v83;
      v59[1] = v25;
      v60 = v80;
      *v16 = v84;
      v16[1] = v60;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_1E59302D4(v57);
      }

      v10 = v87;
      if ((v79 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v79 < v57[2])
      {
        sub_1E5932154(v16, v57 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v79);
        v61 = v93;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v92 = v61;
        sub_1E592C8B4(v57, v81, 0, 0, 0, isUniquelyReferenced_nonNull_native);
        v51 = v92;
        sub_1E5932F40(v10, type metadata accessor for WorkoutPlanScheduledItem);
        v54 = v82;
LABEL_43:

        *&a1[v54] = v51;
        goto LABEL_9;
      }

      __break(1u);
    }

    else
    {
      if (!*(v51 + 16) || (v78 = v52, v63 = sub_1E58EF458(v81, 0, 0, 0), (v64 & 1) == 0))
      {

        v68 = v51;

LABEL_42:
        v54 = v82;
        sub_1E5932F40(v87, type metadata accessor for WorkoutPlanScheduledItem);
        v51 = v68;
        goto LABEL_43;
      }

      v92 = *(*(v51 + 56) + 8 * v63);

      sub_1E5925ED0(v79, v13);
      sub_1E5932F40(v13, type metadata accessor for WorkoutPlanScheduledItem);
      v65 = v92;
      if (*(v92 + 16))
      {
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v91 = v51;
        sub_1E592C8B4(v65, v81, 0, 0, 0, v66);
        v67 = v91;
        *&v93 = v91;
      }

      else
      {

        sub_1E592C62C(v81, 0, 0, 0);

        v67 = v93;
      }

      if (*(v67 + 16) && (v69 = sub_1E58EF458(v78, 0, 0, 0), (v70 & 1) != 0))
      {
        v57 = *(*(v67 + 56) + 8 * v69);
      }

      else
      {
        v57 = MEMORY[0x1E69E7CC0];
      }

      v71 = v90;
      sub_1E5A29E64();
      v72 = (v10 + *(v71 + 28));
      *v72 = v83;
      v72[1] = v25;
      v73 = v80;
      *v10 = v84;
      v10[1] = v73;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_39:
        v75 = v57[2];
        v74 = v57[3];
        if (v75 >= v74 >> 1)
        {
          v57 = sub_1E58E7050((v74 > 1), v75 + 1, 1, v57);
        }

        v57[2] = v75 + 1;
        sub_1E59326EC(v10, v57 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v75, type metadata accessor for WorkoutPlanScheduledItem);
        v76 = v93;
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v91 = v76;
        sub_1E592C8B4(v57, v78, 0, 0, 0, v77);
        v68 = v91;
        goto LABEL_42;
      }
    }

    v57 = sub_1E58E7050(0, v57[2] + 1, 1, v57);
    goto LABEL_39;
  }

  sub_1E58C3420(v7);
LABEL_8:
  v32 = v1[5];
  v97 = v1[4];
  v98 = v32;
  v33 = v1[7];
  v99 = v1[6];
  v100 = v33;
  v34 = v1[1];
  v93 = *v1;
  v94 = v34;
  v35 = v1[3];
  v95 = v1[2];
  v96 = v35;
  sub_1E5925BC0(a1, v83, v25, v84);
LABEL_9:
  v36 = v88;
  v37 = *(v89 + 56);
  v38 = v90;
  v37(v88, 1, 1, v90);
  sub_1E5932F40(a1, type metadata accessor for EditItem);
  v37(a1, 1, 1, v38);
  v39 = v26[6];
  v40 = &a1[v26[5]];
  v41 = v26[8];
  v42 = v26[10];
  sub_1E59320E4(v36, a1);
  *v40 = 0;
  v40[8] = 1;
  a1[v39] = 7;
  v44 = v85;
  v43 = v86;
  *v85 = 0;
  v44[8] = 1;
  *&a1[v41] = 0;
  *v43 = 0;
  v43[1] = 0;
  a1[v42] = 7;
  v45 = type metadata accessor for WorkoutPlanCreationLocalState(0);
  if (*&a1[*(v45 + 112)])
  {
    v46 = v45;
    *&v93 = *&a1[*(v45 + 112)];
    v47 = WorkoutPlanSchedule.modalityIdentifiers()();
    v48 = *(v46 + 60);
    v49 = sub_1E5930FA4(*&a1[v48], v47);

    *&a1[v48] = v49;
  }

  v97 = v105;
  v98 = v106;
  v99 = v107;
  v100 = v108;
  v93 = v101;
  v94 = v102;
  v95 = v103;
  v96 = v104;
  return sub_1E592512C(a1);
}

uint64_t sub_1E5921ED8(char *a1)
{
  v3 = type metadata accessor for WorkoutPlanScheduledItem(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = v1[5];
  v58 = v1[4];
  v59 = v12;
  v13 = v1[7];
  v60 = v1[6];
  v61 = v13;
  v14 = v1[1];
  v54 = *v1;
  v55 = v14;
  v15 = v1[3];
  v56 = v1[2];
  v57 = v15;
  sub_1E58BABA0(a1, &v37 - v10, &qword_1ECFFB790, &qword_1E5A2D620);
  v16 = v4;
  v17 = (*(v4 + 48))(v11, 1, v3);
  result = sub_1E58C3420(v11);
  if (v17 != 1)
  {
    result = type metadata accessor for EditItem(0);
    v19 = &a1[*(result + 20)];
    if ((v19[8] & 1) == 0)
    {
      v20 = *(result + 24);
      v21 = a1[v20];
      if (v21 != 7)
      {
        v41 = *v19;
        v42 = result;
        result = type metadata accessor for WorkoutPlanCreationLocalState(0);
        v22 = *&a1[*(result + 112)];
        if (v22)
        {
          v39 = *(result + 112);
          v40 = v20;
          v38 = result;
          v53 = v22;
          if (*(v22 + 16))
          {
            result = sub_1E58EF458(v21, 0, 0, 0);
            if (v23)
            {
              v52 = *(*(v22 + 56) + 8 * result);

              sub_1E5925ED0(v41, v6);
              sub_1E5932F40(v6, type metadata accessor for WorkoutPlanScheduledItem);
              v24 = v52;
              if (*(v52 + 16))
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v44 = v22;
                sub_1E592C8B4(v24, v21, 0, 0, 0, isUniquelyReferenced_nonNull_native);
                v26 = v44;
                v53 = v44;
              }

              else
              {

                sub_1E592C62C(v21, 0, 0, 0);

                v26 = v53;
              }

              v27 = v39;

              v41 = v26;
              *&a1[v27] = v26;
              v28 = *(v16 + 56);
              v29 = v43;
              v28(v43, 1, 1, v3);
              sub_1E5932F40(a1, type metadata accessor for EditItem);
              v28(a1, 1, 1, v3);
              v30 = v42[8];
              v31 = &a1[v42[7]];
              v32 = v42[10];
              v33 = &a1[v42[9]];
              sub_1E59320E4(v29, a1);
              *v19 = 0;
              v19[8] = 1;
              a1[v40] = 7;
              *v31 = 0;
              v31[8] = 1;
              *&a1[v30] = 0;
              *v33 = 0;
              *(v33 + 1) = 0;
              a1[v32] = 7;
              if (*&a1[v27])
              {
                *&v44 = *&a1[v27];
                v34 = WorkoutPlanSchedule.modalityIdentifiers()();
                v35 = *(v38 + 60);
                v36 = sub_1E5930FA4(*&a1[v35], v34);

                *&a1[v35] = v36;
              }

              v48 = v58;
              v49 = v59;
              v50 = v60;
              v51 = v61;
              v44 = v54;
              v45 = v55;
              v46 = v56;
              v47 = v57;
              sub_1E592512C(a1);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E59222F4(char *a1, void *a2, int a3, uint64_t a4, int a5)
{
  LODWORD(v78) = a5;
  v73 = a4;
  LODWORD(v79) = a3;
  v77 = a2;
  v7 = type metadata accessor for WorkoutPlanScheduledItem(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v72 = (v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v75 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v65 - v13;
  v15 = v5[5];
  v92 = v5[4];
  v93 = v15;
  v16 = v5[7];
  v94 = v5[6];
  v95 = v16;
  v17 = v5[1];
  v88 = *v5;
  v89 = v17;
  v18 = v5[3];
  v90 = v5[2];
  v91 = v18;
  v76 = v8;
  v19 = *(v8 + 56);
  v19(v65 - v13, 1, 1, v7);
  sub_1E5932F40(a1, type metadata accessor for EditItem);
  v74 = v7;
  v69 = v19;
  v65[1] = v8 + 56;
  v19(a1, 1, 1, v7);
  v20 = type metadata accessor for EditItem(0);
  v21 = v20[6];
  v22 = &a1[v20[5]];
  v23 = v20[8];
  v24 = &a1[v20[7]];
  v25 = v20[10];
  sub_1E59320E4(v14, a1);
  *v22 = 0;
  v70 = v22;
  v71 = v21;
  v22[8] = 1;
  a1[v21] = 7;
  *v24 = 0;
  v67 = v24;
  v68 = v23;
  v24[8] = 1;
  *&a1[v23] = 0;
  v66 = v25;
  a1[v25] = 7;
  v26 = *&a1[*(type metadata accessor for WorkoutPlanCreationLocalState(0) + 72)];
  *&v80 = v26;

  sub_1E592B124(&v80);
  v27 = v20[9];
  v28 = sub_1E591E968(v80, a1);

  if (v28[2])
  {
    v29 = v28[5];
    v30 = v28[6];

    v31 = v29;

    v32 = v74;
  }

  else
  {

    *&v80 = v26;

    sub_1E592B124(&v80);
    v32 = v74;
    if (*(v80 + 16))
    {
      v33 = *(v80 + 40);
      v30 = *(v80 + 48);

      v31 = v33;
    }

    else
    {

      v31 = 0;
      v30 = 0;
    }
  }

  v34 = &a1[v27];
  *v34 = v31;
  *(v34 + 1) = v30;
  v35 = v79;
  if (v79 == 7)
  {
    v84 = v92;
    v85 = v93;
    v86 = v94;
    v87 = v95;
    v80 = v88;
    v81 = v89;
    v82 = v90;
    v83 = v91;
    v36 = sub_1E5925500(a1);
    if (*(v36 + 2))
    {
      v37 = v36[32];
    }

    else
    {
      v37 = 7;
    }

    a1[v66] = v37;
  }

  v38 = v75;
  sub_1E58BABA0(v77, v75, &qword_1ECFFB790, &qword_1E5A2D620);
  if ((*(v76 + 48))(v38, 1, v32) != 1)
  {
    v39 = v72;
    sub_1E59326EC(v38, v72, type metadata accessor for WorkoutPlanScheduledItem);
    sub_1E58C3420(a1);
    sub_1E5932C30(v39, a1, type metadata accessor for WorkoutPlanScheduledItem);
    v69(a1, 0, 1, v32);
    v40 = v67;
    *v67 = *v39;
    *(v40 + 8) = 0;
    v41 = (v39 + *(v32 + 28));
    v31 = *v41;
    v42 = v41[1];

    *v34 = v31;
    *(v34 + 1) = v42;
    v43 = v39[1];

    sub_1E5932F40(v39, type metadata accessor for WorkoutPlanScheduledItem);
    *&a1[v68] = v43;
    v30 = v42;
    if (v78)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  sub_1E58C3420(v38);
  if ((v78 & 1) == 0)
  {
LABEL_15:
    v44 = v70;
    *v70 = v73;
    *(v44 + 8) = 0;
  }

LABEL_16:
  if (v35 != 7)
  {
    a1[v71] = v35;
  }

  v84 = v92;
  v85 = v93;
  v86 = v94;
  v87 = v95;
  v80 = v88;
  v81 = v89;
  v82 = v90;
  v83 = v91;
  sub_1E5925744(a1);
  v79 = v45;
  if (v30)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC378, &qword_1E5A36450);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890);
    v46 = *(v78 - 8);
    v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1E5A2C920;
    v49 = v48 + v47;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
    v51 = v50[16];
    v52 = v50[20];
    v77 = (v49 + v50[24]);
    *&v80 = v31;
    *(&v80 + 1) = v30;
    sub_1E59306E4();
    swift_bridgeObjectRetain_n();
    sub_1E5A2BE14();
    sub_1E5A2BC94();
    v53 = *MEMORY[0x1E6999B60];
    v54 = sub_1E5A2B924();
    (*(*(v54 - 8) + 104))(v49 + v51, v53, v54);
    v55 = *MEMORY[0x1E6999B40];
    v56 = sub_1E5A2B914();
    (*(*(v56 - 8) + 104))(v49 + v52, v55, v56);
    v57 = swift_allocObject();
    v58 = v93;
    *(v57 + 104) = v92;
    *(v57 + 120) = v58;
    v59 = v95;
    *(v57 + 136) = v94;
    *(v57 + 152) = v59;
    v60 = v89;
    *(v57 + 40) = v88;
    *(v57 + 56) = v60;
    v61 = v91;
    *(v57 + 72) = v90;
    v62 = v78;
    *(v57 + 16) = v79;
    *(v57 + 24) = v31;
    *(v57 + 32) = v30;
    *(v57 + 88) = v61;
    v63 = v77;
    *v77 = &unk_1E5A36460;
    v63[1] = v57;
    (*(v46 + 104))(v49, *MEMORY[0x1E6999AD8], v62);
    sub_1E59307FC(&v88, &v80);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v48;
}

uint64_t sub_1E5922AB0(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1E58E7254(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1E5922BE8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v96 = a3;
  v92 = a2;
  v103 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  v93 = *(v6 - 8);
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v101 = &v80 - v7;
  v100 = sub_1E5A29E74();
  v95 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v91 = v8;
  v99 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1E5A29EB4();
  v97 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v90 = v9;
  v98 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5A29E34();
  v88 = *(v10 - 8);
  v89 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5A2A004();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC028, &qword_1E5A2FCB8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v80 - v14;
  v16 = sub_1E5A29EC4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E5A29FE4();
  v85 = *(v20 - 8);
  v86 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4[5];
  v110 = v4[4];
  v111 = v23;
  v24 = v4[7];
  v112 = v4[6];
  v113 = v24;
  v25 = v4[1];
  v106 = *v4;
  v107 = v25;
  v26 = v4[3];
  v108 = v4[2];
  v109 = v26;
  v27 = type metadata accessor for WorkoutPlanCreationLocalState(0);
  v28 = *(v103 + *(v27 + 112));
  if (v28)
  {
    v29 = v27;
    v30 = (v103 + *(v27 + 116));
    if (*(v30 + 24) != 1)
    {
      v35 = v30[2];
      v88 = v30[1];
      v89 = v35;
      v87 = *v30;

      v86 = v28;
      goto LABEL_6;
    }

    (*(v17 + 104))(v19, *MEMORY[0x1E6969868], v16);

    sub_1E5A29ED4();
    (*(v17 + 8))(v19, v16);
    v31 = v28;
    sub_1E5A29F04();
    sub_1E5A29E94();
    (*(v97 + 56))(v15, 0, 1, v102);
    sub_1E5A29FA4();
    sub_1E5A29FF4();
    sub_1E5A29FB4();
    v104 = v28;

    v32 = v87;
    sub_1E5A29E14();
    v33 = Calendar.availableDays(for:schedule:)(v32, &v104);
    (*(v88 + 1))(v32, v89);

    (*(v85 + 8))(v22, v86);
    if (v33[2])
    {
      v34 = v33[5];
      v87 = v33[4];
      v88 = v34;
      v89 = v33[6];

      v86 = v31;
LABEL_6:
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
      v37 = v36[16];
      v38 = v36[20];
      v85 = a4 + v36[24];
      sub_1E59306E4();
      v104 = 0;
      v105 = 0;
      sub_1E5A2BE14();
      sub_1E5A2BC94();
      v39 = *MEMORY[0x1E6999B50];
      v40 = sub_1E5A2B924();
      v41 = *(*(v40 - 8) + 104);
      v84 = a4;
      v41(a4 + v37, v39, v40);
      v42 = *MEMORY[0x1E6999B40];
      v43 = sub_1E5A2B914();
      (*(*(v43 - 8) + 104))(a4 + v38, v42, v43);
      v44 = v29[7];
      v45 = *(type metadata accessor for WorkoutPlanCreationState(0) + 24);
      v46 = v103;

      v81 = sub_1E591C4AC(v47);
      v83 = *(v46 + v29[22]);
      v82 = *(v46 + v29[31]);
      v48 = v29[16];
      v49 = v97;
      (*(v97 + 16))(v98, v92 + v45, v102);
      v50 = v95;
      (*(v95 + 16))(v99, v46 + v44, v100);
      sub_1E58BABA0(v46 + v48, v101, &qword_1ECFFD900, &qword_1E5A39BB0);
      v51 = (*(v49 + 80) + 144) & ~*(v49 + 80);
      v52 = (v90 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
      v53 = (*(v50 + 80) + v52 + 8) & ~*(v50 + 80);
      v54 = (v91 + *(v93 + 80) + v53) & ~*(v93 + 80);
      v55 = (v94 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
      v103 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
      v56 = swift_allocObject();
      v57 = v111;
      *(v56 + 5) = v110;
      *(v56 + 6) = v57;
      v58 = v113;
      *(v56 + 7) = v112;
      *(v56 + 8) = v58;
      v59 = v107;
      *(v56 + 1) = v106;
      *(v56 + 2) = v59;
      v60 = v109;
      *(v56 + 3) = v108;
      *(v56 + 4) = v60;
      (*(v49 + 32))(&v56[v51], v98, v102);
      *&v56[v52] = v81;
      (*(v50 + 32))(&v56[v53], v99, v100);
      sub_1E58F0054(v101, &v56[v54], &qword_1ECFFD900, &qword_1E5A39BB0);
      v61 = v87;
      *&v56[v55] = v86;
      v62 = &v56[v103];
      v64 = v88;
      v63 = v89;
      *v62 = v61;
      *(v62 + 1) = v64;
      *(v62 + 2) = v63;
      v62[24] = v82;
      v65 = &v56[(v55 + 47) & 0xFFFFFFFFFFFFFFF8];
      *v65 = v83;
      v65[8] = v96 & 1;
      v66 = v85;
      *v85 = &unk_1E5A364A0;
      *(v66 + 8) = v56;
      v67 = *MEMORY[0x1E6999AD8];
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890);
      (*(*(v68 - 8) + 104))(v84, v67, v68);
      return sub_1E5932690(&v106, &v104);
    }
  }

  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
  v71 = v70[16];
  v72 = v70[20];
  v73 = (a4 + v70[24]);
  sub_1E59306E4();
  v104 = 0;
  v105 = 0;
  sub_1E5A2BE14();
  v74 = *MEMORY[0x1E6999B50];
  v75 = sub_1E5A2B924();
  (*(*(v75 - 8) + 104))(a4 + v71, v74, v75);
  v76 = *MEMORY[0x1E6999B40];
  v77 = sub_1E5A2B914();
  (*(*(v77 - 8) + 104))(a4 + v72, v76, v77);
  *v73 = &unk_1E5A36490;
  v73[1] = 0;
  sub_1E5A2BC94();
  v78 = *MEMORY[0x1E6999AD8];
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890);
  return (*(*(v79 - 8) + 104))(a4, v78, v79);
}

uint64_t sub_1E59235E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for WorkoutPlanCreationScheduleRequest(0);
  v6 = (v5 - 8);
  v48 = *(v5 - 8);
  v47 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v44 - v9);
  v11 = v2[5];
  v54 = v2[4];
  v55 = v11;
  v12 = v2[7];
  v56 = v2[6];
  v57 = v12;
  v13 = v2[1];
  v50 = *v2;
  v51 = v13;
  v14 = v2[3];
  v52 = v2[2];
  v53 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
  v16 = v15[16];
  v17 = v15[20];
  v46 = (a2 + v15[24]);
  v49[8] = xmmword_1E5A36210;
  sub_1E5932690(&v50, v49);
  sub_1E59306E4();
  sub_1E5A2BE14();
  sub_1E5A2BC94();
  v18 = *MEMORY[0x1E6999B60];
  v19 = sub_1E5A2B924();
  v20 = *(*(v19 - 8) + 104);
  v44 = a2;
  v20(a2 + v16, v18, v19);
  v21 = *MEMORY[0x1E6999B40];
  v22 = sub_1E5A2B914();
  (*(*(v22 - 8) + 104))(a2 + v17, v21, v22);
  v23 = type metadata accessor for WorkoutPlanCreationLocalState(0);
  v24 = *(a1 + v23[19]);
  v25 = v23[7];
  v26 = v6[7];
  v27 = sub_1E5A29E74();
  (*(*(v27 - 8) + 16))(v10 + v26, a1 + v25, v27);
  sub_1E58BABA0(a1 + v23[16], v10 + v6[8], &qword_1ECFFD900, &qword_1E5A39BB0);
  v28 = *(a1 + v23[21]);
  LOBYTE(v26) = *(a1 + v23[31]);
  v29 = *(a1 + v23[22]);
  v30 = *(a1 + v23[23]);

  v31 = sub_1E59520D8(v24);
  v32 = sub_1E591CA10(v31);

  *v10 = v32;
  *(v10 + v6[9]) = v28;
  *(v10 + v6[10]) = v26;
  *(v10 + v6[11]) = v29;
  *(v10 + v6[12]) = v30;
  v33 = v45;
  sub_1E59326EC(v10, v45, type metadata accessor for WorkoutPlanCreationScheduleRequest);
  v34 = (*(v48 + 80) + 144) & ~*(v48 + 80);
  v35 = swift_allocObject();
  v36 = v55;
  v35[5] = v54;
  v35[6] = v36;
  v37 = v57;
  v35[7] = v56;
  v35[8] = v37;
  v38 = v51;
  v35[1] = v50;
  v35[2] = v38;
  v39 = v53;
  v35[3] = v52;
  v35[4] = v39;
  sub_1E59326EC(v33, v35 + v34, type metadata accessor for WorkoutPlanCreationScheduleRequest);
  v40 = v46;
  *v46 = &unk_1E5A364B8;
  v40[1] = v35;
  v41 = *MEMORY[0x1E6999AD8];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890);
  return (*(*(v42 - 8) + 104))(v44, v41, v42);
}

uint64_t sub_1E59239C8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = type metadata accessor for WorkoutPlanCreationLocalState(0);
  v7 = v6[28];

  *(a1 + v7) = v5;
  if ((*(a1 + v6[25]) & 1) == 0)
  {
    v8 = sub_1E590E3DC(MEMORY[0x1E69E7CC0]);
    v9 = v6[15];

    *(a1 + v9) = v8;
    v10 = a1 + v6[29];
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 1;
    *(a1 + v6[20]) = 0;
  }

  *&v22[0] = v5;
  v11 = WorkoutPlanSchedule.modalityIdentifiers()();
  v12 = v11;
  v13 = *(v11 + 2);
  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = sub_1E5A206D0(*(v11 + 2), 0);
  v15 = sub_1E5A22B04(v22, v14 + 4, v13, v12);
  sub_1E58D26C0(*&v22[0]);
  if (v15 != v13)
  {
    __break(1u);
LABEL_6:

    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v3[5];
  v22[4] = v3[4];
  v22[5] = v16;
  v17 = v3[7];
  v22[6] = v3[6];
  v22[7] = v17;
  v18 = v3[1];
  v22[0] = *v3;
  v22[1] = v18;
  v19 = v3[3];
  v22[2] = v3[2];
  v22[3] = v19;
  v20 = sub_1E5927B00(v14, 1);

  return sub_1E5922AB0(v20);
}

uint64_t sub_1E5923B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for WorkoutPlanCreationLocalState(0);
  if (sub_1E59E8F3C(a2, a3, *(a1 + *(v12 + 76))))
  {
    sub_1E59302E8(a2, a3);
  }

  else
  {

    sub_1E592CD80(&v25, a2, a3);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
  v14 = v13[16];
  v15 = v13[20];
  v16 = &v11[v13[24]];
  v25 = xmmword_1E5A36200;
  sub_1E59306E4();
  sub_1E5A2BE14();
  sub_1E5A2BC94();
  v17 = *MEMORY[0x1E6999B60];
  v18 = sub_1E5A2B924();
  (*(*(v18 - 8) + 104))(&v11[v14], v17, v18);
  v19 = *MEMORY[0x1E6999B40];
  v20 = sub_1E5A2B914();
  (*(*(v20 - 8) + 104))(&v11[v15], v19, v20);
  *v16 = &unk_1E5A36288;
  *(v16 + 1) = 0;
  (*(v9 + 104))(v11, *MEMORY[0x1E6999AD8], v8);
  v21 = *a4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1E58E7254(0, v21[2] + 1, 1, v21);
  }

  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1E58E7254((v22 > 1), v23 + 1, 1, v21);
  }

  v21[2] = v23 + 1;
  result = (*(v9 + 32))(v21 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v23, v11, v8);
  *a4 = v21;
  return result;
}