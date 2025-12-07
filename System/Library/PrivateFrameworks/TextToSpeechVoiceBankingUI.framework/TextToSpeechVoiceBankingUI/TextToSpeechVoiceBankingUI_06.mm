uint64_t sub_26EEAA714(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for TTSVBVoicesByLocaleContainer(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_26EEAA80C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A70, &unk_26EF41580);
  v10 = *(type metadata accessor for TTSVBVoicesByLocaleContainer(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for TTSVBVoicesByLocaleContainer(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_26EEAA9E4(uint64_t a1)
{
  v2 = sub_26EF38AAC();
  v3 = MEMORY[0x28223BE20](v2);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v53 = &v42 - v6;
  v7 = MEMORY[0x277D84F98];
  v54 = MEMORY[0x277D84F98];
  v8 = *(a1 + 16);
  if (!v8)
  {
    return v7;
  }

  v10 = *(v5 + 16);
  v9 = v5 + 16;
  v44 = *(v9 + 64);
  v11 = *(v9 + 56);
  v47 = (v44 + 32) & ~v44;
  v48 = v10;
  v12 = a1 + v47;
  v51 = (v9 + 16);
  v43 = xmmword_26EF3C6B0;
  v45 = v2;
  v46 = v9;
  v50 = v11;
  while (1)
  {
    v52 = v8;
    v14 = v9;
    v48(v53, v12, v2);
    v18 = sub_26EF38A9C();
    v20 = v19;
    v22 = sub_26EE1FCF4(v18, v19);
    v23 = v7[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (v7[3] < v25)
    {
      sub_26EEA8FB8(v25, 1);
      v7 = v54;
      v27 = sub_26EE1FCF4(v18, v20);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_19;
      }

      v22 = v27;
    }

    if (v26)
    {

      v29 = v7[7];
      v30 = *v51;
      (*v51)(v49, v53, v2);
      v31 = *(v29 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v22) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_26EEA8DDC(0, v31[2] + 1, 1, v31, &qword_2806C7CC0, &qword_26EF3F438, MEMORY[0x277D70530]);
        *(v29 + 8 * v22) = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_26EEA8DDC((v33 > 1), v34 + 1, 1, v31, &qword_2806C7CC0, &qword_26EF3F438, MEMORY[0x277D70530]);
        *(v29 + 8 * v22) = v31;
      }

      v14 = v46;
      v13 = v47;
      v31[2] = v34 + 1;
      v15 = v50;
      v16 = v31 + v13 + v34 * v50;
      v2 = v45;
      v17 = v52;
      v30(v16, v49, v45);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7CC0, &qword_26EF3F438);
      v35 = v47;
      v36 = swift_allocObject();
      *(v36 + 16) = v43;
      (*v51)((v36 + v35), v53, v2);
      v7[(v22 >> 6) + 8] |= 1 << v22;
      v37 = (v7[6] + 16 * v22);
      *v37 = v18;
      v37[1] = v20;
      *(v7[7] + 8 * v22) = v36;
      v38 = v7[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_18;
      }

      v7[2] = v40;
      v15 = v50;
      v17 = v52;
    }

    v12 += v15;
    v8 = v17 - 1;
    v9 = v14;
    if (!v8)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_26EF3B86C();
  __break(1u);
  return result;
}

uint64_t sub_26EEAADA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBVoicesByLocaleContainer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEAAE08()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26EE15538;

  return sub_26EEA7DA0(v3, v4, v5, v2);
}

uint64_t sub_26EEAAF18(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26EF37FEC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_26EEAAFD8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_26EF37FEC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26EEAB07C(uint64_t a1)
{
  sub_26EEAB100(319);
  if (v1 <= 0x3F)
  {
    sub_26EF37FEC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26EEAB100(uint64_t a1)
{
  if (!qword_2806C8A58)
  {
    sub_26EF38AAC();
    v1 = sub_26EF3B27C();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C8A58);
    }
  }
}

void sub_26EEAB160(uint64_t a1)
{
  sub_26EE11978(319, &qword_2806C8A60, &qword_2806C7D20, &qword_26EF412D0);
  if (v1 <= 0x3F)
  {
    sub_26EE11978(319, &qword_2806C8A68, &qword_2806C8908, &qword_26EF41090);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_26EEAB290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806CD470;
  if (!qword_2806CD470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CD470);
  }

  return result;
}

uint64_t sub_26EEAB2E4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26EE05D7C;

  return sub_26EEA8554(v3, v4, v5, v2);
}

uint64_t sub_26EEAB378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBVoicesByLocaleContainer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEAB3DC(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBVoicesByLocaleContainer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CompatibilitySection(uint64_t a1)
{
  result = qword_2806CD600;
  if (!qword_2806CD600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EEAB48C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CompatibilitySection(0);
  v34 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = v4;
  v36 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26EF387DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A88, &qword_26EF41598);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v38 = v29 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A90, &unk_26EF415A0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v37 = v29 - v14;
  v15 = sub_26EEABA18();
  LOBYTE(v39) = v15;
  v40[0] = 3;
  sub_26EEABDA8(v15, v16, v17);
  if (sub_26EF3B0AC())
  {
    v18 = 1;
  }

  else
  {
    v19 = (*(v6 + 104))(v8, *MEMORY[0x277CE76B8], v5);
    v29[1] = v29;
    v20 = MEMORY[0x28223BE20](v19);
    MEMORY[0x28223BE20](v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C08, &qword_26EF3F0C8);
    v33 = a1;
    v30 = v9;
    v31 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8AA0, &qword_26EF415B0);
    sub_26EE63944();
    v32 = v12;
    sub_26EE154C8(&qword_2806C8AA8, &qword_2806C8AA0, &qword_26EF415B0, MEMORY[0x277CE1138]);
    v21 = v38;
    sub_26EF3878C();
    v22 = *(v1 + 56);
    v40[0] = *(v1 + 48);
    v41 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
    sub_26EF3AB1C();
    v23 = v36;
    sub_26EEAC104(v1, v36);
    v24 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v25 = swift_allocObject();
    sub_26EEAC16C(v23, v25 + v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8AB0, qword_26EF415B8);
    sub_26EE154C8(&qword_2806C8AB8, &qword_2806C8A88, &qword_26EF41598, MEMORY[0x277CE7698]);
    a1 = v33;
    sub_26EE154C8(&qword_2806C8AC0, &qword_2806C8AB0, qword_26EF415B8, MEMORY[0x277CDDA18]);
    v12 = v32;
    v26 = v37;
    v27 = v30;
    sub_26EF3A8BC();

    (*(v31 + 8))(v21, v27);
    (*(v13 + 32))(a1, v26, v12);
    v18 = 0;
  }

  return (*(v13 + 56))(a1, v18, 1, v12);
}

uint64_t sub_26EEABA18()
{
  v1 = sub_26EF37EDC();
  v22 = *(v1 - 8);
  v23 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26EF39DDC();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_26EF38AAC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CompatibilitySection(0);
  sub_26EE13B88(v0 + *(v14 + 32), v9, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_26EE14578(v9, &qword_2806C7080, &unk_26EF3DBF0);
    return 3;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v16 = *(v0 + 16);
    v17 = *(v0 + 24);

    if ((v17 & 1) == 0)
    {
      sub_26EF3B46C();
      v19 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();

      v18 = (*(v21 + 8))(v6, v4);
      v16 = v24;
    }

    MEMORY[0x274380B50](v18);
    v20 = (*(*v16 + 168))(v3);

    (*(v22 + 8))(v3, v23);
    (*(v11 + 8))(v13, v10);
    return v20;
  }
}

unint64_t sub_26EEABDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C8A98;
  if (!qword_2806C8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8A98);
  }

  return result;
}

uint64_t sub_26EEABE20@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CompatibilitySection(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23[-v7];
  v9 = sub_26EE17094();
  v10._object = 0x800000026EF46200;
  v11 = v9 & 1;
  v10._countAndFlagsBits = 0xD00000000000001ALL;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v10, v11, 0);
  sub_26EEAE310();
  v12 = sub_26EF3961C();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  sub_26EEAC104(v1, &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_26EEAC16C(&v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13);
  sub_26EF3874C();
  v15 = sub_26EEABA18();
  v23[15] = v15;
  v23[14] = 0;
  sub_26EEABDA8(v15, v16, v17);
  v18 = sub_26EF3B0AC();
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = (v18 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C08, &qword_26EF3F0C8);
  v22 = (a1 + *(result + 36));
  *v22 = KeyPath;
  v22[1] = sub_26EE274EC;
  v22[2] = v20;
  return result;
}

uint64_t sub_26EEAC0AC@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  *a2 = sub_26EF39E4C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8AF0, &qword_26EF41658);
  return sub_26EEAE92C(v4, a2 + *(v5 + 44));
}

uint64_t sub_26EEAC104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompatibilitySection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEAC16C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompatibilitySection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEAC1D0()
{
  type metadata accessor for CompatibilitySection(0);
  type metadata accessor for PrepareForCloudView(0);
  sub_26EEAFAE0(&qword_2806C8AE8, type metadata accessor for PrepareForCloudView, &unk_26EF3FB00);
  return sub_26EF39ADC();
}

uint64_t sub_26EEAC2A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CompatibilitySection(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_26EEAC104(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_26EEAC16C(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  return sub_26EE79EC0(sub_26EEAF854, v8, a2);
}

double sub_26EEAC3A4(uint64_t a1)
{
  v2 = type metadata accessor for CompatibilitySection(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_26EF3B30C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_26EEAC104(a1, v5);
  sub_26EF3B2DC();
  v10 = sub_26EF3B2CC();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_26EEAC16C(v5, v12 + v11);
  sub_26EE2C388(0, 0, v8, &unk_26EF41640, v12);

  return result;
}

uint64_t sub_26EEAC55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v4[5] = swift_task_alloc();
  v5 = sub_26EF38AAC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_26EF3883C();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_26EF37EDC();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_26EF39DDC();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = sub_26EF3B2DC();
  v4[19] = sub_26EF3B2CC();
  v9 = swift_task_alloc();
  v4[20] = v9;
  *v9 = v4;
  v9[1] = sub_26EEAC7B4;

  return sub_26EEACE5C();
}

uint64_t sub_26EEAC7B4()
{
  *(*v1 + 168) = v0;

  v3 = sub_26EF3B29C();
  if (v0)
  {
    v4 = sub_26EEAC9B0;
  }

  else
  {
    v4 = sub_26EEAC910;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_26EEAC910()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26EEAC9B0()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);

  v5 = type metadata accessor for CompatibilitySection(0);
  sub_26EE13B88(v4 + *(v5 + 32), v3, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v6 = *(v0 + 40);

    sub_26EE14578(v6, &qword_2806C7080, &unk_26EF3DBF0);
  }

  else
  {
    v50 = v5;
    v7 = *(v0 + 32);
    (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), *(v0 + 48));
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);

    v11 = v8;
    if ((v9 & 1) == 0)
    {
      v12 = *(v0 + 128);
      v13 = *(v0 + 136);
      v14 = *(v0 + 120);
      sub_26EF3B46C();
      v15 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();

      v10 = (*(v12 + 8))(v13, v14);
      v11 = *(v0 + 16);
    }

    v17 = *(v0 + 104);
    v16 = *(v0 + 112);
    v18 = *(v0 + 96);
    MEMORY[0x274380B50](v10);
    (*(*v11 + 160))(3, v16);

    v49 = *(v17 + 8);
    v49(v16, v18);

    if ((v9 & 1) == 0)
    {
      v21 = *(v0 + 128);
      v20 = *(v0 + 136);
      v22 = *(v0 + 120);
      sub_26EF3B46C();
      v23 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();

      v19 = (*(v21 + 8))(v20, v22);
      v8 = *(v0 + 24);
    }

    v24 = *(v0 + 168);
    v25 = *(v0 + 112);
    v27 = *(v0 + 88);
    v26 = *(v0 + 96);
    v28 = *(v0 + 80);
    v48 = *(v0 + 72);
    v29 = *(v0 + 32);
    MEMORY[0x274380B50](v19);
    (*(*v8 + 152))(v25, *(v29 + *(v50 + 36)));

    v49(v25, v26);
    v30 = sub_26EE27DAC();
    (*(v28 + 16))(v27, v30, v48);
    v31 = v24;
    v32 = sub_26EF3881C();
    v33 = sub_26EF3B45C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 168);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      v37 = v34;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v38;
      *v36 = v38;
      _os_log_impl(&dword_26EE01000, v32, v33, "VoiceManagementView: Unable to create supplementary model. %@", v35, 0xCu);
      sub_26EE14578(v36, &qword_2806C7140, &unk_26EF3E420);
      MEMORY[0x2743842A0](v36, -1, -1);
      MEMORY[0x2743842A0](v35, -1, -1);
    }

    v39 = *(v0 + 168);
    v41 = *(v0 + 80);
    v40 = *(v0 + 88);
    v43 = *(v0 + 64);
    v42 = *(v0 + 72);
    v44 = *(v0 + 48);
    v45 = *(v0 + 56);

    (*(v45 + 8))(v43, v44);
    (*(v41 + 8))(v40, v42);
  }

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_26EEACE5C()
{
  v1[5] = v0;
  v2 = sub_26EF391EC();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v3 = sub_26EF37EDC();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v4 = sub_26EF39DDC();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v5 = sub_26EF3883C();
  v1[18] = v5;
  v1[19] = *(v5 - 8);
  v1[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  v1[21] = swift_task_alloc();
  v6 = sub_26EF38DBC();
  v1[22] = v6;
  v1[23] = *(v6 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v1[26] = swift_task_alloc();
  v7 = sub_26EF38AAC();
  v1[27] = v7;
  v1[28] = *(v7 - 8);
  v1[29] = swift_task_alloc();
  sub_26EF3B2DC();
  v1[30] = sub_26EF3B2CC();
  v9 = sub_26EF3B29C();
  v1[31] = v9;
  v1[32] = v8;

  return MEMORY[0x2822009F8](sub_26EEAD1BC, v9, v8);
}

uint64_t sub_26EEAD1BC()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[5];
  v5 = type metadata accessor for CompatibilitySection(0);
  sub_26EE13B88(v4 + *(v5 + 32), v3, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[26];

    sub_26EE14578(v6, &qword_2806C7080, &unk_26EF3DBF0);

    v7 = v0[1];

    return v7();
  }

  v9 = v0[22];
  v10 = v0[23];
  v11 = v0[21];
  (*(v0[28] + 32))(v0[29], v0[26], v0[27]);
  sub_26EEAEDF8(v11);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    sub_26EE14578(v0[21], &qword_2806C7088, &unk_26EF3E330);
LABEL_9:
    v12 = v0[5];
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);

    if ((v14 & 1) == 0)
    {
      v17 = v0[16];
      v16 = v0[17];
      v18 = v0[15];
      sub_26EF3B46C();
      v19 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();

      v15 = (*(v17 + 8))(v16, v18);
      v13 = v0[2];
      v12 = v0[5];
    }

    v20 = v0[13];
    v21 = v0[10];
    v22 = v0[11];
    MEMORY[0x274380B50](v15);
    (*(*v13 + 160))(1, v20);

    v23 = *(v22 + 8);
    v0[37] = v23;
    v0[38] = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v20, v21);
    v24 = *v12;
    if (*(v12 + 8) == 1)
    {
      v25 = v24;
    }

    else
    {
      v27 = v0[16];
      v26 = v0[17];
      v28 = v0[15];

      sub_26EF3B46C();
      v29 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v24, 0);
      (*(v27 + 8))(v26, v28);
      v25 = v0[3];
    }

    v0[39] = v25;
    MEMORY[0x274380B50]();
    sub_26EF391BC();
    sub_26EF391CC();
    v30 = swift_task_alloc();
    v0[40] = v30;
    *v30 = v0;
    v30[1] = sub_26EEADD24;
    v31 = v0[12];
    v33 = v0[8];
    v32 = v0[9];

    return sub_26EED7F5C(v31, v32, v33);
  }

  (*(v0[23] + 32))(v0[25], v0[21], v0[22]);
  if (sub_26EF38D8C() == 7)
  {
    (*(v0[23] + 8))(v0[25], v0[22]);
    goto LABEL_9;
  }

  v34 = v0[24];
  v35 = v0[25];
  v36 = v0[22];
  v37 = v0[23];
  v39 = v0[19];
  v38 = v0[20];
  v40 = v0[18];
  v41 = sub_26EE27DAC();
  (*(v39 + 16))(v38, v41, v40);
  (*(v37 + 16))(v34, v35, v36);
  v42 = sub_26EF3881C();
  v43 = sub_26EF3B45C();
  v44 = os_log_type_enabled(v42, v43);
  v46 = v0[23];
  v45 = v0[24];
  v47 = v0[22];
  if (v44)
  {
    v48 = swift_slowAlloc();
    *v48 = 134217984;
    v49 = sub_26EF38D8C();
    v50 = *(v46 + 8);
    v50(v45, v47);
    *(v48 + 4) = v49;
    _os_log_impl(&dword_26EE01000, v42, v43, "VoiceManagementView: Enhanced model exists but %ld to complete training. Removing and trying again.", v48, 0xCu);
    MEMORY[0x2743842A0](v48, -1, -1);
  }

  else
  {
    v50 = *(v46 + 8);
    v50(v0[24], v0[22]);
  }

  v0[33] = v50;
  v52 = v0[19];
  v51 = v0[20];
  v53 = v0[18];
  v54 = v0[5];

  (*(v52 + 8))(v51, v53);
  v55 = *v54;
  if (*(v54 + 8) == 1)
  {
    v56 = v55;
  }

  else
  {
    v58 = v0[16];
    v57 = v0[17];
    v59 = v0[15];

    sub_26EF3B46C();
    v60 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v55, 0);
    (*(v58 + 8))(v57, v59);
    v56 = v0[4];
  }

  v0[34] = v56;
  MEMORY[0x274380E60]();
  v61 = swift_task_alloc();
  v0[35] = v61;
  *v61 = v0;
  v61[1] = sub_26EEAD8C0;
  v62 = v0[14];

  return VoiceBankingSession.deleteModel(modelID:)(v62);
}

uint64_t sub_26EEAD8C0()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  *(*v1 + 288) = v0;

  (*(v5 + 8))(v4, v6);

  v7 = *(v2 + 256);
  v8 = *(v2 + 248);
  if (v0)
  {
    v9 = sub_26EEAE09C;
  }

  else
  {
    v9 = sub_26EEADA78;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_26EEADA78()
{
  (*(v0 + 264))(*(v0 + 200), *(v0 + 176));
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  if ((v3 & 1) == 0)
  {
    v6 = *(v0 + 128);
    v5 = *(v0 + 136);
    v7 = *(v0 + 120);
    sub_26EF3B46C();
    v8 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();

    v4 = (*(v6 + 8))(v5, v7);
    v2 = *(v0 + 16);
    v1 = *(v0 + 40);
  }

  v9 = *(v0 + 104);
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  MEMORY[0x274380B50](v4);
  (*(*v2 + 160))(1, v9);

  v12 = *(v11 + 8);
  *(v0 + 296) = v12;
  *(v0 + 304) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v9, v10);
  v13 = *v1;
  if (*(v1 + 8) == 1)
  {
    v14 = v13;
  }

  else
  {
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = *(v0 + 120);

    sub_26EF3B46C();
    v18 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v13, 0);
    (*(v16 + 8))(v15, v17);
    v14 = *(v0 + 24);
  }

  *(v0 + 312) = v14;
  MEMORY[0x274380B50]();
  sub_26EF391BC();
  sub_26EF391CC();
  v19 = swift_task_alloc();
  *(v0 + 320) = v19;
  *v19 = v0;
  v19[1] = sub_26EEADD24;
  v20 = *(v0 + 96);
  v22 = *(v0 + 64);
  v21 = *(v0 + 72);

  return sub_26EED7F5C(v20, v21, v22);
}

uint64_t sub_26EEADD24()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v15 = *(*v1 + 296);
  v14 = *(*v1 + 96);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *(*v1 + 48);
  *(*v1 + 328) = v0;

  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);
  v15(v14, v4);
  v10 = *(v2 + 256);
  v11 = *(v2 + 248);
  if (v0)
  {
    v12 = sub_26EEAE1E8;
  }

  else
  {
    v12 = sub_26EEADF7C;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_26EEADF7C()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[28];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26EEAE09C()
{
  v1 = v0[33];
  v2 = v0[25];
  v3 = v0[22];

  v1(v2, v3);
  (*(v0[28] + 8))(v0[29], v0[27]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26EEAE1E8()
{

  (*(v0[28] + 8))(v0[29], v0[27]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26EEAE310()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  MEMORY[0x28223BE20](v1 - 8);
  v40 = &v39 - v2;
  v3 = sub_26EF38DBC();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26EF37EDC();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26EF39DDC();
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39 - v12;
  v14 = sub_26EF38AAC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CompatibilitySection(0);
  sub_26EE13B88(v0 + *(v18 + 32), v13, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v19 = &qword_2806C7080;
    v20 = &unk_26EF3DBF0;
LABEL_3:
    sub_26EE14578(v13, v19, v20);
    return 0;
  }

  (*(v15 + 32))(v17, v13, v14);
  v22 = *(v0 + 16);
  v23 = *(v0 + 24);

  v25 = v0;
  if ((v23 & 1) == 0)
  {
    sub_26EF3B46C();
    v26 = sub_26EF3A36C();
    sub_26EF3880C();

    v25 = v0;
    sub_26EF39DCC();
    swift_getAtKeyPath();

    v24 = (*(v43 + 8))(v10, v8);
    v22 = v46;
  }

  MEMORY[0x274380B50](v24);
  v27 = (*(*v22 + 168))(v7);

  (*(v44 + 8))(v7, v45);
  (*(v15 + 8))(v17, v14);
  if (v27 > 1u)
  {
    if (v27 != 2)
    {
      return 0;
    }

    v13 = v40;
    sub_26EEAEDF8(v40);
    v33 = v41;
    v32 = v42;
    if ((*(v41 + 48))(v13, 1, v42) == 1)
    {
      v19 = &qword_2806C7088;
      v20 = &unk_26EF3E330;
      goto LABEL_3;
    }

    v34 = v39;
    (*(v33 + 32))(v39, v13, v32);
    v35 = *(v25 + 32);
    if (v35)
    {
      v36 = *(*v35 + 88);

      v36(v37);

      v38 = sub_26EF38D2C();
      (*(v33 + 8))(v34, v32);
      return v38;
    }

    else
    {
      type metadata accessor for VoiceBankingBatteryMonitor(0);
      sub_26EEAFAE0(&qword_2806C79E8, type metadata accessor for VoiceBankingBatteryMonitor, &unk_26EF44B48);
      result = sub_26EF39BFC();
      __break(1u);
    }
  }

  else
  {
    v28 = sub_26EE17094();
    if (v27)
    {
      v29 = 0xEC000000474E4952;
      v30 = v28 & 1;
      v31 = 0x41504552505F4256;
    }

    else
    {
      v29 = 0x800000026EF461D0;
      v30 = v28 & 1;
      v31 = 0xD000000000000026;
    }

    return TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(*&v31, v30, 0)._countAndFlagsBits;
  }

  return result;
}

uint64_t sub_26EEAE92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_26EF3A2BC();
  v42 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7868, &unk_26EF41660);
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A70, &qword_26EF3EEF0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A18, &qword_26EF41230);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  v43 = a1;
  v19 = sub_26EEABA18();
  LOBYTE(v45) = v19;
  v47 = 0;
  sub_26EEABDA8(v19, v20, v21);
  if (sub_26EF3B0AC())
  {
    v22 = 1;
  }

  else
  {
    sub_26EF397DC();
    sub_26EF3A2AC();
    sub_26EE154C8(&qword_2806C7870, &qword_2806C7868, &unk_26EF41660, MEMORY[0x277CDD7F8]);
    sub_26EEAFAE0(&qword_2806C7A78, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    sub_26EF3A63C();
    (*(v42 + 8))(v5, v3);
    (*(v41 + 8))(v8, v6);
    v23 = &v12[*(v9 + 36)];
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A80, &qword_26EF3EEF8) + 28);
    v25 = *MEMORY[0x277CDF440];
    v26 = sub_26EF396EC();
    (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
    *v23 = swift_getKeyPath();
    sub_26EEA5A50(v12, v18);
    v22 = 0;
  }

  (*(v10 + 56))(v18, v22, 1, v9);
  v27 = sub_26EEAE310();
  if (v28)
  {
    v45 = v27;
    v46 = v28;
    sub_26EE12538(v27, v28, v29);
    v30 = sub_26EF3A5DC();
    v32 = v31;
    v34 = v33;
    v36 = v35 & 1;
    sub_26EE13B20(v30, v31, v35 & 1);
  }

  else
  {
    v30 = 0;
    v32 = 0;
    v36 = 0;
    v34 = 0;
  }

  sub_26EEAFB28(v18, v16);
  v37 = v44;
  sub_26EEAFB28(v16, v44);
  v38 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8AF8, &unk_26EF416A0) + 48));
  sub_26EEAFB98(v30, v32, v36, v34);
  sub_26EE5AAAC(v30, v32, v36, v34);
  *v38 = v30;
  v38[1] = v32;
  v38[2] = v36;
  v38[3] = v34;
  sub_26EEAFBDC(v18);
  sub_26EE5AAAC(v30, v32, v36, v34);
  return sub_26EEAFBDC(v16);
}

