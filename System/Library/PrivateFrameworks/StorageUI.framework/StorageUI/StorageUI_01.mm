uint64_t type metadata accessor for Volume(uint64_t a1)
{
  result = qword_280441EE8;
  if (!qword_280441EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26BC10654(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26BC10720(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_26BC0F18C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26BC10720(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26BC1082C(a5, a6);
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
    result = sub_26BC1399C();
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

void *sub_26BC1082C(uint64_t a1, unint64_t a2)
{
  v3 = sub_26BC10878(a1, a2);
  sub_26BC109A8(&unk_287C9B6D8);
  return v3;
}

void *sub_26BC10878(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26BC10A94(v5, 0);
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

  result = sub_26BC1399C();
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
        v10 = sub_26BC1383C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26BC10A94(v10, 0);
        result = sub_26BC1396C();
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

uint64_t sub_26BC109A8(uint64_t result)
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

  result = sub_26BC10B08(result, v11, 1, v3);
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

void *sub_26BC10A94(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441EF8, &qword_26BC15280);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26BC10B08(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441EF8, &qword_26BC15280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

BOOL _s9StorageUI6VolumeV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_26BC130EC() & 1) != 0 && ((v4 = type metadata accessor for Volume(0), v5 = v4[5], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_26BC13A4C()) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8])))
  {
    return *(a1 + v4[9]) == *(a2 + v4[9]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BC10CC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441F00, &qword_26BC15288);
    v3 = sub_26BC1395C();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_26BC1380C();
      sub_26BC13A7C();
      v27 = v7;
      sub_26BC1381C();
      v8 = sub_26BC13AAC();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_26BC1380C();
        v18 = v17;
        if (v16 == sub_26BC1380C() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_26BC13A4C();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_26BC10EB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441EC0, &qword_26BC151F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC10F24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441EC0, &qword_26BC151F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26BC10F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280441ED0;
  if (!qword_280441ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441ED0);
  }

  return result;
}

unint64_t sub_26BC10FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280441ED8;
  if (!qword_280441ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441ED8);
  }

  return result;
}

uint64_t sub_26BC11034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Volume(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BC11098()
{
  result = qword_280441EE0;
  if (!qword_280441EE0)
  {
    sub_26BC1310C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441EE0);
  }

  return result;
}

uint64_t sub_26BC11104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26BC1310C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26BC111D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26BC1310C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26BC11294(uint64_t a1)
{
  result = sub_26BC1310C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t TimeStats.initTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26BC1313C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TimeStats.initTime.setter(uint64_t a1)
{
  v3 = sub_26BC1313C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TimeStats.startMonitoring.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TimeStats(0) + 20);

  return sub_26BC114A4(v3, a1);
}

uint64_t type metadata accessor for TimeStats(uint64_t a1)
{
  result = qword_280441F10;
  if (!qword_280441F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BC114A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441F08, &qword_26BC15290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TimeStats.startMonitoring.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TimeStats(0) + 20);

  return sub_26BC11558(a1, v3);
}

uint64_t sub_26BC11558(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441F08, &qword_26BC15290);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TimeStats.firstGathering.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TimeStats(0) + 24);

  return sub_26BC114A4(v3, a1);
}

uint64_t TimeStats.firstGathering.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TimeStats(0) + 24);

  return sub_26BC11558(a1, v3);
}

uint64_t TimeStats.firstDisplay.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TimeStats(0) + 28);

  return sub_26BC114A4(v3, a1);
}

uint64_t TimeStats.firstDisplay.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TimeStats(0) + 28);

  return sub_26BC11558(a1, v3);
}

uint64_t TimeStats.recommendations.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TimeStats(0) + 32);

  return sub_26BC114A4(v3, a1);
}

uint64_t TimeStats.recommendations.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TimeStats(0) + 32);

  return sub_26BC11558(a1, v3);
}