uint64_t sub_26EEAEDF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26EF391EC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v27 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v26 = &v20 - v7;
  v8 = sub_26EF38DBC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for CompatibilitySection(0);
  v13 = *(v1 + *(result + 36));
  v23 = *(v13 + 16);
  if (v23)
  {
    v21 = a1;
    v14 = 0;
    v24 = v9 + 16;
    v25 = v8;
    v15 = (v4 + 8);
    v22 = (v9 + 8);
    while (v14 < *(v13 + 16))
    {
      (*(v9 + 16))(v11, v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14, v8);
      sub_26EF38D1C();
      sub_26EF391CC();
      sub_26EEAFAE0(&qword_2806C7A60, MEMORY[0x277D70650], MEMORY[0x277D70668]);
      sub_26EF3B1DC();
      sub_26EF3B1DC();
      if (v30 == v28 && v31 == v29)
      {
        v19 = *v15;
        (*v15)(v27, v3);
        v19(v26, v3);

LABEL_11:
        a1 = v21;
        v8 = v25;
        (*(v9 + 32))(v21, v11, v25);
        v18 = 0;
        return (*(v9 + 56))(a1, v18, 1, v8);
      }

      v16 = sub_26EF3B82C();
      v17 = *v15;
      (*v15)(v27, v3);
      v17(v26, v3);

      if (v16)
      {
        goto LABEL_11;
      }

      ++v14;
      v8 = v25;
      result = (*v22)(v11, v25);
      if (v23 == v14)
      {
        v18 = 1;
        a1 = v21;
        return (*(v9 + 56))(a1, v18, 1, v8);
      }
    }

    __break(1u);
  }

  else
  {
    v18 = 1;
    return (*(v9 + 56))(a1, v18, 1, v8);
  }

  return result;
}

uint64_t sub_26EEAF184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for VoiceBankingSession(0);
  sub_26EEAFAE0(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  *a3 = sub_26EF3973C();
  *(a3 + 8) = v6 & 1;
  type metadata accessor for VoiceBankingCompatibilityModel(0);
  sub_26EEAFAE0(&qword_2806C8940, type metadata accessor for VoiceBankingCompatibilityModel, &unk_26EF41998);
  *(a3 + 16) = sub_26EF3973C();
  *(a3 + 24) = v7 & 1;
  type metadata accessor for VoiceBankingBatteryMonitor(0);
  sub_26EEAFAE0(&qword_2806C79E8, type metadata accessor for VoiceBankingBatteryMonitor, &unk_26EF44B48);
  *(a3 + 32) = sub_26EF39C1C();
  *(a3 + 40) = v8;
  sub_26EF3AAEC();
  *(a3 + 48) = v11;
  *(a3 + 56) = v12;
  v9 = type metadata accessor for CompatibilitySection(0);
  result = sub_26EEA4904(a1, a3 + *(v9 + 32));
  *(a3 + *(v9 + 36)) = a2;
  return result;
}

uint64_t sub_26EEAF344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_26EEAF424(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_26EEAF4EC(uint64_t a1)
{
  sub_26EEAF690(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_26EEAF690(319, &qword_2806C8AC8, type metadata accessor for VoiceBankingCompatibilityModel, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_26EE5A8A0(319);
      if (v3 <= 0x3F)
      {
        sub_26EE38E90();
        if (v4 <= 0x3F)
        {
          sub_26EEAF690(319, &qword_2806C70A8, MEMORY[0x277D70530], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_26EEAF690(319, &qword_2806C8AD0, MEMORY[0x277D705D8], MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26EEAF690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_26EEAF6F8()
{
  result = qword_2806C8AD8;
  if (!qword_2806C8AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8AE0, &unk_26EF41628);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8A88, &qword_26EF41598);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8AB0, qword_26EF415B8);
    sub_26EE154C8(&qword_2806C8AB8, &qword_2806C8A88, &qword_26EF41598, MEMORY[0x277CE7698]);
    sub_26EE154C8(&qword_2806C8AC0, &qword_2806C8AB0, qword_26EF415B8, MEMORY[0x277CDDA18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8AD8);
  }

  return result;
}

double sub_26EEAF854()
{
  v1 = *(type metadata accessor for CompatibilitySection(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26EEAC3A4(v2);
}

uint64_t sub_26EEAF8B4()
{
  v1 = type metadata accessor for CompatibilitySection(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));

  v5 = *(v1 + 32);
  v6 = sub_26EF38AAC();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EEAFA18()
{
  v2 = *(type metadata accessor for CompatibilitySection(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE05D7C;

  return sub_26EEAC55C(v4, v5, v6, v0 + v3);
}

uint64_t sub_26EEAFAE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26EEAFB28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A18, &qword_26EF41230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEAFB98(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26EE13B20(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_26EEAFBDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A18, &qword_26EF41230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_13()
{
  v1 = type metadata accessor for CompatibilitySection(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  sub_26EE05C9C(*(v0 + v4), *(v0 + v4 + 8));

  v5 = *(v1 + 32);
  v6 = sub_26EF38AAC();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v4 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v4 + v5, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_26EEAFDA0()
{
  type metadata accessor for CompatibilitySection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  return sub_26EF3AB0C();
}

uint64_t sub_26EEAFE58(void *a1, uint64_t a2)
{
  sub_26EF38BDC();
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8B68, &qword_26EF417D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8B40, &qword_26EF41710);
  sub_26EE154C8(&qword_2806C8B70, &qword_2806C8B68, &qword_26EF417D0, MEMORY[0x277D83980]);
  sub_26EEB108C(&qword_2806C8B78, MEMORY[0x277D70580], MEMORY[0x277D70588]);
  sub_26EE154C8(&qword_2806C8B38, &qword_2806C8B40, &qword_26EF41710, MEMORY[0x277CDF028]);
  return sub_26EF3ACEC();
}

uint64_t sub_26EEAFFF0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_26EF38BEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v7 + 32))(v10 + v9, &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v11 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8B80, &qword_26EF417D8);
  sub_26EE154C8(&qword_2806C8B88, &qword_2806C8B80, &qword_26EF417D8, MEMORY[0x277CE1138]);
  return sub_26EF3AB4C();
}

void sub_26EEB01B4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26EF38BEC();
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v6 + 16))(v8, a3);
    v9 = a1;
    sub_26EF1051C(v8);
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EEB108C(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
    sub_26EF39BFC();
    __break(1u);
  }
}

uint64_t sub_26EEB02E8@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22[1] = a2;
  v5 = sub_26EF38BEC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_26EF38BCC();
  v26 = v9;
  sub_26EE12538(v25, v9, v10);
  v11 = sub_26EF3A5DC();
  v23 = v14;
  if (a1)
  {
    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = a1;
    sub_26EF10340();

    sub_26EEB108C(&qword_2806C8B90, MEMORY[0x277D70580], MEMORY[0x277D70590]);
    sub_26EF3B1DC();
    sub_26EF3B1DC();
    (*(v6 + 8))(v8, v5);
    if (v25 == v24)
    {
      v19 = sub_26EF3AA8C();
    }

    else
    {
      v19 = 0;
    }

    v20 = v23 & 1;
    sub_26EE13B20(v15, v16, v23 & 1);
    *a3 = v15;
    *(a3 + 8) = v16;
    *(a3 + 16) = v20;
    *(a3 + 24) = v17;
    *(a3 + 32) = v19;

    sub_26EE12ABC(v15, v16, v20);
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EEB108C(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EEB0554(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C83C0, &qword_26EF40210);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  v6 = sub_26EF39E4C();
  sub_26EEB0950(a1, &v20);
  v7 = v20;
  v8 = v21[0];
  v13 = *(v21 + 8);
  v19 = 1;
  v18 = v21[0];
  v9 = sub_26EF3A99C();
  v14 = v6;
  v15[0] = 1;
  *&v15[8] = v7;
  v15[24] = v8;
  v16 = v13;
  v17 = v9;
  v10 = *MEMORY[0x277CDF9A8];
  v11 = sub_26EF39A3C();
  (*(*(v11 - 8) + 104))(v5, v10, v11);
  sub_26EEB108C(&qword_2806C83D0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_26EF3B0AC();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8B10, &unk_26EF416F0);
    sub_26EEB07BC();
    sub_26EE154C8(&qword_2806C83D8, &qword_2806C83C0, &qword_26EF40210, MEMORY[0x277D84470]);
    sub_26EF3A73C();
    sub_26EE14578(v5, &qword_2806C83C0, &qword_26EF40210);
    v21[1] = *&v15[16];
    v21[2] = v16;
    v22 = v17;
    v20 = v14;
    v21[0] = *v15;
    return sub_26EE14578(&v20, &qword_2806C8B10, &unk_26EF416F0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26EEB07BC()
{
  result = qword_2806C8B18;
  if (!qword_2806C8B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8B10, &unk_26EF416F0);
    sub_26EE154C8(&qword_2806C8B20, &qword_2806C8B28, &unk_26EF41700, MEMORY[0x277CE1138]);
    sub_26EE154C8(&qword_2806C6F68, &qword_2806C6F70, &qword_26EF3FF20, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8B18);
  }

  return result;
}

unint64_t sub_26EEB08A0()
{
  result = qword_2806C8B30;
  if (!qword_2806C8B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8B08, &qword_26EF416E8);
    sub_26EE154C8(&qword_2806C8B38, &qword_2806C8B40, &qword_26EF41710, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8B30);
  }

  return result;
}

uint64_t sub_26EEB0950@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_26EF38BEC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    sub_26EF10340();

    v10 = sub_26EF38BCC();
    v12 = v11;
    v13 = (*(v6 + 8))(v8, v5);
    v29[2] = v10;
    v29[3] = v12;
    sub_26EE12538(v13, v14, v15);
    v16 = sub_26EF3A5DC();
    v18 = v17;
    LOBYTE(v12) = v19;
    sub_26EF3A4BC();
    v20 = sub_26EF3A5BC();
    v22 = v21;
    v24 = v23;
    v26 = v25;

    sub_26EE12ABC(v16, v18, v12 & 1);

    v27 = sub_26EF3AA8C();
    *a3 = v20;
    *(a3 + 8) = v22;
    *(a3 + 16) = v24 & 1;
    *(a3 + 24) = v26;
    *(a3 + 32) = v27;
    sub_26EE13B20(v20, v22, v24 & 1);

    sub_26EE12ABC(v20, v22, v24 & 1);
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EEB108C(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EEB0B88()
{
  type metadata accessor for VoiceBankingAudioServiceViewModel(0);
  sub_26EEB108C(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);

  return sub_26EF39C1C();
}

uint64_t sub_26EEB0C18@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8B00, &qword_26EF416E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8B08, &qword_26EF416E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8B10, &unk_26EF416F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C83C0, &qword_26EF40210);
  sub_26EEB07BC();
  sub_26EE154C8(&qword_2806C83D8, &qword_2806C83C0, &qword_26EF40210, MEMORY[0x277D84470]);
  swift_getOpaqueTypeConformance2();
  sub_26EEB08A0();
  sub_26EF3A52C();
  v2 = sub_26EF3A3DC();
  sub_26EF3962C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8B48, qword_26EF41718);
  v12 = a1 + *(result + 36);
  *v12 = v2;
  *(v12 + 8) = v4;
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
  return result;
}

unint64_t sub_26EEB0DE4()
{
  result = qword_2806C8B50;
  if (!qword_2806C8B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8B48, qword_26EF41718);
    sub_26EE154C8(&qword_2806C8B58, &qword_2806C8B60, &unk_26EF417A8, MEMORY[0x277CDE5B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8B50);
  }

  return result;
}

uint64_t sub_26EEB0E9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26EEB0EDC()
{
  v1 = sub_26EF38BEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_26EEB0FA0()
{
  v1 = *(sub_26EF38BEC() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_26EEB01B4(v2, v3, v4);
}

__n128 sub_26EEB1004@<Q0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = sub_26EF39E4C();
  sub_26EEB02E8(v4, v5, &v11);
  v7 = v12;
  v8 = v13;
  v9 = v14;
  result = v11;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  return result;
}

uint64_t sub_26EEB108C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id static VoiceManagementViewBridge.makeVoiceManagementViewController(voiceID:voiceName:dismissCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_26EF37EDC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VoiceManagementView(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);

  VoiceManagementView.init(voiceID:dismissCallback:)(v11, a4, a5, v14);
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8B98, &unk_26EF417E0));
  v16 = sub_26EF39F8C();
  v17 = sub_26EF3B0BC();
  [v16 setTitle_];

  return v16;
}

id VoiceManagementViewBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VoiceManagementViewBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceManagementViewBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VoiceManagementViewBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceManagementViewBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26EEB15B0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26EEB15F8()
{
  v1 = sub_26EF3872C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _UISolariumEnabled();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8080, &unk_26EF3FC30);
  v6 = swift_allocObject();
  if (v5)
  {
    *(v6 + 16) = xmmword_26EF3EE20;
    sub_26EF386CC();
    sub_26EF386EC();
    sub_26EF3871C();
  }

  else
  {
    *(v6 + 16) = xmmword_26EF3D070;
    sub_26EF386CC();
    sub_26EF386EC();
  }

  v8[1] = v6;
  sub_26EEB4244(&qword_2806C8088, MEMORY[0x277CE7670], MEMORY[0x277CE7680]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8090, &unk_26EF3FB80);
  sub_26EE154C8(&qword_2806C8098, &qword_2806C8090, &unk_26EF3FB80, MEMORY[0x277D83970]);
  sub_26EF3B68C();
  sub_26EF3AC8C();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_26EEB1834@<X0>(uint64_t a1@<X8>)
{
  v23[3] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BA0, &qword_26EF41838);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - v7;
  v9 = sub_26EE17094();
  v10._object = 0x800000026EF46240;
  v11 = v9 & 1;
  v10._countAndFlagsBits = 0xD000000000000018;
  v12 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v10, v11, 0);
  v23[1] = v12._object;
  v23[2] = v12._countAndFlagsBits;
  v13 = type metadata accessor for LanguagePickerView(0);
  sub_26EEB1C34(v1 + *(v13 + 24), v4);
  v25 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BA8, &qword_26EF41840);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BB0, &qword_26EF41848);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BB8, &unk_26EF41850);
  v16 = sub_26EE154C8(&qword_2806C8BC0, &qword_2806C8BB8, &unk_26EF41850, MEMORY[0x277CDE5A0]);
  v26 = v15;
  v27 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v14;
  v27 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26EF386BC();
  v24 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BC8, &unk_26EF42490);
  sub_26EE154C8(&qword_2806C8BD0, &qword_2806C8BA0, &qword_26EF41838, MEMORY[0x277CE7668]);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BD8, &unk_26EF41860);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BE0, &qword_26EF424A0);
  v20 = sub_26EEB2104();
  v26 = v19;
  v27 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v26 = v18;
  v27 = v21;
  swift_getOpaqueTypeConformance2();
  sub_26EF3A8EC();
  return (*(v6 + 8))(v8, v5);
}

uint64_t type metadata accessor for LanguagePickerView(uint64_t a1)
{
  result = qword_2806CD730;
  if (!qword_2806CD730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EEB1C34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEB1CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v18 = sub_26EF3A0BC();
  v16 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BB8, &unk_26EF41850);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BB0, &qword_26EF41848);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BF8, &qword_26EF41870);
  sub_26EEB25A8();
  sub_26EF3A50C();
  v13 = sub_26EE154C8(&qword_2806C8BC0, &qword_2806C8BB8, &unk_26EF41850, MEMORY[0x277CDE5A0]);
  sub_26EF3A83C();
  (*(v6 + 8))(v8, v5);
  sub_26EF3A0AC();
  LOBYTE(a1) = sub_26EF3A39C();
  sub_26EF3A38C();
  sub_26EF3A38C();
  if (sub_26EF3A38C() != a1)
  {
    sub_26EF3A38C();
  }

  v20 = v5;
  v21 = v13;
  swift_getOpaqueTypeConformance2();
  sub_26EF3A7FC();
  (*(v16 + 8))(v4, v18);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_26EEB1FD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BD8, &unk_26EF41860);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - v2;
  sub_26EEB21E8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BE0, &qword_26EF424A0);
  v5 = sub_26EEB2104();
  v8[0] = v4;
  v8[1] = v5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x274382230](v3, v0, OpaqueTypeConformance2);
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_26EEB2104()
{
  result = qword_2806C8BE8;
  if (!qword_2806C8BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BE0, &qword_26EF424A0);
    type metadata accessor for ToolbarCancelButton(255);
    sub_26EEB4244(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton, &unk_26EF44CA0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8BE8);
  }

  return result;
}

uint64_t sub_26EEB21E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C20, &qword_26EF41880);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - v2;
  v4 = type metadata accessor for ToolbarCancelButton(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BE0, &qword_26EF424A0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  if (_UISolariumEnabled())
  {
    (*(v1 + 56))(v10, 1, 1, v0);
    v13 = sub_26EEB4244(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton, &unk_26EF44CA0);
    v21 = v4;
    v22 = v13;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x274382260](v10, v0, OpaqueTypeConformance2);
    sub_26EEB26EC(v10);
  }

  else
  {
    v15 = sub_26EF36388();
    sub_26EF363D8(v15, v16, v6);
    v17 = sub_26EEB4244(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton, &unk_26EF44CA0);
    MEMORY[0x274382230](v6, v4, v17);
    (*(v1 + 16))(v10, v3, v0);
    (*(v1 + 56))(v10, 0, 1, v0);
    v21 = v4;
    v22 = v17;
    v18 = swift_getOpaqueTypeConformance2();
    MEMORY[0x274382260](v10, v0, v18);
    sub_26EEB26EC(v10);
    (*(v1 + 8))(v3, v0);
    sub_26EEB2754(v6);
  }

  v19 = sub_26EEB2104();
  MEMORY[0x274382230](v12, v7, v19);
  return sub_26EEB26EC(v12);
}

uint64_t sub_26EEB2530(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C10, &qword_26EF41878);
  sub_26EEB2638();
  return sub_26EF3AD6C();
}

unint64_t sub_26EEB25A8()
{
  result = qword_2806C8C00;
  if (!qword_2806C8C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BF8, &qword_26EF41870);
    sub_26EEB2638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8C00);
  }

  return result;
}

unint64_t sub_26EEB2638()
{
  result = qword_2806C8C08;
  if (!qword_2806C8C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8C10, &qword_26EF41878);
    sub_26EEB4244(&qword_2806C8C18, type metadata accessor for SelectionCell, &unk_26EF3D300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8C08);
  }

  return result;
}

uint64_t sub_26EEB26EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BE0, &qword_26EF424A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EEB2754(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarCancelButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26EEB27B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for LanguagePickerView(0);
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26EF3925C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v36 = &v32 - v10;
  v11 = sub_26EF39DDC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if (*(a1 + 8) == 1)
  {
    v17 = v16;
  }

  else
  {
    v33 = v13;

    sub_26EF3B46C();
    v18 = sub_26EF3A36C();
    v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v16, 0);
    (*(v12 + 8))(v15, v33);
    v17 = v40;
  }

  v19 = v36;
  (*(v7 + 16))(v36, v17 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationExperience, v6);

  (*(v7 + 104))(v37, *MEMORY[0x277D70688], v6);
  sub_26EEB4244(&qword_2806C8278, MEMORY[0x277D70698], MEMORY[0x277D706A8]);
  sub_26EF3B1DC();
  sub_26EF3B1DC();
  if (v40 == v38 && v41 == v39)
  {
    v20 = *(v7 + 8);
    v20(v37, v6);
    v20(v19, v6);

    v21 = MEMORY[0x277D70780];
  }

  else
  {
    v22 = sub_26EF3B82C();
    v23 = *(v7 + 8);
    v23(v37, v6);
    v23(v19, v6);

    v21 = MEMORY[0x277D70778];
    if (v22)
    {
      v21 = MEMORY[0x277D70780];
    }
  }

  v24 = *v21;
  v25 = sub_26EF38CCC();
  if (*(v25 + 16) && (v26 = v25, v27 = sub_26EEB3BD4(v24), (v28 & 1) != 0))
  {
    v29 = *(*(v26 + 56) + 8 * v27);

    v40 = v29;
    sub_26EEB3C68(a1, v5);
    v30 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v31 = swift_allocObject();
    sub_26EEB3DEC(v5, v31 + v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C28, &qword_26EF418F8);
    sub_26EF38CDC();
    type metadata accessor for SelectionCell(0);
    sub_26EE154C8(&qword_2806C8C30, &qword_2806C8C28, &qword_26EF418F8, MEMORY[0x277D83980]);
    sub_26EEB4244(&qword_2806C8C18, type metadata accessor for SelectionCell, &unk_26EF3D300);
    sub_26EEB4244(&qword_2806C8C38, MEMORY[0x277D705B0], MEMORY[0x277D705B8]);
    sub_26EF3ACFC();
  }

  else
  {

    __break(1u);
  }
}

int *sub_26EEB2D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v22 = a3;
  v5 = type metadata accessor for LanguagePickerView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = sub_26EF38CDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_26EF38C8C();
  v21 = v12;
  (*(v9 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  sub_26EEB3C68(a2, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = (v10 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v13, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  sub_26EEB3DEC(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = sub_26EE1709C();
  v17 = sub_26EE170A4();
  return sub_26EE170E0(v11, v21, 1, v16, v17, v18, v19, sub_26EEB4074, v22, v15);
}

void sub_26EEB2F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF39DDC();
  v58 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v57 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_26EF38CDC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v51[-v11];
  v13 = sub_26EF3883C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v51[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_26EE27DAC();
  v59 = v14;
  v60 = v13;
  (*(v14 + 16))(v16, v17, v13);
  v18 = *(v7 + 16);
  v18(v12, a1, v6);
  v18(v10, a1, v6);
  v19 = sub_26EF3881C();
  v20 = sub_26EF3B47C();
  v21 = os_log_type_enabled(v19, v20);
  v61 = v7;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v53 = v19;
    v23 = v22;
    v54 = swift_slowAlloc();
    v62[0] = v54;
    *v23 = 136315394;
    v52 = v20;
    v24 = sub_26EF38CAC();
    v55 = v4;
    v56 = a2;
    v25 = a1;
    v27 = v26;
    v28 = *(v7 + 8);
    v28(v12, v6);
    v29 = sub_26EE40670(v24, v27, v62);
    a1 = v25;
    v4 = v55;

    *(v23 + 4) = v29;
    *(v23 + 12) = 2080;
    v30 = sub_26EF38C7C();
    v32 = v31;
    v28(v10, v6);
    a2 = v56;
    v33 = sub_26EE40670(v30, v32, v62);

    *(v23 + 14) = v33;
    v34 = v53;
    _os_log_impl(&dword_26EE01000, v53, v52, "User has chosen to create an %s voice. Using %s asr asset.", v23, 0x16u);
    v35 = v54;
    swift_arrayDestroy();
    MEMORY[0x2743842A0](v35, -1, -1);
    MEMORY[0x2743842A0](v23, -1, -1);
  }

  else
  {

    v36 = *(v7 + 8);
    v36(v10, v6);
    v36(v12, v6);
  }

  (*(v59 + 8))(v16, v60);
  v37 = *a2;
  if (*(a2 + 8) == 1)
  {
    v38 = v37;
  }

  else
  {

    sub_26EF3B46C();
    v39 = sub_26EF3A36C();
    sub_26EF3880C();

    v40 = v57;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v37, 0);
    (*(v58 + 8))(v40, v4);
    v38 = v62[0];
  }

  v41 = v61;
  v42 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationLocale;
  swift_beginAccess();
  (*(v41 + 24))(&v38[v42], a1, v6);
  swift_endAccess();

  if (*(a2 + 16))
  {

    v43 = VoiceBankingNavigationModel.itemPath.modify(v62);
    v45 = v44;
    v46 = *v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v45 = v46;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v46 = sub_26EEB3AD4(0, *(v46 + 2) + 1, 1, v46);
      *v45 = v46;
    }

    v49 = *(v46 + 2);
    v48 = *(v46 + 3);
    if (v49 >= v48 >> 1)
    {
      v46 = sub_26EEB3AD4((v48 > 1), v49 + 1, 1, v46);
      *v45 = v46;
    }

    *(v46 + 2) = v49 + 1;
    v50 = &v46[16 * v49];
    *(v50 + 4) = 3;
    v50[40] = 1;
    (v43)(v62, 0);
  }

  else
  {
    type metadata accessor for VoiceBankingNavigationModel(0);
    sub_26EEB4244(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
    sub_26EF39BFC();
    __break(1u);
  }
}

uint64_t sub_26EEB359C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for VoiceBankingSession(0);
  sub_26EEB4244(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  *a1 = sub_26EF3973C();
  *(a1 + 8) = v2 & 1;
  type metadata accessor for VoiceBankingNavigationModel(0);
  sub_26EEB4244(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
  *(a1 + 16) = sub_26EF39C1C();
  *(a1 + 24) = v3;
  type metadata accessor for LanguagePickerView(0);
  return sub_26EEB15F8();
}

uint64_t sub_26EEB36B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_26EEB378C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26EEB383C(uint64_t a1)
{
  sub_26EEB3938(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_26EE1F73C(319);
    if (v2 <= 0x3F)
    {
      sub_26EEB3938(319, &qword_2806C8070, MEMORY[0x277CE7670], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26EEB3938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_26EEB399C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BA0, &qword_26EF41838);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BC8, &unk_26EF42490);
  sub_26EE154C8(&qword_2806C8BD0, &qword_2806C8BA0, &qword_26EF41838, MEMORY[0x277CE7668]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BD8, &unk_26EF41860);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BE0, &qword_26EF424A0);
  sub_26EEB2104();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

char *sub_26EEB3AD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C40, &unk_26EF41CA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

unint64_t sub_26EEB3BD4(uint64_t a1)
{
  sub_26EF3B0FC();
  sub_26EF3B87C();
  sub_26EF3B16C();
  v2 = sub_26EF3B8CC();

  return sub_26EEB4140(a1, v2);
}

uint64_t sub_26EEB3C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguagePickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEB3CCC()
{
  v1 = (type metadata accessor for LanguagePickerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));

  v5 = v0 + v3 + v1[8];

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830) + 32);
  v7 = sub_26EF3872C();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EEB3DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguagePickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

int *sub_26EEB3E50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for LanguagePickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26EEB2D68(a1, v6, a2);
}

uint64_t sub_26EEB3ED0()
{
  v1 = sub_26EF38CDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for LanguagePickerView(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  sub_26EE05C9C(*(v0 + v8), *(v0 + v8 + 8));

  v11 = v0 + v8 + v6[8];

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830) + 32);
  v13 = sub_26EF3872C();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

void sub_26EEB4074()
{
  v1 = *(sub_26EF38CDC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for LanguagePickerView(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_26EEB2F84(v0 + v2, v5);
}

unint64_t sub_26EEB4140(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_26EF3B0FC();
      v8 = v7;
      if (v6 == sub_26EF3B0FC() && v8 == v9)
      {
        break;
      }

      v11 = sub_26EF3B82C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_26EEB4244(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26EEB4290()
{
  type metadata accessor for VoiceBankingCompatibilityModel(0);
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(sub_26EF3914C()) init];
  *(v0 + 24) = sub_26EEB7924(MEMORY[0x277D84F90]);
  result = sub_26EF3803C();
  qword_2806CFA58 = v0;
  return result;
}

uint64_t sub_26EEB4308()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(sub_26EF3914C()) init];
  *(v0 + 24) = sub_26EEB7924(MEMORY[0x277D84F90]);
  sub_26EF3803C();
  return v0;
}

uint64_t *sub_26EEB4378()
{
  if (qword_2806CD740 != -1)
  {
    swift_once();
  }

  return &qword_2806CFA58;
}

uint64_t sub_26EEB43C8()
{
  swift_getKeyPath();
  (*(*v0 + 176))();

  swift_beginAccess();
}

uint64_t sub_26EEB4444@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 176))();

  swift_beginAccess();
  *a2 = v3[3];
}

uint64_t sub_26EEB4500(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_26EEB74D4(v3, a1);

  if (v4)
  {
    v1[3] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x28223BE20](KeyPath);
    v8 = v1;
    v9 = a1;
    (*(*v1 + 184))(v7, sub_26EEB7E98);
  }
}

void sub_26EEB4614(uint64_t a1, uint64_t a2)
{
  v132 = sub_26EF37EDC();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v129 = v5;
  v130 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  MEMORY[0x28223BE20](v6 - 8);
  v138 = &v127 - v7;
  v144 = sub_26EF3883C();
  v148 = *(v144 - 8);
  v8 = MEMORY[0x28223BE20](v144);
  v136 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v147 = &v127 - v10;
  v163 = sub_26EF391EC();
  v11 = *(v163 - 8);
  v12 = MEMORY[0x28223BE20](v163);
  v137 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v139 = &v127 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v146 = &v127 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v143 = &v127 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v162 = &v127 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v127 - v22;
  v161 = sub_26EF38DBC();
  v152 = *(v161 - 8);
  v24 = MEMORY[0x28223BE20](v161);
  v140 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v133 = &v127 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v134 = &v127 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v149 = &v127 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v142 = &v127 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v127 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v141 = &v127 - v38;
  MEMORY[0x28223BE20](v37);
  v145 = &v127 - v39;
  swift_getKeyPath();
  v40 = (*v2 + 176);
  v150 = *v40;
  v151 = v40;
  v150();

  swift_beginAccess();
  v41 = *(v2[3] + 16);
  v154 = v2;
  if (!v41 || (, sub_26EEB66D8(a1), v43 = v42, , (v43 & 1) == 0))
  {
    swift_getKeyPath();
    v150();

    v166 = v154;
    swift_getKeyPath();
    sub_26EEB7F9C(&qword_2806C8940, type metadata accessor for VoiceBankingCompatibilityModel, &unk_26EF41998);
    sub_26EF3802C();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v164 = v154[3];
    v154[3] = 0x8000000000000000;
    sub_26EEB7010(3, a1, isUniquelyReferenced_nonNull_native);
    v154[3] = v164;
    swift_endAccess();
    v166 = v154;
    swift_getKeyPath();
    sub_26EF3801C();
  }

  v135 = a1;
  v45 = v161;
  v153 = *(a2 + 16);
  if (!v153)
  {
    return;
  }

  v159 = *(v152 + 16);
  v160 = v152 + 16;
  v46 = a2 + ((*(v152 + 80) + 32) & ~*(v152 + 80));
  v156 = *(v152 + 72);
  v157 = (v11 + 8);
  v158 = (v152 + 8);
  v128 = v46;
  v47 = v153;
  v48 = v163;
  while (1)
  {
    v159(v36, v46, v45);
    sub_26EF38D1C();
    sub_26EF391BC();
    v49 = sub_26EEB7F9C(&qword_2806C7A60, MEMORY[0x277D70650], MEMORY[0x277D70668]);
    sub_26EF3B1DC();
    v155 = v49;
    sub_26EF3B1DC();
    v50 = v166 == v164 && v167 == v165;
    v51 = v50 ? 1 : sub_26EF3B82C();
    v52 = *v157;
    (*v157)(v162, v48);
    v52(v23, v48);

    if (v51)
    {
      break;
    }

    v45 = v161;
    (*v158)(v36, v161);
    v46 += v156;
    if (!--v47)
    {
      return;
    }
  }

  v53 = (v152 + 32);
  v54 = *(v152 + 32);
  v55 = v141;
  v56 = v161;
  v54(v141, v36, v161);
  v57 = v145;
  v141 = v53;
  v127 = v54;
  v54(v145, v55, v56);
  sub_26EF3932C();
  v58 = v142;
  v159(v142, v57, v56);
  v59 = v154;
  swift_retain_n();
  v60 = sub_26EF3881C();
  v61 = sub_26EF3B47C();
  v62 = os_log_type_enabled(v60, v61);
  v63 = v143;
  if (v62)
  {
    v64 = swift_slowAlloc();
    *v64 = 67109632;
    v65 = sub_26EF38CFC() & 1;
    v162 = *v158;
    (v162)(v58, v56);
    *(v64 + 4) = v65;
    *(v64 + 8) = 1024;
    sub_26EF390FC();
    v66 = sub_26EF391AC();
    v68 = v67;
    if (v66 == sub_26EF391AC() && v68 == v69)
    {

      v70 = 1;
    }

    else
    {
      v71 = sub_26EF3B82C();

      v70 = v71 & 1;
      v56 = v161;
      v59 = v154;
    }

    *(v64 + 10) = v70;

    *(v64 + 14) = 1024;
    *(v64 + 16) = sub_26EF3910C() & 1;

    _os_log_impl(&dword_26EE01000, v60, v61, "[VoiceBankingCompatibilityModel]: Primary model training: %{BOOL}d, tccCloudKitAccess granted: %{BOOL}d, iCloud sync available: %{BOOL}d", v64, 0x14u);
    MEMORY[0x2743842A0](v64, -1, -1);

    v57 = v145;
  }

  else
  {
    v162 = *v158;
    (v162)(v58, v56);
  }

  v72 = *(v148 + 8);
  v73 = v147;
  v148 += 8;
  v147 = v72;
  (v72)(v73, v144);
  v74 = sub_26EF38CFC();
  v75 = v146;
  if ((v74 & 1) != 0 || sub_26EF38D8C() != 7)
  {
    goto LABEL_48;
  }

  v76 = v59[2];
  sub_26EF390FC();
  v77 = sub_26EF391AC();
  v79 = v78;
  if (v77 == sub_26EF391AC() && v79 == v80)
  {

    v57 = v145;
  }

  else
  {
    v81 = sub_26EF3B82C();

    v57 = v145;
    if ((v81 & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  if ((sub_26EF3910C() & 1) == 0)
  {
LABEL_48:
    v104 = v57;
    v105 = v56;
LABEL_49:
    (v162)(v104, v105);
    return;
  }

  v142 = v76;
  v82 = 0;
  v83 = v128;
  while (1)
  {
    v84 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      __break(1u);
LABEL_71:
      __break(1u);
      return;
    }

    v159(v149, v83, v161);
    sub_26EF38D1C();
    sub_26EF391DC();
    v85 = v163;
    sub_26EF3B1DC();
    sub_26EF3B1DC();
    if (v166 == v164 && v167 == v165)
    {
      break;
    }

    v87 = sub_26EF3B82C();
    v52(v75, v85);
    v52(v63, v85);

    if (v87)
    {
      goto LABEL_52;
    }

    (v162)(v149, v161);
    ++v82;
    v83 += v156;
    v75 = v146;
    if (v84 == v153)
    {
      v88 = v138;
      v89 = v161;
      (*(v152 + 56))(v138, 1, 1, v161);
      sub_26EE14578(v88, &qword_2806C7088, &unk_26EF3E330);
      v90 = v136;
      sub_26EF3932C();
      v91 = sub_26EF3881C();
      v92 = sub_26EF3B47C();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_26EE01000, v91, v92, "[VoiceBankingCompatibilityModel]: Primary model doesn't have v1 voice.", v93, 2u);
        MEMORY[0x2743842A0](v93, -1, -1);
      }

      (v147)(v90, v144);
      v94 = 0;
      v95 = v137;
      v96 = v128;
      while (1)
      {
        v152 = v94;
        v97 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          goto LABEL_71;
        }

        v159(v140, v96, v89);
        v98 = v139;
        sub_26EF38D1C();
        sub_26EF391CC();
        v99 = v163;
        sub_26EF3B1DC();
        sub_26EF3B1DC();
        if (v166 == v164 && v167 == v165)
        {
          break;
        }

        LODWORD(v149) = sub_26EF3B82C();
        v52(v95, v99);
        v52(v98, v99);

        if (v149)
        {
          goto LABEL_54;
        }

        (v162)(v140, v89);
        v94 = v152 + 1;
        v96 += v156;
        if (v97 == v153)
        {
          v101 = 1;
          v102 = v135;
          v103 = v150;
          goto LABEL_60;
        }
      }

      v52(v95, v99);
      v52(v98, v99);

LABEL_54:
      v108 = v133;
      v109 = v127;
      v127(v133, v140, v89);
      v110 = v134;
      v109(v134, v108, v89);
      if (sub_26EF38CFC())
      {
        swift_getKeyPath();
        v111 = v154;
        v103 = v150;
        v150();

        v166 = v111;
        swift_getKeyPath();
        sub_26EEB7F9C(&qword_2806C8940, type metadata accessor for VoiceBankingCompatibilityModel, &unk_26EF41998);
        sub_26EF3802C();

        swift_beginAccess();
        v112 = swift_isUniquelyReferenced_nonNull_native();
        v164 = v111[3];
        v111[3] = 0x8000000000000000;
        v102 = v135;
        sub_26EEB7010(2, v135, v112);
        v111[3] = v164;
        swift_endAccess();
        v166 = v111;
        swift_getKeyPath();
        sub_26EF3801C();

        v113 = v110;
        v114 = v89;
        goto LABEL_58;
      }

      v115 = sub_26EF38D8C();
      v102 = v135;
      if (v115 == 7)
      {
        swift_getKeyPath();
        v111 = v154;
        v103 = v150;
        v150();

        v166 = v111;
        swift_getKeyPath();
        sub_26EEB7F9C(&qword_2806C8940, type metadata accessor for VoiceBankingCompatibilityModel, &unk_26EF41998);
        sub_26EF3802C();

        swift_beginAccess();
        v116 = swift_isUniquelyReferenced_nonNull_native();
        v164 = v111[3];
        v111[3] = 0x8000000000000000;
        sub_26EEB7010(3, v102, v116);
        v111[3] = v164;
        swift_endAccess();
        v166 = v111;
        swift_getKeyPath();
        sub_26EF3801C();

        v113 = v110;
        v114 = v161;
LABEL_58:
        (v162)(v113, v114);
        v101 = 0;
      }

      else
      {
        (v162)(v110, v161);
        v101 = 1;
        v103 = v150;
LABEL_60:
        v111 = v154;
      }

      swift_getKeyPath();
      v103();

      v117 = v111[3];
      v118 = v145;
      if (*(v117 + 16))
      {

        v119 = sub_26EEB66D8(v102);
        if (v120)
        {
          v121 = *(*(v117 + 56) + v119);

          v50 = v121 == 1;
          v118 = v145;
          if (!v50)
          {
            goto LABEL_67;
          }

LABEL_69:
          v104 = v118;
          v105 = v161;
          goto LABEL_49;
        }
      }

LABEL_67:
      if (v101)
      {
        v122 = v131;
        v123 = v130;
        v124 = v132;
        (*(v131 + 16))(v130, v102, v132);
        v125 = (*(v122 + 80) + 24) & ~*(v122 + 80);
        v126 = swift_allocObject();
        *(v126 + 16) = v111;
        (*(v122 + 32))(v126 + v125, v123, v124);

        sub_26EF390BC();

        v104 = v118;
        v105 = v161;
        goto LABEL_49;
      }

      goto LABEL_69;
    }
  }

  v52(v75, v85);
  v52(v63, v85);

LABEL_52:
  v106 = v161;
  (v162)(v145, v161);
  v107 = v138;
  v127(v138, v149, v106);
  (*(v152 + 56))(v107, 0, 1, v106);
  sub_26EE14578(v107, &qword_2806C7088, &unk_26EF3E330);
}

uint64_t sub_26EEB5A8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 == 4)
  {
    v5 = sub_26EEB66D8(a2);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v20 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_26EEB7264();
        v9 = v20;
      }

      v10 = *(v9 + 48);
      v11 = sub_26EF37EDC();
      v12 = *(v11 - 8);
      v13 = *(v12 + 8);
      v13(v10 + *(v12 + 72) * v7, v11);
      sub_26EEB6CF0(v7, v9);
      result = (v13)(a2, v11);
      *v3 = v9;
    }

    else
    {
      v18 = sub_26EF37EDC();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  else
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_26EEB7010(a1, a2, v16);
    v17 = sub_26EF37EDC();
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v2 = v21;
  }

  return result;
}

void sub_26EEB5C48(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v4 = sub_26EF3883C();
  v35 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26EF38A4C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v34 = &v31 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C58, &unk_26EF41A20);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  sub_26EE13B88(a1, &v31 - v14, &qword_2806C8C58, &unk_26EF41A20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v17 = v34;
    (*(v8 + 32))(v34, v15, v7);
    v18 = sub_26EE27DAC();
    v19 = *(v35 + 16);
    v33 = v4;
    v19(v6, v18, v4);
    v20 = *(v8 + 16);
    v20(v11, v17, v7);
    v21 = sub_26EF3881C();
    v22 = sub_26EF3B45C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v23 = 138412290;
      sub_26EEB7F9C(&unk_2806C9CD0, MEMORY[0x277D70518], MEMORY[0x277D70520]);
      swift_allocError();
      v20(v24, v11, v7);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = *(v8 + 8);
      v26(v11, v7);
      *(v23 + 4) = v25;
      v27 = v32;
      *v32 = v25;
      _os_log_impl(&dword_26EE01000, v21, v22, "VoiceManagementView: Unable to check iCloud device list. %@", v23, 0xCu);
      sub_26EE14578(v27, &qword_2806C7140, &unk_26EF3E420);
      MEMORY[0x2743842A0](v27, -1, -1);
      MEMORY[0x2743842A0](v23, -1, -1);

      (*(v35 + 8))(v6, v33);
      v26(v34, v7);
    }

    else
    {

      v30 = *(v8 + 8);
      v30(v11, v7);
      (*(v35 + 8))(v6, v33);
      v30(v34, v7);
    }
  }

  else
  {
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    v28 = v33;
    *(&v31 - 4) = v32;
    *(&v31 - 3) = v28;
    *(&v31 - 16) = v29;
    sub_26EF3AEAC();
    sub_26EF3992C();
  }
}

double sub_26EEB60D0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_26EF37EDC();
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a2);
  swift_getKeyPath();
  (*(*a1 + 176))();

  v13 = a1;
  swift_getKeyPath();
  sub_26EEB7F9C(&qword_2806C8940, type metadata accessor for VoiceBankingCompatibilityModel, &unk_26EF41998);
  sub_26EF3802C();

  swift_beginAccess();
  if (a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = 3;
  }

  sub_26EEB5A8C(v10, v8);
  swift_endAccess();
  v13 = a1;
  swift_getKeyPath();
  sub_26EF3801C();

  return result;
}

double sub_26EEB62B8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  (*(*v2 + 176))();

  swift_getKeyPath();
  sub_26EEB7F9C(&qword_2806C8940, type metadata accessor for VoiceBankingCompatibilityModel, &unk_26EF41998);
  sub_26EF3802C();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v2[3];
  v2[3] = 0x8000000000000000;
  sub_26EEB7010(a1, a2, isUniquelyReferenced_nonNull_native);
  v2[3] = v7;
  swift_endAccess();
  swift_getKeyPath();
  sub_26EF3801C();

  return result;
}

uint64_t sub_26EEB6428(uint64_t a1)
{
  swift_getKeyPath();
  (*(*v1 + 176))();

  swift_beginAccess();
  v3 = v1[3];
  if (!*(v3 + 16))
  {
    return 3;
  }

  v4 = sub_26EEB66D8(a1);
  if (v5)
  {
    v6 = *(*(v3 + 56) + v4);
  }

  else
  {
    v6 = 3;
  }

  return v6;
}