uint64_t TimeStats.init(initTime:startMonitoring:firstGathering:firstDisplay:recommendations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = type metadata accessor for TimeStats(0);
  v10 = v9[5];
  v11 = sub_26BC137CC();
  v12 = *(*(v11 - 8) + 56);
  v12(a6 + v10, 1, 1, v11);
  v13 = v9[6];
  v12(a6 + v13, 1, 1, v11);
  v14 = v9[7];
  v12(a6 + v14, 1, 1, v11);
  v15 = v9[8];
  v12(a6 + v15, 1, 1, v11);
  v16 = sub_26BC1313C();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  sub_26BC11558(a2, a6 + v10);
  sub_26BC11558(a3, a6 + v13);
  sub_26BC11558(a4, a6 + v14);

  return sub_26BC11558(a5, a6 + v15);
}

unint64_t TimeStats.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441F08, &qword_26BC15290);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v76 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v75 = &v64 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v68 = &v64 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v64 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v70 = &v64 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v64 - v14;
  v16 = sub_26BC137CC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v65 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v64 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v66 = &v64 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v69 = &v64 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v67 = &v64 - v28;
  MEMORY[0x28223BE20](v27);
  v77 = &v64 - v29;
  v81 = 0;
  v82 = 0xE000000000000000;
  sub_26BC1397C();

  v81 = 0xD000000000000023;
  v82 = 0x800000026BC15A40;
  v30 = sub_26BC1311C();
  MEMORY[0x26D690880](v30);

  MEMORY[0x26D690880](2592, 0xE200000000000000);
  v31 = type metadata accessor for TimeStats(0);
  v32 = v31[5];
  sub_26BC114A4(v1 + v32, v15);
  v33 = *(v17 + 48);
  v34 = v33(v15, 1, v16);
  v78 = v17 + 48;
  v73 = v31;
  v74 = v22;
  v72 = v32;
  if (v34 == 1)
  {
    sub_26BC1227C(v15);
  }

  else
  {
    v64 = v11;
    v35 = *(v17 + 32);
    v35(v77, v15, v16);
    v36 = v1 + v31[6];
    v37 = v70;
    sub_26BC114A4(v36, v70);
    if (v33(v37, 1, v16) == 1)
    {
      (*(v17 + 8))(v77, v16);
      sub_26BC1227C(v37);
    }

    else
    {
      v38 = v17;
      v39 = v67;
      v35(v67, v37, v16);
      v40 = sub_26BC137BC();
      result = sub_26BC137BC();
      if (v40 < result)
      {
        __break(1u);
        goto LABEL_23;
      }

      v79 = 0;
      v80 = 0xE000000000000000;
      sub_26BC1397C();
      MEMORY[0x26D690880](0xD00000000000001ELL, 0x800000026BC15AB0);
      sub_26BC138BC();
      MEMORY[0x26D690880](663667, 0xE300000000000000);
      MEMORY[0x26D690880](v79, v80);

      v17 = v38;
      v42 = *(v38 + 8);
      v42(v39, v16);
      v42(v77, v16);
    }

    v31 = v73;
    v22 = v74;
    v11 = v64;
    v32 = v72;
  }

  sub_26BC114A4(v1 + v32, v11);
  v43 = v1;
  v44 = v33(v11, 1, v16);
  v71 = v1;
  if (v44 != 1)
  {
    v46 = *(v17 + 32);
    v47 = v69;
    v46(v69, v11, v16);
    v48 = v68;
    sub_26BC114A4(v43 + v31[7], v68);
    if (v33(v48, 1, v16) == 1)
    {
      (*(v17 + 8))(v47, v16);
      sub_26BC1227C(v48);
LABEL_14:
      v45 = v76;
      v31 = v73;
      v22 = v74;
      v32 = v72;
      goto LABEL_15;
    }

    v49 = v48;
    v50 = v66;
    v46(v66, v49, v16);
    v51 = v50;
    v52 = sub_26BC137BC();
    result = sub_26BC137BC();
    if (v52 >= result)
    {
      v79 = 0;
      v80 = 0xE000000000000000;
      sub_26BC1397C();
      MEMORY[0x26D690880](0xD00000000000001FLL, 0x800000026BC15A90);
      sub_26BC138BC();
      MEMORY[0x26D690880](663667, 0xE300000000000000);
      MEMORY[0x26D690880](v79, v80);

      v53 = *(v17 + 8);
      v53(v51, v16);
      v53(v47, v16);
      goto LABEL_14;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_26BC1227C(v11);
  v45 = v76;
LABEL_15:
  v54 = v71;
  v55 = v71 + v32;
  v56 = v75;
  sub_26BC114A4(v55, v75);
  if (v33(v56, 1, v16) == 1)
  {
    sub_26BC1227C(v56);
    return v81;
  }

  v57 = v17;
  v58 = v54;
  v59 = v57;
  v60 = *(v57 + 32);
  v60(v22, v56, v16);
  sub_26BC114A4(v58 + v31[8], v45);
  if (v33(v45, 1, v16) == 1)
  {
    (*(v59 + 8))(v22, v16);
    sub_26BC1227C(v45);
    return v81;
  }

  v61 = v65;
  v60(v65, v45, v16);
  v62 = sub_26BC137BC();
  result = sub_26BC137BC();
  if (v62 >= result)
  {
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_26BC1397C();
    MEMORY[0x26D690880](0xD00000000000001ELL, 0x800000026BC15A70);
    sub_26BC138BC();
    MEMORY[0x26D690880](663667, 0xE300000000000000);
    MEMORY[0x26D690880](v79, v80);

    v63 = *(v59 + 8);
    v63(v61, v16);
    v63(v22, v16);
    return v81;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_26BC1227C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441F08, &qword_26BC15290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BC122F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26BC1313C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441F08, &qword_26BC15290);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26BC12408(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26BC1313C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441F08, &qword_26BC15290);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_26BC12510(uint64_t a1)
{
  sub_26BC1313C();
  if (v1 <= 0x3F)
  {
    sub_26BC12598(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BC12598(uint64_t a1)
{
  if (!qword_280441F20)
  {
    sub_26BC137CC();
    v1 = sub_26BC1393C();
    if (!v2)
    {
      atomic_store(v1, &qword_280441F20);
    }
  }
}

void *sub_26BC12604()
{
  result = sub_26BC12764(&unk_287C9B3F8);
  off_280441F28 = result;
  return result;
}

uint64_t DeviceClass.hashValue.getter(unsigned __int8 a1)
{
  sub_26BC13A7C();
  MEMORY[0x26D690AE0](a1);
  return sub_26BC13AAC();
}

unint64_t sub_26BC126B0(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x26D690AC0](*(v1 + 40), a1, 4);

  return sub_26BC126F8(v2, v3);
}

unint64_t sub_26BC126F8(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_26BC12764(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280441F38, &qword_26BC15338);
    v3 = sub_26BC13A0C();
    for (i = (a1 + 36); ; i += 8)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_26BC126B0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t _s9StorageUI11DeviceClassO7currentACvgZ_0()
{
  if (qword_280441AB0 != -1)
  {
    swift_once();
  }

  v0 = sub_26BC137DC();
  v1 = MGGetSInt32Answer();

  swift_beginAccess();
  v2 = off_280441F28;
  if (*(off_280441F28 + 2) && (v3 = sub_26BC126B0(v1), (v4 & 1) != 0))
  {
    v5 = *(v2[7] + v3);
  }

  else
  {
    v5 = 5;
  }

  swift_endAccess();
  return v5;
}

unint64_t sub_26BC1291C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280441F30;
  if (!qword_280441F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280441F30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceClass(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeviceClass(uint64_t result, unsigned int a2, unsigned int a3)
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

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_280443190 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_280443184 > a2)
  {
    return 1;
  }

  if (dword_280443184 < a2)
  {
    return 0;
  }

  return dword_280443188 >= a3;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_280443198 == -1)
  {
    if (qword_2804431A0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_2804431A0)
    {
      return _availability_version_check();
    }
  }

  if (qword_280443190 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_280443184 > a3)
      {
        return 1;
      }

      if (dword_280443184 >= a3)
      {
        return dword_280443188 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_2804431A0;
  if (qword_2804431A0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_2804431A0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x26D690C90](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_280443184, &dword_280443188);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}