uint64_t sub_26EEB662C()
{

  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI30VoiceBankingCompatibilityModel___observationRegistrar;
  v2 = sub_26EF3804C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

unint64_t sub_26EEB66D8(uint64_t a1)
{
  sub_26EF37EDC();
  sub_26EEB7F9C(&qword_2806C8C68, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_26EF3B04C();

  return sub_26EEB6770(a1, v2);
}

unint64_t sub_26EEB6770(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_26EF37EDC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_26EEB7F9C(&qword_2806C81E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_26EF3B0AC();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void sub_26EEB6930(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26EF37EDC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C60, &qword_26EF41A30);
  v41 = v4;
  v10 = sub_26EF3B7BC();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v37 = v2;
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
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v18 = v10 + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v43 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v41)
      {
        (*v42)(v44, v26, v5);
      }

      else
      {
        (*v38)(v44, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_26EEB7F9C(&qword_2806C8C68, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v28 = sub_26EF3B04C();
      v29 = -1 << *(v11 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v42)((*(v11 + 48) + v25 * v19), v44, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v39;
      v9 = v40;
      v16 = v43;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

unint64_t sub_26EEB6CF0(int64_t a1, uint64_t a2)
{
  v40 = sub_26EF37EDC();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_26EF3B6AC();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_26EEB7F9C(&qword_2806C8C68, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_26EF3B04C();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + a1);
          v30 = (v28 + v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

void sub_26EEB7010(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = a1;
  v8 = sub_26EF37EDC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_26EEB66D8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = v7;
      return;
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_26EEB7264();
    goto LABEL_7;
  }

  sub_26EEB6930(v17, a3 & 1);
  v21 = sub_26EEB66D8(a2);
  if ((v18 & 1) != (v22 & 1))
  {
LABEL_14:
    sub_26EF3B86C();
    __break(1u);
    return;
  }

  v14 = v21;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  sub_26EEB71AC(v14, v11, v7, v20);
}

uint64_t sub_26EEB71AC(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26EF37EDC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void sub_26EEB7264()
{
  v1 = v0;
  v31 = sub_26EF37EDC();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C60, &qword_26EF41A30);
  v3 = *v0;
  v4 = sub_26EF3B7AC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
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
}

uint64_t sub_26EEB74D4(uint64_t a1, uint64_t a2)
{
  v56 = sub_26EF37EDC();
  v51 = *(v56 - 8);
  v4 = MEMORY[0x28223BE20](v56);
  v52 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C48, &qword_26EF41A10);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = v46 - v10;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v49 = v11;
  v13 = 0;
  v47 = a1;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v46[0] = v15;
  v46[1] = v51 + 16;
  v53 = v46 - v10;
  v54 = (v51 + 32);
  v48 = (v51 + 8);
  while (v19)
  {
    v55 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
LABEL_16:
    v26 = v47;
    v27 = v50;
    v28 = v51;
    v29 = v56;
    (*(v51 + 16))(v50, *(v47 + 48) + *(v51 + 72) * v21, v56);
    v30 = *(*(v26 + 56) + v21);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C50, &qword_26EF41A18);
    v32 = *(v31 + 48);
    v33 = *(v28 + 32);
    v34 = v49;
    v33(v49, v27, v29);
    *(v34 + v32) = v30;
    (*(*(v31 - 8) + 56))(v34, 0, 1, v31);
    v12 = v53;
LABEL_17:
    sub_26EEB7EFC(v34, v12);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C50, &qword_26EF41A18);
    v36 = (*(*(v35 - 8) + 48))(v12, 1, v35);
    v37 = v36 == 1;
    if (v36 != 1)
    {
      v38 = *(v35 + 48);
      v39 = v52;
      v40 = v56;
      (*v54)(v52, v12, v56);
      v41 = v12[v38];
      v42 = sub_26EEB66D8(v39);
      LOBYTE(v38) = v43;
      result = (*v48)(v39, v40);
      if (v38)
      {
        v44 = *(*(a2 + 56) + v42) == v41;
        v12 = v53;
        v19 = v55;
        if (v44)
        {
          continue;
        }
      }
    }

    return v37;
  }

  if (v20 <= v13 + 1)
  {
    v22 = v13 + 1;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C50, &qword_26EF41A18);
      v34 = v49;
      (*(*(v45 - 8) + 56))(v49, 1, 1, v45);
      v55 = 0;
      v13 = v23;
      goto LABEL_17;
    }

    v25 = *(v46[0] + 8 * v24);
    ++v13;
    if (v25)
    {
      v55 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v13 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26EEB7924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C70, &qword_26EF41A38);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C60, &qword_26EF41A30);
    v7 = sub_26EF3B7CC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26EE13B88(v9, v5, &qword_2806C8C70, &qword_26EF41A38);
      result = sub_26EEB66D8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_26EF37EDC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t type metadata accessor for VoiceBankingCompatibilityModel(uint64_t a1)
{
  result = qword_2806CD8E0;
  if (!qword_2806CD8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EEB7B58()
{
  v1 = sub_26EF37EDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_26EEB7C1C(uint64_t a1)
{
  v3 = *(sub_26EF37EDC() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_26EEB5C48(a1, v4, v5);
}

uint64_t getEnumTagSinglePayload for CompatibilityState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CompatibilityState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26EEB7DEC(uint64_t a1)
{
  result = sub_26EF3804C();
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

uint64_t sub_26EEB7E98()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 24) = v1;
}

uint64_t sub_26EEB7EFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C48, &qword_26EF41A10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEB7F9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26EEB7FE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26EEB8078@<X0>(void *a1@<X8>)
{
  v2 = sub_26EF3872C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _UISolariumEnabled();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8080, &unk_26EF3FC30);
  if (v6)
  {
    v9[0] = a1;
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_26EF41A50;
    sub_26EF386EC();
    sub_26EF3870C();
    sub_26EF386CC();
    sub_26EF386FC();
    sub_26EF3871C();
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_26EF41A40;
    sub_26EF386EC();
    sub_26EF3870C();
    sub_26EF386CC();
    sub_26EF386FC();
  }

  v9[1] = v7;
  sub_26EEB7FE4(&qword_2806C8088, MEMORY[0x277CE7670], MEMORY[0x277CE7680]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8090, &unk_26EF3FB80);
  sub_26EE154C8(&qword_2806C8098, &qword_2806C8090, &unk_26EF3FB80, MEMORY[0x277D83970]);
  sub_26EF3B68C();
  sub_26EF3AC8C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26EEB82E4@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  VoiceView = type metadata accessor for CreateVoiceView(0);
  v3 = VoiceView - 8;
  v51 = *(VoiceView - 8);
  v50 = *(v51 + 64);
  MEMORY[0x28223BE20](VoiceView);
  v48 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26EF3A32C();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C78, &qword_26EF41A78);
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C80, &qword_26EF41A80);
  v14 = *(v13 - 8);
  v46 = v13;
  v47 = v14;
  MEMORY[0x28223BE20](v13);
  v41 = v39 - v15;
  v16 = sub_26EE17094();
  v17._object = 0x800000026EF462C0;
  v18 = v16 & 1;
  v17._countAndFlagsBits = 0xD000000000000017;
  v19 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v17, v18, 0);
  v39[3] = v19._countAndFlagsBits;
  v39[2] = v19._object;
  v20 = sub_26EE17094();
  v21._countAndFlagsBits = 0xD000000000000019;
  v21._object = 0x800000026EF462E0;
  v22 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v21, v20 & 1, 0);
  v39[1] = v22._countAndFlagsBits;
  v39[0] = v22._object;
  v23 = *(v3 + 52);
  v40 = v1;
  sub_26EE13B88(v1 + v23, v9, &qword_2806C8018, &qword_26EF41830);
  v54 = v1;
  v53 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C88, &qword_26EF41A88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C90, &qword_26EF41A90);
  sub_26EE154C8(&qword_2806C8C98, &qword_2806C8C88, &qword_26EF41A88, MEMORY[0x277CE14C0]);
  sub_26EEBE8BC(&qword_2806C8CA0, &qword_2806C8C90, &qword_26EF41A90, sub_26EEB8F68);
  sub_26EF386BC();
  v24 = v43;
  sub_26EF3A31C();
  v25 = sub_26EE154C8(&qword_2806C8CB8, &qword_2806C8C78, &qword_26EF41A78, MEMORY[0x277CE7668]);
  v26 = v41;
  sub_26EF3A84C();
  (*(v44 + 8))(v24, v45);
  (*(v42 + 8))(v12, v10);
  v27 = v40;
  v52 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8CC0, &qword_26EF41AA8);
  v55 = v10;
  v56 = v25;
  swift_getOpaqueTypeConformance2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8CC8, &qword_26EF41AB0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8CD0, &unk_26EF41AB8);
  v30 = sub_26EEB9158();
  v55 = v29;
  v56 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v28;
  v56 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v32 = v49;
  v33 = v46;
  sub_26EF3A8EC();
  (*(v47 + 8))(v26, v33);
  v34 = v48;
  sub_26EEB9B08(v27, v48);
  v35 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v36 = swift_allocObject();
  sub_26EEB9B70(v34, v36 + v35);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8CE0, &qword_26EF41AC8);
  v38 = (v32 + *(result + 36));
  *v38 = sub_26EEB9BD4;
  v38[1] = v36;
  v38[2] = 0;
  v38[3] = 0;
  return result;
}

uint64_t sub_26EEB8988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8CE8, &qword_26EF41AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8CF8, &qword_26EF41AE0);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v23 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  *v6 = sub_26EF39F6C();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8CF0, &qword_26EF41AD8);
  sub_26EEBAB40(a1, &v6[*(v17 + 44)]);
  if (AXDeviceIsPad())
  {
    v18 = 0x4034000000000000;
  }

  else
  {
    v18 = 0x4030000000000000;
  }

  v19 = sub_26EF3A3BC();
  sub_26EE14D98(v6, v14, &qword_2806C8CE8, &qword_26EF41AD0);
  v20 = &v14[*(v8 + 44)];
  *v20 = v19;
  *(v20 + 1) = 0x403E000000000000;
  *(v20 + 2) = v18;
  *(v20 + 3) = 0;
  *(v20 + 4) = v18;
  v20[40] = 0;
  sub_26EE14D98(v14, v16, &qword_2806C8CF8, &qword_26EF41AE0);
  sub_26EE13B88(v16, v11, &qword_2806C8CF8, &qword_26EF41AE0);
  sub_26EE13B88(v11, a2, &qword_2806C8CF8, &qword_26EF41AE0);
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8DF0, &unk_26EF41CD0) + 48);
  *v21 = 0;
  *(v21 + 8) = 1;
  sub_26EE14578(v16, &qword_2806C8CF8, &qword_26EF41AE0);
  return sub_26EE14578(v11, &qword_2806C8CF8, &qword_26EF41AE0);
}

void sub_26EEB8BCC(uint64_t a1@<X8>)
{
  sub_26EEB8C50(&v11);
  v2 = v11;
  v3 = sub_26EF3A3DC();
  sub_26EF3962C();
  v4 = v12;
  v5 = v13;
  v6 = v14;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  *(a1 + 40) = v6;
  *(a1 + 56) = v3;
  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
  *(a1 + 80) = v9;
  *(a1 + 88) = v10;
  *(a1 + 96) = 0;
}

uint64_t sub_26EEB8C50@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_26EF37CEC();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  VoiceView = type metadata accessor for CreateVoiceView(0);
  v8 = *(VoiceView - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](VoiceView);
  v10 = sub_26EE17094();
  v11._object = 0xEB0000000045554ELL;
  v12 = v10 & 1;
  v11._countAndFlagsBits = 0x49544E4F435F4256;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v11, v12, 0);
  sub_26EEB9B08(v2, &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  sub_26EEB9B70(&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  CGSizeMake();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v2 + *(VoiceView + 40);
  v24 = *v23;
  v25 = *(v23 + 8);
  LOBYTE(v43) = v24;
  *(&v43 + 1) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  if (v42)
  {
    v26 = 1;
  }

  else
  {
    v27 = v2 + *(VoiceView + 32);
    v28 = *v27;
    v29 = *(v27 + 16);
    v43 = v28;
    v44 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F88, &qword_26EF41A70);
    sub_26EF3AAFC();
    v43 = v42;
    v30 = sub_26EF37CCC();
    sub_26EE12538(v30, v31, v32);
    v33 = sub_26EF3B5EC();
    v35 = v34;
    (*(v40 + 8))(v6, v41);

    v36 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v36 = v33 & 0xFFFFFFFFFFFFLL;
    }

    v26 = v36 == 0;
  }

  KeyPath = swift_getKeyPath();
  result = swift_allocObject();
  *(result + 16) = v26;
  *a1 = v16;
  a1[1] = v18;
  a1[2] = v20;
  a1[3] = v22;
  a1[4] = KeyPath;
  a1[5] = sub_26EE274EC;
  a1[6] = result;
  return result;
}

unint64_t sub_26EEB8F68()
{
  result = qword_2806C8CA8;
  if (!qword_2806C8CA8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8CB0, &unk_26EF41A98);
    sub_26EE793AC(v1, v2, v3);
    sub_26EE154C8(&qword_2806C7020, &qword_2806C7028, &unk_26EF3F090, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8CA8);
  }

  return result;
}

uint64_t sub_26EEB9020()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8CC8, &qword_26EF41AB0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - v2;
  sub_26EEB924C(v8 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8CD0, &unk_26EF41AB8);
  v5 = sub_26EEB9158();
  v8[0] = v4;
  v8[1] = v5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x274382230](v3, v0, OpaqueTypeConformance2);
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_26EEB9158()
{
  result = qword_2806C8CD8;
  if (!qword_2806C8CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8CD0, &unk_26EF41AB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C73A8, &qword_26EF3E150);
    sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8CD8);
  }

  return result;
}

uint64_t sub_26EEB924C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7388, &unk_26EF3FAE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - v5;
  v7 = sub_26EF3A13C();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C73A8, &qword_26EF3E150);
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v31 = &v27 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8CD0, &unk_26EF41AB8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  if (_UISolariumEnabled())
  {
    (*(v4 + 56))(v13, 1, 1, v3);
    v16 = sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150, MEMORY[0x277CDD7A8]);
    v33 = v8;
    v34 = v16;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x274382260](v13, v3, OpaqueTypeConformance2);
    sub_26EE14578(v13, &qword_2806C8CD0, &unk_26EF41AB8);
  }

  else
  {
    v18 = sub_26EF3A0DC();
    v27 = &v27;
    MEMORY[0x28223BE20](v18);
    v29 = v6;
    v30 = a1;
    *(&v27 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
    v28 = v8;
    v19 = v3;
    sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080, MEMORY[0x277CDF028]);
    v20 = v31;
    sub_26EF397CC();
    v21 = sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150, MEMORY[0x277CDD7A8]);
    v22 = v28;
    v23 = v29;
    MEMORY[0x274382230](v20, v28, v21);
    (*(v4 + 16))(v13, v23, v19);
    (*(v4 + 56))(v13, 0, 1, v19);
    v33 = v22;
    v34 = v21;
    v24 = swift_getOpaqueTypeConformance2();
    MEMORY[0x274382260](v13, v19, v24);
    sub_26EE14578(v13, &qword_2806C8CD0, &unk_26EF41AB8);
    (*(v4 + 8))(v23, v19);
    (*(v32 + 8))(v20, v22);
  }

  v25 = sub_26EEB9158();
  MEMORY[0x274382230](v15, v10, v25);
  return sub_26EE14578(v15, &qword_2806C8CD0, &unk_26EF41AB8);
}

double sub_26EEB9708(uint64_t a1)
{
  VoiceView = type metadata accessor for CreateVoiceView(0);
  v30 = *(VoiceView - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](VoiceView - 8);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_26EF39DDC();
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26EF3883C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF3934C();
  v14 = sub_26EF3881C();
  v15 = sub_26EF3B44C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_26EE01000, v14, v15, "CreateVoiceView: On appear. Resetting configuration stage.", v16, 2u);
    MEMORY[0x2743842A0](v16, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v17 = *(a1 + 16);
  if (*(a1 + 24) == 1)
  {
    v18 = v17;
  }

  else
  {

    sub_26EF3B46C();
    v19 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v17, 0);
    (*(v28 + 8))(v9, v29);
    v18 = v32;
  }

  sub_26EED366C(3);

  v20 = sub_26EF3B30C();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  v21 = v31;
  sub_26EEB9B08(a1, v31);
  sub_26EF3B2DC();
  v22 = sub_26EF3B2CC();
  v23 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 16) = v22;
  *(v24 + 24) = v25;
  sub_26EEB9B70(v21, v24 + v23);
  sub_26EE2C388(0, 0, v6, &unk_26EF41CC8, v24);

  return result;
}

uint64_t sub_26EEB9B08(uint64_t a1, uint64_t a2)
{
  VoiceView = type metadata accessor for CreateVoiceView(0);
  (*(*(VoiceView - 8) + 16))(a2, a1, VoiceView);
  return a2;
}

uint64_t sub_26EEB9B70(uint64_t a1, uint64_t a2)
{
  VoiceView = type metadata accessor for CreateVoiceView(0);
  (*(*(VoiceView - 8) + 32))(a2, a1, VoiceView);
  return a2;
}

double sub_26EEB9BD4()
{
  v1 = *(type metadata accessor for CreateVoiceView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26EEB9708(v2);
}

uint64_t sub_26EEB9C34()
{
  v0[2] = sub_26EF3B2DC();
  v0[3] = sub_26EF3B2CC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26EE751BC;

  return sub_26EEB9CE0();
}

uint64_t sub_26EEB9CE0()
{
  v1[18] = v0;
  v2 = sub_26EF38A2C();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = sub_26EF3883C();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v4 = sub_26EF38AAC();
  v1[25] = v4;
  v1[26] = *(v4 - 8);
  v1[27] = swift_task_alloc();
  v5 = sub_26EF39DDC();
  v1[28] = v5;
  v1[29] = *(v5 - 8);
  v1[30] = swift_task_alloc();
  sub_26EF3B2DC();
  v1[31] = sub_26EF3B2CC();
  v7 = sub_26EF3B29C();
  v1[32] = v7;
  v1[33] = v6;

  return MEMORY[0x2822009F8](sub_26EEB9EE8, v7, v6);
}

uint64_t sub_26EEB9EE8()
{
  v1 = *(v0 + 144);
  *(v0 + 272) = *(v1 + 32);
  *(v0 + 280) = *(v1 + 40);
  *(v0 + 360) = *(v1 + 48);
  *(v0 + 288) = type metadata accessor for VoiceBankingAccountInformationModel();
  *(v0 + 296) = sub_26EEB7FE4(&qword_2806C8D00, type metadata accessor for VoiceBankingAccountInformationModel, &protocol conformance descriptor for VoiceBankingAccountInformationModel);
  sub_26EF3976C();
  v2 = VoiceBankingAccountInformationModel.iCloudFirstName.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_26EE17094();
    v6._object = 0x800000026EF46330;
    v7 = v5 & 1;
    v6._countAndFlagsBits = 0xD000000000000017;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v6, v7, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26EF3D070;
    *(v8 + 56) = MEMORY[0x277D837D0];
    v11 = sub_26EE1EFBC(v8, v9, v10);
    *(v8 + 32) = v2;
    *(v8 + 40) = v4;
    v12 = MEMORY[0x277D83C10];
    *(v8 + 96) = MEMORY[0x277D83B88];
    *(v8 + 104) = v12;
    *(v8 + 64) = v11;
    *(v8 + 72) = 0;
  }

  else
  {
    v13 = sub_26EE17094();
    v14._countAndFlagsBits = 0xD000000000000023;
    v14._object = 0x800000026EF46300;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v14, v13 & 1, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D83B88];
    *(v15 + 16) = xmmword_26EF3C6B0;
    v17 = MEMORY[0x277D83C10];
    *(v15 + 56) = v16;
    *(v15 + 64) = v17;
    *(v15 + 32) = 0;
  }

  v18 = sub_26EF3B10C();
  v20 = v19;

  *(v0 + 304) = v18;
  *(v0 + 312) = v20;
  result = sub_26EF3899C();
  *(v0 + 320) = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v22 = *(v0 + 144);
    v23 = *(v22 + 16);
    if (*(v22 + 24) == 1)
    {
      v24 = v23;
    }

    else
    {
      v26 = *(v0 + 232);
      v25 = *(v0 + 240);
      v27 = *(v0 + 224);

      sub_26EF3B46C();
      v28 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v23, 0);
      (*(v26 + 8))(v25, v27);
      v24 = *(v0 + 128);
    }

    *(v0 + 328) = v24;
    v29 = swift_task_alloc();
    *(v0 + 336) = v29;
    *v29 = v0;
    v29[1] = sub_26EEBA228;

    return VoiceBankingSession.fetchVoices()();
  }

  return result;
}

uint64_t sub_26EEBA228(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {
    v4 = *(v3 + 256);
    v5 = *(v3 + 264);
    v6 = sub_26EEBA8A0;
  }

  else
  {

    v4 = *(v3 + 256);
    v5 = *(v3 + 264);
    v6 = sub_26EEBA344;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EEBA344()
{
  v1 = *(v0 + 344);

  v2 = *(v1 + 16);
  v3 = *(v0 + 344);
  if (v2)
  {
    v4 = *(v0 + 208);
    v70 = MEMORY[0x277D84F90];
    sub_26EEBDD80(0, v2, 0);
    v5 = v70;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v3 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v68 = *(v4 + 56);
    v69 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = *(v0 + 216);
      v10 = *(v0 + 200);
      v69(v9, v7, v10);
      v11 = sub_26EF38A7C();
      v13 = v12;
      (*v8)(v9, v10);
      v15 = *(v70 + 16);
      v14 = *(v70 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_26EEBDD80((v14 > 1), v15 + 1, 1);
      }

      *(v70 + 16) = v15 + 1;
      v16 = v70 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v7 += v68;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v18 = 0;
  v19 = MEMORY[0x277D837D0];
  while (2)
  {
    v20 = *(v5 + 16);
    if (v18)
    {
      v21 = -v20;
      v22 = -1;
      v23 = (v5 + 40);
      while (v21 + v22 != -1)
      {
        if (++v22 >= *(v5 + 16))
        {
          __break(1u);
          return result;
        }

        v24 = v23 + 2;
        v25 = *v23;
        *(v0 + 64) = *(v23 - 1);
        *(v0 + 72) = v25;
        *(v0 + 136) = v18;

        v26 = sub_26EF3B7FC();
        *(v0 + 80) = v26;
        *(v0 + 88) = v27;
        sub_26EE12538(v26, v27, v28);
        v29 = sub_26EF3B62C();

        v23 = v24;
        if (v29)
        {
          goto LABEL_24;
        }
      }

LABEL_29:
    }

    else
    {
      v30 = v20 + 1;
      v31 = v5 + 40;
      while (1)
      {
        if (!--v30)
        {
          goto LABEL_28;
        }

        v32 = sub_26EF3B11C();
        v34 = v33;
        if (v32 == sub_26EF3B11C() && v34 == v35)
        {
          break;
        }

        v31 += 16;
        v37 = sub_26EF3B82C();

        if (v37)
        {
          goto LABEL_24;
        }
      }

LABEL_24:
      if (v18 != *(v0 + 320))
      {
        if (!__OFADD__(v18++, 1))
        {
          continue;
        }

        __break(1u);
LABEL_28:
        v18 = 0;
        goto LABEL_29;
      }

      v18 = 0;
    }

    break;
  }

  sub_26EF3976C();
  v39 = VoiceBankingAccountInformationModel.iCloudFirstName.getter();
  v41 = v40;

  v42 = *(v0 + 144);
  if (v41)
  {
    v43 = sub_26EE17094();
    v44._object = 0x800000026EF46330;
    v45 = v43 & 1;
    v44._countAndFlagsBits = 0xD000000000000017;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v44, v45, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_26EF3D070;
    *(v46 + 56) = v19;
    v49 = sub_26EE1EFBC(v46, v47, v48);
    *(v46 + 32) = v39;
    *(v46 + 40) = v41;
    v50 = MEMORY[0x277D83C10];
    *(v46 + 96) = MEMORY[0x277D83B88];
    *(v46 + 104) = v50;
    *(v46 + 64) = v49;
    *(v46 + 72) = v18;
    v51 = sub_26EF3B10C();
    v53 = v52;

    v54 = (v42 + *(type metadata accessor for CreateVoiceView(0) + 32));
    v55 = *v54;
    v56 = *(v54 + 2);
    *(v0 + 40) = v55;
    *(v0 + 56) = v56;
    *(v0 + 112) = v51;
    *(v0 + 120) = v53;
  }

  else
  {
    v57 = sub_26EE17094();
    v58._countAndFlagsBits = 0xD000000000000023;
    v58._object = 0x800000026EF46300;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v58, v57 & 1, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_26EF3C6B0;
    v60 = MEMORY[0x277D83C10];
    *(v59 + 56) = MEMORY[0x277D83B88];
    *(v59 + 64) = v60;
    *(v59 + 32) = v18;
    v61 = sub_26EF3B10C();
    v63 = v62;

    v64 = (v42 + *(type metadata accessor for CreateVoiceView(0) + 32));
    v65 = *v64;
    v66 = *(v64 + 2);
    *(v0 + 16) = v65;
    *(v0 + 32) = v66;
    *(v0 + 96) = v61;
    *(v0 + 104) = v63;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F88, &qword_26EF41A70);
  sub_26EF3AB0C();

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_26EEBA8A0()
{
  v1 = v0[44];
  v2 = v0[41];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];

  v6 = sub_26EE27DAC();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v1;
  v8 = sub_26EF3881C();
  v9 = sub_26EF3B45C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[44];
  if (v10)
  {
    v13 = v0[20];
    v12 = v0[21];
    v14 = v0[19];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    (*(v13 + 104))(v12, *MEMORY[0x277D704D8], v14);
    sub_26EF38A4C();
    sub_26EEB7FE4(&unk_2806C9CD0, MEMORY[0x277D70518], MEMORY[0x277D70520]);
    swift_allocError();
    sub_26EF389BC();
    (*(v13 + 8))(v12, v14);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&dword_26EE01000, v8, v9, "CreateVoiceView: Could not fetch voices. %@", v15, 0xCu);
    sub_26EE14578(v16, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v16, -1, -1);
    MEMORY[0x2743842A0](v15, -1, -1);
  }

  else
  {
  }

  (*(v0[23] + 8))(v0[24], v0[22]);

  v18 = v0[1];

  return v18();
}

uint64_t sub_26EEBAB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8D30, &qword_26EF41B80);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8DD8, &qword_26EF41CB0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = (a1 + *(type metadata accessor for CreateVoiceView(0) + 40));
  v11 = *v10;
  v12 = *(v10 + 1);
  LOBYTE(v36._countAndFlagsBits) = v11;
  v36._object = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  if (v35 == 1)
  {
    v32 = sub_26EF39F5C();
    CGSizeMake();
    v13 = sub_26EE17094();
    v14._object = 0x800000026EF46370;
    v15 = v13 & 1;
    v14._countAndFlagsBits = 0xD000000000000019;
    v36 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v14, v15, 0);
    sub_26EE12538(v36._countAndFlagsBits, v36._object, v16);
    v17 = sub_26EF3A5DC();
    v19 = v18;
    v33 = a2;
    v34 = v4;
    v21 = v20;
    v22 = sub_26EF3A5AC();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    sub_26EE12ABC(v17, v19, v21 & 1);

    v26 &= 1u;
    LOBYTE(v36._countAndFlagsBits) = v26;
    sub_26EE13B20(v22, v24, v26);

    sub_26EE12ABC(v22, v24, v26);

    countAndFlagsBits = v36._countAndFlagsBits;
    *v9 = v32;
    *(v9 + 1) = 0;
    v9[16] = 1;
    *(v9 + 3) = v22;
    *(v9 + 4) = v24;
    v9[40] = countAndFlagsBits;
    *(v9 + 6) = v28;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8DE0, &qword_26EF41CB8);
    sub_26EE154C8(&qword_2806C8DE8, &qword_2806C8DE0, &qword_26EF41CB8, MEMORY[0x277CE1198]);
    sub_26EEBE8BC(&qword_2806C8D78, &qword_2806C8D30, &qword_26EF41B80, sub_26EEBE940);
    return sub_26EF3A06C();
  }

  else
  {
    sub_26EEBAEF8(v6);
    sub_26EE13B88(v6, v9, &qword_2806C8D30, &qword_26EF41B80);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8DE0, &qword_26EF41CB8);
    sub_26EE154C8(&qword_2806C8DE8, &qword_2806C8DE0, &qword_26EF41CB8, MEMORY[0x277CE1198]);
    sub_26EEBE8BC(&qword_2806C8D78, &qword_2806C8D30, &qword_26EF41B80, sub_26EEBE940);
    sub_26EF3A06C();
    return sub_26EE14578(v6, &qword_2806C8D30, &qword_26EF41B80);
  }
}

uint64_t sub_26EEBAEF8@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v38 = type metadata accessor for CustomTextFieldStyle(0);
  MEMORY[0x28223BE20](v38);
  v2 = (&v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8D08, &qword_26EF41B20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8D10, &qword_26EF41B28);
  v8 = *(v7 - 8);
  v39 = v7;
  v40 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  sub_26EEBB348(v6);
  *v2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B30, &qword_26EF3D210);
  swift_storeEnumTagMultiPayload();
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8D18, &qword_26EF41B68);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8D20, &unk_26EF41B70);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F40, &unk_26EF3F938);
  v14 = sub_26EE154C8(&qword_2806C7F48, &qword_2806C7F40, &unk_26EF3F938, MEMORY[0x277CDF1A8]);
  v43 = v13;
  v44 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v12;
  v44 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v43 = v11;
  v44 = MEMORY[0x277D837D0];
  v45 = v16;
  v46 = MEMORY[0x277D837F8];
  v17 = swift_getOpaqueTypeConformance2();
  v18 = sub_26EEB7FE4(&qword_2806C8D28, type metadata accessor for CustomTextFieldStyle, &unk_26EF41C10);
  v19 = v38;
  sub_26EF3A72C();
  sub_26EEBDDC0(v2);
  (*(v4 + 8))(v6, v3);
  v20 = sub_26EE17094();
  v21._object = 0x800000026EF46350;
  v22 = v20 & 1;
  v21._countAndFlagsBits = 0xD000000000000016;
  v42 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v21, v22, 0);
  v43 = v3;
  v44 = v19;
  v45 = v17;
  v46 = v18;
  v23 = swift_getOpaqueTypeConformance2();
  sub_26EE12538(v23, v24, v25);
  v26 = v41;
  v27 = v39;
  sub_26EF3A78C();

  (*(v40 + 8))(v10, v27);
  LOBYTE(v17) = sub_26EF3A3CC();
  sub_26EF3962C();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8D30, &qword_26EF41B80);
  v37 = v26 + *(result + 36);
  *v37 = v17;
  *(v37 + 8) = v29;
  *(v37 + 16) = v31;
  *(v37 + 24) = v33;
  *(v37 + 32) = v35;
  *(v37 + 40) = 0;
  return result;
}

uint64_t sub_26EEBB348@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  VoiceView = type metadata accessor for CreateVoiceView(0);
  v3 = VoiceView - 8;
  v49 = *(VoiceView - 8);
  v48 = *(v49 + 64);
  MEMORY[0x28223BE20](VoiceView);
  v47 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F40, &unk_26EF3F938);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8D20, &unk_26EF41B70);
  v10 = *(v9 - 8);
  v43 = v9;
  v44 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8D18, &qword_26EF41B68);
  v14 = *(v13 - 8);
  v45 = v13;
  v46 = v14;
  MEMORY[0x28223BE20](v13);
  v42 = v38 - v15;
  v16 = sub_26EE17094();
  v17._object = 0xED0000454D414E5FLL;
  v18 = v16 & 1;
  v17._countAndFlagsBits = 0x5245544E455F4256;
  v57 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v17, v18, 0);
  v19 = (v1 + *(v3 + 40));
  v20 = *v19;
  v40 = v19[1];
  v41 = v20;
  v39 = v19[2];
  v54 = v20;
  v55 = v40;
  v56 = v39;
  v38[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F88, &qword_26EF41A70);
  v21 = sub_26EF3AB1C();
  sub_26EE12538(v21, v22, v23);
  sub_26EF3AEFC();
  v24 = sub_26EE154C8(&qword_2806C7F48, &qword_2806C7F40, &unk_26EF3F938, MEMORY[0x277CDF1A8]);
  sub_26EF3A94C();
  (*(v6 + 8))(v8, v5);
  v25 = v1 + *(v3 + 56);
  v26 = *v25;
  v27 = *(v25 + 8);
  LOBYTE(v25) = *(v25 + 16);
  LOBYTE(v51) = v26;
  v52 = v27;
  LOBYTE(v53) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F90, &qword_26EF3F978);
  sub_26EF3966C();
  v51 = v5;
  v52 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v42;
  v29 = v43;
  sub_26EF3A8CC();

  v31 = v12;
  v32 = v29;
  (*(v44 + 8))(v31, v29);
  v51 = v41;
  v52 = v40;
  v53 = v39;
  sub_26EF3AAFC();
  v51 = v54;
  v52 = v55;
  v33 = v47;
  sub_26EEB9B08(v1, v47);
  v34 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v35 = swift_allocObject();
  sub_26EEB9B70(v33, v35 + v34);
  v54 = v32;
  v55 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v36 = v45;
  sub_26EF3A8FC();

  return (*(v46 + 8))(v30, v36);
}

uint64_t sub_26EEBB87C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_26EF3806C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  *&v27 = *a1;
  *(&v27 + 1) = v9;
  v10 = sub_26EF3867C();
  sub_26EEBEDB8(v10, v11, v12);
  sub_26EEB7FE4(&qword_2806C8DD0, MEMORY[0x277D853D0], MEMORY[0x277D853C8]);
  LOBYTE(a1) = sub_26EF3B06C();
  result = (*(v5 + 8))(v7, v4);
  if (a1)
  {
    *&v27 = v8;
    *(&v27 + 1) = v9;
    v31 = 10;
    v32 = 0xE100000000000000;
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_26EE12538(result, v14, v15);
    v16 = sub_26EF3B5FC();
    v18 = v17;
    VoiceView = type metadata accessor for CreateVoiceView(0);
    v20 = (a2 + *(VoiceView + 32));
    v21 = *v20;
    v22 = *(v20 + 2);
    v27 = v21;
    v28 = v22;
    v31 = v16;
    v32 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F88, &qword_26EF41A70);
    sub_26EF3AB0C();
    v23 = (a2 + *(VoiceView + 48));
    v24 = *v23;
    v25 = *(v23 + 1);
    LOBYTE(v23) = v23[16];
    LOBYTE(v27) = v24;
    *(&v27 + 1) = v25;
    LOBYTE(v28) = v23;
    LOBYTE(v31) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F90, &qword_26EF3F978);
    return sub_26EF3965C();
  }

  return result;
}

uint64_t objectdestroyTm_14()
{
  VoiceView = type metadata accessor for CreateVoiceView(0);
  v2 = *(*(VoiceView - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(VoiceView - 8) + 64);
  v5 = v0 + v3;

  sub_26EE05C9C(*(v5 + 16), *(v5 + 24));
  sub_26EE05CA8(*(v5 + 32), *(v5 + 40));
  v6 = v0 + v3 + *(VoiceView + 28);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60) + 32);
  v8 = sub_26EF38A4C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v10 = v5 + *(VoiceView + 44);

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830) + 32);
  v12 = sub_26EF3872C();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_26EEBBD44()
{
  v1 = v0;
  VoiceView = type metadata accessor for CreateVoiceView(0);
  v3 = VoiceView - 8;
  v4 = *(VoiceView - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](VoiceView);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19[-v8];
  v10 = v1 + *(v3 + 48);
  v11 = *v10;
  v12 = *(v10 + 8);
  v19[16] = v11;
  v20 = v12;
  v19[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB0C();
  v13 = sub_26EF3B30C();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  sub_26EEB9B08(v1, v6);
  sub_26EF3B2DC();
  v14 = sub_26EF3B2CC();
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  sub_26EEB9B70(v6, v16 + v15);
  sub_26EE2C388(0, 0, v9, &unk_26EF41B90, v16);

  return result;
}

uint64_t sub_26EEBBF48(uint64_t a1)
{
  VoiceView = type metadata accessor for CreateVoiceView(0);
  v3 = *(VoiceView - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](VoiceView - 8);
  v5 = sub_26EE17094() & 1;
  v6._countAndFlagsBits = 0x4B4341425F4256;
  v6._object = 0xE700000000000000;
  v13 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v6, v5, 0);
  sub_26EEB9B08(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = sub_26EEB9B70(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_26EE12538(v9, v10, v11);
  return sub_26EF3AB7C();
}

uint64_t sub_26EEBC094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  v5 = sub_26EF38A2C();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v6 = sub_26EF3883C();
  v4[32] = v6;
  v4[33] = *(v6 - 8);
  v4[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  v4[35] = swift_task_alloc();
  v7 = sub_26EF38CDC();
  v4[36] = v7;
  v4[37] = *(v7 - 8);
  v4[38] = swift_task_alloc();
  v8 = sub_26EF39DDC();
  v4[39] = v8;
  v4[40] = *(v8 - 8);
  v4[41] = swift_task_alloc();
  v9 = sub_26EF37EDC();
  v4[42] = v9;
  v4[43] = *(v9 - 8);
  v4[44] = swift_task_alloc();
  sub_26EF3B2DC();
  v4[45] = sub_26EF3B2CC();
  v11 = sub_26EF3B29C();
  v4[46] = v11;
  v4[47] = v10;

  return MEMORY[0x2822009F8](sub_26EEBC374, v11, v10);
}

uint64_t sub_26EEBC374()
{
  v1 = *(v0 + 208);
  v2 = *(v1 + 16);
  *(v0 + 384) = v2;
  v3 = *(v1 + 24);
  *(v0 + 466) = v3;
  if (v3 == 1)
  {
    v4 = v2;
  }

  else
  {
    v6 = *(v0 + 320);
    v5 = *(v0 + 328);
    v7 = *(v0 + 312);

    sub_26EF3B46C();
    v8 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    (*(v6 + 8))(v5, v7);
    v4 = *(v0 + 168);
    v1 = *(v0 + 208);
  }

  *(v0 + 392) = v4;
  VoiceView = type metadata accessor for CreateVoiceView(0);
  *(v0 + 400) = VoiceView;
  v10 = (v1 + *(VoiceView + 32));
  v11 = *v10;
  v12 = *(v10 + 2);
  *(v0 + 48) = v11;
  *(v0 + 64) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F88, &qword_26EF41A70);
  sub_26EF3AAFC();
  v13 = *(v0 + 120);
  v14 = *(v0 + 128);
  *(v0 + 408) = v14;
  if (v3)
  {
    v15 = v2;
  }

  else
  {
    v17 = *(v0 + 320);
    v16 = *(v0 + 328);
    v18 = *(v0 + 312);

    sub_26EF3B46C();
    v19 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    (*(v17 + 8))(v16, v18);
    v15 = *(v0 + 176);
  }

  v21 = *(v0 + 296);
  v20 = *(v0 + 304);
  v22 = *(v0 + 288);
  v23 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationLocale;
  swift_beginAccess();
  (*(v21 + 16))(v20, &v15[v23], v22);

  v24 = sub_26EF38CAC();
  v26 = v25;
  *(v0 + 416) = v25;
  (*(v21 + 8))(v20, v22);
  v27 = swift_task_alloc();
  *(v0 + 424) = v27;
  *v27 = v0;
  v27[1] = sub_26EEBC664;
  v28 = *(v0 + 352);

  return VoiceBankingSession.createVoice(named:localeID:)(v28, v13, v14, v24, v26);
}

uint64_t sub_26EEBC664()
{
  v2 = *v1;
  v2[54] = v0;

  v3 = v2[49];

  if (v0)
  {

    v4 = v2[46];
    v5 = v2[47];
    v6 = sub_26EEBCF14;
  }

  else
  {

    v4 = v2[46];
    v5 = v2[47];
    v6 = sub_26EEBC7EC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EEBC7EC()
{
  v1 = (*(v0 + 208) + *(*(v0 + 400) + 40));
  v2 = *v1;
  v3 = *(v1 + 1);
  *(v0 + 152) = v2;
  v4 = *(v0 + 466);
  v5 = *(v0 + 384);
  *(v0 + 160) = v3;
  *(v0 + 465) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB0C();
  if (v4 == 1)
  {
    v6 = v5;
  }

  else
  {
    v7 = *(v0 + 384);
    v9 = *(v0 + 320);
    v8 = *(v0 + 328);
    v10 = *(v0 + 312);

    sub_26EF3B46C();
    v11 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v7, 0);
    (*(v9 + 8))(v8, v10);
    v6 = *(v0 + 192);
  }

  v12 = *(v0 + 344);
  v13 = *(v0 + 336);
  v14 = *(v0 + 280);
  v15 = *(v0 + 208);
  (*(v12 + 16))(v14, *(v0 + 352), v13);
  (*(v12 + 56))(v14, 0, 1, v13);
  v16 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
  swift_beginAccess();
  sub_26EE65A2C(v14, v6 + v16);
  swift_endAccess();

  if (*v15)
  {

    v44 = VoiceBankingNavigationModel.itemPath.modify((v0 + 16));
    v18 = v17;
    v19 = *v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v18 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_26EEB3AD4(0, *(v19 + 2) + 1, 1, v19);
      *v18 = v19;
    }

    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    if (v22 >= v21 >> 1)
    {
      v19 = sub_26EEB3AD4((v21 > 1), v22 + 1, 1, v19);
      *v18 = v19;
    }

    v23 = *(v0 + 264);
    v24 = *(v0 + 272);
    v25 = *(v0 + 256);
    *(v19 + 2) = v22 + 1;
    v26 = &v19[16 * v22];
    *(v26 + 4) = 1;
    v26[40] = 1;
    (v44)(v0 + 16, 0);

    v27 = sub_26EE27DAC();
    (*(v23 + 16))(v24, v27, v25);
    v28 = sub_26EF3881C();
    v29 = sub_26EF3B47C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26EE01000, v28, v29, "CreateVoiceView: Setting up session.", v30, 2u);
      MEMORY[0x2743842A0](v30, -1, -1);
    }

    v31 = *(v0 + 466);
    v32 = *(v0 + 384);
    v34 = *(v0 + 264);
    v33 = *(v0 + 272);
    v35 = *(v0 + 256);

    (*(v34 + 8))(v33, v35);
    if (v31 == 1)
    {
      v36 = v32;
    }

    else
    {
      v38 = *(v0 + 384);
      v40 = *(v0 + 320);
      v39 = *(v0 + 328);
      v41 = *(v0 + 312);

      sub_26EF3B46C();
      v42 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v38, 0);
      (*(v40 + 8))(v39, v41);
      v36 = *(v0 + 200);
    }

    *(v0 + 440) = v36;
    v43 = swift_task_alloc();
    *(v0 + 448) = v43;
    *v43 = v0;
    v43[1] = sub_26EEBCCD8;

    return VoiceBankingSession.setUpSession()();
  }

  else
  {
    type metadata accessor for VoiceBankingNavigationModel(0);
    sub_26EEB7FE4(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EEBCCD8()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  *(*v1 + 456) = v0;

  v4 = *(v2 + 376);
  v5 = *(v2 + 368);
  if (v0)
  {
    v6 = sub_26EEBD1E8;
  }

  else
  {
    v6 = sub_26EEBCE2C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_26EEBCE2C()
{
  v1 = v0[44];
  v2 = v0[42];
  v3 = v0[43];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26EEBCF14()
{

  v1 = *(v0 + 432);
  v2 = *(v0 + 384);
  if (*(v0 + 466) == 1)
  {
    v3 = v2;
  }

  else
  {
    v5 = *(v0 + 320);
    v4 = *(v0 + 328);
    v6 = *(v0 + 312);

    sub_26EF3B46C();
    v7 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    (*(v5 + 8))(v4, v6);
    v3 = *(v0 + 184);
  }

  v8 = *(v0 + 400);
  v10 = *(v0 + 240);
  v9 = *(v0 + 248);
  v12 = *(v0 + 224);
  v11 = *(v0 + 232);
  v14 = *(v0 + 208);
  v13 = *(v0 + 216);
  sub_26EED366C(3);

  v15 = (v14 + *(v8 + 40));
  v16 = *v15;
  v17 = *(v15 + 1);
  *(v0 + 136) = v16;
  *(v0 + 144) = v17;
  *(v0 + 464) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB0C();
  (*(v12 + 104))(v11, *MEMORY[0x277D704D8], v13);
  sub_26EF389BC();
  (*(v12 + 8))(v11, v13);
  v18 = sub_26EF38A4C();
  (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
  sub_26EE13B88(v9, v10, &qword_2806C9BE0, &qword_26EF3D3C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60);
  sub_26EF3AC3C();

  sub_26EE14578(v9, &qword_2806C9BE0, &qword_26EF3D3C0);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_26EEBD1E8()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 456);
  v5 = *(v0 + 384);
  if (*(v0 + 466) == 1)
  {
    v6 = v5;
  }

  else
  {
    v8 = *(v0 + 320);
    v7 = *(v0 + 328);
    v9 = *(v0 + 312);

    sub_26EF3B46C();
    v10 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v5, 0);
    (*(v8 + 8))(v7, v9);
    v6 = *(v0 + 184);
  }

  v11 = *(v0 + 400);
  v13 = *(v0 + 240);
  v12 = *(v0 + 248);
  v15 = *(v0 + 224);
  v14 = *(v0 + 232);
  v17 = *(v0 + 208);
  v16 = *(v0 + 216);
  sub_26EED366C(3);

  v18 = (v17 + *(v11 + 40));
  v19 = *v18;
  v20 = *(v18 + 1);
  *(v0 + 136) = v19;
  *(v0 + 144) = v20;
  *(v0 + 464) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB0C();
  (*(v15 + 104))(v14, *MEMORY[0x277D704D8], v16);
  sub_26EF389BC();
  (*(v15 + 8))(v14, v16);
  v21 = sub_26EF38A4C();
  (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
  sub_26EE13B88(v12, v13, &qword_2806C9BE0, &qword_26EF3D3C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60);
  sub_26EF3AC3C();

  sub_26EE14578(v12, &qword_2806C9BE0, &qword_26EF3D3C0);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_26EEBD4E4@<X0>(uint64_t a1@<X0>, uint64_t a6@<X8>)
{
  type metadata accessor for VoiceBankingNavigationModel(0);
  sub_26EEB7FE4(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
  *a6 = sub_26EF39C1C();
  *(a6 + 8) = v8;
  type metadata accessor for VoiceBankingSession(0);
  sub_26EEB7FE4(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  *(a6 + 16) = sub_26EF3973C();
  *(a6 + 24) = v9 & 1;
  *(a6 + 32) = sub_26EEB802C;
  *(a6 + 40) = 0;
  *(a6 + 48) = 0;
  VoiceView = type metadata accessor for CreateVoiceView(0);
  sub_26EE14D98(a1, a6 + VoiceView[7], &qword_2806C6DA8, &unk_26EF41A60);
  v11 = a6 + VoiceView[8];
  sub_26EF3AAEC();
  *v11 = v18;
  *(v11 + 16) = v19;
  v12 = a6 + VoiceView[9];
  sub_26EF3AAEC();
  *v12 = v18;
  *(v12 + 8) = *(&v18 + 1);
  v13 = a6 + VoiceView[10];
  sub_26EF3AAEC();
  *v13 = v18;
  *(v13 + 8) = *(&v18 + 1);
  sub_26EEB8078((a6 + VoiceView[11]));
  v14 = a6 + VoiceView[12];
  result = sub_26EF3967C();
  *v14 = result & 1;
  *(v14 + 8) = v16;
  *(v14 + 16) = v17 & 1;
  return result;
}

uint64_t sub_26EEBD6E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26EF39DDC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B30, &qword_26EF3D210);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_26EE13B88(v2, &v14 - v9, &qword_2806C6B30, &qword_26EF3D210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26EF396DC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_26EF3B46C();
    v13 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_26EEBD8E8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26EF396DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8DB8, &qword_26EF41C90);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = *(sub_26EF39B7C() + 20);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_26EF39ECC();
  (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
  __asm { FMOV            V0.2D, #12.0 }

  *v12 = _Q0;
  sub_26EF3A9BC();
  sub_26EF3AA2C();

  sub_26EF3975C();

  *&v12[*(v10 + 64)] = 256;
  sub_26EEBD6E8(v8);
  (*(v3 + 104))(v6, *MEMORY[0x277CDF3C0], v2);
  v21 = sub_26EF396CC();
  v22 = *(v3 + 8);
  v22(v6, v2);
  v22(v8, v2);
  v23 = objc_opt_self();
  v24 = &selRef_secondarySystemGroupedBackgroundColor;
  if ((v21 & 1) == 0)
  {
    v24 = &selRef_systemGroupedBackgroundColor;
  }

  v25 = [v23 *v24];
  v26 = sub_26EF3AA5C();
  sub_26EE14D98(v12, a1, &qword_2806C8DB8, &qword_26EF41C90);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8DC0, &qword_26EF41C98);
  *(a1 + *(result + 36)) = v26;
  return result;
}

uint64_t sub_26EEBDBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26EF3A3BC();
  sub_26EF3962C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8D38, &qword_26EF41B98);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8D40, &qword_26EF41BA0) + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  v15 = sub_26EF3AE4C();
  v17 = v16;
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8D48, &qword_26EF41BA8) + 36);
  sub_26EEBD8E8(v18);
  v19 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8D50, &qword_26EF41BB0) + 36));
  *v19 = v15;
  v19[1] = v17;
  v20 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8D58, &qword_26EF41BB8) + 36));
  v21 = *(sub_26EF39B7C() + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_26EF39ECC();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  __asm { FMOV            V0.2D, #12.0 }

  *v20 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8358, &qword_26EF40040);
  *&v20[*(result + 36)] = 256;
  return result;
}

char *sub_26EEBDD80(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26EEBEE0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26EEBDDC0(uint64_t a1)
{
  v2 = type metadata accessor for CustomTextFieldStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EEBDE1C(uint64_t a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for CreateVoiceView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_26EEBB87C(a2, v5);
}

uint64_t sub_26EEBDE90()
{
  v2 = *(type metadata accessor for CreateVoiceView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE05D7C;

  return sub_26EEBC094(v4, v5, v6, v0 + v3);
}

uint64_t sub_26EEBDFA4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[7];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[8] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_26EEBE0FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[7];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_26EEBE240(uint64_t a1)
{
  sub_26EE1F73C(319);
  if (v1 <= 0x3F)
  {
    sub_26EEBE684(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_26EEBE3D4(319);
      if (v3 <= 0x3F)
      {
        sub_26EEBE468(319);
        if (v4 <= 0x3F)
        {
          sub_26EE78014(319, &qword_2806C7FA8, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            sub_26EE78014(319, &qword_2806C7350, MEMORY[0x277D839B0]);
            if (v6 <= 0x3F)
            {
              sub_26EEBE684(319, &qword_2806C8070, MEMORY[0x277CE7670], MEMORY[0x277CE11F8]);
              if (v7 <= 0x3F)
              {
                sub_26EE78060();
                if (v8 <= 0x3F)
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

void sub_26EEBE3D4(uint64_t a1)
{
  if (!qword_2806C8D60)
  {
    type metadata accessor for VoiceBankingAccountInformationModel();
    sub_26EEB7FE4(&qword_2806C8D00, type metadata accessor for VoiceBankingAccountInformationModel, &protocol conformance descriptor for VoiceBankingAccountInformationModel);
    v1 = sub_26EF3978C();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C8D60);
    }
  }
}

void sub_26EEBE468(uint64_t a1)
{
  if (!qword_2806C8D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9BE0, &qword_26EF3D3C0);
    v1 = sub_26EF3AC9C();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C8D68);
    }
  }
}

uint64_t sub_26EEBE4E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6BD0, qword_26EF3D350);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26EEBE56C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6BD0, qword_26EF3D350);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_26EEBE5E8(uint64_t a1)
{
  sub_26EEBE684(319, &qword_2806C6BD8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26EEBE684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_26EEBE6EC()
{
  result = qword_2806C8D70;
  if (!qword_2806C8D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8CE0, &qword_26EF41AC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8C80, &qword_26EF41A80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8CC0, &qword_26EF41AA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8C78, &qword_26EF41A78);
    sub_26EE154C8(&qword_2806C8CB8, &qword_2806C8C78, &qword_26EF41A78, MEMORY[0x277CE7668]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8CC8, &qword_26EF41AB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8CD0, &unk_26EF41AB8);
    sub_26EEB9158();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8D70);
  }

  return result;
}

uint64_t sub_26EEBE8BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_26EEBE940()
{
  result = qword_2806C8D80;
  if (!qword_2806C8D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8D88, &qword_26EF41C88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8D08, &qword_26EF41B20);
    type metadata accessor for CustomTextFieldStyle(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8D18, &qword_26EF41B68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8D20, &unk_26EF41B70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F40, &unk_26EF3F938);
    sub_26EE154C8(&qword_2806C7F48, &qword_2806C7F40, &unk_26EF3F938, MEMORY[0x277CDF1A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26EEB7FE4(&qword_2806C8D28, type metadata accessor for CustomTextFieldStyle, &unk_26EF41C10);
    swift_getOpaqueTypeConformance2();
    sub_26EEB7FE4(&qword_2806C6AD8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8D80);
  }

  return result;
}

unint64_t sub_26EEBEB90()
{
  result = qword_2806C8D90;
  if (!qword_2806C8D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8D58, &qword_26EF41BB8);
    sub_26EEBEC48();
    sub_26EE154C8(&qword_2806C83B0, &qword_2806C8358, &qword_26EF40040, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8D90);
  }

  return result;
}

unint64_t sub_26EEBEC48()
{
  result = qword_2806C8D98;
  if (!qword_2806C8D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8D48, &qword_26EF41BA8);
    sub_26EEBED00();
    sub_26EE154C8(&qword_2806C8DB0, &qword_2806C8D50, &qword_26EF41BB0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8D98);
  }

  return result;
}

unint64_t sub_26EEBED00()
{
  result = qword_2806C8DA0;
  if (!qword_2806C8DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8D40, &qword_26EF41BA0);
    sub_26EE154C8(&qword_2806C8DA8, &qword_2806C8D38, &qword_26EF41B98, MEMORY[0x277CDF1A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8DA0);
  }

  return result;
}

unint64_t sub_26EEBEDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C8DC8;
  if (!qword_2806C8DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8DC8);
  }

  return result;
}

char *sub_26EEBEE0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8620, &qword_26EF40730);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_26EEBEF18()
{
  v1 = *(type metadata accessor for CreateVoiceView(0) - 8);
  if (*(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80))))
  {

    v3 = VoiceBankingNavigationModel.itemPath.modify(v6);
    if (*(*v2 + 16))
    {
      v4 = v2;
      sub_26EEBF0E8(v5);
      if (v5[9] == 1)
      {
        sub_26EEBF054(*(*v4 + 16) - 1, v5);
      }
    }

    (v3)(v6, 0);
  }

  else
  {
    type metadata accessor for VoiceBankingNavigationModel(0);
    sub_26EEB7FE4(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
    sub_26EF39BFC();
    __break(1u);
  }
}

uint64_t sub_26EEBF054@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26EEBF164(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v5 + 16 * a1;
    v9 = *(v8 + 32);
    v8 += 32;
    v10 = v7 - 1;
    v11 = *(v8 + 8);
    *a2 = v9;
    *(a2 + 8) = v11;
    result = memmove(v8, (v8 + 16), 16 * (v10 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26EEBF0E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
LABEL_3:
      v6 = v5 - 1;
      v7 = v3 + 16 * v6;
      v8 = *(v7 + 32);
      LOBYTE(v7) = *(v7 + 40);
      *a1 = v8;
      *(a1 + 8) = v7;
      *(v3 + 16) = v6;
      *v1 = v3;
      *(a1 + 9) = 0;
      return result;
    }
  }

  else
  {
    result = sub_26EEBF164(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_21Tm()
{
  VoiceView = type metadata accessor for CreateVoiceView(0);
  v2 = *(*(VoiceView - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(VoiceView - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_26EE05C9C(*(v5 + 16), *(v5 + 24));
  sub_26EE05CA8(*(v5 + 32), *(v5 + 40));
  v6 = v0 + v3 + *(VoiceView + 28);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60) + 32);
  v8 = sub_26EF38A4C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v10 = v5 + *(VoiceView + 44);

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830) + 32);
  v12 = sub_26EF3872C();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EEBF3A8()
{
  type metadata accessor for CreateVoiceView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26EE15538;

  return sub_26EEB9C34();
}

uint64_t EnvironmentValues.ttsEditModeOverride.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26EEBF4BC(a1, a2, a3);
  sub_26EF39DEC();
  return v4;
}

unint64_t sub_26EEBF4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806CDA20;
  if (!qword_2806CDA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CDA20);
  }

  return result;
}

uint64_t sub_26EEBF510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_26EEBF4BC(a1, a2, a3);
  result = sub_26EF39DEC();
  *a4 = v6;
  return result;
}

uint64_t (*EnvironmentValues.ttsEditModeOverride.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *a1 = v3;
  *(a1 + 8) = sub_26EEBF4BC(a1, a2, a3);
  sub_26EF39DEC();
  *(a1 + 16) = *(a1 + 17);
  return sub_26EEBF650;
}

double View.ttsEditMode(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_26EF3A68C();

  return result;
}

uint64_t sub_26EEBF6FC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_26EF39E4C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F68, &unk_26EF41FF0);
  return sub_26EF3A26C();
}

uint64_t sub_26EEBF750()
{
  v1 = sub_26EF39DDC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 40);
  if (*(v0 + 48) != 1)
  {

    sub_26EF3B46C();
    v6 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE54224(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_26EEBF8BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26EF39DDC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8DF8, &qword_26EF41D88);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for VoicePickerPickableView(0);
  sub_26EE13B88(v1 + *(v10 + 28), v9, &qword_2806C8DF8, &qword_26EF41D88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26EE14D98(v9, a1, &qword_2806C86A0, &qword_26EF407E0);
  }

  sub_26EF3B46C();
  v12 = sub_26EF3A36C();
  sub_26EF3880C();

  sub_26EF39DCC();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26EEBFAA4()
{
  v1 = sub_26EF39DDC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for VoicePickerPickableView(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26EF3B46C();
    v7 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE54224(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t type metadata accessor for VoicePickerPickableView(uint64_t a1)
{
  result = qword_2806CDAD0;
  if (!qword_2806CDAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EEBFC48()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E00, &qword_26EF41D98);
  v74 = *(v2 - 8);
  v75 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v69 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E08, &qword_26EF41DA0);
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v69 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E10, &qword_26EF41DA8);
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v69 - v9;
  v11 = sub_26EF3AE0C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C86A0, &qword_26EF407E0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v69 - v16;
  sub_26EEBF8BC(&v69 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8698, &qword_26EF41D90);
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) == 1)
  {
    sub_26EE14578(v17, &qword_2806C86A0, &qword_26EF407E0);
    goto LABEL_4;
  }

  MEMORY[0x274382CF0](v18);
  sub_26EE14578(v17, &qword_2806C8698, &qword_26EF41D90);
  v19 = sub_26EF3ADFC();
  (*(v12 + 8))(v14, v11);
  if ((v19 & 1) == 0)
  {
LABEL_4:
    if ((sub_26EEBFAA4() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v20 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v22 = *(v20 + 80);
  v23 = *(v22(ObjectType, v20) + 16);

  if (v23)
  {
    v69 = v22(ObjectType, v20);
    v76 = v69;
    v24 = v70;
    v25 = v71;
    (*(v70 + 104))(v7, *MEMORY[0x277CC8AF0], v71);
    v27 = v74;
    v26 = v75;
    (*(v74 + 104))(v4, *MEMORY[0x277CC8B08], v75);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E18, &qword_26EF429C0);
    sub_26EE154C8(&qword_2806C8E20, &qword_2806C8E18, &qword_26EF429C0, MEMORY[0x277D83970]);
    sub_26EF37CBC();
    (*(v27 + 8))(v4, v26);
    (*(v24 + 8))(v7, v25);
    sub_26EE154C8(&qword_2806C8E28, &qword_2806C8E10, &qword_26EF41DA8, MEMORY[0x277CC8B28]);
    v28 = v73;
    sub_26EF3B1AC();
    (*(v72 + 8))(v10, v28);

    v29 = v77;
    v30 = v78;
    v31 = sub_26EE17094();
    v32._object = 0xEB00000000454741;
    v33 = v31 & 1;
    v32._countAndFlagsBits = 0x53555F4543494F56;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v32, v33, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_26EF3C6B0;
    *(v34 + 56) = MEMORY[0x277D837D0];
    *(v34 + 64) = sub_26EE1EFBC(v34, v35, v36);
    *(v34 + 32) = v29;
    *(v34 + 40) = v30;
    v37 = sub_26EF3B10C();

    return v37;
  }

LABEL_7:
  v39 = *(v1 + 8);
  v40 = swift_getObjectType();
  (*(v39 + 88))(&v76, v40, v39);
  v41 = *&v76;
  if (BYTE4(v76))
  {
    if (BYTE4(v76) == 1)
    {
      if (v76)
      {
        v42 = (*(v39 + 64))(v40, v39);
        if ((v42 & 0x100000000) == 0)
        {
          v43 = v42;
          v44 = sub_26EE17094() & 1;
          v45._countAndFlagsBits = 0x73752E6563617073;
          v45._object = 0xEA00000000006465;
          TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v45, v44, 0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
          v46 = swift_allocObject();
          *(v46 + 16) = xmmword_26EF3C6B0;
          v47 = [objc_opt_self() stringFromByteCount:v43 countStyle:0];
          v48 = sub_26EF3B0FC();
          v50 = v49;

          *(v46 + 56) = MEMORY[0x277D837D0];
          *(v46 + 64) = sub_26EE1EFBC(v51, v52, v53);
          *(v46 + 32) = v48;
          *(v46 + 40) = v50;
          v54 = sub_26EF3B10C();

          return v54;
        }
      }
    }

    else
    {
      v67 = (*(v39 + 56))(v40, v39);
      if ((v67 & 0x100000000) == 0)
      {
        v68 = [objc_opt_self() stringFromByteCount:v67 countStyle:0];
        v54 = sub_26EF3B0FC();

        return v54;
      }
    }

    return 0;
  }

  result = (*(v39 + 56))(v40, v39);
  if ((result & 0x100000000) == 0)
  {
    v55 = result;
    v56 = v41 * result;
    if (COERCE_INT(fabs(v56)) > 2139095039)
    {
      __break(1u);
    }

    else if (v56 > -9.2234e18)
    {
      if (v56 < 9.2234e18)
      {
        v57 = v56;
        v58 = objc_opt_self();
        v59 = [v58 stringFromByteCount:v57 countStyle:0];
        v60 = sub_26EF3B0FC();
        v62 = v61;

        v77 = v60;
        v78 = v62;
        MEMORY[0x274383240](47, 0xE100000000000000);
        v63 = [v58 stringFromByteCount:v55 countStyle:0];
        v64 = sub_26EF3B0FC();
        v66 = v65;

        MEMORY[0x274383240](v64, v66);

        return v77;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  return 0;
}

double sub_26EEC04D4()
{
  v1 = v0;
  v2 = sub_26EF3AE0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C86A0, &qword_26EF407E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  sub_26EEBF8BC(&v30 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8698, &qword_26EF41D90);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    sub_26EE14578(v8, &qword_2806C86A0, &qword_26EF407E0);
  }

  else
  {
    MEMORY[0x274382CF0](v9);
    sub_26EE14578(v8, &qword_2806C8698, &qword_26EF41D90);
    v10 = sub_26EF3ADFC();
    (*(v3 + 8))(v5, v2);
    if (v10)
    {
      return result;
    }
  }

  if ((sub_26EEBFAA4() & 1) == 0)
  {
    v12 = v1[1];
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 88);
    v14(&v40, ObjectType, v12);
    if (BYTE4(v40))
    {
      if (BYTE4(v40) == 1)
      {
        if (sub_26EEBF750())
        {
          v15 = v1[2];
          v16 = v1[3];
          v17 = v1[4];
          v31 = v15;
          v38 = v15;
          *&v39 = v16;
          *(&v39 + 1) = v17;
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8548, &unk_26EF40380);
          MEMORY[0x274382CF0](&v33);
          v18 = v33;
          v19 = *(v12 + 48);
          v20 = v19(ObjectType, v12);
          v22 = sub_26EEC10CC(v20, v21, v18);

          v23 = v19(ObjectType, v12);
          v25 = v24;
          v26 = v31;
          v38 = v31;
          *&v39 = v16;
          *(&v39 + 1) = v17;

          if (v22)
          {
            MEMORY[0x274382CF0](&v37, v30);
            sub_26EEC696C(v23, v25);

            v33 = v26;
            v34 = v16;
            v35 = v17;
            v36 = v37;
          }

          else
          {
            MEMORY[0x274382CF0](&v36, v30);
            sub_26EE92004(&v37, v23, v25);

            v33 = v26;
            v34 = v16;
            v35 = v17;
            v32 = v36;
          }

          sub_26EF3AC3C();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8620, &qword_26EF40730);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_26EF3C6B0;
          *(inited + 32) = (*(v12 + 48))(ObjectType, v12);
          *(inited + 40) = v28;
          v29 = sub_26EE9592C(inited);
          swift_setDeallocating();
          sub_26EE95A18(inited + 32);
          v38 = v1[2];
          v39 = *(v1 + 3);
          v33 = v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8548, &unk_26EF40380);
          sub_26EF3AC3C();
        }

        return result;
      }

      if (v40)
      {
        return result;
      }
    }

    v14(&v38, ObjectType, v12);
    if (!BYTE4(v38))
    {
      goto LABEL_15;
    }

    if (BYTE4(v38) != 1)
    {
      (*(v12 + 112))(ObjectType, v12);
      return result;
    }

    if (v38)
    {
LABEL_15:
      (*(v12 + 104))(ObjectType, v12);
    }
  }

  return result;
}

uint64_t sub_26EEC09E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  sub_26EF3B2DC();
  v4[13] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[14] = v6;
  v4[15] = v5;

  return MEMORY[0x2822009F8](sub_26EEC0A80, v6, v5);
}

uint64_t sub_26EEC0A80()
{
  v1 = *(v0 + 96);
  v2 = (v1 + *(type metadata accessor for VoicePickerPickableView(0) + 36));
  v3 = *v2;
  *(v0 + 197) = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 128) = v4;
  *(v0 + 24) = v4;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  if (*(v0 + 192) == 1)
  {
    sub_26EF381CC();
    *(v0 + 144) = sub_26EF381BC();
    v14 = (*MEMORY[0x277D701B0] + MEMORY[0x277D701B0]);
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    *v5 = v0;
    v5[1] = sub_26EEC0C98;

    return v14();
  }

  else
  {
    *(v0 + 32) = v3;
    v7 = *(v0 + 96);
    *(v0 + 40) = v4;
    *(v0 + 193) = 1;
    sub_26EF3AB0C();
    sub_26EF381CC();
    *(v0 + 160) = sub_26EF381BC();
    v8 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 48))(ObjectType, v8);
    v12 = v11;
    *(v0 + 168) = v11;
    v15 = (*MEMORY[0x277D701B8] + MEMORY[0x277D701B8]);
    v13 = swift_task_alloc();
    *(v0 + 176) = v13;
    *v13 = v0;
    v13[1] = sub_26EEC0E6C;

    return v15(v10, v12);
  }
}

uint64_t sub_26EEC0C98()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_26EEC0DDC, v3, v2);
}

uint64_t sub_26EEC0DDC()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 197);

  *(v0 + 80) = v2;
  *(v0 + 88) = v1;
  *(v0 + 196) = 0;
  sub_26EF3AB0C();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26EEC0E6C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_26EEC1020;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_26EEC0F90;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26EEC0F90()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 197);

  *(v0 + 64) = v2;
  *(v0 + 72) = v1;
  *(v0 + 195) = 0;
  sub_26EF3AB0C();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26EEC1020()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 197);

  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  *(v0 + 194) = 0;
  sub_26EF3AB0C();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26EEC10CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_26EF3B87C();
  sub_26EF3B16C();
  v6 = sub_26EF3B8CC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_26EF3B82C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_26EEC11C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  sub_26EF3B2DC();
  v4[5] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_26EEC125C, v6, v5);
}

uint64_t sub_26EEC125C()
{
  v1 = v0[4];
  sub_26EF381CC();
  v0[8] = sub_26EF381BC();
  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 48))(ObjectType, v2);
  v6 = v5;
  v0[9] = v5;
  v9 = (*MEMORY[0x277D701A8] + MEMORY[0x277D701A8]);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_26EEC135C;

  return v9(v4, v6);
}

uint64_t sub_26EEC135C(char a1)
{
  v2 = *v1;
  *(*v1 + 89) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return MEMORY[0x2822009F8](sub_26EEC14C4, v4, v3);
}

uint64_t sub_26EEC14C4()
{
  v1 = *(v0 + 89);
  v2 = *(v0 + 32);

  v3 = (v2 + *(type metadata accessor for VoicePickerPickableView(0) + 40));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 88) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB0C();
  v6 = *(v0 + 8);

  return v6();
}

BOOL sub_26EEC157C()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 88))(&v12, ObjectType, v1);
  if (BYTE4(v12) != 1)
  {
    return 0;
  }

  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v10[1] = *(v0 + 16);
  v11 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8548, &unk_26EF40380);
  MEMORY[0x274382CF0](v10, v3);
  v4 = v10[0];
  v5 = (*(v1 + 48))(ObjectType, v1);
  v7 = sub_26EEC10CC(v5, v6, v4);

  if (v7)
  {
    return 0;
  }

  v9 = *((*(v1 + 80))(ObjectType, v1) + 16);

  return v9 == 0;
}

uint64_t sub_26EEC16A8()
{
  v1 = v0;
  v2 = sub_26EF39F4C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6AB0, &unk_26EF3D7E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26EF3C6B0;
  sub_26EF39F3C();
  v19 = v9;
  sub_26EEC8DCC(&qword_2806C6AB8, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6AC0, qword_26EF3D0B0);
  sub_26EE154C8(&qword_2806C6AC8, &qword_2806C6AC0, qword_26EF3D0B0, MEMORY[0x277D83970]);
  sub_26EF3B68C();
  v19 = *(v1 + 16);
  v20 = *(v1 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8548, &unk_26EF40380);
  MEMORY[0x274382CF0](&v18, v10);
  v11 = v18;
  v12 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v14 = (*(v12 + 48))(ObjectType, v12);
  LOBYTE(v12) = sub_26EEC10CC(v14, v15, v11);

  if (v12)
  {
    sub_26EF39EDC();
    sub_26EF39F1C();
    v17 = *(v3 + 8);
    v17(v6, v2);
    return (v17)(v8, v2);
  }

  return result;
}

uint64_t sub_26EEC1948@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = type metadata accessor for VoicePickerPickableView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E30, &qword_26EF41DD0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E38, &qword_26EF41DD8);
  v11 = *(v10 - 8);
  v25 = v10;
  v26 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  sub_26EEC6DD0(v2, &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_26EEC6E38(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v28 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E40, &qword_26EF41DE0);
  sub_26EEC6F70();
  sub_26EF3AB4C();
  v16 = sub_26EE154C8(&qword_2806C8E60, &qword_2806C8E30, &qword_26EF41DD0, MEMORY[0x277CDF028]);
  v19 = sub_26EEC7054(v16, v17, v18);
  sub_26EF3A66C();
  (*(v7 + 8))(v9, v6);
  v20 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  (*(v20 + 48))(ObjectType, v20);
  v29 = v6;
  v30 = &type metadata for SuperPlainButtonStyle;
  v31 = v16;
  v32 = v19;
  swift_getOpaqueTypeConformance2();
  v22 = v25;
  sub_26EF3A82C();

  return (*(v26 + 8))(v13, v22);
}

uint64_t sub_26EEC1CA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v199 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F90, &qword_26EF42080);
  v197 = *(v3 - 8);
  v198 = v3;
  MEMORY[0x28223BE20](v3);
  v194 = &v183 - v4;
  v5 = sub_26EF3AA9C();
  v189 = *(v5 - 8);
  v190 = v5;
  MEMORY[0x28223BE20](v5);
  v188 = &v183 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F98, &qword_26EF42088);
  v7 = MEMORY[0x28223BE20](v191);
  v193 = &v183 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v192 = &v183 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8FA0, &qword_26EF42090);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v210 = &v183 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v216 = &v183 - v13;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8FA8, &qword_26EF42098);
  MEMORY[0x28223BE20](v206);
  v207 = &v183 - v14;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8FB0, &qword_26EF420A0);
  v15 = MEMORY[0x28223BE20](v212);
  v209 = &v183 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v215 = &v183 - v17;
  v18 = sub_26EF3A15C();
  v213 = *(v18 - 8);
  v214 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v183 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for VoicePickerPickableView(0);
  v204 = *(v21 - 8);
  v205 = v21;
  MEMORY[0x28223BE20](v21);
  v200 = v22;
  v201 = &v183 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8FB8, &qword_26EF420A8);
  v196 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v24 = &v183 - v23;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8FC0, &qword_26EF420B0);
  v25 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v27 = &v183 - v26;
  v28 = sub_26EF3AE0C();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v183 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C86A0, &qword_26EF407E0);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v183 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8FC8, &qword_26EF420B8);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v208 = &v183 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v217 = &v183 - v38;
  v211 = a1;
  sub_26EEBF8BC(v34);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8698, &qword_26EF41D90);
  if ((*(*(v39 - 8) + 48))(v34, 1, v39) == 1)
  {
    sub_26EE14578(v34, &qword_2806C86A0, &qword_26EF407E0);
    v40 = v211;
  }

  else
  {
    MEMORY[0x274382CF0](v39);
    sub_26EE14578(v34, &qword_2806C8698, &qword_26EF41D90);
    v41 = sub_26EF3ADFC();
    (*(v29 + 8))(v31, v28);
    v40 = v211;
    if (v41)
    {
      goto LABEL_5;
    }
  }

  if (sub_26EEBFAA4())
  {
LABEL_5:
    v42 = sub_26EEC157C();
    v43 = v204;
    if (v42)
    {
      v44 = v201;
      sub_26EEC6DD0(v40, v201);
      v45 = (*(v43 + 80) + 16) & ~*(v43 + 80);
      v46 = swift_allocObject();
      sub_26EEC6E38(v44, v46 + v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9090, &qword_26EF42198);
      sub_26EEC8C84();
      sub_26EF3AB4C();
      sub_26EF3A14C();
      sub_26EE154C8(&qword_2806C90B0, &qword_2806C8FB8, &qword_26EF420A8, MEMORY[0x277CDF028]);
      sub_26EEC8DCC(&qword_2806C8FF8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
      v47 = v202;
      v48 = v214;
      sub_26EF3A65C();
      (*(v213 + 8))(v20, v48);
      (*(v196 + 8))(v24, v47);
      v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C90B8, &qword_26EF421A8) + 36)] = 0;
      v49 = sub_26EF3A3EC();
      sub_26EF3962C();
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = v56;
      v58 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C90C0, &qword_26EF421B0) + 36)];
      *v58 = v49;
      *(v58 + 1) = v51;
      *(v58 + 2) = v53;
      *(v58 + 3) = v55;
      *(v58 + 4) = v57;
      v58[40] = 0;
      v59 = sub_26EF3A40C();
      sub_26EF3962C();
      v60 = v203;
      v61 = &v27[*(v203 + 36)];
      *v61 = v59;
      *(v61 + 1) = v62;
      *(v61 + 2) = v63;
      *(v61 + 3) = v64;
      *(v61 + 4) = v65;
      v61[40] = 0;
      sub_26EE14D98(v27, v217, &qword_2806C8FC0, &qword_26EF420B0);
      v66 = v60;
      v67 = 0;
    }

    else
    {
      v67 = 1;
      v66 = v203;
    }

    goto LABEL_9;
  }

  v67 = 1;
  v66 = v203;
  v43 = v204;
LABEL_9:
  (*(v25 + 56))(v217, v67, 1, v66);
  v68 = v201;
  sub_26EEC6DD0(v40, v201);
  v69 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v186 = *(v43 + 80);
  v70 = swift_allocObject();
  v187 = v69;
  v71 = sub_26EEC6E38(v68, v70 + v69);
  MEMORY[0x28223BE20](v71);
  *(&v183 - 2) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8FD0, &qword_26EF420C0);
  sub_26EEC8528();
  v72 = v207;
  sub_26EF3AB4C();
  v73 = v40 + *(v205 + 40);
  v74 = *v73;
  v75 = *(v73 + 1);
  LOBYTE(v282[0]) = v74;
  *(&v282[0] + 1) = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  LOBYTE(v68) = v273;
  KeyPath = swift_getKeyPath();
  v77 = swift_allocObject();
  *(v77 + 16) = (v68 & 1) == 0;
  v78 = (v72 + *(v206 + 36));
  *v78 = KeyPath;
  v78[1] = sub_26EE274EC;
  v78[2] = v77;
  sub_26EF3A14C();
  sub_26EEC85F4();
  sub_26EEC8DCC(&qword_2806C8FF8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v79 = v215;
  v80 = v214;
  sub_26EF3A65C();
  (*(v213 + 8))(v20, v80);
  sub_26EE14578(v72, &qword_2806C8FA8, &qword_26EF42098);
  *(v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9000, &qword_26EF42108) + 36)) = 0;
  LOBYTE(KeyPath) = sub_26EF3A3EC();
  sub_26EF3962C();
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v89 = v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9008, &qword_26EF42110) + 36);
  *v89 = KeyPath;
  *(v89 + 8) = v82;
  *(v89 + 16) = v84;
  *(v89 + 24) = v86;
  *(v89 + 32) = v88;
  *(v89 + 40) = 0;
  LOBYTE(KeyPath) = sub_26EF3A40C();
  sub_26EF3962C();
  v90 = v79 + *(v212 + 36);
  *v90 = KeyPath;
  *(v90 + 8) = v91;
  *(v90 + 16) = v92;
  *(v90 + 24) = v93;
  *(v90 + 32) = v94;
  *(v90 + 40) = 0;
  v207 = sub_26EF39F6C();
  LOBYTE(v273) = 1;
  v95 = v40[1];
  ObjectType = swift_getObjectType();
  *&v282[0] = (*(v95 + 40))(ObjectType, v95);
  *(&v282[0] + 1) = v97;
  sub_26EE12538(*&v282[0], v97, v98);
  v212 = sub_26EF3A5DC();
  v213 = v99;
  v101 = v100;
  v214 = v102;
  v103 = sub_26EEBFC48();
  if (v104)
  {
    *&v282[0] = v103;
    *(&v282[0] + 1) = v104;
    v105 = sub_26EF3A5DC();
    v107 = v106;
    v109 = v108;
    sub_26EF3A4CC();
    v110 = v101;
    v111 = sub_26EF3A5BC();
    v113 = v112;
    LODWORD(v206) = v114;
    v116 = v115;
    v40 = v211;

    v117 = v109 & 1;
    v118 = v113;
    v119 = v107;
    v120 = v111;
    v101 = v110;
    sub_26EE12ABC(v105, v119, v117);

    v121 = v206 & 1;
    sub_26EE13B20(v120, v113, v206 & 1);
  }

  else
  {
    v120 = 0;
    v118 = 0;
    v121 = 0;
    v116 = 0;
  }

  v122 = v101 & 1;
  v124 = v212;
  v123 = v213;
  sub_26EE13B20(v212, v213, v122);

  sub_26EEAFB98(v120, v118, v121, v116);
  sub_26EE5AAAC(v120, v118, v121, v116);
  LOBYTE(v282[0]) = v122;
  v205 = v118;
  v206 = v120;
  v204 = v121;
  sub_26EE5AAAC(v120, v118, v121, v116);
  LODWORD(v203) = v122;
  sub_26EE12ABC(v124, v123, v122);

  LODWORD(v202) = v273;
  *&v282[0] = v40[2];
  *(v282 + 8) = *(v40 + 3);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8548, &unk_26EF40380);
  MEMORY[0x274382CF0](&v273, v125);
  v126 = v273;
  v127 = *v40;
  v128 = v40[1];
  v129 = swift_getObjectType();
  v130 = *(v128 + 48);
  v195 = v129;
  v131 = v130(v129, v128);
  v133 = sub_26EEC10CC(v131, v132, v126);

  v196 = v116;
  if (v133)
  {
    sub_26EF3AA8C();
    v134 = *MEMORY[0x277CE0FE0];
    v136 = v188;
    v135 = v189;
    v137 = *(v189 + 104);
    v185 = v127;
    v138 = v190;
    v137(v188, v134, v190);
    v139 = sub_26EF3AADC();

    (*(v135 + 8))(v136, v138);
    sub_26EF3AE4C();
    sub_26EF3984C();
    *&v218[38] = v297;
    *&v218[22] = v296;
    *&v218[6] = v295;
    *(v274 + 2) = *v218;
    LOBYTE(v261) = 1;
    v273 = v139;
    LOWORD(v274[0]) = 1;
    *(&v274[1] + 2) = *&v218[16];
    *(&v274[2] + 2) = *&v218[32];
    *&v274[3] = *(&v297 + 1);
    sub_26EF3A47C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9060, &unk_26EF43210);
    sub_26EEC8954();
    v140 = v192;
    sub_26EF3A64C();
    v283 = v274[1];
    v284 = v274[2];
    *&v285 = *&v274[3];
    v282[0] = v273;
    v282[1] = v274[0];
    sub_26EE14578(v282, &qword_2806C9060, &unk_26EF43210);
    v141 = sub_26EF3A96C();
    v142 = swift_getKeyPath();
    v143 = (v140 + *(v191 + 36));
    *v143 = v142;
    v143[1] = v141;
    sub_26EF3AE4C();
    sub_26EF3984C();
    v189 = v300;
    v190 = v298;
    v188 = v302;
    v184 = v303;
    LOBYTE(v273) = 1;
    LOBYTE(v261) = v299;
    LOBYTE(v231) = v301;
    v191 = v128;
    v144 = v193;
    sub_26EE13B88(v140, v193, &qword_2806C8F98, &qword_26EF42088);
    LOBYTE(v138) = v273;
    v145 = v261;
    LOBYTE(v135) = v231;
    v146 = v194;
    sub_26EE13B88(v144, v194, &qword_2806C8F98, &qword_26EF42088);
    v147 = v146 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9088, &qword_26EF42190) + 48);
    *v147 = 0;
    *(v147 + 8) = v138;
    v148 = v189;
    *(v147 + 16) = v190;
    *(v147 + 24) = v145;
    *(v147 + 32) = v148;
    *(v147 + 40) = v135;
    v149 = v184;
    *(v147 + 48) = v188;
    *(v147 + 56) = v149;
    sub_26EE14578(v140, &qword_2806C8F98, &qword_26EF42088);
    v128 = v191;
    sub_26EE14578(v144, &qword_2806C8F98, &qword_26EF42088);
    v150 = v216;
    sub_26EE14D98(v146, v216, &qword_2806C8F90, &qword_26EF42080);
    (*(v197 + 56))(v150, 0, 1, v198);
  }

  else
  {
    (*(v197 + 56))(v216, 1, 1, v198);
  }

  v151 = *(v128 + 88);
  v152 = v195;
  v151(&v219, v195, v128);
  if (BYTE4(v219) == 1)
  {
    sub_26EEC86D8(&v273);
  }

  else
  {
    v153 = v201;
    sub_26EEC6DD0(v211, v201);
    v154 = v187;
    v155 = swift_allocObject();
    sub_26EEC6E38(v153, v155 + v154);
    v151(v282, v152, v128);
    LODWORD(v273) = v282[0];
    BYTE4(v273) = BYTE4(v282[0]);
    *(swift_allocObject() + 16) = 0x4034000000000000;
    v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9038, &qword_26EF431F0);
    v157 = sub_26EEC87E4();
    TTSDownloadButton.init(action:buttonState:size:downloadView:)(sub_26EEC86E4, v155, &v273, sub_26EEC87DC, v156, v157, &v231, 25.0);
    v278 = v239;
    v279 = v240;
    v280 = v241;
    v274[3] = v235;
    v275 = v236;
    v276 = v237;
    v277 = v238;
    v273 = v231;
    v274[0] = v232;
    v274[1] = v233;
    v274[2] = v234;
    sub_26EEC8A00(&v273);
  }

  v269 = v278;
  v270 = v279;
  v271 = v280;
  v272 = v281;
  v265 = v274[3];
  v266 = v275;
  v267 = v276;
  v268 = v277;
  v261 = v273;
  v262 = v274[0];
  v263 = v274[1];
  v264 = v274[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9010, &qword_26EF42118);
  sub_26EE154C8(&qword_2806C9018, &qword_2806C9010, &qword_26EF42118, &protocol conformance descriptor for TTSDownloadButton<A>);
  sub_26EF3A06C();
  v239 = v289;
  v240 = v290;
  v241 = v291;
  v242 = v292;
  v235 = v285;
  v236 = v286;
  v237 = v287;
  v238 = v288;
  v231 = v282[0];
  v232 = v282[1];
  v233 = v283;
  v234 = v284;
  CGSizeMake();
  v158 = v208;
  sub_26EE13B88(v217, v208, &qword_2806C8FC8, &qword_26EF420B8);
  v159 = v209;
  sub_26EE13B88(v215, v209, &qword_2806C8FB0, &qword_26EF420A0);
  v160 = v210;
  sub_26EE13B88(v216, v210, &qword_2806C8FA0, &qword_26EF42090);
  v228 = v240;
  v229 = v241;
  v224 = v236;
  v225 = v237;
  v230 = v242;
  v226 = v238;
  v227 = v239;
  v219 = v231;
  v220 = v232;
  v221 = v233;
  v222 = v234;
  v223 = v235;
  v161 = v158;
  v162 = v199;
  sub_26EE13B88(v161, v199, &qword_2806C8FC8, &qword_26EF420B8);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9020, &qword_26EF42120);
  sub_26EE13B88(v159, v162 + v163[12], &qword_2806C8FB0, &qword_26EF420A0);
  v164 = v162 + v163[16];
  v243 = v207;
  LOBYTE(v244) = v202;
  *(&v244 + 1) = v294[0];
  DWORD1(v244) = *(v294 + 3);
  *(&v244 + 1) = v212;
  *&v245 = v213;
  BYTE8(v245) = v203;
  *(&v245 + 9) = v293[0];
  HIDWORD(v245) = *(v293 + 3);
  *&v246 = v214;
  *(&v246 + 1) = v206;
  *&v247 = v205;
  v165 = v196;
  *(&v247 + 1) = v204;
  v248 = v196;
  v167 = v245;
  v166 = v246;
  v168 = v247;
  *(v164 + 80) = v196;
  *(v164 + 48) = v166;
  *(v164 + 64) = v168;
  v169 = v243;
  *(v164 + 16) = v244;
  *(v164 + 32) = v167;
  *v164 = v169;
  v170 = v162 + v163[20];
  *v170 = 0;
  *(v170 + 8) = 1;
  sub_26EE13B88(v160, v162 + v163[24], &qword_2806C8FA0, &qword_26EF42090);
  v171 = v163[28];
  v172 = v226;
  v269 = v227;
  v270 = v228;
  v173 = v228;
  v271 = v229;
  v175 = v222;
  v174 = v223;
  v265 = v223;
  v266 = v224;
  v176 = v224;
  v177 = v225;
  v267 = v225;
  v268 = v226;
  v178 = v219;
  v179 = v220;
  v261 = v219;
  v262 = v220;
  v180 = v221;
  v263 = v221;
  v264 = v222;
  v181 = v162 + v171;
  *(v181 + 128) = v227;
  *(v181 + 144) = v173;
  *(v181 + 160) = v229;
  *(v181 + 64) = v174;
  *(v181 + 80) = v176;
  *(v181 + 96) = v177;
  *(v181 + 112) = v172;
  *v181 = v178;
  *(v181 + 16) = v179;
  v272 = v230;
  *(v181 + 176) = v230;
  *(v181 + 32) = v180;
  *(v181 + 48) = v175;
  sub_26EE13B88(&v243, &v273, &qword_2806C9028, &qword_26EF42128);
  sub_26EE13B88(&v261, &v273, &qword_2806C9030, &unk_26EF42130);
  sub_26EE14578(v216, &qword_2806C8FA0, &qword_26EF42090);
  sub_26EE14578(v215, &qword_2806C8FB0, &qword_26EF420A0);
  sub_26EE14578(v217, &qword_2806C8FC8, &qword_26EF420B8);
  v278 = v227;
  v279 = v228;
  v280 = v229;
  v274[3] = v223;
  v275 = v224;
  v281 = v230;
  v276 = v225;
  v277 = v226;
  v273 = v219;
  v274[0] = v220;
  v274[1] = v221;
  v274[2] = v222;
  sub_26EE14578(&v273, &qword_2806C9030, &unk_26EF42130);
  sub_26EE14578(v210, &qword_2806C8FA0, &qword_26EF42090);
  v249[0] = v207;
  v249[1] = 0;
  v250 = v202;
  *v251 = v294[0];
  *&v251[3] = *(v294 + 3);
  v252 = v212;
  v253 = v213;
  v254 = v203;
  *v255 = v293[0];
  *&v255[3] = *(v293 + 3);
  v256 = v214;
  v257 = v206;
  v258 = v205;
  v259 = v204;
  v260 = v165;
  sub_26EE14578(v249, &qword_2806C9028, &qword_26EF42128);
  sub_26EE14578(v209, &qword_2806C8FB0, &qword_26EF420A0);
  return sub_26EE14578(v208, &qword_2806C8FC8, &qword_26EF420B8);
}

uint64_t sub_26EEC3448@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26EF3AA9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C90C8, &qword_26EF421B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22[-v7];
  sub_26EF3AA8C();
  v9 = *MEMORY[0x277CE1010];
  v10 = sub_26EF3AABC();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v8, v9, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  sub_26EF3AAAC();

  sub_26EE14578(v8, &qword_2806C90C8, &qword_26EF421B8);
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v12 = sub_26EF3AADC();

  (*(v3 + 8))(v5, v2);
  sub_26EF3AE4C();
  sub_26EF3984C();
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v16 = v26;
  v17 = v27;
  v18 = v28;
  v19 = [objc_opt_self() systemRedColor];
  v20 = sub_26EF3AA5C();
  result = swift_getKeyPath();
  *a1 = v12;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 40) = v17;
  *(a1 + 48) = v18;
  *(a1 + 56) = result;
  *(a1 + 64) = v20;
  return result;
}

double sub_26EEC3718@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26EF3AA9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C90D8, &qword_26EF421C0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19[-v10];
  v12 = (a1 + *(type metadata accessor for VoicePickerPickableView(0) + 36));
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v20) = v13;
  *(&v20 + 1) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  sub_26EF3AA8C();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v15 = sub_26EF3AADC();

  (*(v5 + 8))(v7, v4);
  *&v20 = v15;
  sub_26EF3A46C();
  sub_26EF3A64C();

  sub_26EF3AE4C();
  sub_26EF3984C();
  (*(v9 + 32))(a2, v11, v8);
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8FD0, &qword_26EF420C0) + 36));
  v17 = v21;
  *v16 = v20;
  v16[1] = v17;
  result = *&v22;
  v16[2] = v22;
  return result;
}

double sub_26EEC39E4@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_26EF39AEC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = sub_26EF3AA9C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26EF3AA8C();
  (*(v11 + 104))(v13, *MEMORY[0x277CE0FE0], v10);
  v14 = sub_26EF3AADC();

  (*(v11 + 8))(v13, v10);
  sub_26EF3AE4C();
  sub_26EF3984C();
  v22 = 1;
  *&v21[6] = v23;
  *&v21[22] = v24;
  *&v21[38] = v25;
  sub_26EF3AF2C();
  sub_26EF39AFC();
  (*(v4 + 16))(v7, v9, v3);
  sub_26EEC8DCC(&qword_2806C90D0, MEMORY[0x277CDFAE8], MEMORY[0x277CDFAE0]);
  v15 = sub_26EF3986C();
  (*(v4 + 8))(v9, v3);
  v16 = sub_26EF3A96C();
  KeyPath = swift_getKeyPath();
  v18 = *&v21[16];
  *(a1 + 18) = *v21;
  *a1 = v14;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v18;
  result = *&v21[32];
  *(a1 + 50) = *&v21[32];
  *(a1 + 64) = *&v21[46];
  *(a1 + 72) = v15;
  *(a1 + 80) = KeyPath;
  *(a1 + 88) = v16;
  return result;
}

uint64_t sub_26EEC3CF8@<X0>(uint64_t a1@<X8>)
{
  v160 = a1;
  v2 = type metadata accessor for VoicePickerPickableView(0);
  v157 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v158 = v3;
  v159 = &v129 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for VoicePickerGroup(0);
  MEMORY[0x28223BE20](v4 - 8);
  v135 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26EF39F4C();
  v155 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v152 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26EF3A2EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E68, &qword_26EF41DF8);
  MEMORY[0x28223BE20](v12);
  v14 = &v129 - v13;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E70, &qword_26EF41E00);
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v16 = &v129 - v15;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E78, &qword_26EF41E08);
  v17 = MEMORY[0x28223BE20](v142);
  v139 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v140 = &v129 - v19;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E80, &qword_26EF41E10);
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v141 = &v129 - v20;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E88, &qword_26EF41E18);
  MEMORY[0x28223BE20](v149);
  v146 = &v129 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E90, &qword_26EF41E20);
  v150 = *(v22 - 8);
  v151 = v22;
  MEMORY[0x28223BE20](v22);
  v147 = &v129 - v23;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E98, &qword_26EF41E28);
  MEMORY[0x28223BE20](v145);
  v148 = &v129 - v24;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8EA0, &qword_26EF41E30);
  v154 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v153 = &v129 - v25;
  sub_26EEC1948(v14);
  sub_26EF3A2CC();
  v26 = sub_26EEC70A8();
  v137 = v16;
  v138 = v12;
  v136 = v26;
  sub_26EF3A7DC();
  (*(v9 + 8))(v11, v8);
  sub_26EE14578(v14, &qword_2806C8E68, &qword_26EF41DF8);
  v27 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  (*(v27 + 88))(v164, ObjectType, v27);
  v161 = v1;
  if (BYTE4(v164[0]))
  {
    if (BYTE4(v164[0]) != 2 || LODWORD(v164[0]))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8620, &qword_26EF40730);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_26EF3C6B0;
      *(v29 + 32) = (*(v27 + 40))(ObjectType, v27);
      *(v29 + 40) = v30;
      v31 = sub_26EEBFC48();
      if (v32)
      {
        v34 = *(v29 + 16);
        v33 = *(v29 + 24);
        v35 = v34 + 1;
        v36 = v135;
        v37 = v133;
        if (v34 < v33 >> 1)
        {
LABEL_6:
          *(v29 + 16) = v35;
          v38 = v29 + 16 * v34;
          *(v38 + 32) = v31;
          *(v38 + 40) = v32;
          v39 = v134;
          goto LABEL_18;
        }

        v83 = v31;
        v127 = v6;
        v128 = v32;
        v85 = sub_26EEC6C6C((v33 > 1), v34 + 1, 1, v29);
        v32 = v128;
        v6 = v127;
LABEL_23:
        v29 = v85;
        v31 = v83;
        goto LABEL_6;
      }

      v36 = v135;
      goto LABEL_17;
    }

    v132 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8620, &qword_26EF40730);
    v29 = swift_allocObject();
    v131 = xmmword_26EF3C6B0;
    *(v29 + 16) = xmmword_26EF3C6B0;
    v71 = sub_26EE17094();
    v72._object = 0xED0000454D414E5FLL;
    v73 = v71 & 1;
    v72._countAndFlagsBits = 0x44414F4C4E574F44;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v72, v73, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
    v74 = swift_allocObject();
    *(v74 + 16) = v131;
    v75 = (*(v27 + 40))(ObjectType, v27);
    v77 = v76;
    *(v74 + 56) = MEMORY[0x277D837D0];
    *(v74 + 64) = sub_26EE1EFBC(v75, v76, v78);
    *(v74 + 32) = v75;
    *(v74 + 40) = v77;
    v79 = sub_26EF3B10C();
    v81 = v80;

    *(v29 + 32) = v79;
    *(v29 + 40) = v81;
    v31 = sub_26EEBFC48();
    if (v32)
    {
      v34 = *(v29 + 16);
      v82 = *(v29 + 24);
      v35 = v34 + 1;
      v36 = v135;
      v6 = v132;
      v37 = v133;
      if (v34 < v82 >> 1)
      {
        goto LABEL_6;
      }

      v83 = v31;
      v84 = v32;
      v85 = sub_26EEC6C6C((v82 > 1), v34 + 1, 1, v29);
      v32 = v84;
      v6 = v132;
      goto LABEL_23;
    }

LABEL_16:
    v36 = v135;
    v6 = v132;
LABEL_17:
    v39 = v134;
    v37 = v133;
    goto LABEL_18;
  }

  v132 = v6;
  v40 = v164[0];
  v41 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v41 setNumberStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8620, &qword_26EF40730);
  v29 = swift_allocObject();
  v131 = xmmword_26EF3C6B0;
  *(v29 + 16) = xmmword_26EF3C6B0;
  v42 = sub_26EE17094();
  v43._object = 0x800000026EF46400;
  v44 = v42 & 1;
  v43._countAndFlagsBits = 0xD000000000000012;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v43, v44, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v45 = swift_allocObject();
  *(v45 + 16) = v131;
  v46 = (*(v27 + 40))(ObjectType, v27);
  v48 = v47;
  v49 = MEMORY[0x277D837D0];
  *(v45 + 56) = MEMORY[0x277D837D0];
  v51 = sub_26EE1EFBC(v46, v47, v50);
  *(v45 + 64) = v51;
  *(v45 + 32) = v46;
  *(v45 + 40) = v48;
  v52 = sub_26EF3B10C();
  v54 = v53;

  *(v29 + 32) = v52;
  *(v29 + 40) = v54;
  v55 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v56) = v40;
  v57 = [v55 initWithFloat_];
  v58 = [v41 stringFromNumber_];

  if (!v58)
  {

    goto LABEL_16;
  }

  v130 = v41;
  v59 = sub_26EF3B0FC();
  v61 = v60;

  v62 = sub_26EE17094();
  v63._countAndFlagsBits = 0xD000000000000017;
  v63._object = 0x800000026EF46420;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v63, v62 & 1, 0);
  v64 = swift_allocObject();
  *(v64 + 16) = v131;
  *(v64 + 56) = v49;
  *(v64 + 64) = v51;
  *(v64 + 32) = v59;
  *(v64 + 40) = v61;
  v65 = sub_26EF3B10C();
  v67 = v66;

  v69 = *(v29 + 16);
  v68 = *(v29 + 24);
  if (v69 >= v68 >> 1)
  {
    v29 = sub_26EEC6C6C((v68 > 1), v69 + 1, 1, v29);
  }

  v36 = v135;
  v6 = v132;
  v39 = v134;
  v37 = v133;

  *(v29 + 16) = v69 + 1;
  v70 = v29 + 16 * v69;
  *(v70 + 32) = v65;
  *(v70 + 40) = v67;
LABEL_18:
  v164[0] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E18, &qword_26EF429C0);
  sub_26EE154C8(&qword_2806C8F80, &qword_2806C8E18, &qword_26EF429C0, MEMORY[0x277D83958]);
  v86 = sub_26EF3B07C();
  v88 = v87;

  v164[0] = v86;
  v164[1] = v88;
  v162 = v138;
  v163 = v136;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26EE12538(OpaqueTypeConformance2, v90, v91);
  v92 = v139;
  v93 = v137;
  sub_26EF3A78C();

  (*(v37 + 8))(v93, v39);
  v94 = v152;
  v95 = v161;
  sub_26EEC16A8();
  v96 = v140;
  sub_26EF39A8C();
  (*(v155 + 8))(v94, v6);
  v97 = sub_26EE14578(v92, &qword_2806C8E78, &qword_26EF41E08);
  MEMORY[0x28223BE20](v97);
  *(&v129 - 2) = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7558, &unk_26EF3E368);
  sub_26EEC71F0();
  sub_26EEC72E8();
  v98 = v141;
  sub_26EF3A7CC();
  sub_26EE14578(v96, &qword_2806C8E78, &qword_26EF41E08);
  v99 = *(v95 + 8);
  v155 = swift_getObjectType();
  (*(v99 + 32))(v155, v99);
  LODWORD(v94) = *(v36 + 16);
  sub_26EEC7398(v36);
  if (v94)
  {
    v100 = 0xC024000000000000;
  }

  else
  {
    v100 = 0x4024000000000000;
  }

  v101 = v146;
  v102 = (*(v143 + 32))(v146, v98, v144);
  v103 = v101 + *(v149 + 36);
  *v103 = 0;
  *(v103 + 8) = v100;
  *(v103 + 16) = xmmword_26EF41CE0;
  *(v103 + 32) = 0;
  MEMORY[0x28223BE20](v102);
  *(&v129 - 2) = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8EC0, &qword_26EF41E38);
  sub_26EEC73FC();
  sub_26EEC751C();
  v104 = v147;
  sub_26EF3A6DC();
  sub_26EE14578(v101, &qword_2806C8E88, &qword_26EF41E18);
  v105 = sub_26EF3A3BC();
  sub_26EF3962C();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v114 = v148;
  (*(v150 + 32))(v148, v104, v151);
  v115 = v114 + *(v145 + 36);
  *v115 = v105;
  *(v115 + 8) = v107;
  *(v115 + 16) = v109;
  *(v115 + 24) = v111;
  *(v115 + 32) = v113;
  *(v115 + 40) = 0;
  v116 = (*(v99 + 48))(v155, v99);
  v118 = v117;
  v119 = v153;
  sub_26EE14D98(v114, v153, &qword_2806C8E98, &qword_26EF41E28);
  v120 = v119 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8EF8, &qword_26EF41E58) + 36);
  *v120 = v116;
  *(v120 + 8) = v118;
  *(v120 + 16) = 1;
  v121 = v159;
  sub_26EEC6DD0(v95, v159);
  v122 = (*(v157 + 80) + 16) & ~*(v157 + 80);
  v123 = swift_allocObject();
  sub_26EEC6E38(v121, v123 + v122);
  v124 = v160;
  (*(v154 + 32))(v160, v119, v156);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F00, &unk_26EF41E60);
  v126 = (v124 + *(result + 36));
  *v126 = 0;
  v126[1] = 0;
  v126[2] = sub_26EEC7684;
  v126[3] = v123;
  return result;
}

uint64_t sub_26EEC4D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for VoicePickerPickableView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25[-v10];
  v12 = (a1 + *(v5 + 48));
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v26._countAndFlagsBits) = v13;
  v26._object = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  if (v25[15] == 1)
  {
    v15 = sub_26EE17094();
    v16._object = 0x800000026EF463E0;
    v17 = v15 & 1;
    v16._countAndFlagsBits = 0xD000000000000011;
    v26 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v16, v17, 0);
    sub_26EEC6DD0(a1, &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v19 = swift_allocObject();
    v20 = sub_26EEC6E38(&v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v19 + v18);
    sub_26EE12538(v20, v21, v22);
    sub_26EF3AB7C();
    (*(v9 + 32))(a2, v11, v8);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  return (*(v9 + 56))(a2, v23, 1, v8);
}

uint64_t sub_26EEC4FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for VoicePickerPickableView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8EF0, &qword_26EF41E48);
  v18 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  if (sub_26EEC157C())
  {
    sub_26EEC6DD0(a1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    sub_26EEC6E38(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
    sub_26EF3AB4C();
    v12 = sub_26EF3A97C();
    KeyPath = swift_getKeyPath();
    v14 = &v9[*(v7 + 36)];
    *v14 = KeyPath;
    v14[1] = v12;
    sub_26EE14D98(v9, a2, &qword_2806C8EF0, &qword_26EF41E48);
    return (*(v18 + 56))(a2, 0, 1, v7);
  }

  else
  {
    v16 = *(v18 + 56);

    return v16(a2, 1, 1, v7);
  }
}

uint64_t sub_26EEC5224@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26EE17094() & 1;
  v3._countAndFlagsBits = 0x54454C45445F4256;
  v3._object = 0xE900000000000045;
  v4 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v3, v2, 0);
  sub_26EE12538(v4._countAndFlagsBits, v4._object, v5);
  result = sub_26EF3A5DC();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

double sub_26EEC52A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-v3];
  v5 = (a1 + *(type metadata accessor for VoicePickerPickableView(0) + 36));
  v6 = *v5;
  v7 = *(v5 + 1);
  v13[16] = v6;
  v14 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  if (v13[15] == 1)
  {
    v9 = sub_26EF3B30C();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    sub_26EF3B2DC();
    v10 = sub_26EF3B2CC();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    *(v11 + 16) = v10;
    *(v11 + 24) = v12;
    sub_26EE2C388(0, 0, v4, &unk_26EF42038, v11);
  }

  return result;
}

uint64_t sub_26EEC5408()
{
  sub_26EF3B2DC();
  v0[2] = sub_26EF3B2CC();
  v2 = sub_26EF3B29C();
  v0[3] = v2;
  v0[4] = v1;

  return MEMORY[0x2822009F8](sub_26EEC549C, v2, v1);
}

uint64_t sub_26EEC549C()
{
  sub_26EF381CC();
  *(v0 + 40) = sub_26EF381BC();
  v3 = (*MEMORY[0x277D701B0] + MEMORY[0x277D701B0]);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_26EEC5554;

  return v3();
}

uint64_t sub_26EEC5554()
{
  v1 = *v0;

  v2 = *(v1 + 32);
  v3 = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_26EEC5698, v3, v2);
}

uint64_t sub_26EEC5698()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26EEC56F8@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_26EEC5734@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v3 = type metadata accessor for VoicePickerPickableView(0);
  v4 = a1 + *(v3 + 44);
  v5 = *v4;
  if (v4[8] != 1)
  {

    sub_26EF3B46C();
    v34 = sub_26EF3A36C();
    sub_26EF3880C();

    v35 = sub_26EF39DDC();
    v36 = *(v35 - 8);
    MEMORY[0x28223BE20](v35);
    v38 = &v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE54224(v5, 0);
    (*(v36 + 8))(v38, v35);
    if ((v111 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8720, &qword_26EF40828);
    v104 = &v83;
    v40 = *(v39 - 8);
    MEMORY[0x28223BE20](v39);
    v42 = &v83 - v41;
    v43 = a1[1];
    ObjectType = swift_getObjectType();
    v107 = (*(v43 + 40))(ObjectType, v43);
    v108 = v45;
    sub_26EE12538(v107, v45, v46);
    v47 = sub_26EF3A5DC();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = (*(v43 + 48))(ObjectType, v43);
    *v42 = v47;
    *(v42 + 1) = v49;
    v42[16] = v51 & 1;
    *(v42 + 3) = v53;
    *(v42 + 4) = v54;
    *(v42 + 5) = v55;
    v42[48] = 1;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F70, &qword_26EF42000);
    MEMORY[0x28223BE20](v56);
    (*(v40 + 16))(&v83 - v57, v42, v39);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F78, &qword_26EF42008);
    v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8F60, &qword_26EF41F38);
    v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8F00, &unk_26EF41E60);
    v60 = sub_26EEC7C00();
    v107 = v59;
    v108 = v60;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v107 = v58;
    v62 = MEMORY[0x277D837D0];
    v108 = MEMORY[0x277D837D0];
    v109 = OpaqueTypeConformance2;
    v110 = MEMORY[0x277D837F8];
    swift_getOpaqueTypeConformance2();
    v107 = MEMORY[0x277CE0BD8];
    v108 = v62;
    v109 = MEMORY[0x277CE0BC8];
    v110 = MEMORY[0x277D837E0];
    swift_getOpaqueTypeConformance2();
    sub_26EF3A06C();
    return (*(v40 + 8))(v42, v39);
  }

  v111 = v5 & 1;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F78, &qword_26EF42008);
  v104 = &v83;
  v101 = *(v6 - 8);
  v102 = v6;
  MEMORY[0x28223BE20](v6);
  v100 = &v83 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F60, &qword_26EF41F38);
  v98 = &v83;
  v99 = v8;
  v97 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v96 = &v83 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F00, &unk_26EF41E60);
  v95 = &v83;
  MEMORY[0x28223BE20](v10);
  v92 = &v83 - v11;
  v12 = sub_26EEC3CF8(&v83 - v11);
  v94 = &v83;
  v13 = *(v3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_26EEC6DD0(a1, &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26EF3B2DC();
  v15 = sub_26EF3B2CC();
  v16 = *(v13 + 80);
  v93 = ~v16;
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_26EEC6E38(&v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + ((v16 + 32) & ~v16));
  v19 = sub_26EF3B30C();
  v91 = &v83;
  v90 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = &v83 - v22;
  sub_26EF3B2EC();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v87 = sub_26EF39A1C();
    v88 = &v83;
    v86 = *(v87 - 8);
    MEMORY[0x28223BE20](v87);
    v84 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v107 = 0;
    v108 = 0xE000000000000000;
    sub_26EF3B70C();

    v107 = 0xD000000000000045;
    v108 = 0x800000026EF46390;
    v105 = 540;
    v25 = sub_26EF3B7FC();
    v89 = a1;
    MEMORY[0x274383240](v25);

    v83 = &v83;
    MEMORY[0x28223BE20](v26);
    v27 = &v83 - v22;
    v28 = &v83 - v22;
    v29 = v90;
    (*(v20 + 16))(v27, v28, v90);
    v85 = v14;
    v30 = v84;
    a1 = v89;
    sub_26EF39A0C();
    (*(v20 + 8))(v23, v29);
    v31 = v96;
    sub_26EE14D98(v92, v96, &qword_2806C8F00, &unk_26EF41E60);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F08, &qword_26EF41E98);
    v33 = v30;
    v14 = v85;
    (*(v86 + 32))(v31 + *(v32 + 36), v33, v87);
  }

  else
  {
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F10, &qword_26EF41EA0);
    v65 = v96;
    v66 = (v96 + *(v64 + 36));
    v67 = sub_26EF3990C();
    (*(v20 + 32))(&v66[*(v67 + 20)], &v83 - v22, v90);
    v31 = v65;
    *v66 = &unk_26EF42018;
    *(v66 + 1) = v17;
    sub_26EE14D98(v92, v65, &qword_2806C8F00, &unk_26EF41E60);
  }

  v68 = a1[1];
  v69 = swift_getObjectType();
  v107 = (*(v68 + 48))(v69, v68);
  v108 = v70;
  MEMORY[0x28223BE20](v107);
  sub_26EEC6DD0(a1, &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = (v16 + 16) & v93;
  v72 = swift_allocObject();
  sub_26EEC6E38(&v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v72 + v71);
  v73 = sub_26EEC7C00();
  v105 = v10;
  v106 = v73;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = MEMORY[0x277D837D0];
  v76 = MEMORY[0x277D837F8];
  v77 = v99;
  v78 = v100;
  sub_26EF3A8FC();

  (*(v97 + 8))(v31, v77);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F70, &qword_26EF42000);
  MEMORY[0x28223BE20](v79);
  v81 = v101;
  v80 = v102;
  (*(v101 + 16))(&v83 - v82, v78, v102);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8720, &qword_26EF40828);
  v107 = v77;
  v108 = v75;
  v109 = v74;
  v110 = v76;
  swift_getOpaqueTypeConformance2();
  v107 = MEMORY[0x277CE0BD8];
  v108 = v75;
  v109 = MEMORY[0x277CE0BC8];
  v110 = MEMORY[0x277D837E0];
  swift_getOpaqueTypeConformance2();
  sub_26EF3A06C();
  return (*(v81 + 8))(v78, v80);
}

uint64_t sub_26EEC63F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *(type metadata accessor for VoicePickerPickableView(0) - 8);
  v3[3] = v4;
  v3[4] = *(v4 + 64);
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v3[6] = swift_task_alloc();
  v3[7] = sub_26EF3B2DC();
  v3[8] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EEC6528, v6, v5);
}

uint64_t sub_26EEC6528()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[2];

  v5 = sub_26EF3B30C();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_26EEC6DD0(v4, v1);
  v6 = sub_26EF3B2CC();
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_26EEC6E38(v1, v8 + v7);
  sub_26EE2C388(0, 0, v2, &unk_26EF42028, v8);

  v10 = v0[1];

  return v10();
}

double sub_26EEC6670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, char *, uint64_t, uint64_t))
{
  v7 = type metadata accessor for VoicePickerPickableView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_26EF3B30C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_26EEC6DD0(a1, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26EF3B2DC();
  v14 = sub_26EF3B2CC();
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  sub_26EEC6E38(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  a4(0, 0, v12, a3, v16);

  return result;
}

uint64_t sub_26EEC682C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a9@<X8>, char a10, uint64_t *a11)
{
  v12 = *a11;
  v13 = *(a11 + 8);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  v14 = type metadata accessor for VoicePickerPickableView(0);
  v15 = v14[7];
  *(a9 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8DF8, &qword_26EF41D88);
  swift_storeEnumTagMultiPayload();
  v16 = a9 + v14[8];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = a9 + v14[9];
  sub_26EF3AAEC();
  *v17 = v21;
  *(v17 + 8) = v22;
  v18 = a9 + v14[10];
  result = sub_26EF3AAEC();
  *v18 = v21;
  *(v18 + 8) = v22;
  v20 = a9 + v14[11];
  *v20 = v12;
  *(v20 + 8) = v13;
  return result;
}

uint64_t sub_26EEC696C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_26EF3B87C();
  sub_26EF3B16C();
  v6 = sub_26EF3B8CC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_26EF3B82C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_26EE92D6C();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_26EEC6AA8(v8);
  *v2 = v16;
  return v12;
}

void sub_26EEC6AA8(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_26EF3B6AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_26EF3B87C();

        sub_26EF3B16C();
        v10 = sub_26EF3B8CC();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

char *sub_26EEC6C6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8620, &qword_26EF40730);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26EEC6D78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26EF39DAC();
  *a1 = result;
  return result;
}

uint64_t sub_26EEC6DD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoicePickerPickableView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEC6E38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoicePickerPickableView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEC6EFC@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  *a2 = sub_26EF39E4C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F88, &qword_26EF42078);
  sub_26EEC1CA8(v4, a2 + *(v5 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E40, &qword_26EF41DE0);
  *(a2 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_26EEC6F70()
{
  result = qword_2806C8E48;
  if (!qword_2806C8E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8E40, &qword_26EF41DE0);
    sub_26EE154C8(&qword_2806C8E50, &qword_2806C8E58, &qword_26EF41DE8, MEMORY[0x277CE1138]);
    sub_26EE154C8(&qword_2806C6B98, &qword_2806C6BA0, &qword_26EF41DF0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8E48);
  }

  return result;
}

unint64_t sub_26EEC7054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806CDA40[0];
  if (!qword_2806CDA40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2806CDA40);
  }

  return result;
}

unint64_t sub_26EEC70A8()
{
  result = qword_2806C8EA8;
  if (!qword_2806C8EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8E68, &qword_26EF41DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8E30, &qword_26EF41DD0);
    v3 = sub_26EE154C8(&qword_2806C8E60, &qword_2806C8E30, &qword_26EF41DD0, MEMORY[0x277CDF028]);
    sub_26EEC7054(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    sub_26EEC8DCC(&qword_2806C6AD8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8EA8);
  }

  return result;
}

unint64_t sub_26EEC71F0()
{
  result = qword_2806C8EB0;
  if (!qword_2806C8EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8E78, &qword_26EF41E08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8E68, &qword_26EF41DF8);
    sub_26EEC70A8();
    swift_getOpaqueTypeConformance2();
    sub_26EEC8DCC(&qword_2806C6AD8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8EB0);
  }

  return result;
}

unint64_t sub_26EEC72E8()
{
  result = qword_2806C8EB8;
  if (!qword_2806C8EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7558, &unk_26EF3E368);
    sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8EB8);
  }

  return result;
}

uint64_t sub_26EEC7398(uint64_t a1)
{
  v2 = type metadata accessor for VoicePickerGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26EEC73FC()
{
  result = qword_2806C8EC8;
  if (!qword_2806C8EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8E88, &qword_26EF41E18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8E78, &qword_26EF41E08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7558, &unk_26EF3E368);
    sub_26EEC71F0();
    sub_26EEC72E8();
    swift_getOpaqueTypeConformance2();
    sub_26EE154C8(&qword_2806C8ED0, &qword_2806C8ED8, &qword_26EF41E40, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8EC8);
  }

  return result;
}

unint64_t sub_26EEC751C()
{
  result = qword_2806C8EE0;
  if (!qword_2806C8EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8EC0, &qword_26EF41E38);
    sub_26EEC75A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8EE0);
  }

  return result;
}

unint64_t sub_26EEC75A0()
{
  result = qword_2806C8EE8;
  if (!qword_2806C8EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8EF0, &qword_26EF41E48);
    sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080, MEMORY[0x277CDF028]);
    sub_26EE154C8(&qword_2806C67E0, &qword_2806C67E8, &qword_26EF41E50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8EE8);
  }

  return result;
}

double sub_26EEC7684()
{
  v1 = *(type metadata accessor for VoicePickerPickableView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26EEC52A8(v2);
}

uint64_t sub_26EEC7714(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F18, &unk_26EF41F00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_26EEC77E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8F18, &unk_26EF41F00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26EEC7894(uint64_t a1)
{
  sub_26EEC7A40();
  if (v1 <= 0x3F)
  {
    sub_26EEC7AA0(319, &qword_2806C8590, &qword_2806C8428, &qword_26EF40248, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_26EEC7B04(319, &qword_2806C8360, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_26EEC7AA0(319, &qword_2806C8F28, &qword_2806C86A0, &qword_26EF407E0, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_26EEC7B04(319, &qword_2806C7350, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_26EEC7B04(319, &qword_2806C85D8, &type metadata for TTSPickerMode, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_26EEC7A40()
{
  result = qword_2806C8F20;
  if (!qword_2806C8F20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2806C8F20);
  }

  return result;
}

void sub_26EEC7AA0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_26EEC7B04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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